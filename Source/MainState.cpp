#include <string>
#include <iomanip>
#include "Geist/Engine.h"
#include "Geist/Globals.h"
#include "Geist/StateMachine.h"

#include "GameGlobals.h"

using namespace std;

namespace
{
	// ASCII printable set loaded by LoadPixelFont: space (32) through '~' (126).
	std::string FullAsciiCharset()
	{
		std::string s;
		s.reserve(95);
		for (int c = 32; c <= 126; ++c)
		{
			s.push_back(static_cast<char>(c));
		}
		return s;
	}

	// Wrap a long charset string into lines that fit the virtual render width.
	void DrawCharsetWrapped(
		const std::shared_ptr<Font>& font,
		const std::string& label,
		float startY,
		Color color)
	{
		if (!font || font->texture.id == 0)
		{
			return;
		}

		const float fontSize = static_cast<float>(font->baseSize);
		const float spacing = 1.0f;
		const float maxWidth = static_cast<float>(g_Engine->m_RenderWidth) - 16.0f;
		const std::string charset = FullAsciiCharset();

		DrawOutlinedText(font, label, { 8.0f, startY }, fontSize, 1, Color{ 255, 230, 90, 255 });
		float y = startY + fontSize + 4.0f;

		std::string line;
		for (char ch : charset)
		{
			const std::string candidate = line + ch;
			const float w = MeasureTextEx(*font, candidate.c_str(), fontSize, spacing).x;
			if (!line.empty() && w > maxWidth)
			{
				DrawOutlinedText(font, line, { 8.0f, y }, fontSize, 1, color);
				y += fontSize + 2.0f;
				line.clear();
				line.push_back(ch);
			}
			else
			{
				line.push_back(ch);
			}
		}
		if (!line.empty())
		{
			DrawOutlinedText(font, line, { 8.0f, y }, fontSize, 1, color);
		}
	}
}

void MainState::Init(const std::string& configfile)
{
	(void)configfile;
}

void MainState::Shutdown()
{

}

void MainState::OnEnter()
{
	m_DrawCursor = true;
}

void MainState::OnExit()
{

}

void MainState::Update()
{
	if (IsKeyPressed(KEY_ESCAPE))
	{
		g_StateMachine->MakeStateTransition(STATE_TITLESTATE);
	}
}

void MainState::Draw()
{
	DrawRectangle(0, 0, g_Engine->m_RenderWidth, g_Engine->m_RenderHeight, Color{ 24, 28, 36, 255 });

	// Full printable ASCII for each font so broken glyphs are obvious at a glance.
	// softsquare @ 9px
	float y = 8.0f;
	if (g_font)
	{
		DrawCharsetWrapped(g_font, "g_font (softsquare) baseSize=" + std::to_string(g_font->baseSize), y, WHITE);
		y += static_cast<float>(g_font->baseSize) * 5.0f + 16.0f;
	}

	// littleleague @ 7px
	if (g_smallFont)
	{
		DrawCharsetWrapped(
			g_smallFont,
			"g_smallFont (littleleague) baseSize=" + std::to_string(g_smallFont->baseSize),
			y,
			Color{ 200, 220, 255, 255 });
	}

	DrawOutlinedText(
		g_smallFont ? g_smallFont : g_font,
		"Esc: title",
		{ 8.0f, static_cast<float>(g_Engine->m_RenderHeight) - 16.0f },
		g_smallFont ? static_cast<float>(g_smallFont->baseSize) : 9.0f,
		1,
		Color{ 160, 160, 170, 255 });
}

