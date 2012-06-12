/**
* Copyright (c) 2012 Nokia Corporation and/or its subsidiary(-ies).
* All rights reserved.
*
* For the applicable distribution terms see the license text file included in
* the distribution.
*/

#include "AppDelegate.h"

#include "CCFileUtils.h"

int main(int argc, char **argv)
{
#ifdef Q_OS_SYMBIAN
        CCFileUtils::setResourcePath("/private/E8AA3F79/resources");
#else
        CCFileUtils::setResourcePath("/opt/helloworld/resources");
#endif

    // create the application instance
    AppDelegate app;
    app.setOrientation(CCApplication::kOrientationLandscapeLeft);
    return app.run();
}
