.class public abstract Landroid/app/IActivityManager$Stub;
.super Landroid/os/Binder;
.source "IActivityManager.java"

# interfaces
.implements Landroid/app/IActivityManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IActivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IActivityManager$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.app.IActivityManager"

.field static final greylist-max-o TRANSACTION_addInstrumentationResults:I = 0x26

.field static final greylist-max-o TRANSACTION_addPackageDependency:I = 0x58

.field static final blacklist TRANSACTION_appNotResponding:I = 0x124

.field static final greylist-max-o TRANSACTION_appNotRespondingViaProvider:I = 0xa0

.field static final greylist-max-o TRANSACTION_attachApplication:I = 0x13

.field static final blacklist TRANSACTION_backgroundAllowlistUid:I = 0xcc

.field static final greylist-max-o TRANSACTION_backupAgentCreated:I = 0x55

.field static final greylist-max-o TRANSACTION_bindBackupAgent:I = 0x54

.field static final greylist-max-o TRANSACTION_bindService:I = 0x1d

.field static final blacklist TRANSACTION_bindServiceInstance:I = 0x1e

.field static final greylist-max-o TRANSACTION_bootAnimationComplete:I = 0xa9

.field static final greylist-max-o TRANSACTION_broadcastIntent:I = 0xf

.field static final blacklist TRANSACTION_broadcastIntentWithFeature:I = 0x10

.field static final greylist-max-o TRANSACTION_cancelIntentSender:I = 0x39

.field static final greylist-max-o TRANSACTION_cancelTaskWindowTransition:I = 0xc8

.field static final greylist-max-o TRANSACTION_checkPermission:I = 0x6

.field static final greylist-max-o TRANSACTION_checkUriPermission:I = 0x2e

.field static final blacklist TRANSACTION_checkUriPermissions:I = 0x2f

.field static final greylist-max-o TRANSACTION_clearApplicationUserData:I = 0x48

.field static final greylist-max-o TRANSACTION_closeSystemDialogs:I = 0x5a

.field static final blacklist TRANSACTION_collectWebViewProcesses:I = 0x94

.field static final blacklist TRANSACTION_crashApplicationWithType:I = 0x64

.field static final blacklist TRANSACTION_crashApplicationWithTypeWithExtras:I = 0x65

.field static final greylist-max-o TRANSACTION_dumpHeap:I = 0x68

.field static final greylist-max-o TRANSACTION_dumpHeapFinished:I = 0xb2

.field static final blacklist TRANSACTION_dumpMiuiStackTraces:I = 0x11e

.field static final blacklist TRANSACTION_enableAmsDebugConfig:I = 0x136

.field static final blacklist TRANSACTION_enableAppDebugConfig:I = 0x137

.field static final blacklist TRANSACTION_enableAppFreezer:I = 0x12d

.field static final blacklist TRANSACTION_enableBinderTracing:I = 0xb9

.field static final blacklist TRANSACTION_enableFgsNotificationRateLimit:I = 0x12e

.field static final greylist-max-o TRANSACTION_enterSafeMode:I = 0x3d

.field static final blacklist TRANSACTION_exitSplitScreen:I = 0x13b

.field static final greylist-max-o TRANSACTION_finishActivity:I = 0xb

.field static final greylist-max-o TRANSACTION_finishHeavyWeightApp:I = 0x61

.field static final greylist-max-o TRANSACTION_finishInstrumentation:I = 0x27

.field static final greylist-max-o TRANSACTION_finishReceiver:I = 0x12

.field static final greylist-max-o TRANSACTION_forceStopPackage:I = 0x4b

.field static final blacklist TRANSACTION_getAbnormalFreeformBlackList:I = 0xf8

.field static final blacklist TRANSACTION_getAbnormalFreeformWhiteList:I = 0xf9

.field static final blacklist TRANSACTION_getAdditionalFreeformAspectRatio1Apps:I = 0x116

.field static final blacklist TRANSACTION_getAdditionalFreeformAspectRatio2Apps:I = 0x117

.field static final blacklist TRANSACTION_getAllRootTaskInfos:I = 0x9a

.field static final blacklist TRANSACTION_getApplicationLockActivityList:I = 0x109

.field static final blacklist TRANSACTION_getAudioForegroundPinAppList:I = 0x10c

.field static final blacklist TRANSACTION_getAuthorisedFreeformList:I = 0x11c

.field static final blacklist TRANSACTION_getBackgroundRestrictionExemptionReason:I = 0x135

.field static final blacklist TRANSACTION_getBugreportWhitelistedPackages:I = 0x93

.field static final blacklist TRANSACTION_getCanStartActivityFromFullscreenToFreefromList:I = 0xfa

.field static final blacklist TRANSACTION_getCastPid:I = 0xcf

.field static final greylist-max-o TRANSACTION_getConfiguration:I = 0x28

.field static final greylist-max-o TRANSACTION_getContentProvider:I = 0x17

.field static final greylist-max-o TRANSACTION_getContentProviderExternal:I = 0x78

.field static final greylist-max-o TRANSACTION_getCurrentUser:I = 0x7d

.field static final blacklist TRANSACTION_getCurrentUserId:I = 0x7e

.field static final blacklist TRANSACTION_getCvwUnsupportedFreeformWhiteList:I = 0x108

.field static final blacklist TRANSACTION_getDelegatedShellPermissions:I = 0x121

.field static final blacklist TRANSACTION_getDesktopFreeformWhiteList:I = 0x118

.field static final blacklist TRANSACTION_getDesktopModeLaunchFreeformIgnoreTranslucentAppList:I = 0xfe

.field static final blacklist TRANSACTION_getDesktopModeLaunchFullscreenAppList:I = 0xfc

.field static final blacklist TRANSACTION_getDesktopModeLaunchFullscreenNotHideOtherAppList:I = 0xfd

.field static final blacklist TRANSACTION_getEnableAbnormalFreeFormDebug:I = 0x11a

.field static final blacklist TRANSACTION_getFixedRotationAppList:I = 0x111

.field static final blacklist TRANSACTION_getFocusedRootTaskInfo:I = 0x9d

.field static final blacklist TRANSACTION_getForceLandscapeApplication:I = 0x10b

.field static final blacklist TRANSACTION_getForegroundPinAppBlackList:I = 0x10e

.field static final blacklist TRANSACTION_getForegroundPinAppWhiteList:I = 0x10d

.field static final blacklist TRANSACTION_getForegroundServiceType:I = 0x44

.field static final blacklist TRANSACTION_getFreeformBlackList:I = 0xf7

.field static final blacklist TRANSACTION_getFreeformCaptionInsetsHeightToZeroList:I = 0x10a

.field static final blacklist TRANSACTION_getFreeformDisableOverlayList:I = 0x101

.field static final blacklist TRANSACTION_getFreeformIgnoreRequestOrientationList:I = 0x102

.field static final blacklist TRANSACTION_getFreeformNeedRelunchList:I = 0x103

.field static final blacklist TRANSACTION_getFreeformRecommendMapApplicationList:I = 0xff

.field static final blacklist TRANSACTION_getFreeformRecommendWaitingApplicationList:I = 0x100

.field static final blacklist TRANSACTION_getFreeformResizeableWhiteList:I = 0x107

.field static final blacklist TRANSACTION_getFreeformVideoWhiteList:I = 0xfb

.field static final blacklist TRANSACTION_getHideSelfIfNewFreeformTaskWhiteList:I = 0x105

.field static final blacklist TRANSACTION_getHistoricalProcessExitReasons:I = 0x125

.field static final blacklist TRANSACTION_getInfoForIntentSender:I = 0x3a

.field static final greylist-max-o TRANSACTION_getIntentForIntentSender:I = 0x95

.field static final greylist-max-o TRANSACTION_getIntentSender:I = 0x37

.field static final blacklist TRANSACTION_getIntentSenderWithFeature:I = 0x38

.field static final blacklist TRANSACTION_getLaunchInTaskList:I = 0x115

.field static final greylist-max-o TRANSACTION_getLaunchedFromPackage:I = 0x96

.field static final greylist-max-o TRANSACTION_getLaunchedFromUid:I = 0x7f

.field static final blacklist TRANSACTION_getLifeMonitor:I = 0x122

.field static final greylist-max-o TRANSACTION_getLockTaskModeState:I = 0xb0

.field static final greylist-max-o TRANSACTION_getMemoryInfo:I = 0x46

.field static final greylist-max-o TRANSACTION_getMemoryTrimLevel:I = 0xbe

.field static final greylist-max-o TRANSACTION_getMyMemoryState:I = 0x7b

.field static final blacklist TRANSACTION_getOomAdjOfPid:I = 0x11f

.field static final greylist-max-o TRANSACTION_getPackageProcessState:I = 0xb6

.field static final greylist-max-o TRANSACTION_getProcessLimit:I = 0x2d

.field static final greylist-max-o TRANSACTION_getProcessMemoryInfo:I = 0x5b

.field static final greylist-max-o TRANSACTION_getProcessPss:I = 0x75

.field static final greylist-max-o TRANSACTION_getProcessesInErrorState:I = 0x47

.field static final greylist-max-o TRANSACTION_getProviderMimeType:I = 0x66

.field static final blacklist TRANSACTION_getProviderMimeTypeAsync:I = 0x67

.field static final greylist-max-o TRANSACTION_getRecentTasks:I = 0x35

.field static final blacklist TRANSACTION_getRotationFromDisplayApp:I = 0x112

.field static final greylist-max-o TRANSACTION_getRunningAppProcesses:I = 0x4e

.field static final greylist-max-o TRANSACTION_getRunningExternalApplications:I = 0x60

.field static final greylist-max-o TRANSACTION_getRunningServiceControlPanel:I = 0x1a

.field static final greylist-max-o TRANSACTION_getRunningUserIds:I = 0x88

.field static final blacklist TRANSACTION_getSensorDisableList:I = 0x11b

.field static final blacklist TRANSACTION_getSensorDisableWhiteList:I = 0x114

.field static final greylist-max-o TRANSACTION_getServices:I = 0x4d

.field static final blacklist TRANSACTION_getShowHiddenTaskIfFinishedWhiteList:I = 0x106

.field static final blacklist TRANSACTION_getStartFromFreeformBlackList:I = 0x104

.field static final blacklist TRANSACTION_getSwitchingFromUserMessage:I = 0x6c

.field static final blacklist TRANSACTION_getSwitchingToUserMessage:I = 0x6d

.field static final greylist-max-o TRANSACTION_getTagForIntentSender:I = 0xa3

.field static final greylist-max-o TRANSACTION_getTaskBounds:I = 0xa1

.field static final greylist-max-o TRANSACTION_getTaskForActivity:I = 0x16

.field static final blacklist TRANSACTION_getTaskResizeableForFreeform:I = 0xae

.field static final greylist-max-o TRANSACTION_getTasks:I = 0x14

.field static final blacklist TRANSACTION_getTopGameList:I = 0x10f

.field static final blacklist TRANSACTION_getTopVideoList:I = 0x110

.field static final blacklist TRANSACTION_getUidProcessCapabilities:I = 0x133

.field static final greylist-max-o TRANSACTION_getUidProcessState:I = 0x5

.field static final blacklist TRANSACTION_getUnsupportedAppsInDesktop:I = 0x119

.field static final blacklist TRANSACTION_getUseDefaultCameraPipelineApp:I = 0x113

.field static final greylist-max-o TRANSACTION_grantUriPermission:I = 0x30

.field static final greylist-max-o TRANSACTION_handleApplicationCrash:I = 0x7

.field static final greylist-max-o TRANSACTION_handleApplicationStrictModeViolation:I = 0x62

.field static final greylist-max-o TRANSACTION_handleApplicationWtf:I = 0x5d

.field static final greylist-max-o TRANSACTION_handleIncomingUser:I = 0x57

.field static final greylist-max-o TRANSACTION_hang:I = 0x99

.field static final blacklist TRANSACTION_holdLock:I = 0x12f

.field static final blacklist TRANSACTION_isAppFreezerEnabled:I = 0x12a

.field static final blacklist TRANSACTION_isAppFreezerSupported:I = 0x129

.field static final greylist-max-o TRANSACTION_isBackgroundRestricted:I = 0xc4

.field static final greylist-max-o TRANSACTION_isInLockTaskMode:I = 0xa5

.field static final greylist-max-o TRANSACTION_isIntentSenderAnActivity:I = 0x81

.field static final greylist-max-o TRANSACTION_isIntentSenderTargetedToPackage:I = 0x72

.field static final blacklist TRANSACTION_isMiuiDesktopModeActive:I = 0x11d

.field static final greylist-max-o TRANSACTION_isTopActivityImmersive:I = 0x63

.field static final greylist-max-o TRANSACTION_isTopOfTask:I = 0xa8

.field static final greylist-max-o TRANSACTION_isUidActive:I = 0x4

.field static final greylist-max-o TRANSACTION_isUserAMonkey:I = 0x5f

.field static final greylist-max-o TRANSACTION_isUserRunning:I = 0x69

.field static final greylist-max-o TRANSACTION_isVrModePackageEnabled:I = 0xbf

.field static final greylist-max-o TRANSACTION_killAllBackgroundProcesses:I = 0x77

.field static final greylist-max-o TRANSACTION_killApplication:I = 0x59

.field static final greylist-max-o TRANSACTION_killApplicationProcess:I = 0x5c

.field static final greylist-max-o TRANSACTION_killBackgroundProcesses:I = 0x5e

.field static final greylist-max-o TRANSACTION_killPackageDependents:I = 0xbc

.field static final greylist-max-o TRANSACTION_killPids:I = 0x4c

.field static final greylist-max-o TRANSACTION_killProcessesBelowForeground:I = 0x7c

.field static final blacklist TRANSACTION_killProcessesWhenImperceptible:I = 0x126

.field static final greylist-max-o TRANSACTION_killUid:I = 0x97

.field static final blacklist TRANSACTION_killUidForPermissionChange:I = 0x12b

.field static final blacklist TRANSACTION_launchBugReportHandlerApp:I = 0x92

.field static final greylist-max-o TRANSACTION_makePackageIdle:I = 0xbd

.field static final greylist-max-o TRANSACTION_moveActivityTaskToBack:I = 0x45

.field static final greylist-max-o TRANSACTION_moveTaskToFront:I = 0x15

.field static final blacklist TRANSACTION_moveTaskToRootTask:I = 0x9b

.field static final greylist-max-o TRANSACTION_noteAlarmFinish:I = 0xb5

.field static final greylist-max-o TRANSACTION_noteAlarmStart:I = 0xb4

.field static final greylist-max-o TRANSACTION_noteWakeupAlarm:I = 0x3e

.field static final greylist-max-o TRANSACTION_notifyCleartextNetwork:I = 0xac

.field static final greylist-max-o TRANSACTION_notifyLockedProfile:I = 0xc0

.field static final greylist-max-o TRANSACTION_openContentUri:I = 0x1

.field static final greylist-max-o TRANSACTION_peekService:I = 0x4f

.field static final greylist-max-o TRANSACTION_performIdleMaintenance:I = 0x9f

.field static final greylist-max-o TRANSACTION_profileControl:I = 0x50

.field static final greylist-max-o TRANSACTION_publishContentProviders:I = 0x18

.field static final greylist-max-o TRANSACTION_publishService:I = 0x21

.field static final blacklist TRANSACTION_queryIntentComponentsForIntentSender:I = 0x132

.field static final greylist-max-o TRANSACTION_refContentProvider:I = 0x19

.field static final blacklist TRANSACTION_registerActivityObserver:I = 0x138

.field static final blacklist TRANSACTION_registerForegroundServiceObserver:I = 0x4a

.field static final blacklist TRANSACTION_registerIntentSenderCancelListenerEx:I = 0x3b

.field static final greylist-max-o TRANSACTION_registerProcessObserver:I = 0x70

.field static final greylist-max-o TRANSACTION_registerReceiver:I = 0xc

.field static final blacklist TRANSACTION_registerReceiverWithFeature:I = 0xd

.field static final greylist-max-o TRANSACTION_registerTaskStackListener:I = 0xaa

.field static final greylist-max-o TRANSACTION_registerUidObserver:I = 0x2

.field static final greylist-max-o TRANSACTION_registerUserSwitchObserver:I = 0x86

.field static final greylist-max-o TRANSACTION_removeContentProvider:I = 0x3f

.field static final greylist-max-o TRANSACTION_removeContentProviderExternal:I = 0x79

.field static final blacklist TRANSACTION_removeContentProviderExternalAsUser:I = 0x7a

.field static final greylist-max-o TRANSACTION_removeTask:I = 0x6f

.field static final greylist-max-o TRANSACTION_requestBugReport:I = 0x8a

.field static final blacklist TRANSACTION_requestBugReportWithDescription:I = 0x8b

.field static final blacklist TRANSACTION_requestFullBugReport:I = 0x90

.field static final blacklist TRANSACTION_requestInteractiveBugReport:I = 0x8f

.field static final blacklist TRANSACTION_requestInteractiveBugReportWithDescription:I = 0x8e

.field static final blacklist TRANSACTION_requestRemoteBugReport:I = 0x91

.field static final blacklist TRANSACTION_requestSystemServerHeapDump:I = 0x89

.field static final greylist-max-o TRANSACTION_requestTelephonyBugReport:I = 0x8c

.field static final greylist-max-o TRANSACTION_requestWifiBugReport:I = 0x8d

.field static final blacklist TRANSACTION_resetAppErrors:I = 0x12c

.field static final greylist-max-o TRANSACTION_resizeTask:I = 0xaf

.field static final greylist-max-o TRANSACTION_restart:I = 0x9e

.field static final greylist-max-o TRANSACTION_restartUserInBackground:I = 0xc7

.field static final greylist-max-o TRANSACTION_resumeAppSwitches:I = 0x53

.field static final greylist-max-o TRANSACTION_revokeUriPermission:I = 0x31

.field static final greylist-max-o TRANSACTION_scheduleApplicationInfoChanged:I = 0xc9

.field static final greylist-max-o TRANSACTION_sendIdleJobTrigger:I = 0xc2

.field static final greylist-max-o TRANSACTION_sendIntentSender:I = 0xc3

.field static final greylist-max-o TRANSACTION_serviceDoneExecuting:I = 0x36

.field static final blacklist TRANSACTION_setAbnormalFreeformBlackList:I = 0xd1

.field static final blacklist TRANSACTION_setAbnormalFreeformWhiteList:I = 0xd2

.field static final greylist-max-o TRANSACTION_setActivityController:I = 0x32

.field static final blacklist TRANSACTION_setActivityLocusContext:I = 0x127

.field static final blacklist TRANSACTION_setAdditionalFreeformAspectRatio1Apps:I = 0xf3

.field static final blacklist TRANSACTION_setAdditionalFreeformAspectRatio2Apps:I = 0xf4

.field static final greylist-max-o TRANSACTION_setAgentApp:I = 0x23

.field static final greylist-max-o TRANSACTION_setAlwaysFinish:I = 0x24

.field static final blacklist TRANSACTION_setApplicationLockActivityList:I = 0xe2

.field static final blacklist TRANSACTION_setAudioForegroundPinAppList:I = 0xe6

.field static final blacklist TRANSACTION_setAuthorisedFreeformList:I = 0xf2

.field static final blacklist TRANSACTION_setCanStartActivityFromFullscreenToFreefromList:I = 0xd3

.field static final blacklist TRANSACTION_setCvwUnsupportedFreeformWhiteList:I = 0xe1

.field static final greylist-max-o TRANSACTION_setDebugApp:I = 0x22

.field static final blacklist TRANSACTION_setDesktopFreeformWhiteList:I = 0xf5

.field static final blacklist TRANSACTION_setDesktopModeLaunchFreeformIgnoreTranslucentAppList:I = 0xd7

.field static final blacklist TRANSACTION_setDesktopModeLaunchFullscreenAppList:I = 0xd5

.field static final blacklist TRANSACTION_setDesktopModeLaunchFullscreenNotHideOtherAppList:I = 0xd6

.field static final greylist-max-o TRANSACTION_setDumpHeapDebugLimit:I = 0xb1

.field static final blacklist TRANSACTION_setEnableAbnormalFreeFormDebug:I = 0xf0

.field static final blacklist TRANSACTION_setEnableForegroundPin:I = 0xe5

.field static final blacklist TRANSACTION_setFixedRotationAppList:I = 0xeb

.field static final blacklist TRANSACTION_setFocusedRootTask:I = 0x9c

.field static final blacklist TRANSACTION_setForceLandscapeApplication:I = 0xe4

.field static final blacklist TRANSACTION_setForegroundPinAppBlackList:I = 0xe8

.field static final blacklist TRANSACTION_setForegroundPinAppWhiteList:I = 0xe7

.field static final blacklist TRANSACTION_setFreeformBlackList:I = 0xd0

.field static final blacklist TRANSACTION_setFreeformCaptionInsetsHeightToZeroList:I = 0xe3

.field static final blacklist TRANSACTION_setFreeformDisableOverlayList:I = 0xda

.field static final blacklist TRANSACTION_setFreeformIgnoreRequestOrientationList:I = 0xdb

.field static final blacklist TRANSACTION_setFreeformNeedRelunchList:I = 0xdc

.field static final blacklist TRANSACTION_setFreeformRecommendMapApplicationList:I = 0xd8

.field static final blacklist TRANSACTION_setFreeformRecommendWaitingApplicationList:I = 0xd9

.field static final blacklist TRANSACTION_setFreeformResizeableWhiteList:I = 0xe0

.field static final blacklist TRANSACTION_setFreeformVideoWhiteList:I = 0xd4

.field static final greylist-max-o TRANSACTION_setHasTopUi:I = 0xc6

.field static final blacklist TRANSACTION_setHideSelfIfNewFreeformTaskWhiteList:I = 0xde

.field static final blacklist TRANSACTION_setLaunchInTaskList:I = 0xef

.field static final greylist-max-o TRANSACTION_setPackageScreenCompatMode:I = 0x6a

.field static final greylist-max-o TRANSACTION_setPersistentVrThread:I = 0xca

.field static final greylist-max-o TRANSACTION_setProcessImportant:I = 0x42

.field static final greylist-max-o TRANSACTION_setProcessLimit:I = 0x2c

.field static final greylist-max-o TRANSACTION_setProcessMemoryTrimLevel:I = 0xa2

.field static final blacklist TRANSACTION_setProcessStateSummary:I = 0x128

.field static final greylist-max-o TRANSACTION_setRenderThread:I = 0xc5

.field static final greylist-max-o TRANSACTION_setRequestedOrientation:I = 0x40

.field static final blacklist TRANSACTION_setRotationFromDisplayApp:I = 0xec

.field static final blacklist TRANSACTION_setSensorDisableList:I = 0xf1

.field static final blacklist TRANSACTION_setSensorDisableWhiteList:I = 0xee

.field static final greylist-max-o TRANSACTION_setServiceForeground:I = 0x43

.field static final blacklist TRANSACTION_setShowHiddenTaskIfFinishedWhiteList:I = 0xdf

.field static final blacklist TRANSACTION_setStartFromFreeformBlackList:I = 0xdd

.field static final blacklist TRANSACTION_setStopUserOnSwitch:I = 0x6e

.field static final greylist-max-o TRANSACTION_setTaskResizeable:I = 0xad

.field static final blacklist TRANSACTION_setTopGameList:I = 0xe9

.field static final blacklist TRANSACTION_setTopVideoList:I = 0xea

.field static final blacklist TRANSACTION_setUnsupportedAppsInDesktop:I = 0xf6

.field static final blacklist TRANSACTION_setUseDefaultCameraPipelineApp:I = 0xed

.field static final greylist-max-o TRANSACTION_setUserIsMonkey:I = 0x98

.field static final greylist-max-o TRANSACTION_showBootMessage:I = 0x76

.field static final greylist-max-o TRANSACTION_showWaitingForDebugger:I = 0x33

.field static final greylist-max-o TRANSACTION_shutdown:I = 0x51

.field static final greylist-max-o TRANSACTION_signalPersistentProcesses:I = 0x34

.field static final greylist-max-o TRANSACTION_startActivity:I = 0x8

.field static final greylist-max-o TRANSACTION_startActivityAsUser:I = 0x82

.field static final blacklist TRANSACTION_startActivityAsUserWithFeature:I = 0x83

.field static final greylist-max-o TRANSACTION_startActivityFromRecents:I = 0xa6

.field static final blacklist TRANSACTION_startActivityWithFeature:I = 0x9

.field static final greylist-max-o TRANSACTION_startBinderTracking:I = 0xb7

.field static final greylist-max-o TRANSACTION_startConfirmDeviceCredentialIntent:I = 0xc1

.field static final blacklist TRANSACTION_startDelegateShellPermissionIdentity:I = 0xce

.field static final greylist-max-o TRANSACTION_startInstrumentation:I = 0x25

.field static final blacklist TRANSACTION_startIntentInSplitScreen:I = 0x13a

.field static final blacklist TRANSACTION_startProfile:I = 0x130

.field static final greylist-max-o TRANSACTION_startService:I = 0x1b

.field static final greylist-max-o TRANSACTION_startSystemLockTaskMode:I = 0xa7

.field static final greylist-max-o TRANSACTION_startUserInBackground:I = 0xa4

.field static final greylist-max-o TRANSACTION_startUserInBackgroundWithListener:I = 0xcd

.field static final blacklist TRANSACTION_startUserInForegroundWithListener:I = 0x123

.field static final blacklist TRANSACTION_stopAppForUser:I = 0x49

.field static final greylist-max-o TRANSACTION_stopAppSwitches:I = 0x52

.field static final greylist-max-o TRANSACTION_stopBinderTrackingAndDump:I = 0xb8

.field static final blacklist TRANSACTION_stopDelegateShellPermissionIdentity:I = 0x120

.field static final blacklist TRANSACTION_stopProfile:I = 0x131

.field static final greylist-max-o TRANSACTION_stopService:I = 0x1c

.field static final greylist-max-o TRANSACTION_stopServiceToken:I = 0x2b

.field static final greylist-max-o TRANSACTION_stopUser:I = 0x84

.field static final blacklist TRANSACTION_stopUserWithDelayedLocking:I = 0x85

.field static final greylist-max-o TRANSACTION_suppressResizeConfigChanges:I = 0xba

.field static final greylist-max-o TRANSACTION_switchUser:I = 0x6b

.field static final greylist-max-o TRANSACTION_unbindBackupAgent:I = 0x56

.field static final greylist-max-o TRANSACTION_unbindFinished:I = 0x41

.field static final greylist-max-o TRANSACTION_unbindService:I = 0x20

.field static final greylist-max-o TRANSACTION_unbroadcastIntent:I = 0x11

.field static final greylist-max-o TRANSACTION_unhandledBack:I = 0xa

.field static final greylist-max-o TRANSACTION_unlockUser:I = 0xbb

.field static final blacklist TRANSACTION_unregisterActivityObserver:I = 0x139

.field static final greylist-max-o TRANSACTION_unregisterIntentSenderCancelListener:I = 0x3c

