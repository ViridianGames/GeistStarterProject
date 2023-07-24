#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Environment
MKDIR=mkdir
CP=cp
GREP=grep
NM=nm
CCADMIN=CCadmin
RANLIB=ranlib
CC=gcc
CCC=g++
CXX=g++
FC=gfortran
AS=as

# Macros
CND_PLATFORM=GNU-Linux
CND_DLIB_EXT=so
CND_CONF=Release
CND_DISTDIR=dist
CND_BUILDDIR=build

# Include project Makefile
include Makefile

# Object Directory
OBJECTDIR=${CND_BUILDDIR}/${CND_CONF}/${CND_PLATFORM}

# Object Files
OBJECTFILES= \
	${OBJECTDIR}/_ext/2ccc88d1/BaseUnits.o \
	${OBJECTDIR}/_ext/2ccc88d1/Config.o \
	${OBJECTDIR}/_ext/2ccc88d1/Display.o \
	${OBJECTDIR}/_ext/2ccc88d1/Engine.o \
	${OBJECTDIR}/_ext/2ccc88d1/Font.o \
	${OBJECTDIR}/_ext/2ccc88d1/GUIElements.o \
	${OBJECTDIR}/_ext/2ccc88d1/Globals.o \
	${OBJECTDIR}/_ext/2ccc88d1/Gui.o \
	${OBJECTDIR}/_ext/2ccc88d1/Input.o \
	${OBJECTDIR}/_ext/2ccc88d1/Logging.o \
	${OBJECTDIR}/_ext/2ccc88d1/MemoryManager.o \
	${OBJECTDIR}/_ext/2ccc88d1/ParticleSystem.o \
	${OBJECTDIR}/_ext/2ccc88d1/Primitives.o \
	${OBJECTDIR}/_ext/2ccc88d1/RNG.o \
	${OBJECTDIR}/_ext/2ccc88d1/ResourceManager.o \
	${OBJECTDIR}/_ext/2ccc88d1/Sound.o \
	${OBJECTDIR}/_ext/2ccc88d1/StateMachine.o \
	${OBJECTDIR}/_ext/2ccc88d1/SteamManager.o \
	${OBJECTDIR}/_ext/2ccc88d1/TooltipSystem.o \
	${OBJECTDIR}/_ext/859db640/tinyxml2.o \
	${OBJECTDIR}/_ext/957bd1db/Main.o \
	${OBJECTDIR}/_ext/957bd1db/MainState.o


# C Compiler Flags
CFLAGS=

# CC Compiler Flags
CCFLAGS=-m64
CXXFLAGS=-m64

# Fortran Compiler Flags
FFLAGS=

# Assembler Flags
ASFLAGS=

# Link Libraries and Options
LDLIBSOPTIONS=../../../../../Libraries/glew/lib/libGLEW.a ../../../../../Libraries/steamworks/sdk/redistributable_bin/linux64/libsteam_api.so

# Build Targets
.build-conf: ${BUILD_SUBPROJECTS}
	"${MAKE}"  -f nbproject/Makefile-${CND_CONF}.mk ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/starter_application

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/starter_application: ../../../../../Libraries/glew/lib/libGLEW.a

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/starter_application: ../../../../../Libraries/steamworks/sdk/redistributable_bin/linux64/libsteam_api.so

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/starter_application: ${OBJECTFILES}
	${MKDIR} -p ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}
	${LINK.cc} -o ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/starter_application ${OBJECTFILES} ${LDLIBSOPTIONS} -lX11 -lGL -lGLU -lSDL2 -lSDL2_mixer -lSDL2_image

${OBJECTDIR}/_ext/2ccc88d1/BaseUnits.o: ../../../../../Libraries/Framework/Source/BaseUnits.cpp
	${MKDIR} -p ${OBJECTDIR}/_ext/2ccc88d1
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -I/usr/include/SDL2 -I../../../../../Libraries/glm -I../../../../../Libraries/Framework/Source -I../../../../../Libraries/glew/include -I../../../../../Libraries/stb_truetype -I../../../../../Libraries/tinyxml2 -I../../../../../Libraries/steamworks/sdk/public/steam -I../../Source -std=c++14 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/2ccc88d1/BaseUnits.o ../../../../../Libraries/Framework/Source/BaseUnits.cpp

${OBJECTDIR}/_ext/2ccc88d1/Config.o: ../../../../../Libraries/Framework/Source/Config.cpp
	${MKDIR} -p ${OBJECTDIR}/_ext/2ccc88d1
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -I/usr/include/SDL2 -I../../../../../Libraries/glm -I../../../../../Libraries/Framework/Source -I../../../../../Libraries/glew/include -I../../../../../Libraries/stb_truetype -I../../../../../Libraries/tinyxml2 -I../../../../../Libraries/steamworks/sdk/public/steam -I../../Source -std=c++14 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/2ccc88d1/Config.o ../../../../../Libraries/Framework/Source/Config.cpp

