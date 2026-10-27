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
.field static final blacklist TRANSACTION_addAppTask:I = 0x29

.field static final blacklist TRANSACTION_addNfcBlackList:I = 0x79

.field static final blacklist TRANSACTION_alwaysShowUnsupportedCompileSdkWarning:I = 0x56

.field static final blacklist TRANSACTION_cancelRecentsAnimation:I = 0x21

.field static final blacklist TRANSACTION_cancelTaskWindowTransition:I = 0x4e

.field static final blacklist TRANSACTION_castRotationChanged:I = 0x6d

.field static final blacklist TRANSACTION_clearLaunchParamsForPackages:I = 0x65

.field static final blacklist TRANSACTION_detachNavigationBarFromApp:I = 0x68

.field static final blacklist TRANSACTION_enterSplitScreen:I = 0x74

.field static final blacklist TRANSACTION_enterSplitScreenMode:I = 0x76

.field static final blacklist TRANSACTION_exitCastMode:I = 0x6f

.field static final blacklist TRANSACTION_exitSplitScreen:I = 0x75

.field static final blacklist TRANSACTION_finishVoiceTask:I = 0x28

.field static final blacklist TRANSACTION_getActivityClientController:I = 0x12

.field static final blacklist TRANSACTION_getAllRootTaskInfos:I = 0x3e

.field static final blacklist TRANSACTION_getAllRootTaskInfosOnDisplay:I = 0x40

.field static final blacklist TRANSACTION_getAppTaskThumbnailSize:I = 0x2a

.field static final blacklist TRANSACTION_getAppTasks:I = 0x25

.field static final blacklist TRANSACTION_getAssistContextExtras:I = 0x43

.field static final blacklist TRANSACTION_getDeviceConfigurationInfo:I = 0x4d

.field static final blacklist TRANSACTION_getFocusedRootTaskInfo:I = 0x1f

.field static final blacklist TRANSACTION_getFrontActivityScreenCompatMode:I = 0x13

.field static final blacklist TRANSACTION_getLastResumedActivityUserId:I = 0x51

.field static final blacklist TRANSACTION_getLockTaskModeState:I = 0x24

.field static final blacklist TRANSACTION_getMiuiFreeFormManagerService:I = 0x34

.field static final blacklist TRANSACTION_getMiuiGlobalConfiguration:I = 0x85

.field static final blacklist TRANSACTION_getMiuiMultiWinSplitService:I = 0x6b

.field static final blacklist TRANSACTION_getNavBarPosition:I = 0x37

.field static final blacklist TRANSACTION_getPackageAskScreenCompat:I = 0x5f

.field static final blacklist TRANSACTION_getPackageScreenCompatMode:I = 0x5d

.field static final blacklist TRANSACTION_getRecentTasks:I = 0x1a

.field static final blacklist TRANSACTION_getRootTaskInfo:I = 0x3f

.field static final blacklist TRANSACTION_getRootTaskInfoOnDisplay:I = 0x41

.field static final blacklist TRANSACTION_getTaskBounds:I = 0x20

.field static final blacklist TRANSACTION_getTaskDescription:I = 0x1c

.field static final blacklist TRANSACTION_getTaskDescriptionIcon:I = 0x2c

.field static final blacklist TRANSACTION_getTaskResizeableForFreeform:I = 0x30

.field static final blacklist TRANSACTION_getTaskSnapshot:I = 0x4f

.field static final blacklist TRANSACTION_getTasks:I = 0x18

.field static final blacklist TRANSACTION_getTopSplitPackageNames:I = 0x7c

.field static final blacklist TRANSACTION_getTopTaskVisibleActivities:I = 0x64

.field static final blacklist TRANSACTION_getTopVisibleActivity:I = 0x61

.field static final blacklist TRANSACTION_getVoiceInteractorPackageName:I = 0xa

.field static final blacklist TRANSACTION_getWindowOrganizerController:I = 0x4a

.field static final blacklist TRANSACTION_handleFreeformModeRequst:I = 0x31

.field static final blacklist TRANSACTION_isActivityInEmbedded:I = 0x6c

.field static final blacklist TRANSACTION_isActivityInSplitScreen:I = 0x82

.field static final blacklist TRANSACTION_isActivityStartAllowedOnDisplay:I = 0x10

.field static final blacklist TRANSACTION_isAssistDataAllowedOnCurrentActivity:I = 0x46

.field static final blacklist TRANSACTION_isContinuousStart:I = 0x7d

.field static final blacklist TRANSACTION_isInFreeFormControlRegon:I = 0x35

.field static final blacklist TRANSACTION_isInLockTaskMode:I = 0x23

.field static final blacklist TRANSACTION_isInSplitScreenWindowingMode:I = 0x73

.field static final blacklist TRANSACTION_isNeedAccSensor:I = 0x72

.field static final blacklist TRANSACTION_isPackageNeedAdaptCutout:I = 0x71

.field static final blacklist TRANSACTION_isPairRootTask:I = 0x7b

.field static final blacklist TRANSACTION_isSettingsInSplit:I = 0x84

.field static final blacklist TRANSACTION_isSupportFreeFormInDesktopMode:I = 0x38

.field static final blacklist TRANSACTION_isTopActivityImmersive:I = 0x1b

.field static final blacklist TRANSACTION_isTopActivityInFreeform:I = 0x33

.field static final blacklist TRANSACTION_keyguardGoingAway:I = 0x48

.field static final blacklist TRANSACTION_launchFlashBackFromBackGround:I = 0x36

.field static final blacklist TRANSACTION_launchSmallFreeFormWindow:I = 0x32

.field static final blacklist TRANSACTION_moveRootTaskToDisplay:I = 0x3a

.field static final blacklist TRANSACTION_moveTaskToFront:I = 0x19

.field static final blacklist TRANSACTION_moveTaskToRootTask:I = 0x3b

.field static final blacklist TRANSACTION_moveTopActivityToCastMode:I = 0x6e

.field static final blacklist TRANSACTION_notifyRemoveSnapshotQS:I = 0x7f

.field static final blacklist TRANSACTION_notifyTakeSnapshotQS:I = 0x7e

.field static final blacklist TRANSACTION_onPictureInPictureStateChanged:I = 0x67

.field static final blacklist TRANSACTION_onSplashScreenViewCopyFinished:I = 0x66

.field static final blacklist TRANSACTION_registerActivityObserver:I = 0x62

.field static final blacklist TRANSACTION_registerRemoteAnimationForNextActivityStart:I = 0x54

.field static final blacklist TRANSACTION_registerRemoteAnimationsForDisplay:I = 0x55

.field static final blacklist TRANSACTION_registerSecureChangedListener:I = 0x77

.field static final blacklist TRANSACTION_registerTaskStackListener:I = 0x2d

.field static final blacklist TRANSACTION_releaseSomeActivities:I = 0x2b

.field static final blacklist TRANSACTION_removeAllVisibleRecentTasks:I = 0x17

.field static final blacklist TRANSACTION_removeNfcBlackList:I = 0x7a

.field static final blacklist TRANSACTION_removeRootTasksInWindowingModes:I = 0x3c

.field static final blacklist TRANSACTION_removeRootTasksWithActivityTypes:I = 0x3d

.field static final blacklist TRANSACTION_removeTask:I = 0x16

.field static final blacklist TRANSACTION_reportAssistContextExtras:I = 0x1d

.field static final blacklist TRANSACTION_requestAssistContextExtras:I = 0x44

.field static final blacklist TRANSACTION_requestAssistDataForTask:I = 0x47

.field static final blacklist TRANSACTION_requestAutofillData:I = 0x45

.field static final blacklist TRANSACTION_resizeTask:I = 0x39

.field static final blacklist TRANSACTION_resumeAppSwitches:I = 0x5a

.field static final blacklist TRANSACTION_setActivityController:I = 0x5b

.field static final blacklist TRANSACTION_setFocusedRootTask:I = 0x1e

.field static final blacklist TRANSACTION_setFocusedTask:I = 0x15

.field static final blacklist TRANSACTION_setFrontActivityScreenCompatMode:I = 0x14

.field static final blacklist TRANSACTION_setLockScreenShown:I = 0x42

.field static final blacklist TRANSACTION_setOrientationOptions:I = 0x70

.field static final blacklist TRANSACTION_setPackageAskScreenCompat:I = 0x60

.field static final blacklist TRANSACTION_setPackageScreenCompatMode:I = 0x5e

.field static final blacklist TRANSACTION_setPersistentVrThread:I = 0x58

.field static final blacklist TRANSACTION_setRunningRemoteTransitionDelegate:I = 0x69

.field static final blacklist TRANSACTION_setSplitScreenResizing:I = 0x4b

.field static final blacklist TRANSACTION_setTaskResizeable:I = 0x2f

.field static final blacklist TRANSACTION_setVoiceKeepAwake:I = 0x5c

.field static final blacklist TRANSACTION_setVrThread:I = 0x57

.field static final blacklist TRANSACTION_startActivities:I = 0x2

.field static final blacklist TRANSACTION_startActivity:I = 0x1

.field static final blacklist TRANSACTION_startActivityAndWait:I = 0x7

.field static final blacklist TRANSACTION_startActivityAsCaller:I = 0xf

.field static final blacklist TRANSACTION_startActivityAsUser:I = 0x3

.field static final blacklist TRANSACTION_startActivityFromGameSession:I = 0xc

.field static final blacklist TRANSACTION_startActivityFromRecents:I = 0xe

.field static final blacklist TRANSACTION_startActivityIntentSender:I = 0x6

.field static final blacklist TRANSACTION_startActivityWithConfig:I = 0x8

.field static final blacklist TRANSACTION_startAssistantActivity:I = 0xb

.field static final blacklist TRANSACTION_startBackNavigation:I = 0x6a

.field static final blacklist TRANSACTION_startDreamActivity:I = 0x5

.field static final blacklist TRANSACTION_startNextMatchingActivity:I = 0x4

.field static final blacklist TRANSACTION_startRecentsActivity:I = 0xd

.field static final blacklist TRANSACTION_startSystemLockTaskMode:I = 0x26

.field static final blacklist TRANSACTION_startVoiceActivity:I = 0x9

.field static final blacklist TRANSACTION_stopAppSwitches:I = 0x59

.field static final blacklist TRANSACTION_stopSystemLockTaskMode:I = 0x27

.field static final blacklist TRANSACTION_supportMultipleTask:I = 0x81

.field static final blacklist TRANSACTION_supportsLocalVoiceInteraction:I = 0x4c

.field static final blacklist TRANSACTION_supportsSplitScreen:I = 0x80

.field static final blacklist TRANSACTION_suppressResizeConfigChanges:I = 0x49

.field static final blacklist TRANSACTION_takeTaskSnapshot:I = 0x50

.field static final blacklist TRANSACTION_unRegisterSecureChangedListener:I = 0x78

.field static final blacklist TRANSACTION_unhandledBack:I = 0x11

.field static final blacklist TRANSACTION_unregisterActivityObserver:I = 0x63

.field static final blacklist TRANSACTION_unregisterTaskStackListener:I = 0x2e

.field static final blacklist TRANSACTION_updateConfiguration:I = 0x52

.field static final blacklist TRANSACTION_updateLockTaskFeatures:I = 0x53

.field static final blacklist TRANSACTION_updateLockTaskPackages:I = 0x22