.field static final greylist-max-o TRANSACTION_unregisterProcessObserver:I = 0x71

.field static final greylist-max-o TRANSACTION_unregisterReceiver:I = 0xe

.field static final greylist-max-o TRANSACTION_unregisterTaskStackListener:I = 0xab

.field static final greylist-max-o TRANSACTION_unregisterUidObserver:I = 0x3

.field static final greylist-max-o TRANSACTION_unregisterUserSwitchObserver:I = 0x87

.field static final greylist-max-o TRANSACTION_unstableProviderDied:I = 0x80

.field static final greylist-max-o TRANSACTION_updateConfiguration:I = 0x29

.field static final greylist-max-o TRANSACTION_updateLockTaskPackages:I = 0xb3

.field static final blacklist TRANSACTION_updateMccMncConfiguration:I = 0x2a

.field static final greylist-max-o TRANSACTION_updatePersistentConfiguration:I = 0x73

.field static final blacklist TRANSACTION_updatePersistentConfigurationWithAttribution:I = 0x74

.field static final blacklist TRANSACTION_updateServiceGroup:I = 0x1f

.field static final blacklist TRANSACTION_waitForBroadcastIdle:I = 0x134

.field static final greylist-max-o TRANSACTION_waitForNetworkStateUpdate:I = 0xcb


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 1372
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 1373
    const-string v0, "android.app.IActivityManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/IActivityManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 1374
    return-void
.end method

.method public static greylist-max-r asInterface(Landroid/os/IBinder;)Landroid/app/IActivityManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 1381
    if-nez p0, :cond_4

    .line 1382
    const/4 v0, 0x0

    return-object v0

    .line 1384
    :cond_4
    const-string v0, "android.app.IActivityManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 1385
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/app/IActivityManager;

    if-eqz v1, :cond_14

    .line 1386
    move-object v1, v0

    check-cast v1, Landroid/app/IActivityManager;

    return-object v1

    .line 1388
    :cond_14
    new-instance v1, Landroid/app/IActivityManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/IActivityManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 1397
    packed-switch p0, :pswitch_data_458

    .line 2661
    const/4 v0, 0x0

    return-object v0

    .line 2657
    :pswitch_5
    const-string v0, "exitSplitScreen"

    return-object v0

    .line 2653
    :pswitch_8
    const-string/jumbo v0, "startIntentInSplitScreen"

    return-object v0

    .line 2649
    :pswitch_c
    const-string/jumbo v0, "unregisterActivityObserver"

    return-object v0

    .line 2645
    :pswitch_10
    const-string/jumbo v0, "registerActivityObserver"

    return-object v0

    .line 2641
    :pswitch_14
    const-string v0, "enableAppDebugConfig"

    return-object v0

    .line 2637
    :pswitch_17
    const-string v0, "enableAmsDebugConfig"

    return-object v0

    .line 2633
    :pswitch_1a
    const-string v0, "getBackgroundRestrictionExemptionReason"

    return-object v0

    .line 2629
    :pswitch_1d
    const-string/jumbo v0, "waitForBroadcastIdle"

    return-object v0

    .line 2625
    :pswitch_21
    const-string v0, "getUidProcessCapabilities"

    return-object v0

    .line 2621
    :pswitch_24
    const-string/jumbo v0, "queryIntentComponentsForIntentSender"

    return-object v0

    .line 2617
    :pswitch_28
    const-string/jumbo v0, "stopProfile"

    return-object v0

    .line 2613
    :pswitch_2c
    const-string/jumbo v0, "startProfile"

    return-object v0

    .line 2609
    :pswitch_30
    const-string v0, "holdLock"

    return-object v0

    .line 2605
    :pswitch_33
    const-string v0, "enableFgsNotificationRateLimit"

    return-object v0

    .line 2601
    :pswitch_36
    const-string v0, "enableAppFreezer"

    return-object v0

    .line 2597
    :pswitch_39
    const-string/jumbo v0, "resetAppErrors"

    return-object v0

    .line 2593
    :pswitch_3d
    const-string v0, "killUidForPermissionChange"

    return-object v0

    .line 2589
    :pswitch_40
    const-string v0, "isAppFreezerEnabled"

    return-object v0

    .line 2585
    :pswitch_43
    const-string v0, "isAppFreezerSupported"

    return-object v0

    .line 2581
    :pswitch_46
    const-string/jumbo v0, "setProcessStateSummary"

    return-object v0

    .line 2577
    :pswitch_4a
    const-string/jumbo v0, "setActivityLocusContext"

    return-object v0

    .line 2573
    :pswitch_4e
    const-string v0, "killProcessesWhenImperceptible"

    return-object v0

    .line 2569
    :pswitch_51
    const-string v0, "getHistoricalProcessExitReasons"

    return-object v0

    .line 2565
    :pswitch_54
    const-string v0, "appNotResponding"

    return-object v0

    .line 2561
    :pswitch_57
    const-string/jumbo v0, "startUserInForegroundWithListener"

    return-object v0

    .line 2557
    :pswitch_5b
    const-string v0, "getLifeMonitor"

    return-object v0

    .line 2553
    :pswitch_5e
    const-string v0, "getDelegatedShellPermissions"

    return-object v0

    .line 2549
    :pswitch_61
    const-string/jumbo v0, "stopDelegateShellPermissionIdentity"

    return-object v0

    .line 2545
    :pswitch_65
    const-string v0, "getOomAdjOfPid"

    return-object v0

    .line 2541
    :pswitch_68
    const-string v0, "dumpMiuiStackTraces"

    return-object v0

    .line 2537
    :pswitch_6b
    const-string v0, "isMiuiDesktopModeActive"

    return-object v0

    .line 2533
    :pswitch_6e
    const-string v0, "getAuthorisedFreeformList"

    return-object v0

    .line 2529
    :pswitch_71
    const-string v0, "getSensorDisableList"

    return-object v0

    .line 2525
    :pswitch_74
    const-string v0, "getEnableAbnormalFreeFormDebug"

    return-object v0

    .line 2521
    :pswitch_77
    const-string v0, "getUnsupportedAppsInDesktop"

    return-object v0

    .line 2517
    :pswitch_7a
    const-string v0, "getDesktopFreeformWhiteList"

    return-object v0

    .line 2513
    :pswitch_7d
    const-string v0, "getAdditionalFreeformAspectRatio2Apps"

    return-object v0

    .line 2509
    :pswitch_80
    const-string v0, "getAdditionalFreeformAspectRatio1Apps"

    return-object v0

    .line 2505
    :pswitch_83
    const-string v0, "getLaunchInTaskList"

    return-object v0

    .line 2501
    :pswitch_86
    const-string v0, "getSensorDisableWhiteList"

    return-object v0

    .line 2497
    :pswitch_89
    const-string v0, "getUseDefaultCameraPipelineApp"

    return-object v0

    .line 2493
    :pswitch_8c
    const-string v0, "getRotationFromDisplayApp"

    return-object v0

    .line 2489
    :pswitch_8f
    const-string v0, "getFixedRotationAppList"

    return-object v0

    .line 2485
    :pswitch_92
    const-string v0, "getTopVideoList"

    return-object v0

    .line 2481
    :pswitch_95
    const-string v0, "getTopGameList"

    return-object v0

    .line 2477
    :pswitch_98
    const-string v0, "getForegroundPinAppBlackList"

    return-object v0

    .line 2473
    :pswitch_9b
    const-string v0, "getForegroundPinAppWhiteList"

    return-object v0

    .line 2469
    :pswitch_9e
    const-string v0, "getAudioForegroundPinAppList"

    return-object v0

    .line 2465
    :pswitch_a1
    const-string v0, "getForceLandscapeApplication"

    return-object v0

    .line 2461
    :pswitch_a4
    const-string v0, "getFreeformCaptionInsetsHeightToZeroList"

    return-object v0

    .line 2457
    :pswitch_a7
    const-string v0, "getApplicationLockActivityList"

    return-object v0

    .line 2453
    :pswitch_aa
    const-string v0, "getCvwUnsupportedFreeformWhiteList"

    return-object v0

    .line 2449
    :pswitch_ad
    const-string v0, "getFreeformResizeableWhiteList"

    return-object v0

    .line 2445
    :pswitch_b0
    const-string v0, "getShowHiddenTaskIfFinishedWhiteList"

    return-object v0

    .line 2441
    :pswitch_b3
    const-string v0, "getHideSelfIfNewFreeformTaskWhiteList"

    return-object v0

    .line 2437
    :pswitch_b6
    const-string v0, "getStartFromFreeformBlackList"

    return-object v0

    .line 2433
    :pswitch_b9
    const-string v0, "getFreeformNeedRelunchList"

    return-object v0

    .line 2429
    :pswitch_bc
    const-string v0, "getFreeformIgnoreRequestOrientationList"

    return-object v0

    .line 2425
    :pswitch_bf
    const-string v0, "getFreeformDisableOverlayList"

    return-object v0

    .line 2421
    :pswitch_c2
    const-string v0, "getFreeformRecommendWaitingApplicationList"

    return-object v0

    .line 2417
    :pswitch_c5
    const-string v0, "getFreeformRecommendMapApplicationList"

    return-object v0

    .line 2413
    :pswitch_c8
    const-string v0, "getDesktopModeLaunchFreeformIgnoreTranslucentAppList"

    return-object v0

    .line 2409
    :pswitch_cb
    const-string v0, "getDesktopModeLaunchFullscreenNotHideOtherAppList"

    return-object v0

    .line 2405
    :pswitch_ce
    const-string v0, "getDesktopModeLaunchFullscreenAppList"

    return-object v0

    .line 2401
    :pswitch_d1
    const-string v0, "getFreeformVideoWhiteList"

    return-object v0

    .line 2397
    :pswitch_d4
    const-string v0, "getCanStartActivityFromFullscreenToFreefromList"

    return-object v0

    .line 2393
    :pswitch_d7
    const-string v0, "getAbnormalFreeformWhiteList"

    return-object v0

    .line 2389
    :pswitch_da
    const-string v0, "getAbnormalFreeformBlackList"

    return-object v0

    .line 2385
    :pswitch_dd
    const-string v0, "getFreeformBlackList"

    return-object v0

    .line 2381
    :pswitch_e0
    const-string/jumbo v0, "setUnsupportedAppsInDesktop"

    return-object v0

    .line 2377
    :pswitch_e4
    const-string/jumbo v0, "setDesktopFreeformWhiteList"

    return-object v0

    .line 2373
    :pswitch_e8
    const-string/jumbo v0, "setAdditionalFreeformAspectRatio2Apps"

    return-object v0

    .line 2369
    :pswitch_ec
    const-string/jumbo v0, "setAdditionalFreeformAspectRatio1Apps"

    return-object v0

    .line 2365
    :pswitch_f0
    const-string/jumbo v0, "setAuthorisedFreeformList"

    return-object v0

    .line 2361
    :pswitch_f4
    const-string/jumbo v0, "setSensorDisableList"

    return-object v0

    .line 2357
    :pswitch_f8
    const-string/jumbo v0, "setEnableAbnormalFreeFormDebug"

    return-object v0

    .line 2353
    :pswitch_fc
    const-string/jumbo v0, "setLaunchInTaskList"

    return-object v0

    .line 2349
    :pswitch_100
    const-string/jumbo v0, "setSensorDisableWhiteList"

    return-object v0

    .line 2345
    :pswitch_104
    const-string/jumbo v0, "setUseDefaultCameraPipelineApp"

    return-object v0

    .line 2341
    :pswitch_108
    const-string/jumbo v0, "setRotationFromDisplayApp"

    return-object v0

    .line 2337
    :pswitch_10c
    const-string/jumbo v0, "setFixedRotationAppList"

    return-object v0

    .line 2333
    :pswitch_110
    const-string/jumbo v0, "setTopVideoList"

    return-object v0

    .line 2329
    :pswitch_114
    const-string/jumbo v0, "setTopGameList"

    return-object v0

    .line 2325
    :pswitch_118
    const-string/jumbo v0, "setForegroundPinAppBlackList"

    return-object v0

    .line 2321
    :pswitch_11c
    const-string/jumbo v0, "setForegroundPinAppWhiteList"

    return-object v0

    .line 2317
    :pswitch_120
    const-string/jumbo v0, "setAudioForegroundPinAppList"

    return-object v0

    .line 2313
    :pswitch_124
    const-string/jumbo v0, "setEnableForegroundPin"

    return-object v0

    .line 2309
    :pswitch_128
    const-string/jumbo v0, "setForceLandscapeApplication"

    return-object v0

    .line 2305
    :pswitch_12c
    const-string/jumbo v0, "setFreeformCaptionInsetsHeightToZeroList"

    return-object v0

    .line 2301
    :pswitch_130
    const-string/jumbo v0, "setApplicationLockActivityList"

    return-object v0

    .line 2297
    :pswitch_134
    const-string/jumbo v0, "setCvwUnsupportedFreeformWhiteList"

    return-object v0

    .line 2293
    :pswitch_138
    const-string/jumbo v0, "setFreeformResizeableWhiteList"

    return-object v0

    .line 2289
    :pswitch_13c
    const-string/jumbo v0, "setShowHiddenTaskIfFinishedWhiteList"

    return-object v0

    .line 2285
    :pswitch_140
    const-string/jumbo v0, "setHideSelfIfNewFreeformTaskWhiteList"

    return-object v0

    .line 2281
    :pswitch_144
    const-string/jumbo v0, "setStartFromFreeformBlackList"

    return-object v0

    .line 2277
    :pswitch_148
    const-string/jumbo v0, "setFreeformNeedRelunchList"

    return-object v0

    .line 2273
    :pswitch_14c
    const-string/jumbo v0, "setFreeformIgnoreRequestOrientationList"

    return-object v0

    .line 2269
    :pswitch_150
    const-string/jumbo v0, "setFreeformDisableOverlayList"

    return-object v0

    .line 2265
    :pswitch_154
    const-string/jumbo v0, "setFreeformRecommendWaitingApplicationList"

    return-object v0

    .line 2261
    :pswitch_158
    const-string/jumbo v0, "setFreeformRecommendMapApplicationList"

    return-object v0

    .line 2257
    :pswitch_15c
    const-string/jumbo v0, "setDesktopModeLaunchFreeformIgnoreTranslucentAppList"

    return-object v0

    .line 2253
    :pswitch_160
    const-string/jumbo v0, "setDesktopModeLaunchFullscreenNotHideOtherAppList"

    return-object v0

    .line 2249
    :pswitch_164
    const-string/jumbo v0, "setDesktopModeLaunchFullscreenAppList"

    return-object v0

    .line 2245
    :pswitch_168
    const-string/jumbo v0, "setFreeformVideoWhiteList"

    return-object v0

    .line 2241
    :pswitch_16c
    const-string/jumbo v0, "setCanStartActivityFromFullscreenToFreefromList"

    return-object v0

    .line 2237
    :pswitch_170
    const-string/jumbo v0, "setAbnormalFreeformWhiteList"

    return-object v0

    .line 2233
    :pswitch_174
    const-string/jumbo v0, "setAbnormalFreeformBlackList"

    return-object v0

    .line 2229
    :pswitch_178
    const-string/jumbo v0, "setFreeformBlackList"

    return-object v0

    .line 2225
    :pswitch_17c
    const-string v0, "getCastPid"

    return-object v0

    .line 2221
    :pswitch_17f
    const-string/jumbo v0, "startDelegateShellPermissionIdentity"

    return-object v0

    .line 2217
    :pswitch_183
    const-string/jumbo v0, "startUserInBackgroundWithListener"

    return-object v0

    .line 2213
    :pswitch_187
    const-string v0, "backgroundAllowlistUid"

    return-object v0

    .line 2209
    :pswitch_18a
    const-string/jumbo v0, "waitForNetworkStateUpdate"

    return-object v0

    .line 2205
    :pswitch_18e
    const-string/jumbo v0, "setPersistentVrThread"

    return-object v0

    .line 2201
    :pswitch_192
    const-string/jumbo v0, "scheduleApplicationInfoChanged"

    return-object v0

    .line 2197
    :pswitch_196
    const-string v0, "cancelTaskWindowTransition"

    return-object v0

    .line 2193
    :pswitch_199
    const-string/jumbo v0, "restartUserInBackground"

    return-object v0

    .line 2189
    :pswitch_19d
    const-string/jumbo v0, "setHasTopUi"

    return-object v0

    .line 2185
    :pswitch_1a1
    const-string/jumbo v0, "setRenderThread"

    return-object v0

    .line 2181
    :pswitch_1a5
    const-string v0, "isBackgroundRestricted"

    return-object v0

    .line 2177
    :pswitch_1a8
    const-string/jumbo v0, "sendIntentSender"

    return-object v0

    .line 2173
    :pswitch_1ac
    const-string/jumbo v0, "sendIdleJobTrigger"

    return-object v0

    .line 2169
    :pswitch_1b0
    const-string/jumbo v0, "startConfirmDeviceCredentialIntent"

    return-object v0

    .line 2165
    :pswitch_1b4
    const-string/jumbo v0, "notifyLockedProfile"

    return-object v0

    .line 2161
    :pswitch_1b8
    const-string v0, "isVrModePackageEnabled"

    return-object v0

    .line 2157
    :pswitch_1bb
    const-string v0, "getMemoryTrimLevel"

    return-object v0

    .line 2153
    :pswitch_1be
    const-string/jumbo v0, "makePackageIdle"

    return-object v0

    .line 2149
    :pswitch_1c2
    const-string v0, "killPackageDependents"

    return-object v0

    .line 2145
    :pswitch_1c5
    const-string/jumbo v0, "unlockUser"

    return-object v0

    .line 2141
    :pswitch_1c9
    const-string/jumbo v0, "suppressResizeConfigChanges"

    return-object v0

    .line 2137
    :pswitch_1cd
    const-string v0, "enableBinderTracing"

    return-object v0

    .line 2133
    :pswitch_1d0
    const-string/jumbo v0, "stopBinderTrackingAndDump"

    return-object v0

    .line 2129
    :pswitch_1d4
    const-string/jumbo v0, "startBinderTracking"

    return-object v0

    .line 2125
    :pswitch_1d8
    const-string v0, "getPackageProcessState"

    return-object v0

    .line 2121
    :pswitch_1db
    const-string/jumbo v0, "noteAlarmFinish"

    return-object v0

    .line 2117
    :pswitch_1df
    const-string/jumbo v0, "noteAlarmStart"

    return-object v0

    .line 2113
    :pswitch_1e3
    const-string/jumbo v0, "updateLockTaskPackages"

    return-object v0

    .line 2109
    :pswitch_1e7
    const-string v0, "dumpHeapFinished"

    return-object v0

    .line 2105
    :pswitch_1ea
    const-string/jumbo v0, "setDumpHeapDebugLimit"

    return-object v0

    .line 2101
    :pswitch_1ee
    const-string v0, "getLockTaskModeState"

    return-object v0

    .line 2097
    :pswitch_1f1
    const-string/jumbo v0, "resizeTask"

    return-object v0

    .line 2093
    :pswitch_1f5
    const-string v0, "getTaskResizeableForFreeform"

    return-object v0

    .line 2089
    :pswitch_1f8
    const-string/jumbo v0, "setTaskResizeable"

    return-object v0

    .line 2085
    :pswitch_1fc
    const-string/jumbo v0, "notifyCleartextNetwork"

    return-object v0

    .line 2081
    :pswitch_200
    const-string/jumbo v0, "unregisterTaskStackListener"

    return-object v0

    .line 2077
    :pswitch_204
    const-string/jumbo v0, "registerTaskStackListener"

    return-object v0

    .line 2073
    :pswitch_208
    const-string v0, "bootAnimationComplete"

    return-object v0

    .line 2069
    :pswitch_20b
    const-string v0, "isTopOfTask"

    return-object v0

    .line 2065
    :pswitch_20e
    const-string/jumbo v0, "startSystemLockTaskMode"

    return-object v0

    .line 2061
    :pswitch_212
    const-string/jumbo v0, "startActivityFromRecents"

    return-object v0

    .line 2057
    :pswitch_216
    const-string v0, "isInLockTaskMode"

    return-object v0

    .line 2053
    :pswitch_219
    const-string/jumbo v0, "startUserInBackground"

    return-object v0

    .line 2049
    :pswitch_21d
    const-string v0, "getTagForIntentSender"

    return-object v0

    .line 2045
    :pswitch_220
    const-string/jumbo v0, "setProcessMemoryTrimLevel"

    return-object v0

    .line 2041
    :pswitch_224
    const-string v0, "getTaskBounds"

    return-object v0

    .line 2037
    :pswitch_227
    const-string v0, "appNotRespondingViaProvider"

    return-object v0

    .line 2033
    :pswitch_22a
    const-string/jumbo v0, "performIdleMaintenance"

    return-object v0

    .line 2029
    :pswitch_22e
    const-string/jumbo v0, "restart"

    return-object v0

    .line 2025
    :pswitch_232
    const-string v0, "getFocusedRootTaskInfo"

    return-object v0

    .line 2021
    :pswitch_235
    const-string/jumbo v0, "setFocusedRootTask"

    return-object v0

    .line 2017
    :pswitch_239
    const-string/jumbo v0, "moveTaskToRootTask"

    return-object v0

    .line 2013
    :pswitch_23d
    const-string v0, "getAllRootTaskInfos"

    return-object v0

    .line 2009
    :pswitch_240
    const-string v0, "hang"

    return-object v0

    .line 2005
    :pswitch_243
    const-string/jumbo v0, "setUserIsMonkey"

    return-object v0

    .line 2001
    :pswitch_247
    const-string v0, "killUid"

    return-object v0

    .line 1997
    :pswitch_24a
    const-string v0, "getLaunchedFromPackage"

    return-object v0

    .line 1993
    :pswitch_24d
    const-string v0, "getIntentForIntentSender"

    return-object v0

    .line 1989
    :pswitch_250
    const-string v0, "collectWebViewProcesses"

    return-object v0

    .line 1985
    :pswitch_253
    const-string v0, "getBugreportWhitelistedPackages"

    return-object v0

    .line 1981
    :pswitch_256
    const-string v0, "launchBugReportHandlerApp"

    return-object v0

    .line 1977
    :pswitch_259
    const-string/jumbo v0, "requestRemoteBugReport"

    return-object v0

    .line 1973
    :pswitch_25d
    const-string/jumbo v0, "requestFullBugReport"

    return-object v0

    .line 1969
    :pswitch_261
    const-string/jumbo v0, "requestInteractiveBugReport"

    return-object v0

    .line 1965
    :pswitch_265
    const-string/jumbo v0, "requestInteractiveBugReportWithDescription"

    return-object v0

    .line 1961
    :pswitch_269
    const-string/jumbo v0, "requestWifiBugReport"

    return-object v0

    .line 1957
    :pswitch_26d
    const-string/jumbo v0, "requestTelephonyBugReport"

    return-object v0

    .line 1953
    :pswitch_271
    const-string/jumbo v0, "requestBugReportWithDescription"

    return-object v0

    .line 1949
    :pswitch_275
    const-string/jumbo v0, "requestBugReport"

    return-object v0

    .line 1945
    :pswitch_279
    const-string/jumbo v0, "requestSystemServerHeapDump"

    return-object v0

    .line 1941
    :pswitch_27d
    const-string v0, "getRunningUserIds"

    return-object v0

    .line 1937
    :pswitch_280
    const-string/jumbo v0, "unregisterUserSwitchObserver"

    return-object v0

    .line 1933
    :pswitch_284
    const-string/jumbo v0, "registerUserSwitchObserver"

    return-object v0

    .line 1929
    :pswitch_288
    const-string/jumbo v0, "stopUserWithDelayedLocking"

    return-object v0

    .line 1925
    :pswitch_28c
    const-string/jumbo v0, "stopUser"

    return-object v0

    .line 1921
    :pswitch_290
    const-string/jumbo v0, "startActivityAsUserWithFeature"

    return-object v0

    .line 1917
    :pswitch_294
    const-string/jumbo v0, "startActivityAsUser"

    return-object v0

    .line 1913
    :pswitch_298
    const-string v0, "isIntentSenderAnActivity"

    return-object v0

    .line 1909
    :pswitch_29b
    const-string/jumbo v0, "unstableProviderDied"

    return-object v0

    .line 1905
    :pswitch_29f
    const-string v0, "getLaunchedFromUid"

    return-object v0

    .line 1901
    :pswitch_2a2
    const-string v0, "getCurrentUserId"

    return-object v0

    .line 1897
    :pswitch_2a5
    const-string v0, "getCurrentUser"

    return-object v0

    .line 1893
    :pswitch_2a8
    const-string v0, "killProcessesBelowForeground"

    return-object v0

    .line 1889
    :pswitch_2ab
    const-string v0, "getMyMemoryState"

    return-object v0

    .line 1885
    :pswitch_2ae
    const-string/jumbo v0, "removeContentProviderExternalAsUser"

    return-object v0

    .line 1881
    :pswitch_2b2
    const-string/jumbo v0, "removeContentProviderExternal"

    return-object v0

    .line 1877
    :pswitch_2b6
    const-string v0, "getContentProviderExternal"

    return-object v0

    .line 1873
    :pswitch_2b9
    const-string v0, "killAllBackgroundProcesses"

    return-object v0

    .line 1869
    :pswitch_2bc
    const-string/jumbo v0, "showBootMessage"

    return-object v0

    .line 1865
    :pswitch_2c0
    const-string v0, "getProcessPss"

    return-object v0

    .line 1861
    :pswitch_2c3
    const-string/jumbo v0, "updatePersistentConfigurationWithAttribution"

    return-object v0

    .line 1857
    :pswitch_2c7
    const-string/jumbo v0, "updatePersistentConfiguration"

    return-object v0

    .line 1853
    :pswitch_2cb
    const-string v0, "isIntentSenderTargetedToPackage"

    return-object v0

    .line 1849
    :pswitch_2ce
    const-string/jumbo v0, "unregisterProcessObserver"

    return-object v0

    .line 1845
    :pswitch_2d2
    const-string/jumbo v0, "registerProcessObserver"

    return-object v0

    .line 1841
    :pswitch_2d6
    const-string/jumbo v0, "removeTask"

    return-object v0

    .line 1837
    :pswitch_2da
    const-string/jumbo v0, "setStopUserOnSwitch"

    return-object v0

    .line 1833
    :pswitch_2de
    const-string v0, "getSwitchingToUserMessage"

    return-object v0

    .line 1829
    :pswitch_2e1
    const-string v0, "getSwitchingFromUserMessage"

    return-object v0

    .line 1825
    :pswitch_2e4
    const-string/jumbo v0, "switchUser"

    return-object v0

    .line 1821
    :pswitch_2e8
    const-string/jumbo v0, "setPackageScreenCompatMode"

    return-object v0

    .line 1817
    :pswitch_2ec
    const-string v0, "isUserRunning"

    return-object v0

    .line 1813
    :pswitch_2ef
    const-string v0, "dumpHeap"

    return-object v0

    .line 1809
    :pswitch_2f2
    const-string v0, "getProviderMimeTypeAsync"

    return-object v0

    .line 1805
    :pswitch_2f5
    const-string v0, "getProviderMimeType"

    return-object v0

    .line 1801
    :pswitch_2f8
    const-string v0, "crashApplicationWithTypeWithExtras"

    return-object v0

    .line 1797
    :pswitch_2fb
    const-string v0, "crashApplicationWithType"

    return-object v0

    .line 1793
    :pswitch_2fe
    const-string v0, "isTopActivityImmersive"

    return-object v0

    .line 1789
    :pswitch_301
    const-string v0, "handleApplicationStrictModeViolation"

    return-object v0

    .line 1785
    :pswitch_304
    const-string v0, "finishHeavyWeightApp"

    return-object v0

    .line 1781
    :pswitch_307
    const-string v0, "getRunningExternalApplications"

    return-object v0

    .line 1777
    :pswitch_30a
    const-string v0, "isUserAMonkey"

    return-object v0

    .line 1773
    :pswitch_30d
    const-string v0, "killBackgroundProcesses"

    return-object v0

    .line 1769
    :pswitch_310
    const-string v0, "handleApplicationWtf"

    return-object v0

    .line 1765
    :pswitch_313
    const-string v0, "killApplicationProcess"

    return-object v0

    .line 1761
    :pswitch_316
    const-string v0, "getProcessMemoryInfo"

    return-object v0

    .line 1757
    :pswitch_319
    const-string v0, "closeSystemDialogs"

    return-object v0

    .line 1753
    :pswitch_31c
    const-string v0, "killApplication"

    return-object v0

    .line 1749
    :pswitch_31f
    const-string v0, "addPackageDependency"

    return-object v0

    .line 1745
    :pswitch_322
    const-string v0, "handleIncomingUser"

    return-object v0

    .line 1741
    :pswitch_325
    const-string/jumbo v0, "unbindBackupAgent"

    return-object v0

    .line 1737
    :pswitch_329
    const-string v0, "backupAgentCreated"

    return-object v0

    .line 1733
    :pswitch_32c
    const-string v0, "bindBackupAgent"

    return-object v0

    .line 1729
    :pswitch_32f
    const-string/jumbo v0, "resumeAppSwitches"

    return-object v0

    .line 1725
    :pswitch_333
    const-string/jumbo v0, "stopAppSwitches"

    return-object v0

    .line 1721
    :pswitch_337
    const-string/jumbo v0, "shutdown"

    return-object v0

    .line 1717
    :pswitch_33b
    const-string/jumbo v0, "profileControl"

    return-object v0

    .line 1713
    :pswitch_33f
    const-string/jumbo v0, "peekService"

    return-object v0

    .line 1709
    :pswitch_343
    const-string v0, "getRunningAppProcesses"

    return-object v0

    .line 1705
    :pswitch_346
    const-string v0, "getServices"

    return-object v0

    .line 1701
    :pswitch_349
    const-string v0, "killPids"

    return-object v0

    .line 1697
    :pswitch_34c
    const-string v0, "forceStopPackage"

    return-object v0

    .line 1693
    :pswitch_34f
    const-string/jumbo v0, "registerForegroundServiceObserver"

    return-object v0

    .line 1689
    :pswitch_353
    const-string/jumbo v0, "stopAppForUser"

    return-object v0

    .line 1685
    :pswitch_357
    const-string v0, "clearApplicationUserData"

    return-object v0

    .line 1681
    :pswitch_35a
    const-string v0, "getProcessesInErrorState"

    return-object v0

    .line 1677
    :pswitch_35d
    const-string v0, "getMemoryInfo"

    return-object v0

    .line 1673
    :pswitch_360
    const-string/jumbo v0, "moveActivityTaskToBack"

    return-object v0

    .line 1669
    :pswitch_364
    const-string v0, "getForegroundServiceType"

    return-object v0

    .line 1665
    :pswitch_367
    const-string/jumbo v0, "setServiceForeground"

    return-object v0

    .line 1661
    :pswitch_36b
    const-string/jumbo v0, "setProcessImportant"

    return-object v0

    .line 1657
    :pswitch_36f
    const-string/jumbo v0, "unbindFinished"

    return-object v0

    .line 1653
    :pswitch_373
    const-string/jumbo v0, "setRequestedOrientation"

    return-object v0

    .line 1649
    :pswitch_377
    const-string/jumbo v0, "removeContentProvider"

    return-object v0

    .line 1645
    :pswitch_37b
    const-string/jumbo v0, "noteWakeupAlarm"

    return-object v0

    .line 1641
    :pswitch_37f
    const-string v0, "enterSafeMode"

    return-object v0

    .line 1637
    :pswitch_382
    const-string/jumbo v0, "unregisterIntentSenderCancelListener"

    return-object v0

    .line 1633
    :pswitch_386
    const-string/jumbo v0, "registerIntentSenderCancelListenerEx"

    return-object v0

    .line 1629
    :pswitch_38a
    const-string v0, "getInfoForIntentSender"

    return-object v0

    .line 1625
    :pswitch_38d
    const-string v0, "cancelIntentSender"

    return-object v0

    .line 1621
    :pswitch_390
    const-string v0, "getIntentSenderWithFeature"

    return-object v0

    .line 1617
    :pswitch_393
    const-string v0, "getIntentSender"

    return-object v0

    .line 1613
    :pswitch_396
    const-string/jumbo v0, "serviceDoneExecuting"

    return-object v0

    .line 1609
    :pswitch_39a
    const-string v0, "getRecentTasks"

    return-object v0

    .line 1605
    :pswitch_39d
    const-string/jumbo v0, "signalPersistentProcesses"

    return-object v0

    .line 1601
    :pswitch_3a1
    const-string/jumbo v0, "showWaitingForDebugger"

    return-object v0

    .line 1597
    :pswitch_3a5
    const-string/jumbo v0, "setActivityController"

    return-object v0

    .line 1593
    :pswitch_3a9
    const-string/jumbo v0, "revokeUriPermission"

    return-object v0

    .line 1589
    :pswitch_3ad
    const-string v0, "grantUriPermission"

    return-object v0

    .line 1585
    :pswitch_3b0
    const-string v0, "checkUriPermissions"

    return-object v0

    .line 1581
    :pswitch_3b3
    const-string v0, "checkUriPermission"

    return-object v0

    .line 1577
    :pswitch_3b6
    const-string v0, "getProcessLimit"

    return-object v0

    .line 1573
    :pswitch_3b9
    const-string/jumbo v0, "setProcessLimit"

    return-object v0

    .line 1569
    :pswitch_3bd
    const-string/jumbo v0, "stopServiceToken"

    return-object v0

    .line 1565
    :pswitch_3c1
    const-string/jumbo v0, "updateMccMncConfiguration"

    return-object v0

    .line 1561
    :pswitch_3c5
    const-string/jumbo v0, "updateConfiguration"

    return-object v0

    .line 1557
    :pswitch_3c9
    const-string v0, "getConfiguration"

    return-object v0

    .line 1553
    :pswitch_3cc
    const-string v0, "finishInstrumentation"

    return-object v0

    .line 1549
    :pswitch_3cf
    const-string v0, "addInstrumentationResults"

    return-object v0

    .line 1545
    :pswitch_3d2
    const-string/jumbo v0, "startInstrumentation"

    return-object v0

    .line 1541
    :pswitch_3d6
    const-string/jumbo v0, "setAlwaysFinish"

    return-object v0

    .line 1537
    :pswitch_3da
    const-string/jumbo v0, "setAgentApp"

    return-object v0

    .line 1533
    :pswitch_3de
    const-string/jumbo v0, "setDebugApp"

    return-object v0

    .line 1529
    :pswitch_3e2
    const-string/jumbo v0, "publishService"

    return-object v0

    .line 1525
    :pswitch_3e6
    const-string/jumbo v0, "unbindService"

    return-object v0

    .line 1521
    :pswitch_3ea
    const-string/jumbo v0, "updateServiceGroup"

    return-object v0

    .line 1517
    :pswitch_3ee
    const-string v0, "bindServiceInstance"

    return-object v0

    .line 1513
    :pswitch_3f1
    const-string v0, "bindService"

    return-object v0

    .line 1509
    :pswitch_3f4
    const-string/jumbo v0, "stopService"

    return-object v0

    .line 1505
    :pswitch_3f8
    const-string/jumbo v0, "startService"

    return-object v0

    .line 1501
    :pswitch_3fc
    const-string v0, "getRunningServiceControlPanel"

    return-object v0

    .line 1497
    :pswitch_3ff
    const-string/jumbo v0, "refContentProvider"

    return-object v0

    .line 1493
    :pswitch_403
    const-string/jumbo v0, "publishContentProviders"

    return-object v0

    .line 1489
    :pswitch_407
    const-string v0, "getContentProvider"

    return-object v0

    .line 1485
    :pswitch_40a
    const-string v0, "getTaskForActivity"

    return-object v0

    .line 1481
    :pswitch_40d
    const-string/jumbo v0, "moveTaskToFront"

    return-object v0

    .line 1477
    :pswitch_411
    const-string v0, "getTasks"

    return-object v0

    .line 1473
    :pswitch_414
    const-string v0, "attachApplication"

    return-object v0

    .line 1469
    :pswitch_417
    const-string v0, "finishReceiver"

    return-object v0

    .line 1465
    :pswitch_41a
    const-string/jumbo v0, "unbroadcastIntent"

    return-object v0

    .line 1461
    :pswitch_41e
    const-string v0, "broadcastIntentWithFeature"

    return-object v0

    .line 1457
    :pswitch_421
    const-string v0, "broadcastIntent"

    return-object v0

    .line 1453
    :pswitch_424
    const-string/jumbo v0, "unregisterReceiver"

    return-object v0

    .line 1449
    :pswitch_428
    const-string/jumbo v0, "registerReceiverWithFeature"

    return-object v0

    .line 1445
    :pswitch_42c
    const-string/jumbo v0, "registerReceiver"

    return-object v0

    .line 1441
    :pswitch_430
    const-string v0, "finishActivity"

    return-object v0

    .line 1437
    :pswitch_433
    const-string/jumbo v0, "unhandledBack"

    return-object v0

    .line 1433
    :pswitch_437
    const-string/jumbo v0, "startActivityWithFeature"

    return-object v0

    .line 1429
    :pswitch_43b
    const-string/jumbo v0, "startActivity"

    return-object v0

    .line 1425
    :pswitch_43f
    const-string v0, "handleApplicationCrash"

    return-object v0

    .line 1421
    :pswitch_442
    const-string v0, "checkPermission"

    return-object v0

    .line 1417
    :pswitch_445
    const-string v0, "getUidProcessState"

    return-object v0

    .line 1413
    :pswitch_448
    const-string v0, "isUidActive"

    return-object v0

    .line 1409
    :pswitch_44b
    const-string/jumbo v0, "unregisterUidObserver"

    return-object v0

    .line 1405
    :pswitch_44f
    const-string/jumbo v0, "registerUidObserver"

    return-object v0

    .line 1401
    :pswitch_453
    const-string/jumbo v0, "openContentUri"

    return-object v0

    nop

    :pswitch_data_458
    .packed-switch 0x1
        :pswitch_453
        :pswitch_44f
        :pswitch_44b
        :pswitch_448
        :pswitch_445
        :pswitch_442
        :pswitch_43f
        :pswitch_43b
        :pswitch_437
        :pswitch_433
        :pswitch_430
        :pswitch_42c
        :pswitch_428
        :pswitch_424
        :pswitch_421
        :pswitch_41e
        :pswitch_41a
        :pswitch_417
        :pswitch_414
        :pswitch_411
        :pswitch_40d
        :pswitch_40a
        :pswitch_407
        :pswitch_403
        :pswitch_3ff
        :pswitch_3fc
        :pswitch_3f8
        :pswitch_3f4
        :pswitch_3f1
        :pswitch_3ee
        :pswitch_3ea
        :pswitch_3e6
        :pswitch_3e2
        :pswitch_3de
        :pswitch_3da
        :pswitch_3d6
        :pswitch_3d2
        :pswitch_3cf
        :pswitch_3cc
        :pswitch_3c9
        :pswitch_3c5
        :pswitch_3c1
        :pswitch_3bd
        :pswitch_3b9
        :pswitch_3b6
        :pswitch_3b3
        :pswitch_3b0
        :pswitch_3ad
        :pswitch_3a9
        :pswitch_3a5
        :pswitch_3a1
        :pswitch_39d
        :pswitch_39a
        :pswitch_396
        :pswitch_393
        :pswitch_390
        :pswitch_38d
        :pswitch_38a
        :pswitch_386
        :pswitch_382
        :pswitch_37f
        :pswitch_37b
        :pswitch_377
        :pswitch_373
        :pswitch_36f
        :pswitch_36b
        :pswitch_367
        :pswitch_364
        :pswitch_360
        :pswitch_35d
        :pswitch_35a
        :pswitch_357
        :pswitch_353
        :pswitch_34f
        :pswitch_34c
        :pswitch_349
        :pswitch_346
        :pswitch_343
        :pswitch_33f
        :pswitch_33b
        :pswitch_337
        :pswitch_333
        :pswitch_32f
        :pswitch_32c
        :pswitch_329
        :pswitch_325
        :pswitch_322
        :pswitch_31f
        :pswitch_31c
        :pswitch_319
        :pswitch_316
        :pswitch_313
        :pswitch_310
        :pswitch_30d
        :pswitch_30a
        :pswitch_307
        :pswitch_304
        :pswitch_301
        :pswitch_2fe
        :pswitch_2fb
        :pswitch_2f8
        :pswitch_2f5
        :pswitch_2f2
        :pswitch_2ef
        :pswitch_2ec
        :pswitch_2e8
        :pswitch_2e4
        :pswitch_2e1
        :pswitch_2de
        :pswitch_2da
        :pswitch_2d6
        :pswitch_2d2
        :pswitch_2ce
        :pswitch_2cb
        :pswitch_2c7
        :pswitch_2c3
        :pswitch_2c0
        :pswitch_2bc
        :pswitch_2b9
        :pswitch_2b6
        :pswitch_2b2
        :pswitch_2ae
        :pswitch_2ab
        :pswitch_2a8
        :pswitch_2a5
        :pswitch_2a2
        :pswitch_29f
        :pswitch_29b
        :pswitch_298
        :pswitch_294
        :pswitch_290
        :pswitch_28c
        :pswitch_288
        :pswitch_284
        :pswitch_280
        :pswitch_27d
        :pswitch_279
        :pswitch_275
        :pswitch_271
        :pswitch_26d
        :pswitch_269
        :pswitch_265
        :pswitch_261
        :pswitch_25d
        :pswitch_259
        :pswitch_256
        :pswitch_253
        :pswitch_250
        :pswitch_24d
        :pswitch_24a
        :pswitch_247
        :pswitch_243
        :pswitch_240
        :pswitch_23d
        :pswitch_239
        :pswitch_235
        :pswitch_232
        :pswitch_22e
        :pswitch_22a
        :pswitch_227
        :pswitch_224
        :pswitch_220
        :pswitch_21d
        :pswitch_219
        :pswitch_216
        :pswitch_212
        :pswitch_20e
        :pswitch_20b
        :pswitch_208
        :pswitch_204
        :pswitch_200
        :pswitch_1fc
        :pswitch_1f8
        :pswitch_1f5
        :pswitch_1f1
        :pswitch_1ee
        :pswitch_1ea
        :pswitch_1e7
        :pswitch_1e3
        :pswitch_1df
        :pswitch_1db
        :pswitch_1d8
        :pswitch_1d4
        :pswitch_1d0
        :pswitch_1cd
        :pswitch_1c9
        :pswitch_1c5
        :pswitch_1c2
        :pswitch_1be
        :pswitch_1bb
        :pswitch_1b8
        :pswitch_1b4
        :pswitch_1b0
        :pswitch_1ac
        :pswitch_1a8
        :pswitch_1a5
        :pswitch_1a1
        :pswitch_19d
        :pswitch_199
        :pswitch_196
        :pswitch_192
        :pswitch_18e
        :pswitch_18a
        :pswitch_187
        :pswitch_183
        :pswitch_17f
        :pswitch_17c
        :pswitch_178
        :pswitch_174
        :pswitch_170
        :pswitch_16c
        :pswitch_168
        :pswitch_164
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
        :pswitch_138
        :pswitch_134
        :pswitch_130
        :pswitch_12c
        :pswitch_128
        :pswitch_124
        :pswitch_120
        :pswitch_11c
        :pswitch_118
        :pswitch_114
        :pswitch_110
        :pswitch_10c
        :pswitch_108
        :pswitch_104
        :pswitch_100
        :pswitch_fc
        :pswitch_f8
        :pswitch_f4
        :pswitch_f0
        :pswitch_ec
        :pswitch_e8
        :pswitch_e4
        :pswitch_e0
        :pswitch_dd
        :pswitch_da
        :pswitch_d7
        :pswitch_d4
        :pswitch_d1
        :pswitch_ce
        :pswitch_cb
        :pswitch_c8
        :pswitch_c5
        :pswitch_c2
        :pswitch_bf
        :pswitch_bc
        :pswitch_b9
        :pswitch_b6
        :pswitch_b3
        :pswitch_b0
        :pswitch_ad
        :pswitch_aa
        :pswitch_a7
        :pswitch_a4
        :pswitch_a1
        :pswitch_9e
        :pswitch_9b
        :pswitch_98
        :pswitch_95
        :pswitch_92
        :pswitch_8f
        :pswitch_8c
        :pswitch_89
        :pswitch_86
        :pswitch_83
        :pswitch_80
        :pswitch_7d
        :pswitch_7a
        :pswitch_77
        :pswitch_74
        :pswitch_71
        :pswitch_6e
        :pswitch_6b
        :pswitch_68
        :pswitch_65
        :pswitch_61
        :pswitch_5e
        :pswitch_5b
        :pswitch_57
        :pswitch_54
        :pswitch_51
        :pswitch_4e
        :pswitch_4a
        :pswitch_46
        :pswitch_43
        :pswitch_40
        :pswitch_3d
        :pswitch_39
        :pswitch_36
        :pswitch_33
        :pswitch_30
        :pswitch_2c
        :pswitch_28
        :pswitch_24
        :pswitch_21
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_10
        :pswitch_c
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method private blacklist onTransact$bindBackupAgent$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 9
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11650
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 11652
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 11654
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 11656
    .local v2, "_arg2":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 11657
    .local v3, "_arg3":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 11658
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->bindBackupAgent(Ljava/lang/String;III)Z

    move-result v4

    .line 11659
    .local v4, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 11660
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 11661
    const/4 v5, 0x1

    return v5