${OBJECTDIR}/_ext/2ccc88d1/Display.o: ../../../../../Libraries/Framework/Source/Display.cpp
	${MKDIR} -p ${OBJECTDIR}/_ext/2ccc88d1
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -I/usr/include/SDL2 -I../../../../../Libraries/glm -I../../../../../Libraries/Framework/Source -I../../../../../Libraries/glew/include -I../../../../../Libraries/stb_truetype -I../../../../../Libraries/tinyxml2 -I../../../../../Libraries/steamworks/sdk/public/steam -I../../Source -std=c++14 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/2ccc88d1/Display.o ../../../../../Libraries/Framework/Source/Display.cpp

${OBJECTDIR}/_ext/2ccc88d1/Engine.o: ../../../../../Libraries/Framework/Source/Engine.cpp
	${MKDIR} -p ${OBJECTDIR}/_ext/2ccc88d1
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -I/usr/include/SDL2 -I../../../../../Libraries/glm -I../../../../../Libraries/Framework/Source -I../../../../../Libraries/glew/include -I../../../../../Libraries/stb_truetype -I../../../../../Libraries/tinyxml2 -I../../../../../Libraries/steamworks/sdk/public/steam -I../../Source -std=c++14 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/2ccc88d1/Engine.o ../../../../../Libraries/Framework/Source/Engine.cpp

${OBJECTDIR}/_ext/2ccc88d1/Font.o: ../../../../../Libraries/Framework/Source/Font.cpp
	${MKDIR} -p ${OBJECTDIR}/_ext/2ccc88d1
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -I/usr/include/SDL2 -I../../../../../Libraries/glm -I../../../../../Libraries/Framework/Source -I../../../../../Libraries/glew/include -I../../../../../Libraries/stb_truetype -I../../../../../Libraries/tinyxml2 -I../../../../../Libraries/steamworks/sdk/public/steam -I../../Source -std=c++14 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/2ccc88d1/Font.o ../../../../../Libraries/Framework/Source/Font.cpp

${OBJECTDIR}/_ext/2ccc88d1/GUIElements.o: ../../../../../Libraries/Framework/Source/GUIElements.cpp
	${MKDIR} -p ${OBJECTDIR}/_ext/2ccc88d1
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -I/usr/include/SDL2 -I../../../../../Libraries/glm -I../../../../../Libraries/Framework/Source -I../../../../../Libraries/glew/include -I../../../../../Libraries/stb_truetype -I../../../../../Libraries/tinyxml2 -I../../../../../Libraries/steamworks/sdk/public/steam -I../../Source -std=c++14 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/2ccc88d1/GUIElements.o ../../../../../Libraries/Framework/Source/GUIElements.cpp

${OBJECTDIR}/_ext/2ccc88d1/Globals.o: ../../../../../Libraries/Framework/Source/Globals.cpp
	${MKDIR} -p ${OBJECTDIR}/_ext/2ccc88d1
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -I/usr/include/SDL2 -I../../../../../Libraries/glm -I../../../../../Libraries/Framework/Source -I../../../../../Libraries/glew/include -I../../../../../Libraries/stb_truetype -I../../../../../Libraries/tinyxml2 -I../../../../../Libraries/steamworks/sdk/public/steam -I../../Source -std=c++14 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/2ccc88d1/Globals.o ../../../../../Libraries/Framework/Source/Globals.cpp

${OBJECTDIR}/_ext/2ccc88d1/Gui.o: ../../../../../Libraries/Framework/Source/Gui.cpp
	${MKDIR} -p ${OBJECTDIR}/_ext/2ccc88d1
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -I/usr/include/SDL2 -I../../../../../Libraries/glm -I../../../../../Libraries/Framework/Source -I../../../../../Libraries/glew/include -I../../../../../Libraries/stb_truetype -I../../../../../Libraries/tinyxml2 -I../../../../../Libraries/steamworks/sdk/public/steam -I../../Source -std=c++14 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/2ccc88d1/Gui.o ../../../../../Libraries/Framework/Source/Gui.cpp

${OBJECTDIR}/_ext/2ccc88d1/Input.o: ../../../../../Libraries/Framework/Source/Input.cpp
	${MKDIR} -p ${OBJECTDIR}/_ext/2ccc88d1
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -I/usr/include/SDL2 -I../../../../../Libraries/glm -I../../../../../Libraries/Framework/Source -I../../../../../Libraries/glew/include -I../../../../../Libraries/stb_truetype -I../../../../../Libraries/tinyxml2 -I../../../../../Libraries/steamworks/sdk/public/steam -I../../Source -std=c++14 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/2ccc88d1/Input.o ../../../../../Libraries/Framework/Source/Input.cpp

