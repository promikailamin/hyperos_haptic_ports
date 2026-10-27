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

.field static final blacklist TRANSACTION_addApplicationStartInfoCompleteListener:I = 0xe7

.field static final greylist-max-o TRANSACTION_addInstrumentationResults:I = 0x34

.field static final blacklist TRANSACTION_addOverridePermissionState:I = 0x10f

.field static final greylist-max-o TRANSACTION_addPackageDependency:I = 0x68

.field static final blacklist TRANSACTION_addStartInfoTimestamp:I = 0xe9

.field static final blacklist TRANSACTION_addUidToObserver:I = 0x5

.field static final blacklist TRANSACTION_appNotResponding:I = 0xe5

.field static final greylist-max-o TRANSACTION_appNotRespondingViaProvider:I = 0xb2

.field static final greylist-max-o TRANSACTION_attachApplication:I = 0x1d

.field static final blacklist TRANSACTION_attachNativeApplication:I = 0x1e

.field static final blacklist TRANSACTION_backgroundAllowlistUid:I = 0xde

.field static final greylist-max-o TRANSACTION_backupAgentCreated:I = 0x65

.field static final greylist-max-o TRANSACTION_bindBackupAgent:I = 0x64

.field static final greylist-max-o TRANSACTION_bindService:I = 0x2a

.field static final blacklist TRANSACTION_bindServiceInstance:I = 0x2b

.field static final greylist-max-o TRANSACTION_bootAnimationComplete:I = 0xbb

.field static final greylist-max-o TRANSACTION_broadcastIntent:I = 0x19

.field static final blacklist TRANSACTION_broadcastIntentWithFeature:I = 0x1a

.field static final greylist-max-o TRANSACTION_cancelIntentSender:I = 0x48

.field static final greylist-max-o TRANSACTION_cancelTaskWindowTransition:I = 0xda

.field static final blacklist TRANSACTION_checkContentUriPermissionFull:I = 0x3d

.field static final greylist-max-o TRANSACTION_checkPermission:I = 0x9

.field static final blacklist TRANSACTION_checkPermissionForDevice:I = 0x108

.field static final greylist-max-o TRANSACTION_checkUriPermission:I = 0x3c

.field static final blacklist TRANSACTION_checkUriPermissions:I = 0x3e

.field static final blacklist TRANSACTION_clearAllOverridePermissionStates:I = 0x112

.field static final greylist-max-o TRANSACTION_clearApplicationUserData:I = 0x57

.field static final blacklist TRANSACTION_clearApplicationUserDataWithoutPermissionReset:I = 0x58

.field static final blacklist TRANSACTION_clearOverridePermissionStates:I = 0x111

.field static final greylist-max-o TRANSACTION_closeSystemDialogs:I = 0x6a

.field static final blacklist TRANSACTION_crashApplicationWithType:I = 0x75

.field static final blacklist TRANSACTION_crashApplicationWithTypeWithExtras:I = 0x76

.field static final blacklist TRANSACTION_dumpBitmapsProto:I = 0x79

.field static final greylist-max-o TRANSACTION_dumpHeap:I = 0x78

.field static final greylist-max-o TRANSACTION_dumpHeapFinished:I = 0xc4

.field static final blacklist TRANSACTION_enableAppFreezer:I = 0xf3

.field static final blacklist TRANSACTION_enableFgsNotificationRateLimit:I = 0xf4

.field static final greylist-max-o TRANSACTION_enterSafeMode:I = 0x4c

.field static final greylist-max-o TRANSACTION_finishActivity:I = 0x14

.field static final blacklist TRANSACTION_finishAttachApplication:I = 0x1f

.field static final greylist-max-o TRANSACTION_finishHeavyWeightApp:I = 0x71

.field static final greylist-max-o TRANSACTION_finishInstrumentation:I = 0x35

.field static final greylist-max-o TRANSACTION_finishReceiver:I = 0x1c

.field static final blacklist TRANSACTION_forceDelayBroadcastDelivery:I = 0xfc

.field static final greylist-max-o TRANSACTION_forceStopPackage:I = 0x5b

.field static final blacklist TRANSACTION_forceStopPackageEvenWhenStopping:I = 0x5c

.field static final blacklist TRANSACTION_frozenBinderTransactionDetected:I = 0x10c

.field static final blacklist TRANSACTION_getAllRootTaskInfos:I = 0xac

.field static final blacklist TRANSACTION_getBackgroundRestrictionExemptionReason:I = 0xfe

.field static final blacklist TRANSACTION_getBindingUidProcessState:I = 0x10d

.field static final blacklist TRANSACTION_getBugreportWhitelistedPackages:I = 0xa6

.field static final greylist-max-o TRANSACTION_getConfiguration:I = 0x36

.field static final greylist-max-o TRANSACTION_getContentProvider:I = 0x23

.field static final greylist-max-o TRANSACTION_getContentProviderExternal:I = 0x88

.field static final greylist-max-o TRANSACTION_getCurrentUser:I = 0x8d

.field static final blacklist TRANSACTION_getCurrentUserId:I = 0x8e

.field static final blacklist TRANSACTION_getDelegatedShellPermissions:I = 0xe2

.field static final blacklist TRANSACTION_getDisplayIdsForStartingVisibleBackgroundUsers:I = 0x102

.field static final blacklist TRANSACTION_getFocusedRootTaskInfo:I = 0xaf

.field static final blacklist TRANSACTION_getForegroundServiceType:I = 0x53

.field static final blacklist TRANSACTION_getHistoricalProcessExitReasons:I = 0xeb

.field static final blacklist TRANSACTION_getHistoricalProcessStartReasons:I = 0xe6

.field static final blacklist TRANSACTION_getInfoForIntentSender:I = 0x49

.field static final greylist-max-o TRANSACTION_getIntentForIntentSender:I = 0xa7

.field static final greylist-max-o TRANSACTION_getIntentSender:I = 0x46

.field static final blacklist TRANSACTION_getIntentSenderWithFeature:I = 0x47

.field static final greylist-max-o TRANSACTION_getLaunchedFromPackage:I = 0xa8

.field static final greylist-max-o TRANSACTION_getLaunchedFromUid:I = 0x8f

.field static final blacklist TRANSACTION_getLifeMonitor:I = 0xe3

.field static final greylist-max-o TRANSACTION_getLockTaskModeState:I = 0xc2

.field static final greylist-max-o TRANSACTION_getMemoryInfo:I = 0x55

.field static final greylist-max-o TRANSACTION_getMemoryTrimLevel:I = 0xd1

.field static final blacklist TRANSACTION_getMimeTypeFilterAsync:I = 0x77

.field static final greylist-max-o TRANSACTION_getMyMemoryState:I = 0x8b

.field static final greylist-max-o TRANSACTION_getPackageProcessState:I = 0xc8

.field static final greylist-max-o TRANSACTION_getProcessLimit:I = 0x3b

.field static final greylist-max-o TRANSACTION_getProcessMemoryInfo:I = 0x6b

.field static final greylist-max-o TRANSACTION_getProcessPss:I = 0x85

.field static final greylist-max-o TRANSACTION_getProcessesInErrorState:I = 0x56

.field static final greylist-max-o TRANSACTION_getRecentTasks:I = 0x44

.field static final blacklist TRANSACTION_getRegisteredIntentFilters:I = 0x18

.field static final greylist-max-o TRANSACTION_getRunningAppProcesses:I = 0xf

.field static final greylist-max-o TRANSACTION_getRunningExternalApplications:I = 0x70

.field static final blacklist TRANSACTION_getRunningServiceConnections:I = 0x27

.field static final greylist-max-o TRANSACTION_getRunningServiceControlPanel:I = 0x26

.field static final greylist-max-o TRANSACTION_getRunningUserIds:I = 0x9a

.field static final greylist-max-o TRANSACTION_getServices:I = 0x5e

.field static final blacklist TRANSACTION_getSwitchingFromUserMessage:I = 0x7d

.field static final blacklist TRANSACTION_getSwitchingToUserMessage:I = 0x7e

.field static final greylist-max-o TRANSACTION_getTagForIntentSender:I = 0xb5

.field static final greylist-max-o TRANSACTION_getTaskBounds:I = 0xb3

.field static final greylist-max-o TRANSACTION_getTaskForActivity:I = 0x22

.field static final greylist-max-o TRANSACTION_getTasks:I = 0x20

.field static final blacklist TRANSACTION_getUidFrozenState:I = 0x107

.field static final blacklist TRANSACTION_getUidLastIdleElapsedTime:I = 0x10e

.field static final blacklist TRANSACTION_getUidProcessCapabilities:I = 0xf9

.field static final greylist-max-o TRANSACTION_getUidProcessState:I = 0x8

.field static final greylist-max-o TRANSACTION_grantUriPermission:I = 0x3f

.field static final greylist-max-o TRANSACTION_handleApplicationCrash:I = 0x10

.field static final greylist-max-o TRANSACTION_handleApplicationStrictModeViolation:I = 0x72

.field static final greylist-max-o TRANSACTION_handleApplicationWtf:I = 0x6d

.field static final greylist-max-o TRANSACTION_handleIncomingUser:I = 0x67

.field static final greylist-max-o TRANSACTION_hang:I = 0xab

.field static final blacklist TRANSACTION_hasServiceTimeLimitExceeded:I = 0x104

.field static final blacklist TRANSACTION_holdLock:I = 0xf5

.field static final blacklist TRANSACTION_isAppFreezerEnabled:I = 0xf0

.field static final blacklist TRANSACTION_isAppFreezerSupported:I = 0xef

.field static final greylist-max-o TRANSACTION_isBackgroundRestricted:I = 0xd7

.field static final greylist-max-o TRANSACTION_isInLockTaskMode:I = 0xb7

.field static final greylist-max-o TRANSACTION_isIntentSenderAnActivity:I = 0x91

.field static final greylist-max-o TRANSACTION_isIntentSenderTargetedToPackage:I = 0x82

.field static final blacklist TRANSACTION_isProcessFrozen:I = 0xfd

.field static final blacklist TRANSACTION_isSwipeToScreenshotGestureActive:I = 0x10a

.field static final greylist-max-o TRANSACTION_isTopActivityImmersive:I = 0x74

.field static final greylist-max-o TRANSACTION_isTopOfTask:I = 0xba

.field static final greylist-max-o TRANSACTION_isUidActive:I = 0x7

.field static final greylist-max-o TRANSACTION_isUserAMonkey:I = 0x6f

.field static final greylist-max-o TRANSACTION_isUserRunning:I = 0x7a

.field static final greylist-max-o TRANSACTION_isVrModePackageEnabled:I = 0xd2

.field static final greylist-max-o TRANSACTION_killAllBackgroundProcesses:I = 0x87

.field static final greylist-max-o TRANSACTION_killApplication:I = 0x69

.field static final greylist-max-o TRANSACTION_killApplicationProcess:I = 0x6c

.field static final greylist-max-o TRANSACTION_killBackgroundProcesses:I = 0x6e

.field static final greylist-max-o TRANSACTION_killPackageDependents:I = 0xce

.field static final greylist-max-o TRANSACTION_killPids:I = 0x5d

.field static final greylist-max-o TRANSACTION_killProcessesBelowForeground:I = 0x8c

.field static final blacklist TRANSACTION_killProcessesWhenImperceptible:I = 0xec

.field static final greylist-max-o TRANSACTION_killUid:I = 0xa9

.field static final blacklist TRANSACTION_killUidForPermissionChange:I = 0xf1

.field static final blacklist TRANSACTION_launchBugReportHandlerApp:I = 0xa5

.field static final blacklist TRANSACTION_logFgsApiBegin:I = 0xa

.field static final blacklist TRANSACTION_logFgsApiEnd:I = 0xb

.field static final blacklist TRANSACTION_logFgsApiStateChanged:I = 0xc

.field static final blacklist TRANSACTION_logoutUser:I = 0x7f

.field static final greylist-max-o TRANSACTION_makePackageIdle:I = 0xcf

.field static final greylist-max-o TRANSACTION_moveActivityTaskToBack:I = 0x54

.field static final greylist-max-o TRANSACTION_moveTaskToFront:I = 0x21

.field static final blacklist TRANSACTION_moveTaskToRootTask:I = 0xad

.field static final greylist-max-o TRANSACTION_noteAlarmFinish:I = 0xc7

.field static final greylist-max-o TRANSACTION_noteAlarmStart:I = 0xc6

.field static final blacklist TRANSACTION_noteAppRestrictionEnabled:I = 0x113

.field static final greylist-max-o TRANSACTION_noteWakeupAlarm:I = 0x4d

.field static final greylist-max-o TRANSACTION_notifyCleartextNetwork:I = 0xbf

.field static final greylist-max-o TRANSACTION_notifyLockedProfile:I = 0xd3

.field static final greylist-max-o TRANSACTION_openContentUri:I = 0x1

.field static final greylist-max-o TRANSACTION_peekService:I = 0x5f

.field static final greylist-max-o TRANSACTION_performIdleMaintenance:I = 0xb1

.field static final greylist-max-o TRANSACTION_profileControl:I = 0x60

.field static final greylist-max-o TRANSACTION_publishContentProviders:I = 0x24

.field static final greylist-max-o TRANSACTION_publishService:I = 0x2f

.field static final blacklist TRANSACTION_queryIntentComponentsForIntentSender:I = 0xf8

.field static final greylist-max-o TRANSACTION_refContentProvider:I = 0x25

.field static final blacklist TRANSACTION_refreshIntentCreatorToken:I = 0x114

.field static final blacklist TRANSACTION_registerForegroundServiceObserver:I = 0x5a

.field static final blacklist TRANSACTION_registerIntentSenderCancelListenerEx:I = 0x4a

.field static final greylist-max-o TRANSACTION_registerProcessObserver:I = 0xd

.field static final greylist-max-o TRANSACTION_registerReceiver:I = 0x15

.field static final blacklist TRANSACTION_registerReceiverWithFeature:I = 0x16

.field static final blacklist TRANSACTION_registerStrictModeCallback:I = 0x73

.field static final greylist-max-o TRANSACTION_registerTaskStackListener:I = 0xbd

.field static final blacklist TRANSACTION_registerUidFrozenStateChangedCallback:I = 0x105

.field static final greylist-max-o TRANSACTION_registerUidObserver:I = 0x2

.field static final blacklist TRANSACTION_registerUidObserverForUids:I = 0x4

.field static final greylist-max-o TRANSACTION_registerUserSwitchObserver:I = 0x98

.field static final blacklist TRANSACTION_removeApplicationStartInfoCompleteListener:I = 0xe8

.field static final greylist-max-o TRANSACTION_removeContentProvider:I = 0x4e

.field static final greylist-max-o TRANSACTION_removeContentProviderExternal:I = 0x89

.field static final blacklist TRANSACTION_removeContentProviderExternalAsUser:I = 0x8a

.field static final blacklist TRANSACTION_removeOverridePermissionState:I = 0x110

.field static final greylist-max-o TRANSACTION_removeTask:I = 0x81

.field static final blacklist TRANSACTION_removeUidFromObserver:I = 0x6

.field static final blacklist TRANSACTION_reportOptimizationInfo:I = 0x115

.field static final blacklist TRANSACTION_reportStartInfoViewTimestamps:I = 0xea

.field static final greylist-max-o TRANSACTION_requestBugReport:I = 0x9c

.field static final blacklist TRANSACTION_requestBugReportWithDescription:I = 0x9d

.field static final blacklist TRANSACTION_requestBugReportWithExtraAttachments:I = 0xa2

.field static final blacklist TRANSACTION_requestFullBugReport:I = 0xa3

.field static final blacklist TRANSACTION_requestInteractiveBugReport:I = 0xa1

.field static final blacklist TRANSACTION_requestInteractiveBugReportWithDescription:I = 0xa0

.field static final blacklist TRANSACTION_requestRemoteBugReport:I = 0xa4

.field static final blacklist TRANSACTION_requestSystemServerHeapDump:I = 0x9b

.field static final greylist-max-o TRANSACTION_requestTelephonyBugReport:I = 0x9e

.field static final greylist-max-o TRANSACTION_requestWifiBugReport:I = 0x9f

.field static final blacklist TRANSACTION_resetAppErrors:I = 0xf2

.field static final greylist-max-o TRANSACTION_resizeTask:I = 0xc1

.field static final greylist-max-o TRANSACTION_restart:I = 0xb0

.field static final greylist-max-o TRANSACTION_restartUserInBackground:I = 0x101

.field static final greylist-max-o TRANSACTION_resumeAppSwitches:I = 0x63

.field static final greylist-max-o TRANSACTION_revokeUriPermission:I = 0x40

.field static final greylist-max-o TRANSACTION_scheduleApplicationInfoChanged:I = 0xdb

.field static final greylist-max-o TRANSACTION_sendIdleJobTrigger:I = 0xd5

.field static final greylist-max-o TRANSACTION_sendIntentSender:I = 0xd6

.field static final greylist-max-o TRANSACTION_serviceDoneExecuting:I = 0x45

.field static final greylist-max-o TRANSACTION_setActivityController:I = 0x41

.field static final blacklist TRANSACTION_setActivityLocusContext:I = 0xed

.field static final greylist-max-o TRANSACTION_setAgentApp:I = 0x31

.field static final greylist-max-o TRANSACTION_setAlwaysFinish:I = 0x32

.field static final greylist-max-o TRANSACTION_setDebugApp:I = 0x30

.field static final blacklist TRANSACTION_setDeterministicUidIdle:I = 0xd0

.field static final greylist-max-o TRANSACTION_setDumpHeapDebugLimit:I = 0xc3

.field static final blacklist TRANSACTION_setFocusedRootTask:I = 0xae

.field static final greylist-max-o TRANSACTION_setHasTopUi:I = 0xd9

.field static final greylist-max-o TRANSACTION_setPackageScreenCompatMode:I = 0x7b

.field static final greylist-max-o TRANSACTION_setPersistentVrThread:I = 0xdc

.field static final greylist-max-o TRANSACTION_setProcessImportant:I = 0x51

.field static final greylist-max-o TRANSACTION_setProcessLimit:I = 0x3a

.field static final greylist-max-o TRANSACTION_setProcessMemoryTrimLevel:I = 0xb4

.field static final blacklist TRANSACTION_setProcessStateSummary:I = 0xee

.field static final greylist-max-o TRANSACTION_setRenderThread:I = 0xd8

.field static final greylist-max-o TRANSACTION_setRequestedOrientation:I = 0x4f

.field static final greylist-max-o TRANSACTION_setServiceForeground:I = 0x52

.field static final blacklist TRANSACTION_setStopUserOnSwitch:I = 0x80

.field static final blacklist TRANSACTION_setSwipeToScreenshotGestureActive:I = 0x10b

.field static final greylist-max-o TRANSACTION_setTaskResizeable:I = 0xc0

.field static final blacklist TRANSACTION_setThemeOverlayReady:I = 0xbc

.field static final greylist-max-o TRANSACTION_setUserIsMonkey:I = 0xaa

.field static final blacklist TRANSACTION_shouldForceCutoutFullscreen:I = 0x109

.field static final blacklist TRANSACTION_shouldServiceTimeOut:I = 0x103

.field static final greylist-max-o TRANSACTION_showBootMessage:I = 0x86

.field static final greylist-max-o TRANSACTION_showWaitingForDebugger:I = 0x42

.field static final greylist-max-o TRANSACTION_shutdown:I = 0x61

.field static final greylist-max-o TRANSACTION_signalPersistentProcesses:I = 0x43

.field static final greylist-max-o TRANSACTION_startActivity:I = 0x11

.field static final greylist-max-o TRANSACTION_startActivityAsUser:I = 0x92

.field static final blacklist TRANSACTION_startActivityAsUserWithFeature:I = 0x93

.field static final greylist-max-o TRANSACTION_startActivityFromRecents:I = 0xb8

.field static final blacklist TRANSACTION_startActivityWithFeature:I = 0x12

.field static final greylist-max-o TRANSACTION_startBinderTracking:I = 0xc9

.field static final greylist-max-o TRANSACTION_startConfirmDeviceCredentialIntent:I = 0xd4

.field static final blacklist TRANSACTION_startDelegateShellPermissionIdentity:I = 0xe0

.field static final greylist-max-o TRANSACTION_startInstrumentation:I = 0x33

.field static final blacklist TRANSACTION_startProfile:I = 0xf6

.field static final blacklist TRANSACTION_startProfileWithListener:I = 0x100

.field static final greylist-max-o TRANSACTION_startService:I = 0x28

.field static final greylist-max-o TRANSACTION_startSystemLockTaskMode:I = 0xb9

