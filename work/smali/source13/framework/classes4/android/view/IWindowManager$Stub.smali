.class public abstract Landroid/view/IWindowManager$Stub;
.super Landroid/os/Binder;
.source "IWindowManager.java"

# interfaces
.implements Landroid/view/IWindowManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/IWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/IWindowManager$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.view.IWindowManager"

.field static final blacklist TRANSACTION_addKeyguardLockedStateListener:I = 0x21

.field static final blacklist TRANSACTION_addShellRoot:I = 0x14

.field static final greylist-max-o TRANSACTION_addWindowToken:I = 0x11

.field static final blacklist TRANSACTION_attachToDisplayContent:I = 0x79

.field static final blacklist TRANSACTION_attachWindowContextToDisplayArea:I = 0x77

.field static final blacklist TRANSACTION_attachWindowContextToWindowToken:I = 0x78

.field static final blacklist TRANSACTION_captureSpecialLayers:I = 0x93

.field static final blacklist TRANSACTION_checkAppOnWindowsStatus:I = 0x91

.field static final greylist-max-o TRANSACTION_clearForcedDisplayDensityForUser:I = 0xd

.field static final greylist-max-o TRANSACTION_clearForcedDisplaySize:I = 0x9

.field static final blacklist TRANSACTION_clearTaskTransitionSpec:I = 0x81

.field static final greylist-max-o TRANSACTION_clearWindowContentFrameStats:I = 0x4b

.field static final greylist-max-o TRANSACTION_closeSystemDialogs:I = 0x24

.field static final greylist-max-o TRANSACTION_createInputConsumer:I = 0x53

.field static final greylist-max-o TRANSACTION_destroyInputConsumer:I = 0x54

.field static final blacklist TRANSACTION_detachWindowContextFromWindowContainer:I = 0x7a

.field static final greylist-max-o TRANSACTION_disableKeyguard:I = 0x1b

.field static final greylist-max-o TRANSACTION_dismissKeyguard:I = 0x20

.field static final greylist-max-o TRANSACTION_enableScreenIfNeeded:I = 0x4a

.field static final greylist-max-o TRANSACTION_endProlongedAnimations:I = 0x18

.field static final greylist-max-o TRANSACTION_exitKeyguardSecurely:I = 0x1d

.field static final blacklist TRANSACTION_freezeDisplayRotation:I = 0x36

.field static final greylist-max-o TRANSACTION_freezeRotation:I = 0x33

.field static final blacklist TRANSACTION_getAllWallpaperAnimationTarget:I = 0x99

.field static final greylist-max-o TRANSACTION_getAnimationScale:I = 0x25

.field static final greylist-max-o TRANSACTION_getAnimationScales:I = 0x26

.field static final blacklist TRANSACTION_getAppsOnWindowsStatus:I = 0x92

.field static final greylist-max-o TRANSACTION_getBaseDisplayDensity:I = 0xb

.field static final greylist-max-o TRANSACTION_getBaseDisplaySize:I = 0x7

.field static final greylist-max-o TRANSACTION_getCurrentAnimatorScale:I = 0x29

.field static final greylist-max-o TRANSACTION_getCurrentImeTouchRegion:I = 0x55

.field static final greylist-max-o TRANSACTION_getDefaultDisplayRotation:I = 0x2f

.field static final blacklist TRANSACTION_getDisplayImePolicy:I = 0x66

.field static final greylist-max-o TRANSACTION_getDockedStackSide:I = 0x4d

.field static final blacklist TRANSACTION_getImeDisplayId:I = 0x7e

.field static final greylist-max-o TRANSACTION_getInitialDisplayDensity:I = 0xa

.field static final greylist-max-o TRANSACTION_getInitialDisplaySize:I = 0x6

.field static final blacklist TRANSACTION_getMiuiFreeFormPositionX:I = 0x8a

.field static final blacklist TRANSACTION_getMiuiFreeFormPositionY:I = 0x8b

.field static final greylist-max-o TRANSACTION_getNavBarPosition:I = 0x47

.field static final blacklist TRANSACTION_getPossibleDisplayInfo:I = 0x6f

.field static final greylist-max-o TRANSACTION_getPreferredOptionsPanelGravity:I = 0x32

.field static final blacklist TRANSACTION_getRemoveContentMode:I = 0x60

.field static final greylist-max-o TRANSACTION_getStableInsets:I = 0x51

.field static final blacklist TRANSACTION_getSupportedDisplayHashAlgorithms:I = 0x74

.field static final blacklist TRANSACTION_getTaskStackContainersSurfaceControl:I = 0x88

.field static final blacklist TRANSACTION_getWallpaperAnimationTarget:I = 0x98

.field static final blacklist TRANSACTION_getWallpaperAsTarget:I = 0x87

.field static final greylist-max-o TRANSACTION_getWindowContentFrameStats:I = 0x4c

.field static final blacklist TRANSACTION_getWindowInsets:I = 0x6e

.field static final blacklist TRANSACTION_getWindowingMode:I = 0x5e

.field static final greylist-max-o TRANSACTION_hasNavigationBar:I = 0x46

.field static final blacklist TRANSACTION_hideTransientBars:I = 0x42

.field static final blacklist TRANSACTION_holdLock:I = 0x73

.field static final blacklist TRANSACTION_isDisplayFold:I = 0x96

.field static final blacklist TRANSACTION_isDisplayRotationFrozen:I = 0x38

.field static final greylist-max-o TRANSACTION_isKeyguardLocked:I = 0x1e

.field static final greylist-max-o TRANSACTION_isKeyguardSecure:I = 0x1f

.field static final blacklist TRANSACTION_isLayerTracing:I = 0x69

.field static final greylist-max-o TRANSACTION_isRotationFrozen:I = 0x35

.field static final blacklist TRANSACTION_isRotationLocked:I = 0x97

.field static final greylist-max-o TRANSACTION_isSafeModeEnabled:I = 0x49

.field static final blacklist TRANSACTION_isTaskSnapshotSupported:I = 0x7d

.field static final greylist-max-o TRANSACTION_isViewServerRunning:I = 0x3

.field static final blacklist TRANSACTION_isWindowToken:I = 0x10

.field static final greylist-max-o TRANSACTION_isWindowTraceEnabled:I = 0x5d

.field static final blacklist TRANSACTION_launchFlashBackFromBackGroundAnim:I = 0x8c

.field static final greylist-max-o TRANSACTION_lockNow:I = 0x48

.field static final blacklist TRANSACTION_mirrorDisplay:I = 0x6b

.field static final blacklist TRANSACTION_mirrorWallpaperSurface:I = 0x3c

.field static final greylist-max-o TRANSACTION_openSession:I = 0x4

.field static final greylist-max-o TRANSACTION_overridePendingAppTransitionMultiThumbFuture:I = 0x16

.field static final greylist-max-o TRANSACTION_overridePendingAppTransitionRemote:I = 0x17

.field static final greylist-max-o TRANSACTION_reenableKeyguard:I = 0x1c

.field static final greylist-max-o TRANSACTION_refreshScreenCaptureDisabled:I = 0x2d

.field static final blacklist TRANSACTION_registerCrossWindowBlurEnabledListener:I = 0x7b

.field static final blacklist TRANSACTION_registerDisplayFoldListener:I = 0x56

.field static final blacklist TRANSACTION_registerDisplayWindowListener:I = 0x58

.field static final blacklist TRANSACTION_registerPinnedTaskListener:I = 0x4f

.field static final greylist-max-o TRANSACTION_registerShortcutKey:I = 0x52

.field static final blacklist TRANSACTION_registerSystemGestureExclusionListener:I = 0x3f

.field static final blacklist TRANSACTION_registerTaskFpsCallback:I = 0x82

.field static final blacklist TRANSACTION_registerUiModeAnimFinishedCallback:I = 0x89

.field static final greylist-max-o TRANSACTION_registerWallpaperVisibilityListener:I = 0x3d

.field static final blacklist TRANSACTION_removeKeyguardLockedStateListener:I = 0x22

.field static final greylist-max-o TRANSACTION_removeRotationWatcher:I = 0x31

.field static final greylist-max-o TRANSACTION_removeWindowToken:I = 0x12

.field static final greylist-max-o TRANSACTION_requestAppKeyboardShortcuts:I = 0x50

.field static final greylist-max-o TRANSACTION_requestAssistScreenshot:I = 0x41

.field static final blacklist TRANSACTION_requestScrollCapture:I = 0x72

.field static final blacklist TRANSACTION_saveWindowTraceToFile:I = 0x5c

.field static final greylist-max-o TRANSACTION_screenshotWallpaper:I = 0x3b

.field static final greylist-max-o TRANSACTION_setAnimationScale:I = 0x27

.field static final greylist-max-o TRANSACTION_setAnimationScales:I = 0x28

.field static final blacklist TRANSACTION_setAppResolutionTunerSupport:I = 0x8f

.field static final blacklist TRANSACTION_setDisplayHashThrottlingEnabled:I = 0x76

.field static final blacklist TRANSACTION_setDisplayImePolicy:I = 0x67

.field static final blacklist TRANSACTION_setDisplayWindowInsetsController:I = 0x6c

.field static final blacklist TRANSACTION_setDisplayWindowRotationController:I = 0x13

.field static final blacklist TRANSACTION_setDockedTaskDividerTouchRegion:I = 0x4e

.field static final greylist-max-o TRANSACTION_setEventDispatching:I = 0xf

.field static final blacklist TRANSACTION_setFixedToUserRotation:I = 0x39

.field static final greylist-max-o TRANSACTION_setForcedDisplayDensityForUser:I = 0xc

.field static final greylist-max-o TRANSACTION_setForcedDisplayScalingMode:I = 0xe

.field static final greylist-max-o TRANSACTION_setForcedDisplaySize:I = 0x8

.field static final blacklist TRANSACTION_setIgnoreOrientationRequest:I = 0x3a

.field static final greylist-max-o TRANSACTION_setInTouchMode:I = 0x2a

.field static final blacklist TRANSACTION_setLayerTracing:I = 0x6a

.field static final blacklist TRANSACTION_setLayerTracingFlags:I = 0x71

.field static final greylist-max-o TRANSACTION_setNavBarVirtualKeyHapticFeedbackEnabled:I = 0x45

.field static final blacklist TRANSACTION_setRecentsAppBehindSystemBars:I = 0x85

.field static final greylist-max-o TRANSACTION_setRecentsVisibility:I = 0x43

.field static final blacklist TRANSACTION_setRemoveContentMode:I = 0x61

.field static final blacklist TRANSACTION_setRotationLockForFold:I = 0x95

.field static final blacklist TRANSACTION_setScreenProjectionBlacklist:I = 0x8d

.field static final blacklist TRANSACTION_setScreenProjectionList:I = 0x8e

.field static final blacklist TRANSACTION_setScreenShareProjectBlackList:I = 0x94

