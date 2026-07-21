#include <Geist/Globals.h>
#include <Geist/Engine.h>
#include <Geist/ResourceManager.h>
#include <Geist/StateMachine.h>
#include <Geist/ScriptingSystem.h>
#include <Geist/SoundSystem.h>
#include <Geist/InputSystem.h>
#include <Geist/Primitives.h>
#include <Geist/Logging.h>
#include <iostream>

using namespace std;

unique_ptr<Engine>           g_Engine;
unique_ptr<ResourceManager>  g_ResourceManager;
unique_ptr<StateMachine>     g_StateMachine;
unique_ptr<ScriptingSystem>  g_ScriptingSystem;
unique_ptr<SoundSystem>      g_SoundSystem;
unique_ptr<InputSystem>      g_InputSystem;

Texture* g_Cursor = nullptr;

Font LoadPixelFont(const char* path, int pixelHeight)
{
	// LoadFontEx defaults to anti-aliased glyphs; at 7–9px that often yields empty
	// "white square" tofu for some characters. FONT_BITMAP + POINT filter fixes it.
	int codepoints[95];
	for (int i = 0; i < 95; ++i)
		codepoints[i] = 32 + i; // ' ' .. '~'

	Font font = { 0 };
	int dataSize = 0;
	unsigned char* fileData = LoadFileData(path, &dataSize);
	if (fileData == nullptr || dataSize <= 0)
	{
		TraceLog(LOG_WARNING, "LoadPixelFont: failed to read %s", path);
		return GetFontDefault();
	}

	font.baseSize = pixelHeight;
	font.glyphCount = 95;
	font.glyphPadding = 1;
	font.glyphs = LoadFontData(fileData, dataSize, pixelHeight, codepoints, 95, FONT_BITMAP);
	UnloadFileData(fileData);

	if (font.glyphs == nullptr)
	{
		TraceLog(LOG_WARNING, "LoadPixelFont: LoadFontData failed for %s", path);
		return GetFontDefault();
	}

	Image atlas = GenImageFontAtlas(font.glyphs, &font.recs, font.glyphCount, font.baseSize,
		font.glyphPadding, 0);
	font.texture = LoadTextureFromImage(atlas);
	UnloadImage(atlas);

	if (font.texture.id != 0)
	{
		SetTextureFilter(font.texture, TEXTURE_FILTER_POINT);
		SetTextureWrap(font.texture, TEXTURE_WRAP_CLAMP);
	}
	return font;
}

void DrawStringCentered(Font* font, float fontsize, std::string text, float centerx, float centery, Color color)
{
	DrawStringCentered(font, fontsize, text, Vector2{centerx, centery}, color);
}

void DrawStringCentered(Font* font, float fontsize, std::string text, Vector2 center, Color color)
{
	DrawStringCentered(font, fontsize, (char*)text.c_str(), center, color);
}

void DrawStringCentered(Font* font, float fontsize, char* text, float centerx, float centery, Color color)
{
	DrawStringCentered(font, fontsize, text, Vector2{centerx, centery}, color);
}

void DrawStringCentered(Font* font, float fontsize, char* text, Vector2 center, Color color)
{
	Vector2 dims = MeasureTextEx(*font, text, fontsize, 1);
	center.x -= dims.x / 2;
	center.y -= dims.y / 2;

	//  Make sure we're on a whole pixel.
	int centerx = int(center.x);
	int centery = int(center.y);

	DrawTextEx(*font, text, {float(centerx), float(centery)}, fontsize, 1, color);
}

void DrawStringRight(Font* font, float fontsize, std::string text, float rightx, float y, Color color)
{
	DrawStringRight(font, fontsize, (char*)text.c_str(), rightx, y, color);
}

void DrawStringRight(Font* font, float fontsize, char* text, float rightx, float y, Color color)
{
	Vector2 dims = MeasureTextEx(*font, text, fontsize, 1);
	DrawTextEx(*font, text, Vector2{ rightx - dims.x, y }, fontsize, 1, color);
}

void DebugPrint(std::string msg)
{
	Log(msg, "debuglog.txt", true);
	// Don't print to cout here - Log() already does it when suppressdatetime=true
}


void NPCDebugPrint(std::string msg)
{
	Log(msg, "npcdebug.log", true);
}
