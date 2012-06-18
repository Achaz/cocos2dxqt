/**
* Copyright (c) 2012 Nokia Corporation and/or its subsidiary(-ies).
* All rights reserved.
*
* For the applicable distribution terms see the license text file included in
* the distribution.
*/

#include "SimpleAudioEngine.h"
#include "QtAudioPlayer.h"

namespace CocosDenshion {

static AudioPlayer* oAudioPlayer;

SimpleAudioEngine::SimpleAudioEngine()
{
    oAudioPlayer = QtAudioPlayer::sharedPlayer();
}

SimpleAudioEngine::~SimpleAudioEngine()
{
}

SimpleAudioEngine* SimpleAudioEngine::sharedEngine()
{
    static SimpleAudioEngine s_SharedEngine;
    return &s_SharedEngine;
}

void SimpleAudioEngine::end()
{
}

//////////////////////////////////////////////////////////////////////////
// BackgroundMusic
//////////////////////////////////////////////////////////////////////////

void SimpleAudioEngine::playBackgroundMusic(const char* pszFilePath,
        bool bLoop)
{
    oAudioPlayer->playBackgroundMusic(pszFilePath, bLoop);
}

void SimpleAudioEngine::stopBackgroundMusic(bool bReleaseData)
{
    oAudioPlayer->stopBackgroundMusic(bReleaseData);
}

void SimpleAudioEngine::pauseBackgroundMusic()
{
    oAudioPlayer->pauseBackgroundMusic();
}

void SimpleAudioEngine::resumeBackgroundMusic()
{
    oAudioPlayer->resumeBackgroundMusic();
}

void SimpleAudioEngine::rewindBackgroundMusic()
{
    oAudioPlayer->rewindBackgroundMusic();
}

bool SimpleAudioEngine::willPlayBackgroundMusic()
{
    return oAudioPlayer->willPlayBackgroundMusic();
}

bool SimpleAudioEngine::isBackgroundMusicPlaying()
{
    return oAudioPlayer->isBackgroundMusicPlaying();
}

void SimpleAudioEngine::preloadBackgroundMusic(const char* pszFilePath)
{
    oAudioPlayer->preloadBackgroundMusic(pszFilePath);
}

//////////////////////////////////////////////////////////////////////////
// effect function
//////////////////////////////////////////////////////////////////////////

unsigned int SimpleAudioEngine::playEffect(const char* pszFilePath,
        bool bLoop)
{
    return oAudioPlayer->playEffect(pszFilePath, bLoop);
}

void SimpleAudioEngine::stopEffect(unsigned int nSoundId)
{
    oAudioPlayer->stopEffect(nSoundId);
}

void SimpleAudioEngine::preloadEffect(const char* pszFilePath)
{
    oAudioPlayer->preloadEffect(pszFilePath);
}

void SimpleAudioEngine::unloadEffect(const char* pszFilePath)
{
    oAudioPlayer->unloadEffect(pszFilePath);
}

void SimpleAudioEngine::pauseEffect(unsigned int uSoundId)
{
    oAudioPlayer->pauseEffect(uSoundId);
}

void SimpleAudioEngine::pauseAllEffects()
{
    oAudioPlayer->pauseAllEffects();
}

void SimpleAudioEngine::resumeEffect(unsigned int uSoundId)
{
    oAudioPlayer->resumeEffect(uSoundId);
}

void SimpleAudioEngine::resumeAllEffects()
{
    oAudioPlayer->resumeAllEffects();
}

void SimpleAudioEngine::stopAllEffects()
{
    oAudioPlayer->stopAllEffects();
}



//////////////////////////////////////////////////////////////////////////
// volume interface
//////////////////////////////////////////////////////////////////////////

float SimpleAudioEngine::getBackgroundMusicVolume()
{
    return oAudioPlayer->getBackgroundMusicVolume();
}

void SimpleAudioEngine::setBackgroundMusicVolume(float volume)
{
    oAudioPlayer->setBackgroundMusicVolume(volume);
}

float SimpleAudioEngine::getEffectsVolume()
{
    return oAudioPlayer->getEffectsVolume();
}

void SimpleAudioEngine::setEffectsVolume(float volume)
{
    oAudioPlayer->setEffectsVolume(volume);
}

} // end of namespace CocosDenshion