.field static final blacklist TRANSACTION_setShellRootAccessibilityWindow:I = 0x15

.field static final blacklist TRANSACTION_setShouldShowSystemDecors:I = 0x65

.field static final blacklist TRANSACTION_setShouldShowWithInsecureKeyguard:I = 0x63

.field static final greylist-max-o TRANSACTION_setStrictModeVisualIndicatorPreference:I = 0x2c

.field static final greylist-max-o TRANSACTION_setSwitchingUser:I = 0x23

.field static final blacklist TRANSACTION_setTaskSnapshotEnabled:I = 0x7f

.field static final blacklist TRANSACTION_setTaskTransitionSpec:I = 0x80

.field static final blacklist TRANSACTION_setWallpaperAsTarget:I = 0x86

.field static final blacklist TRANSACTION_setWindowingMode:I = 0x5f

.field static final blacklist TRANSACTION_shouldShowSystemDecors:I = 0x64

.field static final blacklist TRANSACTION_shouldShowWithInsecureKeyguard:I = 0x62

.field static final blacklist TRANSACTION_showGlobalActions:I = 0x70

.field static final greylist-max-o TRANSACTION_showStrictModeViolation:I = 0x2b

.field static final blacklist TRANSACTION_snapshotTaskForRecents:I = 0x84

.field static final greylist-max-o TRANSACTION_startFreezingScreen:I = 0x19

.field static final greylist-max-o TRANSACTION_startViewServer:I = 0x1

.field static final greylist-max-o TRANSACTION_startWindowTrace:I = 0x5a

.field static final greylist-max-o TRANSACTION_stopFreezingScreen:I = 0x1a

.field static final greylist-max-o TRANSACTION_stopViewServer:I = 0x2

.field static final greylist-max-o TRANSACTION_stopWindowTrace:I = 0x5b

.field static final blacklist TRANSACTION_syncInputTransactions:I = 0x68

.field static final blacklist TRANSACTION_thawDisplayRotation:I = 0x37

.field static final greylist-max-o TRANSACTION_thawRotation:I = 0x34

.field static final blacklist TRANSACTION_unregisterCrossWindowBlurEnabledListener:I = 0x7c

.field static final blacklist TRANSACTION_unregisterDisplayFoldListener:I = 0x57

.field static final blacklist TRANSACTION_unregisterDisplayWindowListener:I = 0x59

.field static final blacklist TRANSACTION_unregisterSystemGestureExclusionListener:I = 0x40

.field static final blacklist TRANSACTION_unregisterTaskFpsCallback:I = 0x83

.field static final greylist-max-o TRANSACTION_unregisterWallpaperVisibilityListener:I = 0x3e

.field static final blacklist TRANSACTION_updateDisplayWindowRequestedVisibilities:I = 0x6d

.field static final blacklist TRANSACTION_updateResolutionTunerConfig:I = 0x90

.field static final greylist-max-o TRANSACTION_updateRotation:I = 0x2e

.field static final blacklist TRANSACTION_updateStaticPrivacyIndicatorBounds:I = 0x44

.field static final blacklist TRANSACTION_useBLAST:I = 0x5

.field static final blacklist TRANSACTION_verifyDisplayHash:I = 0x75

.field static final greylist-max-o TRANSACTION_watchRotation:I = 0x30