.end method

.method private greylist-max-o onTransact$bindService$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 21
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11319
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v0

    .line 11321
    .local v0, "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v10

    .line 11323
    .local v10, "_arg1":Landroid/os/IBinder;
    sget-object v1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v11, p1

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/content/Intent;

    .line 11325
    .local v12, "_arg2":Landroid/content/Intent;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 11327
    .local v13, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IServiceConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IServiceConnection;

    move-result-object v14

    .line 11329
    .local v14, "_arg4":Landroid/app/IServiceConnection;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 11331
    .local v15, "_arg5":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 11333
    .local v16, "_arg6":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 11334
    .local v17, "_arg7":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 11335
    move-object/from16 v1, p0

    move-object v2, v0

    move-object v3, v10

    move-object v4, v12

    move-object v5, v13

    move-object v6, v14

    move v7, v15

    move-object/from16 v8, v16

    move/from16 v9, v17

    invoke-virtual/range {v1 .. v9}, Landroid/app/IActivityManager$Stub;->bindService(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;Landroid/app/IServiceConnection;ILjava/lang/String;I)I

    move-result v1

    .line 11336
    .local v1, "_result":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->writeNoException()V

    .line 11337
    move-object/from16 v2, p2

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 11338
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$bindServiceInstance$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 23
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11344
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v0

    .line 11346
    .local v0, "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 11348
    .local v11, "_arg1":Landroid/os/IBinder;
    sget-object v1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v12, p1

    invoke-virtual {v12, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Landroid/content/Intent;

    .line 11350
    .local v13, "_arg2":Landroid/content/Intent;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 11352
    .local v14, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IServiceConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IServiceConnection;

    move-result-object v15

    .line 11354
    .local v15, "_arg4":Landroid/app/IServiceConnection;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 11356
    .local v16, "_arg5":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 11358
    .local v17, "_arg6":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 11360
    .local v18, "_arg7":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 11361
    .local v19, "_arg8":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 11362
    move-object/from16 v1, p0

    move-object v2, v0

    move-object v3, v11

    move-object v4, v13

    move-object v5, v14

    move-object v6, v15

    move/from16 v7, v16

    move-object/from16 v8, v17

    move-object/from16 v9, v18

    move/from16 v10, v19

    invoke-virtual/range {v1 .. v10}, Landroid/app/IActivityManager$Stub;->bindServiceInstance(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;Landroid/app/IServiceConnection;ILjava/lang/String;Ljava/lang/String;I)I

    move-result v1

    .line 11363
    .local v1, "_result":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->writeNoException()V

    .line 11364
    move-object/from16 v2, p2

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 11365
    const/4 v3, 0x1

    return v3
.end method

.method private greylist-max-o onTransact$broadcastIntent$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 31
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11156
    move-object/from16 v0, p1

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v1

    .line 11158
    .local v1, "_arg0":Landroid/app/IApplicationThread;
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/content/Intent;

    .line 11160
    .local v16, "_arg1":Landroid/content/Intent;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 11162
    .local v17, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    move-result-object v18

    .line 11164
    .local v18, "_arg3":Landroid/content/IIntentReceiver;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 11166
    .local v19, "_arg4":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 11168
    .local v20, "_arg5":Ljava/lang/String;
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v21, v2

    check-cast v21, Landroid/os/Bundle;

    .line 11170
    .local v21, "_arg6":Landroid/os/Bundle;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v22

    .line 11172
    .local v22, "_arg7":[Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .line 11174
    .local v23, "_arg8":I
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v24, v2

    check-cast v24, Landroid/os/Bundle;

    .line 11176
    .local v24, "_arg9":Landroid/os/Bundle;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v25

    .line 11178
    .local v25, "_arg10":Z
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v26

    .line 11180
    .local v26, "_arg11":Z
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 11181
    .local v27, "_arg12":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 11182
    move-object/from16 v2, p0

    move-object v3, v1

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    move/from16 v7, v19

    move-object/from16 v8, v20

    move-object/from16 v9, v21

    move-object/from16 v10, v22

    move/from16 v11, v23

    move-object/from16 v12, v24

    move/from16 v13, v25

    move/from16 v14, v26

    move/from16 v15, v27

    invoke-virtual/range {v2 .. v15}, Landroid/app/IActivityManager$Stub;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I

    move-result v2

    .line 11183
    .local v2, "_result":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->writeNoException()V

    .line 11184
    move-object/from16 v3, p2

    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 11185
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$broadcastIntentWithFeature$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 37
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    .line 11191
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v18

    .local v18, "_arg0":Landroid/app/IApplicationThread;
    move-object/from16 v2, v18

    .line 11193
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .local v19, "_arg1":Ljava/lang/String;
    move-object/from16 v3, v19

    .line 11195
    sget-object v4, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v20, v4

    check-cast v20, Landroid/content/Intent;

    .local v20, "_arg2":Landroid/content/Intent;
    move-object/from16 v4, v20

    .line 11197
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v21

    .local v21, "_arg3":Ljava/lang/String;
    move-object/from16 v5, v21

    .line 11199
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    move-result-object v22

    .local v22, "_arg4":Landroid/content/IIntentReceiver;
    move-object/from16 v6, v22

    .line 11201
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .local v23, "_arg5":I
    move/from16 v7, v23

    .line 11203
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    .local v24, "_arg6":Ljava/lang/String;
    move-object/from16 v8, v24

    .line 11205
    sget-object v9, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v9

    move-object/from16 v25, v9

    check-cast v25, Landroid/os/Bundle;

    .local v25, "_arg7":Landroid/os/Bundle;
    move-object/from16 v9, v25

    .line 11207
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v26

    .local v26, "_arg8":[Ljava/lang/String;
    move-object/from16 v10, v26

    .line 11209
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v27

    .local v27, "_arg9":[Ljava/lang/String;
    move-object/from16 v11, v27

    .line 11211
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v28

    .local v28, "_arg10":[Ljava/lang/String;
    move-object/from16 v12, v28

    .line 11213
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v29

    .local v29, "_arg11":I
    move/from16 v13, v29

    .line 11215
    sget-object v14, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v14

    move-object/from16 v30, v14

    check-cast v30, Landroid/os/Bundle;

    .local v30, "_arg12":Landroid/os/Bundle;
    move-object/from16 v14, v30

    .line 11217
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v31

    .local v31, "_arg13":Z
    move/from16 v15, v31

    .line 11219
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v32

    .local v32, "_arg14":Z
    move/from16 v16, v32

    .line 11221
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v33

    .local v33, "_arg15":I
    move/from16 v17, v33

    .line 11222
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 11223
    invoke-virtual/range {v1 .. v17}, Landroid/app/IActivityManager$Stub;->broadcastIntentWithFeature(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I

    move-result v1

    .line 11224
    .local v1, "_result":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->writeNoException()V

    .line 11225
    move-object/from16 v2, p2

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 11226
    const/4 v3, 0x1

    return v3
.end method

.method private greylist-max-o onTransact$checkUriPermission$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 16
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11410
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 11412
    .local v0, "_arg0":Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 11414
    .local v8, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 11416
    .local v9, "_arg2":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 11418
    .local v10, "_arg3":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 11420
    .local v11, "_arg4":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v12

    .line 11421
    .local v12, "_arg5":Landroid/os/IBinder;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 11422
    move-object v1, p0

    move-object v2, v0

    move v3, v8

    move v4, v9

    move v5, v10

    move v6, v11

    move-object v7, v12

    invoke-virtual/range {v1 .. v7}, Landroid/app/IActivityManager$Stub;->checkUriPermission(Landroid/net/Uri;IIIILandroid/os/IBinder;)I

    move-result v1

    .line 11423
    .local v1, "_result":I
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 11424
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 11425
    const/4 v2, 0x1

    return v2
.end method

.method private blacklist onTransact$checkUriPermissions$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 16
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11431
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    .line 11433
    .local v0, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 11435
    .local v8, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 11437
    .local v9, "_arg2":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 11439
    .local v10, "_arg3":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 11441
    .local v11, "_arg4":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v12

    .line 11442
    .local v12, "_arg5":Landroid/os/IBinder;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 11443
    move-object v1, p0

    move-object v2, v0

    move v3, v8

    move v4, v9

    move v5, v10

    move v6, v11

    move-object v7, v12

    invoke-virtual/range {v1 .. v7}, Landroid/app/IActivityManager$Stub;->checkUriPermissions(Ljava/util/List;IIIILandroid/os/IBinder;)[I

    move-result-object v1

    .line 11444
    .local v1, "_result":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 11445
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 11446
    const/4 v2, 0x1

    return v2
.end method

.method private blacklist onTransact$clearApplicationUserData$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 9
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11604
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 11606
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 11608
    .local v1, "_arg1":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/content/pm/IPackageDataObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageDataObserver;

    move-result-object v2

    .line 11610
    .local v2, "_arg2":Landroid/content/pm/IPackageDataObserver;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 11611
    .local v3, "_arg3":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 11612
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->clearApplicationUserData(Ljava/lang/String;ZLandroid/content/pm/IPackageDataObserver;I)Z

    move-result v4

    .line 11613
    .local v4, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 11614
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 11615
    const/4 v5, 0x1

    return v5
.end method

.method private blacklist onTransact$crashApplicationWithType$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 18
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11737
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 11739
    .local v8, "_arg0":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 11741
    .local v9, "_arg1":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 11743
    .local v10, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 11745
    .local v11, "_arg3":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 11747
    .local v12, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v13

    .line 11749
    .local v13, "_arg5":Z
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 11750
    .local v14, "_arg6":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 11751
    move-object v0, p0

    move v1, v8

    move v2, v9

    move-object v3, v10

    move v4, v11

    move-object v5, v12

    move v6, v13

    move v7, v14

    invoke-virtual/range {v0 .. v7}, Landroid/app/IActivityManager$Stub;->crashApplicationWithType(IILjava/lang/String;ILjava/lang/String;ZI)V

    .line 11752
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->writeNoException()V

    .line 11753
    const/4 v0, 0x1

    return v0
.end method

.method private blacklist onTransact$crashApplicationWithTypeWithExtras$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 20
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11759
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 11761
    .local v9, "_arg0":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 11763
    .local v10, "_arg1":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 11765
    .local v11, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 11767
    .local v12, "_arg3":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 11769
    .local v13, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v14

    .line 11771
    .local v14, "_arg5":Z
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 11773
    .local v15, "_arg6":I
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v8, p1

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/os/Bundle;

    .line 11774
    .local v16, "_arg7":Landroid/os/Bundle;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 11775
    move-object/from16 v0, p0

    move v1, v9

    move v2, v10

    move-object v3, v11

    move v4, v12

    move-object v5, v13

    move v6, v14

    move v7, v15

    move-object/from16 v8, v16

    invoke-virtual/range {v0 .. v8}, Landroid/app/IActivityManager$Stub;->crashApplicationWithTypeWithExtras(IILjava/lang/String;ILjava/lang/String;ZILandroid/os/Bundle;)V

    .line 11776
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->writeNoException()V

    .line 11777
    const/4 v0, 0x1

    return v0
.end method

.method private greylist-max-o onTransact$dumpHeap$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 21
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11785
    move-object/from16 v0, p1

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 11787
    .local v10, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 11789
    .local v11, "_arg1":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v12

    .line 11791
    .local v12, "_arg2":Z
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v13

    .line 11793
    .local v13, "_arg3":Z
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v14

    .line 11795
    .local v14, "_arg4":Z
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 11797
    .local v15, "_arg5":Ljava/lang/String;
    sget-object v1, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, Landroid/os/ParcelFileDescriptor;

    .line 11799
    .local v16, "_arg6":Landroid/os/ParcelFileDescriptor;
    sget-object v1, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v17, v1

    check-cast v17, Landroid/os/RemoteCallback;

    .line 11800
    .local v17, "_arg7":Landroid/os/RemoteCallback;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 11801
    move-object/from16 v1, p0

    move-object v2, v10

    move v3, v11

    move v4, v12

    move v5, v13

    move v6, v14

    move-object v7, v15

    move-object/from16 v8, v16

    move-object/from16 v9, v17

    invoke-virtual/range {v1 .. v9}, Landroid/app/IActivityManager$Stub;->dumpHeap(Ljava/lang/String;IZZZLjava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/RemoteCallback;)Z

    move-result v1

    .line 11802
    .local v1, "_result":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->writeNoException()V

    .line 11803
    move-object/from16 v2, p2

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 11804
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$enableAppDebugConfig$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12195
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 12197
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 12199
    .local v1, "_arg1":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 12201
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 12202
    .local v3, "_arg3":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 12203
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->enableAppDebugConfig(Ljava/lang/String;ZLjava/lang/String;I)V

    .line 12204
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 12205
    const/4 v4, 0x1

    return v4
.end method

.method private greylist-max-o onTransact$finishReceiver$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 16
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11233
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 11235
    .local v7, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 11237
    .local v8, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 11239
    .local v9, "_arg2":Ljava/lang/String;
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/os/Bundle;

    .line 11241
    .local v10, "_arg3":Landroid/os/Bundle;
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v11

    .line 11243
    .local v11, "_arg4":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 11244
    .local v12, "_arg5":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 11245
    move-object v0, p0

    move-object v1, v7

    move v2, v8

    move-object v3, v9

    move-object v4, v10

    move v5, v11

    move v6, v12

    invoke-virtual/range {v0 .. v6}, Landroid/app/IActivityManager$Stub;->finishReceiver(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/Bundle;ZI)V

    .line 11246
    const/4 v0, 0x1

    return v0
.end method

.method private blacklist onTransact$getContentProvider$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 14
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11273
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v0

    .line 11275
    .local v0, "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 11277
    .local v7, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 11279
    .local v8, "_arg2":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 11281
    .local v9, "_arg3":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v10

    .line 11282
    .local v10, "_arg4":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 11283
    move-object v1, p0

    move-object v2, v0

    move-object v3, v7

    move-object v4, v8

    move v5, v9

    move v6, v10

    invoke-virtual/range {v1 .. v6}, Landroid/app/IActivityManager$Stub;->getContentProvider(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;IZ)Landroid/app/ContentProviderHolder;

    move-result-object v1

    .line 11284
    .local v1, "_result":Landroid/app/ContentProviderHolder;
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 11285
    const/4 v2, 0x1

    invoke-virtual {p2, v1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 11286
    return v2
.end method

.method private blacklist onTransact$getContentProviderExternal$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 9
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11825
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 11827
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 11829
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 11831
    .local v2, "_arg2":Landroid/os/IBinder;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 11832
    .local v3, "_arg3":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 11833
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->getContentProviderExternal(Ljava/lang/String;ILandroid/os/IBinder;Ljava/lang/String;)Landroid/app/ContentProviderHolder;

    move-result-object v4

    .line 11834
    .local v4, "_result":Landroid/app/ContentProviderHolder;
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 11835
    const/4 v5, 0x1

    invoke-virtual {p2, v4, v5}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 11836
    return v5
.end method

.method private blacklist onTransact$getHistoricalProcessExitReasons$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 9
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12161
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 12163
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 12165
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 12167
    .local v2, "_arg2":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 12168
    .local v3, "_arg3":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 12169
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->getHistoricalProcessExitReasons(Ljava/lang/String;III)Landroid/content/pm/ParceledListSlice;

    move-result-object v4

    .line 12170
    .local v4, "_result":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/app/ApplicationExitInfo;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 12171
    const/4 v5, 0x1

    invoke-virtual {p2, v4, v5}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 12172
    return v5
.end method

.method private greylist-max-o onTransact$getIntentSender$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 25
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11493
    move-object/from16 v0, p1

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 11495
    .local v12, "_arg0":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 11497
    .local v13, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v14

    .line 11499
    .local v14, "_arg2":Landroid/os/IBinder;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 11501
    .local v15, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 11503
    .local v16, "_arg4":I
    sget-object v1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v17, v1

    check-cast v17, [Landroid/content/Intent;

    .line 11505
    .local v17, "_arg5":[Landroid/content/Intent;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v18

    .line 11507
    .local v18, "_arg6":[Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 11509
    .local v19, "_arg7":I
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v20, v1

    check-cast v20, Landroid/os/Bundle;

    .line 11511
    .local v20, "_arg8":Landroid/os/Bundle;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 11512
    .local v21, "_arg9":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 11513
    move-object/from16 v1, p0

    move v2, v12

    move-object v3, v13

    move-object v4, v14

    move-object v5, v15

    move/from16 v6, v16

    move-object/from16 v7, v17

    move-object/from16 v8, v18

    move/from16 v9, v19

    move-object/from16 v10, v20

    move/from16 v11, v21

    invoke-virtual/range {v1 .. v11}, Landroid/app/IActivityManager$Stub;->getIntentSender(ILjava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;I)Landroid/content/IIntentSender;

    move-result-object v1

    .line 11514
    .local v1, "_result":Landroid/content/IIntentSender;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->writeNoException()V

    .line 11515
    move-object/from16 v2, p2

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 11516
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$getIntentSenderWithFeature$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 27
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11522
    move-object/from16 v0, p1

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 11524
    .local v13, "_arg0":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 11526
    .local v14, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 11528
    .local v15, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v16

    .line 11530
    .local v16, "_arg3":Landroid/os/IBinder;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 11532
    .local v17, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 11534
    .local v18, "_arg5":I
    sget-object v1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v19, v1

    check-cast v19, [Landroid/content/Intent;

    .line 11536
    .local v19, "_arg6":[Landroid/content/Intent;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v20

    .line 11538
    .local v20, "_arg7":[Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 11540
    .local v21, "_arg8":I
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v22, v1

    check-cast v22, Landroid/os/Bundle;

    .line 11542
    .local v22, "_arg9":Landroid/os/Bundle;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .line 11543
    .local v23, "_arg10":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 11544
    move-object/from16 v1, p0

    move v2, v13

    move-object v3, v14

    move-object v4, v15

    move-object/from16 v5, v16

    move-object/from16 v6, v17

    move/from16 v7, v18

    move-object/from16 v8, v19

    move-object/from16 v9, v20

    move/from16 v10, v21

    move-object/from16 v11, v22

    move/from16 v12, v23

    invoke-virtual/range {v1 .. v12}, Landroid/app/IActivityManager$Stub;->getIntentSenderWithFeature(ILjava/lang/String;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;I)Landroid/content/IIntentSender;

    move-result-object v1

    .line 11545
    .local v1, "_result":Landroid/content/IIntentSender;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->writeNoException()V

    .line 11546
    move-object/from16 v2, p2

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 11547
    const/4 v3, 0x1

    return v3
.end method

.method private blacklist onTransact$grantUriPermission$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 14
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11452
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v0

    .line 11454
    .local v0, "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 11456
    .local v7, "_arg1":Ljava/lang/String;
    sget-object v1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/net/Uri;

    .line 11458
    .local v8, "_arg2":Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 11460
    .local v9, "_arg3":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 11461
    .local v10, "_arg4":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 11462
    move-object v1, p0

    move-object v2, v0

    move-object v3, v7

    move-object v4, v8

    move v5, v9

    move v6, v10

    invoke-virtual/range {v1 .. v6}, Landroid/app/IActivityManager$Stub;->grantUriPermission(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/net/Uri;II)V

    .line 11463
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 11464
    const/4 v1, 0x1

    return v1
.end method

.method private blacklist onTransact$handleApplicationWtf$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 14
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11712
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 11714
    .local v6, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 11716
    .local v7, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v8

    .line 11718
    .local v8, "_arg2":Z
    sget-object v0, Landroid/app/ApplicationErrorReport$ParcelableCrashInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/app/ApplicationErrorReport$ParcelableCrashInfo;

    .line 11720
    .local v9, "_arg3":Landroid/app/ApplicationErrorReport$ParcelableCrashInfo;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 11721
    .local v10, "_arg4":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 11722
    move-object v0, p0

    move-object v1, v6

    move-object v2, v7

    move v3, v8

    move-object v4, v9

    move v5, v10

    invoke-virtual/range {v0 .. v5}, Landroid/app/IActivityManager$Stub;->handleApplicationWtf(Landroid/os/IBinder;Ljava/lang/String;ZLandroid/app/ApplicationErrorReport$ParcelableCrashInfo;I)Z

    move-result v0

    .line 11723
    .local v0, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 11724
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 11725
    const/4 v1, 0x1

    return v1
.end method

.method private greylist-max-o onTransact$handleIncomingUser$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 18
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11669
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 11671
    .local v8, "_arg0":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 11673
    .local v9, "_arg1":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 11675
    .local v10, "_arg2":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v11

    .line 11677
    .local v11, "_arg3":Z
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v12

    .line 11679
    .local v12, "_arg4":Z
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 11681
    .local v13, "_arg5":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 11682
    .local v14, "_arg6":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 11683
    move-object v0, p0

    move v1, v8

    move v2, v9

    move v3, v10

    move v4, v11

    move v5, v12

    move-object v6, v13

    move-object v7, v14

    invoke-virtual/range {v0 .. v7}, Landroid/app/IActivityManager$Stub;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 11684
    .local v0, "_result":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->writeNoException()V

    .line 11685
    move-object/from16 v1, p2

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 11686
    const/4 v2, 0x1

    return v2
.end method

.method private blacklist onTransact$killApplication$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11693
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 11695
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 11697
    .local v1, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 11699
    .local v2, "_arg2":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 11700
    .local v3, "_arg3":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 11701
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->killApplication(Ljava/lang/String;IILjava/lang/String;)V

    .line 11702
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 11703
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$moveTaskToFront$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 14
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11254
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v0

    .line 11256
    .local v0, "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 11258
    .local v7, "_arg1":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 11260
    .local v8, "_arg2":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 11262
    .local v9, "_arg3":I
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/os/Bundle;

    .line 11263
    .local v10, "_arg4":Landroid/os/Bundle;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 11264
    move-object v1, p0

    move-object v2, v0

    move-object v3, v7

    move v4, v8

    move v5, v9

    move-object v6, v10

    invoke-virtual/range {v1 .. v6}, Landroid/app/IActivityManager$Stub;->moveTaskToFront(Landroid/app/IApplicationThread;Ljava/lang/String;IILandroid/os/Bundle;)V

    .line 11265
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 11266
    const/4 v1, 0x1

    return v1
.end method

.method private blacklist onTransact$noteAlarmFinish$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11994
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v0

    .line 11996
    .local v0, "_arg0":Landroid/content/IIntentSender;
    sget-object v1, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/WorkSource;

    .line 11998
    .local v1, "_arg1":Landroid/os/WorkSource;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 12000
    .local v2, "_arg2":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 12001
    .local v3, "_arg3":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 12002
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->noteAlarmFinish(Landroid/content/IIntentSender;Landroid/os/WorkSource;ILjava/lang/String;)V

    .line 12003
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 12004
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$noteAlarmStart$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 8
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11978
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v0

    .line 11980
    .local v0, "_arg0":Landroid/content/IIntentSender;
    sget-object v1, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/WorkSource;

    .line 11982
    .local v1, "_arg1":Landroid/os/WorkSource;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 11984
    .local v2, "_arg2":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 11985
    .local v3, "_arg3":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 11986
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->noteAlarmStart(Landroid/content/IIntentSender;Landroid/os/WorkSource;ILjava/lang/String;)V

    .line 11987
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 11988
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$noteWakeupAlarm$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 14
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11558
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v0

    .line 11560
    .local v0, "_arg0":Landroid/content/IIntentSender;
    sget-object v1, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/os/WorkSource;

    .line 11562
    .local v7, "_arg1":Landroid/os/WorkSource;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 11564
    .local v8, "_arg2":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 11566
    .local v9, "_arg3":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 11567
    .local v10, "_arg4":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 11568
    move-object v1, p0

    move-object v2, v0

    move-object v3, v7

    move v4, v8

    move-object v5, v9

    move-object v6, v10

    invoke-virtual/range {v1 .. v6}, Landroid/app/IActivityManager$Stub;->noteWakeupAlarm(Landroid/content/IIntentSender;Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;)V

    .line 11569
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 11570
    const/4 v1, 0x1

    return v1
.end method

.method private greylist-max-o onTransact$profileControl$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 14
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11628
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 11630
    .local v6, "_arg0":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 11632
    .local v7, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v8

    .line 11634
    .local v8, "_arg2":Z
    sget-object v0, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/app/ProfilerInfo;

    .line 11636
    .local v9, "_arg3":Landroid/app/ProfilerInfo;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 11637
    .local v10, "_arg4":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 11638
    move-object v0, p0

    move-object v1, v6

    move v2, v7

    move v3, v8

    move-object v4, v9

    move v5, v10

    invoke-virtual/range {v0 .. v5}, Landroid/app/IActivityManager$Stub;->profileControl(Ljava/lang/String;IZLandroid/app/ProfilerInfo;I)Z

    move-result v0

    .line 11639
    .local v0, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 11640
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 11641
    const/4 v1, 0x1

    return v1
.end method

.method private greylist-max-o onTransact$registerReceiver$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 19
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11105
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v0

    .line 11107
    .local v0, "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 11109
    .local v9, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    move-result-object v10

    .line 11111
    .local v10, "_arg2":Landroid/content/IIntentReceiver;
    sget-object v1, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v11, p1

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/content/IntentFilter;

    .line 11113
    .local v12, "_arg3":Landroid/content/IntentFilter;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 11115
    .local v13, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 11117
    .local v14, "_arg5":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 11118
    .local v15, "_arg6":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 11119
    move-object/from16 v1, p0

    move-object v2, v0

    move-object v3, v9

    move-object v4, v10

    move-object v5, v12

    move-object v6, v13

    move v7, v14

    move v8, v15

    invoke-virtual/range {v1 .. v8}, Landroid/app/IActivityManager$Stub;->registerReceiver(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/IIntentReceiver;Landroid/content/IntentFilter;Ljava/lang/String;II)Landroid/content/Intent;

    move-result-object v1

    .line 11120
    .local v1, "_result":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->writeNoException()V

    .line 11121
    const/4 v2, 0x1

    move-object/from16 v3, p2

    invoke-virtual {v3, v1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 11122
    return v2
.end method

.method private blacklist onTransact$registerReceiverWithFeature$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 23
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11128
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v0

    .line 11130
    .local v0, "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 11132
    .local v11, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 11134
    .local v12, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 11136
    .local v13, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    move-result-object v14

    .line 11138
    .local v14, "_arg4":Landroid/content/IIntentReceiver;
    sget-object v1, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v15, p1

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, Landroid/content/IntentFilter;

    .line 11140
    .local v16, "_arg5":Landroid/content/IntentFilter;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 11142
    .local v17, "_arg6":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 11144
    .local v18, "_arg7":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 11145
    .local v19, "_arg8":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 11146
    move-object/from16 v1, p0

    move-object v2, v0

    move-object v3, v11

    move-object v4, v12

    move-object v5, v13

    move-object v6, v14

    move-object/from16 v7, v16

    move-object/from16 v8, v17

    move/from16 v9, v18

    move/from16 v10, v19

    invoke-virtual/range {v1 .. v10}, Landroid/app/IActivityManager$Stub;->registerReceiverWithFeature(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/IIntentReceiver;Landroid/content/IntentFilter;Ljava/lang/String;II)Landroid/content/Intent;

    move-result-object v1

    .line 11147
    .local v1, "_result":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->writeNoException()V

    .line 11148
    const/4 v2, 0x1

    move-object/from16 v3, p2

    invoke-virtual {v3, v1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 11149
    return v2
.end method

.method private blacklist onTransact$revokeUriPermission$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 14
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11470
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v0

    .line 11472
    .local v0, "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 11474
    .local v7, "_arg1":Ljava/lang/String;
    sget-object v1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/net/Uri;

    .line 11476
    .local v8, "_arg2":Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 11478
    .local v9, "_arg3":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 11479
    .local v10, "_arg4":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 11480
    move-object v1, p0

    move-object v2, v0

    move-object v3, v7

    move-object v4, v8

    move v5, v9

    move v6, v10

    invoke-virtual/range {v1 .. v6}, Landroid/app/IActivityManager$Stub;->revokeUriPermission(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/net/Uri;II)V

    .line 11481
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 11482
    const/4 v1, 0x1

    return v1
.end method

.method private greylist-max-o onTransact$sendIntentSender$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 21
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12039
    move-object/from16 v0, p1

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v1

    .line 12041
    .local v1, "_arg0":Landroid/content/IIntentSender;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 12043
    .local v11, "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 12045
    .local v12, "_arg2":I
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/content/Intent;

    .line 12047
    .local v13, "_arg3":Landroid/content/Intent;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 12049
    .local v14, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    move-result-object v15

    .line 12051
    .local v15, "_arg5":Landroid/content/IIntentReceiver;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 12053
    .local v16, "_arg6":Ljava/lang/String;
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroid/os/Bundle;

    .line 12054
    .local v17, "_arg7":Landroid/os/Bundle;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 12055
    move-object/from16 v2, p0

    move-object v3, v1

    move-object v4, v11

    move v5, v12

    move-object v6, v13

    move-object v7, v14

    move-object v8, v15

    move-object/from16 v9, v16

    move-object/from16 v10, v17

    invoke-virtual/range {v2 .. v10}, Landroid/app/IActivityManager$Stub;->sendIntentSender(Landroid/content/IIntentSender;Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/Bundle;)I

    move-result v2

    .line 12056
    .local v2, "_result":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->writeNoException()V

    .line 12057
    move-object/from16 v3, p2

    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 12058
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$setDumpHeapDebugLimit$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 14
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11960
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 11962
    .local v6, "_arg0":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 11964
    .local v7, "_arg1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .line 11966
    .local v8, "_arg2":J
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 11967
    .local v10, "_arg3":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 11968
    move-object v0, p0

    move-object v1, v6

    move v2, v7

    move-wide v3, v8

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Landroid/app/IActivityManager$Stub;->setDumpHeapDebugLimit(Ljava/lang/String;IJLjava/lang/String;)V

    .line 11969
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 11970
    const/4 v0, 0x1

    return v0
.end method

.method private blacklist onTransact$setServiceForeground$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 16
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11580
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 11582
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    .line 11584
    .local v8, "_arg1":Landroid/os/IBinder;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 11586
    .local v9, "_arg2":I
    sget-object v1, Landroid/app/Notification;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/app/Notification;

    .line 11588
    .local v10, "_arg3":Landroid/app/Notification;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 11590
    .local v11, "_arg4":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 11591
    .local v12, "_arg5":I
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 11592
    move-object v1, p0

    move-object v2, v0

    move-object v3, v8

    move v4, v9

    move-object v5, v10

    move v6, v11

    move v7, v12

    invoke-virtual/range {v1 .. v7}, Landroid/app/IActivityManager$Stub;->setServiceForeground(Landroid/content/ComponentName;Landroid/os/IBinder;ILandroid/app/Notification;II)V

    .line 11593
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 11594
    const/4 v1, 0x1

    return v1
.end method

.method private greylist-max-o onTransact$startActivity$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 25
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11043
    move-object/from16 v0, p1

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v1

    .line 11045
    .local v1, "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 11047
    .local v13, "_arg1":Ljava/lang/String;
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/content/Intent;

    .line 11049
    .local v14, "_arg2":Landroid/content/Intent;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 11051
    .local v15, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v16

    .line 11053
    .local v16, "_arg4":Landroid/os/IBinder;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 11055
    .local v17, "_arg5":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 11057
    .local v18, "_arg6":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 11059
    .local v19, "_arg7":I
    sget-object v2, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v20, v2

    check-cast v20, Landroid/app/ProfilerInfo;

    .line 11061
    .local v20, "_arg8":Landroid/app/ProfilerInfo;
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v21, v2

    check-cast v21, Landroid/os/Bundle;

    .line 11062
    .local v21, "_arg9":Landroid/os/Bundle;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 11063
    move-object/from16 v2, p0

    move-object v3, v1

    move-object v4, v13

    move-object v5, v14

    move-object v6, v15

    move-object/from16 v7, v16

    move-object/from16 v8, v17

    move/from16 v9, v18

    move/from16 v10, v19

    move-object/from16 v11, v20

    move-object/from16 v12, v21

    invoke-virtual/range {v2 .. v12}, Landroid/app/IActivityManager$Stub;->startActivity(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;)I

    move-result v2

    .line 11064
    .local v2, "_result":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->writeNoException()V

    .line 11065
    move-object/from16 v3, p2

    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 11066
    const/4 v4, 0x1

    return v4
.end method

.method private greylist-max-o onTransact$startActivityAsUser$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 27
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11851
    move-object/from16 v0, p1

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v1

    .line 11853
    .local v1, "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 11855
    .local v14, "_arg1":Ljava/lang/String;
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/content/Intent;

    .line 11857
    .local v15, "_arg2":Landroid/content/Intent;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 11859
    .local v16, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v17

    .line 11861
    .local v17, "_arg4":Landroid/os/IBinder;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 11863
    .local v18, "_arg5":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 11865
    .local v19, "_arg6":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 11867
    .local v20, "_arg7":I
    sget-object v2, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v21, v2

    check-cast v21, Landroid/app/ProfilerInfo;

    .line 11869
    .local v21, "_arg8":Landroid/app/ProfilerInfo;
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v22, v2

    check-cast v22, Landroid/os/Bundle;

    .line 11871
    .local v22, "_arg9":Landroid/os/Bundle;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .line 11872
    .local v23, "_arg10":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 11873
    move-object/from16 v2, p0

    move-object v3, v1

    move-object v4, v14

    move-object v5, v15

    move-object/from16 v6, v16

    move-object/from16 v7, v17

    move-object/from16 v8, v18

    move/from16 v9, v19

    move/from16 v10, v20

    move-object/from16 v11, v21

    move-object/from16 v12, v22

    move/from16 v13, v23

    invoke-virtual/range {v2 .. v13}, Landroid/app/IActivityManager$Stub;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I

    move-result v2

    .line 11874
    .local v2, "_result":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->writeNoException()V

    .line 11875
    move-object/from16 v3, p2

    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 11876
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$startActivityAsUserWithFeature$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 29
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11882
    move-object/from16 v0, p1

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v1

    .line 11884
    .local v1, "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 11886
    .local v15, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 11888
    .local v16, "_arg2":Ljava/lang/String;
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroid/content/Intent;

    .line 11890
    .local v17, "_arg3":Landroid/content/Intent;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 11892
    .local v18, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v19

    .line 11894
    .local v19, "_arg5":Landroid/os/IBinder;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 11896
    .local v20, "_arg6":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 11898
    .local v21, "_arg7":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .line 11900
    .local v22, "_arg8":I
    sget-object v2, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v23, v2

    check-cast v23, Landroid/app/ProfilerInfo;

    .line 11902
    .local v23, "_arg9":Landroid/app/ProfilerInfo;
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v24, v2

    check-cast v24, Landroid/os/Bundle;

    .line 11904
    .local v24, "_arg10":Landroid/os/Bundle;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v25

    .line 11905
    .local v25, "_arg11":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 11906
    move-object/from16 v2, p0

    move-object v3, v1

    move-object v4, v15

    move-object/from16 v5, v16

    move-object/from16 v6, v17

    move-object/from16 v7, v18

    move-object/from16 v8, v19

    move-object/from16 v9, v20

    move/from16 v10, v21

    move/from16 v11, v22

    move-object/from16 v12, v23

    move-object/from16 v13, v24

    move/from16 v14, v25

    invoke-virtual/range {v2 .. v14}, Landroid/app/IActivityManager$Stub;->startActivityAsUserWithFeature(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I

    move-result v2

    .line 11907
    .local v2, "_result":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->writeNoException()V

    .line 11908
    move-object/from16 v3, p2

    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 11909
    const/4 v4, 0x1

    return v4
.end method

.method private blacklist onTransact$startActivityWithFeature$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 27
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11072
    move-object/from16 v0, p1

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v1

    .line 11074
    .local v1, "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 11076
    .local v14, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 11078
    .local v15, "_arg2":Ljava/lang/String;
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/content/Intent;

    .line 11080
    .local v16, "_arg3":Landroid/content/Intent;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 11082
    .local v17, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v18

    .line 11084
    .local v18, "_arg5":Landroid/os/IBinder;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 11086
    .local v19, "_arg6":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 11088
    .local v20, "_arg7":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 11090
    .local v21, "_arg8":I
    sget-object v2, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v22, v2

    check-cast v22, Landroid/app/ProfilerInfo;

    .line 11092
    .local v22, "_arg9":Landroid/app/ProfilerInfo;
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v23, v2

    check-cast v23, Landroid/os/Bundle;

    .line 11093
    .local v23, "_arg10":Landroid/os/Bundle;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 11094
    move-object/from16 v2, p0

    move-object v3, v1

    move-object v4, v14

    move-object v5, v15

    move-object/from16 v6, v16

    move-object/from16 v7, v17

    move-object/from16 v8, v18

    move-object/from16 v9, v19

    move/from16 v10, v20

    move/from16 v11, v21

    move-object/from16 v12, v22

    move-object/from16 v13, v23

    invoke-virtual/range {v2 .. v13}, Landroid/app/IActivityManager$Stub;->startActivityWithFeature(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;)I

    move-result v2

    .line 11095
    .local v2, "_result":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->writeNoException()V

    .line 11096
    move-object/from16 v3, p2

    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 11097
    const/4 v4, 0x1

    return v4
.end method

.method private greylist-max-o onTransact$startInstrumentation$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 21
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11377
    move-object/from16 v0, p1

    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 11379
    .local v1, "_arg0":Landroid/content/ComponentName;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 11381
    .local v11, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 11383
    .local v12, "_arg2":I
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/os/Bundle;

    .line 11385
    .local v13, "_arg3":Landroid/os/Bundle;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/IInstrumentationWatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IInstrumentationWatcher;

    move-result-object v14

    .line 11387
    .local v14, "_arg4":Landroid/app/IInstrumentationWatcher;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/IUiAutomationConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUiAutomationConnection;

    move-result-object v15

    .line 11389
    .local v15, "_arg5":Landroid/app/IUiAutomationConnection;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 11391
    .local v16, "_arg6":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 11392
    .local v17, "_arg7":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 11393
    move-object/from16 v2, p0

    move-object v3, v1

    move-object v4, v11

    move v5, v12

    move-object v6, v13

    move-object v7, v14

    move-object v8, v15

    move/from16 v9, v16

    move-object/from16 v10, v17

    invoke-virtual/range {v2 .. v10}, Landroid/app/IActivityManager$Stub;->startInstrumentation(Landroid/content/ComponentName;Ljava/lang/String;ILandroid/os/Bundle;Landroid/app/IInstrumentationWatcher;Landroid/app/IUiAutomationConnection;ILjava/lang/String;)Z

    move-result v2

    .line 11394
    .local v2, "_result":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->writeNoException()V

    .line 11395
    move-object/from16 v3, p2

    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 11396
    const/4 v4, 0x1

    return v4
.end method

.method private greylist-max-o onTransact$startService$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 19
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11295
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v0

    .line 11297
    .local v0, "_arg0":Landroid/app/IApplicationThread;
    sget-object v1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v9, p1

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/content/Intent;

    .line 11299
    .local v10, "_arg1":Landroid/content/Intent;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 11301
    .local v11, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v12

    .line 11303
    .local v12, "_arg3":Z
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 11305
    .local v13, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 11307
    .local v14, "_arg5":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 11308
    .local v15, "_arg6":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 11309
    move-object/from16 v1, p0

    move-object v2, v0

    move-object v3, v10

    move-object v4, v11

    move v5, v12

    move-object v6, v13

    move-object v7, v14

    move v8, v15

    invoke-virtual/range {v1 .. v8}, Landroid/app/IActivityManager$Stub;->startService(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;I)Landroid/content/ComponentName;

    move-result-object v1

    .line 11310
    .local v1, "_result":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->writeNoException()V

    .line 11311
    const/4 v2, 0x1

    move-object/from16 v3, p2

    invoke-virtual {v3, v1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 11312
    return v2
.end method

.method private blacklist onTransact$unlockUser$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 9
    .param p1, "data"    # Landroid/os/Parcel;
    .param p2, "reply"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12015
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 12017
    .local v0, "_arg0":I
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 12019
    .local v1, "_arg1":[B
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 12021
    .local v2, "_arg2":[B
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/IProgressListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IProgressListener;

    move-result-object v3

    .line 12022
    .local v3, "_arg3":Landroid/os/IProgressListener;
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 12023
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->unlockUser(I[B[BLandroid/os/IProgressListener;)Z

    move-result v4

    .line 12024
    .local v4, "_result":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 12025
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 12026
    const/4 v5, 0x1

    return v5
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 1392
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 12214
    const/16 v0, 0x13a

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 2668
    invoke-static {p1}, Landroid/app/IActivityManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 2672
    const-string v0, "android.app.IActivityManager"

    .line 2673
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 2674
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2676
    :cond_d
    packed-switch p1, :pswitch_data_134e

    .line 2684
    packed-switch p1, :pswitch_data_1354

    .line 5414
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 2680
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2681
    return v1

    .line 5406
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5407
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5408
    invoke-virtual {p0, v2}, Landroid/app/IActivityManager$Stub;->exitSplitScreen(I)V

    .line 5409
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5410
    goto/16 :goto_134c

    .line 5395
    .end local v2    # "_arg0":I
    :pswitch_2b
    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/PendingIntent;

    .line 5397
    .local v2, "_arg0":Landroid/app/PendingIntent;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 5398
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5399
    invoke-virtual {p0, v2, v3}, Landroid/app/IActivityManager$Stub;->startIntentInSplitScreen(Landroid/app/PendingIntent;I)V

    .line 5400
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5401
    goto/16 :goto_134c

    .line 5386
    .end local v2    # "_arg0":Landroid/app/PendingIntent;
    .end local v3    # "_arg1":I
    :pswitch_42
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/IMiuiActivityObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IMiuiActivityObserver;

    move-result-object v2

    .line 5387
    .local v2, "_arg0":Landroid/app/IMiuiActivityObserver;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5388
    invoke-virtual {p0, v2}, Landroid/app/IActivityManager$Stub;->unregisterActivityObserver(Landroid/app/IMiuiActivityObserver;)V

    .line 5389
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5390
    goto/16 :goto_134c

    .line 5374
    .end local v2    # "_arg0":Landroid/app/IMiuiActivityObserver;
    :pswitch_55
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/IMiuiActivityObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IMiuiActivityObserver;

    move-result-object v2

    .line 5376
    .restart local v2    # "_arg0":Landroid/app/IMiuiActivityObserver;
    sget-object v3, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    .line 5377
    .local v3, "_arg1":Landroid/content/Intent;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5378
    invoke-virtual {p0, v2, v3}, Landroid/app/IActivityManager$Stub;->registerActivityObserver(Landroid/app/IMiuiActivityObserver;Landroid/content/Intent;)V

    .line 5379
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5380
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 5381
    goto/16 :goto_134c

    .line 5369
    .end local v2    # "_arg0":Landroid/app/IMiuiActivityObserver;
    .end local v3    # "_arg1":Landroid/content/Intent;
    :pswitch_73
    invoke-direct {p0, p2, p3}, Landroid/app/IActivityManager$Stub;->onTransact$enableAppDebugConfig$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 5359
    :pswitch_78
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 5361
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 5362
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5363
    invoke-virtual {p0, v2, v3}, Landroid/app/IActivityManager$Stub;->enableAmsDebugConfig(Ljava/lang/String;Z)V

    .line 5364
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5365
    goto/16 :goto_134c

    .line 5349
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Z
    :pswitch_8b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5350
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5351
    invoke-virtual {p0, v2}, Landroid/app/IActivityManager$Stub;->getBackgroundRestrictionExemptionReason(I)I

    move-result v3

    .line 5352
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5353
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5354
    goto/16 :goto_134c

    .line 5342
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_9e
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub;->waitForBroadcastIdle()V

    .line 5343
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5344
    goto/16 :goto_134c

    .line 5331
    :pswitch_a6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5333
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 5334
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5335
    invoke-virtual {p0, v2, v3}, Landroid/app/IActivityManager$Stub;->getUidProcessCapabilities(ILjava/lang/String;)I

    move-result v4

    .line 5336
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5337
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 5338
    goto/16 :goto_134c

    .line 5319
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":I
    :pswitch_bd
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v2

    .line 5321
    .local v2, "_arg0":Landroid/content/IIntentSender;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 5322
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5323
    invoke-virtual {p0, v2, v3}, Landroid/app/IActivityManager$Stub;->queryIntentComponentsForIntentSender(Landroid/content/IIntentSender;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v4

    .line 5324
    .local v4, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5325
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 5326
    goto/16 :goto_134c

    .line 5309
    .end local v2    # "_arg0":Landroid/content/IIntentSender;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Landroid/content/pm/ParceledListSlice;
    :pswitch_d8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5310
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5311
    invoke-virtual {p0, v2}, Landroid/app/IActivityManager$Stub;->stopProfile(I)Z

    move-result v3

    .line 5312
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5313
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5314
    goto/16 :goto_134c

    .line 5299
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_eb
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5300
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5301
    invoke-virtual {p0, v2}, Landroid/app/IActivityManager$Stub;->startProfile(I)Z

    move-result v3

    .line 5302
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5303
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5304
    goto/16 :goto_134c

    .line 5288
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_fe
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 5290
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 5291
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5292
    invoke-virtual {p0, v2, v3}, Landroid/app/IActivityManager$Stub;->holdLock(Landroid/os/IBinder;I)V

    .line 5293
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5294
    goto/16 :goto_134c

    .line 5278
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":I
    :pswitch_111
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 5279
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5280
    invoke-virtual {p0, v2}, Landroid/app/IActivityManager$Stub;->enableFgsNotificationRateLimit(Z)Z

    move-result v3

    .line 5281
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5282
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5283
    goto/16 :goto_134c

    .line 5268
    .end local v2    # "_arg0":Z
    .end local v3    # "_result":Z
    :pswitch_124
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 5269
    .restart local v2    # "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5270
    invoke-virtual {p0, v2}, Landroid/app/IActivityManager$Stub;->enableAppFreezer(Z)Z

    move-result v3

    .line 5271
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5272
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5273
    goto/16 :goto_134c

    .line 5261
    .end local v2    # "_arg0":Z
    .end local v3    # "_result":Z
    :pswitch_137
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub;->resetAppErrors()V

    .line 5262
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5263
    goto/16 :goto_134c

    .line 5249
    :pswitch_13f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5251
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 5253
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 5254
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5255
    invoke-virtual {p0, v2, v3, v4}, Landroid/app/IActivityManager$Stub;->killUidForPermissionChange(IILjava/lang/String;)V

    .line 5256
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5257
    goto/16 :goto_134c

    .line 5241
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Ljava/lang/String;
    :pswitch_156
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub;->isAppFreezerEnabled()Z

    move-result v2

    .line 5242
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5243
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5244
    goto/16 :goto_134c

    .line 5234
    .end local v2    # "_result":Z
    :pswitch_162
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub;->isAppFreezerSupported()Z

    move-result v2

    .line 5235
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5236
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5237
    goto/16 :goto_134c

    .line 5226
    .end local v2    # "_result":Z
    :pswitch_16e
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 5227
    .local v2, "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5228
    invoke-virtual {p0, v2}, Landroid/app/IActivityManager$Stub;->setProcessStateSummary([B)V

    .line 5229
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5230
    goto/16 :goto_134c

    .line 5213
    .end local v2    # "_arg0":[B
    :pswitch_17d
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 5215
    .local v2, "_arg0":Landroid/content/ComponentName;
    sget-object v3, Landroid/content/LocusId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/LocusId;

    .line 5217
    .local v3, "_arg1":Landroid/content/LocusId;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 5218
    .local v4, "_arg2":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5219
    invoke-virtual {p0, v2, v3, v4}, Landroid/app/IActivityManager$Stub;->setActivityLocusContext(Landroid/content/ComponentName;Landroid/content/LocusId;Landroid/os/IBinder;)V

    .line 5220
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5221
    goto/16 :goto_134c

    .line 5202
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Landroid/content/LocusId;
    .end local v4    # "_arg2":Landroid/os/IBinder;
    :pswitch_19c
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 5204
    .local v2, "_arg0":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 5205
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5206
    invoke-virtual {p0, v2, v3}, Landroid/app/IActivityManager$Stub;->killProcessesWhenImperceptible([ILjava/lang/String;)V

    .line 5207
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5208
    goto/16 :goto_134c

    .line 5197
    .end local v2    # "_arg0":[I
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_1af
    invoke-direct {p0, p2, p3}, Landroid/app/IActivityManager$Stub;->onTransact$getHistoricalProcessExitReasons$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 5189
    :pswitch_1b4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 5190
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5191
    invoke-virtual {p0, v2}, Landroid/app/IActivityManager$Stub;->appNotResponding(Ljava/lang/String;)V

    .line 5192
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5193
    goto/16 :goto_134c

    .line 5177
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_1c3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5179
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/IProgressListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IProgressListener;

    move-result-object v3

    .line 5180
    .local v3, "_arg1":Landroid/os/IProgressListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5181
    invoke-virtual {p0, v2, v3}, Landroid/app/IActivityManager$Stub;->startUserInForegroundWithListener(ILandroid/os/IProgressListener;)Z

    move-result v4

    .line 5182
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5183
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5184
    goto/16 :goto_134c

    .line 5169
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/os/IProgressListener;
    .end local v4    # "_result":Z
    :pswitch_1de
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub;->getLifeMonitor()Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 5170
    .local v2, "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5171
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 5172
    goto/16 :goto_134c

    .line 5162
    .end local v2    # "_result":Landroid/os/ParcelFileDescriptor;
    :pswitch_1ea
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub;->getDelegatedShellPermissions()Ljava/util/List;

    move-result-object v2

    .line 5163
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5164
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 5165
    goto/16 :goto_134c

    .line 5156
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_1f6
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub;->stopDelegateShellPermissionIdentity()V

    .line 5157
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5158
    goto/16 :goto_134c

    .line 5147
    :pswitch_1fe
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5148
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5149
    invoke-virtual {p0, v2}, Landroid/app/IActivityManager$Stub;->getOomAdjOfPid(I)I

    move-result v3

    .line 5150
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5151
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5152
    goto/16 :goto_134c

    .line 5137
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_211
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 5138
    .local v2, "_arg0":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5139
    invoke-virtual {p0, v2}, Landroid/app/IActivityManager$Stub;->dumpMiuiStackTraces([I)Ljava/lang/String;

    move-result-object v3

    .line 5140
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5141
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5142
    goto/16 :goto_134c

    .line 5129
    .end local v2    # "_arg0":[I
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_224
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub;->isMiuiDesktopModeActive()Z

    move-result v2

    .line 5130
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5131
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5132
    goto/16 :goto_134c

    .line 5120
    .end local v2    # "_result":Z
    :pswitch_230
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 5121
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5122
    invoke-virtual {p0, v2}, Landroid/app/IActivityManager$Stub;->getAuthorisedFreeformList(Z)Ljava/util/List;

    move-result-object v3

    .line 5123
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5124
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 5125
    goto/16 :goto_134c

    .line 5112
    .end local v2    # "_arg0":Z
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_243
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub;->getSensorDisableList()Ljava/util/List;

    move-result-object v2

    .line 5113
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5114
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 5115
    goto/16 :goto_134c

    .line 5103
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_24f
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 5104
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5105
    invoke-virtual {p0, v2}, Landroid/app/IActivityManager$Stub;->getEnableAbnormalFreeFormDebug(Z)I

    move-result v3

    .line 5106
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5107
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5108
    goto/16 :goto_134c

    .line 5095
    .end local v2    # "_arg0":Z
    .end local v3    # "_result":I
    :pswitch_262
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub;->getUnsupportedAppsInDesktop()Ljava/util/List;

    move-result-object v2

    .line 5096
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5097
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 5098
    goto/16 :goto_134c

    .line 5088
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_26e
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub;->getDesktopFreeformWhiteList()Ljava/util/List;

    move-result-object v2

    .line 5089
    .restart local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5090
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 5091
    goto/16 :goto_134c

    .line 5081
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_27a
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub;->getAdditionalFreeformAspectRatio2Apps()Ljava/util/List;

    move-result-object v2

    .line 5082
    .restart local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5083
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 5084
    goto/16 :goto_134c

    .line 5074
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_286
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub;->getAdditionalFreeformAspectRatio1Apps()Ljava/util/List;

    move-result-object v2

    .line 5075
    .restart local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5076
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 5077
    goto/16 :goto_134c

    .line 5067
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_292
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub;->getLaunchInTaskList()Ljava/util/List;

    move-result-object v2

    .line 5068
    .restart local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5069
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 5070
    goto/16 :goto_134c

    .line 5060
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_29e
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub;->getSensorDisableWhiteList()Ljava/util/List;

    move-result-object v2

    .line 5061
    .restart local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5062
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 5063
    goto/16 :goto_134c

    .line 5053
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_2aa
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub;->getUseDefaultCameraPipelineApp()Ljava/util/List;

    move-result-object v2

    .line 5054
    .restart local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5055
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 5056
    goto/16 :goto_134c

    .line 5046
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_2b6
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub;->getRotationFromDisplayApp()Ljava/util/List;

    move-result-object v2

    .line 5047
    .restart local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5048
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 5049
    goto/16 :goto_134c

    .line 5039
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_2c2
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub;->getFixedRotationAppList()Ljava/util/List;

    move-result-object v2

    .line 5040
    .restart local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5041
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 5042
    goto/16 :goto_134c

    .line 5032
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_2ce
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub;->getTopVideoList()Ljava/util/List;

    move-result-object v2

    .line 5033
    .restart local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5034
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 5035
    goto/16 :goto_134c

    .line 5025
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_2da
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub;->getTopGameList()Ljava/util/List;

    move-result-object v2

    .line 5026
    .restart local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5027
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 5028
    goto/16 :goto_134c

    .line 5018
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_2e6
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub;->getForegroundPinAppBlackList()Ljava/util/List;

    move-result-object v2

    .line 5019
    .restart local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5020
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 5021
    goto/16 :goto_134c

    .line 5011
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_2f2
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub;->getForegroundPinAppWhiteList()Ljava/util/List;

    move-result-object v2

    .line 5012
    .restart local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5013
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 5014
    goto/16 :goto_134c

    .line 5004
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_2fe
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub;->getAudioForegroundPinAppList()Ljava/util/List;

    move-result-object v2

    .line 5005
    .restart local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5006
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 5007
    goto/16 :goto_134c

    .line 4997
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_30a
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub;->getForceLandscapeApplication()Ljava/util/List;

    move-result-object v2

    .line 4998
    .restart local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4999
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 5000
    goto/16 :goto_134c

    .line 4990
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_316
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub;->getFreeformCaptionInsetsHeightToZeroList()Ljava/util/List;

    move-result-object v2

    .line 4991
    .restart local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4992
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 4993
    goto/16 :goto_134c

    .line 4983
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_322
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub;->getApplicationLockActivityList()Ljava/util/List;

    move-result-object v2

    .line 4984
    .restart local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4985
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 4986
    goto/16 :goto_134c

    .line 4976
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_32e
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub;->getCvwUnsupportedFreeformWhiteList()Ljava/util/List;

    move-result-object v2

    .line 4977
    .restart local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4978
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 4979
    goto/16 :goto_134c

    .line 4969
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_33a
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub;->getFreeformResizeableWhiteList()Ljava/util/List;

    move-result-object v2

    .line 4970
    .restart local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4971
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 4972
    goto/16 :goto_134c

    .line 4962
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_346
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub;->getShowHiddenTaskIfFinishedWhiteList()Ljava/util/List;

    move-result-object v2

    .line 4963
    .restart local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4964
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 4965
    goto/16 :goto_134c

    .line 4955
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_352
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub;->getHideSelfIfNewFreeformTaskWhiteList()Ljava/util/List;

    move-result-object v2

    .line 4956
    .restart local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4957
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 4958
    goto/16 :goto_134c

    .line 4948
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_35e
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub;->getStartFromFreeformBlackList()Ljava/util/List;

    move-result-object v2

    .line 4949
    .restart local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4950
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 4951
    goto/16 :goto_134c

    .line 4941
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_36a
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub;->getFreeformNeedRelunchList()Ljava/util/List;

    move-result-object v2

    .line 4942
    .restart local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4943
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 4944
    goto/16 :goto_134c

    .line 4934
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_376
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub;->getFreeformIgnoreRequestOrientationList()Ljava/util/List;

    move-result-object v2

    .line 4935
    .restart local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4936
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 4937
    goto/16 :goto_134c

    .line 4927
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_382
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub;->getFreeformDisableOverlayList()Ljava/util/List;

    move-result-object v2

    .line 4928
    .restart local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4929
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 4930
    goto/16 :goto_134c

    .line 4920
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_38e
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub;->getFreeformRecommendWaitingApplicationList()Ljava/util/List;

    move-result-object v2

    .line 4921
    .restart local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4922
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 4923
    goto/16 :goto_134c

    .line 4913
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_39a
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub;->getFreeformRecommendMapApplicationList()Ljava/util/List;

    move-result-object v2

    .line 4914
    .restart local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4915
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 4916
    goto/16 :goto_134c

    .line 4906
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_3a6
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub;->getDesktopModeLaunchFreeformIgnoreTranslucentAppList()Ljava/util/List;

    move-result-object v2

    .line 4907
    .restart local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4908
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 4909
    goto/16 :goto_134c

    .line 4899
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_3b2
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub;->getDesktopModeLaunchFullscreenNotHideOtherAppList()Ljava/util/List;

    move-result-object v2

    .line 4900
    .restart local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4901
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 4902
    goto/16 :goto_134c

    .line 4892
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_3be
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub;->getDesktopModeLaunchFullscreenAppList()Ljava/util/List;

    move-result-object v2

    .line 4893
    .restart local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4894
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 4895
    goto/16 :goto_134c

    .line 4885
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_3ca
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub;->getFreeformVideoWhiteList()Ljava/util/List;

    move-result-object v2

    .line 4886
    .restart local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4887
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 4888
    goto/16 :goto_134c

    .line 4878
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_3d6
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub;->getCanStartActivityFromFullscreenToFreefromList()Ljava/util/List;

    move-result-object v2

    .line 4879
    .restart local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4880
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 4881
    goto/16 :goto_134c

    .line 4869
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_3e2
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 4870
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4871
    invoke-virtual {p0, v2}, Landroid/app/IActivityManager$Stub;->getAbnormalFreeformWhiteList(Z)Ljava/util/List;

    move-result-object v3

    .line 4872
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4873
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 4874
    goto/16 :goto_134c

    .line 4859
    .end local v2    # "_arg0":Z
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_3f5
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 4860
    .restart local v2    # "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4861
    invoke-virtual {p0, v2}, Landroid/app/IActivityManager$Stub;->getAbnormalFreeformBlackList(Z)Ljava/util/List;

    move-result-object v3

    .line 4862
    .restart local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4863
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 4864
    goto/16 :goto_134c

    .line 4851
    .end local v2    # "_arg0":Z
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_408
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub;->getFreeformBlackList()Ljava/util/List;

    move-result-object v2

    .line 4852
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4853
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 4854
    goto/16 :goto_134c

    .line 4844
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_414
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 4845
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4846
    invoke-virtual {p0, v2}, Landroid/app/IActivityManager$Stub;->setUnsupportedAppsInDesktop(Ljava/util/List;)V

    .line 4847
    goto/16 :goto_134c

    .line 4836
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_420
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 4837
    .restart local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4838
    invoke-virtual {p0, v2}, Landroid/app/IActivityManager$Stub;->setDesktopFreeformWhiteList(Ljava/util/List;)V

    .line 4839
    goto/16 :goto_134c

    .line 4828
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_42c
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 4829
    .restart local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4830
    invoke-virtual {p0, v2}, Landroid/app/IActivityManager$Stub;->setAdditionalFreeformAspectRatio2Apps(Ljava/util/List;)V

    .line 4831
    goto/16 :goto_134c

    .line 4820
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_438
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 4821
    .restart local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4822
    invoke-virtual {p0, v2}, Landroid/app/IActivityManager$Stub;->setAdditionalFreeformAspectRatio1Apps(Ljava/util/List;)V

    .line 4823
    goto/16 :goto_134c

    .line 4812
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_444
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 4813
    .restart local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4814
    invoke-virtual {p0, v2}, Landroid/app/IActivityManager$Stub;->setAuthorisedFreeformList(Ljava/util/List;)V

    .line 4815
    goto/16 :goto_134c

    .line 4804
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_450
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 4805
    .restart local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4806
    invoke-virtual {p0, v2}, Landroid/app/IActivityManager$Stub;->setSensorDisableList(Ljava/util/List;)V

    .line 4807
    goto/16 :goto_134c

    .line 4796
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_45c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4797
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4798
    invoke-virtual {p0, v2}, Landroid/app/IActivityManager$Stub;->setEnableAbnormalFreeFormDebug(I)V

    .line 4799
    goto/16 :goto_134c

    .line 4788
    .end local v2    # "_arg0":I
    :pswitch_468
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 4789
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4790
    invoke-virtual {p0, v2}, Landroid/app/IActivityManager$Stub;->setLaunchInTaskList(Ljava/util/List;)V

    .line 4791
    goto/16 :goto_134c

    .line 4780
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_474
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 4781
    .restart local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4782
    invoke-virtual {p0, v2}, Landroid/app/IActivityManager$Stub;->setSensorDisableWhiteList(Ljava/util/List;)V

    .line 4783
    goto/16 :goto_134c

    .line 4772
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_480
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 4773
    .restart local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4774
    invoke-virtual {p0, v2}, Landroid/app/IActivityManager$Stub;->setUseDefaultCameraPipelineApp(Ljava/util/List;)V

    .line 4775
    goto/16 :goto_134c

    .line 4764
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_48c
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 4765
    .restart local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4766
    invoke-virtual {p0, v2}, Landroid/app/IActivityManager$Stub;->setRotationFromDisplayApp(Ljava/util/List;)V

    .line 4767
    goto/16 :goto_134c

    .line 4756
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_498
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 4757
    .restart local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4758
    invoke-virtual {p0, v2}, Landroid/app/IActivityManager$Stub;->setFixedRotationAppList(Ljava/util/List;)V

    .line 4759
    goto/16 :goto_134c

    .line 4748
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_4a4
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 4749
    .restart local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4750
    invoke-virtual {p0, v2}, Landroid/app/IActivityManager$Stub;->setTopVideoList(Ljava/util/List;)V

    .line 4751
    goto/16 :goto_134c

    .line 4740
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_4b0
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 4741
    .restart local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4742
    invoke-virtual {p0, v2}, Landroid/app/IActivityManager$Stub;->setTopGameList(Ljava/util/List;)V

    .line 4743
    goto/16 :goto_134c

    .line 4732
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_4bc
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 4733
    .restart local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4734
    invoke-virtual {p0, v2}, Landroid/app/IActivityManager$Stub;->setForegroundPinAppBlackList(Ljava/util/List;)V

    .line 4735
    goto/16 :goto_134c

    .line 4724
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_4c8
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 4725
    .restart local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4726
    invoke-virtual {p0, v2}, Landroid/app/IActivityManager$Stub;->setForegroundPinAppWhiteList(Ljava/util/List;)V

    .line 4727
    goto/16 :goto_134c

    .line 4716
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_4d4
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 4717
    .restart local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4718
    invoke-virtual {p0, v2}, Landroid/app/IActivityManager$Stub;->setAudioForegroundPinAppList(Ljava/util/List;)V

    .line 4719
    goto/16 :goto_134c

    .line 4708
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_4e0
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 4709
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4710
    invoke-virtual {p0, v2}, Landroid/app/IActivityManager$Stub;->setEnableForegroundPin(Z)V

    .line 4711
    goto/16 :goto_134c

    .line 4700
    .end local v2    # "_arg0":Z
    :pswitch_4ec
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 4701
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4702
    invoke-virtual {p0, v2}, Landroid/app/IActivityManager$Stub;->setForceLandscapeApplication(Ljava/util/List;)V

    .line 4703
    goto/16 :goto_134c

    .line 4692
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_4f8
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 4693
    .restart local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4694
    invoke-virtual {p0, v2}, Landroid/app/IActivityManager$Stub;->setFreeformCaptionInsetsHeightToZeroList(Ljava/util/List;)V

    .line 4695
    goto/16 :goto_134c

    .line 4684
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_504
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 4685
    .restart local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4686
    invoke-virtual {p0, v2}, Landroid/app/IActivityManager$Stub;->setApplicationLockActivityList(Ljava/util/List;)V

    .line 4687
    goto/16 :goto_134c

    .line 4676
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_510
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 4677
    .restart local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4678
    invoke-virtual {p0, v2}, Landroid/app/IActivityManager$Stub;->setCvwUnsupportedFreeformWhiteList(Ljava/util/List;)V

    .line 4679
    goto/16 :goto_134c

    .line 4668
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_51c
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 4669
    .restart local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4670
    invoke-virtual {p0, v2}, Landroid/app/IActivityManager$Stub;->setFreeformResizeableWhiteList(Ljava/util/List;)V

    .line 4671
    goto/16 :goto_134c

    .line 4660
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_528
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 4661
    .restart local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4662
    invoke-virtual {p0, v2}, Landroid/app/IActivityManager$Stub;->setShowHiddenTaskIfFinishedWhiteList(Ljava/util/List;)V

    .line 4663
    goto/16 :goto_134c

    .line 4652
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_534
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 4653
    .restart local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4654
    invoke-virtual {p0, v2}, Landroid/app/IActivityManager$Stub;->setHideSelfIfNewFreeformTaskWhiteList(Ljava/util/List;)V

    .line 4655
    goto/16 :goto_134c

    .line 4644
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_540
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 4645
    .restart local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4646
    invoke-virtual {p0, v2}, Landroid/app/IActivityManager$Stub;->setStartFromFreeformBlackList(Ljava/util/List;)V

    .line 4647
    goto/16 :goto_134c

    .line 4636
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_54c
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 4637
    .restart local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4638
    invoke-virtual {p0, v2}, Landroid/app/IActivityManager$Stub;->setFreeformNeedRelunchList(Ljava/util/List;)V

    .line 4639
    goto/16 :goto_134c

    .line 4628
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_558
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 4629
    .restart local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4630
    invoke-virtual {p0, v2}, Landroid/app/IActivityManager$Stub;->setFreeformIgnoreRequestOrientationList(Ljava/util/List;)V

    .line 4631
    goto/16 :goto_134c

    .line 4620
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_564
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 4621
    .restart local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4622
    invoke-virtual {p0, v2}, Landroid/app/IActivityManager$Stub;->setFreeformDisableOverlayList(Ljava/util/List;)V

    .line 4623
    goto/16 :goto_134c

    .line 4612
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_570
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 4613
    .restart local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4614
    invoke-virtual {p0, v2}, Landroid/app/IActivityManager$Stub;->setFreeformRecommendWaitingApplicationList(Ljava/util/List;)V

    .line 4615
    goto/16 :goto_134c

    .line 4604
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_57c
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 4605
    .restart local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4606
    invoke-virtual {p0, v2}, Landroid/app/IActivityManager$Stub;->setFreeformRecommendMapApplicationList(Ljava/util/List;)V

    .line 4607
    goto/16 :goto_134c

    .line 4596
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_588
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 4597
    .restart local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4598
    invoke-virtual {p0, v2}, Landroid/app/IActivityManager$Stub;->setDesktopModeLaunchFreeformIgnoreTranslucentAppList(Ljava/util/List;)V

    .line 4599
    goto/16 :goto_134c

    .line 4588
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_594
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 4589
    .restart local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4590
    invoke-virtual {p0, v2}, Landroid/app/IActivityManager$Stub;->setDesktopModeLaunchFullscreenNotHideOtherAppList(Ljava/util/List;)V

    .line 4591
    goto/16 :goto_134c

    .line 4580
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_5a0
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 4581
    .restart local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4582
    invoke-virtual {p0, v2}, Landroid/app/IActivityManager$Stub;->setDesktopModeLaunchFullscreenAppList(Ljava/util/List;)V

    .line 4583
    goto/16 :goto_134c

    .line 4572
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_5ac
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 4573
    .restart local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4574
    invoke-virtual {p0, v2}, Landroid/app/IActivityManager$Stub;->setFreeformVideoWhiteList(Ljava/util/List;)V

    .line 4575
    goto/16 :goto_134c

    .line 4564
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_5b8
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 4565
    .restart local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4566
    invoke-virtual {p0, v2}, Landroid/app/IActivityManager$Stub;->setCanStartActivityFromFullscreenToFreefromList(Ljava/util/List;)V

    .line 4567
    goto/16 :goto_134c

    .line 4556
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_5c4
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 4557
    .restart local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4558
    invoke-virtual {p0, v2}, Landroid/app/IActivityManager$Stub;->setAbnormalFreeformWhiteList(Ljava/util/List;)V

    .line 4559
    goto/16 :goto_134c

    .line 4548
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_5d0
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 4549
    .restart local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4550
    invoke-virtual {p0, v2}, Landroid/app/IActivityManager$Stub;->setAbnormalFreeformBlackList(Ljava/util/List;)V

    .line 4551
    goto/16 :goto_134c

    .line 4540
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_5dc
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 4541
    .restart local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4542
    invoke-virtual {p0, v2}, Landroid/app/IActivityManager$Stub;->setFreeformBlackList(Ljava/util/List;)V

    .line 4543
    goto/16 :goto_134c

    .line 4532
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_5e8
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub;->getCastPid()I

    move-result v2

    .line 4533
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4534
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4535
    goto/16 :goto_134c

    .line 4522
    .end local v2    # "_result":I
    :pswitch_5f4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4524
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    .line 4525
    .local v3, "_arg1":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4526
    invoke-virtual {p0, v2, v3}, Landroid/app/IActivityManager$Stub;->startDelegateShellPermissionIdentity(I[Ljava/lang/String;)V

    .line 4527
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4528
    goto/16 :goto_134c

    .line 4510
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":[Ljava/lang/String;
    :pswitch_607
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4512
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/IProgressListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IProgressListener;

    move-result-object v3

    .line 4513
    .local v3, "_arg1":Landroid/os/IProgressListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4514
    invoke-virtual {p0, v2, v3}, Landroid/app/IActivityManager$Stub;->startUserInBackgroundWithListener(ILandroid/os/IProgressListener;)Z

    move-result v4

    .line 4515
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4516
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4517
    goto/16 :goto_134c

    .line 4501
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/os/IProgressListener;
    .end local v4    # "_result":Z
    :pswitch_622
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4502
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4503
    invoke-virtual {p0, v2}, Landroid/app/IActivityManager$Stub;->backgroundAllowlistUid(I)V

    .line 4504
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4505
    goto/16 :goto_134c

    .line 4492
    .end local v2    # "_arg0":I
    :pswitch_631
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 4493
    .local v2, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4494
    invoke-virtual {p0, v2, v3}, Landroid/app/IActivityManager$Stub;->waitForNetworkStateUpdate(J)V

    .line 4495
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4496
    goto/16 :goto_134c

    .line 4483
    .end local v2    # "_arg0":J
    :pswitch_640
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4484
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4485
    invoke-virtual {p0, v2}, Landroid/app/IActivityManager$Stub;->setPersistentVrThread(I)V

    .line 4486
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4487
    goto/16 :goto_134c

    .line 4472
    .end local v2    # "_arg0":I
    :pswitch_64f
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 4474
    .local v2, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 4475
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4476
    invoke-virtual {p0, v2, v3}, Landroid/app/IActivityManager$Stub;->scheduleApplicationInfoChanged(Ljava/util/List;I)V

    .line 4477
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4478
    goto/16 :goto_134c

    .line 4463
    .end local v2    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "_arg1":I
    :pswitch_662
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4464
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4465
    invoke-virtual {p0, v2}, Landroid/app/IActivityManager$Stub;->cancelTaskWindowTransition(I)V

    .line 4466
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4467
    goto/16 :goto_134c

    .line 4453
    .end local v2    # "_arg0":I
    :pswitch_671
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4454
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4455
    invoke-virtual {p0, v2}, Landroid/app/IActivityManager$Stub;->restartUserInBackground(I)I

    move-result v3

    .line 4456
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4457
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4458
    goto/16 :goto_134c

    .line 4444
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_684
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 4445
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4446
    invoke-virtual {p0, v2}, Landroid/app/IActivityManager$Stub;->setHasTopUi(Z)V

    .line 4447
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4448
    goto/16 :goto_134c

    .line 4435
    .end local v2    # "_arg0":Z
    :pswitch_693
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4436
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4437
    invoke-virtual {p0, v2}, Landroid/app/IActivityManager$Stub;->setRenderThread(I)V

    .line 4438
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4439
    goto/16 :goto_134c

    .line 4425
    .end local v2    # "_arg0":I
    :pswitch_6a2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4426
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4427
    invoke-virtual {p0, v2}, Landroid/app/IActivityManager$Stub;->isBackgroundRestricted(Ljava/lang/String;)Z

    move-result v3

    .line 4428
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4429
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4430
    goto/16 :goto_134c

    .line 4420
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_6b5
    invoke-direct {p0, p2, p3}, Landroid/app/IActivityManager$Stub;->onTransact$sendIntentSender$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 4414
    :pswitch_6ba
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub;->sendIdleJobTrigger()V

    .line 4415
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4416
    goto/16 :goto_134c

    .line 4404
    :pswitch_6c2
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 4406
    .local v2, "_arg0":Landroid/content/Intent;
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 4407
    .local v3, "_arg1":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4408
    invoke-virtual {p0, v2, v3}, Landroid/app/IActivityManager$Stub;->startConfirmDeviceCredentialIntent(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 4409
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4410
    goto/16 :goto_134c

    .line 4395
    .end local v2    # "_arg0":Landroid/content/Intent;
    .end local v3    # "_arg1":Landroid/os/Bundle;
    :pswitch_6dd
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4396
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4397
    invoke-virtual {p0, v2}, Landroid/app/IActivityManager$Stub;->notifyLockedProfile(I)V

    .line 4398
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4399
    goto/16 :goto_134c

    .line 4385
    .end local v2    # "_arg0":I
    :pswitch_6ec
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 4386
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4387
    invoke-virtual {p0, v2}, Landroid/app/IActivityManager$Stub;->isVrModePackageEnabled(Landroid/content/ComponentName;)Z

    move-result v3

    .line 4388
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4389
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4390
    goto/16 :goto_134c

    .line 4377
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Z
    :pswitch_703
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub;->getMemoryTrimLevel()I

    move-result v2

    .line 4378
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4379
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4380
    goto/16 :goto_134c

    .line 4367
    .end local v2    # "_result":I
    :pswitch_70f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4369
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 4370
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4371
    invoke-virtual {p0, v2, v3}, Landroid/app/IActivityManager$Stub;->makePackageIdle(Ljava/lang/String;I)V

    .line 4372
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4373
    goto/16 :goto_134c

    .line 4356
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    :pswitch_722
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4358
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 4359
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4360
    invoke-virtual {p0, v2, v3}, Landroid/app/IActivityManager$Stub;->killPackageDependents(Ljava/lang/String;I)V

    .line 4361
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4362
    goto/16 :goto_134c

    .line 4351
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    :pswitch_735
    invoke-direct {p0, p2, p3}, Landroid/app/IActivityManager$Stub;->onTransact$unlockUser$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 4343
    :pswitch_73a
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 4344
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4345
    invoke-virtual {p0, v2}, Landroid/app/IActivityManager$Stub;->suppressResizeConfigChanges(Z)V

    .line 4346
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4347
    goto/16 :goto_134c

    .line 4336
    .end local v2    # "_arg0":Z
    :pswitch_749
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub;->enableBinderTracing()V

    .line 4337
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4338
    goto/16 :goto_134c

    .line 4327
    :pswitch_751
    sget-object v2, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelFileDescriptor;

    .line 4328
    .local v2, "_arg0":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4329
    invoke-virtual {p0, v2}, Landroid/app/IActivityManager$Stub;->stopBinderTrackingAndDump(Landroid/os/ParcelFileDescriptor;)Z

    move-result v3

    .line 4330
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4331
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4332
    goto/16 :goto_134c

    .line 4319
    .end local v2    # "_arg0":Landroid/os/ParcelFileDescriptor;
    .end local v3    # "_result":Z
    :pswitch_768
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub;->startBinderTracking()Z

    move-result v2

    .line 4320
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4321
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4322
    goto/16 :goto_134c

    .line 4308
    .end local v2    # "_result":Z
    :pswitch_774
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4310
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4311
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4312
    invoke-virtual {p0, v2, v3}, Landroid/app/IActivityManager$Stub;->getPackageProcessState(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 4313
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4314
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 4315
    goto/16 :goto_134c

    .line 4303
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":I
    :pswitch_78b
    invoke-direct {p0, p2, p3}, Landroid/app/IActivityManager$Stub;->onTransact$noteAlarmFinish$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 4299
    :pswitch_790
    invoke-direct {p0, p2, p3}, Landroid/app/IActivityManager$Stub;->onTransact$noteAlarmStart$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 4289
    :pswitch_795
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4291
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    .line 4292
    .local v3, "_arg1":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4293
    invoke-virtual {p0, v2, v3}, Landroid/app/IActivityManager$Stub;->updateLockTaskPackages(I[Ljava/lang/String;)V

    .line 4294
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4295
    goto/16 :goto_134c

    .line 4280
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":[Ljava/lang/String;
    :pswitch_7a8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4281
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4282
    invoke-virtual {p0, v2}, Landroid/app/IActivityManager$Stub;->dumpHeapFinished(Ljava/lang/String;)V

    .line 4283
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4284
    goto/16 :goto_134c

    .line 4275
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_7b7
    invoke-direct {p0, p2, p3}, Landroid/app/IActivityManager$Stub;->onTransact$setDumpHeapDebugLimit$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 4268
    :pswitch_7bc
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub;->getLockTaskModeState()I

    move-result v2

    .line 4269
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4270
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4271
    goto/16 :goto_134c

    .line 4256
    .end local v2    # "_result":I
    :pswitch_7c8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4258
    .local v2, "_arg0":I
    sget-object v3, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    .line 4260
    .local v3, "_arg1":Landroid/graphics/Rect;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 4261
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4262
    invoke-virtual {p0, v2, v3, v4}, Landroid/app/IActivityManager$Stub;->resizeTask(ILandroid/graphics/Rect;I)V

    .line 4263
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4264
    goto/16 :goto_134c

    .line 4246
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/graphics/Rect;
    .end local v4    # "_arg2":I
    :pswitch_7e3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4247
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4248
    invoke-virtual {p0, v2}, Landroid/app/IActivityManager$Stub;->getTaskResizeableForFreeform(I)Z

    move-result v3

    .line 4249
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4250
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4251
    goto/16 :goto_134c

    .line 4235
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_7f6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4237
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 4238
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4239
    invoke-virtual {p0, v2, v3}, Landroid/app/IActivityManager$Stub;->setTaskResizeable(II)V

    .line 4240
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4241
    goto/16 :goto_134c

    .line 4224
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_809
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4226
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 4227
    .local v3, "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4228
    invoke-virtual {p0, v2, v3}, Landroid/app/IActivityManager$Stub;->notifyCleartextNetwork(I[B)V

    .line 4229
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4230
    goto/16 :goto_134c

    .line 4215
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":[B
    :pswitch_81c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/ITaskStackListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/ITaskStackListener;

    move-result-object v2

    .line 4216
    .local v2, "_arg0":Landroid/app/ITaskStackListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4217
    invoke-virtual {p0, v2}, Landroid/app/IActivityManager$Stub;->unregisterTaskStackListener(Landroid/app/ITaskStackListener;)V

    .line 4218
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4219
    goto/16 :goto_134c

    .line 4206
    .end local v2    # "_arg0":Landroid/app/ITaskStackListener;
    :pswitch_82f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/ITaskStackListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/ITaskStackListener;

    move-result-object v2

    .line 4207
    .restart local v2    # "_arg0":Landroid/app/ITaskStackListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4208
    invoke-virtual {p0, v2}, Landroid/app/IActivityManager$Stub;->registerTaskStackListener(Landroid/app/ITaskStackListener;)V

    .line 4209
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4210
    goto/16 :goto_134c

    .line 4199
    .end local v2    # "_arg0":Landroid/app/ITaskStackListener;
    :pswitch_842
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub;->bootAnimationComplete()V

    .line 4200
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4201
    goto/16 :goto_134c

    .line 4190
    :pswitch_84a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 4191
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4192
    invoke-virtual {p0, v2}, Landroid/app/IActivityManager$Stub;->isTopOfTask(Landroid/os/IBinder;)Z

    move-result v3

    .line 4193
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4194
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4195
    goto/16 :goto_134c

    .line 4181
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_result":Z
    :pswitch_85d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4182
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4183
    invoke-virtual {p0, v2}, Landroid/app/IActivityManager$Stub;->startSystemLockTaskMode(I)V

    .line 4184
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4185
    goto/16 :goto_134c

    .line 4169
    .end local v2    # "_arg0":I
    :pswitch_86c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4171
    .restart local v2    # "_arg0":I
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 4172
    .local v3, "_arg1":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4173
    invoke-virtual {p0, v2, v3}, Landroid/app/IActivityManager$Stub;->startActivityFromRecents(ILandroid/os/Bundle;)I

    move-result v4

    .line 4174
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4175
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 4176
    goto/16 :goto_134c

    .line 4161
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/os/Bundle;
    .end local v4    # "_result":I
    :pswitch_887
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub;->isInLockTaskMode()Z

    move-result v2

    .line 4162
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4163
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4164
    goto/16 :goto_134c

    .line 4152
    .end local v2    # "_result":Z
    :pswitch_893
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4153
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4154
    invoke-virtual {p0, v2}, Landroid/app/IActivityManager$Stub;->startUserInBackground(I)Z

    move-result v3

    .line 4155
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4156
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4157
    goto/16 :goto_134c

    .line 4140
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_8a6
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v2

    .line 4142
    .local v2, "_arg0":Landroid/content/IIntentSender;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4143
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4144
    invoke-virtual {p0, v2, v3}, Landroid/app/IActivityManager$Stub;->getTagForIntentSender(Landroid/content/IIntentSender;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4145
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4146
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4147
    goto/16 :goto_134c

    .line 4126
    .end local v2    # "_arg0":Landroid/content/IIntentSender;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Ljava/lang/String;
    :pswitch_8c1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4128
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 4130
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 4131
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4132
    invoke-virtual {p0, v2, v3, v4}, Landroid/app/IActivityManager$Stub;->setProcessMemoryTrimLevel(Ljava/lang/String;II)Z

    move-result v5

    .line 4133
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4134
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4135
    goto/16 :goto_134c

    .line 4116
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_result":Z
    :pswitch_8dc
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4117
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4118
    invoke-virtual {p0, v2}, Landroid/app/IActivityManager$Stub;->getTaskBounds(I)Landroid/graphics/Rect;

    move-result-object v3

    .line 4119
    .local v3, "_result":Landroid/graphics/Rect;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4120
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 4121
    goto/16 :goto_134c

    .line 4107
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Landroid/graphics/Rect;
    :pswitch_8ef
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 4108
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4109
    invoke-virtual {p0, v2}, Landroid/app/IActivityManager$Stub;->appNotRespondingViaProvider(Landroid/os/IBinder;)V

    .line 4110
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4111
    goto/16 :goto_134c

    .line 4100
    .end local v2    # "_arg0":Landroid/os/IBinder;
    :pswitch_8fe
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub;->performIdleMaintenance()V

    .line 4101
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4102
    goto/16 :goto_134c

    .line 4094
    :pswitch_906
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub;->restart()V

    .line 4095
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4096
    goto/16 :goto_134c

    .line 4087
    :pswitch_90e
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub;->getFocusedRootTaskInfo()Landroid/app/ActivityTaskManager$RootTaskInfo;

    move-result-object v2

    .line 4088
    .local v2, "_result":Landroid/app/ActivityTaskManager$RootTaskInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4089
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 4090
    goto/16 :goto_134c

    .line 4079
    .end local v2    # "_result":Landroid/app/ActivityTaskManager$RootTaskInfo;
    :pswitch_91a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4080
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4081
    invoke-virtual {p0, v2}, Landroid/app/IActivityManager$Stub;->setFocusedRootTask(I)V

    .line 4082
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4083
    goto/16 :goto_134c

    .line 4066
    .end local v2    # "_arg0":I
    :pswitch_929
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4068
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 4070
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 4071
    .local v4, "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4072
    invoke-virtual {p0, v2, v3, v4}, Landroid/app/IActivityManager$Stub;->moveTaskToRootTask(IIZ)V

    .line 4073
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4074
    goto/16 :goto_134c

    .line 4058
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Z
    :pswitch_940
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub;->getAllRootTaskInfos()Ljava/util/List;

    move-result-object v2

    .line 4059
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityTaskManager$RootTaskInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4060
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 4061
    goto/16 :goto_134c

    .line 4048
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityTaskManager$RootTaskInfo;>;"
    :pswitch_94c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 4050
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 4051
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4052
    invoke-virtual {p0, v2, v3}, Landroid/app/IActivityManager$Stub;->hang(Landroid/os/IBinder;Z)V

    .line 4053
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4054
    goto/16 :goto_134c

    .line 4039
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":Z
    :pswitch_95f
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 4040
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4041
    invoke-virtual {p0, v2}, Landroid/app/IActivityManager$Stub;->setUserIsMonkey(Z)V

    .line 4042
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4043
    goto/16 :goto_134c

    .line 4026
    .end local v2    # "_arg0":Z
    :pswitch_96e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4028
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 4030
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 4031
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4032
    invoke-virtual {p0, v2, v3, v4}, Landroid/app/IActivityManager$Stub;->killUid(IILjava/lang/String;)V

    .line 4033
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4034
    goto/16 :goto_134c

    .line 4016
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Ljava/lang/String;
    :pswitch_985
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 4017
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4018
    invoke-virtual {p0, v2}, Landroid/app/IActivityManager$Stub;->getLaunchedFromPackage(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v3

    .line 4019
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4020
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4021
    goto/16 :goto_134c

    .line 4006
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_998
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v2

    .line 4007
    .local v2, "_arg0":Landroid/content/IIntentSender;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4008
    invoke-virtual {p0, v2}, Landroid/app/IActivityManager$Stub;->getIntentForIntentSender(Landroid/content/IIntentSender;)Landroid/content/Intent;

    move-result-object v3

    .line 4009
    .local v3, "_result":Landroid/content/Intent;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4010
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 4011
    goto/16 :goto_134c

    .line 3998
    .end local v2    # "_arg0":Landroid/content/IIntentSender;
    .end local v3    # "_result":Landroid/content/Intent;
    :pswitch_9af
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub;->collectWebViewProcesses()Ljava/util/List;

    move-result-object v2

    .line 3999
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4000
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 4001
    goto/16 :goto_134c

    .line 3991
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_9bb
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub;->getBugreportWhitelistedPackages()Ljava/util/List;

    move-result-object v2

    .line 3992
    .restart local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3993
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 3994
    goto/16 :goto_134c

    .line 3984
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_9c7
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub;->launchBugReportHandlerApp()Z

    move-result v2

    .line 3985
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3986
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3987
    goto/16 :goto_134c

    .line 3976
    .end local v2    # "_result":Z
    :pswitch_9d3
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 3977
    .local v2, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3978
    invoke-virtual {p0, v2, v3}, Landroid/app/IActivityManager$Stub;->requestRemoteBugReport(J)V

    .line 3979
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3980
    goto/16 :goto_134c

    .line 3969
    .end local v2    # "_arg0":J
    :pswitch_9e2
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub;->requestFullBugReport()V

    .line 3970
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3971
    goto/16 :goto_134c

    .line 3963
    :pswitch_9ea
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub;->requestInteractiveBugReport()V

    .line 3964
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3965
    goto/16 :goto_134c

    .line 3953
    :pswitch_9f2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3955
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3956
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3957
    invoke-virtual {p0, v2, v3}, Landroid/app/IActivityManager$Stub;->requestInteractiveBugReportWithDescription(Ljava/lang/String;Ljava/lang/String;)V

    .line 3958
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3959
    goto/16 :goto_134c

    .line 3942
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_a05
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3944
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3945
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3946
    invoke-virtual {p0, v2, v3}, Landroid/app/IActivityManager$Stub;->requestWifiBugReport(Ljava/lang/String;Ljava/lang/String;)V

    .line 3947
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3948
    goto/16 :goto_134c

    .line 3931
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_a18
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3933
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3934
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3935
    invoke-virtual {p0, v2, v3}, Landroid/app/IActivityManager$Stub;->requestTelephonyBugReport(Ljava/lang/String;Ljava/lang/String;)V

    .line 3936
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3937
    goto/16 :goto_134c

    .line 3918
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_a2b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3920
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3922
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 3923
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3924
    invoke-virtual {p0, v2, v3, v4}, Landroid/app/IActivityManager$Stub;->requestBugReportWithDescription(Ljava/lang/String;Ljava/lang/String;I)V

    .line 3925
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3926
    goto/16 :goto_134c

    .line 3909
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":I
    :pswitch_a42
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3910
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3911
    invoke-virtual {p0, v2}, Landroid/app/IActivityManager$Stub;->requestBugReport(I)V

    .line 3912
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3913
    goto/16 :goto_134c

    .line 3902
    .end local v2    # "_arg0":I
    :pswitch_a51
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub;->requestSystemServerHeapDump()V

    .line 3903
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3904
    goto/16 :goto_134c

    .line 3895
    :pswitch_a59
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub;->getRunningUserIds()[I

    move-result-object v2

    .line 3896
    .local v2, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3897
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 3898
    goto/16 :goto_134c

    .line 3887
    .end local v2    # "_result":[I
    :pswitch_a65
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/IUserSwitchObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUserSwitchObserver;

    move-result-object v2

    .line 3888
    .local v2, "_arg0":Landroid/app/IUserSwitchObserver;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3889
    invoke-virtual {p0, v2}, Landroid/app/IActivityManager$Stub;->unregisterUserSwitchObserver(Landroid/app/IUserSwitchObserver;)V

    .line 3890
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3891
    goto/16 :goto_134c

    .line 3876
    .end local v2    # "_arg0":Landroid/app/IUserSwitchObserver;
    :pswitch_a78
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/IUserSwitchObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUserSwitchObserver;

    move-result-object v2

    .line 3878
    .restart local v2    # "_arg0":Landroid/app/IUserSwitchObserver;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3879
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3880
    invoke-virtual {p0, v2, v3}, Landroid/app/IActivityManager$Stub;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V

    .line 3881
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3882
    goto/16 :goto_134c

    .line 3862
    .end local v2    # "_arg0":Landroid/app/IUserSwitchObserver;
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_a8f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3864
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 3866
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/app/IStopUserCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IStopUserCallback;

    move-result-object v4

    .line 3867
    .local v4, "_arg2":Landroid/app/IStopUserCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3868
    invoke-virtual {p0, v2, v3, v4}, Landroid/app/IActivityManager$Stub;->stopUserWithDelayedLocking(IZLandroid/app/IStopUserCallback;)I

    move-result v5

    .line 3869
    .local v5, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3870
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 3871
    goto/16 :goto_134c

    .line 3848
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    .end local v4    # "_arg2":Landroid/app/IStopUserCallback;
    .end local v5    # "_result":I
    :pswitch_aae
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3850
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 3852
    .restart local v3    # "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/app/IStopUserCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IStopUserCallback;

    move-result-object v4

    .line 3853
    .restart local v4    # "_arg2":Landroid/app/IStopUserCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3854
    invoke-virtual {p0, v2, v3, v4}, Landroid/app/IActivityManager$Stub;->stopUser(IZLandroid/app/IStopUserCallback;)I

    move-result v5

    .line 3855
    .restart local v5    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3856
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 3857
    goto/16 :goto_134c

    .line 3843
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    .end local v4    # "_arg2":Landroid/app/IStopUserCallback;
    .end local v5    # "_result":I
    :pswitch_acd
    invoke-direct {p0, p2, p3}, Landroid/app/IActivityManager$Stub;->onTransact$startActivityAsUserWithFeature$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3839
    :pswitch_ad2
    invoke-direct {p0, p2, p3}, Landroid/app/IActivityManager$Stub;->onTransact$startActivityAsUser$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3830
    :pswitch_ad7
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v2

    .line 3831
    .local v2, "_arg0":Landroid/content/IIntentSender;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3832
    invoke-virtual {p0, v2}, Landroid/app/IActivityManager$Stub;->isIntentSenderAnActivity(Landroid/content/IIntentSender;)Z

    move-result v3

    .line 3833
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3834
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3835
    goto/16 :goto_134c

    .line 3821
    .end local v2    # "_arg0":Landroid/content/IIntentSender;
    .end local v3    # "_result":Z
    :pswitch_aee
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 3822
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3823
    invoke-virtual {p0, v2}, Landroid/app/IActivityManager$Stub;->unstableProviderDied(Landroid/os/IBinder;)V

    .line 3824
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3825
    goto/16 :goto_134c

    .line 3811
    .end local v2    # "_arg0":Landroid/os/IBinder;
    :pswitch_afd
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 3812
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3813
    invoke-virtual {p0, v2}, Landroid/app/IActivityManager$Stub;->getLaunchedFromUid(Landroid/os/IBinder;)I

    move-result v3

    .line 3814
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3815
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3816
    goto/16 :goto_134c

    .line 3803
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_result":I
    :pswitch_b10
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub;->getCurrentUserId()I

    move-result v2

    .line 3804
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3805
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3806
    goto/16 :goto_134c

    .line 3796
    .end local v2    # "_result":I
    :pswitch_b1c
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 3797
    .local v2, "_result":Landroid/content/pm/UserInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3798
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3799
    goto/16 :goto_134c

    .line 3787
    .end local v2    # "_result":Landroid/content/pm/UserInfo;
    :pswitch_b28
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3788
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3789
    invoke-virtual {p0, v2}, Landroid/app/IActivityManager$Stub;->killProcessesBelowForeground(Ljava/lang/String;)Z

    move-result v3

    .line 3790
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3791
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3792
    goto/16 :goto_134c

    .line 3777
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_b3b
    new-instance v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    invoke-direct {v2}, Landroid/app/ActivityManager$RunningAppProcessInfo;-><init>()V

    .line 3778
    .local v2, "_arg0":Landroid/app/ActivityManager$RunningAppProcessInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3779
    invoke-virtual {p0, v2}, Landroid/app/IActivityManager$Stub;->getMyMemoryState(Landroid/app/ActivityManager$RunningAppProcessInfo;)V

    .line 3780
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3781
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3782
    goto/16 :goto_134c

    .line 3764
    .end local v2    # "_arg0":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :pswitch_b4e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3766
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 3768
    .local v3, "_arg1":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 3769
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3770
    invoke-virtual {p0, v2, v3, v4}, Landroid/app/IActivityManager$Stub;->removeContentProviderExternalAsUser(Ljava/lang/String;Landroid/os/IBinder;I)V

    .line 3771
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3772
    goto/16 :goto_134c

    .line 3753
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/os/IBinder;
    .end local v4    # "_arg2":I
    :pswitch_b65
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3755
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 3756
    .restart local v3    # "_arg1":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3757
    invoke-virtual {p0, v2, v3}, Landroid/app/IActivityManager$Stub;->removeContentProviderExternal(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 3758
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3759
    goto/16 :goto_134c

    .line 3748
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/os/IBinder;
    :pswitch_b78
    invoke-direct {p0, p2, p3}, Landroid/app/IActivityManager$Stub;->onTransact$getContentProviderExternal$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3742
    :pswitch_b7d
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub;->killAllBackgroundProcesses()V

    .line 3743
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3744
    goto/16 :goto_134c

    .line 3732
    :pswitch_b85
    sget-object v2, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    .line 3734
    .local v2, "_arg0":Ljava/lang/CharSequence;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 3735
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3736
    invoke-virtual {p0, v2, v3}, Landroid/app/IActivityManager$Stub;->showBootMessage(Ljava/lang/CharSequence;Z)V

    .line 3737
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3738
    goto/16 :goto_134c

    .line 3722
    .end local v2    # "_arg0":Ljava/lang/CharSequence;
    .end local v3    # "_arg1":Z
    :pswitch_b9c
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 3723
    .local v2, "_arg0":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3724
    invoke-virtual {p0, v2}, Landroid/app/IActivityManager$Stub;->getProcessPss([I)[J

    move-result-object v3

    .line 3725
    .local v3, "_result":[J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3726
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 3727
    goto/16 :goto_134c

    .line 3709
    .end local v2    # "_arg0":[I
    .end local v3    # "_result":[J
    :pswitch_baf
    sget-object v2, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/res/Configuration;

    .line 3711
    .local v2, "_arg0":Landroid/content/res/Configuration;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3713
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 3714
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3715
    invoke-virtual {p0, v2, v3, v4}, Landroid/app/IActivityManager$Stub;->updatePersistentConfigurationWithAttribution(Landroid/content/res/Configuration;Ljava/lang/String;Ljava/lang/String;)V

    .line 3716
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3717
    goto/16 :goto_134c

    .line 3700
    .end local v2    # "_arg0":Landroid/content/res/Configuration;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Ljava/lang/String;
    :pswitch_bca
    sget-object v2, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/res/Configuration;

    .line 3701
    .restart local v2    # "_arg0":Landroid/content/res/Configuration;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3702
    invoke-virtual {p0, v2}, Landroid/app/IActivityManager$Stub;->updatePersistentConfiguration(Landroid/content/res/Configuration;)V

    .line 3703
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3704
    goto/16 :goto_134c

    .line 3690
    .end local v2    # "_arg0":Landroid/content/res/Configuration;
    :pswitch_bdd
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v2

    .line 3691
    .local v2, "_arg0":Landroid/content/IIntentSender;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3692
    invoke-virtual {p0, v2}, Landroid/app/IActivityManager$Stub;->isIntentSenderTargetedToPackage(Landroid/content/IIntentSender;)Z

    move-result v3

    .line 3693
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3694
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3695
    goto/16 :goto_134c

    .line 3681
    .end local v2    # "_arg0":Landroid/content/IIntentSender;
    .end local v3    # "_result":Z
    :pswitch_bf4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/IProcessObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IProcessObserver;

    move-result-object v2

    .line 3682
    .local v2, "_arg0":Landroid/app/IProcessObserver;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3683
    invoke-virtual {p0, v2}, Landroid/app/IActivityManager$Stub;->unregisterProcessObserver(Landroid/app/IProcessObserver;)V

    .line 3684
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3685
    goto/16 :goto_134c

    .line 3672
    .end local v2    # "_arg0":Landroid/app/IProcessObserver;
    :pswitch_c07
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/IProcessObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IProcessObserver;

    move-result-object v2

    .line 3673
    .restart local v2    # "_arg0":Landroid/app/IProcessObserver;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3674
    invoke-virtual {p0, v2}, Landroid/app/IActivityManager$Stub;->registerProcessObserver(Landroid/app/IProcessObserver;)V

    .line 3675
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3676
    goto/16 :goto_134c

    .line 3662
    .end local v2    # "_arg0":Landroid/app/IProcessObserver;
    :pswitch_c1a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3663
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3664
    invoke-virtual {p0, v2}, Landroid/app/IActivityManager$Stub;->removeTask(I)Z

    move-result v3

    .line 3665
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3666
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3667
    goto/16 :goto_134c

    .line 3653
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_c2d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3654
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3655
    invoke-virtual {p0, v2}, Landroid/app/IActivityManager$Stub;->setStopUserOnSwitch(I)V

    .line 3656
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3657
    goto/16 :goto_134c

    .line 3645
    .end local v2    # "_arg0":I
    :pswitch_c3c
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub;->getSwitchingToUserMessage()Ljava/lang/String;

    move-result-object v2

    .line 3646
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3647
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3648
    goto/16 :goto_134c

    .line 3638
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_c48
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub;->getSwitchingFromUserMessage()Ljava/lang/String;

    move-result-object v2

    .line 3639
    .restart local v2    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3640
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3641
    goto/16 :goto_134c

    .line 3629
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_c54
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3630
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3631
    invoke-virtual {p0, v2}, Landroid/app/IActivityManager$Stub;->switchUser(I)Z

    move-result v3

    .line 3632
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3633
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3634
    goto/16 :goto_134c

    .line 3618
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_c67
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3620
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3621
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3622
    invoke-virtual {p0, v2, v3}, Landroid/app/IActivityManager$Stub;->setPackageScreenCompatMode(Ljava/lang/String;I)V

    .line 3623
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3624
    goto/16 :goto_134c

    .line 3606
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    :pswitch_c7a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3608
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3609
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3610
    invoke-virtual {p0, v2, v3}, Landroid/app/IActivityManager$Stub;->isUserRunning(II)Z

    move-result v4

    .line 3611
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3612
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3613
    goto/16 :goto_134c

    .line 3601
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_c91
    invoke-direct {p0, p2, p3}, Landroid/app/IActivityManager$Stub;->onTransact$dumpHeap$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3590
    :pswitch_c96
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 3592
    .local v2, "_arg0":Landroid/net/Uri;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3594
    .restart local v3    # "_arg1":I
    sget-object v4, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/RemoteCallback;

    .line 3595
    .local v4, "_arg2":Landroid/os/RemoteCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3596
    invoke-virtual {p0, v2, v3, v4}, Landroid/app/IActivityManager$Stub;->getProviderMimeTypeAsync(Landroid/net/Uri;ILandroid/os/RemoteCallback;)V

    .line 3597
    goto/16 :goto_134c

    .line 3578
    .end local v2    # "_arg0":Landroid/net/Uri;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Landroid/os/RemoteCallback;
    :pswitch_cb2
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 3580
    .restart local v2    # "_arg0":Landroid/net/Uri;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3581
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3582
    invoke-virtual {p0, v2, v3}, Landroid/app/IActivityManager$Stub;->getProviderMimeType(Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object v4

    .line 3583
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3584
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3585
    goto/16 :goto_134c

    .line 3573
    .end local v2    # "_arg0":Landroid/net/Uri;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Ljava/lang/String;
    :pswitch_ccd
    invoke-direct {p0, p2, p3}, Landroid/app/IActivityManager$Stub;->onTransact$crashApplicationWithTypeWithExtras$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3569
    :pswitch_cd2
    invoke-direct {p0, p2, p3}, Landroid/app/IActivityManager$Stub;->onTransact$crashApplicationWithType$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3562
    :pswitch_cd7
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub;->isTopActivityImmersive()Z

    move-result v2

    .line 3563
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3564
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3565
    goto/16 :goto_134c

    .line 3550
    .end local v2    # "_result":Z
    :pswitch_ce3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 3552
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3554
    .restart local v3    # "_arg1":I
    sget-object v4, Landroid/os/StrictMode$ViolationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/StrictMode$ViolationInfo;

    .line 3555
    .local v4, "_arg2":Landroid/os/StrictMode$ViolationInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3556
    invoke-virtual {p0, v2, v3, v4}, Landroid/app/IActivityManager$Stub;->handleApplicationStrictModeViolation(Landroid/os/IBinder;ILandroid/os/StrictMode$ViolationInfo;)V

    .line 3557
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3558
    goto/16 :goto_134c

    .line 3543
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Landroid/os/StrictMode$ViolationInfo;
    :pswitch_cfe
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub;->finishHeavyWeightApp()V

    .line 3544
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3545
    goto/16 :goto_134c

    .line 3536
    :pswitch_d06
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub;->getRunningExternalApplications()Ljava/util/List;

    move-result-object v2

    .line 3537
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3538
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 3539
    goto/16 :goto_134c

    .line 3529
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :pswitch_d12
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub;->isUserAMonkey()Z

    move-result v2

    .line 3530
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3531
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3532
    goto/16 :goto_134c

    .line 3519
    .end local v2    # "_result":Z
    :pswitch_d1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3521
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3522
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3523
    invoke-virtual {p0, v2, v3}, Landroid/app/IActivityManager$Stub;->killBackgroundProcesses(Ljava/lang/String;I)V

    .line 3524
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3525
    goto/16 :goto_134c

    .line 3514
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    :pswitch_d31
    invoke-direct {p0, p2, p3}, Landroid/app/IActivityManager$Stub;->onTransact$handleApplicationWtf$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3504
    :pswitch_d36
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3506
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3507
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3508
    invoke-virtual {p0, v2, v3}, Landroid/app/IActivityManager$Stub;->killApplicationProcess(Ljava/lang/String;I)V

    .line 3509
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3510
    goto/16 :goto_134c

    .line 3494
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    :pswitch_d49
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 3495
    .local v2, "_arg0":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3496
    invoke-virtual {p0, v2}, Landroid/app/IActivityManager$Stub;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    move-result-object v3

    .line 3497
    .local v3, "_result":[Landroid/os/Debug$MemoryInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3498
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 3499
    goto/16 :goto_134c

    .line 3485
    .end local v2    # "_arg0":[I
    .end local v3    # "_result":[Landroid/os/Debug$MemoryInfo;
    :pswitch_d5c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3486
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3487
    invoke-virtual {p0, v2}, Landroid/app/IActivityManager$Stub;->closeSystemDialogs(Ljava/lang/String;)V

    .line 3488
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3489
    goto/16 :goto_134c

    .line 3480
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_d6b
    invoke-direct {p0, p2, p3}, Landroid/app/IActivityManager$Stub;->onTransact$killApplication$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3472
    :pswitch_d70
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3473
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3474
    invoke-virtual {p0, v2}, Landroid/app/IActivityManager$Stub;->addPackageDependency(Ljava/lang/String;)V

    .line 3475
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3476
    goto/16 :goto_134c

    .line 3467
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_d7f
    invoke-direct {p0, p2, p3}, Landroid/app/IActivityManager$Stub;->onTransact$handleIncomingUser$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3459
    :pswitch_d84
    sget-object v2, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    .line 3460
    .local v2, "_arg0":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3461
    invoke-virtual {p0, v2}, Landroid/app/IActivityManager$Stub;->unbindBackupAgent(Landroid/content/pm/ApplicationInfo;)V

    .line 3462
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3463
    goto/16 :goto_134c

    .line 3446
    .end local v2    # "_arg0":Landroid/content/pm/ApplicationInfo;
    :pswitch_d97
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3448
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 3450
    .local v3, "_arg1":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 3451
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3452
    invoke-virtual {p0, v2, v3, v4}, Landroid/app/IActivityManager$Stub;->backupAgentCreated(Ljava/lang/String;Landroid/os/IBinder;I)V

    .line 3453
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3454
    goto/16 :goto_134c

    .line 3441
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroid/os/IBinder;
    .end local v4    # "_arg2":I
    :pswitch_dae
    invoke-direct {p0, p2, p3}, Landroid/app/IActivityManager$Stub;->onTransact$bindBackupAgent$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3435
    :pswitch_db3
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub;->resumeAppSwitches()V

    .line 3436
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3437
    goto/16 :goto_134c

    .line 3429
    :pswitch_dbb
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub;->stopAppSwitches()V

    .line 3430
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3431
    goto/16 :goto_134c

    .line 3420
    :pswitch_dc3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3421
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3422
    invoke-virtual {p0, v2}, Landroid/app/IActivityManager$Stub;->shutdown(I)Z

    move-result v3

    .line 3423
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3424
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3425
    goto/16 :goto_134c

    .line 3415
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_dd6
    invoke-direct {p0, p2, p3}, Landroid/app/IActivityManager$Stub;->onTransact$profileControl$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3402
    :pswitch_ddb
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 3404
    .local v2, "_arg0":Landroid/content/Intent;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3406
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 3407
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3408
    invoke-virtual {p0, v2, v3, v4}, Landroid/app/IActivityManager$Stub;->peekService(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    .line 3409
    .local v5, "_result":Landroid/os/IBinder;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3410
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3411
    goto/16 :goto_134c

    .line 3394
    .end local v2    # "_arg0":Landroid/content/Intent;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_result":Landroid/os/IBinder;
    :pswitch_dfa
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    .line 3395
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3396
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 3397
    goto/16 :goto_134c

    .line 3383
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :pswitch_e06
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3385
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3386
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3387
    invoke-virtual {p0, v2, v3}, Landroid/app/IActivityManager$Stub;->getServices(II)Ljava/util/List;

    move-result-object v4

    .line 3388
    .local v4, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3389
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 3390
    goto/16 :goto_134c

    .line 3369
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    :pswitch_e1d
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 3371
    .local v2, "_arg0":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3373
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 3374
    .local v4, "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3375
    invoke-virtual {p0, v2, v3, v4}, Landroid/app/IActivityManager$Stub;->killPids([ILjava/lang/String;Z)Z

    move-result v5

    .line 3376
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3377
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3378
    goto/16 :goto_134c

    .line 3358
    .end local v2    # "_arg0":[I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Z
    .end local v5    # "_result":Z
    :pswitch_e38
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3360
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3361
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3362
    invoke-virtual {p0, v2, v3}, Landroid/app/IActivityManager$Stub;->forceStopPackage(Ljava/lang/String;I)V

    .line 3363
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3364
    goto/16 :goto_134c

    .line 3348
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    :pswitch_e4b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/IForegroundServiceObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IForegroundServiceObserver;

    move-result-object v2

    .line 3349
    .local v2, "_arg0":Landroid/app/IForegroundServiceObserver;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3350
    invoke-virtual {p0, v2}, Landroid/app/IActivityManager$Stub;->registerForegroundServiceObserver(Landroid/app/IForegroundServiceObserver;)Z

    move-result v3

    .line 3351
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3352
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3353
    goto/16 :goto_134c

    .line 3337
    .end local v2    # "_arg0":Landroid/app/IForegroundServiceObserver;
    .end local v3    # "_result":Z
    :pswitch_e62
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3339
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3340
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3341
    invoke-virtual {p0, v2, v3}, Landroid/app/IActivityManager$Stub;->stopAppForUser(Ljava/lang/String;I)V

    .line 3342
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3343
    goto/16 :goto_134c

    .line 3332
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    :pswitch_e75
    invoke-direct {p0, p2, p3}, Landroid/app/IActivityManager$Stub;->onTransact$clearApplicationUserData$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3325
    :pswitch_e7a
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub;->getProcessesInErrorState()Ljava/util/List;

    move-result-object v2

    .line 3326
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$ProcessErrorStateInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3327
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 3328
    goto/16 :goto_134c

    .line 3316
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$ProcessErrorStateInfo;>;"
    :pswitch_e86
    new-instance v2, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v2}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 3317
    .local v2, "_arg0":Landroid/app/ActivityManager$MemoryInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3318
    invoke-virtual {p0, v2}, Landroid/app/IActivityManager$Stub;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 3319
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3320
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3321
    goto/16 :goto_134c

    .line 3304
    .end local v2    # "_arg0":Landroid/app/ActivityManager$MemoryInfo;
    :pswitch_e99
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 3306
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 3307
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3308
    invoke-virtual {p0, v2, v3}, Landroid/app/IActivityManager$Stub;->moveActivityTaskToBack(Landroid/os/IBinder;Z)Z

    move-result v4

    .line 3309
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3310
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3311
    goto/16 :goto_134c

    .line 3292
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":Z
    .end local v4    # "_result":Z
    :pswitch_eb0
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 3294
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 3295
    .local v3, "_arg1":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3296
    invoke-virtual {p0, v2, v3}, Landroid/app/IActivityManager$Stub;->getForegroundServiceType(Landroid/content/ComponentName;Landroid/os/IBinder;)I

    move-result v4

    .line 3297
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3298
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3299
    goto/16 :goto_134c

    .line 3287
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Landroid/os/IBinder;
    .end local v4    # "_result":I
    :pswitch_ecb
    invoke-direct {p0, p2, p3}, Landroid/app/IActivityManager$Stub;->onTransact$setServiceForeground$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3273
    :pswitch_ed0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 3275
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3277
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 3279
    .local v4, "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 3280
    .local v5, "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3281
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/app/IActivityManager$Stub;->setProcessImportant(Landroid/os/IBinder;IZLjava/lang/String;)V

    .line 3282
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3283
    goto/16 :goto_134c

    .line 3260
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Z
    .end local v5    # "_arg3":Ljava/lang/String;
    :pswitch_eeb
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 3262
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    sget-object v3, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    .line 3264
    .local v3, "_arg1":Landroid/content/Intent;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 3265
    .restart local v4    # "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3266
    invoke-virtual {p0, v2, v3, v4}, Landroid/app/IActivityManager$Stub;->unbindFinished(Landroid/os/IBinder;Landroid/content/Intent;Z)V

    .line 3267
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3268
    goto/16 :goto_134c

    .line 3249
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":Landroid/content/Intent;
    .end local v4    # "_arg2":Z
    :pswitch_f06
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 3251
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3252
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3253
    invoke-virtual {p0, v2, v3}, Landroid/app/IActivityManager$Stub;->setRequestedOrientation(Landroid/os/IBinder;I)V

    .line 3254
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3255
    goto/16 :goto_134c

    .line 3239
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":I
    :pswitch_f19
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 3241
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 3242
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3243
    invoke-virtual {p0, v2, v3}, Landroid/app/IActivityManager$Stub;->removeContentProvider(Landroid/os/IBinder;Z)V

    .line 3244
    goto/16 :goto_134c

    .line 3234
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":Z
    :pswitch_f29
    invoke-direct {p0, p2, p3}, Landroid/app/IActivityManager$Stub;->onTransact$noteWakeupAlarm$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3228
    :pswitch_f2e
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub;->enterSafeMode()V

    .line 3229
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3230
    goto/16 :goto_134c

    .line 3218
    :pswitch_f36
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v2

    .line 3220
    .local v2, "_arg0":Landroid/content/IIntentSender;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/os/IResultReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/os/IResultReceiver;

    move-result-object v3

    .line 3221
    .local v3, "_arg1":Lcom/android/internal/os/IResultReceiver;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3222
    invoke-virtual {p0, v2, v3}, Landroid/app/IActivityManager$Stub;->unregisterIntentSenderCancelListener(Landroid/content/IIntentSender;Lcom/android/internal/os/IResultReceiver;)V

    .line 3223
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3224
    goto/16 :goto_134c

    .line 3206
    .end local v2    # "_arg0":Landroid/content/IIntentSender;
    .end local v3    # "_arg1":Lcom/android/internal/os/IResultReceiver;
    :pswitch_f51
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v2

    .line 3208
    .restart local v2    # "_arg0":Landroid/content/IIntentSender;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/os/IResultReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/os/IResultReceiver;

    move-result-object v3

    .line 3209
    .restart local v3    # "_arg1":Lcom/android/internal/os/IResultReceiver;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3210
    invoke-virtual {p0, v2, v3}, Landroid/app/IActivityManager$Stub;->registerIntentSenderCancelListenerEx(Landroid/content/IIntentSender;Lcom/android/internal/os/IResultReceiver;)Z

    move-result v4

    .line 3211
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3212
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3213
    goto/16 :goto_134c

    .line 3196
    .end local v2    # "_arg0":Landroid/content/IIntentSender;
    .end local v3    # "_arg1":Lcom/android/internal/os/IResultReceiver;
    .end local v4    # "_result":Z
    :pswitch_f70
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v2

    .line 3197
    .restart local v2    # "_arg0":Landroid/content/IIntentSender;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3198
    invoke-virtual {p0, v2}, Landroid/app/IActivityManager$Stub;->getInfoForIntentSender(Landroid/content/IIntentSender;)Landroid/app/ActivityManager$PendingIntentInfo;

    move-result-object v3

    .line 3199
    .local v3, "_result":Landroid/app/ActivityManager$PendingIntentInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3200
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3201
    goto/16 :goto_134c

    .line 3187
    .end local v2    # "_arg0":Landroid/content/IIntentSender;
    .end local v3    # "_result":Landroid/app/ActivityManager$PendingIntentInfo;
    :pswitch_f87
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v2

    .line 3188
    .restart local v2    # "_arg0":Landroid/content/IIntentSender;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3189
    invoke-virtual {p0, v2}, Landroid/app/IActivityManager$Stub;->cancelIntentSender(Landroid/content/IIntentSender;)V

    .line 3190
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3191
    goto/16 :goto_134c

    .line 3182
    .end local v2    # "_arg0":Landroid/content/IIntentSender;
    :pswitch_f9a
    invoke-direct {p0, p2, p3}, Landroid/app/IActivityManager$Stub;->onTransact$getIntentSenderWithFeature$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3178
    :pswitch_f9f
    invoke-direct {p0, p2, p3}, Landroid/app/IActivityManager$Stub;->onTransact$getIntentSender$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3165
    :pswitch_fa4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 3167
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3169
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 3171
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 3172
    .local v5, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3173
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/app/IActivityManager$Stub;->serviceDoneExecuting(Landroid/os/IBinder;III)V

    .line 3174
    goto/16 :goto_134c

    .line 3151
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":I
    :pswitch_fbc
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3153
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3155
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 3156
    .restart local v4    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3157
    invoke-virtual {p0, v2, v3, v4}, Landroid/app/IActivityManager$Stub;->getRecentTasks(III)Landroid/content/pm/ParceledListSlice;

    move-result-object v5

    .line 3158
    .local v5, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3159
    invoke-virtual {p3, v5, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3160
    goto/16 :goto_134c

    .line 3142
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_result":Landroid/content/pm/ParceledListSlice;
    :pswitch_fd7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3143
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3144
    invoke-virtual {p0, v2}, Landroid/app/IActivityManager$Stub;->signalPersistentProcesses(I)V

    .line 3145
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3146
    goto/16 :goto_134c

    .line 3131
    .end local v2    # "_arg0":I
    :pswitch_fe6
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v2

    .line 3133
    .local v2, "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 3134
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3135
    invoke-virtual {p0, v2, v3}, Landroid/app/IActivityManager$Stub;->showWaitingForDebugger(Landroid/app/IApplicationThread;Z)V

    .line 3136
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3137
    goto/16 :goto_134c

    .line 3120
    .end local v2    # "_arg0":Landroid/app/IApplicationThread;
    .end local v3    # "_arg1":Z
    :pswitch_ffd
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/IActivityController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityController;

    move-result-object v2

    .line 3122
    .local v2, "_arg0":Landroid/app/IActivityController;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 3123
    .restart local v3    # "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3124
    invoke-virtual {p0, v2, v3}, Landroid/app/IActivityManager$Stub;->setActivityController(Landroid/app/IActivityController;Z)V

    .line 3125
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3126
    goto/16 :goto_134c

    .line 3115
    .end local v2    # "_arg0":Landroid/app/IActivityController;
    .end local v3    # "_arg1":Z
    :pswitch_1014
    invoke-direct {p0, p2, p3}, Landroid/app/IActivityManager$Stub;->onTransact$revokeUriPermission$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3111
    :pswitch_1019
    invoke-direct {p0, p2, p3}, Landroid/app/IActivityManager$Stub;->onTransact$grantUriPermission$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3107
    :pswitch_101e
    invoke-direct {p0, p2, p3}, Landroid/app/IActivityManager$Stub;->onTransact$checkUriPermissions$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3103
    :pswitch_1023
    invoke-direct {p0, p2, p3}, Landroid/app/IActivityManager$Stub;->onTransact$checkUriPermission$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3096
    :pswitch_1028
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub;->getProcessLimit()I

    move-result v2

    .line 3097
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3098
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3099
    goto/16 :goto_134c

    .line 3088
    .end local v2    # "_result":I
    :pswitch_1034
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3089
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3090
    invoke-virtual {p0, v2}, Landroid/app/IActivityManager$Stub;->setProcessLimit(I)V

    .line 3091
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3092
    goto/16 :goto_134c

    .line 3074
    .end local v2    # "_arg0":I
    :pswitch_1043
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 3076
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 3078
    .local v3, "_arg1":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 3079
    .restart local v4    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3080
    invoke-virtual {p0, v2, v3, v4}, Landroid/app/IActivityManager$Stub;->stopServiceToken(Landroid/content/ComponentName;Landroid/os/IBinder;I)Z

    move-result v5

    .line 3081
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3082
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3083
    goto/16 :goto_134c

    .line 3062
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Landroid/os/IBinder;
    .end local v4    # "_arg2":I
    .end local v5    # "_result":Z
    :pswitch_1062
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3064
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3065
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3066
    invoke-virtual {p0, v2, v3}, Landroid/app/IActivityManager$Stub;->updateMccMncConfiguration(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 3067
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3068
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3069
    goto/16 :goto_134c

    .line 3052
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_1079
    sget-object v2, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/res/Configuration;

    .line 3053
    .local v2, "_arg0":Landroid/content/res/Configuration;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3054
    invoke-virtual {p0, v2}, Landroid/app/IActivityManager$Stub;->updateConfiguration(Landroid/content/res/Configuration;)Z

    move-result v3

    .line 3055
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3056
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3057
    goto/16 :goto_134c

    .line 3044
    .end local v2    # "_arg0":Landroid/content/res/Configuration;
    .end local v3    # "_result":Z
    :pswitch_1090
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 3045
    .local v2, "_result":Landroid/content/res/Configuration;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3046
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3047
    goto/16 :goto_134c

    .line 3032
    .end local v2    # "_result":Landroid/content/res/Configuration;
    :pswitch_109c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v2

    .line 3034
    .local v2, "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3036
    .local v3, "_arg1":I
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 3037
    .local v4, "_arg2":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3038
    invoke-virtual {p0, v2, v3, v4}, Landroid/app/IActivityManager$Stub;->finishInstrumentation(Landroid/app/IApplicationThread;ILandroid/os/Bundle;)V

    .line 3039
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3040
    goto/16 :goto_134c

    .line 3021
    .end local v2    # "_arg0":Landroid/app/IApplicationThread;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Landroid/os/Bundle;
    :pswitch_10bb
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v2

    .line 3023
    .restart local v2    # "_arg0":Landroid/app/IApplicationThread;
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 3024
    .local v3, "_arg1":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3025
    invoke-virtual {p0, v2, v3}, Landroid/app/IActivityManager$Stub;->addInstrumentationResults(Landroid/app/IApplicationThread;Landroid/os/Bundle;)V

    .line 3026
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3027
    goto/16 :goto_134c

    .line 3016
    .end local v2    # "_arg0":Landroid/app/IApplicationThread;
    .end local v3    # "_arg1":Landroid/os/Bundle;
    :pswitch_10d6
    invoke-direct {p0, p2, p3}, Landroid/app/IActivityManager$Stub;->onTransact$startInstrumentation$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 3008
    :pswitch_10db
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 3009
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3010
    invoke-virtual {p0, v2}, Landroid/app/IActivityManager$Stub;->setAlwaysFinish(Z)V

    .line 3011
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3012
    goto/16 :goto_134c

    .line 2997
    .end local v2    # "_arg0":Z
    :pswitch_10ea
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2999
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3000
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3001
    invoke-virtual {p0, v2, v3}, Landroid/app/IActivityManager$Stub;->setAgentApp(Ljava/lang/String;Ljava/lang/String;)V

    .line 3002
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3003
    goto/16 :goto_134c

    .line 2984
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_10fd
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2986
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 2988
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 2989
    .local v4, "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2990
    invoke-virtual {p0, v2, v3, v4}, Landroid/app/IActivityManager$Stub;->setDebugApp(Ljava/lang/String;ZZ)V

    .line 2991
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2992
    goto/16 :goto_134c

    .line 2971
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Z
    .end local v4    # "_arg2":Z
    :pswitch_1114
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 2973
    .local v2, "_arg0":Landroid/os/IBinder;
    sget-object v3, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    .line 2975
    .local v3, "_arg1":Landroid/content/Intent;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 2976
    .local v4, "_arg2":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2977
    invoke-virtual {p0, v2, v3, v4}, Landroid/app/IActivityManager$Stub;->publishService(Landroid/os/IBinder;Landroid/content/Intent;Landroid/os/IBinder;)V

    .line 2978
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2979
    goto/16 :goto_134c

    .line 2961
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":Landroid/content/Intent;
    .end local v4    # "_arg2":Landroid/os/IBinder;
    :pswitch_112f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/IServiceConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IServiceConnection;

    move-result-object v2

    .line 2962
    .local v2, "_arg0":Landroid/app/IServiceConnection;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2963
    invoke-virtual {p0, v2}, Landroid/app/IActivityManager$Stub;->unbindService(Landroid/app/IServiceConnection;)Z

    move-result v3

    .line 2964
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2965
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2966
    goto/16 :goto_134c

    .line 2948
    .end local v2    # "_arg0":Landroid/app/IServiceConnection;
    .end local v3    # "_result":Z
    :pswitch_1146
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/IServiceConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IServiceConnection;

    move-result-object v2

    .line 2950
    .restart local v2    # "_arg0":Landroid/app/IServiceConnection;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2952
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 2953
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2954
    invoke-virtual {p0, v2, v3, v4}, Landroid/app/IActivityManager$Stub;->updateServiceGroup(Landroid/app/IServiceConnection;II)V

    .line 2955
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2956
    goto/16 :goto_134c

    .line 2943
    .end local v2    # "_arg0":Landroid/app/IServiceConnection;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    :pswitch_1161
    invoke-direct {p0, p2, p3}, Landroid/app/IActivityManager$Stub;->onTransact$bindServiceInstance$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 2939
    :pswitch_1166
    invoke-direct {p0, p2, p3}, Landroid/app/IActivityManager$Stub;->onTransact$bindService$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 2924
    :pswitch_116b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v2

    .line 2926
    .local v2, "_arg0":Landroid/app/IApplicationThread;
    sget-object v3, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    .line 2928
    .local v3, "_arg1":Landroid/content/Intent;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 2930
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 2931
    .local v5, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2932
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/app/IActivityManager$Stub;->stopService(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;I)I

    move-result v6

    .line 2933
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2934
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2935
    goto/16 :goto_134c

    .line 2919
    .end local v2    # "_arg0":Landroid/app/IApplicationThread;
    .end local v3    # "_arg1":Landroid/content/Intent;
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_arg3":I
    .end local v6    # "_result":I
    :pswitch_1192
    invoke-direct {p0, p2, p3}, Landroid/app/IActivityManager$Stub;->onTransact$startService$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 2910
    :pswitch_1197
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 2911
    .local v2, "_arg0":Landroid/content/ComponentName;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2912
    invoke-virtual {p0, v2}, Landroid/app/IActivityManager$Stub;->getRunningServiceControlPanel(Landroid/content/ComponentName;)Landroid/app/PendingIntent;

    move-result-object v3

    .line 2913
    .local v3, "_result":Landroid/app/PendingIntent;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2914
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2915
    goto/16 :goto_134c

    .line 2896
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_result":Landroid/app/PendingIntent;
    :pswitch_11ae
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 2898
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2900
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 2901
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2902
    invoke-virtual {p0, v2, v3, v4}, Landroid/app/IActivityManager$Stub;->refContentProvider(Landroid/os/IBinder;II)Z

    move-result v5

    .line 2903
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2904
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2905
    goto/16 :goto_134c

    .line 2885
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_result":Z
    :pswitch_11c9
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v2

    .line 2887
    .local v2, "_arg0":Landroid/app/IApplicationThread;
    sget-object v3, Landroid/app/ContentProviderHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3

    .line 2888
    .local v3, "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/app/ContentProviderHolder;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2889
    invoke-virtual {p0, v2, v3}, Landroid/app/IActivityManager$Stub;->publishContentProviders(Landroid/app/IApplicationThread;Ljava/util/List;)V

    .line 2890
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2891
    goto/16 :goto_134c

    .line 2880
    .end local v2    # "_arg0":Landroid/app/IApplicationThread;
    .end local v3    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/app/ContentProviderHolder;>;"
    :pswitch_11e2
    invoke-direct {p0, p2, p3}, Landroid/app/IActivityManager$Stub;->onTransact$getContentProvider$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 2869
    :pswitch_11e7
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 2871
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 2872
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2873
    invoke-virtual {p0, v2, v3}, Landroid/app/IActivityManager$Stub;->getTaskForActivity(Landroid/os/IBinder;Z)I

    move-result v4

    .line 2874
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2875
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2876
    goto/16 :goto_134c

    .line 2864
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":Z
    .end local v4    # "_result":I
    :pswitch_11fe
    invoke-direct {p0, p2, p3}, Landroid/app/IActivityManager$Stub;->onTransact$moveTaskToFront$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 2855
    :pswitch_1203
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2856
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2857
    invoke-virtual {p0, v2}, Landroid/app/IActivityManager$Stub;->getTasks(I)Ljava/util/List;

    move-result-object v3

    .line 2858
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2859
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 2860
    goto/16 :goto_134c

    .line 2844
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :pswitch_1216
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v2

    .line 2846
    .local v2, "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 2847
    .local v3, "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2848
    invoke-virtual {p0, v2, v3, v4}, Landroid/app/IActivityManager$Stub;->attachApplication(Landroid/app/IApplicationThread;J)V

    .line 2849
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2850
    goto/16 :goto_134c

    .line 2839
    .end local v2    # "_arg0":Landroid/app/IApplicationThread;
    .end local v3    # "_arg1":J
    :pswitch_122d
    invoke-direct {p0, p2, p3}, Landroid/app/IActivityManager$Stub;->onTransact$finishReceiver$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 2827
    :pswitch_1232
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v2

    .line 2829
    .restart local v2    # "_arg0":Landroid/app/IApplicationThread;
    sget-object v3, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    .line 2831
    .local v3, "_arg1":Landroid/content/Intent;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 2832
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2833
    invoke-virtual {p0, v2, v3, v4}, Landroid/app/IActivityManager$Stub;->unbroadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;I)V

    .line 2834
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2835
    goto/16 :goto_134c

    .line 2822
    .end local v2    # "_arg0":Landroid/app/IApplicationThread;
    .end local v3    # "_arg1":Landroid/content/Intent;
    .end local v4    # "_arg2":I
    :pswitch_1251
    invoke-direct {p0, p2, p3}, Landroid/app/IActivityManager$Stub;->onTransact$broadcastIntentWithFeature$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 2818
    :pswitch_1256
    invoke-direct {p0, p2, p3}, Landroid/app/IActivityManager$Stub;->onTransact$broadcastIntent$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 2810
    :pswitch_125b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    move-result-object v2

    .line 2811
    .local v2, "_arg0":Landroid/content/IIntentReceiver;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2812
    invoke-virtual {p0, v2}, Landroid/app/IActivityManager$Stub;->unregisterReceiver(Landroid/content/IIntentReceiver;)V

    .line 2813
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2814
    goto/16 :goto_134c

    .line 2805
    .end local v2    # "_arg0":Landroid/content/IIntentReceiver;
    :pswitch_126e
    invoke-direct {p0, p2, p3}, Landroid/app/IActivityManager$Stub;->onTransact$registerReceiverWithFeature$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 2801
    :pswitch_1273
    invoke-direct {p0, p2, p3}, Landroid/app/IActivityManager$Stub;->onTransact$registerReceiver$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 2786
    :pswitch_1278
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 2788
    .local v2, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2790
    .local v3, "_arg1":I
    sget-object v4, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Intent;

    .line 2792
    .local v4, "_arg2":Landroid/content/Intent;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 2793
    .local v5, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2794
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/app/IActivityManager$Stub;->finishActivity(Landroid/os/IBinder;ILandroid/content/Intent;I)Z

    move-result v6

    .line 2795
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2796
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2797
    goto/16 :goto_134c

    .line 2779
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Landroid/content/Intent;
    .end local v5    # "_arg3":I
    .end local v6    # "_result":Z
    :pswitch_129b
    invoke-virtual {p0}, Landroid/app/IActivityManager$Stub;->unhandledBack()V

    .line 2780
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2781
    goto/16 :goto_134c

    .line 2775
    :pswitch_12a3
    invoke-direct {p0, p2, p3}, Landroid/app/IActivityManager$Stub;->onTransact$startActivityWithFeature$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 2771
    :pswitch_12a8
    invoke-direct {p0, p2, p3}, Landroid/app/IActivityManager$Stub;->onTransact$startActivity$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v1

    return v1

    .line 2761
    :pswitch_12ad
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 2763
    .restart local v2    # "_arg0":Landroid/os/IBinder;
    sget-object v3, Landroid/app/ApplicationErrorReport$ParcelableCrashInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ApplicationErrorReport$ParcelableCrashInfo;

    .line 2764
    .local v3, "_arg1":Landroid/app/ApplicationErrorReport$ParcelableCrashInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2765
    invoke-virtual {p0, v2, v3}, Landroid/app/IActivityManager$Stub;->handleApplicationCrash(Landroid/os/IBinder;Landroid/app/ApplicationErrorReport$ParcelableCrashInfo;)V

    .line 2766
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2767
    goto/16 :goto_134c

    .line 2747
    .end local v2    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":Landroid/app/ApplicationErrorReport$ParcelableCrashInfo;
    :pswitch_12c4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2749
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2751
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 2752
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2753
    invoke-virtual {p0, v2, v3, v4}, Landroid/app/IActivityManager$Stub;->checkPermission(Ljava/lang/String;II)I

    move-result v5

    .line 2754
    .local v5, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2755
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 2756
    goto :goto_134c

    .line 2735
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_result":I
    :pswitch_12de
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2737
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 2738
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2739
    invoke-virtual {p0, v2, v3}, Landroid/app/IActivityManager$Stub;->getUidProcessState(ILjava/lang/String;)I

    move-result v4

    .line 2740
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2741
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2742
    goto :goto_134c

    .line 2723
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":I
    :pswitch_12f4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2725
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 2726
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2727
    invoke-virtual {p0, v2, v3}, Landroid/app/IActivityManager$Stub;->isUidActive(ILjava/lang/String;)Z

    move-result v4

    .line 2728
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2729
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2730
    goto :goto_134c

    .line 2714
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_130a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/IUidObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUidObserver;

    move-result-object v2

    .line 2715
    .local v2, "_arg0":Landroid/app/IUidObserver;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2716
    invoke-virtual {p0, v2}, Landroid/app/IActivityManager$Stub;->unregisterUidObserver(Landroid/app/IUidObserver;)V

    .line 2717
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2718
    goto :goto_134c

    .line 2699
    .end local v2    # "_arg0":Landroid/app/IUidObserver;
    :pswitch_131c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/IUidObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUidObserver;

    move-result-object v2

    .line 2701
    .restart local v2    # "_arg0":Landroid/app/IUidObserver;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2703
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 2705
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 2706
    .local v5, "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2707
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/app/IActivityManager$Stub;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V

    .line 2708
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2709
    goto :goto_134c

    .line 2689
    .end local v2    # "_arg0":Landroid/app/IUidObserver;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":Ljava/lang/String;
    :pswitch_133a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2690
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2691
    invoke-virtual {p0, v2}, Landroid/app/IActivityManager$Stub;->openContentUri(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    .line 2692
    .local v3, "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2693
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2694
    nop

    .line 5417
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Landroid/os/ParcelFileDescriptor;
    :goto_134c
    return v1

    nop

    :pswitch_data_134e
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_1354
    .packed-switch 0x1
        :pswitch_133a
        :pswitch_131c
        :pswitch_130a
        :pswitch_12f4
        :pswitch_12de
        :pswitch_12c4
        :pswitch_12ad
        :pswitch_12a8
        :pswitch_12a3
        :pswitch_129b
        :pswitch_1278
        :pswitch_1273
        :pswitch_126e
        :pswitch_125b
        :pswitch_1256
        :pswitch_1251
        :pswitch_1232
        :pswitch_122d
        :pswitch_1216
        :pswitch_1203
        :pswitch_11fe
        :pswitch_11e7
        :pswitch_11e2
        :pswitch_11c9
        :pswitch_11ae
        :pswitch_1197
        :pswitch_1192
        :pswitch_116b
        :pswitch_1166
        :pswitch_1161
        :pswitch_1146
        :pswitch_112f
        :pswitch_1114
        :pswitch_10fd
        :pswitch_10ea
        :pswitch_10db
        :pswitch_10d6
        :pswitch_10bb
        :pswitch_109c
        :pswitch_1090
        :pswitch_1079
        :pswitch_1062
        :pswitch_1043
        :pswitch_1034
        :pswitch_1028
        :pswitch_1023
        :pswitch_101e
        :pswitch_1019
        :pswitch_1014
        :pswitch_ffd
        :pswitch_fe6
        :pswitch_fd7
        :pswitch_fbc
        :pswitch_fa4
        :pswitch_f9f
        :pswitch_f9a
        :pswitch_f87
        :pswitch_f70
        :pswitch_f51
        :pswitch_f36
        :pswitch_f2e
        :pswitch_f29
        :pswitch_f19
        :pswitch_f06
        :pswitch_eeb
        :pswitch_ed0
        :pswitch_ecb
        :pswitch_eb0
        :pswitch_e99
        :pswitch_e86
        :pswitch_e7a
        :pswitch_e75
        :pswitch_e62
        :pswitch_e4b
        :pswitch_e38
        :pswitch_e1d
        :pswitch_e06
        :pswitch_dfa
        :pswitch_ddb
        :pswitch_dd6
        :pswitch_dc3
        :pswitch_dbb
        :pswitch_db3
        :pswitch_dae
        :pswitch_d97
        :pswitch_d84
        :pswitch_d7f
        :pswitch_d70
        :pswitch_d6b
        :pswitch_d5c
        :pswitch_d49
        :pswitch_d36
        :pswitch_d31
        :pswitch_d1e
        :pswitch_d12
        :pswitch_d06
        :pswitch_cfe
        :pswitch_ce3
        :pswitch_cd7
        :pswitch_cd2
        :pswitch_ccd
        :pswitch_cb2
        :pswitch_c96
        :pswitch_c91
        :pswitch_c7a
        :pswitch_c67
        :pswitch_c54
        :pswitch_c48
        :pswitch_c3c
        :pswitch_c2d
        :pswitch_c1a
        :pswitch_c07
        :pswitch_bf4
        :pswitch_bdd
        :pswitch_bca
        :pswitch_baf
        :pswitch_b9c
        :pswitch_b85
        :pswitch_b7d
        :pswitch_b78
        :pswitch_b65
        :pswitch_b4e
        :pswitch_b3b
        :pswitch_b28
        :pswitch_b1c
        :pswitch_b10
        :pswitch_afd
        :pswitch_aee
        :pswitch_ad7
        :pswitch_ad2
        :pswitch_acd
        :pswitch_aae
        :pswitch_a8f
        :pswitch_a78
        :pswitch_a65
        :pswitch_a59
        :pswitch_a51
        :pswitch_a42
        :pswitch_a2b
        :pswitch_a18
        :pswitch_a05
        :pswitch_9f2
        :pswitch_9ea
        :pswitch_9e2
        :pswitch_9d3
        :pswitch_9c7
        :pswitch_9bb
        :pswitch_9af
        :pswitch_998
        :pswitch_985
        :pswitch_96e
        :pswitch_95f
        :pswitch_94c
        :pswitch_940
        :pswitch_929
        :pswitch_91a
        :pswitch_90e
        :pswitch_906
        :pswitch_8fe
        :pswitch_8ef
        :pswitch_8dc
        :pswitch_8c1
        :pswitch_8a6
        :pswitch_893
        :pswitch_887
        :pswitch_86c
        :pswitch_85d
        :pswitch_84a
        :pswitch_842
        :pswitch_82f
        :pswitch_81c
        :pswitch_809
        :pswitch_7f6
        :pswitch_7e3
        :pswitch_7c8
        :pswitch_7bc
        :pswitch_7b7
        :pswitch_7a8
        :pswitch_795
        :pswitch_790
        :pswitch_78b
        :pswitch_774
        :pswitch_768
        :pswitch_751
        :pswitch_749
        :pswitch_73a
        :pswitch_735
        :pswitch_722
        :pswitch_70f
        :pswitch_703
        :pswitch_6ec
        :pswitch_6dd
        :pswitch_6c2
        :pswitch_6ba
        :pswitch_6b5
        :pswitch_6a2
        :pswitch_693
        :pswitch_684
        :pswitch_671
        :pswitch_662
        :pswitch_64f
        :pswitch_640
        :pswitch_631
        :pswitch_622
        :pswitch_607
        :pswitch_5f4
        :pswitch_5e8
        :pswitch_5dc
        :pswitch_5d0
        :pswitch_5c4
        :pswitch_5b8
        :pswitch_5ac
        :pswitch_5a0
        :pswitch_594
        :pswitch_588
        :pswitch_57c
        :pswitch_570
        :pswitch_564
        :pswitch_558
        :pswitch_54c
        :pswitch_540
        :pswitch_534
        :pswitch_528
        :pswitch_51c
        :pswitch_510
        :pswitch_504
        :pswitch_4f8
        :pswitch_4ec
        :pswitch_4e0
        :pswitch_4d4
        :pswitch_4c8
        :pswitch_4bc
        :pswitch_4b0
        :pswitch_4a4
        :pswitch_498
        :pswitch_48c
        :pswitch_480
        :pswitch_474
        :pswitch_468
        :pswitch_45c
        :pswitch_450
        :pswitch_444
        :pswitch_438
        :pswitch_42c
        :pswitch_420
        :pswitch_414
        :pswitch_408
        :pswitch_3f5
        :pswitch_3e2
        :pswitch_3d6
        :pswitch_3ca
        :pswitch_3be
        :pswitch_3b2
        :pswitch_3a6
        :pswitch_39a
        :pswitch_38e
        :pswitch_382
        :pswitch_376
        :pswitch_36a
        :pswitch_35e
        :pswitch_352
        :pswitch_346
        :pswitch_33a
        :pswitch_32e
        :pswitch_322
        :pswitch_316
        :pswitch_30a
        :pswitch_2fe
        :pswitch_2f2
        :pswitch_2e6
        :pswitch_2da
        :pswitch_2ce
        :pswitch_2c2
        :pswitch_2b6
        :pswitch_2aa
        :pswitch_29e
        :pswitch_292
        :pswitch_286
        :pswitch_27a
        :pswitch_26e
        :pswitch_262
        :pswitch_24f
        :pswitch_243
        :pswitch_230
        :pswitch_224
        :pswitch_211
        :pswitch_1fe
        :pswitch_1f6
        :pswitch_1ea
        :pswitch_1de
        :pswitch_1c3
        :pswitch_1b4
        :pswitch_1af
        :pswitch_19c
        :pswitch_17d
        :pswitch_16e
        :pswitch_162
        :pswitch_156
        :pswitch_13f
        :pswitch_137
        :pswitch_124
        :pswitch_111
        :pswitch_fe
        :pswitch_eb
        :pswitch_d8
        :pswitch_bd
        :pswitch_a6
        :pswitch_9e
        :pswitch_8b
        :pswitch_78
        :pswitch_73
        :pswitch_55
        :pswitch_42
        :pswitch_2b
        :pswitch_1c
    .end packed-switch
.end method
