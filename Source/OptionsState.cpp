#include <string>
#include <iomanip>
#include "Geist/Engine.h"
#include "Geist/Globals.h"

#include "GameGlobals.h"

using namespace std;

void OptionsState::Init(const std::string& configfile)
{

}

void OptionsState::Shutdown()
{

}

void OptionsState::OnEnter()
{

}

void OptionsState::OnExit()
{

}

void OptionsState::Update()
{
    // Check for exit
    if (IsKeyPressed(KEY_ESCAPE))
    {
        g_Engine->m_Done = true;
    }
}

void OptionsState::Draw()
{

}