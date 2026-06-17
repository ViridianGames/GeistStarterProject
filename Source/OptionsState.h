#ifndef _OPTIONSSTATE_H_
#define _OPTIONSSTATE_H_

#include "Geist/State.h"

class OptionsState : public State
{
public:
    OptionsState() {};
    ~OptionsState() override {};

    void Init(const std::string& configfile) override;
    void Shutdown() override;
    void Update() override;
    void Draw() override;

    void OnEnter() override;
    void OnExit() override;
};

#endif