.field static final blacklist TRANSACTION_updateShouldDeclineIfNeed:I = 0x83


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 613
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 614
    const-string v0, "android.app.IActivityTaskManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/IActivityTaskManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 615
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/app/IActivityTaskManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 622
    if-nez p0, :cond_4

    .line 623
    const/4 v0, 0x0

    return-object v0

    .line 625
    :cond_4
    const-string v0, "android.app.IActivityTaskManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 626
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/app/IActivityTaskManager;

    if-eqz v1, :cond_14

    .line 627
    move-object v1, v0

    check-cast v1, Landroid/app/IActivityTaskManager;

    return-object v1

    .line 629
    :cond_14
    new-instance v1, Landroid/app/IActivityTaskManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/IActivityTaskManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 638
    packed-switch p0, :pswitch_data_1da

    .line 1174
    const/4 v0, 0x0

    return-object v0

    .line 1170
    :pswitch_5
    const-string v0, "getMiuiGlobalConfiguration"

    return-object v0

    .line 1166
    :pswitch_8
    const-string v0, "isSettingsInSplit"

    return-object v0

    .line 1162
    :pswitch_b
    const-string/jumbo v0, "updateShouldDeclineIfNeed"

    return-object v0

    .line 1158
    :pswitch_f
    const-string v0, "isActivityInSplitScreen"

    return-object v0

    .line 1154
    :pswitch_12
    const-string/jumbo v0, "supportMultipleTask"

    return-object v0

    .line 1150
    :pswitch_16
    const-string/jumbo v0, "supportsSplitScreen"

    return-object v0

    .line 1146
    :pswitch_1a
    const-string/jumbo v0, "notifyRemoveSnapshotQS"

    return-object v0

    .line 1142
    :pswitch_1e
    const-string/jumbo v0, "notifyTakeSnapshotQS"

    return-object v0

    .line 1138
    :pswitch_22
    const-string v0, "isContinuousStart"

    return-object v0

    .line 1134
    :pswitch_25
    const-string v0, "getTopSplitPackageNames"

    return-object v0

    .line 1130
    :pswitch_28
    const-string v0, "isPairRootTask"

    return-object v0

    .line 1126
    :pswitch_2b
    const-string/jumbo v0, "removeNfcBlackList"

    return-object v0

    .line 1122
    :pswitch_2f
    const-string v0, "addNfcBlackList"

    return-object v0

    .line 1118
    :pswitch_32
    const-string/jumbo v0, "unRegisterSecureChangedListener"

    return-object v0

    .line 1114
    :pswitch_36
    const-string/jumbo v0, "registerSecureChangedListener"

    return-object v0

    .line 1110
    :pswitch_3a
    const-string v0, "enterSplitScreenMode"

    return-object v0

    .line 1106
    :pswitch_3d
    const-string v0, "exitSplitScreen"

    return-object v0

    .line 1102
    :pswitch_40
    const-string v0, "enterSplitScreen"

    return-object v0

    .line 1098
    :pswitch_43
    const-string v0, "isInSplitScreenWindowingMode"

    return-object v0

    .line 1094
    :pswitch_46
    const-string v0, "isNeedAccSensor"

    return-object v0

    .line 1090
    :pswitch_49
    const-string v0, "isPackageNeedAdaptCutout"

    return-object v0

    .line 1086
    :pswitch_4c
    const-string/jumbo v0, "setOrientationOptions"

    return-object v0

    .line 1082
    :pswitch_50
    const-string v0, "exitCastMode"

    return-object v0

    .line 1078
    :pswitch_53
    const-string/jumbo v0, "moveTopActivityToCastMode"

    return-object v0

    .line 1074
    :pswitch_57
    const-string v0, "castRotationChanged"

    return-object v0

    .line 1070
    :pswitch_5a
    const-string v0, "isActivityInEmbedded"

    return-object v0

    .line 1066
    :pswitch_5d
    const-string v0, "getMiuiMultiWinSplitService"

    return-object v0

    .line 1062
    :pswitch_60
    const-string/jumbo v0, "startBackNavigation"

    return-object v0

    .line 1058
    :pswitch_64
    const-string/jumbo v0, "setRunningRemoteTransitionDelegate"

    return-object v0

    .line 1054
    :pswitch_68
    const-string v0, "detachNavigationBarFromApp"

    return-object v0

    .line 1050
    :pswitch_6b
    const-string/jumbo v0, "onPictureInPictureStateChanged"

    return-object v0

    .line 1046
    :pswitch_6f
    const-string/jumbo v0, "onSplashScreenViewCopyFinished"

    return-object v0

    .line 1042
    :pswitch_73
    const-string v0, "clearLaunchParamsForPackages"

    return-object v0

    .line 1038
    :pswitch_76
    const-string v0, "getTopTaskVisibleActivities"

    return-object v0

    .line 1034
    :pswitch_79
    const-string/jumbo v0, "unregisterActivityObserver"

    return-object v0

    .line 1030
    :pswitch_7d
    const-string/jumbo v0, "registerActivityObserver"

    return-object v0

    .line 1026
    :pswitch_81
    const-string v0, "getTopVisibleActivity"

    return-object v0

    .line 1022
    :pswitch_84
    const-string/jumbo v0, "setPackageAskScreenCompat"

    return-object v0

    .line 1018
    :pswitch_88
    const-string v0, "getPackageAskScreenCompat"

    return-object v0

    .line 1014
    :pswitch_8b
    const-string/jumbo v0, "setPackageScreenCompatMode"

    return-object v0

    .line 1010
    :pswitch_8f
    const-string v0, "getPackageScreenCompatMode"

    return-object v0

    .line 1006
    :pswitch_92
    const-string/jumbo v0, "setVoiceKeepAwake"

    return-object v0

    .line 1002
    :pswitch_96
    const-string/jumbo v0, "setActivityController"

    return-object v0

    .line 998
    :pswitch_9a
    const-string/jumbo v0, "resumeAppSwitches"

    return-object v0

    .line 994
    :pswitch_9e
    const-string/jumbo v0, "stopAppSwitches"

    return-object v0

    .line 990
    :pswitch_a2
    const-string/jumbo v0, "setPersistentVrThread"

    return-object v0

    .line 986
    :pswitch_a6
    const-string/jumbo v0, "setVrThread"

    return-object v0

    .line 982
    :pswitch_aa
    const-string v0, "alwaysShowUnsupportedCompileSdkWarning"

    return-object v0

    .line 978
    :pswitch_ad
    const-string/jumbo v0, "registerRemoteAnimationsForDisplay"

    return-object v0

    .line 974
    :pswitch_b1
    const-string/jumbo v0, "registerRemoteAnimationForNextActivityStart"

    return-object v0

    .line 970
    :pswitch_b5
    const-string/jumbo v0, "updateLockTaskFeatures"

    return-object v0

    .line 966
    :pswitch_b9
    const-string/jumbo v0, "updateConfiguration"

    return-object v0

    .line 962
    :pswitch_bd
    const-string v0, "getLastResumedActivityUserId"

    return-object v0

    .line 958
    :pswitch_c0
    const-string/jumbo v0, "takeTaskSnapshot"

    return-object v0

    .line 954
    :pswitch_c4
    const-string v0, "getTaskSnapshot"

    return-object v0

    .line 950
    :pswitch_c7
    const-string v0, "cancelTaskWindowTransition"

    return-object v0

    .line 946
    :pswitch_ca
    const-string v0, "getDeviceConfigurationInfo"

    return-object v0

    .line 942
    :pswitch_cd
    const-string/jumbo v0, "supportsLocalVoiceInteraction"

    return-object v0

    .line 938
    :pswitch_d1
    const-string/jumbo v0, "setSplitScreenResizing"

    return-object v0

    .line 934
    :pswitch_d5
    const-string v0, "getWindowOrganizerController"

    return-object v0

    .line 930
    :pswitch_d8
    const-string/jumbo v0, "suppressResizeConfigChanges"

    return-object v0

    .line 926
    :pswitch_dc
    const-string v0, "keyguardGoingAway"

    return-object v0

    .line 922
    :pswitch_df
    const-string/jumbo v0, "requestAssistDataForTask"

    return-object v0

    .line 918
    :pswitch_e3
    const-string v0, "isAssistDataAllowedOnCurrentActivity"

    return-object v0

    .line 914
    :pswitch_e6
    const-string/jumbo v0, "requestAutofillData"

    return-object v0

    .line 910
    :pswitch_ea
    const-string/jumbo v0, "requestAssistContextExtras"

    return-object v0

    .line 906
    :pswitch_ee
    const-string v0, "getAssistContextExtras"

    return-object v0

    .line 902
    :pswitch_f1
    const-string/jumbo v0, "setLockScreenShown"

    return-object v0

    .line 898
    :pswitch_f5
    const-string v0, "getRootTaskInfoOnDisplay"

    return-object v0

    .line 894
    :pswitch_f8
    const-string v0, "getAllRootTaskInfosOnDisplay"

    return-object v0

    .line 890
    :pswitch_fb
    const-string v0, "getRootTaskInfo"

    return-object v0

    .line 886
    :pswitch_fe
    const-string v0, "getAllRootTaskInfos"

    return-object v0

    .line 882
    :pswitch_101
    const-string/jumbo v0, "removeRootTasksWithActivityTypes"

    return-object v0

    .line 878
    :pswitch_105
    const-string/jumbo v0, "removeRootTasksInWindowingModes"

    return-object v0

    .line 874
    :pswitch_109
    const-string/jumbo v0, "moveTaskToRootTask"

    return-object v0

    .line 870
    :pswitch_10d
    const-string/jumbo v0, "moveRootTaskToDisplay"

    return-object v0

    .line 866
    :pswitch_111
    const-string/jumbo v0, "resizeTask"

    return-object v0

    .line 862
    :pswitch_115
    const-string v0, "isSupportFreeFormInDesktopMode"

    return-object v0

    .line 858
    :pswitch_118
    const-string v0, "getNavBarPosition"

    return-object v0

    .line 854
    :pswitch_11b
    const-string v0, "launchFlashBackFromBackGround"

    return-object v0

    .line 850
    :pswitch_11e
    const-string v0, "isInFreeFormControlRegon"

    return-object v0

    .line 846
    :pswitch_121
    const-string v0, "getMiuiFreeFormManagerService"

    return-object v0

    .line 842
    :pswitch_124
    const-string v0, "isTopActivityInFreeform"

    return-object v0

    .line 838
    :pswitch_127
    const-string v0, "launchSmallFreeFormWindow"

    return-object v0

    .line 834
    :pswitch_12a
    const-string v0, "handleFreeformModeRequst"

    return-object v0

    .line 830
    :pswitch_12d
    const-string v0, "getTaskResizeableForFreeform"

    return-object v0

    .line 826
    :pswitch_130
    const-string/jumbo v0, "setTaskResizeable"

    return-object v0

    .line 822
    :pswitch_134
    const-string/jumbo v0, "unregisterTaskStackListener"

    return-object v0

    .line 818
    :pswitch_138
    const-string/jumbo v0, "registerTaskStackListener"

    return-object v0

    .line 814
    :pswitch_13c
    const-string v0, "getTaskDescriptionIcon"

    return-object v0

    .line 810
    :pswitch_13f
    const-string/jumbo v0, "releaseSomeActivities"

    return-object v0

    .line 806
    :pswitch_143
    const-string v0, "getAppTaskThumbnailSize"

    return-object v0

    .line 802
    :pswitch_146
    const-string v0, "addAppTask"

    return-object v0

    .line 798
    :pswitch_149
    const-string v0, "finishVoiceTask"

    return-object v0

    .line 794
    :pswitch_14c
    const-string/jumbo v0, "stopSystemLockTaskMode"

    return-object v0

    .line 790
    :pswitch_150
    const-string/jumbo v0, "startSystemLockTaskMode"

    return-object v0

    .line 786
    :pswitch_154
    const-string v0, "getAppTasks"

    return-object v0

    .line 782
    :pswitch_157
    const-string v0, "getLockTaskModeState"

    return-object v0

    .line 778
    :pswitch_15a
    const-string v0, "isInLockTaskMode"

    return-object v0

    .line 774
    :pswitch_15d
    const-string/jumbo v0, "updateLockTaskPackages"

    return-object v0

    .line 770
    :pswitch_161
    const-string v0, "cancelRecentsAnimation"

    return-object v0

    .line 766
    :pswitch_164
    const-string v0, "getTaskBounds"

    return-object v0

    .line 762
    :pswitch_167
    const-string v0, "getFocusedRootTaskInfo"

    return-object v0

    .line 758
    :pswitch_16a
    const-string/jumbo v0, "setFocusedRootTask"

    return-object v0

    .line 754
    :pswitch_16e
    const-string/jumbo v0, "reportAssistContextExtras"

    return-object v0

    .line 750
    :pswitch_172
    const-string v0, "getTaskDescription"

    return-object v0

    .line 746
    :pswitch_175
    const-string v0, "isTopActivityImmersive"

    return-object v0

    .line 742
    :pswitch_178
    const-string v0, "getRecentTasks"

    return-object v0

    .line 738
    :pswitch_17b
    const-string/jumbo v0, "moveTaskToFront"

    return-object v0

    .line 734
    :pswitch_17f
    const-string v0, "getTasks"

    return-object v0

    .line 730
    :pswitch_182
    const-string/jumbo v0, "removeAllVisibleRecentTasks"

    return-object v0

    .line 726
    :pswitch_186
    const-string/jumbo v0, "removeTask"

    return-object v0

    .line 722
    :pswitch_18a
    const-string/jumbo v0, "setFocusedTask"

    return-object v0

    .line 718
    :pswitch_18e
    const-string/jumbo v0, "setFrontActivityScreenCompatMode"

    return-object v0

    .line 714
    :pswitch_192
    const-string v0, "getFrontActivityScreenCompatMode"

    return-object v0

    .line 710
    :pswitch_195
    const-string v0, "getActivityClientController"

    return-object v0

    .line 706
    :pswitch_198
    const-string/jumbo v0, "unhandledBack"

    return-object v0

    .line 702
    :pswitch_19c
    const-string v0, "isActivityStartAllowedOnDisplay"

    return-object v0

    .line 698
    :pswitch_19f
    const-string/jumbo v0, "startActivityAsCaller"

    return-object v0

    .line 694
    :pswitch_1a3
    const-string/jumbo v0, "startActivityFromRecents"

    return-object v0

    .line 690
    :pswitch_1a7
    const-string/jumbo v0, "startRecentsActivity"

    return-object v0

    .line 686
    :pswitch_1ab
    const-string/jumbo v0, "startActivityFromGameSession"

    return-object v0

    .line 682
    :pswitch_1af
    const-string/jumbo v0, "startAssistantActivity"

    return-object v0

    .line 678
    :pswitch_1b3
    const-string v0, "getVoiceInteractorPackageName"

    return-object v0

    .line 674
    :pswitch_1b6
    const-string/jumbo v0, "startVoiceActivity"

    return-object v0

    .line 670
    :pswitch_1ba
    const-string/jumbo v0, "startActivityWithConfig"

    return-object v0

    .line 666
    :pswitch_1be
    const-string/jumbo v0, "startActivityAndWait"

    return-object v0

    .line 662
    :pswitch_1c2
    const-string/jumbo v0, "startActivityIntentSender"

    return-object v0

    .line 658
    :pswitch_1c6
    const-string/jumbo v0, "startDreamActivity"

    return-object v0

    .line 654
    :pswitch_1ca
    const-string/jumbo v0, "startNextMatchingActivity"

    return-object v0

    .line 650
    :pswitch_1ce
    const-string/jumbo v0, "startActivityAsUser"

    return-object v0

    .line 646
    :pswitch_1d2
    const-string/jumbo v0, "startActivities"

    return-object v0

    .line 642
    :pswitch_1d6
    const-string/jumbo v0, "startActivity"

    return-object v0

    :pswitch_data_1da
    .packed-switch 0x1
        :pswitch_1d6
        :pswitch_1d2
        :pswitch_1ce
        :pswitch_1ca
        :pswitch_1c6
        :pswitch_1c2
        :pswitch_1be
        :pswitch_1ba
        :pswitch_1b6
        :pswitch_1b3
        :pswitch_1af
        :pswitch_1ab
        :pswitch_1a7
        :pswitch_1a3
        :pswitch_19f
        :pswitch_19c
        :pswitch_198
        :pswitch_195
        :pswitch_192
        :pswitch_18e
        :pswitch_18a
        :pswitch_186
        :pswitch_182
        :pswitch_17f
        :pswitch_17b
        :pswitch_178
        :pswitch_175
        :pswitch_172
        :pswitch_16e
        :pswitch_16a
        :pswitch_167
        :pswitch_164
        :pswitch_161
        :pswitch_15d
        :pswitch_15a
        :pswitch_157
        :pswitch_154
        :pswitch_150
        :pswitch_14c
        :pswitch_149
        :pswitch_146
        :pswitch_143
        :pswitch_13f
        :pswitch_13c
        :pswitch_138
        :pswitch_134
        :pswitch_130
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
        :pswitch_105
        :pswitch_101
        :pswitch_fe
        :pswitch_fb
        :pswitch_f8
        :pswitch_f5
        :pswitch_f1
        :pswitch_ee
        :pswitch_ea
        :pswitch_e6
        :pswitch_e3
        :pswitch_df
        :pswitch_dc
        :pswitch_d8
        :pswitch_d5
        :pswitch_d1
        :pswitch_cd
        :pswitch_ca
        :pswitch_c7
        :pswitch_c4
        :pswitch_c0
        :pswitch_bd
        :pswitch_b9
        :pswitch_b5
        :pswitch_b1
        :pswitch_ad
        :pswitch_aa
        :pswitch_a6
        :pswitch_a2
        :pswitch_9e
        :pswitch_9a
        :pswitch_96
        :pswitch_92
        :pswitch_8f
        :pswitch_8b
        :pswitch_88
        :pswitch_84
        :pswitch_81
        :pswitch_7d
        :pswitch_79
        :pswitch_76
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
        :pswitch_50
        :pswitch_4c
        :pswitch_49
        :pswitch_46
        :pswitch_43
        :pswitch_40
        :pswitch_3d
        :pswitch_3a
        :pswitch_36
        :pswitch_32
        :pswitch_2f
        :pswitch_2b
        :pswitch_28
        :pswitch_25
        :pswitch_22
        :pswitch_1e
        :pswitch_1a
        :pswitch_16
        :pswitch_12
        :pswitch_f
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 633
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 5310
    const/16 v0, 0x84

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 1181
    invoke-static {p1}, Landroid/app/IActivityTaskManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 34
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1185
    move-object/from16 v13, p0

    move/from16 v14, p1

    move-object/from16 v15, p2

    move-object/from16 v12, p3

    const-string v11, "android.app.IActivityTaskManager"

    .line 1186
    .local v11, "descriptor":Ljava/lang/String;
    const/4 v10, 0x1

    if-lt v14, v10, :cond_15

    const v0, 0xffffff

    if-gt v14, v0, :cond_15

    .line 1187
    invoke-virtual {v15, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1189
    :cond_15
    packed-switch v14, :pswitch_data_ec8

    .line 1197
    packed-switch v14, :pswitch_data_ece

    .line 2701
    move-object v14, v12

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 1193
    :pswitch_21
    invoke-virtual {v12, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1194
    return v10

    .line 2694
    :pswitch_25
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityTaskManager$Stub;->getMiuiGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 2695
    .local v0, "_result":Landroid/content/res/Configuration;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2696
    invoke-virtual {v12, v0, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2697
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_ec5

    .line 2685
    .end local v0    # "_result":Landroid/content/res/Configuration;
    :pswitch_34
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 2686
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2687
    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->isSettingsInSplit(Landroid/os/IBinder;)Z

    move-result v1

    .line 2688
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2689
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2690
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_ec5

    .line 2675
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_result":Z
    :pswitch_4a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2676
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2677
    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->updateShouldDeclineIfNeed(Ljava/lang/String;)Z

    move-result v1

    .line 2678
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2679
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2680
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_ec5

    .line 2665
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_60
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 2666
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2667
    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->isActivityInSplitScreen(Landroid/os/IBinder;)Z

    move-result v1

    .line 2668
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2669
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2670
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_ec5

    .line 2655
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_result":Z
    :pswitch_76
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 2656
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2657
    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->supportMultipleTask(Landroid/content/ComponentName;)Z

    move-result v1

    .line 2658
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2659
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2660
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_ec5

    .line 2645
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    .end local v1    # "_result":Z
    :pswitch_90
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 2646
    .restart local v0    # "_arg0":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2647
    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->supportsSplitScreen(Landroid/content/ComponentName;)Z

    move-result v1

    .line 2648
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2649
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2650
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_ec5

    .line 2636
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    .end local v1    # "_result":Z
    :pswitch_aa
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 2637
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2638
    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->notifyRemoveSnapshotQS(Landroid/os/IBinder;)V

    .line 2639
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2640
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_ec5

    .line 2625
    .end local v0    # "_arg0":Landroid/os/IBinder;
    :pswitch_bc
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 2627
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2628
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2629
    invoke-virtual {v13, v0, v1}, Landroid/app/IActivityTaskManager$Stub;->notifyTakeSnapshotQS(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 2630
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2631
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_ec5

    .line 2615
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_d2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2616
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2617
    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->isContinuousStart(I)Z

    move-result v1

    .line 2618
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2619
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2620
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_ec5

    .line 2607
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_e8
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityTaskManager$Stub;->getTopSplitPackageNames()Ljava/util/List;

    move-result-object v0

    .line 2608
    .local v0, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2609
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 2610
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_ec5

    .line 2598
    .end local v0    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_f7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2599
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2600
    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->isPairRootTask(I)Z

    move-result v1

    .line 2601
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2602
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2603
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_ec5

    .line 2589
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_10d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2590
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2591
    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->removeNfcBlackList(Ljava/lang/String;)V

    .line 2592
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2593
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_ec5

    .line 2580
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_11f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2581
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2582
    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->addNfcBlackList(Ljava/lang/String;)V

    .line 2583
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2584
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_ec5

    .line 2571
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_131
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IWindowSecureChangeListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IWindowSecureChangeListener;

    move-result-object v0

    .line 2572
    .local v0, "_arg0":Landroid/app/IWindowSecureChangeListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2573
    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->unRegisterSecureChangedListener(Landroid/app/IWindowSecureChangeListener;)V

    .line 2574
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2575
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_ec5

    .line 2562
    .end local v0    # "_arg0":Landroid/app/IWindowSecureChangeListener;
    :pswitch_147
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IWindowSecureChangeListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IWindowSecureChangeListener;

    move-result-object v0

    .line 2563
    .restart local v0    # "_arg0":Landroid/app/IWindowSecureChangeListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2564
    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->registerSecureChangedListener(Landroid/app/IWindowSecureChangeListener;)V

    .line 2565
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2566
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_ec5

    .line 2555
    .end local v0    # "_arg0":Landroid/app/IWindowSecureChangeListener;
    :pswitch_15d
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityTaskManager$Stub;->enterSplitScreenMode()V

    .line 2556
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2557
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_ec5

    .line 2547
    :pswitch_168
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2548
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2549
    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->exitSplitScreen(I)V

    .line 2550
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2551
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_ec5

    .line 2536
    .end local v0    # "_arg0":I
    :pswitch_17a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2538
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 2539
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2540
    invoke-virtual {v13, v0, v1}, Landroid/app/IActivityTaskManager$Stub;->enterSplitScreen(IZ)V

    .line 2541
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2542
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_ec5

    .line 2528
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    :pswitch_190
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityTaskManager$Stub;->isInSplitScreenWindowingMode()Z

    move-result v0

    .line 2529
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2530
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2531
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_ec5

    .line 2521
    .end local v0    # "_result":Z
    :pswitch_19f
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityTaskManager$Stub;->isNeedAccSensor()Z

    move-result v0

    .line 2522
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2523
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2524
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_ec5

    .line 2512
    .end local v0    # "_result":Z
    :pswitch_1ae
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2513
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2514
    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->isPackageNeedAdaptCutout(Ljava/lang/String;)I

    move-result v1

    .line 2515
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2516
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2517
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_ec5

    .line 2501
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":I
    :pswitch_1c4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 2503
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2504
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2505
    invoke-virtual {v13, v0, v1}, Landroid/app/IActivityTaskManager$Stub;->setOrientationOptions(Landroid/os/IBinder;I)V

    .line 2506
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2507
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_ec5

    .line 2494
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":I
    :pswitch_1da
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityTaskManager$Stub;->exitCastMode()V

    .line 2495
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2496
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_ec5

    .line 2488
    :pswitch_1e5
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityTaskManager$Stub;->moveTopActivityToCastMode()V

    .line 2489
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2490
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_ec5

    .line 2481
    :pswitch_1f0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 2482
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2483
    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->castRotationChanged(Z)V

    .line 2484
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_ec5

    .line 2473
    .end local v0    # "_arg0":Z
    :pswitch_1ff
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityTaskManager$Stub;->isActivityInEmbedded()Z

    move-result v0

    .line 2474
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2475
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2476
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_ec5

    .line 2466
    .end local v0    # "_result":Z
    :pswitch_20e
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityTaskManager$Stub;->getMiuiMultiWinSplitService()Landroid/os/IBinder;

    move-result-object v0

    .line 2467
    .local v0, "_result":Landroid/os/IBinder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2468
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2469
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_ec5

    .line 2457
    .end local v0    # "_result":Landroid/os/IBinder;
    :pswitch_21d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 2458
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2459
    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->startBackNavigation(Z)Landroid/window/BackNavigationInfo;

    move-result-object v1

    .line 2460
    .local v1, "_result":Landroid/window/BackNavigationInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2461
    invoke-virtual {v12, v1, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2462
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_ec5

    .line 2448
    .end local v0    # "_arg0":Z
    .end local v1    # "_result":Landroid/window/BackNavigationInfo;
    :pswitch_233
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v0

    .line 2449
    .local v0, "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2450
    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->setRunningRemoteTransitionDelegate(Landroid/app/IApplicationThread;)V

    .line 2451
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2452
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_ec5

    .line 2439
    .end local v0    # "_arg0":Landroid/app/IApplicationThread;
    :pswitch_249
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 2440
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2441
    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->detachNavigationBarFromApp(Landroid/os/IBinder;)V

    .line 2442
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2443
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_ec5

    .line 2430
    .end local v0    # "_arg0":Landroid/os/IBinder;
    :pswitch_25b
    sget-object v0, Landroid/app/PictureInPictureUiState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PictureInPictureUiState;

    .line 2431
    .local v0, "_arg0":Landroid/app/PictureInPictureUiState;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2432
    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->onPictureInPictureStateChanged(Landroid/app/PictureInPictureUiState;)V

    .line 2433
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2434
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_ec5

    .line 2419
    .end local v0    # "_arg0":Landroid/app/PictureInPictureUiState;
    :pswitch_271
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2421
    .local v0, "_arg0":I
    sget-object v1, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/window/SplashScreenView$SplashScreenViewParcelable;

    .line 2422
    .local v1, "_arg1":Landroid/window/SplashScreenView$SplashScreenViewParcelable;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2423
    invoke-virtual {v13, v0, v1}, Landroid/app/IActivityTaskManager$Stub;->onSplashScreenViewCopyFinished(ILandroid/window/SplashScreenView$SplashScreenViewParcelable;)V

    .line 2424
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2425
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_ec5

    .line 2410
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/window/SplashScreenView$SplashScreenViewParcelable;
    :pswitch_28b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 2411
    .local v0, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2412
    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->clearLaunchParamsForPackages(Ljava/util/List;)V

    .line 2413
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2414
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_ec5

    .line 2402
    .end local v0    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_29d
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityTaskManager$Stub;->getTopTaskVisibleActivities()Ljava/util/List;

    move-result-object v0

    .line 2403
    .local v0, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2404
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 2405
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_ec5

    .line 2394
    .end local v0    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    :pswitch_2ac
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IMiuiActivityObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IMiuiActivityObserver;

    move-result-object v0

    .line 2395
    .local v0, "_arg0":Landroid/app/IMiuiActivityObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2396
    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->unregisterActivityObserver(Landroid/app/IMiuiActivityObserver;)V

    .line 2397
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2398
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_ec5

    .line 2382
    .end local v0    # "_arg0":Landroid/app/IMiuiActivityObserver;
    :pswitch_2c2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IMiuiActivityObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IMiuiActivityObserver;

    move-result-object v0

    .line 2384
    .restart local v0    # "_arg0":Landroid/app/IMiuiActivityObserver;
    sget-object v1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 2385
    .local v1, "_arg1":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2386
    invoke-virtual {v13, v0, v1}, Landroid/app/IActivityTaskManager$Stub;->registerActivityObserver(Landroid/app/IMiuiActivityObserver;Landroid/content/Intent;)V

    .line 2387
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2388
    invoke-virtual {v12, v1, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2389
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_ec5

    .line 2374
    .end local v0    # "_arg0":Landroid/app/IMiuiActivityObserver;
    .end local v1    # "_arg1":Landroid/content/Intent;
    :pswitch_2e3
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityTaskManager$Stub;->getTopVisibleActivity()Landroid/content/Intent;

    move-result-object v0

    .line 2375
    .local v0, "_result":Landroid/content/Intent;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2376
    invoke-virtual {v12, v0, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2377
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_ec5

    .line 2364
    .end local v0    # "_result":Landroid/content/Intent;
    :pswitch_2f2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2366
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 2367
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2368
    invoke-virtual {v13, v0, v1}, Landroid/app/IActivityTaskManager$Stub;->setPackageAskScreenCompat(Ljava/lang/String;Z)V

    .line 2369
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2370
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_ec5

    .line 2354
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Z
    :pswitch_308
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2355
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2356
    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->getPackageAskScreenCompat(Ljava/lang/String;)Z

    move-result v1

    .line 2357
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2358
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2359
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_ec5

    .line 2343
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_31e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2345
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2346
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2347
    invoke-virtual {v13, v0, v1}, Landroid/app/IActivityTaskManager$Stub;->setPackageScreenCompatMode(Ljava/lang/String;I)V

    .line 2348
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2349
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_ec5

    .line 2333
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :pswitch_334
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2334
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2335
    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->getPackageScreenCompatMode(Ljava/lang/String;)I

    move-result v1

    .line 2336
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2337
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2338
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_ec5

    .line 2322
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":I
    :pswitch_34a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/service/voice/IVoiceInteractionSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/voice/IVoiceInteractionSession;

    move-result-object v0

    .line 2324
    .local v0, "_arg0":Landroid/service/voice/IVoiceInteractionSession;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 2325
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2326
    invoke-virtual {v13, v0, v1}, Landroid/app/IActivityTaskManager$Stub;->setVoiceKeepAwake(Landroid/service/voice/IVoiceInteractionSession;Z)V

    .line 2327
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2328
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_ec5

    .line 2311
    .end local v0    # "_arg0":Landroid/service/voice/IVoiceInteractionSession;
    .end local v1    # "_arg1":Z
    :pswitch_364
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IActivityController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityController;

    move-result-object v0

    .line 2313
    .local v0, "_arg0":Landroid/app/IActivityController;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 2314
    .restart local v1    # "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2315
    invoke-virtual {v13, v0, v1}, Landroid/app/IActivityTaskManager$Stub;->setActivityController(Landroid/app/IActivityController;Z)V

    .line 2316
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2317
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_ec5

    .line 2304
    .end local v0    # "_arg0":Landroid/app/IActivityController;
    .end local v1    # "_arg1":Z
    :pswitch_37e
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityTaskManager$Stub;->resumeAppSwitches()V

    .line 2305
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2306
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_ec5

    .line 2298
    :pswitch_389
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityTaskManager$Stub;->stopAppSwitches()V

    .line 2299
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2300
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_ec5

    .line 2290
    :pswitch_394
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2291
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2292
    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->setPersistentVrThread(I)V

    .line 2293
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2294
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_ec5

    .line 2281
    .end local v0    # "_arg0":I
    :pswitch_3a6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2282
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2283
    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->setVrThread(I)V

    .line 2284
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2285
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_ec5

    .line 2272
    .end local v0    # "_arg0":I
    :pswitch_3b8
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 2273
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2274
    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->alwaysShowUnsupportedCompileSdkWarning(Landroid/content/ComponentName;)V

    .line 2275
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2276
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_ec5

    .line 2261
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    :pswitch_3ce
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2263
    .local v0, "_arg0":I
    sget-object v1, Landroid/view/RemoteAnimationDefinition;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/RemoteAnimationDefinition;

    .line 2264
    .local v1, "_arg1":Landroid/view/RemoteAnimationDefinition;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2265
    invoke-virtual {v13, v0, v1}, Landroid/app/IActivityTaskManager$Stub;->registerRemoteAnimationsForDisplay(ILandroid/view/RemoteAnimationDefinition;)V

    .line 2266
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2267
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_ec5

    .line 2248
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/view/RemoteAnimationDefinition;
    :pswitch_3e8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 2250
    .local v0, "_arg0":Ljava/lang/String;
    sget-object v1, Landroid/view/RemoteAnimationAdapter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/RemoteAnimationAdapter;

    .line 2252
    .local v1, "_arg1":Landroid/view/RemoteAnimationAdapter;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 2253
    .local v2, "_arg2":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2254
    invoke-virtual {v13, v0, v1, v2}, Landroid/app/IActivityTaskManager$Stub;->registerRemoteAnimationForNextActivityStart(Ljava/lang/String;Landroid/view/RemoteAnimationAdapter;Landroid/os/IBinder;)V

    .line 2255
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2256
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_ec5

    .line 2237
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/view/RemoteAnimationAdapter;
    .end local v2    # "_arg2":Landroid/os/IBinder;
    :pswitch_406
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2239
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2240
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2241
    invoke-virtual {v13, v0, v1}, Landroid/app/IActivityTaskManager$Stub;->updateLockTaskFeatures(II)V

    .line 2242
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2243
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_ec5

    .line 2227
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_41c
    sget-object v0, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/Configuration;

    .line 2228
    .local v0, "_arg0":Landroid/content/res/Configuration;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2229
    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->updateConfiguration(Landroid/content/res/Configuration;)Z

    move-result v1

    .line 2230
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2231
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2232
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_ec5

    .line 2219
    .end local v0    # "_arg0":Landroid/content/res/Configuration;
    .end local v1    # "_result":Z
    :pswitch_436
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityTaskManager$Stub;->getLastResumedActivityUserId()I

    move-result v0

    .line 2220
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2221
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2222
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_ec5

    .line 2210
    .end local v0    # "_result":I
    :pswitch_445
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2211
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2212
    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->takeTaskSnapshot(I)Landroid/window/TaskSnapshot;

    move-result-object v1

    .line 2213
    .local v1, "_result":Landroid/window/TaskSnapshot;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2214
    invoke-virtual {v12, v1, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2215
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_ec5

    .line 2198
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Landroid/window/TaskSnapshot;
    :pswitch_45b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2200
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 2201
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2202
    invoke-virtual {v13, v0, v1}, Landroid/app/IActivityTaskManager$Stub;->getTaskSnapshot(IZ)Landroid/window/TaskSnapshot;

    move-result-object v2

    .line 2203
    .local v2, "_result":Landroid/window/TaskSnapshot;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2204
    invoke-virtual {v12, v2, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2205
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_ec5

    .line 2189
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    .end local v2    # "_result":Landroid/window/TaskSnapshot;
    :pswitch_475
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2190
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2191
    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->cancelTaskWindowTransition(I)V

    .line 2192
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2193
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_ec5

    .line 2181
    .end local v0    # "_arg0":I
    :pswitch_487
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityTaskManager$Stub;->getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;

    move-result-object v0

    .line 2182
    .local v0, "_result":Landroid/content/pm/ConfigurationInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2183
    invoke-virtual {v12, v0, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2184
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_ec5

    .line 2174
    .end local v0    # "_result":Landroid/content/pm/ConfigurationInfo;
    :pswitch_496
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityTaskManager$Stub;->supportsLocalVoiceInteraction()Z

    move-result v0

    .line 2175
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2176
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2177
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_ec5

    .line 2166
    .end local v0    # "_result":Z
    :pswitch_4a5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 2167
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2168
    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->setSplitScreenResizing(Z)V

    .line 2169
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2170
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_ec5

    .line 2158
    .end local v0    # "_arg0":Z
    :pswitch_4b7
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityTaskManager$Stub;->getWindowOrganizerController()Landroid/window/IWindowOrganizerController;

    move-result-object v0

    .line 2159
    .local v0, "_result":Landroid/window/IWindowOrganizerController;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2160
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 2161
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_ec5

    .line 2150
    .end local v0    # "_result":Landroid/window/IWindowOrganizerController;
    :pswitch_4c6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 2151
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2152
    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->suppressResizeConfigChanges(Z)V

    .line 2153
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2154
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_ec5

    .line 2141
    .end local v0    # "_arg0":Z
    :pswitch_4d8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2142
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2143
    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->keyguardGoingAway(I)V

    .line 2144
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2145
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_ec5

    .line 2127
    .end local v0    # "_arg0":I
    :pswitch_4ea
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IAssistDataReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IAssistDataReceiver;

    move-result-object v0

    .line 2129
    .local v0, "_arg0":Landroid/app/IAssistDataReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2131
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2132
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2133
    invoke-virtual {v13, v0, v1, v2}, Landroid/app/IActivityTaskManager$Stub;->requestAssistDataForTask(Landroid/app/IAssistDataReceiver;ILjava/lang/String;)Z

    move-result v3

    .line 2134
    .local v3, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2135
    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2136
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_ec5

    .line 2119
    .end local v0    # "_arg0":Landroid/app/IAssistDataReceiver;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_50c
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityTaskManager$Stub;->isAssistDataAllowedOnCurrentActivity()Z

    move-result v0

    .line 2120
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2121
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2122
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_ec5

    .line 2104
    .end local v0    # "_result":Z
    :pswitch_51b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IAssistDataReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IAssistDataReceiver;

    move-result-object v0

    .line 2106
    .local v0, "_arg0":Landroid/app/IAssistDataReceiver;
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 2108
    .local v1, "_arg1":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 2110
    .local v2, "_arg2":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2111
    .local v3, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2112
    invoke-virtual {v13, v0, v1, v2, v3}, Landroid/app/IActivityTaskManager$Stub;->requestAutofillData(Landroid/app/IAssistDataReceiver;Landroid/os/Bundle;Landroid/os/IBinder;I)Z

    move-result v4

    .line 2113
    .local v4, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2114
    invoke-virtual {v12, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2115
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_ec5

    .line 2084
    .end local v0    # "_arg0":Landroid/app/IAssistDataReceiver;
    .end local v1    # "_arg1":Landroid/os/Bundle;
    .end local v2    # "_arg2":Landroid/os/IBinder;
    .end local v3    # "_arg3":I
    .end local v4    # "_result":Z
    :pswitch_545
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 2086
    .local v7, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IAssistDataReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IAssistDataReceiver;

    move-result-object v8

    .line 2088
    .local v8, "_arg1":Landroid/app/IAssistDataReceiver;
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/os/Bundle;

    .line 2090
    .local v9, "_arg2":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v16

    .line 2092
    .local v16, "_arg3":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v17

    .line 2094
    .local v17, "_arg4":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v18

    .line 2095
    .local v18, "_arg5":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2096
    move-object/from16 v0, p0

    move v1, v7

    move-object v2, v8

    move-object v3, v9

    move-object/from16 v4, v16

    move/from16 v5, v17

    move/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/app/IActivityTaskManager$Stub;->requestAssistContextExtras(ILandroid/app/IAssistDataReceiver;Landroid/os/Bundle;Landroid/os/IBinder;ZZ)Z

    move-result v0

    .line 2097
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2098
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2099
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_ec5

    .line 2074
    .end local v0    # "_result":Z
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":Landroid/app/IAssistDataReceiver;
    .end local v9    # "_arg2":Landroid/os/Bundle;
    .end local v16    # "_arg3":Landroid/os/IBinder;
    .end local v17    # "_arg4":Z
    .end local v18    # "_arg5":Z
    :pswitch_583
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2075
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2076
    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->getAssistContextExtras(I)Landroid/os/Bundle;

    move-result-object v1

    .line 2077
    .local v1, "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2078
    invoke-virtual {v12, v1, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2079
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_ec5

    .line 2063
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Landroid/os/Bundle;
    :pswitch_599
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 2065
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 2066
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2067
    invoke-virtual {v13, v0, v1}, Landroid/app/IActivityTaskManager$Stub;->setLockScreenShown(ZZ)V

    .line 2068
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2069
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_ec5

    .line 2049
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":Z
    :pswitch_5af
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2051
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2053
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2054
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2055
    invoke-virtual {v13, v0, v1, v2}, Landroid/app/IActivityTaskManager$Stub;->getRootTaskInfoOnDisplay(III)Landroid/app/ActivityTaskManager$RootTaskInfo;

    move-result-object v3

    .line 2056
    .local v3, "_result":Landroid/app/ActivityTaskManager$RootTaskInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2057
    invoke-virtual {v12, v3, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2058
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_ec5

    .line 2039
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Landroid/app/ActivityTaskManager$RootTaskInfo;
    :pswitch_5cd
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2040
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2041
    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->getAllRootTaskInfosOnDisplay(I)Ljava/util/List;

    move-result-object v1

    .line 2042
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityTaskManager$RootTaskInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2043
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 2044
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_ec5

    .line 2027
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityTaskManager$RootTaskInfo;>;"
    :pswitch_5e3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2029
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2030
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2031
    invoke-virtual {v13, v0, v1}, Landroid/app/IActivityTaskManager$Stub;->getRootTaskInfo(II)Landroid/app/ActivityTaskManager$RootTaskInfo;

    move-result-object v2

    .line 2032
    .local v2, "_result":Landroid/app/ActivityTaskManager$RootTaskInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2033
    invoke-virtual {v12, v2, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2034
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_ec5

    .line 2019
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Landroid/app/ActivityTaskManager$RootTaskInfo;
    :pswitch_5fd
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityTaskManager$Stub;->getAllRootTaskInfos()Ljava/util/List;

    move-result-object v0

    .line 2020
    .local v0, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityTaskManager$RootTaskInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2021
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 2022
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_ec5

    .line 2011
    .end local v0    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityTaskManager$RootTaskInfo;>;"
    :pswitch_60c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 2012
    .local v0, "_arg0":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2013
    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->removeRootTasksWithActivityTypes([I)V

    .line 2014
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2015
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_ec5

    .line 2002
    .end local v0    # "_arg0":[I
    :pswitch_61e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 2003
    .restart local v0    # "_arg0":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2004
    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->removeRootTasksInWindowingModes([I)V

    .line 2005
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2006
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_ec5

    .line 1989
    .end local v0    # "_arg0":[I
    :pswitch_630
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1991
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1993
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1994
    .local v2, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1995
    invoke-virtual {v13, v0, v1, v2}, Landroid/app/IActivityTaskManager$Stub;->moveTaskToRootTask(IIZ)V

    .line 1996
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1997
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_ec5

    .line 1978
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Z
    :pswitch_64a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1980
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1981
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1982
    invoke-virtual {v13, v0, v1}, Landroid/app/IActivityTaskManager$Stub;->moveRootTaskToDisplay(II)V

    .line 1983
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1984
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_ec5

    .line 1964
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_660
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1966
    .restart local v0    # "_arg0":I
    sget-object v1, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 1968
    .local v1, "_arg1":Landroid/graphics/Rect;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1969
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1970
    invoke-virtual {v13, v0, v1, v2}, Landroid/app/IActivityTaskManager$Stub;->resizeTask(ILandroid/graphics/Rect;I)Z

    move-result v3

    .line 1971
    .local v3, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1972
    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1973
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_ec5

    .line 1954
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/graphics/Rect;
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Z
    :pswitch_682
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1955
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1956
    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->isSupportFreeFormInDesktopMode(I)Z

    move-result v1

    .line 1957
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1958
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1959
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_ec5

    .line 1946
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_698
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityTaskManager$Stub;->getNavBarPosition()I

    move-result v0

    .line 1947
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1948
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1949
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_ec5

    .line 1934
    .end local v0    # "_result":I
    :pswitch_6a7
    sget-object v0, Landroid/app/ActivityManager$RunningTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1936
    .local v0, "_arg0":Landroid/app/ActivityManager$RunningTaskInfo;
    sget-object v1, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 1938
    .local v1, "_arg1":Landroid/graphics/Rect;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1939
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1940
    invoke-virtual {v13, v0, v1, v2}, Landroid/app/IActivityTaskManager$Stub;->launchFlashBackFromBackGround(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/graphics/Rect;I)V

    .line 1941
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1942
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_ec5

    .line 1920
    .end local v0    # "_arg0":Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v1    # "_arg1":Landroid/graphics/Rect;
    .end local v2    # "_arg2":I
    :pswitch_6c9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    .line 1922
    .local v0, "_arg0":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    .line 1924
    .local v1, "_arg1":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1925
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1926
    invoke-virtual {v13, v0, v1, v2}, Landroid/app/IActivityTaskManager$Stub;->isInFreeFormControlRegon(FFI)Z

    move-result v3

    .line 1927
    .restart local v3    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1928
    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1929
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_ec5

    .line 1912
    .end local v0    # "_arg0":F
    .end local v1    # "_arg1":F
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Z
    :pswitch_6e7
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityTaskManager$Stub;->getMiuiFreeFormManagerService()Landroid/os/IBinder;

    move-result-object v0

    .line 1913
    .local v0, "_result":Landroid/os/IBinder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1914
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1915
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_ec5

    .line 1903
    .end local v0    # "_result":Landroid/os/IBinder;
    :pswitch_6f6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1904
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1905
    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->isTopActivityInFreeform(Ljava/lang/String;)Z

    move-result v1

    .line 1906
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1907
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1908
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_ec5

    .line 1890
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_70c
    sget-object v0, Landroid/app/ActivityTaskManager$RootTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityTaskManager$RootTaskInfo;

    .line 1892
    .local v0, "_arg0":Landroid/app/ActivityTaskManager$RootTaskInfo;
    sget-object v1, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 1894
    .local v1, "_arg1":Landroid/graphics/Rect;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1895
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1896
    invoke-virtual {v13, v0, v1, v2}, Landroid/app/IActivityTaskManager$Stub;->launchSmallFreeFormWindow(Landroid/app/ActivityTaskManager$RootTaskInfo;Landroid/graphics/Rect;I)V

    .line 1897
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1898
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_ec5

    .line 1878
    .end local v0    # "_arg0":Landroid/app/ActivityTaskManager$RootTaskInfo;
    .end local v1    # "_arg1":Landroid/graphics/Rect;
    .end local v2    # "_arg2":I
    :pswitch_72e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1880
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1881
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1882
    invoke-virtual {v13, v0, v1}, Landroid/app/IActivityTaskManager$Stub;->handleFreeformModeRequst(Landroid/os/IBinder;I)I

    move-result v2

    .line 1883
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1884
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1885
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_ec5

    .line 1868
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":I
    :pswitch_748
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1869
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1870
    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->getTaskResizeableForFreeform(I)Z

    move-result v1

    .line 1871
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1872
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1873
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_ec5

    .line 1857
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_75e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1859
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1860
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1861
    invoke-virtual {v13, v0, v1}, Landroid/app/IActivityTaskManager$Stub;->setTaskResizeable(II)V

    .line 1862
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1863
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_ec5

    .line 1848
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_774
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/ITaskStackListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/ITaskStackListener;

    move-result-object v0

    .line 1849
    .local v0, "_arg0":Landroid/app/ITaskStackListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1850
    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->unregisterTaskStackListener(Landroid/app/ITaskStackListener;)V

    .line 1851
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1852
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_ec5

    .line 1839
    .end local v0    # "_arg0":Landroid/app/ITaskStackListener;
    :pswitch_78a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/ITaskStackListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/ITaskStackListener;

    move-result-object v0

    .line 1840
    .restart local v0    # "_arg0":Landroid/app/ITaskStackListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1841
    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->registerTaskStackListener(Landroid/app/ITaskStackListener;)V

    .line 1842
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1843
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_ec5

    .line 1827
    .end local v0    # "_arg0":Landroid/app/ITaskStackListener;
    :pswitch_7a0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1829
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1830
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1831
    invoke-virtual {v13, v0, v1}, Landroid/app/IActivityTaskManager$Stub;->getTaskDescriptionIcon(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1832
    .local v2, "_result":Landroid/graphics/Bitmap;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1833
    invoke-virtual {v12, v2, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1834
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_ec5

    .line 1819
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Landroid/graphics/Bitmap;
    :pswitch_7ba
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v0

    .line 1820
    .local v0, "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1821
    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->releaseSomeActivities(Landroid/app/IApplicationThread;)V

    .line 1822
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_ec5

    .line 1811
    .end local v0    # "_arg0":Landroid/app/IApplicationThread;
    :pswitch_7cd
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityTaskManager$Stub;->getAppTaskThumbnailSize()Landroid/graphics/Point;

    move-result-object v0

    .line 1812
    .local v0, "_result":Landroid/graphics/Point;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1813
    invoke-virtual {v12, v0, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1814
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_ec5

    .line 1796
    .end local v0    # "_result":Landroid/graphics/Point;
    :pswitch_7dc
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1798
    .local v0, "_arg0":Landroid/os/IBinder;
    sget-object v1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 1800
    .local v1, "_arg1":Landroid/content/Intent;
    sget-object v2, Landroid/app/ActivityManager$TaskDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$TaskDescription;

    .line 1802
    .local v2, "_arg2":Landroid/app/ActivityManager$TaskDescription;
    sget-object v3, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    .line 1803
    .local v3, "_arg3":Landroid/graphics/Bitmap;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1804
    invoke-virtual {v13, v0, v1, v2, v3}, Landroid/app/IActivityTaskManager$Stub;->addAppTask(Landroid/os/IBinder;Landroid/content/Intent;Landroid/app/ActivityManager$TaskDescription;Landroid/graphics/Bitmap;)I

    move-result v4

    .line 1805
    .local v4, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1806
    invoke-virtual {v12, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1807
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_ec5

    .line 1787
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Landroid/content/Intent;
    .end local v2    # "_arg2":Landroid/app/ActivityManager$TaskDescription;
    .end local v3    # "_arg3":Landroid/graphics/Bitmap;
    .end local v4    # "_result":I
    :pswitch_80a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/service/voice/IVoiceInteractionSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/voice/IVoiceInteractionSession;

    move-result-object v0

    .line 1788
    .local v0, "_arg0":Landroid/service/voice/IVoiceInteractionSession;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1789
    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->finishVoiceTask(Landroid/service/voice/IVoiceInteractionSession;)V

    .line 1790
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1791
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_ec5

    .line 1780
    .end local v0    # "_arg0":Landroid/service/voice/IVoiceInteractionSession;
    :pswitch_820
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityTaskManager$Stub;->stopSystemLockTaskMode()V

    .line 1781
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1782
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_ec5

    .line 1772
    :pswitch_82b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1773
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1774
    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->startSystemLockTaskMode(I)V

    .line 1775
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1776
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_ec5

    .line 1762
    .end local v0    # "_arg0":I
    :pswitch_83d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1763
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1764
    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->getAppTasks(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 1765
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1766
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBinderList(Ljava/util/List;)V

    .line 1767
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_ec5

    .line 1754
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    :pswitch_853
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityTaskManager$Stub;->getLockTaskModeState()I

    move-result v0

    .line 1755
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1756
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1757
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_ec5

    .line 1747
    .end local v0    # "_result":I
    :pswitch_862
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityTaskManager$Stub;->isInLockTaskMode()Z

    move-result v0

    .line 1748
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1749
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1750
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_ec5

    .line 1737
    .end local v0    # "_result":Z
    :pswitch_871
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1739
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 1740
    .local v1, "_arg1":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1741
    invoke-virtual {v13, v0, v1}, Landroid/app/IActivityTaskManager$Stub;->updateLockTaskPackages(I[Ljava/lang/String;)V

    .line 1742
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1743
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_ec5

    .line 1728
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":[Ljava/lang/String;
    :pswitch_887
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1729
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1730
    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->cancelRecentsAnimation(Z)V

    .line 1731
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1732
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_ec5

    .line 1718
    .end local v0    # "_arg0":Z
    :pswitch_899
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1719
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1720
    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->getTaskBounds(I)Landroid/graphics/Rect;

    move-result-object v1

    .line 1721
    .local v1, "_result":Landroid/graphics/Rect;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1722
    invoke-virtual {v12, v1, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1723
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_ec5

    .line 1710
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Landroid/graphics/Rect;
    :pswitch_8af
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityTaskManager$Stub;->getFocusedRootTaskInfo()Landroid/app/ActivityTaskManager$RootTaskInfo;

    move-result-object v0

    .line 1711
    .local v0, "_result":Landroid/app/ActivityTaskManager$RootTaskInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1712
    invoke-virtual {v12, v0, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1713
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_ec5

    .line 1702
    .end local v0    # "_result":Landroid/app/ActivityTaskManager$RootTaskInfo;
    :pswitch_8be
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1703
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1704
    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->setFocusedRootTask(I)V

    .line 1705
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1706
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_ec5

    .line 1685
    .end local v0    # "_arg0":I
    :pswitch_8d0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 1687
    .local v6, "_arg0":Landroid/os/IBinder;
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/os/Bundle;

    .line 1689
    .local v7, "_arg1":Landroid/os/Bundle;
    sget-object v0, Landroid/app/assist/AssistStructure;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/app/assist/AssistStructure;

    .line 1691
    .local v8, "_arg2":Landroid/app/assist/AssistStructure;
    sget-object v0, Landroid/app/assist/AssistContent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/app/assist/AssistContent;

    .line 1693
    .local v9, "_arg3":Landroid/app/assist/AssistContent;
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/net/Uri;

    .line 1694
    .local v16, "_arg4":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1695
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move-object v3, v8

    move-object v4, v9

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/app/IActivityTaskManager$Stub;->reportAssistContextExtras(Landroid/os/IBinder;Landroid/os/Bundle;Landroid/app/assist/AssistStructure;Landroid/app/assist/AssistContent;Landroid/net/Uri;)V

    .line 1696
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1697
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_ec5

    .line 1675
    .end local v6    # "_arg0":Landroid/os/IBinder;
    .end local v7    # "_arg1":Landroid/os/Bundle;
    .end local v8    # "_arg2":Landroid/app/assist/AssistStructure;
    .end local v9    # "_arg3":Landroid/app/assist/AssistContent;
    .end local v16    # "_arg4":Landroid/net/Uri;
    :pswitch_90f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1676
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1677
    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->getTaskDescription(I)Landroid/app/ActivityManager$TaskDescription;

    move-result-object v1

    .line 1678
    .local v1, "_result":Landroid/app/ActivityManager$TaskDescription;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1679
    invoke-virtual {v12, v1, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1680
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_ec5

    .line 1667
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Landroid/app/ActivityManager$TaskDescription;
    :pswitch_925
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityTaskManager$Stub;->isTopActivityImmersive()Z

    move-result v0

    .line 1668
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1669
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1670
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_ec5

    .line 1654
    .end local v0    # "_result":Z
    :pswitch_934
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1656
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1658
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1659
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1660
    invoke-virtual {v13, v0, v1, v2}, Landroid/app/IActivityTaskManager$Stub;->getRecentTasks(III)Landroid/content/pm/ParceledListSlice;

    move-result-object v3

    .line 1661
    .local v3, "_result":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1662
    invoke-virtual {v12, v3, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1663
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_ec5

    .line 1637
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    :pswitch_952
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v6

    .line 1639
    .local v6, "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1641
    .local v7, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1643
    .local v8, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1645
    .local v9, "_arg3":I
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/os/Bundle;

    .line 1646
    .local v16, "_arg4":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1647
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move v3, v8

    move v4, v9

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/app/IActivityTaskManager$Stub;->moveTaskToFront(Landroid/app/IApplicationThread;Ljava/lang/String;IILandroid/os/Bundle;)V

    .line 1648
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1649
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_ec5

    .line 1623
    .end local v6    # "_arg0":Landroid/app/IApplicationThread;
    .end local v7    # "_arg1":Ljava/lang/String;
    .end local v8    # "_arg2":I
    .end local v9    # "_arg3":I
    .end local v16    # "_arg4":Landroid/os/Bundle;
    :pswitch_986
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1625
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1627
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1628
    .local v2, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1629
    invoke-virtual {v13, v0, v1, v2}, Landroid/app/IActivityTaskManager$Stub;->getTasks(IZZ)Ljava/util/List;

    move-result-object v3

    .line 1630
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1631
    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1632
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_ec5

    .line 1616
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    .end local v2    # "_arg2":Z
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :pswitch_9a4
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityTaskManager$Stub;->removeAllVisibleRecentTasks()V

    .line 1617
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1618
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_ec5

    .line 1607
    :pswitch_9af
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1608
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1609
    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->removeTask(I)Z

    move-result v1

    .line 1610
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1611
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1612
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_ec5

    .line 1598
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_9c5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1599
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1600
    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->setFocusedTask(I)V

    .line 1601
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1602
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_ec5

    .line 1589
    .end local v0    # "_arg0":I
    :pswitch_9d7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1590
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1591
    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->setFrontActivityScreenCompatMode(I)V

    .line 1592
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1593
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_ec5

    .line 1581
    .end local v0    # "_arg0":I
    :pswitch_9e9
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityTaskManager$Stub;->getFrontActivityScreenCompatMode()I

    move-result v0

    .line 1582
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1583
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1584
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_ec5

    .line 1574
    .end local v0    # "_result":I
    :pswitch_9f8
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityTaskManager$Stub;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object v0

    .line 1575
    .local v0, "_result":Landroid/app/IActivityClientController;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1576
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 1577
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_ec5

    .line 1568
    .end local v0    # "_result":Landroid/app/IActivityClientController;
    :pswitch_a07
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityTaskManager$Stub;->unhandledBack()V

    .line 1569
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1570
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_ec5

    .line 1553
    :pswitch_a12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1555
    .local v0, "_arg0":I
    sget-object v1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 1557
    .local v1, "_arg1":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1559
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1560
    .local v3, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1561
    invoke-virtual {v13, v0, v1, v2, v3}, Landroid/app/IActivityTaskManager$Stub;->isActivityStartAllowedOnDisplay(ILandroid/content/Intent;Ljava/lang/String;I)Z

    move-result v4

    .line 1562
    .local v4, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1563
    invoke-virtual {v12, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1564
    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_ec5

    .line 1521
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/content/Intent;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":I
    .end local v4    # "_result":Z
    :pswitch_a38
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v16

    .line 1523
    .local v16, "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 1525
    .local v17, "_arg1":Ljava/lang/String;
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Landroid/content/Intent;

    .line 1527
    .local v18, "_arg2":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 1529
    .local v19, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v20

    .line 1531
    .local v20, "_arg4":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v21

    .line 1533
    .local v21, "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .line 1535
    .local v22, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .line 1537
    .local v23, "_arg7":I
    sget-object v0, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v24, v0

    check-cast v24, Landroid/app/ProfilerInfo;

    .line 1539
    .local v24, "_arg8":Landroid/app/ProfilerInfo;
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v25, v0

    check-cast v25, Landroid/os/Bundle;

    .line 1541
    .local v25, "_arg9":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v26

    .line 1543
    .local v26, "_arg10":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 1544
    .local v27, "_arg11":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1545
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    move-object/from16 v4, v19

    move-object/from16 v5, v20

    move-object/from16 v6, v21

    move/from16 v7, v22

    move/from16 v8, v23

    move-object/from16 v9, v24

    move v14, v10

    move-object/from16 v10, v25

    move-object/from16 v28, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .local v28, "descriptor":Ljava/lang/String;
    move/from16 v11, v26

    move-object v14, v12

    move/from16 v12, v27

    invoke-virtual/range {v0 .. v12}, Landroid/app/IActivityTaskManager$Stub;->startActivityAsCaller(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;ZI)I

    move-result v0

    .line 1546
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1547
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1548
    goto/16 :goto_ec5

    .line 1509
    .end local v0    # "_result":I
    .end local v16    # "_arg0":Landroid/app/IApplicationThread;
    .end local v17    # "_arg1":Ljava/lang/String;
    .end local v18    # "_arg2":Landroid/content/Intent;
    .end local v19    # "_arg3":Ljava/lang/String;
    .end local v20    # "_arg4":Landroid/os/IBinder;
    .end local v21    # "_arg5":Ljava/lang/String;
    .end local v22    # "_arg6":I
    .end local v23    # "_arg7":I
    .end local v24    # "_arg8":Landroid/app/ProfilerInfo;
    .end local v25    # "_arg9":Landroid/os/Bundle;
    .end local v26    # "_arg10":Z
    .end local v27    # "_arg11":I
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_aab
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1511
    .local v0, "_arg0":I
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 1512
    .local v1, "_arg1":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1513
    invoke-virtual {v13, v0, v1}, Landroid/app/IActivityTaskManager$Stub;->startActivityFromRecents(ILandroid/os/Bundle;)I

    move-result v2

    .line 1514
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1515
    invoke-virtual {v14, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1516
    goto/16 :goto_ec5

    .line 1496
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/os/Bundle;
    .end local v2    # "_result":I
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_ac9
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 1498
    .local v0, "_arg0":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 1500
    .local v1, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/view/IRecentsAnimationRunner$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IRecentsAnimationRunner;

    move-result-object v3

    .line 1501
    .local v3, "_arg2":Landroid/view/IRecentsAnimationRunner;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1502
    invoke-virtual {v13, v0, v1, v2, v3}, Landroid/app/IActivityTaskManager$Stub;->startRecentsActivity(Landroid/content/Intent;JLandroid/view/IRecentsAnimationRunner;)V

    .line 1503
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1504
    goto/16 :goto_ec5

    .line 1472
    .end local v0    # "_arg0":Landroid/content/Intent;
    .end local v1    # "_arg1":J
    .end local v3    # "_arg2":Landroid/view/IRecentsAnimationRunner;
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_aeb
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v9

    .line 1474
    .local v9, "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 1476
    .local v10, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 1478
    .local v11, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 1480
    .local v12, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 1482
    .local v16, "_arg4":I
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Landroid/content/Intent;

    .line 1484
    .local v17, "_arg5":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 1486
    .local v18, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 1487
    .local v19, "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1488
    move-object/from16 v0, p0

    move-object v1, v9

    move-object v2, v10

    move-object v3, v11

    move v4, v12

    move/from16 v5, v16

    move-object/from16 v6, v17

    move/from16 v7, v18

    move/from16 v8, v19

    invoke-virtual/range {v0 .. v8}, Landroid/app/IActivityTaskManager$Stub;->startActivityFromGameSession(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;IILandroid/content/Intent;II)I

    move-result v0

    .line 1489
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1490
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1491
    goto/16 :goto_ec5

    .line 1448
    .end local v0    # "_result":I
    .end local v9    # "_arg0":Landroid/app/IApplicationThread;
    .end local v10    # "_arg1":Ljava/lang/String;
    .end local v12    # "_arg3":I
    .end local v16    # "_arg4":I
    .end local v17    # "_arg5":Landroid/content/Intent;
    .end local v18    # "_arg6":I
    .end local v19    # "_arg7":I
    .end local v28    # "descriptor":Ljava/lang/String;
    .local v11, "descriptor":Ljava/lang/String;
    :pswitch_b35
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 1450
    .local v9, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 1452
    .restart local v10    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 1454
    .local v11, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 1456
    .restart local v12    # "_arg3":I
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/content/Intent;

    .line 1458
    .local v16, "_arg4":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 1460
    .local v17, "_arg5":Ljava/lang/String;
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Landroid/os/Bundle;

    .line 1462
    .local v18, "_arg6":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 1463
    .restart local v19    # "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1464
    move-object/from16 v0, p0

    move-object v1, v9

    move-object v2, v10

    move v3, v11

    move v4, v12

    move-object/from16 v5, v16

    move-object/from16 v6, v17

    move-object/from16 v7, v18

    move/from16 v8, v19

    invoke-virtual/range {v0 .. v8}, Landroid/app/IActivityTaskManager$Stub;->startAssistantActivity(Ljava/lang/String;Ljava/lang/String;IILandroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;I)I

    move-result v0

    .line 1465
    .restart local v0    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1466
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1467
    goto/16 :goto_ec5

    .line 1438
    .end local v0    # "_result":I
    .end local v9    # "_arg0":Ljava/lang/String;
    .end local v10    # "_arg1":Ljava/lang/String;
    .end local v12    # "_arg3":I
    .end local v16    # "_arg4":Landroid/content/Intent;
    .end local v17    # "_arg5":Ljava/lang/String;
    .end local v18    # "_arg6":Landroid/os/Bundle;
    .end local v19    # "_arg7":I
    .end local v28    # "descriptor":Ljava/lang/String;
    .local v11, "descriptor":Ljava/lang/String;
    :pswitch_b81
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1439
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1440
    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->getVoiceInteractorPackageName(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v1

    .line 1441
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1442
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1443
    goto/16 :goto_ec5

    .line 1406
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_result":Ljava/lang/String;
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_b97
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 1408
    .local v16, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 1410
    .local v17, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 1412
    .local v18, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 1414
    .local v19, "_arg3":I
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v20, v0

    check-cast v20, Landroid/content/Intent;

    .line 1416
    .local v20, "_arg4":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v21

    .line 1418
    .restart local v21    # "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/service/voice/IVoiceInteractionSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/voice/IVoiceInteractionSession;

    move-result-object v22

    .line 1420
    .local v22, "_arg6":Landroid/service/voice/IVoiceInteractionSession;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IVoiceInteractor$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractor;

    move-result-object v23

    .line 1422
    .local v23, "_arg7":Lcom/android/internal/app/IVoiceInteractor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    .line 1424
    .local v24, "_arg8":I
    sget-object v0, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v25, v0

    check-cast v25, Landroid/app/ProfilerInfo;

    .line 1426
    .local v25, "_arg9":Landroid/app/ProfilerInfo;
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v26, v0

    check-cast v26, Landroid/os/Bundle;

    .line 1428
    .local v26, "_arg10":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 1429
    .restart local v27    # "_arg11":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1430
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move/from16 v3, v18

    move/from16 v4, v19

    move-object/from16 v5, v20

    move-object/from16 v6, v21

    move-object/from16 v7, v22

    move-object/from16 v8, v23

    move/from16 v9, v24

    move-object/from16 v10, v25

    move-object/from16 v11, v26

    move/from16 v12, v27

    invoke-virtual/range {v0 .. v12}, Landroid/app/IActivityTaskManager$Stub;->startVoiceActivity(Ljava/lang/String;Ljava/lang/String;IILandroid/content/Intent;Ljava/lang/String;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;ILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I

    move-result v0

    .line 1431
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1432
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1433
    goto/16 :goto_ec5

    .line 1374
    .end local v0    # "_result":I
    .end local v16    # "_arg0":Ljava/lang/String;
    .end local v17    # "_arg1":Ljava/lang/String;
    .end local v18    # "_arg2":I
    .end local v19    # "_arg3":I
    .end local v20    # "_arg4":Landroid/content/Intent;
    .end local v21    # "_arg5":Ljava/lang/String;
    .end local v22    # "_arg6":Landroid/service/voice/IVoiceInteractionSession;
    .end local v23    # "_arg7":Lcom/android/internal/app/IVoiceInteractor;
    .end local v24    # "_arg8":I
    .end local v25    # "_arg9":Landroid/app/ProfilerInfo;
    .end local v26    # "_arg10":Landroid/os/Bundle;
    .end local v27    # "_arg11":I
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_c0d
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v16

    .line 1376
    .local v16, "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 1378
    .restart local v17    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 1380
    .local v18, "_arg2":Ljava/lang/String;
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v19, v0

    check-cast v19, Landroid/content/Intent;

    .line 1382
    .local v19, "_arg3":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 1384
    .local v20, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v21

    .line 1386
    .local v21, "_arg5":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v22

    .line 1388
    .local v22, "_arg6":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .line 1390
    .local v23, "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    .line 1392
    .restart local v24    # "_arg8":I
    sget-object v0, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v25, v0

    check-cast v25, Landroid/content/res/Configuration;

    .line 1394
    .local v25, "_arg9":Landroid/content/res/Configuration;
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v26, v0

    check-cast v26, Landroid/os/Bundle;

    .line 1396
    .restart local v26    # "_arg10":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 1397
    .restart local v27    # "_arg11":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1398
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    move-object/from16 v4, v19

    move-object/from16 v5, v20

    move-object/from16 v6, v21

    move-object/from16 v7, v22

    move/from16 v8, v23

    move/from16 v9, v24

    move-object/from16 v10, v25

    move-object/from16 v11, v26

    move/from16 v12, v27

    invoke-virtual/range {v0 .. v12}, Landroid/app/IActivityTaskManager$Stub;->startActivityWithConfig(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/content/res/Configuration;Landroid/os/Bundle;I)I

    move-result v0

    .line 1399
    .restart local v0    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1400
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1401
    goto/16 :goto_ec5

    .line 1342
    .end local v0    # "_result":I
    .end local v16    # "_arg0":Landroid/app/IApplicationThread;
    .end local v17    # "_arg1":Ljava/lang/String;
    .end local v18    # "_arg2":Ljava/lang/String;
    .end local v19    # "_arg3":Landroid/content/Intent;
    .end local v20    # "_arg4":Ljava/lang/String;
    .end local v21    # "_arg5":Landroid/os/IBinder;
    .end local v22    # "_arg6":Ljava/lang/String;
    .end local v23    # "_arg7":I
    .end local v24    # "_arg8":I
    .end local v25    # "_arg9":Landroid/content/res/Configuration;
    .end local v26    # "_arg10":Landroid/os/Bundle;
    .end local v27    # "_arg11":I
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_c7f
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v16

    .line 1344
    .restart local v16    # "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 1346
    .restart local v17    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 1348
    .restart local v18    # "_arg2":Ljava/lang/String;
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v19, v0

    check-cast v19, Landroid/content/Intent;

    .line 1350
    .restart local v19    # "_arg3":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 1352
    .restart local v20    # "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v21

    .line 1354
    .restart local v21    # "_arg5":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v22

    .line 1356
    .restart local v22    # "_arg6":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .line 1358
    .restart local v23    # "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    .line 1360
    .restart local v24    # "_arg8":I
    sget-object v0, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v25, v0

    check-cast v25, Landroid/app/ProfilerInfo;

    .line 1362
    .local v25, "_arg9":Landroid/app/ProfilerInfo;
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v26, v0

    check-cast v26, Landroid/os/Bundle;

    .line 1364
    .restart local v26    # "_arg10":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 1365
    .restart local v27    # "_arg11":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1366
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    move-object/from16 v4, v19

    move-object/from16 v5, v20

    move-object/from16 v6, v21

    move-object/from16 v7, v22

    move/from16 v8, v23

    move/from16 v9, v24

    move-object/from16 v10, v25

    move-object/from16 v11, v26

    move/from16 v12, v27

    invoke-virtual/range {v0 .. v12}, Landroid/app/IActivityTaskManager$Stub;->startActivityAndWait(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)Landroid/app/WaitResult;

    move-result-object v0

    .line 1367
    .local v0, "_result":Landroid/app/WaitResult;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1368
    const/4 v1, 0x1

    invoke-virtual {v14, v0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1369
    goto/16 :goto_ec5

    .line 1312
    .end local v0    # "_result":Landroid/app/WaitResult;
    .end local v16    # "_arg0":Landroid/app/IApplicationThread;
    .end local v17    # "_arg1":Ljava/lang/String;
    .end local v18    # "_arg2":Ljava/lang/String;
    .end local v19    # "_arg3":Landroid/content/Intent;
    .end local v20    # "_arg4":Ljava/lang/String;
    .end local v21    # "_arg5":Landroid/os/IBinder;
    .end local v22    # "_arg6":Ljava/lang/String;
    .end local v23    # "_arg7":I
    .end local v24    # "_arg8":I
    .end local v25    # "_arg9":Landroid/app/ProfilerInfo;
    .end local v26    # "_arg10":Landroid/os/Bundle;
    .end local v27    # "_arg11":I
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_cf2
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v12

    .line 1314
    .local v12, "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v16

    .line 1316
    .local v16, "_arg1":Landroid/content/IIntentSender;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v17

    .line 1318
    .local v17, "_arg2":Landroid/os/IBinder;
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Landroid/content/Intent;

    .line 1320
    .local v18, "_arg3":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 1322
    .local v19, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v20

    .line 1324
    .local v20, "_arg5":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v21

    .line 1326
    .local v21, "_arg6":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .line 1328
    .local v22, "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .line 1330
    .local v23, "_arg8":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    .line 1332
    .local v24, "_arg9":I
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v25, v0

    check-cast v25, Landroid/os/Bundle;

    .line 1333
    .local v25, "_arg10":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1334
    move-object/from16 v0, p0

    move-object v1, v12

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    move-object/from16 v5, v19

    move-object/from16 v6, v20

    move-object/from16 v7, v21

    move/from16 v8, v22

    move/from16 v9, v23

    move/from16 v10, v24

    move-object/from16 v11, v25

    invoke-virtual/range {v0 .. v11}, Landroid/app/IActivityTaskManager$Stub;->startActivityIntentSender(Landroid/app/IApplicationThread;Landroid/content/IIntentSender;Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)I

    move-result v0

    .line 1335
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1336
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1337
    goto/16 :goto_ec5

    .line 1302
    .end local v0    # "_result":I
    .end local v12    # "_arg0":Landroid/app/IApplicationThread;
    .end local v16    # "_arg1":Landroid/content/IIntentSender;
    .end local v17    # "_arg2":Landroid/os/IBinder;
    .end local v18    # "_arg3":Landroid/content/Intent;
    .end local v19    # "_arg4":Ljava/lang/String;
    .end local v20    # "_arg5":Landroid/os/IBinder;
    .end local v21    # "_arg6":Ljava/lang/String;
    .end local v22    # "_arg7":I
    .end local v23    # "_arg8":I
    .end local v24    # "_arg9":I
    .end local v25    # "_arg10":Landroid/os/Bundle;
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_d5b
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 1303
    .local v0, "_arg0":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1304
    invoke-virtual {v13, v0}, Landroid/app/IActivityTaskManager$Stub;->startDreamActivity(Landroid/content/Intent;)Z

    move-result v1

    .line 1305
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1306
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1307
    goto/16 :goto_ec5

    .line 1288
    .end local v0    # "_arg0":Landroid/content/Intent;
    .end local v1    # "_result":Z
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_d75
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1290
    .local v0, "_arg0":Landroid/os/IBinder;
    sget-object v1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 1292
    .local v1, "_arg1":Landroid/content/Intent;
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 1293
    .local v2, "_arg2":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1294
    invoke-virtual {v13, v0, v1, v2}, Landroid/app/IActivityTaskManager$Stub;->startNextMatchingActivity(Landroid/os/IBinder;Landroid/content/Intent;Landroid/os/Bundle;)Z

    move-result v3

    .line 1295
    .local v3, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1296
    invoke-virtual {v14, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1297
    goto/16 :goto_ec5

    .line 1256
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Landroid/content/Intent;
    .end local v2    # "_arg2":Landroid/os/Bundle;
    .end local v3    # "_result":Z
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_d9b
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v16

    .line 1258
    .local v16, "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 1260
    .local v17, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 1262
    .local v18, "_arg2":Ljava/lang/String;
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v19, v0

    check-cast v19, Landroid/content/Intent;

    .line 1264
    .local v19, "_arg3":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 1266
    .local v20, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v21

    .line 1268
    .local v21, "_arg5":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v22

    .line 1270
    .local v22, "_arg6":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .line 1272
    .local v23, "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    .line 1274
    .local v24, "_arg8":I
    sget-object v0, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v25, v0

    check-cast v25, Landroid/app/ProfilerInfo;

    .line 1276
    .local v25, "_arg9":Landroid/app/ProfilerInfo;
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v26, v0

    check-cast v26, Landroid/os/Bundle;

    .line 1278
    .restart local v26    # "_arg10":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 1279
    .restart local v27    # "_arg11":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1280
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    move-object/from16 v4, v19

    move-object/from16 v5, v20

    move-object/from16 v6, v21

    move-object/from16 v7, v22

    move/from16 v8, v23

    move/from16 v9, v24

    move-object/from16 v10, v25

    move-object/from16 v11, v26

    move/from16 v12, v27

    invoke-virtual/range {v0 .. v12}, Landroid/app/IActivityTaskManager$Stub;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I

    move-result v0

    .line 1281
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1282
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1283
    goto/16 :goto_ec5

    .line 1232
    .end local v0    # "_result":I
    .end local v16    # "_arg0":Landroid/app/IApplicationThread;
    .end local v17    # "_arg1":Ljava/lang/String;
    .end local v18    # "_arg2":Ljava/lang/String;
    .end local v19    # "_arg3":Landroid/content/Intent;
    .end local v20    # "_arg4":Ljava/lang/String;
    .end local v21    # "_arg5":Landroid/os/IBinder;
    .end local v22    # "_arg6":Ljava/lang/String;
    .end local v23    # "_arg7":I
    .end local v24    # "_arg8":I
    .end local v25    # "_arg9":Landroid/app/ProfilerInfo;
    .end local v26    # "_arg10":Landroid/os/Bundle;
    .end local v27    # "_arg11":I
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_e0d
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v9

    .line 1234
    .local v9, "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 1236
    .restart local v10    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 1238
    .local v11, "_arg2":Ljava/lang/String;
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, [Landroid/content/Intent;

    .line 1240
    .local v12, "_arg3":[Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v16

    .line 1242
    .local v16, "_arg4":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v17

    .line 1244
    .local v17, "_arg5":Landroid/os/IBinder;
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Landroid/os/Bundle;

    .line 1246
    .local v18, "_arg6":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 1247
    .local v19, "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1248
    move-object/from16 v0, p0

    move-object v1, v9

    move-object v2, v10

    move-object v3, v11

    move-object v4, v12

    move-object/from16 v5, v16

    move-object/from16 v6, v17

    move-object/from16 v7, v18

    move/from16 v8, v19

    invoke-virtual/range {v0 .. v8}, Landroid/app/IActivityTaskManager$Stub;->startActivities(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;I)I

    move-result v0

    .line 1249
    .restart local v0    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1250
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1251
    goto :goto_ec5

    .line 1202
    .end local v0    # "_result":I
    .end local v9    # "_arg0":Landroid/app/IApplicationThread;
    .end local v10    # "_arg1":Ljava/lang/String;
    .end local v12    # "_arg3":[Landroid/content/Intent;
    .end local v16    # "_arg4":[Ljava/lang/String;
    .end local v17    # "_arg5":Landroid/os/IBinder;
    .end local v18    # "_arg6":Landroid/os/Bundle;
    .end local v19    # "_arg7":I
    .end local v28    # "descriptor":Ljava/lang/String;
    .local v11, "descriptor":Ljava/lang/String;
    :pswitch_e5b
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v12

    .line 1204
    .local v12, "_arg0":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 1206
    .local v16, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 1208
    .local v17, "_arg2":Ljava/lang/String;
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Landroid/content/Intent;

    .line 1210
    .local v18, "_arg3":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 1212
    .local v19, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v20

    .line 1214
    .local v20, "_arg5":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v21

    .line 1216
    .local v21, "_arg6":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .line 1218
    .local v22, "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .line 1220
    .local v23, "_arg8":I
    sget-object v0, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v24, v0

    check-cast v24, Landroid/app/ProfilerInfo;

    .line 1222
    .local v24, "_arg9":Landroid/app/ProfilerInfo;
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v25, v0

    check-cast v25, Landroid/os/Bundle;

    .line 1223
    .local v25, "_arg10":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1224
    move-object/from16 v0, p0

    move-object v1, v12

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    move-object/from16 v5, v19

    move-object/from16 v6, v20

    move-object/from16 v7, v21

    move/from16 v8, v22

    move/from16 v9, v23

    move-object/from16 v10, v24

    move-object/from16 v11, v25

    invoke-virtual/range {v0 .. v11}, Landroid/app/IActivityTaskManager$Stub;->startActivity(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;)I

    move-result v0

    .line 1225
    .restart local v0    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1226
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1227
    nop

    .line 2704
    .end local v0    # "_result":I
    .end local v12    # "_arg0":Landroid/app/IApplicationThread;
    .end local v16    # "_arg1":Ljava/lang/String;
    .end local v17    # "_arg2":Ljava/lang/String;
    .end local v18    # "_arg3":Landroid/content/Intent;
    .end local v19    # "_arg4":Ljava/lang/String;
    .end local v20    # "_arg5":Landroid/os/IBinder;
    .end local v21    # "_arg6":Ljava/lang/String;
    .end local v22    # "_arg7":I
    .end local v23    # "_arg8":I
    .end local v24    # "_arg9":Landroid/app/ProfilerInfo;
    .end local v25    # "_arg10":Landroid/os/Bundle;
    :goto_ec5
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_ec8
    .packed-switch 0x5f4e5446
        :pswitch_21
    .end packed-switch

    :pswitch_data_ece
    .packed-switch 0x1
        :pswitch_e5b
        :pswitch_e0d
        :pswitch_d9b
        :pswitch_d75
        :pswitch_d5b
        :pswitch_cf2
        :pswitch_c7f
        :pswitch_c0d
        :pswitch_b97
        :pswitch_b81
        :pswitch_b35
        :pswitch_aeb
        :pswitch_ac9
        :pswitch_aab
        :pswitch_a38
        :pswitch_a12
        :pswitch_a07
        :pswitch_9f8
        :pswitch_9e9
        :pswitch_9d7
        :pswitch_9c5
        :pswitch_9af
        :pswitch_9a4
        :pswitch_986
        :pswitch_952
        :pswitch_934
        :pswitch_925
        :pswitch_90f
        :pswitch_8d0
        :pswitch_8be
        :pswitch_8af
        :pswitch_899
        :pswitch_887
        :pswitch_871
        :pswitch_862
        :pswitch_853
        :pswitch_83d
        :pswitch_82b
        :pswitch_820
        :pswitch_80a
        :pswitch_7dc
        :pswitch_7cd
        :pswitch_7ba
        :pswitch_7a0
        :pswitch_78a
        :pswitch_774
        :pswitch_75e
        :pswitch_748
        :pswitch_72e
        :pswitch_70c
        :pswitch_6f6
        :pswitch_6e7
        :pswitch_6c9
        :pswitch_6a7
        :pswitch_698
        :pswitch_682
        :pswitch_660
        :pswitch_64a
        :pswitch_630
        :pswitch_61e
        :pswitch_60c
        :pswitch_5fd
        :pswitch_5e3
        :pswitch_5cd
        :pswitch_5af
        :pswitch_599
        :pswitch_583
        :pswitch_545
        :pswitch_51b
        :pswitch_50c
        :pswitch_4ea
        :pswitch_4d8
        :pswitch_4c6
        :pswitch_4b7
        :pswitch_4a5
        :pswitch_496
        :pswitch_487
        :pswitch_475
        :pswitch_45b
        :pswitch_445
        :pswitch_436
        :pswitch_41c
        :pswitch_406
        :pswitch_3e8
        :pswitch_3ce
        :pswitch_3b8
        :pswitch_3a6
        :pswitch_394
        :pswitch_389
        :pswitch_37e
        :pswitch_364
        :pswitch_34a
        :pswitch_334
        :pswitch_31e
        :pswitch_308
        :pswitch_2f2
        :pswitch_2e3
        :pswitch_2c2
        :pswitch_2ac
        :pswitch_29d
        :pswitch_28b
        :pswitch_271
        :pswitch_25b
        :pswitch_249
        :pswitch_233
        :pswitch_21d
        :pswitch_20e
        :pswitch_1ff
        :pswitch_1f0
        :pswitch_1e5
        :pswitch_1da
        :pswitch_1c4
        :pswitch_1ae
        :pswitch_19f
        :pswitch_190
        :pswitch_17a
        :pswitch_168
        :pswitch_15d
        :pswitch_147
        :pswitch_131
        :pswitch_11f
        :pswitch_10d
        :pswitch_f7
        :pswitch_e8
        :pswitch_d2
        :pswitch_bc
        :pswitch_aa
        :pswitch_90
        :pswitch_76
        :pswitch_60
        :pswitch_4a
        :pswitch_34
        :pswitch_25
    .end packed-switch
.end method
