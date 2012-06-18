#
# Copyright (c) 2012 Nokia Corporation and/or its subsidiary(-ies).
# All rights reserved.
#
# For the applicable distribution terms see the license text file included in
# the distribution.
#

TARGET = cocos2dxtests
TEMPLATE = app

VERSION = 0.8

INCLUDEPATH += ../

DEFINES += COCOS2D_DEBUG

COCOSBUILDMODE = static
COCOSMODULES += box2d cocosdenshion chipmunk
include(../../cocos2d-qt.pri)

CCRESOURCES = ../Resources

HEADERS += \
    main.h \
    ../AppDelegate.h \
    ../tests/ActionsEaseTest/ActionsEaseTest.h \
    ../tests/ActionsProgressTest/ActionsProgressTest.h \
    ../tests/CurrentLanguageTest/CurrentLanguageTest.h \
    ../tests/ChipmunkAccelTouchTest/ChipmunkAccelTouchTest.h \
    ../tests/ClickAndMoveTest/ClickAndMoveTest.h \
    ../tests/MenuTest/MenuTest.h \
    ../tests/MutiTouchTest/MutiTouchTest.h \
    ../tests/NodeTest/NodeTest.h \
    ../tests/LayerTest/LayerTest.h \
    ../tests/DrawPrimitivesTest/DrawPrimitivesTest.h \
    ../tests/testBasic.h \
    ../tests/FontTest/FontTest.h \
    ../tests/SpriteTest/SpriteTest.h \
    ../tests/IntervalTest/IntervalTest.h \
    ../tests/EffectsAdvancedTest/EffectsAdvancedTest.h \
    ../tests/RotateWorldTest/RotateWorldTest.h \
    ../tests/Box2DTestBed/Test.h \
    ../tests/Box2DTestBed/Box2dView.h \
    ../tests/Box2DTestBed/Tests/CollisionFiltering.h \
    ../tests/Box2DTestBed/Tests/DistanceTest.h \
    ../tests/Box2DTestBed/Tests/OneSidedPlatform.h \
    ../tests/Box2DTestBed/Tests/Pinball.h \
    ../tests/Box2DTestBed/Tests/CompoundShapes.h \
    ../tests/Box2DTestBed/Tests/Gears.h \
    ../tests/Box2DTestBed/Tests/Breakable.h \
    ../tests/Box2DTestBed/Tests/CharacterCollision.h \
    ../tests/Box2DTestBed/Tests/AddPair.h \
    ../tests/Box2DTestBed/Tests/VaryingFriction.h \
    ../tests/Box2DTestBed/Tests/RayCast.h \
    ../tests/Box2DTestBed/Tests/PolyCollision.h \
    ../tests/Box2DTestBed/Tests/VaryingRestitution.h \
    ../tests/Box2DTestBed/Tests/PolyShapes.h \
    ../tests/Box2DTestBed/Tests/DumpShell.h \
    ../tests/Box2DTestBed/Tests/EdgeTest.h \
    ../tests/Box2DTestBed/Tests/Web.h \
    ../tests/Box2DTestBed/Tests/SensorTest.h \
    ../tests/Box2DTestBed/Tests/SliderCrank.h \
    ../tests/Box2DTestBed/Tests/VerticalStack.h \
    ../tests/Box2DTestBed/Tests/Confined.h \
    ../tests/Box2DTestBed/Tests/RopeJoint.h \
    ../tests/Box2DTestBed/Tests/BodyTypes.h \
    ../tests/Box2DTestBed/Tests/CollisionProcessing.h \
    ../tests/Box2DTestBed/Tests/Pulleys.h \
    ../tests/Box2DTestBed/Tests/Prismatic.h \
    ../tests/Box2DTestBed/Tests/ContinuousTest.h \
    ../tests/Box2DTestBed/Tests/Car.h \
    ../tests/Box2DTestBed/Tests/Tumbler.h \
    ../tests/Box2DTestBed/Tests/ShapeEditing.h \
    ../tests/Box2DTestBed/Tests/SphereStack.h \
    ../tests/Box2DTestBed/Tests/Tiles.h \
    ../tests/Box2DTestBed/Tests/EdgeShapes.h \
    ../tests/Box2DTestBed/Tests/BulletTest.h \
    ../tests/Box2DTestBed/Tests/DynamicTreeTest.h \
    ../tests/Box2DTestBed/Tests/Revolute.h \
    ../tests/Box2DTestBed/Tests/Chain.h \
    ../tests/Box2DTestBed/Tests/ApplyForce.h \
    ../tests/Box2DTestBed/Tests/Pyramid.h \
    ../tests/Box2DTestBed/Tests/TheoJansen.h \
    ../tests/Box2DTestBed/Tests/Bridge.h \
    ../tests/Box2DTestBed/Tests/Dominos.h \
    ../tests/Box2DTestBed/Tests/Rope.h \
    ../tests/Box2DTestBed/Tests/Cantilever.h \
    ../tests/Box2DTestBed/Tests/TimeOfImpact.h \
    ../tests/Box2DTestBed/GLES-Render.h \
    ../tests/Box2DTest/Box2dTest.h \
    ../tests/Texture2dTest/Texture2dTest.h \
    ../tests/controller.h \
    ../tests/ActionsTest/ActionsTest.h \
    ../tests/HiResTest/HiResTest.h \
    ../tests/BugsTest/Bug-458/QuestionContainerSprite.h \
    ../tests/BugsTest/Bug-458/Bug-458.h \
    ../tests/BugsTest/Bug-886.h \
    ../tests/BugsTest/Bug-1159.h \
    ../tests/BugsTest/Bug-899.h \
    ../tests/BugsTest/BugsTest.h \
    ../tests/BugsTest/Bug-914.h \
    ../tests/BugsTest/Bug-350.h \
    ../tests/BugsTest/Bug-422.h \
    ../tests/BugsTest/Bug-1174.h \
    ../tests/BugsTest/Bug-624.h \
    ../tests/TileMapTest/TileMapTest.h \
    ../tests/ParticleTest/ParticleTest.h \
    ../tests/ParallaxTest/ParallaxTest.h \
    ../tests/EffectsTest/EffectsTest.h \
    ../tests/LabelTest/LabelTest.h \
    ../tests/SchedulerTest/SchedulerTest.h \
    ../tests/CocosDenshionTest/CocosDenshionTest.h \
    ../tests/AdvCocosDenshionTest/AdvCocosDenshionTest.h \
    ../tests/testResource.h \
    ../tests/TransitionsTest/TransitionsTest.h \
    ../tests/SceneTest/SceneTest.h \
    ../tests/ShaderTest/ShaderTest.h \
    ../tests/AccelerometerTest/AccelerometerTest.h \
    ../tests/DirectorTest/DirectorTest.h \
    ../tests/TextInputTest/TextInputTest.h \
    ../tests/UserDefaultTest/UserDefaultTest.h \
    ../tests/RenderTextureTest/RenderTextureTest.h \
    ../tests/TouchesTest/TouchesTest.h \
    ../tests/TouchesTest/Ball.h \
    ../tests/TouchesTest/Paddle.h \
    ../tests/ExtensionsTest/ExtensionsTest.h \
    ../tests/ExtensionsTest/CocosBuilderTest/CocosBuilderTest.h \
    ../tests/ExtensionsTest/CocosBuilderTest/HelloCocosBuilder.h \
    ../tests/ExtensionsTest/ControlExtensionTest/CCControlScene.h \
    ../tests/ExtensionsTest/ControlExtensionTest/CCControlSceneManager.h \
    ../tests/ExtensionsTest/ControlExtensionTest/CCControlButtonTest/CCControlButtonTest.h \
    ../tests/ExtensionsTest/ControlExtensionTest/CCControlColourPicker/CCControlColourPickerTest.h \
    ../tests/ExtensionsTest/ControlExtensionTest/CCControlSliderTest/CCControlSliderTest.h \
    ../tests/ExtensionsTest/ControlExtensionTest/CCControlSwitchTest/CCControlSwitchTest.h \
    ../tests/ExtensionsTest/NotificationCenterTest/NotificationCenterTest.h \
    ../tests/TextureCacheTest/TextureCacheTest.h \
    ../tests/ZwoptexTest/ZwoptexTest.h \
    ../tests/PerformanceTest/PerformanceTest.h \
    ../tests/PerformanceTest/PerformanceTouchesTest.h \
    ../tests/PerformanceTest/PerformanceTextureTest.h \
    ../tests/PerformanceTest/PerformanceParticleTest.h \
    ../tests/PerformanceTest/PerformanceNodeChildrenTest.h \
    ../tests/PerformanceTest/PerformanceSpriteTest.h \
    ../tests/tests.h \
    ../tests/KeypadTest/KeypadTest.h \
    ../tests/ActionManagerTest/ActionManagerTest.h \
    ../tests/MotionStreakTest/MotionStreakTest.h
