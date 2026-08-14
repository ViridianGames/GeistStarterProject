#include <string>
#include <iomanip>
#include "Geist/Engine.h"
#include "Geist/Globals.h"
#include "Geist/StateMachine.h"

#include "GameGlobals.h"

using namespace std;

void TitleState::Init(const std::string& /*configfile*/)
{
	m_DrawCursor = true;
}

void TitleState::Shutdown()
{

}

void TitleState::OnEnter()
{

}

void TitleState::OnExit()
{

}

void TitleState::Update()
{
	if (IsKeyPressed(KEY_ESCAPE))
	{
		g_Engine->m_Done = true;
	}

	// Space / Enter / N → font glyph test on MainState
	if (IsKeyPressed(KEY_SPACE) || IsKeyPressed(KEY_ENTER) || IsKeyPressed(KEY_N))
	{
		g_StateMachine->MakeStateTransition(STATE_MAINSTATE);
	}
}

void TitleState::Draw()
{
	DrawRectangle(0, 0, g_Engine->m_RenderWidth, g_Engine->m_RenderHeight, Color{ 20, 40, 80, 255 });

	if (g_font)
	{
		DrawOutlinedText(g_font, "Geist Starter", { 8.0f, 8.0f }, static_cast<float>(g_font->baseSize), 1, WHITE);
	}
	if (g_smallFont)
	{
		DrawOutlinedText(
			g_smallFont,
			"Space/Enter/N: font glyph test   Esc: quit",
			{ 8.0f, 8.0f + (g_font ? static_cast<float>(g_font->baseSize) + 6.0f : 16.0f) },
			static_cast<float>(g_smallFont->baseSize),
			1,
			Color{ 200, 210, 230, 255 });
	}
}