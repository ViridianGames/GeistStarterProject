#include "Globals.h"
#include "MainState.h"

#include <list>
#include <string>
#include <sstream>
#include <math.h>
#include <fstream>
#include <algorithm>

using namespace std;

////////////////////////////////////////////////////////////////////////////////
//  MainState
////////////////////////////////////////////////////////////////////////////////

MainState::~MainState()
{
   Shutdown();
}

void MainState::Init(const string& configfile)
{
   g_ResourceManager->AddTexture("Images/cursor.png");
   m_Font = make_unique<Font>();
   m_Font->Init("Data/Fonts/softsquare.ttf", 18.0f);
   m_Cursor = g_ResourceManager->GetTexture("Images/cursor.png");
   m_RNG.SeedRNG(g_Engine->m_StartTime);

   m_Speed = 5;
   m_Pos = Point(float(g_Display->GetWidth()) / 2.0f, float(g_Display->GetHeight()) / 2.0f);
}

void MainState::OnEnter()
{
   g_Sound->Say("Hay Megahdawg!  It's Virideean.");
   m_Timer = 3000;
}

void MainState::OnExit()
{

}

void MainState::Shutdown()
{

}

void MainState::Update()
{
   if( g_Input->WasKeyPressed(KEY_ESCAPE) )
   {
      g_Engine->m_Done = true;
   }

   if (m_Timer > 0)
   {
      m_Timer -= g_Engine->LastUpdateInMS();
      if(m_Timer < 0)
         g_Sound->PlaySFX("Sounds/01_-_Prelude.ogg");
   }
}


void MainState::Draw()
{
   g_Display->ClearScreen();
   m_Font->DrawString("Hey Megadog!  It's Viridian.", 0, 0, Color(1, 0, 0, 1));
   m_Font->DrawString("You should first hear some speech synthesis, then some music.", 0, 20);
   m_Font->DrawString("Let me know what you hear when you run this.", 0, 40);
   m_Font->DrawString("Press ESC to exit.", 0, 60);
}