${OBJECTDIR}/_ext/2ccc88d1/Logging.o: ../../../../../Libraries/Framework/Source/Logging.cpp
	${MKDIR} -p ${OBJECTDIR}/_ext/2ccc88d1
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -I/usr/include/SDL2 -I../../../../../Libraries/glm -I../../../../../Libraries/Framework/Source -I../../../../../Libraries/glew/include -I../../../../../Libraries/stb_truetype -I../../../../../Libraries/tinyxml2 -I../../../../../Libraries/steamworks/sdk/public/steam -I../../Source -std=c++14 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/2ccc88d1/Logging.o ../../../../../Libraries/Framework/Source/Logging.cpp

${OBJECTDIR}/_ext/2ccc88d1/MemoryManager.o: ../../../../../Libraries/Framework/Source/MemoryManager.cpp
	${MKDIR} -p ${OBJECTDIR}/_ext/2ccc88d1
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -I/usr/include/SDL2 -I../../../../../Libraries/glm -I../../../../../Libraries/Framework/Source -I../../../../../Libraries/glew/include -I../../../../../Libraries/stb_truetype -I../../../../../Libraries/tinyxml2 -I../../../../../Libraries/steamworks/sdk/public/steam -I../../Source -std=c++14 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/2ccc88d1/MemoryManager.o ../../../../../Libraries/Framework/Source/MemoryManager.cpp

${OBJECTDIR}/_ext/2ccc88d1/ParticleSystem.o: ../../../../../Libraries/Framework/Source/ParticleSystem.cpp
	${MKDIR} -p ${OBJECTDIR}/_ext/2ccc88d1
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -I/usr/include/SDL2 -I../../../../../Libraries/glm -I../../../../../Libraries/Framework/Source -I../../../../../Libraries/glew/include -I../../../../../Libraries/stb_truetype -I../../../../../Libraries/tinyxml2 -I../../../../../Libraries/steamworks/sdk/public/steam -I../../Source -std=c++14 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/2ccc88d1/ParticleSystem.o ../../../../../Libraries/Framework/Source/ParticleSystem.cpp

${OBJECTDIR}/_ext/2ccc88d1/Primitives.o: ../../../../../Libraries/Framework/Source/Primitives.cpp
	${MKDIR} -p ${OBJECTDIR}/_ext/2ccc88d1
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -I/usr/include/SDL2 -I../../../../../Libraries/glm -I../../../../../Libraries/Framework/Source -I../../../../../Libraries/glew/include -I../../../../../Libraries/stb_truetype -I../../../../../Libraries/tinyxml2 -I../../../../../Libraries/steamworks/sdk/public/steam -I../../Source -std=c++14 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/2ccc88d1/Primitives.o ../../../../../Libraries/Framework/Source/Primitives.cpp

${OBJECTDIR}/_ext/2ccc88d1/RNG.o: ../../../../../Libraries/Framework/Source/RNG.cpp
	${MKDIR} -p ${OBJECTDIR}/_ext/2ccc88d1
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -I/usr/include/SDL2 -I../../../../../Libraries/glm -I../../../../../Libraries/Framework/Source -I../../../../../Libraries/glew/include -I../../../../../Libraries/stb_truetype -I../../../../../Libraries/tinyxml2 -I../../../../../Libraries/steamworks/sdk/public/steam -I../../Source -std=c++14 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/2ccc88d1/RNG.o ../../../../../Libraries/Framework/Source/RNG.cpp

${OBJECTDIR}/_ext/2ccc88d1/ResourceManager.o: ../../../../../Libraries/Framework/Source/ResourceManager.cpp
	${MKDIR} -p ${OBJECTDIR}/_ext/2ccc88d1
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -I/usr/include/SDL2 -I../../../../../Libraries/glm -I../../../../../Libraries/Framework/Source -I../../../../../Libraries/glew/include -I../../../../../Libraries/stb_truetype -I../../../../../Libraries/tinyxml2 -I../../../../../Libraries/steamworks/sdk/public/steam -I../../Source -std=c++14 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/2ccc88d1/ResourceManager.o ../../../../../Libraries/Framework/Source/ResourceManager.cpp