#    ../tests/CurlTest/CurlTest.h

SOURCES += \
    main.cpp \
    ../AppDelegate.cpp \
    ../tests/ActionsEaseTest/ActionsEaseTest.cpp \
    ../tests/ActionsProgressTest/ActionsProgressTest.cpp \
    ../tests/CurrentLanguageTest/CurrentLanguageTest.cpp \
    ../tests/ChipmunkAccelTouchTest/ChipmunkAccelTouchTest.cpp \
    ../tests/ClickAndMoveTest/ClickAndMoveTest.cpp \
    ../tests/MenuTest/MenuTest.cpp \
    ../tests/MutiTouchTest/MutiTouchTest.cpp \
    ../tests/NodeTest/NodeTest.cpp \
    ../tests/LayerTest/LayerTest.cpp \
    ../tests/DrawPrimitivesTest/DrawPrimitivesTest.cpp \
    ../tests/controller.cpp \
    ../tests/FontTest/FontTest.cpp \
    ../tests/SpriteTest/SpriteTest.cpp \
    ../tests/IntervalTest/IntervalTest.cpp \
    ../tests/EffectsAdvancedTest/EffectsAdvancedTest.cpp \
    ../tests/RotateWorldTest/RotateWorldTest.cpp \
    ../tests/Box2DTestBed/Box2dView.cpp \
    ../tests/Box2DTestBed/Test.cpp \
    ../tests/Box2DTestBed/GLES-Render.cpp \
    ../tests/Box2DTestBed/TestEntries.cpp \
    ../tests/Box2DTest/Box2dTest.cpp \
    ../tests/Texture2dTest/Texture2dTest.cpp \
    ../tests/ActionsTest/ActionsTest.cpp \
    ../tests/testBasic.cpp \
    ../tests/HiResTest/HiResTest.cpp \
    ../tests/BugsTest/Bug-458/Bug-458.cpp \
    ../tests/BugsTest/Bug-458/QuestionContainerSprite.cpp \
    ../tests/BugsTest/Bug-899.cpp \
    ../tests/BugsTest/BugsTest.cpp \
    ../tests/BugsTest/Bug-1174.cpp \
    ../tests/BugsTest/Bug-914.cpp \
    ../tests/BugsTest/Bug-624.cpp \
    ../tests/BugsTest/Bug-1159.cpp \
    ../tests/BugsTest/Bug-422.cpp \
    ../tests/BugsTest/Bug-886.cpp \
    ../tests/BugsTest/Bug-350.cpp \
    ../tests/TileMapTest/TileMapTest.cpp \
    ../tests/ParticleTest/ParticleTest.cpp \
    ../tests/ParallaxTest/ParallaxTest.cpp \
    ../tests/EffectsTest/EffectsTest.cpp \
    ../tests/LabelTest/LabelTest.cpp \
    ../tests/SchedulerTest/SchedulerTest.cpp \
    ../tests/CocosDenshionTest/CocosDenshionTest.cpp \
    ../tests/AdvCocosDenshionTest/AdvCocosDenshionTest.cpp \
    ../tests/TransitionsTest/TransitionsTest.cpp \
    ../tests/SceneTest/SceneTest.cpp \
    ../tests/ShaderTest/ShaderTest.cpp \
    ../tests/AccelerometerTest/AccelerometerTest.cpp \
    ../tests/DirectorTest/DirectorTest.cpp \
    ../tests/TextInputTest/TextInputTest.cpp \
    ../tests/UserDefaultTest/UserDefaultTest.cpp \
    ../tests/RenderTextureTest/RenderTextureTest.cpp \
    ../tests/TouchesTest/Paddle.cpp \
    ../tests/TouchesTest/TouchesTest.cpp \
    ../tests/TouchesTest/Ball.cpp \
    ../tests/ExtensionsTest/ExtensionsTest.cpp \
    ../tests/ExtensionsTest/CocosBuilderTest/CocosBuilderTest.cpp \
    ../tests/ExtensionsTest/CocosBuilderTest/HelloCocosBuilder.cpp \
    ../tests/ExtensionsTest/ControlExtensionTest/CCControlScene.cpp \
    ../tests/ExtensionsTest/ControlExtensionTest/CCControlSceneManager.cpp \
    ../tests/ExtensionsTest/ControlExtensionTest/CCControlButtonTest/CCControlButtonTest.cpp \
    ../tests/ExtensionsTest/ControlExtensionTest/CCControlColourPicker/CCControlColourPickerTest.cpp \
    ../tests/ExtensionsTest/ControlExtensionTest/CCControlSliderTest/CCControlSliderTest.cpp \
    ../tests/ExtensionsTest/ControlExtensionTest/CCControlSwitchTest/CCControlSwitchTest.cpp \
    ../tests/ExtensionsTest/NotificationCenterTest/NotificationCenterTest.cpp \
    ../tests/TextureCacheTest/TextureCacheTest.cpp \
    ../tests/ZwoptexTest/ZwoptexTest.cpp \
    ../tests/PerformanceTest/PerformanceParticleTest.cpp \
    ../tests/PerformanceTest/PerformanceTest.cpp \
    ../tests/PerformanceTest/PerformanceSpriteTest.cpp \
    ../tests/PerformanceTest/PerformanceNodeChildrenTest.cpp \
    ../tests/PerformanceTest/PerformanceTouchesTest.cpp \
    ../tests/PerformanceTest/PerformanceTextureTest.cpp \
    ../tests/KeypadTest/KeypadTest.cpp \
    ../tests/ActionManagerTest/ActionManagerTest.cpp \
    ../tests/MotionStreakTest/MotionStreakTest.cpp
