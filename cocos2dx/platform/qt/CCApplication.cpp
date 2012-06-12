/**
* Copyright (c) 2012 Nokia Corporation and/or its subsidiary(-ies).
* All rights reserved.
*
* For the applicable distribution terms see the license text file included in
* the distribution.
*/

#include "CCApplication.h"
#include <unistd.h>
#include <sys/time.h>
#include <QTimer>
#include <QSystemInfo>

#include "CCDirector.h"

#include "CCEGLView_qt.h"

using namespace cocos2d;
QTM_USE_NAMESPACE

// sharedApplication pointer
CCApplication * CCApplication::sm_pSharedApplication = 0;

int tmpArgc = 1;
char* tmpArgv[] = {"", NULL};

CCApplication::CCApplication():
    QApplication(tmpArgc, tmpArgv),
    m_orientation(kOrientationPortrait),
    m_timer(NULL),
    m_refCount(0)
{
    CC_ASSERT(! sm_pSharedApplication);
    sm_pSharedApplication = this;
    m_nAnimationInterval = 1.0f / 60.0f * 1000.0f;

#ifdef Q_OS_SYMBIAN
    QCoreApplication:setAttribute(Qt::AA_S60DisablePartialScreenInputMode, false);
#endif

    setOrientation(m_orientation);
}

CCApplication::CCApplication(int& argc, char** argv):
    QApplication(argc, argv),
    m_orientation(kOrientationPortrait),
    m_timer(NULL),
    m_refCount(0)
{
    CC_ASSERT(! sm_pSharedApplication);
    sm_pSharedApplication = this;
    m_nAnimationInterval = 1.0f / 60.0f * 1000.0f;

#ifdef Q_OS_SYMBIAN
    QCoreApplication:setAttribute(Qt::AA_S60DisablePartialScreenInputMode, false);
#endif

    setOrientation(m_orientation);
}

CCApplication::~CCApplication()
{
	CC_ASSERT(this == sm_pSharedApplication);
	sm_pSharedApplication = NULL;

    CC_SAFE_DELETE(m_timer);
}

void CCApplication::lock()
{
    m_refCount++;
}

void CCApplication::unlock()
{
    CC_ASSERT(m_refCount > 0);
    if (m_refCount > 0)
    {
        m_refCount--;
    }
}


CCApplication::Orientation CCApplication::setOrientation(Orientation orientation)
{
    // Orientation change is not allowed when the application is already running
    if(m_timer)
        return m_orientation;

#if defined(Q_OS_SYMBIAN)
    CAknAppUiBase::TAppUiOrientation uiOrientation;

    switch(orientation)
    {
    case CCApplication::kOrientationPortrait:
    case CCApplication::kOrientationPortraitUpsideDown:
        uiOrientation = CAknAppUi::EAppUiOrientationPortrait;
        m_orientation = CCApplication::kOrientationPortrait;
        break;

    case CCApplication::kOrientationLandscapeLeft:
    case CCApplication::kOrientationLandscapeRight:
        uiOrientation = CAknAppUi::EAppUiOrientationLandscape;
        m_orientation = CCApplication::kOrientationLandscapeLeft;
        break;

    default:
        uiOrientation = CAknAppUi::EAppUiOrientationPortrait;
        m_orientation = CCApplication::kOrientationPortrait;
    }

    CAknAppUi *ui = dynamic_cast<CAknAppUi *>(CEikonEnv::Static()->AppUi());
    TRAPD(error,
        if(ui) {
            ui->SetOrientationL(uiOrientation);
        }
    );

    Q_UNUSED(error);

    return m_orientation;
#elif defined(MEEGO_EDITION_HARMATTAN)
    // TODO: The code below doesn't work on harmattan, FIX! (if possible and needed)
    /*
    switch(m_eInitOrientation)
    {
    case CCApplication::kOrientationPortrait:
    case CCApplication::kOrientationPortraitUpsideDown:
        //setAttribute(Qt::WA_Maemo5PortraitOrientation, true);
        setAttribute(Qt::WA_LockPortraitOrientation, true);
        break;

    case CCApplication::kOrientationLandscapeLeft:
    case CCApplication::kOrientationLandscapeRight:
        //setAttribute(Qt::WA_Maemo5LandscapeOrientation, true);
        setAttribute(Qt::WA_LockLandscapeOrientation, true);
        break;

    default:
        //setAttribute(Qt::WA_Maemo5PortraitOrientation, true);
        setAttribute(Qt::WA_LockPortraitOrientation, true);
        break;
    }
    */

    return kOrientationLandscapeLeft;
#endif
}

void CCApplication::setAnimationInterval(double interval)
{
    m_nAnimationInterval = interval * 1000.0f;
    if (m_timer)
    {
        m_timer->start(m_nAnimationInterval);
    }
}

ccLanguageType CCApplication::getCurrentLanguage()
{
    QSystemInfo sysInfo;
    QString lang = sysInfo.currentLanguage();

    if (lang == "zh")
    {
        return kLanguageChinese;
    }
    else if (lang == "fr")
    {
        return kLanguageFrench;
    }
    else if (lang == "it")
    {
        return kLanguageItalian;
    }
    else if (lang == "de")
    {
        return kLanguageGerman;
    }
    else if (lang == "es")
    {
        return kLanguageSpanish;
    }
    else if (lang == "ru")
    {
        return kLanguageRussian;
    }

    return kLanguageEnglish;
}

int CCApplication::run()
{
    // Make sure the view is initialized
    CCEGLView& view = CCEGLView::sharedOpenGLView();

    if (!applicationDidFinishLaunching())
    {
        return 0;
    }

    m_timer = new QTimer(this);
    connect(m_timer, SIGNAL(timeout()), this, SLOT(timerUpdate()));
    m_timer->start(m_nAnimationInterval);

    return exec();
}

CCApplication& CCApplication::sharedApplication()
{
    CC_ASSERT(sm_pSharedApplication);
    return *sm_pSharedApplication;
}

void CCApplication::timerUpdate()
{
    // m_refCount is here to prevent calling the mainloop from nested event loops
    if (!m_refCount)
    {
        CCDirector::sharedDirector()->mainLoop();
    }
}