.field static final greylist-max-o TRANSACTION_startUserInBackground:I = 0xb6

.field static final blacklist TRANSACTION_startUserInBackgroundVisibleOnDisplay:I = 0xff

.field static final greylist-max-o TRANSACTION_startUserInBackgroundWithListener:I = 0xdf

.field static final blacklist TRANSACTION_startUserInForegroundWithListener:I = 0xe4

.field static final blacklist TRANSACTION_stopAppForUser:I = 0x59

.field static final greylist-max-o TRANSACTION_stopAppSwitches:I = 0x62

.field static final greylist-max-o TRANSACTION_stopBinderTrackingAndDump:I = 0xca

.field static final blacklist TRANSACTION_stopDelegateShellPermissionIdentity:I = 0xe1

.field static final blacklist TRANSACTION_stopProfile:I = 0xf7

.field static final greylist-max-o TRANSACTION_stopService:I = 0x29

.field static final greylist-max-o TRANSACTION_stopServiceToken:I = 0x39

.field static final greylist-max-o TRANSACTION_stopUser:I = 0x94

.field static final blacklist TRANSACTION_stopUserExceptCertainProfiles:I = 0x96

.field static final blacklist TRANSACTION_stopUserWithCallback:I = 0x95

.field static final blacklist TRANSACTION_stopUserWithDelayedLocking:I = 0x97

.field static final greylist-max-o TRANSACTION_suppressResizeConfigChanges:I = 0xcb

.field static final greylist-max-o TRANSACTION_switchUser:I = 0x7c

.field static final greylist-max-o TRANSACTION_unbindBackupAgent:I = 0x66

.field static final greylist-max-o TRANSACTION_unbindFinished:I = 0x50

.field static final greylist-max-o TRANSACTION_unbindService:I = 0x2e

.field static final greylist-max-o TRANSACTION_unbroadcastIntent:I = 0x1b

.field static final greylist-max-o TRANSACTION_unhandledBack:I = 0x13

.field static final greylist-max-o TRANSACTION_unlockUser:I = 0xcc

.field static final blacklist TRANSACTION_unlockUser2:I = 0xcd

.field static final greylist-max-o TRANSACTION_unregisterIntentSenderCancelListener:I = 0x4b

.field static final greylist-max-o TRANSACTION_unregisterProcessObserver:I = 0xe

.field static final greylist-max-o TRANSACTION_unregisterReceiver:I = 0x17

.field static final greylist-max-o TRANSACTION_unregisterTaskStackListener:I = 0xbe

.field static final blacklist TRANSACTION_unregisterUidFrozenStateChangedCallback:I = 0x106

.field static final greylist-max-o TRANSACTION_unregisterUidObserver:I = 0x3

.field static final greylist-max-o TRANSACTION_unregisterUserSwitchObserver:I = 0x99

.field static final greylist-max-o TRANSACTION_unstableProviderDied:I = 0x90

.field static final greylist-max-o TRANSACTION_updateConfiguration:I = 0x37

.field static final greylist-max-o TRANSACTION_updateLockTaskPackages:I = 0xc5

.field static final blacklist TRANSACTION_updateMccMncConfiguration:I = 0x38

.field static final greylist-max-o TRANSACTION_updatePersistentConfiguration:I = 0x83

.field static final blacklist TRANSACTION_updatePersistentConfigurationWithAttribution:I = 0x84

.field static final blacklist TRANSACTION_updateServiceBindings:I = 0x2d

.field static final blacklist TRANSACTION_updateServiceGroup:I = 0x2c

.field static final blacklist TRANSACTION_waitForBroadcastBarrier:I = 0xfb

.field static final blacklist TRANSACTION_waitForBroadcastIdle:I = 0xfa

.field static final greylist-max-o TRANSACTION_waitForNetworkStateUpdate:I = 0xdd


