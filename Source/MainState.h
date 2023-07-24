///////////////////////////////////////////////////////////////////////////
//
// Name:     MAINSTATE.H
// Author:   Anthony Salter
// Date:     2/03/05
// Purpose:  The game startup state.  This is the default state the
//           framework gives you so that the project will compile without
//           any modifications.  But it doesn't do anything...yet.
//
///////////////////////////////////////////////////////////////////////////
#ifndef _MAINSTATE_H_
#define _MAINSTATE_H_

#ifdef _DEBUG
#define _CRTDBG_MAP_ALLOC  
#include <stdlib.h>  
#include <crtdbg.h>  
#define DEBUG_NEW new(_NORMAL_BLOCK, __FILE__, __LINE__)
#define new DEBUG_NEW
#endif

#include "State.h"
#include "Primitives.h"
#include <list>
#include <deque>
#include <math.h>
#include <memory>

class MainState : public State
{
public:
   MainState(){};
   ~MainState();


   virtual void Init(const std::string& configfile);
   virtual void Shutdown();
   virtual void Update();
   virtual void Draw();

   virtual void OnEnter();
   virtual void OnExit();

   std::shared_ptr<Font> m_Font;
   std::shared_ptr<Font> m_SmallFont;

   Texture* m_Cursor;
   Texture* m_TestPattern;

   Point m_Pos;

   float m_Speed;

   Gui m_Gui;

   RNG m_RNG;

   int m_Timer = 0;

   enum GuiElements
   {
      GE_RWK = 0,
      GE_RWP,
      GE_RWF,
      GE_RWI,
      GP_CLEANSE,
      GP_OAKSKIN,
      GP_LIGHTNING,
      GP_HYPNOTIZE,
      GP_TORNADO,
      GP_FLAMERING,
      GP_BLOODLUST,
      GP_METEOR,
      GP_PLAGUE,
      GP_KNIGHT,
      GP_ARMAGEDDON,
      GP_VOLCANO,
      GP_STONERAIN,
      GP_SWAMP,
      GP_HEALINGLIGHT,
      GP_FLAMESTRIKE,
      GP_CREATEARCHER,
      GP_CREATEBARBARIAN,
      GP_CREATEWARRIOR,
      GP_MOVEGENERAL,

      GP_NUMGODPOWERS
   };
};

#endif