#    ../tests/CurlTest/CurlTest.cpp


symbian {
    TARGET = tests
    TARGET.UID3 = 0xE8AA3F78
    TARGET.CAPABILITY = ReadUserData WriteUserData

    MMP_RULES += "OPTION gcce -march=armv6"
    MMP_RULES += "OPTION gcce -mfpu=vfp"
    MMP_RULES += "OPTION gcce -mfloat-abi=softfp"
    MMP_RULES += "OPTION gcce -marm"

    TARGET.EPOCSTACKSIZE = 0x14000
    TARGET.EPOCHEAPSIZE = 0x020000 0x8000000

    ICON = icons/icon.svg

    ccres.sources = $$CCRESOURCES
    ccres.path = !:/private/E8AA3F78/
    DEPLOYMENT += ccres
}

unix:!symbian {
    target.path = /opt/cocos2dxtests/bin
    INSTALLS += target

    ccres.files = $$CCRESOURCES
    ccres.path = /opt/cocos2dxtests/
    INSTALLS += ccres

    contains(MEEGO_EDITION,harmattan) {
        desktop.path = /usr/share/applications
        desktop.files += qtc_packaging/debian_harmattan/$${TARGET}.desktop
        INSTALLS += desktop

        gameclassify.path = /usr/share/policy/etc/syspart.conf.d
        gameclassify.files += qtc_packaging/debian_harmattan/$${TARGET}.conf
        INSTALLS += gameclassify

        icon80.path = /usr/share/icons/hicolor/64x64/apps
        icon80.files += icons/$${TARGET}.png
        INSTALLS += icon80
    }
}

OTHER_FILES += \
    qtc_packaging/debian_harmattan/rules \
    qtc_packaging/debian_harmattan/README \
    qtc_packaging/debian_harmattan/manifest.aegis \
    qtc_packaging/debian_harmattan/copyright \
    qtc_packaging/debian_harmattan/control \
    qtc_packaging/debian_harmattan/compat \
    qtc_packaging/debian_harmattan/changelog