# instance fields
.field private final blacklist mEnforcer:Landroid/os/PermissionEnforcer;


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1430
    nop

    .line 1431
    invoke-static {}, Landroid/app/ActivityThread;->currentSystemContext()Landroid/content/Context;

    move-result-object v0

    .line 1430
    invoke-static {v0}, Landroid/os/PermissionEnforcer;->fromContext(Landroid/content/Context;)Landroid/os/PermissionEnforcer;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/IActivityManager$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    .line 1432
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/PermissionEnforcer;)V
    .registers 3

    .line 1420
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 1421
    const-string v0, "android.app.IActivityManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/IActivityManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 1422
    if-eqz p1, :cond_d

    .line 1425
    iput-object p1, p0, Landroid/app/IActivityManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    .line 1426
    return-void

    .line 1423
    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "enforcer cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static greylist-max-r asInterface(Landroid/os/IBinder;)Landroid/app/IActivityManager;
    .registers 3

    .line 1439
    if-nez p0, :cond_4

    .line 1440
    const/4 p0, 0x0

    return-object p0

    .line 1442
    :cond_4
    const-string v0, "android.app.IActivityManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 1443
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/app/IActivityManager;

    if-eqz v1, :cond_13

    .line 1444
    check-cast v0, Landroid/app/IActivityManager;

    return-object v0

    .line 1446
    :cond_13
    new-instance v0, Landroid/app/IActivityManager$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/app/IActivityManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 1455
    packed-switch p0, :pswitch_data_3ea

    .line 2567
    const/4 p0, 0x0

    return-object p0

    .line 2563
    :pswitch_5
    const-string/jumbo p0, "reportOptimizationInfo"

    return-object p0

    .line 2559
    :pswitch_9
    const-string/jumbo p0, "refreshIntentCreatorToken"

    return-object p0

    .line 2555
    :pswitch_d
    const-string/jumbo p0, "noteAppRestrictionEnabled"

    return-object p0

    .line 2551
    :pswitch_11
    const-string p0, "clearAllOverridePermissionStates"

    return-object p0

    .line 2547
    :pswitch_14
    const-string p0, "clearOverridePermissionStates"

    return-object p0

    .line 2543
    :pswitch_17
    const-string/jumbo p0, "removeOverridePermissionState"

    return-object p0

    .line 2539
    :pswitch_1b
    const-string p0, "addOverridePermissionState"

    return-object p0

    .line 2535
    :pswitch_1e
    const-string p0, "getUidLastIdleElapsedTime"

    return-object p0

    .line 2531
    :pswitch_21
    const-string p0, "getBindingUidProcessState"

    return-object p0

    .line 2527
    :pswitch_24
    const-string p0, "frozenBinderTransactionDetected"

    return-object p0

    .line 2523
    :pswitch_27
    const-string/jumbo p0, "setSwipeToScreenshotGestureActive"

    return-object p0

    .line 2519
    :pswitch_2b
    const-string/jumbo p0, "isSwipeToScreenshotGestureActive"

    return-object p0

    .line 2515
    :pswitch_2f
    const-string/jumbo p0, "shouldForceCutoutFullscreen"

    return-object p0

    .line 2511
    :pswitch_33
    const-string p0, "checkPermissionForDevice"

    return-object p0

    .line 2507
    :pswitch_36
    const-string p0, "getUidFrozenState"

    return-object p0

    .line 2503
    :pswitch_39
    const-string/jumbo p0, "unregisterUidFrozenStateChangedCallback"

    return-object p0

    .line 2499
    :pswitch_3d
    const-string/jumbo p0, "registerUidFrozenStateChangedCallback"

    return-object p0

    .line 2495
    :pswitch_41
    const-string p0, "hasServiceTimeLimitExceeded"

    return-object p0

    .line 2491
    :pswitch_44
    const-string/jumbo p0, "shouldServiceTimeOut"

    return-object p0

    .line 2487
    :pswitch_48
    const-string p0, "getDisplayIdsForStartingVisibleBackgroundUsers"

    return-object p0

    .line 2483
    :pswitch_4b
    const-string/jumbo p0, "restartUserInBackground"

    return-object p0

    .line 2479
    :pswitch_4f
    const-string/jumbo p0, "startProfileWithListener"

    return-object p0

    .line 2475
    :pswitch_53
    const-string/jumbo p0, "startUserInBackgroundVisibleOnDisplay"

    return-object p0

    .line 2471
    :pswitch_57
    const-string p0, "getBackgroundRestrictionExemptionReason"

    return-object p0

    .line 2467
    :pswitch_5a
    const-string p0, "isProcessFrozen"

    return-object p0

    .line 2463
    :pswitch_5d
    const-string p0, "forceDelayBroadcastDelivery"

    return-object p0

    .line 2459
    :pswitch_60
    const-string/jumbo p0, "waitForBroadcastBarrier"

    return-object p0

    .line 2455
    :pswitch_64
    const-string/jumbo p0, "waitForBroadcastIdle"

    return-object p0

    .line 2451
    :pswitch_68
    const-string p0, "getUidProcessCapabilities"

    return-object p0

    .line 2447
    :pswitch_6b
    const-string/jumbo p0, "queryIntentComponentsForIntentSender"

    return-object p0

    .line 2443
    :pswitch_6f
    const-string/jumbo p0, "stopProfile"

    return-object p0

    .line 2439
    :pswitch_73
    const-string/jumbo p0, "startProfile"

    return-object p0

    .line 2435
    :pswitch_77
    const-string p0, "holdLock"

    return-object p0

    .line 2431
    :pswitch_7a
    const-string p0, "enableFgsNotificationRateLimit"

    return-object p0

    .line 2427
    :pswitch_7d
    const-string p0, "enableAppFreezer"

    return-object p0

    .line 2423
    :pswitch_80
    const-string/jumbo p0, "resetAppErrors"

    return-object p0

    .line 2419
    :pswitch_84
    const-string/jumbo p0, "killUidForPermissionChange"

    return-object p0

    .line 2415
    :pswitch_88
    const-string p0, "isAppFreezerEnabled"

    return-object p0

    .line 2411
    :pswitch_8b
    const-string p0, "isAppFreezerSupported"

    return-object p0

    .line 2407
    :pswitch_8e
    const-string/jumbo p0, "setProcessStateSummary"

    return-object p0

    .line 2403
    :pswitch_92
    const-string/jumbo p0, "setActivityLocusContext"

    return-object p0

    .line 2399
    :pswitch_96
    const-string/jumbo p0, "killProcessesWhenImperceptible"

    return-object p0

    .line 2395
    :pswitch_9a
    const-string p0, "getHistoricalProcessExitReasons"

    return-object p0

    .line 2391
    :pswitch_9d
    const-string/jumbo p0, "reportStartInfoViewTimestamps"

    return-object p0

    .line 2387
    :pswitch_a1
    const-string p0, "addStartInfoTimestamp"

    return-object p0

    .line 2383
    :pswitch_a4
    const-string/jumbo p0, "removeApplicationStartInfoCompleteListener"

    return-object p0

    .line 2379
    :pswitch_a8
    const-string p0, "addApplicationStartInfoCompleteListener"

    return-object p0

    .line 2375
    :pswitch_ab
    const-string p0, "getHistoricalProcessStartReasons"

    return-object p0

    .line 2371
    :pswitch_ae
    const-string p0, "appNotResponding"

    return-object p0

    .line 2367
    :pswitch_b1
    const-string/jumbo p0, "startUserInForegroundWithListener"

    return-object p0

    .line 2363
    :pswitch_b5
    const-string p0, "getLifeMonitor"

    return-object p0

    .line 2359
    :pswitch_b8
    const-string p0, "getDelegatedShellPermissions"

    return-object p0

    .line 2355
    :pswitch_bb
    const-string/jumbo p0, "stopDelegateShellPermissionIdentity"

    return-object p0

    .line 2351
    :pswitch_bf
    const-string/jumbo p0, "startDelegateShellPermissionIdentity"

    return-object p0

    .line 2347
    :pswitch_c3
    const-string/jumbo p0, "startUserInBackgroundWithListener"

    return-object p0

    .line 2343
    :pswitch_c7
    const-string p0, "backgroundAllowlistUid"

    return-object p0

    .line 2339
    :pswitch_ca
    const-string/jumbo p0, "waitForNetworkStateUpdate"

    return-object p0

    .line 2335
    :pswitch_ce
    const-string/jumbo p0, "setPersistentVrThread"

    return-object p0

    .line 2331
    :pswitch_d2
    const-string/jumbo p0, "scheduleApplicationInfoChanged"

    return-object p0

    .line 2327
    :pswitch_d6
    const-string p0, "cancelTaskWindowTransition"

    return-object p0

    .line 2323
    :pswitch_d9
    const-string/jumbo p0, "setHasTopUi"

    return-object p0

    .line 2319
    :pswitch_dd
    const-string/jumbo p0, "setRenderThread"

    return-object p0

    .line 2315
    :pswitch_e1
    const-string p0, "isBackgroundRestricted"

    return-object p0

    .line 2311
    :pswitch_e4
    const-string/jumbo p0, "sendIntentSender"

    return-object p0

    .line 2307
    :pswitch_e8
    const-string/jumbo p0, "sendIdleJobTrigger"

    return-object p0

    .line 2303
    :pswitch_ec
    const-string/jumbo p0, "startConfirmDeviceCredentialIntent"

    return-object p0

    .line 2299
    :pswitch_f0
    const-string/jumbo p0, "notifyLockedProfile"

    return-object p0

    .line 2295
    :pswitch_f4
    const-string/jumbo p0, "isVrModePackageEnabled"

    return-object p0

    .line 2291
    :pswitch_f8
    const-string p0, "getMemoryTrimLevel"

    return-object p0

    .line 2287
    :pswitch_fb
    const-string/jumbo p0, "setDeterministicUidIdle"

    return-object p0

    .line 2283
    :pswitch_ff
    const-string/jumbo p0, "makePackageIdle"

    return-object p0

    .line 2279
    :pswitch_103
    const-string/jumbo p0, "killPackageDependents"

    return-object p0

    .line 2275
    :pswitch_107
    const-string/jumbo p0, "unlockUser2"

    return-object p0

    .line 2271
    :pswitch_10b
    const-string/jumbo p0, "unlockUser"

    return-object p0

    .line 2267
    :pswitch_10f
    const-string/jumbo p0, "suppressResizeConfigChanges"

    return-object p0

    .line 2263
    :pswitch_113
    const-string/jumbo p0, "stopBinderTrackingAndDump"

    return-object p0

    .line 2259
    :pswitch_117
    const-string/jumbo p0, "startBinderTracking"

    return-object p0

    .line 2255
    :pswitch_11b
    const-string p0, "getPackageProcessState"

    return-object p0

    .line 2251
    :pswitch_11e
    const-string/jumbo p0, "noteAlarmFinish"

    return-object p0

    .line 2247
    :pswitch_122
    const-string/jumbo p0, "noteAlarmStart"

    return-object p0

    .line 2243
    :pswitch_126
    const-string/jumbo p0, "updateLockTaskPackages"

    return-object p0

    .line 2239
    :pswitch_12a
    const-string p0, "dumpHeapFinished"

    return-object p0

    .line 2235
    :pswitch_12d
    const-string/jumbo p0, "setDumpHeapDebugLimit"

    return-object p0

    .line 2231
    :pswitch_131
    const-string p0, "getLockTaskModeState"

    return-object p0

    .line 2227
    :pswitch_134
    const-string/jumbo p0, "resizeTask"

    return-object p0

    .line 2223
    :pswitch_138
    const-string/jumbo p0, "setTaskResizeable"

    return-object p0

    .line 2219
    :pswitch_13c
    const-string/jumbo p0, "notifyCleartextNetwork"

    return-object p0

    .line 2215
    :pswitch_140
    const-string/jumbo p0, "unregisterTaskStackListener"

    return-object p0

    .line 2211
    :pswitch_144
    const-string/jumbo p0, "registerTaskStackListener"

    return-object p0

    .line 2207
    :pswitch_148
    const-string/jumbo p0, "setThemeOverlayReady"

    return-object p0

    .line 2203
    :pswitch_14c
    const-string p0, "bootAnimationComplete"

    return-object p0

    .line 2199
    :pswitch_14f
    const-string/jumbo p0, "isTopOfTask"

    return-object p0

    .line 2195
    :pswitch_153
    const-string/jumbo p0, "startSystemLockTaskMode"

    return-object p0

    .line 2191
    :pswitch_157
    const-string/jumbo p0, "startActivityFromRecents"

    return-object p0

    .line 2187
    :pswitch_15b
    const-string p0, "isInLockTaskMode"

    return-object p0

    .line 2183
    :pswitch_15e
    const-string/jumbo p0, "startUserInBackground"

    return-object p0

    .line 2179
    :pswitch_162
    const-string p0, "getTagForIntentSender"

    return-object p0

    .line 2175
    :pswitch_165
    const-string/jumbo p0, "setProcessMemoryTrimLevel"

    return-object p0

    .line 2171
    :pswitch_169
    const-string p0, "getTaskBounds"

    return-object p0

    .line 2167
    :pswitch_16c
    const-string p0, "appNotRespondingViaProvider"

    return-object p0

    .line 2163
    :pswitch_16f
    const-string/jumbo p0, "performIdleMaintenance"

    return-object p0

    .line 2159
    :pswitch_173
    const-string/jumbo p0, "restart"

    return-object p0

    .line 2155
    :pswitch_177
    const-string p0, "getFocusedRootTaskInfo"

    return-object p0

    .line 2151
    :pswitch_17a
    const-string/jumbo p0, "setFocusedRootTask"

    return-object p0

    .line 2147
    :pswitch_17e
    const-string/jumbo p0, "moveTaskToRootTask"

    return-object p0

    .line 2143
    :pswitch_182
    const-string p0, "getAllRootTaskInfos"

    return-object p0

    .line 2139
    :pswitch_185
    const-string p0, "hang"

    return-object p0

    .line 2135
    :pswitch_188
    const-string/jumbo p0, "setUserIsMonkey"

    return-object p0

    .line 2131
    :pswitch_18c
    const-string/jumbo p0, "killUid"

    return-object p0

    .line 2127
    :pswitch_190
    const-string p0, "getLaunchedFromPackage"

    return-object p0

    .line 2123
    :pswitch_193
    const-string p0, "getIntentForIntentSender"

    return-object p0

    .line 2119
    :pswitch_196
    const-string p0, "getBugreportWhitelistedPackages"

    return-object p0

    .line 2115
    :pswitch_199
    const-string/jumbo p0, "launchBugReportHandlerApp"

    return-object p0

    .line 2111
    :pswitch_19d
    const-string/jumbo p0, "requestRemoteBugReport"

    return-object p0

    .line 2107
    :pswitch_1a1
    const-string/jumbo p0, "requestFullBugReport"

    return-object p0

    .line 2103
    :pswitch_1a5
    const-string/jumbo p0, "requestBugReportWithExtraAttachments"

    return-object p0

    .line 2099
    :pswitch_1a9
    const-string/jumbo p0, "requestInteractiveBugReport"

    return-object p0

    .line 2095
    :pswitch_1ad
    const-string/jumbo p0, "requestInteractiveBugReportWithDescription"

    return-object p0

    .line 2091
    :pswitch_1b1
    const-string/jumbo p0, "requestWifiBugReport"

    return-object p0

    .line 2087
    :pswitch_1b5
    const-string/jumbo p0, "requestTelephonyBugReport"

    return-object p0

    .line 2083
    :pswitch_1b9
    const-string/jumbo p0, "requestBugReportWithDescription"

    return-object p0

    .line 2079
    :pswitch_1bd
    const-string/jumbo p0, "requestBugReport"

    return-object p0

    .line 2075
    :pswitch_1c1
    const-string/jumbo p0, "requestSystemServerHeapDump"

    return-object p0

    .line 2071
    :pswitch_1c5
    const-string p0, "getRunningUserIds"

    return-object p0

    .line 2067
    :pswitch_1c8
    const-string/jumbo p0, "unregisterUserSwitchObserver"

    return-object p0

    .line 2063
    :pswitch_1cc
    const-string/jumbo p0, "registerUserSwitchObserver"

    return-object p0

    .line 2059
    :pswitch_1d0
    const-string/jumbo p0, "stopUserWithDelayedLocking"

    return-object p0

    .line 2055
    :pswitch_1d4
    const-string/jumbo p0, "stopUserExceptCertainProfiles"

    return-object p0

    .line 2051
    :pswitch_1d8
    const-string/jumbo p0, "stopUserWithCallback"

    return-object p0

    .line 2047
    :pswitch_1dc
    const-string/jumbo p0, "stopUser"

    return-object p0

    .line 2043
    :pswitch_1e0
    const-string/jumbo p0, "startActivityAsUserWithFeature"

    return-object p0

    .line 2039
    :pswitch_1e4
    const-string/jumbo p0, "startActivityAsUser"

    return-object p0

    .line 2035
    :pswitch_1e8
    const-string p0, "isIntentSenderAnActivity"

    return-object p0

    .line 2031
    :pswitch_1eb
    const-string/jumbo p0, "unstableProviderDied"

    return-object p0

    .line 2027
    :pswitch_1ef
    const-string p0, "getLaunchedFromUid"

    return-object p0

    .line 2023
    :pswitch_1f2
    const-string p0, "getCurrentUserId"

    return-object p0

    .line 2019
    :pswitch_1f5
    const-string p0, "getCurrentUser"

    return-object p0

    .line 2015
    :pswitch_1f8
    const-string/jumbo p0, "killProcessesBelowForeground"

    return-object p0

    .line 2011
    :pswitch_1fc
    const-string p0, "getMyMemoryState"

    return-object p0

    .line 2007
    :pswitch_1ff
    const-string/jumbo p0, "removeContentProviderExternalAsUser"

    return-object p0

    .line 2003
    :pswitch_203
    const-string/jumbo p0, "removeContentProviderExternal"

    return-object p0

    .line 1999
    :pswitch_207
    const-string p0, "getContentProviderExternal"

    return-object p0

    .line 1995
    :pswitch_20a
    const-string/jumbo p0, "killAllBackgroundProcesses"

    return-object p0

    .line 1991
    :pswitch_20e
    const-string/jumbo p0, "showBootMessage"

    return-object p0

    .line 1987
    :pswitch_212
    const-string p0, "getProcessPss"

    return-object p0

    .line 1983
    :pswitch_215
    const-string/jumbo p0, "updatePersistentConfigurationWithAttribution"

    return-object p0

    .line 1979
    :pswitch_219
    const-string/jumbo p0, "updatePersistentConfiguration"

    return-object p0

    .line 1975
    :pswitch_21d
    const-string p0, "isIntentSenderTargetedToPackage"

    return-object p0

    .line 1971
    :pswitch_220
    const-string/jumbo p0, "removeTask"

    return-object p0

    .line 1967
    :pswitch_224
    const-string/jumbo p0, "setStopUserOnSwitch"

    return-object p0

    .line 1963
    :pswitch_228
    const-string/jumbo p0, "logoutUser"

    return-object p0

    .line 1959
    :pswitch_22c
    const-string p0, "getSwitchingToUserMessage"

    return-object p0

    .line 1955
    :pswitch_22f
    const-string p0, "getSwitchingFromUserMessage"

    return-object p0

    .line 1951
    :pswitch_232
    const-string/jumbo p0, "switchUser"

    return-object p0

    .line 1947
    :pswitch_236
    const-string/jumbo p0, "setPackageScreenCompatMode"

    return-object p0

    .line 1943
    :pswitch_23a
    const-string/jumbo p0, "isUserRunning"

    return-object p0

    .line 1939
    :pswitch_23e
    const-string p0, "dumpBitmapsProto"

    return-object p0

    .line 1935
    :pswitch_241
    const-string p0, "dumpHeap"

    return-object p0

    .line 1931
    :pswitch_244
    const-string p0, "getMimeTypeFilterAsync"

    return-object p0

    .line 1927
    :pswitch_247
    const-string p0, "crashApplicationWithTypeWithExtras"

    return-object p0

    .line 1923
    :pswitch_24a
    const-string p0, "crashApplicationWithType"

    return-object p0

    .line 1919
    :pswitch_24d
    const-string/jumbo p0, "isTopActivityImmersive"

    return-object p0

    .line 1915
    :pswitch_251
    const-string/jumbo p0, "registerStrictModeCallback"

    return-object p0

    .line 1911
    :pswitch_255
    const-string p0, "handleApplicationStrictModeViolation"

    return-object p0

    .line 1907
    :pswitch_258
    const-string p0, "finishHeavyWeightApp"

    return-object p0

    .line 1903
    :pswitch_25b
    const-string p0, "getRunningExternalApplications"

    return-object p0

    .line 1899
    :pswitch_25e
    const-string/jumbo p0, "isUserAMonkey"

    return-object p0

    .line 1895
    :pswitch_262
    const-string/jumbo p0, "killBackgroundProcesses"

    return-object p0

    .line 1891
    :pswitch_266
    const-string p0, "handleApplicationWtf"

    return-object p0

    .line 1887
    :pswitch_269
    const-string/jumbo p0, "killApplicationProcess"

    return-object p0

    .line 1883
    :pswitch_26d
    const-string p0, "getProcessMemoryInfo"

    return-object p0

    .line 1879
    :pswitch_270
    const-string p0, "closeSystemDialogs"

    return-object p0

    .line 1875
    :pswitch_273
    const-string/jumbo p0, "killApplication"

    return-object p0

    .line 1871
    :pswitch_277
    const-string p0, "addPackageDependency"

    return-object p0

    .line 1867
    :pswitch_27a
    const-string p0, "handleIncomingUser"

    return-object p0

    .line 1863
    :pswitch_27d
    const-string/jumbo p0, "unbindBackupAgent"

    return-object p0

    .line 1859
    :pswitch_281
    const-string p0, "backupAgentCreated"

    return-object p0

    .line 1855
    :pswitch_284
    const-string p0, "bindBackupAgent"

    return-object p0

    .line 1851
    :pswitch_287
    const-string/jumbo p0, "resumeAppSwitches"

    return-object p0

    .line 1847
    :pswitch_28b
    const-string/jumbo p0, "stopAppSwitches"

    return-object p0

    .line 1843
    :pswitch_28f
    const-string/jumbo p0, "shutdown"

    return-object p0

    .line 1839
    :pswitch_293
    const-string/jumbo p0, "profileControl"

    return-object p0

    .line 1835
    :pswitch_297
    const-string/jumbo p0, "peekService"

    return-object p0

    .line 1831
    :pswitch_29b
    const-string p0, "getServices"

    return-object p0

    .line 1827
    :pswitch_29e
    const-string/jumbo p0, "killPids"

    return-object p0

    .line 1823
    :pswitch_2a2
    const-string p0, "forceStopPackageEvenWhenStopping"

    return-object p0

    .line 1819
    :pswitch_2a5
    const-string p0, "forceStopPackage"

    return-object p0

    .line 1815
    :pswitch_2a8
    const-string/jumbo p0, "registerForegroundServiceObserver"

    return-object p0

    .line 1811
    :pswitch_2ac
    const-string/jumbo p0, "stopAppForUser"

    return-object p0

    .line 1807
    :pswitch_2b0
    const-string p0, "clearApplicationUserDataWithoutPermissionReset"

    return-object p0

    .line 1803
    :pswitch_2b3
    const-string p0, "clearApplicationUserData"

    return-object p0

    .line 1799
    :pswitch_2b6
    const-string p0, "getProcessesInErrorState"

    return-object p0

    .line 1795
    :pswitch_2b9
    const-string p0, "getMemoryInfo"

    return-object p0

    .line 1791
    :pswitch_2bc
    const-string/jumbo p0, "moveActivityTaskToBack"

    return-object p0

    .line 1787
    :pswitch_2c0
    const-string p0, "getForegroundServiceType"

    return-object p0

    .line 1783
    :pswitch_2c3
    const-string/jumbo p0, "setServiceForeground"

    return-object p0

    .line 1779
    :pswitch_2c7
    const-string/jumbo p0, "setProcessImportant"

    return-object p0

    .line 1775
    :pswitch_2cb
    const-string/jumbo p0, "unbindFinished"

    return-object p0

    .line 1771
    :pswitch_2cf
    const-string/jumbo p0, "setRequestedOrientation"

    return-object p0

    .line 1767
    :pswitch_2d3
    const-string/jumbo p0, "removeContentProvider"

    return-object p0

    .line 1763
    :pswitch_2d7
    const-string/jumbo p0, "noteWakeupAlarm"

    return-object p0

    .line 1759
    :pswitch_2db
    const-string p0, "enterSafeMode"

    return-object p0

    .line 1755
    :pswitch_2de
    const-string/jumbo p0, "unregisterIntentSenderCancelListener"

    return-object p0

    .line 1751
    :pswitch_2e2
    const-string/jumbo p0, "registerIntentSenderCancelListenerEx"

    return-object p0

    .line 1747
    :pswitch_2e6
    const-string p0, "getInfoForIntentSender"

    return-object p0

    .line 1743
    :pswitch_2e9
    const-string p0, "cancelIntentSender"

    return-object p0

    .line 1739
    :pswitch_2ec
    const-string p0, "getIntentSenderWithFeature"

    return-object p0

    .line 1735
    :pswitch_2ef
    const-string p0, "getIntentSender"

    return-object p0

    .line 1731
    :pswitch_2f2
    const-string/jumbo p0, "serviceDoneExecuting"

    return-object p0

    .line 1727
    :pswitch_2f6
    const-string p0, "getRecentTasks"

    return-object p0

    .line 1723
    :pswitch_2f9
    const-string/jumbo p0, "signalPersistentProcesses"

    return-object p0

    .line 1719
    :pswitch_2fd
    const-string/jumbo p0, "showWaitingForDebugger"

    return-object p0

    .line 1715
    :pswitch_301
    const-string/jumbo p0, "setActivityController"

    return-object p0

    .line 1711
    :pswitch_305
    const-string/jumbo p0, "revokeUriPermission"

    return-object p0

    .line 1707
    :pswitch_309
    const-string p0, "grantUriPermission"

    return-object p0

    .line 1703
    :pswitch_30c
    const-string p0, "checkUriPermissions"

    return-object p0

    .line 1699
    :pswitch_30f
    const-string p0, "checkContentUriPermissionFull"

    return-object p0

    .line 1695
    :pswitch_312
    const-string p0, "checkUriPermission"

    return-object p0

    .line 1691
    :pswitch_315
    const-string p0, "getProcessLimit"

    return-object p0

    .line 1687
    :pswitch_318
    const-string/jumbo p0, "setProcessLimit"

    return-object p0

    .line 1683
    :pswitch_31c
    const-string/jumbo p0, "stopServiceToken"

    return-object p0

    .line 1679
    :pswitch_320
    const-string/jumbo p0, "updateMccMncConfiguration"

    return-object p0

    .line 1675
    :pswitch_324
    const-string/jumbo p0, "updateConfiguration"

    return-object p0

    .line 1671
    :pswitch_328
    const-string p0, "getConfiguration"

    return-object p0

    .line 1667
    :pswitch_32b
    const-string p0, "finishInstrumentation"

    return-object p0

    .line 1663
    :pswitch_32e
    const-string p0, "addInstrumentationResults"

    return-object p0

    .line 1659
    :pswitch_331
    const-string/jumbo p0, "startInstrumentation"

    return-object p0

    .line 1655
    :pswitch_335
    const-string/jumbo p0, "setAlwaysFinish"

    return-object p0

    .line 1651
    :pswitch_339
    const-string/jumbo p0, "setAgentApp"

    return-object p0

    .line 1647
    :pswitch_33d
    const-string/jumbo p0, "setDebugApp"

    return-object p0

    .line 1643
    :pswitch_341
    const-string/jumbo p0, "publishService"

    return-object p0

    .line 1639
    :pswitch_345
    const-string/jumbo p0, "unbindService"

    return-object p0

    .line 1635
    :pswitch_349
    const-string/jumbo p0, "updateServiceBindings"

    return-object p0

    .line 1631
    :pswitch_34d
    const-string/jumbo p0, "updateServiceGroup"

    return-object p0

    .line 1627
    :pswitch_351
    const-string p0, "bindServiceInstance"

    return-object p0

    .line 1623
    :pswitch_354
    const-string p0, "bindService"

    return-object p0

    .line 1619
    :pswitch_357
    const-string/jumbo p0, "stopService"

    return-object p0

    .line 1615
    :pswitch_35b
    const-string/jumbo p0, "startService"

    return-object p0

    .line 1611
    :pswitch_35f
    const-string p0, "getRunningServiceConnections"

    return-object p0

    .line 1607
    :pswitch_362
    const-string p0, "getRunningServiceControlPanel"

    return-object p0

    .line 1603
    :pswitch_365
    const-string/jumbo p0, "refContentProvider"

    return-object p0

    .line 1599
    :pswitch_369
    const-string/jumbo p0, "publishContentProviders"

    return-object p0

    .line 1595
    :pswitch_36d
    const-string p0, "getContentProvider"

    return-object p0

    .line 1591
    :pswitch_370
    const-string p0, "getTaskForActivity"

    return-object p0

    .line 1587
    :pswitch_373
    const-string/jumbo p0, "moveTaskToFront"

    return-object p0

    .line 1583
    :pswitch_377
    const-string p0, "getTasks"

    return-object p0

    .line 1579
    :pswitch_37a
    const-string p0, "finishAttachApplication"

    return-object p0

    .line 1575
    :pswitch_37d
    const-string p0, "attachNativeApplication"

    return-object p0

    .line 1571
    :pswitch_380
    const-string p0, "attachApplication"

    return-object p0

    .line 1567
    :pswitch_383
    const-string p0, "finishReceiver"

    return-object p0

    .line 1563
    :pswitch_386
    const-string/jumbo p0, "unbroadcastIntent"

    return-object p0

    .line 1559
    :pswitch_38a
    const-string p0, "broadcastIntentWithFeature"

    return-object p0

    .line 1555
    :pswitch_38d
    const-string p0, "broadcastIntent"

    return-object p0

    .line 1551
    :pswitch_390
    const-string p0, "getRegisteredIntentFilters"

    return-object p0

    .line 1547
    :pswitch_393
    const-string/jumbo p0, "unregisterReceiver"

    return-object p0

    .line 1543
    :pswitch_397
    const-string/jumbo p0, "registerReceiverWithFeature"

    return-object p0

    .line 1539
    :pswitch_39b
    const-string/jumbo p0, "registerReceiver"

    return-object p0

    .line 1535
    :pswitch_39f
    const-string p0, "finishActivity"

    return-object p0

    .line 1531
    :pswitch_3a2
    const-string/jumbo p0, "unhandledBack"

    return-object p0

    .line 1527
    :pswitch_3a6
    const-string/jumbo p0, "startActivityWithFeature"

    return-object p0

    .line 1523
    :pswitch_3aa
    const-string/jumbo p0, "startActivity"

    return-object p0

    .line 1519
    :pswitch_3ae
    const-string p0, "handleApplicationCrash"

    return-object p0

    .line 1515
    :pswitch_3b1
    const-string p0, "getRunningAppProcesses"

    return-object p0

    .line 1511
    :pswitch_3b4
    const-string/jumbo p0, "unregisterProcessObserver"

    return-object p0

    .line 1507
    :pswitch_3b8
    const-string/jumbo p0, "registerProcessObserver"

    return-object p0

    .line 1503
    :pswitch_3bc
    const-string/jumbo p0, "logFgsApiStateChanged"

    return-object p0

    .line 1499
    :pswitch_3c0
    const-string/jumbo p0, "logFgsApiEnd"

    return-object p0

    .line 1495
    :pswitch_3c4
    const-string/jumbo p0, "logFgsApiBegin"

    return-object p0

    .line 1491
    :pswitch_3c8
    const-string p0, "checkPermission"

    return-object p0

    .line 1487
    :pswitch_3cb
    const-string p0, "getUidProcessState"

    return-object p0

    .line 1483
    :pswitch_3ce
    const-string/jumbo p0, "isUidActive"

    return-object p0

    .line 1479
    :pswitch_3d2
    const-string/jumbo p0, "removeUidFromObserver"

    return-object p0

    .line 1475
    :pswitch_3d6
    const-string p0, "addUidToObserver"

    return-object p0

    .line 1471
    :pswitch_3d9
    const-string/jumbo p0, "registerUidObserverForUids"

    return-object p0

    .line 1467
    :pswitch_3dd
    const-string/jumbo p0, "unregisterUidObserver"

    return-object p0

    .line 1463
    :pswitch_3e1
    const-string/jumbo p0, "registerUidObserver"

    return-object p0

    .line 1459
    :pswitch_3e5
    const-string/jumbo p0, "openContentUri"

    return-object p0

    nop

    :pswitch_data_3ea
    .packed-switch 0x1
        :pswitch_3e5
        :pswitch_3e1
        :pswitch_3dd
        :pswitch_3d9
        :pswitch_3d6
        :pswitch_3d2
        :pswitch_3ce
        :pswitch_3cb
        :pswitch_3c8
        :pswitch_3c4
        :pswitch_3c0
        :pswitch_3bc
        :pswitch_3b8
        :pswitch_3b4
        :pswitch_3b1
        :pswitch_3ae
        :pswitch_3aa
        :pswitch_3a6
        :pswitch_3a2
        :pswitch_39f
        :pswitch_39b
        :pswitch_397
        :pswitch_393
        :pswitch_390
        :pswitch_38d
        :pswitch_38a
        :pswitch_386
        :pswitch_383
        :pswitch_380
        :pswitch_37d
        :pswitch_37a
        :pswitch_377
        :pswitch_373
        :pswitch_370
        :pswitch_36d
        :pswitch_369
        :pswitch_365
        :pswitch_362
        :pswitch_35f
        :pswitch_35b
        :pswitch_357
        :pswitch_354
        :pswitch_351
        :pswitch_34d
        :pswitch_349
        :pswitch_345
        :pswitch_341
        :pswitch_33d
        :pswitch_339
        :pswitch_335
        :pswitch_331
        :pswitch_32e
        :pswitch_32b
        :pswitch_328
        :pswitch_324
        :pswitch_320
        :pswitch_31c
        :pswitch_318
        :pswitch_315
        :pswitch_312
        :pswitch_30f
        :pswitch_30c
        :pswitch_309
        :pswitch_305
        :pswitch_301
        :pswitch_2fd
        :pswitch_2f9
        :pswitch_2f6
        :pswitch_2f2
        :pswitch_2ef
        :pswitch_2ec
        :pswitch_2e9
        :pswitch_2e6
        :pswitch_2e2
        :pswitch_2de
        :pswitch_2db
        :pswitch_2d7
        :pswitch_2d3
        :pswitch_2cf
        :pswitch_2cb
        :pswitch_2c7
        :pswitch_2c3
        :pswitch_2c0
        :pswitch_2bc
        :pswitch_2b9
        :pswitch_2b6
        :pswitch_2b3
        :pswitch_2b0
        :pswitch_2ac
        :pswitch_2a8
        :pswitch_2a5
        :pswitch_2a2
        :pswitch_29e
        :pswitch_29b
        :pswitch_297
        :pswitch_293
        :pswitch_28f
        :pswitch_28b
        :pswitch_287
        :pswitch_284
        :pswitch_281
        :pswitch_27d
        :pswitch_27a
        :pswitch_277
        :pswitch_273
        :pswitch_270
        :pswitch_26d
        :pswitch_269
        :pswitch_266
        :pswitch_262
        :pswitch_25e
        :pswitch_25b
        :pswitch_258
        :pswitch_255
        :pswitch_251
        :pswitch_24d
        :pswitch_24a
        :pswitch_247
        :pswitch_244
        :pswitch_241
        :pswitch_23e
        :pswitch_23a
        :pswitch_236
        :pswitch_232
        :pswitch_22f
        :pswitch_22c
        :pswitch_228
        :pswitch_224
        :pswitch_220
        :pswitch_21d
        :pswitch_219
        :pswitch_215
        :pswitch_212
        :pswitch_20e
        :pswitch_20a
        :pswitch_207
        :pswitch_203
        :pswitch_1ff
        :pswitch_1fc
        :pswitch_1f8
        :pswitch_1f5
        :pswitch_1f2
        :pswitch_1ef
        :pswitch_1eb
        :pswitch_1e8
        :pswitch_1e4
        :pswitch_1e0
        :pswitch_1dc
        :pswitch_1d8
        :pswitch_1d4
        :pswitch_1d0
        :pswitch_1cc
        :pswitch_1c8
        :pswitch_1c5
        :pswitch_1c1
        :pswitch_1bd
        :pswitch_1b9
        :pswitch_1b5
        :pswitch_1b1
        :pswitch_1ad
        :pswitch_1a9
        :pswitch_1a5
        :pswitch_1a1
        :pswitch_19d
        :pswitch_199
        :pswitch_196
        :pswitch_193
        :pswitch_190
        :pswitch_18c
        :pswitch_188
        :pswitch_185
        :pswitch_182
        :pswitch_17e
        :pswitch_17a
        :pswitch_177
        :pswitch_173
        :pswitch_16f
        :pswitch_16c
        :pswitch_169
        :pswitch_165
        :pswitch_162
        :pswitch_15e
        :pswitch_15b
        :pswitch_157
        :pswitch_153
        :pswitch_14f
        :pswitch_14c
        :pswitch_148
        :pswitch_144
        :pswitch_140
        :pswitch_13c
        :pswitch_138
        :pswitch_134
        :pswitch_131
        :pswitch_12d
        :pswitch_12a
        :pswitch_126
        :pswitch_122
        :pswitch_11e
        :pswitch_11b
        :pswitch_117
        :pswitch_113
        :pswitch_10f
        :pswitch_10b
        :pswitch_107
        :pswitch_103
        :pswitch_ff
        :pswitch_fb
        :pswitch_f8
        :pswitch_f4
        :pswitch_f0
        :pswitch_ec
        :pswitch_e8
        :pswitch_e4
        :pswitch_e1
        :pswitch_dd
        :pswitch_d9
        :pswitch_d6
        :pswitch_d2
        :pswitch_ce
        :pswitch_ca
        :pswitch_c7
        :pswitch_c3
        :pswitch_bf
        :pswitch_bb
        :pswitch_b8
        :pswitch_b5
        :pswitch_b1
        :pswitch_ae
        :pswitch_ab
        :pswitch_a8
        :pswitch_a4
        :pswitch_a1
        :pswitch_9d
        :pswitch_9a
        :pswitch_96
        :pswitch_92
        :pswitch_8e
        :pswitch_8b
        :pswitch_88
        :pswitch_84
        :pswitch_80
        :pswitch_7d
        :pswitch_7a
        :pswitch_77
        :pswitch_73
        :pswitch_6f
        :pswitch_6b
        :pswitch_68
        :pswitch_64
        :pswitch_60
        :pswitch_5d
        :pswitch_5a
        :pswitch_57
        :pswitch_53
        :pswitch_4f
        :pswitch_4b
        :pswitch_48
        :pswitch_44
        :pswitch_41
        :pswitch_3d
        :pswitch_39
        :pswitch_36
        :pswitch_33
        :pswitch_2f
        :pswitch_2b
        :pswitch_27
        :pswitch_24
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method

