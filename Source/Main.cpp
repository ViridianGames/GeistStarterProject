///////////////////////////////////////////////////////////////////////////
//
// Name:     MAIN.CPP
// Author:   Anthony Salter
// Date:     2/03/05
// Purpose:  Contains the Windows-specific WinMain() function, which
//           defines the entry point of the program, and the WndProc()
//           function, which controls the handling of Windows-specific
//           events.  The WinMain() contains the game's main loop.
//
/////////////////////////////////////////////////////////////////////////// 

#include "Globals.h"
#include "MainState.h"
#include <string>
#include <sstream>

using namespace std;

// WinMain
int main(int argv, char** argc)
{
   try
   {
      g_Engine = make_unique<Engine>();
      g_Engine->Init("Data/engine.cfg");
      
      State* _mainState = new MainState;
      _mainState->Init("Data/engine.cfg");
      g_StateMachine->RegisterState(0, _mainState);

      g_StateMachine->MakeStateTransition(0);

      while(!g_Engine->m_Done)
      {
         g_Engine->Update();
         g_Engine->Draw();
      }
   }

   catch(string errorCode)
   {
      assert(errorCode.c_str());
   }

   g_Engine = nullptr;

#ifdef _DEBUG
   _CrtDumpMemoryLeaks();
#endif

   return 0;
}
