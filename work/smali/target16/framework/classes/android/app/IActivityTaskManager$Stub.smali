.class public abstract Landroid/app/IActivityTaskManager$Stub;
.super Landroid/os/Binder;
.source "IActivityTaskManager.java"

# interfaces
.implements Landroid/app/IActivityTaskManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IActivityTaskManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IActivityTaskManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist PERMISSIONS_getTaskSnapshotManager:[Ljava/lang/String;

.field static final blacklist TRANSACTION_addAppTask:I = 0x2b

.field static final blacklist TRANSACTION_alwaysShowUnsupportedCompileSdkWarning:I = 0x50

.field static final blacklist TRANSACTION_canBeUniversalResizeable:I = 0x1e

.field static final blacklist TRANSACTION_cancelTaskWindowTransition:I = 0x48

.field static final blacklist TRANSACTION_clearLaunchParamsForPackages:I = 0x5b

.field static final blacklist TRANSACTION_detachNavigationBarFromApp:I = 0x5e

.field static final blacklist TRANSACTION_finishVoiceTask:I = 0x2a

.field static final blacklist TRANSACTION_focusTopTask:I = 0x22

.field static final blacklist TRANSACTION_getActivityClientController:I = 0x12

.field static final blacklist TRANSACTION_getAllRootTaskInfos:I = 0x37

.field static final blacklist TRANSACTION_getAllRootTaskInfosOnDisplay:I = 0x39

.field static final blacklist TRANSACTION_getAppTaskThumbnailSize:I = 0x2c

.field static final blacklist TRANSACTION_getAppTasks:I = 0x26

.field static final blacklist TRANSACTION_getAssistContextExtras:I = 0x3c

.field static final blacklist TRANSACTION_getDeviceConfigurationInfo:I = 0x47

.field static final blacklist TRANSACTION_getFocusedRootTaskInfo:I = 0x20

.field static final blacklist TRANSACTION_getFrontActivityScreenCompatMode:I = 0x13

.field static final blacklist TRANSACTION_getLastResumedActivityUserId:I = 0x4b

.field static final blacklist TRANSACTION_getLockTaskModeState:I = 0x25

.field static final blacklist TRANSACTION_getPackageAskScreenCompat:I = 0x59

.field static final blacklist TRANSACTION_getPackageScreenCompatMode:I = 0x57

.field static final blacklist TRANSACTION_getRecentTasks:I = 0x1b

.field static final blacklist TRANSACTION_getRootTaskInfo:I = 0x38

.field static final blacklist TRANSACTION_getRootTaskInfoOnDisplay:I = 0x3a

.field static final blacklist TRANSACTION_getTaskBounds:I = 0x21

.field static final blacklist TRANSACTION_getTaskDescriptionIcon:I = 0x2e

.field static final blacklist TRANSACTION_getTaskSnapshot:I = 0x49

.field static final blacklist TRANSACTION_getTaskSnapshotManager:I = 0x44

.field static final blacklist TRANSACTION_getTasks:I = 0x19

.field static final blacklist TRANSACTION_getVoiceInteractorPackageName:I = 0x9

.field static final blacklist TRANSACTION_getWindowOrganizerController:I = 0x43

.field static final blacklist TRANSACTION_isActivityStartAllowedOnDisplay:I = 0xf

.field static final blacklist TRANSACTION_isAssistDataAllowed:I = 0x3f

.field static final blacklist TRANSACTION_isInLockTaskMode:I = 0x24

.field static final blacklist TRANSACTION_isTaskMoveAllowedOnDisplay:I = 0x10

.field static final blacklist TRANSACTION_isTopActivityImmersive:I = 0x1c

.field static final blacklist TRANSACTION_keyguardGoingAway:I = 0x41

.field static final blacklist TRANSACTION_moveRootTaskToDisplay:I = 0x33

.field static final blacklist TRANSACTION_moveRootTaskToDisplayOnTopOrBottom:I = 0x66

.field static final blacklist TRANSACTION_moveTaskToFront:I = 0x1a

.field static final blacklist TRANSACTION_moveTaskToRootTask:I = 0x34

.field static final blacklist TRANSACTION_onPictureInPictureUiStateChanged:I = 0x5d

.field static final blacklist TRANSACTION_onSplashScreenViewCopyFinished:I = 0x5c

.field static final blacklist TRANSACTION_preloadRecentsActivity:I = 0xe

.field static final blacklist TRANSACTION_rebuildSystemLockTaskPinnedMode:I = 0x29

.field static final blacklist TRANSACTION_registerBackgroundActivityStartCallback:I = 0x62

.field static final blacklist TRANSACTION_registerRemoteAnimationForNextActivityStart:I = 0x4e

.field static final blacklist TRANSACTION_registerRemoteAnimationsForDisplay:I = 0x4f

.field static final blacklist TRANSACTION_registerScreenCaptureObserver:I = 0x64

.field static final blacklist TRANSACTION_registerTaskStackListener:I = 0x2f

.field static final blacklist TRANSACTION_releaseSomeActivities:I = 0x2d

.field static final blacklist TRANSACTION_removeAllVisibleRecentTasks:I = 0x18

.field static final blacklist TRANSACTION_removeRootTasksInWindowingModes:I = 0x35

.field static final blacklist TRANSACTION_removeRootTasksWithActivityTypes:I = 0x36

.field static final blacklist TRANSACTION_removeTask:I = 0x17

.field static final blacklist TRANSACTION_reportAssistContextExtras:I = 0x1d

.field static final blacklist TRANSACTION_reportHandoffActivityData:I = 0x67

.field static final blacklist TRANSACTION_requestAssistContextExtras:I = 0x3d

.field static final blacklist TRANSACTION_requestAssistDataForTask:I = 0x40

.field static final blacklist TRANSACTION_requestAutofillData:I = 0x3e

.field static final blacklist TRANSACTION_requestOpenInBrowserEducation:I = 0x46

.field static final blacklist TRANSACTION_resizeTask:I = 0x32

.field static final blacklist TRANSACTION_resumeAppSwitches:I = 0x54

.field static final blacklist TRANSACTION_setActivityController:I = 0x55

.field static final blacklist TRANSACTION_setFocusedRootTask:I = 0x1f

.field static final blacklist TRANSACTION_setFocusedTask:I = 0x15

.field static final blacklist TRANSACTION_setFrontActivityScreenCompatMode:I = 0x14

.field static final blacklist TRANSACTION_setLockScreenShown:I = 0x3b

.field static final blacklist TRANSACTION_setPackageAskScreenCompat:I = 0x5a

.field static final blacklist TRANSACTION_setPackageScreenCompatMode:I = 0x58

.field static final blacklist TRANSACTION_setPersistentVrThread:I = 0x52

.field static final blacklist TRANSACTION_setRunningRemoteTransitionDelegate:I = 0x5f

.field static final blacklist TRANSACTION_setTaskIsPerceptible:I = 0x16

.field static final blacklist TRANSACTION_setTaskResizeable:I = 0x31

.field static final blacklist TRANSACTION_setVoiceKeepAwake:I = 0x56

.field static final blacklist TRANSACTION_setVrThread:I = 0x51

.field static final blacklist TRANSACTION_startActivities:I = 0x2

.field static final blacklist TRANSACTION_startActivity:I = 0x1

.field static final blacklist TRANSACTION_startActivityAndWait:I = 0x6

.field static final blacklist TRANSACTION_startActivityAsCaller:I = 0xd

.field static final blacklist TRANSACTION_startActivityAsUser:I = 0x3

.field static final blacklist TRANSACTION_startActivityFromGameSession:I = 0xb

.field static final blacklist TRANSACTION_startActivityFromRecents:I = 0xc

.field static final blacklist TRANSACTION_startActivityIntentSender:I = 0x5

.field static final blacklist TRANSACTION_startActivityWithConfig:I = 0x7

.field static final blacklist TRANSACTION_startAssistantActivity:I = 0xa

.field static final blacklist TRANSACTION_startBackNavigation:I = 0x60

.field static final blacklist TRANSACTION_startNextMatchingActivity:I = 0x4

.field static final blacklist TRANSACTION_startPredictiveBackAnimation:I = 0x61

.field static final blacklist TRANSACTION_startSystemLockTaskMode:I = 0x27

.field static final blacklist TRANSACTION_startVoiceActivity:I = 0x8

.field static final blacklist TRANSACTION_stopAppSwitches:I = 0x53

.field static final blacklist TRANSACTION_stopSystemLockTaskMode:I = 0x28

.field static final blacklist TRANSACTION_supportsLocalVoiceInteraction:I = 0x45

.field static final blacklist TRANSACTION_suppressResizeConfigChanges:I = 0x42

.field static final blacklist TRANSACTION_takeTaskSnapshot:I = 0x4a

.field static final blacklist TRANSACTION_unhandledBack:I = 0x11

.field static final blacklist TRANSACTION_unregisterBackgroundActivityStartCallback:I = 0x63

.field static final blacklist TRANSACTION_unregisterScreenCaptureObserver:I = 0x65

.field static final blacklist TRANSACTION_unregisterTaskStackListener:I = 0x30

.field static final blacklist TRANSACTION_updateConfiguration:I = 0x4c

.field static final blacklist TRANSACTION_updateLockTaskFeatures:I = 0x4d

.field static final blacklist TRANSACTION_updateLockTaskPackages:I = 0x23


# instance fields
.field private final blacklist mEnforcer:Landroid/os/PermissionEnforcer;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 4336
    const-string v0, "android.permission.MANAGE_ACTIVITY_TASKS"

    const-string v1, "android.permission.READ_FRAME_BUFFER"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/app/IActivityTaskManager$Stub;->PERMISSIONS_getTaskSnapshotManager:[Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 558
    nop

    .line 559
    invoke-static {}, Landroid/app/ActivityThread;->currentSystemContext()Landroid/content/Context;

    move-result-object v0

    .line 558
    invoke-static {v0}, Landroid/os/PermissionEnforcer;->fromContext(Landroid/content/Context;)Landroid/os/PermissionEnforcer;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/IActivityTaskManager$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    .line 560
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/PermissionEnforcer;)V
    .registers 3

    .line 548
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 549
    const-string v0, "android.app.IActivityTaskManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/IActivityTaskManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 550
    if-eqz p1, :cond_d

    .line 553
    iput-object p1, p0, Landroid/app/IActivityTaskManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    .line 554
    return-void

    .line 551
    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "enforcer cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/app/IActivityTaskManager;
    .registers 3

    .line 567
    if-nez p0, :cond_4

    .line 568
    const/4 p0, 0x0

    return-object p0

    .line 570
    :cond_4
    const-string v0, "android.app.IActivityTaskManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 571
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/app/IActivityTaskManager;

    if-eqz v1, :cond_13

    .line 572
    check-cast v0, Landroid/app/IActivityTaskManager;

    return-object v0

    .line 574
    :cond_13
    new-instance v0, Landroid/app/IActivityTaskManager$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/app/IActivityTaskManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 583
    packed-switch p0, :pswitch_data_180

    .line 999
    const/4 p0, 0x0

    return-object p0

    .line 995
    :pswitch_5
    const-string/jumbo p0, "reportHandoffActivityData"

    return-object p0

    .line 991
    :pswitch_9
    const-string/jumbo p0, "moveRootTaskToDisplayOnTopOrBottom"

    return-object p0

    .line 987
    :pswitch_d
    const-string/jumbo p0, "unregisterScreenCaptureObserver"

    return-object p0

    .line 983
    :pswitch_11
    const-string/jumbo p0, "registerScreenCaptureObserver"

    return-object p0

    .line 979
    :pswitch_15
    const-string/jumbo p0, "unregisterBackgroundActivityStartCallback"

    return-object p0

    .line 975
    :pswitch_19
    const-string/jumbo p0, "registerBackgroundActivityStartCallback"

    return-object p0

    .line 971
    :pswitch_1d
    const-string/jumbo p0, "startPredictiveBackAnimation"

    return-object p0

    .line 967
    :pswitch_21
    const-string/jumbo p0, "startBackNavigation"

    return-object p0

    .line 963
    :pswitch_25
    const-string/jumbo p0, "setRunningRemoteTransitionDelegate"

    return-object p0

    .line 959
    :pswitch_29
    const-string p0, "detachNavigationBarFromApp"

    return-object p0

    .line 955
    :pswitch_2c
    const-string/jumbo p0, "onPictureInPictureUiStateChanged"

    return-object p0

    .line 951
    :pswitch_30
    const-string/jumbo p0, "onSplashScreenViewCopyFinished"

    return-object p0

    .line 947
    :pswitch_34
    const-string p0, "clearLaunchParamsForPackages"

    return-object p0

    .line 943
    :pswitch_37
    const-string/jumbo p0, "setPackageAskScreenCompat"

    return-object p0

    .line 939
    :pswitch_3b
    const-string p0, "getPackageAskScreenCompat"

    return-object p0

    .line 935
    :pswitch_3e
    const-string/jumbo p0, "setPackageScreenCompatMode"

    return-object p0

    .line 931
    :pswitch_42
    const-string p0, "getPackageScreenCompatMode"

    return-object p0

    .line 927
    :pswitch_45
    const-string/jumbo p0, "setVoiceKeepAwake"

    return-object p0

    .line 923
    :pswitch_49
    const-string/jumbo p0, "setActivityController"

    return-object p0

    .line 919
    :pswitch_4d
    const-string/jumbo p0, "resumeAppSwitches"

    return-object p0

    .line 915
    :pswitch_51
    const-string/jumbo p0, "stopAppSwitches"

    return-object p0

    .line 911
    :pswitch_55
    const-string/jumbo p0, "setPersistentVrThread"

    return-object p0

    .line 907
    :pswitch_59
    const-string/jumbo p0, "setVrThread"

    return-object p0

    .line 903
    :pswitch_5d
    const-string p0, "alwaysShowUnsupportedCompileSdkWarning"

    return-object p0

    .line 899
    :pswitch_60
    const-string/jumbo p0, "registerRemoteAnimationsForDisplay"

    return-object p0

    .line 895
    :pswitch_64
    const-string/jumbo p0, "registerRemoteAnimationForNextActivityStart"

    return-object p0

    .line 891
    :pswitch_68
    const-string/jumbo p0, "updateLockTaskFeatures"

    return-object p0

    .line 887
    :pswitch_6c
    const-string/jumbo p0, "updateConfiguration"

    return-object p0

    .line 883
    :pswitch_70
    const-string p0, "getLastResumedActivityUserId"

    return-object p0

    .line 879
    :pswitch_73
    const-string/jumbo p0, "takeTaskSnapshot"

    return-object p0

    .line 875
    :pswitch_77
    const-string p0, "getTaskSnapshot"

    return-object p0

    .line 871
    :pswitch_7a
    const-string p0, "cancelTaskWindowTransition"

    return-object p0

    .line 867
    :pswitch_7d
    const-string p0, "getDeviceConfigurationInfo"

    return-object p0

    .line 863
    :pswitch_80
    const-string/jumbo p0, "requestOpenInBrowserEducation"

    return-object p0

    .line 859
    :pswitch_84
    const-string/jumbo p0, "supportsLocalVoiceInteraction"

    return-object p0

    .line 855
    :pswitch_88
    const-string p0, "getTaskSnapshotManager"

    return-object p0

    .line 851
    :pswitch_8b
    const-string p0, "getWindowOrganizerController"

    return-object p0

    .line 847
    :pswitch_8e
    const-string/jumbo p0, "suppressResizeConfigChanges"

    return-object p0

    .line 843
    :pswitch_92
    const-string/jumbo p0, "keyguardGoingAway"

    return-object p0

    .line 839
    :pswitch_96
    const-string/jumbo p0, "requestAssistDataForTask"

    return-object p0

    .line 835
    :pswitch_9a
    const-string p0, "isAssistDataAllowed"

    return-object p0

    .line 831
    :pswitch_9d
    const-string/jumbo p0, "requestAutofillData"

    return-object p0

    .line 827
    :pswitch_a1
    const-string/jumbo p0, "requestAssistContextExtras"

    return-object p0

    .line 823
    :pswitch_a5
    const-string p0, "getAssistContextExtras"

    return-object p0

    .line 819
    :pswitch_a8
    const-string/jumbo p0, "setLockScreenShown"

    return-object p0

    .line 815
    :pswitch_ac
    const-string p0, "getRootTaskInfoOnDisplay"

    return-object p0

    .line 811
    :pswitch_af
    const-string p0, "getAllRootTaskInfosOnDisplay"

    return-object p0

    .line 807
    :pswitch_b2
    const-string p0, "getRootTaskInfo"

    return-object p0

    .line 803
    :pswitch_b5
    const-string p0, "getAllRootTaskInfos"

    return-object p0

    .line 799
    :pswitch_b8
    const-string/jumbo p0, "removeRootTasksWithActivityTypes"

    return-object p0

    .line 795
    :pswitch_bc
    const-string/jumbo p0, "removeRootTasksInWindowingModes"

    return-object p0

    .line 791
    :pswitch_c0
    const-string/jumbo p0, "moveTaskToRootTask"

    return-object p0

    .line 787
    :pswitch_c4
    const-string/jumbo p0, "moveRootTaskToDisplay"

    return-object p0

    .line 783
    :pswitch_c8
    const-string/jumbo p0, "resizeTask"

    return-object p0

    .line 779
    :pswitch_cc
    const-string/jumbo p0, "setTaskResizeable"

    return-object p0

    .line 775
    :pswitch_d0
    const-string/jumbo p0, "unregisterTaskStackListener"

    return-object p0

    .line 771
    :pswitch_d4
    const-string/jumbo p0, "registerTaskStackListener"

    return-object p0

    .line 767
    :pswitch_d8
    const-string p0, "getTaskDescriptionIcon"

    return-object p0

    .line 763
    :pswitch_db
    const-string/jumbo p0, "releaseSomeActivities"

    return-object p0

    .line 759
    :pswitch_df
    const-string p0, "getAppTaskThumbnailSize"

    return-object p0

    .line 755
    :pswitch_e2
    const-string p0, "addAppTask"

    return-object p0

    .line 751
    :pswitch_e5
    const-string p0, "finishVoiceTask"

    return-object p0

    .line 747
    :pswitch_e8
    const-string/jumbo p0, "rebuildSystemLockTaskPinnedMode"

    return-object p0

    .line 743
    :pswitch_ec
    const-string/jumbo p0, "stopSystemLockTaskMode"

    return-object p0

    .line 739
    :pswitch_f0
    const-string/jumbo p0, "startSystemLockTaskMode"

    return-object p0

    .line 735
    :pswitch_f4
    const-string p0, "getAppTasks"

    return-object p0

    .line 731
    :pswitch_f7
    const-string p0, "getLockTaskModeState"

    return-object p0

    .line 727
    :pswitch_fa
    const-string p0, "isInLockTaskMode"

    return-object p0

    .line 723
    :pswitch_fd
    const-string/jumbo p0, "updateLockTaskPackages"

    return-object p0

    .line 719
    :pswitch_101
    const-string p0, "focusTopTask"

    return-object p0

    .line 715
    :pswitch_104
    const-string p0, "getTaskBounds"

    return-object p0

    .line 711
    :pswitch_107
    const-string p0, "getFocusedRootTaskInfo"

    return-object p0

    .line 707
    :pswitch_10a
    const-string/jumbo p0, "setFocusedRootTask"

    return-object p0

    .line 703
    :pswitch_10e
    const-string p0, "canBeUniversalResizeable"

    return-object p0

    .line 699
    :pswitch_111
    const-string/jumbo p0, "reportAssistContextExtras"

    return-object p0

    .line 695
    :pswitch_115
    const-string/jumbo p0, "isTopActivityImmersive"

    return-object p0

    .line 691
    :pswitch_119
    const-string p0, "getRecentTasks"

    return-object p0

    .line 687
    :pswitch_11c
    const-string/jumbo p0, "moveTaskToFront"

    return-object p0

    .line 683
    :pswitch_120
    const-string p0, "getTasks"

    return-object p0

    .line 679
    :pswitch_123
    const-string/jumbo p0, "removeAllVisibleRecentTasks"

    return-object p0

    .line 675
    :pswitch_127
    const-string/jumbo p0, "removeTask"

    return-object p0

    .line 671
    :pswitch_12b
    const-string/jumbo p0, "setTaskIsPerceptible"

    return-object p0

    .line 667
    :pswitch_12f
    const-string/jumbo p0, "setFocusedTask"

    return-object p0

    .line 663
    :pswitch_133
    const-string/jumbo p0, "setFrontActivityScreenCompatMode"

    return-object p0

    .line 659
    :pswitch_137
    const-string p0, "getFrontActivityScreenCompatMode"

    return-object p0

    .line 655
    :pswitch_13a
    const-string p0, "getActivityClientController"

    return-object p0

    .line 651
    :pswitch_13d
    const-string/jumbo p0, "unhandledBack"

    return-object p0

    .line 647
    :pswitch_141
    const-string/jumbo p0, "isTaskMoveAllowedOnDisplay"

    return-object p0

    .line 643
    :pswitch_145
    const-string p0, "isActivityStartAllowedOnDisplay"

    return-object p0

    .line 639
    :pswitch_148
    const-string/jumbo p0, "preloadRecentsActivity"

    return-object p0

    .line 635
    :pswitch_14c
    const-string/jumbo p0, "startActivityAsCaller"

    return-object p0

    .line 631
    :pswitch_150
    const-string/jumbo p0, "startActivityFromRecents"

    return-object p0

    .line 627
    :pswitch_154
    const-string/jumbo p0, "startActivityFromGameSession"

    return-object p0

    .line 623
    :pswitch_158
    const-string/jumbo p0, "startAssistantActivity"

    return-object p0

    .line 619
    :pswitch_15c
    const-string p0, "getVoiceInteractorPackageName"

    return-object p0

    .line 615
    :pswitch_15f
    const-string/jumbo p0, "startVoiceActivity"

    return-object p0

    .line 611
    :pswitch_163
    const-string/jumbo p0, "startActivityWithConfig"

    return-object p0

    .line 607
    :pswitch_167
    const-string/jumbo p0, "startActivityAndWait"

    return-object p0

    .line 603
    :pswitch_16b
    const-string/jumbo p0, "startActivityIntentSender"

    return-object p0

    .line 599
    :pswitch_16f
    const-string/jumbo p0, "startNextMatchingActivity"

    return-object p0

    .line 595
    :pswitch_173
    const-string/jumbo p0, "startActivityAsUser"

    return-object p0

    .line 591
    :pswitch_177
    const-string/jumbo p0, "startActivities"

    return-object p0

    .line 587
    :pswitch_17b
    const-string/jumbo p0, "startActivity"

    return-object p0

    nop

    :pswitch_data_180
    .packed-switch 0x1
        :pswitch_17b
        :pswitch_177
        :pswitch_173
        :pswitch_16f
        :pswitch_16b
        :pswitch_167
        :pswitch_163
        :pswitch_15f
        :pswitch_15c
        :pswitch_158
        :pswitch_154
        :pswitch_150
        :pswitch_14c
        :pswitch_148
        :pswitch_145
        :pswitch_141
        :pswitch_13d
        :pswitch_13a
        :pswitch_137
        :pswitch_133
        :pswitch_12f
        :pswitch_12b
        :pswitch_127
        :pswitch_123
        :pswitch_120
        :pswitch_11c
        :pswitch_119
        :pswitch_115
        :pswitch_111
        :pswitch_10e
        :pswitch_10a
        :pswitch_107
        :pswitch_104
        :pswitch_101
        :pswitch_fd
        :pswitch_fa
        :pswitch_f7
        :pswitch_f4
        :pswitch_f0
        :pswitch_ec
        :pswitch_e8
        :pswitch_e5
        :pswitch_e2
        :pswitch_df
        :pswitch_db
        :pswitch_d8
        :pswitch_d4
        :pswitch_d0
        :pswitch_cc
        :pswitch_c8
        :pswitch_c4
        :pswitch_c0
        :pswitch_bc
        :pswitch_b8
        :pswitch_b5
        :pswitch_b2
        :pswitch_af
        :pswitch_ac
        :pswitch_a8
        :pswitch_a5
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
        :pswitch_70
        :pswitch_6c
        :pswitch_68
        :pswitch_64
        :pswitch_60
        :pswitch_5d
        :pswitch_59
        :pswitch_55
        :pswitch_51
        :pswitch_4d
        :pswitch_49
        :pswitch_45
        :pswitch_42
        :pswitch_3e
        :pswitch_3b
        :pswitch_37
        :pswitch_34
        :pswitch_30
        :pswitch_2c
        :pswitch_29
        :pswitch_25
        :pswitch_21
        :pswitch_1d
        :pswitch_19
        :pswitch_15
        :pswitch_11
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 578
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 4379
    const/16 v0, 0x66

    return v0
.end method

.method protected blacklist getTaskSnapshotManager_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 4339
    iget-object v0, p0, Landroid/app/IActivityTaskManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    sget-object v1, Landroid/app/IActivityTaskManager$Stub;->PERMISSIONS_getTaskSnapshotManager:[Ljava/lang/String;

    invoke-static {}, Landroid/app/IActivityTaskManager$Stub;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/app/IActivityTaskManager$Stub;->getCallingUid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PermissionEnforcer;->enforcePermissionAllOf([Ljava/lang/String;II)V

    .line 4340
    return-void
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 1006
    invoke-static {p1}, Landroid/app/IActivityTaskManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1010
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v13, p3

    .line 1011
    const-string v3, "android.app.IActivityTaskManager"

    const/4 v14, 0x1

    if-lt v1, v14, :cond_15

    const v4, 0xffffff

    if-gt v1, v4, :cond_15

    .line 1012
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1014
    :cond_15
    const v4, 0x5f4e5446

    if-ne v1, v4, :cond_1e

    .line 1015
    invoke-virtual {v13, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1016
    return v14

    .line 1018
    :cond_1e
    packed-switch v1, :pswitch_data_a6a

    .line 2258
    move-object v15, v2

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 2248
    :pswitch_27
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 2250
    sget-object v3, Landroid/app/HandoffActivityData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3

    .line 2251
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2252
    invoke-virtual {v0, v1, v3}, Landroid/app/IActivityTaskManager$Stub;->reportHandoffActivityData(Landroid/os/IBinder;Ljava/util/List;)V

    .line 2253
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 2254
    goto/16 :goto_a68

    .line 2235
    :pswitch_3c
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2237
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2239
    invoke-virtual {v2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 2240
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2241
    invoke-virtual {v0, v1, v3, v4}, Landroid/app/IActivityTaskManager$Stub;->moveRootTaskToDisplayOnTopOrBottom(IIZ)V

    .line 2242
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 2243
    goto/16 :goto_a68

    .line 2224
    :pswitch_53
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 2226
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/IScreenCaptureObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IScreenCaptureObserver;

    move-result-object v3

    .line 2227
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2228
    invoke-virtual {v0, v1, v3}, Landroid/app/IActivityTaskManager$Stub;->unregisterScreenCaptureObserver(Landroid/os/IBinder;Landroid/app/IScreenCaptureObserver;)V

    .line 2229
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 2230
    goto/16 :goto_a68

    .line 2213
    :pswitch_6a
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 2215
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/IScreenCaptureObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IScreenCaptureObserver;

    move-result-object v3

    .line 2216
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2217
    invoke-virtual {v0, v1, v3}, Landroid/app/IActivityTaskManager$Stub;->registerScreenCaptureObserver(Landroid/os/IBinder;Landroid/app/IScreenCaptureObserver;)V

    .line 2218
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 2219
    goto/16 :goto_a68

    .line 2204
    :pswitch_81
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 2205
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2206
    invoke-virtual {v0, v1}, Landroid/app/IActivityTaskManager$Stub;->unregisterBackgroundActivityStartCallback(Landroid/os/IBinder;)V

    .line 2207
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 2208
    goto/16 :goto_a68

    .line 2194
    :pswitch_90
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 2195
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2196
    invoke-virtual {v0, v1}, Landroid/app/IActivityTaskManager$Stub;->registerBackgroundActivityStartCallback(Landroid/os/IBinder;)Z

    move-result v0

    .line 2197
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 2198
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2199
    goto/16 :goto_a68

    .line 2186
    :pswitch_a3
    invoke-virtual {v0}, Landroid/app/IActivityTaskManager$Stub;->startPredictiveBackAnimation()Z

    move-result v0

    .line 2187
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 2188
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2189
    goto/16 :goto_a68

    .line 2175
    :pswitch_af
    sget-object v1, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/RemoteCallback;

    .line 2177
    sget-object v3, Landroid/window/BackAnimationAdapter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/window/BackAnimationAdapter;

    .line 2178
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2179
    invoke-virtual {v0, v1, v3}, Landroid/app/IActivityTaskManager$Stub;->startBackNavigation(Landroid/os/RemoteCallback;Landroid/window/BackAnimationAdapter;)Landroid/window/BackNavigationInfo;

    move-result-object v0

    .line 2180
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 2181
    invoke-virtual {v13, v0, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2182
    goto/16 :goto_a68

    .line 2166
    :pswitch_ce
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 2167
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2168
    invoke-virtual {v0, v1}, Landroid/app/IActivityTaskManager$Stub;->setRunningRemoteTransitionDelegate(Landroid/os/IBinder;)V

    .line 2169
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 2170
    goto/16 :goto_a68

    .line 2157
    :pswitch_dd
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 2158
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2159
    invoke-virtual {v0, v1}, Landroid/app/IActivityTaskManager$Stub;->detachNavigationBarFromApp(Landroid/os/IBinder;)V

    .line 2160
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 2161
    goto/16 :goto_a68

    .line 2148
    :pswitch_ec
    sget-object v1, Landroid/app/PictureInPictureUiState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PictureInPictureUiState;

    .line 2149
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2150
    invoke-virtual {v0, v1}, Landroid/app/IActivityTaskManager$Stub;->onPictureInPictureUiStateChanged(Landroid/app/PictureInPictureUiState;)V

    .line 2151
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 2152
    goto/16 :goto_a68

    .line 2137
    :pswitch_ff
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2139
    sget-object v3, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/window/SplashScreenView$SplashScreenViewParcelable;

    .line 2140
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2141
    invoke-virtual {v0, v1, v3}, Landroid/app/IActivityTaskManager$Stub;->onSplashScreenViewCopyFinished(ILandroid/window/SplashScreenView$SplashScreenViewParcelable;)V

    .line 2142
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 2143
    goto/16 :goto_a68

    .line 2128
    :pswitch_116
    invoke-virtual {v2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 2129
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2130
    invoke-virtual {v0, v1}, Landroid/app/IActivityTaskManager$Stub;->clearLaunchParamsForPackages(Ljava/util/List;)V

    .line 2131
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 2132
    goto/16 :goto_a68

    .line 2117
    :pswitch_125
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2119
    invoke-virtual {v2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 2120
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2121
    invoke-virtual {v0, v1, v3}, Landroid/app/IActivityTaskManager$Stub;->setPackageAskScreenCompat(Ljava/lang/String;Z)V

    .line 2122
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 2123
    goto/16 :goto_a68

    .line 2107
    :pswitch_138
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2108
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2109
    invoke-virtual {v0, v1}, Landroid/app/IActivityTaskManager$Stub;->getPackageAskScreenCompat(Ljava/lang/String;)Z

    move-result v0

    .line 2110
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 2111
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2112
    goto/16 :goto_a68

    .line 2096
    :pswitch_14b
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2098
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2099
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2100
    invoke-virtual {v0, v1, v3}, Landroid/app/IActivityTaskManager$Stub;->setPackageScreenCompatMode(Ljava/lang/String;I)V

    .line 2101
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 2102
    goto/16 :goto_a68

    .line 2086
    :pswitch_15e
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2087
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2088
    invoke-virtual {v0, v1}, Landroid/app/IActivityTaskManager$Stub;->getPackageScreenCompatMode(Ljava/lang/String;)I

    move-result v0

    .line 2089
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 2090
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2091
    goto/16 :goto_a68

    .line 2075
    :pswitch_171
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/voice/IVoiceInteractionSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/voice/IVoiceInteractionSession;

    move-result-object v1

    .line 2077
    invoke-virtual {v2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 2078
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2079
    invoke-virtual {v0, v1, v3}, Landroid/app/IActivityTaskManager$Stub;->setVoiceKeepAwake(Landroid/service/voice/IVoiceInteractionSession;Z)V

    .line 2080
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 2081
    goto/16 :goto_a68

    .line 2064
    :pswitch_188
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IActivityController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityController;

    move-result-object v1

    .line 2066
    invoke-virtual {v2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 2067
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2068
    invoke-virtual {v0, v1, v3}, Landroid/app/IActivityTaskManager$Stub;->setActivityController(Landroid/app/IActivityController;Z)V

    .line 2069
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 2070
    goto/16 :goto_a68

    .line 2057
    :pswitch_19f
    invoke-virtual {v0}, Landroid/app/IActivityTaskManager$Stub;->resumeAppSwitches()V

    .line 2058
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 2059
    goto/16 :goto_a68

    .line 2051
    :pswitch_1a7
    invoke-virtual {v0}, Landroid/app/IActivityTaskManager$Stub;->stopAppSwitches()V

    .line 2052
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 2053
    goto/16 :goto_a68

    .line 2043
    :pswitch_1af
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2044
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2045
    invoke-virtual {v0, v1}, Landroid/app/IActivityTaskManager$Stub;->setPersistentVrThread(I)V

    .line 2046
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 2047
    goto/16 :goto_a68

    .line 2034
    :pswitch_1be
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2035
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2036
    invoke-virtual {v0, v1}, Landroid/app/IActivityTaskManager$Stub;->setVrThread(I)V

    .line 2037
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 2038
    goto/16 :goto_a68

    .line 2025
    :pswitch_1cd
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 2026
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2027
    invoke-virtual {v0, v1}, Landroid/app/IActivityTaskManager$Stub;->alwaysShowUnsupportedCompileSdkWarning(Landroid/content/ComponentName;)V

    .line 2028
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 2029
    goto/16 :goto_a68

    .line 2014
    :pswitch_1e0
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2016
    sget-object v3, Landroid/view/RemoteAnimationDefinition;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/RemoteAnimationDefinition;

    .line 2017
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2018
    invoke-virtual {v0, v1, v3}, Landroid/app/IActivityTaskManager$Stub;->registerRemoteAnimationsForDisplay(ILandroid/view/RemoteAnimationDefinition;)V

    .line 2019
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 2020
    goto/16 :goto_a68

    .line 2001
    :pswitch_1f7
    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2003
    sget-object v3, Landroid/view/RemoteAnimationAdapter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/RemoteAnimationAdapter;

    .line 2005
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 2006
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2007
    invoke-virtual {v0, v1, v3, v4}, Landroid/app/IActivityTaskManager$Stub;->registerRemoteAnimationForNextActivityStart(Ljava/lang/String;Landroid/view/RemoteAnimationAdapter;Landroid/os/IBinder;)V

    .line 2008
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 2009
    goto/16 :goto_a68

    .line 1990
    :pswitch_212
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1992
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1993
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1994
    invoke-virtual {v0, v1, v3}, Landroid/app/IActivityTaskManager$Stub;->updateLockTaskFeatures(II)V

    .line 1995
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 1996
    goto/16 :goto_a68

    .line 1980
    :pswitch_225
    sget-object v1, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/Configuration;

    .line 1981
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1982
    invoke-virtual {v0, v1}, Landroid/app/IActivityTaskManager$Stub;->updateConfiguration(Landroid/content/res/Configuration;)Z

    move-result v0

    .line 1983
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 1984
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1985
    goto/16 :goto_a68

    .line 1972
    :pswitch_23c
    invoke-virtual {v0}, Landroid/app/IActivityTaskManager$Stub;->getLastResumedActivityUserId()I

    move-result v0

    .line 1973
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 1974
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1975
    goto/16 :goto_a68

    .line 1961
    :pswitch_248
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1963
    invoke-virtual {v2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 1964
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1965
    invoke-virtual {v0, v1, v3}, Landroid/app/IActivityTaskManager$Stub;->takeTaskSnapshot(IZ)Landroid/window/TaskSnapshot;

    move-result-object v0

    .line 1966
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 1967
    invoke-virtual {v13, v0, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1968
    goto/16 :goto_a68

    .line 1949
    :pswitch_25f
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1951
    invoke-virtual {v2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 1952
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1953
    invoke-virtual {v0, v1, v3}, Landroid/app/IActivityTaskManager$Stub;->getTaskSnapshot(IZ)Landroid/window/TaskSnapshot;

    move-result-object v0

    .line 1954
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 1955
    invoke-virtual {v13, v0, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1956
    goto/16 :goto_a68

    .line 1940
    :pswitch_276
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1941
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1942
    invoke-virtual {v0, v1}, Landroid/app/IActivityTaskManager$Stub;->cancelTaskWindowTransition(I)V

    .line 1943
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 1944
    goto/16 :goto_a68

    .line 1932
    :pswitch_285
    invoke-virtual {v0}, Landroid/app/IActivityTaskManager$Stub;->getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;

    move-result-object v0

    .line 1933
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 1934
    invoke-virtual {v13, v0, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1935
    goto/16 :goto_a68

    .line 1924
    :pswitch_291
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1925
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1926
    invoke-virtual {v0, v1}, Landroid/app/IActivityTaskManager$Stub;->requestOpenInBrowserEducation(Landroid/os/IBinder;)V

    .line 1927
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 1928
    goto/16 :goto_a68

    .line 1916
    :pswitch_2a0
    invoke-virtual {v0}, Landroid/app/IActivityTaskManager$Stub;->supportsLocalVoiceInteraction()Z

    move-result v0

    .line 1917
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 1918
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1919
    goto/16 :goto_a68

    .line 1909
    :pswitch_2ac
    invoke-virtual {v0}, Landroid/app/IActivityTaskManager$Stub;->getTaskSnapshotManager()Landroid/window/ITaskSnapshotManager;

    move-result-object v0

    .line 1910
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 1911
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 1912
    goto/16 :goto_a68

    .line 1902
    :pswitch_2b8
    invoke-virtual {v0}, Landroid/app/IActivityTaskManager$Stub;->getWindowOrganizerController()Landroid/window/IWindowOrganizerController;

    move-result-object v0

    .line 1903
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 1904
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 1905
    goto/16 :goto_a68

    .line 1894
    :pswitch_2c4
    invoke-virtual {v2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1895
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1896
    invoke-virtual {v0, v1}, Landroid/app/IActivityTaskManager$Stub;->suppressResizeConfigChanges(Z)V

    .line 1897
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 1898
    goto/16 :goto_a68

    .line 1885
    :pswitch_2d3
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1886
    invoke-virtual {v2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1887
    invoke-virtual {v0, v1}, Landroid/app/IActivityTaskManager$Stub;->keyguardGoingAway(I)V

    .line 1888
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 1889
    goto/16 :goto_a68

    .line 1867
    :pswitch_2e2
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IAssistDataReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IAssistDataReceiver;

    move-result-object v1

    .line 1869
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1871
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1873
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1875
    move-object/from16 v6, p2

    invoke-virtual {v6}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 1876
    invoke-virtual {v6}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1877
    invoke-virtual/range {v0 .. v5}, Landroid/app/IActivityTaskManager$Stub;->requestAssistDataForTask(Landroid/app/IAssistDataReceiver;ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    .line 1878
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 1879
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1880
    goto/16 :goto_a68

    .line 1859
    :pswitch_30b
    invoke-virtual {v0}, Landroid/app/IActivityTaskManager$Stub;->isAssistDataAllowed()Z

    move-result v0

    .line 1860
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 1861
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1862
    goto/16 :goto_a68

    .line 1844
    :pswitch_317
    move-object v6, v2

    invoke-virtual {v6}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IAssistDataReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IAssistDataReceiver;

    move-result-object v1

    .line 1846
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v6, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 1848
    invoke-virtual {v6}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 1850
    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1851
    invoke-virtual {v6}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1852
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/IActivityTaskManager$Stub;->requestAutofillData(Landroid/app/IAssistDataReceiver;Landroid/os/Bundle;Landroid/os/IBinder;I)Z

    move-result v0

    .line 1853
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 1854
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1855
    goto/16 :goto_a68

    .line 1824
    :pswitch_33f
    move-object v6, v2

    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1826
    invoke-virtual {v6}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/IAssistDataReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IAssistDataReceiver;

    move-result-object v2

    .line 1828
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v6, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 1830
    invoke-virtual {v6}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 1832
    invoke-virtual {v6}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 1834
    move-object v7, v6

    invoke-virtual {v7}, Landroid/os/Parcel;->readBoolean()Z

    move-result v6

    .line 1835
    invoke-virtual {v7}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1836
    invoke-virtual/range {v0 .. v6}, Landroid/app/IActivityTaskManager$Stub;->requestAssistContextExtras(ILandroid/app/IAssistDataReceiver;Landroid/os/Bundle;Landroid/os/IBinder;ZZ)Z

    move-result v0

    .line 1837
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 1838
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1839
    goto/16 :goto_a68

    .line 1814
    :pswitch_370
    move-object v7, v2

    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1815
    invoke-virtual {v7}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1816
    invoke-virtual {v0, v1}, Landroid/app/IActivityTaskManager$Stub;->getAssistContextExtras(I)Landroid/os/Bundle;

    move-result-object v0

    .line 1817
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 1818
    invoke-virtual {v13, v0, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1819
    goto/16 :goto_a68

    .line 1803
    :pswitch_384
    move-object v7, v2

    invoke-virtual {v7}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1805
    invoke-virtual {v7}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1806
    invoke-virtual {v7}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1807
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityTaskManager$Stub;->setLockScreenShown(ZZ)V

    .line 1808
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 1809
    goto/16 :goto_a68

    .line 1789
    :pswitch_398
    move-object v7, v2

    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1791
    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1793
    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1794
    invoke-virtual {v7}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1795
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IActivityTaskManager$Stub;->getRootTaskInfoOnDisplay(III)Landroid/app/ActivityTaskManager$RootTaskInfo;

    move-result-object v0

    .line 1796
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 1797
    invoke-virtual {v13, v0, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1798
    goto/16 :goto_a68

    .line 1779
    :pswitch_3b4
    move-object v7, v2

    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1780
    invoke-virtual {v7}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1781
    invoke-virtual {v0, v1}, Landroid/app/IActivityTaskManager$Stub;->getAllRootTaskInfosOnDisplay(I)Ljava/util/List;

    move-result-object v0

    .line 1782
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 1783
    invoke-virtual {v13, v0, v14}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 1784
    goto/16 :goto_a68

    .line 1767
    :pswitch_3c8
    move-object v7, v2

    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1769
    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1770
    invoke-virtual {v7}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1771
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityTaskManager$Stub;->getRootTaskInfo(II)Landroid/app/ActivityTaskManager$RootTaskInfo;

    move-result-object v0

    .line 1772
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 1773
    invoke-virtual {v13, v0, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1774
    goto/16 :goto_a68

    .line 1759
    :pswitch_3e0
    invoke-virtual {v0}, Landroid/app/IActivityTaskManager$Stub;->getAllRootTaskInfos()Ljava/util/List;

    move-result-object v0

    .line 1760
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 1761
    invoke-virtual {v13, v0, v14}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 1762
    goto/16 :goto_a68

    .line 1751
    :pswitch_3ec
    move-object v7, v2

    invoke-virtual {v7}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 1752
    invoke-virtual {v7}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1753
    invoke-virtual {v0, v1}, Landroid/app/IActivityTaskManager$Stub;->removeRootTasksWithActivityTypes([I)V

    .line 1754
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 1755
    goto/16 :goto_a68

    .line 1742
    :pswitch_3fc
    move-object v7, v2

    invoke-virtual {v7}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 1743
    invoke-virtual {v7}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1744
    invoke-virtual {v0, v1}, Landroid/app/IActivityTaskManager$Stub;->removeRootTasksInWindowingModes([I)V

    .line 1745
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 1746
    goto/16 :goto_a68

    .line 1729
    :pswitch_40c
    move-object v7, v2

    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1731
    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1733
    invoke-virtual {v7}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 1734
    invoke-virtual {v7}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1735
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IActivityTaskManager$Stub;->moveTaskToRootTask(IIZ)V

    .line 1736
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 1737
    goto/16 :goto_a68

    .line 1718
    :pswitch_424
    move-object v7, v2

    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1720
    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1721
    invoke-virtual {v7}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1722
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityTaskManager$Stub;->moveRootTaskToDisplay(II)V

    .line 1723
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 1724
    goto/16 :goto_a68

    .line 1705
    :pswitch_438
    move-object v7, v2

    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1707
    sget-object v2, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v7, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 1709
    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1710
    invoke-virtual {v7}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1711
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IActivityTaskManager$Stub;->resizeTask(ILandroid/graphics/Rect;I)V

    .line 1712
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 1713
    goto/16 :goto_a68

    .line 1694
    :pswitch_454
    move-object v7, v2

    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1696
    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1697
    invoke-virtual {v7}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1698
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityTaskManager$Stub;->setTaskResizeable(II)V

    .line 1699
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 1700
    goto/16 :goto_a68

    .line 1685
    :pswitch_468
    move-object v7, v2

    invoke-virtual {v7}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/ITaskStackListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/ITaskStackListener;

    move-result-object v1

    .line 1686
    invoke-virtual {v7}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1687
    invoke-virtual {v0, v1}, Landroid/app/IActivityTaskManager$Stub;->unregisterTaskStackListener(Landroid/app/ITaskStackListener;)V

    .line 1688
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 1689
    goto/16 :goto_a68

    .line 1676
    :pswitch_47c
    move-object v7, v2

    invoke-virtual {v7}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/ITaskStackListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/ITaskStackListener;

    move-result-object v1

    .line 1677
    invoke-virtual {v7}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1678
    invoke-virtual {v0, v1}, Landroid/app/IActivityTaskManager$Stub;->registerTaskStackListener(Landroid/app/ITaskStackListener;)V

    .line 1679
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 1680
    goto/16 :goto_a68

    .line 1664
    :pswitch_490
    move-object v7, v2

    invoke-virtual {v7}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1666
    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1667
    invoke-virtual {v7}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1668
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityTaskManager$Stub;->getTaskDescriptionIcon(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1669
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 1670
    invoke-virtual {v13, v0, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1671
    goto/16 :goto_a68

    .line 1656
    :pswitch_4a8
    move-object v7, v2

    invoke-virtual {v7}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v1

    .line 1657
    invoke-virtual {v7}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1658
    invoke-virtual {v0, v1}, Landroid/app/IActivityTaskManager$Stub;->releaseSomeActivities(Landroid/app/IApplicationThread;)V

    .line 1659
    goto/16 :goto_a68

    .line 1648
    :pswitch_4b9
    invoke-virtual {v0}, Landroid/app/IActivityTaskManager$Stub;->getAppTaskThumbnailSize()Landroid/graphics/Point;

    move-result-object v0

    .line 1649
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 1650
    invoke-virtual {v13, v0, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1651
    goto/16 :goto_a68

    .line 1633
    :pswitch_4c5
    move-object v7, v2

    invoke-virtual {v7}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1635
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v7, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 1637
    sget-object v3, Landroid/app/ActivityManager$TaskDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v7, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$TaskDescription;

    .line 1639
    sget-object v4, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v7, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    .line 1640
    invoke-virtual {v7}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1641
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/IActivityTaskManager$Stub;->addAppTask(Landroid/os/IBinder;Landroid/content/Intent;Landroid/app/ActivityManager$TaskDescription;Landroid/graphics/Bitmap;)I

    move-result v0

    .line 1642
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 1643
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1644
    goto/16 :goto_a68

    .line 1624
    :pswitch_4f1
    move-object v7, v2

    invoke-virtual {v7}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/voice/IVoiceInteractionSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/voice/IVoiceInteractionSession;

    move-result-object v1

    .line 1625
    invoke-virtual {v7}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1626
    invoke-virtual {v0, v1}, Landroid/app/IActivityTaskManager$Stub;->finishVoiceTask(Landroid/service/voice/IVoiceInteractionSession;)V

    .line 1627
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 1628
    goto/16 :goto_a68

    .line 1617
    :pswitch_505
    invoke-virtual {v0}, Landroid/app/IActivityTaskManager$Stub;->rebuildSystemLockTaskPinnedMode()V

    .line 1618
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 1619
    goto/16 :goto_a68

    .line 1611
    :pswitch_50d
    invoke-virtual {v0}, Landroid/app/IActivityTaskManager$Stub;->stopSystemLockTaskMode()V

    .line 1612
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 1613
    goto/16 :goto_a68

    .line 1603
    :pswitch_515
    move-object v7, v2

    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1604
    invoke-virtual {v7}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1605
    invoke-virtual {v0, v1}, Landroid/app/IActivityTaskManager$Stub;->startSystemLockTaskMode(I)V

    .line 1606
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 1607
    goto/16 :goto_a68

    .line 1593
    :pswitch_525
    move-object v7, v2

    invoke-virtual {v7}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1594
    invoke-virtual {v7}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1595
    invoke-virtual {v0, v1}, Landroid/app/IActivityTaskManager$Stub;->getAppTasks(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 1596
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 1597
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeBinderList(Ljava/util/List;)V

    .line 1598
    goto/16 :goto_a68

    .line 1585
    :pswitch_539
    invoke-virtual {v0}, Landroid/app/IActivityTaskManager$Stub;->getLockTaskModeState()I

    move-result v0

    .line 1586
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 1587
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1588
    goto/16 :goto_a68

    .line 1578
    :pswitch_545
    invoke-virtual {v0}, Landroid/app/IActivityTaskManager$Stub;->isInLockTaskMode()Z

    move-result v0

    .line 1579
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 1580
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1581
    goto/16 :goto_a68

    .line 1568
    :pswitch_551
    move-object v7, v2

    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1570
    invoke-virtual {v7}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 1571
    invoke-virtual {v7}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1572
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityTaskManager$Stub;->updateLockTaskPackages(I[Ljava/lang/String;)V

    .line 1573
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 1574
    goto/16 :goto_a68

    .line 1559
    :pswitch_565
    move-object v7, v2

    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1560
    invoke-virtual {v7}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1561
    invoke-virtual {v0, v1}, Landroid/app/IActivityTaskManager$Stub;->focusTopTask(I)V

    .line 1562
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 1563
    goto/16 :goto_a68

    .line 1549
    :pswitch_575
    move-object v7, v2

    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1550
    invoke-virtual {v7}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1551
    invoke-virtual {v0, v1}, Landroid/app/IActivityTaskManager$Stub;->getTaskBounds(I)Landroid/graphics/Rect;

    move-result-object v0

    .line 1552
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 1553
    invoke-virtual {v13, v0, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1554
    goto/16 :goto_a68

    .line 1541
    :pswitch_589
    invoke-virtual {v0}, Landroid/app/IActivityTaskManager$Stub;->getFocusedRootTaskInfo()Landroid/app/ActivityTaskManager$RootTaskInfo;

    move-result-object v0

    .line 1542
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 1543
    invoke-virtual {v13, v0, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1544
    goto/16 :goto_a68

    .line 1533
    :pswitch_595
    move-object v7, v2

    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1534
    invoke-virtual {v7}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1535
    invoke-virtual {v0, v1}, Landroid/app/IActivityTaskManager$Stub;->setFocusedRootTask(I)V

    .line 1536
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 1537
    goto/16 :goto_a68

    .line 1523
    :pswitch_5a5
    move-object v7, v2

    sget-object v1, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v7, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .line 1524
    invoke-virtual {v7}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1525
    invoke-virtual {v0, v1}, Landroid/app/IActivityTaskManager$Stub;->canBeUniversalResizeable(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    .line 1526
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 1527
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1528
    goto/16 :goto_a68

    .line 1506
    :pswitch_5bd
    move-object v7, v2

    invoke-virtual {v7}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1508
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v7, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 1510
    sget-object v3, Landroid/app/assist/AssistStructure;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v7, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/assist/AssistStructure;

    .line 1512
    sget-object v4, Landroid/app/assist/AssistContent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v7, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/assist/AssistContent;

    .line 1514
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v7, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    .line 1515
    invoke-virtual {v7}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1516
    invoke-virtual/range {v0 .. v5}, Landroid/app/IActivityTaskManager$Stub;->reportAssistContextExtras(Landroid/os/IBinder;Landroid/os/Bundle;Landroid/app/assist/AssistStructure;Landroid/app/assist/AssistContent;Landroid/net/Uri;)V

    .line 1517
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 1518
    goto/16 :goto_a68

    .line 1498
    :pswitch_5ed
    invoke-virtual {v0}, Landroid/app/IActivityTaskManager$Stub;->isTopActivityImmersive()Z

    move-result v0

    .line 1499
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 1500
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1501
    goto/16 :goto_a68

    .line 1485
    :pswitch_5f9
    move-object v7, v2

    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1487
    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1489
    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1490
    invoke-virtual {v7}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1491
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IActivityTaskManager$Stub;->getRecentTasks(III)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 1492
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 1493
    invoke-virtual {v13, v0, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1494
    goto/16 :goto_a68

    .line 1468
    :pswitch_615
    move-object v7, v2

    invoke-virtual {v7}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v1

    .line 1470
    invoke-virtual {v7}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1472
    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1474
    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1476
    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v7, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    .line 1477
    invoke-virtual {v7}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1478
    invoke-virtual/range {v0 .. v5}, Landroid/app/IActivityTaskManager$Stub;->moveTaskToFront(Landroid/app/IApplicationThread;Ljava/lang/String;IILandroid/os/Bundle;)V

    .line 1479
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 1480
    goto/16 :goto_a68

    .line 1452
    :pswitch_63d
    move-object v7, v2

    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1454
    invoke-virtual {v7}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1456
    invoke-virtual {v7}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 1458
    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1459
    invoke-virtual {v7}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1460
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/IActivityTaskManager$Stub;->getTasks(IZZI)Ljava/util/List;

    move-result-object v0

    .line 1461
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 1462
    invoke-virtual {v13, v0, v14}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 1463
    goto/16 :goto_a68

    .line 1445
    :pswitch_65d
    invoke-virtual {v0}, Landroid/app/IActivityTaskManager$Stub;->removeAllVisibleRecentTasks()V

    .line 1446
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 1447
    goto/16 :goto_a68

    .line 1436
    :pswitch_665
    move-object v7, v2

    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1437
    invoke-virtual {v7}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1438
    invoke-virtual {v0, v1}, Landroid/app/IActivityTaskManager$Stub;->removeTask(I)Z

    move-result v0

    .line 1439
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 1440
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1441
    goto/16 :goto_a68

    .line 1424
    :pswitch_679
    move-object v7, v2

    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1426
    invoke-virtual {v7}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1427
    invoke-virtual {v7}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1428
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityTaskManager$Stub;->setTaskIsPerceptible(IZ)Z

    move-result v0

    .line 1429
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 1430
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1431
    goto/16 :goto_a68

    .line 1415
    :pswitch_691
    move-object v7, v2

    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1416
    invoke-virtual {v7}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1417
    invoke-virtual {v0, v1}, Landroid/app/IActivityTaskManager$Stub;->setFocusedTask(I)V

    .line 1418
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 1419
    goto/16 :goto_a68

    .line 1406
    :pswitch_6a1
    move-object v7, v2

    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1407
    invoke-virtual {v7}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1408
    invoke-virtual {v0, v1}, Landroid/app/IActivityTaskManager$Stub;->setFrontActivityScreenCompatMode(I)V

    .line 1409
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 1410
    goto/16 :goto_a68

    .line 1398
    :pswitch_6b1
    invoke-virtual {v0}, Landroid/app/IActivityTaskManager$Stub;->getFrontActivityScreenCompatMode()I

    move-result v0

    .line 1399
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 1400
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1401
    goto/16 :goto_a68

    .line 1391
    :pswitch_6bd
    invoke-virtual {v0}, Landroid/app/IActivityTaskManager$Stub;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    .line 1392
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 1393
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 1394
    goto/16 :goto_a68

    .line 1385
    :pswitch_6c9
    invoke-virtual {v0}, Landroid/app/IActivityTaskManager$Stub;->unhandledBack()V

    .line 1386
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 1387
    goto/16 :goto_a68

    .line 1376
    :pswitch_6d1
    move-object v7, v2

    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1377
    invoke-virtual {v7}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1378
    invoke-virtual {v0, v1}, Landroid/app/IActivityTaskManager$Stub;->isTaskMoveAllowedOnDisplay(I)Z

    move-result v0

    .line 1379
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 1380
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1381
    goto/16 :goto_a68

    .line 1360
    :pswitch_6e5
    move-object v7, v2

    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1362
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v7, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 1364
    invoke-virtual {v7}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1366
    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1367
    invoke-virtual {v7}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1368
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/IActivityTaskManager$Stub;->isActivityStartAllowedOnDisplay(ILandroid/content/Intent;Ljava/lang/String;I)Z

    move-result v0

    .line 1369
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 1370
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1371
    goto/16 :goto_a68

    .line 1351
    :pswitch_709
    move-object v7, v2

    sget-object v1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v7, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 1352
    invoke-virtual {v7}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1353
    invoke-virtual {v0, v1}, Landroid/app/IActivityTaskManager$Stub;->preloadRecentsActivity(Landroid/content/Intent;)V

    .line 1354
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 1355
    goto/16 :goto_a68

    .line 1319
    :pswitch_71d
    move-object v7, v2

    invoke-virtual {v7}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v1

    .line 1321
    invoke-virtual {v7}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1323
    sget-object v3, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v7, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    .line 1325
    invoke-virtual {v7}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1327
    invoke-virtual {v7}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 1329
    invoke-virtual {v7}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1331
    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1333
    move v9, v8

    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1335
    sget-object v10, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v7, v10}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/ProfilerInfo;

    .line 1337
    sget-object v11, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v7, v11}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/Bundle;

    .line 1339
    move v7, v9

    move-object v9, v10

    move-object v10, v11

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v11

    .line 1341
    move-object/from16 v15, p2

    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 1342
    invoke-virtual {v15}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1343
    invoke-virtual/range {v0 .. v12}, Landroid/app/IActivityTaskManager$Stub;->startActivityAsCaller(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;ZI)I

    move-result v0

    .line 1344
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 1345
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1346
    goto/16 :goto_a68

    .line 1307
    :pswitch_773
    move-object v15, v2

    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1309
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 1310
    invoke-virtual {v15}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1311
    invoke-virtual {v0, v1, v2}, Landroid/app/IActivityTaskManager$Stub;->startActivityFromRecents(ILandroid/os/Bundle;)I

    move-result v0

    .line 1312
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 1313
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1314
    goto/16 :goto_a68

    .line 1283
    :pswitch_78f
    move-object v15, v2

    invoke-virtual {v15}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v1

    .line 1285
    invoke-virtual {v15}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1287
    invoke-virtual {v15}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1289
    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1291
    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1293
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v6}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Intent;

    .line 1295
    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1297
    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1298
    invoke-virtual {v15}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1299
    invoke-virtual/range {v0 .. v8}, Landroid/app/IActivityTaskManager$Stub;->startActivityFromGameSession(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;IILandroid/content/Intent;II)I

    move-result v0

    .line 1300
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 1301
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1302
    goto/16 :goto_a68

    .line 1259
    :pswitch_7c7
    move-object v15, v2

    invoke-virtual {v15}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1261
    invoke-virtual {v15}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1263
    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1265
    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1267
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/content/Intent;

    .line 1269
    invoke-virtual {v15}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1271
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/os/Bundle;

    .line 1273
    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1274
    invoke-virtual {v15}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1275
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v8}, Landroid/app/IActivityTaskManager$Stub;->startAssistantActivity(Ljava/lang/String;Ljava/lang/String;IILandroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;I)I

    move-result v0

    .line 1276
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 1277
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1278
    goto/16 :goto_a68

    .line 1249
    :pswitch_803
    move-object v15, v2

    invoke-virtual {v15}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1250
    invoke-virtual {v15}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1251
    invoke-virtual {v0, v1}, Landroid/app/IActivityTaskManager$Stub;->getVoiceInteractorPackageName(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v0

    .line 1252
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 1253
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1254
    goto/16 :goto_a68

    .line 1217
    :pswitch_817
    move-object v15, v2

    invoke-virtual {v15}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1219
    invoke-virtual {v15}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1221
    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1223
    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1225
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Intent;

    .line 1227
    invoke-virtual {v15}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1229
    invoke-virtual {v15}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/service/voice/IVoiceInteractionSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/voice/IVoiceInteractionSession;

    move-result-object v7

    .line 1231
    invoke-virtual {v15}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/app/IVoiceInteractor$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractor;

    move-result-object v8

    .line 1233
    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1235
    sget-object v10, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v10}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/ProfilerInfo;

    .line 1237
    sget-object v11, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v11}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/Bundle;

    .line 1239
    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 1240
    invoke-virtual {v15}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1241
    invoke-virtual/range {v0 .. v12}, Landroid/app/IActivityTaskManager$Stub;->startVoiceActivity(Ljava/lang/String;Ljava/lang/String;IILandroid/content/Intent;Ljava/lang/String;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;ILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I

    move-result v0

    .line 1242
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 1243
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1244
    goto/16 :goto_a68

    .line 1185
    :pswitch_86b
    move-object v15, v2

    invoke-virtual {v15}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v1

    .line 1187
    invoke-virtual {v15}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1189
    invoke-virtual {v15}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1191
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/content/Intent;

    .line 1193
    invoke-virtual {v15}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1195
    invoke-virtual {v15}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 1197
    invoke-virtual {v15}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1199
    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1201
    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1203
    sget-object v0, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/content/res/Configuration;

    .line 1205
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/os/Bundle;

    .line 1207
    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 1208
    invoke-virtual {v15}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1209
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v12}, Landroid/app/IActivityTaskManager$Stub;->startActivityWithConfig(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/content/res/Configuration;Landroid/os/Bundle;I)I

    move-result v0

    .line 1210
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 1211
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1212
    goto/16 :goto_a68

    .line 1153
    :pswitch_8c0
    move-object v15, v2

    invoke-virtual {v15}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v1

    .line 1155
    invoke-virtual {v15}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1157
    invoke-virtual {v15}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1159
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/content/Intent;

    .line 1161
    invoke-virtual {v15}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1163
    invoke-virtual {v15}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 1165
    invoke-virtual {v15}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1167
    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1169
    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1171
    sget-object v0, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/app/ProfilerInfo;

    .line 1173
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/os/Bundle;

    .line 1175
    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 1176
    invoke-virtual {v15}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1177
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v12}, Landroid/app/IActivityTaskManager$Stub;->startActivityAndWait(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)Landroid/app/WaitResult;

    move-result-object v0

    .line 1178
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 1179
    invoke-virtual {v13, v0, v14}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1180
    goto/16 :goto_a68

    .line 1123
    :pswitch_915
    move-object v15, v2

    invoke-virtual {v15}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v1

    .line 1125
    invoke-virtual {v15}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v2

    .line 1127
    invoke-virtual {v15}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 1129
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/content/Intent;

    .line 1131
    invoke-virtual {v15}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1133
    invoke-virtual {v15}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 1135
    invoke-virtual {v15}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1137
    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1139
    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1141
    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 1143
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/os/Bundle;

    .line 1144
    invoke-virtual {v15}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1145
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v11}, Landroid/app/IActivityTaskManager$Stub;->startActivityIntentSender(Landroid/app/IApplicationThread;Landroid/content/IIntentSender;Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)I

    move-result v0

    .line 1146
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 1147
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1148
    goto/16 :goto_a68

    .line 1109
    :pswitch_965
    move-object v15, v2

    invoke-virtual {v15}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1111
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 1113
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 1114
    invoke-virtual {v15}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1115
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/IActivityTaskManager$Stub;->startNextMatchingActivity(Landroid/os/IBinder;Landroid/content/Intent;Landroid/os/Bundle;)Z

    move-result v0

    .line 1116
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 1117
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1118
    goto/16 :goto_a68

    .line 1077
    :pswitch_989
    move-object v15, v2

    invoke-virtual {v15}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v1

    .line 1079
    invoke-virtual {v15}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1081
    invoke-virtual {v15}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1083
    sget-object v4, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Intent;

    .line 1085
    invoke-virtual {v15}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1087
    invoke-virtual {v15}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 1089
    invoke-virtual {v15}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1091
    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1093
    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1095
    sget-object v10, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v10}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/ProfilerInfo;

    .line 1097
    sget-object v11, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v11}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/Bundle;

    .line 1099
    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 1100
    invoke-virtual {v15}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1101
    invoke-virtual/range {v0 .. v12}, Landroid/app/IActivityTaskManager$Stub;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I

    move-result v0

    .line 1102
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 1103
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1104
    goto/16 :goto_a68

    .line 1053
    :pswitch_9d9
    move-object v15, v2

    invoke-virtual {v15}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v1

    .line 1055
    invoke-virtual {v15}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1057
    invoke-virtual {v15}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1059
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, [Landroid/content/Intent;

    .line 1061
    invoke-virtual {v15}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v5

    .line 1063
    invoke-virtual {v15}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 1065
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/os/Bundle;

    .line 1067
    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1068
    invoke-virtual {v15}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1069
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v8}, Landroid/app/IActivityTaskManager$Stub;->startActivities(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;I)I

    move-result v0

    .line 1070
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 1071
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1072
    goto :goto_a68

    .line 1023
    :pswitch_a18
    move-object v15, v2

    invoke-virtual {v15}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v1

    .line 1025
    invoke-virtual {v15}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1027
    invoke-virtual {v15}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1029
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/content/Intent;

    .line 1031
    invoke-virtual {v15}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1033
    invoke-virtual {v15}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 1035
    invoke-virtual {v15}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1037
    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1039
    invoke-virtual {v15}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1041
    sget-object v0, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/app/ProfilerInfo;

    .line 1043
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/os/Bundle;

    .line 1044
    invoke-virtual {v15}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1045
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v11}, Landroid/app/IActivityTaskManager$Stub;->startActivity(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;)I

    move-result v0

    .line 1046
    invoke-virtual {v13}, Landroid/os/Parcel;->writeNoException()V

    .line 1047
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1048
    nop

    .line 2261
    :goto_a68
    return v14

    nop

    :pswitch_data_a6a
    .packed-switch 0x1
        :pswitch_a18
        :pswitch_9d9
        :pswitch_989
        :pswitch_965
        :pswitch_915
        :pswitch_8c0
        :pswitch_86b
        :pswitch_817
        :pswitch_803
        :pswitch_7c7
        :pswitch_78f
        :pswitch_773
        :pswitch_71d
        :pswitch_709
        :pswitch_6e5
        :pswitch_6d1
        :pswitch_6c9
        :pswitch_6bd
        :pswitch_6b1
        :pswitch_6a1
        :pswitch_691
        :pswitch_679
        :pswitch_665
        :pswitch_65d
        :pswitch_63d
        :pswitch_615
        :pswitch_5f9
        :pswitch_5ed
        :pswitch_5bd
        :pswitch_5a5
        :pswitch_595
        :pswitch_589
        :pswitch_575
        :pswitch_565
        :pswitch_551
        :pswitch_545
        :pswitch_539
        :pswitch_525
        :pswitch_515
        :pswitch_50d
        :pswitch_505
        :pswitch_4f1
        :pswitch_4c5
        :pswitch_4b9
        :pswitch_4a8
        :pswitch_490
        :pswitch_47c
        :pswitch_468
        :pswitch_454
        :pswitch_438
        :pswitch_424
        :pswitch_40c
        :pswitch_3fc
        :pswitch_3ec
        :pswitch_3e0
        :pswitch_3c8
        :pswitch_3b4
        :pswitch_398
        :pswitch_384
        :pswitch_370
        :pswitch_33f
        :pswitch_317
        :pswitch_30b
        :pswitch_2e2
        :pswitch_2d3
        :pswitch_2c4
        :pswitch_2b8
        :pswitch_2ac
        :pswitch_2a0
        :pswitch_291
        :pswitch_285
        :pswitch_276
        :pswitch_25f
        :pswitch_248
        :pswitch_23c
        :pswitch_225
        :pswitch_212
        :pswitch_1f7
        :pswitch_1e0
        :pswitch_1cd
        :pswitch_1be
        :pswitch_1af
        :pswitch_1a7
        :pswitch_19f
        :pswitch_188
        :pswitch_171
        :pswitch_15e
        :pswitch_14b
        :pswitch_138
        :pswitch_125
        :pswitch_116
        :pswitch_ff
        :pswitch_ec
        :pswitch_dd
        :pswitch_ce
        :pswitch_af
        :pswitch_a3
        :pswitch_90
        :pswitch_81
        :pswitch_6a
        :pswitch_53
        :pswitch_3c
        :pswitch_27
    .end packed-switch
.end method