# direct methods
.method public constructor greylist <init>()V
    .registers 2

    .line 1095
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 1096
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p0, p0, v0}, Landroid/view/IWindowManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 1097
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 1104
    if-nez p0, :cond_4

    .line 1105
    const/4 v0, 0x0

    return-object v0

    .line 1107
    :cond_4
    const-string v0, "android.view.IWindowManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 1108
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/view/IWindowManager;

    if-eqz v1, :cond_14

    .line 1109
    move-object v1, v0

    check-cast v1, Landroid/view/IWindowManager;

    return-object v1

    .line 1111
    :cond_14
    new-instance v1, Landroid/view/IWindowManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/view/IWindowManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 1120
    packed-switch p0, :pswitch_data_226

    .line 1736
    const/4 v0, 0x0

    return-object v0

    .line 1732
    :pswitch_5
    const-string v0, "getAllWallpaperAnimationTarget"

    return-object v0

    .line 1728
    :pswitch_8
    const-string v0, "getWallpaperAnimationTarget"

    return-object v0

    .line 1724
    :pswitch_b
    const-string v0, "isRotationLocked"

    return-object v0

    .line 1720
    :pswitch_e
    const-string v0, "isDisplayFold"

    return-object v0

    .line 1716
    :pswitch_11
    const-string/jumbo v0, "setRotationLockForFold"

    return-object v0

    .line 1712
    :pswitch_15
    const-string/jumbo v0, "setScreenShareProjectBlackList"

    return-object v0

    .line 1708
    :pswitch_19
    const-string v0, "captureSpecialLayers"

    return-object v0

    .line 1704
    :pswitch_1c
    const-string v0, "getAppsOnWindowsStatus"

    return-object v0

    .line 1700
    :pswitch_1f
    const-string v0, "checkAppOnWindowsStatus"

    return-object v0

    .line 1696
    :pswitch_22
    const-string/jumbo v0, "updateResolutionTunerConfig"

    return-object v0

    .line 1692
    :pswitch_26
    const-string/jumbo v0, "setAppResolutionTunerSupport"

    return-object v0

    .line 1688
    :pswitch_2a
    const-string/jumbo v0, "setScreenProjectionList"

    return-object v0

    .line 1684
    :pswitch_2e
    const-string/jumbo v0, "setScreenProjectionBlacklist"

    return-object v0

    .line 1680
    :pswitch_32
    const-string v0, "launchFlashBackFromBackGroundAnim"

    return-object v0

    .line 1676
    :pswitch_35
    const-string v0, "getMiuiFreeFormPositionY"

    return-object v0

    .line 1672
    :pswitch_38
    const-string v0, "getMiuiFreeFormPositionX"

    return-object v0

    .line 1668
    :pswitch_3b
    const-string/jumbo v0, "registerUiModeAnimFinishedCallback"

    return-object v0

    .line 1664
    :pswitch_3f
    const-string v0, "getTaskStackContainersSurfaceControl"

    return-object v0

    .line 1660
    :pswitch_42
    const-string v0, "getWallpaperAsTarget"

    return-object v0

    .line 1656
    :pswitch_45
    const-string/jumbo v0, "setWallpaperAsTarget"

    return-object v0

    .line 1652
    :pswitch_49
    const-string/jumbo v0, "setRecentsAppBehindSystemBars"

    return-object v0

    .line 1648
    :pswitch_4d
    const-string/jumbo v0, "snapshotTaskForRecents"

    return-object v0

    .line 1644
    :pswitch_51
    const-string/jumbo v0, "unregisterTaskFpsCallback"

    return-object v0

    .line 1640
    :pswitch_55
    const-string/jumbo v0, "registerTaskFpsCallback"

    return-object v0

    .line 1636
    :pswitch_59
    const-string v0, "clearTaskTransitionSpec"

    return-object v0

    .line 1632
    :pswitch_5c
    const-string/jumbo v0, "setTaskTransitionSpec"

    return-object v0

    .line 1628
    :pswitch_60
    const-string/jumbo v0, "setTaskSnapshotEnabled"

    return-object v0

    .line 1624
    :pswitch_64
    const-string v0, "getImeDisplayId"

    return-object v0

    .line 1620
    :pswitch_67
    const-string v0, "isTaskSnapshotSupported"

    return-object v0

    .line 1616
    :pswitch_6a
    const-string/jumbo v0, "unregisterCrossWindowBlurEnabledListener"

    return-object v0

    .line 1612
    :pswitch_6e
    const-string/jumbo v0, "registerCrossWindowBlurEnabledListener"

    return-object v0

    .line 1608
    :pswitch_72
    const-string v0, "detachWindowContextFromWindowContainer"

    return-object v0

    .line 1604
    :pswitch_75
    const-string v0, "attachToDisplayContent"

    return-object v0

    .line 1600
    :pswitch_78
    const-string v0, "attachWindowContextToWindowToken"

    return-object v0

    .line 1596
    :pswitch_7b
    const-string v0, "attachWindowContextToDisplayArea"

    return-object v0

    .line 1592
    :pswitch_7e
    const-string/jumbo v0, "setDisplayHashThrottlingEnabled"

    return-object v0

    .line 1588
    :pswitch_82
    const-string/jumbo v0, "verifyDisplayHash"

    return-object v0

    .line 1584
    :pswitch_86
    const-string v0, "getSupportedDisplayHashAlgorithms"

    return-object v0

    .line 1580
    :pswitch_89
    const-string v0, "holdLock"

    return-object v0

    .line 1576
    :pswitch_8c
    const-string/jumbo v0, "requestScrollCapture"

    return-object v0

    .line 1572
    :pswitch_90
    const-string/jumbo v0, "setLayerTracingFlags"

    return-object v0

    .line 1568
    :pswitch_94
    const-string/jumbo v0, "showGlobalActions"

    return-object v0

    .line 1564
    :pswitch_98
    const-string v0, "getPossibleDisplayInfo"

    return-object v0

    .line 1560
    :pswitch_9b
    const-string v0, "getWindowInsets"

    return-object v0

    .line 1556
    :pswitch_9e
    const-string/jumbo v0, "updateDisplayWindowRequestedVisibilities"

    return-object v0

    .line 1552
    :pswitch_a2
    const-string/jumbo v0, "setDisplayWindowInsetsController"

    return-object v0

    .line 1548
    :pswitch_a6
    const-string/jumbo v0, "mirrorDisplay"

    return-object v0

    .line 1544
    :pswitch_aa
    const-string/jumbo v0, "setLayerTracing"

    return-object v0

    .line 1540
    :pswitch_ae
    const-string v0, "isLayerTracing"

    return-object v0

    .line 1536
    :pswitch_b1
    const-string/jumbo v0, "syncInputTransactions"

    return-object v0

    .line 1532
    :pswitch_b5
    const-string/jumbo v0, "setDisplayImePolicy"

    return-object v0

    .line 1528
    :pswitch_b9
    const-string v0, "getDisplayImePolicy"

    return-object v0

    .line 1524
    :pswitch_bc
    const-string/jumbo v0, "setShouldShowSystemDecors"

    return-object v0

    .line 1520
    :pswitch_c0
    const-string/jumbo v0, "shouldShowSystemDecors"

    return-object v0

    .line 1516
    :pswitch_c4
    const-string/jumbo v0, "setShouldShowWithInsecureKeyguard"

    return-object v0

    .line 1512
    :pswitch_c8
    const-string/jumbo v0, "shouldShowWithInsecureKeyguard"

    return-object v0

    .line 1508
    :pswitch_cc
    const-string/jumbo v0, "setRemoveContentMode"

    return-object v0

    .line 1504
    :pswitch_d0
    const-string v0, "getRemoveContentMode"

    return-object v0

    .line 1500
    :pswitch_d3
    const-string/jumbo v0, "setWindowingMode"

    return-object v0

    .line 1496
    :pswitch_d7
    const-string v0, "getWindowingMode"

    return-object v0

    .line 1492
    :pswitch_da
    const-string v0, "isWindowTraceEnabled"

    return-object v0

    .line 1488
    :pswitch_dd
    const-string/jumbo v0, "saveWindowTraceToFile"

    return-object v0

    .line 1484
    :pswitch_e1
    const-string/jumbo v0, "stopWindowTrace"

    return-object v0

    .line 1480
    :pswitch_e5
    const-string/jumbo v0, "startWindowTrace"

    return-object v0

    .line 1476
    :pswitch_e9
    const-string/jumbo v0, "unregisterDisplayWindowListener"

    return-object v0

    .line 1472
    :pswitch_ed
    const-string/jumbo v0, "registerDisplayWindowListener"

    return-object v0

    .line 1468
    :pswitch_f1
    const-string/jumbo v0, "unregisterDisplayFoldListener"

    return-object v0

    .line 1464
    :pswitch_f5
    const-string/jumbo v0, "registerDisplayFoldListener"

    return-object v0

    .line 1460
    :pswitch_f9
    const-string v0, "getCurrentImeTouchRegion"

    return-object v0

    .line 1456
    :pswitch_fc
    const-string v0, "destroyInputConsumer"

    return-object v0

    .line 1452
    :pswitch_ff
    const-string v0, "createInputConsumer"

    return-object v0

    .line 1448
    :pswitch_102
    const-string/jumbo v0, "registerShortcutKey"

    return-object v0

    .line 1444
    :pswitch_106
    const-string v0, "getStableInsets"

    return-object v0

    .line 1440
    :pswitch_109
    const-string/jumbo v0, "requestAppKeyboardShortcuts"

    return-object v0

    .line 1436
    :pswitch_10d
    const-string/jumbo v0, "registerPinnedTaskListener"

    return-object v0

    .line 1432
    :pswitch_111
    const-string/jumbo v0, "setDockedTaskDividerTouchRegion"

    return-object v0

    .line 1428
    :pswitch_115
    const-string v0, "getDockedStackSide"

    return-object v0

    .line 1424
    :pswitch_118
    const-string v0, "getWindowContentFrameStats"

    return-object v0

    .line 1420
    :pswitch_11b
    const-string v0, "clearWindowContentFrameStats"

    return-object v0

    .line 1416
    :pswitch_11e
    const-string v0, "enableScreenIfNeeded"

    return-object v0

    .line 1412
    :pswitch_121
    const-string v0, "isSafeModeEnabled"

    return-object v0

    .line 1408
    :pswitch_124
    const-string v0, "lockNow"

    return-object v0

    .line 1404
    :pswitch_127
    const-string v0, "getNavBarPosition"

    return-object v0

    .line 1400
    :pswitch_12a
    const-string v0, "hasNavigationBar"

    return-object v0

    .line 1396
    :pswitch_12d
    const-string/jumbo v0, "setNavBarVirtualKeyHapticFeedbackEnabled"

    return-object v0

    .line 1392
    :pswitch_131
    const-string/jumbo v0, "updateStaticPrivacyIndicatorBounds"

    return-object v0

    .line 1388
    :pswitch_135
    const-string/jumbo v0, "setRecentsVisibility"

    return-object v0

    .line 1384
    :pswitch_139
    const-string v0, "hideTransientBars"

    return-object v0

    .line 1380
    :pswitch_13c
    const-string/jumbo v0, "requestAssistScreenshot"

    return-object v0

    .line 1376
    :pswitch_140
    const-string/jumbo v0, "unregisterSystemGestureExclusionListener"

    return-object v0

    .line 1372
    :pswitch_144
    const-string/jumbo v0, "registerSystemGestureExclusionListener"

    return-object v0

    .line 1368
    :pswitch_148
    const-string/jumbo v0, "unregisterWallpaperVisibilityListener"

    return-object v0

    .line 1364
    :pswitch_14c
    const-string/jumbo v0, "registerWallpaperVisibilityListener"

    return-object v0

    .line 1360
    :pswitch_150
    const-string/jumbo v0, "mirrorWallpaperSurface"

    return-object v0

    .line 1356
    :pswitch_154
    const-string/jumbo v0, "screenshotWallpaper"

    return-object v0

    .line 1352
    :pswitch_158
    const-string/jumbo v0, "setIgnoreOrientationRequest"

    return-object v0

    .line 1348
    :pswitch_15c
    const-string/jumbo v0, "setFixedToUserRotation"

    return-object v0

    .line 1344
    :pswitch_160
    const-string v0, "isDisplayRotationFrozen"

    return-object v0

    .line 1340
    :pswitch_163
    const-string/jumbo v0, "thawDisplayRotation"

    return-object v0

    .line 1336
    :pswitch_167
    const-string v0, "freezeDisplayRotation"

    return-object v0

    .line 1332
    :pswitch_16a
    const-string v0, "isRotationFrozen"

    return-object v0

    .line 1328
    :pswitch_16d
    const-string/jumbo v0, "thawRotation"

    return-object v0

    .line 1324
    :pswitch_171
    const-string v0, "freezeRotation"

    return-object v0

    .line 1320
    :pswitch_174
    const-string v0, "getPreferredOptionsPanelGravity"

    return-object v0

    .line 1316
    :pswitch_177
    const-string/jumbo v0, "removeRotationWatcher"

    return-object v0

    .line 1312
    :pswitch_17b
    const-string/jumbo v0, "watchRotation"

    return-object v0

    .line 1308
    :pswitch_17f
    const-string v0, "getDefaultDisplayRotation"

    return-object v0

    .line 1304
    :pswitch_182
    const-string/jumbo v0, "updateRotation"

    return-object v0

    .line 1300
    :pswitch_186
    const-string/jumbo v0, "refreshScreenCaptureDisabled"

    return-object v0

    .line 1296
    :pswitch_18a
    const-string/jumbo v0, "setStrictModeVisualIndicatorPreference"

    return-object v0

    .line 1292
    :pswitch_18e
    const-string/jumbo v0, "showStrictModeViolation"

    return-object v0

    .line 1288
    :pswitch_192
    const-string/jumbo v0, "setInTouchMode"

    return-object v0

    .line 1284
    :pswitch_196
    const-string v0, "getCurrentAnimatorScale"

    return-object v0

    .line 1280
    :pswitch_199
    const-string/jumbo v0, "setAnimationScales"

    return-object v0

    .line 1276
    :pswitch_19d
    const-string/jumbo v0, "setAnimationScale"

    return-object v0

    .line 1272
    :pswitch_1a1
    const-string v0, "getAnimationScales"

    return-object v0

    .line 1268
    :pswitch_1a4
    const-string v0, "getAnimationScale"

    return-object v0

    .line 1264
    :pswitch_1a7
    const-string v0, "closeSystemDialogs"

    return-object v0

    .line 1260
    :pswitch_1aa
    const-string/jumbo v0, "setSwitchingUser"

    return-object v0

    .line 1256
    :pswitch_1ae
    const-string/jumbo v0, "removeKeyguardLockedStateListener"

    return-object v0

    .line 1252
    :pswitch_1b2
    const-string v0, "addKeyguardLockedStateListener"

    return-object v0

    .line 1248
    :pswitch_1b5
    const-string v0, "dismissKeyguard"

    return-object v0

    .line 1244
    :pswitch_1b8
    const-string v0, "isKeyguardSecure"

    return-object v0

    .line 1240
    :pswitch_1bb
    const-string v0, "isKeyguardLocked"

    return-object v0

    .line 1236
    :pswitch_1be
    const-string v0, "exitKeyguardSecurely"

    return-object v0

    .line 1232
    :pswitch_1c1
    const-string/jumbo v0, "reenableKeyguard"

    return-object v0

    .line 1228
    :pswitch_1c5
    const-string v0, "disableKeyguard"

    return-object v0

    .line 1224
    :pswitch_1c8
    const-string/jumbo v0, "stopFreezingScreen"

    return-object v0

    .line 1220
    :pswitch_1cc
    const-string/jumbo v0, "startFreezingScreen"

    return-object v0

    .line 1216
    :pswitch_1d0
    const-string v0, "endProlongedAnimations"

    return-object v0

    .line 1212
    :pswitch_1d3
    const-string/jumbo v0, "overridePendingAppTransitionRemote"

    return-object v0

    .line 1208
    :pswitch_1d7
    const-string/jumbo v0, "overridePendingAppTransitionMultiThumbFuture"

    return-object v0

    .line 1204
    :pswitch_1db
    const-string/jumbo v0, "setShellRootAccessibilityWindow"

    return-object v0

    .line 1200
    :pswitch_1df
    const-string v0, "addShellRoot"

    return-object v0

    .line 1196
    :pswitch_1e2
    const-string/jumbo v0, "setDisplayWindowRotationController"

    return-object v0

    .line 1192
    :pswitch_1e6
    const-string/jumbo v0, "removeWindowToken"

    return-object v0

    .line 1188
    :pswitch_1ea
    const-string v0, "addWindowToken"

    return-object v0

    .line 1184
    :pswitch_1ed
    const-string v0, "isWindowToken"

    return-object v0

    .line 1180
    :pswitch_1f0
    const-string/jumbo v0, "setEventDispatching"

    return-object v0

    .line 1176
    :pswitch_1f4
    const-string/jumbo v0, "setForcedDisplayScalingMode"

    return-object v0

    .line 1172
    :pswitch_1f8
    const-string v0, "clearForcedDisplayDensityForUser"

    return-object v0

    .line 1168
    :pswitch_1fb
    const-string/jumbo v0, "setForcedDisplayDensityForUser"

    return-object v0

    .line 1164
    :pswitch_1ff
    const-string v0, "getBaseDisplayDensity"

    return-object v0

    .line 1160
    :pswitch_202
    const-string v0, "getInitialDisplayDensity"

    return-object v0

    .line 1156
    :pswitch_205
    const-string v0, "clearForcedDisplaySize"

    return-object v0

    .line 1152
    :pswitch_208
    const-string/jumbo v0, "setForcedDisplaySize"

    return-object v0

    .line 1148
    :pswitch_20c
    const-string v0, "getBaseDisplaySize"

    return-object v0

    .line 1144
    :pswitch_20f
    const-string v0, "getInitialDisplaySize"

    return-object v0

    .line 1140
    :pswitch_212
    const-string/jumbo v0, "useBLAST"

    return-object v0

    .line 1136
    :pswitch_216
    const-string/jumbo v0, "openSession"

    return-object v0

    .line 1132
    :pswitch_21a
    const-string v0, "isViewServerRunning"

    return-object v0

    .line 1128
    :pswitch_21d
    const-string/jumbo v0, "stopViewServer"

    return-object v0

    .line 1124
    :pswitch_221
    const-string/jumbo v0, "startViewServer"

    return-object v0

    nop

    :pswitch_data_226
    .packed-switch 0x1
        :pswitch_221
        :pswitch_21d
        :pswitch_21a
        :pswitch_216
        :pswitch_212
        :pswitch_20f
        :pswitch_20c
        :pswitch_208
        :pswitch_205
        :pswitch_202
        :pswitch_1ff
        :pswitch_1fb
        :pswitch_1f8
        :pswitch_1f4
        :pswitch_1f0
        :pswitch_1ed
        :pswitch_1ea
        :pswitch_1e6
        :pswitch_1e2
        :pswitch_1df
        :pswitch_1db
        :pswitch_1d7
        :pswitch_1d3
        :pswitch_1d0
        :pswitch_1cc
        :pswitch_1c8
        :pswitch_1c5
        :pswitch_1c1
        :pswitch_1be
        :pswitch_1bb
        :pswitch_1b8
        :pswitch_1b5
        :pswitch_1b2
        :pswitch_1ae
        :pswitch_1aa
        :pswitch_1a7
        :pswitch_1a4
        :pswitch_1a1
        :pswitch_19d
        :pswitch_199
        :pswitch_196
        :pswitch_192
        :pswitch_18e
        :pswitch_18a
        :pswitch_186
        :pswitch_182
        :pswitch_17f
        :pswitch_17b
        :pswitch_177
        :pswitch_174
        :pswitch_171
        :pswitch_16d
        :pswitch_16a
        :pswitch_167
        :pswitch_163
        :pswitch_160
        :pswitch_15c
        :pswitch_158
        :pswitch_154
        :pswitch_150
        :pswitch_14c
        :pswitch_148
        :pswitch_144
        :pswitch_140
        :pswitch_13c
        :pswitch_139
        :pswitch_135
        :pswitch_131
        :pswitch_12d
        :pswitch_12a
        :pswitch_127
        :pswitch_124
        :pswitch_121
        :pswitch_11e
        :pswitch_11b
        :pswitch_118
        :pswitch_115
        :pswitch_111
        :pswitch_10d
        :pswitch_109
        :pswitch_106
        :pswitch_102
        :pswitch_ff
        :pswitch_fc
        :pswitch_f9
        :pswitch_f5
        :pswitch_f1
        :pswitch_ed
        :pswitch_e9
        :pswitch_e5
        :pswitch_e1
        :pswitch_dd
        :pswitch_da
        :pswitch_d7
        :pswitch_d3
        :pswitch_d0
        :pswitch_cc
        :pswitch_c8
        :pswitch_c4
        :pswitch_c0
        :pswitch_bc
        :pswitch_b9
        :pswitch_b5
        :pswitch_b1
        :pswitch_ae
        :pswitch_aa
        :pswitch_a6
        :pswitch_a2
        :pswitch_9e
        :pswitch_9b
        :pswitch_98
        :pswitch_94
        :pswitch_90
        :pswitch_8c
        :pswitch_89
        :pswitch_86
        :pswitch_82
        :pswitch_7e
        :pswitch_7b
        :pswitch_78
        :pswitch_75
        :pswitch_72
        :pswitch_6e
        :pswitch_6a
        :pswitch_67
        :pswitch_64
        :pswitch_60
        :pswitch_5c
        :pswitch_59
        :pswitch_55
        :pswitch_51
        :pswitch_4d
        :pswitch_49
        :pswitch_45
        :pswitch_42
        :pswitch_3f
        :pswitch_3b
        :pswitch_38
        :pswitch_35
        :pswitch_32
        :pswitch_2e
        :pswitch_2a
        :pswitch_26
        :pswitch_22
        :pswitch_1f
        :pswitch_1c
        :pswitch_19
        :pswitch_15
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 1115
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 6493
    const/16 v0, 0x98

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 1743
    invoke-static {p1}, Landroid/view/IWindowManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 12
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1747
    const-string v0, "android.view.IWindowManager"

    .line 1748
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 1749
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1751
    :cond_d
    packed-switch p1, :pswitch_data_aee

    .line 1759
    packed-switch p1, :pswitch_data_af4

    .line 3246
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 1755
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1756
    return v1

    .line 3237
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3238
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3239
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->getAllWallpaperAnimationTarget(I)Ljava/util/List;

    move-result-object v3

    .line 3240
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/view/WallpaperAnimationTarget;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3241
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 3242
    goto/16 :goto_aec

    .line 3227
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/view/WallpaperAnimationTarget;>;"
    :pswitch_2f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3228
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3229
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->getWallpaperAnimationTarget(I)Landroid/view/WallpaperAnimationTarget;

    move-result-object v3

    .line 3230
    .local v3, "_result":Landroid/view/WallpaperAnimationTarget;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3231
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3232
    goto/16 :goto_aec

    .line 3217
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Landroid/view/WallpaperAnimationTarget;
    :pswitch_42
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 3218
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3219
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->isRotationLocked(Z)Z

    move-result v3

    .line 3220
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3221
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3222
    goto/16 :goto_aec

    .line 3209
    .end local v2    # "_arg0":Z
    .end local v3    # "_result":Z
    :pswitch_55
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->isDisplayFold()Z

    move-result v2

    .line 3210
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3211
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3212
    goto/16 :goto_aec

    .line 3197
    .end local v2    # "_result":Z
    :pswitch_61
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 3199
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3201
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 3202
    .local v4, "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3203
    invoke-virtual {p0, v2, v3, v4}, Landroid/view/IWindowManager$Stub;->setRotationLockForFold(ZIZ)V

    .line 3204
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3205
    goto/16 :goto_aec

    .line 3189
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Z
    :pswitch_78
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 3190
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3191
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->setScreenShareProjectBlackList(Ljava/util/List;)V

    .line 3192
    goto/16 :goto_aec

    .line 3179
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_84
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3180
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3181
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->captureSpecialLayers(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 3182
    .local v3, "_result":Landroid/graphics/Bitmap;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3183
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3184
    goto/16 :goto_aec

    .line 3171
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Landroid/graphics/Bitmap;
    :pswitch_97
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->getAppsOnWindowsStatus()Ljava/util/List;

    move-result-object v2

    .line 3172
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3173
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 3174
    goto/16 :goto_aec

    .line 3162
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_a3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3163
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3164
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->checkAppOnWindowsStatus(I)Z

    move-result v3

    .line 3165
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3166
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3167
    goto/16 :goto_aec

    .line 3152
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_b6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3153
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3154
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->updateResolutionTunerConfig(Ljava/lang/String;)Z

    move-result v3

    .line 3155
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3156
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3157
    goto/16 :goto_aec

    .line 3143
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_c9
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 3144
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3145
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->setAppResolutionTunerSupport(Z)V

    .line 3146
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3147
    goto/16 :goto_aec

    .line 3132
    .end local v2    # "_arg0":Z
    :pswitch_d8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3134
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3135
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3136
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->setScreenProjectionList(II)V

    .line 3137
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3138
    goto/16 :goto_aec

    .line 3124
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_eb
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 3125
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3126
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->setScreenProjectionBlacklist(Ljava/util/List;)V

    .line 3127
    goto/16 :goto_aec

    .line 3115
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_f7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3116
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3117
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->launchFlashBackFromBackGroundAnim(I)V

    .line 3118
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3119
    goto/16 :goto_aec

    .line 3105
    .end local v2    # "_arg0":I
    :pswitch_106
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3106
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3107
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->getMiuiFreeFormPositionY(I)I

    move-result v3

    .line 3108
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3109
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3110
    goto/16 :goto_aec

    .line 3095
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_119
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3096
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3097
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->getMiuiFreeFormPositionX(I)I

    move-result v3

    .line 3098
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3099
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3100
    goto/16 :goto_aec

    .line 3086
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_12c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindowAnimationFinishedCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowAnimationFinishedCallback;

    move-result-object v2

    .line 3087
    .local v2, "_arg0":Landroid/view/IWindowAnimationFinishedCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3088
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->registerUiModeAnimFinishedCallback(Landroid/view/IWindowAnimationFinishedCallback;)V

    .line 3089
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3090
    goto/16 :goto_aec

    .line 3078
    .end local v2    # "_arg0":Landroid/view/IWindowAnimationFinishedCallback;
    :pswitch_13f
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->getTaskStackContainersSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v2

    .line 3079
    .local v2, "_result":Landroid/view/SurfaceControl;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3080
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3081
    goto/16 :goto_aec

    .line 3071
    .end local v2    # "_result":Landroid/view/SurfaceControl;
    :pswitch_14b
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->getWallpaperAsTarget()Z

    move-result v2

    .line 3072
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3073
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3074
    goto/16 :goto_aec

    .line 3063
    .end local v2    # "_result":Z
    :pswitch_157
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 3064
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3065
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->setWallpaperAsTarget(Z)V

    .line 3066
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3067
    goto/16 :goto_aec

    .line 3054
    .end local v2    # "_arg0":Z
    :pswitch_166
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 3055
    .restart local v2    # "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3056
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->setRecentsAppBehindSystemBars(Z)V

    .line 3057
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3058
    goto/16 :goto_aec

    .line 3044
    .end local v2    # "_arg0":Z
    :pswitch_175
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3045
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3046
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->snapshotTaskForRecents(I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 3047
    .local v3, "_result":Landroid/graphics/Bitmap;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3048
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3049
    goto/16 :goto_aec

    .line 3035
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Landroid/graphics/Bitmap;
    :pswitch_188
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/window/ITaskFpsCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/window/ITaskFpsCallback;

    move-result-object v2

    .line 3036
    .local v2, "_arg0":Landroid/window/ITaskFpsCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3037
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->unregisterTaskFpsCallback(Landroid/window/ITaskFpsCallback;)V

    .line 3038
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3039
    goto/16 :goto_aec

    .line 3024
    .end local v2    # "_arg0":Landroid/window/ITaskFpsCallback;
    :pswitch_19b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3026
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/window/ITaskFpsCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/window/ITaskFpsCallback;

    move-result-object v3

    .line 3027
    .local v3, "_arg1":Landroid/window/ITaskFpsCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3028
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->registerTaskFpsCallback(ILandroid/window/ITaskFpsCallback;)V

    .line 3029
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3030
    goto/16 :goto_aec

    .line 3017
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/window/ITaskFpsCallback;
    :pswitch_1b2
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->clearTaskTransitionSpec()V

    .line 3018
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3019
    goto/16 :goto_aec

    .line 3009
    :pswitch_1ba
    sget-object v2, Landroid/view/TaskTransitionSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/TaskTransitionSpec;

    .line 3010
    .local v2, "_arg0":Landroid/view/TaskTransitionSpec;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3011
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->setTaskTransitionSpec(Landroid/view/TaskTransitionSpec;)V

    .line 3012
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3013
    goto/16 :goto_aec

    .line 3000
    .end local v2    # "_arg0":Landroid/view/TaskTransitionSpec;
    :pswitch_1cd
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 3001
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3002
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->setTaskSnapshotEnabled(Z)V

    .line 3003
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3004
    goto/16 :goto_aec

    .line 2992
    .end local v2    # "_arg0":Z
    :pswitch_1dc
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->getImeDisplayId()I

    move-result v2

    .line 2993
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2994
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2995
    goto/16 :goto_aec

    .line 2985
    .end local v2    # "_result":I
    :pswitch_1e8
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->isTaskSnapshotSupported()Z

    move-result v2

    .line 2986
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2987
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2988
    goto/16 :goto_aec

    .line 2977
    .end local v2    # "_result":Z
    :pswitch_1f4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/ICrossWindowBlurEnabledListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/ICrossWindowBlurEnabledListener;

    move-result-object v2

    .line 2978
    .local v2, "_arg0":Landroid/view/ICrossWindowBlurEnabledListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2979
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->unregisterCrossWindowBlurEnabledListener(Landroid/view/ICrossWindowBlurEnabledListener;)V

    .line 2980
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2981
    goto/16 :goto_aec

    .line 2967
    .end local v2    # "_arg0":Landroid/view/ICrossWindowBlurEnabledListener;
    :pswitch_207
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/ICrossWindowBlurEnabledListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/ICrossWindowBlurEnabledListener;

    move-result-object v2

    .line 2968
    .restart local v2    # "_arg0":Landroid/view/ICrossWindowBlurEnabledListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2969
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->registerCrossWindowBlurEnabledListener(Landroid/view/ICrossWindowBlurEnabledListener;)Z

    move-result v3

    .line 2970
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2971
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2972
    goto/16 :goto_aec

    .line 2958
    .end local v2    # "_arg0":Landroid/view/ICrossWindowBlurEnabledListener;
    .end local v3    # "_result":Z
    :pswitch_21e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 2959
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2960
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->detachWindowContextFromWindowContainer(Landroid/os/IBinder;)V

    .line 2961
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2962
    goto/16 :goto_aec

    .line 2946
    .end local v2    # "_arg0":Landroid/os/IBinder;
    :pswitch_22d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 2948
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2949
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2950
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->attachToDisplayContent(Landroid/os/IBinder;I)Landroid/content/res/Configuration;

    move-result-object v4

    .line 2951
    .local v4, "_result":Landroid/content/res/Configuration;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2952
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2953
    goto/16 :goto_aec

    .line 2935
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Landroid/content/res/Configuration;
    :pswitch_244
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 2937
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 2938
    .local v3, "_arg1":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2939
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->attachWindowContextToWindowToken(Landroid/os/IBinder;Landroid/os/IBinder;)V

    .line 2940
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2941
    goto/16 :goto_aec

    .line 2919
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":Landroid/os/IBinder;
    :pswitch_257
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 2921
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2923
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 2925
    .local v4, "_arg2":I
    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    .line 2926
    .local v5, "_arg3":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2927
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/view/IWindowManager$Stub;->attachWindowContextToDisplayArea(Landroid/os/IBinder;IILandroid/os/Bundle;)Landroid/content/res/Configuration;

    move-result-object v6

    .line 2928
    .local v6, "_result":Landroid/content/res/Configuration;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2929
    invoke-virtual {p3, v6, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2930
    goto/16 :goto_aec

    .line 2910
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":Landroid/os/Bundle;
    .end local v6    # "_result":Landroid/content/res/Configuration;
    :pswitch_27a
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 2911
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2912
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->setDisplayHashThrottlingEnabled(Z)V

    .line 2913
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2914
    goto/16 :goto_aec

    .line 2900
    .end local v2    # "_arg0":Z
    :pswitch_289
    sget-object v2, Landroid/view/displayhash/DisplayHash;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/displayhash/DisplayHash;

    .line 2901
    .local v2, "_arg0":Landroid/view/displayhash/DisplayHash;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2902
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->verifyDisplayHash(Landroid/view/displayhash/DisplayHash;)Landroid/view/displayhash/VerifiedDisplayHash;

    move-result-object v3

    .line 2903
    .local v3, "_result":Landroid/view/displayhash/VerifiedDisplayHash;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2904
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2905
    goto/16 :goto_aec

    .line 2892
    .end local v2    # "_arg0":Landroid/view/displayhash/DisplayHash;
    .end local v3    # "_result":Landroid/view/displayhash/VerifiedDisplayHash;
    :pswitch_2a0
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->getSupportedDisplayHashAlgorithms()[Ljava/lang/String;

    move-result-object v2

    .line 2893
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2894
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 2895
    goto/16 :goto_aec

    .line 2882
    .end local v2    # "_result":[Ljava/lang/String;
    :pswitch_2ac
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 2884
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2885
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2886
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->holdLock(Landroid/os/IBinder;I)V

    .line 2887
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2888
    goto/16 :goto_aec

    .line 2867
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":I
    :pswitch_2bf
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2869
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 2871
    .local v3, "_arg1":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 2873
    .restart local v4    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/view/IScrollCaptureResponseListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IScrollCaptureResponseListener;

    move-result-object v5

    .line 2874
    .local v5, "_arg3":Landroid/view/IScrollCaptureResponseListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2875
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/view/IWindowManager$Stub;->requestScrollCapture(ILandroid/os/IBinder;ILandroid/view/IScrollCaptureResponseListener;)V

    .line 2876
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2877
    goto/16 :goto_aec

    .line 2858
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/os/IBinder;
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":Landroid/view/IScrollCaptureResponseListener;
    :pswitch_2de
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2859
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2860
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->setLayerTracingFlags(I)V

    .line 2861
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2862
    goto/16 :goto_aec

    .line 2851
    .end local v2    # "_arg0":I
    :pswitch_2ed
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->showGlobalActions()V

    .line 2852
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2853
    goto/16 :goto_aec

    .line 2840
    :pswitch_2f5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2842
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 2843
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2844
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->getPossibleDisplayInfo(ILjava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 2845
    .local v4, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/view/DisplayInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2846
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 2847
    goto/16 :goto_aec

    .line 2825
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/view/DisplayInfo;>;"
    :pswitch_30c
    sget-object v2, Landroid/view/WindowManager$LayoutParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager$LayoutParams;

    .line 2827
    .local v2, "_arg0":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2829
    .local v3, "_arg1":I
    new-instance v4, Landroid/view/InsetsState;

    invoke-direct {v4}, Landroid/view/InsetsState;-><init>()V

    .line 2830
    .local v4, "_arg2":Landroid/view/InsetsState;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2831
    invoke-virtual {p0, v2, v3, v4}, Landroid/view/IWindowManager$Stub;->getWindowInsets(Landroid/view/WindowManager$LayoutParams;ILandroid/view/InsetsState;)Z

    move-result v5

    .line 2832
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2833
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2834
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2835
    goto/16 :goto_aec

    .line 2814
    .end local v2    # "_arg0":Landroid/view/WindowManager$LayoutParams;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Landroid/view/InsetsState;
    .end local v5    # "_result":Z
    :pswitch_32f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2816
    .local v2, "_arg0":I
    sget-object v3, Landroid/view/InsetsVisibilities;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/InsetsVisibilities;

    .line 2817
    .local v3, "_arg1":Landroid/view/InsetsVisibilities;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2818
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->updateDisplayWindowRequestedVisibilities(ILandroid/view/InsetsVisibilities;)V

    .line 2819
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2820
    goto/16 :goto_aec

    .line 2803
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/view/InsetsVisibilities;
    :pswitch_346
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2805
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/view/IDisplayWindowInsetsController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IDisplayWindowInsetsController;

    move-result-object v3

    .line 2806
    .local v3, "_arg1":Landroid/view/IDisplayWindowInsetsController;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2807
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->setDisplayWindowInsetsController(ILandroid/view/IDisplayWindowInsetsController;)V

    .line 2808
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2809
    goto/16 :goto_aec

    .line 2790
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/view/IDisplayWindowInsetsController;
    :pswitch_35d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2792
    .restart local v2    # "_arg0":I
    new-instance v3, Landroid/view/SurfaceControl;

    invoke-direct {v3}, Landroid/view/SurfaceControl;-><init>()V

    .line 2793
    .local v3, "_arg1":Landroid/view/SurfaceControl;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2794
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->mirrorDisplay(ILandroid/view/SurfaceControl;)Z

    move-result v4

    .line 2795
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2796
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2797
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2798
    goto/16 :goto_aec

    .line 2781
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/view/SurfaceControl;
    .end local v4    # "_result":Z
    :pswitch_378
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 2782
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2783
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->setLayerTracing(Z)V

    .line 2784
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2785
    goto/16 :goto_aec

    .line 2773
    .end local v2    # "_arg0":Z
    :pswitch_387
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->isLayerTracing()Z

    move-result v2

    .line 2774
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2775
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2776
    goto/16 :goto_aec

    .line 2765
    .end local v2    # "_result":Z
    :pswitch_393
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 2766
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2767
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->syncInputTransactions(Z)V

    .line 2768
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2769
    goto/16 :goto_aec

    .line 2754
    .end local v2    # "_arg0":Z
    :pswitch_3a2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2756
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2757
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2758
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->setDisplayImePolicy(II)V

    .line 2759
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2760
    goto/16 :goto_aec

    .line 2744
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_3b5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2745
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2746
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->getDisplayImePolicy(I)I

    move-result v3

    .line 2747
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2748
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2749
    goto/16 :goto_aec

    .line 2733
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_3c8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2735
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 2736
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2737
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->setShouldShowSystemDecors(IZ)V

    .line 2738
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2739
    goto/16 :goto_aec

    .line 2723
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    :pswitch_3db
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2724
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2725
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->shouldShowSystemDecors(I)Z

    move-result v3

    .line 2726
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2727
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2728
    goto/16 :goto_aec

    .line 2712
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_3ee
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2714
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 2715
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2716
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->setShouldShowWithInsecureKeyguard(IZ)V

    .line 2717
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2718
    goto/16 :goto_aec

    .line 2702
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    :pswitch_401
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2703
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2704
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->shouldShowWithInsecureKeyguard(I)Z

    move-result v3

    .line 2705
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2706
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2707
    goto/16 :goto_aec

    .line 2691
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_414
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2693
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2694
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2695
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->setRemoveContentMode(II)V

    .line 2696
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2697
    goto/16 :goto_aec

    .line 2681
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_427
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2682
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2683
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->getRemoveContentMode(I)I

    move-result v3

    .line 2684
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2685
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2686
    goto/16 :goto_aec

    .line 2670
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_43a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2672
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2673
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2674
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->setWindowingMode(II)V

    .line 2675
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2676
    goto/16 :goto_aec

    .line 2660
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_44d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2661
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2662
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->getWindowingMode(I)I

    move-result v3

    .line 2663
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2664
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2665
    goto/16 :goto_aec

    .line 2652
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_460
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->isWindowTraceEnabled()Z

    move-result v2

    .line 2653
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2654
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2655
    goto/16 :goto_aec

    .line 2646
    .end local v2    # "_result":Z
    :pswitch_46c
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->saveWindowTraceToFile()V

    .line 2647
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2648
    goto/16 :goto_aec

    .line 2640
    :pswitch_474
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->stopWindowTrace()V

    .line 2641
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2642
    goto/16 :goto_aec

    .line 2634
    :pswitch_47c
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->startWindowTrace()V

    .line 2635
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2636
    goto/16 :goto_aec

    .line 2626
    :pswitch_484
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IDisplayWindowListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IDisplayWindowListener;

    move-result-object v2

    .line 2627
    .local v2, "_arg0":Landroid/view/IDisplayWindowListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2628
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->unregisterDisplayWindowListener(Landroid/view/IDisplayWindowListener;)V

    .line 2629
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2630
    goto/16 :goto_aec

    .line 2616
    .end local v2    # "_arg0":Landroid/view/IDisplayWindowListener;
    :pswitch_497
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IDisplayWindowListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IDisplayWindowListener;

    move-result-object v2

    .line 2617
    .restart local v2    # "_arg0":Landroid/view/IDisplayWindowListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2618
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->registerDisplayWindowListener(Landroid/view/IDisplayWindowListener;)[I

    move-result-object v3

    .line 2619
    .local v3, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2620
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 2621
    goto/16 :goto_aec

    .line 2607
    .end local v2    # "_arg0":Landroid/view/IDisplayWindowListener;
    .end local v3    # "_result":[I
    :pswitch_4ae
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IDisplayFoldListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IDisplayFoldListener;

    move-result-object v2

    .line 2608
    .local v2, "_arg0":Landroid/view/IDisplayFoldListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2609
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->unregisterDisplayFoldListener(Landroid/view/IDisplayFoldListener;)V

    .line 2610
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2611
    goto/16 :goto_aec

    .line 2598
    .end local v2    # "_arg0":Landroid/view/IDisplayFoldListener;
    :pswitch_4c1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IDisplayFoldListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IDisplayFoldListener;

    move-result-object v2

    .line 2599
    .restart local v2    # "_arg0":Landroid/view/IDisplayFoldListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2600
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->registerDisplayFoldListener(Landroid/view/IDisplayFoldListener;)V

    .line 2601
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2602
    goto/16 :goto_aec

    .line 2590
    .end local v2    # "_arg0":Landroid/view/IDisplayFoldListener;
    :pswitch_4d4
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->getCurrentImeTouchRegion()Landroid/graphics/Region;

    move-result-object v2

    .line 2591
    .local v2, "_result":Landroid/graphics/Region;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2592
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2593
    goto/16 :goto_aec

    .line 2579
    .end local v2    # "_result":Landroid/graphics/Region;
    :pswitch_4e0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2581
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2582
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2583
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->destroyInputConsumer(Ljava/lang/String;I)Z

    move-result v4

    .line 2584
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2585
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2586
    goto/16 :goto_aec

    .line 2563
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_4f7
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 2565
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 2567
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 2569
    .local v4, "_arg2":I
    new-instance v5, Landroid/view/InputChannel;

    invoke-direct {v5}, Landroid/view/InputChannel;-><init>()V

    .line 2570
    .local v5, "_arg3":Landroid/view/InputChannel;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2571
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/view/IWindowManager$Stub;->createInputConsumer(Landroid/os/IBinder;Ljava/lang/String;ILandroid/view/InputChannel;)V

    .line 2572
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2573
    invoke-virtual {p3, v5, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2574
    goto/16 :goto_aec

    .line 2552
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":Landroid/view/InputChannel;
    :pswitch_516
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 2554
    .local v2, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/policy/IShortcutService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/IShortcutService;

    move-result-object v4

    .line 2555
    .local v4, "_arg1":Lcom/android/internal/policy/IShortcutService;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2556
    invoke-virtual {p0, v2, v3, v4}, Landroid/view/IWindowManager$Stub;->registerShortcutKey(JLcom/android/internal/policy/IShortcutService;)V

    .line 2557
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2558
    goto/16 :goto_aec

    .line 2540
    .end local v2    # "_arg0":J
    .end local v4    # "_arg1":Lcom/android/internal/policy/IShortcutService;
    :pswitch_52d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2542
    .local v2, "_arg0":I
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 2543
    .local v3, "_arg1":Landroid/graphics/Rect;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2544
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->getStableInsets(ILandroid/graphics/Rect;)V

    .line 2545
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2546
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2547
    goto/16 :goto_aec

    .line 2529
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/graphics/Rect;
    :pswitch_544
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/os/IResultReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/os/IResultReceiver;

    move-result-object v2

    .line 2531
    .local v2, "_arg0":Lcom/android/internal/os/IResultReceiver;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2532
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2533
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->requestAppKeyboardShortcuts(Lcom/android/internal/os/IResultReceiver;I)V

    .line 2534
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2535
    goto/16 :goto_aec

    .line 2518
    .end local v2    # "_arg0":Lcom/android/internal/os/IResultReceiver;
    .end local v3    # "_arg1":I
    :pswitch_55b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2520
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/view/IPinnedTaskListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IPinnedTaskListener;

    move-result-object v3

    .line 2521
    .local v3, "_arg1":Landroid/view/IPinnedTaskListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2522
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->registerPinnedTaskListener(ILandroid/view/IPinnedTaskListener;)V

    .line 2523
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2524
    goto/16 :goto_aec

    .line 2509
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/view/IPinnedTaskListener;
    :pswitch_572
    sget-object v2, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 2510
    .local v2, "_arg0":Landroid/graphics/Rect;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2511
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->setDockedTaskDividerTouchRegion(Landroid/graphics/Rect;)V

    .line 2512
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2513
    goto/16 :goto_aec

    .line 2501
    .end local v2    # "_arg0":Landroid/graphics/Rect;
    :pswitch_585
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->getDockedStackSide()I

    move-result v2

    .line 2502
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2503
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2504
    goto/16 :goto_aec

    .line 2492
    .end local v2    # "_result":I
    :pswitch_591
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 2493
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2494
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->getWindowContentFrameStats(Landroid/os/IBinder;)Landroid/view/WindowContentFrameStats;

    move-result-object v3

    .line 2495
    .local v3, "_result":Landroid/view/WindowContentFrameStats;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2496
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2497
    goto/16 :goto_aec

    .line 2482
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_result":Landroid/view/WindowContentFrameStats;
    :pswitch_5a4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 2483
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2484
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->clearWindowContentFrameStats(Landroid/os/IBinder;)Z

    move-result v3

    .line 2485
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2486
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2487
    goto/16 :goto_aec

    .line 2475
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_result":Z
    :pswitch_5b7
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->enableScreenIfNeeded()V

    .line 2476
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2477
    goto/16 :goto_aec

    .line 2468
    :pswitch_5bf
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->isSafeModeEnabled()Z

    move-result v2

    .line 2469
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2470
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2471
    goto/16 :goto_aec

    .line 2460
    .end local v2    # "_result":Z
    :pswitch_5cb
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 2461
    .local v2, "_arg0":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2462
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->lockNow(Landroid/os/Bundle;)V

    .line 2463
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2464
    goto/16 :goto_aec

    .line 2450
    .end local v2    # "_arg0":Landroid/os/Bundle;
    :pswitch_5de
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2451
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2452
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->getNavBarPosition(I)I

    move-result v3

    .line 2453
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2454
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2455
    goto/16 :goto_aec

    .line 2440
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_5f1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2441
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2442
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->hasNavigationBar(I)Z

    move-result v3

    .line 2443
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2444
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2445
    goto/16 :goto_aec

    .line 2431
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_604
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 2432
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2433
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->setNavBarVirtualKeyHapticFeedbackEnabled(Z)V

    .line 2434
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2435
    goto/16 :goto_aec

    .line 2421
    .end local v2    # "_arg0":Z
    :pswitch_613
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2423
    .local v2, "_arg0":I
    sget-object v3, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/graphics/Rect;

    .line 2424
    .local v3, "_arg1":[Landroid/graphics/Rect;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2425
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->updateStaticPrivacyIndicatorBounds(I[Landroid/graphics/Rect;)V

    .line 2426
    goto/16 :goto_aec

    .line 2413
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":[Landroid/graphics/Rect;
    :pswitch_627
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 2414
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2415
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->setRecentsVisibility(Z)V

    .line 2416
    goto/16 :goto_aec

    .line 2405
    .end local v2    # "_arg0":Z
    :pswitch_633
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2406
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2407
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->hideTransientBars(I)V

    .line 2408
    goto/16 :goto_aec

    .line 2395
    .end local v2    # "_arg0":I
    :pswitch_63f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/IAssistDataReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IAssistDataReceiver;

    move-result-object v2

    .line 2396
    .local v2, "_arg0":Landroid/app/IAssistDataReceiver;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2397
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->requestAssistScreenshot(Landroid/app/IAssistDataReceiver;)Z

    move-result v3

    .line 2398
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2399
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2400
    goto/16 :goto_aec

    .line 2384
    .end local v2    # "_arg0":Landroid/app/IAssistDataReceiver;
    .end local v3    # "_result":Z
    :pswitch_656
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/ISystemGestureExclusionListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/ISystemGestureExclusionListener;

    move-result-object v2

    .line 2386
    .local v2, "_arg0":Landroid/view/ISystemGestureExclusionListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2387
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2388
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->unregisterSystemGestureExclusionListener(Landroid/view/ISystemGestureExclusionListener;I)V

    .line 2389
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2390
    goto/16 :goto_aec

    .line 2373
    .end local v2    # "_arg0":Landroid/view/ISystemGestureExclusionListener;
    .end local v3    # "_arg1":I
    :pswitch_66d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/ISystemGestureExclusionListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/ISystemGestureExclusionListener;

    move-result-object v2

    .line 2375
    .restart local v2    # "_arg0":Landroid/view/ISystemGestureExclusionListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2376
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2377
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->registerSystemGestureExclusionListener(Landroid/view/ISystemGestureExclusionListener;I)V

    .line 2378
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2379
    goto/16 :goto_aec

    .line 2362
    .end local v2    # "_arg0":Landroid/view/ISystemGestureExclusionListener;
    .end local v3    # "_arg1":I
    :pswitch_684
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWallpaperVisibilityListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWallpaperVisibilityListener;

    move-result-object v2

    .line 2364
    .local v2, "_arg0":Landroid/view/IWallpaperVisibilityListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2365
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2366
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->unregisterWallpaperVisibilityListener(Landroid/view/IWallpaperVisibilityListener;I)V

    .line 2367
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2368
    goto/16 :goto_aec

    .line 2350
    .end local v2    # "_arg0":Landroid/view/IWallpaperVisibilityListener;
    .end local v3    # "_arg1":I
    :pswitch_69b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWallpaperVisibilityListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWallpaperVisibilityListener;

    move-result-object v2

    .line 2352
    .restart local v2    # "_arg0":Landroid/view/IWallpaperVisibilityListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2353
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2354
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->registerWallpaperVisibilityListener(Landroid/view/IWallpaperVisibilityListener;I)Z

    move-result v4

    .line 2355
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2356
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2357
    goto/16 :goto_aec

    .line 2340
    .end local v2    # "_arg0":Landroid/view/IWallpaperVisibilityListener;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_6b6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2341
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2342
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->mirrorWallpaperSurface(I)Landroid/view/SurfaceControl;

    move-result-object v3

    .line 2343
    .local v3, "_result":Landroid/view/SurfaceControl;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2344
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2345
    goto/16 :goto_aec

    .line 2332
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Landroid/view/SurfaceControl;
    :pswitch_6c9
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->screenshotWallpaper()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 2333
    .local v2, "_result":Landroid/graphics/Bitmap;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2334
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2335
    goto/16 :goto_aec

    .line 2322
    .end local v2    # "_result":Landroid/graphics/Bitmap;
    :pswitch_6d5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2324
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 2325
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2326
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->setIgnoreOrientationRequest(IZ)V

    .line 2327
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2328
    goto/16 :goto_aec

    .line 2311
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    :pswitch_6e8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2313
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2314
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2315
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->setFixedToUserRotation(II)V

    .line 2316
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2317
    goto/16 :goto_aec

    .line 2301
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_6fb
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2302
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2303
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->isDisplayRotationFrozen(I)Z

    move-result v3

    .line 2304
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2305
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2306
    goto/16 :goto_aec

    .line 2292
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_70e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2293
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2294
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->thawDisplayRotation(I)V

    .line 2295
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2296
    goto/16 :goto_aec

    .line 2281
    .end local v2    # "_arg0":I
    :pswitch_71d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2283
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2284
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2285
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->freezeDisplayRotation(II)V

    .line 2286
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2287
    goto/16 :goto_aec

    .line 2273
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_730
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->isRotationFrozen()Z

    move-result v2

    .line 2274
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2275
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2276
    goto/16 :goto_aec

    .line 2267
    .end local v2    # "_result":Z
    :pswitch_73c
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->thawRotation()V

    .line 2268
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2269
    goto/16 :goto_aec

    .line 2259
    :pswitch_744
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2260
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2261
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->freezeRotation(I)V

    .line 2262
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2263
    goto/16 :goto_aec

    .line 2249
    .end local v2    # "_arg0":I
    :pswitch_753
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2250
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2251
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->getPreferredOptionsPanelGravity(I)I

    move-result v3

    .line 2252
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2253
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2254
    goto/16 :goto_aec

    .line 2240
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_766
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IRotationWatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IRotationWatcher;

    move-result-object v2

    .line 2241
    .local v2, "_arg0":Landroid/view/IRotationWatcher;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2242
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->removeRotationWatcher(Landroid/view/IRotationWatcher;)V

    .line 2243
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2244
    goto/16 :goto_aec

    .line 2228
    .end local v2    # "_arg0":Landroid/view/IRotationWatcher;
    :pswitch_779
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IRotationWatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IRotationWatcher;

    move-result-object v2

    .line 2230
    .restart local v2    # "_arg0":Landroid/view/IRotationWatcher;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2231
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2232
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->watchRotation(Landroid/view/IRotationWatcher;I)I

    move-result v4

    .line 2233
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2234
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2235
    goto/16 :goto_aec

    .line 2220
    .end local v2    # "_arg0":Landroid/view/IRotationWatcher;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":I
    :pswitch_794
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->getDefaultDisplayRotation()I

    move-result v2

    .line 2221
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2222
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2223
    goto/16 :goto_aec

    .line 2210
    .end local v2    # "_result":I
    :pswitch_7a0
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 2212
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 2213
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2214
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->updateRotation(ZZ)V

    .line 2215
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2216
    goto/16 :goto_aec

    .line 2203
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":Z
    :pswitch_7b3
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->refreshScreenCaptureDisabled()V

    .line 2204
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2205
    goto/16 :goto_aec

    .line 2195
    :pswitch_7bb
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2196
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2197
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->setStrictModeVisualIndicatorPreference(Ljava/lang/String;)V

    .line 2198
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2199
    goto/16 :goto_aec

    .line 2186
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_7ca
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 2187
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2188
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->showStrictModeViolation(Z)V

    .line 2189
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2190
    goto/16 :goto_aec

    .line 2177
    .end local v2    # "_arg0":Z
    :pswitch_7d9
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 2178
    .restart local v2    # "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2179
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->setInTouchMode(Z)V

    .line 2180
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2181
    goto/16 :goto_aec

    .line 2169
    .end local v2    # "_arg0":Z
    :pswitch_7e8
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->getCurrentAnimatorScale()F

    move-result v2

    .line 2170
    .local v2, "_result":F
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2171
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 2172
    goto/16 :goto_aec

    .line 2161
    .end local v2    # "_result":F
    :pswitch_7f4
    invoke-virtual {p2}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v2

    .line 2162
    .local v2, "_arg0":[F
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2163
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->setAnimationScales([F)V

    .line 2164
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2165
    goto/16 :goto_aec

    .line 2150
    .end local v2    # "_arg0":[F
    :pswitch_803
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2152
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    .line 2153
    .local v3, "_arg1":F
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2154
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->setAnimationScale(IF)V

    .line 2155
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2156
    goto/16 :goto_aec

    .line 2142
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":F
    :pswitch_816
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->getAnimationScales()[F

    move-result-object v2

    .line 2143
    .local v2, "_result":[F
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2144
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 2145
    goto/16 :goto_aec

    .line 2133
    .end local v2    # "_result":[F
    :pswitch_822
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2134
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2135
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->getAnimationScale(I)F

    move-result v3

    .line 2136
    .local v3, "_result":F
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2137
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeFloat(F)V

    .line 2138
    goto/16 :goto_aec

    .line 2124
    .end local v2    # "_arg0":I
    .end local v3    # "_result":F
    :pswitch_835
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2125
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2126
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->closeSystemDialogs(Ljava/lang/String;)V

    .line 2127
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2128
    goto/16 :goto_aec

    .line 2115
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_844
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 2116
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2117
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->setSwitchingUser(Z)V

    .line 2118
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2119
    goto/16 :goto_aec

    .line 2106
    .end local v2    # "_arg0":Z
    :pswitch_853
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/policy/IKeyguardLockedStateListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/IKeyguardLockedStateListener;

    move-result-object v2

    .line 2107
    .local v2, "_arg0":Lcom/android/internal/policy/IKeyguardLockedStateListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2108
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->removeKeyguardLockedStateListener(Lcom/android/internal/policy/IKeyguardLockedStateListener;)V

    .line 2109
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2110
    goto/16 :goto_aec

    .line 2097
    .end local v2    # "_arg0":Lcom/android/internal/policy/IKeyguardLockedStateListener;
    :pswitch_866
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/policy/IKeyguardLockedStateListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/IKeyguardLockedStateListener;

    move-result-object v2

    .line 2098
    .restart local v2    # "_arg0":Lcom/android/internal/policy/IKeyguardLockedStateListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2099
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->addKeyguardLockedStateListener(Lcom/android/internal/policy/IKeyguardLockedStateListener;)V

    .line 2100
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2101
    goto/16 :goto_aec

    .line 2086
    .end local v2    # "_arg0":Lcom/android/internal/policy/IKeyguardLockedStateListener;
    :pswitch_879
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/policy/IKeyguardDismissCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/IKeyguardDismissCallback;

    move-result-object v2

    .line 2088
    .local v2, "_arg0":Lcom/android/internal/policy/IKeyguardDismissCallback;
    sget-object v3, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    .line 2089
    .local v3, "_arg1":Ljava/lang/CharSequence;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2090
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->dismissKeyguard(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V

    .line 2091
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2092
    goto/16 :goto_aec

    .line 2076
    .end local v2    # "_arg0":Lcom/android/internal/policy/IKeyguardDismissCallback;
    .end local v3    # "_arg1":Ljava/lang/CharSequence;
    :pswitch_894
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2077
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2078
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->isKeyguardSecure(I)Z

    move-result v3

    .line 2079
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2080
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2081
    goto/16 :goto_aec

    .line 2068
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_8a7
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->isKeyguardLocked()Z

    move-result v2

    .line 2069
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2070
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2071
    goto/16 :goto_aec

    .line 2060
    .end local v2    # "_result":Z
    :pswitch_8b3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IOnKeyguardExitResult$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IOnKeyguardExitResult;

    move-result-object v2

    .line 2061
    .local v2, "_arg0":Landroid/view/IOnKeyguardExitResult;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2062
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->exitKeyguardSecurely(Landroid/view/IOnKeyguardExitResult;)V

    .line 2063
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2064
    goto/16 :goto_aec

    .line 2049
    .end local v2    # "_arg0":Landroid/view/IOnKeyguardExitResult;
    :pswitch_8c6
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 2051
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2052
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2053
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->reenableKeyguard(Landroid/os/IBinder;I)V

    .line 2054
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2055
    goto/16 :goto_aec

    .line 2036
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":I
    :pswitch_8d9
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 2038
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 2040
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 2041
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2042
    invoke-virtual {p0, v2, v3, v4}, Landroid/view/IWindowManager$Stub;->disableKeyguard(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 2043
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2044
    goto/16 :goto_aec

    .line 2029
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":I
    :pswitch_8f0
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->stopFreezingScreen()V

    .line 2030
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2031
    goto/16 :goto_aec

    .line 2019
    :pswitch_8f8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2021
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2022
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2023
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->startFreezingScreen(II)V

    .line 2024
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2025
    goto/16 :goto_aec

    .line 2012
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_90b
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->endProlongedAnimations()V

    .line 2013
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2014
    goto/16 :goto_aec

    .line 2002
    :pswitch_913
    sget-object v2, Landroid/view/RemoteAnimationAdapter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/RemoteAnimationAdapter;

    .line 2004
    .local v2, "_arg0":Landroid/view/RemoteAnimationAdapter;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2005
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2006
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->overridePendingAppTransitionRemote(Landroid/view/RemoteAnimationAdapter;I)V

    .line 2007
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2008
    goto/16 :goto_aec

    .line 1987
    .end local v2    # "_arg0":Landroid/view/RemoteAnimationAdapter;
    .end local v3    # "_arg1":I
    :pswitch_92a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IAppTransitionAnimationSpecsFuture$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IAppTransitionAnimationSpecsFuture;

    move-result-object v2

    .line 1989
    .local v2, "_arg0":Landroid/view/IAppTransitionAnimationSpecsFuture;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;

    move-result-object v3

    .line 1991
    .local v3, "_arg1":Landroid/os/IRemoteCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 1993
    .local v4, "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1994
    .local v5, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1995
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/view/IWindowManager$Stub;->overridePendingAppTransitionMultiThumbFuture(Landroid/view/IAppTransitionAnimationSpecsFuture;Landroid/os/IRemoteCallback;ZI)V

    .line 1996
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1997
    goto/16 :goto_aec

    .line 1974
    .end local v2    # "_arg0":Landroid/view/IAppTransitionAnimationSpecsFuture;
    .end local v3    # "_arg1":Landroid/os/IRemoteCallback;
    .end local v4    # "_arg2":Z
    .end local v5    # "_arg3":I
    :pswitch_94d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1976
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1978
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v4

    .line 1979
    .local v4, "_arg2":Landroid/view/IWindow;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1980
    invoke-virtual {p0, v2, v3, v4}, Landroid/view/IWindowManager$Stub;->setShellRootAccessibilityWindow(IILandroid/view/IWindow;)V

    .line 1981
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1982
    goto/16 :goto_aec

    .line 1960
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Landroid/view/IWindow;
    :pswitch_968
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1962
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v3

    .line 1964
    .local v3, "_arg1":Landroid/view/IWindow;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1965
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1966
    invoke-virtual {p0, v2, v3, v4}, Landroid/view/IWindowManager$Stub;->addShellRoot(ILandroid/view/IWindow;I)Landroid/view/SurfaceControl;

    move-result-object v5

    .line 1967
    .local v5, "_result":Landroid/view/SurfaceControl;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1968
    invoke-virtual {p3, v5, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1969
    goto/16 :goto_aec

    .line 1951
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/view/IWindow;
    .end local v4    # "_arg2":I
    .end local v5    # "_result":Landroid/view/SurfaceControl;
    :pswitch_987
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IDisplayWindowRotationController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IDisplayWindowRotationController;

    move-result-object v2

    .line 1952
    .local v2, "_arg0":Landroid/view/IDisplayWindowRotationController;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1953
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->setDisplayWindowRotationController(Landroid/view/IDisplayWindowRotationController;)V

    .line 1954
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1955
    goto/16 :goto_aec

    .line 1940
    .end local v2    # "_arg0":Landroid/view/IDisplayWindowRotationController;
    :pswitch_99a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 1942
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1943
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1944
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->removeWindowToken(Landroid/os/IBinder;I)V

    .line 1945
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1946
    goto/16 :goto_aec

    .line 1925
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":I
    :pswitch_9ad
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 1927
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1929
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1931
    .restart local v4    # "_arg2":I
    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    .line 1932
    .local v5, "_arg3":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1933
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/view/IWindowManager$Stub;->addWindowToken(Landroid/os/IBinder;IILandroid/os/Bundle;)V

    .line 1934
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1935
    goto/16 :goto_aec

    .line 1915
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":Landroid/os/Bundle;
    :pswitch_9cc
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 1916
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1917
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->isWindowToken(Landroid/os/IBinder;)Z

    move-result v3

    .line 1918
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1919
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1920
    goto/16 :goto_aec

    .line 1906
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_result":Z
    :pswitch_9df
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1907
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1908
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->setEventDispatching(Z)V

    .line 1909
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1910
    goto/16 :goto_aec

    .line 1895
    .end local v2    # "_arg0":Z
    :pswitch_9ee
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1897
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1898
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1899
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->setForcedDisplayScalingMode(II)V

    .line 1900
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1901
    goto/16 :goto_aec

    .line 1884
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_a01
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1886
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1887
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1888
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->clearForcedDisplayDensityForUser(II)V

    .line 1889
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1890
    goto/16 :goto_aec

    .line 1871
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_a14
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1873
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1875
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1876
    .restart local v4    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1877
    invoke-virtual {p0, v2, v3, v4}, Landroid/view/IWindowManager$Stub;->setForcedDisplayDensityForUser(III)V

    .line 1878
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1879
    goto/16 :goto_aec

    .line 1861
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    :pswitch_a2b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1862
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1863
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->getBaseDisplayDensity(I)I

    move-result v3

    .line 1864
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1865
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1866
    goto/16 :goto_aec

    .line 1851
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_a3e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1852
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1853
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->getInitialDisplayDensity(I)I

    move-result v3

    .line 1854
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1855
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1856
    goto/16 :goto_aec

    .line 1842
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_a51
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1843
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1844
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->clearForcedDisplaySize(I)V

    .line 1845
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1846
    goto/16 :goto_aec

    .line 1829
    .end local v2    # "_arg0":I
    :pswitch_a60
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1831
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1833
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1834
    .restart local v4    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1835
    invoke-virtual {p0, v2, v3, v4}, Landroid/view/IWindowManager$Stub;->setForcedDisplaySize(III)V

    .line 1836
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1837
    goto/16 :goto_aec

    .line 1817
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    :pswitch_a77
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1819
    .restart local v2    # "_arg0":I
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 1820
    .local v3, "_arg1":Landroid/graphics/Point;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1821
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->getBaseDisplaySize(ILandroid/graphics/Point;)V

    .line 1822
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1823
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1824
    goto :goto_aec

    .line 1805
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/graphics/Point;
    :pswitch_a8d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1807
    .restart local v2    # "_arg0":I
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 1808
    .restart local v3    # "_arg1":Landroid/graphics/Point;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1809
    invoke-virtual {p0, v2, v3}, Landroid/view/IWindowManager$Stub;->getInitialDisplaySize(ILandroid/graphics/Point;)V

    .line 1810
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1811
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1812
    goto :goto_aec

    .line 1797
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/graphics/Point;
    :pswitch_aa3
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->useBLAST()Z

    move-result v2

    .line 1798
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1799
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1800
    goto :goto_aec

    .line 1788
    .end local v2    # "_result":Z
    :pswitch_aae
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindowSessionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowSessionCallback;

    move-result-object v2

    .line 1789
    .local v2, "_arg0":Landroid/view/IWindowSessionCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1790
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->openSession(Landroid/view/IWindowSessionCallback;)Landroid/view/IWindowSession;

    move-result-object v3

    .line 1791
    .local v3, "_result":Landroid/view/IWindowSession;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1792
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 1793
    goto :goto_aec

    .line 1780
    .end local v2    # "_arg0":Landroid/view/IWindowSessionCallback;
    .end local v3    # "_result":Landroid/view/IWindowSession;
    :pswitch_ac4
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->isViewServerRunning()Z

    move-result v2

    .line 1781
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1782
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1783
    goto :goto_aec

    .line 1773
    .end local v2    # "_result":Z
    :pswitch_acf
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->stopViewServer()Z

    move-result v2

    .line 1774
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1775
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1776
    goto :goto_aec

    .line 1764
    .end local v2    # "_result":Z
    :pswitch_ada
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1765
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1766
    invoke-virtual {p0, v2}, Landroid/view/IWindowManager$Stub;->startViewServer(I)Z

    move-result v3

    .line 1767
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1768
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1769
    nop

    .line 3249
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :goto_aec
    return v1

    nop

    :pswitch_data_aee
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_af4
    .packed-switch 0x1
        :pswitch_ada
        :pswitch_acf
        :pswitch_ac4
        :pswitch_aae
        :pswitch_aa3
        :pswitch_a8d
        :pswitch_a77
        :pswitch_a60
        :pswitch_a51
        :pswitch_a3e
        :pswitch_a2b
        :pswitch_a14
        :pswitch_a01
        :pswitch_9ee
        :pswitch_9df
        :pswitch_9cc
        :pswitch_9ad
        :pswitch_99a
        :pswitch_987
        :pswitch_968
        :pswitch_94d
        :pswitch_92a
        :pswitch_913
        :pswitch_90b
        :pswitch_8f8
        :pswitch_8f0
        :pswitch_8d9
        :pswitch_8c6
        :pswitch_8b3
        :pswitch_8a7
        :pswitch_894
        :pswitch_879
        :pswitch_866
        :pswitch_853
        :pswitch_844
        :pswitch_835
        :pswitch_822
        :pswitch_816
        :pswitch_803
        :pswitch_7f4
        :pswitch_7e8
        :pswitch_7d9
        :pswitch_7ca
        :pswitch_7bb
        :pswitch_7b3
        :pswitch_7a0
        :pswitch_794
        :pswitch_779
        :pswitch_766
        :pswitch_753
        :pswitch_744
        :pswitch_73c
        :pswitch_730
        :pswitch_71d
        :pswitch_70e
        :pswitch_6fb
        :pswitch_6e8
        :pswitch_6d5
        :pswitch_6c9
        :pswitch_6b6
        :pswitch_69b
        :pswitch_684
        :pswitch_66d
        :pswitch_656
        :pswitch_63f
        :pswitch_633
        :pswitch_627
        :pswitch_613
        :pswitch_604
        :pswitch_5f1
        :pswitch_5de
        :pswitch_5cb
        :pswitch_5bf
        :pswitch_5b7
        :pswitch_5a4
        :pswitch_591
        :pswitch_585
        :pswitch_572
        :pswitch_55b
        :pswitch_544
        :pswitch_52d
        :pswitch_516
        :pswitch_4f7
        :pswitch_4e0
        :pswitch_4d4
        :pswitch_4c1
        :pswitch_4ae
        :pswitch_497
        :pswitch_484
        :pswitch_47c
        :pswitch_474
        :pswitch_46c
        :pswitch_460
        :pswitch_44d
        :pswitch_43a
        :pswitch_427
        :pswitch_414
        :pswitch_401
        :pswitch_3ee
        :pswitch_3db
        :pswitch_3c8
        :pswitch_3b5
        :pswitch_3a2
        :pswitch_393
        :pswitch_387
        :pswitch_378
        :pswitch_35d
        :pswitch_346
        :pswitch_32f
        :pswitch_30c
        :pswitch_2f5
        :pswitch_2ed
        :pswitch_2de
        :pswitch_2bf
        :pswitch_2ac
        :pswitch_2a0
        :pswitch_289
        :pswitch_27a
        :pswitch_257
        :pswitch_244
        :pswitch_22d
        :pswitch_21e
        :pswitch_207
        :pswitch_1f4
        :pswitch_1e8
        :pswitch_1dc
        :pswitch_1cd
        :pswitch_1ba
        :pswitch_1b2
        :pswitch_19b
        :pswitch_188
        :pswitch_175
        :pswitch_166
        :pswitch_157
        :pswitch_14b
        :pswitch_13f
        :pswitch_12c
        :pswitch_119
        :pswitch_106
        :pswitch_f7
        :pswitch_eb
        :pswitch_d8
        :pswitch_c9
        :pswitch_b6
        :pswitch_a3
        :pswitch_97
        :pswitch_84
        :pswitch_78
        :pswitch_61
        :pswitch_55
        :pswitch_42
        :pswitch_2f
        :pswitch_1c
    .end packed-switch
.end method