.method private greylist-max-o onTransact$broadcastIntent$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11250
    move-object/from16 v0, p1

    invoke-virtual {v0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v3

    .line 11252
    sget-object v1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/content/Intent;

    .line 11254
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 11256
    invoke-virtual {v0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    move-result-object v6

    .line 11258
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 11260
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 11262
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/os/Bundle;

    .line 11264
    invoke-virtual {v0}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v10

    .line 11266
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 11268
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/os/Bundle;

    .line 11270
    invoke-virtual {v0}, Landroid/os/Parcel;->readBoolean()Z

    move-result v13

    .line 11272
    invoke-virtual {v0}, Landroid/os/Parcel;->readBoolean()Z

    move-result v14

    .line 11274
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 11275
    invoke-virtual {v0}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 11276
    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v15}, Landroid/app/IActivityManager$Stub;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I

    move-result v0

    .line 11277
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->writeNoException()V

    .line 11278
    move-object/from16 v1, p2

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 11279
    const/4 v0, 0x1

    return v0
.end method

.method private blacklist onTransact$broadcastIntentWithFeature$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11285
    move-object/from16 v0, p1

    invoke-virtual {v0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v3

    .line 11287
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 11289
    sget-object v1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/content/Intent;

    .line 11291
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 11293
    invoke-virtual {v0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    move-result-object v7

    .line 11295
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 11297
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 11299
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/os/Bundle;

    .line 11301
    invoke-virtual {v0}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v11

    .line 11303
    invoke-virtual {v0}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v12

    .line 11305
    invoke-virtual {v0}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v13

    .line 11307
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 11309
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Landroid/os/Bundle;

    .line 11311
    invoke-virtual {v0}, Landroid/os/Parcel;->readBoolean()Z

    move-result v16

    .line 11313
    invoke-virtual {v0}, Landroid/os/Parcel;->readBoolean()Z

    move-result v17

    .line 11315
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 11316
    invoke-virtual {v0}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 11317
    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v18}, Landroid/app/IActivityManager$Stub;->broadcastIntentWithFeature(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I

    move-result v0

    .line 11318
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->writeNoException()V

    .line 11319
    move-object/from16 v1, p2

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 11320
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 1450
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 11584
    const/16 v0, 0x114

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 2574
    invoke-static {p1}, Landroid/app/IActivityManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected blacklist logoutUser_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 11425
    iget-object v0, p0, Landroid/app/IActivityManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/app/IActivityManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/app/IActivityManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 11426
    return-void
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2578
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v13, p3

    .line 2579
    const-string v3, "android.app.IActivityManager"

    const/4 v14, 0x1

    if-lt v1, v14, :cond_15

    const v4, 0xffffff

    if-gt v1, v4, :cond_15

    .line 2580
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2582
    :cond_15
    const v4, 0x5f4e5446

    if-ne v1, v4, :cond_1e

    .line 2583
    invoke-virtual {v13, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2584
    return v14

    .line 2586
    :cond_1e
    packed-switch v1, :pswitch_data_1aac

    .line 5863
    move-object v15, v2

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 5852
    :pswitch_27
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 5854
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 5856
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 5857
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5858
    invoke-virtual {v0, v1, v3, v4}, Landroid/app/IActivityManager$Stub;->reportOptimizationInfo(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)V

    .line 5859
    goto/16 :goto_1aab

    .line 5842
    :pswitch_3b
    sget-object v1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 5843
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5844
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->refreshIntentCreatorToken(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object v0

    .line 5845
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 5846
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 5847
    goto/16 :goto_1aab

    .line 5819
    :pswitch_52
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 5821
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5823
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 5825
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 5827
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 5829
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 5831
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 5833
    move-object/from16 v10, p2

    invoke-virtual {v10}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .line 5834
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5835
    invoke-virtual/range {v0 .. v9}, Landroid/app/IActivityManager$Stub;->noteAppRestrictionEnabled(Ljava/lang/String;IIZILjava/lang/String;IJ)V

    .line 5836
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 5837
    goto/16 :goto_1aab

    .line 5810
    :pswitch_7f
    move-object v10, v2

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 5811
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5812
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->clearAllOverridePermissionStates(I)V

    .line 5813
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 5814
    goto/16 :goto_1aab

    .line 5799
    :pswitch_8f
    move-object v10, v2

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 5801
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5802
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5803
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->clearOverridePermissionStates(II)V

    .line 5804
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 5805
    goto/16 :goto_1aab

    .line 5786
    :pswitch_a3
    move-object v10, v2

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 5788
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5790
    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 5791
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5792
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->removeOverridePermissionState(IILjava/lang/String;)V

    .line 5793
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 5794
    goto/16 :goto_1aab

    .line 5771
    :pswitch_bb
    move-object v10, v2

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 5773
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5775
    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 5777
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 5778
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5779
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/IActivityManager$Stub;->addOverridePermissionState(IILjava/lang/String;I)V

    .line 5780
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 5781
    goto/16 :goto_1aab

    .line 5759
    :pswitch_d7
    move-object v10, v2

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 5761
    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 5762
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5763
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->getUidLastIdleElapsedTime(ILjava/lang/String;)J

    move-result-wide v0

    .line 5764
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 5765
    invoke-virtual {v13, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 5766
    goto/16 :goto_1aab

    .line 5747
    :pswitch_ef
    move-object v10, v2

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 5749
    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 5750
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5751
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->getBindingUidProcessState(ILjava/lang/String;)I

    move-result v0

    .line 5752
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 5753
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5754
    goto/16 :goto_1aab

    .line 5733
    :pswitch_107
    move-object v10, v2

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 5735
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5737
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 5739
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 5740
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5741
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/IActivityManager$Stub;->frozenBinderTransactionDetected(IIII)V

    .line 5742
    goto/16 :goto_1aab

    .line 5724
    :pswitch_120
    move-object v10, v2

    invoke-virtual {v10}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 5725
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5726
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->setSwipeToScreenshotGestureActive(Z)V

    .line 5727
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 5728
    goto/16 :goto_1aab

    .line 5716
    :pswitch_130
    invoke-virtual {v0}, Landroid/app/IActivityManager$Stub;->isSwipeToScreenshotGestureActive()Z

    move-result v0

    .line 5717
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 5718
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5719
    goto/16 :goto_1aab

    .line 5707
    :pswitch_13c
    move-object v10, v2

    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 5708
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5709
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->shouldForceCutoutFullscreen(Ljava/lang/String;)Z

    move-result v0

    .line 5710
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 5711
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5712
    goto/16 :goto_1aab

    .line 5691
    :pswitch_150
    move-object v10, v2

    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 5693
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5695
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 5697
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 5698
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5699
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/IActivityManager$Stub;->checkPermissionForDevice(Ljava/lang/String;III)I

    move-result v0

    .line 5700
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 5701
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5702
    goto/16 :goto_1aab

    .line 5681
    :pswitch_170
    move-object v10, v2

    invoke-virtual {v10}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 5682
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5683
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->getUidFrozenState([I)[I

    move-result-object v0

    .line 5684
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 5685
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 5686
    goto/16 :goto_1aab

    .line 5672
    :pswitch_184
    move-object v10, v2

    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IUidFrozenStateChangedCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUidFrozenStateChangedCallback;

    move-result-object v1

    .line 5673
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5674
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->unregisterUidFrozenStateChangedCallback(Landroid/app/IUidFrozenStateChangedCallback;)V

    .line 5675
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 5676
    goto/16 :goto_1aab

    .line 5663
    :pswitch_198
    move-object v10, v2

    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IUidFrozenStateChangedCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUidFrozenStateChangedCallback;

    move-result-object v1

    .line 5664
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5665
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->registerUidFrozenStateChangedCallback(Landroid/app/IUidFrozenStateChangedCallback;)V

    .line 5666
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 5667
    goto/16 :goto_1aab

    .line 5651
    :pswitch_1ac
    move-object v10, v2

    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 5653
    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 5654
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5655
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->hasServiceTimeLimitExceeded(Landroid/content/ComponentName;Landroid/os/IBinder;)Z

    move-result v0

    .line 5656
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 5657
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5658
    goto/16 :goto_1aab

    .line 5639
    :pswitch_1c8
    move-object v10, v2

    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 5641
    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 5642
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5643
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->shouldServiceTimeOut(Landroid/content/ComponentName;Landroid/os/IBinder;)Z

    move-result v0

    .line 5644
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 5645
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5646
    goto/16 :goto_1aab

    .line 5631
    :pswitch_1e4
    invoke-virtual {v0}, Landroid/app/IActivityManager$Stub;->getDisplayIdsForStartingVisibleBackgroundUsers()[I

    move-result-object v0

    .line 5632
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 5633
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 5634
    goto/16 :goto_1aab

    .line 5620
    :pswitch_1f0
    move-object v10, v2

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 5622
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5623
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5624
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->restartUserInBackground(II)I

    move-result v0

    .line 5625
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 5626
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5627
    goto/16 :goto_1aab

    .line 5608
    :pswitch_208
    move-object v10, v2

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 5610
    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IProgressListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IProgressListener;

    move-result-object v2

    .line 5611
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5612
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->startProfileWithListener(ILandroid/os/IProgressListener;)Z

    move-result v0

    .line 5613
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 5614
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5615
    goto/16 :goto_1aab

    .line 5594
    :pswitch_224
    move-object v10, v2

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 5596
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5598
    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/IProgressListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IProgressListener;

    move-result-object v3

    .line 5599
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5600
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->startUserInBackgroundVisibleOnDisplay(IILandroid/os/IProgressListener;)Z

    move-result v0

    .line 5601
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 5602
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5603
    goto/16 :goto_1aab

    .line 5584
    :pswitch_244
    move-object v10, v2

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 5585
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5586
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->getBackgroundRestrictionExemptionReason(I)I

    move-result v0

    .line 5587
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 5588
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5589
    goto/16 :goto_1aab

    .line 5574
    :pswitch_258
    move-object v10, v2

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 5575
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5576
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->isProcessFrozen(I)Z

    move-result v0

    .line 5577
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 5578
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5579
    goto/16 :goto_1aab

    .line 5563
    :pswitch_26c
    move-object v10, v2

    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 5565
    invoke-virtual {v10}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 5566
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5567
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->forceDelayBroadcastDelivery(Ljava/lang/String;J)V

    .line 5568
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 5569
    goto/16 :goto_1aab

    .line 5556
    :pswitch_280
    invoke-virtual {v0}, Landroid/app/IActivityManager$Stub;->waitForBroadcastBarrier()V

    .line 5557
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 5558
    goto/16 :goto_1aab

    .line 5550
    :pswitch_288
    invoke-virtual {v0}, Landroid/app/IActivityManager$Stub;->waitForBroadcastIdle()V

    .line 5551
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 5552
    goto/16 :goto_1aab

    .line 5539
    :pswitch_290
    move-object v10, v2

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 5541
    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 5542
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5543
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->getUidProcessCapabilities(ILjava/lang/String;)I

    move-result v0

    .line 5544
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 5545
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5546
    goto/16 :goto_1aab

    .line 5527
    :pswitch_2a8
    move-object v10, v2

    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v1

    .line 5529
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5530
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5531
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->queryIntentComponentsForIntentSender(Landroid/content/IIntentSender;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 5532
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 5533
    invoke-virtual {v13, v0, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 5534
    goto/16 :goto_1aab

    .line 5517
    :pswitch_2c4
    move-object v10, v2

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 5518
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5519
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->stopProfile(I)Z

    move-result v0

    .line 5520
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 5521
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5522
    goto/16 :goto_1aab

    .line 5507
    :pswitch_2d8
    move-object v10, v2

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 5508
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5509
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->startProfile(I)Z

    move-result v0

    .line 5510
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 5511
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5512
    goto/16 :goto_1aab

    .line 5496
    :pswitch_2ec
    move-object v10, v2

    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 5498
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5499
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5500
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->holdLock(Landroid/os/IBinder;I)V

    .line 5501
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 5502
    goto/16 :goto_1aab

    .line 5486
    :pswitch_300
    move-object v10, v2

    invoke-virtual {v10}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 5487
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5488
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->enableFgsNotificationRateLimit(Z)Z

    move-result v0

    .line 5489
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 5490
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5491
    goto/16 :goto_1aab

    .line 5476
    :pswitch_314
    move-object v10, v2

    invoke-virtual {v10}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 5477
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5478
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->enableAppFreezer(Z)Z

    move-result v0

    .line 5479
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 5480
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5481
    goto/16 :goto_1aab

    .line 5469
    :pswitch_328
    invoke-virtual {v0}, Landroid/app/IActivityManager$Stub;->resetAppErrors()V

    .line 5470
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 5471
    goto/16 :goto_1aab

    .line 5457
    :pswitch_330
    move-object v10, v2

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 5459
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5461
    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 5462
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5463
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->killUidForPermissionChange(IILjava/lang/String;)V

    .line 5464
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 5465
    goto/16 :goto_1aab

    .line 5449
    :pswitch_348
    invoke-virtual {v0}, Landroid/app/IActivityManager$Stub;->isAppFreezerEnabled()Z

    move-result v0

    .line 5450
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 5451
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5452
    goto/16 :goto_1aab

    .line 5442
    :pswitch_354
    invoke-virtual {v0}, Landroid/app/IActivityManager$Stub;->isAppFreezerSupported()Z

    move-result v0

    .line 5443
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 5444
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5445
    goto/16 :goto_1aab

    .line 5434
    :pswitch_360
    move-object v10, v2

    invoke-virtual {v10}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 5435
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5436
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->setProcessStateSummary([B)V

    .line 5437
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 5438
    goto/16 :goto_1aab

    .line 5421
    :pswitch_370
    move-object v10, v2

    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 5423
    sget-object v2, Landroid/content/LocusId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/LocusId;

    .line 5425
    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 5426
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5427
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->setActivityLocusContext(Landroid/content/ComponentName;Landroid/content/LocusId;Landroid/os/IBinder;)V

    .line 5428
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 5429
    goto/16 :goto_1aab

    .line 5410
    :pswitch_390
    move-object v10, v2

    invoke-virtual {v10}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 5412
    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 5413
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5414
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->killProcessesWhenImperceptible([ILjava/lang/String;)V

    .line 5415
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 5416
    goto/16 :goto_1aab

    .line 5394
    :pswitch_3a4
    move-object v10, v2

    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 5396
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5398
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 5400
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 5401
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5402
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/IActivityManager$Stub;->getHistoricalProcessExitReasons(Ljava/lang/String;III)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 5403
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 5404
    invoke-virtual {v13, v0, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 5405
    goto/16 :goto_1aab

    .line 5384
    :pswitch_3c4
    move-object v10, v2

    invoke-virtual {v10}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 5386
    invoke-virtual {v10}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 5387
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5388
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/IActivityManager$Stub;->reportStartInfoViewTimestamps(JJ)V

    .line 5389
    goto/16 :goto_1aab

    .line 5371
    :pswitch_3d5
    move-object v10, v2

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 5373
    invoke-virtual {v10}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 5375
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 5376
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5377
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/IActivityManager$Stub;->addStartInfoTimestamp(IJI)V

    .line 5378
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 5379
    goto/16 :goto_1aab

    .line 5360
    :pswitch_3ed
    move-object v10, v2

    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IApplicationStartInfoCompleteListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationStartInfoCompleteListener;

    move-result-object v1

    .line 5362
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5363
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5364
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->removeApplicationStartInfoCompleteListener(Landroid/app/IApplicationStartInfoCompleteListener;I)V

    .line 5365
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 5366
    goto/16 :goto_1aab

    .line 5349
    :pswitch_405
    move-object v10, v2

    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IApplicationStartInfoCompleteListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationStartInfoCompleteListener;

    move-result-object v1

    .line 5351
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5352
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5353
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->addApplicationStartInfoCompleteListener(Landroid/app/IApplicationStartInfoCompleteListener;I)V

    .line 5354
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 5355
    goto/16 :goto_1aab

    .line 5335
    :pswitch_41d
    move-object v10, v2

    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 5337
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5339
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 5340
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5341
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->getHistoricalProcessStartReasons(Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 5342
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 5343
    invoke-virtual {v13, v0, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 5344
    goto/16 :goto_1aab

    .line 5326
    :pswitch_439
    move-object v10, v2

    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 5327
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5328
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->appNotResponding(Ljava/lang/String;)V

    .line 5329
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 5330
    goto/16 :goto_1aab

    .line 5314
    :pswitch_449
    move-object v10, v2

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 5316
    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IProgressListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IProgressListener;

    move-result-object v2

    .line 5317
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5318
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->startUserInForegroundWithListener(ILandroid/os/IProgressListener;)Z

    move-result v0

    .line 5319
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 5320
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5321
    goto/16 :goto_1aab

    .line 5306
    :pswitch_465
    invoke-virtual {v0}, Landroid/app/IActivityManager$Stub;->getLifeMonitor()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 5307
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 5308
    invoke-virtual {v13, v0, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 5309
    goto/16 :goto_1aab

    .line 5299
    :pswitch_471
    invoke-virtual {v0}, Landroid/app/IActivityManager$Stub;->getDelegatedShellPermissions()Ljava/util/List;

    move-result-object v0

    .line 5300
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 5301
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 5302
    goto/16 :goto_1aab

    .line 5293
    :pswitch_47d
    invoke-virtual {v0}, Landroid/app/IActivityManager$Stub;->stopDelegateShellPermissionIdentity()V

    .line 5294
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 5295
    goto/16 :goto_1aab

    .line 5283
    :pswitch_485
    move-object v10, v2

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 5285
    invoke-virtual {v10}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 5286
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5287
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->startDelegateShellPermissionIdentity(I[Ljava/lang/String;)V

    .line 5288
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 5289
    goto/16 :goto_1aab

    .line 5271
    :pswitch_499
    move-object v10, v2

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 5273
    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IProgressListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IProgressListener;

    move-result-object v2

    .line 5274
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5275
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->startUserInBackgroundWithListener(ILandroid/os/IProgressListener;)Z

    move-result v0

    .line 5276
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 5277
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5278
    goto/16 :goto_1aab

    .line 5262
    :pswitch_4b5
    move-object v10, v2

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 5263
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5264
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->backgroundAllowlistUid(I)V

    .line 5265
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 5266
    goto/16 :goto_1aab

    .line 5253
    :pswitch_4c5
    move-object v10, v2

    invoke-virtual {v10}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 5254
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5255
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->waitForNetworkStateUpdate(J)V

    .line 5256
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 5257
    goto/16 :goto_1aab

    .line 5244
    :pswitch_4d5
    move-object v10, v2

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 5245
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5246
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->setPersistentVrThread(I)V

    .line 5247
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 5248
    goto/16 :goto_1aab

    .line 5233
    :pswitch_4e5
    move-object v10, v2

    invoke-virtual {v10}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 5235
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5236
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5237
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->scheduleApplicationInfoChanged(Ljava/util/List;I)V

    .line 5238
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 5239
    goto/16 :goto_1aab

    .line 5224
    :pswitch_4f9
    move-object v10, v2

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 5225
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5226
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->cancelTaskWindowTransition(I)V

    .line 5227
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 5228
    goto/16 :goto_1aab

    .line 5215
    :pswitch_509
    move-object v10, v2

    invoke-virtual {v10}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 5216
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5217
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->setHasTopUi(Z)V

    .line 5218
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 5219
    goto/16 :goto_1aab

    .line 5206
    :pswitch_519
    move-object v10, v2

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 5207
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5208
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->setRenderThread(I)V

    .line 5209
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 5210
    goto/16 :goto_1aab

    .line 5196
    :pswitch_529
    move-object v10, v2

    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 5197
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5198
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->isBackgroundRestricted(Ljava/lang/String;)Z

    move-result v0

    .line 5199
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 5200
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5201
    goto/16 :goto_1aab

    .line 5170
    :pswitch_53d
    move-object v10, v2

    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v1

    .line 5172
    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v2

    .line 5174
    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 5176
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 5178
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Intent;

    .line 5180
    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 5182
    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    move-result-object v7

    .line 5184
    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 5186
    sget-object v9, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v9}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/Bundle;

    .line 5187
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5188
    invoke-virtual/range {v0 .. v9}, Landroid/app/IActivityManager$Stub;->sendIntentSender(Landroid/app/IApplicationThread;Landroid/content/IIntentSender;Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/Bundle;)I

    move-result v0

    .line 5189
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 5190
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5191
    goto/16 :goto_1aab

    .line 5163
    :pswitch_585
    invoke-virtual {v0}, Landroid/app/IActivityManager$Stub;->sendIdleJobTrigger()V

    .line 5164
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 5165
    goto/16 :goto_1aab

    .line 5153
    :pswitch_58d
    move-object v10, v2

    sget-object v1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 5155
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 5156
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5157
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->startConfirmDeviceCredentialIntent(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 5158
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 5159
    goto/16 :goto_1aab

    .line 5144
    :pswitch_5a9
    move-object v10, v2

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 5145
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5146
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->notifyLockedProfile(I)V

    .line 5147
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 5148
    goto/16 :goto_1aab

    .line 5134
    :pswitch_5b9
    move-object v10, v2

    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 5135
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5136
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->isVrModePackageEnabled(Landroid/content/ComponentName;)Z

    move-result v0

    .line 5137
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 5138
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5139
    goto/16 :goto_1aab

    .line 5126
    :pswitch_5d1
    invoke-virtual {v0}, Landroid/app/IActivityManager$Stub;->getMemoryTrimLevel()I

    move-result v0

    .line 5127
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 5128
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5129
    goto/16 :goto_1aab

    .line 5118
    :pswitch_5dd
    move-object v10, v2

    invoke-virtual {v10}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 5119
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5120
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->setDeterministicUidIdle(Z)V

    .line 5121
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 5122
    goto/16 :goto_1aab

    .line 5107
    :pswitch_5ed
    move-object v10, v2

    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 5109
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5110
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5111
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->makePackageIdle(Ljava/lang/String;I)V

    .line 5112
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 5113
    goto/16 :goto_1aab

    .line 5096
    :pswitch_601
    move-object v10, v2

    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 5098
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 5099
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5100
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->killPackageDependents(Ljava/lang/String;I)V

    .line 5101
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 5102
    goto/16 :goto_1aab

    .line 5084
    :pswitch_615
    move-object v10, v2

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 5086
    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IProgressListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IProgressListener;

    move-result-object v2

    .line 5087
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5088
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->unlockUser2(ILandroid/os/IProgressListener;)Z

    move-result v0

    .line 5089
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 5090
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5091
    goto/16 :goto_1aab

    .line 5068
    :pswitch_631
    move-object v10, v2

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 5070
    invoke-virtual {v10}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 5072
    invoke-virtual {v10}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 5074
    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/IProgressListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IProgressListener;

    move-result-object v4

    .line 5075
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5076
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/IActivityManager$Stub;->unlockUser(I[B[BLandroid/os/IProgressListener;)Z

    move-result v0

    .line 5077
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 5078
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5079
    goto/16 :goto_1aab

    .line 5059
    :pswitch_655
    move-object v10, v2

    invoke-virtual {v10}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 5060
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5061
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->suppressResizeConfigChanges(Z)V

    .line 5062
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 5063
    goto/16 :goto_1aab

    .line 5049
    :pswitch_665
    move-object v10, v2

    sget-object v1, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelFileDescriptor;

    .line 5050
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5051
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->stopBinderTrackingAndDump(Landroid/os/ParcelFileDescriptor;)Z

    move-result v0

    .line 5052
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 5053
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5054
    goto/16 :goto_1aab

    .line 5041
    :pswitch_67d
    invoke-virtual {v0}, Landroid/app/IActivityManager$Stub;->startBinderTracking()Z

    move-result v0

    .line 5042
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 5043
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5044
    goto/16 :goto_1aab

    .line 5030
    :pswitch_689
    move-object v10, v2

    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 5032
    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 5033
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5034
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->getPackageProcessState(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 5035
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 5036
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5037
    goto/16 :goto_1aab

    .line 5015
    :pswitch_6a1
    move-object v10, v2

    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v1

    .line 5017
    sget-object v2, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/WorkSource;

    .line 5019
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 5021
    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 5022
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5023
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/IActivityManager$Stub;->noteAlarmFinish(Landroid/content/IIntentSender;Landroid/os/WorkSource;ILjava/lang/String;)V

    .line 5024
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 5025
    goto/16 :goto_1aab

    .line 5000
    :pswitch_6c5
    move-object v10, v2

    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v1

    .line 5002
    sget-object v2, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/WorkSource;

    .line 5004
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 5006
    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 5007
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5008
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/IActivityManager$Stub;->noteAlarmStart(Landroid/content/IIntentSender;Landroid/os/WorkSource;ILjava/lang/String;)V

    .line 5009
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 5010
    goto/16 :goto_1aab

    .line 4989
    :pswitch_6e9
    move-object v10, v2

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4991
    invoke-virtual {v10}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 4992
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4993
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->updateLockTaskPackages(I[Ljava/lang/String;)V

    .line 4994
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 4995
    goto/16 :goto_1aab

    .line 4980
    :pswitch_6fd
    move-object v10, v2

    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4981
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4982
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->dumpHeapFinished(Ljava/lang/String;)V

    .line 4983
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 4984
    goto/16 :goto_1aab

    .line 4965
    :pswitch_70d
    move-object v10, v2

    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4967
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4969
    invoke-virtual {v10}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 4971
    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 4972
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4973
    invoke-virtual/range {v0 .. v5}, Landroid/app/IActivityManager$Stub;->setDumpHeapDebugLimit(Ljava/lang/String;IJLjava/lang/String;)V

    .line 4974
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 4975
    goto/16 :goto_1aab

    .line 4957
    :pswitch_729
    invoke-virtual {v0}, Landroid/app/IActivityManager$Stub;->getLockTaskModeState()I

    move-result v0

    .line 4958
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 4959
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4960
    goto/16 :goto_1aab

    .line 4945
    :pswitch_735
    move-object v10, v2

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4947
    sget-object v2, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 4949
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 4950
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4951
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->resizeTask(ILandroid/graphics/Rect;I)V

    .line 4952
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 4953
    goto/16 :goto_1aab

    .line 4934
    :pswitch_751
    move-object v10, v2

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4936
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4937
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4938
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->setTaskResizeable(II)V

    .line 4939
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 4940
    goto/16 :goto_1aab

    .line 4923
    :pswitch_765
    move-object v10, v2

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4925
    invoke-virtual {v10}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 4926
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4927
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->notifyCleartextNetwork(I[B)V

    .line 4928
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 4929
    goto/16 :goto_1aab

    .line 4914
    :pswitch_779
    move-object v10, v2

    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/ITaskStackListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/ITaskStackListener;

    move-result-object v1

    .line 4915
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4916
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->unregisterTaskStackListener(Landroid/app/ITaskStackListener;)V

    .line 4917
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 4918
    goto/16 :goto_1aab

    .line 4905
    :pswitch_78d
    move-object v10, v2

    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/ITaskStackListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/ITaskStackListener;

    move-result-object v1

    .line 4906
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4907
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->registerTaskStackListener(Landroid/app/ITaskStackListener;)V

    .line 4908
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 4909
    goto/16 :goto_1aab

    .line 4896
    :pswitch_7a1
    move-object v10, v2

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4897
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4898
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->setThemeOverlayReady(I)V

    .line 4899
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 4900
    goto/16 :goto_1aab

    .line 4889
    :pswitch_7b1
    invoke-virtual {v0}, Landroid/app/IActivityManager$Stub;->bootAnimationComplete()V

    .line 4890
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 4891
    goto/16 :goto_1aab

    .line 4880
    :pswitch_7b9
    move-object v10, v2

    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 4881
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4882
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->isTopOfTask(Landroid/os/IBinder;)Z

    move-result v0

    .line 4883
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 4884
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4885
    goto/16 :goto_1aab

    .line 4871
    :pswitch_7cd
    move-object v10, v2

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4872
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4873
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->startSystemLockTaskMode(I)V

    .line 4874
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 4875
    goto/16 :goto_1aab

    .line 4859
    :pswitch_7dd
    move-object v10, v2

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4861
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 4862
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4863
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->startActivityFromRecents(ILandroid/os/Bundle;)I

    move-result v0

    .line 4864
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 4865
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4866
    goto/16 :goto_1aab

    .line 4851
    :pswitch_7f9
    invoke-virtual {v0}, Landroid/app/IActivityManager$Stub;->isInLockTaskMode()Z

    move-result v0

    .line 4852
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 4853
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4854
    goto/16 :goto_1aab

    .line 4842
    :pswitch_805
    move-object v10, v2

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4843
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4844
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->startUserInBackground(I)Z

    move-result v0

    .line 4845
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 4846
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4847
    goto/16 :goto_1aab

    .line 4830
    :pswitch_819
    move-object v10, v2

    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v1

    .line 4832
    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4833
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4834
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->getTagForIntentSender(Landroid/content/IIntentSender;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4835
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 4836
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4837
    goto/16 :goto_1aab

    .line 4816
    :pswitch_835
    move-object v10, v2

    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4818
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4820
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 4821
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4822
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->setProcessMemoryTrimLevel(Ljava/lang/String;II)Z

    move-result v0

    .line 4823
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 4824
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4825
    goto/16 :goto_1aab

    .line 4806
    :pswitch_851
    move-object v10, v2

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4807
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4808
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->getTaskBounds(I)Landroid/graphics/Rect;

    move-result-object v0

    .line 4809
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 4810
    invoke-virtual {v13, v0, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 4811
    goto/16 :goto_1aab

    .line 4797
    :pswitch_865
    move-object v10, v2

    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 4798
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4799
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->appNotRespondingViaProvider(Landroid/os/IBinder;)V

    .line 4800
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 4801
    goto/16 :goto_1aab

    .line 4790
    :pswitch_875
    invoke-virtual {v0}, Landroid/app/IActivityManager$Stub;->performIdleMaintenance()V

    .line 4791
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 4792
    goto/16 :goto_1aab

    .line 4784
    :pswitch_87d
    invoke-virtual {v0}, Landroid/app/IActivityManager$Stub;->restart()V

    .line 4785
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 4786
    goto/16 :goto_1aab

    .line 4777
    :pswitch_885
    invoke-virtual {v0}, Landroid/app/IActivityManager$Stub;->getFocusedRootTaskInfo()Landroid/app/ActivityTaskManager$RootTaskInfo;

    move-result-object v0

    .line 4778
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 4779
    invoke-virtual {v13, v0, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 4780
    goto/16 :goto_1aab

    .line 4769
    :pswitch_891
    move-object v10, v2

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4770
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4771
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->setFocusedRootTask(I)V

    .line 4772
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 4773
    goto/16 :goto_1aab

    .line 4756
    :pswitch_8a1
    move-object v10, v2

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4758
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4760
    invoke-virtual {v10}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 4761
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4762
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->moveTaskToRootTask(IIZ)V

    .line 4763
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 4764
    goto/16 :goto_1aab

    .line 4748
    :pswitch_8b9
    invoke-virtual {v0}, Landroid/app/IActivityManager$Stub;->getAllRootTaskInfos()Ljava/util/List;

    move-result-object v0

    .line 4749
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 4750
    invoke-virtual {v13, v0, v14}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 4751
    goto/16 :goto_1aab

    .line 4738
    :pswitch_8c5
    move-object v10, v2

    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 4740
    invoke-virtual {v10}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 4741
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4742
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->hang(Landroid/os/IBinder;Z)V

    .line 4743
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 4744
    goto/16 :goto_1aab

    .line 4729
    :pswitch_8d9
    move-object v10, v2

    invoke-virtual {v10}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 4730
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4731
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->setUserIsMonkey(Z)V

    .line 4732
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 4733
    goto/16 :goto_1aab

    .line 4716
    :pswitch_8e9
    move-object v10, v2

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4718
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4720
    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4721
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4722
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->killUid(IILjava/lang/String;)V

    .line 4723
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 4724
    goto/16 :goto_1aab

    .line 4706
    :pswitch_901
    move-object v10, v2

    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 4707
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4708
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->getLaunchedFromPackage(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v0

    .line 4709
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 4710
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4711
    goto/16 :goto_1aab

    .line 4696
    :pswitch_915
    move-object v10, v2

    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v1

    .line 4697
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4698
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->getIntentForIntentSender(Landroid/content/IIntentSender;)Landroid/content/Intent;

    move-result-object v0

    .line 4699
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 4700
    invoke-virtual {v13, v0, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 4701
    goto/16 :goto_1aab

    .line 4688
    :pswitch_92d
    invoke-virtual {v0}, Landroid/app/IActivityManager$Stub;->getBugreportWhitelistedPackages()Ljava/util/List;

    move-result-object v0

    .line 4689
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 4690
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 4691
    goto/16 :goto_1aab

    .line 4681
    :pswitch_939
    invoke-virtual {v0}, Landroid/app/IActivityManager$Stub;->launchBugReportHandlerApp()Z

    move-result v0

    .line 4682
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 4683
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4684
    goto/16 :goto_1aab

    .line 4673
    :pswitch_945
    move-object v10, v2

    invoke-virtual {v10}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 4674
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4675
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->requestRemoteBugReport(J)V

    .line 4676
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 4677
    goto/16 :goto_1aab

    .line 4666
    :pswitch_955
    invoke-virtual {v0}, Landroid/app/IActivityManager$Stub;->requestFullBugReport()V

    .line 4667
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 4668
    goto/16 :goto_1aab

    .line 4658
    :pswitch_95d
    move-object v10, v2

    sget-object v1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 4659
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4660
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->requestBugReportWithExtraAttachments(Ljava/util/List;)V

    .line 4661
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 4662
    goto/16 :goto_1aab

    .line 4651
    :pswitch_96f
    invoke-virtual {v0}, Landroid/app/IActivityManager$Stub;->requestInteractiveBugReport()V

    .line 4652
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 4653
    goto/16 :goto_1aab

    .line 4641
    :pswitch_977
    move-object v10, v2

    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4643
    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4644
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4645
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->requestInteractiveBugReportWithDescription(Ljava/lang/String;Ljava/lang/String;)V

    .line 4646
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 4647
    goto/16 :goto_1aab

    .line 4630
    :pswitch_98b
    move-object v10, v2

    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4632
    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4633
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4634
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->requestWifiBugReport(Ljava/lang/String;Ljava/lang/String;)V

    .line 4635
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 4636
    goto/16 :goto_1aab

    .line 4619
    :pswitch_99f
    move-object v10, v2

    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4621
    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4622
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4623
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->requestTelephonyBugReport(Ljava/lang/String;Ljava/lang/String;)V

    .line 4624
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 4625
    goto/16 :goto_1aab

    .line 4606
    :pswitch_9b3
    move-object v10, v2

    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4608
    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4610
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 4611
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4612
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->requestBugReportWithDescription(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4613
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 4614
    goto/16 :goto_1aab

    .line 4597
    :pswitch_9cb
    move-object v10, v2

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4598
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4599
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->requestBugReport(I)V

    .line 4600
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 4601
    goto/16 :goto_1aab

    .line 4590
    :pswitch_9db
    invoke-virtual {v0}, Landroid/app/IActivityManager$Stub;->requestSystemServerHeapDump()V

    .line 4591
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 4592
    goto/16 :goto_1aab

    .line 4583
    :pswitch_9e3
    invoke-virtual {v0}, Landroid/app/IActivityManager$Stub;->getRunningUserIds()[I

    move-result-object v0

    .line 4584
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 4585
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 4586
    goto/16 :goto_1aab

    .line 4575
    :pswitch_9ef
    move-object v10, v2

    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IUserSwitchObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUserSwitchObserver;

    move-result-object v1

    .line 4576
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4577
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->unregisterUserSwitchObserver(Landroid/app/IUserSwitchObserver;)V

    .line 4578
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 4579
    goto/16 :goto_1aab

    .line 4564
    :pswitch_a03
    move-object v10, v2

    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IUserSwitchObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUserSwitchObserver;

    move-result-object v1

    .line 4566
    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4567
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4568
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V

    .line 4569
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 4570
    goto/16 :goto_1aab

    .line 4552
    :pswitch_a1b
    move-object v10, v2

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4554
    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/IStopUserCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IStopUserCallback;

    move-result-object v2

    .line 4555
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4556
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->stopUserWithDelayedLocking(ILandroid/app/IStopUserCallback;)I

    move-result v0

    .line 4557
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 4558
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4559
    goto/16 :goto_1aab

    .line 4538
    :pswitch_a37
    move-object v10, v2

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4540
    invoke-virtual {v10}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 4542
    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/IStopUserCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IStopUserCallback;

    move-result-object v3

    .line 4543
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4544
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->stopUserExceptCertainProfiles(IZLandroid/app/IStopUserCallback;)I

    move-result v0

    .line 4545
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 4546
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4547
    goto/16 :goto_1aab

    .line 4526
    :pswitch_a57
    move-object v10, v2

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4528
    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/IStopUserCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IStopUserCallback;

    move-result-object v2

    .line 4529
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4530
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->stopUserWithCallback(ILandroid/app/IStopUserCallback;)I

    move-result v0

    .line 4531
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 4532
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4533
    goto/16 :goto_1aab

    .line 4512
    :pswitch_a73
    move-object v10, v2

    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4514
    invoke-virtual {v10}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 4516
    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/IStopUserCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IStopUserCallback;

    move-result-object v3

    .line 4517
    invoke-virtual {v10}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4518
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->stopUser(IZLandroid/app/IStopUserCallback;)I

    move-result v0

    .line 4519
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 4520
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4521
    goto/16 :goto_1aab

    .line 4480
    :pswitch_a93
    move-object v10, v2

    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v1

    .line 4482
    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4484
    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4486
    sget-object v4, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Intent;

    .line 4488
    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 4490
    invoke-virtual {v10}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 4492
    invoke-virtual {v10}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 4494
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 4496
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 4498
    sget-object v11, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v11}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/ProfilerInfo;

    .line 4500
    sget-object v12, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v12}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/Bundle;

    .line 4502
    move-object v15, v10

    move-object v10, v11

    move-object v11, v12

    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 4503
    invoke-virtual {v15}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4504
    invoke-virtual/range {v0 .. v12}, Landroid/app/IActivityManager$Stub;->startActivityAsUserWithFeature(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I

    move-result v0

    .line 4505
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 4506
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4507
    goto/16 :goto_1aab

    .line 4450
    :pswitch_ae6
    move-object v15, v2

    invoke-virtual {v15}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v1

    .line 4452
    invoke-virtual {v15}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4454
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/content/Intent;

    .line 4456
    invoke-virtual {v15}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 4458
    invoke-virtual {v15}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 4460
    invoke-virtual {v15}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 4462
    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 4464
    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 4466
    sget-object v0, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/app/ProfilerInfo;

    .line 4468
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/os/Bundle;

    .line 4470
    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 4471
    invoke-virtual {v15}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4472
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v11}, Landroid/app/IActivityManager$Stub;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I

    move-result v0

    .line 4473
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 4474
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4475
    goto/16 :goto_1aab

    .line 4440
    :pswitch_b37
    move-object v15, v2

    invoke-virtual {v15}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v1

    .line 4441
    invoke-virtual {v15}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4442
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->isIntentSenderAnActivity(Landroid/content/IIntentSender;)Z

    move-result v0

    .line 4443
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 4444
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4445
    goto/16 :goto_1aab

    .line 4431
    :pswitch_b4f
    move-object v15, v2

    invoke-virtual {v15}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 4432
    invoke-virtual {v15}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4433
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->unstableProviderDied(Landroid/os/IBinder;)V

    .line 4434
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 4435
    goto/16 :goto_1aab

    .line 4421
    :pswitch_b5f
    move-object v15, v2

    invoke-virtual {v15}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 4422
    invoke-virtual {v15}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4423
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->getLaunchedFromUid(Landroid/os/IBinder;)I

    move-result v0

    .line 4424
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 4425
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4426
    goto/16 :goto_1aab

    .line 4413
    :pswitch_b73
    invoke-virtual {v0}, Landroid/app/IActivityManager$Stub;->getCurrentUserId()I

    move-result v0

    .line 4414
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 4415
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4416
    goto/16 :goto_1aab

    .line 4406
    :pswitch_b7f
    invoke-virtual {v0}, Landroid/app/IActivityManager$Stub;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 4407
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 4408
    invoke-virtual {v13, v0, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 4409
    goto/16 :goto_1aab

    .line 4397
    :pswitch_b8b
    move-object v15, v2

    invoke-virtual {v15}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4398
    invoke-virtual {v15}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4399
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->killProcessesBelowForeground(Ljava/lang/String;)Z

    move-result v0

    .line 4400
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 4401
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4402
    goto/16 :goto_1aab

    .line 4387
    :pswitch_b9f
    move-object v15, v2

    new-instance v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$RunningAppProcessInfo;-><init>()V

    .line 4388
    invoke-virtual {v15}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4389
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->getMyMemoryState(Landroid/app/ActivityManager$RunningAppProcessInfo;)V

    .line 4390
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 4391
    invoke-virtual {v13, v1, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 4392
    goto/16 :goto_1aab

    .line 4374
    :pswitch_bb3
    move-object v15, v2

    invoke-virtual {v15}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4376
    invoke-virtual {v15}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 4378
    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 4379
    invoke-virtual {v15}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4380
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->removeContentProviderExternalAsUser(Ljava/lang/String;Landroid/os/IBinder;I)V

    .line 4381
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 4382
    goto/16 :goto_1aab

    .line 4363
    :pswitch_bcb
    move-object v15, v2

    invoke-virtual {v15}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4365
    invoke-virtual {v15}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 4366
    invoke-virtual {v15}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4367
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->removeContentProviderExternal(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 4368
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 4369
    goto/16 :goto_1aab

    .line 4347
    :pswitch_bdf
    move-object v15, v2

    invoke-virtual {v15}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4349
    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4351
    invoke-virtual {v15}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 4353
    invoke-virtual {v15}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 4354
    invoke-virtual {v15}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4355
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/IActivityManager$Stub;->getContentProviderExternal(Ljava/lang/String;ILandroid/os/IBinder;Ljava/lang/String;)Landroid/app/ContentProviderHolder;

    move-result-object v0

    .line 4356
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 4357
    invoke-virtual {v13, v0, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 4358
    goto/16 :goto_1aab

    .line 4340
    :pswitch_bff
    invoke-virtual {v0}, Landroid/app/IActivityManager$Stub;->killAllBackgroundProcesses()V

    .line 4341
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 4342
    goto/16 :goto_1aab

    .line 4330
    :pswitch_c07
    move-object v15, v2

    sget-object v1, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 4332
    invoke-virtual {v15}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 4333
    invoke-virtual {v15}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4334
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->showBootMessage(Ljava/lang/CharSequence;Z)V

    .line 4335
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 4336
    goto/16 :goto_1aab

    .line 4320
    :pswitch_c1f
    move-object v15, v2

    invoke-virtual {v15}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 4321
    invoke-virtual {v15}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4322
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->getProcessPss([I)[J

    move-result-object v0

    .line 4323
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 4324
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 4325
    goto/16 :goto_1aab

    .line 4307
    :pswitch_c33
    move-object v15, v2

    sget-object v1, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/Configuration;

    .line 4309
    invoke-virtual {v15}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4311
    invoke-virtual {v15}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4312
    invoke-virtual {v15}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4313
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->updatePersistentConfigurationWithAttribution(Landroid/content/res/Configuration;Ljava/lang/String;Ljava/lang/String;)V

    .line 4314
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 4315
    goto/16 :goto_1aab

    .line 4298
    :pswitch_c4f
    move-object v15, v2

    sget-object v1, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/Configuration;

    .line 4299
    invoke-virtual {v15}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4300
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->updatePersistentConfiguration(Landroid/content/res/Configuration;)V

    .line 4301
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 4302
    goto/16 :goto_1aab

    .line 4288
    :pswitch_c63
    move-object v15, v2

    invoke-virtual {v15}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v1

    .line 4289
    invoke-virtual {v15}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4290
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->isIntentSenderTargetedToPackage(Landroid/content/IIntentSender;)Z

    move-result v0

    .line 4291
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 4292
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4293
    goto/16 :goto_1aab

    .line 4278
    :pswitch_c7b
    move-object v15, v2

    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4279
    invoke-virtual {v15}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4280
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->removeTask(I)Z

    move-result v0

    .line 4281
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 4282
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4283
    goto/16 :goto_1aab

    .line 4269
    :pswitch_c8f
    move-object v15, v2

    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4270
    invoke-virtual {v15}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4271
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->setStopUserOnSwitch(I)V

    .line 4272
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 4273
    goto/16 :goto_1aab

    .line 4259
    :pswitch_c9f
    move-object v15, v2

    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4260
    invoke-virtual {v15}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4261
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->logoutUser(I)Z

    move-result v0

    .line 4262
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 4263
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4264
    goto/16 :goto_1aab

    .line 4249
    :pswitch_cb3
    move-object v15, v2

    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4250
    invoke-virtual {v15}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4251
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->getSwitchingToUserMessage(I)Ljava/lang/String;

    move-result-object v0

    .line 4252
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 4253
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4254
    goto/16 :goto_1aab

    .line 4239
    :pswitch_cc7
    move-object v15, v2

    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4240
    invoke-virtual {v15}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4241
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->getSwitchingFromUserMessage(I)Ljava/lang/String;

    move-result-object v0

    .line 4242
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 4243
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4244
    goto/16 :goto_1aab

    .line 4229
    :pswitch_cdb
    move-object v15, v2

    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4230
    invoke-virtual {v15}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4231
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->switchUser(I)Z

    move-result v0

    .line 4232
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 4233
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4234
    goto/16 :goto_1aab

    .line 4218
    :pswitch_cef
    move-object v15, v2

    invoke-virtual {v15}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4220
    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4221
    invoke-virtual {v15}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4222
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->setPackageScreenCompatMode(Ljava/lang/String;I)V

    .line 4223
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 4224
    goto/16 :goto_1aab

    .line 4206
    :pswitch_d03
    move-object v15, v2

    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4208
    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4209
    invoke-virtual {v15}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4210
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->isUserRunning(II)Z

    move-result v0

    .line 4211
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 4212
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4213
    goto/16 :goto_1aab

    .line 4189
    :pswitch_d1b
    move-object v15, v2

    sget-object v1, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelFileDescriptor;

    .line 4191
    invoke-virtual {v15}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 4193
    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 4195
    invoke-virtual {v15}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 4197
    invoke-virtual {v15}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 4198
    invoke-virtual {v15}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4199
    invoke-virtual/range {v0 .. v5}, Landroid/app/IActivityManager$Stub;->dumpBitmapsProto(Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;IZLjava/lang/String;)V

    .line 4200
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 4201
    goto/16 :goto_1aab

    .line 4163
    :pswitch_d3f
    move-object v15, v2

    invoke-virtual {v15}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4165
    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4167
    invoke-virtual {v15}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 4169
    invoke-virtual {v15}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 4171
    invoke-virtual {v15}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 4173
    invoke-virtual {v15}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 4175
    invoke-virtual {v15}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 4177
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/os/ParcelFileDescriptor;

    .line 4179
    sget-object v0, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/os/RemoteCallback;

    .line 4180
    invoke-virtual {v15}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4181
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v9}, Landroid/app/IActivityManager$Stub;->dumpHeap(Ljava/lang/String;IZZZLjava/lang/String;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/RemoteCallback;)Z

    move-result v0

    .line 4182
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 4183
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4184
    goto/16 :goto_1aab

    .line 4151
    :pswitch_d7f
    move-object v15, v2

    sget-object v1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 4153
    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4155
    sget-object v3, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/RemoteCallback;

    .line 4156
    invoke-virtual {v15}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4157
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->getMimeTypeFilterAsync(Landroid/net/Uri;ILandroid/os/RemoteCallback;)V

    .line 4158
    goto/16 :goto_1aab

    .line 4128
    :pswitch_d9c
    move-object v15, v2

    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4130
    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4132
    invoke-virtual {v15}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4134
    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 4136
    invoke-virtual {v15}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 4138
    invoke-virtual {v15}, Landroid/os/Parcel;->readBoolean()Z

    move-result v6

    .line 4140
    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 4142
    sget-object v8, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v8}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/Bundle;

    .line 4143
    invoke-virtual {v15}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4144
    invoke-virtual/range {v0 .. v8}, Landroid/app/IActivityManager$Stub;->crashApplicationWithTypeWithExtras(IILjava/lang/String;ILjava/lang/String;ZILandroid/os/Bundle;)V

    .line 4145
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 4146
    goto/16 :goto_1aab

    .line 4107
    :pswitch_dcc
    move-object v15, v2

    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4109
    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4111
    invoke-virtual {v15}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4113
    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 4115
    invoke-virtual {v15}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 4117
    invoke-virtual {v15}, Landroid/os/Parcel;->readBoolean()Z

    move-result v6

    .line 4119
    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 4120
    invoke-virtual {v15}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4121
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/app/IActivityManager$Stub;->crashApplicationWithType(IILjava/lang/String;ILjava/lang/String;ZI)V

    .line 4122
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 4123
    goto/16 :goto_1aab

    .line 4099
    :pswitch_df6
    invoke-virtual {v0}, Landroid/app/IActivityManager$Stub;->isTopActivityImmersive()Z

    move-result v0

    .line 4100
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 4101
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4102
    goto/16 :goto_1aab

    .line 4091
    :pswitch_e02
    move-object v15, v2

    invoke-virtual {v15}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 4092
    invoke-virtual {v15}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4093
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->registerStrictModeCallback(Landroid/os/IBinder;)V

    .line 4094
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 4095
    goto/16 :goto_1aab

    .line 4078
    :pswitch_e12
    move-object v15, v2

    invoke-virtual {v15}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 4080
    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4082
    sget-object v3, Landroid/os/StrictMode$ViolationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/StrictMode$ViolationInfo;

    .line 4083
    invoke-virtual {v15}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4084
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->handleApplicationStrictModeViolation(Landroid/os/IBinder;ILandroid/os/StrictMode$ViolationInfo;)V

    .line 4085
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 4086
    goto/16 :goto_1aab

    .line 4071
    :pswitch_e2e
    invoke-virtual {v0}, Landroid/app/IActivityManager$Stub;->finishHeavyWeightApp()V

    .line 4072
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 4073
    goto/16 :goto_1aab

    .line 4064
    :pswitch_e36
    invoke-virtual {v0}, Landroid/app/IActivityManager$Stub;->getRunningExternalApplications()Ljava/util/List;

    move-result-object v0

    .line 4065
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 4066
    invoke-virtual {v13, v0, v14}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 4067
    goto/16 :goto_1aab

    .line 4057
    :pswitch_e42
    invoke-virtual {v0}, Landroid/app/IActivityManager$Stub;->isUserAMonkey()Z

    move-result v0

    .line 4058
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 4059
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4060
    goto/16 :goto_1aab

    .line 4047
    :pswitch_e4e
    move-object v15, v2

    invoke-virtual {v15}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4049
    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4050
    invoke-virtual {v15}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4051
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->killBackgroundProcesses(Ljava/lang/String;I)V

    .line 4052
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 4053
    goto/16 :goto_1aab

    .line 4029
    :pswitch_e62
    move-object v15, v2

    invoke-virtual {v15}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 4031
    invoke-virtual {v15}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4033
    invoke-virtual {v15}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 4035
    sget-object v4, Landroid/app/ApplicationErrorReport$ParcelableCrashInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ApplicationErrorReport$ParcelableCrashInfo;

    .line 4037
    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 4038
    invoke-virtual {v15}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4039
    invoke-virtual/range {v0 .. v5}, Landroid/app/IActivityManager$Stub;->handleApplicationWtf(Landroid/os/IBinder;Ljava/lang/String;ZLandroid/app/ApplicationErrorReport$ParcelableCrashInfo;I)Z

    move-result v0

    .line 4040
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 4041
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4042
    goto/16 :goto_1aab

    .line 4018
    :pswitch_e8a
    move-object v15, v2

    invoke-virtual {v15}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4020
    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4021
    invoke-virtual {v15}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4022
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->killApplicationProcess(Ljava/lang/String;I)V

    .line 4023
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 4024
    goto/16 :goto_1aab

    .line 4008
    :pswitch_e9e
    move-object v15, v2

    invoke-virtual {v15}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 4009
    invoke-virtual {v15}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4010
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    move-result-object v0

    .line 4011
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 4012
    invoke-virtual {v13, v0, v14}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 4013
    goto/16 :goto_1aab

    .line 3999
    :pswitch_eb2
    move-object v15, v2

    invoke-virtual {v15}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4000
    invoke-virtual {v15}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4001
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->closeSystemDialogs(Ljava/lang/String;)V

    .line 4002
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 4003
    goto/16 :goto_1aab

    .line 3982
    :pswitch_ec2
    move-object v15, v2

    invoke-virtual {v15}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3984
    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3986
    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3988
    invoke-virtual {v15}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 3990
    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 3991
    invoke-virtual {v15}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3992
    invoke-virtual/range {v0 .. v5}, Landroid/app/IActivityManager$Stub;->killApplication(Ljava/lang/String;IILjava/lang/String;I)V

    .line 3993
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 3994
    goto/16 :goto_1aab

    .line 3973
    :pswitch_ee2
    move-object v15, v2

    invoke-virtual {v15}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3974
    invoke-virtual {v15}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3975
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->addPackageDependency(Ljava/lang/String;)V

    .line 3976
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 3977
    goto/16 :goto_1aab

    .line 3951
    :pswitch_ef2
    move-object v15, v2

    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3953
    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3955
    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3957
    invoke-virtual {v15}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 3959
    invoke-virtual {v15}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 3961
    invoke-virtual {v15}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 3963
    invoke-virtual {v15}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 3964
    invoke-virtual {v15}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3965
    invoke-virtual/range {v0 .. v7}, Landroid/app/IActivityManager$Stub;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 3966
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 3967
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3968
    goto/16 :goto_1aab

    .line 3942
    :pswitch_f1e
    move-object v15, v2

    sget-object v1, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .line 3943
    invoke-virtual {v15}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3944
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->unbindBackupAgent(Landroid/content/pm/ApplicationInfo;)V

    .line 3945
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 3946
    goto/16 :goto_1aab

    .line 3929
    :pswitch_f32
    move-object v15, v2

    invoke-virtual {v15}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3931
    invoke-virtual {v15}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 3933
    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3934
    invoke-virtual {v15}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3935
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->backupAgentCreated(Ljava/lang/String;Landroid/os/IBinder;I)V

    .line 3936
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 3937
    goto/16 :goto_1aab

    .line 3911
    :pswitch_f4a
    move-object v15, v2

    invoke-virtual {v15}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3913
    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3915
    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3917
    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 3919
    invoke-virtual {v15}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 3920
    invoke-virtual {v15}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3921
    invoke-virtual/range {v0 .. v5}, Landroid/app/IActivityManager$Stub;->bindBackupAgent(Ljava/lang/String;IIIZ)Z

    move-result v0

    .line 3922
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 3923
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3924
    goto/16 :goto_1aab

    .line 3904
    :pswitch_f6e
    invoke-virtual {v0}, Landroid/app/IActivityManager$Stub;->resumeAppSwitches()V

    .line 3905
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 3906
    goto/16 :goto_1aab

    .line 3898
    :pswitch_f76
    invoke-virtual {v0}, Landroid/app/IActivityManager$Stub;->stopAppSwitches()V

    .line 3899
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 3900
    goto/16 :goto_1aab

    .line 3889
    :pswitch_f7e
    move-object v15, v2

    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3890
    invoke-virtual {v15}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3891
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->shutdown(I)Z

    move-result v0

    .line 3892
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 3893
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3894
    goto/16 :goto_1aab

    .line 3871
    :pswitch_f92
    move-object v15, v2

    invoke-virtual {v15}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3873
    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3875
    invoke-virtual {v15}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 3877
    sget-object v4, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ProfilerInfo;

    .line 3879
    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 3880
    invoke-virtual {v15}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3881
    invoke-virtual/range {v0 .. v5}, Landroid/app/IActivityManager$Stub;->profileControl(Ljava/lang/String;IZLandroid/app/ProfilerInfo;I)Z

    move-result v0

    .line 3882
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 3883
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3884
    goto/16 :goto_1aab

    .line 3857
    :pswitch_fba
    move-object v15, v2

    sget-object v1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 3859
    invoke-virtual {v15}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3861
    invoke-virtual {v15}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3862
    invoke-virtual {v15}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3863
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->peekService(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 3864
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 3865
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3866
    goto/16 :goto_1aab

    .line 3845
    :pswitch_fda
    move-object v15, v2

    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3847
    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3848
    invoke-virtual {v15}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3849
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->getServices(II)Ljava/util/List;

    move-result-object v0

    .line 3850
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 3851
    invoke-virtual {v13, v0, v14}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 3852
    goto/16 :goto_1aab

    .line 3831
    :pswitch_ff2
    move-object v15, v2

    invoke-virtual {v15}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 3833
    invoke-virtual {v15}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3835
    invoke-virtual {v15}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 3836
    invoke-virtual {v15}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3837
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->killPids([ILjava/lang/String;Z)Z

    move-result v0

    .line 3838
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 3839
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3840
    goto/16 :goto_1aab

    .line 3820
    :pswitch_100e
    move-object v15, v2

    invoke-virtual {v15}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3822
    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3823
    invoke-virtual {v15}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3824
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->forceStopPackageEvenWhenStopping(Ljava/lang/String;I)V

    .line 3825
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 3826
    goto/16 :goto_1aab

    .line 3809
    :pswitch_1022
    move-object v15, v2

    invoke-virtual {v15}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3811
    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3812
    invoke-virtual {v15}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3813
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->forceStopPackage(Ljava/lang/String;I)V

    .line 3814
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 3815
    goto/16 :goto_1aab

    .line 3799
    :pswitch_1036
    move-object v15, v2

    invoke-virtual {v15}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IForegroundServiceObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IForegroundServiceObserver;

    move-result-object v1

    .line 3800
    invoke-virtual {v15}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3801
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->registerForegroundServiceObserver(Landroid/app/IForegroundServiceObserver;)Z

    move-result v0

    .line 3802
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 3803
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3804
    goto/16 :goto_1aab

    .line 3788
    :pswitch_104e
    move-object v15, v2

    invoke-virtual {v15}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3790
    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3791
    invoke-virtual {v15}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3792
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->stopAppForUser(Ljava/lang/String;I)V

    .line 3793
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 3794
    goto/16 :goto_1aab

    .line 3772
    :pswitch_1062
    move-object v15, v2

    invoke-virtual {v15}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3774
    invoke-virtual {v15}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 3776
    invoke-virtual {v15}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/content/pm/IPackageDataObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageDataObserver;

    move-result-object v3

    .line 3778
    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 3779
    invoke-virtual {v15}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3780
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/IActivityManager$Stub;->clearApplicationUserDataWithoutPermissionReset(Ljava/lang/String;ZLandroid/content/pm/IPackageDataObserver;I)Z

    move-result v0

    .line 3781
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 3782
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3783
    goto/16 :goto_1aab

    .line 3756
    :pswitch_1086
    move-object v15, v2

    invoke-virtual {v15}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3758
    invoke-virtual {v15}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 3760
    invoke-virtual {v15}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/content/pm/IPackageDataObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageDataObserver;

    move-result-object v3

    .line 3762
    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 3763
    invoke-virtual {v15}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3764
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/IActivityManager$Stub;->clearApplicationUserData(Ljava/lang/String;ZLandroid/content/pm/IPackageDataObserver;I)Z

    move-result v0

    .line 3765
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 3766
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3767
    goto/16 :goto_1aab

    .line 3748
    :pswitch_10aa
    invoke-virtual {v0}, Landroid/app/IActivityManager$Stub;->getProcessesInErrorState()Ljava/util/List;

    move-result-object v0

    .line 3749
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 3750
    invoke-virtual {v13, v0, v14}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 3751
    goto/16 :goto_1aab

    .line 3739
    :pswitch_10b6
    move-object v15, v2

    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 3740
    invoke-virtual {v15}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3741
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 3742
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 3743
    invoke-virtual {v13, v1, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3744
    goto/16 :goto_1aab

    .line 3727
    :pswitch_10ca
    move-object v15, v2

    invoke-virtual {v15}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 3729
    invoke-virtual {v15}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 3730
    invoke-virtual {v15}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3731
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->moveActivityTaskToBack(Landroid/os/IBinder;Z)Z

    move-result v0

    .line 3732
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 3733
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3734
    goto/16 :goto_1aab

    .line 3715
    :pswitch_10e2
    move-object v15, v2

    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 3717
    invoke-virtual {v15}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 3718
    invoke-virtual {v15}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3719
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->getForegroundServiceType(Landroid/content/ComponentName;Landroid/os/IBinder;)I

    move-result v0

    .line 3720
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 3721
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3722
    goto/16 :goto_1aab

    .line 3696
    :pswitch_10fe
    move-object v15, v2

    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 3698
    invoke-virtual {v15}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 3700
    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3702
    sget-object v4, Landroid/app/Notification;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/Notification;

    .line 3704
    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 3706
    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 3707
    invoke-virtual {v15}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3708
    invoke-virtual/range {v0 .. v6}, Landroid/app/IActivityManager$Stub;->setServiceForeground(Landroid/content/ComponentName;Landroid/os/IBinder;ILandroid/app/Notification;II)V

    .line 3709
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 3710
    goto/16 :goto_1aab

    .line 3681
    :pswitch_112a
    move-object v15, v2

    invoke-virtual {v15}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 3683
    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3685
    invoke-virtual {v15}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 3687
    invoke-virtual {v15}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 3688
    invoke-virtual {v15}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3689
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/IActivityManager$Stub;->setProcessImportant(Landroid/os/IBinder;IZLjava/lang/String;)V

    .line 3690
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 3691
    goto/16 :goto_1aab

    .line 3670
    :pswitch_1146
    move-object v15, v2

    invoke-virtual {v15}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 3672
    invoke-virtual {v15}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 3673
    invoke-virtual {v15}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3674
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->unbindFinished(Landroid/os/IBinder;Landroid/os/IBinder;)V

    .line 3675
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 3676
    goto/16 :goto_1aab

    .line 3659
    :pswitch_115a
    move-object v15, v2

    invoke-virtual {v15}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 3661
    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3662
    invoke-virtual {v15}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3663
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->setRequestedOrientation(Landroid/os/IBinder;I)V

    .line 3664
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 3665
    goto/16 :goto_1aab

    .line 3649
    :pswitch_116e
    move-object v15, v2

    invoke-virtual {v15}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 3651
    invoke-virtual {v15}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 3652
    invoke-virtual {v15}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3653
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->removeContentProvider(Landroid/os/IBinder;Z)V

    .line 3654
    goto/16 :goto_1aab

    .line 3632
    :pswitch_117f
    move-object v15, v2

    invoke-virtual {v15}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v1

    .line 3634
    sget-object v2, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/WorkSource;

    .line 3636
    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3638
    invoke-virtual {v15}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 3640
    invoke-virtual {v15}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 3641
    invoke-virtual {v15}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3642
    invoke-virtual/range {v0 .. v5}, Landroid/app/IActivityManager$Stub;->noteWakeupAlarm(Landroid/content/IIntentSender;Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;)V

    .line 3643
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 3644
    goto/16 :goto_1aab

    .line 3625
    :pswitch_11a7
    invoke-virtual {v0}, Landroid/app/IActivityManager$Stub;->enterSafeMode()V

    .line 3626
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 3627
    goto/16 :goto_1aab

    .line 3615
    :pswitch_11af
    move-object v15, v2

    invoke-virtual {v15}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v1

    .line 3617
    invoke-virtual {v15}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/os/IResultReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/os/IResultReceiver;

    move-result-object v2

    .line 3618
    invoke-virtual {v15}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3619
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->unregisterIntentSenderCancelListener(Landroid/content/IIntentSender;Lcom/android/internal/os/IResultReceiver;)V

    .line 3620
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 3621
    goto/16 :goto_1aab

    .line 3603
    :pswitch_11cb
    move-object v15, v2

    invoke-virtual {v15}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v1

    .line 3605
    invoke-virtual {v15}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/os/IResultReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/os/IResultReceiver;

    move-result-object v2

    .line 3606
    invoke-virtual {v15}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3607
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->registerIntentSenderCancelListenerEx(Landroid/content/IIntentSender;Lcom/android/internal/os/IResultReceiver;)Z

    move-result v0

    .line 3608
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 3609
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3610
    goto/16 :goto_1aab

    .line 3593
    :pswitch_11eb
    move-object v15, v2

    invoke-virtual {v15}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v1

    .line 3594
    invoke-virtual {v15}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3595
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->getInfoForIntentSender(Landroid/content/IIntentSender;)Landroid/app/ActivityManager$PendingIntentInfo;

    move-result-object v0

    .line 3596
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 3597
    invoke-virtual {v13, v0, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3598
    goto/16 :goto_1aab

    .line 3584
    :pswitch_1203
    move-object v15, v2

    invoke-virtual {v15}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v1

    .line 3585
    invoke-virtual {v15}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3586
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->cancelIntentSender(Landroid/content/IIntentSender;)V

    .line 3587
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 3588
    goto/16 :goto_1aab

    .line 3554
    :pswitch_1217
    move-object v15, v2

    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3556
    invoke-virtual {v15}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3558
    invoke-virtual {v15}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3560
    invoke-virtual {v15}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 3562
    invoke-virtual {v15}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 3564
    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 3566
    sget-object v7, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v7}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/content/Intent;

    .line 3568
    invoke-virtual {v15}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v8

    .line 3570
    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 3572
    sget-object v10, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v10}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/Bundle;

    .line 3574
    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 3575
    invoke-virtual {v15}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3576
    invoke-virtual/range {v0 .. v11}, Landroid/app/IActivityManager$Stub;->getIntentSenderWithFeature(ILjava/lang/String;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;I)Landroid/content/IIntentSender;

    move-result-object v0

    .line 3577
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 3578
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 3579
    goto/16 :goto_1aab

    .line 3526
    :pswitch_125b
    move-object v15, v2

    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3528
    invoke-virtual {v15}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3530
    invoke-virtual {v15}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 3532
    invoke-virtual {v15}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 3534
    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 3536
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, [Landroid/content/Intent;

    .line 3538
    invoke-virtual {v15}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v7

    .line 3540
    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 3542
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/os/Bundle;

    .line 3544
    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 3545
    invoke-virtual {v15}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3546
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v10}, Landroid/app/IActivityManager$Stub;->getIntentSender(ILjava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;I)Landroid/content/IIntentSender;

    move-result-object v0

    .line 3547
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 3548
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 3549
    goto/16 :goto_1aab

    .line 3512
    :pswitch_129f
    move-object v15, v2

    invoke-virtual {v15}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 3514
    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3516
    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3518
    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 3519
    invoke-virtual {v15}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3520
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/IActivityManager$Stub;->serviceDoneExecuting(Landroid/os/IBinder;III)V

    .line 3521
    goto/16 :goto_1aab

    .line 3498
    :pswitch_12b8
    move-object v15, v2

    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3500
    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3502
    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3503
    invoke-virtual {v15}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3504
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->getRecentTasks(III)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 3505
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 3506
    invoke-virtual {v13, v0, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3507
    goto/16 :goto_1aab

    .line 3489
    :pswitch_12d4
    move-object v15, v2

    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3490
    invoke-virtual {v15}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3491
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->signalPersistentProcesses(I)V

    .line 3492
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 3493
    goto/16 :goto_1aab

    .line 3478
    :pswitch_12e4
    move-object v15, v2

    invoke-virtual {v15}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v1

    .line 3480
    invoke-virtual {v15}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 3481
    invoke-virtual {v15}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3482
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->showWaitingForDebugger(Landroid/app/IApplicationThread;Z)V

    .line 3483
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 3484
    goto/16 :goto_1aab

    .line 3467
    :pswitch_12fc
    move-object v15, v2

    invoke-virtual {v15}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IActivityController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityController;

    move-result-object v1

    .line 3469
    invoke-virtual {v15}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 3470
    invoke-virtual {v15}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3471
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->setActivityController(Landroid/app/IActivityController;Z)V

    .line 3472
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 3473
    goto/16 :goto_1aab

    .line 3450
    :pswitch_1314
    move-object v15, v2

    invoke-virtual {v15}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v1

    .line 3452
    invoke-virtual {v15}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3454
    sget-object v3, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 3456
    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 3458
    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 3459
    invoke-virtual {v15}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3460
    invoke-virtual/range {v0 .. v5}, Landroid/app/IActivityManager$Stub;->revokeUriPermission(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/net/Uri;II)V

    .line 3461
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 3462
    goto/16 :goto_1aab

    .line 3433
    :pswitch_133c
    move-object v15, v2

    invoke-virtual {v15}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v1

    .line 3435
    invoke-virtual {v15}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3437
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/net/Uri;

    .line 3439
    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 3441
    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 3442
    invoke-virtual {v15}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3443
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/app/IActivityManager$Stub;->grantUriPermission(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/net/Uri;II)V

    .line 3444
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 3445
    goto/16 :goto_1aab

    .line 3413
    :pswitch_1367
    move-object v15, v2

    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 3415
    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3417
    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3419
    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 3421
    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 3423
    invoke-virtual {v15}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 3424
    invoke-virtual {v15}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3425
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/app/IActivityManager$Stub;->checkUriPermissions(Ljava/util/List;IIIILandroid/os/IBinder;)[I

    move-result-object v0

    .line 3426
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 3427
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 3428
    goto/16 :goto_1aab

    .line 3395
    :pswitch_1393
    move-object v15, v2

    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/net/Uri;

    .line 3397
    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3399
    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3401
    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 3403
    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 3404
    invoke-virtual {v15}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3405
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/app/IActivityManager$Stub;->checkContentUriPermissionFull(Landroid/net/Uri;IIII)I

    move-result v0

    .line 3406
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 3407
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3408
    goto/16 :goto_1aab

    .line 3375
    :pswitch_13be
    move-object v15, v2

    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/net/Uri;

    .line 3377
    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3379
    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3381
    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 3383
    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 3385
    invoke-virtual {v15}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 3386
    invoke-virtual {v15}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3387
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/app/IActivityManager$Stub;->checkUriPermission(Landroid/net/Uri;IIIILandroid/os/IBinder;)I

    move-result v0

    .line 3388
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 3389
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3390
    goto/16 :goto_1aab

    .line 3367
    :pswitch_13ed
    invoke-virtual {v0}, Landroid/app/IActivityManager$Stub;->getProcessLimit()I

    move-result v0

    .line 3368
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 3369
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3370
    goto/16 :goto_1aab

    .line 3359
    :pswitch_13f9
    move-object v15, v2

    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3360
    invoke-virtual {v15}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3361
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->setProcessLimit(I)V

    .line 3362
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 3363
    goto/16 :goto_1aab

    .line 3345
    :pswitch_1409
    move-object v15, v2

    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 3347
    invoke-virtual {v15}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 3349
    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3350
    invoke-virtual {v15}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3351
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->stopServiceToken(Landroid/content/ComponentName;Landroid/os/IBinder;I)Z

    move-result v0

    .line 3352
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 3353
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3354
    goto/16 :goto_1aab

    .line 3333
    :pswitch_1429
    move-object v15, v2

    invoke-virtual {v15}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3335
    invoke-virtual {v15}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3336
    invoke-virtual {v15}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3337
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->updateMccMncConfiguration(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 3338
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 3339
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3340
    goto/16 :goto_1aab

    .line 3323
    :pswitch_1441
    move-object v15, v2

    sget-object v1, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/Configuration;

    .line 3324
    invoke-virtual {v15}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3325
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->updateConfiguration(Landroid/content/res/Configuration;)Z

    move-result v0

    .line 3326
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 3327
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3328
    goto/16 :goto_1aab

    .line 3315
    :pswitch_1459
    invoke-virtual {v0}, Landroid/app/IActivityManager$Stub;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 3316
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 3317
    invoke-virtual {v13, v0, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3318
    goto/16 :goto_1aab

    .line 3303
    :pswitch_1465
    move-object v15, v2

    invoke-virtual {v15}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v1

    .line 3305
    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3307
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 3308
    invoke-virtual {v15}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3309
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->finishInstrumentation(Landroid/app/IApplicationThread;ILandroid/os/Bundle;)V

    .line 3310
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 3311
    goto/16 :goto_1aab

    .line 3292
    :pswitch_1485
    move-object v15, v2

    invoke-virtual {v15}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v1

    .line 3294
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 3295
    invoke-virtual {v15}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3296
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->addInstrumentationResults(Landroid/app/IApplicationThread;Landroid/os/Bundle;)V

    .line 3297
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 3298
    goto/16 :goto_1aab

    .line 3268
    :pswitch_14a1
    move-object v15, v2

    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 3270
    invoke-virtual {v15}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3272
    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3274
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 3276
    invoke-virtual {v15}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/app/IInstrumentationWatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IInstrumentationWatcher;

    move-result-object v5

    .line 3278
    invoke-virtual {v15}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/IUiAutomationConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUiAutomationConnection;

    move-result-object v6

    .line 3280
    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 3282
    invoke-virtual {v15}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 3283
    invoke-virtual {v15}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3284
    invoke-virtual/range {v0 .. v8}, Landroid/app/IActivityManager$Stub;->startInstrumentation(Landroid/content/ComponentName;Ljava/lang/String;ILandroid/os/Bundle;Landroid/app/IInstrumentationWatcher;Landroid/app/IUiAutomationConnection;ILjava/lang/String;)Z

    move-result v0

    .line 3285
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 3286
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3287
    goto/16 :goto_1aab

    .line 3259
    :pswitch_14e1
    move-object v15, v2

    invoke-virtual {v15}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 3260
    invoke-virtual {v15}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3261
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->setAlwaysFinish(Z)V

    .line 3262
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 3263
    goto/16 :goto_1aab

    .line 3248
    :pswitch_14f1
    move-object v15, v2

    invoke-virtual {v15}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3250
    invoke-virtual {v15}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3251
    invoke-virtual {v15}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3252
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->setAgentApp(Ljava/lang/String;Ljava/lang/String;)V

    .line 3253
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 3254
    goto/16 :goto_1aab

    .line 3235
    :pswitch_1505
    move-object v15, v2

    invoke-virtual {v15}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3237
    invoke-virtual {v15}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 3239
    invoke-virtual {v15}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 3240
    invoke-virtual {v15}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3241
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->setDebugApp(Ljava/lang/String;ZZ)V

    .line 3242
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 3243
    goto/16 :goto_1aab

    .line 3222
    :pswitch_151d
    move-object v15, v2

    invoke-virtual {v15}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 3224
    invoke-virtual {v15}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 3226
    invoke-virtual {v15}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 3227
    invoke-virtual {v15}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3228
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->publishService(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/os/IBinder;)V

    .line 3229
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 3230
    goto/16 :goto_1aab

    .line 3212
    :pswitch_1535
    move-object v15, v2

    invoke-virtual {v15}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IServiceConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IServiceConnection;

    move-result-object v1

    .line 3213
    invoke-virtual {v15}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3214
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->unbindService(Landroid/app/IServiceConnection;)Z

    move-result v0

    .line 3215
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 3216
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3217
    goto/16 :goto_1aab

    .line 3203
    :pswitch_154d
    move-object v15, v2

    sget-object v1, Landroid/app/BindUpdateInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 3204
    invoke-virtual {v15}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3205
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->updateServiceBindings(Ljava/util/List;)V

    .line 3206
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 3207
    goto/16 :goto_1aab

    .line 3190
    :pswitch_155f
    move-object v15, v2

    invoke-virtual {v15}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IServiceConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IServiceConnection;

    move-result-object v1

    .line 3192
    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3194
    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3195
    invoke-virtual {v15}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3196
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->updateServiceGroup(Landroid/app/IServiceConnection;II)V

    .line 3197
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 3198
    goto/16 :goto_1aab

    .line 3164
    :pswitch_157b
    move-object v15, v2

    invoke-virtual {v15}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v1

    .line 3166
    invoke-virtual {v15}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 3168
    sget-object v3, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    .line 3170
    invoke-virtual {v15}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 3172
    invoke-virtual {v15}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/app/IServiceConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IServiceConnection;

    move-result-object v5

    .line 3174
    invoke-virtual {v15}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 3176
    invoke-virtual {v15}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 3178
    invoke-virtual {v15}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 3180
    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 3181
    invoke-virtual {v15}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3182
    invoke-virtual/range {v0 .. v10}, Landroid/app/IActivityManager$Stub;->bindServiceInstance(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;Landroid/app/IServiceConnection;JLjava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 3183
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 3184
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3185
    goto/16 :goto_1aab

    .line 3140
    :pswitch_15bb
    move-object v15, v2

    invoke-virtual {v15}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v1

    .line 3142
    invoke-virtual {v15}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 3144
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/content/Intent;

    .line 3146
    invoke-virtual {v15}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 3148
    invoke-virtual {v15}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IServiceConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IServiceConnection;

    move-result-object v5

    .line 3150
    invoke-virtual {v15}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 3152
    invoke-virtual {v15}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 3154
    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 3155
    invoke-virtual {v15}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3156
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v9}, Landroid/app/IActivityManager$Stub;->bindService(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;Landroid/app/IServiceConnection;JLjava/lang/String;I)I

    move-result v0

    .line 3157
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 3158
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3159
    goto/16 :goto_1aab

    .line 3124
    :pswitch_15fa
    move-object v15, v2

    invoke-virtual {v15}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v1

    .line 3126
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 3128
    invoke-virtual {v15}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3130
    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 3131
    invoke-virtual {v15}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3132
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/IActivityManager$Stub;->stopService(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;I)I

    move-result v0

    .line 3133
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 3134
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3135
    goto/16 :goto_1aab

    .line 3102
    :pswitch_1622
    move-object v15, v2

    invoke-virtual {v15}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v1

    .line 3104
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 3106
    invoke-virtual {v15}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3108
    invoke-virtual {v15}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 3110
    invoke-virtual {v15}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 3112
    invoke-virtual {v15}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 3114
    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 3115
    invoke-virtual {v15}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3116
    invoke-virtual/range {v0 .. v7}, Landroid/app/IActivityManager$Stub;->startService(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;I)Landroid/content/ComponentName;

    move-result-object v0

    .line 3117
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 3118
    invoke-virtual {v13, v0, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3119
    goto/16 :goto_1aab

    .line 3092
    :pswitch_1656
    move-object v15, v2

    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 3093
    invoke-virtual {v15}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3094
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->getRunningServiceConnections(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v0

    .line 3095
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 3096
    invoke-virtual {v13, v0, v14}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 3097
    goto/16 :goto_1aab

    .line 3082
    :pswitch_166e
    move-object v15, v2

    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 3083
    invoke-virtual {v15}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3084
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->getRunningServiceControlPanel(Landroid/content/ComponentName;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 3085
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 3086
    invoke-virtual {v13, v0, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3087
    goto/16 :goto_1aab

    .line 3068
    :pswitch_1686
    move-object v15, v2

    invoke-virtual {v15}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 3070
    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3072
    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3073
    invoke-virtual {v15}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3074
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->refContentProvider(Landroid/os/IBinder;II)Z

    move-result v0

    .line 3075
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 3076
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3077
    goto/16 :goto_1aab

    .line 3057
    :pswitch_16a2
    move-object v15, v2

    invoke-virtual {v15}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v1

    .line 3059
    sget-object v2, Landroid/app/ContentProviderHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 3060
    invoke-virtual {v15}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3061
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->publishContentProviders(Landroid/app/IApplicationThread;Ljava/util/List;)V

    .line 3062
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 3063
    goto/16 :goto_1aab

    .line 3039
    :pswitch_16bc
    move-object v15, v2

    invoke-virtual {v15}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v1

    .line 3041
    invoke-virtual {v15}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3043
    invoke-virtual {v15}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3045
    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 3047
    invoke-virtual {v15}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 3048
    invoke-virtual {v15}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3049
    invoke-virtual/range {v0 .. v5}, Landroid/app/IActivityManager$Stub;->getContentProvider(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;IZ)Landroid/app/ContentProviderHolder;

    move-result-object v0

    .line 3050
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 3051
    invoke-virtual {v13, v0, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3052
    goto/16 :goto_1aab

    .line 3027
    :pswitch_16e4
    move-object v15, v2

    invoke-virtual {v15}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 3029
    invoke-virtual {v15}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 3030
    invoke-virtual {v15}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3031
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->getTaskForActivity(Landroid/os/IBinder;Z)I

    move-result v0

    .line 3032
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 3033
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3034
    goto/16 :goto_1aab

    .line 3010
    :pswitch_16fc
    move-object v15, v2

    invoke-virtual {v15}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v1

    .line 3012
    invoke-virtual {v15}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3014
    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3016
    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 3018
    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    .line 3019
    invoke-virtual {v15}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3020
    invoke-virtual/range {v0 .. v5}, Landroid/app/IActivityManager$Stub;->moveTaskToFront(Landroid/app/IApplicationThread;Ljava/lang/String;IILandroid/os/Bundle;)V

    .line 3021
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 3022
    goto/16 :goto_1aab

    .line 3000
    :pswitch_1724
    move-object v15, v2

    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3001
    invoke-virtual {v15}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3002
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->getTasks(I)Ljava/util/List;

    move-result-object v0

    .line 3003
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 3004
    invoke-virtual {v13, v0, v14}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 3005
    goto/16 :goto_1aab

    .line 2989
    :pswitch_1738
    move-object v15, v2

    invoke-virtual {v15}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 2991
    invoke-virtual {v15}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 2992
    invoke-virtual {v15}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2993
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/IActivityManager$Stub;->finishAttachApplication(JJ)V

    .line 2994
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 2995
    goto/16 :goto_1aab

    .line 2978
    :pswitch_174c
    move-object v15, v2

    invoke-virtual {v15}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 2980
    invoke-virtual {v15}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 2981
    invoke-virtual {v15}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2982
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->attachNativeApplication(Landroid/os/IBinder;J)V

    .line 2983
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 2984
    goto/16 :goto_1aab

    .line 2967
    :pswitch_1760
    move-object v15, v2

    invoke-virtual {v15}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v1

    .line 2969
    invoke-virtual {v15}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 2970
    invoke-virtual {v15}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2971
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->attachApplication(Landroid/app/IApplicationThread;J)V

    .line 2972
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 2973
    goto/16 :goto_1aab

    .line 2949
    :pswitch_1778
    move-object v15, v2

    invoke-virtual {v15}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 2951
    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2953
    invoke-virtual {v15}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 2955
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 2957
    invoke-virtual {v15}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 2959
    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 2960
    invoke-virtual {v15}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2961
    invoke-virtual/range {v0 .. v6}, Landroid/app/IActivityManager$Stub;->finishReceiver(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/Bundle;ZI)V

    .line 2962
    goto/16 :goto_1aab

    .line 2936
    :pswitch_179d
    move-object v15, v2

    invoke-virtual {v15}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v1

    .line 2938
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 2940
    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2941
    invoke-virtual {v15}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2942
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->unbroadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;I)V

    .line 2943
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 2944
    goto/16 :goto_1aab

    .line 2931
    :pswitch_17bd
    move-object v15, v2

    invoke-direct {v0, v15, v13}, Landroid/app/IActivityManager$Stub;->onTransact$broadcastIntentWithFeature$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v0

    return v0

    .line 2927
    :pswitch_17c3
    move-object v15, v2

    invoke-direct {v0, v15, v13}, Landroid/app/IActivityManager$Stub;->onTransact$broadcastIntent$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result v0

    return v0

    .line 2918
    :pswitch_17c9
    move-object v15, v2

    invoke-virtual {v15}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    move-result-object v1

    .line 2919
    invoke-virtual {v15}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2920
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->getRegisteredIntentFilters(Landroid/content/IIntentReceiver;)Ljava/util/List;

    move-result-object v0

    .line 2921
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 2922
    invoke-virtual {v13, v0, v14}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 2923
    goto/16 :goto_1aab

    .line 2909
    :pswitch_17e1
    move-object v15, v2

    invoke-virtual {v15}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    move-result-object v1

    .line 2910
    invoke-virtual {v15}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2911
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->unregisterReceiver(Landroid/content/IIntentReceiver;)V

    .line 2912
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 2913
    goto/16 :goto_1aab

    .line 2883
    :pswitch_17f5
    move-object v15, v2

    invoke-virtual {v15}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v1

    .line 2885
    invoke-virtual {v15}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2887
    invoke-virtual {v15}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 2889
    invoke-virtual {v15}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 2891
    invoke-virtual {v15}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    move-result-object v5

    .line 2893
    sget-object v6, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v6}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/IntentFilter;

    .line 2895
    invoke-virtual {v15}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 2897
    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 2899
    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 2900
    invoke-virtual {v15}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2901
    invoke-virtual/range {v0 .. v9}, Landroid/app/IActivityManager$Stub;->registerReceiverWithFeature(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/IIntentReceiver;Landroid/content/IntentFilter;Ljava/lang/String;II)Landroid/content/Intent;

    move-result-object v0

    .line 2902
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 2903
    invoke-virtual {v13, v0, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2904
    goto/16 :goto_1aab

    .line 2861
    :pswitch_1835
    move-object v15, v2

    invoke-virtual {v15}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v1

    .line 2863
    invoke-virtual {v15}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2865
    invoke-virtual {v15}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    move-result-object v3

    .line 2867
    sget-object v0, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/content/IntentFilter;

    .line 2869
    invoke-virtual {v15}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 2871
    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 2873
    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 2874
    invoke-virtual {v15}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2875
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/app/IActivityManager$Stub;->registerReceiver(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/IIntentReceiver;Landroid/content/IntentFilter;Ljava/lang/String;II)Landroid/content/Intent;

    move-result-object v0

    .line 2876
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 2877
    invoke-virtual {v13, v0, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2878
    goto/16 :goto_1aab

    .line 2845
    :pswitch_1870
    move-object v15, v2

    invoke-virtual {v15}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 2847
    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2849
    sget-object v3, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    .line 2851
    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 2852
    invoke-virtual {v15}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2853
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/IActivityManager$Stub;->finishActivity(Landroid/os/IBinder;ILandroid/content/Intent;I)Z

    move-result v0

    .line 2854
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 2855
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2856
    goto/16 :goto_1aab

    .line 2838
    :pswitch_1894
    invoke-virtual {v0}, Landroid/app/IActivityManager$Stub;->unhandledBack()V

    .line 2839
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 2840
    goto/16 :goto_1aab

    .line 2809
    :pswitch_189c
    move-object v15, v2

    invoke-virtual {v15}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v1

    .line 2811
    invoke-virtual {v15}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2813
    invoke-virtual {v15}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 2815
    sget-object v4, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Intent;

    .line 2817
    invoke-virtual {v15}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 2819
    invoke-virtual {v15}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 2821
    invoke-virtual {v15}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 2823
    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 2825
    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 2827
    sget-object v10, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v10}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/ProfilerInfo;

    .line 2829
    sget-object v11, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v11}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/Bundle;

    .line 2830
    invoke-virtual {v15}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2831
    invoke-virtual/range {v0 .. v11}, Landroid/app/IActivityManager$Stub;->startActivityWithFeature(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;)I

    move-result v0

    .line 2832
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 2833
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2834
    goto/16 :goto_1aab

    .line 2781
    :pswitch_18e8
    move-object v15, v2

    invoke-virtual {v15}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v1

    .line 2783
    invoke-virtual {v15}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2785
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/content/Intent;

    .line 2787
    invoke-virtual {v15}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 2789
    invoke-virtual {v15}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 2791
    invoke-virtual {v15}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 2793
    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 2795
    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 2797
    sget-object v0, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/app/ProfilerInfo;

    .line 2799
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/os/Bundle;

    .line 2800
    invoke-virtual {v15}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2801
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v10}, Landroid/app/IActivityManager$Stub;->startActivity(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;)I

    move-result v0

    .line 2802
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 2803
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2804
    goto/16 :goto_1aab

    .line 2770
    :pswitch_1935
    move-object v15, v2

    invoke-virtual {v15}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 2772
    sget-object v2, Landroid/app/ApplicationErrorReport$ParcelableCrashInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ApplicationErrorReport$ParcelableCrashInfo;

    .line 2773
    invoke-virtual {v15}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2774
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->handleApplicationCrash(Landroid/os/IBinder;Landroid/app/ApplicationErrorReport$ParcelableCrashInfo;)V

    .line 2775
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 2776
    goto/16 :goto_1aab

    .line 2762
    :pswitch_194d
    invoke-virtual {v0}, Landroid/app/IActivityManager$Stub;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    .line 2763
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 2764
    invoke-virtual {v13, v0, v14}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 2765
    goto/16 :goto_1aab

    .line 2754
    :pswitch_1959
    move-object v15, v2

    invoke-virtual {v15}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IProcessObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IProcessObserver;

    move-result-object v1

    .line 2755
    invoke-virtual {v15}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2756
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->unregisterProcessObserver(Landroid/app/IProcessObserver;)V

    .line 2757
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 2758
    goto/16 :goto_1aab

    .line 2745
    :pswitch_196d
    move-object v15, v2

    invoke-virtual {v15}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IProcessObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IProcessObserver;

    move-result-object v1

    .line 2746
    invoke-virtual {v15}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2747
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->registerProcessObserver(Landroid/app/IProcessObserver;)V

    .line 2748
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 2749
    goto/16 :goto_1aab

    .line 2731
    :pswitch_1981
    move-object v15, v2

    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2733
    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2735
    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2737
    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 2738
    invoke-virtual {v15}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2739
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/IActivityManager$Stub;->logFgsApiStateChanged(IIII)V

    .line 2740
    goto/16 :goto_1aab

    .line 2719
    :pswitch_199a
    move-object v15, v2

    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2721
    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2723
    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2724
    invoke-virtual {v15}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2725
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->logFgsApiEnd(III)V

    .line 2726
    goto/16 :goto_1aab

    .line 2707
    :pswitch_19af
    move-object v15, v2

    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2709
    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2711
    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2712
    invoke-virtual {v15}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2713
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->logFgsApiBegin(III)V

    .line 2714
    goto/16 :goto_1aab

    .line 2693
    :pswitch_19c4
    move-object v15, v2

    invoke-virtual {v15}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2695
    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2697
    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2698
    invoke-virtual {v15}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2699
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    .line 2700
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 2701
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2702
    goto/16 :goto_1aab

    .line 2681
    :pswitch_19e0
    move-object v15, v2

    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2683
    invoke-virtual {v15}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2684
    invoke-virtual {v15}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2685
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->getUidProcessState(ILjava/lang/String;)I

    move-result v0

    .line 2686
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 2687
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2688
    goto/16 :goto_1aab

    .line 2669
    :pswitch_19f8
    move-object v15, v2

    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2671
    invoke-virtual {v15}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2672
    invoke-virtual {v15}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2673
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityManager$Stub;->isUidActive(ILjava/lang/String;)Z

    move-result v0

    .line 2674
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 2675
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2676
    goto/16 :goto_1aab

    .line 2656
    :pswitch_1a10
    move-object v15, v2

    invoke-virtual {v15}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 2658
    invoke-virtual {v15}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2660
    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2661
    invoke-virtual {v15}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2662
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->removeUidFromObserver(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 2663
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 2664
    goto/16 :goto_1aab

    .line 2643
    :pswitch_1a28
    move-object v15, v2

    invoke-virtual {v15}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 2645
    invoke-virtual {v15}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2647
    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2648
    invoke-virtual {v15}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2649
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IActivityManager$Stub;->addUidToObserver(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 2650
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 2651
    goto :goto_1aab

    .line 2625
    :pswitch_1a3f
    move-object v15, v2

    invoke-virtual {v15}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IUidObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUidObserver;

    move-result-object v1

    .line 2627
    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2629
    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2631
    invoke-virtual {v15}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 2633
    invoke-virtual {v15}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v5

    .line 2634
    invoke-virtual {v15}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2635
    invoke-virtual/range {v0 .. v5}, Landroid/app/IActivityManager$Stub;->registerUidObserverForUids(Landroid/app/IUidObserver;IILjava/lang/String;[I)Landroid/os/IBinder;

    move-result-object v0

    .line 2636
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 2637
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2638
    goto :goto_1aab

    .line 2616
    :pswitch_1a66
    move-object v15, v2

    invoke-virtual {v15}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IUidObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUidObserver;

    move-result-object v1

    .line 2617
    invoke-virtual {v15}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2618
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->unregisterUidObserver(Landroid/app/IUidObserver;)V

    .line 2619
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 2620
    goto :goto_1aab

    .line 2601
    :pswitch_1a79
    move-object v15, v2

    invoke-virtual {v15}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IUidObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUidObserver;

    move-result-object v1

    .line 2603
    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2605
    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2607
    invoke-virtual {v15}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 2608
    invoke-virtual {v15}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2609
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/IActivityManager$Stub;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V

    .line 2610
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 2611
    goto :goto_1aab

    .line 2591
    :pswitch_1a98
    move-object v15, v2

    invoke-virtual {v15}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2592
    invoke-virtual {v15}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2593
    invoke-virtual {v0, v1}, Landroid/app/IActivityManager$Stub;->openContentUri(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 2594
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 2595
    invoke-virtual {v13, v0, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2596
    nop

    .line 5866
    :goto_1aab
    return v14

    :pswitch_data_1aac
    .packed-switch 0x1
        :pswitch_1a98
        :pswitch_1a79
        :pswitch_1a66
        :pswitch_1a3f
        :pswitch_1a28
        :pswitch_1a10
        :pswitch_19f8
        :pswitch_19e0
        :pswitch_19c4
        :pswitch_19af
        :pswitch_199a
        :pswitch_1981
        :pswitch_196d
        :pswitch_1959
        :pswitch_194d
        :pswitch_1935
        :pswitch_18e8
        :pswitch_189c
        :pswitch_1894
        :pswitch_1870
        :pswitch_1835
        :pswitch_17f5
        :pswitch_17e1
        :pswitch_17c9
        :pswitch_17c3
        :pswitch_17bd
        :pswitch_179d
        :pswitch_1778
        :pswitch_1760
        :pswitch_174c
        :pswitch_1738
        :pswitch_1724
        :pswitch_16fc
        :pswitch_16e4
        :pswitch_16bc
        :pswitch_16a2
        :pswitch_1686
        :pswitch_166e
        :pswitch_1656
        :pswitch_1622
        :pswitch_15fa
        :pswitch_15bb
        :pswitch_157b
        :pswitch_155f
        :pswitch_154d
        :pswitch_1535
        :pswitch_151d
        :pswitch_1505
        :pswitch_14f1
        :pswitch_14e1
        :pswitch_14a1
        :pswitch_1485
        :pswitch_1465
        :pswitch_1459
        :pswitch_1441
        :pswitch_1429
        :pswitch_1409
        :pswitch_13f9
        :pswitch_13ed
        :pswitch_13be
        :pswitch_1393
        :pswitch_1367
        :pswitch_133c
        :pswitch_1314
        :pswitch_12fc
        :pswitch_12e4
        :pswitch_12d4
        :pswitch_12b8
        :pswitch_129f
        :pswitch_125b
        :pswitch_1217
        :pswitch_1203
        :pswitch_11eb
        :pswitch_11cb
        :pswitch_11af
        :pswitch_11a7
        :pswitch_117f
        :pswitch_116e
        :pswitch_115a
        :pswitch_1146
        :pswitch_112a
        :pswitch_10fe
        :pswitch_10e2
        :pswitch_10ca
        :pswitch_10b6
        :pswitch_10aa
        :pswitch_1086
        :pswitch_1062
        :pswitch_104e
        :pswitch_1036
        :pswitch_1022
        :pswitch_100e
        :pswitch_ff2
        :pswitch_fda
        :pswitch_fba
        :pswitch_f92
        :pswitch_f7e
        :pswitch_f76
        :pswitch_f6e
        :pswitch_f4a
        :pswitch_f32
        :pswitch_f1e
        :pswitch_ef2
        :pswitch_ee2
        :pswitch_ec2
        :pswitch_eb2
        :pswitch_e9e
        :pswitch_e8a
        :pswitch_e62
        :pswitch_e4e
        :pswitch_e42
        :pswitch_e36
        :pswitch_e2e
        :pswitch_e12
        :pswitch_e02
        :pswitch_df6
        :pswitch_dcc
        :pswitch_d9c
        :pswitch_d7f
        :pswitch_d3f
        :pswitch_d1b
        :pswitch_d03
        :pswitch_cef
        :pswitch_cdb
        :pswitch_cc7
        :pswitch_cb3
        :pswitch_c9f
        :pswitch_c8f
        :pswitch_c7b
        :pswitch_c63
        :pswitch_c4f
        :pswitch_c33
        :pswitch_c1f
        :pswitch_c07
        :pswitch_bff
        :pswitch_bdf
        :pswitch_bcb
        :pswitch_bb3
        :pswitch_b9f
        :pswitch_b8b
        :pswitch_b7f
        :pswitch_b73
        :pswitch_b5f
        :pswitch_b4f
        :pswitch_b37
        :pswitch_ae6
        :pswitch_a93
        :pswitch_a73
        :pswitch_a57
        :pswitch_a37
        :pswitch_a1b
        :pswitch_a03
        :pswitch_9ef
        :pswitch_9e3
        :pswitch_9db
        :pswitch_9cb
        :pswitch_9b3
        :pswitch_99f
        :pswitch_98b
        :pswitch_977
        :pswitch_96f
        :pswitch_95d
        :pswitch_955
        :pswitch_945
        :pswitch_939
        :pswitch_92d
        :pswitch_915
        :pswitch_901
        :pswitch_8e9
        :pswitch_8d9
        :pswitch_8c5
        :pswitch_8b9
        :pswitch_8a1
        :pswitch_891
        :pswitch_885
        :pswitch_87d
        :pswitch_875
        :pswitch_865
        :pswitch_851
        :pswitch_835
        :pswitch_819
        :pswitch_805
        :pswitch_7f9
        :pswitch_7dd
        :pswitch_7cd
        :pswitch_7b9
        :pswitch_7b1
        :pswitch_7a1
        :pswitch_78d
        :pswitch_779
        :pswitch_765
        :pswitch_751
        :pswitch_735
        :pswitch_729
        :pswitch_70d
        :pswitch_6fd
        :pswitch_6e9
        :pswitch_6c5
        :pswitch_6a1
        :pswitch_689
        :pswitch_67d
        :pswitch_665
        :pswitch_655
        :pswitch_631
        :pswitch_615
        :pswitch_601
        :pswitch_5ed
        :pswitch_5dd
        :pswitch_5d1
        :pswitch_5b9
        :pswitch_5a9
        :pswitch_58d
        :pswitch_585
        :pswitch_53d
        :pswitch_529
        :pswitch_519
        :pswitch_509
        :pswitch_4f9
        :pswitch_4e5
        :pswitch_4d5
        :pswitch_4c5
        :pswitch_4b5
        :pswitch_499
        :pswitch_485
        :pswitch_47d
        :pswitch_471
        :pswitch_465
        :pswitch_449
        :pswitch_439
        :pswitch_41d
        :pswitch_405
        :pswitch_3ed
        :pswitch_3d5
        :pswitch_3c4
        :pswitch_3a4
        :pswitch_390
        :pswitch_370
        :pswitch_360
        :pswitch_354
        :pswitch_348
        :pswitch_330
        :pswitch_328
        :pswitch_314
        :pswitch_300
        :pswitch_2ec
        :pswitch_2d8
        :pswitch_2c4
        :pswitch_2a8
        :pswitch_290
        :pswitch_288
        :pswitch_280
        :pswitch_26c
        :pswitch_258
        :pswitch_244
        :pswitch_224
        :pswitch_208
        :pswitch_1f0
        :pswitch_1e4
        :pswitch_1c8
        :pswitch_1ac
        :pswitch_198
        :pswitch_184
        :pswitch_170
        :pswitch_150
        :pswitch_13c
        :pswitch_130
        :pswitch_120
        :pswitch_107
        :pswitch_ef
        :pswitch_d7
        :pswitch_bb
        :pswitch_a3
        :pswitch_8f
        :pswitch_7f
        :pswitch_52
        :pswitch_3b
        :pswitch_27
    .end packed-switch
.end method

.method protected blacklist refreshIntentCreatorToken_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 11578
    iget-object v0, p0, Landroid/app/IActivityManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/app/IActivityManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/app/IActivityManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 11579
    return-void
.end method