${OBJECTDIR}/_ext/2ccc88d1/Sound.o: ../../../../../Libraries/Framework/Source/Sound.cpp
	${MKDIR} -p ${OBJECTDIR}/_ext/2ccc88d1
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -I/usr/include/SDL2 -I../../../../../Libraries/glm -I../../../../../Libraries/Framework/Source -I../../../../../Libraries/glew/include -I../../../../../Libraries/stb_truetype -I../../../../../Libraries/tinyxml2 -I../../../../../Libraries/steamworks/sdk/public/steam -I../../Source -std=c++14 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/2ccc88d1/Sound.o ../../../../../Libraries/Framework/Source/Sound.cpp

${OBJECTDIR}/_ext/2ccc88d1/StateMachine.o: ../../../../../Libraries/Framework/Source/StateMachine.cpp
	${MKDIR} -p ${OBJECTDIR}/_ext/2ccc88d1
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -I/usr/include/SDL2 -I../../../../../Libraries/glm -I../../../../../Libraries/Framework/Source -I../../../../../Libraries/glew/include -I../../../../../Libraries/stb_truetype -I../../../../../Libraries/tinyxml2 -I../../../../../Libraries/steamworks/sdk/public/steam -I../../Source -std=c++14 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/2ccc88d1/StateMachine.o ../../../../../Libraries/Framework/Source/StateMachine.cpp

${OBJECTDIR}/_ext/2ccc88d1/SteamManager.o: ../../../../../Libraries/Framework/Source/SteamManager.cpp
	${MKDIR} -p ${OBJECTDIR}/_ext/2ccc88d1
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -I/usr/include/SDL2 -I../../../../../Libraries/glm -I../../../../../Libraries/Framework/Source -I../../../../../Libraries/glew/include -I../../../../../Libraries/stb_truetype -I../../../../../Libraries/tinyxml2 -I../../../../../Libraries/steamworks/sdk/public/steam -I../../Source -std=c++14 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/2ccc88d1/SteamManager.o ../../../../../Libraries/Framework/Source/SteamManager.cpp

${OBJECTDIR}/_ext/2ccc88d1/TooltipSystem.o: ../../../../../Libraries/Framework/Source/TooltipSystem.cpp
	${MKDIR} -p ${OBJECTDIR}/_ext/2ccc88d1
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -I/usr/include/SDL2 -I../../../../../Libraries/glm -I../../../../../Libraries/Framework/Source -I../../../../../Libraries/glew/include -I../../../../../Libraries/stb_truetype -I../../../../../Libraries/tinyxml2 -I../../../../../Libraries/steamworks/sdk/public/steam -I../../Source -std=c++14 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/2ccc88d1/TooltipSystem.o ../../../../../Libraries/Framework/Source/TooltipSystem.cpp

${OBJECTDIR}/_ext/859db640/tinyxml2.o: ../../../../../Libraries/tinyxml2/tinyxml2.cpp
	${MKDIR} -p ${OBJECTDIR}/_ext/859db640
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -I/usr/include/SDL2 -I../../../../../Libraries/glm -I../../../../../Libraries/Framework/Source -I../../../../../Libraries/glew/include -I../../../../../Libraries/stb_truetype -I../../../../../Libraries/tinyxml2 -I../../../../../Libraries/steamworks/sdk/public/steam -I../../Source -std=c++14 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/859db640/tinyxml2.o ../../../../../Libraries/tinyxml2/tinyxml2.cpp

${OBJECTDIR}/_ext/957bd1db/Main.o: ../../Source/Main.cpp
	${MKDIR} -p ${OBJECTDIR}/_ext/957bd1db
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -I/usr/include/SDL2 -I../../../../../Libraries/glm -I../../../../../Libraries/Framework/Source -I../../../../../Libraries/glew/include -I../../../../../Libraries/stb_truetype -I../../../../../Libraries/tinyxml2 -I../../../../../Libraries/steamworks/sdk/public/steam -I../../Source -std=c++14 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/957bd1db/Main.o ../../Source/Main.cpp

${OBJECTDIR}/_ext/957bd1db/MainState.o: ../../Source/MainState.cpp
	${MKDIR} -p ${OBJECTDIR}/_ext/957bd1db
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -I/usr/include/SDL2 -I../../../../../Libraries/glm -I../../../../../Libraries/Framework/Source -I../../../../../Libraries/glew/include -I../../../../../Libraries/stb_truetype -I../../../../../Libraries/tinyxml2 -I../../../../../Libraries/steamworks/sdk/public/steam -I../../Source -std=c++14 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/_ext/957bd1db/MainState.o ../../Source/MainState.cpp

# Subprojects
.build-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${CND_BUILDDIR}/${CND_CONF}
	${RM} -r ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/libsteam_api.so
	${RM} ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/starter_application

# Subprojects
.clean-subprojects:

# Enable dependency checking
.dep.inc: .depcheck-impl

include .dep.inc
