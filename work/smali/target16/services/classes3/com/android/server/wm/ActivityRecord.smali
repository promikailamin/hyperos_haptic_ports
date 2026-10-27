.class public final Lcom/android/server/wm/ActivityRecord;
.super Lcom/android/server/wm/WindowToken;
.source "ActivityRecord.java"


# static fields
.field public static sConstrainDisplayApisConfig:Landroid/content/pm/ConstrainDisplayApisConfig;


# instance fields
.field public allDrawn:Z

.field public app:Lcom/android/server/wm/WindowProcessController;

.field public appTimeTracker:Lcom/android/server/am/AppTimeTracker;

.field public final assistToken:Landroid/os/Binder;

.field public final componentSpecified:Z

.field public createTime:J

.field public delayedResume:Z

.field public finishing:Z

.field public firstWindowDrawn:Z

.field public hasBeenLaunched:Z

.field public idle:Z

.field public immersive:Z

.field public volatile inHistory:Z

.field public final info:Landroid/content/pm/ActivityInfo;

.field public final initialCallerInfoAccessToken:Landroid/os/IBinder;

.field public final intent:Landroid/content/Intent;

.field public keysPaused:Z

.field public lastLaunchTime:J

.field public lastVisibleTime:J

.field public launchCount:I

.field public launchFailed:Z

.field public launchMode:I

.field public final launchedFromFeatureId:Ljava/lang/String;

.field public final launchedFromPackage:Ljava/lang/String;

.field public final launchedFromPid:I

.field public final launchedFromUid:I

.field public lockTaskLaunchMode:I

.field public final mActivityComponent:Landroid/content/ComponentName;

.field public final mActivityRecordInputSink:Lcom/android/server/wm/ActivityRecordInputSink;

.field public mActivityRecordInputSinkEnabled:Z

.field public mAllowCrossUidActivitySwitchFromBelow:Z

.field public mAllowFullTaskRecreation:Z

.field public final mAllowUntrustedEmbeddingStateSharing:Z

.field public mAllowedTouchUid:I

.field public final mAppActivityEmbeddingSplitsEnabled:Z

.field public final mAppCompatController:Lcom/android/server/wm/AppCompatController;

.field public mAppStopped:Z

.field public final mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

.field public mAutoEnteringPip:Z

.field public final mCallerState:Lcom/android/server/wm/ActivityCallerState;

.field public mCaptureCallbacks:Landroid/os/RemoteCallbackList;

.field public final mColorTransformController:Lcom/android/server/display/color/ColorDisplayService$ColorTransformController;

.field public mConfigurationSeq:I

.field public mCurrentLaunchCanTurnScreenOn:Z

.field public mCustomCloseTransition:Lcom/android/server/wm/ActivityRecord$CustomAppTransition;

.field public mCustomOpenTransition:Lcom/android/server/wm/ActivityRecord$CustomAppTransition;

.field public final mDestroyTimeoutRunnable:Ljava/lang/Runnable;

.field public mDismissKeyguardIfInsecure:Z

.field public mEnableRecentsScreenshot:Z

.field public mEnteringAnimation:Z

.field public mForceSendResultForMediaProjection:Z

.field public mHandleExitSplashScreen:Z

.field public mHandoffActivityData:Landroid/app/HandoffActivityData;

.field public mHandoffEnabled:Z

.field mHandoverLaunchDisplayId:I

.field mHandoverTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

.field public mHasDeskResources:Ljava/lang/Boolean;

.field public final mHasSceneTransition:Z

.field public mHaveState:Z

.field public mIcicle:Landroid/os/Bundle;

.field public mInheritShowWhenLocked:Z

.field public mInputApplicationHandle:Landroid/view/InputApplicationHandle;

.field public mInputDispatchingTimeoutMillis:J

.field public mIsInputDroppedForAnimation:Z

.field public final mIsUserAlwaysVisible:Z

.field public mLastAllReadyAtSync:Z

.field public mLastAppSaturationInfo:Lcom/android/server/wm/ActivityRecord$AppSaturationInfo;

.field public mLastContainsDismissKeyguardWindow:Z

.field public mLastContainsShowWhenLockedWindow:Z

.field public mLastContainsTurnScreenOnWindow:Z

.field public mLastDropInputMode:I

.field public mLastEmbeddedParentTfTokenBeforePip:Landroid/os/IBinder;

.field public mLastImeShown:Z

.field public mLastNewIntent:Landroid/content/Intent;

.field public mLastParentBeforePip:Lcom/android/server/wm/Task;

.field public final mLastReportedActivityWindowInfo:Landroid/window/ActivityWindowInfo;

.field public final mLastReportedConfiguration:Landroid/util/MergedConfiguration;

.field public mLastReportedDisplayId:I

.field public mLastReportedMultiWindowMode:Z

.field public mLastReportedPictureInPictureMode:Z

.field public mLastTaskFragmentOrganizerBeforePip:Landroid/window/ITaskFragmentOrganizer;

.field public mLastTransactionSequence:J

.field public mLaunchCookie:Landroid/os/IBinder;

.field public mLaunchIntoPipHostActivity:Lcom/android/server/wm/ActivityRecord;

.field public mLaunchRootTask:Landroid/window/WindowContainerToken;

.field public mLaunchSourceType:I

.field public mLaunchedFromBubble:Z

.field public mLocusId:Landroid/content/LocusId;

.field public mNoDisplay:Z

.field public mNumDrawnWindows:I

.field public mNumInterestingWindows:I

.field public mOccludesParent:Z

.field public final mOptInOnBackInvoked:Z

.field public final mOptOutEdgeToEdge:Z

.field public mOverrideTaskTransition:Z

.field public mPauseConfigurationDispatchCount:I

.field public mPauseSchedulePendingForPip:Z

.field public final mPauseTimeoutRunnable:Ljava/lang/Runnable;

.field public mPendingOptions:Landroid/app/ActivityOptions;

.field public mPendingRelaunchCount:I

.field public mPendingRemoteAnimation:Landroid/view/RemoteAnimationAdapter;

.field public mPendingRemoteTransition:Landroid/window/RemoteTransition;

.field public mPersistentState:Landroid/os/PersistableBundle;

.field public mRelaunchReason:I

.field public mRelaunchStartTime:J

.field public mRemoteAnimationDefinition:Landroid/view/RemoteAnimationDefinition;

.field public mRemovingFromDisplay:Z

.field public mReportedDrawn:Z

.field public final mReportedVisibilityResults:Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;

.field public mRequestOpenInBrowserEducationTimestamp:J

.field public mRequestedLaunchingTaskFragmentToken:Landroid/os/IBinder;

.field final mResolveConfigHint:Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;

.field public final mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

.field public mRotationAnimationHint:I

.field public mServiceConnectionsHolder:Lcom/android/server/wm/ActivityServiceConnectionsHolder;

.field public mShareIdentity:Z

.field public final mShowForAllUsers:Z

.field public mShowWhenLocked:Z

.field public mSizeConfigurations:Landroid/window/SizeConfigurationBuckets;

.field public mSplashScreenStyleSolidColor:Z

.field public mStartingData:Lcom/android/server/wm/StartingData;

.field public mStartingSurface:Lcom/android/server/wm/StartingSurfaceController$StartingSurface;

.field public mStartingWindow:Lcom/android/server/wm/WindowState;

.field public mState:Lcom/android/server/wm/ActivityRecord$State;

.field public final mStopTimeoutRunnable:Ljava/lang/Runnable;

.field public mStoppedTime:J

.field public final mStyleFillsParent:Z

.field public mTargetSdk:I

.field public mTaskOverlay:Z

.field public final mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

.field public final mTmpActivityWindowInfo:Landroid/window/ActivityWindowInfo;

.field public final mTmpBounds:Landroid/graphics/Rect;

.field public final mTmpConfig:Landroid/content/res/Configuration;

.field public final mTransferSplashScreenTimeoutRunnable:Ljava/lang/Runnable;

.field public mTransferringSplashScreenState:I

.field public mTransitionChangeFlags:I

.field public mTurnScreenOn:Z

.field public final mUserId:I

.field public mVisible:Z

.field public volatile mVisibleForServiceConnection:Z

.field public mVisibleSetFromTransferredStartingWindow:Z

.field public mVoiceInteraction:Z

.field public mWaitForEnteringPinnedMode:Z

.field public mWillCloseOrEnterPip:Z

.field public final mWindowStyle:Lcom/android/server/wm/ActivityRecord$WindowStyle;

.field public newIntents:Ljava/util/ArrayList;

.field public nowVisible:Z

.field public final packageName:Ljava/lang/String;

.field public pauseTime:J

.field public pendingResults:Ljava/util/HashSet;

.field public pendingVoiceInteractionStart:Z

.field public pictureInPictureArgs:Landroid/app/PictureInPictureParams;

.field public final processName:Ljava/lang/String;

.field public reportedVisible:Z

.field public final requestCode:I

.field public requestedVrComponent:Landroid/content/ComponentName;

.field public final resolvedType:Ljava/lang/String;

.field public resultTo:Lcom/android/server/wm/ActivityRecord;

.field public final resultWho:Ljava/lang/String;

.field public results:Ljava/util/ArrayList;

.field public returningOptions:Landroid/app/ActivityOptions;

.field public final rootVoiceInteraction:Z

.field public final shareableActivityToken:Landroid/os/Binder;

.field public final shortComponentName:Ljava/lang/String;

.field public shouldDockBigOverlays:Z

.field public startingMoved:Z

.field public final stateNotNeeded:Z

.field public supportsEnterPipOnTaskSwitch:Z

.field public task:Lcom/android/server/wm/Task;

.field public final taskAffinity:Ljava/lang/String;

.field public taskDescription:Landroid/app/ActivityManager$TaskDescription;

.field public final theme:I

.field public topResumedStateLossTime:J

.field public uriPermissions:Lcom/android/server/uri/UriPermissionOwner;

.field public visibleIgnoringKeyguard:Z

.field public voiceSession:Landroid/service/voice/IVoiceInteractionSession;


# direct methods
.method public static synthetic $r8$lambda$0VlIB6dWpmd51rPHL9C7MBKVwyE(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 1

    .line 5383
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$6MLroGz7a6RoDyGfRCtQtFg6Itc(Lcom/android/server/wm/ActivityRecord;)D
    .registers 3

    .line 0
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->lambda$getCompatScale$15()D

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic $r8$lambda$8vzlXLXENSm-68EHSBTLK8LWcTs(Lcom/android/server/wm/WindowState;)Z
    .registers 2

    .line 9554
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateAnimator;->getShown()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget p0, p0, Lcom/android/server/wm/WindowStateAnimator;->mLastAlpha:F

    const/4 v0, 0x0

    cmpl-float p0, p0, v0

    if-lez p0, :cond_15

    const/4 p0, 0x1

    return p0

    :cond_15
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$AwDQJ0dWZB8EALcNOmrdnJC8KZg(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRecord;->lambda$hasOverlayOverUntrustedModeEmbedded$12(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$F8rMEjORzhUqv_MA_mCPwKntOyU(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 2

    .line 5381
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-boolean p0, p0, Lcom/android/server/wm/ActivityRecord;->firstWindowDrawn:Z

    if-nez p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$FwL5ZVlN9nLeG1sLoFeO_bAjdZs(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Transition;Z)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/ActivityRecord;->lambda$restartProcessIfVisible$17(Lcom/android/server/wm/Transition;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$I1MSNY3CpU-e9WIQbLSkEsRUKEo(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRecord;->lambda$transferStartingWindowFromHiddenAboveTokenIfNeeded$8(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$ItiBm5jcgD93hwA9ZFF48DkeNNc(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRecord;->lambda$showStartingWindow$14(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$LtBMHQ7y8EQyUReiUIpBLrEBq_E(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 2

    .line 9426
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v0, :cond_18

    .line 9427
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 9428
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isTaskOverlay()Z

    move-result v0

    if-nez v0, :cond_18

    .line 9429
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isAlwaysOnTop()Z

    move-result p0

    if-nez p0, :cond_18

    const/4 p0, 0x1

    return p0

    :cond_18
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$NbEgRBieZHJzXQooFaTlJSuqLA8(Lcom/android/server/wm/ActivityRecord;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->lambda$killInvisibleProcessOrPrepareForRestart$18()V

    return-void
.end method

.method public static synthetic $r8$lambda$QNnqNDOZVE6AP9I2X8M_B8nQ_eI(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRecord;->lambda$showStartingWindow$13(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Qf3yk0-HxIT9YAOC4KQtjKp5xM4(Lcom/android/server/wm/Task;)Z
    .registers 2

    .line 3444
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isFocusable()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result p0

    if-nez p0, :cond_14

    const/4 p0, 0x1

    return p0

    :cond_14
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$UJ5D2OOfhN-KEnlK9AAYgyz-n3k(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRecord;->lambda$makeFinishingLocked$7(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$aRDRNHdMF8x1-2k17vph61zjg3E(Lcom/android/server/wm/ActivityRecord;)V
    .registers 1

    .line 3741
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->prepareActivityHideTransitionAnimationIfOvarlay()V

    return-void
.end method

.method public static synthetic $r8$lambda$fiaHX1R5zEFOeBlayAWb7sCNc1g(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskDisplayArea;)Z
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRecord;->lambda$isFocusedActivityOnDisplay$19(Lcom/android/server/wm/TaskDisplayArea;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$frIx42sGzixNFx4Rzg2c_xr985E(Lcom/android/server/wm/ActivityRecord;)Landroid/content/pm/ApplicationInfo;
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->lambda$addStartingWindow$3()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$lM2_1C0rnc1UeOTpuhc1P-YSvVE(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;ILandroid/content/Intent;Landroid/os/IBinder;Lcom/android/server/uri/NeededUriGrants;)V
    .registers 6

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/wm/ActivityRecord;->lambda$finishActivityResults$5(Lcom/android/server/wm/ActivityRecord;ILandroid/content/Intent;Landroid/os/IBinder;Lcom/android/server/uri/NeededUriGrants;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mvh_TWvv9KONkby139QVs32900g(Lcom/android/server/wm/ActivityRecord;[F[F)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/ActivityRecord;->lambda$new$1([F[F)V

    return-void
.end method

.method public static synthetic $r8$lambda$sGNMRQzVLwLnwOXuaISLbjk7guI(Lcom/android/server/wm/ActivityRecord;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->notifyActivityStartedToContentCaptureService()V

    return-void
.end method

.method public static synthetic $r8$lambda$tbbQczlHwYJa84Bl3WvoMl7sYRg(Lcom/android/server/wm/ActivityRecord;)Landroid/content/Context;
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->lambda$new$2()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$uLNDSLBHeJbrC6FAFN5LQ5VaDpo(Lcom/android/server/wm/AppCompatSizeCompatModePolicy;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 2

    .line 8217
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->getAppSizeCompatBoundsIfAvailable(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ycM7wHZ0aNceb80D__M1ooSygCQ(Lcom/android/server/wm/ActivityRecord;[F[F)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/ActivityRecord;->lambda$new$0([F[F)V

    return-void
.end method

.method public static synthetic $r8$lambda$zx_qTZ1Z-SruvSJ2Y7Yph1kQWb8(Lcom/android/server/wm/TaskFragment;)Z
    .registers 1

    .line 4868
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/wm/ActivityRecord;->canShowWhenLocked(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static bridge synthetic -$$Nest$misTransferringSplashScreen(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isTransferringSplashScreen()Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/WindowProcessController;IILjava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;IZZLcom/android/server/wm/ActivityTaskSupervisor;Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityRecord;Landroid/os/PersistableBundle;Landroid/app/ActivityManager$TaskDescription;J)V
    .registers 39

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v9, p4

    move-object/from16 v10, p7

    move-object/from16 v11, p9

    move-wide/from16 v12, p21

    .line 1853
    iget-object v1, v7, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    new-instance v2, Lcom/android/server/wm/ActivityRecord$Token;

    const/4 v14, 0x0

    invoke-direct {v2, v14}, Lcom/android/server/wm/ActivityRecord$Token;-><init>(Lcom/android/server/wm/ActivityRecord-IA;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/WindowToken;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/IBinder;IZLcom/android/server/wm/DisplayContent;Z)V

    const/4 v1, -0x1

    .line 460
    iput v1, v0, Lcom/android/server/wm/ActivityRecord;->mHandoverLaunchDisplayId:I

    .line 469
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/server/wm/ActivityRecord;->createTime:J

    .line 479
    new-instance v2, Landroid/window/ActivityWindowInfo;

    invoke-direct {v2}, Landroid/window/ActivityWindowInfo;-><init>()V

    iput-object v2, v0, Lcom/android/server/wm/ActivityRecord;->mLastReportedActivityWindowInfo:Landroid/window/ActivityWindowInfo;

    .line 503
    iput-boolean v6, v0, Lcom/android/server/wm/ActivityRecord;->mHandoffEnabled:Z

    .line 504
    iput-boolean v6, v0, Lcom/android/server/wm/ActivityRecord;->mAllowFullTaskRecreation:Z

    const/4 v15, 0x1

    .line 507
    iput-boolean v15, v0, Lcom/android/server/wm/ActivityRecord;->mHaveState:Z

    .line 532
    new-instance v2, Landroid/app/PictureInPictureParams$Builder;

    invoke-direct {v2}, Landroid/app/PictureInPictureParams$Builder;-><init>()V

    invoke-virtual {v2}, Landroid/app/PictureInPictureParams$Builder;->build()Landroid/app/PictureInPictureParams;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/wm/ActivityRecord;->pictureInPictureArgs:Landroid/app/PictureInPictureParams;

    .line 546
    iput-boolean v6, v0, Lcom/android/server/wm/ActivityRecord;->mSplashScreenStyleSolidColor:Z

    .line 548
    iput-boolean v6, v0, Lcom/android/server/wm/ActivityRecord;->mPauseSchedulePendingForPip:Z

    .line 551
    iput-boolean v6, v0, Lcom/android/server/wm/ActivityRecord;->mAutoEnteringPip:Z

    .line 583
    iput-boolean v6, v0, Lcom/android/server/wm/ActivityRecord;->mTaskOverlay:Z

    .line 588
    iput v6, v0, Lcom/android/server/wm/ActivityRecord;->mRelaunchReason:I

    .line 590
    iput-boolean v6, v0, Lcom/android/server/wm/ActivityRecord;->mForceSendResultForMediaProjection:Z

    .line 621
    iput-boolean v6, v0, Lcom/android/server/wm/ActivityRecord;->mRemovingFromDisplay:Z

    .line 650
    new-instance v2, Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;

    invoke-direct {v2}, Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;-><init>()V

    iput-object v2, v0, Lcom/android/server/wm/ActivityRecord;->mReportedVisibilityResults:Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;

    .line 659
    iput-boolean v15, v0, Lcom/android/server/wm/ActivityRecord;->mCurrentLaunchCanTurnScreenOn:Z

    .line 677
    sget v2, Landroid/os/InputConstants;->DEFAULT_DISPATCHING_TIMEOUT_MILLIS:I

    int-to-long v2, v2

    iput-wide v2, v0, Lcom/android/server/wm/ActivityRecord;->mInputDispatchingTimeoutMillis:J

    const-wide/high16 v2, -0x8000000000000000L

    .line 699
    iput-wide v2, v0, Lcom/android/server/wm/ActivityRecord;->mLastTransactionSequence:J

    .line 710
    iput-boolean v6, v0, Lcom/android/server/wm/ActivityRecord;->mLastAllReadyAtSync:Z

    .line 743
    iput-boolean v15, v0, Lcom/android/server/wm/ActivityRecord;->mEnableRecentsScreenshot:Z

    .line 753
    iput v6, v0, Lcom/android/server/wm/ActivityRecord;->mLastDropInputMode:I

    .line 766
    iput v6, v0, Lcom/android/server/wm/ActivityRecord;->mTransferringSplashScreenState:I

    .line 824
    iput v1, v0, Lcom/android/server/wm/ActivityRecord;->mRotationAnimationHint:I

    .line 830
    new-instance v1, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda20;

    invoke-direct {v1, v0}, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda20;-><init>(Lcom/android/server/wm/ActivityRecord;)V

    iput-object v1, v0, Lcom/android/server/wm/ActivityRecord;->mColorTransformController:Lcom/android/server/display/color/ColorDisplayService$ColorTransformController;

    .line 850
    new-instance v2, Landroid/content/res/Configuration;

    invoke-direct {v2}, Landroid/content/res/Configuration;-><init>()V

    iput-object v2, v0, Lcom/android/server/wm/ActivityRecord;->mTmpConfig:Landroid/content/res/Configuration;

    .line 851
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, v0, Lcom/android/server/wm/ActivityRecord;->mTmpBounds:Landroid/graphics/Rect;

    .line 852
    new-instance v2, Landroid/window/ActivityWindowInfo;

    invoke-direct {v2}, Landroid/window/ActivityWindowInfo;-><init>()V

    iput-object v2, v0, Lcom/android/server/wm/ActivityRecord;->mTmpActivityWindowInfo:Landroid/window/ActivityWindowInfo;

    .line 855
    new-instance v2, Landroid/os/Binder;

    invoke-direct {v2}, Landroid/os/Binder;-><init>()V

    iput-object v2, v0, Lcom/android/server/wm/ActivityRecord;->assistToken:Landroid/os/Binder;

    .line 859
    new-instance v2, Landroid/os/Binder;

    invoke-direct {v2}, Landroid/os/Binder;-><init>()V

    iput-object v2, v0, Lcom/android/server/wm/ActivityRecord;->shareableActivityToken:Landroid/os/Binder;

    .line 862
    new-instance v2, Landroid/os/Binder;

    invoke-direct {v2}, Landroid/os/Binder;-><init>()V

    iput-object v2, v0, Lcom/android/server/wm/ActivityRecord;->initialCallerInfoAccessToken:Landroid/os/IBinder;

    .line 876
    iput-boolean v15, v0, Lcom/android/server/wm/ActivityRecord;->mActivityRecordInputSinkEnabled:Z

    .line 898
    iput v6, v0, Lcom/android/server/wm/ActivityRecord;->mPauseConfigurationDispatchCount:I

    .line 900
    new-instance v2, Lcom/android/server/wm/ActivityRecord$1;

    invoke-direct {v2, v0}, Lcom/android/server/wm/ActivityRecord$1;-><init>(Lcom/android/server/wm/ActivityRecord;)V

    iput-object v2, v0, Lcom/android/server/wm/ActivityRecord;->mPauseTimeoutRunnable:Ljava/lang/Runnable;

    .line 915
    new-instance v2, Lcom/android/server/wm/ActivityRecord$2;

    invoke-direct {v2, v0}, Lcom/android/server/wm/ActivityRecord$2;-><init>(Lcom/android/server/wm/ActivityRecord;)V

    iput-object v2, v0, Lcom/android/server/wm/ActivityRecord;->mDestroyTimeoutRunnable:Ljava/lang/Runnable;

    .line 925
    new-instance v2, Lcom/android/server/wm/ActivityRecord$3;

    invoke-direct {v2, v0}, Lcom/android/server/wm/ActivityRecord$3;-><init>(Lcom/android/server/wm/ActivityRecord;)V

    iput-object v2, v0, Lcom/android/server/wm/ActivityRecord;->mStopTimeoutRunnable:Ljava/lang/Runnable;

    .line 2530
    new-instance v2, Lcom/android/server/wm/ActivityRecord$4;

    invoke-direct {v2, v0}, Lcom/android/server/wm/ActivityRecord$4;-><init>(Lcom/android/server/wm/ActivityRecord;)V

    iput-object v2, v0, Lcom/android/server/wm/ActivityRecord;->mTransferSplashScreenTimeoutRunnable:Ljava/lang/Runnable;

    .line 1856
    iput-object v7, v0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1857
    iget-object v2, v0, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    check-cast v2, Lcom/android/server/wm/ActivityRecord$Token;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, v2, Lcom/android/server/wm/ActivityRecord$Token;->mActivityRef:Ljava/lang/ref/WeakReference;

    .line 1858
    iput-object v11, v0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 1859
    iget-object v2, v11, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    iput v2, v0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 1860
    iget-object v3, v11, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v3, v0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 1861
    iput-object v10, v0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 1866
    iget-object v4, v11, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    if-eqz v4, :cond_100

    .line 1867
    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f4

    iget v4, v11, Landroid/content/pm/ActivityInfo;->launchMode:I

    if-eqz v4, :cond_100

    if-ne v4, v15, :cond_f4

    goto :goto_100

    .line 1872
    :cond_f4
    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, v11, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v14, v11, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    invoke-direct {v4, v5, v14}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v4, v0, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    goto :goto_106

    .line 1870
    :cond_100
    :goto_100
    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    iput-object v4, v0, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    .line 1880
    :goto_106
    new-instance v4, Lcom/android/server/wm/AppCompatController;

    iget-object v5, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {v4, v5, v0}, Lcom/android/server/wm/AppCompatController;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/ActivityRecord;)V

    iput-object v4, v0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 1881
    new-instance v4, Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;

    invoke-direct {v4}, Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;-><init>()V

    iput-object v4, v0, Lcom/android/server/wm/ActivityRecord;->mResolveConfigHint:Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;

    const-wide/32 v6, 0x90d3a73

    .line 1885
    invoke-virtual {v11, v6, v7}, Landroid/content/pm/ActivityInfo;->isChangeEnabled(J)Z

    move-result v5

    if-nez v5, :cond_12a

    const-wide/32 v5, 0x138268ed

    .line 1886
    invoke-virtual {v11, v5, v6}, Landroid/content/pm/ActivityInfo;->isChangeEnabled(J)Z

    move-result v5

    if-nez v5, :cond_12a

    move v5, v15

    goto :goto_12b

    :cond_12a
    const/4 v5, 0x0

    :goto_12b
    iput-boolean v5, v4, Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;->mUseOverrideInsetsForConfig:Z

    .line 1889
    iget-object v4, v11, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iput v4, v0, Lcom/android/server/wm/ActivityRecord;->mTargetSdk:I

    .line 1891
    const-class v4, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/UserManagerInternal;

    .line 1892
    invoke-virtual {v4, v2}, Lcom/android/server/pm/UserManagerInternal;->getUserProperties(I)Landroid/content/pm/UserProperties;

    move-result-object v4

    if-eqz v4, :cond_149

    .line 1893
    invoke-virtual {v4}, Landroid/content/pm/UserProperties;->getAlwaysVisible()Z

    move-result v4

    if-eqz v4, :cond_149

    move v4, v15

    goto :goto_14a

    :cond_149
    const/4 v4, 0x0

    :goto_14a
    iput-boolean v4, v0, Lcom/android/server/wm/ActivityRecord;->mIsUserAlwaysVisible:Z

    .line 1895
    iget v5, v11, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v5, v5, 0x400

    if-nez v5, :cond_157

    if-eqz v4, :cond_155

    goto :goto_157

    :cond_155
    const/4 v4, 0x0

    goto :goto_158

    :cond_157
    :goto_157
    move v4, v15

    :goto_158
    iput-boolean v4, v0, Lcom/android/server/wm/ActivityRecord;->mShowForAllUsers:Z

    .line 1896
    iget v4, v11, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    invoke-virtual {v0, v4}, Lcom/android/server/wm/WindowContainer;->setOverrideOrientation(I)V

    .line 1897
    iget v4, v11, Landroid/content/pm/ActivityInfo;->rotationAnimation:I

    iput v4, v0, Lcom/android/server/wm/ActivityRecord;->mRotationAnimationHint:I

    .line 1899
    iget v4, v11, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v5, 0x800000

    and-int v6, v4, v5

    if-eqz v6, :cond_16d

    move v6, v15

    goto :goto_16e

    :cond_16d
    const/4 v6, 0x0

    :goto_16e
    iput-boolean v6, v0, Lcom/android/server/wm/ActivityRecord;->mShowWhenLocked:Z

    .line 1900
    iget v6, v11, Landroid/content/pm/ActivityInfo;->privateFlags:I

    and-int/2addr v6, v15

    if-eqz v6, :cond_177

    move v6, v15

    goto :goto_178

    :cond_177
    const/4 v6, 0x0

    :goto_178
    iput-boolean v6, v0, Lcom/android/server/wm/ActivityRecord;->mInheritShowWhenLocked:Z

    const/high16 v6, 0x1000000

    and-int/2addr v4, v6

    if-eqz v4, :cond_181

    move v4, v15

    goto :goto_182

    :cond_181
    const/4 v4, 0x0

    .line 1901
    :goto_182
    iput-boolean v4, v0, Lcom/android/server/wm/ActivityRecord;->mTurnScreenOn:Z

    .line 1903
    invoke-virtual {v11}, Landroid/content/pm/ActivityInfo;->getThemeResource()I

    move-result v4

    if-nez v4, :cond_199

    .line 1905
    iget-object v4, v11, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v6, 0xb

    if-ge v4, v6, :cond_196

    const v4, 0x1030005

    goto :goto_199

    :cond_196
    const v4, 0x103006b

    :cond_199
    :goto_199
    move-object/from16 v7, p1

    .line 1909
    invoke-virtual {v7, v3, v4, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getWindowStyle(Ljava/lang/String;II)Lcom/android/server/wm/ActivityRecord$WindowStyle;

    move-result-object v4

    .line 1910
    iput-object v4, v0, Lcom/android/server/wm/ActivityRecord;->mWindowStyle:Lcom/android/server/wm/ActivityRecord$WindowStyle;

    if-eqz v4, :cond_1d8

    .line 1912
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord$WindowStyle;->isTranslucent()Z

    move-result v6

    if-nez v6, :cond_1af

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord$WindowStyle;->isFloating()Z

    move-result v6

    if-eqz v6, :cond_1b5

    .line 1915
    :cond_1af
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord$WindowStyle;->showWallpaper()Z

    move-result v6

    if-eqz v6, :cond_1b7

    :cond_1b5
    move v6, v15

    goto :goto_1b8

    :cond_1b7
    const/4 v6, 0x0

    :goto_1b8
    iput-boolean v6, v0, Lcom/android/server/wm/ActivityRecord;->mOccludesParent:Z

    .line 1916
    iput-boolean v6, v0, Lcom/android/server/wm/ActivityRecord;->mStyleFillsParent:Z

    .line 1917
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord$WindowStyle;->noDisplay()Z

    move-result v6

    iput-boolean v6, v0, Lcom/android/server/wm/ActivityRecord;->mNoDisplay:Z

    .line 1918
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord$WindowStyle;->optOutEdgeToEdge()Z

    move-result v4

    if-eqz v4, :cond_1d3

    iget-object v4, v11, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/4 v14, 0x0

    invoke-static {v4, v14}, Lcom/android/internal/policy/PhoneWindow;->isOptOutEdgeToEdgeEnabled(Landroid/content/pm/ApplicationInfo;Z)Z

    move-result v4

    if-eqz v4, :cond_1d4

    move v4, v15

    goto :goto_1d5

    :cond_1d3
    const/4 v14, 0x0

    :cond_1d4
    move v4, v14

    :goto_1d5
    iput-boolean v4, v0, Lcom/android/server/wm/ActivityRecord;->mOptOutEdgeToEdge:Z

    goto :goto_1e1

    :cond_1d8
    const/4 v14, 0x0

    .line 1921
    iput-boolean v15, v0, Lcom/android/server/wm/ActivityRecord;->mOccludesParent:Z

    iput-boolean v15, v0, Lcom/android/server/wm/ActivityRecord;->mStyleFillsParent:Z

    .line 1922
    iput-boolean v14, v0, Lcom/android/server/wm/ActivityRecord;->mNoDisplay:Z

    .line 1923
    iput-boolean v14, v0, Lcom/android/server/wm/ActivityRecord;->mOptOutEdgeToEdge:Z

    :goto_1e1
    if-eqz p17, :cond_218

    .line 1927
    invoke-virtual/range {p17 .. p17}, Landroid/app/ActivityOptions;->getLaunchTaskBehind()Z

    move-result v4

    iput-boolean v4, v0, Lcom/android/server/wm/WindowContainer;->mLaunchTaskBehind:Z

    .line 1929
    invoke-virtual/range {p17 .. p17}, Landroid/app/ActivityOptions;->getRotationAnimationHint()I

    move-result v4

    if-ltz v4, :cond_1f1

    .line 1932
    iput v4, v0, Lcom/android/server/wm/ActivityRecord;->mRotationAnimationHint:I

    .line 1935
    :cond_1f1
    invoke-virtual/range {p17 .. p17}, Landroid/app/ActivityOptions;->getLaunchIntoPipParams()Landroid/app/PictureInPictureParams;

    move-result-object v4

    if-eqz v4, :cond_206

    .line 1936
    invoke-virtual/range {p17 .. p17}, Landroid/app/ActivityOptions;->getLaunchIntoPipParams()Landroid/app/PictureInPictureParams;

    move-result-object v4

    iput-object v4, v0, Lcom/android/server/wm/ActivityRecord;->pictureInPictureArgs:Landroid/app/PictureInPictureParams;

    if-eqz p18, :cond_206

    .line 1938
    invoke-virtual/range {p18 .. p18}, Lcom/android/server/wm/ActivityRecord;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/server/wm/ActivityRecord;->adjustPictureInPictureParamsIfNeeded(Landroid/graphics/Rect;)V

    .line 1942
    :cond_206
    invoke-virtual/range {p17 .. p17}, Landroid/app/ActivityOptions;->getOverrideTaskTransition()Z

    move-result v4

    iput-boolean v4, v0, Lcom/android/server/wm/ActivityRecord;->mOverrideTaskTransition:Z

    .line 1943
    invoke-virtual/range {p17 .. p17}, Landroid/app/ActivityOptions;->getDismissKeyguardIfInsecure()Z

    move-result v4

    iput-boolean v4, v0, Lcom/android/server/wm/ActivityRecord;->mDismissKeyguardIfInsecure:Z

    .line 1944
    invoke-virtual/range {p17 .. p17}, Landroid/app/ActivityOptions;->isShareIdentityEnabled()Z

    move-result v4

    iput-boolean v4, v0, Lcom/android/server/wm/ActivityRecord;->mShareIdentity:Z

    .line 1947
    :cond_218
    const-class v4, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    .line 1949
    new-instance v6, Ljava/lang/ref/WeakReference;

    invoke-direct {v6, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v4, v3, v2, v6}, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;->attachColorTransformController(Ljava/lang/String;ILjava/lang/ref/WeakReference;)Z

    .line 1952
    iget-object v1, v7, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iput-object v1, v0, Lcom/android/server/wm/ActivityRecord;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    move/from16 v1, p3

    .line 1953
    iput v1, v0, Lcom/android/server/wm/ActivityRecord;->launchedFromPid:I

    .line 1954
    iput v9, v0, Lcom/android/server/wm/ActivityRecord;->launchedFromUid:I

    move-object/from16 v1, p5

    .line 1955
    iput-object v1, v0, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    move-object/from16 v1, p6

    .line 1956
    iput-object v1, v0, Lcom/android/server/wm/ActivityRecord;->launchedFromFeatureId:Ljava/lang/String;

    .line 1957
    invoke-virtual {v0, v9, v8}, Lcom/android/server/wm/ActivityRecord;->determineLaunchSourceType(ILcom/android/server/wm/WindowProcessController;)I

    move-result v1

    iput v1, v0, Lcom/android/server/wm/ActivityRecord;->mLaunchSourceType:I

    .line 1958
    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    move-object/from16 v1, p8

    .line 1959
    iput-object v1, v0, Lcom/android/server/wm/ActivityRecord;->resolvedType:Ljava/lang/String;

    move/from16 v1, p14

    .line 1960
    iput-boolean v1, v0, Lcom/android/server/wm/ActivityRecord;->componentSpecified:Z

    move/from16 v4, p15

    .line 1961
    iput-boolean v4, v0, Lcom/android/server/wm/ActivityRecord;->rootVoiceInteraction:Z

    .line 1962
    new-instance v4, Landroid/util/MergedConfiguration;

    move-object/from16 v6, p10

    invoke-direct {v4, v6}, Landroid/util/MergedConfiguration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v4, v0, Lcom/android/server/wm/ActivityRecord;->mLastReportedConfiguration:Landroid/util/MergedConfiguration;

    move-object/from16 v4, p11

    .line 1963
    iput-object v4, v0, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    move-object/from16 v4, p12

    .line 1964
    iput-object v4, v0, Lcom/android/server/wm/ActivityRecord;->resultWho:Ljava/lang/String;

    move/from16 v4, p13

    .line 1965
    iput v4, v0, Lcom/android/server/wm/ActivityRecord;->requestCode:I

    .line 1966
    sget-object v4, Lcom/android/server/wm/ActivityRecord$State;->INITIALIZING:Lcom/android/server/wm/ActivityRecord$State;

    const-string v6, "ActivityRecord ctor"

    invoke-virtual {v0, v4, v6}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityRecord$State;Ljava/lang/String;)V

    const/4 v14, 0x0

    .line 1967
    iput-boolean v14, v0, Lcom/android/server/wm/ActivityRecord;->launchFailed:Z

    .line 1968
    iput-boolean v14, v0, Lcom/android/server/wm/ActivityRecord;->delayedResume:Z

    .line 1969
    iput-boolean v14, v0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    .line 1970
    iput-boolean v14, v0, Lcom/android/server/wm/ActivityRecord;->keysPaused:Z

    .line 1971
    iput-boolean v14, v0, Lcom/android/server/wm/ActivityRecord;->inHistory:Z

    .line 1972
    iput-boolean v14, v0, Lcom/android/server/wm/ActivityRecord;->nowVisible:Z

    .line 1973
    invoke-super {v0, v15}, Lcom/android/server/wm/WindowToken;->setClientVisible(Z)V

    .line 1974
    iput-boolean v14, v0, Lcom/android/server/wm/ActivityRecord;->idle:Z

    .line 1975
    iput-boolean v14, v0, Lcom/android/server/wm/ActivityRecord;->hasBeenLaunched:Z

    move-object/from16 v4, p16

    .line 1976
    iput-object v4, v0, Lcom/android/server/wm/ActivityRecord;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 1978
    iget-object v4, v11, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    iget-object v6, v11, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v4, v6}, Lcom/android/server/wm/ActivityRecord;->computeTaskAffinity(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v11, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    .line 1979
    iput-object v4, v0, Lcom/android/server/wm/ActivityRecord;->taskAffinity:Ljava/lang/String;

    .line 1980
    iget-object v4, v11, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 1981
    iget-object v6, v11, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    if-eqz v6, :cond_2ca

    iget-object v6, v6, Landroid/content/pm/ActivityInfo$WindowLayout;->windowLayoutAffinity:Ljava/lang/String;

    if-eqz v6, :cond_2ca

    .line 1982
    invoke-virtual {v6, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2ca

    .line 1983
    iget-object v6, v11, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v11, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo$WindowLayout;->windowLayoutAffinity:Ljava/lang/String;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v6, Landroid/content/pm/ActivityInfo$WindowLayout;->windowLayoutAffinity:Ljava/lang/String;

    .line 1987
    :cond_2ca
    sget-object v4, Lcom/android/server/wm/ActivityRecord;->sConstrainDisplayApisConfig:Landroid/content/pm/ConstrainDisplayApisConfig;

    if-nez v4, :cond_2d5

    .line 1988
    new-instance v4, Landroid/content/pm/ConstrainDisplayApisConfig;

    invoke-direct {v4}, Landroid/content/pm/ConstrainDisplayApisConfig;-><init>()V

    sput-object v4, Lcom/android/server/wm/ActivityRecord;->sConstrainDisplayApisConfig:Landroid/content/pm/ConstrainDisplayApisConfig;

    .line 1990
    :cond_2d5
    iget v4, v11, Landroid/content/pm/ActivityInfo;->flags:I

    const/16 v6, 0x10

    and-int/2addr v4, v6

    if-eqz v4, :cond_2de

    move v14, v15

    goto :goto_2df

    :cond_2de
    const/4 v14, 0x0

    :goto_2df
    iput-boolean v14, v0, Lcom/android/server/wm/ActivityRecord;->stateNotNeeded:Z

    .line 1991
    invoke-virtual {v11}, Landroid/content/pm/ActivityInfo;->getThemeResource()I

    move-result v4

    iput v4, v0, Lcom/android/server/wm/ActivityRecord;->theme:I

    .line 1992
    iget v4, v11, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/2addr v4, v15

    if-eqz v4, :cond_301

    if-eqz v8, :cond_301

    iget-object v4, v11, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v14, 0x3e8

    if-eq v4, v14, :cond_2fc

    iget-object v14, v8, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget v14, v14, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v4, v14, :cond_301

    .line 1995
    :cond_2fc
    iget-object v4, v8, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    iput-object v4, v0, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    goto :goto_305

    .line 1997
    :cond_301
    iget-object v4, v11, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    iput-object v4, v0, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    .line 2000
    :goto_305
    iget v4, v11, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit8 v4, v4, 0x20

    if-eqz v4, :cond_30e

    .line 2001
    invoke-virtual {v10, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2004
    :cond_30e
    iget v4, v11, Landroid/content/pm/ActivityInfo;->launchMode:I

    iput v4, v0, Lcom/android/server/wm/ActivityRecord;->launchMode:I

    move-object/from16 v4, p17

    move-object/from16 v5, p18

    move v8, v2

    move v2, v9

    move-object v9, v3

    move-object v3, v10

    .line 2006
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/ActivityRecord;->setActivityType(ZILandroid/content/Intent;Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityRecord;)V

    .line 2008
    iget v1, v11, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_325

    move v14, v15

    goto :goto_326

    :cond_325
    const/4 v14, 0x0

    :goto_326
    iput-boolean v14, v0, Lcom/android/server/wm/ActivityRecord;->immersive:Z

    .line 2010
    iget-object v1, v11, Landroid/content/pm/ActivityInfo;->requestedVrComponent:Ljava/lang/String;

    if-nez v1, :cond_32e

    const/4 v1, 0x0

    goto :goto_332

    .line 2011
    :cond_32e
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    :goto_332
    iput-object v1, v0, Lcom/android/server/wm/ActivityRecord;->requestedVrComponent:Landroid/content/ComponentName;

    .line 2013
    invoke-static {v11, v4}, Lcom/android/server/wm/ActivityRecord;->getLockTaskLaunchMode(Landroid/content/pm/ActivityInfo;Landroid/app/ActivityOptions;)I

    move-result v1

    iput v1, v0, Lcom/android/server/wm/ActivityRecord;->lockTaskLaunchMode:I

    if-eqz v4, :cond_3bd

    .line 2016
    invoke-virtual {v0, v4}, Lcom/android/server/wm/ActivityRecord;->setOptions(Landroid/app/ActivityOptions;)V

    .line 2019
    invoke-virtual {v4}, Landroid/app/ActivityOptions;->getAnimationType()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_358

    .line 2020
    invoke-virtual {v4}, Landroid/app/ActivityOptions;->getSceneTransitionInfo()Landroid/app/ActivityOptions$SceneTransitionInfo;

    move-result-object v1

    if-eqz v1, :cond_358

    .line 2021
    invoke-virtual {v4}, Landroid/app/ActivityOptions;->getSceneTransitionInfo()Landroid/app/ActivityOptions$SceneTransitionInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityOptions$SceneTransitionInfo;->getResultReceiver()Landroid/os/ResultReceiver;

    move-result-object v1

    if-eqz v1, :cond_358

    move v14, v15

    goto :goto_359

    :cond_358
    const/4 v14, 0x0

    :goto_359
    iput-boolean v14, v0, Lcom/android/server/wm/ActivityRecord;->mHasSceneTransition:Z

    .line 2022
    invoke-virtual {v4}, Landroid/app/ActivityOptions;->getUsageTimeReport()Landroid/app/PendingIntent;

    move-result-object v1

    if-eqz v1, :cond_368

    .line 2024
    new-instance v2, Lcom/android/server/am/AppTimeTracker;

    invoke-direct {v2, v1}, Lcom/android/server/am/AppTimeTracker;-><init>(Landroid/app/PendingIntent;)V

    iput-object v2, v0, Lcom/android/server/wm/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    .line 2028
    :cond_368
    invoke-virtual {v4}, Landroid/app/ActivityOptions;->getLaunchTaskDisplayArea()Landroid/window/WindowContainerToken;

    move-result-object v1

    if-eqz v1, :cond_37a

    .line 2030
    invoke-virtual {v1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Lcom/android/server/wm/TaskDisplayArea;

    goto :goto_37b

    :cond_37a
    const/4 v14, 0x0

    :goto_37b
    iput-object v14, v0, Lcom/android/server/wm/ActivityRecord;->mHandoverTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 2031
    invoke-virtual {v4}, Landroid/app/ActivityOptions;->getLaunchDisplayId()I

    move-result v1

    iput v1, v0, Lcom/android/server/wm/ActivityRecord;->mHandoverLaunchDisplayId:I

    .line 2032
    invoke-virtual {v4}, Landroid/app/ActivityOptions;->getLaunchCookie()Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wm/ActivityRecord;->mLaunchCookie:Landroid/os/IBinder;

    .line 2033
    invoke-virtual {v4}, Landroid/app/ActivityOptions;->getLaunchRootTask()Landroid/window/WindowContainerToken;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wm/ActivityRecord;->mLaunchRootTask:Landroid/window/WindowContainerToken;

    .line 2034
    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->mLaunchCookie:Landroid/os/IBinder;

    if-eqz v1, :cond_3b9

    .line 2035
    sget-object v2, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    const/4 v14, 0x0

    aget-boolean v2, v2, v14

    if-eqz v2, :cond_3b9

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    int-to-long v14, v3

    sget-object v3, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    filled-new-array {v1, v2, v14}, [Ljava/lang/Object;

    move-result-object v1

    const-wide v14, 0x5be36860c328358bL    # 4.408214735408358E134

    invoke-static {v3, v14, v15, v6, v1}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_3b9
    const/4 v14, 0x0

    :goto_3ba
    move-object/from16 v1, p19

    goto :goto_3c1

    :cond_3bd
    const/4 v14, 0x0

    .line 2040
    iput-boolean v14, v0, Lcom/android/server/wm/ActivityRecord;->mHasSceneTransition:Z

    goto :goto_3ba

    .line 2043
    :goto_3c1
    iput-object v1, v0, Lcom/android/server/wm/ActivityRecord;->mPersistentState:Landroid/os/PersistableBundle;

    move-object/from16 v1, p20

    .line 2044
    iput-object v1, v0, Lcom/android/server/wm/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 2046
    iget-object v1, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x111015a

    .line 2047
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/wm/ActivityRecord;->shouldDockBigOverlays:Z

    const-wide/16 v1, 0x0

    cmp-long v1, v12, v1

    if-lez v1, :cond_3e0

    .line 2050
    iput-wide v12, v0, Lcom/android/server/wm/ActivityRecord;->createTime:J

    .line 2052
    :cond_3e0
    iget-object v1, v7, Lcom/android/server/wm/ActivityTaskManagerService;->mPackageConfigPersister:Lcom/android/server/wm/PackageConfigPersister;

    invoke-virtual {v1, v0, v8, v9}, Lcom/android/server/wm/PackageConfigPersister;->updateConfigIfNeeded(Lcom/android/server/wm/ConfigurationContainer;ILjava/lang/String;)V

    if-eqz v4, :cond_3ef

    .line 2055
    invoke-virtual {v4}, Landroid/app/ActivityOptions;->isAllowPassThroughOnTouchOutside()Z

    move-result v1

    if-eqz v1, :cond_3ef

    const/4 v6, 0x1

    goto :goto_3f0

    :cond_3ef
    move v6, v14

    .line 2056
    :goto_3f0
    new-instance v1, Lcom/android/server/wm/ActivityRecordInputSink;

    invoke-direct {v1, v0, v5, v6}, Lcom/android/server/wm/ActivityRecordInputSink;-><init>(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Z)V

    iput-object v1, v0, Lcom/android/server/wm/ActivityRecord;->mActivityRecordInputSink:Lcom/android/server/wm/ActivityRecordInputSink;

    .line 2059
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isAppActivityEmbeddingSplitsEnabled()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/wm/ActivityRecord;->mAppActivityEmbeddingSplitsEnabled:Z

    .line 2060
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getAllowUntrustedEmbeddingStateSharingProperty()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/wm/ActivityRecord;->mAllowUntrustedEmbeddingStateSharing:Z

    .line 2062
    iget-object v1, v11, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    new-instance v2, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda21;

    invoke-direct {v2, v0}, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda21;-><init>(Lcom/android/server/wm/ActivityRecord;)V

    .line 2063
    invoke-static {v11, v1, v2}, Landroid/window/WindowOnBackInvokedDispatcher;->isOnBackInvokedCallbackEnabled(Landroid/content/pm/ActivityInfo;Landroid/content/pm/ApplicationInfo;Ljava/util/function/Supplier;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/wm/ActivityRecord;->mOptInOnBackInvoked:Z

    .line 2075
    new-instance v1, Lcom/android/server/wm/ActivityCallerState;

    invoke-direct {v1, v7}, Lcom/android/server/wm/ActivityCallerState;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    iput-object v1, v0, Lcom/android/server/wm/ActivityRecord;->mCallerState:Lcom/android/server/wm/ActivityCallerState;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/WindowProcessController;IILjava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;IZZLcom/android/server/wm/ActivityTaskSupervisor;Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityRecord;Landroid/os/PersistableBundle;Landroid/app/ActivityManager$TaskDescription;JLcom/android/server/wm/ActivityRecord-IA;)V
    .registers 24

    .line 0
    invoke-direct/range {p0 .. p22}, Lcom/android/server/wm/ActivityRecord;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/WindowProcessController;IILjava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;IZZLcom/android/server/wm/ActivityTaskSupervisor;Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityRecord;Landroid/os/PersistableBundle;Landroid/app/ActivityManager$TaskDescription;J)V

    return-void
.end method

.method public static synthetic access$001(Lcom/android/server/wm/ActivityRecord;)F
    .registers 1

    .line 376
    invoke-super {p0}, Lcom/android/server/wm/WindowToken;->getCompatScale()F

    move-result p0

    return p0
.end method

.method public static activityRefreshedLocked(Landroid/os/IBinder;)V
    .registers 6

    .line 6224
    invoke-static {p0}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    .line 6225
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_STATES_enabled:[Z

    const/4 v1, 0x2

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_1e

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_STATES:Lcom/android/internal/protolog/WmProtoLogGroups;

    const/4 v2, 0x0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-wide v3, -0xf78113bedfcb65L

    invoke-static {v1, v3, v4, v2, v0}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_1e
    if-nez p0, :cond_21

    return-void

    .line 6231
    :cond_21
    invoke-static {p0}, Lcom/android/server/wm/AppCompatCameraPolicy;->onActivityRefreshed(Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public static activityResumedLocked(Landroid/os/IBinder;Z)V
    .registers 7

    .line 6208
    invoke-static {p0}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    .line 6209
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_STATES_enabled:[Z

    const/4 v1, 0x2

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_1e

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_STATES:Lcom/android/internal/protolog/WmProtoLogGroups;

    const/4 v2, 0x0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-wide v3, 0x18127ce0cf0332a5L    # 1.013043612899191E-192

    invoke-static {v1, v3, v4, v2, v0}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_1e
    if-nez p0, :cond_21

    return-void

    .line 6215
    :cond_21
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRecord;->setCustomizeSplashScreenExitAnimation(Z)V

    const/4 p1, 0x0

    .line 6216
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRecord;->setSavedState(Landroid/os/Bundle;)V

    .line 6217
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRecord;->setHandoffActivityData(Landroid/app/HandoffActivityData;)V

    .line 6219
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p1, p0}, Lcom/android/server/wm/DisplayContent;->handleActivitySizeCompatModeIfNeeded(Lcom/android/server/wm/ActivityRecord;)V

    .line 6220
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p1, p1, Lcom/android/server/wm/DisplayContent;->mUnknownAppVisibilityController:Lcom/android/server/wm/UnknownAppVisibilityController;

    invoke-virtual {p1, p0}, Lcom/android/server/wm/UnknownAppVisibilityController;->notifyAppResumedFinished(Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public static canBeUniversalResizeable(Landroid/content/pm/ApplicationInfo;Lcom/android/server/wm/WindowManagerService;ZZ)Z
    .registers 8

    .line 3162
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->category:I

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    const/4 v0, 0x1

    if-eqz p2, :cond_14

    const-wide/32 v2, 0x15498ba7

    .line 3166
    invoke-virtual {p0, v2, v3}, Landroid/content/pm/ApplicationInfo;->isChangeEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_14

    move v2, v0

    goto :goto_15

    :cond_14
    move v2, v1

    :goto_15
    if-eqz p2, :cond_1e

    .line 3167
    iget-object p2, p1, Lcom/android/server/wm/WindowManagerService;->mConstants:Lcom/android/server/wm/WindowManagerConstants;

    iget-boolean p2, p2, Lcom/android/server/wm/WindowManagerConstants;->mIgnoreActivityOrientationRequestLargeScreen:Z

    if-eqz p2, :cond_30

    goto :goto_24

    :cond_1e
    iget-object p2, p1, Lcom/android/server/wm/WindowManagerService;->mConstants:Lcom/android/server/wm/WindowManagerConstants;

    iget-boolean p2, p2, Lcom/android/server/wm/WindowManagerConstants;->mIgnoreActivityOrientationRequestSmallScreen:Z

    if-eqz p2, :cond_30

    :goto_24
    iget-object p2, p1, Lcom/android/server/wm/WindowManagerService;->mConstants:Lcom/android/server/wm/WindowManagerConstants;

    iget-object v3, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 3170
    invoke-virtual {p2, v3}, Lcom/android/server/wm/WindowManagerConstants;->isPackageOptOutIgnoreActivityOrientationRequest(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_30

    move p2, v0

    goto :goto_31

    :cond_30
    move p2, v1

    :goto_31
    if-nez v2, :cond_36

    if-nez p2, :cond_36

    return v1

    :cond_36
    if-eqz p3, :cond_39

    return v0

    .line 3179
    :cond_39
    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 3180
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iget-object p2, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 3181
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p0

    .line 3179
    invoke-static {p1, p2, p0}, Lcom/android/server/wm/AppCompatResizeOverrides;->allowRestrictedResizability(Landroid/content/pm/PackageManager;Ljava/lang/String;I)Z

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public static canShowWhenLocked(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 4

    const/4 v0, 0x0

    if-eqz p0, :cond_27

    .line 4830
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v1

    if-nez v1, :cond_a

    goto :goto_27

    .line 4833
    :cond_a
    invoke-static {p0}, Lcom/android/server/wm/ActivityRecord;->canShowWhenLockedInner(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_12

    return v2

    .line 4835
    :cond_12
    iget-boolean v1, p0, Lcom/android/server/wm/ActivityRecord;->mInheritShowWhenLocked:Z

    if-eqz v1, :cond_27

    .line 4836
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/server/wm/WindowContainer;->getActivityBelow(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    if-eqz p0, :cond_27

    .line 4837
    invoke-static {p0}, Lcom/android/server/wm/ActivityRecord;->canShowWhenLockedInner(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    if-eqz p0, :cond_27

    return v2

    :cond_27
    :goto_27
    return v0
.end method

.method public static canShowWhenLockedInner(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 2

    .line 4845
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result v0

    if-nez v0, :cond_16

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mShowWhenLocked:Z

    if-nez v0, :cond_14

    .line 4846
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->containsShowWhenLockedWindow()Z

    move-result v0

    if-nez v0, :cond_14

    iget-boolean p0, p0, Lcom/android/server/wm/ActivityRecord;->mIsUserAlwaysVisible:Z

    if-eqz p0, :cond_16

    :cond_14
    const/4 p0, 0x1

    return p0

    :cond_16
    const/4 p0, 0x0

    return p0
.end method

.method public static computeTaskAffinity(Ljava/lang/String;I)Ljava/lang/String;
    .registers 3

    .line 2110
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p0, :cond_20

    .line 2111
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 2112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_20
    return-object p0
.end method

.method public static createImageFilename(JI)Ljava/lang/String;
    .registers 4

    .line 6882
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "_activity_icon_"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ".png"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static dumpActivity(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ILcom/android/server/wm/ActivityRecord;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;ZLjava/lang/Runnable;Lcom/android/server/wm/Task;)Z
    .registers 16

    const/4 v0, 0x0

    if-eqz p9, :cond_c

    .line 1212
    iget-object v1, p3, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p9, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p9

    if-nez p9, :cond_c

    return v0

    :cond_c
    const/4 p9, 0x1

    if-nez p7, :cond_19

    if-nez p6, :cond_17

    .line 1216
    invoke-virtual {p3}, Lcom/android/server/wm/ActivityRecord;->isInHistory()Z

    move-result p7

    if-nez p7, :cond_19

    :cond_17
    move p7, p9

    goto :goto_1a

    :cond_19
    move p7, v0

    :goto_1a
    if-eqz p10, :cond_21

    .line 1218
    const-string p10, ""

    invoke-virtual {p1, p10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_21
    if-eqz p11, :cond_26

    .line 1221
    invoke-interface {p11}, Ljava/lang/Runnable;->run()V

    .line 1224
    :cond_26
    new-instance p10, Ljava/lang/StringBuilder;

    invoke-direct {p10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p10, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p11, "  "

    invoke-virtual {p10, p11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p10

    .line 1225
    new-array v0, v0, [Ljava/lang/String;

    .line 1226
    invoke-virtual {p3}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    const-string v2, "* "

    if-eq p12, v1, :cond_7d

    .line 1227
    invoke-virtual {p3}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p12

    .line 1228
    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-eqz p7, :cond_4c

    move-object v1, v2

    goto :goto_4d

    :cond_4c
    move-object v1, p11

    .line 1229
    :goto_4d
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1230
    invoke-virtual {p1, p12}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    if-eqz p7, :cond_68

    .line 1232
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p11

    invoke-virtual {p12, p1, p11}, Lcom/android/server/wm/Task;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_7d

    :cond_68
    if-eqz p6, :cond_7d

    .line 1235
    iget-object v1, p12, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    if-eqz v1, :cond_7d

    .line 1236
    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1237
    invoke-virtual {p1, p11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1238
    iget-object p11, p12, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    invoke-virtual {p11}, Landroid/content/Intent;->toInsecureString()Ljava/lang/String;

    move-result-object p11

    invoke-virtual {p1, p11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1242
    :cond_7d
    :goto_7d
    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-eqz p7, :cond_83

    goto :goto_85

    :cond_83
    const-string v2, "    "

    :goto_85
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1243
    const-string p4, " #"

    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(I)V

    const-string p2, ": "

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1244
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    if-eqz p7, :cond_a1

    .line 1246
    invoke-virtual {p3, p1, p10, p9}, Lcom/android/server/wm/ActivityRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    goto :goto_bb

    :cond_a1
    if-eqz p6, :cond_bb

    .line 1249
    invoke-virtual {p1, p10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1250
    iget-object p2, p3, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {p2}, Landroid/content/Intent;->toInsecureString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1251
    iget-object p2, p3, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eqz p2, :cond_bb

    .line 1252
    invoke-virtual {p1, p10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1253
    iget-object p2, p3, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_bb
    :goto_bb
    if-eqz p8, :cond_116

    .line 1256
    invoke-virtual {p3}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result p2

    if-eqz p2, :cond_116

    .line 1259
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    .line 1261
    :try_start_c6
    new-instance p2, Lcom/android/internal/os/TransferPipe;

    invoke-direct {p2}, Lcom/android/internal/os/TransferPipe;-><init>()V
    :try_end_cb
    .catch Ljava/io/IOException; {:try_start_c6 .. :try_end_cb} :catch_e3
    .catch Landroid/os/RemoteException; {:try_start_c6 .. :try_end_cb} :catch_ea

    .line 1263
    :try_start_cb
    iget-object p4, p3, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {p4}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object p4

    .line 1264
    invoke-virtual {p2}, Lcom/android/internal/os/TransferPipe;->getWriteFd()Landroid/os/ParcelFileDescriptor;

    move-result-object p5

    iget-object p3, p3, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    .line 1263
    invoke-interface {p4, p5, p3, p10, v0}, Landroid/app/IApplicationThread;->dumpActivity(Landroid/os/ParcelFileDescriptor;Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;)V

    const-wide/16 p3, 0x7d0

    .line 1266
    invoke-virtual {p2, p0, p3, p4}, Lcom/android/internal/os/TransferPipe;->go(Ljava/io/FileDescriptor;J)V
    :try_end_df
    .catchall {:try_start_cb .. :try_end_df} :catchall_e5

    .line 1268
    :try_start_df
    invoke-virtual {p2}, Lcom/android/internal/os/TransferPipe;->kill()V

    goto :goto_116

    :catch_e3
    move-exception p0

    goto :goto_ff

    :catchall_e5
    move-exception p0

    invoke-virtual {p2}, Lcom/android/internal/os/TransferPipe;->kill()V

    .line 1269
    throw p0
    :try_end_ea
    .catch Ljava/io/IOException; {:try_start_df .. :try_end_ea} :catch_e3
    .catch Landroid/os/RemoteException; {:try_start_df .. :try_end_ea} :catch_ea

    .line 1273
    :catch_ea
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "Got a RemoteException while dumping the activity"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_116

    .line 1271
    :goto_ff
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "Failure while dumping the activity: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_116
    :goto_116
    return p9
.end method

.method public static forToken(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 1780
    :cond_4
    :try_start_4
    check-cast p0, Lcom/android/server/wm/ActivityRecord$Token;
    :try_end_6
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_6} :catch_f

    .line 1785
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord$Token;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/ActivityRecord;

    return-object p0

    :catch_f
    move-exception v1

    .line 1782
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad activity token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "ActivityTaskManager"

    invoke-static {v2, p0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method public static forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;
    .registers 2

    .line 1789
    invoke-static {p0}, Lcom/android/server/wm/ActivityRecord;->forToken(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    if-eqz p0, :cond_e

    .line 1790
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-nez v0, :cond_d

    goto :goto_e

    :cond_d
    return-object p0

    :cond_e
    :goto_e
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getLockTaskLaunchMode(Landroid/content/pm/ActivityInfo;Landroid/app/ActivityOptions;)I
    .registers 3

    .line 2118
    iget v0, p0, Landroid/content/pm/ActivityInfo;->lockTaskLaunchMode:I

    .line 2120
    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->isPrivilegedApp()Z

    move-result p0

    if-nez p0, :cond_11

    const/4 p0, 0x2

    if-eq v0, p0, :cond_10

    const/4 p0, 0x1

    if-ne v0, p0, :cond_11

    :cond_10
    const/4 v0, 0x0

    :cond_11
    if-eqz p1, :cond_1d

    .line 2126
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getLockTaskMode()Z

    move-result p0

    if-eqz p0, :cond_1d

    if-nez v0, :cond_1d

    const/4 p0, 0x3

    return p0

    :cond_1d
    return v0
.end method

.method private getProcessGlobalConfiguration()Landroid/content/res/Configuration;
    .registers 2

    .line 8659
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    return-object p0

    :cond_9
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    return-object p0
.end method

.method public static getRootTask(Landroid/os/IBinder;)Lcom/android/server/wm/Task;
    .registers 1

    .line 6841
    invoke-static {p0}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 6843
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object p0

    return-object p0

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getTaskForActivityLocked(Landroid/os/IBinder;Z)I
    .registers 5

    .line 6823
    invoke-static {p0}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    const/4 v0, -0x1

    if-eqz p0, :cond_22

    .line 6824
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    if-nez v1, :cond_e

    goto :goto_22

    .line 6827
    :cond_e
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-eqz p1, :cond_1f

    const/4 p1, 0x0

    const/4 v2, 0x1

    .line 6828
    invoke-virtual {v1, p1, v2}, Lcom/android/server/wm/Task;->getRootActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->compareTo(Lcom/android/server/wm/WindowContainer;)I

    move-result p0

    if-lez p0, :cond_1f

    return v0

    .line 6832
    :cond_1f
    iget p0, v1, Lcom/android/server/wm/Task;->mTaskId:I

    return p0

    :cond_22
    :goto_22
    return v0
.end method

.method public static hasResizeChange(I)Z
    .registers 1

    .line 0
    and-int/lit16 p0, p0, 0xd80

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public static isHomeIntent(Landroid/content/Intent;)Z
    .registers 3

    .line 2856
    const-string v0, "android.intent.action.MAIN"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    const-string v0, "android.intent.category.HOME"

    .line 2857
    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1c

    const-string v0, "android.intent.category.SECONDARY_HOME"

    .line 2858
    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 2859
    :cond_1c
    invoke-virtual {p0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_34

    .line 2860
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_34

    .line 2861
    invoke-virtual {p0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_34

    return v1

    :cond_34
    const/4 p0, 0x0

    return p0
.end method

.method public static isInAnyTask(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;
    .registers 2

    .line 6850
    invoke-static {p0}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    if-eqz p0, :cond_d

    .line 6851
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_d

    return-object p0

    :cond_d
    const/4 p0, 0x0

    return-object p0
.end method

.method public static isInDeskUiMode(Landroid/content/res/Configuration;)Z
    .registers 2

    .line 9129
    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p0, p0, 0xf

    const/4 v0, 0x2

    if-ne p0, v0, :cond_9

    const/4 p0, 0x1

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public static isInRootTaskLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;
    .registers 2

    .line 6836
    invoke-static {p0}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    if-eqz p0, :cond_f

    .line 6837
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/wm/Task;->isInTask(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    return-object p0

    :cond_f
    const/4 p0, 0x0

    return-object p0
.end method

.method public static isMainIntent(Landroid/content/Intent;)Z
    .registers 3

    .line 2865
    const-string v0, "android.intent.action.MAIN"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    const-string v0, "android.intent.category.LAUNCHER"

    .line 2866
    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 2867
    invoke-virtual {p0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2c

    .line 2868
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_2c

    .line 2869
    invoke-virtual {p0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_2c

    return v1

    :cond_2c
    const/4 p0, 0x0

    return p0
.end method

.method public static isResolverActivity(Ljava/lang/String;)Z
    .registers 2

    .line 1794
    const-class v0, Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static restoreFromXml(Lcom/android/modules/utils/TypedXmlPullParser;Lcom/android/server/wm/ActivityTaskSupervisor;)Lcom/android/server/wm/ActivityRecord;
    .registers 22

    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 9060
    const-string v2, "launched_from_uid"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    .line 9061
    const-string v4, "launched_from_package"

    invoke-interface {v0, v1, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 9062
    const-string v5, "launched_from_feature"

    invoke-interface {v0, v1, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 9063
    const-string v6, "resolved_type"

    invoke-interface {v0, v1, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 9064
    const-string v6, "component_specified"

    invoke-interface {v0, v1, v6, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    .line 9065
    const-string v7, "user_id"

    invoke-interface {v0, v1, v7, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v12

    .line 9066
    const-string v3, "id"

    const-wide/16 v7, -0x1

    invoke-interface {v0, v1, v3, v7, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v7

    .line 9067
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v3

    .line 9070
    new-instance v15, Landroid/app/ActivityManager$TaskDescription;

    invoke-direct {v15}, Landroid/app/ActivityManager$TaskDescription;-><init>()V

    .line 9071
    invoke-virtual {v15, v0}, Landroid/app/ActivityManager$TaskDescription;->restoreFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)V

    move-object v10, v1

    move-object v11, v10

    .line 9074
    :goto_3e
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v13

    const/4 v14, 0x1

    if-eq v13, v14, :cond_98

    const/4 v14, 0x3

    if-ne v13, v14, :cond_4e

    .line 9075
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v14

    if-lt v14, v3, :cond_98

    :cond_4e
    const/4 v14, 0x2

    if-ne v13, v14, :cond_95

    .line 9077
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v13

    .line 9080
    const-string v14, "intent"

    invoke-virtual {v14, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_62

    .line 9081
    invoke-static {v0}, Landroid/content/Intent;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/Intent;

    move-result-object v1

    goto :goto_95

    .line 9084
    :cond_62
    const-string v14, "persistable_bundle"

    invoke-virtual {v14, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6f

    .line 9085
    invoke-static {v0}, Landroid/os/PersistableBundle;->restoreFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/os/PersistableBundle;

    move-result-object v10

    goto :goto_95

    .line 9088
    :cond_6f
    const-string v14, "initial_caller_info"

    .line 9089
    invoke-virtual {v14, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7c

    .line 9090
    invoke-static {v0}, Lcom/android/server/wm/ActivityCallerState$CallerInfo;->restoreFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Lcom/android/server/wm/ActivityCallerState$CallerInfo;

    move-result-object v11

    goto :goto_95

    .line 9092
    :cond_7c
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "restoreActivity: unexpected name="

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v13, "ActivityTaskManager"

    invoke-static {v13, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9093
    invoke-static/range {p0 .. p0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    :cond_95
    :goto_95
    move-object/from16 v0, p0

    goto :goto_3e

    :cond_98
    if-eqz v1, :cond_115

    move-object/from16 v0, p1

    .line 9102
    iget-object v3, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 9104
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v13

    const/4 v14, 0x0

    move-object/from16 v16, v10

    const/4 v10, 0x0

    move-object/from16 v17, v11

    const/4 v11, 0x0

    move-wide/from16 v18, v7

    move-object v7, v0

    move-object v8, v1

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-wide/from16 v16, v18

    .line 9103
    invoke-virtual/range {v7 .. v14}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveActivity(Landroid/content/Intent;Ljava/lang/String;ILandroid/app/ProfilerInfo;III)Landroid/content/pm/ActivityInfo;

    move-result-object v7

    if-eqz v7, :cond_f6

    .line 9109
    new-instance v10, Lcom/android/server/wm/ActivityRecord$Builder;

    invoke-direct {v10, v3}, Lcom/android/server/wm/ActivityRecord$Builder;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    .line 9110
    invoke-virtual {v10, v2}, Lcom/android/server/wm/ActivityRecord$Builder;->setLaunchedFromUid(I)Lcom/android/server/wm/ActivityRecord$Builder;

    move-result-object v2

    .line 9111
    invoke-virtual {v2, v4}, Lcom/android/server/wm/ActivityRecord$Builder;->setLaunchedFromPackage(Ljava/lang/String;)Lcom/android/server/wm/ActivityRecord$Builder;

    move-result-object v2

    .line 9112
    invoke-virtual {v2, v5}, Lcom/android/server/wm/ActivityRecord$Builder;->setLaunchedFromFeature(Ljava/lang/String;)Lcom/android/server/wm/ActivityRecord$Builder;

    move-result-object v2

    .line 9113
    invoke-virtual {v2, v8}, Lcom/android/server/wm/ActivityRecord$Builder;->setIntent(Landroid/content/Intent;)Lcom/android/server/wm/ActivityRecord$Builder;

    move-result-object v2

    .line 9114
    invoke-virtual {v2, v9}, Lcom/android/server/wm/ActivityRecord$Builder;->setResolvedType(Ljava/lang/String;)Lcom/android/server/wm/ActivityRecord$Builder;

    move-result-object v2

    .line 9115
    invoke-virtual {v2, v7}, Lcom/android/server/wm/ActivityRecord$Builder;->setActivityInfo(Landroid/content/pm/ActivityInfo;)Lcom/android/server/wm/ActivityRecord$Builder;

    move-result-object v2

    .line 9116
    invoke-virtual {v2, v6}, Lcom/android/server/wm/ActivityRecord$Builder;->setComponentSpecified(Z)Lcom/android/server/wm/ActivityRecord$Builder;

    move-result-object v2

    .line 9117
    invoke-static {v2, v0}, Lcom/android/server/wm/ActivityRecord$Builder;->-$$Nest$msetPersistentState(Lcom/android/server/wm/ActivityRecord$Builder;Landroid/os/PersistableBundle;)Lcom/android/server/wm/ActivityRecord$Builder;

    move-result-object v0

    .line 9118
    invoke-static {v0, v15}, Lcom/android/server/wm/ActivityRecord$Builder;->-$$Nest$msetTaskDescription(Lcom/android/server/wm/ActivityRecord$Builder;Landroid/app/ActivityManager$TaskDescription;)Lcom/android/server/wm/ActivityRecord$Builder;

    move-result-object v0

    move-wide/from16 v2, v16

    .line 9119
    invoke-static {v0, v2, v3}, Lcom/android/server/wm/ActivityRecord$Builder;->-$$Nest$msetCreateTime(Lcom/android/server/wm/ActivityRecord$Builder;J)Lcom/android/server/wm/ActivityRecord$Builder;

    move-result-object v0

    .line 9120
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord$Builder;->build()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v1, :cond_f5

    .line 9123
    iget-object v2, v0, Lcom/android/server/wm/ActivityRecord;->mCallerState:Lcom/android/server/wm/ActivityCallerState;

    iget-object v3, v0, Lcom/android/server/wm/ActivityRecord;->initialCallerInfoAccessToken:Landroid/os/IBinder;

    invoke-virtual {v2, v3, v1}, Lcom/android/server/wm/ActivityCallerState;->add(Landroid/os/IBinder;Lcom/android/server/wm/ActivityCallerState$CallerInfo;)V

    :cond_f5
    return-object v0

    .line 9106
    :cond_f6
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restoreActivity resolver error. Intent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " resolvedType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_115
    move-object v8, v1

    .line 9099
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restoreActivity error intent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static reverseConfigurationOrientation(I)I
    .registers 3

    .line 0
    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p0, v1, :cond_8

    if-eq p0, v0, :cond_7

    return p0

    :cond_7
    return v1

    :cond_8
    return v0
.end method

.method public static splashScreenAttachedLocked(Landroid/os/IBinder;)V
    .registers 2

    .line 6235
    invoke-static {p0}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    if-nez p0, :cond_e

    .line 6237
    const-string p0, "ActivityTaskManager"

    const-string v0, "splashScreenTransferredLocked cannot find activity"

    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 6240
    :cond_e
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->onSplashScreenAttachComplete()V

    return-void
.end method


# virtual methods
.method public abortAndClearOptionsAnimation()V
    .registers 2

    .line 5278
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mPendingOptions:Landroid/app/ActivityOptions;

    if-eqz v0, :cond_7

    .line 5279
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->abort()V

    .line 5281
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->clearOptionsAnimation()V

    return-void
.end method

.method public activityPaused(Z)V
    .registers 8

    .line 6288
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_STATES_enabled:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_STATES:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    const-wide v3, 0x116f4692a6243297L

    const/16 v5, 0xc

    invoke-static {v2, v3, v4, v5, v0}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 6291
    :cond_21
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    if-eqz v0, :cond_ab

    .line 6293
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->removePauseTimeout()V

    .line 6295
    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->getPausingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    if-ne v2, p0, :cond_6b

    .line 6297
    sget-object v2, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_STATES_enabled:[Z

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_4f

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    if-eqz p1, :cond_3f

    const-string p1, "(due to timeout)"

    goto :goto_41

    :cond_3f
    const-string p1, " (pause complete)"

    :goto_41
    sget-object v3, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_STATES:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v4, 0x5f7964ec0b9834ddL    # 8.312522338834462E151

    filled-new-array {v2, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v3, v4, v5, v1, p1}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 6299
    :cond_4f
    iget-object p1, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    const/4 p1, 0x1

    const/4 v2, 0x0

    .line 6301
    :try_start_56
    invoke-virtual {v0, p1, v2}, Lcom/android/server/wm/TaskFragment;->completePause(ZLcom/android/server/wm/ActivityRecord;)V

    .line 6303
    iget-object p1, p0, Lcom/android/server/wm/ActivityRecord;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {p1, p0, v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->handleTopResumedStateReleasedIfNeeded(Lcom/android/server/wm/ActivityRecord;Z)V
    :try_end_5e
    .catchall {:try_start_56 .. :try_end_5e} :catchall_64

    .line 6307
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    return-void

    :catchall_64
    move-exception p1

    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 6308
    throw p1

    .line 6311
    :cond_6b
    iget p1, p0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    if-eqz v2, :cond_78

    .line 6313
    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    goto :goto_7a

    :cond_78
    const-string v2, "(none)"

    .line 6311
    :goto_7a
    invoke-static {p1, v0, v3, v2}, Lcom/android/server/wm/EventLogTags;->writeWmFailedToPause(IILjava/lang/String;Ljava/lang/String;)V

    .line 6314
    sget-object p1, Lcom/android/server/wm/ActivityRecord$State;->PAUSING:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result p1

    if-eqz p1, :cond_ab

    .line 6315
    sget-object p1, Lcom/android/server/wm/ActivityRecord$State;->PAUSED:Lcom/android/server/wm/ActivityRecord$State;

    const-string v0, "activityPausedLocked"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityRecord$State;Ljava/lang/String;)V

    .line 6316
    iget-boolean p1, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz p1, :cond_ab

    .line 6317
    sget-object p1, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_STATES_enabled:[Z

    aget-boolean p1, p1, v1

    if-eqz p1, :cond_a8

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object v2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_STATES:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v3, 0x25fea89c56f2322cL

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v2, v3, v4, v1, p1}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 6319
    :cond_a8
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->completeFinishing(Ljava/lang/String;)Lcom/android/server/wm/ActivityRecord;

    .line 6325
    :cond_ab
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p1, p0}, Lcom/android/server/wm/DisplayContent;->handleActivitySizeCompatModeIfNeeded(Lcom/android/server/wm/ActivityRecord;)V

    .line 6326
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible()V

    return-void
.end method

.method public activityStopped(Landroid/os/Bundle;Landroid/os/PersistableBundle;Landroid/app/HandoffActivityData;Ljava/lang/CharSequence;)V
    .registers 12

    .line 6421
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->removeStopTimeout()V

    .line 6422
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityRecord$State;

    sget-object v1, Lcom/android/server/wm/ActivityRecord$State;->STOPPING:Lcom/android/server/wm/ActivityRecord$State;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_d

    move v1, v2

    goto :goto_e

    :cond_d
    move v1, v3

    .line 6423
    :goto_e
    const-string v4, "ActivityTaskManager"

    if-nez v1, :cond_35

    sget-object v5, Lcom/android/server/wm/ActivityRecord$State;->RESTARTING_PROCESS:Lcom/android/server/wm/ActivityRecord$State;

    if-eq v0, v5, :cond_35

    .line 6424
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Activity reported stop, but no longer stopping: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_35
    if-eqz p2, :cond_40

    .line 6428
    iput-object p2, p0, Lcom/android/server/wm/ActivityRecord;->mPersistentState:Landroid/os/PersistableBundle;

    .line 6429
    iget-object p2, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    invoke-virtual {p2, v0, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->notifyTaskPersisterLocked(Lcom/android/server/wm/Task;Z)V

    :cond_40
    if-eqz p1, :cond_4a

    .line 6435
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRecord;->setSavedState(Landroid/os/Bundle;)V

    .line 6436
    iput v3, p0, Lcom/android/server/wm/ActivityRecord;->launchCount:I

    .line 6437
    invoke-virtual {p0, p4}, Lcom/android/server/wm/ActivityRecord;->updateTaskDescription(Ljava/lang/CharSequence;)V

    :cond_4a
    if-eqz p3, :cond_4f

    .line 6440
    invoke-virtual {p0, p3}, Lcom/android/server/wm/ActivityRecord;->setHandoffActivityData(Landroid/app/HandoffActivityData;)V

    .line 6442
    :cond_4f
    sget-object p1, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_STATES_enabled:[Z

    const/4 p2, 0x2

    aget-boolean p1, p1, p2

    if-eqz p1, :cond_6e

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/wm/ActivityRecord;->mIcicle:Landroid/os/Bundle;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    sget-object p3, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_STATES:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v5, -0x44304d2f45f0ca84L    # -1.3424835845805755E-20

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p3, v5, v6, v3, p1}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_6e
    if-eqz v1, :cond_95

    .line 6445
    sget-object p1, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_STATES_enabled:[Z

    aget-boolean p1, p1, v3

    if-eqz p1, :cond_88

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_STATES:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide p3, 0x69a81048ad613045L    # 9.209750965846779E200

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p3, p4, v3, p1}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 6446
    :cond_88
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/wm/ActivityRecord;->mStoppedTime:J

    .line 6447
    sget-object p1, Lcom/android/server/wm/ActivityRecord$State;->STOPPED:Lcom/android/server/wm/ActivityRecord$State;

    const-string p2, "activityStopped"

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityRecord$State;Ljava/lang/String;)V

    .line 6450
    :cond_95
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->mAppStopped:Z

    .line 6451
    iput-boolean v3, p0, Lcom/android/server/wm/ActivityRecord;->firstWindowDrawn:Z

    .line 6455
    iget-object p1, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    iget-object p2, p1, Lcom/android/server/wm/Task;->mLastRecentsAnimationTransaction:Landroid/window/PictureInPictureSurfaceTransaction;

    if-eqz p2, :cond_a2

    .line 6456
    invoke-virtual {p1, v2}, Lcom/android/server/wm/Task;->clearLastRecentsAnimationTransaction(Z)V

    .line 6458
    :cond_a2
    invoke-virtual {p0}, Lcom/android/server/wm/WindowToken;->isClientVisible()Z

    move-result p1

    if-eqz p1, :cond_ab

    .line 6460
    invoke-virtual {p0, v3}, Lcom/android/server/wm/WindowToken;->setClientVisible(Z)V

    .line 6462
    :cond_ab
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->destroySurfaces()V

    .line 6464
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->removeStartingWindow()V

    .line 6468
    iget p1, p0, Lcom/android/server/wm/ActivityRecord;->mPendingRelaunchCount:I

    if-lez p1, :cond_cc

    .line 6469
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Clear pending relaunch count on stopped "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6470
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->clearRelaunching()V

    .line 6473
    :cond_cc
    iget-boolean p1, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz p1, :cond_d4

    .line 6474
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->abortAndClearOptionsAnimation()V

    goto :goto_d9

    .line 6476
    :cond_d4
    iget-object p1, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p1, p0}, Lcom/android/server/wm/ActivityTaskManagerService;->updatePreviousProcess(Lcom/android/server/wm/ActivityRecord;)V

    .line 6478
    :goto_d9
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {p0, v2}, Lcom/android/server/wm/ActivityTaskSupervisor;->checkReadyForSleepLocked(Z)V

    return-void
.end method

.method public final addNewIntentLocked(Lcom/android/internal/content/ReferrerIntent;)V
    .registers 3

    .line 5047
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 5048
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    .line 5050
    :cond_b
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addResultLocked(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;Landroid/os/IBinder;)V
    .registers 14

    .line 4916
    new-instance v0, Lcom/android/server/wm/ActivityResult;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/ActivityResult;-><init>(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;Landroid/os/IBinder;)V

    .line 4918
    iget-object p1, p0, Lcom/android/server/wm/ActivityRecord;->results:Ljava/util/ArrayList;

    if-nez p1, :cond_16

    .line 4919
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/ActivityRecord;->results:Ljava/util/ArrayList;

    .line 4921
    :cond_16
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->results:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addStartingWindow(Ljava/lang/String;ILcom/android/server/wm/ActivityRecord;ZZZZZZZ)Z
    .registers 35

    move-object/from16 v0, p0

    move/from16 v8, p2

    move-object/from16 v9, p3

    .line 2291
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->okToDisplay()Z

    move-result v1

    const/4 v10, 0x0

    if-nez v1, :cond_e

    return v10

    .line 2295
    :cond_e
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->hasStartingWindow()Z

    move-result v1

    if-eqz v1, :cond_15

    return v10

    .line 2299
    :cond_15
    invoke-virtual {v0, v10}, Lcom/android/server/wm/ActivityRecord;->findMainWindow(Z)Lcom/android/server/wm/WindowState;

    move-result-object v1

    if-eqz v1, :cond_22

    .line 2300
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isDrawn()Z

    move-result v1

    if-eqz v1, :cond_22

    return v10

    .line 2307
    :cond_22
    iget-object v1, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    iget-object v2, v0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    iget v2, v2, Lcom/android/server/wm/Task;->mTaskId:I

    const/4 v11, 0x1

    invoke-virtual {v1, v2, v11}, Lcom/android/server/wm/TaskSnapshotController;->getSnapshot(II)Landroid/window/TaskSnapshot;

    move-result-object v7

    move/from16 v1, p4

    move/from16 v2, p5

    move/from16 v3, p6

    move/from16 v4, p7

    move/from16 v5, p8

    move/from16 v6, p10

    .line 2315
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/wm/ActivityRecord;->getStartingWindowType(ZZZZZZLandroid/window/TaskSnapshot;)I

    move-result v12

    const/4 v1, 0x2

    if-ne v12, v1, :cond_58

    .line 2319
    iget-object v2, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mStartingSurfaceController:Lcom/android/server/wm/StartingSurfaceController;

    iget-object v3, v0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget v4, v0, Lcom/android/server/wm/ActivityRecord;->mTargetSdk:I

    new-instance v5, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda15;

    invoke-direct {v5, v0}, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda15;-><init>(Lcom/android/server/wm/ActivityRecord;)V

    .line 2320
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/wm/StartingSurfaceController;->isExceptionApp(Ljava/lang/String;ILjava/util/function/Supplier;)Z

    move-result v2

    if-eqz v2, :cond_58

    move/from16 v18, v11

    goto :goto_5a

    :cond_58
    move/from16 v18, v10

    .line 2331
    :goto_5a
    invoke-virtual {v0, v8}, Lcom/android/server/wm/ActivityRecord;->isIconStylePreferred(I)Z

    move-result v21

    iget-object v2, v0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget v3, v0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    move/from16 v13, p5

    move/from16 v14, p6

    move/from16 v15, p7

    move/from16 v16, p8

    move/from16 v17, p9

    move/from16 v19, p10

    move-object/from16 v22, v2

    move/from16 v23, v3

    move/from16 v20, v12

    move/from16 v12, p4

    .line 2329
    invoke-static/range {v12 .. v23}, Lcom/android/server/wm/StartingSurfaceController;->makeStartingWindowTypeParameter(ZZZZZZZZIZLjava/lang/String;I)I

    move-result v2

    move/from16 v3, v20

    if-ne v3, v11, :cond_b4

    .line 2334
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result v3

    if-eqz v3, :cond_af

    .line 2337
    iget-object v3, v0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v3}, Lcom/android/server/wm/TransitionController;->getCollectingTransition()Lcom/android/server/wm/Transition;

    move-result-object v3

    if-eqz v3, :cond_9f

    .line 2338
    invoke-virtual {v3}, Lcom/android/server/wm/Transition;->getFlags()I

    move-result v3

    and-int/2addr v1, v3

    if-nez v1, :cond_9f

    .line 2340
    iget-object v1, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    iget v0, v0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v1, v0}, Lcom/android/server/wm/TaskSnapshotController;->removeSnapshotCache(I)V

    return v10

    :cond_9f
    const/16 v1, 0x10

    .line 2345
    invoke-virtual {v7, v1}, Landroid/window/TaskSnapshot;->addReference(I)V

    .line 2346
    iget-object v1, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    iget-object v3, v0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    iget v3, v3, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v1, v3}, Lcom/android/server/wm/TaskSnapshotController;->removeSnapshotCache(I)V

    .line 2348
    :cond_af
    invoke-virtual {v0, v7, v2}, Lcom/android/server/wm/ActivityRecord;->createSnapshot(Landroid/window/TaskSnapshot;I)Z

    move-result v0

    return v0

    :cond_b4
    if-nez v8, :cond_bb

    .line 2353
    iget v4, v0, Lcom/android/server/wm/ActivityRecord;->theme:I

    if-eqz v4, :cond_bb

    return v10

    :cond_bb
    if-eqz v9, :cond_c4

    .line 2357
    invoke-virtual {v0, v9}, Lcom/android/server/wm/ActivityRecord;->transferStartingWindow(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v4

    if-eqz v4, :cond_c4

    return v11

    :cond_c4
    if-eq v3, v1, :cond_c7

    return v10

    .line 2367
    :cond_c7
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_STARTING_WINDOW_enabled:[Z

    aget-boolean v1, v1, v10

    if-eqz v1, :cond_d8

    sget-object v1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_STARTING_WINDOW:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v3, 0x64e3208ccbdf3a92L    # 9.688525390646764E177

    const/4 v5, 0x0

    invoke-static {v1, v3, v4, v10, v5}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 2368
    :cond_d8
    new-instance v1, Lcom/android/server/wm/SplashScreenStartingData;

    iget-object v3, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {v1, v3, v8, v2}, Lcom/android/server/wm/SplashScreenStartingData;-><init>(Lcom/android/server/wm/WindowManagerService;II)V

    iput-object v1, v0, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    .line 2369
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->scheduleAddStartingWindow()V

    return v11
.end method

.method public addToFinishingAndWaitForIdle()Z
    .registers 6

    .line 3944
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_STATES_enabled:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_19

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_STATES:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v3, 0x2bfabd7d477d3deaL    # 7.824308039454567E-97

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v3, v4, v1, v0}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 3945
    :cond_19
    sget-object v0, Lcom/android/server/wm/ActivityRecord$State;->FINISHING:Lcom/android/server/wm/ActivityRecord$State;

    const-string v1, "addToFinishingAndWaitForIdle"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityRecord$State;Ljava/lang/String;)V

    .line 3946
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_31

    .line 3947
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3949
    :cond_31
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->resumeKeyDispatchingLocked()V

    .line 3950
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities()Z

    move-result p0

    return p0
.end method

.method public addToStopping(ZZLjava/lang/String;)V
    .registers 8

    .line 6482
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 6483
    iget v0, p0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    invoke-static {v0, v1, v2, p3}, Lcom/android/server/wm/EventLogTags;->writeWmAddToStopping(IILjava/lang/String;Ljava/lang/String;)V

    .line 6485
    iget-object p3, p0, Lcom/android/server/wm/ActivityRecord;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object p3, p3, Lcom/android/server/wm/ActivityTaskSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {p3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6488
    :cond_1c
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object p3

    .line 6492
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gt v0, v1, :cond_3b

    .line 6493
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isRootOfTask()Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-virtual {p3}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v0

    if-gt v0, v3, :cond_3a

    goto :goto_3b

    :cond_3a
    move v3, v2

    :cond_3b
    :goto_3b
    if-nez p1, :cond_44

    if-eqz v3, :cond_40

    goto :goto_44

    .line 6504
    :cond_40
    invoke-virtual {p3}, Lcom/android/server/wm/Task;->checkReadyForSleep()V

    return-void

    .line 6495
    :cond_44
    :goto_44
    sget-object p1, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_STATES_enabled:[Z

    aget-boolean p1, p1, v2

    if-eqz p1, :cond_64

    xor-int/lit8 p1, p2, 0x1

    sget-object p3, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_STATES:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-wide v0, 0x37421def674e3d56L    # 1.624782857863838E-42

    const/16 v2, 0xf

    invoke-static {p3, v0, v1, v2, p1}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_64
    if-nez p2, :cond_6c

    .line 6499
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->scheduleIdle()V

    return-void

    .line 6501
    :cond_6c
    iget-object p1, p0, Lcom/android/server/wm/ActivityRecord;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {p1, p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->scheduleIdleTimeout(Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public addWindow(Lcom/android/server/wm/WindowState;)V
    .registers 2

    .line 4493
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowToken;->addWindow(Lcom/android/server/wm/WindowState;)V

    .line 4494
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->checkKeyguardFlagsChanged()V

    return-void
.end method

.method public final adjustPictureInPictureParamsIfNeeded(Landroid/graphics/Rect;)V
    .registers 4

    .line 9492
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->pictureInPictureArgs:Landroid/app/PictureInPictureParams;

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Landroid/app/PictureInPictureParams;->hasSourceBoundsHint()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 9493
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->pictureInPictureArgs:Landroid/app/PictureInPictureParams;

    invoke-virtual {v0}, Landroid/app/PictureInPictureParams;->getSourceRectHint()Landroid/graphics/Rect;

    move-result-object v0

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget p1, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v1, p1}, Landroid/graphics/Rect;->offset(II)V

    .line 9497
    :cond_17
    iget-object p1, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 9498
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->pictureInPictureArgs:Landroid/app/PictureInPictureParams;

    invoke-virtual {v0}, Landroid/app/PictureInPictureParams;->isAutoEnterEnabled()Z

    move-result v0

    if-eqz v0, :cond_53

    const-string v0, "android.software.leanback"

    .line 9499
    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_53

    const-string v0, "android.permission.TV_IMPLICIT_ENTER_PIP"

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 9500
    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_53

    .line 9502
    const-string p1, "ActivityTaskManager"

    const-string v0, "Auto-enter PiP only allowed on TV if android.permission.TV_IMPLICIT_ENTER_PIP permission is held by the app."

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9505
    new-instance p1, Landroid/app/PictureInPictureParams$Builder;

    invoke-direct {p1}, Landroid/app/PictureInPictureParams$Builder;-><init>()V

    const/4 v0, 0x0

    .line 9506
    invoke-virtual {p1, v0}, Landroid/app/PictureInPictureParams$Builder;->setAutoEnterEnabled(Z)Landroid/app/PictureInPictureParams$Builder;

    .line 9507
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->pictureInPictureArgs:Landroid/app/PictureInPictureParams;

    invoke-virtual {p1}, Landroid/app/PictureInPictureParams$Builder;->build()Landroid/app/PictureInPictureParams;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/PictureInPictureParams;->copyOnlySet(Landroid/app/PictureInPictureParams;)V

    :cond_53
    return-void
.end method

.method public final allDrawnStatesConsidered()Z
    .registers 5

    .line 5240
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_8
    if-ltz v0, :cond_23

    .line 5241
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 5242
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->mightAffectAllDrawn()Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getDrawnStateEvaluated()Z

    move-result v2

    if-nez v2, :cond_20

    const/4 p0, 0x0

    return p0

    :cond_20
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_23
    return v1
.end method

.method public allowMoveToFront()Z
    .registers 1

    .line 5321
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mPendingOptions:Landroid/app/ActivityOptions;

    if-eqz p0, :cond_d

    invoke-virtual {p0}, Landroid/app/ActivityOptions;->getAvoidMoveToFront()Z

    move-result p0

    if-nez p0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x0

    return p0

    :cond_d
    :goto_d
    const/4 p0, 0x1

    return p0
.end method

.method public final allowTaskSnapshot()Z
    .registers 5

    .line 8984
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    const/4 v1, 0x1

    if-nez v0, :cond_6

    return v1

    .line 8992
    :cond_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_b
    if-ltz v0, :cond_3a

    .line 8993
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    if-eqz v2, :cond_37

    .line 8994
    invoke-static {v2}, Lcom/android/server/wm/ActivityRecord;->isMainIntent(Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_1e

    goto :goto_37

    .line 8998
    :cond_1e
    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->mLastNewIntent:Landroid/content/Intent;

    if-eqz v3, :cond_27

    invoke-virtual {v3, v2}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v3

    goto :goto_2d

    .line 8999
    :cond_27
    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3, v2}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v3

    :goto_2d
    if-eqz v3, :cond_35

    .line 9000
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_37

    :cond_35
    const/4 p0, 0x0

    return p0

    :cond_37
    :goto_37
    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    :cond_3a
    return v1
.end method

.method public applyFixedRotationTransform(Landroid/view/DisplayInfo;Lcom/android/server/wm/DisplayFrames;Landroid/content/res/Configuration;)V
    .registers 4

    .line 7274
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/wm/WindowToken;->applyFixedRotationTransform(Landroid/view/DisplayInfo;Lcom/android/server/wm/DisplayFrames;Landroid/content/res/Configuration;)V

    .line 7275
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->ensureActivityConfiguration()Z

    return-void
.end method

.method public final applyLocaleOverrideIfNeeded(Landroid/content/res/Configuration;)V
    .registers 4

    .line 9515
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isEmbedded()Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-eqz v0, :cond_f

    iget-boolean v0, v0, Lcom/android/server/wm/Task;->mAlignActivityLocaleWithTask:Z

    if-eqz v0, :cond_f

    goto :goto_10

    :cond_f
    return-void

    .line 9521
    :cond_10
    :goto_10
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-eqz v0, :cond_47

    iget-object v0, v0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_47

    .line 9523
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_47

    .line 9528
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mPackageConfigPersister:Lcom/android/server/wm/PackageConfigPersister;

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    iget-object v1, v1, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    .line 9530
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget p0, p0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 9529
    invoke-virtual {v0, v1, p0}, Lcom/android/server/wm/PackageConfigPersister;->findPackageConfiguration(Ljava/lang/String;I)Lcom/android/server/wm/ActivityTaskManagerInternal$PackageConfig;

    move-result-object p0

    if-eqz p0, :cond_47

    .line 9533
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerInternal$PackageConfig;->mLocales:Landroid/os/LocaleList;

    if-eqz v0, :cond_47

    invoke-virtual {v0}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_47

    .line 9534
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerInternal$PackageConfig;->mLocales:Landroid/os/LocaleList;

    invoke-virtual {p1, p0}, Landroid/content/res/Configuration;->setLocales(Landroid/os/LocaleList;)V

    :cond_47
    return-void
.end method

.method public applyOptionsAnimation()V
    .registers 5

    .line 5127
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mPendingRemoteAnimation:Landroid/view/RemoteAnimationAdapter;

    if-eqz v0, :cond_e

    .line 5128
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 5129
    invoke-virtual {v0}, Landroid/view/RemoteAnimationAdapter;->getStatusBarTransitionDelay()J

    move-result-wide v2

    .line 5128
    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/TransitionController;->setStatusBarTransitionDelay(J)V

    goto :goto_2c

    .line 5131
    :cond_e
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mPendingOptions:Landroid/app/ActivityOptions;

    if-nez v0, :cond_13

    return-void

    .line 5133
    :cond_13
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->getAnimationType()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_25

    .line 5137
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 5138
    invoke-static {}, Landroid/window/TransitionInfo$AnimationOptions;->makeSceneTransitionAnimOptions()Landroid/window/TransitionInfo$AnimationOptions;

    move-result-object v1

    const/4 v2, 0x0

    .line 5137
    invoke-virtual {v0, v1, p0, v2, v2}, Lcom/android/server/wm/TransitionController;->setOverrideAnimation(Landroid/window/TransitionInfo$AnimationOptions;Lcom/android/server/wm/ActivityRecord;Landroid/os/IRemoteCallback;Landroid/os/IRemoteCallback;)V

    return-void

    .line 5141
    :cond_25
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mPendingOptions:Landroid/app/ActivityOptions;

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/ActivityRecord;->applyOptionsAnimation(Landroid/app/ActivityOptions;Landroid/content/Intent;)V

    .line 5143
    :goto_2c
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->clearOptionsAnimationForSiblings()V

    return-void
.end method

.method public final applyOptionsAnimation(Landroid/app/ActivityOptions;Landroid/content/Intent;)V
    .registers 12

    .line 5150
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getAnimationType()I

    move-result v0

    .line 5151
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_130

    if-eqz v0, :cond_130

    const/4 v1, 0x0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_113

    const/4 v4, 0x2

    if-eq v0, v4, :cond_d1

    const/4 v4, 0x3

    if-eq v0, v4, :cond_8c

    const/4 v5, 0x4

    if-eq v0, v5, :cond_8c

    const/16 v1, 0x8

    if-eq v0, v1, :cond_130

    const/16 v1, 0x9

    if-eq v0, v1, :cond_130

    const/16 v1, 0xb

    if-eq v0, v1, :cond_4b

    const/16 p2, 0xc

    if-eq v0, p2, :cond_42

    .line 5212
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "applyOptionsLocked: Unknown animationType="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "WindowManager"

    invoke-static {v0, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_130

    .line 5206
    :cond_42
    invoke-static {}, Landroid/window/TransitionInfo$AnimationOptions;->makeCrossProfileAnimOptions()Landroid/window/TransitionInfo$AnimationOptions;

    move-result-object p2

    move-object v0, v2

    move-object v2, p2

    move-object p2, v0

    goto/16 :goto_133

    .line 5166
    :cond_4b
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getStartX()I

    move-result v0

    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getStartY()I

    move-result v1

    .line 5167
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getHeight()I

    move-result v4

    .line 5165
    invoke-static {v0, v1, v3, v4}, Landroid/window/TransitionInfo$AnimationOptions;->makeClipRevealAnimOptions(IIII)Landroid/window/TransitionInfo$AnimationOptions;

    move-result-object v0

    .line 5168
    invoke-virtual {p2}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v1

    if-nez v1, :cond_87

    .line 5169
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getStartX()I

    move-result v3

    .line 5170
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getStartY()I

    move-result v4

    .line 5171
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getStartX()I

    move-result v5

    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getWidth()I

    move-result v6

    add-int/2addr v5, v6

    .line 5172
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getStartY()I

    move-result v6

    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getHeight()I

    move-result v7

    add-int/2addr v6, v7

    invoke-direct {v1, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 5169
    invoke-virtual {p2, v1}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    :cond_87
    :goto_87
    move-object p2, v2

    move-object v2, v0

    :goto_89
    move-object v0, p2

    goto/16 :goto_133

    :cond_8c
    if-ne v0, v4, :cond_8f

    move v1, v3

    .line 5190
    :cond_8f
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getThumbnail()Landroid/hardware/HardwareBuffer;

    move-result-object v0

    .line 5192
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getStartX()I

    move-result v3

    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getStartY()I

    move-result v4

    .line 5191
    invoke-static {v0, v3, v4, v1}, Landroid/window/TransitionInfo$AnimationOptions;->makeThumbnailAnimOptions(Landroid/hardware/HardwareBuffer;IIZ)Landroid/window/TransitionInfo$AnimationOptions;

    move-result-object v1

    .line 5193
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getAnimationStartedListener()Landroid/os/IRemoteCallback;

    move-result-object v3

    .line 5194
    invoke-virtual {p2}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v4

    if-nez v4, :cond_cd

    if-eqz v0, :cond_cd

    .line 5195
    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getStartX()I

    move-result v5

    .line 5196
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getStartY()I

    move-result v6

    .line 5197
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getStartX()I

    move-result v7

    invoke-virtual {v0}, Landroid/hardware/HardwareBuffer;->getWidth()I

    move-result v8

    add-int/2addr v7, v8

    .line 5198
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getStartY()I

    move-result v8

    invoke-virtual {v0}, Landroid/hardware/HardwareBuffer;->getHeight()I

    move-result v0

    add-int/2addr v8, v0

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 5195
    invoke-virtual {p2, v4}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    :cond_cd
    move-object v0, v2

    move-object p2, v3

    move-object v2, v1

    goto :goto_133

    .line 5177
    :cond_d1
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getStartX()I

    move-result v0

    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getStartY()I

    move-result v1

    .line 5178
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getHeight()I

    move-result v4

    .line 5179
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getOverrideTaskTransition()Z

    move-result v5

    .line 5176
    invoke-static {v0, v1, v3, v4, v5}, Landroid/window/TransitionInfo$AnimationOptions;->makeScaleUpAnimOptions(IIIIZ)Landroid/window/TransitionInfo$AnimationOptions;

    move-result-object v0

    .line 5180
    invoke-virtual {p2}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v1

    if-nez v1, :cond_87

    .line 5181
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getStartX()I

    move-result v3

    .line 5182
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getStartY()I

    move-result v4

    .line 5183
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getStartX()I

    move-result v5

    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getWidth()I

    move-result v6

    add-int/2addr v5, v6

    .line 5184
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getStartY()I

    move-result v6

    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getHeight()I

    move-result v7

    add-int/2addr v6, v7

    invoke-direct {v1, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 5181
    invoke-virtual {p2, v1}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    goto/16 :goto_87

    .line 5157
    :cond_113
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getPackageName()Ljava/lang/String;

    move-result-object p2

    .line 5158
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getCustomEnterResId()I

    move-result v0

    .line 5159
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getCustomExitResId()I

    move-result v2

    .line 5160
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getOverrideTaskTransition()Z

    move-result v3

    .line 5157
    invoke-static {p2, v0, v1, v2, v3}, Landroid/window/TransitionInfo$AnimationOptions;->makeCustomAnimOptions(Ljava/lang/String;IIIZ)Landroid/window/TransitionInfo$AnimationOptions;

    move-result-object v2

    .line 5161
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getAnimationStartedListener()Landroid/os/IRemoteCallback;

    move-result-object p2

    .line 5162
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getAnimationFinishedListener()Landroid/os/IRemoteCallback;

    move-result-object v0

    goto :goto_133

    :cond_130
    :goto_130
    move-object p2, v2

    goto/16 :goto_89

    :goto_133
    if-eqz v2, :cond_13a

    .line 5217
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v1, v2, p0, p2, v0}, Lcom/android/server/wm/TransitionController;->setOverrideAnimation(Landroid/window/TransitionInfo$AnimationOptions;Lcom/android/server/wm/ActivityRecord;Landroid/os/IRemoteCallback;Landroid/os/IRemoteCallback;)V

    .line 5220
    :cond_13a
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getCustomBackgroundColor()I

    move-result p1

    if-eqz p1, :cond_145

    .line 5222
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/TransitionController;->setOverrideBackgroundColor(I)V

    :cond_145
    return-void
.end method

.method public areBoundsLetterboxed()Z
    .registers 3

    const/4 v0, 0x1

    .line 7818
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->getAppCompatState(Z)I

    move-result p0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_9

    return v0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public areSafeRegionBoundsApplied()Z
    .registers 2

    .line 7807
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->areBoundsLetterboxed()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 7808
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatController;->getSafeRegionPolicy()Lcom/android/server/wm/AppCompatSafeRegionPolicy;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatSafeRegionPolicy;->getLatestSafeRegionBounds()Landroid/graphics/Rect;

    move-result-object p0

    if-eqz p0, :cond_14

    const/4 p0, 0x1

    return p0

    :cond_14
    const/4 p0, 0x0

    return p0
.end method

.method public asActivityRecord()Lcom/android/server/wm/ActivityRecord;
    .registers 1

    .line 0
    return-object p0
.end method

.method public final associateStartingDataWithTask()V
    .registers 2

    .line 2695
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    iput-object p0, v0, Lcom/android/server/wm/StartingData;->mAssociatedTask:Lcom/android/server/wm/Task;

    .line 2696
    iput-object v0, p0, Lcom/android/server/wm/Task;->mSharedStartingData:Lcom/android/server/wm/StartingData;

    return-void
.end method

.method public associateStartingWindowWithTaskIfNeeded()V
    .registers 3

    .line 2701
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mStartingWindow:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    if-eqz v0, :cond_34

    iget-object v0, v0, Lcom/android/server/wm/StartingData;->mAssociatedTask:Lcom/android/server/wm/Task;

    if-eqz v0, :cond_d

    goto :goto_34

    .line 2705
    :cond_d
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->inTransition()Z

    move-result v0

    if-nez v0, :cond_2e

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    goto :goto_34

    .line 2711
    :cond_2e
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->associateStartingDataWithTask()V

    .line 2712
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->attachStartingSurfaceToAssociatedTask()V

    :cond_34
    :goto_34
    return-void
.end method

.method public final attachStartingSurfaceToAssociatedTask()V
    .registers 3

    .line 2686
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mStartingWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/TransitionController;->collect(Lcom/android/server/wm/WindowContainer;)V

    .line 2688
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mStartingWindow:Lcom/android/server/wm/WindowState;

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    iget-object v1, v1, Lcom/android/server/wm/StartingData;->mAssociatedTask:Lcom/android/server/wm/Task;

    invoke-static {v0, v1}, Lcom/android/server/wm/WindowContainer;->overrideConfigurationPropagation(Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/WindowContainer;)V

    .line 2689
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mStartingWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mStartingWindow:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    iget-object p0, p0, Lcom/android/server/wm/StartingData;->mAssociatedTask:Lcom/android/server/wm/Task;

    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1, p0}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    return-void
.end method

.method public attachStartingWindow(Lcom/android/server/wm/WindowState;)V
    .registers 3

    .line 2666
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    iput-object v0, p1, Lcom/android/server/wm/WindowState;->mStartingData:Lcom/android/server/wm/StartingData;

    .line 2667
    iput-object p1, p0, Lcom/android/server/wm/ActivityRecord;->mStartingWindow:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_31

    .line 2669
    iget-object p1, v0, Lcom/android/server/wm/StartingData;->mAssociatedTask:Lcom/android/server/wm/Task;

    if-eqz p1, :cond_16

    .line 2672
    invoke-virtual {p0}, Lcom/android/server/wm/WindowToken;->hasFixedRotationTransform()Z

    move-result p1

    if-nez p1, :cond_1f

    .line 2673
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->attachStartingSurfaceToAssociatedTask()V

    goto :goto_1f

    .line 2675
    :cond_16
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isEmbedded()Z

    move-result p1

    if-eqz p1, :cond_1f

    .line 2676
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->associateStartingWindowWithTaskIfNeeded()V

    .line 2678
    :cond_1f
    :goto_1f
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {p1}, Lcom/android/server/wm/TransitionController;->isCollecting()Z

    move-result p1

    if-eqz p1, :cond_31

    .line 2679
    iget-object p1, p0, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {p0}, Lcom/android/server/wm/TransitionController;->getCollectingTransitionId()I

    move-result p0

    iput p0, p1, Lcom/android/server/wm/StartingData;->mTransitionId:I

    :cond_31
    return-void
.end method

.method public attachedToProcess()Z
    .registers 2

    .line 2183
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->hasProcess()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->hasThread()Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method public canAffectSystemUiFlags()Z
    .registers 2

    .line 5356
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 5357
    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->canAffectSystemUiFlags()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 5358
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mWaitForEnteringPinnedMode:Z

    if-nez v0, :cond_1e

    .line 5359
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result p0

    if-nez p0, :cond_1e

    const/4 p0, 0x1

    return p0

    :cond_1e
    const/4 p0, 0x0

    return p0
.end method

.method public canAutoEnterPip()Z
    .registers 3

    .line 1643
    const-string v0, "startActivityUnchecked"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/ActivityRecord;->checkEnterPictureInPictureState(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1647
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->pictureInPictureArgs:Landroid/app/PictureInPictureParams;

    if-eqz p0, :cond_15

    .line 1648
    invoke-virtual {p0}, Landroid/app/PictureInPictureParams;->isAutoEnterEnabled()Z

    move-result p0

    if-eqz p0, :cond_15

    const/4 p0, 0x1

    return p0

    :cond_15
    return v1
.end method

.method public canBeLaunchedOnDisplay(I)Z
    .registers 5

    .line 3283
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget v1, p0, Lcom/android/server/wm/ActivityRecord;->launchedFromPid:I

    iget v2, p0, Lcom/android/server/wm/ActivityRecord;->launchedFromUid:I

    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0, p1, v1, v2, p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->canPlaceEntityOnDisplay(IIILandroid/content/pm/ActivityInfo;)Z

    move-result p0

    return p0
.end method

.method public canBeTopRunning()Z
    .registers 2

    .line 6804
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v0, :cond_c

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->showToCurrentUser()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public canCaptureSnapshot()Z
    .registers 3

    .line 9547
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mVisible:Z

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 9550
    :cond_6
    new-instance v0, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda16;

    invoke-direct {v0}, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda16;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result p0

    return p0
.end method

.method public canCreateRemoteAnimationTarget()Z
    .registers 1

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public canCustomizeAppTransition()Z
    .registers 1

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public canDefineOrientationForActivitiesAbove()Z
    .registers 3

    .line 7346
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    return v1

    .line 7349
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getOverrideOrientation()I

    move-result p0

    const/4 v0, -0x2

    if-eq p0, v0, :cond_12

    const/4 v0, 0x3

    if-eq p0, v0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    return v1
.end method

.method public canEnterPictureInPicture()Z
    .registers 2

    .line 3225
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->supportsPictureInPicture()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-eqz p0, :cond_10

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isDisablePip()Z

    move-result p0

    if-nez p0, :cond_12

    :cond_10
    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method public canForceResizeNonResizable(I)Z
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_d

    .line 3195
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v2}, Landroid/content/pm/ActivityInfo;->supportsPictureInPicture()Z

    move-result v2

    if-eqz v2, :cond_d

    return v0

    .line 3199
    :cond_d
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    const/4 v3, 0x1

    if-eqz v2, :cond_23

    .line 3200
    invoke-virtual {v2}, Lcom/android/server/wm/TaskFragment;->supportsMultiWindow()Z

    move-result v2

    if-nez v2, :cond_21

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->supportsMultiWindow()Z

    move-result v2

    if-eqz v2, :cond_1f

    goto :goto_21

    :cond_1f
    move v2, v0

    goto :goto_27

    :cond_21
    :goto_21
    move v2, v3

    goto :goto_27

    .line 3201
    :cond_23
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->supportsMultiWindow()Z

    move-result v2

    .line 3202
    :goto_27
    invoke-static {p1}, Landroid/app/WindowConfiguration;->inMultiWindowMode(I)Z

    move-result p1

    if-eqz p1, :cond_36

    if-eqz v2, :cond_36

    iget-object p1, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mForceResizableActivities:Z

    if-nez p1, :cond_36

    return v0

    .line 3207
    :cond_36
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget p0, p0, Landroid/content/pm/ActivityInfo;->resizeMode:I

    if-eq p0, v1, :cond_3f

    if-eq p0, v3, :cond_3f

    return v3

    :cond_3f
    return v0
.end method

.method public final canLaunchAssistActivity(Ljava/lang/String;)Z
    .registers 2

    .line 2891
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mActiveVoiceInteractionServiceComponent:Landroid/content/ComponentName;

    if-eqz p0, :cond_f

    .line 2894
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method public canLaunchHomeActivity(ILcom/android/server/wm/ActivityRecord;)Z
    .registers 5

    const/16 v0, 0x3e8

    const/4 v1, 0x1

    if-eq p1, v0, :cond_24

    if-nez p1, :cond_8

    goto :goto_24

    .line 2879
    :cond_8
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getRecentTasks()Lcom/android/server/wm/RecentTasks;

    move-result-object p0

    if-eqz p0, :cond_19

    .line 2880
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RecentTasks;->isCallerRecents(I)Z

    move-result p0

    if-eqz p0, :cond_19

    return v1

    :cond_19
    if-eqz p2, :cond_22

    .line 2884
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->isResolverOrDelegateActivity()Z

    move-result p0

    if-eqz p0, :cond_22

    return v1

    :cond_22
    const/4 p0, 0x0

    return p0

    :cond_24
    :goto_24
    return v1
.end method

.method public canReceiveKeys()Z
    .registers 2

    .line 3123
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->canReceiveKeys()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-boolean p0, p0, Lcom/android/server/wm/ActivityRecord;->mWaitForEnteringPinnedMode:Z

    if-nez p0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method public canResumeByCompat()Z
    .registers 2

    .line 9218
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eqz v0, :cond_d

    invoke-virtual {v0, p0}, Lcom/android/server/wm/WindowProcessController;->updateTopResumingActivityInProcessIfNeeded(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    if-eqz p0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x0

    return p0

    :cond_d
    :goto_d
    const/4 p0, 0x1

    return p0
.end method

.method public canShowWhenLocked()Z
    .registers 3

    .line 4856
    invoke-static {p0}, Lcom/android/server/wm/ActivityRecord;->canShowWhenLocked(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 4859
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object p0

    const/4 v0, 0x1

    if-eqz p0, :cond_27

    .line 4860
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->hasAdjacentTaskFragment()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 4861
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->isEmbedded()Z

    move-result v1

    if-nez v1, :cond_1c

    goto :goto_27

    .line 4867
    :cond_1c
    new-instance v1, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p0, v1}, Lcom/android/server/wm/TaskFragment;->forOtherAdjacentTaskFragments(Ljava/util/function/Predicate;)Z

    move-result p0

    xor-int/2addr p0, v0

    return p0

    :cond_27
    :goto_27
    return v0
.end method

.method public canShowWindows()Z
    .registers 2

    .line 4876
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 4877
    iget p0, p0, Lcom/android/server/wm/WindowContainer;->mSyncState:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_e

    return v0

    :cond_e
    const/4 p0, 0x0

    return p0

    :cond_10
    iget-boolean p0, p0, Lcom/android/server/wm/ActivityRecord;->allDrawn:Z

    return p0
.end method

.method public canStartChangeTransition()Z
    .registers 2

    .line 1499
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 1501
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isDragResizing()Z

    move-result v0

    if-nez v0, :cond_14

    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->canStartChangeTransition()Z

    move-result p0

    if-eqz p0, :cond_14

    const/4 p0, 0x1

    return p0

    :cond_14
    const/4 p0, 0x0

    return p0
.end method

.method public canTurnScreenOn()Z
    .registers 3

    .line 9177
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTurnScreenOnFlag()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 9180
    :cond_8
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mCurrentLaunchCanTurnScreenOn:Z

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 9181
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->getKeyguardController()Lcom/android/server/wm/KeyguardController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/wm/KeyguardController;->checkKeyguardVisibility(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    if-eqz p0, :cond_1a

    const/4 p0, 0x1

    return p0

    :cond_1a
    return v1
.end method

.method public cancelInitializing()V
    .registers 2

    .line 7148
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    .line 7151
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->removeStartingWindowAnimation(Z)V

    .line 7153
    :cond_8
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mUnknownAppVisibilityController:Lcom/android/server/wm/UnknownAppVisibilityController;

    invoke-virtual {v0}, Lcom/android/server/wm/UnknownAppVisibilityController;->allResolved()Z

    move-result v0

    if-nez v0, :cond_19

    .line 7156
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mUnknownAppVisibilityController:Lcom/android/server/wm/UnknownAppVisibilityController;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/UnknownAppVisibilityController;->appRemovedOrHidden(Lcom/android/server/wm/ActivityRecord;)V

    :cond_19
    return-void
.end method

.method public checkContentUriPermission(Landroid/os/IBinder;Lcom/android/server/uri/GrantUri;I)Z
    .registers 4

    .line 1842
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mCallerState:Lcom/android/server/wm/ActivityCallerState;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/ActivityCallerState;->checkContentUriPermission(Landroid/os/IBinder;Lcom/android/server/uri/GrantUri;I)Z

    move-result p0

    return p0
.end method

.method public checkEnterPictureInPictureAppOpsState()Z
    .registers 4

    .line 3380
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getAppOpsManager()Landroid/app/AppOpsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    const/16 v2, 0x43

    invoke-virtual {v0, v2, v1, p0}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result p0

    if-nez p0, :cond_18

    const/4 p0, 0x1

    return p0

    :cond_18
    const/4 p0, 0x0

    return p0
.end method

.method public checkEnterPictureInPictureState(Ljava/lang/String;Z)Z
    .registers 9

    .line 3294
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->canEnterPictureInPicture()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 3299
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->checkEnterPictureInPictureAppOpsState()Z

    move-result v0

    if-nez v0, :cond_f

    return v1

    .line 3304
    :cond_f
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->shouldDisableNonVrUiLocked()Z

    move-result v0

    if-eqz v0, :cond_18

    return v1

    .line 3310
    :cond_18
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    if-eqz v0, :cond_cb

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eq v0, p0, :cond_2a

    goto/16 :goto_cb

    .line 3315
    :cond_2a
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v0, :cond_5f

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mDwpcHelper:Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;

    .line 3316
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v2

    .line 3315
    invoke-virtual {v0, v2}, Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;->isEnteringPipAllowed(I)Z

    move-result v0

    if-nez v0, :cond_5f

    .line 3317
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Display "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " doesn\'t support enter picture-in-picture mode. caller = "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ActivityTaskManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 3322
    :cond_5f
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getOptions()Landroid/app/ActivityOptions;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_71

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getOptions()Landroid/app/ActivityOptions;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ActivityOptions;->isLaunchIntoPip()Z

    move-result p1

    if-eqz p1, :cond_71

    return v0

    .line 3326
    :cond_71
    iget-object p1, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 3327
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskModeState()I

    move-result p1

    if-eqz p1, :cond_7b

    move p1, v0

    goto :goto_7c

    :cond_7b
    move p1, v1

    .line 3328
    :goto_7c
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    if-eqz v2, :cond_8a

    .line 3329
    invoke-virtual {v2}, Lcom/android/server/wm/TaskDisplayArea;->hasPinnedTask()Z

    move-result v2

    if-eqz v2, :cond_8a

    move v2, v0

    goto :goto_8b

    :cond_8a
    move v2, v1

    .line 3332
    :goto_8b
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isKeyguardLocked()Z

    move-result v3

    if-nez v3, :cond_95

    if-nez p1, :cond_95

    move v3, v0

    goto :goto_96

    :cond_95
    move v3, v1

    :goto_96
    if-eqz p2, :cond_9b

    if-eqz v2, :cond_9b

    return v1

    .line 3339
    :cond_9b
    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_c2

    const/4 p1, 0x3

    if-eq v4, p1, :cond_b8

    const/4 p1, 0x4

    if-eq v4, p1, :cond_b8

    const/4 p1, 0x5

    if-eq v4, p1, :cond_ae

    goto :goto_b7

    .line 3356
    :cond_ae
    iget-boolean p0, p0, Lcom/android/server/wm/ActivityRecord;->supportsEnterPipOnTaskSwitch:Z

    if-eqz p0, :cond_b7

    if-eqz v3, :cond_b7

    if-nez v2, :cond_b7

    return v0

    :cond_b7
    :goto_b7
    return v1

    :cond_b8
    if-eqz v3, :cond_c1

    if-nez v2, :cond_c1

    .line 3350
    iget-boolean p0, p0, Lcom/android/server/wm/ActivityRecord;->supportsEnterPipOnTaskSwitch:Z

    if-eqz p0, :cond_c1

    return v0

    :cond_c1
    return v1

    :cond_c2
    if-nez p1, :cond_cb

    .line 3343
    iget-boolean p0, p0, Lcom/android/server/wm/ActivityRecord;->supportsEnterPipOnTaskSwitch:Z

    if-nez p0, :cond_ca

    if-nez p2, :cond_cb

    :cond_ca
    return v0

    :cond_cb
    :goto_cb
    return v1
.end method

.method public checkKeyguardFlagsChanged()V
    .registers 4

    .line 4758
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->containsDismissKeyguardWindow()Z

    move-result v0

    .line 4759
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->containsShowWhenLockedWindow()Z

    move-result v1

    .line 4760
    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->mLastContainsDismissKeyguardWindow:Z

    if-ne v0, v2, :cond_10

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->mLastContainsShowWhenLockedWindow:Z

    if-eq v1, v2, :cond_15

    .line 4762
    :cond_10
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->notifyKeyguardFlagsChanged()V

    .line 4764
    :cond_15
    iput-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mLastContainsDismissKeyguardWindow:Z

    .line 4765
    iput-boolean v1, p0, Lcom/android/server/wm/ActivityRecord;->mLastContainsShowWhenLockedWindow:Z

    .line 4766
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->containsTurnScreenOnWindow()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mLastContainsTurnScreenOnWindow:Z

    return-void
.end method

.method public cleanUp(ZZ)V
    .registers 7

    .line 4152
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/wm/TaskFragment;->cleanUpActivityReferences(Lcom/android/server/wm/ActivityRecord;)V

    .line 4153
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->clearLastParentBeforePip()V

    .line 4156
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 4158
    invoke-virtual {v0, p0}, Lcom/android/server/wm/Task;->abortTranslucentActivityWaiting(Lcom/android/server/wm/ActivityRecord;)V

    .line 4162
    :cond_13
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->cleanUpSplashScreen()V

    if-eqz p2, :cond_22

    .line 4165
    sget-object p2, Lcom/android/server/wm/ActivityRecord$State;->DESTROYED:Lcom/android/server/wm/ActivityRecord$State;

    const-string v0, "cleanUp"

    invoke-virtual {p0, p2, v0}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityRecord$State;Ljava/lang/String;)V

    .line 4167
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->detachFromProcess()V

    .line 4171
    :cond_22
    iget-object p2, p0, Lcom/android/server/wm/ActivityRecord;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {p2, p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->cleanupActivity(Lcom/android/server/wm/ActivityRecord;)V

    .line 4174
    iget-boolean p2, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz p2, :cond_55

    iget-object p2, p0, Lcom/android/server/wm/ActivityRecord;->pendingResults:Ljava/util/HashSet;

    if-eqz p2, :cond_55

    .line 4175
    invoke-virtual {p2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_33
    :goto_33
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_52

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 4176
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/PendingIntentRecord;

    if-eqz v0, :cond_33

    .line 4178
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mPendingIntentController:Lcom/android/server/am/PendingIntentController;

    const/4 v2, 0x0

    const/16 v3, 0x10

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/am/PendingIntentController;->cancelIntentSender(Lcom/android/server/am/PendingIntentRecord;ZI)V

    goto :goto_33

    :cond_52
    const/4 p2, 0x0

    .line 4183
    iput-object p2, p0, Lcom/android/server/wm/ActivityRecord;->pendingResults:Ljava/util/HashSet;

    :cond_55
    if-eqz p1, :cond_5a

    .line 4187
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->cleanUpActivityServices()V

    .line 4191
    :cond_5a
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->removeTimeouts()V

    .line 4194
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->clearRelaunching()V

    return-void
.end method

.method public final cleanUpActivityServices()V
    .registers 2

    .line 4264
    monitor-enter p0

    .line 4265
    :try_start_1
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mServiceConnectionsHolder:Lcom/android/server/wm/ActivityServiceConnectionsHolder;

    if-nez v0, :cond_9

    .line 4266
    monitor-exit p0

    return-void

    :catchall_7
    move-exception v0

    goto :goto_11

    .line 4269
    :cond_9
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityServiceConnectionsHolder;->disconnectActivityFromServices()V

    const/4 v0, 0x0

    .line 4271
    iput-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mServiceConnectionsHolder:Lcom/android/server/wm/ActivityServiceConnectionsHolder;

    .line 4272
    monitor-exit p0

    return-void

    :goto_11
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_7

    throw v0
.end method

.method public cleanUpSplashScreen()V
    .registers 6

    .line 2649
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mHandleExitSplashScreen:Z

    if-eqz v0, :cond_3b

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->startingMoved:Z

    if-nez v0, :cond_3b

    iget v0, p0, Lcom/android/server/wm/ActivityRecord;->mTransferringSplashScreenState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_f

    if-nez v0, :cond_3b

    .line 2652
    :cond_f
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_STARTING_WINDOW_enabled:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_28

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_STARTING_WINDOW:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v3, -0x120645155da2c839L    # -5.812982579296777E221

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v3, v4, v1, v0}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 2653
    :cond_28
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    .line 2654
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mStartingSurface:Lcom/android/server/wm/StartingSurfaceController$StartingSurface;

    if-eqz p0, :cond_37

    iget-object p0, p0, Lcom/android/server/wm/StartingSurfaceController$StartingSurface;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    goto :goto_38

    :cond_37
    const/4 p0, 0x0

    .line 2653
    :goto_38
    invoke-virtual {v0, v1, p0}, Lcom/android/server/wm/TaskOrganizerController;->onAppSplashScreenViewRemoved(Lcom/android/server/wm/Task;Landroid/window/ITaskOrganizer;)V

    :cond_3b
    return-void
.end method

.method public cleanUpStartingInfo()V
    .registers 2

    const/4 v0, 0x0

    .line 2828
    iput-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    .line 2829
    iput-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mStartingSurface:Lcom/android/server/wm/StartingSurfaceController$StartingSurface;

    .line 2830
    iput-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mStartingWindow:Lcom/android/server/wm/WindowState;

    .line 2831
    iget v0, p0, Lcom/android/server/wm/ActivityRecord;->mTransitionChangeFlags:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/android/server/wm/ActivityRecord;->mTransitionChangeFlags:I

    return-void
.end method

.method public clearAllDrawn()V
    .registers 2

    const/4 v0, 0x0

    .line 5227
    iput-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->allDrawn:Z

    return-void
.end method

.method public clearCustomTransition(Z)V
    .registers 3

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    .line 9576
    iput-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mCustomOpenTransition:Lcom/android/server/wm/ActivityRecord$CustomAppTransition;

    return-void

    .line 9578
    :cond_6
    iput-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mCustomCloseTransition:Lcom/android/server/wm/ActivityRecord$CustomAppTransition;

    return-void
.end method

.method public clearLastParentBeforePip()V
    .registers 3

    .line 1678
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mLastParentBeforePip:Lcom/android/server/wm/Task;

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    .line 1679
    iput-object v1, v0, Lcom/android/server/wm/Task;->mChildPipActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1680
    iput-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mLastParentBeforePip:Lcom/android/server/wm/Task;

    .line 1682
    :cond_9
    iput-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mLaunchIntoPipHostActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1683
    iput-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mLastTaskFragmentOrganizerBeforePip:Landroid/window/ITaskFragmentOrganizer;

    .line 1684
    iput-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mLastEmbeddedParentTfTokenBeforePip:Landroid/os/IBinder;

    return-void
.end method

.method public clearOptionsAnimation()V
    .registers 2

    const/4 v0, 0x0

    .line 5285
    iput-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mPendingOptions:Landroid/app/ActivityOptions;

    .line 5286
    iput-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mPendingRemoteAnimation:Landroid/view/RemoteAnimationAdapter;

    .line 5287
    iput-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mPendingRemoteTransition:Landroid/window/RemoteTransition;

    return-void
.end method

.method public clearOptionsAnimationForSiblings()V
    .registers 2

    .line 5291
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-nez v0, :cond_8

    .line 5292
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->clearOptionsAnimation()V

    return-void

    .line 5295
    :cond_8
    new-instance p0, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda12;

    invoke-direct {p0}, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda12;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public clearRelaunching()V
    .registers 2

    .line 4239
    iget v0, p0, Lcom/android/server/wm/ActivityRecord;->mPendingRelaunchCount:I

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    .line 4242
    iput v0, p0, Lcom/android/server/wm/ActivityRecord;->mPendingRelaunchCount:I

    .line 4243
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->finishOrAbortReplacingWindow()V

    return-void
.end method

.method public clearVoiceSessionLocked()V
    .registers 2

    const/4 v0, 0x0

    .line 6958
    iput-object v0, p0, Lcom/android/server/wm/ActivityRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    const/4 v0, 0x0

    .line 6959
    iput-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->pendingVoiceInteractionStart:Z

    return-void
.end method

.method public commitFinishDrawing(Landroid/view/SurfaceControl$Transaction;)V
    .registers 4

    .line 5657
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_18

    .line 5658
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowState;->commitFinishDrawing(Landroid/view/SurfaceControl$Transaction;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_18
    return-void
.end method

.method public commitVisibility(ZZ)V
    .registers 4

    const/4 v0, 0x0

    .line 5644
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/ActivityRecord;->commitVisibility(ZZZ)V

    return-void
.end method

.method public commitVisibility(ZZZ)V
    .registers 12

    const/4 v0, 0x0

    .line 5575
    iput-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mVisibleSetFromTransferredStartingWindow:Z

    .line 5576
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isVisible()Z

    move-result v1

    if-ne p1, v1, :cond_b

    goto/16 :goto_da

    :cond_b
    const/4 v1, 0x1

    if-nez p1, :cond_25

    .line 5581
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v1

    :goto_15
    if-ltz v2, :cond_25

    .line 5582
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->onAppCommitInvisible()V

    add-int/lit8 v2, v2, -0x1

    goto :goto_15

    .line 5585
    :cond_25
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRecord;->setVisible(Z)V

    .line 5586
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRecord;->setVisibleRequested(Z)Z

    .line 5587
    sget-object v2, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_APP_TRANSITIONS_enabled:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_60

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/wm/WindowContainer;->mVisibleRequested:Z

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->inTransition()Z

    move-result v4

    const/4 v5, 0x5

    invoke-static {v5}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_APP_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    filled-new-array {v2, v7, v3, v4, v5}, [Ljava/lang/Object;

    move-result-object v2

    const-wide v3, 0x6865e59975b8316cL    # 7.992254571324703E194

    const/16 v5, 0xfc

    invoke-static {v6, v3, v4, v5, v2}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_60
    if-eqz p1, :cond_7d

    .line 5594
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mStartingWindow:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_7d

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isDrawn()Z

    move-result v2

    if-nez v2, :cond_7d

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->firstWindowDrawn:Z

    if-nez v2, :cond_74

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->allDrawn:Z

    if-eqz v2, :cond_7d

    .line 5596
    :cond_74
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mStartingWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowState;->clearPolicyVisibilityFlag(I)V

    .line 5597
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mStartingWindow:Lcom/android/server/wm/WindowState;

    iput-boolean v0, v2, Lcom/android/server/wm/WindowState;->mLegacyPolicyVisibilityAfterAnim:Z

    .line 5603
    :cond_7d
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getOrganizedTask()Lcom/android/server/wm/Task;

    move-result-object v2

    :goto_81
    if-eqz v2, :cond_8f

    .line 5605
    invoke-virtual {v2, v0}, Lcom/android/server/wm/Task;->dispatchTaskInfoChangedIfNeeded(Z)V

    .line 5606
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v2

    goto :goto_81

    .line 5608
    :cond_8f
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    .line 5609
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/InputMonitor;->setUpdateInputWindowsNeededLw()V

    if-eqz p2, :cond_a9

    .line 5611
    iget-object p2, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    const/4 v3, 0x3

    invoke-virtual {p2, v3, v0}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    .line 5613
    iget-object p2, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p2, p2, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {p2}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    .line 5615
    :cond_a9
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 5616
    iput v0, p0, Lcom/android/server/wm/ActivityRecord;->mTransitionChangeFlags:I

    if-nez p1, :cond_ba

    .line 5625
    iget-object p2, p0, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityRecord$State;

    sget-object v0, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    if-eq p2, v0, :cond_bd

    .line 5626
    :cond_ba
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowToken;->setClientVisible(Z)V

    :cond_bd
    if-nez p3, :cond_da

    .line 5631
    iget-object p2, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p2, p2, Lcom/android/server/wm/WindowManagerService;->mSnapshotController:Lcom/android/server/wm/SnapshotController;

    invoke-virtual {p2, p0, p1}, Lcom/android/server/wm/SnapshotController;->notifyAppVisibilityChanged(Lcom/android/server/wm/ActivityRecord;Z)V

    if-eqz p1, :cond_d3

    .line 5635
    iput-boolean v1, p0, Lcom/android/server/wm/ActivityRecord;->mEnteringAnimation:Z

    .line 5636
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mActivityManagerAppTransitionNotifier:Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;

    iget-object p2, p0, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {p1, p2}, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;->onAppTransitionFinishedLocked(Landroid/os/IBinder;)V

    .line 5639
    :cond_d3
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowAnimator;->addSurfaceVisibilityUpdateIncludingAnimatableParents(Lcom/android/server/wm/WindowContainer;)V

    :cond_da
    :goto_da
    return-void
.end method

.method public completeFinishing(Ljava/lang/String;)Lcom/android/server/wm/ActivityRecord;
    .registers 3

    const/4 v0, 0x1

    .line 3773
    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/ActivityRecord;->completeFinishing(ZLjava/lang/String;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    return-object p0
.end method

.method public completeFinishing(ZLjava/lang/String;)Lcom/android/server/wm/ActivityRecord;
    .registers 9

    .line 3786
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v0, :cond_e3

    sget-object v0, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v0

    if-nez v0, :cond_e3

    .line 3792
    sget-object v0, Lcom/android/server/wm/ActivityRecord$State;->PAUSING:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v0

    if-eqz v0, :cond_16

    goto/16 :goto_e2

    .line 3797
    :cond_16
    iget-boolean v0, p0, Lcom/android/server/wm/WindowContainer;->mVisibleRequested:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_29

    sget-object v0, Lcom/android/server/wm/ActivityRecord$State;->PAUSED:Lcom/android/server/wm/ActivityRecord$State;

    sget-object v3, Lcom/android/server/wm/ActivityRecord$State;->STARTED:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {p0, v0, v3}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v0

    if-eqz v0, :cond_27

    goto :goto_29

    :cond_27
    move v0, v2

    goto :goto_2a

    :cond_29
    :goto_29
    move v0, v1

    :goto_2a
    const/4 v3, 0x0

    if-eqz p1, :cond_55

    if-eqz v0, :cond_55

    .line 3798
    iget-object p1, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 3800
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isClearingToReuseTask()Z

    move-result p1

    if-nez p1, :cond_55

    .line 3802
    invoke-virtual {p0, v1}, Lcom/android/server/wm/ActivityRecord;->occludesParent(Z)Z

    move-result p1

    if-eqz p1, :cond_3e

    goto :goto_50

    .line 3806
    :cond_3e
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isKeyguardLocked()Z

    move-result p1

    if-eqz p1, :cond_55

    iget-object p1, p0, Lcom/android/server/wm/ActivityRecord;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 3807
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityTaskSupervisor;->getKeyguardController()Lcom/android/server/wm/KeyguardController;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/server/wm/KeyguardController;->topActivityOccludesKeyguard(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p1

    if-eqz p1, :cond_55

    .line 3816
    :goto_50
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p1, v3, v1}, Lcom/android/server/wm/DisplayContent;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;Z)V

    .line 3831
    :cond_55
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/android/server/wm/TaskDisplayArea;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    .line 3837
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v4

    if-eqz p1, :cond_8a

    if-eqz v4, :cond_8a

    .line 3838
    invoke-virtual {v4}, Lcom/android/server/wm/TaskFragment;->isEmbedded()Z

    move-result v5

    if-eqz v5, :cond_8a

    .line 3839
    invoke-virtual {v4}, Lcom/android/server/wm/TaskFragment;->getOrganizedTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v4

    if-eqz v4, :cond_8a

    .line 3841
    invoke-virtual {v4}, Lcom/android/server/wm/TaskFragment;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    if-nez v5, :cond_8a

    .line 3842
    invoke-virtual {v4}, Lcom/android/server/wm/TaskFragment;->isDelayLastActivityRemoval()Z

    move-result v5

    if-eqz v5, :cond_8a

    .line 3843
    new-instance v5, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda4;

    invoke-direct {v5, p1}, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/wm/ActivityRecord;)V

    invoke-virtual {v4, v5}, Lcom/android/server/wm/TaskFragment;->forOtherAdjacentTaskFragments(Ljava/util/function/Predicate;)Z

    move-result v4

    if-eqz v4, :cond_8a

    move v4, v1

    goto :goto_8b

    :cond_8a
    move v4, v2

    :goto_8b
    if-eqz p1, :cond_98

    .line 3850
    iget-boolean v5, p1, Lcom/android/server/wm/ActivityRecord;->nowVisible:Z

    if-eqz v5, :cond_99

    .line 3851
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v5

    if-nez v5, :cond_98

    goto :goto_99

    :cond_98
    move v1, v2

    :cond_99
    :goto_99
    if-eqz v1, :cond_b2

    .line 3854
    iget-object v5, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->isSleeping()Z

    move-result v5

    if-eqz v5, :cond_b2

    .line 3855
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/wm/TaskFragment;->mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

    if-ne p1, v5, :cond_b2

    .line 3856
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/TaskFragment;->clearLastPausedActivity()V

    :cond_b2
    if-eqz v0, :cond_d8

    if-nez v1, :cond_cd

    if-nez v4, :cond_cd

    if-eqz p1, :cond_c1

    .line 3860
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->inTransition()Z

    move-result p1

    if-eqz p1, :cond_c1

    goto :goto_cd

    .line 3866
    :cond_c1
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->addToFinishingAndWaitForIdle()Z

    move-result p1

    if-eqz p1, :cond_c8

    goto :goto_df

    .line 3873
    :cond_c8
    invoke-virtual {p0, p2}, Lcom/android/server/wm/ActivityRecord;->destroyIfPossible(Ljava/lang/String;)Z

    move-result v2

    goto :goto_df

    .line 3863
    :cond_cd
    :goto_cd
    const-string p1, "completeFinishing"

    invoke-virtual {p0, v2, v2, p1}, Lcom/android/server/wm/ActivityRecord;->addToStopping(ZZLjava/lang/String;)V

    .line 3865
    sget-object p2, Lcom/android/server/wm/ActivityRecord$State;->STOPPING:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {p0, p2, p1}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityRecord$State;Ljava/lang/String;)V

    goto :goto_df

    .line 3878
    :cond_d8
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->addToFinishingAndWaitForIdle()Z

    .line 3879
    invoke-virtual {p0, p2}, Lcom/android/server/wm/ActivityRecord;->destroyIfPossible(Ljava/lang/String;)Z

    move-result v2

    :goto_df
    if-eqz v2, :cond_e2

    return-object v3

    :cond_e2
    :goto_e2
    return-object p0

    .line 3787
    :cond_e3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Activity must be finishing and not resumed to complete, r="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", finishing="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", state="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public completeResumeLocked()V
    .registers 4

    const/4 v0, 0x0

    .line 6249
    iput-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->idle:Z

    const/4 v0, 0x0

    .line 6250
    iput-object v0, p0, Lcom/android/server/wm/ActivityRecord;->results:Ljava/util/ArrayList;

    .line 6251
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    if-eqz v1, :cond_20

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_20

    .line 6252
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    iput-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mLastNewIntent:Landroid/content/Intent;

    .line 6254
    :cond_20
    iput-object v0, p0, Lcom/android/server/wm/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    .line 6256
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v1, p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->updateHomeProcessIfNeeded(Lcom/android/server/wm/ActivityRecord;)V

    .line 6258
    iget-boolean v1, p0, Lcom/android/server/wm/ActivityRecord;->nowVisible:Z

    if-eqz v1, :cond_30

    .line 6259
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v1, p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->stopWaitingForActivityVisible(Lcom/android/server/wm/ActivityRecord;)V

    .line 6263
    :cond_30
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v1, p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->scheduleIdleTimeout(Lcom/android/server/wm/ActivityRecord;)V

    .line 6265
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 6266
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/TaskDisplayArea;->allResumedActivitiesComplete()Z

    move-result v1

    if-eqz v1, :cond_54

    .line 6268
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    invoke-virtual {v1}, Lcom/android/server/wm/AppCompatController;->getSizeCompatModePolicy()Lcom/android/server/wm/AppCompatSizeCompatModePolicy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->updateAppCompatDisplayInsets()V

    .line 6269
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->executeAppTransitionForAllDisplay()V

    .line 6272
    :cond_54
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->resumeKeyDispatchingLocked()V

    .line 6273
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    .line 6274
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 6275
    iput-object v0, p0, Lcom/android/server/wm/ActivityRecord;->returningOptions:Landroid/app/ActivityOptions;

    .line 6277
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->canTurnScreenOn()Z

    move-result v0

    if-eqz v0, :cond_76

    .line 6278
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result p0

    const-string v1, "turnScreenOnFlag"

    invoke-virtual {v0, p0, v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->wakeUp(ILjava/lang/String;)V

    return-void

    .line 6283
    :cond_76
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->checkReadyForSleep()V

    return-void
.end method

.method public computeCallerInfo(Landroid/os/IBinder;Landroid/content/Intent;ILjava/lang/String;Z)V
    .registers 6

    .line 1837
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mCallerState:Lcom/android/server/wm/ActivityCallerState;

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/wm/ActivityCallerState;->computeCallerInfo(Landroid/os/IBinder;Landroid/content/Intent;ILjava/lang/String;Z)V

    return-void
.end method

.method public computeConfigByResolveHint(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V
    .registers 5

    .line 7787
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mResolveConfigHint:Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/server/wm/TaskFragment;->computeConfigResourceOverrides(Landroid/content/res/Configuration;Landroid/content/res/Configuration;Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;)V

    .line 7789
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mResolveConfigHint:Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;->mTmpCompatInsets:Lcom/android/server/wm/AppCompatDisplayInsets;

    .line 7790
    iput-object p1, p0, Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;->mTmpOverrideDisplayInfo:Landroid/view/DisplayInfo;

    return-void
.end method

.method public computeInitialCallerInfo()V
    .registers 7

    .line 1831
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->initialCallerInfoAccessToken:Landroid/os/IBinder;

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    iget v3, p0, Lcom/android/server/wm/ActivityRecord;->launchedFromUid:I

    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/android/server/wm/ActivityRecord;->mShareIdentity:Z

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/ActivityRecord;->computeCallerInfo(Landroid/os/IBinder;Landroid/content/Intent;ILjava/lang/String;Z)V

    return-void
.end method

.method public containsDismissKeyguardWindow()Z
    .registers 6

    .line 4770
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 4776
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isRelaunching()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 4777
    iget-boolean p0, p0, Lcom/android/server/wm/ActivityRecord;->mLastContainsDismissKeyguardWindow:Z

    return p0

    .line 4780
    :cond_11
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    :goto_19
    if-ltz v0, :cond_30

    .line 4781
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v4, 0x400000

    and-int/2addr v3, v4

    if-eqz v3, :cond_2d

    return v2

    :cond_2d
    add-int/lit8 v0, v0, -0x1

    goto :goto_19

    :cond_30
    return v1
.end method

.method public containsShowWhenLockedWindow()Z
    .registers 5

    .line 4792
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isRelaunching()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 4793
    iget-boolean p0, p0, Lcom/android/server/wm/ActivityRecord;->mLastContainsShowWhenLockedWindow:Z

    return p0

    .line 4796
    :cond_9
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_11
    if-ltz v0, :cond_28

    .line 4797
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x80000

    and-int/2addr v2, v3

    if-eqz v2, :cond_25

    return v1

    :cond_25
    add-int/lit8 v0, v0, -0x1

    goto :goto_11

    :cond_28
    const/4 p0, 0x0

    return p0
.end method

.method public final containsTurnScreenOnWindow()Z
    .registers 5

    .line 9200
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isRelaunching()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 9201
    iget-boolean p0, p0, Lcom/android/server/wm/ActivityRecord;->mLastContainsTurnScreenOnWindow:Z

    return p0

    .line 9203
    :cond_9
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_11
    if-ltz v0, :cond_28

    .line 9204
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x200000

    and-int/2addr v2, v3

    if-eqz v2, :cond_25

    return v1

    :cond_25
    add-int/lit8 v0, v0, -0x1

    goto :goto_11

    :cond_28
    const/4 p0, 0x0

    return p0
.end method

.method public final createSnapshot(Landroid/window/TaskSnapshot;I)Z
    .registers 8

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 2378
    :cond_4
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_STARTING_WINDOW_enabled:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_15

    sget-object v1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_STARTING_WINDOW:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v2, -0x2fa12132dcbcc5afL    # -1.4298154306107322E79

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 2379
    :cond_15
    new-instance v0, Lcom/android/server/wm/SnapshotStartingData;

    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {v0, v1, p1, p2}, Lcom/android/server/wm/SnapshotStartingData;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/window/TaskSnapshot;I)V

    iput-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    .line 2380
    iget-boolean p1, p0, Lcom/android/server/wm/ActivityRecord;->mStyleFillsParent:Z

    const/4 p2, 0x1

    if-nez p1, :cond_2b

    iget-object p1, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result p1

    if-gt p1, p2, :cond_38

    :cond_2b
    iget-object p1, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    new-instance v0, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda29;

    invoke-direct {v0}, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda29;-><init>()V

    .line 2381
    invoke-virtual {p1, v0}, Lcom/android/server/wm/TaskFragment;->forAllLeafTaskFragments(Ljava/util/function/Predicate;)Z

    move-result p1

    if-eqz p1, :cond_3b

    .line 2390
    :cond_38
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->associateStartingDataWithTask()V

    .line 2392
    :cond_3b
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->scheduleAddStartingWindow()V

    return p2
.end method

.method public currentLaunchCanTurnScreenOn()Z
    .registers 1

    .line 5701
    iget-boolean p0, p0, Lcom/android/server/wm/ActivityRecord;->mCurrentLaunchCanTurnScreenOn:Z

    return p0
.end method

.method public deferStartingWindowRemovalForKeyguardUnoccluding()V
    .registers 3

    .line 2721
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    if-eqz v0, :cond_27

    iget v0, v0, Lcom/android/server/wm/StartingData;->mRemoveAfterTransaction:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_27

    .line 2723
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-static {p0}, Lcom/android/server/wm/ActivityRecord;->canShowWhenLockedInner(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-nez v0, :cond_27

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v0

    if-nez v0, :cond_27

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 2724
    invoke-virtual {v0, p0}, Lcom/android/server/wm/TransitionController;->inTransition(Lcom/android/server/wm/WindowContainer;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 2725
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    iput v1, p0, Lcom/android/server/wm/StartingData;->mRemoveAfterTransaction:I

    :cond_27
    return-void
.end method

.method public final deliverNewIntentLocked(ILandroid/content/Intent;Lcom/android/server/uri/NeededUriGrants;Ljava/lang/String;ZII)V
    .registers 14

    .line 5063
    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    move-object v0, p0

    move v3, p1

    move-object v2, p2

    move-object v4, p4

    move v5, p5

    .line 5065
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/ActivityRecord;->computeCallerInfo(Landroid/os/IBinder;Landroid/content/Intent;ILjava/lang/String;Z)V

    move p4, v3

    .line 5068
    iget-object p0, v0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    .line 5069
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getUriPermissionsLocked()Lcom/android/server/uri/UriPermissionOwner;

    move-result-object p1

    .line 5068
    invoke-interface {p0, p3, p1}, Lcom/android/server/uri/UriGrantsManagerInternal;->grantUriPermissionUncheckedFromIntent(Lcom/android/server/uri/NeededUriGrants;Lcom/android/server/uri/UriPermissionOwner;)V

    if-eqz v5, :cond_27

    .line 5071
    iget-object p0, v0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object p0

    const/4 p5, 0x1

    move p1, p6

    move p3, p7

    .line 5072
    invoke-virtual/range {p0 .. p5}, Landroid/content/pm/PackageManagerInternal;->grantImplicitAccess(ILandroid/content/Intent;IIZ)V

    .line 5075
    :cond_27
    new-instance p0, Lcom/android/internal/content/ReferrerIntent;

    invoke-virtual {v0, v4}, Lcom/android/server/wm/ActivityRecord;->getFilteredReferrer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1, v1}, Lcom/android/internal/content/ReferrerIntent;-><init>(Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;)V

    .line 5077
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isSleeping()Z

    move-result p1

    const/4 p2, 0x0

    const/4 p3, 0x1

    if-eqz p1, :cond_40

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isTopRunningActivity()Z

    move-result p1

    if-eqz p1, :cond_40

    move p1, p3

    goto :goto_41

    :cond_40
    move p1, p2

    .line 5083
    :goto_41
    iget-object p4, v0, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityRecord$State;

    sget-object p5, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    if-eq p4, p5, :cond_4d

    sget-object p6, Lcom/android/server/wm/ActivityRecord$State;->PAUSED:Lcom/android/server/wm/ActivityRecord$State;

    if-eq p4, p6, :cond_4d

    if-eqz p1, :cond_7a

    .line 5084
    :cond_4d
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result p1

    if-eqz p1, :cond_7a

    .line 5085
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(I)V

    .line 5086
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5090
    new-instance p4, Landroid/app/servertransaction/NewIntentItem;

    iget-object p6, v0, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    iget-object p7, v0, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityRecord$State;

    if-ne p7, p5, :cond_64

    move p2, p3

    :cond_64
    invoke-direct {p4, p6, p1, p2}, Landroid/app/servertransaction/NewIntentItem;-><init>(Landroid/os/IBinder;Ljava/util/List;Z)V

    .line 5091
    iget-object p1, v0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityTaskManagerService;->getLifecycleManager()Lcom/android/server/wm/ClientLifecycleManager;

    move-result-object p1

    iget-object p2, v0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 5092
    invoke-virtual {p2}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object p2

    invoke-virtual {p1, p2, p4}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransactionItem(Landroid/app/IApplicationThread;Landroid/app/servertransaction/ClientTransactionItem;)Z

    move-result p1

    if-eqz p1, :cond_7a

    return-void

    .line 5099
    :cond_7a
    invoke-virtual {v0, p0}, Lcom/android/server/wm/ActivityRecord;->addNewIntentLocked(Lcom/android/internal/content/ReferrerIntent;)V

    return-void
.end method

.method public destroyIfPossible(Ljava/lang/String;)Z
    .registers 8

    .line 3891
    sget-object v0, Lcom/android/server/wm/ActivityRecord$State;->FINISHING:Lcom/android/server/wm/ActivityRecord$State;

    const-string v1, "destroyIfPossible"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityRecord$State;Ljava/lang/String;)V

    .line 3894
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3896
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 3897
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    .line 3900
    invoke-virtual {v1}, Lcom/android/server/wm/TaskDisplayArea;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_2d

    .line 3902
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isFocusedRootTaskOnDisplay()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 3903
    invoke-virtual {v1}, Lcom/android/server/wm/TaskDisplayArea;->getOrCreateRootHomeTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 3910
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->addToFinishingAndWaitForIdle()Z

    return v3

    .line 3913
    :cond_2d
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->makeFinishingLocked()V

    .line 3915
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "finish-imm:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRecord;->destroyImmediately(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x1

    if-nez v2, :cond_5f

    .line 3920
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1, v2, v4, v0}, Lcom/android/server/wm/RootWindowContainer;->ensureVisibilityAndConfig(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/DisplayContent;Z)V

    .line 3922
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-nez v1, :cond_5f

    .line 3924
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/TransitionController;->setReady(Lcom/android/server/wm/WindowContainer;)V

    :cond_5f
    if-eqz p1, :cond_66

    .line 3928
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities()Z

    .line 3931
    :cond_66
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_CONTAINERS_enabled:[Z

    aget-boolean v0, v1, v0

    if-eqz v0, :cond_82

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_CONTAINERS:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v4, -0x297bcfd520cecc67L    # -5.926592467694985E108

    filled-new-array {p0, v0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v1, v4, v5, v3, p0}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_82
    return p1
.end method

.method public destroyImmediately(Ljava/lang/String;)Z
    .registers 10

    .line 3971
    sget-object v0, Lcom/android/server/wm/ActivityRecord$State;->DESTROYING:Lcom/android/server/wm/ActivityRecord$State;

    sget-object v1, Lcom/android/server/wm/ActivityRecord$State;->DESTROYED:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_28

    .line 3972
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_STATES_enabled:[Z

    aget-boolean v0, v0, v3

    if-eqz v0, :cond_27

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_STATES:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v1, 0x7d99c1d7cadc3d4aL    # 1.0528206026161453E297

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, v1, v2, v3, p0}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_27
    return v3

    .line 3977
    :cond_28
    iget v2, p0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    iget-object v5, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    iget v5, v5, Lcom/android/server/wm/Task;->mTaskId:I

    iget-object v6, p0, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    invoke-static {v2, v4, v5, v6, p1}, Lcom/android/server/wm/EventLogTags;->writeWmDestroyActivity(IIILjava/lang/String;Ljava/lang/String;)V

    .line 3982
    invoke-virtual {p0, v3, v3}, Lcom/android/server/wm/ActivityRecord;->cleanUp(ZZ)V

    .line 3983
    invoke-virtual {p0, v3}, Lcom/android/server/wm/ActivityRecord;->setVisibleRequested(Z)Z

    .line 3985
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->hasProcess()Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_ec

    .line 3986
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v2, p0, v4}, Lcom/android/server/wm/WindowProcessController;->removeActivity(Lcom/android/server/wm/ActivityRecord;Z)V

    .line 3987
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowProcessController;->hasActivities()Z

    move-result v2

    if-nez v2, :cond_58

    .line 3988
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v2, v5}, Lcom/android/server/wm/ActivityTaskManagerService;->clearHeavyWeightProcessIfEquals(Lcom/android/server/wm/WindowProcessController;)V

    .line 3995
    :cond_58
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v2

    if-nez v2, :cond_69

    .line 3997
    const-string v2, "WindowManager"

    const-string v5, "Failed to schedule DestroyActivityItem because client is inactive"

    invoke-static {v2, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    goto :goto_7c

    .line 4000
    :cond_69
    new-instance v5, Landroid/app/servertransaction/DestroyActivityItem;

    iget-object v6, p0, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    iget-boolean v7, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    invoke-direct {v5, v6, v7}, Landroid/app/servertransaction/DestroyActivityItem;-><init>(Landroid/os/IBinder;Z)V

    .line 4001
    iget-object v6, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v6}, Lcom/android/server/wm/ActivityTaskManagerService;->getLifecycleManager()Lcom/android/server/wm/ClientLifecycleManager;

    move-result-object v6

    invoke-virtual {v6, v2, v5}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransactionItem(Landroid/app/IApplicationThread;Landroid/app/servertransaction/ClientTransactionItem;)Z

    move-result v2

    :goto_7c
    if-nez v2, :cond_98

    .line 4007
    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v2, :cond_98

    .line 4008
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " exceptionInScheduleDestroy"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRecord;->removeFromHistory(Ljava/lang/String;)V

    move p1, v4

    goto :goto_9a

    :cond_98
    move p1, v3

    move v4, p1

    .line 4014
    :goto_9a
    iput-boolean v3, p0, Lcom/android/server/wm/ActivityRecord;->nowVisible:Z

    .line 4021
    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v2, :cond_cb

    if-nez v4, :cond_cb

    .line 4022
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_STATES_enabled:[Z

    aget-boolean v1, v1, v3

    if-eqz v1, :cond_ba

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_STATES:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v4, 0x4eb91e07a7b53ab7L    # 1.733532632468599E71

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v4, v5, v3, v1}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 4023
    :cond_ba
    const-string v1, "destroyActivityLocked. finishing and not skipping destroy"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityRecord$State;Ljava/lang/String;)V

    .line 4025
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mDestroyTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return p1

    .line 4027
    :cond_cb
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_STATES_enabled:[Z

    aget-boolean v0, v0, v3

    if-eqz v0, :cond_e3

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_STATES:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v4, -0x197518f30534c481L    # -9.14493571546782E185

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v4, v5, v3, v0}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 4029
    :cond_e3
    const-string v0, "destroyActivityLocked. not finishing or skipping destroy"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityRecord$State;Ljava/lang/String;)V

    .line 4032
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->detachFromProcess()V

    return p1

    .line 4036
    :cond_ec
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v0, :cond_105

    .line 4037
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " hadNoApp"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRecord;->removeFromHistory(Ljava/lang/String;)V

    return v4

    .line 4040
    :cond_105
    sget-object p1, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_STATES_enabled:[Z

    aget-boolean p1, p1, v3

    if-eqz p1, :cond_11d

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_STATES:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v4, 0x2d8c3b9664333f3dL    # 2.7719455001043972E-89

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, v4, v5, v3, p1}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 4041
    :cond_11d
    const-string p1, "destroyActivityLocked. not finishing and had no app"

    invoke-virtual {p0, v1, p1}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityRecord$State;Ljava/lang/String;)V

    return v3
.end method

.method public destroySurfaces()V
    .registers 2

    const/4 v0, 0x0

    .line 5857
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->destroySurfaces(Z)V

    return-void
.end method

.method public final destroySurfaces(Z)V
    .registers 6

    .line 5871
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 5872
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_d
    if-ltz v1, :cond_1d

    .line 5873
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 5874
    iget-boolean v3, p0, Lcom/android/server/wm/ActivityRecord;->mAppStopped:Z

    invoke-virtual {v2, p1, v3}, Lcom/android/server/wm/WindowState;->destroySurface(ZZ)Z

    add-int/lit8 v1, v1, -0x1

    goto :goto_d

    :cond_1d
    return-void
.end method

.method public destroyed(Ljava/lang/String;)V
    .registers 8

    .line 4125
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->removeDestroyTimeout()V

    .line 4127
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_CONTAINERS_enabled:[Z

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_1d

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_CONTAINERS:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v4, -0x6f0ba7649b4ccba8L    # -5.367906016571137E-227

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v3, v4, v5, v2, v0}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 4129
    :cond_1d
    sget-object v0, Lcom/android/server/wm/ActivityRecord$State;->DESTROYING:Lcom/android/server/wm/ActivityRecord$State;

    sget-object v3, Lcom/android/server/wm/ActivityRecord$State;->DESTROYED:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {p0, v0, v3}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 4134
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    invoke-virtual {v0, v3}, Lcom/android/server/wm/ActivityTaskSupervisor;->killTaskProcessesOnDestroyedIfNeeded(Lcom/android/server/wm/Task;)V

    .line 4135
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 4136
    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/ActivityRecord;->cleanUp(ZZ)V

    .line 4137
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRecord;->removeFromHistory(Ljava/lang/String;)V

    .line 4140
    :cond_3a
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities()Z

    return-void

    .line 4130
    :cond_40
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Reported destroyed for activity that is not destroying: r="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public detachFromProcess()V
    .registers 3

    .line 4073
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eqz v0, :cond_8

    const/4 v1, 0x0

    .line 4074
    invoke-virtual {v0, p0, v1}, Lcom/android/server/wm/WindowProcessController;->removeActivity(Lcom/android/server/wm/ActivityRecord;Z)V

    :cond_8
    const/4 v0, 0x0

    .line 4076
    iput-object v0, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 4077
    sget v0, Landroid/os/InputConstants;->DEFAULT_DISPATCHING_TIMEOUT_MILLIS:I

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/server/wm/ActivityRecord;->mInputDispatchingTimeoutMillis:J

    return-void
.end method

.method public final determineLaunchSourceType(ILcom/android/server/wm/WindowProcessController;)I
    .registers 4

    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_29

    if-nez p1, :cond_7

    goto :goto_29

    :cond_7
    if-eqz p2, :cond_27

    .line 2231
    invoke-virtual {p2}, Lcom/android/server/wm/WindowProcessController;->isHomeProcess()Z

    move-result p1

    if-eqz p1, :cond_11

    const/4 p0, 0x2

    return p0

    .line 2234
    :cond_11
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getSysUiServiceComponentLocked()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    iget-object p1, p2, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 2235
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_27

    const/4 p0, 0x3

    return p0

    :cond_27
    const/4 p0, 0x4

    return p0

    :cond_29
    :goto_29
    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic dispatchConfigurationToChild(Lcom/android/server/wm/ConfigurationContainer;Landroid/content/res/Configuration;)V
    .registers 3

    .line 376
    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/ActivityRecord;->dispatchConfigurationToChild(Lcom/android/server/wm/WindowState;Landroid/content/res/Configuration;)V

    return-void
.end method

.method public dispatchConfigurationToChild(Lcom/android/server/wm/WindowState;Landroid/content/res/Configuration;)V
    .registers 4

    .line 8384
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isConfigurationDispatchPaused()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 8387
    :cond_7
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/ConfigurationContainer;->dispatchConfigurationToChild(Lcom/android/server/wm/ConfigurationContainer;Landroid/content/res/Configuration;)V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .registers 12
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 942
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 943
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "packageName="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 944
    const-string v2, " processName="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 945
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "launchedFromUid="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/ActivityRecord;->launchedFromUid:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 946
    const-string v2, " launchedFromPackage="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 947
    const-string v2, " launchedFromFeature="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->launchedFromFeatureId:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 948
    const-string v2, " userId="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 949
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "app="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 950
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->toInsecureString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 951
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "rootOfTask="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isRootOfTask()Z

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 952
    const-string v2, " task="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 953
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "taskAffinity="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->taskAffinity:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 954
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mActivityComponent="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 955
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 956
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 957
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "baseDir="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 958
    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iget-object v4, v2, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_be

    .line 959
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "resDir="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 961
    :cond_be
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "dataDir="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 962
    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    if-eqz v3, :cond_e0

    .line 963
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "splitDir="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 964
    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 966
    :cond_e0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "stateNotNeeded="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->stateNotNeeded:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 967
    const-string v2, " componentSpecified="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->componentSpecified:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 968
    const-string v2, " mActivityType="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 969
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    move-result v2

    invoke-static {v2}, Landroid/app/WindowConfiguration;->activityTypeToString(I)Ljava/lang/String;

    move-result-object v2

    .line 968
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 970
    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->rootVoiceInteraction:Z

    if-eqz v2, :cond_118

    .line 971
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "rootVoiceInteraction="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->rootVoiceInteraction:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 973
    :cond_118
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "compat="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 974
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 975
    const-string v2, " theme=0x"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/ActivityRecord;->theme:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 976
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "mLastReportedConfigurations:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 977
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mLastReportedConfiguration:Landroid/util/MergedConfiguration;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Landroid/util/MergedConfiguration;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 979
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 980
    const-string v2, "mLastReportedActivityWindowInfo="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 981
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mLastReportedActivityWindowInfo:Landroid/window/ActivityWindowInfo;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 983
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "CurrentConfiguration="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 984
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    sget-object v3, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    invoke-virtual {v2, v3}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v2

    if-nez v2, :cond_1a8

    .line 985
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "RequestedOverrideConfiguration="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 986
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 985
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 988
    :cond_1a8
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v2

    if-nez v2, :cond_1d1

    .line 989
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "ResolvedOverrideConfiguration="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 990
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 989
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 992
    :cond_1d1
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->matchParentBounds()Z

    move-result v2

    if-nez v2, :cond_1f2

    .line 993
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "bounds="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 995
    :cond_1f2
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    if-nez v2, :cond_1fa

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->resultWho:Ljava/lang/String;

    if-eqz v2, :cond_21b

    .line 996
    :cond_1fa
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "resultTo="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 997
    const-string v2, " resultWho="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->resultWho:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 998
    const-string v2, " resultCode="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/ActivityRecord;->requestCode:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 1000
    :cond_21b
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    const-string v3, "null"

    if-eqz v2, :cond_309

    .line 1001
    invoke-virtual {v2}, Landroid/app/ActivityManager$TaskDescription;->getIconFilename()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_237

    .line 1002
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v2}, Landroid/app/ActivityManager$TaskDescription;->getLabel()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_237

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 1003
    invoke-virtual {v2}, Landroid/app/ActivityManager$TaskDescription;->getPrimaryColor()I

    move-result v2

    if-eqz v2, :cond_309

    .line 1004
    :cond_237
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "taskDescription:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1005
    const-string v2, " label=\""

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v2}, Landroid/app/ActivityManager$TaskDescription;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1006
    const-string v2, "\""

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1007
    const-string v2, " icon="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v2}, Landroid/app/ActivityManager$TaskDescription;->getInMemoryIcon()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_27b

    .line 1008
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v4}, Landroid/app/ActivityManager$TaskDescription;->getInMemoryIcon()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " bytes"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_27c

    :cond_27b
    move-object v2, v3

    .line 1007
    :goto_27c
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1010
    const-string v2, " iconResource="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1011
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v2}, Landroid/app/ActivityManager$TaskDescription;->getIconResourcePackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1012
    const-string v2, "/"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1013
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v2}, Landroid/app/ActivityManager$TaskDescription;->getIconResource()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 1014
    const-string v2, " iconFilename="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v2}, Landroid/app/ActivityManager$TaskDescription;->getIconFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1015
    const-string v2, " primaryColor="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1016
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v2}, Landroid/app/ActivityManager$TaskDescription;->getPrimaryColor()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1017
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  backgroundColor="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1018
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v2}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColor()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1019
    const-string v2, " statusBarColor="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1020
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v2}, Landroid/app/ActivityManager$TaskDescription;->getStatusBarColor()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1021
    const-string v2, " navigationBarColor="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1022
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {v2}, Landroid/app/ActivityManager$TaskDescription;->getNavigationBarColor()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1023
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, " backgroundColorFloating="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1024
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 1025
    invoke-virtual {v2}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColorFloating()I

    move-result v2

    .line 1024
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1028
    :cond_309
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->results:Ljava/util/ArrayList;

    if-eqz v2, :cond_31a

    .line 1029
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "results="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->results:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1031
    :cond_31a
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->pendingResults:Ljava/util/HashSet;

    const-string v4, "  - "

    if-eqz v2, :cond_36e

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    if-lez v2, :cond_36e

    .line 1032
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Pending Results:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1033
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->pendingResults:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_334
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_36e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    if-eqz v5, :cond_349

    .line 1034
    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/PendingIntentRecord;

    goto :goto_34a

    :cond_349
    const/4 v5, 0x0

    .line 1035
    :goto_34a
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-nez v5, :cond_356

    .line 1037
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_334

    .line 1039
    :cond_356
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1040
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "    "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, p1, v6}, Lcom/android/server/am/PendingIntentRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_334

    .line 1044
    :cond_36e
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    const/4 v5, 0x0

    if-eqz v2, :cond_3a9

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3a9

    .line 1045
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Pending New Intents:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v2, v5

    .line 1046
    :goto_382
    iget-object v6, p0, Lcom/android/server/wm/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_3a9

    .line 1047
    iget-object v6, p0, Lcom/android/server/wm/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Intent;

    .line 1048
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-nez v6, :cond_39e

    .line 1050
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3a6

    :cond_39e
    const/4 v7, 0x1

    .line 1052
    invoke-virtual {v6, v5, v7, v5, v5}, Landroid/content/Intent;->toShortString(ZZZZ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_3a6
    add-int/lit8 v2, v2, 0x1

    goto :goto_382

    .line 1056
    :cond_3a9
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mPendingOptions:Landroid/app/ActivityOptions;

    if-eqz v2, :cond_3ba

    .line 1057
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "pendingOptions="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mPendingOptions:Landroid/app/ActivityOptions;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1059
    :cond_3ba
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mPendingRemoteAnimation:Landroid/view/RemoteAnimationAdapter;

    if-eqz v2, :cond_3cf

    .line 1060
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1061
    const-string v2, "pendingRemoteAnimationCallingPid="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1062
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mPendingRemoteAnimation:Landroid/view/RemoteAnimationAdapter;

    invoke-virtual {v2}, Landroid/view/RemoteAnimationAdapter;->getCallingPid()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 1064
    :cond_3cf
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mPendingRemoteTransition:Landroid/window/RemoteTransition;

    if-eqz v2, :cond_3f0

    .line 1065
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " pendingRemoteTransition="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->mPendingRemoteTransition:Landroid/window/RemoteTransition;

    .line 1066
    invoke-virtual {v3}, Landroid/window/RemoteTransition;->getRemoteTransition()Landroid/window/IRemoteTransition;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1065
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1068
    :cond_3f0
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    if-eqz v2, :cond_3f7

    .line 1069
    invoke-virtual {v2, p1, p2, v5}, Lcom/android/server/am/AppTimeTracker;->dumpWithHeader(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 1071
    :cond_3f7
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->uriPermissions:Lcom/android/server/uri/UriPermissionOwner;

    if-eqz v2, :cond_3fe

    .line 1072
    invoke-virtual {v2, p1, p2}, Lcom/android/server/uri/UriPermissionOwner;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 1074
    :cond_3fe
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "launchFailed="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->launchFailed:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 1075
    const-string v2, " launchCount="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/ActivityRecord;->launchCount:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 1076
    const-string v2, " lastLaunchTime="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1077
    iget-wide v2, p0, Lcom/android/server/wm/ActivityRecord;->lastLaunchTime:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    const-string v7, "0"

    if-nez v6, :cond_428

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_42b

    .line 1078
    :cond_428
    invoke-static {v2, v3, v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 1079
    :goto_42b
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1080
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mLaunchCookie:Landroid/os/IBinder;

    if-eqz v2, :cond_43f

    .line 1081
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1082
    const-string v2, "launchCookie="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1083
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mLaunchCookie:Landroid/os/IBinder;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1085
    :cond_43f
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mLaunchRootTask:Landroid/window/WindowContainerToken;

    if-eqz v2, :cond_450

    .line 1086
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1087
    const-string v2, "mLaunchRootTask="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1088
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mLaunchRootTask:Landroid/window/WindowContainerToken;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1090
    :cond_450
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mHaveState="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->mHaveState:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 1091
    const-string v2, " mIcicle="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mIcicle:Landroid/os/Bundle;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1092
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "state="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 1093
    const-string v2, " delayedResume="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->delayedResume:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 1094
    const-string v2, " finishing="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 1095
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "keysPaused="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->keysPaused:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 1096
    const-string v2, " inHistory="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->inHistory:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 1097
    const-string v2, " idle="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->idle:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 1098
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "occludesParent="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->occludesParent()Z

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 1099
    const-string v2, " mNoDisplay="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->mNoDisplay:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 1100
    const-string v2, " immersive="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->immersive:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 1101
    const-string v2, " launchMode="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/ActivityRecord;->launchMode:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 1102
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mActivityType="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1103
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    move-result v2

    invoke-static {v2}, Landroid/app/WindowConfiguration;->activityTypeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1104
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->requestedVrComponent:Landroid/content/ComponentName;

    if-eqz v2, :cond_4fa

    .line 1105
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1106
    const-string v2, "requestedVrComponent="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1107
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->requestedVrComponent:Landroid/content/ComponentName;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1109
    :cond_4fa
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/wm/WindowToken;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 1110
    iget-boolean p3, p0, Lcom/android/server/wm/ActivityRecord;->mVoiceInteraction:Z

    if-eqz p3, :cond_515

    .line 1111
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mVoiceInteraction=true"

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1113
    :cond_515
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, "mOccludesParent="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/android/server/wm/ActivityRecord;->mOccludesParent:Z

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Z)V

    .line 1114
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, "overrideOrientation="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1115
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getOverrideOrientation()I

    move-result p3

    invoke-static {p3}, Landroid/content/pm/ActivityInfo;->screenOrientationToString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1116
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, "requestedOrientation="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1117
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getOverrideOrientation()I

    move-result p3

    invoke-static {p3}, Landroid/content/pm/ActivityInfo;->screenOrientationToString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1118
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mVisibleRequested="

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/wm/WindowContainer;->mVisibleRequested:Z

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mVisible="

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->mVisible:Z

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mClientVisible="

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1119
    invoke-virtual {p0}, Lcom/android/server/wm/WindowToken;->isClientVisible()Z

    move-result v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " reportedDrawn="

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->mReportedDrawn:Z

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " reportedVisible="

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->reportedVisible:Z

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 1118
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1121
    iget-boolean p3, p0, Lcom/android/server/wm/WindowToken;->paused:Z

    if-eqz p3, :cond_59c

    .line 1122
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, "paused="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/android/server/wm/WindowToken;->paused:Z

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Z)V

    .line 1124
    :cond_59c
    iget-boolean p3, p0, Lcom/android/server/wm/ActivityRecord;->mAppStopped:Z

    if-eqz p3, :cond_5ad

    .line 1125
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, "mAppStopped="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/android/server/wm/ActivityRecord;->mAppStopped:Z

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Z)V

    .line 1127
    :cond_5ad
    iget p3, p0, Lcom/android/server/wm/ActivityRecord;->mNumInterestingWindows:I

    if-nez p3, :cond_5b9

    iget p3, p0, Lcom/android/server/wm/ActivityRecord;->mNumDrawnWindows:I

    if-nez p3, :cond_5b9

    iget-boolean p3, p0, Lcom/android/server/wm/ActivityRecord;->allDrawn:Z

    if-eqz p3, :cond_5df

    .line 1128
    :cond_5b9
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, "mNumInterestingWindows="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1129
    iget p3, p0, Lcom/android/server/wm/ActivityRecord;->mNumInterestingWindows:I

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    .line 1130
    const-string p3, " mNumDrawnWindows="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p3, p0, Lcom/android/server/wm/ActivityRecord;->mNumDrawnWindows:I

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    .line 1131
    const-string p3, " allDrawn="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/android/server/wm/ActivityRecord;->allDrawn:Z

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Z)V

    .line 1132
    const-string p3, ")"

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1134
    :cond_5df
    iget-object p3, p0, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    if-nez p3, :cond_5e7

    iget-boolean p3, p0, Lcom/android/server/wm/ActivityRecord;->firstWindowDrawn:Z

    if-eqz p3, :cond_5fe

    .line 1135
    :cond_5e7
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, "startingData="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 1136
    const-string p3, " firstWindowDrawn="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/android/server/wm/ActivityRecord;->firstWindowDrawn:Z

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Z)V

    .line 1138
    :cond_5fe
    iget-object p3, p0, Lcom/android/server/wm/ActivityRecord;->mStartingWindow:Lcom/android/server/wm/WindowState;

    if-nez p3, :cond_612

    iget-object p3, p0, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    if-nez p3, :cond_612

    iget-object p3, p0, Lcom/android/server/wm/ActivityRecord;->mStartingSurface:Lcom/android/server/wm/StartingSurfaceController$StartingSurface;

    if-nez p3, :cond_612

    iget-boolean p3, p0, Lcom/android/server/wm/ActivityRecord;->startingMoved:Z

    if-nez p3, :cond_612

    iget-boolean p3, p0, Lcom/android/server/wm/ActivityRecord;->mVisibleSetFromTransferredStartingWindow:Z

    if-eqz p3, :cond_655

    .line 1140
    :cond_612
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, "startingWindow="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/server/wm/ActivityRecord;->mStartingWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 1141
    const-string p3, " startingSurface="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/server/wm/ActivityRecord;->mStartingSurface:Lcom/android/server/wm/StartingSurfaceController$StartingSurface;

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 1142
    const-string p3, " startingDisplayed="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isStartingWindowDisplayed()Z

    move-result p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Z)V

    .line 1143
    const-string p3, " startingMoved="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/android/server/wm/ActivityRecord;->startingMoved:Z

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Z)V

    .line 1144
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mVisibleSetFromTransferredStartingWindow="

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->mVisibleSetFromTransferredStartingWindow:Z

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1147
    :cond_655
    iget p3, p0, Lcom/android/server/wm/ActivityRecord;->mPendingRelaunchCount:I

    if-eqz p3, :cond_666

    .line 1148
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, "mPendingRelaunchCount="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p3, p0, Lcom/android/server/wm/ActivityRecord;->mPendingRelaunchCount:I

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(I)V

    .line 1150
    :cond_666
    iget-boolean p3, p0, Lcom/android/server/wm/ActivityRecord;->mRemovingFromDisplay:Z

    if-eqz p3, :cond_683

    .line 1151
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mRemovingFromDisplay="

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->mRemovingFromDisplay:Z

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1153
    :cond_683
    iget-wide v2, p0, Lcom/android/server/wm/ActivityRecord;->lastVisibleTime:J

    cmp-long p3, v2, v4

    if-nez p3, :cond_68d

    iget-boolean p3, p0, Lcom/android/server/wm/ActivityRecord;->nowVisible:Z

    if-eqz p3, :cond_6af

    .line 1154
    :cond_68d
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, "nowVisible="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/android/server/wm/ActivityRecord;->nowVisible:Z

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Z)V

    .line 1155
    const-string p3, " lastVisibleTime="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1156
    iget-wide v2, p0, Lcom/android/server/wm/ActivityRecord;->lastVisibleTime:J

    cmp-long p3, v2, v4

    if-nez p3, :cond_6a9

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_6ac

    .line 1157
    :cond_6a9
    invoke-static {v2, v3, v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 1158
    :goto_6ac
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1160
    :cond_6af
    iget-object p3, p0, Lcom/android/server/wm/ActivityRecord;->mServiceConnectionsHolder:Lcom/android/server/wm/ActivityServiceConnectionsHolder;

    if-eqz p3, :cond_6c0

    .line 1161
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, "connections="

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/server/wm/ActivityRecord;->mServiceConnectionsHolder:Lcom/android/server/wm/ActivityServiceConnectionsHolder;

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1163
    :cond_6c0
    iget-object p3, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    if-eqz p3, :cond_84f

    .line 1164
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "resizeMode="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->resizeMode:I

    invoke-static {v0}, Landroid/content/pm/ActivityInfo;->resizeModeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1165
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "mLastReportedMultiWindowMode="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mLastReportedMultiWindowMode:Z

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " mLastReportedPictureInPictureMode="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mLastReportedPictureInPictureMode:Z

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1167
    iget-object p3, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p3}, Landroid/content/pm/ActivityInfo;->supportsPictureInPicture()Z

    move-result p3

    if-eqz p3, :cond_75d

    .line 1168
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "supportsPictureInPicture="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0}, Landroid/content/pm/ActivityInfo;->supportsPictureInPicture()Z

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1169
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "supportsEnterPipOnTaskSwitch: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->supportsEnterPipOnTaskSwitch:Z

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1171
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "mPauseSchedulePendingForPip="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mPauseSchedulePendingForPip:Z

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1173
    :cond_75d
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getMaxAspectRatio()F

    move-result p3

    const/4 v0, 0x0

    cmpl-float p3, p3, v0

    if-eqz p3, :cond_781

    .line 1174
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "maxAspectRatio="

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getMaxAspectRatio()F

    move-result v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1176
    :cond_781
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getMinAspectRatio()F

    move-result p3

    cmpl-float v0, p3, v0

    if-eqz v0, :cond_7a0

    .line 1178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "minAspectRatio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1180
    :cond_7a0
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0}, Landroid/content/pm/ActivityInfo;->getManifestMinAspectRatio()F

    move-result v0

    cmpl-float p3, p3, v0

    if-eqz p3, :cond_7c7

    .line 1182
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "manifestMinAspectRatio="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 1183
    invoke-virtual {v0}, Landroid/content/pm/ActivityInfo;->getManifestMinAspectRatio()F

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 1182
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1185
    :cond_7c7
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "supportsSizeChanges="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 1187
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatController;->getSizeCompatModePolicy()Lcom/android/server/wm/AppCompatSizeCompatModePolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->supportsSizeChanges()I

    move-result v0

    .line 1186
    invoke-static {v0}, Landroid/content/pm/ActivityInfo;->sizeChangesSupportModeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 1185
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1188
    iget-object p3, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget p3, p3, Landroid/content/pm/ActivityInfo;->configChanges:I

    if-eqz p3, :cond_811

    .line 1189
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "configChanges=0x"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->configChanges:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1191
    :cond_811
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "neverSandboxDisplayApis="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    sget-object v1, Lcom/android/server/wm/ActivityRecord;->sConstrainDisplayApisConfig:Landroid/content/pm/ConstrainDisplayApisConfig;

    invoke-virtual {v0, v1}, Landroid/content/pm/ActivityInfo;->neverSandboxDisplayApis(Landroid/content/pm/ConstrainDisplayApisConfig;)Z

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1193
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "alwaysSandboxDisplayApis="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    sget-object v1, Lcom/android/server/wm/ActivityRecord;->sConstrainDisplayApisConfig:Landroid/content/pm/ConstrainDisplayApisConfig;

    invoke-virtual {v0, v1}, Landroid/content/pm/ActivityInfo;->alwaysSandboxDisplayApis(Landroid/content/pm/ConstrainDisplayApisConfig;)Z

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1196
    :cond_84f
    iget-object p3, p0, Lcom/android/server/wm/ActivityRecord;->mLastParentBeforePip:Lcom/android/server/wm/Task;

    if-eqz p3, :cond_86e

    .line 1197
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "lastParentTaskIdBeforePip="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mLastParentBeforePip:Lcom/android/server/wm/Task;

    iget v0, v0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1199
    :cond_86e
    iget-object p3, p0, Lcom/android/server/wm/ActivityRecord;->mLaunchIntoPipHostActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz p3, :cond_88b

    .line 1200
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "launchIntoPipHostActivity="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mLaunchIntoPipHostActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1202
    :cond_88b
    iget-boolean p3, p0, Lcom/android/server/wm/ActivityRecord;->mWaitForEnteringPinnedMode:Z

    if-eqz p3, :cond_897

    .line 1203
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p3, "mWaitForEnteringPinnedMode=true"

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1206
    :cond_897
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/AppCompatController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;I)V
    .registers 7

    const-wide v0, 0x10900000001L

    .line 9296
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/wm/ActivityRecord;->writeNameToProto(Landroid/util/proto/ProtoOutputStream;J)V

    const-wide v0, 0x10b00000002L

    .line 9297
    invoke-super {p0, p1, v0, v1, p2}, Lcom/android/server/wm/WindowToken;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V

    const/4 p2, 0x6

    const/16 v0, 0x11

    .line 9298
    invoke-virtual {p0, p2, v0}, Lcom/android/server/wm/WindowContainer;->isAnimating(II)Z

    move-result p2

    const-wide v0, 0x10800000005L

    invoke-virtual {p1, v0, v1, p2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v0, 0x10800000007L

    .line 9300
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->fillsParent()Z

    move-result p2

    invoke-virtual {p1, v0, v1, p2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v0, 0x10800000008L

    .line 9301
    iget-boolean p2, p0, Lcom/android/server/wm/ActivityRecord;->mAppStopped:Z

    invoke-virtual {p1, v0, v1, p2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 9302
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->occludesParent()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    const-wide v0, 0x1080000001eL

    invoke-virtual {p1, v0, v1, p2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v0, 0x10800000018L

    .line 9303
    iget-boolean p2, p0, Lcom/android/server/wm/ActivityRecord;->mVisible:Z

    invoke-virtual {p1, v0, v1, p2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v0, 0x10800000009L

    .line 9304
    iget-boolean p2, p0, Lcom/android/server/wm/WindowContainer;->mVisibleRequested:Z

    invoke-virtual {p1, v0, v1, p2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v0, 0x1080000000aL

    .line 9305
    invoke-virtual {p0}, Lcom/android/server/wm/WindowToken;->isClientVisible()Z

    move-result p2

    invoke-virtual {p1, v0, v1, p2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v0, 0x1080000000cL

    .line 9306
    iget-boolean p2, p0, Lcom/android/server/wm/ActivityRecord;->mReportedDrawn:Z

    invoke-virtual {p1, v0, v1, p2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v0, 0x1080000000dL

    .line 9307
    iget-boolean p2, p0, Lcom/android/server/wm/ActivityRecord;->reportedVisible:Z

    invoke-virtual {p1, v0, v1, p2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v0, 0x1050000000eL

    .line 9308
    iget p2, p0, Lcom/android/server/wm/ActivityRecord;->mNumInterestingWindows:I

    invoke-virtual {p1, v0, v1, p2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v0, 0x1050000000fL

    .line 9309
    iget p2, p0, Lcom/android/server/wm/ActivityRecord;->mNumDrawnWindows:I

    invoke-virtual {p1, v0, v1, p2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v0, 0x10800000010L

    .line 9310
    iget-boolean p2, p0, Lcom/android/server/wm/ActivityRecord;->allDrawn:Z

    invoke-virtual {p1, v0, v1, p2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 9311
    iget-object p2, p0, Lcom/android/server/wm/ActivityRecord;->mStartingWindow:Lcom/android/server/wm/WindowState;

    if-eqz p2, :cond_a1

    const-wide v0, 0x10b00000013L

    .line 9312
    invoke-virtual {p2, p1, v0, v1}, Lcom/android/server/wm/WindowState;->writeIdentifierToProto(Landroid/util/proto/ProtoOutputStream;J)V

    :cond_a1
    const-wide v0, 0x10800000014L

    .line 9314
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isStartingWindowDisplayed()Z

    move-result p2

    invoke-virtual {p1, v0, v1, p2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v0, 0x108000000c9L

    .line 9315
    iget-boolean p2, p0, Lcom/android/server/wm/ActivityRecord;->startingMoved:Z

    invoke-virtual {p1, v0, v1, p2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v0, 0x10800000016L

    .line 9316
    iget-boolean p2, p0, Lcom/android/server/wm/ActivityRecord;->mVisibleSetFromTransferredStartingWindow:Z

    invoke-virtual {p1, v0, v1, p2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 9319
    iget-object p2, p0, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    const-wide v0, 0x1090000001bL

    invoke-virtual {p1, v0, v1, p2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v0, 0x1080000001cL

    .line 9320
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isRootOfTask()Z

    move-result p2

    invoke-virtual {p1, v0, v1, p2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 9321
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->hasProcess()Z

    move-result p2

    if-eqz p2, :cond_ef

    .line 9322
    iget-object p2, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {p2}, Lcom/android/server/wm/WindowProcessController;->getPid()I

    move-result p2

    const-wide v0, 0x1050000001dL

    invoke-virtual {p1, v0, v1, p2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 9324
    :cond_ef
    iget-object p2, p0, Lcom/android/server/wm/ActivityRecord;->pictureInPictureArgs:Landroid/app/PictureInPictureParams;

    invoke-virtual {p2}, Landroid/app/PictureInPictureParams;->isAutoEnterEnabled()Z

    move-result p2

    const-wide v0, 0x1080000001fL

    invoke-virtual {p1, v0, v1, p2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v0, 0x10800000022L

    .line 9327
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->providesMaxBounds()Z

    move-result p2

    invoke-virtual {p1, v0, v1, p2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v0, 0x10800000023L

    .line 9328
    iget-boolean p2, p0, Lcom/android/server/wm/ActivityRecord;->mEnableRecentsScreenshot:Z

    invoke-virtual {p1, v0, v1, p2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v0, 0x10500000024L

    .line 9329
    iget p2, p0, Lcom/android/server/wm/ActivityRecord;->mLastDropInputMode:I

    invoke-virtual {p1, v0, v1, p2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v0, 0x10500000025L

    .line 9330
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getOverrideOrientation()I

    move-result p2

    invoke-virtual {p1, v0, v1, p2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v0, 0x1030000002fL

    .line 9331
    iget-wide v2, p0, Lcom/android/server/wm/ActivityRecord;->mRequestOpenInBrowserEducationTimestamp:J

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 9334
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppCompatController;->dumpDebug(Landroid/util/proto/ProtoOutputStream;)V

    return-void
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V
    .registers 6

    const/4 v0, 0x2

    if-ne p4, v0, :cond_a

    .line 9346
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isVisible()Z

    move-result v0

    if-nez v0, :cond_a

    return-void

    .line 9350
    :cond_a
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 9351
    invoke-virtual {p0, p1, p4}, Lcom/android/server/wm/ActivityRecord;->dumpDebug(Landroid/util/proto/ProtoOutputStream;I)V

    .line 9352
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public ensureActivityConfiguration()Z
    .registers 2

    const/4 v0, 0x0

    .line 8461
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->ensureActivityConfiguration(Z)Z

    move-result p0

    return p0
.end method

.method public ensureActivityConfiguration(Z)Z
    .registers 7

    .line 8476
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 8477
    iget-boolean v0, v0, Lcom/android/server/wm/Task;->mConfigWillChange:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_23

    .line 8478
    sget-object p1, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_CONFIGURATION_enabled:[Z

    aget-boolean p1, p1, v2

    if-eqz p1, :cond_22

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_CONFIGURATION:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v3, -0x77c3fe8c2696c108L    # -5.30114781034195E-269

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, v3, v4, v2, p0}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_22
    return v1

    .line 8484
    :cond_23
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v0, :cond_40

    .line 8485
    sget-object p1, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_CONFIGURATION_enabled:[Z

    aget-boolean p1, p1, v2

    if-eqz p1, :cond_3f

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_CONFIGURATION:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v3, -0x373115ed2975c856L    # -5.386039383742283E42

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, v3, v4, v2, p0}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_3f
    return v1

    .line 8490
    :cond_40
    sget-object v0, Lcom/android/server/wm/ActivityRecord$State;->DESTROYED:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v0

    if-eqz v0, :cond_61

    .line 8491
    sget-object p1, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_CONFIGURATION_enabled:[Z

    aget-boolean p1, p1, v2

    if-eqz p1, :cond_60

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_CONFIGURATION:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v3, -0xe63523b1d82c378L    # -1.867485893045515E239

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, v3, v4, v2, p0}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_60
    return v1

    :cond_61
    if-nez p1, :cond_8c

    .line 8496
    iget-object p1, p0, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityRecord$State;

    sget-object v0, Lcom/android/server/wm/ActivityRecord$State;->STOPPING:Lcom/android/server/wm/ActivityRecord$State;

    if-eq p1, v0, :cond_73

    sget-object v0, Lcom/android/server/wm/ActivityRecord$State;->STOPPED:Lcom/android/server/wm/ActivityRecord$State;

    if-eq p1, v0, :cond_73

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->shouldBeVisible()Z

    move-result p1

    if-nez p1, :cond_8c

    .line 8497
    :cond_73
    sget-object p1, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_CONFIGURATION_enabled:[Z

    aget-boolean p1, p1, v2

    if-eqz p1, :cond_8b

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_CONFIGURATION:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v3, -0x5acdaef40021c514L    # -1.65153005661337E-129

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, v3, v4, v2, p0}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_8b
    return v1

    .line 8502
    :cond_8c
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isConfigurationDispatchPaused()Z

    move-result p1

    if-eqz p1, :cond_93

    return v1

    .line 8506
    :cond_93
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->updateReportedConfigurationAndSend()Z

    move-result p0

    return p0
.end method

.method public final evaluateStartingWindowTheme(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;II)I
    .registers 6

    .line 2196
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/ActivityRecord;->validateStartingWindowTheme(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return p0

    :cond_8
    if-eqz p4, :cond_11

    .line 2200
    invoke-virtual {p0, p1, p2, p4}, Lcom/android/server/wm/ActivityRecord;->validateStartingWindowTheme(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_11

    return p4

    :cond_11
    return p3
.end method

.method public fillsParent()Z
    .registers 2

    const/4 v0, 0x1

    .line 3033
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->occludesParent(Z)Z

    move-result p0

    return p0
.end method

.method public fillsParentBounds()Z
    .registers 1

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public findMainWindow()Lcom/android/server/wm/WindowState;
    .registers 2

    const/4 v0, 0x1

    .line 7189
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->findMainWindow(Z)Lcom/android/server/wm/WindowState;

    move-result-object p0

    return-object p0
.end method

.method public findMainWindow(Z)Lcom/android/server/wm/WindowState;
    .registers 8

    .line 7201
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    :goto_9
    if-ltz v0, :cond_27

    .line 7202
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    .line 7203
    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v4, v1, :cond_1e

    if-eqz p1, :cond_23

    const/4 v5, 0x3

    if-ne v4, v5, :cond_23

    .line 7211
    :cond_1e
    iget-boolean v2, v3, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-eqz v2, :cond_26

    move-object v2, v3

    :cond_23
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    :cond_26
    return-object v3

    :cond_27
    return-object v2
.end method

.method public final finishActivityResults(ILandroid/content/Intent;Lcom/android/server/uri/NeededUriGrants;)V
    .registers 14

    .line 3495
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    const/4 v1, 0x0

    if-eqz v0, :cond_83

    .line 3501
    iget v0, v0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    iget v2, p0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    if-eq v0, v2, :cond_10

    if-eqz p2, :cond_10

    .line 3503
    invoke-virtual {p2, v2}, Landroid/content/Intent;->prepareToLeaveUser(I)V

    .line 3506
    :cond_10
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    if-lez v0, :cond_25

    .line 3507
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    .line 3508
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getUriPermissionsLocked()Lcom/android/server/uri/UriPermissionOwner;

    move-result-object v2

    .line 3507
    invoke-interface {v0, p3, v2}, Lcom/android/server/uri/UriGrantsManagerInternal;->grantUriPermissionUncheckedFromIntent(Lcom/android/server/uri/NeededUriGrants;Lcom/android/server/uri/UriPermissionOwner;)V

    .line 3510
    :cond_25
    new-instance v4, Landroid/os/Binder;

    invoke-direct {v4}, Landroid/os/Binder;-><init>()V

    .line 3513
    :try_start_2a
    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v6

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 3514
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v2

    invoke-interface {v0, v2}, Landroid/content/pm/IPackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    move-object v5, p2

    .line 3513
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/wm/ActivityRecord;->computeCallerInfo(Landroid/os/IBinder;Landroid/content/Intent;ILjava/lang/String;Z)V
    :try_end_43
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_43} :catch_7b

    .line 3524
    iget-boolean p2, p0, Lcom/android/server/wm/ActivityRecord;->mForceSendResultForMediaProjection:Z

    if-nez p2, :cond_65

    iget-object p2, p0, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    sget-object v0, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {p2, v0}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result p2

    if-eqz p2, :cond_56

    move v6, p1

    move-object v8, v4

    move-object v7, v5

    move-object v4, p0

    goto :goto_69

    .line 3536
    :cond_56
    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    move-object v7, v5

    iget-object v5, p0, Lcom/android/server/wm/ActivityRecord;->resultWho:Ljava/lang/String;

    iget v6, p0, Lcom/android/server/wm/ActivityRecord;->requestCode:I

    move-object v9, v4

    move-object v8, v7

    move-object v4, p0

    move v7, p1

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/wm/ActivityRecord;->addResultLocked(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;Landroid/os/IBinder;)V

    goto :goto_78

    :cond_65
    move v6, p1

    move-object v8, v4

    move-object v4, p0

    move-object v7, v5

    .line 3527
    :goto_69
    iget-object v5, v4, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    .line 3528
    iget-object p0, v4, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    new-instance v3, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda7;

    move-object v9, p3

    invoke-direct/range {v3 .. v9}, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;ILandroid/content/Intent;Landroid/os/IBinder;Lcom/android/server/uri/NeededUriGrants;)V

    invoke-virtual {p0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3539
    :goto_78
    iput-object v1, v4, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    goto :goto_84

    :catch_7b
    move-exception v0

    move-object p0, v0

    .line 3521
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_83
    move-object v4, p0

    .line 3547
    :goto_84
    iput-object v1, v4, Lcom/android/server/wm/ActivityRecord;->results:Ljava/util/ArrayList;

    .line 3548
    iput-object v1, v4, Lcom/android/server/wm/ActivityRecord;->pendingResults:Ljava/util/HashSet;

    .line 3549
    iput-object v1, v4, Lcom/android/server/wm/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    .line 3550
    invoke-virtual {v4, v1}, Lcom/android/server/wm/ActivityRecord;->setSavedState(Landroid/os/Bundle;)V

    .line 3551
    invoke-virtual {v4, v1}, Lcom/android/server/wm/ActivityRecord;->setHandoffActivityData(Landroid/app/HandoffActivityData;)V

    return-void
.end method

.method public finishIfPossible(ILandroid/content/Intent;Lcom/android/server/uri/NeededUriGrants;Ljava/lang/String;Z)I
    .registers 20

    move-object/from16 v0, p4

    .line 3590
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_STATES_enabled:[Z

    const/4 v2, 0x0

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_29

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    int-to-long v4, p1

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_STATES:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    filled-new-array {v1, v4, v6, v7}, [Ljava/lang/Object;

    move-result-object v1

    const-wide v4, 0x3374792b5daf3e85L    # 7.962860654113133E-61

    const/4 v6, 0x4

    invoke-static {v8, v4, v5, v6, v1}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 3593
    :cond_29
    iget-boolean v1, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    const-string v4, "ActivityTaskManager"

    if-eqz v1, :cond_44

    .line 3594
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Duplicate finish request for r="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 3598
    :cond_44
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked()Z

    move-result v1

    if-nez v1, :cond_5f

    .line 3599
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Finish request when not in root task for r="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 3603
    :cond_5f
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    .line 3604
    sget-object v4, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    .line 3605
    invoke-virtual {p0, v4}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v5

    const/4 v6, 0x1

    if-nez v5, :cond_72

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    if-nez v5, :cond_82

    .line 3606
    :cond_72
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->isFocusedRootTaskOnDisplay()Z

    move-result v5

    if-eqz v5, :cond_82

    iget-object v5, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 3608
    invoke-virtual {v5}, Lcom/android/server/wm/Task;->isClearingToReuseTask()Z

    move-result v5

    if-nez v5, :cond_82

    move v5, v6

    goto :goto_83

    :cond_82
    move v5, v2

    :goto_83
    if-eqz v5, :cond_8f

    .line 3609
    iget-object v7, p0, Lcom/android/server/wm/ActivityRecord;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 3612
    invoke-virtual {v7, v1}, Lcom/android/server/wm/RootWindowContainer;->isTopDisplayFocusedRootTask(Lcom/android/server/wm/Task;)Z

    move-result v7

    if-eqz v7, :cond_8f

    move v7, v6

    goto :goto_90

    :cond_8f
    move v7, v2

    .line 3615
    :goto_90
    iget-object v8, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v8}, Lcom/android/server/wm/TransitionController;->getCollectingTransition()Lcom/android/server/wm/Transition;

    move-result-object v8

    .line 3616
    const-string v9, "AR.finish-"

    if-eqz v8, :cond_be

    .line 3617
    invoke-virtual {v8, p0}, Lcom/android/server/wm/Transition;->isSourceActivity(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v10

    if-nez v10, :cond_a6

    invoke-virtual {v8, p0}, Lcom/android/server/wm/Transition;->isInTransition(Lcom/android/server/wm/WindowContainer;)Z

    move-result v10

    if-eqz v10, :cond_be

    .line 3620
    :cond_a6
    iget-object v10, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v10, v10, Lcom/android/server/wm/ActivityTaskManagerService;->mChainTracker:Lcom/android/server/wm/ActionChain$Tracker;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9, v8}, Lcom/android/server/wm/ActionChain$Tracker;->start(Ljava/lang/String;Lcom/android/server/wm/Transition;)Lcom/android/server/wm/ActionChain;

    move-result-object v8

    goto :goto_d5

    .line 3622
    :cond_be
    iget-object v8, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v8, v8, Lcom/android/server/wm/ActivityTaskManagerService;->mChainTracker:Lcom/android/server/wm/ActionChain$Tracker;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/server/wm/ActionChain$Tracker;->startTransit(Ljava/lang/String;)Lcom/android/server/wm/ActionChain;

    move-result-object v8

    .line 3624
    :goto_d5
    iget-object v9, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v9}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    .line 3626
    :try_start_da
    iget-object v9, p0, Lcom/android/server/wm/ActivityRecord;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v9, v9, Lcom/android/server/wm/ActivityTaskSupervisor;->mNoHistoryActivities:Ljava/util/ArrayList;

    invoke-virtual {v9, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3627
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->makeFinishingLocked()V

    .line 3630
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v9

    .line 3631
    iget v10, p0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v11

    iget v12, v9, Lcom/android/server/wm/Task;->mTaskId:I

    iget-object v13, p0, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    invoke-static {v10, v11, v12, v13, v0}, Lcom/android/server/wm/EventLogTags;->writeWmFinishActivity(IIILjava/lang/String;Ljava/lang/String;)V

    .line 3633
    invoke-virtual {v9, p0}, Lcom/android/server/wm/WindowContainer;->getActivityAbove(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_10f

    .line 3635
    iget-object v10, p0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v10}, Landroid/content/Intent;->getFlags()I

    move-result v10

    const/high16 v11, 0x80000

    and-int/2addr v10, v11

    if-eqz v10, :cond_10f

    .line 3639
    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_10f

    :catchall_10c
    move-exception v0

    goto/16 :goto_235

    .line 3643
    :cond_10f
    :goto_10f
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->pauseKeyDispatchingLocked()V

    .line 3645
    invoke-virtual {v9}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-nez v0, :cond_120

    .line 3646
    invoke-virtual {v9}, Lcom/android/server/wm/Task;->isClearingToReuseTask()Z

    move-result v0

    if-nez v0, :cond_120

    move v0, v6

    goto :goto_121

    :cond_120
    move v0, v2

    :goto_121
    if-eqz v0, :cond_125

    move-object v10, v9

    goto :goto_126

    :cond_125
    move-object v10, p0

    .line 3649
    :goto_126
    invoke-virtual {v8}, Lcom/android/server/wm/ActionChain;->isCollecting()Z

    move-result v11

    const/4 v12, 0x0

    if-nez v11, :cond_13b

    .line 3650
    iget-object v11, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 3651
    invoke-virtual {v11, v10}, Lcom/android/server/wm/TransitionController;->requestCloseTransitionIfNeeded(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/Transition;

    move-result-object v11

    .line 3650
    invoke-virtual {v8, v11}, Lcom/android/server/wm/ActionChain;->attachTransition(Lcom/android/server/wm/Transition;)V

    .line 3652
    invoke-virtual {v8}, Lcom/android/server/wm/ActionChain;->getTransition()Lcom/android/server/wm/Transition;

    move-result-object v11

    goto :goto_13c

    :cond_13b
    move-object v11, v12

    .line 3654
    :goto_13c
    invoke-virtual {v8}, Lcom/android/server/wm/ActionChain;->isCollecting()Z

    move-result v13

    if-eqz v13, :cond_149

    .line 3655
    invoke-virtual {v8}, Lcom/android/server/wm/ActionChain;->getTransition()Lcom/android/server/wm/Transition;

    move-result-object v8

    invoke-virtual {v8, v10}, Lcom/android/server/wm/Transition;->collectClose(Lcom/android/server/wm/WindowContainer;)V

    :cond_149
    if-eqz v0, :cond_158

    .line 3659
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v8

    if-eqz v8, :cond_158

    .line 3660
    iget-object v10, v8, Lcom/android/server/wm/TaskDisplayArea;->mPreferredTopFocusableRootTask:Lcom/android/server/wm/Task;

    if-ne v1, v10, :cond_158

    .line 3661
    invoke-virtual {v8}, Lcom/android/server/wm/TaskDisplayArea;->clearPreferredTopFocusableRootTask()V

    :cond_158
    if-eqz v5, :cond_165

    .line 3666
    invoke-virtual {v9, v6}, Lcom/android/server/wm/TaskFragment;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-nez v1, :cond_165

    .line 3668
    const-string v1, "finish-top"

    invoke-virtual {v9, v1, v2, v7}, Lcom/android/server/wm/Task;->adjustFocusToNextFocusableTask(Ljava/lang/String;ZZ)Lcom/android/server/wm/Task;

    .line 3672
    :cond_165
    invoke-virtual/range {p0 .. p3}, Lcom/android/server/wm/ActivityRecord;->finishActivityResults(ILandroid/content/Intent;Lcom/android/server/uri/NeededUriGrants;)V

    .line 3673
    iget-boolean v1, p0, Lcom/android/server/wm/WindowContainer;->mVisibleRequested:Z

    if-eqz v1, :cond_16f

    .line 3675
    invoke-virtual {p0, v2}, Lcom/android/server/wm/ActivityRecord;->setVisibility(Z)V

    .line 3677
    :cond_16f
    invoke-virtual {p0, v4}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v3

    if-eqz v3, :cond_1c7

    if-eqz v0, :cond_184

    .line 3679
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v1

    .line 3680
    invoke-virtual {v9}, Lcom/android/server/wm/Task;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v3

    .line 3679
    invoke-virtual {v1, v3}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskRemovalStarted(Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 3692
    :cond_184
    iget-boolean v1, p0, Lcom/android/server/wm/ActivityRecord;->mLastImeShown:Z

    if-eqz v1, :cond_190

    .line 3693
    invoke-virtual {v9}, Lcom/android/server/wm/TaskFragment;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-eqz v1, :cond_190

    .line 3695
    iput-boolean v6, v1, Lcom/android/server/wm/ActivityRecord;->mLastImeShown:Z

    .line 3699
    :cond_190
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/TaskFragment;->getPausingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-nez v1, :cond_1bb

    .line 3700
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_STATES_enabled:[Z

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_1b2

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_STATES:Lcom/android/internal/protolog/WmProtoLogGroups;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-wide v4, -0x333b2ba35a5ccca2L    # -6.694355630287763E61

    invoke-static {v3, v4, v5, v2, v1}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 3704
    :cond_1b2
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v1

    const-string v3, "finish"

    invoke-virtual {v1, v2, v2, v12, v3}, Lcom/android/server/wm/TaskFragment;->startPausing(ZZLcom/android/server/wm/ActivityRecord;Ljava/lang/String;)Z

    :cond_1bb
    if-eqz v0, :cond_20f

    .line 3709
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/android/server/wm/LockTaskController;->clearLockedTask(Lcom/android/server/wm/Task;)V

    goto :goto_20f

    .line 3711
    :cond_1c7
    sget-object v0, Lcom/android/server/wm/ActivityRecord$State;->PAUSING:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v0

    if-nez v0, :cond_21c

    if-eqz v1, :cond_1e4

    .line 3714
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    move-result v0

    if-eqz v0, :cond_1e1

    if-eqz v11, :cond_1e4

    .line 3718
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v11, v0, v6}, Lcom/android/server/wm/Transition;->setReady(Lcom/android/server/wm/WindowContainer;Z)V

    goto :goto_1e4

    .line 3721
    :cond_1e1
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->prepareActivityHideTransitionAnimation()V

    .line 3725
    :cond_1e4
    :goto_1e4
    const-string v0, "finishIfPossible"

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->completeFinishing(Ljava/lang/String;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-nez v0, :cond_1ee

    move v0, v6

    goto :goto_1ef

    :cond_1ee
    move v0, v2

    :goto_1ef
    if-eqz p5, :cond_1fe

    .line 3728
    sget-object v1, Lcom/android/server/wm/ActivityRecord$State;->STOPPING:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {p0, v1}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v1

    if-eqz v1, :cond_1fe

    .line 3729
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->updateOomAdj()V

    .line 3739
    :cond_1fe
    invoke-virtual {v9, v2}, Lcom/android/server/wm/Task;->onlyHasTaskOverlayActivities(Z)Z

    move-result v1

    if-eqz v1, :cond_20c

    .line 3740
    new-instance v1, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda11;

    invoke-direct {v1}, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda11;-><init>()V

    invoke-virtual {v9, v1}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V
    :try_end_20c
    .catchall {:try_start_da .. :try_end_20c} :catchall_10c

    :cond_20c
    if-eqz v0, :cond_20f

    const/4 v6, 0x2

    .line 3751
    :cond_20f
    :goto_20f
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 3752
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mChainTracker:Lcom/android/server/wm/ActionChain$Tracker;

    invoke-virtual {p0}, Lcom/android/server/wm/ActionChain$Tracker;->endPartial()V

    return v6

    .line 3746
    :cond_21c
    :try_start_21c
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_STATES_enabled:[Z

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_20f

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_STATES:Lcom/android/internal/protolog/WmProtoLogGroups;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-wide v3, 0x50ae2f9377be3f40L    # 4.4739608754666086E80

    invoke-static {v1, v3, v4, v2, v0}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V
    :try_end_234
    .catchall {:try_start_21c .. :try_end_234} :catchall_10c

    goto :goto_20f

    .line 3751
    :goto_235
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 3752
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mChainTracker:Lcom/android/server/wm/ActionChain$Tracker;

    invoke-virtual {p0}, Lcom/android/server/wm/ActionChain$Tracker;->endPartial()V

    .line 3753
    throw v0
.end method

.method public finishIfPossible(Ljava/lang/String;Z)I
    .registers 9

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    move-object v0, p0

    move-object v4, p1

    move v5, p2

    .line 3573
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(ILandroid/content/Intent;Lcom/android/server/uri/NeededUriGrants;Ljava/lang/String;Z)I

    move-result p0

    return p0
.end method

.method public finishIfSameAffinity(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 3

    .line 3482
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->taskAffinity:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->taskAffinity:Ljava/lang/String;

    invoke-static {v0, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x1

    if-nez p0, :cond_c

    return v0

    .line 3484
    :cond_c
    const-string p0, "request-affinity"

    invoke-virtual {p1, p0, v0}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(Ljava/lang/String;Z)I

    const/4 p0, 0x0

    return p0
.end method

.method public finishIfSubActivity(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;I)V
    .registers 5

    .line 3472
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    if-ne v0, p1, :cond_17

    iget p1, p0, Lcom/android/server/wm/ActivityRecord;->requestCode:I

    if-ne p1, p3, :cond_17

    iget-object p1, p0, Lcom/android/server/wm/ActivityRecord;->resultWho:Ljava/lang/String;

    .line 3474
    invoke-static {p1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_11

    goto :goto_17

    .line 3476
    :cond_11
    const-string p1, "request-sub"

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(Ljava/lang/String;Z)I

    :cond_17
    :goto_17
    return-void
.end method

.method public finishOrAbortReplacingWindow()V
    .registers 3

    const-wide/16 v0, 0x0

    .line 4247
    iput-wide v0, p0, Lcom/android/server/wm/ActivityRecord;->mRelaunchStartTime:J

    .line 4248
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/wm/DisplayPolicy;->removeRelaunchingApp(Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public finishRelaunching()V
    .registers 3

    .line 4215
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatController;->getOrientationOverrides()Lcom/android/server/wm/AppCompatOrientationOverrides;

    move-result-object v0

    const/4 v1, 0x0

    .line 4216
    invoke-virtual {v0, v1}, Lcom/android/server/wm/AppCompatOrientationOverrides;->setRelaunchingAfterRequestedOrientationChanged(Z)V

    .line 4217
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->getActivityMetricsLogger()Lcom/android/server/wm/ActivityMetricsLogger;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/wm/ActivityMetricsLogger;->notifyActivityRelaunched(Lcom/android/server/wm/ActivityRecord;)V

    .line 4219
    iget v0, p0, Lcom/android/server/wm/ActivityRecord;->mPendingRelaunchCount:I

    if-lez v0, :cond_27

    add-int/lit8 v0, v0, -0x1

    .line 4220
    iput v0, p0, Lcom/android/server/wm/ActivityRecord;->mPendingRelaunchCount:I

    if-nez v0, :cond_2a

    .line 4221
    invoke-virtual {p0}, Lcom/android/server/wm/WindowToken;->isClientVisible()Z

    move-result v0

    if-nez v0, :cond_2a

    .line 4223
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->finishOrAbortReplacingWindow()V

    goto :goto_2a

    .line 4227
    :cond_27
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->checkKeyguardFlagsChanged()V

    .line 4230
    :cond_2a
    :goto_2a
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object p0

    if-eqz p0, :cond_3a

    .line 4231
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->shouldSleepOrShutDownActivities()Z

    move-result v0

    if-eqz v0, :cond_3a

    const/4 v0, 0x0

    .line 4234
    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;)V

    :cond_3a
    return-void
.end method

.method public finishSync(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;Z)V
    .registers 5

    .line 9457
    invoke-virtual {p0, p2}, Lcom/android/server/wm/WindowContainer;->isDifferentSyncGroup(Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 9458
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->allSyncFinished()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mLastAllReadyAtSync:Z

    .line 9459
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/wm/WindowContainer;->finishSync(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;Z)V

    return-void
.end method

.method public forAllActivities(Ljava/util/function/Consumer;Z)V
    .registers 3

    .line 4887
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public forAllActivities(Ljava/util/function/Predicate;Z)Z
    .registers 3

    .line 4882
    invoke-interface {p1, p0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getActivity(Ljava/util/function/Predicate;ZLcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;
    .registers 4

    .line 4893
    invoke-interface {p1, p0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    return-object p0

    :cond_7
    const/4 p0, 0x0

    return-object p0
.end method

.method public getActivityWindowInfo()Landroid/window/ActivityWindowInfo;
    .registers 5

    .line 3002
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isAttached()Z

    move-result v0

    if-nez v0, :cond_9

    .line 3003
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mTmpActivityWindowInfo:Landroid/window/ActivityWindowInfo;

    return-object p0

    .line 3005
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/wm/WindowToken;->isFixedRotationTransforming()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 3009
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 3010
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mTmpActivityWindowInfo:Landroid/window/ActivityWindowInfo;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0, v0}, Landroid/window/ActivityWindowInfo;->set(ZLandroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_33

    .line 3012
    :cond_1a
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mTmpActivityWindowInfo:Landroid/window/ActivityWindowInfo;

    .line 3013
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isEmbeddedInHostContainer()Z

    move-result v1

    .line 3014
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 3015
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 3012
    invoke-virtual {v0, v1, v2, v3}, Landroid/window/ActivityWindowInfo;->set(ZLandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 3017
    :goto_33
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mTmpActivityWindowInfo:Landroid/window/ActivityWindowInfo;

    return-object p0
.end method

.method public final getAllowUntrustedEmbeddingStateSharingProperty()Z
    .registers 5

    .line 2977
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.window.PROPERTY_ALLOW_UNTRUSTED_ACTIVITY_EMBEDDING_STATE_SHARING"

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    .line 2979
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    .line 2980
    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    iget p0, p0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 2978
    invoke-virtual {v0, v1, v2, v3, p0}, Landroid/content/pm/PackageManager;->getPropertyAsUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/PackageManager$Property;

    move-result-object p0

    .line 2981
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$Property;->getBoolean()Z

    move-result p0
    :try_end_20
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_20} :catch_21

    return p0

    :catch_21
    const/4 p0, 0x0

    return p0
.end method

.method public getAppCompatDisplayInsets()Lcom/android/server/wm/AppCompatDisplayInsets;
    .registers 1

    .line 7534
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatController;->getSizeCompatModePolicy()Lcom/android/server/wm/AppCompatSizeCompatModePolicy;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->getAppCompatDisplayInsets()Lcom/android/server/wm/AppCompatDisplayInsets;

    move-result-object p0

    return-object p0
.end method

.method public getAppCompatState()I
    .registers 2

    const/4 v0, 0x0

    .line 7837
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->getAppCompatState(Z)I

    move-result p0

    return p0
.end method

.method public final getAppCompatState(Z)I
    .registers 2

    if-nez p1, :cond_8

    .line 7848
    iget-boolean p1, p0, Lcom/android/server/wm/WindowContainer;->mVisibleRequested:Z

    if-nez p1, :cond_8

    const/4 p0, 0x1

    return p0

    .line 7852
    :cond_8
    iget-object p1, p0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    invoke-virtual {p1}, Lcom/android/server/wm/AppCompatController;->getTransparentPolicy()Lcom/android/server/wm/TransparentPolicy;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/TransparentPolicy;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_1f

    .line 7853
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatController;->getTransparentPolicy()Lcom/android/server/wm/TransparentPolicy;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/TransparentPolicy;->getInheritedAppCompatState()I

    move-result p0

    return p0

    .line 7855
    :cond_1f
    iget-object p1, p0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 7856
    invoke-virtual {p1}, Lcom/android/server/wm/AppCompatController;->getSizeCompatModePolicy()Lcom/android/server/wm/AppCompatSizeCompatModePolicy;

    move-result-object p1

    .line 7857
    invoke-virtual {p1}, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->isInSizeCompatModeForBounds()Z

    move-result p1

    if-eqz p1, :cond_2d

    const/4 p0, 0x3

    return p0

    .line 7864
    :cond_2d
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 7865
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatController;->getAspectRatioPolicy()Lcom/android/server/wm/AppCompatAspectRatioPolicy;

    move-result-object p0

    .line 7866
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->isLetterboxedForFixedOrientationAndAspectRatio()Z

    move-result p1

    if-eqz p1, :cond_3b

    const/4 p0, 0x4

    return p0

    .line 7870
    :cond_3b
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->isLetterboxedForAspectRatioOnly()Z

    move-result p0

    if-eqz p0, :cond_43

    const/4 p0, 0x5

    return p0

    :cond_43
    const/4 p0, 0x2

    return p0
.end method

.method public getBounds()Landroid/graphics/Rect;
    .registers 4

    .line 8212
    invoke-super {p0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 8213
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 8214
    invoke-virtual {v1}, Lcom/android/server/wm/AppCompatController;->getSizeCompatModePolicy()Lcom/android/server/wm/AppCompatSizeCompatModePolicy;

    move-result-object v1

    .line 8215
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatController;->getTransparentPolicy()Lcom/android/server/wm/TransparentPolicy;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/TransparentPolicy;->findOpaqueNotFinishingActivityBelow()Ljava/util/Optional;

    move-result-object p0

    new-instance v2, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda13;

    invoke-direct {v2}, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda13;-><init>()V

    .line 8216
    invoke-virtual {p0, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    new-instance v2, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda14;

    invoke-direct {v2, v1, v0}, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda14;-><init>(Lcom/android/server/wm/AppCompatSizeCompatModePolicy;Landroid/graphics/Rect;)V

    .line 8217
    invoke-virtual {p0, v2}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Rect;

    return-object p0
.end method

.method public getCallerPackage(Landroid/os/IBinder;)Ljava/lang/String;
    .registers 2

    .line 1823
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mCallerState:Lcom/android/server/wm/ActivityCallerState;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityCallerState;->getPackage(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCallerUid(Landroid/os/IBinder;)I
    .registers 2

    .line 1819
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mCallerState:Lcom/android/server/wm/ActivityCallerState;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityCallerState;->getUid(Landroid/os/IBinder;)I

    move-result p0

    return p0
.end method

.method public getCompatScale()F
    .registers 3

    .line 7580
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatController;->getSizeCompatModePolicy()Lcom/android/server/wm/AppCompatSizeCompatModePolicy;

    move-result-object v0

    new-instance v1, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda17;

    invoke-direct {v1, p0}, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda17;-><init>(Lcom/android/server/wm/ActivityRecord;)V

    .line 7581
    invoke-virtual {v0, v1}, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->getCompatScaleIfAvailable(Ljava/util/function/DoubleSupplier;)F

    move-result p0

    return p0
.end method

.method public final getConfigurationChanges(Landroid/content/res/Configuration;)I
    .registers 4

    .line 8765
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v0

    .line 8767
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mSizeConfigurations:Landroid/window/SizeConfigurationBuckets;

    .line 8766
    invoke-static {v0, p1, v1, p0}, Landroid/window/SizeConfigurationBuckets;->filterDiff(ILandroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/window/SizeConfigurationBuckets;)I

    move-result p0

    const/high16 p1, 0x20000000

    and-int/2addr p1, p0

    if-eqz p1, :cond_1b

    const p1, -0x20000001

    and-int/2addr p0, p1

    :cond_1b
    return p0
.end method

.method public getCustomAnimation(Z)Lcom/android/server/wm/ActivityRecord$CustomAppTransition;
    .registers 2

    if-eqz p1, :cond_5

    .line 9583
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mCustomOpenTransition:Lcom/android/server/wm/ActivityRecord$CustomAppTransition;

    return-object p0

    :cond_5
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mCustomCloseTransition:Lcom/android/server/wm/ActivityRecord$CustomAppTransition;

    return-object p0
.end method

.method public bridge synthetic getDisplayArea()Lcom/android/server/wm/DisplayArea;
    .registers 1

    .line 376
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p0

    return-object p0
.end method

.method public getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;
    .registers 1

    .line 3023
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayArea()Lcom/android/server/wm/DisplayArea;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/TaskDisplayArea;

    return-object p0
.end method

.method public getDisplayId()I
    .registers 1

    .line 6859
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-eqz p0, :cond_b

    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz p0, :cond_b

    .line 6860
    iget p0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    return p0

    :cond_b
    const/4 p0, -0x1

    return p0
.end method

.method public getFilteredReferrer(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    if-eqz p1, :cond_1e

    .line 9161
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget p0, p0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 9162
    invoke-virtual {v0, p1, v1, p0}, Landroid/content/pm/PackageManagerInternal;->filterAppAccess(Ljava/lang/String;II)Z

    move-result p0

    if-eqz p0, :cond_1d

    goto :goto_1e

    :cond_1d
    return-object p1

    :cond_1e
    :goto_1e
    const/4 p0, 0x0

    return-object p0
.end method

.method public getInputApplicationHandle(Z)Landroid/view/InputApplicationHandle;
    .registers 7

    .line 2135
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mInputApplicationHandle:Landroid/view/InputApplicationHandle;

    if-nez v0, :cond_14

    .line 2136
    new-instance p1, Landroid/view/InputApplicationHandle;

    iget-object v0, p0, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->toString()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/wm/ActivityRecord;->mInputDispatchingTimeoutMillis:J

    invoke-direct {p1, v0, v1, v2, v3}, Landroid/view/InputApplicationHandle;-><init>(Landroid/os/IBinder;Ljava/lang/String;J)V

    iput-object p1, p0, Lcom/android/server/wm/ActivityRecord;->mInputApplicationHandle:Landroid/view/InputApplicationHandle;

    goto :goto_37

    :cond_14
    if-eqz p1, :cond_37

    .line 2139
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2140
    iget-wide v0, p0, Lcom/android/server/wm/ActivityRecord;->mInputDispatchingTimeoutMillis:J

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mInputApplicationHandle:Landroid/view/InputApplicationHandle;

    iget-wide v3, v2, Landroid/view/InputApplicationHandle;->dispatchingTimeoutMillis:J

    cmp-long v0, v0, v3

    if-nez v0, :cond_2c

    iget-object v0, v2, Landroid/view/InputApplicationHandle;->name:Ljava/lang/String;

    .line 2141
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37

    .line 2142
    :cond_2c
    new-instance v0, Landroid/view/InputApplicationHandle;

    iget-object v1, p0, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    iget-wide v2, p0, Lcom/android/server/wm/ActivityRecord;->mInputDispatchingTimeoutMillis:J

    invoke-direct {v0, v1, p1, v2, v3}, Landroid/view/InputApplicationHandle;-><init>(Landroid/os/IBinder;Ljava/lang/String;J)V

    iput-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mInputApplicationHandle:Landroid/view/InputApplicationHandle;

    .line 2146
    :cond_37
    :goto_37
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mInputApplicationHandle:Landroid/view/InputApplicationHandle;

    return-object p0
.end method

.method public getLastEmbeddedParentTfTokenBeforePip()Landroid/os/IBinder;
    .registers 1

    .line 1692
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mLastEmbeddedParentTfTokenBeforePip:Landroid/os/IBinder;

    return-object p0
.end method

.method public getLastParentBeforePip()Lcom/android/server/wm/Task;
    .registers 1

    .line 1688
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mLastParentBeforePip:Lcom/android/server/wm/Task;

    return-object p0
.end method

.method public getLastWindowCreateTime()J
    .registers 4

    .line 9479
    invoke-static {}, Lcom/android/server/wm/WindowContainer;->alwaysTruePredicate()Ljava/util/function/Predicate;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 9480
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_16

    .line 9481
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getCreateTime()J

    move-result-wide v0

    return-wide v0

    .line 9482
    :cond_16
    iget-wide v0, p0, Lcom/android/server/wm/ActivityRecord;->createTime:J

    return-wide v0
.end method

.method public getLaunchedFromBubble()Z
    .registers 1

    .line 5113
    iget-boolean p0, p0, Lcom/android/server/wm/ActivityRecord;->mLaunchedFromBubble:Z

    return p0
.end method

.method public getLetterboxInnerBounds(Landroid/graphics/Rect;)V
    .registers 2

    .line 1753
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatController;->getLetterboxPolicy()Lcom/android/server/wm/AppCompatLetterboxPolicy;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppCompatLetterboxPolicy;->getLetterboxInnerBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public getLetterboxInsets()Landroid/graphics/Rect;
    .registers 1

    .line 1748
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatController;->getLetterboxPolicy()Lcom/android/server/wm/AppCompatLetterboxPolicy;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatLetterboxPolicy;->getLetterboxInsets()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public final getLifecycleItemForCurrentStateForResult()Landroid/app/servertransaction/ActivityLifecycleItem;
    .registers 4

    .line 5030
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_27

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1f

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1f

    const/4 v1, 0x5

    if-eq v0, v1, :cond_17

    const/4 v1, 0x6

    if-eq v0, v1, :cond_17

    return-object v2

    .line 5038
    :cond_17
    new-instance v0, Landroid/app/servertransaction/StopActivityItem;

    iget-object p0, p0, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-direct {v0, p0}, Landroid/app/servertransaction/StopActivityItem;-><init>(Landroid/os/IBinder;)V

    return-object v0

    .line 5035
    :cond_1f
    new-instance v0, Landroid/app/servertransaction/PauseActivityItem;

    iget-object p0, p0, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-direct {v0, p0}, Landroid/app/servertransaction/PauseActivityItem;-><init>(Landroid/os/IBinder;)V

    return-object v0

    .line 5032
    :cond_27
    new-instance v0, Landroid/app/servertransaction/StartActivityItem;

    iget-object p0, p0, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-direct {v0, p0, v2}, Landroid/app/servertransaction/StartActivityItem;-><init>(Landroid/os/IBinder;Landroid/app/ActivityOptions$SceneTransitionInfo;)V

    return-object v0
.end method

.method public getLocusId()Landroid/content/LocusId;
    .registers 1

    .line 6909
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mLocusId:Landroid/content/LocusId;

    return-object p0
.end method

.method public getMaxAspectRatio()F
    .registers 1

    .line 8449
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatController;->getAspectRatioPolicy()Lcom/android/server/wm/AppCompatAspectRatioPolicy;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->getMaxAspectRatio()F

    move-result p0

    return p0
.end method

.method public getMinAspectRatio()F
    .registers 1

    .line 8445
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatController;->getAspectRatioPolicy()Lcom/android/server/wm/AppCompatAspectRatioPolicy;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->getMinAspectRatio()F

    move-result p0

    return p0
.end method

.method public getMinDimensions()Landroid/graphics/Point;
    .registers 3

    .line 9464
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 9468
    :cond_8
    new-instance v0, Landroid/graphics/Point;

    iget v1, p0, Landroid/content/pm/ActivityInfo$WindowLayout;->minWidth:I

    iget p0, p0, Landroid/content/pm/ActivityInfo$WindowLayout;->minHeight:I

    invoke-direct {v0, v1, p0}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method public getOptions()Landroid/app/ActivityOptions;
    .registers 1

    .line 5300
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mPendingOptions:Landroid/app/ActivityOptions;

    return-object p0
.end method

.method public getOrCreateServiceConnectionsHolder()Lcom/android/server/wm/ActivityServiceConnectionsHolder;
    .registers 2

    .line 4252
    monitor-enter p0

    .line 4253
    :try_start_1
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mServiceConnectionsHolder:Lcom/android/server/wm/ActivityServiceConnectionsHolder;

    if-nez v0, :cond_f

    .line 4254
    new-instance v0, Lcom/android/server/wm/ActivityServiceConnectionsHolder;

    invoke-direct {v0, p0}, Lcom/android/server/wm/ActivityServiceConnectionsHolder;-><init>(Lcom/android/server/wm/ActivityRecord;)V

    iput-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mServiceConnectionsHolder:Lcom/android/server/wm/ActivityServiceConnectionsHolder;

    goto :goto_f

    :catchall_d
    move-exception v0

    goto :goto_13

    .line 4256
    :cond_f
    :goto_f
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mServiceConnectionsHolder:Lcom/android/server/wm/ActivityServiceConnectionsHolder;

    monitor-exit p0

    return-object v0

    .line 4257
    :goto_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_d

    throw v0
.end method

.method public getOrganizedTask()Lcom/android/server/wm/Task;
    .registers 1

    .line 2945
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getOrganizedTask()Lcom/android/server/wm/Task;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public getOrganizedTaskFragment()Lcom/android/server/wm/TaskFragment;
    .registers 1

    .line 2951
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 2952
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getOrganizedTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object p0

    return-object p0

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method

.method public getOrientation(I)I
    .registers 4

    .line 7463
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    const/4 v1, -0x2

    if-nez v0, :cond_1f

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->shouldIgnoreOrientationRequests()Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_1f

    :cond_c
    const/4 v0, 0x3

    if-ne p1, v0, :cond_14

    .line 7471
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getOverrideOrientation()I

    move-result p0

    return p0

    .line 7477
    :cond_14
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result p1

    if-eqz p1, :cond_1f

    .line 7478
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getOverrideOrientation()I

    move-result p0

    return p0

    :cond_1f
    :goto_1f
    return v1
.end method

.method public getOverrideOrientation()I
    .registers 3

    .line 7491
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getOverrideOrientation()I

    move-result v0

    .line 7492
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->isRestrictedFixedOrientation(I)Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v0, -0x1

    .line 7495
    :cond_b
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatController;->getOrientationPolicy()Lcom/android/server/wm/AppCompatOrientationPolicy;

    move-result-object p0

    .line 7496
    invoke-virtual {p0, v0}, Lcom/android/server/wm/AppCompatOrientationPolicy;->overrideOrientationIfNeeded(I)I

    move-result p0

    return p0
.end method

.method public getParentAppBoundsOverride()Landroid/graphics/Rect;
    .registers 1

    .line 7782
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mResolveConfigHint:Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;

    iget-object p0, p0, Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;->mParentAppBoundsOverride:Landroid/graphics/Rect;

    invoke-static {p0}, Landroid/graphics/Rect;->copyOrNull(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public getPersistentSavedState()Landroid/os/PersistableBundle;
    .registers 1

    .line 1362
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mPersistentState:Landroid/os/PersistableBundle;

    return-object p0
.end method

.method public getPid()I
    .registers 1

    .line 9145
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->getPid()I

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public getProcessName()Ljava/lang/String;
    .registers 1

    .line 9133
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    return-object p0
.end method

.method public getProtoFieldId()J
    .registers 3

    .line 0
    const-wide v0, 0x10b00000006L

    return-wide v0
.end method

.method public getRemoteAnimationDefinition()Landroid/view/RemoteAnimationDefinition;
    .registers 1

    .line 7268
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mRemoteAnimationDefinition:Landroid/view/RemoteAnimationDefinition;

    return-object p0
.end method

.method public getRequestedConfigurationOrientation(Z)I
    .registers 3

    .line 7284
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getOverrideOrientation()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/ActivityRecord;->getRequestedConfigurationOrientation(ZI)I

    move-result p0

    return p0
.end method

.method public getRequestedConfigurationOrientation(ZI)I
    .registers 5

    .line 7299
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatController;->getTransparentPolicy()Lcom/android/server/wm/TransparentPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/TransparentPolicy;->hasInheritedOrientation()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 7300
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getRootDisplayArea()Lcom/android/server/wm/RootDisplayArea;

    move-result-object p2

    if-eqz p1, :cond_29

    if-eqz p2, :cond_29

    .line 7301
    invoke-virtual {p2}, Lcom/android/server/wm/RootDisplayArea;->isOrientationDifferentFromDisplay()Z

    move-result p1

    if-eqz p1, :cond_29

    .line 7302
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 7303
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatController;->getTransparentPolicy()Lcom/android/server/wm/TransparentPolicy;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/TransparentPolicy;->getInheritedOrientation()I

    move-result p0

    .line 7302
    invoke-static {p0}, Lcom/android/server/wm/ActivityRecord;->reverseConfigurationOrientation(I)I

    move-result p0

    return p0

    .line 7305
    :cond_29
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatController;->getTransparentPolicy()Lcom/android/server/wm/TransparentPolicy;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/TransparentPolicy;->getInheritedOrientation()I

    move-result p0

    return p0

    .line 7308
    :cond_34
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-eqz v0, :cond_46

    const/4 v1, 0x3

    if-ne p2, v1, :cond_46

    .line 7311
    invoke-virtual {v0, p0}, Lcom/android/server/wm/WindowContainer;->getActivityBelowForDefiningOrientation(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_46

    .line 7313
    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityRecord;->getRequestedConfigurationOrientation(Z)I

    move-result p0

    return p0

    :cond_46
    const/16 v0, 0xe

    if-ne p2, v0, :cond_52

    .line 7319
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isUniversalResizeable()Z

    move-result v0

    if-eqz v0, :cond_52

    const/4 p0, 0x0

    return p0

    .line 7322
    :cond_52
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->getRequestedConfigurationOrientation(ZI)I

    move-result p0

    return p0
.end method

.method public getRequestedOrientation()I
    .registers 1

    .line 7508
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getOverrideOrientation()I

    move-result p0

    return p0
.end method

.method public getRootTask()Lcom/android/server/wm/Task;
    .registers 1

    .line 2935
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public getRootTaskId()I
    .registers 1

    .line 2939
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootTaskId()I

    move-result p0

    return p0

    :cond_9
    const/4 p0, -0x1

    return p0
.end method

.method public getSavedState()Landroid/os/Bundle;
    .registers 1

    .line 1348
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mIcicle:Landroid/os/Bundle;

    return-object p0
.end method

.method public getScreenResolvedBounds()Landroid/graphics/Rect;
    .registers 2

    .line 7991
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 7992
    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 7993
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 7994
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatController;->getSizeCompatModePolicy()Lcom/android/server/wm/AppCompatSizeCompatModePolicy;

    move-result-object p0

    .line 7995
    invoke-virtual {p0, v0}, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->replaceResolvedBoundsIfNeeded(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public final getSharedStartingWindowOwnerIfTaskDrawn()Lcom/android/server/wm/ActivityRecord;
    .registers 3

    .line 5381
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    new-instance v1, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-nez v0, :cond_19

    .line 5383
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    new-instance v0, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    return-object p0

    :cond_19
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getSplashscreenTheme(Landroid/app/ActivityOptions;)I
    .registers 6

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    .line 7066
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getSplashScreenThemeResName()Ljava/lang/String;

    move-result-object p1

    goto :goto_9

    :cond_8
    move-object p1, v0

    :goto_9
    if-eqz p1, :cond_11

    .line 7067
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 7069
    :cond_11
    :try_start_11
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 7070
    invoke-interface {v1, v2, v3}, Landroid/content/pm/IPackageManager;->getSplashScreenTheme(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_1f} :catch_1f

    :catch_1f
    :cond_1f
    const/4 v1, 0x0

    if-eqz p1, :cond_3a

    .line 7076
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3a

    .line 7078
    :try_start_28
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 7079
    invoke-virtual {v2, p0, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object p0

    .line 7080
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 7081
    invoke-virtual {p0, p1, v0, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1
    :try_end_3a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_28 .. :try_end_3a} :catch_3a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_28 .. :try_end_3a} :catch_3a

    :catch_3a
    :cond_3a
    return v1
.end method

.method public getStartingWindowInfo()Landroid/window/StartingWindowRemovalInfo;
    .registers 4

    .line 2816
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    if-eqz v0, :cond_2f

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mStartingWindow:Lcom/android/server/wm/WindowState;

    if-nez v1, :cond_9

    goto :goto_2f

    .line 2819
    :cond_9
    iget-boolean v1, v0, Lcom/android/server/wm/StartingData;->mPrepareRemoveAnimation:Z

    if-eqz v1, :cond_1d

    .line 2820
    invoke-virtual {v0}, Lcom/android/server/wm/StartingData;->needRevealAnimation()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mStartingWindow:Lcom/android/server/wm/WindowState;

    .line 2821
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isVisibleByPolicy()Z

    move-result v0

    if-eqz v0, :cond_1d

    const/4 v0, 0x1

    goto :goto_1e

    :cond_1d
    const/4 v0, 0x0

    .line 2822
    :goto_1e
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    invoke-virtual {v1}, Lcom/android/server/wm/StartingData;->hasImeSurface()Z

    move-result v1

    .line 2823
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    invoke-virtual {v2, p0, v0, v1}, Lcom/android/server/wm/TaskOrganizerController;->getStartingWindowRemovalInfo(Lcom/android/server/wm/Task;ZZ)Landroid/window/StartingWindowRemovalInfo;

    move-result-object p0

    return-object p0

    :cond_2f
    :goto_2f
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getStartingWindowType(ZZZZZZLandroid/window/TaskSnapshot;)I
    .registers 12

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_4d

    if-eqz p2, :cond_4d

    if-nez p5, :cond_4d

    .line 2419
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    iget-object v2, v2, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    if-eqz v2, :cond_4d

    iget-boolean v3, p0, Lcom/android/server/wm/ActivityRecord;->mOccludesParent:Z

    if-eqz v3, :cond_1e

    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    .line 2423
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 2424
    :cond_1e
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    new-instance v3, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda28;

    invoke-direct {v3}, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda28;-><init>()V

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    if-eqz v2, :cond_4d

    .line 2426
    invoke-virtual {v2, p7}, Lcom/android/server/wm/ActivityRecord;->isSnapshotCompatible(Landroid/window/TaskSnapshot;)Z

    move-result p1

    if-eqz p1, :cond_4c

    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 2428
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayRotation()Lcom/android/server/wm/DisplayRotation;

    move-result-object p1

    .line 2429
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getOverrideOrientation()I

    move-result p2

    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 2430
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getRotation()I

    move-result p0

    .line 2428
    invoke-virtual {p1, p2, p0}, Lcom/android/server/wm/DisplayRotation;->rotationForOrientation(II)I

    move-result p0

    .line 2430
    invoke-virtual {p7}, Landroid/window/TaskSnapshot;->getRotation()I

    move-result p1

    if-ne p0, p1, :cond_4c

    return v0

    :cond_4c
    return v1

    .line 2438
    :cond_4d
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result v2

    const/4 v3, 0x2

    if-nez p1, :cond_5a

    if-eqz p3, :cond_5a

    if-eqz p2, :cond_5d

    if-nez p5, :cond_5d

    :cond_5a
    if-nez v2, :cond_5d

    return v3

    :cond_5d
    if-eqz p2, :cond_8f

    if-eqz p4, :cond_6b

    .line 2445
    invoke-virtual {p0, p7}, Lcom/android/server/wm/ActivityRecord;->isSnapshotCompatible(Landroid/window/TaskSnapshot;)Z

    move-result p1

    if-eqz p1, :cond_68

    return v0

    :cond_68
    if-nez v2, :cond_6b

    return v3

    :cond_6b
    if-nez p6, :cond_8f

    if-nez v2, :cond_8f

    .line 2455
    iget-object p1, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    iget-object p2, p1, Lcom/android/server/wm/Task;->mTaskFragmentHostProcessName:Ljava/lang/String;

    if-eqz p2, :cond_8e

    .line 2458
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowContainer;->getTaskBelow(Lcom/android/server/wm/Task;)Lcom/android/server/wm/Task;

    move-result-object p0

    if-eqz p0, :cond_8e

    .line 2460
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    if-eqz p0, :cond_8e

    .line 2461
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->hasStartingWindow()Z

    move-result p0

    if-eqz p0, :cond_8e

    return v1

    :cond_8e
    return v3

    :cond_8f
    return v1
.end method

.method public getState()Lcom/android/server/wm/ActivityRecord$State;
    .registers 1

    .line 5808
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityRecord$State;

    return-object p0
.end method

.method public getTask()Lcom/android/server/wm/Task;
    .registers 1

    .line 1470
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    return-object p0
.end method

.method public getTaskFragment()Lcom/android/server/wm/TaskFragment;
    .registers 1

    .line 1475
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 1476
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object p0

    return-object p0

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method

.method public getTurnScreenOnFlag()Z
    .registers 2

    .line 9193
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mTurnScreenOn:Z

    if-nez v0, :cond_d

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->containsTurnScreenOnWindow()Z

    move-result p0

    if-eqz p0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x0

    return p0

    :cond_d
    :goto_d
    const/4 p0, 0x1

    return p0
.end method

.method public getUid()I
    .registers 1

    .line 9137
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    return p0
.end method

.method public getUriPermissionsLocked()Lcom/android/server/uri/UriPermissionOwner;
    .registers 3

    .line 4907
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->uriPermissions:Lcom/android/server/uri/UriPermissionOwner;

    if-nez v0, :cond_f

    .line 4908
    new-instance v0, Lcom/android/server/uri/UriPermissionOwner;

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    invoke-direct {v0, v1, p0}, Lcom/android/server/uri/UriPermissionOwner;-><init>(Lcom/android/server/uri/UriGrantsManagerInternal;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/wm/ActivityRecord;->uriPermissions:Lcom/android/server/uri/UriPermissionOwner;

    .line 4910
    :cond_f
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->uriPermissions:Lcom/android/server/uri/UriPermissionOwner;

    return-object p0
.end method

.method public final getWaitingHistoryRecordLocked()Lcom/android/server/wm/ActivityRecord;
    .registers 3

    .line 6786
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mAppStopped:Z

    if-eqz v0, :cond_1a

    .line 6787
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-nez v0, :cond_d

    goto :goto_1a

    .line 6792
    :cond_d
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-nez v1, :cond_17

    .line 6794
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getTopPausingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    :cond_17
    if-eqz v1, :cond_1a

    return-object v1

    :cond_1a
    :goto_1a
    return-object p0
.end method

.method public handleAlreadyVisible()V
    .registers 3

    .line 6197
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->returningOptions:Landroid/app/ActivityOptions;

    if-eqz v0, :cond_24

    .line 6198
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->getAnimationType()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_24

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->returningOptions:Landroid/app/ActivityOptions;

    .line 6199
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->getSceneTransitionInfo()Landroid/app/ActivityOptions$SceneTransitionInfo;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 6200
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->returningOptions:Landroid/app/ActivityOptions;

    .line 6201
    invoke-virtual {p0}, Landroid/app/ActivityOptions;->getSceneTransitionInfo()Landroid/app/ActivityOptions$SceneTransitionInfo;

    move-result-object p0

    .line 6200
    invoke-interface {v0, v1, p0}, Landroid/app/IApplicationThread;->scheduleOnNewSceneTransitionInfo(Landroid/os/IBinder;Landroid/app/ActivityOptions$SceneTransitionInfo;)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_24} :catch_24

    :catch_24
    :cond_24
    return-void
.end method

.method public handleAppDied()V
    .registers 12

    .line 4285
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->isSdkSandboxUid(I)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_e

    :cond_c
    :goto_c
    move v3, v2

    goto :goto_4b

    .line 4290
    :cond_e
    iget v0, p0, Lcom/android/server/wm/ActivityRecord;->mRelaunchReason:I

    const/4 v3, 0x0

    if-eq v0, v2, :cond_15

    if-ne v0, v1, :cond_1f

    :cond_15
    iget v0, p0, Lcom/android/server/wm/ActivityRecord;->launchCount:I

    const/4 v4, 0x3

    if-ge v0, v4, :cond_1f

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v0, :cond_1f

    goto :goto_4b

    .line 4296
    :cond_1f
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mHaveState:Z

    if-nez v0, :cond_2f

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->stateNotNeeded:Z

    if-nez v0, :cond_2f

    sget-object v0, Lcom/android/server/wm/ActivityRecord$State;->RESTARTING_PROCESS:Lcom/android/server/wm/ActivityRecord$State;

    .line 4297
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_2f
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v0, :cond_34

    goto :goto_c

    .line 4300
    :cond_34
    iget-boolean v0, p0, Lcom/android/server/wm/WindowContainer;->mVisibleRequested:Z

    if-nez v0, :cond_4b

    iget v0, p0, Lcom/android/server/wm/ActivityRecord;->launchCount:I

    if-le v0, v1, :cond_4b

    iget-wide v4, p0, Lcom/android/server/wm/ActivityRecord;->lastLaunchTime:J

    .line 4301
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    const-wide/32 v8, 0xea60

    sub-long/2addr v6, v8

    cmp-long v0, v4, v6

    if-lez v0, :cond_4b

    goto :goto_c

    :cond_4b
    :goto_4b
    if-eqz v3, :cond_c6

    .line 4310
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_ADD_REMOVE_enabled:[Z

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_88

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mHaveState:Z

    iget-boolean v1, p0, Lcom/android/server/wm/ActivityRecord;->stateNotNeeded:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    iget-boolean v1, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    iget-object v5, p0, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityRecord$State;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/4 v5, 0x5

    invoke-static {v5}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_ADD_REMOVE:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    filled-new-array/range {v4 .. v9}, [Ljava/lang/Object;

    move-result-object v0

    const-wide v4, 0x826bc31d70d318aL

    const/16 v1, 0xcc

    invoke-static {v10, v4, v5, v1, v0}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 4313
    :cond_88
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v0, :cond_96

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eqz v0, :cond_c6

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->isRemoved()Z

    move-result v0

    if-eqz v0, :cond_c6

    .line 4314
    :cond_96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Force removing "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": app died, no saved state"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4315
    iget v0, p0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    .line 4316
    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-eqz v4, :cond_be

    iget v4, v4, Lcom/android/server/wm/Task;->mTaskId:I

    goto :goto_bf

    :cond_be
    const/4 v4, -0x1

    :goto_bf
    iget-object v5, p0, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    const-string v6, "proc died without state saved"

    .line 4315
    invoke-static {v0, v1, v4, v5, v6}, Lcom/android/server/wm/EventLogTags;->writeWmFinishActivity(IIILjava/lang/String;Ljava/lang/String;)V

    .line 4326
    :cond_c6
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-eqz v0, :cond_d3

    iget-boolean v1, v0, Lcom/android/server/wm/Task;->mKillProcessesOnDestroyed:Z

    if-eqz v1, :cond_d3

    .line 4327
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v1, p0, v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->removeTimeoutOfKillProcessesOnProcessDied(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)V

    :cond_d3
    if-eqz v3, :cond_e2

    .line 4331
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-eqz v0, :cond_e2

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v0

    if-ne v0, v2, :cond_e2

    .line 4332
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    goto :goto_e3

    :cond_e2
    move-object v0, p0

    .line 4333
    :goto_e3
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mChainTracker:Lcom/android/server/wm/ActionChain$Tracker;

    const-string v4, "appDied"

    invoke-virtual {v1, v4}, Lcom/android/server/wm/ActionChain$Tracker;->startTransit(Ljava/lang/String;)Lcom/android/server/wm/ActionChain;

    move-result-object v1

    .line 4334
    invoke-virtual {v1}, Lcom/android/server/wm/ActionChain;->isCollecting()Z

    move-result v5

    if-nez v5, :cond_fc

    .line 4335
    iget-object v5, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v5, v0}, Lcom/android/server/wm/TransitionController;->requestCloseTransitionIfNeeded(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/Transition;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/android/server/wm/ActionChain;->attachTransition(Lcom/android/server/wm/Transition;)V

    .line 4337
    :cond_fc
    invoke-virtual {v1, v0}, Lcom/android/server/wm/ActionChain;->collectClose(Lcom/android/server/wm/WindowContainer;)V

    .line 4338
    invoke-virtual {p0, v2, v2}, Lcom/android/server/wm/ActivityRecord;->cleanUp(ZZ)V

    if-eqz v3, :cond_126

    .line 4340
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    if-eqz v0, :cond_123

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mVisible:Z

    if-eqz v0, :cond_123

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-eqz v0, :cond_123

    .line 4345
    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_123

    .line 4346
    iget-boolean v1, v0, Lcom/android/server/wm/ActivityRecord;->mVisible:Z

    if-nez v1, :cond_123

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->shouldBeVisible()Z

    move-result v1

    if-eqz v1, :cond_123

    .line 4347
    invoke-virtual {v0, p0}, Lcom/android/server/wm/ActivityRecord;->transferStartingWindow(Lcom/android/server/wm/ActivityRecord;)Z

    .line 4350
    :cond_123
    invoke-virtual {p0, v4}, Lcom/android/server/wm/ActivityRecord;->removeFromHistory(Ljava/lang/String;)V

    .line 4352
    :cond_126
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mChainTracker:Lcom/android/server/wm/ActionChain$Tracker;

    invoke-virtual {p0}, Lcom/android/server/wm/ActionChain$Tracker;->end()V

    return-void
.end method

.method public handlesOrientationChangeFromDescendant(I)Z
    .registers 3

    .line 8064
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->shouldIgnoreOrientationRequests()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 8067
    :cond_8
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->handlesOrientationChangeFromDescendant(I)Z

    move-result p0

    return p0
.end method

.method public hasActivity()Z
    .registers 1

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public hasCaller(Landroid/os/IBinder;)Z
    .registers 2

    .line 1815
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mCallerState:Lcom/android/server/wm/ActivityCallerState;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityCallerState;->hasCaller(Landroid/os/IBinder;)Z

    move-result p0

    return p0
.end method

.method public hasDeskResources()Z
    .registers 5

    .line 8739
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mHasDeskResources:Ljava/lang/Boolean;

    if-eqz v0, :cond_9

    .line 8741
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    .line 8744
    :cond_9
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mHasDeskResources:Ljava/lang/Boolean;

    .line 8746
    :try_start_d
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 8747
    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    const/4 v3, 0x0

    .line 8746
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0

    .line 8747
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 8749
    invoke-virtual {v0}, Landroid/content/res/Resources;->getSizeAndUiModeConfigurations()[Landroid/content/res/Configuration;

    move-result-object v0

    array-length v1, v0

    :goto_27
    if-ge v3, v1, :cond_51

    aget-object v2, v0, v3

    .line 8750
    invoke-static {v2}, Lcom/android/server/wm/ActivityRecord;->isInDeskUiMode(Landroid/content/res/Configuration;)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 8751
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mHasDeskResources:Ljava/lang/Boolean;
    :try_end_35
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_d .. :try_end_35} :catch_36

    goto :goto_51

    :catch_36
    move-exception v0

    goto :goto_3b

    :cond_38
    add-int/lit8 v3, v3, 0x1

    goto :goto_27

    .line 8756
    :goto_3b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception thrown during checking for desk resources "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityTaskManager"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8758
    :cond_51
    :goto_51
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mHasDeskResources:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public hasOverlayOverUntrustedModeEmbedded()Z
    .registers 4

    .line 5964
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isEmbeddedInUntrustedMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1f

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-nez v0, :cond_e

    goto :goto_1f

    .line 5972
    :cond_e
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    new-instance v2, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda25;

    invoke-direct {v2, p0}, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda25;-><init>(Lcom/android/server/wm/ActivityRecord;)V

    invoke-virtual {v0, v2, p0, v1, v1}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;Lcom/android/server/wm/WindowContainer;ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    if-eqz p0, :cond_1f

    const/4 p0, 0x1

    return p0

    :cond_1f
    :goto_1f
    return v1
.end method

.method public hasProcess()Z
    .registers 1

    .line 2179
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public hasSavedState()Z
    .registers 1

    .line 1357
    iget-boolean p0, p0, Lcom/android/server/wm/ActivityRecord;->mHaveState:Z

    return p0
.end method

.method public hasSizeCompatBounds()Z
    .registers 1

    .line 7561
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatController;->getSizeCompatModePolicy()Lcom/android/server/wm/AppCompatSizeCompatModePolicy;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->hasSizeCompatBounds()Z

    move-result p0

    return p0
.end method

.method public hasStartingWindow()Z
    .registers 5

    .line 4476
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    return v1

    .line 4479
    :cond_6
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_d
    if-ltz v0, :cond_20

    .line 4480
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1d

    return v1

    :cond_1d
    add-int/lit8 v0, v0, -0x1

    goto :goto_d

    :cond_20
    const/4 p0, 0x0

    return p0
.end method

.method public hasWallpaperBackgroundForLetterbox()Z
    .registers 1

    .line 1739
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatController;->getLetterboxOverrides()Lcom/android/server/wm/AppCompatLetterboxOverrides;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatLetterboxOverrides;->hasWallpaperBackgroundForLetterbox()Z

    move-result p0

    return p0
.end method

.method public inSizeCompatMode()Z
    .registers 1

    .line 7542
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatController;->getSizeCompatModePolicy()Lcom/android/server/wm/AppCompatSizeCompatModePolicy;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->inSizeCompatMode()Z

    move-result p0

    return p0
.end method

.method public inputDispatchingTimedOut(Lcom/android/internal/os/TimeoutRecord;I)Z
    .registers 16

    const-wide/16 v1, 0x40

    .line 6751
    :try_start_2
    const-string v0, "ActivityRecord#inputDispatchingTimedOut()"

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 6756
    iget-object v0, p1, Lcom/android/internal/os/TimeoutRecord;->mLatencyTracker:Lcom/android/internal/os/anr/AnrLatencyTracker;

    invoke-virtual {v0}, Lcom/android/internal/os/anr/AnrLatencyTracker;->waitingOnGlobalLockStarted()V

    .line 6757
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v3
    :try_end_14
    .catchall {:try_start_2 .. :try_end_14} :catchall_58

    .line 6758
    :try_start_14
    iget-object v0, p1, Lcom/android/internal/os/TimeoutRecord;->mLatencyTracker:Lcom/android/internal/os/anr/AnrLatencyTracker;

    invoke-virtual {v0}, Lcom/android/internal/os/anr/AnrLatencyTracker;->waitingOnGlobalLockEnded()V

    .line 6759
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getWaitingHistoryRecordLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 6760
    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 6761
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->hasProcess()Z

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v5, :cond_37

    iget-object v5, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 6762
    invoke-virtual {v5}, Lcom/android/server/wm/WindowProcessController;->getPid()I

    move-result v5

    if-eq v5, p2, :cond_32

    const/4 v5, -0x1

    if-ne p2, v5, :cond_37

    :cond_32
    move v5, v6

    goto :goto_38

    :catchall_34
    move-exception v0

    move-object p0, v0

    goto :goto_70

    :cond_37
    move v5, v7

    .line 6763
    :goto_38
    monitor-exit v3
    :try_end_39
    .catchall {:try_start_14 .. :try_end_39} :catchall_34

    :try_start_39
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    if-eqz v5, :cond_5b

    .line 6766
    iget-object p2, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, p2, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget-object v6, v4, Lcom/android/server/wm/WindowProcessController;->mOwner:Ljava/lang/Object;

    iget-object v7, v0, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    iget-object p2, v0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v8, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v9, p0, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    iget-object v10, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    const/4 v11, 0x0

    move-object v12, p1

    invoke-virtual/range {v5 .. v12}, Landroid/app/ActivityManagerInternal;->inputDispatchingTimedOut(Ljava/lang/Object;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Ljava/lang/Object;ZLcom/android/internal/os/TimeoutRecord;)Z

    move-result p0
    :try_end_54
    .catchall {:try_start_39 .. :try_end_54} :catchall_58

    .line 6778
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_58
    move-exception v0

    move-object p0, v0

    goto :goto_75

    :cond_5b
    move-object v12, p1

    .line 6773
    :try_start_5c
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {p0, p2, v7, v12}, Landroid/app/ActivityManagerInternal;->inputDispatchingTimedOut(IZLcom/android/internal/os/TimeoutRecord;)J

    move-result-wide p0
    :try_end_64
    .catchall {:try_start_5c .. :try_end_64} :catchall_58

    const-wide/16 v3, 0x0

    cmp-long p0, p0, v3

    if-gtz p0, :cond_6b

    goto :goto_6c

    :cond_6b
    move v6, v7

    .line 6778
    :goto_6c
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return v6

    .line 6763
    :goto_70
    :try_start_70
    monitor-exit v3
    :try_end_71
    .catchall {:try_start_70 .. :try_end_71} :catchall_34

    :try_start_71
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
    :try_end_75
    .catchall {:try_start_71 .. :try_end_75} :catchall_58

    .line 6778
    :goto_75
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 6779
    throw p0
.end method

.method public final isAlwaysFocusable()Z
    .registers 2

    .line 3385
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget p0, p0, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v0, 0x40000

    and-int/2addr p0, v0

    if-eqz p0, :cond_b

    const/4 p0, 0x1

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method public isAlwaysOnTop()Z
    .registers 2

    .line 9261
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mTaskOverlay:Z

    if-nez v0, :cond_d

    invoke-super {p0}, Lcom/android/server/wm/ConfigurationContainer;->isAlwaysOnTop()Z

    move-result p0

    if-eqz p0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x0

    return p0

    :cond_d
    :goto_d
    const/4 p0, 0x1

    return p0
.end method

.method public final isAppActivityEmbeddingSplitsEnabled()Z
    .registers 6

    .line 2079
    invoke-static {}, Landroid/view/WindowManager;->hasWindowExtensionsEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 2083
    :cond_8
    sget-boolean v0, Landroid/view/WindowManager;->ACTIVITY_EMBEDDING_GUARD_WITH_ANDROID_15:Z

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 2086
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v2

    const-wide/32 v3, 0x12475a62

    .line 2083
    invoke-static {v3, v4, v0, v2}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    if-nez v0, :cond_22

    return v1

    .line 2091
    :cond_22
    :try_start_22
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v2, "android.window.PROPERTY_ACTIVITY_EMBEDDING_SPLITS_ENABLED"

    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget p0, p0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    const/4 v4, 0x0

    .line 2092
    invoke-virtual {v0, v2, v3, v4, p0}, Landroid/content/pm/PackageManager;->getPropertyAsUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/PackageManager$Property;

    move-result-object p0

    .line 2094
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$Property;->getBoolean()Z

    move-result p0
    :try_end_39
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_22 .. :try_end_39} :catch_3a

    return p0

    :catch_3a
    return v1
.end method

.method public isCallerShareIdentityEnabled(Landroid/os/IBinder;)Z
    .registers 2

    .line 1827
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mCallerState:Lcom/android/server/wm/ActivityCallerState;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityCallerState;->isShareIdentityEnabled(Landroid/os/IBinder;)Z

    move-result p0

    return p0
.end method

.method public isConfigurationDispatchPaused()Z
    .registers 1

    .line 8438
    iget p0, p0, Lcom/android/server/wm/ActivityRecord;->mPauseConfigurationDispatchCount:I

    if-lez p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public final isDestroyable()Z
    .registers 3

    .line 6864
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    const/4 v1, 0x0

    if-nez v0, :cond_34

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->hasProcess()Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_34

    .line 6868
    :cond_c
    sget-object v0, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v0

    if-nez v0, :cond_34

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_34

    .line 6869
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->getPausingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eq p0, v0, :cond_34

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mHaveState:Z

    if-eqz v0, :cond_34

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mAppStopped:Z

    if-nez v0, :cond_2d

    goto :goto_34

    .line 6874
    :cond_2d
    iget-boolean p0, p0, Lcom/android/server/wm/WindowContainer;->mVisibleRequested:Z

    if-eqz p0, :cond_32

    return v1

    :cond_32
    const/4 p0, 0x1

    return p0

    :cond_34
    :goto_34
    return v1
.end method

.method public isEmbedded()Z
    .registers 1

    .line 2957
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object p0

    if-eqz p0, :cond_e

    .line 2958
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->isEmbedded()Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public isEmbeddedInHostContainer()Z
    .registers 1

    .line 2996
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getOrganizedTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object p0

    if-eqz p0, :cond_e

    .line 2997
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->isEmbeddedWithBoundsOverride()Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public final isEmbeddedInUntrustedMode()Z
    .registers 2

    .line 1632
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getOrganizedTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 1638
    :cond_8
    invoke-virtual {v0, p0}, Lcom/android/server/wm/TaskFragment;->isAllowedToEmbedActivityInTrustedMode(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isFirstChildWindowGreaterThanSecond(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)Z
    .registers 5

    .line 4451
    iget-object p0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 4452
    iget-object p1, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_f

    if-eq p1, v0, :cond_f

    return p2

    :cond_f
    if-eq p0, v0, :cond_14

    if-ne p1, v0, :cond_14

    return v0

    :cond_14
    const/4 v1, 0x3

    if-ne p0, v1, :cond_1a

    if-eq p1, v1, :cond_1a

    return v0

    :cond_1a
    if-eq p0, v1, :cond_1f

    if-ne p1, v1, :cond_1f

    return p2

    :cond_1f
    return v0
.end method

.method public isFocusable()Z
    .registers 2

    .line 3119
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->isFocusable()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->canReceiveKeys()Z

    move-result v0

    if-nez v0, :cond_12

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isAlwaysFocusable()Z

    move-result p0

    if-eqz p0, :cond_14

    :cond_12
    const/4 p0, 0x1

    return p0

    :cond_14
    const/4 p0, 0x0

    return p0
.end method

.method public isFocusedActivityOnDisplay()Z
    .registers 3

    .line 9230
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    new-instance v1, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/wm/ActivityRecord;)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowContainer;->forAllTaskDisplayAreas(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public isFullyTransparentBarAllowed(Landroid/graphics/Rect;)Z
    .registers 2

    .line 1761
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatController;->getLetterboxPolicy()Lcom/android/server/wm/AppCompatLetterboxPolicy;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppCompatLetterboxPolicy;->isFullyTransparentBarAllowed(Landroid/graphics/Rect;)Z

    move-result p0

    return p0
.end method

.method public isHandoffEnabled()Z
    .registers 1

    .line 1299
    iget-boolean p0, p0, Lcom/android/server/wm/ActivityRecord;->mHandoffEnabled:Z

    return p0
.end method

.method public isHandoffFullTaskRecreationAllowed()Z
    .registers 2

    .line 1309
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isHandoffEnabled()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 1313
    :cond_8
    iget-boolean p0, p0, Lcom/android/server/wm/ActivityRecord;->mAllowFullTaskRecreation:Z

    return p0
.end method

.method public final isIconStylePreferred(I)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 7005
    :cond_4
    iget v1, p0, Lcom/android/server/wm/ActivityRecord;->theme:I

    if-ne p1, v1, :cond_b

    .line 7006
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mWindowStyle:Lcom/android/server/wm/ActivityRecord$WindowStyle;

    goto :goto_15

    :cond_b
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget p0, p0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-virtual {v1, v2, p1, p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getWindowStyle(Ljava/lang/String;II)Lcom/android/server/wm/ActivityRecord$WindowStyle;

    move-result-object p0

    :goto_15
    if-eqz p0, :cond_1d

    .line 7008
    iget p0, p0, Lcom/android/server/wm/ActivityRecord$WindowStyle;->mSplashScreenBehavior:I

    const/4 p1, 0x1

    if-ne p0, p1, :cond_1d

    return p1

    :cond_1d
    return v0
.end method

.method public isImmersiveMode(Landroid/graphics/Rect;)Z
    .registers 4

    .line 7977
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mResolveConfigHint:Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;

    iget-boolean v0, v0, Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;->mUseOverrideInsetsForConfig:Z

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 7980
    :cond_8
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getInsetsStateController()Lcom/android/server/wm/InsetsStateController;

    move-result-object p0

    .line 7981
    invoke-virtual {p0}, Lcom/android/server/wm/InsetsStateController;->getRawInsetsState()Landroid/view/InsetsState;

    move-result-object p0

    .line 7984
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v0

    .line 7981
    invoke-virtual {p0, p1, p1, v0, v1}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;IZ)Landroid/graphics/Insets;

    move-result-object p0

    .line 7987
    sget-object p1, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    invoke-virtual {p1, p0}, Landroid/graphics/Insets;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isInHistory()Z
    .registers 1

    .line 3103
    iget-boolean p0, p0, Lcom/android/server/wm/ActivityRecord;->inHistory:Z

    return p0
.end method

.method public isInRootTaskLocked()Z
    .registers 2

    .line 3107
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 3108
    invoke-virtual {v0, p0}, Lcom/android/server/wm/Task;->isInTask(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public isInterestingToUserLocked()Z
    .registers 2

    .line 6812
    iget-boolean v0, p0, Lcom/android/server/wm/WindowContainer;->mVisibleRequested:Z

    if-nez v0, :cond_15

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->nowVisible:Z

    if-nez v0, :cond_15

    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityRecord$State;

    sget-object v0, Lcom/android/server/wm/ActivityRecord$State;->PAUSING:Lcom/android/server/wm/ActivityRecord$State;

    if-eq p0, v0, :cond_15

    sget-object v0, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    if-ne p0, v0, :cond_13

    goto :goto_15

    :cond_13
    const/4 p0, 0x0

    return p0

    :cond_15
    :goto_15
    const/4 p0, 0x1

    return p0
.end method

.method public isKeyguardLocked()Z
    .registers 2

    .line 4753
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->isKeyguardLocked()Z

    move-result p0

    return p0

    .line 4754
    :cond_9
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->isKeyguardLocked()Z

    move-result p0

    return p0
.end method

.method public isLastWindow(Lcom/android/server/wm/WindowState;)Z
    .registers 5

    .line 4488
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_13

    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, p1, :cond_13

    return v2

    :cond_13
    return v1
.end method

.method public isLaunchSourceType(I)Z
    .registers 2

    .line 2218
    iget p0, p0, Lcom/android/server/wm/ActivityRecord;->mLaunchSourceType:I

    if-ne p0, p1, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public isNoDisplay()Z
    .registers 1

    .line 3037
    iget-boolean p0, p0, Lcom/android/server/wm/ActivityRecord;->mNoDisplay:Z

    return p0
.end method

.method public isNoHistory()Z
    .registers 3

    .line 9012
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr v0, v1

    if-nez v0, :cond_16

    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget p0, p0, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 p0, p0, 0x80

    if-eqz p0, :cond_14

    goto :goto_16

    :cond_14
    const/4 p0, 0x0

    return p0

    :cond_16
    :goto_16
    const/4 p0, 0x1

    return p0
.end method

.method public isPersistable()Z
    .registers 3

    .line 3112
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->persistableMode:I

    if-eqz v0, :cond_9

    const/4 v1, 0x2

    if-ne v0, v1, :cond_17

    :cond_9
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    if-eqz p0, :cond_19

    .line 3114
    invoke-virtual {p0}, Landroid/content/Intent;->getFlags()I

    move-result p0

    const/high16 v0, 0x800000

    and-int/2addr p0, v0

    if-nez p0, :cond_17

    goto :goto_19

    :cond_17
    const/4 p0, 0x0

    return p0

    :cond_19
    :goto_19
    const/4 p0, 0x1

    return p0
.end method

.method public isProcessRunning()Z
    .registers 3

    .line 8973
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-nez v0, :cond_17

    .line 8975
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessNames:Lcom/android/internal/app/ProcessMap;

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1, p0}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lcom/android/server/wm/WindowProcessController;

    :cond_17
    if-eqz v0, :cond_21

    .line 8977
    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->hasThread()Z

    move-result p0

    if-eqz p0, :cond_21

    const/4 p0, 0x1

    return p0

    :cond_21
    const/4 p0, 0x0

    return p0
.end method

.method public isRegisteredForScreenCaptureCallback()Z
    .registers 1

    .line 6949
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mCaptureCallbacks:Landroid/os/RemoteCallbackList;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result p0

    if-lez p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public isRelaunching()Z
    .registers 1

    .line 4198
    iget p0, p0, Lcom/android/server/wm/ActivityRecord;->mPendingRelaunchCount:I

    if-lez p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public isReportedDrawn()Z
    .registers 1

    .line 6674
    iget-boolean p0, p0, Lcom/android/server/wm/ActivityRecord;->mReportedDrawn:Z

    return p0
.end method

.method public isResizeable()Z
    .registers 2

    .line 3185
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mForceResizableActivities:Z

    if-nez v0, :cond_27

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->resizeMode:I

    .line 3186
    invoke-static {v0}, Landroid/content/pm/ActivityInfo;->isResizeableMode(I)Z

    move-result v0

    if-nez v0, :cond_27

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 3187
    invoke-virtual {v0}, Landroid/content/pm/ActivityInfo;->supportsPictureInPicture()Z

    move-result v0

    if-nez v0, :cond_27

    .line 3188
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isUniversalResizeable()Z

    move-result v0

    if-nez v0, :cond_27

    .line 3190
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isEmbedded()Z

    move-result p0

    if-eqz p0, :cond_25

    goto :goto_27

    :cond_25
    const/4 p0, 0x0

    return p0

    :cond_27
    :goto_27
    const/4 p0, 0x1

    return p0
.end method

.method public isResolverOrChildActivity()Z
    .registers 4

    .line 1803
    const-string v0, "android"

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_c

    return v1

    .line 1807
    :cond_c
    :try_start_c
    const-class v0, Lcom/android/internal/app/ResolverActivity;

    const-class v2, Ljava/lang/Object;

    .line 1808
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    .line 1807
    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0
    :try_end_22
    .catch Ljava/lang/ClassNotFoundException; {:try_start_c .. :try_end_22} :catch_23

    return p0

    :catch_23
    return v1
.end method

.method public isResolverOrDelegateActivity()Z
    .registers 2

    .line 1798
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/ActivityRecord;->isResolverActivity(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 1799
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->getSystemChooserActivity()Landroid/content/ComponentName;

    move-result-object p0

    .line 1798
    invoke-static {v0, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1d

    goto :goto_1f

    :cond_1d
    const/4 p0, 0x0

    return p0

    :cond_1f
    :goto_1f
    const/4 p0, 0x1

    return p0
.end method

.method public final isRestrictedFixedOrientation(I)Z
    .registers 3

    const/16 v0, 0xe

    if-eq p1, v0, :cond_12

    .line 3133
    invoke-static {p1}, Landroid/content/pm/ActivityInfo;->isFixedOrientation(I)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 3134
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isUniversalResizeable()Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method public isRootOfTask()Z
    .registers 4

    .line 9243
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    const/4 v2, 0x1

    .line 9246
    invoke-virtual {v0, v2}, Lcom/android/server/wm/Task;->getRootActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-ne p0, v0, :cond_e

    return v2

    :cond_e
    return v1
.end method

.method public isSleeping()Z
    .registers 2

    .line 5054
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->shouldSleepActivities()Z

    move-result p0

    return p0

    :cond_9
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->isSleepingLocked()Z

    move-result p0

    return p0
.end method

.method public isSnapshotCompatible(Landroid/window/TaskSnapshot;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 2481
    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRecord;->isSnapshotComponentCompatible(Landroid/window/TaskSnapshot;)Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRecord;->isSnapshotOrientationCompatible(Landroid/window/TaskSnapshot;)Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    return v0
.end method

.method public isSnapshotComponentCompatible(Landroid/window/TaskSnapshot;)Z
    .registers 2

    .line 2488
    invoke-virtual {p1}, Landroid/window/TaskSnapshot;->getTopActivityComponent()Landroid/content/ComponentName;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {p1, p0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isSnapshotOrientationCompatible(Landroid/window/TaskSnapshot;)Z
    .registers 7

    .line 2495
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/DisplayContent;->rotationForActivityInDifferentOrientation(Lcom/android/server/wm/ActivityRecord;)I

    move-result v0

    .line 2496
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v1

    const/4 v2, -0x1

    if-eq v0, v2, :cond_14

    goto :goto_15

    :cond_14
    move v0, v1

    .line 2502
    :goto_15
    invoke-virtual {p1}, Landroid/window/TaskSnapshot;->getRotation()I

    move-result v2

    const/4 v3, 0x0

    if-eq v2, v0, :cond_1d

    return v3

    .line 2505
    :cond_1d
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    .line 2506
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 2507
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    .line 2508
    invoke-virtual {p1}, Landroid/window/TaskSnapshot;->getTaskSize()Landroid/graphics/Point;

    move-result-object p1

    sub-int/2addr v1, v0

    .line 2509
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3c

    move v4, v2

    move v2, p0

    move p0, v4

    .line 2516
    :cond_3c
    iget v0, p1, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr v0, p1

    int-to-float p1, v2

    .line 2517
    invoke-static {p0, v1}, Ljava/lang/Math;->max(II)I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p1, p0

    sub-float/2addr v0, p1

    .line 2516
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const p1, 0x3c23d70a    # 0.01f

    cmpg-float p0, p0, p1

    if-gtz p0, :cond_5b

    return v1

    :cond_5b
    return v3
.end method

.method public final isStartingOrientationCompatible(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 5

    .line 4513
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    .line 4514
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getRequestedConfigurationOrientation()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_18

    .line 4516
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    if-ne p1, p0, :cond_17

    return v2

    :cond_17
    return v1

    :cond_18
    if-ne p1, v0, :cond_1b

    return v2

    :cond_1b
    return v1
.end method

.method public isStartingWindowDisplayed()Z
    .registers 2

    .line 2659
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    if-eqz v0, :cond_5

    goto :goto_d

    :cond_5
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-eqz p0, :cond_c

    .line 2660
    iget-object v0, p0, Lcom/android/server/wm/Task;->mSharedStartingData:Lcom/android/server/wm/StartingData;

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    if-eqz v0, :cond_15

    .line 2661
    iget-boolean p0, v0, Lcom/android/server/wm/StartingData;->mIsDisplayed:Z

    if-eqz p0, :cond_15

    const/4 p0, 0x1

    return p0

    :cond_15
    const/4 p0, 0x0

    return p0
.end method

.method public isState(Lcom/android/server/wm/ActivityRecord$State;)Z
    .registers 2

    .line 5815
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityRecord$State;

    if-ne p1, p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public isState(Lcom/android/server/wm/ActivityRecord$State;Lcom/android/server/wm/ActivityRecord$State;)Z
    .registers 3

    .line 5822
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityRecord$State;

    if-eq p1, p0, :cond_9

    if-ne p2, p0, :cond_7

    goto :goto_9

    :cond_7
    const/4 p0, 0x0

    return p0

    :cond_9
    :goto_9
    const/4 p0, 0x1

    return p0
.end method

.method public isState(Lcom/android/server/wm/ActivityRecord$State;Lcom/android/server/wm/ActivityRecord$State;Lcom/android/server/wm/ActivityRecord$State;)Z
    .registers 4

    .line 5829
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityRecord$State;

    if-eq p1, p0, :cond_b

    if-eq p2, p0, :cond_b

    if-ne p3, p0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    return p0

    :cond_b
    :goto_b
    const/4 p0, 0x1

    return p0
.end method

.method public isState(Lcom/android/server/wm/ActivityRecord$State;Lcom/android/server/wm/ActivityRecord$State;Lcom/android/server/wm/ActivityRecord$State;Lcom/android/server/wm/ActivityRecord$State;)Z
    .registers 5

    .line 5836
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityRecord$State;

    if-eq p1, p0, :cond_d

    if-eq p2, p0, :cond_d

    if-eq p3, p0, :cond_d

    if-ne p4, p0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x0

    return p0

    :cond_d
    :goto_d
    const/4 p0, 0x1

    return p0
.end method

.method public isState(Lcom/android/server/wm/ActivityRecord$State;Lcom/android/server/wm/ActivityRecord$State;Lcom/android/server/wm/ActivityRecord$State;Lcom/android/server/wm/ActivityRecord$State;Lcom/android/server/wm/ActivityRecord$State;)Z
    .registers 6

    .line 5843
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityRecord$State;

    if-eq p1, p0, :cond_f

    if-eq p2, p0, :cond_f

    if-eq p3, p0, :cond_f

    if-eq p4, p0, :cond_f

    if-ne p5, p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    return p0

    :cond_f
    :goto_f
    const/4 p0, 0x1

    return p0
.end method

.method public isSyncFinished(Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;)Z
    .registers 5

    .line 9400
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    const/4 v1, 0x1

    if-eqz v0, :cond_1f

    iget-object v2, v0, Lcom/android/server/wm/Task;->mSharedStartingData:Lcom/android/server/wm/StartingData;

    if-eqz v2, :cond_1f

    .line 9401
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->topStartingWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 9402
    iget v0, v0, Lcom/android/server/wm/WindowContainer;->mSyncState:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1f

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mUnknownAppVisibilityController:Lcom/android/server/wm/UnknownAppVisibilityController;

    .line 9403
    invoke-virtual {v0}, Lcom/android/server/wm/UnknownAppVisibilityController;->allResolved()Z

    move-result v0

    if-eqz v0, :cond_1f

    return v1

    .line 9408
    :cond_1f
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mBackNavigationController:Lcom/android/server/wm/BackNavigationController;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/BackNavigationController;->isStartingSurfaceShown(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-eqz v0, :cond_2a

    return v1

    .line 9411
    :cond_2a
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->isSyncFinished(Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_32

    return v0

    .line 9412
    :cond_32
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz p1, :cond_3f

    iget-object p1, p1, Lcom/android/server/wm/DisplayContent;->mUnknownAppVisibilityController:Lcom/android/server/wm/UnknownAppVisibilityController;

    .line 9413
    invoke-virtual {p1, p0}, Lcom/android/server/wm/UnknownAppVisibilityController;->isVisibilityUnknown(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p1

    if-eqz p1, :cond_3f

    return v0

    .line 9416
    :cond_3f
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result p1

    if-nez p1, :cond_7d

    .line 9418
    iget-object p1, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-eqz p1, :cond_7c

    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getPausingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-ne p1, p0, :cond_7c

    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 9420
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->isSleeping()Z

    move-result p1

    if-nez p1, :cond_7c

    .line 9425
    invoke-static {}, Lcom/android/server/wm/ActivityTaskManagerService;->isPip2ExperimentEnabled()Z

    move-result p1

    if-eqz p1, :cond_5f

    const/4 p0, 0x0

    goto :goto_6a

    .line 9426
    :cond_5f
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    new-instance p1, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda5;

    invoke-direct {p1}, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda5;-><init>()V

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    :goto_6a
    if-eqz p0, :cond_7b

    .line 9430
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isVisible()Z

    move-result p0

    if-nez p0, :cond_73

    goto :goto_7b

    .line 9433
    :cond_73
    const-string p0, "ActivityTaskManager"

    const-string p1, "Assuming sync-finish while pausing due to visible target"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7c

    :cond_7b
    :goto_7b
    return v0

    :cond_7c
    :goto_7c
    return v1

    .line 9438
    :cond_7d
    iget p1, p0, Lcom/android/server/wm/ActivityRecord;->mPendingRelaunchCount:I

    if-lez p1, :cond_82

    return v0

    .line 9442
    :cond_82
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isAttached()Z

    move-result p1

    if-nez p1, :cond_89

    return v0

    .line 9444
    :cond_89
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v1

    :goto_90
    if-ltz p1, :cond_a4

    .line 9445
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isVisibleRequested()Z

    move-result v2

    if-eqz v2, :cond_a1

    return v1

    :cond_a1
    add-int/lit8 p1, p1, -0x1

    goto :goto_90

    :cond_a4
    return v0
.end method

.method public isTaskOverlay()Z
    .registers 1

    .line 9256
    iget-boolean p0, p0, Lcom/android/server/wm/ActivityRecord;->mTaskOverlay:Z

    return p0
.end method

.method public isTopRunningActivity()Z
    .registers 2

    .line 9222
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-ne v0, p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public final isTransferringSplashScreen()Z
    .registers 3

    .line 2580
    iget p0, p0, Lcom/android/server/wm/ActivityRecord;->mTransferringSplashScreenState:I

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p0, v0, :cond_b

    if-ne p0, v1, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    return p0

    :cond_b
    :goto_b
    return v1
.end method

.method public isTransitionForward()Z
    .registers 2

    .line 7222
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    if-eqz v0, :cond_8

    iget-boolean v0, v0, Lcom/android/server/wm/StartingData;->mIsTransitionForward:Z

    if-nez v0, :cond_10

    :cond_8
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 7223
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->isNextTransitionForward()Z

    move-result p0

    if-eqz p0, :cond_12

    :cond_10
    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method public isUid(I)Z
    .registers 2

    .line 9141
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne p0, p1, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public isUniversalResizeable()Z
    .registers 6

    .line 3142
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->isLargeScreen()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 3143
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getIgnoreOrientationRequest()Z

    move-result v0

    if-eqz v0, :cond_16

    move v0, v1

    goto :goto_17

    :cond_16
    move v0, v2

    .line 3144
    :goto_17
    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-static {v3, v4, v0, v1}, Lcom/android/server/wm/ActivityRecord;->canBeUniversalResizeable(Landroid/content/pm/ApplicationInfo;Lcom/android/server/wm/WindowManagerService;ZZ)Z

    move-result v0

    if-nez v0, :cond_24

    return v2

    .line 3148
    :cond_24
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatController;->getResizeOverrides()Lcom/android/server/wm/AppCompatResizeOverrides;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatResizeOverrides;->allowRestrictedResizability()Z

    move-result v0

    if-eqz v0, :cond_31

    return v2

    .line 3152
    :cond_31
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatController;->getAspectRatioOverrides()Lcom/android/server/wm/AppCompatAspectRatioOverrides;

    move-result-object p0

    .line 3153
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->userPreferenceCompatibleWithNonResizability()Z

    move-result p0

    return p0
.end method

.method public isUntrustedEmbeddingStateSharingAllowed()Z
    .registers 1

    .line 2969
    iget-boolean p0, p0, Lcom/android/server/wm/ActivityRecord;->mAllowUntrustedEmbeddingStateSharing:Z

    return p0
.end method

.method public isVisible()Z
    .registers 1

    .line 5366
    iget-boolean p0, p0, Lcom/android/server/wm/ActivityRecord;->mVisible:Z

    return p0
.end method

.method public final killInvisibleProcessOrPrepareForRestart()Z
    .registers 3

    .line 8930
    iget-boolean v0, p0, Lcom/android/server/wm/WindowContainer;->mVisibleRequested:Z

    if-eqz v0, :cond_31

    sget-object v0, Landroid/window/DesktopExperienceFlags;->ENABLE_AUTO_RESTART_ON_DISPLAY_MOVE:Landroid/window/DesktopExperienceFlags;

    invoke-virtual {v0}, Landroid/window/DesktopExperienceFlags;->isTrue()Z

    move-result v0

    if-nez v0, :cond_11

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mHaveState:Z

    if-eqz v0, :cond_11

    goto :goto_31

    .line 8948
    :cond_11
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 8949
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatController;->getAspectRatioOverrides()Lcom/android/server/wm/AppCompatAspectRatioOverrides;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->resetSystemFullscreenOverrideCache()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 8951
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/Task;->updateForceResizeOverridesIfNeeded(Lcom/android/server/wm/ActivityRecord;)V

    .line 8958
    :cond_22
    sget-object v0, Landroid/window/DesktopExperienceFlags;->ENABLE_RESTART_MENU_FOR_CONNECTED_DISPLAYS:Landroid/window/DesktopExperienceFlags;

    invoke-virtual {v0}, Landroid/window/DesktopExperienceFlags;->isTrue()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 8959
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->resumeAppSwitches()V

    :cond_2f
    const/4 p0, 0x0

    return p0

    .line 8934
    :cond_31
    :goto_31
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    new-instance v1, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda27;

    invoke-direct {v1, p0}, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda27;-><init>(Lcom/android/server/wm/ActivityRecord;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p0, 0x1

    return p0
.end method

.method public final synthetic lambda$addStartingWindow$3()Landroid/content/pm/ApplicationInfo;
    .registers 3

    .line 2322
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 2323
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v1, 0x80

    .line 2322
    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object p0

    if-eqz p0, :cond_15

    .line 2325
    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    return-object p0

    :cond_15
    const/4 p0, 0x0

    return-object p0
.end method

.method public final synthetic lambda$finishActivityResults$5(Lcom/android/server/wm/ActivityRecord;ILandroid/content/Intent;Landroid/os/IBinder;Lcom/android/server/uri/NeededUriGrants;)V
    .registers 17

    .line 3529
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v1

    .line 3530
    :try_start_8
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->resultWho:Ljava/lang/String;

    iget v5, p0, Lcom/android/server/wm/ActivityRecord;->requestCode:I

    iget-boolean v10, p0, Lcom/android/server/wm/ActivityRecord;->mForceSendResultForMediaProjection:Z

    move-object v2, p1

    move v6, p2

    move-object v7, p3

    move-object v8, p4

    move-object/from16 v9, p5

    invoke-virtual/range {v2 .. v10}, Lcom/android/server/wm/ActivityRecord;->sendResult(ILjava/lang/String;IILandroid/content/Intent;Landroid/os/IBinder;Lcom/android/server/uri/NeededUriGrants;Z)V

    .line 3533
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_20

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_20
    move-exception v0

    move-object p0, v0

    :try_start_22
    monitor-exit v1
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_20

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final synthetic lambda$getCompatScale$15()D
    .registers 3

    .line 7581
    # invokes: Lcom/android/server/wm/WindowToken;->getCompatScale()F
    invoke-static {p0}, Lcom/android/server/wm/ActivityRecord;->access$001(Lcom/android/server/wm/ActivityRecord;)F

    move-result p0

    float-to-double v0, p0

    return-wide v0
.end method

.method public final synthetic lambda$hasOverlayOverUntrustedModeEmbedded$12(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 4

    .line 5973
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v0, :cond_1e

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v1

    if-eq v0, v1, :cond_1e

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    .line 5974
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    .line 5973
    invoke-static {p1, p0}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result p0

    if-eqz p0, :cond_1e

    const/4 p0, 0x1

    return p0

    :cond_1e
    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic lambda$isFocusedActivityOnDisplay$19(Lcom/android/server/wm/TaskDisplayArea;)Z
    .registers 2

    .line 9231
    invoke-virtual {p1}, Lcom/android/server/wm/TaskDisplayArea;->getFocusedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-ne p1, p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic lambda$killInvisibleProcessOrPrepareForRestart$18()V
    .registers 4

    .line 8936
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 8937
    :try_start_8
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->hasProcess()Z

    move-result v1

    if-eqz v1, :cond_2e

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 8938
    invoke-virtual {v1}, Lcom/android/server/wm/WindowProcessController;->getReportedProcState()I

    move-result v1

    const/4 v2, 0x6

    if-gt v1, v2, :cond_18

    goto :goto_2e

    .line 8941
    :cond_18
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 8942
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_2c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 8943
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget-object v0, v1, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    iget v1, v1, Lcom/android/server/wm/WindowProcessController;->mUid:I

    const-string v2, "resetConfig"

    invoke-virtual {p0, v0, v1, v2}, Landroid/app/ActivityManagerInternal;->killProcess(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    :catchall_2c
    move-exception p0

    goto :goto_33

    .line 8939
    :cond_2e
    :goto_2e
    :try_start_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 8942
    :goto_33
    :try_start_33
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_2c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final synthetic lambda$makeFinishingLocked$7(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 3

    .line 4091
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->mLaunchCookie:Landroid/os/IBinder;

    if-nez v0, :cond_14

    iget-boolean v0, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v0, :cond_14

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/server/wm/ActivityRecord;->isUid(I)Z

    move-result p0

    if-eqz p0, :cond_14

    const/4 p0, 0x1

    return p0

    :cond_14
    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic lambda$new$0([F[F)V
    .registers 6

    .line 832
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 833
    :try_start_8
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mLastAppSaturationInfo:Lcom/android/server/wm/ActivityRecord$AppSaturationInfo;

    if-nez v1, :cond_17

    .line 834
    new-instance v1, Lcom/android/server/wm/ActivityRecord$AppSaturationInfo;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/server/wm/ActivityRecord$AppSaturationInfo;-><init>(Lcom/android/server/wm/ActivityRecord-IA;)V

    iput-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mLastAppSaturationInfo:Lcom/android/server/wm/ActivityRecord$AppSaturationInfo;

    goto :goto_17

    :catchall_15
    move-exception p0

    goto :goto_24

    .line 837
    :cond_17
    :goto_17
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mLastAppSaturationInfo:Lcom/android/server/wm/ActivityRecord$AppSaturationInfo;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/ActivityRecord$AppSaturationInfo;->setSaturation([F[F)V

    .line 838
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->updateColorTransform()V

    .line 839
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_15

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_24
    :try_start_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_15

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final synthetic lambda$new$1([F[F)V
    .registers 5

    .line 831
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    new-instance v1, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda26;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda26;-><init>(Lcom/android/server/wm/ActivityRecord;[F[F)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final synthetic lambda$new$2()Landroid/content/Context;
    .registers 6

    const/4 v0, 0x0

    .line 2067
    :try_start_1
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 2069
    invoke-static {v3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    const/4 v4, 0x4

    .line 2067
    invoke-virtual {v1, v2, v4, v3}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0

    .line 2070
    iget p0, p0, Lcom/android/server/wm/ActivityRecord;->theme:I

    invoke-virtual {v0, p0}, Landroid/content/Context;->setTheme(I)V
    :try_end_19
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_19} :catch_19

    :catch_19
    return-object v0
.end method

.method public final synthetic lambda$restartProcessIfVisible$17(Lcom/android/server/wm/Transition;Z)V
    .registers 5

    .line 8893
    sget-object p2, Landroid/window/DesktopExperienceFlags;->ENABLE_AUTO_RESTART_ON_DISPLAY_MOVE:Landroid/window/DesktopExperienceFlags;

    invoke-virtual {p2}, Landroid/window/DesktopExperienceFlags;->isTrue()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 8894
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->killInvisibleProcessOrPrepareForRestart()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 8895
    invoke-virtual {p1}, Lcom/android/server/wm/Transition;->abort()V

    return-void

    .line 8898
    :cond_12
    invoke-virtual {p2}, Landroid/window/DesktopExperienceFlags;->isTrue()Z

    move-result p2

    if-nez p2, :cond_22

    iget-object p2, p0, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityRecord$State;

    sget-object v0, Lcom/android/server/wm/ActivityRecord$State;->RESTARTING_PROCESS:Lcom/android/server/wm/ActivityRecord$State;

    if-eq p2, v0, :cond_22

    .line 8900
    invoke-virtual {p1}, Lcom/android/server/wm/Transition;->abort()V

    return-void

    .line 8903
    :cond_22
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result p2

    if-nez p2, :cond_2c

    .line 8904
    invoke-virtual {p1}, Lcom/android/server/wm/Transition;->abort()V

    return-void

    .line 8907
    :cond_2c
    iget-object p2, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p2, p2, Lcom/android/server/wm/ActivityTaskManagerService;->mChainTracker:Lcom/android/server/wm/ActionChain$Tracker;

    const-string v0, "restartProc"

    invoke-virtual {p2, v0, p1}, Lcom/android/server/wm/ActionChain$Tracker;->start(Ljava/lang/String;Lcom/android/server/wm/Transition;)Lcom/android/server/wm/ActionChain;

    move-result-object p2

    .line 8909
    invoke-virtual {p2, p0}, Lcom/android/server/wm/ActionChain;->collect(Lcom/android/server/wm/WindowContainer;)V

    const/high16 p2, 0x20000000

    .line 8911
    invoke-virtual {p1, p0, p2}, Lcom/android/server/wm/Transition;->setKnownConfigChanges(Lcom/android/server/wm/WindowContainer;I)V

    .line 8912
    iget-object p2, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    const/4 v1, 0x0

    invoke-virtual {p2, p1, v0, v1, v1}, Lcom/android/server/wm/TransitionController;->requestStartTransition(Lcom/android/server/wm/Transition;Lcom/android/server/wm/Task;Landroid/window/RemoteTransition;Landroid/window/TransitionRequestInfo$DisplayChange;)Lcom/android/server/wm/Transition;

    .line 8914
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->scheduleStopForRestartProcess()V

    .line 8915
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mChainTracker:Lcom/android/server/wm/ActionChain$Tracker;

    invoke-virtual {p0}, Lcom/android/server/wm/ActionChain$Tracker;->end()V

    return-void
.end method

.method public final synthetic lambda$showStartingWindow$13(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 2

    if-eq p1, p0, :cond_e

    .line 6965
    iget-object p0, p1, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    if-eqz p0, :cond_e

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->showToCurrentUser()Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic lambda$showStartingWindow$14(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 3

    .line 7130
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v0, :cond_8

    if-eq p1, p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic lambda$transferStartingWindowFromHiddenAboveTokenIfNeeded$8(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 5

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 4689
    :cond_4
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    if-eqz v1, :cond_3c

    .line 4690
    iget-object v2, v1, Lcom/android/server/wm/StartingData;->mAssociatedTask:Lcom/android/server/wm/Task;

    if-nez v2, :cond_3c

    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 4691
    invoke-virtual {v2, p1}, Lcom/android/server/wm/TransitionController;->isCollecting(Lcom/android/server/wm/WindowContainer;)Z

    move-result v2

    if-eqz v2, :cond_3c

    instance-of v1, v1, Lcom/android/server/wm/SnapshotStartingData;

    if-eqz v1, :cond_3c

    .line 4693
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 4694
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 4695
    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3c

    .line 4697
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/TransitionController;->inPlayingTransition(Lcom/android/server/wm/WindowContainer;)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 4698
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v1, p0}, Lcom/android/server/wm/TransitionController;->setNoAnimation(Lcom/android/server/wm/WindowContainer;)V

    .line 4699
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/TransitionController;->setNoAnimation(Lcom/android/server/wm/WindowContainer;)V

    .line 4701
    :cond_38
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->removeStartingWindow()V

    return v0

    .line 4705
    :cond_3c
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v1

    if-nez v1, :cond_49

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRecord;->transferStartingWindow(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    if-eqz p0, :cond_49

    return v0

    :cond_49
    const/4 p0, 0x0

    return p0
.end method

.method public final launchedFromSystemSurface()Z
    .registers 3

    .line 2212
    iget p0, p0, Lcom/android/server/wm/ActivityRecord;->mLaunchSourceType:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_e

    const/4 v1, 0x2

    if-eq p0, v1, :cond_e

    const/4 v1, 0x3

    if-ne p0, v1, :cond_c

    goto :goto_e

    :cond_c
    const/4 p0, 0x0

    return p0

    :cond_e
    :goto_e
    return v0
.end method

.method public layoutLetterboxIfNeeded(Lcom/android/server/wm/WindowState;)V
    .registers 2

    .line 1735
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatController;->getLetterboxPolicy()Lcom/android/server/wm/AppCompatLetterboxPolicy;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppCompatLetterboxPolicy;->start(Lcom/android/server/wm/WindowState;)V

    return-void
.end method

.method public final logAppCompatState()V
    .registers 2

    .line 7826
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->getActivityMetricsLogger()Lcom/android/server/wm/ActivityMetricsLogger;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/wm/ActivityMetricsLogger;->logAppCompatState(Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public logStartActivity(ILcom/android/server/wm/Task;)V
    .registers 12

    .line 4897
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 4898
    invoke-virtual {v0}, Landroid/net/Uri;->toSafeString()Ljava/lang/String;

    move-result-object v0

    :goto_c
    move-object v7, v0

    goto :goto_10

    :cond_e
    const/4 v0, 0x0

    goto :goto_c

    .line 4900
    :goto_10
    iget v0, p0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 4901
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget p2, p2, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    iget-object p2, p0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 4902
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    iget-object p2, p0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 4903
    invoke-virtual {p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v6

    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Intent;->getFlags()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array/range {v1 .. v8}, [Ljava/lang/Object;

    move-result-object p0

    .line 4900
    invoke-static {p1, p0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    return-void
.end method

.method public makeActiveIfNeeded(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 13

    .line 6070
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRecord;->shouldResumeActivity(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    .line 6074
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/wm/Task;->resumeTopActivityUncheckedLocked(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Z)Z

    move-result p0

    return p0

    .line 6076
    :cond_11
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRecord;->shouldPauseActivity(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p1

    const-string v0, "makeActiveIfNeeded"

    if-eqz p1, :cond_4a

    .line 6082
    sget-object p1, Lcom/android/server/wm/ActivityRecord$State;->PAUSING:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityRecord$State;Ljava/lang/String;)V

    .line 6083
    iget p1, p0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    const-string v3, "userLeaving=false"

    const-string v4, "make-active"

    invoke-static {p1, v0, v2, v3, v4}, Lcom/android/server/wm/EventLogTags;->writeWmPauseActivity(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6085
    new-instance v5, Landroid/app/servertransaction/PauseActivityItem;

    iget-object v6, p0, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    iget-boolean v7, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    const/4 v9, 0x0

    iget-boolean v10, p0, Lcom/android/server/wm/ActivityRecord;->mAutoEnteringPip:Z

    const/4 v8, 0x0

    invoke-direct/range {v5 .. v10}, Landroid/app/servertransaction/PauseActivityItem;-><init>(Landroid/os/IBinder;ZZZZ)V

    .line 6087
    iget-object p1, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityTaskManagerService;->getLifecycleManager()Lcom/android/server/wm/ClientLifecycleManager;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object p0

    invoke-virtual {p1, p0, v5}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransactionItem(Landroid/app/IApplicationThread;Landroid/app/servertransaction/ClientTransactionItem;)Z

    goto :goto_76

    .line 6088
    :cond_4a
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->shouldStartActivity()Z

    move-result p1

    if-eqz p1, :cond_76

    .line 6092
    sget-object p1, Lcom/android/server/wm/ActivityRecord$State;->STARTED:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityRecord$State;Ljava/lang/String;)V

    .line 6094
    new-instance p1, Landroid/app/servertransaction/StartActivityItem;

    iget-object v0, p0, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->takeSceneTransitionInfo()Landroid/app/ActivityOptions$SceneTransitionInfo;

    move-result-object v2

    invoke-direct {p1, v0, v2}, Landroid/app/servertransaction/StartActivityItem;-><init>(Landroid/os/IBinder;Landroid/app/ActivityOptions$SceneTransitionInfo;)V

    .line 6095
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLifecycleManager()Lcom/android/server/wm/ClientLifecycleManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransactionItem(Landroid/app/IApplicationThread;Landroid/app/servertransaction/ClientTransactionItem;)Z

    .line 6098
    iget-object p1, p0, Lcom/android/server/wm/ActivityRecord;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_76
    :goto_76
    return v1
.end method

.method public makeFinishingLocked()V
    .registers 11

    .line 4081
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v0, :cond_6

    goto/16 :goto_9d

    :cond_6
    const/4 v0, 0x1

    .line 4084
    iput-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    .line 4087
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mLaunchCookie:Landroid/os/IBinder;

    if-eqz v1, :cond_70

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityRecord$State;

    sget-object v2, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    if-eq v1, v2, :cond_70

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-eqz v1, :cond_70

    iget-boolean v2, v1, Lcom/android/server/wm/Task;->mInRemoveTask:Z

    if-nez v2, :cond_70

    .line 4088
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->isClearingToReuseTask()Z

    move-result v1

    if-nez v1, :cond_70

    .line 4089
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    new-instance v2, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda24;

    invoke-direct {v2, p0}, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda24;-><init>(Lcom/android/server/wm/ActivityRecord;)V

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p0, v3, v3}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;Lcom/android/server/wm/WindowContainer;ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-eqz v1, :cond_70

    .line 4094
    sget-object v2, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    aget-boolean v2, v2, v3

    if-eqz v2, :cond_69

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mLaunchCookie:Landroid/os/IBinder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    int-to-long v4, v4

    iget-object v6, v1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v7

    int-to-long v7, v7

    sget-object v9, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    filled-new-array {v2, v3, v4, v6, v5}, [Ljava/lang/Object;

    move-result-object v2

    const-wide v3, -0x65dcffae4065c998L    # -8.943649126631814E-183

    const/16 v5, 0x110

    invoke-static {v9, v3, v4, v5, v2}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 4098
    :cond_69
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mLaunchCookie:Landroid/os/IBinder;

    iput-object v2, v1, Lcom/android/server/wm/ActivityRecord;->mLaunchCookie:Landroid/os/IBinder;

    const/4 v1, 0x0

    .line 4099
    iput-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mLaunchCookie:Landroid/os/IBinder;

    .line 4103
    :cond_70
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v1

    if-eqz v1, :cond_8d

    .line 4105
    invoke-virtual {v1}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    if-eqz v2, :cond_8a

    .line 4106
    invoke-virtual {v2}, Lcom/android/server/wm/Task;->isClearingToReuseTask()Z

    move-result v2

    if-eqz v2, :cond_8a

    .line 4107
    invoke-virtual {v1}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    if-nez v2, :cond_8a

    .line 4108
    iput-boolean v0, v1, Lcom/android/server/wm/TaskFragment;->mClearedTaskForReuse:Z

    .line 4110
    :cond_8a
    invoke-virtual {v1}, Lcom/android/server/wm/TaskFragment;->sendTaskFragmentInfoChanged()V

    .line 4112
    :cond_8d
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mAppStopped:Z

    if-eqz v0, :cond_94

    .line 4113
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->abortAndClearOptionsAnimation()V

    .line 4115
    :cond_94
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v0, :cond_9d

    .line 4116
    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mUnknownAppVisibilityController:Lcom/android/server/wm/UnknownAppVisibilityController;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/UnknownAppVisibilityController;->appRemovedOrHidden(Lcom/android/server/wm/ActivityRecord;)V

    :cond_9d
    :goto_9d
    return-void
.end method

.method public makeInvisible()V
    .registers 6

    .line 6031
    const-string v0, "makeInvisible"

    iget-boolean v1, p0, Lcom/android/server/wm/WindowContainer;->mVisibleRequested:Z

    if-nez v1, :cond_7

    goto :goto_23

    :cond_7
    const/4 v1, 0x1

    .line 6041
    :try_start_8
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/ActivityRecord;->checkEnterPictureInPictureState(Ljava/lang/String;Z)Z

    move-result v2

    const/4 v3, 0x0

    .line 6043
    invoke-virtual {p0, v3}, Lcom/android/server/wm/ActivityRecord;->setVisibility(Z)V

    .line 6045
    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    if-eqz v3, :cond_24

    if-eq v3, v1, :cond_24

    const/4 v4, 0x2

    if-eq v3, v4, :cond_24

    const/4 v4, 0x3

    if-eq v3, v4, :cond_24

    const/4 v4, 0x4

    if-eq v3, v4, :cond_24

    :goto_23
    return-void

    .line 6051
    :cond_24
    invoke-virtual {p0, v1, v2, v0}, Lcom/android/server/wm/ActivityRecord;->addToStopping(ZZLjava/lang/String;)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_27} :catch_28

    return-void

    :catch_28
    move-exception v0

    .line 6060
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception thrown making hidden: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public makeVisibleIfNeeded(Lcom/android/server/wm/ActivityRecord;Z)V
    .registers 5

    .line 6001
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityRecord$State;

    sget-object v1, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    if-ne v0, v1, :cond_a

    iget-boolean v0, p0, Lcom/android/server/wm/WindowContainer;->mVisibleRequested:Z

    if-nez v0, :cond_c

    :cond_a
    if-ne p0, p1, :cond_d

    :cond_c
    return-void

    .line 6010
    :cond_d
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 6012
    :try_start_11
    iget-object v1, v0, Lcom/android/server/wm/Task;->mTranslucentActivityWaiting:Lcom/android/server/wm/ActivityRecord;

    if-eqz v1, :cond_22

    .line 6013
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->returningOptions:Landroid/app/ActivityOptions;

    invoke-virtual {p0, v1}, Lcom/android/server/wm/ActivityRecord;->updateOptionsLocked(Landroid/app/ActivityOptions;)V

    .line 6014
    iget-object v0, v0, Lcom/android/server/wm/Task;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_22

    :catch_20
    move-exception p1

    goto :goto_38

    :cond_22
    :goto_22
    const/4 v0, 0x1

    .line 6016
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->setVisibility(Z)V

    .line 6017
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowProcessController;->postPendingUiCleanMsg(Z)V

    if-eqz p2, :cond_30

    .line 6019
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRecord;->makeActiveIfNeeded(Lcom/android/server/wm/ActivityRecord;)Z

    .line 6022
    :cond_30
    iget-object p1, p0, Lcom/android/server/wm/ActivityRecord;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_37} :catch_20

    goto :goto_54

    .line 6025
    :goto_38
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Exception thrown making visible: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "ActivityTaskManager"

    invoke-static {v0, p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6027
    :goto_54
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->handleAlreadyVisible()V

    return-void
.end method

.method public matchParentBounds()Z
    .registers 4

    .line 7566
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getResolvedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 7567
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_c

    return v2

    .line 7573
    :cond_c
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object p0

    if-eqz p0, :cond_1f

    .line 7574
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1d

    goto :goto_1f

    :cond_1d
    const/4 p0, 0x0

    return p0

    :cond_1f
    :goto_1f
    return v2
.end method

.method public moveFocusableActivityToTop(Ljava/lang/String;)Z
    .registers 9

    .line 3420
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isFocusable()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_21

    .line 3421
    sget-object p1, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_FOCUS_enabled:[Z

    aget-boolean p1, p1, v2

    if-eqz p1, :cond_20

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_FOCUS:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v2, -0x7d3ea8930f1bc258L    # -2.12129502900972E-295

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, v2, v3, v1, p0}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_20
    return v1

    .line 3426
    :cond_21
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-nez v0, :cond_48

    .line 3428
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "moveFocusableActivityToTop: invalid root task: activity="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " task="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ActivityTaskManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 3437
    :cond_48
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    .line 3438
    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v4}, Lcom/android/server/wm/RootWindowContainer;->getTopFocusedDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    if-eqz v4, :cond_5f

    .line 3439
    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v4}, Lcom/android/server/wm/RootWindowContainer;->getTopFocusedDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v4

    goto :goto_60

    :cond_5f
    const/4 v4, -0x1

    :goto_60
    if-eqz v3, :cond_c6

    .line 3441
    iget-object v5, v3, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    iget-object v6, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-ne v5, v6, :cond_c6

    iget-object v5, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 3442
    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v5

    if-ne v4, v5, :cond_c6

    .line 3443
    iget-object v4, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    new-instance v5, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda23;

    invoke-direct {v5}, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda23;-><init>()V

    invoke-virtual {v4, v5, v2}, Lcom/android/server/wm/DisplayArea;->getTask(Ljava/util/function/Predicate;Z)Lcom/android/server/wm/Task;

    move-result-object v4

    .line 3446
    iget-object v5, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-ne v5, v4, :cond_c6

    if-ne v3, p0, :cond_9a

    .line 3448
    sget-object p1, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_FOCUS_enabled:[Z

    aget-boolean p1, p1, v2

    if-eqz p1, :cond_be

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_FOCUS:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v3, 0x1dcf887f97f389aL

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, v3, v4, v1, p1}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    goto :goto_be

    .line 3451
    :cond_9a
    sget-object p1, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_FOCUS_enabled:[Z

    aget-boolean p1, p1, v2

    if-eqz p1, :cond_b2

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_FOCUS:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v3, -0xeb0fb648a69c7d2L    # -6.311903457092669E237

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, v3, v4, v1, p1}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 3453
    :cond_b2
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p1, p0}, Lcom/android/server/wm/DisplayContent;->setFocusedApp(Lcom/android/server/wm/ActivityRecord;)Z

    .line 3454
    iget-object p1, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1, v1, v2}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    .line 3457
    :cond_be
    :goto_be
    sget-object p1, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result p0

    xor-int/2addr p0, v2

    return p0

    .line 3461
    :cond_c6
    sget-object v3, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_FOCUS_enabled:[Z

    aget-boolean v3, v3, v2

    if-eqz v3, :cond_de

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_FOCUS:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v5, 0xa250eb5f02138a4L

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v4, v5, v6, v1, v3}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 3463
    :cond_de
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wm/Task;->moveToFront(Ljava/lang/String;Lcom/android/server/wm/Task;)V

    .line 3465
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityRecord$State;

    sget-object v1, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    if-ne v0, v1, :cond_f6

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-ne v0, p0, :cond_f6

    .line 3466
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->setLastResumedActivityUncheckLocked(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V

    :cond_f6
    return v2
.end method

.method public final notifyActivityRefresherAboutConfigurationChange(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V
    .registers 4

    const/4 v0, 0x0

    .line 8650
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->shouldBeResumed(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-nez v0, :cond_8

    return-void

    .line 8654
    :cond_8
    invoke-static {p0, p1, p2}, Lcom/android/server/wm/AppCompatCameraPolicy;->onActivityConfigurationChanging(Lcom/android/server/wm/ActivityRecord;Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    return-void
.end method

.method public final notifyActivityStartedToContentCaptureService()V
    .registers 7

    .line 5792
    const-class v0, Lcom/android/server/contentcapture/ContentCaptureManagerInternal;

    .line 5793
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/contentcapture/ContentCaptureManagerInternal;

    if-eqz v0, :cond_31

    .line 5797
    iget v1, p0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    new-instance v3, Landroid/app/assist/ActivityId;

    .line 5799
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v4

    if-eqz v4, :cond_1d

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v4

    iget v4, v4, Lcom/android/server/wm/Task;->mTaskId:I

    goto :goto_1e

    :cond_1d
    const/4 v4, -0x1

    :goto_1e
    iget-object v5, p0, Lcom/android/server/wm/ActivityRecord;->shareableActivityToken:Landroid/os/Binder;

    invoke-direct {v3, v4, v5}, Landroid/app/assist/ActivityId;-><init>(ILandroid/os/IBinder;)V

    const/16 v4, 0x2710

    .line 5797
    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/android/server/contentcapture/ContentCaptureManagerInternal;->notifyActivityEvent(ILandroid/content/ComponentName;ILandroid/app/assist/ActivityId;)V

    .line 5802
    iget v1, p0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->shareableActivityToken:Landroid/os/Binder;

    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/server/contentcapture/ContentCaptureManagerInternal;->sendActivityStartAssistData(ILandroid/os/IBinder;Landroid/content/Intent;)Z

    :cond_31
    return-void
.end method

.method public notifyAppResumed()V
    .registers 8

    .line 5879
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-nez v0, :cond_1f

    .line 5880
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attempted to notify resumed of non-existing app token: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "WindowManager"

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 5883
    :cond_1f
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mAppStopped:Z

    .line 5884
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_ADD_REMOVE_enabled:[Z

    const/4 v2, 0x0

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_3f

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_ADD_REMOVE:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    filled-new-array {v4, v1}, [Ljava/lang/Object;

    move-result-object v1

    const-wide v4, 0xcd9f3665a413b47L

    const/4 v6, 0x3

    invoke-static {v3, v4, v5, v6, v1}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 5886
    :cond_3f
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->mAppStopped:Z

    .line 5888
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStartController;->isInExecution()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_51

    .line 5889
    invoke-virtual {p0, v2}, Lcom/android/server/wm/ActivityRecord;->setCurrentLaunchCanTurnScreenOn(Z)V

    :cond_51
    if-nez v0, :cond_56

    .line 5893
    invoke-virtual {p0, v2}, Lcom/android/server/wm/ActivityRecord;->destroySurfaces(Z)V

    :cond_56
    return-void
.end method

.method public notifyUnknownVisibilityLaunchedForKeyguardTransition()V
    .registers 2

    .line 5905
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mNoDisplay:Z

    if-nez v0, :cond_12

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isKeyguardLocked()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_12

    .line 5909
    :cond_b
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mUnknownAppVisibilityController:Lcom/android/server/wm/UnknownAppVisibilityController;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/UnknownAppVisibilityController;->notifyLaunched(Lcom/android/server/wm/ActivityRecord;)V

    :cond_12
    :goto_12
    return-void
.end method

.method public occludesParent()Z
    .registers 2

    const/4 v0, 0x0

    .line 3051
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->occludesParent(Z)Z

    move-result p0

    return p0
.end method

.method public occludesParent(Z)Z
    .registers 3

    const/4 v0, 0x0

    if-nez p1, :cond_8

    .line 3056
    iget-boolean p1, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz p1, :cond_8

    return v0

    .line 3059
    :cond_8
    iget-boolean p1, p0, Lcom/android/server/wm/ActivityRecord;->mOccludesParent:Z

    if-nez p1, :cond_14

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->showWallpaper()Z

    move-result p0

    if-eqz p0, :cond_13

    goto :goto_14

    :cond_13
    return v0

    :cond_14
    :goto_14
    const/4 p0, 0x1

    return p0
.end method

.method public onCancelFixedRotationTransform(I)V
    .registers 3

    .line 7356
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getLastOrientationSource()Lcom/android/server/wm/WindowContainer;

    move-result-object p1

    if-eq p0, p1, :cond_9

    goto :goto_31

    .line 7360
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getRequestedConfigurationOrientation()I

    move-result p1

    if-eqz p1, :cond_1a

    .line 7361
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 7362
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-eq p1, v0, :cond_1a

    goto :goto_31

    .line 7368
    :cond_1a
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p1, p1, Lcom/android/server/wm/DisplayContent;->mPinnedTaskController:Lcom/android/server/wm/PinnedTaskController;

    invoke-virtual {p1}, Lcom/android/server/wm/PinnedTaskController;->onCancelFixedRotationTransform()V

    .line 7371
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->ensureActivityConfiguration()Z

    .line 7372
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {p1, p0}, Lcom/android/server/wm/TransitionController;->isCollecting(Lcom/android/server/wm/WindowContainer;)Z

    move-result p1

    if-eqz p1, :cond_31

    .line 7374
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->resetSurfaceControlTransforms()V

    :cond_31
    :goto_31
    return-void
.end method

.method public onChildVisibleRequestedChanged(Lcom/android/server/wm/WindowContainer;)Z
    .registers 2

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 9

    .line 8264
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 8265
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 8267
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideWindowingMode()I

    move-result v0

    if-nez v0, :cond_21

    .line 8268
    iget-object v0, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    goto :goto_25

    .line 8269
    :cond_21
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideWindowingMode()I

    move-result v0

    .line 8270
    :goto_25
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v1

    if-eq v1, v0, :cond_3c

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mWaitForEnteringPinnedMode:Z

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 8276
    invoke-virtual {v0, p0}, Lcom/android/server/wm/TransitionController;->inFinishingTransition(Lcom/android/server/wm/WindowContainer;)Z

    move-result v0

    if-nez v0, :cond_3c

    .line 8277
    :cond_37
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/TransitionController;->collect(Lcom/android/server/wm/WindowContainer;)V

    .line 8280
    :cond_3c
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getAppCompatDisplayInsets()Lcom/android/server/wm/AppCompatDisplayInsets;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eqz v0, :cond_ab

    .line 8281
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 8285
    iget-object v3, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 8286
    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v3

    if-eq v3, v2, :cond_52

    const/4 v3, 0x1

    goto :goto_53

    :cond_52
    move v3, v1

    .line 8287
    :goto_53
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getRequestedConfigurationOrientation()I

    move-result v4

    if-eqz v4, :cond_96

    .line 8289
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    if-eq v4, v5, :cond_96

    .line 8292
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v5, :cond_96

    iget-object v5, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 8293
    invoke-virtual {v5}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v5

    .line 8294
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v6

    if-eq v5, v6, :cond_96

    .line 8295
    iget-object p1, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 8296
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v1

    .line 8295
    invoke-virtual {p1, v1}, Landroid/app/WindowConfiguration;->setRotation(I)V

    .line 8297
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void

    :cond_96
    if-eqz v3, :cond_ab

    if-nez v4, :cond_ab

    .line 8299
    iget-object v3, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 8300
    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v3

    if-eq v3, v2, :cond_ab

    .line 8302
    iget-object p1, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p1, v2}, Landroid/app/WindowConfiguration;->setRotation(I)V

    .line 8303
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void

    .line 8308
    :cond_ab
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result v0

    .line 8309
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 8310
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    move-result v4

    if-eqz v0, :cond_106

    .line 8311
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v5

    if-eqz v5, :cond_106

    if-eqz v3, :cond_106

    .line 8318
    :try_start_bf
    iget-object v5, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowProcessController;->pauseConfigurationDispatch()V

    .line 8319
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 8320
    iget-boolean p1, p0, Lcom/android/server/wm/WindowContainer;->mVisibleRequested:Z

    if-eqz p1, :cond_e2

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    move-result p1

    if-nez p1, :cond_e2

    .line 8321
    invoke-virtual {v3, p0}, Lcom/android/server/wm/DisplayContent;->rotationForActivityInDifferentOrientation(Lcom/android/server/wm/ActivityRecord;)I

    move-result p1

    if-eq p1, v2, :cond_e2

    .line 8323
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowProcessController;->resumeConfigurationDispatch()Z

    .line 8324
    invoke-virtual {v3, p0, p1}, Lcom/android/server/wm/DisplayContent;->setFixedRotationLaunchingApp(Lcom/android/server/wm/ActivityRecord;I)V
    :try_end_df
    .catchall {:try_start_bf .. :try_end_df} :catchall_e0

    goto :goto_e2

    :catchall_e0
    move-exception p1

    goto :goto_f4

    .line 8328
    :cond_e2
    :goto_e2
    iget-object p1, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowProcessController;->resumeConfigurationDispatch()Z

    move-result p1

    if-eqz p1, :cond_109

    .line 8329
    iget-object p1, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/server/wm/WindowProcessController;->dispatchConfiguration(Landroid/content/res/Configuration;)V

    goto :goto_109

    .line 8328
    :goto_f4
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->resumeConfigurationDispatch()Z

    move-result v0

    if-eqz v0, :cond_105

    .line 8329
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowProcessController;->dispatchConfiguration(Landroid/content/res/Configuration;)V

    .line 8331
    :cond_105
    throw p1

    .line 8333
    :cond_106
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_109
    :goto_109
    if-eqz v4, :cond_14e

    .line 8336
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    move-result p1

    if-eq v4, p1, :cond_14e

    .line 8337
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t change activity type once set: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " activityType="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8338
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    move-result v2

    invoke-static {v2}, Landroid/app/WindowConfiguration;->activityTypeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", was "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8339
    invoke-static {v4}, Landroid/app/WindowConfiguration;->activityTypeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 8340
    sget-boolean v2, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-nez v2, :cond_148

    .line 8343
    const-string v2, "ActivityTaskManager"

    invoke-static {v2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14e

    .line 8341
    :cond_148
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_14e
    :goto_14e
    if-nez v0, :cond_165

    .line 8349
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result p1

    if-eqz p1, :cond_165

    iget-object p1, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-eqz p1, :cond_165

    .line 8350
    iput-boolean v1, p0, Lcom/android/server/wm/ActivityRecord;->mWaitForEnteringPinnedMode:Z

    .line 8351
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->scheduleUpdatePictureInPictureModeIfNeeded(Lcom/android/server/wm/Task;Landroid/graphics/Rect;)V

    :cond_165
    if-nez v3, :cond_168

    goto :goto_19d

    .line 8357
    :cond_168
    iget-boolean p1, p0, Lcom/android/server/wm/WindowContainer;->mVisibleRequested:Z

    if-eqz p1, :cond_170

    .line 8359
    invoke-virtual {v3, p0}, Lcom/android/server/wm/DisplayContent;->handleActivitySizeCompatModeIfNeeded(Lcom/android/server/wm/ActivityRecord;)V

    return-void

    .line 8360
    :cond_170
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getAppCompatDisplayInsets()Lcom/android/server/wm/AppCompatDisplayInsets;

    move-result-object p1

    if-eqz p1, :cond_19d

    iget-boolean p1, p0, Lcom/android/server/wm/ActivityRecord;->visibleIgnoringKeyguard:Z

    if-nez p1, :cond_19d

    iget-object p1, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eqz p1, :cond_184

    .line 8361
    invoke-virtual {p1}, Lcom/android/server/wm/WindowProcessController;->hasVisibleActivities()Z

    move-result p1

    if-nez p1, :cond_19d

    .line 8367
    :cond_184
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getCurrentOverrideConfigurationChanges()I

    move-result p1

    .line 8370
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->hasResizeChange(I)Z

    move-result v0

    if-eqz v0, :cond_196

    const v0, 0x20000480

    and-int v1, p1, v0

    if-eq v1, v0, :cond_196

    goto :goto_19a

    :cond_196
    and-int/lit16 p1, p1, 0x1000

    if-eqz p1, :cond_19d

    .line 8377
    :goto_19a
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->restartProcessIfVisible()V

    :cond_19d
    :goto_19d
    return-void
.end method

.method public onCopySplashScreenFinish(Landroid/window/SplashScreenView$SplashScreenViewParcelable;)V
    .registers 6

    .line 2599
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->removeTransferSplashScreenTimeout()V

    if-eqz p1, :cond_1c

    .line 2600
    iget v0, p0, Lcom/android/server/wm/ActivityRecord;->mTransferringSplashScreenState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1c

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mStartingWindow:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_1c

    iget-boolean v1, v0, Lcom/android/server/wm/WindowState;->mRemoved:Z

    if-nez v1, :cond_1c

    iget-boolean v1, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v1, :cond_17

    goto :goto_1c

    .line 2604
    :cond_17
    invoke-static {v0}, Lcom/android/server/wm/TaskOrganizerController;->applyStartingWindowAnimation(Lcom/android/server/wm/WindowState;)Landroid/view/SurfaceControl;

    move-result-object v0

    goto :goto_1d

    :cond_1c
    :goto_1c
    const/4 v0, 0x0

    :goto_1d
    const/4 v1, 0x3

    if-nez v0, :cond_2b

    if-eqz p1, :cond_25

    .line 2609
    invoke-virtual {p1}, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->clearIfNeeded()V

    .line 2611
    :cond_25
    iput v1, p0, Lcom/android/server/wm/ActivityRecord;->mTransferringSplashScreenState:I

    .line 2612
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->removeStartingWindow()V

    return-void

    :cond_2b
    const/4 v2, 0x2

    .line 2615
    iput v2, p0, Lcom/android/server/wm/ActivityRecord;->mTransferringSplashScreenState:I

    .line 2616
    new-instance v2, Landroid/app/servertransaction/TransferSplashScreenViewStateItem;

    iget-object v3, p0, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-direct {v2, v3, p1, v0}, Landroid/app/servertransaction/TransferSplashScreenViewStateItem;-><init>(Landroid/os/IBinder;Landroid/window/SplashScreenView$SplashScreenViewParcelable;Landroid/view/SurfaceControl;)V

    .line 2618
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLifecycleManager()Lcom/android/server/wm/ClientLifecycleManager;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 2619
    invoke-virtual {v3}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v3

    .line 2618
    invoke-virtual {v0, v3, v2}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransactionItem(Landroid/app/IApplicationThread;Landroid/app/servertransaction/ClientTransactionItem;)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 2621
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->scheduleTransferSplashScreenTimeout()V

    return-void

    .line 2623
    :cond_4b
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mStartingWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->cancelAnimation()V

    .line 2624
    invoke-virtual {p1}, Landroid/window/SplashScreenView$SplashScreenViewParcelable;->clearIfNeeded()V

    .line 2625
    iput v1, p0, Lcom/android/server/wm/ActivityRecord;->mTransferringSplashScreenState:I

    return-void
.end method

.method public onDisplayChanged(Lcom/android/server/wm/DisplayContent;)V
    .registers 5

    .line 1709
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 1710
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowToken;->onDisplayChanged(Lcom/android/server/wm/DisplayContent;)V

    .line 1711
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-ne v0, v1, :cond_a

    goto :goto_f

    .line 1715
    :cond_a
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->onRunningActivityChanged()V

    if-nez v0, :cond_10

    :goto_f
    return-void

    .line 1720
    :cond_10
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->onRunningActivityChanged()V

    .line 1721
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/server/wm/DisplayPolicy;->removeRelaunchingApp(Lcom/android/server/wm/ActivityRecord;)V

    .line 1723
    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    if-ne v1, p0, :cond_2b

    const/4 v1, 0x0

    .line 1724
    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayContent;->setFocusedApp(Lcom/android/server/wm/ActivityRecord;)Z

    .line 1725
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-ne v1, p0, :cond_2b

    .line 1726
    invoke-virtual {p1, p0}, Lcom/android/server/wm/DisplayContent;->setFocusedApp(Lcom/android/server/wm/ActivityRecord;)Z

    .line 1730
    :cond_2b
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    invoke-virtual {v1}, Lcom/android/server/wm/AppCompatController;->getLetterboxPolicy()Lcom/android/server/wm/AppCompatLetterboxPolicy;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/wm/AppCompatLetterboxPolicy;->onMovedToDisplay(I)V

    .line 1731
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatController;->getDisplayCompatModePolicy()Lcom/android/server/wm/AppCompatDisplayCompatModePolicy;

    move-result-object p0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/AppCompatDisplayCompatModePolicy;->onMovedToDisplay(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/DisplayContent;)V

    return-void
.end method

.method public onFirstWindowDrawn(Lcom/android/server/wm/WindowState;)V
    .registers 7

    const/4 v0, 0x1

    .line 6509
    iput-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->firstWindowDrawn:Z

    .line 6511
    iput-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mSplashScreenStyleSolidColor:Z

    .line 6513
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mBackNavigationController:Lcom/android/server/wm/BackNavigationController;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/BackNavigationController;->removePredictiveSurfaceIfNeeded(Lcom/android/server/wm/ActivityRecord;)V

    .line 6514
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mStartingWindow:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_2e

    .line 6515
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_STARTING_WINDOW_enabled:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_2b

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_STARTING_WINDOW:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v3, -0x60a9b6713b00c96dL    # -1.014566262701883E-157

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v3, v4, v1, v0}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 6520
    :cond_2b
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->cancelAnimation()V

    .line 6526
    :cond_2e
    iget-object p1, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    iget-object v0, p1, Lcom/android/server/wm/Task;->mSharedStartingData:Lcom/android/server/wm/StartingData;

    if-eqz v0, :cond_35

    goto :goto_36

    :cond_35
    const/4 p1, 0x0

    :goto_36
    if-nez p1, :cond_3c

    .line 6528
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->removeStartingWindow()V

    goto :goto_45

    .line 6530
    :cond_3c
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getSharedStartingWindowOwnerIfTaskDrawn()Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-eqz p1, :cond_45

    .line 6532
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->removeStartingWindow()V

    .line 6535
    :cond_45
    :goto_45
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->updateReportedVisibilityLocked()V

    return-void
.end method

.method public onParentChanged(Lcom/android/server/wm/ConfigurationContainer;Lcom/android/server/wm/ConfigurationContainer;)V
    .registers 8

    .line 1506
    check-cast p2, Lcom/android/server/wm/TaskFragment;

    .line 1507
    check-cast p1, Lcom/android/server/wm/TaskFragment;

    const/4 v0, 0x0

    if-eqz p2, :cond_c

    .line 1508
    invoke-virtual {p2}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    goto :goto_d

    :cond_c
    move-object v1, v0

    :goto_d
    if-eqz p1, :cond_14

    .line 1509
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    goto :goto_15

    :cond_14
    move-object v2, v0

    .line 1510
    :goto_15
    iput-object v2, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 1512
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/ActivityRecord;->shouldStartChangeTransition(Lcom/android/server/wm/TaskFragment;Lcom/android/server/wm/TaskFragment;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 1513
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v3, p0}, Lcom/android/server/wm/TransitionController;->collectVisibleChange(Lcom/android/server/wm/WindowContainer;)V

    .line 1516
    :cond_22
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->onParentChanged(Lcom/android/server/wm/ConfigurationContainer;Lcom/android/server/wm/ConfigurationContainer;)V

    .line 1518
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isPersistable()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_3a

    if-eqz v1, :cond_33

    .line 1520
    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3, v1, v4}, Lcom/android/server/wm/ActivityTaskManagerService;->notifyTaskPersisterLocked(Lcom/android/server/wm/Task;Z)V

    :cond_33
    if-eqz v2, :cond_3a

    .line 1523
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1, v2, v4}, Lcom/android/server/wm/ActivityTaskManagerService;->notifyTaskPersisterLocked(Lcom/android/server/wm/Task;Z)V

    :cond_3a
    const/4 v1, 0x1

    if-nez p2, :cond_55

    if-eqz p1, :cond_55

    .line 1529
    iget-object v3, v2, Lcom/android/server/wm/Task;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v3, :cond_44

    move v4, v1

    :cond_44
    iput-boolean v4, p0, Lcom/android/server/wm/ActivityRecord;->mVoiceInteraction:Z

    .line 1531
    invoke-virtual {v2}, Lcom/android/server/wm/Task;->setInitialBoundsIfNeeded()V

    .line 1535
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->mLastReportedMultiWindowMode:Z

    .line 1536
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->mLastReportedPictureInPictureMode:Z

    .line 1539
    :cond_55
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v2

    .line 1540
    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->mLastParentBeforePip:Lcom/android/server/wm/Task;

    if-ne v3, v4, :cond_6d

    if-eqz v3, :cond_6d

    .line 1542
    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    iget-object v3, v3, Lcom/android/server/wm/WindowOrganizerController;->mTaskFragmentOrganizerController:Lcom/android/server/wm/TaskFragmentOrganizerController;

    .line 1543
    invoke-virtual {v3, p0}, Lcom/android/server/wm/TaskFragmentOrganizerController;->onActivityReparentedToTask(Lcom/android/server/wm/ActivityRecord;)V

    .line 1545
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->clearLastParentBeforePip()V

    .line 1548
    :cond_6d
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->updateColorTransform()V

    if-eqz p2, :cond_77

    .line 1551
    invoke-virtual {p2, p0}, Lcom/android/server/wm/TaskFragment;->cleanUpActivityReferences(Lcom/android/server/wm/ActivityRecord;)V

    .line 1553
    iput-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mRequestedLaunchingTaskFragmentToken:Landroid/os/IBinder;

    :cond_77
    if-eqz p1, :cond_ca

    .line 1557
    sget-object p2, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {p0, p2}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result p2

    if-eqz p2, :cond_86

    .line 1558
    const-string p2, "onParentChanged"

    invoke-virtual {p1, p0, p2}, Lcom/android/server/wm/TaskFragment;->setResumedActivity(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V

    .line 1560
    :cond_86
    iget-object p1, p0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    invoke-virtual {p1}, Lcom/android/server/wm/AppCompatController;->getTransparentPolicy()Lcom/android/server/wm/TransparentPolicy;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/TransparentPolicy;->start()V

    .line 1561
    iget-object p1, p0, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityRecord$State;

    sget-object p2, Lcom/android/server/wm/ActivityRecord$State;->INITIALIZING:Lcom/android/server/wm/ActivityRecord$State;

    if-ne p1, p2, :cond_ca

    iget-object p1, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget p1, p1, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRecord;->isRestrictedFixedOrientation(I)Z

    move-result p1

    if-eqz p1, :cond_ca

    .line 1562
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Ignoring manifest-declared fixed orientation "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget p2, p2, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    .line 1563
    invoke-static {p2}, Landroid/content/pm/ActivityInfo;->screenOrientationToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " of "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " since target sdk 36"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1562
    const-string p2, "ActivityTaskManager"

    invoke-static {p2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ca
    if-eqz v2, :cond_d9

    .line 1568
    invoke-virtual {v2}, Lcom/android/server/wm/TaskFragment;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-ne p1, p0, :cond_d9

    .line 1570
    iget-boolean p1, p0, Lcom/android/server/wm/ActivityRecord;->firstWindowDrawn:Z

    if-eqz p1, :cond_d9

    .line 1571
    invoke-virtual {v2, v1}, Lcom/android/server/wm/Task;->setHasBeenVisible(Z)V

    .line 1576
    :cond_d9
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->updateUntrustedEmbeddingInputProtection()V

    return-void
.end method

.method public onRemovedFromDisplay()V
    .registers 10

    .line 4374
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mRemovingFromDisplay:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    .line 4377
    iput-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mRemovingFromDisplay:Z

    .line 4379
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_APP_TRANSITIONS_enabled:[Z

    const/4 v2, 0x0

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_21

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_APP_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v4, -0x1991eb36f1b7cb81L    # -2.5563623042206153E185

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v3, v4, v5, v2, v1}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 4381
    :cond_21
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mUnknownAppVisibilityController:Lcom/android/server/wm/UnknownAppVisibilityController;

    invoke-virtual {v1, p0}, Lcom/android/server/wm/UnknownAppVisibilityController;->appRemovedOrHidden(Lcom/android/server/wm/ActivityRecord;)V

    .line 4382
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mSnapshotController:Lcom/android/server/wm/SnapshotController;

    invoke-virtual {v1, p0}, Lcom/android/server/wm/SnapshotController;->onAppRemoved(Lcom/android/server/wm/ActivityRecord;)V

    .line 4383
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mStartingProcessActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4385
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->getActivityMetricsLogger()Lcom/android/server/wm/ActivityMetricsLogger;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/server/wm/ActivityMetricsLogger;->notifyActivityRemoved(Lcom/android/server/wm/ActivityRecord;)V

    .line 4386
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4388
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    invoke-virtual {v1}, Lcom/android/server/wm/AppCompatController;->getLetterboxPolicy()Lcom/android/server/wm/AppCompatLetterboxPolicy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/AppCompatLetterboxPolicy;->stop()V

    .line 4389
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    invoke-virtual {v1}, Lcom/android/server/wm/AppCompatController;->getTransparentPolicy()Lcom/android/server/wm/TransparentPolicy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/TransparentPolicy;->stop()V

    const/16 v1, 0x10

    const/4 v3, 0x4

    .line 4393
    invoke-virtual {p0, v3, v1}, Lcom/android/server/wm/WindowContainer;->isAnimating(II)Z

    move-result v1

    if-nez v1, :cond_6e

    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 4394
    invoke-virtual {v1}, Lcom/android/server/wm/TransitionController;->inTransition()Z

    move-result v1

    if-eqz v1, :cond_6c

    goto :goto_6e

    :cond_6c
    move v1, v2

    goto :goto_6f

    :cond_6e
    :goto_6e
    move v1, v0

    :goto_6f
    if-nez v1, :cond_75

    .line 4397
    invoke-virtual {p0, v2, v0}, Lcom/android/server/wm/ActivityRecord;->commitVisibility(ZZ)V

    goto :goto_78

    .line 4399
    :cond_75
    invoke-virtual {p0, v2}, Lcom/android/server/wm/ActivityRecord;->setVisibleRequested(Z)Z

    .line 4403
    :goto_78
    iget-object v4, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v4, p0}, Lcom/android/server/wm/TransitionController;->collect(Lcom/android/server/wm/WindowContainer;)V

    .line 4405
    sget-object v4, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_APP_TRANSITIONS_enabled:[Z

    aget-boolean v4, v4, v2

    if-eqz v4, :cond_ab

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getAnimation()Lcom/android/server/wm/AnimationAdapter;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->inTransition()Z

    move-result v6

    sget-object v7, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_APP_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    filled-new-array {v4, v8, v5, v6}, [Ljava/lang/Object;

    move-result-object v4

    const-wide v5, 0x4cff131c375e3d79L    # 7.989605786594591E62

    const/16 v8, 0xcc

    invoke-static {v7, v5, v6, v8, v4}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 4409
    :cond_ab
    sget-object v4, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_ADD_REMOVE_enabled:[Z

    aget-boolean v4, v4, v2

    if-eqz v4, :cond_d1

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_ADD_REMOVE:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    filled-new-array {v4, v7, v5}, [Ljava/lang/Object;

    move-result-object v4

    const-wide v7, -0x85940474870ce4bL

    const/16 v5, 0xc

    invoke-static {v6, v7, v8, v5, v4}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 4412
    :cond_d1
    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    if-eqz v4, :cond_d8

    .line 4413
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->removeStartingWindow()V

    :cond_d8
    if-eqz v1, :cond_fb

    .line 4416
    invoke-virtual {p0}, Lcom/android/server/wm/WindowToken;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_fb

    .line 4418
    sget-object v4, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_ADD_REMOVE_enabled:[Z

    aget-boolean v4, v4, v2

    if-eqz v4, :cond_f8

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_ADD_REMOVE:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v6, 0x3045197f7e2035ebL    # 3.644394323113405E-76

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v5, v6, v7, v2, v4}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 4420
    :cond_f8
    iput-boolean v0, p0, Lcom/android/server/wm/WindowToken;->mIsExiting:Z

    goto :goto_101

    .line 4424
    :cond_fb
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->cancelAnimation()V

    .line 4425
    invoke-virtual {p0}, Lcom/android/server/wm/WindowToken;->removeIfPossible()V

    .line 4428
    :goto_101
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    .line 4429
    iget-object v5, v4, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    if-ne v5, p0, :cond_133

    .line 4430
    sget-object v5, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_FOCUS_LIGHT_enabled:[Z

    aget-boolean v5, v5, v2

    if-eqz v5, :cond_12a

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v6

    int-to-long v6, v6

    sget-object v8, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_FOCUS_LIGHT:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    filled-new-array {v5, v6}, [Ljava/lang/Object;

    move-result-object v5

    const-wide v6, -0x6448ad8c59f9cb69L    # -3.683407431929128E-175

    invoke-static {v8, v6, v7, v3, v5}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_12a
    const/4 v3, 0x0

    .line 4433
    invoke-virtual {v4, v3}, Lcom/android/server/wm/DisplayContent;->setFocusedApp(Lcom/android/server/wm/ActivityRecord;)Z

    .line 4434
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3, v2, v0}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    :cond_133
    if-nez v1, :cond_138

    .line 4438
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->updateReportedVisibilityLocked()V

    .line 4440
    :cond_138
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->onRunningActivityChanged()V

    .line 4441
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->mRemovingFromDisplay:Z

    return-void
.end method

.method public final onSplashScreenAttachComplete()V
    .registers 3

    .line 2630
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->removeTransferSplashScreenTimeout()V

    .line 2632
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mStartingWindow:Lcom/android/server/wm/WindowState;

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    .line 2633
    invoke-virtual {v0, v1, v1}, Lcom/android/server/wm/WindowState;->hide(ZZ)Z

    :cond_b
    const/4 v0, 0x3

    .line 2636
    iput v0, p0, Lcom/android/server/wm/ActivityRecord;->mTransferringSplashScreenState:I

    .line 2637
    invoke-virtual {p0, v1}, Lcom/android/server/wm/ActivityRecord;->removeStartingWindowAnimation(Z)V

    return-void
.end method

.method public onStartingWindowDrawn()V
    .registers 4

    .line 6553
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    .line 6554
    iput-boolean v1, p0, Lcom/android/server/wm/ActivityRecord;->mSplashScreenStyleSolidColor:Z

    .line 6555
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->setTaskHasBeenVisible()V

    .line 6557
    :cond_a
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    if-eqz v0, :cond_43

    iget-boolean v2, v0, Lcom/android/server/wm/StartingData;->mIsDisplayed:Z

    if-eqz v2, :cond_13

    goto :goto_43

    .line 6560
    :cond_13
    iput-boolean v1, v0, Lcom/android/server/wm/StartingData;->mIsDisplayed:Z

    .line 6565
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-nez v0, :cond_43

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v0, :cond_43

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mLaunchedFromBubble:Z

    if-nez v0, :cond_43

    iget-boolean v0, p0, Lcom/android/server/wm/WindowContainer;->mVisibleRequested:Z

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 6566
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->isNextTransitionForward()Z

    move-result v0

    if-eqz v0, :cond_43

    .line 6569
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    iput-boolean v1, v0, Lcom/android/server/wm/StartingData;->mIsTransitionForward:Z

    .line 6571
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getLastOrientationSource()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-eq p0, v0, :cond_3e

    .line 6572
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->updateOrientation()Z

    .line 6574
    :cond_3e
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->executeAppTransition()V

    :cond_43
    :goto_43
    return-void
.end method

.method public onSyncTransactionCommitted(Landroid/view/SurfaceControl$Transaction;)V
    .registers 4

    .line 2754
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->onSyncTransactionCommitted(Landroid/view/SurfaceControl$Transaction;)V

    .line 2755
    iget-object p1, p0, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    if-nez p1, :cond_8

    goto :goto_19

    .line 2759
    :cond_8
    iget v0, p1, Lcom/android/server/wm/StartingData;->mRemoveAfterTransaction:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    .line 2760
    iget-boolean p1, p1, Lcom/android/server/wm/StartingData;->mPrepareRemoveAnimation:Z

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRecord;->removeStartingWindowAnimation(Z)V

    return-void

    :cond_13
    const/4 p1, 0x2

    if-ne v0, p1, :cond_19

    .line 2762
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->removeStartingWindow()V

    :cond_19
    :goto_19
    return-void
.end method

.method public final onWindowsDrawn()V
    .registers 11

    .line 6580
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 6581
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->getActivityMetricsLogger()Lcom/android/server/wm/ActivityMetricsLogger;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/wm/ActivityMetricsLogger;->notifyWindowsDrawn(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    const/4 v2, 0x1

    goto :goto_10

    :cond_f
    move v2, v1

    :goto_10
    if-eqz v2, :cond_15

    .line 6583
    iget v3, v0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->windowsDrawnDelayMs:I

    goto :goto_16

    :cond_15
    const/4 v3, -0x1

    :goto_16
    if-eqz v2, :cond_1c

    .line 6585
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->getLaunchState()I

    move-result v1

    :cond_1c
    move v9, v1

    if-nez v2, :cond_2c

    .line 6589
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-ne p0, v0, :cond_2a

    goto :goto_2c

    :cond_2a
    move-object v6, p0

    goto :goto_34

    .line 6590
    :cond_2c
    :goto_2c
    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    const/4 v5, 0x0

    int-to-long v7, v3

    move-object v6, p0

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/wm/ActivityTaskSupervisor;->reportActivityLaunched(ZLcom/android/server/wm/ActivityRecord;JI)V

    .line 6593
    :goto_34
    iget-object p0, v6, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-eqz p0, :cond_3b

    .line 6594
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->setTaskHasBeenVisible()V

    :cond_3b
    const/4 p0, 0x0

    .line 6598
    iput-object p0, v6, Lcom/android/server/wm/ActivityRecord;->mLaunchRootTask:Landroid/window/WindowContainerToken;

    return-void
.end method

.method public onWindowsGone()V
    .registers 2

    const/4 v0, 0x0

    .line 6623
    iput-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->nowVisible:Z

    return-void
.end method

.method public onWindowsVisible()V
    .registers 3

    .line 6604
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->stopWaitingForActivityVisible(Lcom/android/server/wm/ActivityRecord;)V

    .line 6606
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->nowVisible:Z

    if-nez v0, :cond_1c

    const/4 v0, 0x1

    .line 6607
    iput-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->nowVisible:Z

    .line 6608
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wm/ActivityRecord;->lastVisibleTime:J

    .line 6609
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->scheduleAppGcsLocked()V

    .line 6615
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->scheduleProcessStoppingAndFinishingActivitiesIfNeeded()V

    :cond_1c
    return-void
.end method

.method public final onlyDeskInUiModeChanged(Landroid/content/res/Configuration;)Z
    .registers 6

    .line 8722
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    .line 8724
    invoke-static {p0}, Lcom/android/server/wm/ActivityRecord;->isInDeskUiMode(Landroid/content/res/Configuration;)Z

    move-result v0

    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInDeskUiMode(Landroid/content/res/Configuration;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_12

    move v0, v3

    goto :goto_13

    :cond_12
    move v0, v2

    .line 8728
    :goto_13
    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p0, p0, -0x10

    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p1, p1, -0x10

    if-eq p0, p1, :cond_1f

    move p0, v3

    goto :goto_20

    :cond_1f
    move p0, v2

    :goto_20
    if-eqz v0, :cond_25

    if-nez p0, :cond_25

    return v3

    :cond_25
    return v2
.end method

.method public final onlyVrUiModeChanged(ILandroid/content/res/Configuration;)Z
    .registers 4

    .line 8712
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    const/16 v0, 0x200

    if-ne p1, v0, :cond_14

    .line 8713
    invoke-static {p0}, Lcom/android/server/wm/AppCompatUtils;->isInVrUiMode(Landroid/content/res/Configuration;)Z

    move-result p0

    .line 8714
    invoke-static {p2}, Lcom/android/server/wm/AppCompatUtils;->isInVrUiMode(Landroid/content/res/Configuration;)Z

    move-result p1

    if-eq p0, p1, :cond_14

    const/4 p0, 0x1

    return p0

    :cond_14
    const/4 p0, 0x0

    return p0
.end method

.method public final orientationRespectedWithInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .registers 15

    .line 8026
    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    .line 8027
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v1, 0x1

    if-nez v0, :cond_9

    return v1

    .line 8030
    :cond_9
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mResolveConfigHint:Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;

    iget-boolean v0, v0, Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;->mUseOverrideInsetsForConfig:Z

    if-nez v0, :cond_10

    return v1

    .line 8035
    :cond_10
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getRequestedConfigurationOrientation()I

    move-result v0

    if-nez v0, :cond_17

    return v1

    .line 8040
    :cond_17
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    const/4 v4, 0x2

    if-lt v2, v3, :cond_24

    move v2, v1

    goto :goto_25

    :cond_24
    move v2, v4

    .line 8043
    :goto_25
    invoke-virtual {p0}, Lcom/android/server/wm/WindowToken;->isFixedRotationTransforming()Z

    move-result v3

    if-eqz v3, :cond_31

    .line 8044
    invoke-virtual {p0}, Lcom/android/server/wm/WindowToken;->getFixedRotationTransformDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v3

    :goto_2f
    move-object v9, v3

    goto :goto_38

    .line 8045
    :cond_31
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v3

    goto :goto_2f

    .line 8046
    :goto_38
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v5

    .line 8047
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mResolveConfigHint:Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;

    iget-boolean v10, p0, Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;->mUseOverrideInsetsForConfig:Z

    move-object v8, p1

    move-object v7, p2

    move-object v6, p3

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/wm/TaskFragment;->calculateInsetFrames(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/DisplayInfo;Z)V

    .line 8050
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result p0

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result p1

    if-lt p0, p1, :cond_51

    move v4, v1

    :cond_51
    if-eq v2, v4, :cond_58

    if-ne v4, v0, :cond_56

    goto :goto_58

    :cond_56
    const/4 p0, 0x0

    return p0

    :cond_58
    :goto_58
    return v1
.end method

.method public overrideCustomTransition(ZIII)V
    .registers 6

    .line 9559
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRecord;->getCustomAnimation(Z)Lcom/android/server/wm/ActivityRecord$CustomAppTransition;

    move-result-object v0

    if-nez v0, :cond_12

    .line 9561
    new-instance v0, Lcom/android/server/wm/ActivityRecord$CustomAppTransition;

    invoke-direct {v0}, Lcom/android/server/wm/ActivityRecord$CustomAppTransition;-><init>()V

    if-eqz p1, :cond_10

    .line 9563
    iput-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mCustomOpenTransition:Lcom/android/server/wm/ActivityRecord$CustomAppTransition;

    goto :goto_12

    .line 9565
    :cond_10
    iput-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mCustomCloseTransition:Lcom/android/server/wm/ActivityRecord$CustomAppTransition;

    .line 9569
    :cond_12
    :goto_12
    iput p2, v0, Lcom/android/server/wm/ActivityRecord$CustomAppTransition;->mEnterAnim:I

    .line 9570
    iput p3, v0, Lcom/android/server/wm/ActivityRecord$CustomAppTransition;->mExitAnim:I

    .line 9571
    iput p4, v0, Lcom/android/server/wm/ActivityRecord$CustomAppTransition;->mBackgroundColor:I

    return-void
.end method

.method public pauseConfigurationDispatch()V
    .registers 5

    .line 8401
    iget v0, p0, Lcom/android/server/wm/ActivityRecord;->mPauseConfigurationDispatchCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/wm/ActivityRecord;->mPauseConfigurationDispatchCount:I

    if-ne v0, v1, :cond_21

    .line 8403
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_MIN_enabled:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_21

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS_MIN:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v2, 0x244067a8f0f9318aL    # 4.514047213319695E-134

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, v2, v3, v1, p0}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_21
    return-void
.end method

.method public pauseKeyDispatchingLocked()V
    .registers 2

    .line 5332
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->keysPaused:Z

    if-nez v0, :cond_18

    const/4 v0, 0x1

    .line 5333
    iput-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->keysPaused:Z

    .line 5335
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 5336
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/wm/InputMonitor;->pauseDispatchingLw(Lcom/android/server/wm/WindowToken;)V

    :cond_18
    return-void
.end method

.method public postWindowRemoveStartingWindowCleanup(Lcom/android/server/wm/WindowState;)V
    .registers 4

    .line 7161
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mStartingWindow:Lcom/android/server/wm/WindowState;

    const/4 v1, 0x0

    if-ne v0, p1, :cond_13

    .line 7164
    iget-object p1, p0, Lcom/android/server/wm/ActivityRecord;->mStartingSurface:Lcom/android/server/wm/StartingSurfaceController$StartingSurface;

    if-eqz p1, :cond_c

    .line 7166
    invoke-virtual {p1, v1, v1}, Lcom/android/server/wm/StartingSurfaceController$StartingSurface;->remove(ZZ)V

    :cond_c
    const/4 p1, 0x0

    .line 7168
    iput-object p1, p0, Lcom/android/server/wm/ActivityRecord;->mStartingWindow:Lcom/android/server/wm/WindowState;

    .line 7169
    iput-object p1, p0, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    .line 7170
    iput-object p1, p0, Lcom/android/server/wm/ActivityRecord;->mStartingSurface:Lcom/android/server/wm/StartingSurfaceController$StartingSurface;

    .line 7172
    :cond_13
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_29

    iget-boolean p1, p0, Lcom/android/server/wm/ActivityRecord;->mVisibleSetFromTransferredStartingWindow:Z

    if-eqz p1, :cond_29

    .line 7176
    invoke-virtual {p0, v1}, Lcom/android/server/wm/ActivityRecord;->setVisible(Z)V

    .line 7177
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowAnimator;->addSurfaceVisibilityUpdate(Lcom/android/server/wm/WindowContainer;)V

    :cond_29
    return-void
.end method

.method public final prepareActivityHideTransitionAnimation()V
    .registers 3

    .line 3767
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v1, 0x0

    .line 3768
    invoke-virtual {p0, v1}, Lcom/android/server/wm/ActivityRecord;->setVisibility(Z)V

    .line 3769
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->executeAppTransition()V

    return-void
.end method

.method public final prepareActivityHideTransitionAnimationIfOvarlay()V
    .registers 2

    .line 3761
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mTaskOverlay:Z

    if-eqz v0, :cond_7

    .line 3762
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->prepareActivityHideTransitionAnimation()V

    :cond_7
    return-void
.end method

.method public prepareSurfaces()V
    .registers 3

    .line 7240
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mVisible:Z

    if-eqz v0, :cond_11

    iget v0, p0, Lcom/android/server/wm/WindowContainer;->mSyncState:I

    if-nez v0, :cond_11

    .line 7241
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mActivityRecordInputSink:Lcom/android/server/wm/ActivityRecordInputSink;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityRecordInputSink;->applyChangesToSurfaceIfChanged(Landroid/view/SurfaceControl$Transaction;)V

    .line 7243
    :cond_11
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->prepareSurfaces()V

    return-void
.end method

.method public providesMaxBounds()Z
    .registers 4

    .line 8224
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v0

    const/16 v1, 0x3e8

    const/4 v2, 0x0

    if-ne v0, v1, :cond_a

    return v2

    .line 8228
    :cond_a
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->sandboxDisplayApis()Z

    move-result v0

    if-nez v0, :cond_15

    return v2

    .line 8232
    :cond_15
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    sget-object v1, Lcom/android/server/wm/ActivityRecord;->sConstrainDisplayApisConfig:Landroid/content/pm/ConstrainDisplayApisConfig;

    invoke-virtual {v0, v1}, Landroid/content/pm/ActivityInfo;->neverSandboxDisplayApis(Landroid/content/pm/ConstrainDisplayApisConfig;)Z

    move-result v0

    if-eqz v0, :cond_20

    return v2

    .line 8236
    :cond_20
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    sget-object v1, Lcom/android/server/wm/ActivityRecord;->sConstrainDisplayApisConfig:Landroid/content/pm/ConstrainDisplayApisConfig;

    invoke-virtual {v0, v1}, Landroid/content/pm/ActivityInfo;->alwaysSandboxDisplayApis(Landroid/content/pm/ConstrainDisplayApisConfig;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2c

    return v1

    .line 8243
    :cond_2c
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getAppCompatDisplayInsets()Lcom/android/server/wm/AppCompatDisplayInsets;

    move-result-object v0

    if-nez v0, :cond_3a

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->shouldCreateAppCompatDisplayInsets()Z

    move-result p0

    if-eqz p0, :cond_39

    goto :goto_3a

    :cond_39
    return v2

    :cond_3a
    :goto_3a
    return v1
.end method

.method public providesOrientation()Z
    .registers 2

    .line 3028
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mStyleFillsParent:Z

    if-nez v0, :cond_b

    iget-boolean p0, p0, Lcom/android/server/wm/ActivityRecord;->mOccludesParent:Z

    if-eqz p0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    return p0

    :cond_b
    :goto_b
    const/4 p0, 0x1

    return p0
.end method

.method public recomputeConfiguration()V
    .registers 3

    .line 8002
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatController;->getTransparentPolicy()Lcom/android/server/wm/TransparentPolicy;

    move-result-object v0

    new-instance v1, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda30;

    invoke-direct {v1}, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda30;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/TransparentPolicy;->applyOnOpaqueActivityBelow(Ljava/util/function/Consumer;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 8004
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_18
    return-void
.end method

.method public registerCaptureObserver(Landroid/app/IScreenCaptureObserver;)V
    .registers 3

    .line 6936
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mCaptureCallbacks:Landroid/os/RemoteCallbackList;

    if-nez v0, :cond_b

    .line 6937
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mCaptureCallbacks:Landroid/os/RemoteCallbackList;

    .line 6939
    :cond_b
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mCaptureCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    return-void
.end method

.method public registerRemoteAnimations(Landroid/view/RemoteAnimationDefinition;)V
    .registers 3

    .line 7256
    iput-object p1, p0, Lcom/android/server/wm/ActivityRecord;->mRemoteAnimationDefinition:Landroid/view/RemoteAnimationDefinition;

    if-eqz p1, :cond_c

    .line 7258
    new-instance v0, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0}, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/wm/ActivityRecord;)V

    invoke-virtual {p1, v0}, Landroid/view/RemoteAnimationDefinition;->linkToDeath(Landroid/os/IBinder$DeathRecipient;)V

    :cond_c
    return-void
.end method

.method public relaunchActivityLocked(ZI)V
    .registers 19

    move-object/from16 v0, p0

    .line 8782
    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mSuppressResizeConfigChanges:Z

    if-eqz v1, :cond_b

    if-eqz p1, :cond_b

    return-void

    .line 8790
    :cond_b
    invoke-static {v0}, Lcom/android/server/wm/AppCompatCameraPolicy;->onActivityRelaunching(Lcom/android/server/wm/ActivityRecord;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_39

    .line 8796
    iget-object v3, v0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getImeInputTarget()Lcom/android/server/wm/InputTarget;

    move-result-object v3

    if-eqz v3, :cond_36

    .line 8797
    invoke-interface {v3}, Lcom/android/server/wm/InputTarget;->getWindowState()Lcom/android/server/wm/WindowState;

    move-result-object v4

    if-eqz v4, :cond_36

    .line 8798
    invoke-interface {v3}, Lcom/android/server/wm/InputTarget;->getWindowState()Lcom/android/server/wm/WindowState;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-ne v3, v0, :cond_36

    iget-object v3, v0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-eqz v3, :cond_36

    .line 8800
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_36

    move v3, v1

    goto :goto_37

    :cond_36
    move v3, v2

    :goto_37
    iput-boolean v3, v0, Lcom/android/server/wm/ActivityRecord;->mLastImeShown:Z

    .line 8803
    :cond_39
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_47

    .line 8804
    iget-object v5, v3, Lcom/android/server/wm/Task;->mTranslucentActivityWaiting:Lcom/android/server/wm/ActivityRecord;

    if-ne v5, v0, :cond_47

    .line 8805
    invoke-virtual {v3, v4}, Lcom/android/server/wm/Task;->checkTranslucentActivityWaiting(Lcom/android/server/wm/ActivityRecord;)V

    .line 8807
    :cond_47
    sget-object v3, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {v0, v3}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v3

    if-nez v3, :cond_58

    invoke-virtual {v0, v4}, Lcom/android/server/wm/ActivityRecord;->shouldBeResumed(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v3

    if-eqz v3, :cond_56

    goto :goto_58

    :cond_56
    move v3, v2

    goto :goto_59

    :cond_58
    :goto_58
    move v3, v1

    :goto_59
    if-eqz v3, :cond_62

    .line 8811
    iget-object v5, v0, Lcom/android/server/wm/ActivityRecord;->results:Ljava/util/ArrayList;

    .line 8812
    iget-object v6, v0, Lcom/android/server/wm/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    move-object v9, v5

    move-object v10, v6

    goto :goto_64

    :cond_62
    move-object v9, v4

    move-object v10, v9

    :goto_64
    if-eqz v3, :cond_7a

    .line 8819
    iget v5, v0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    iget-object v7, v0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    iget v7, v7, Lcom/android/server/wm/Task;->mTaskId:I

    iget-object v8, v0, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    .line 8820
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    .line 8819
    invoke-static {v5, v6, v7, v8, v11}, Lcom/android/server/wm/EventLogTags;->writeWmRelaunchResumeActivity(IIILjava/lang/String;Ljava/lang/String;)V

    goto :goto_8d

    .line 8822
    :cond_7a
    iget v5, v0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    iget-object v7, v0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    iget v7, v7, Lcom/android/server/wm/Task;->mTaskId:I

    iget-object v8, v0, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    .line 8823
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    .line 8822
    invoke-static {v5, v6, v7, v8, v11}, Lcom/android/server/wm/EventLogTags;->writeWmRelaunchActivity(IIILjava/lang/String;Ljava/lang/String;)V

    .line 8826
    :goto_8d
    sget-object v5, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_STATES_enabled:[Z

    const/4 v6, 0x2

    aget-boolean v5, v5, v6

    if-eqz v5, :cond_b6

    if-eqz v3, :cond_99

    const-string v5, "RESUMED"

    goto :goto_9b

    :cond_99
    const-string v5, "PAUSED"

    :goto_9b
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x6

    invoke-static {v8}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    sget-object v11, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_STATES:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v12, 0x4902470505436aeL

    filled-new-array {v5, v7, v8}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v11, v12, v13, v2, v5}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 8828
    :cond_b6
    new-instance v7, Landroid/app/servertransaction/ActivityRelaunchItem;

    iget-object v8, v0, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    new-instance v12, Landroid/util/MergedConfiguration;

    .line 8830
    invoke-direct {v0}, Lcom/android/server/wm/ActivityRecord;->getProcessGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    .line 8831
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getMergedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v11

    invoke-direct {v12, v5, v11}, Landroid/util/MergedConfiguration;-><init>(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    .line 8832
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getActivityWindowInfo()Landroid/window/ActivityWindowInfo;

    move-result-object v14

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result v15

    move/from16 v13, p1

    move/from16 v11, p2

    invoke-direct/range {v7 .. v15}, Landroid/app/servertransaction/ActivityRelaunchItem;-><init>(Landroid/os/IBinder;Ljava/util/List;Ljava/util/List;ILandroid/util/MergedConfiguration;ZLandroid/window/ActivityWindowInfo;I)V

    if-eqz v3, :cond_e8

    .line 8835
    new-instance v5, Landroid/app/servertransaction/ResumeActivityItem;

    iget-object v8, v0, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isTransitionForward()Z

    move-result v9

    .line 8836
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->shouldSendCompatFakeFocus()Z

    move-result v10

    invoke-direct {v5, v8, v9, v10}, Landroid/app/servertransaction/ResumeActivityItem;-><init>(Landroid/os/IBinder;ZZ)V

    goto :goto_ef

    .line 8838
    :cond_e8
    new-instance v5, Landroid/app/servertransaction/PauseActivityItem;

    iget-object v8, v0, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-direct {v5, v8}, Landroid/app/servertransaction/PauseActivityItem;-><init>(Landroid/os/IBinder;)V

    .line 8840
    :goto_ef
    iget-object v8, v0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v8}, Lcom/android/server/wm/ActivityTaskManagerService;->getLifecycleManager()Lcom/android/server/wm/ClientLifecycleManager;

    move-result-object v8

    iget-object v9, v0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 8841
    invoke-virtual {v9}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v9

    new-array v6, v6, [Landroid/app/servertransaction/ClientTransactionItem;

    aput-object v7, v6, v2

    aput-object v5, v6, v1

    .line 8840
    invoke-virtual {v8, v9, v6}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransactionItems(Landroid/app/IApplicationThread;[Landroid/app/servertransaction/ClientTransactionItem;)Z

    move-result v5

    if-eqz v5, :cond_10a

    .line 8843
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->startRelaunching()V

    :cond_10a
    if-eqz v3, :cond_132

    .line 8850
    sget-object v3, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_STATES_enabled:[Z

    aget-boolean v1, v3, v1

    if-eqz v1, :cond_124

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_STATES:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v5, -0x3778a4d26bfdcda1L    # -2.54326106948074E41

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v3, v5, v6, v2, v1}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 8851
    :cond_124
    iput-object v4, v0, Lcom/android/server/wm/ActivityRecord;->results:Ljava/util/ArrayList;

    .line 8852
    iput-object v4, v0, Lcom/android/server/wm/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    .line 8853
    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getAppWarningsLocked()Lcom/android/server/wm/AppWarnings;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/wm/AppWarnings;->onResumeActivity(Lcom/android/server/wm/ActivityRecord;)V

    goto :goto_13c

    .line 8855
    :cond_132
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->removePauseTimeout()V

    .line 8856
    sget-object v1, Lcom/android/server/wm/ActivityRecord$State;->PAUSED:Lcom/android/server/wm/ActivityRecord$State;

    const-string v2, "relaunchActivityLocked"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityRecord$State;Ljava/lang/String;)V

    .line 8860
    :goto_13c
    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public bridge synthetic removeChild(Lcom/android/server/wm/WindowContainer;)V
    .registers 2

    .line 376
    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRecord;->removeChild(Lcom/android/server/wm/WindowState;)V

    return-void
.end method

.method public removeChild(Lcom/android/server/wm/WindowState;)V
    .registers 3

    .line 4499
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 4503
    :cond_9
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->removeChild(Lcom/android/server/wm/WindowContainer;)V

    .line 4504
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->checkKeyguardFlagsChanged()V

    .line 4505
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRecord;->updateLetterboxSurfaceIfNeeded(Lcom/android/server/wm/WindowState;)V

    return-void
.end method

.method public final removeDestroyTimeout()V
    .registers 2

    .line 6344
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mDestroyTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public removeFromHistory(Ljava/lang/String;)V
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 4050
    invoke-virtual {p0, v1, v0, v0}, Lcom/android/server/wm/ActivityRecord;->finishActivityResults(ILandroid/content/Intent;Lcom/android/server/uri/NeededUriGrants;)V

    .line 4052
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->makeFinishingLocked()V

    .line 4054
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_ADD_REMOVE_enabled:[Z

    const/4 v2, 0x2

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_2e

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x5

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_ADD_REMOVE:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v4, 0x7aa1b7cc22363407L    # 5.145879686594025E282

    filled-new-array {v0, p1, v2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v3, v4, v5, v1, p1}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 4057
    :cond_2e
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->takeFromHistory()V

    .line 4058
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->removeTimeouts()V

    .line 4059
    sget-object p1, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_STATES_enabled:[Z

    aget-boolean p1, p1, v1

    if-eqz p1, :cond_4c

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_STATES:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v2, 0x73da80cc3a8b344dL    # 1.1859690636769237E250

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, v2, v3, v1, p1}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 4061
    :cond_4c
    sget-object p1, Lcom/android/server/wm/ActivityRecord$State;->DESTROYED:Lcom/android/server/wm/ActivityRecord$State;

    const-string v0, "removeFromHistory"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityRecord$State;Ljava/lang/String;)V

    .line 4063
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->detachFromProcess()V

    .line 4065
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->resumeKeyDispatchingLocked()V

    .line 4066
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, p0, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Lcom/android/server/wm/DisplayContent;->removeAppToken(Landroid/os/IBinder;)V

    .line 4068
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->cleanUpActivityServices()V

    .line 4069
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->removeUriPermissionsLocked()V

    return-void
.end method

.method public removeImmediately()V
    .registers 3

    .line 4357
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityRecord$State;

    sget-object v1, Lcom/android/server/wm/ActivityRecord$State;->DESTROYED:Lcom/android/server/wm/ActivityRecord$State;

    if-eq v0, v1, :cond_2f

    .line 4358
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Force remove immediately "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4361
    const-string v0, "removeImmediately"

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->destroyImmediately(Ljava/lang/String;)Z

    .line 4364
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->destroyed(Ljava/lang/String;)V

    goto :goto_32

    .line 4366
    :cond_2f
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->onRemovedFromDisplay()V

    .line 4368
    :goto_32
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mActivityRecordInputSink:Lcom/android/server/wm/ActivityRecordInputSink;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecordInputSink;->releaseSurfaceControl()V

    .line 4370
    invoke-super {p0}, Lcom/android/server/wm/WindowToken;->removeImmediately()V

    return-void
.end method

.method public final removePauseTimeout()V
    .registers 2

    .line 6340
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mPauseTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public removeResultsLocked(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;I)V
    .registers 7

    .line 4926
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->results:Ljava/util/ArrayList;

    if-eqz v0, :cond_34

    .line 4927
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_a
    if-ltz v0, :cond_34

    .line 4928
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->results:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityResult;

    .line 4929
    iget-object v2, v1, Lcom/android/server/wm/ActivityResult;->mFrom:Lcom/android/server/wm/ActivityRecord;

    if-eq v2, p1, :cond_19

    goto :goto_31

    .line 4930
    :cond_19
    iget-object v2, v1, Landroid/app/ResultInfo;->mResultWho:Ljava/lang/String;

    if-nez v2, :cond_20

    if-eqz p2, :cond_27

    goto :goto_31

    .line 4933
    :cond_20
    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    goto :goto_31

    .line 4935
    :cond_27
    iget v1, v1, Landroid/app/ResultInfo;->mRequestCode:I

    if-eq v1, p3, :cond_2c

    goto :goto_31

    .line 4937
    :cond_2c
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->results:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :goto_31
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    :cond_34
    return-void
.end method

.method public removeStartingWindow()V
    .registers 5

    .line 2730
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatController;->getLetterboxPolicy()Lcom/android/server/wm/AppCompatLetterboxPolicy;

    move-result-object v0

    .line 2732
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatLetterboxPolicy;->isEligibleForLetterboxEducation()Z

    move-result v1

    .line 2734
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    if-eqz v2, :cond_14

    iget v2, v2, Lcom/android/server/wm/StartingData;->mRemoveAfterTransaction:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_14

    goto :goto_2e

    .line 2739
    :cond_14
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->transferSplashScreenIfNeeded()Z

    move-result v2

    if-eqz v2, :cond_1b

    goto :goto_2e

    :cond_1b
    const/4 v2, 0x1

    .line 2742
    invoke-virtual {p0, v2}, Lcom/android/server/wm/ActivityRecord;->removeStartingWindowAnimation(Z)V

    .line 2744
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p0

    if-eqz p0, :cond_2e

    .line 2746
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatLetterboxPolicy;->isEligibleForLetterboxEducation()Z

    move-result v0

    if-eq v1, v0, :cond_2e

    .line 2748
    invoke-virtual {p0, v2}, Lcom/android/server/wm/Task;->dispatchTaskInfoChangedIfNeeded(Z)V

    :cond_2e
    :goto_2e
    return-void
.end method

.method public removeStartingWindowAnimation(Z)V
    .registers 11

    const/4 v0, 0x0

    .line 2767
    iput v0, p0, Lcom/android/server/wm/ActivityRecord;->mTransferringSplashScreenState:I

    .line 2768
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    const/4 v2, 0x0

    if-eqz v1, :cond_e

    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-eqz v3, :cond_e

    .line 2769
    iput-object v2, v3, Lcom/android/server/wm/Task;->mSharedStartingData:Lcom/android/server/wm/StartingData;

    .line 2771
    :cond_e
    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->mStartingWindow:Lcom/android/server/wm/WindowState;

    if-nez v3, :cond_31

    if-eqz v1, :cond_b6

    .line 2775
    sget-object p1, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_STARTING_WINDOW_enabled:[Z

    aget-boolean p1, p1, v0

    if-eqz p1, :cond_2c

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_STARTING_WINDOW:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v3, -0x1b0bb40900a0c6d7L    # -2.056192109559436E178

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, v3, v4, v0, p1}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 2776
    :cond_2c
    iput-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    .line 2779
    iput-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mStartingSurface:Lcom/android/server/wm/StartingSurfaceController$StartingSurface;

    return-void

    :cond_31
    if-eqz v1, :cond_9e

    .line 2788
    iget v3, p0, Lcom/android/server/wm/WindowContainer;->mSyncState:I

    const/4 v4, 0x1

    if-eqz v3, :cond_3d

    .line 2789
    iput v4, v1, Lcom/android/server/wm/StartingData;->mRemoveAfterTransaction:I

    .line 2790
    iput-boolean p1, v1, Lcom/android/server/wm/StartingData;->mPrepareRemoveAnimation:Z

    return-void

    :cond_3d
    if-eqz p1, :cond_4e

    .line 2793
    invoke-virtual {v1}, Lcom/android/server/wm/StartingData;->needRevealAnimation()Z

    move-result p1

    if-eqz p1, :cond_4e

    iget-object p1, p0, Lcom/android/server/wm/ActivityRecord;->mStartingWindow:Lcom/android/server/wm/WindowState;

    .line 2794
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isVisibleByPolicy()Z

    move-result p1

    if-eqz p1, :cond_4e

    goto :goto_4f

    :cond_4e
    move v4, v0

    .line 2795
    :goto_4f
    iget-object p1, p0, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    invoke-virtual {p1}, Lcom/android/server/wm/StartingData;->hasImeSurface()Z

    move-result p1

    .line 2796
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_STARTING_WINDOW_enabled:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_82

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->mStartingWindow:Lcom/android/server/wm/WindowState;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x5

    invoke-static {v5}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_STARTING_WINDOW:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    filled-new-array {v1, v3, v7, v5}, [Ljava/lang/Object;

    move-result-object v1

    const-wide v7, 0x4cf7144c5c41334aL    # 5.9339183045577455E62

    const/16 v3, 0x30

    invoke-static {v6, v7, v8, v3, v1}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 2799
    :cond_82
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mStartingSurface:Lcom/android/server/wm/StartingSurfaceController$StartingSurface;

    .line 2800
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->cleanUpStartingInfo()V

    if-nez v1, :cond_9a

    .line 2802
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_STARTING_WINDOW_enabled:[Z

    aget-boolean p0, p0, v0

    if-eqz p0, :cond_b6

    sget-object p0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_STARTING_WINDOW:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v3, -0x477bf7706596cf2aL    # -1.88393575763248E-36

    invoke-static {p0, v3, v4, v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    return-void

    .line 2812
    :cond_9a
    invoke-virtual {v1, v4, p1}, Lcom/android/server/wm/StartingSurfaceController$StartingSurface;->remove(ZZ)V

    return-void

    .line 2807
    :cond_9e
    sget-object p1, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_STARTING_WINDOW_enabled:[Z

    aget-boolean p1, p1, v0

    if-eqz p1, :cond_b6

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_STARTING_WINDOW:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v1, -0x1e3c80421c30ca0cL    # -8.77242806676582E162

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, v1, v2, v0, p0}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_b6
    return-void
.end method

.method public final removeStopTimeout()V
    .registers 2

    .line 6348
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mStopTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public removeTimeouts()V
    .registers 2

    .line 6352
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->removeIdleTimeoutForActivity(Lcom/android/server/wm/ActivityRecord;)V

    .line 6353
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->removePauseTimeout()V

    .line 6354
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->removeStopTimeout()V

    .line 6355
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->removeDestroyTimeout()V

    return-void
.end method

.method public final removeTransferSplashScreenTimeout()V
    .registers 2

    .line 2550
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mTransferSplashScreenTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public removeUriPermissionsLocked()V
    .registers 2

    .line 5325
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->uriPermissions:Lcom/android/server/uri/UriPermissionOwner;

    if-eqz v0, :cond_a

    .line 5326
    invoke-virtual {v0}, Lcom/android/server/uri/UriPermissionOwner;->removeUriPermissions()V

    const/4 v0, 0x0

    .line 5327
    iput-object v0, p0, Lcom/android/server/wm/ActivityRecord;->uriPermissions:Lcom/android/server/uri/UriPermissionOwner;

    :cond_a
    return-void
.end method

.method public reparent(Lcom/android/server/wm/TaskFragment;ILjava/lang/String;)V
    .registers 9

    .line 2840
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-nez v0, :cond_1f

    .line 2841
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "reparent: Attempted to reparent non-existing app token: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ActivityTaskManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2844
    :cond_1f
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    if-eq v0, p1, :cond_52

    .line 2850
    sget-object p3, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_ADD_REMOVE_enabled:[Z

    const/4 v0, 0x2

    aget-boolean p3, p3, v0

    if-eqz p3, :cond_4e

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    iget v0, v0, Lcom/android/server/wm/Task;->mTaskId:I

    int-to-long v0, v0

    int-to-long v2, p2

    sget-object v4, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_ADD_REMOVE:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {p3, v0, v1}, [Ljava/lang/Object;

    move-result-object p3

    const-wide v0, 0x4c9f5f2199703fc7L    # 1.2603056972755501E61

    const/16 v2, 0x14

    invoke-static {v4, v0, v1, v2, p3}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 2852
    :cond_4e
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->reparent(Lcom/android/server/wm/WindowContainer;I)V

    return-void

    .line 2846
    :cond_52
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ": task fragment ="

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is already the parent of r="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public reportDescendantOrientationChangeIfNeeded()V
    .registers 2

    .line 7433
    invoke-virtual {p0, p0}, Lcom/android/server/wm/WindowContainer;->onDescendantOrientationChanged(Lcom/android/server/wm/WindowContainer;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 7436
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->dispatchTaskInfoChangedIfNeeded(Z)V

    :cond_c
    return-void
.end method

.method public reportScreenCaptured()V
    .registers 4

    .line 6922
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mCaptureCallbacks:Landroid/os/RemoteCallbackList;

    if-eqz v0, :cond_1e

    .line 6923
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const/4 v1, 0x0

    :goto_9
    if-ge v1, v0, :cond_19

    .line 6925
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mCaptureCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/app/IScreenCaptureObserver;

    .line 6927
    :try_start_13
    invoke-interface {v2}, Landroid/app/IScreenCaptureObserver;->onScreenCaptured()V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_16} :catch_16

    :catch_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 6931
    :cond_19
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mCaptureCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    :cond_1e
    return-void
.end method

.method public final requestCopySplashScreen()V
    .registers 4

    const/4 v0, 0x1

    .line 2585
    iput v0, p0, Lcom/android/server/wm/ActivityRecord;->mTransferringSplashScreenState:I

    .line 2586
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mStartingSurface:Lcom/android/server/wm/StartingSurfaceController$StartingSurface;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    .line 2587
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mStartingSurface:Lcom/android/server/wm/StartingSurfaceController$StartingSurface;

    iget-object v2, v2, Lcom/android/server/wm/StartingSurfaceController$StartingSurface;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    .line 2586
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/TaskOrganizerController;->copySplashScreenView(Lcom/android/server/wm/Task;Landroid/window/ITaskOrganizer;)Z

    move-result v0

    if-nez v0, :cond_1f

    :cond_19
    const/4 v0, 0x3

    .line 2588
    iput v0, p0, Lcom/android/server/wm/ActivityRecord;->mTransferringSplashScreenState:I

    .line 2589
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->removeStartingWindow()V

    .line 2591
    :cond_1f
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->scheduleTransferSplashScreenTimeout()V

    return-void
.end method

.method public requestOpenInBrowserEducation()V
    .registers 3

    .line 6913
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wm/ActivityRecord;->mRequestOpenInBrowserEducationTimestamp:J

    .line 6914
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 6916
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-ne p0, v0, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    .line 6917
    :goto_1b
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->dispatchTaskInfoChangedIfNeeded(Z)V

    :cond_22
    return-void
.end method

.method public requestUpdateWallpaperIfNeeded()V
    .registers 3

    .line 7182
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_18

    .line 7183
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 7184
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->requestUpdateWallpaperIfNeeded()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_18
    return-void
.end method

.method public resetSurfacePositionForAnimationLeash(Landroid/view/SurfaceControl$Transaction;)V
    .registers 2

    .line 0
    return-void
.end method

.method public final resolveFixedOrientationConfiguration(Landroid/content/res/Configuration;)V
    .registers 12

    .line 8082
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mResolveConfigHint:Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;

    iget-object v3, v0, Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;->mParentBoundsOverride:Landroid/graphics/Rect;

    .line 8083
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 8084
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mTmpBounds:Landroid/graphics/Rect;

    .line 8087
    invoke-virtual {p0, v3, v0, v1}, Lcom/android/server/wm/ActivityRecord;->orientationRespectedWithInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 8089
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getOverrideOrientation()I

    move-result v4

    .line 8088
    invoke-virtual {p0, v4}, Lcom/android/server/wm/ActivityRecord;->handlesOrientationChangeFromDescendant(I)Z

    move-result v4

    if-eqz v4, :cond_1c

    goto :goto_6f

    .line 8097
    :cond_1c
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getOrganizedTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v4

    if-eqz v4, :cond_29

    .line 8098
    invoke-virtual {v4}, Lcom/android/server/wm/TaskFragment;->fillsParent()Z

    move-result v4

    if-nez v4, :cond_29

    goto :goto_6f

    .line 8103
    :cond_29
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget-object v4, v4, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v4}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    .line 8104
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x2

    if-le v5, v6, :cond_41

    move v5, v8

    goto :goto_42

    :cond_41
    move v5, v7

    .line 8106
    :goto_42
    iget-object v6, p0, Lcom/android/server/wm/ActivityRecord;->mResolveConfigHint:Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;

    iget-boolean v6, v6, Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;->mUseOverrideInsetsForConfig:Z

    if-eqz v6, :cond_49

    goto :goto_4b

    .line 8107
    :cond_49
    iget v5, p1, Landroid/content/res/Configuration;->orientation:I

    .line 8111
    :goto_4b
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getRequestedConfigurationOrientation()I

    move-result v6

    .line 8112
    iget-object v9, p0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 8113
    invoke-virtual {v9}, Lcom/android/server/wm/AppCompatController;->getLetterboxPolicy()Lcom/android/server/wm/AppCompatLetterboxPolicy;

    move-result-object v9

    .line 8114
    invoke-virtual {v9, v6, v5}, Lcom/android/server/wm/AppCompatLetterboxPolicy;->resolveFixedOrientationLetterboxEligibility(II)Z

    move-result v5

    if-nez v5, :cond_60

    if-eqz v6, :cond_6f

    if-eqz v2, :cond_60

    goto :goto_6f

    .line 8120
    :cond_60
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getAppCompatDisplayInsets()Lcom/android/server/wm/AppCompatDisplayInsets;

    move-result-object v9

    .line 8121
    iget-object v5, p0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 8122
    invoke-virtual {v5}, Lcom/android/server/wm/AppCompatController;->getSizeCompatModePolicy()Lcom/android/server/wm/AppCompatSizeCompatModePolicy;

    if-eqz v9, :cond_70

    .line 8124
    iget-boolean v5, v9, Lcom/android/server/wm/AppCompatDisplayInsets;->mIsInFixedOrientationOrAspectRatioLetterbox:Z

    if-nez v5, :cond_70

    :cond_6f
    :goto_6f
    return-void

    .line 8133
    :cond_70
    iget-object v5, p0, Lcom/android/server/wm/ActivityRecord;->mResolveConfigHint:Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;

    iget-boolean v5, v5, Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;->mUseOverrideInsetsForConfig:Z

    if-eqz v5, :cond_77

    goto :goto_7d

    .line 8134
    :cond_77
    iget-object v1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v1

    :goto_7d
    if-eqz v2, :cond_80

    move-object v0, v1

    :cond_80
    move v1, v6

    .line 8139
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 8140
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    if-ne v1, v8, :cond_ae

    .line 8149
    iget v1, v0, Landroid/graphics/Rect;->top:I

    .line 8150
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    add-int/2addr v1, v2

    sub-int/2addr v1, v7

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 8149
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 8151
    iget v2, v3, Landroid/graphics/Rect;->left:I

    iget v7, v0, Landroid/graphics/Rect;->top:I

    iget v8, v3, Landroid/graphics/Rect;->right:I

    invoke-virtual {v6, v2, v7, v8, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 8153
    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v7, v0, Landroid/graphics/Rect;->top:I

    iget v0, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v5, v2, v7, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_cd

    .line 8161
    :cond_ae
    iget v1, v0, Landroid/graphics/Rect;->left:I

    .line 8162
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, v0, Landroid/graphics/Rect;->right:I

    .line 8161
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 8163
    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v7, v3, Landroid/graphics/Rect;->top:I

    iget v8, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v6, v2, v7, v1, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 8165
    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v7, v0, Landroid/graphics/Rect;->top:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v5, v2, v7, v1, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 8170
    :goto_cd
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 8171
    invoke-virtual {v4, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 8173
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 8174
    invoke-virtual {v1}, Lcom/android/server/wm/AppCompatController;->getAspectRatioPolicy()Lcom/android/server/wm/AppCompatAspectRatioPolicy;

    move-result-object v1

    move-object v2, p1

    .line 8176
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->applyDesiredAspectRatio(Landroid/content/res/Configuration;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    if-eqz v9, :cond_108

    .line 8180
    iget-object p1, p0, Lcom/android/server/wm/ActivityRecord;->mTmpBounds:Landroid/graphics/Rect;

    iget-object v5, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 8181
    invoke-virtual {v5}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v5

    .line 8180
    invoke-virtual {v9, p1, v5}, Lcom/android/server/wm/AppCompatDisplayInsets;->getBoundsByRotation(Landroid/graphics/Rect;I)V

    .line 8182
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result p1

    iget-object v5, p0, Lcom/android/server/wm/ActivityRecord;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    if-ne p1, v5, :cond_104

    .line 8183
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result p1

    iget-object v5, p0, Lcom/android/server/wm/ActivityRecord;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-eq p1, v5, :cond_108

    .line 8187
    :cond_104
    invoke-virtual {v4, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void

    .line 8196
    :cond_108
    invoke-virtual {v4, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_112

    .line 8197
    invoke-virtual {v4, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void

    .line 8203
    :cond_112
    iget-object p1, p0, Lcom/android/server/wm/ActivityRecord;->mResolveConfigHint:Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;

    iput-object v9, p1, Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;->mTmpCompatInsets:Lcom/android/server/wm/AppCompatDisplayInsets;

    .line 8204
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-virtual {p0, p1, v2}, Lcom/android/server/wm/ActivityRecord;->computeConfigByResolveHint(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    .line 8205
    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v1, p0}, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->setLetterboxBoundsForFixedOrientationAndAspectRatio(Landroid/graphics/Rect;)V

    return-void
.end method

.method public resolveOverrideConfiguration(Landroid/content/res/Configuration;)V
    .registers 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 7586
    iget-object v2, v0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 7587
    invoke-virtual {v2}, Lcom/android/server/wm/AppCompatController;->getSizeCompatModePolicy()Lcom/android/server/wm/AppCompatSizeCompatModePolicy;

    move-result-object v2

    .line 7588
    invoke-virtual {v2}, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->clearSizeCompatModeIfNeededOnResolveOverrideConfiguration()V

    .line 7589
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    .line 7590
    iget v4, v3, Landroid/content/res/Configuration;->assetsSeq:I

    const/4 v5, 0x0

    if-eqz v4, :cond_1c

    iget v6, v1, Landroid/content/res/Configuration;->assetsSeq:I

    if-le v6, v4, :cond_1c

    .line 7592
    iput v5, v3, Landroid/content/res/Configuration;->assetsSeq:I

    .line 7598
    :cond_1c
    sget-object v4, Landroid/window/DesktopExperienceFlags;->ENABLE_DRAGGING_PIP_ACROSS_DISPLAYS:Landroid/window/DesktopExperienceFlags;

    invoke-virtual {v4}, Landroid/window/DesktopExperienceFlags;->isTrue()Z

    move-result v4

    const/4 v6, 0x2

    if-eqz v4, :cond_55

    iget-boolean v4, v0, Lcom/android/server/wm/ActivityRecord;->mLastReportedPictureInPictureMode:Z

    if-eqz v4, :cond_55

    iget-object v4, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 7599
    invoke-virtual {v4}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v4

    if-ne v4, v6, :cond_55

    .line 7601
    iget-object v4, v0, Lcom/android/server/wm/ActivityRecord;->mLastReportedConfiguration:Landroid/util/MergedConfiguration;

    .line 7602
    invoke-virtual {v4}, Landroid/util/MergedConfiguration;->getMergedConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    .line 7603
    iget-object v7, v0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v7}, Landroid/content/pm/ActivityInfo;->getRealConfigChanged()I

    move-result v7

    and-int/lit16 v8, v7, 0x4000

    if-nez v8, :cond_45

    .line 7605
    iget v8, v4, Landroid/content/res/Configuration;->colorMode:I

    iput v8, v3, Landroid/content/res/Configuration;->colorMode:I

    :cond_45
    and-int/lit8 v8, v7, 0x8

    if-nez v8, :cond_4d

    .line 7608
    iget v8, v4, Landroid/content/res/Configuration;->touchscreen:I

    iput v8, v3, Landroid/content/res/Configuration;->touchscreen:I

    :cond_4d
    and-int/lit16 v7, v7, 0x1000

    if-nez v7, :cond_55

    .line 7611
    iget v4, v4, Landroid/content/res/Configuration;->densityDpi:I

    iput v4, v3, Landroid/content/res/Configuration;->densityDpi:I

    .line 7615
    :cond_55
    invoke-super/range {p0 .. p1}, Lcom/android/server/wm/WindowToken;->resolveOverrideConfiguration(Landroid/content/res/Configuration;)V

    .line 7616
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    .line 7618
    invoke-virtual {v0, v10}, Lcom/android/server/wm/ActivityRecord;->applyLocaleOverrideIfNeeded(Landroid/content/res/Configuration;)V

    .line 7620
    invoke-virtual {v0}, Lcom/android/server/wm/WindowToken;->isFixedRotationTransforming()Z

    move-result v3

    if-eqz v3, :cond_71

    .line 7626
    iget-object v3, v0, Lcom/android/server/wm/ActivityRecord;->mTmpConfig:Landroid/content/res/Configuration;

    invoke-virtual {v3, v1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 7627
    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->mTmpConfig:Landroid/content/res/Configuration;

    invoke-virtual {v1, v10}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 7628
    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->mTmpConfig:Landroid/content/res/Configuration;

    :cond_71
    move-object v9, v1

    .line 7630
    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 7631
    invoke-virtual {v1}, Lcom/android/server/wm/AppCompatController;->getAspectRatioPolicy()Lcom/android/server/wm/AppCompatAspectRatioPolicy;

    move-result-object v1

    .line 7632
    invoke-virtual {v1}, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->reset()V

    .line 7633
    iget-object v3, v0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 7634
    invoke-virtual {v3}, Lcom/android/server/wm/AppCompatController;->getSafeRegionPolicy()Lcom/android/server/wm/AppCompatSafeRegionPolicy;

    move-result-object v3

    .line 7635
    iget-object v4, v0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    invoke-virtual {v4}, Lcom/android/server/wm/AppCompatController;->getLetterboxPolicy()Lcom/android/server/wm/AppCompatLetterboxPolicy;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/AppCompatLetterboxPolicy;->resetFixedOrientationLetterboxEligibility()V

    .line 7637
    iget-object v4, v9, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 7638
    invoke-virtual {v4}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v4

    invoke-static {v4}, Landroid/app/WindowConfiguration;->isFloating(I)Z

    move-result v4

    const/4 v7, 0x1

    xor-int/lit8 v16, v4, 0x1

    .line 7647
    iget-object v11, v0, Lcom/android/server/wm/ActivityRecord;->mResolveConfigHint:Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;

    iget-object v12, v0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 7648
    invoke-virtual {v0}, Lcom/android/server/wm/WindowToken;->isFixedRotationTransforming()Z

    move-result v14

    invoke-virtual {v3}, Lcom/android/server/wm/AppCompatSafeRegionPolicy;->getLatestSafeRegionBounds()Landroid/graphics/Rect;

    move-result-object v15

    move-object v13, v9

    .line 7647
    invoke-virtual/range {v11 .. v16}, Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;->resolveTmpOverrides(Lcom/android/server/wm/DisplayContent;Landroid/content/res/Configuration;ZLandroid/graphics/Rect;Z)V

    .line 7654
    iget-object v3, v9, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 7655
    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v3

    .line 7658
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getLaunchedFromBubble()Z

    move-result v4

    if-nez v4, :cond_ce

    const/4 v4, 0x6

    if-eq v3, v4, :cond_cc

    if-eq v3, v7, :cond_cc

    .line 7661
    invoke-static {v0}, Lcom/android/server/wm/AppCompatCameraPolicy;->isFreeformLetterboxingForCameraAllowed(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v4

    if-nez v4, :cond_cc

    iget-boolean v4, v0, Lcom/android/server/wm/ActivityRecord;->mWaitForEnteringPinnedMode:Z

    if-nez v4, :cond_ce

    if-ne v3, v6, :cond_ce

    iget-object v4, v10, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 7667
    invoke-virtual {v4}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v4

    if-ne v4, v7, :cond_ce

    :cond_cc
    move v4, v7

    goto :goto_cf

    :cond_ce
    move v4, v5

    :goto_cf
    if-eqz v4, :cond_d4

    .line 7672
    invoke-virtual {v0, v9}, Lcom/android/server/wm/ActivityRecord;->resolveFixedOrientationConfiguration(Landroid/content/res/Configuration;)V

    .line 7677
    :cond_d4
    invoke-virtual {v1, v9}, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->resolveAspectRatioRestrictionIfNeeded(Landroid/content/res/Configuration;)V

    .line 7678
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getAppCompatDisplayInsets()Lcom/android/server/wm/AppCompatDisplayInsets;

    move-result-object v6

    if-eqz v6, :cond_e3

    .line 7680
    iget-object v8, v0, Lcom/android/server/wm/ActivityRecord;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v9, v6, v8}, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->resolveSizeCompatModeConfiguration(Landroid/content/res/Configuration;Lcom/android/server/wm/AppCompatDisplayInsets;Landroid/graphics/Rect;)V

    goto :goto_f6

    .line 7682
    :cond_e3
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    move-result v6

    if-eqz v6, :cond_f6

    if-nez v4, :cond_f6

    .line 7685
    iput v5, v10, Landroid/content/res/Configuration;->orientation:I

    .line 7688
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->matchParentBounds()Z

    move-result v6

    if-nez v6, :cond_f6

    .line 7689
    invoke-virtual {v0, v10, v9}, Lcom/android/server/wm/ActivityRecord;->computeConfigByResolveHint(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    .line 7697
    :cond_f6
    :goto_f6
    iget-object v6, v0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    invoke-virtual {v6}, Lcom/android/server/wm/AppCompatController;->getSafeRegionPolicy()Lcom/android/server/wm/AppCompatSafeRegionPolicy;

    move-result-object v6

    invoke-virtual {v6, v10, v9}, Lcom/android/server/wm/AppCompatSafeRegionPolicy;->resolveSafeRegionBoundsConfigurationIfNeeded(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    if-nez v4, :cond_10d

    .line 7701
    invoke-virtual {v2}, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->hasAppCompatDisplayInsetsWithoutInheritance()Z

    move-result v4

    if-nez v4, :cond_10d

    .line 7703
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    move-result v4

    if-nez v4, :cond_110

    .line 7704
    :cond_10d
    invoke-virtual {v0, v9}, Lcom/android/server/wm/ActivityRecord;->updateResolvedBoundsPosition(Landroid/content/res/Configuration;)V

    .line 7707
    :cond_110
    iget-object v4, v0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v4, :cond_11c

    .line 7708
    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getIgnoreOrientationRequest()Z

    move-result v4

    if-eqz v4, :cond_11c

    move v4, v7

    goto :goto_11d

    :cond_11c
    move v4, v5

    .line 7709
    :goto_11d
    invoke-virtual {v2}, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->hasAppCompatDisplayInsetsWithoutInheritance()Z

    move-result v2

    if-nez v2, :cond_13b

    .line 7714
    invoke-virtual {v1}, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->isLetterboxedForFixedOrientationAndAspectRatio()Z

    move-result v2

    if-nez v2, :cond_131

    if-eqz v4, :cond_13b

    .line 7722
    invoke-virtual {v1}, Lcom/android/server/wm/AppCompatAspectRatioPolicy;->isAspectRatioApplied()Z

    move-result v1

    if-eqz v1, :cond_13b

    .line 7725
    :cond_131
    iget v1, v10, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v2, v10, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 7726
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v10, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 7732
    :cond_13b
    iget v1, v0, Lcom/android/server/wm/ActivityRecord;->mConfigurationSeq:I

    add-int/2addr v1, v7

    iput v1, v0, Lcom/android/server/wm/ActivityRecord;->mConfigurationSeq:I

    invoke-static {v1, v7}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lcom/android/server/wm/ActivityRecord;->mConfigurationSeq:I

    .line 7733
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v2, v0, Lcom/android/server/wm/ActivityRecord;->mConfigurationSeq:I

    iput v2, v1, Landroid/content/res/Configuration;->seq:I

    .line 7739
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->providesMaxBounds()Z

    move-result v1

    if-eqz v1, :cond_179

    .line 7740
    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->mTmpBounds:Landroid/graphics/Rect;

    iget-object v2, v10, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 7741
    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_172

    .line 7744
    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->mTmpBounds:Landroid/graphics/Rect;

    iget-object v2, v9, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 7761
    :cond_172
    iget-object v1, v10, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    iget-object v2, v0, Lcom/android/server/wm/ActivityRecord;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/app/WindowConfiguration;->setMaxBounds(Landroid/graphics/Rect;)V

    .line 7764
    :cond_179
    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    invoke-virtual {v1}, Lcom/android/server/wm/AppCompatController;->getSandboxingPolicy()Lcom/android/server/wm/AppCompatSandboxingPolicy;

    move-result-object v1

    invoke-virtual {v1, v10, v3}, Lcom/android/server/wm/AppCompatSandboxingPolicy;->sandboxBoundsIfNeeded(Landroid/content/res/Configuration;I)V

    move v1, v7

    .line 7767
    iget-object v7, v0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v8, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v11, v0, Lcom/android/server/wm/ActivityRecord;->mOptOutEdgeToEdge:Z

    .line 7773
    invoke-virtual {v0}, Lcom/android/server/wm/WindowToken;->hasFixedRotationTransform()Z

    move-result v12

    .line 7774
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getAppCompatDisplayInsets()Lcom/android/server/wm/AppCompatDisplayInsets;

    move-result-object v2

    if-eqz v2, :cond_197

    move v13, v1

    goto :goto_198

    :cond_197
    move v13, v5

    :goto_198
    iget-object v14, v0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 7767
    invoke-static/range {v7 .. v14}, Lcom/android/server/wm/ConfigurationContainer;->applySizeOverrideIfNeeded(Lcom/android/server/wm/DisplayContent;Landroid/content/pm/ApplicationInfo;Landroid/content/res/Configuration;Landroid/content/res/Configuration;ZZZLcom/android/server/wm/Task;)V

    .line 7776
    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->mResolveConfigHint:Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;

    invoke-virtual {v1}, Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;->resetTmpOverrides()V

    .line 7778
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->logAppCompatState()V

    return-void
.end method

.method public restartProcessIfVisible()V
    .registers 6

    .line 8870
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v0, :cond_5

    goto :goto_70

    .line 8871
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Request to restart process of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8875
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatController;->getSizeCompatModePolicy()Lcom/android/server/wm/AppCompatSizeCompatModePolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->clearSizeCompatMode()V

    .line 8876
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatController;->getDisplayCompatModePolicy()Lcom/android/server/wm/AppCompatDisplayCompatModePolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatDisplayCompatModePolicy;->onProcessRestarted()V

    .line 8878
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v0

    if-nez v0, :cond_34

    goto :goto_70

    .line 8883
    :cond_34
    sget-object v0, Lcom/android/server/wm/ActivityRecord$State;->RESTARTING_PROCESS:Lcom/android/server/wm/ActivityRecord$State;

    const-string v1, "restartActivityProcess"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityRecord$State;Ljava/lang/String;)V

    .line 8885
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 8886
    sget-object v0, Landroid/window/DesktopExperienceFlags;->ENABLE_AUTO_RESTART_ON_DISPLAY_MOVE:Landroid/window/DesktopExperienceFlags;

    invoke-virtual {v0}, Landroid/window/DesktopExperienceFlags;->isTrue()Z

    move-result v0

    if-nez v0, :cond_52

    .line 8887
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->killInvisibleProcessOrPrepareForRestart()Z

    move-result v0

    if-eqz v0, :cond_52

    goto :goto_70

    .line 8890
    :cond_52
    new-instance v0, Lcom/android/server/wm/Transition;

    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/android/server/wm/Transition;-><init>(IILcom/android/server/wm/TransitionController;Lcom/android/server/wm/BLASTSyncEngine;)V

    .line 8892
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    new-instance v2, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda8;

    invoke-direct {v2, p0, v0}, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Transition;)V

    invoke-virtual {v1, v0, v2}, Lcom/android/server/wm/TransitionController;->startCollectOrQueue(Lcom/android/server/wm/Transition;Lcom/android/server/wm/TransitionController$OnStartCollect;)Z

    return-void

    .line 8918
    :cond_6a
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->killInvisibleProcessOrPrepareForRestart()Z

    move-result v0

    if-eqz v0, :cond_71

    :goto_70
    return-void

    .line 8921
    :cond_71
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->scheduleStopForRestartProcess()V

    return-void
.end method

.method public resumeConfigurationDispatch()Z
    .registers 7

    .line 8410
    iget v0, p0, Lcom/android/server/wm/ActivityRecord;->mPauseConfigurationDispatchCount:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/wm/ActivityRecord;->mPauseConfigurationDispatchCount:I

    const/4 v2, 0x0

    if-lez v0, :cond_a

    return v2

    .line 8414
    :cond_a
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_MIN_enabled:[Z

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_22

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS_MIN:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v4, 0x4785ebb0c5bb3ef1L    # 3.6421953804033705E36

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v3, v4, v5, v2, v0}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 8415
    :cond_22
    iget v0, p0, Lcom/android/server/wm/ActivityRecord;->mPauseConfigurationDispatchCount:I

    if-gez v0, :cond_30

    .line 8416
    const-string v0, "ActivityTaskManager"

    const-string v1, "Trying to resume non-paused configuration dispatch"

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 8417
    iput v2, p0, Lcom/android/server/wm/ActivityRecord;->mPauseConfigurationDispatchCount:I

    return v2

    .line 8420
    :cond_30
    iget v0, p0, Lcom/android/server/wm/ActivityRecord;->mLastReportedDisplayId:I

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result v3

    if-ne v0, v3, :cond_49

    .line 8421
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->mLastReportedConfiguration:Landroid/util/MergedConfiguration;

    invoke-virtual {v3}, Landroid/util/MergedConfiguration;->getMergedConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v0

    if-eqz v0, :cond_49

    return v2

    .line 8424
    :cond_49
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_4e
    if-ltz v0, :cond_81

    .line 8425
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/server/wm/ActivityRecord;->dispatchConfigurationToChild(Lcom/android/server/wm/WindowState;Landroid/content/res/Configuration;)V

    .line 8426
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->asWindowState()Lcom/android/server/wm/WindowState;

    move-result-object v2

    if-eqz v2, :cond_7e

    .line 8428
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v3

    .line 8429
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    const/4 v5, 0x0

    .line 8428
    invoke-virtual {v3, v2, v5, v4}, Lcom/android/server/wm/DisplayPolicy;->layoutWindowLw(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/DisplayFrames;)V

    .line 8430
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->updateSurfacePositionNonOrganized()V

    :cond_7e
    add-int/lit8 v0, v0, -0x1

    goto :goto_4e

    .line 8433
    :cond_81
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->ensureActivityConfiguration()Z

    return v1
.end method

.method public resumeKeyDispatchingLocked()V
    .registers 2

    .line 5342
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->keysPaused:Z

    if-eqz v0, :cond_18

    const/4 v0, 0x0

    .line 5343
    iput-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->keysPaused:Z

    .line 5345
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 5346
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/wm/InputMonitor;->resumeDispatchingLw(Lcom/android/server/wm/WindowToken;)V

    :cond_18
    return-void
.end method

.method public saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V
    .registers 6

    .line 9017
    const-string v0, "id"

    iget-wide v1, p0, Lcom/android/server/wm/ActivityRecord;->createTime:J

    const/4 v3, 0x0

    invoke-interface {p1, v3, v0, v1, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 9018
    const-string v0, "launched_from_uid"

    iget v1, p0, Lcom/android/server/wm/ActivityRecord;->launchedFromUid:I

    invoke-interface {p1, v3, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 9019
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    if-eqz v0, :cond_18

    .line 9020
    const-string v1, "launched_from_package"

    invoke-interface {p1, v3, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 9022
    :cond_18
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->launchedFromFeatureId:Ljava/lang/String;

    if-eqz v0, :cond_21

    .line 9023
    const-string v1, "launched_from_feature"

    invoke-interface {p1, v3, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 9025
    :cond_21
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->resolvedType:Ljava/lang/String;

    if-eqz v0, :cond_2a

    .line 9026
    const-string v1, "resolved_type"

    invoke-interface {p1, v3, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 9028
    :cond_2a
    const-string v0, "component_specified"

    iget-boolean v1, p0, Lcom/android/server/wm/ActivityRecord;->componentSpecified:Z

    invoke-interface {p1, v3, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 9029
    const-string v0, "user_id"

    iget v1, p0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-interface {p1, v3, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 9031
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    if-eqz v0, :cond_3f

    .line 9032
    invoke-virtual {v0, p1}, Landroid/app/ActivityManager$TaskDescription;->saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 9035
    :cond_3f
    const-string v0, "intent"

    invoke-interface {p1, v3, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 9036
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1, p1}, Landroid/content/Intent;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 9037
    invoke-interface {p1, v3, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 9039
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isPersistable()Z

    move-result v0

    if-eqz v0, :cond_63

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mPersistentState:Landroid/os/PersistableBundle;

    if-eqz v0, :cond_63

    .line 9040
    const-string v0, "persistable_bundle"

    invoke-interface {p1, v3, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 9041
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mPersistentState:Landroid/os/PersistableBundle;

    invoke-virtual {v1, p1}, Landroid/os/PersistableBundle;->saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 9042
    invoke-interface {p1, v3, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 9046
    :cond_63
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mCallerState:Lcom/android/server/wm/ActivityCallerState;

    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->initialCallerInfoAccessToken:Landroid/os/IBinder;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/ActivityCallerState;->getCallerInfoOrNull(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityCallerState$CallerInfo;

    move-result-object p0

    if-eqz p0, :cond_78

    .line 9049
    const-string v0, "initial_caller_info"

    invoke-interface {p1, v3, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 9050
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityCallerState$CallerInfo;->saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 9051
    invoke-interface {p1, v3, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_78
    return-void
.end method

.method public final scheduleActivityMovedToDisplay(ILandroid/content/res/Configuration;Landroid/window/ActivityWindowInfo;)V
    .registers 10

    .line 1375
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v0

    const/4 v1, 0x4

    if-nez v0, :cond_26

    .line 1376
    sget-object p2, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_SWITCH_enabled:[Z

    const/4 p3, 0x3

    aget-boolean p2, p2, p3

    if-eqz p2, :cond_25

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    int-to-long p1, p1

    sget-object p3, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_SWITCH:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-wide p1, -0x5a558eb85b17cfe8L    # -3.051787900657849E-127

    invoke-static {p3, p1, p2, v1, p0}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_25
    return-void

    .line 1381
    :cond_26
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_SWITCH_enabled:[Z

    const/4 v2, 0x0

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_48

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    int-to-long v2, p1

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_SWITCH:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v0, v2, v4}, [Ljava/lang/Object;

    move-result-object v0

    const-wide v2, -0x3a0d3686310dc307L    # -9.302879184568893E28

    invoke-static {v5, v2, v3, v1, v0}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 1385
    :cond_48
    new-instance v0, Landroid/app/servertransaction/MoveToDisplayItem;

    iget-object v1, p0, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-direct {v0, v1, p1, p2, p3}, Landroid/app/servertransaction/MoveToDisplayItem;-><init>(Landroid/os/IBinder;ILandroid/content/res/Configuration;Landroid/window/ActivityWindowInfo;)V

    .line 1387
    iget-object p1, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityTaskManagerService;->getLifecycleManager()Lcom/android/server/wm/ClientLifecycleManager;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object p0

    invoke-virtual {p1, p0, v0}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransactionItem(Landroid/app/IApplicationThread;Landroid/app/servertransaction/ClientTransactionItem;)Z

    return-void
.end method

.method public final scheduleAddStartingWindow()V
    .registers 7

    .line 2397
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_STARTING_WINDOW_enabled:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_1f

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_STARTING_WINDOW:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v4, 0x4e88dd20260a3223L    # 2.1450430772303076E70

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v3, v4, v5, v1, v0}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 2400
    :cond_1f
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/StartingData;->createStartingSurface(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/StartingSurfaceController$StartingSurface;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mStartingSurface:Lcom/android/server/wm/StartingSurfaceController$StartingSurface;

    if-eqz v0, :cond_4e

    .line 2402
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_STARTING_WINDOW_enabled:[Z

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_66

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mStartingWindow:Lcom/android/server/wm/WindowState;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mStartingSurface:Lcom/android/server/wm/StartingSurfaceController$StartingSurface;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object v3, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_STARTING_WINDOW:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v4, 0x682b0bf11a7d37f0L    # 6.169936201174548E193

    filled-new-array {v0, v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v3, v4, v5, v1, p0}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    return-void

    .line 2406
    :cond_4e
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_STARTING_WINDOW_enabled:[Z

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_66

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_STARTING_WINDOW:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v2, 0xe8b6a5da6ca3e94L

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, v2, v3, v1, p0}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_66
    return-void
.end method

.method public final scheduleConfigurationChanged(Landroid/content/res/Configuration;Landroid/window/ActivityWindowInfo;)V
    .registers 9

    .line 1392
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_21

    .line 1393
    sget-object p1, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_CONFIGURATION_enabled:[Z

    const/4 p2, 0x3

    aget-boolean p1, p1, p2

    if-eqz p1, :cond_20

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_CONFIGURATION:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v2, 0x672f6ae374fc35f9L    # 1.0936022160278257E189

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, v2, v3, v1, p0}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_20
    return-void

    .line 1397
    :cond_21
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_CONFIGURATION_enabled:[Z

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_3d

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_CONFIGURATION:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v4, -0x66f5248af2dbce7fL

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v3, v4, v5, v1, v0}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 1400
    :cond_3d
    new-instance v0, Landroid/app/servertransaction/ActivityConfigurationChangeItem;

    iget-object v1, p0, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    .line 1401
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result v2

    invoke-direct {v0, v1, p1, p2, v2}, Landroid/app/servertransaction/ActivityConfigurationChangeItem;-><init>(Landroid/os/IBinder;Landroid/content/res/Configuration;Landroid/window/ActivityWindowInfo;I)V

    .line 1402
    iget-object p1, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityTaskManagerService;->getLifecycleManager()Lcom/android/server/wm/ClientLifecycleManager;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object p0

    invoke-virtual {p1, p0, v0}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransactionItem(Landroid/app/IApplicationThread;Landroid/app/servertransaction/ClientTransactionItem;)Z

    return-void
.end method

.method public schedulePauseTimeout()V
    .registers 5

    .line 6334
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wm/ActivityRecord;->pauseTime:J

    .line 6335
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mPauseTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 6336
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_STATES_enabled:[Z

    const/4 v0, 0x0

    aget-boolean p0, p0, v0

    if-eqz p0, :cond_23

    sget-object p0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_STATES:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v1, -0x239e074ab729ca2eL    # -1.0449915116439603E137

    const/4 v3, 0x0

    invoke-static {p0, v1, v2, v0, v3}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_23
    return-void
.end method

.method public final scheduleStopForRestartProcess()V
    .registers 4

    .line 8967
    new-instance v0, Landroid/app/servertransaction/StopActivityItem;

    iget-object v1, p0, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-direct {v0, v1}, Landroid/app/servertransaction/StopActivityItem;-><init>(Landroid/os/IBinder;)V

    .line 8968
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getLifecycleManager()Lcom/android/server/wm/ClientLifecycleManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransactionItem(Landroid/app/IApplicationThread;Landroid/app/servertransaction/ClientTransactionItem;)Z

    .line 8969
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->scheduleRestartTimeout(Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public scheduleTopResumedActivityChanged(Z)Z
    .registers 7

    .line 1406
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4f

    sget-object v0, Lcom/android/server/wm/ActivityRecord$State;->DESTROYING:Lcom/android/server/wm/ActivityRecord$State;

    sget-object v2, Lcom/android/server/wm/ActivityRecord$State;->DESTROYED:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {p0, v0, v2}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_4f

    :cond_12
    if-eqz p1, :cond_19

    .line 1413
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->addToPendingTop()V

    .line 1415
    :cond_19
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_STATES_enabled:[Z

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_37

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_STATES:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-wide v2, 0x6488aa2d097530e7L    # 1.9521095833020158E176

    const/16 v4, 0xc

    invoke-static {v1, v2, v3, v4, v0}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 1418
    :cond_37
    new-instance v0, Landroid/app/servertransaction/TopResumedActivityChangeItem;

    iget-object v1, p0, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-direct {v0, v1, p1}, Landroid/app/servertransaction/TopResumedActivityChangeItem;-><init>(Landroid/os/IBinder;Z)V

    .line 1419
    iget-object p1, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityTaskManagerService;->getLifecycleManager()Lcom/android/server/wm/ClientLifecycleManager;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object p0

    invoke-virtual {p1, p0, v0}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransactionItem(Landroid/app/IApplicationThread;Landroid/app/servertransaction/ClientTransactionItem;)Z

    move-result p0

    return p0

    .line 1407
    :cond_4f
    :goto_4f
    sget-object p1, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_STATES_enabled:[Z

    const/4 v0, 0x3

    aget-boolean p1, p1, v0

    if-eqz p1, :cond_68

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_STATES:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v2, -0x3b772521f7d0c89aL    # -1.4671773110816423E22

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, v2, v3, v1, p0}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_68
    return v1
.end method

.method public final scheduleTransferSplashScreenTimeout()V
    .registers 4

    .line 2545
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mTransferSplashScreenTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final searchCandidateLaunchingActivity()Lcom/android/server/wm/ActivityRecord;
    .registers 7

    .line 6978
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/WindowContainer;->getActivityBelow(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-nez v0, :cond_12

    .line 6980
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/wm/WindowContainer;->getActivityBelow(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    :cond_12
    const/4 v1, 0x0

    if-eqz v0, :cond_61

    .line 6983
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result v2

    if-eqz v2, :cond_1c

    goto :goto_61

    .line 6986
    :cond_1c
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eqz v2, :cond_21

    goto :goto_33

    .line 6987
    :cond_21
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessNames:Lcom/android/internal/app/ProcessMap;

    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowProcessController;

    .line 6988
    :goto_33
    iget-object v3, v0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eqz v3, :cond_38

    goto :goto_4a

    .line 6990
    :cond_38
    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessNames:Lcom/android/internal/app/ProcessMap;

    iget-object v4, v0, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v5, v0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowProcessController;

    :goto_4a
    if-eq v3, v2, :cond_60

    .line 6993
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    .line 6994
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    iget-object v2, v0, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    .line 6995
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5f

    goto :goto_60

    :cond_5f
    return-object v1

    :cond_60
    :goto_60
    return-object v0

    :cond_61
    :goto_61
    return-object v1
.end method

.method public sendResult(ILjava/lang/String;IILandroid/content/Intent;Landroid/os/IBinder;Lcom/android/server/uri/NeededUriGrants;)V
    .registers 17

    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    .line 4944
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/wm/ActivityRecord;->sendResult(ILjava/lang/String;IILandroid/content/Intent;Landroid/os/IBinder;Lcom/android/server/uri/NeededUriGrants;Z)V

    return-void
.end method

.method public sendResult(ILjava/lang/String;IILandroid/content/Intent;Landroid/os/IBinder;Lcom/android/server/uri/NeededUriGrants;Z)V
    .registers 16

    .line 4951
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mCallerState:Lcom/android/server/wm/ActivityCallerState;

    .line 4952
    invoke-virtual {v0, p6}, Lcom/android/server/wm/ActivityCallerState;->hasCaller(Landroid/os/IBinder;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 4954
    :try_start_8
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 4955
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/pm/IPackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object v1, p0

    move v4, p1

    move-object v3, p5

    move-object v2, p6

    .line 4954
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/ActivityRecord;->computeCallerInfo(Landroid/os/IBinder;Landroid/content/Intent;ILjava/lang/String;Z)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_1a} :catch_1b

    goto :goto_24

    :catch_1b
    move-exception v0

    move-object p0, v0

    .line 4961
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_23
    move v4, p1

    :goto_24
    if-lez v4, :cond_31

    .line 4965
    iget-object p1, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    .line 4966
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getUriPermissionsLocked()Lcom/android/server/uri/UriPermissionOwner;

    move-result-object v0

    .line 4965
    invoke-interface {p1, p7, v0}, Lcom/android/server/uri/UriGrantsManagerInternal;->grantUriPermissionUncheckedFromIntent(Lcom/android/server/uri/NeededUriGrants;Lcom/android/server/uri/UriPermissionOwner;)V

    .line 4976
    :cond_31
    sget-object p1, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result p1

    if-eqz p1, :cond_6b

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result p1

    if-eqz p1, :cond_6b

    .line 4977
    new-instance p7, Ljava/util/ArrayList;

    invoke-direct {p7}, Ljava/util/ArrayList;-><init>()V

    .line 4978
    new-instance p1, Landroid/app/ResultInfo;

    invoke-direct/range {p1 .. p6}, Landroid/app/ResultInfo;-><init>(Ljava/lang/String;IILandroid/content/Intent;Landroid/os/IBinder;)V

    move v0, p3

    move v1, p4

    move-object v3, p5

    move-object v2, p6

    move-object p6, p2

    invoke-virtual {p7, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4979
    new-instance p1, Landroid/app/servertransaction/ActivityResultItem;

    iget-object p2, p0, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-direct {p1, p2, p7}, Landroid/app/servertransaction/ActivityResultItem;-><init>(Landroid/os/IBinder;Ljava/util/List;)V

    .line 4980
    iget-object p2, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityTaskManagerService;->getLifecycleManager()Lcom/android/server/wm/ClientLifecycleManager;

    move-result-object p2

    iget-object p3, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 4981
    invoke-virtual {p3}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object p3

    invoke-virtual {p2, p3, p1}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransactionItem(Landroid/app/IApplicationThread;Landroid/app/servertransaction/ClientTransactionItem;)Z

    move-result p1

    if-eqz p1, :cond_70

    return-void

    :cond_6b
    move v0, p3

    move v1, p4

    move-object v3, p5

    move-object v2, p6

    move-object p6, p2

    :cond_70
    if-eqz p8, :cond_f0

    .line 4988
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result p1

    if-eqz p1, :cond_f0

    sget-object p1, Lcom/android/server/wm/ActivityRecord$State;->STARTED:Lcom/android/server/wm/ActivityRecord$State;

    sget-object p2, Lcom/android/server/wm/ActivityRecord$State;->PAUSING:Lcom/android/server/wm/ActivityRecord$State;

    sget-object p3, Lcom/android/server/wm/ActivityRecord$State;->PAUSED:Lcom/android/server/wm/ActivityRecord$State;

    sget-object p4, Lcom/android/server/wm/ActivityRecord$State;->STOPPING:Lcom/android/server/wm/ActivityRecord$State;

    sget-object p5, Lcom/android/server/wm/ActivityRecord$State;->STOPPED:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;Lcom/android/server/wm/ActivityRecord$State;Lcom/android/server/wm/ActivityRecord$State;Lcom/android/server/wm/ActivityRecord$State;Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result p1

    move-object p7, p0

    if-eqz p1, :cond_ea

    .line 4991
    new-instance p0, Landroid/app/ResultInfo;

    move-object p1, p6

    move p2, v0

    move p3, v1

    move-object p5, v2

    move-object p4, v3

    invoke-direct/range {p0 .. p5}, Landroid/app/ResultInfo;-><init>(Ljava/lang/String;IILandroid/content/Intent;Landroid/os/IBinder;)V

    invoke-static {p0}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    .line 4993
    new-instance p1, Landroid/app/servertransaction/ActivityResultItem;

    iget-object p2, p7, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-direct {p1, p2, p0}, Landroid/app/servertransaction/ActivityResultItem;-><init>(Landroid/os/IBinder;Ljava/util/List;)V

    .line 4997
    invoke-virtual {p7}, Lcom/android/server/wm/ActivityRecord;->getLifecycleItemForCurrentStateForResult()Landroid/app/servertransaction/ActivityLifecycleItem;

    move-result-object p0

    if-eqz p0, :cond_bd

    .line 4999
    iget-object p2, p7, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityTaskManagerService;->getLifecycleManager()Lcom/android/server/wm/ClientLifecycleManager;

    move-result-object p2

    iget-object p3, p7, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 5000
    invoke-virtual {p3}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object p3

    const/4 p4, 0x2

    new-array p4, p4, [Landroid/app/servertransaction/ClientTransactionItem;

    const/4 p5, 0x0

    aput-object p1, p4, p5

    const/4 p1, 0x1

    aput-object p0, p4, p1

    .line 4999
    invoke-virtual {p2, p3, p4}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransactionItems(Landroid/app/IApplicationThread;[Landroid/app/servertransaction/ClientTransactionItem;)Z

    return-void

    .line 5002
    :cond_bd
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unable to get the lifecycle item for state "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p7, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " so couldn\'t immediately send result"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "ActivityTaskManager"

    invoke-static {p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5004
    iget-object p0, p7, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLifecycleManager()Lcom/android/server/wm/ClientLifecycleManager;

    move-result-object p0

    iget-object p2, p7, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 5005
    invoke-virtual {p2}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object p2

    .line 5004
    invoke-virtual {p0, p2, p1}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransactionItem(Landroid/app/IApplicationThread;Landroid/app/servertransaction/ClientTransactionItem;)Z

    return-void

    :cond_ea
    :goto_ea
    move-object p2, p6

    move p3, v0

    move p4, v1

    move-object p6, v2

    move-object p5, v3

    goto :goto_f2

    :cond_f0
    move-object p7, p0

    goto :goto_ea

    :goto_f2
    const/4 p1, 0x0

    move-object p0, p7

    .line 5013
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/wm/ActivityRecord;->addResultLocked(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;Landroid/os/IBinder;)V

    return-void
.end method

.method public final setActivityType(ZILandroid/content/Intent;Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityRecord;)V
    .registers 8

    const/4 v0, 0x4

    const/4 v1, 0x0

    if-eqz p1, :cond_a

    .line 2902
    invoke-virtual {p0, p2, p5}, Lcom/android/server/wm/ActivityRecord;->canLaunchHomeActivity(ILcom/android/server/wm/ActivityRecord;)Z

    move-result p1

    if-eqz p1, :cond_23

    .line 2903
    :cond_a
    invoke-static {p3}, Lcom/android/server/wm/ActivityRecord;->isHomeIntent(Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_23

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isResolverOrDelegateActivity()Z

    move-result p1

    if-nez p1, :cond_23

    .line 2907
    iget-object p1, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget p2, p1, Landroid/content/pm/ActivityInfo;->resizeMode:I

    if-eq p2, v0, :cond_1f

    const/4 p3, 0x1

    if-ne p2, p3, :cond_21

    .line 2910
    :cond_1f
    iput v1, p1, Landroid/content/pm/ActivityInfo;->resizeMode:I

    :cond_21
    const/4 v0, 0x2

    goto :goto_6b

    .line 2912
    :cond_23
    iget-object p1, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityTaskManagerService;->getRecentTasks()Lcom/android/server/wm/RecentTasks;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    iget-object p3, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object p3, p3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p3, p3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p1, p2, p3}, Lcom/android/server/wm/RecentTasks;->isRecentsComponent(Landroid/content/ComponentName;I)Z

    move-result p1

    if-eqz p1, :cond_39

    const/4 v0, 0x3

    goto :goto_6b

    :cond_39
    if-eqz p4, :cond_4a

    .line 2915
    invoke-virtual {p4}, Landroid/app/ActivityOptions;->getLaunchActivityType()I

    move-result p1

    if-ne p1, v0, :cond_4a

    iget-object p1, p0, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    .line 2916
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRecord;->canLaunchAssistActivity(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4a

    goto :goto_6b

    :cond_4a
    if-eqz p4, :cond_6a

    .line 2918
    invoke-virtual {p4}, Landroid/app/ActivityOptions;->getLaunchActivityType()I

    move-result p1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_6a

    iget-object p1, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p2, p0, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    .line 2919
    invoke-virtual {p1, p2}, Lcom/android/server/wm/ActivityTaskManagerService;->canLaunchDreamActivity(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6a

    const-class p1, Landroid/service/dreams/DreamActivity;

    .line 2920
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object p2, p2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    if-ne p1, p2, :cond_6a

    goto :goto_6b

    :cond_6a
    move v0, v1

    .line 2923
    :goto_6b
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ConfigurationContainer;->setActivityType(I)V

    return-void
.end method

.method public setAllowCrossUidActivitySwitchFromBelow(Z)V
    .registers 2

    .line 9189
    iput-boolean p1, p0, Lcom/android/server/wm/ActivityRecord;->mAllowCrossUidActivitySwitchFromBelow:Z

    return-void
.end method

.method public setCurrentLaunchCanTurnScreenOn(Z)V
    .registers 2

    .line 5687
    iput-boolean p1, p0, Lcom/android/server/wm/ActivityRecord;->mCurrentLaunchCanTurnScreenOn:Z

    return-void
.end method

.method public setCustomizeSplashScreenExitAnimation(Z)V
    .registers 3

    .line 2524
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mHandleExitSplashScreen:Z

    if-ne v0, p1, :cond_5

    return-void

    .line 2527
    :cond_5
    iput-boolean p1, p0, Lcom/android/server/wm/ActivityRecord;->mHandleExitSplashScreen:Z

    return-void
.end method

.method public setDropInputMode(I)V
    .registers 3

    .line 1623
    iget v0, p0, Lcom/android/server/wm/ActivityRecord;->mLastDropInputMode:I

    if-eq v0, p1, :cond_1b

    .line 1624
    iput p1, p0, Lcom/android/server/wm/ActivityRecord;->mLastDropInputMode:I

    .line 1625
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl$Transaction;

    .line 1626
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Landroid/view/SurfaceControl$Transaction;->setDropInputMode(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    .line 1627
    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :cond_1b
    return-void
.end method

.method public setForceSendResultForMediaProjection()V
    .registers 2

    const/4 v0, 0x1

    .line 3757
    iput-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mForceSendResultForMediaProjection:Z

    return-void
.end method

.method public setHandoffActivityData(Landroid/app/HandoffActivityData;)V
    .registers 3

    .line 1322
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isHandoffEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 1326
    :cond_7
    iput-object p1, p0, Lcom/android/server/wm/ActivityRecord;->mHandoffActivityData:Landroid/app/HandoffActivityData;

    return-void
.end method

.method public setHandoffEnabled(ZZ)V
    .registers 4

    .line 1281
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mHandoffEnabled:Z

    if-eq v0, p1, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    .line 1282
    :goto_7
    iput-boolean p1, p0, Lcom/android/server/wm/ActivityRecord;->mHandoffEnabled:Z

    .line 1283
    iput-boolean p2, p0, Lcom/android/server/wm/ActivityRecord;->mAllowFullTaskRecreation:Z

    if-nez p1, :cond_10

    const/4 p2, 0x0

    .line 1285
    iput-object p2, p0, Lcom/android/server/wm/ActivityRecord;->mHandoffActivityData:Landroid/app/HandoffActivityData;

    :cond_10
    if-eqz v0, :cond_17

    .line 1289
    iget-object p2, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p2, p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->notifyHandoffEnablementChanged(Lcom/android/server/wm/ActivityRecord;Z)V

    :cond_17
    return-void
.end method

.method public setInheritShowWhenLocked(Z)V
    .registers 3

    .line 4813
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mInheritShowWhenLocked:Z

    if-eq v0, p1, :cond_b

    .line 4814
    iput-boolean p1, p0, Lcom/android/server/wm/ActivityRecord;->mInheritShowWhenLocked:Z

    .line 4815
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->notifyKeyguardFlagsChanged()V

    :cond_b
    return-void
.end method

.method public setIsNoDisplay(Z)V
    .registers 2

    .line 3045
    iput-boolean p1, p0, Lcom/android/server/wm/ActivityRecord;->mNoDisplay:Z

    return-void
.end method

.method public setLastParentBeforePip(Lcom/android/server/wm/ActivityRecord;)V
    .registers 4

    if-nez p1, :cond_7

    .line 1660
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    goto :goto_b

    .line 1661
    :cond_7
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    :goto_b
    iput-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mLastParentBeforePip:Lcom/android/server/wm/Task;

    .line 1662
    iput-object p0, v0, Lcom/android/server/wm/Task;->mChildPipActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1663
    iput-object p1, p0, Lcom/android/server/wm/ActivityRecord;->mLaunchIntoPipHostActivity:Lcom/android/server/wm/ActivityRecord;

    if-nez p1, :cond_18

    .line 1665
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getOrganizedTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    goto :goto_1c

    .line 1666
    :cond_18
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getOrganizedTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    :goto_1c
    if-eqz v0, :cond_23

    .line 1668
    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->getTaskFragmentOrganizer()Landroid/window/ITaskFragmentOrganizer;

    move-result-object v1

    goto :goto_24

    :cond_23
    const/4 v1, 0x0

    .line 1669
    :goto_24
    iput-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mLastTaskFragmentOrganizerBeforePip:Landroid/window/ITaskFragmentOrganizer;

    if-eqz v0, :cond_30

    if-nez p1, :cond_30

    .line 1673
    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->getFragmentToken()Landroid/os/IBinder;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/ActivityRecord;->mLastEmbeddedParentTfTokenBeforePip:Landroid/os/IBinder;

    :cond_30
    return-void
.end method

.method public setLastReportedActivityWindowInfo(Landroid/window/ActivityWindowInfo;)V
    .registers 2

    .line 7529
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mLastReportedActivityWindowInfo:Landroid/window/ActivityWindowInfo;

    invoke-virtual {p0, p1}, Landroid/window/ActivityWindowInfo;->set(Landroid/window/ActivityWindowInfo;)V

    return-void
.end method

.method public setLastReportedConfiguration(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V
    .registers 3

    .line 7525
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mLastReportedConfiguration:Landroid/util/MergedConfiguration;

    invoke-virtual {p0, p1, p2}, Landroid/util/MergedConfiguration;->setConfiguration(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    return-void
.end method

.method public setLastReportedGlobalConfiguration(Landroid/content/res/Configuration;)V
    .registers 2

    .line 7516
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mLastReportedConfiguration:Landroid/util/MergedConfiguration;

    invoke-virtual {p0, p1}, Landroid/util/MergedConfiguration;->setGlobalConfiguration(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public setLocusId(Landroid/content/LocusId;)V
    .registers 3

    .line 6902
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mLocusId:Landroid/content/LocusId;

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_19

    .line 6903
    :cond_9
    iput-object p1, p0, Lcom/android/server/wm/ActivityRecord;->mLocusId:Landroid/content/LocusId;

    .line 6904
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p1

    if-eqz p1, :cond_19

    .line 6905
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->dispatchTaskInfoChangedIfNeeded(Z)V

    :cond_19
    :goto_19
    return-void
.end method

.method public setMainWindowOpaque(Z)V
    .registers 3

    .line 3084
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object p0

    if-nez p0, :cond_7

    return-void

    .line 3088
    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    invoke-static {v0}, Landroid/graphics/PixelFormat;->formatHasAlpha(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    and-int/2addr p1, v0

    .line 3089
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowStateAnimator;->setOpaqueLocked(Z)V

    return-void
.end method

.method public setNeedsSafeRegionBounds(Z)V
    .registers 2

    .line 5652
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatController;->getSafeRegionPolicy()Lcom/android/server/wm/AppCompatSafeRegionPolicy;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppCompatSafeRegionPolicy;->setNeedsSafeRegionBounds(Z)V

    return-void
.end method

.method public setOccludesParent(Z)Z
    .registers 4

    .line 3063
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mOccludesParent:Z

    if-eq p1, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    .line 3064
    :goto_7
    iput-boolean p1, p0, Lcom/android/server/wm/ActivityRecord;->mOccludesParent:Z

    .line 3065
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRecord;->setMainWindowOpaque(Z)V

    if-eqz v0, :cond_1b

    .line 3067
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-eqz v1, :cond_1b

    if-nez p1, :cond_18

    .line 3069
    invoke-virtual {v1, p0}, Lcom/android/server/wm/Task;->convertActivityToTranslucent(Lcom/android/server/wm/ActivityRecord;)V

    goto :goto_1b

    .line 3071
    :cond_18
    invoke-virtual {v1, p0}, Lcom/android/server/wm/Task;->convertActivityFromTranslucent(Lcom/android/server/wm/ActivityRecord;)V

    :cond_1b
    :goto_1b
    if-nez v0, :cond_21

    if-nez p1, :cond_20

    goto :goto_21

    :cond_20
    return v0

    .line 3078
    :cond_21
    :goto_21
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible()V

    return v0
.end method

.method public final setOptions(Landroid/app/ActivityOptions;)V
    .registers 4

    .line 5117
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getLaunchedFromBubble()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mLaunchedFromBubble:Z

    .line 5118
    iput-object p1, p0, Lcom/android/server/wm/ActivityRecord;->mPendingOptions:Landroid/app/ActivityOptions;

    .line 5119
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getAnimationType()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_16

    .line 5120
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getRemoteAnimationAdapter()Landroid/view/RemoteAnimationAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mPendingRemoteAnimation:Landroid/view/RemoteAnimationAdapter;

    .line 5122
    :cond_16
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getRemoteTransition()Landroid/window/RemoteTransition;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/ActivityRecord;->mPendingRemoteTransition:Landroid/window/RemoteTransition;

    return-void
.end method

.method public setOverrideGender(Landroid/content/res/Configuration;I)Z
    .registers 4

    .line 8254
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGrammaticalManagerInternal:Lcom/android/server/grammaticalinflection/GrammaticalInflectionManagerInternal;

    .line 8255
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result p0

    .line 8254
    invoke-static {p1, p2, v0, p0}, Lcom/android/server/wm/WindowProcessController;->applyConfigGenderOverride(Landroid/content/res/Configuration;ILcom/android/server/grammaticalinflection/GrammaticalInflectionManagerInternal;I)Z

    move-result p0

    return p0
.end method

.method public setPictureInPictureParams(Landroid/app/PictureInPictureParams;)V
    .registers 3

    .line 9384
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->pictureInPictureArgs:Landroid/app/PictureInPictureParams;

    invoke-virtual {v0, p1}, Landroid/app/PictureInPictureParams;->copyOnlySet(Landroid/app/PictureInPictureParams;)V

    .line 9385
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRecord;->adjustPictureInPictureParamsIfNeeded(Landroid/graphics/Rect;)V

    .line 9386
    sget-object p1, Landroid/window/DesktopExperienceFlags;->ENABLE_PIP_PARAMS_UPDATE_NOTIFICATION_BUGFIX:Landroid/window/DesktopExperienceFlags;

    invoke-virtual {p1}, Landroid/window/DesktopExperienceFlags;->isTrue()Z

    move-result p1

    if-eqz p1, :cond_1c

    .line 9387
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->onPictureInPictureParamsChanged()V

    return-void

    .line 9389
    :cond_1c
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->onPictureInPictureParamsChanged()V

    return-void
.end method

.method public setProcess(Lcom/android/server/wm/WindowProcessController;)V
    .registers 4

    .line 2162
    iput-object p1, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 2163
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getRootActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    if-ne v0, p0, :cond_13

    .line 2165
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/Task;->setRootProcess(Lcom/android/server/wm/WindowProcessController;)V

    .line 2167
    :cond_13
    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowProcessController;->addActivityIfNeeded(Lcom/android/server/wm/ActivityRecord;)V

    .line 2168
    invoke-static {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getInputDispatchingTimeoutMillisLocked(Lcom/android/server/wm/ActivityRecord;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wm/ActivityRecord;->mInputDispatchingTimeoutMillis:J

    .line 2172
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object p0

    if-eqz p0, :cond_25

    .line 2174
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->sendTaskFragmentInfoChanged()V

    :cond_25
    return-void
.end method

.method public setRecentsScreenshotEnabled(Z)V
    .registers 2

    .line 5666
    iput-boolean p1, p0, Lcom/android/server/wm/ActivityRecord;->mEnableRecentsScreenshot:Z

    return-void
.end method

.method public setRequestedOrientation(I)V
    .registers 9

    .line 7379
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatController;->getOrientationPolicy()Lcom/android/server/wm/AppCompatOrientationPolicy;

    move-result-object v0

    .line 7380
    invoke-virtual {v0, p1}, Lcom/android/server/wm/AppCompatOrientationPolicy;->shouldIgnoreRequestedOrientation(I)Z

    move-result v0

    if-eqz v0, :cond_d

    return-void

    .line 7383
    :cond_d
    iget v0, p0, Lcom/android/server/wm/ActivityRecord;->mPendingRelaunchCount:I

    const/4 v1, 0x0

    .line 7386
    invoke-virtual {p0, v1, p1}, Lcom/android/server/wm/ActivityRecord;->getRequestedConfigurationOrientation(ZI)I

    move-result v2

    .line 7387
    invoke-virtual {p0, v1}, Lcom/android/server/wm/ActivityRecord;->getRequestedConfigurationOrientation(Z)I

    move-result v3

    if-eq v2, v3, :cond_23

    .line 7390
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    invoke-virtual {v2}, Lcom/android/server/wm/AppCompatController;->getSizeCompatModePolicy()Lcom/android/server/wm/AppCompatSizeCompatModePolicy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->clearSizeCompatModeAttributes()V

    .line 7392
    :cond_23
    sget-object v2, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_ORIENTATION_enabled:[Z

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_43

    invoke-static {p1}, Landroid/content/pm/ActivityInfo;->screenOrientationToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v5, -0x7f5ed8954e91c6aaL

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v4, v5, v6, v1, v2}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 7395
    :cond_43
    invoke-virtual {p0, p1, p0}, Lcom/android/server/wm/WindowContainer;->setOrientation(ILcom/android/server/wm/WindowContainer;)I

    move-result v2

    if-eq v2, p1, :cond_76

    .line 7397
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRecord;->isRestrictedFixedOrientation(I)Z

    move-result v2

    if-eqz v2, :cond_76

    .line 7398
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring requested fixed orientation "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7399
    invoke-static {p1}, Landroid/content/pm/ActivityInfo;->screenOrientationToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " since target sdk 36"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 7398
    const-string v3, "ActivityTaskManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7405
    :cond_76
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getMergedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->mLastReportedConfiguration:Landroid/util/MergedConfiguration;

    .line 7406
    invoke-virtual {v3}, Landroid/util/MergedConfiguration;->getMergedConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    .line 7405
    invoke-virtual {v2, v3}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v2

    if-nez v2, :cond_a6

    .line 7407
    invoke-virtual {p0, v1}, Lcom/android/server/wm/ActivityRecord;->ensureActivityConfiguration(Z)Z

    .line 7408
    iget v1, p0, Lcom/android/server/wm/ActivityRecord;->mPendingRelaunchCount:I

    if-le v1, v0, :cond_97

    .line 7409
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatController;->getOrientationOverrides()Lcom/android/server/wm/AppCompatOrientationOverrides;

    move-result-object v0

    const/4 v1, 0x1

    .line 7410
    invoke-virtual {v0, v1}, Lcom/android/server/wm/AppCompatOrientationOverrides;->setRelaunchingAfterRequestedOrientationChanged(Z)V

    .line 7412
    :cond_97
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/TransitionController;->inPlayingTransition(Lcom/android/server/wm/WindowContainer;)Z

    move-result v0

    if-eqz v0, :cond_a6

    .line 7413
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    iget-object v0, v0, Lcom/android/server/wm/TransitionController;->mValidateActivityCompat:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7417
    :cond_a6
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    iget v1, v1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyActivityRequestedOrientationChanged(II)V

    .line 7420
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayRotation()Lcom/android/server/wm/DisplayRotation;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayRotation;->onSetRequestedOrientation()V

    return-void
.end method

.method public setSavedState(Landroid/os/Bundle;)V
    .registers 2

    .line 1339
    iput-object p1, p0, Lcom/android/server/wm/ActivityRecord;->mIcicle:Landroid/os/Bundle;

    if-eqz p1, :cond_6

    const/4 p1, 0x1

    goto :goto_7

    :cond_6
    const/4 p1, 0x0

    .line 1340
    :goto_7
    iput-boolean p1, p0, Lcom/android/server/wm/ActivityRecord;->mHaveState:Z

    return-void
.end method

.method public setShouldDockBigOverlays(Z)V
    .registers 2

    .line 9394
    iput-boolean p1, p0, Lcom/android/server/wm/ActivityRecord;->shouldDockBigOverlays:Z

    .line 9395
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->onShouldDockBigOverlaysChanged()V

    return-void
.end method

.method public setShowWhenLocked(Z)V
    .registers 3

    .line 4806
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mShowWhenLocked:Z

    if-eq v0, p1, :cond_b

    .line 4807
    iput-boolean p1, p0, Lcom/android/server/wm/ActivityRecord;->mShowWhenLocked:Z

    .line 4808
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->notifyKeyguardFlagsChanged()V

    :cond_b
    return-void
.end method

.method public setSizeConfigurations(Landroid/window/SizeConfigurationBuckets;)V
    .registers 2

    .line 1370
    iput-object p1, p0, Lcom/android/server/wm/ActivityRecord;->mSizeConfigurations:Landroid/window/SizeConfigurationBuckets;

    return-void
.end method

.method public setState(Lcom/android/server/wm/ActivityRecord$State;Ljava/lang/String;)V
    .registers 11

    .line 5705
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_STATES_enabled:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_27

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityRecord$State;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_STATES:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v6, -0x5f634207b38ec40eL    # -1.371956168164014E-151

    filled-new-array {v0, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v5, v6, v7, v1, v0}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 5708
    :cond_27
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityRecord$State;

    if-ne p1, v0, :cond_44

    .line 5710
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_STATES_enabled:[Z

    aget-boolean p0, p0, v1

    if-eqz p0, :cond_ed

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_STATES:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v2, 0x3d9436bd9a6c341fL    # 4.5960929618198E-12

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, v2, v3, v1, p0}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    return-void

    .line 5715
    :cond_44
    iput-object p1, p0, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityRecord$State;

    .line 5717
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v2

    if-eqz v2, :cond_53

    .line 5718
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v2

    invoke-virtual {v2, p0, p1, p2}, Lcom/android/server/wm/TaskFragment;->onActivityStateChanged(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord$State;Ljava/lang/String;)V

    .line 5724
    :cond_53
    sget-object p2, Lcom/android/server/wm/ActivityRecord$State;->STOPPING:Lcom/android/server/wm/ActivityRecord$State;

    if-ne p1, p2, :cond_7c

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isSleeping()Z

    move-result p2

    if-nez p2, :cond_7c

    .line 5725
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object p2

    if-nez p2, :cond_7c

    .line 5726
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Attempted to notify stopping on non-existing app token: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WindowManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 5731
    :cond_7c
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->updateVisibleForServiceConnection()V

    .line 5732
    iget-object p2, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eqz p2, :cond_88

    .line 5733
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v2, p2, v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->onProcessActivityStateChanged(Lcom/android/server/wm/WindowProcessController;Z)V

    .line 5736
    :cond_88
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_103

    const/4 v2, 0x2

    if-eq p1, v2, :cond_f9

    const/4 v3, 0x4

    if-eq p1, v3, :cond_ee

    const/4 v3, 0x5

    if-eq p1, v3, :cond_df

    const/4 v0, 0x6

    if-eq p1, v0, :cond_ce

    const/16 v0, 0x8

    if-eq p1, v0, :cond_be

    const/16 v0, 0x9

    if-eq p1, v0, :cond_a4

    goto :goto_ed

    .line 5771
    :cond_a4
    iget-object p1, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eqz p1, :cond_b5

    iget-boolean p1, p0, Lcom/android/server/wm/ActivityRecord;->mVisible:Z

    if-nez p1, :cond_b0

    iget-boolean p1, p0, Lcom/android/server/wm/WindowContainer;->mVisibleRequested:Z

    if-eqz p1, :cond_b5

    .line 5773
    :cond_b0
    iget-object p1, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p1, p0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->updateBatteryStats(Lcom/android/server/wm/ActivityRecord;Z)V

    .line 5775
    :cond_b5
    iget-object p1, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    const/16 v0, 0x18

    invoke-virtual {p1, p0, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->updateActivityUsageStats(Lcom/android/server/wm/ActivityRecord;I)V

    .line 5776
    iput-boolean v1, p0, Lcom/android/server/wm/ActivityRecord;->idle:Z

    .line 5779
    :cond_be
    iget-object p1, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eqz p1, :cond_ed

    invoke-virtual {p1}, Lcom/android/server/wm/WindowProcessController;->hasActivities()Z

    move-result p1

    if-nez p1, :cond_ed

    .line 5783
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {p0, p2, v1, p2, v1}, Lcom/android/server/wm/WindowProcessController;->updateProcessInfo(ZZZZ)V

    return-void

    .line 5765
    :cond_ce
    iget-object p1, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    const/16 p2, 0x17

    invoke-virtual {p1, p0, p2}, Lcom/android/server/wm/ActivityTaskManagerService;->updateActivityUsageStats(Lcom/android/server/wm/ActivityRecord;I)V

    .line 5766
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz p1, :cond_ed

    .line 5767
    iget-object p1, p1, Lcom/android/server/wm/DisplayContent;->mUnknownAppVisibilityController:Lcom/android/server/wm/UnknownAppVisibilityController;

    invoke-virtual {p1, p0}, Lcom/android/server/wm/UnknownAppVisibilityController;->appRemovedOrHidden(Lcom/android/server/wm/ActivityRecord;)V

    return-void

    .line 5759
    :cond_df
    sget-object p1, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    if-ne v0, p1, :cond_ed

    .line 5760
    iget-object p1, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p1, p0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->updateBatteryStats(Lcom/android/server/wm/ActivityRecord;Z)V

    .line 5761
    iget-object p1, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p1, p0, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->updateActivityUsageStats(Lcom/android/server/wm/ActivityRecord;I)V

    :cond_ed
    :goto_ed
    return-void

    .line 5752
    :cond_ee
    iget-object p1, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p1, p0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->updateBatteryStats(Lcom/android/server/wm/ActivityRecord;Z)V

    .line 5753
    iget-object p1, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p1, p0, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->updateActivityUsageStats(Lcom/android/server/wm/ActivityRecord;I)V

    return-void

    .line 5738
    :cond_f9
    iget-object p1, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p1, p0, p2}, Lcom/android/server/wm/ActivityTaskManagerService;->updateBatteryStats(Lcom/android/server/wm/ActivityRecord;Z)V

    .line 5739
    iget-object p1, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p1, p0, p2}, Lcom/android/server/wm/ActivityTaskManagerService;->updateActivityUsageStats(Lcom/android/server/wm/ActivityRecord;I)V

    .line 5744
    :cond_103
    iget-object p1, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eqz p1, :cond_10a

    .line 5745
    invoke-virtual {p1, v1, p2, p2, p2}, Lcom/android/server/wm/WindowProcessController;->updateProcessInfo(ZZZZ)V

    .line 5749
    :cond_10a
    iget-object p1, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    new-instance p2, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda19;

    invoke-direct {p2, p0}, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda19;-><init>(Lcom/android/server/wm/ActivityRecord;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setSurfaceControl(Landroid/view/SurfaceControl;)V
    .registers 2

    .line 1581
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->setSurfaceControl(Landroid/view/SurfaceControl;)V

    if-eqz p1, :cond_b

    const/4 p1, 0x0

    .line 1583
    iput p1, p0, Lcom/android/server/wm/ActivityRecord;->mLastDropInputMode:I

    .line 1584
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->updateUntrustedEmbeddingInputProtection()V

    :cond_b
    return-void
.end method

.method public setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V
    .registers 6

    .line 6888
    invoke-virtual {p1}, Landroid/app/ActivityManager$TaskDescription;->getIconFilename()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_33

    .line 6889
    invoke-virtual {p1}, Landroid/app/ActivityManager$TaskDescription;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_33

    .line 6890
    iget-wide v1, p0, Lcom/android/server/wm/ActivityRecord;->createTime:J

    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    iget v3, v3, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {v1, v2, v3}, Lcom/android/server/wm/ActivityRecord;->createImageFilename(JI)Ljava/lang/String;

    move-result-object v1

    .line 6891
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    iget v3, v3, Lcom/android/server/wm/Task;->mUserId:I

    invoke-static {v3}, Lcom/android/server/wm/TaskPersister;->getUserImagesDir(I)Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 6893
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 6894
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getRecentTasks()Lcom/android/server/wm/RecentTasks;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/android/server/wm/RecentTasks;->saveImage(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 6895
    invoke-virtual {p1, v1}, Landroid/app/ActivityManager$TaskDescription;->setIconFilename(Ljava/lang/String;)V

    .line 6897
    :cond_33
    iput-object p1, p0, Lcom/android/server/wm/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 6898
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->updateTaskDescription()V

    return-void
.end method

.method public final setTaskHasBeenVisible()V
    .registers 3

    .line 6540
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getHasBeenVisible()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 6544
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->inTransition()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_15

    .line 6547
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/Task;->setDeferTaskAppear(Z)V

    .line 6549
    :cond_15
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    invoke-virtual {p0, v1}, Lcom/android/server/wm/Task;->setHasBeenVisible(Z)V

    return-void
.end method

.method public setTaskOverlay(Z)V
    .registers 2

    .line 9251
    iput-boolean p1, p0, Lcom/android/server/wm/ActivityRecord;->mTaskOverlay:Z

    .line 9252
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->setAlwaysOnTop(Z)V

    return-void
.end method

.method public setTaskToAffiliateWith(Lcom/android/server/wm/Task;)V
    .registers 4

    .line 2927
    iget v0, p0, Lcom/android/server/wm/ActivityRecord;->launchMode:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_d

    const/4 v1, 0x2

    if-eq v0, v1, :cond_d

    .line 2928
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->setTaskToAffiliateWith(Lcom/android/server/wm/Task;)V

    :cond_d
    return-void
.end method

.method public setTurnScreenOn(Z)V
    .registers 2

    .line 9185
    iput-boolean p1, p0, Lcom/android/server/wm/ActivityRecord;->mTurnScreenOn:Z

    return-void
.end method

.method public setVisibility(Z)V
    .registers 3

    .line 5436
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-nez v0, :cond_1f

    .line 5437
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Attempted to set visibility of non-existing app token: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WindowManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 5440
    :cond_1f
    iget-boolean v0, p0, Lcom/android/server/wm/WindowContainer;->mVisibleRequested:Z

    if-ne p1, v0, :cond_2e

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mVisible:Z

    if-ne p1, v0, :cond_2e

    invoke-virtual {p0}, Lcom/android/server/wm/WindowToken;->isClientVisible()Z

    move-result v0

    if-ne p1, v0, :cond_2e

    return-void

    .line 5443
    :cond_2e
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRecord;->setVisibilityInner(Z)V

    .line 5444
    iget-object p1, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->addWindowLayoutReasons(I)V

    .line 5446
    iget-object p1, p0, Lcom/android/server/wm/ActivityRecord;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityTaskSupervisor;->getActivityMetricsLogger()Lcom/android/server/wm/ActivityMetricsLogger;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/server/wm/ActivityMetricsLogger;->notifyVisibilityChanged(Lcom/android/server/wm/ActivityRecord;)V

    .line 5447
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mAppVisibilitiesChangedSinceLastPause:Z

    return-void
.end method

.method public final setVisibilityInner(Z)V
    .registers 10

    if-nez p1, :cond_8

    .line 5458
    iget-boolean v0, p0, Lcom/android/server/wm/WindowContainer;->mVisibleRequested:Z

    if-nez v0, :cond_8

    goto/16 :goto_115

    .line 5462
    :cond_8
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_APP_TRANSITIONS_enabled:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_40

    iget-object v0, p0, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isVisible()Z

    move-result v2

    iget-boolean v3, p0, Lcom/android/server/wm/WindowContainer;->mVisibleRequested:Z

    const/4 v4, 0x6

    invoke-static {v4}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_APP_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    filled-new-array {v0, v6, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    const-wide v2, 0x38028419cd1a3e6cL    # 6.801711054826395E-39

    const/16 v4, 0xfc

    invoke-static {v5, v2, v3, v4, v0}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 5470
    :cond_40
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_9b

    .line 5471
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->isCollecting()Z

    move-result v0

    if-eqz v0, :cond_59

    .line 5473
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/TransitionController;->collect(Lcom/android/server/wm/WindowContainer;)V

    move v0, v1

    move v3, v2

    goto :goto_9d

    .line 5479
    :cond_59
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/TransitionController;->inFinishingTransition(Lcom/android/server/wm/WindowContainer;)Z

    move-result v0

    if-nez v0, :cond_99

    if-eqz p1, :cond_7b

    .line 5482
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->isSleeping()Z

    move-result v3

    if-eqz v3, :cond_71

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->canShowWhenLocked()Z

    move-result v3

    if-eqz v3, :cond_99

    .line 5483
    :cond_71
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 5484
    invoke-static {v2, v2}, Landroid/os/Debug;->getCallers(II)Ljava/lang/String;

    move-result-object v4

    .line 5483
    invoke-virtual {v3, p0, v4}, Lcom/android/server/wm/TransitionController;->onVisibleWithoutCollectingTransition(Lcom/android/server/wm/WindowContainer;Ljava/lang/String;)V

    goto :goto_99

    .line 5486
    :cond_7b
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->isSleeping()Z

    move-result v3

    if-nez v3, :cond_99

    .line 5487
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Set invisible without transition "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ActivityTaskManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_99
    :goto_99
    move v3, v1

    goto :goto_9d

    :cond_9b
    move v0, v1

    move v3, v0

    .line 5493
    :goto_9d
    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mBackNavigationController:Lcom/android/server/wm/BackNavigationController;

    invoke-virtual {v4, p0, p1}, Lcom/android/server/wm/BackNavigationController;->onAppVisibilityChanged(Lcom/android/server/wm/ActivityRecord;Z)V

    .line 5495
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRecord;->setVisibleRequested(Z)Z

    if-nez p1, :cond_bb

    .line 5505
    iget-boolean v4, p0, Lcom/android/server/wm/ActivityRecord;->startingMoved:Z

    if-eqz v4, :cond_ea

    iget-boolean v4, p0, Lcom/android/server/wm/ActivityRecord;->firstWindowDrawn:Z

    if-nez v4, :cond_ea

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->hasChild()Z

    move-result v4

    if-eqz v4, :cond_ea

    .line 5506
    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowToken;->setClientVisible(Z)V

    goto :goto_ea

    .line 5509
    :cond_bb
    iput-boolean v1, p0, Lcom/android/server/wm/ActivityRecord;->startingMoved:Z

    .line 5512
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_c7

    iget-boolean v4, p0, Lcom/android/server/wm/ActivityRecord;->mAppStopped:Z

    if-eqz v4, :cond_ca

    .line 5513
    :cond_c7
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->clearAllDrawn()V

    .line 5520
    :cond_ca
    invoke-virtual {p0, v2}, Lcom/android/server/wm/WindowToken;->setClientVisible(Z)V

    .line 5522
    sget-object v4, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_ADD_REMOVE_enabled:[Z

    aget-boolean v4, v4, v1

    if-eqz v4, :cond_e5

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_ADD_REMOVE:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v6, 0x17fb359aba2e3d2aL

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v5, v6, v7, v1, v4}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 5523
    :cond_e5
    iput-boolean v1, p0, Lcom/android/server/wm/ActivityRecord;->mAppStopped:Z

    .line 5526
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->transferStartingWindowFromHiddenAboveTokenIfNeeded()V

    .line 5529
    :cond_ea
    :goto_ea
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->requestUpdateWallpaperIfNeeded()V

    if-eqz v3, :cond_11f

    if-nez p1, :cond_116

    .line 5536
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {p1, p0}, Lcom/android/server/wm/TransitionController;->inPlayingTransition(Lcom/android/server/wm/WindowContainer;)Z

    move-result p1

    if-eqz p1, :cond_115

    .line 5537
    iget p1, p0, Lcom/android/server/wm/ActivityRecord;->mTransitionChangeFlags:I

    const v0, 0x8000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/android/server/wm/ActivityRecord;->mTransitionChangeFlags:I

    .line 5538
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    iget-object p1, p1, Lcom/android/server/wm/TransitionController;->mFinishingTransition:Lcom/android/server/wm/Transition;

    if-eqz p1, :cond_115

    .line 5539
    invoke-virtual {p1, p0}, Lcom/android/server/wm/Transition;->isTransientLaunch(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p1

    if-eqz p1, :cond_115

    .line 5540
    iget p1, p0, Lcom/android/server/wm/ActivityRecord;->mTransitionChangeFlags:I

    const v0, 0x48000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/android/server/wm/ActivityRecord;->mTransitionChangeFlags:I

    :cond_115
    :goto_115
    return-void

    .line 5544
    :cond_116
    iget p1, p0, Lcom/android/server/wm/ActivityRecord;->mTransitionChangeFlags:I

    const v0, -0x8001

    and-int/2addr p1, v0

    iput p1, p0, Lcom/android/server/wm/ActivityRecord;->mTransitionChangeFlags:I

    return-void

    :cond_11f
    if-eqz v0, :cond_129

    .line 5551
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    iget-object p1, p1, Lcom/android/server/wm/TransitionController;->mValidateCommitVis:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 5555
    :cond_129
    invoke-virtual {p0, p1, v2}, Lcom/android/server/wm/ActivityRecord;->commitVisibility(ZZ)V

    .line 5556
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->updateReportedVisibilityLocked()V

    return-void
.end method

.method public setVisible(Z)V
    .registers 4

    .line 5370
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mVisible:Z

    if-eq p1, v0, :cond_13

    .line 5371
    iput-boolean p1, p0, Lcom/android/server/wm/ActivityRecord;->mVisible:Z

    .line 5372
    iget-object p1, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eqz p1, :cond_10

    .line 5373
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->onProcessActivityStateChanged(Lcom/android/server/wm/WindowProcessController;Z)V

    .line 5375
    :cond_10
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->scheduleAnimation()V

    :cond_13
    return-void
.end method

.method public setVisibleRequested(Z)Z
    .registers 5

    .line 5394
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->setVisibleRequested(Z)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    xor-int/lit8 v0, p1, 0x1

    .line 5395
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowToken;->setInsetsFrozen(Z)V

    .line 5396
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->updateVisibleForServiceConnection()V

    .line 5397
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eqz v0, :cond_19

    .line 5398
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->onProcessActivityStateChanged(Lcom/android/server/wm/WindowProcessController;Z)V

    .line 5400
    :cond_19
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->logAppCompatState()V

    const/4 v0, 0x1

    if-nez p1, :cond_5c

    .line 5402
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getImeInputTarget()Lcom/android/server/wm/InputTarget;

    move-result-object p1

    if-eqz p1, :cond_42

    .line 5403
    invoke-interface {p1}, Lcom/android/server/wm/InputTarget;->getWindowState()Lcom/android/server/wm/WindowState;

    move-result-object v2

    if-eqz v2, :cond_42

    .line 5404
    invoke-interface {p1}, Lcom/android/server/wm/InputTarget;->getWindowState()Lcom/android/server/wm/WindowState;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-ne p1, p0, :cond_42

    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p1, p1, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-eqz p1, :cond_42

    .line 5406
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_42

    move v1, v0

    :cond_42
    iput-boolean v1, p0, Lcom/android/server/wm/ActivityRecord;->mLastImeShown:Z

    .line 5407
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->finishOrAbortReplacingWindow()V

    .line 5408
    iget-boolean p1, p0, Lcom/android/server/wm/ActivityRecord;->firstWindowDrawn:Z

    if-nez p1, :cond_5c

    iget-object p1, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-eqz p1, :cond_5c

    iget-object p1, p1, Lcom/android/server/wm/Task;->mSharedStartingData:Lcom/android/server/wm/StartingData;

    if-eqz p1, :cond_5c

    .line 5409
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getSharedStartingWindowOwnerIfTaskDrawn()Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    if-eqz p0, :cond_5c

    .line 5411
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->removeStartingWindow()V

    :cond_5c
    return v0
.end method

.method public setVoiceSessionLocked(Landroid/service/voice/IVoiceInteractionSession;)V
    .registers 2

    .line 6953
    iput-object p1, p0, Lcom/android/server/wm/ActivityRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    const/4 p1, 0x0

    .line 6954
    iput-boolean p1, p0, Lcom/android/server/wm/ActivityRecord;->pendingVoiceInteractionStart:Z

    return-void
.end method

.method public setWillCloseOrEnterPip(Z)V
    .registers 2

    .line 3369
    iput-boolean p1, p0, Lcom/android/server/wm/ActivityRecord;->mWillCloseOrEnterPip:Z

    return-void
.end method

.method public final shouldBeResumed(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 3

    .line 6136
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRecord;->shouldMakeActive(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isFocusable()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 6137
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/TaskFragment;->getVisibility(Lcom/android/server/wm/ActivityRecord;)I

    move-result p1

    if-nez p1, :cond_1e

    .line 6139
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->canResumeByCompat()Z

    move-result p0

    if-eqz p0, :cond_1e

    const/4 p0, 0x1

    return p0

    :cond_1e
    const/4 p0, 0x0

    return p0
.end method

.method public shouldBeVisible()Z
    .registers 2

    const/4 v0, 0x0

    .line 5985
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->shouldBeVisible(Z)Z

    move-result p0

    return p0
.end method

.method public shouldBeVisible(Z)Z
    .registers 5

    .line 5989
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    const/4 v2, 0x0

    .line 5994
    invoke-virtual {v0, v2}, Lcom/android/server/wm/TaskFragment;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 5995
    invoke-virtual {v0, p0}, Lcom/android/server/wm/Task;->getOccludingActivityAbove(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_16

    :cond_15
    const/4 v1, 0x1

    .line 5996
    :cond_16
    invoke-virtual {p0, v1, p1}, Lcom/android/server/wm/ActivityRecord;->shouldBeVisible(ZZ)Z

    move-result p0

    return p0
.end method

.method public final shouldBeVisible(ZZ)Z
    .registers 3

    .line 5914
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRecord;->updateVisibilityIgnoringKeyguard(Z)V

    if-eqz p2, :cond_8

    .line 5917
    iget-boolean p0, p0, Lcom/android/server/wm/ActivityRecord;->visibleIgnoringKeyguard:Z

    return p0

    .line 5920
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->shouldBeVisibleUnchecked()Z

    move-result p0

    return p0
.end method

.method public shouldBeVisibleUnchecked()Z
    .registers 4

    .line 5924
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4f

    .line 5925
    iget-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->visibleIgnoringKeyguard:Z

    if-nez v2, :cond_c

    goto :goto_4f

    .line 5935
    :cond_c
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->isForceHidden()Z

    move-result v0

    if-eqz v0, :cond_19

    return v1

    .line 5940
    :cond_19
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->hasOverlayOverUntrustedModeEmbedded()Z

    move-result v0

    if-eqz v0, :cond_20

    return v1

    .line 5945
    :cond_20
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPresentationController:Lcom/android/server/wm/PresentationController;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/server/wm/PresentationController;->shouldOccludeActivities(I)Z

    move-result v0

    if-eqz v0, :cond_2f

    return v1

    .line 5952
    :cond_2f
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->isSleeping()Z

    move-result v0

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->isKeyguardGoingAway()Z

    move-result v0

    if-nez v0, :cond_44

    .line 5953
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->canTurnScreenOn()Z

    move-result p0

    return p0

    .line 5955
    :cond_44
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->getKeyguardController()Lcom/android/server/wm/KeyguardController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/wm/KeyguardController;->checkKeyguardVisibility(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0

    :cond_4f
    :goto_4f
    return v1
.end method

.method public shouldCreateAppCompatDisplayInsets()Z
    .registers 1

    .line 7556
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatController;->getSizeCompatModePolicy()Lcom/android/server/wm/AppCompatSizeCompatModePolicy;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->shouldCreateAppCompatDisplayInsets()Z

    move-result p0

    return p0
.end method

.method public shouldIgnoreOrientationRequests()Z
    .registers 3

    .line 7447
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mAppActivityEmbeddingSplitsEnabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_28

    .line 7448
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getOverrideOrientation()I

    move-result v0

    invoke-static {v0}, Landroid/content/pm/ActivityInfo;->isFixedOrientationPortrait(I)Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 7449
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_18

    goto :goto_28

    .line 7453
    :cond_18
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v0, 0x258

    if-lt p0, v0, :cond_28

    const/4 p0, 0x1

    return p0

    :cond_28
    :goto_28
    return v1
.end method

.method public shouldMakeActive(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 8

    .line 6166
    sget-object v1, Lcom/android/server/wm/ActivityRecord$State;->STARTED:Lcom/android/server/wm/ActivityRecord$State;

    sget-object v2, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    sget-object v3, Lcom/android/server/wm/ActivityRecord$State;->PAUSED:Lcom/android/server/wm/ActivityRecord$State;

    sget-object v4, Lcom/android/server/wm/ActivityRecord$State;->STOPPED:Lcom/android/server/wm/ActivityRecord$State;

    sget-object v5, Lcom/android/server/wm/ActivityRecord$State;->STOPPING:Lcom/android/server/wm/ActivityRecord$State;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;Lcom/android/server/wm/ActivityRecord$State;Lcom/android/server/wm/ActivityRecord$State;Lcom/android/server/wm/ActivityRecord$State;Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result p0

    const/4 v1, 0x0

    if-eqz p0, :cond_49

    .line 6169
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/wm/Task;->mTranslucentActivityWaiting:Lcom/android/server/wm/ActivityRecord;

    if-eqz p0, :cond_1b

    goto :goto_49

    :cond_1b
    if-ne v0, p1, :cond_1e

    return v1

    .line 6177
    :cond_1e
    iget-object p0, v0, Lcom/android/server/wm/ActivityRecord;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->readyToResume()Z

    move-result p0

    if-nez p0, :cond_27

    return v1

    .line 6182
    :cond_27
    iget-boolean p0, v0, Lcom/android/server/wm/WindowContainer;->mLaunchTaskBehind:Z

    if-eqz p0, :cond_2c

    return v1

    .line 6189
    :cond_2c
    iget-object p0, v0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->hasChild(Lcom/android/server/wm/WindowContainer;)Z

    move-result p0

    if-eqz p0, :cond_41

    .line 6192
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    if-ne p0, v0, :cond_40

    const/4 p0, 0x1

    return p0

    :cond_40
    return v1

    .line 6190
    :cond_41
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Activity not found in its task"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_49
    :goto_49
    return v1
.end method

.method public shouldPauseActivity(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 3

    .line 6113
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRecord;->shouldMakeActive(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p1

    if-eqz p1, :cond_1c

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isFocusable()Z

    move-result p1

    if-nez p1, :cond_1c

    sget-object p1, Lcom/android/server/wm/ActivityRecord$State;->PAUSING:Lcom/android/server/wm/ActivityRecord$State;

    sget-object v0, Lcom/android/server/wm/ActivityRecord$State;->PAUSED:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result p1

    if-nez p1, :cond_1c

    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->results:Ljava/util/ArrayList;

    if-nez p0, :cond_1c

    const/4 p0, 0x1

    return p0

    :cond_1c
    const/4 p0, 0x0

    return p0
.end method

.method public final shouldRelaunchLocked(ILandroid/content/res/Configuration;)Z
    .registers 8

    .line 8671
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0}, Landroid/content/pm/ActivityInfo;->getRealConfigChanged()I

    move-result v0

    const/high16 v1, 0x8000000

    and-int/2addr v1, v0

    const/4 v2, 0x0

    if-eqz v1, :cond_d

    return v2

    .line 8681
    :cond_d
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/ActivityRecord;->onlyVrUiModeChanged(ILandroid/content/res/Configuration;)Z

    move-result v1

    .line 8687
    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0x1a

    if-ge v3, v4, :cond_23

    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->requestedVrComponent:Landroid/content/ComponentName;

    if-eqz v3, :cond_23

    if-eqz v1, :cond_23

    or-int/lit16 v0, v0, 0x200

    .line 8695
    :cond_23
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowManagerService;->mSkipActivityRelaunchWhenDocking:Z

    if-eqz v1, :cond_37

    invoke-virtual {p0, p2}, Lcom/android/server/wm/ActivityRecord;->onlyDeskInUiModeChanged(Landroid/content/res/Configuration;)Z

    move-result p2

    if-eqz p2, :cond_37

    .line 8696
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->hasDeskResources()Z

    move-result p2

    if-nez p2, :cond_37

    or-int/lit16 v0, v0, 0x200

    .line 8701
    :cond_37
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatController;->getDisplayCompatModePolicy()Lcom/android/server/wm/AppCompatDisplayCompatModePolicy;

    move-result-object p0

    .line 8702
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatDisplayCompatModePolicy;->getDisplayCompatModeConfigMask()I

    move-result p0

    or-int/2addr p0, v0

    not-int p0, p0

    and-int/2addr p0, p1

    if-eqz p0, :cond_48

    const/4 p0, 0x1

    return p0

    :cond_48
    return v2
.end method

.method public shouldResumeActivity(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 2

    .line 6127
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRecord;->shouldBeResumed(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p1

    if-eqz p1, :cond_10

    sget-object p1, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result p0

    if-nez p0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method public shouldSendCompatFakeFocus()Z
    .registers 1

    .line 9543
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatController;->getFocusOverrides()Lcom/android/server/wm/AppCompatFocusOverrides;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatFocusOverrides;->shouldSendFakeFocus()Z

    move-result p0

    return p0
.end method

.method public final shouldStartActivity()Z
    .registers 2

    .line 6149
    iget-boolean v0, p0, Lcom/android/server/wm/WindowContainer;->mVisibleRequested:Z

    if-eqz v0, :cond_16

    sget-object v0, Lcom/android/server/wm/ActivityRecord$State;->STOPPED:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v0

    if-nez v0, :cond_14

    sget-object v0, Lcom/android/server/wm/ActivityRecord$State;->STOPPING:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result p0

    if-eqz p0, :cond_16

    :cond_14
    const/4 p0, 0x1

    return p0

    :cond_16
    const/4 p0, 0x0

    return p0
.end method

.method public final shouldStartChangeTransition(Lcom/android/server/wm/TaskFragment;Lcom/android/server/wm/TaskFragment;)Z
    .registers 6

    const/4 v0, 0x0

    if-eqz p1, :cond_33

    if-eqz p2, :cond_33

    .line 1482
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->canStartChangeTransition()Z

    move-result v1

    if-nez v1, :cond_c

    goto :goto_33

    .line 1486
    :cond_c
    invoke-static {}, Lcom/android/server/wm/ActivityTaskManagerService;->isPip2ExperimentEnabled()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1b

    .line 1487
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result p0

    if-eqz p0, :cond_1b

    move p0, v2

    goto :goto_1c

    :cond_1b
    move p0, v0

    .line 1488
    :goto_1c
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->isOrganizedTaskFragment()Z

    move-result v1

    if-nez v1, :cond_25

    if-nez p0, :cond_25

    return v0

    .line 1494
    :cond_25
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/2addr p0, v2

    return p0

    :cond_33
    :goto_33
    return v0
.end method

.method public shouldUpdateConfigForDisplayChanged()Z
    .registers 2

    .line 8457
    iget v0, p0, Lcom/android/server/wm/ActivityRecord;->mLastReportedDisplayId:I

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result p0

    if-eq v0, p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public shouldUseAppThemeSnapshot()Z
    .registers 3

    .line 5678
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mEnableRecentsScreenshot:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_13

    new-instance v0, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda22;

    invoke-direct {v0}, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda22;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result p0

    if-eqz p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    return p0

    :cond_13
    :goto_13
    return v1
.end method

.method public final shouldUseSolidColorSplashScreen(Lcom/android/server/wm/ActivityRecord;ZLandroid/app/ActivityOptions;IZ)Z
    .registers 8

    const/4 v0, 0x1

    if-nez p1, :cond_e

    if-nez p2, :cond_e

    .line 7025
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    invoke-virtual {v1, p0}, Lcom/android/server/wm/WindowContainer;->getActivityAbove(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-eqz v1, :cond_e

    return v0

    :cond_e
    if-eqz p3, :cond_15

    .line 7032
    invoke-virtual {p3}, Landroid/app/ActivityOptions;->getSplashScreenStyle()I

    move-result p3

    goto :goto_16

    :cond_15
    const/4 p3, -0x1

    :goto_16
    if-nez p3, :cond_19

    return v0

    :cond_19
    const/4 v1, 0x0

    if-eq p3, v0, :cond_4a

    .line 7037
    invoke-virtual {p0, p4}, Lcom/android/server/wm/ActivityRecord;->isIconStylePreferred(I)Z

    move-result p3

    if-eqz p3, :cond_23

    goto :goto_4a

    .line 7043
    :cond_23
    iget p3, p0, Lcom/android/server/wm/ActivityRecord;->mLaunchSourceType:I

    const/4 p4, 0x3

    if-ne p3, p4, :cond_29

    return v0

    :cond_29
    if-nez p1, :cond_2f

    .line 7048
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->searchCandidateLaunchingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    :cond_2f
    if-eqz p1, :cond_34

    .line 7051
    iget-boolean p0, p1, Lcom/android/server/wm/ActivityRecord;->mSplashScreenStyleSolidColor:Z

    return p0

    .line 7052
    :cond_34
    iget p1, p0, Lcom/android/server/wm/ActivityRecord;->mLaunchSourceType:I

    const/4 p3, 0x2

    if-eq p1, p3, :cond_47

    iget p0, p0, Lcom/android/server/wm/ActivityRecord;->launchedFromUid:I

    const/16 p3, 0x7d0

    if-ne p0, p3, :cond_40

    goto :goto_47

    :cond_40
    if-ne p1, v0, :cond_46

    if-nez p2, :cond_45

    goto :goto_46

    :cond_45
    return v1

    :cond_46
    :goto_46
    return v0

    :cond_47
    :goto_47
    xor-int/lit8 p0, p5, 0x1

    return p0

    :cond_4a
    :goto_4a
    return v1
.end method

.method public showStartingWindow(Lcom/android/server/wm/ActivityRecord;ZZZLcom/android/server/wm/ActivityRecord;)V
    .registers 14

    .line 7092
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isProcessRunning()Z

    move-result v4

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/wm/ActivityRecord;->showStartingWindow(Lcom/android/server/wm/ActivityRecord;ZZZZLcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)V

    return-void
.end method

.method public showStartingWindow(Lcom/android/server/wm/ActivityRecord;ZZZZLcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)V
    .registers 19

    .line 7106
    iget-boolean v1, p0, Lcom/android/server/wm/ActivityRecord;->mTaskOverlay:Z

    if-eqz v1, :cond_5

    goto :goto_16

    :cond_5
    if-eqz p7, :cond_a

    move-object/from16 v3, p7

    goto :goto_d

    .line 7111
    :cond_a
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mPendingOptions:Landroid/app/ActivityOptions;

    move-object v3, v1

    :goto_d
    if-eqz v3, :cond_17

    .line 7113
    invoke-virtual {v3}, Landroid/app/ActivityOptions;->getAnimationType()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_17

    :goto_16
    return-void

    :cond_17
    const/4 v6, 0x0

    if-eqz p5, :cond_1f

    .line 7118
    invoke-virtual {p0, v3}, Lcom/android/server/wm/ActivityRecord;->getSplashscreenTheme(Landroid/app/ActivityOptions;)I

    move-result v1

    goto :goto_20

    :cond_1f
    move v1, v6

    .line 7119
    :goto_20
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/wm/ActivityRecord;->theme:I

    invoke-virtual {p0, p1, v2, v4, v1}, Lcom/android/server/wm/ActivityRecord;->evaluateStartingWindowTheme(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;II)I

    move-result v2

    move-object v0, p0

    move v5, p2

    move-object/from16 v1, p6

    move v4, v2

    move/from16 v2, p5

    .line 7122
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/ActivityRecord;->shouldUseSolidColorSplashScreen(Lcom/android/server/wm/ActivityRecord;ZLandroid/app/ActivityOptions;IZ)Z

    move-result v1

    move v2, v4

    iput-boolean v1, p0, Lcom/android/server/wm/ActivityRecord;->mSplashScreenStyleSolidColor:Z

    .line 7125
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityRecord$State;

    .line 7126
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    sget-object v3, Lcom/android/server/wm/ActivityRecord$State;->STARTED:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    const/4 v4, 0x1

    if-lt v1, v3, :cond_55

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    sget-object v3, Lcom/android/server/wm/ActivityRecord$State;->STOPPED:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    if-gt v1, v3, :cond_55

    move v8, v4

    goto :goto_56

    :cond_55
    move v8, v6

    :goto_56
    if-nez p2, :cond_69

    if-nez v8, :cond_69

    .line 7129
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    new-instance v3, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda18;

    invoke-direct {v3, p0}, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda18;-><init>(Lcom/android/server/wm/ActivityRecord;)V

    .line 7130
    invoke-virtual {v1, v3}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-nez v1, :cond_69

    move v1, v4

    goto :goto_6a

    :cond_69
    move v1, v6

    .line 7132
    :goto_6a
    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    if-nez p2, :cond_72

    if-eqz v1, :cond_71

    goto :goto_72

    :cond_71
    move v4, v6

    .line 7134
    :cond_72
    :goto_72
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->allowTaskSnapshot()Z

    move-result v7

    iget-boolean v9, p0, Lcom/android/server/wm/ActivityRecord;->mSplashScreenStyleSolidColor:Z

    iget-boolean v10, p0, Lcom/android/server/wm/ActivityRecord;->allDrawn:Z

    move-object v0, p0

    move v5, p3

    move v6, p4

    move-object v1, v3

    move-object v3, p1

    .line 7132
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/wm/ActivityRecord;->addStartingWindow(Ljava/lang/String;ILcom/android/server/wm/ActivityRecord;ZZZZZZZ)Z

    return-void
.end method

.method public showStartingWindow(Z)V
    .registers 10

    .line 6964
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    new-instance v1, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/wm/ActivityRecord;)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    move-object v2, p0

    move v5, p1

    .line 6966
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/ActivityRecord;->showStartingWindow(Lcom/android/server/wm/ActivityRecord;ZZZLcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public showSurfaceOnCreation()Z
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public showToCurrentUser()Z
    .registers 2

    .line 9266
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mShowForAllUsers:Z

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget p0, p0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-virtual {v0, p0}, Lcom/android/server/wm/WindowManagerService;->isUserVisible(I)Z

    move-result p0

    if-eqz p0, :cond_f

    goto :goto_11

    :cond_f
    const/4 p0, 0x0

    return p0

    :cond_11
    :goto_11
    const/4 p0, 0x1

    return p0
.end method

.method public startRelaunching()V
    .registers 3

    .line 4203
    iget v0, p0, Lcom/android/server/wm/ActivityRecord;->mPendingRelaunchCount:I

    if-nez v0, :cond_17

    .line 4204
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wm/ActivityRecord;->mRelaunchStartTime:J

    .line 4205
    iget-boolean v0, p0, Lcom/android/server/wm/WindowContainer;->mVisibleRequested:Z

    if-eqz v0, :cond_17

    .line 4206
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/wm/DisplayPolicy;->addRelaunchingApp(Lcom/android/server/wm/ActivityRecord;)V

    .line 4209
    :cond_17
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->clearAllDrawn()V

    .line 4211
    iget v0, p0, Lcom/android/server/wm/ActivityRecord;->mPendingRelaunchCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/wm/ActivityRecord;->mPendingRelaunchCount:I

    return-void
.end method

.method public stopIfPossible()V
    .registers 7

    .line 6360
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v0, :cond_ee

    .line 6363
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isNoHistory()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_50

    .line 6364
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->shouldSleepActivities()Z

    move-result v0

    if-nez v0, :cond_38

    .line 6365
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_STATES_enabled:[Z

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_2c

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_STATES:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v4, 0x68111dd5cb08319aL    # 1.9523303294450152E193

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v3, v4, v5, v2, v0}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 6366
    :cond_2c
    const-string v0, "stop-no-history"

    invoke-virtual {p0, v0, v2}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(Ljava/lang/String;Z)I

    move-result v0

    if-eqz v0, :cond_50

    .line 6368
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->resumeKeyDispatchingLocked()V

    return-void

    .line 6372
    :cond_38
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_STATES_enabled:[Z

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_50

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_STATES:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v4, 0x2c82159e9cde336aL    # 2.709297565515935E-94

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v3, v4, v5, v2, v0}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 6377
    :cond_50
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v0

    if-nez v0, :cond_57

    return-void

    .line 6380
    :cond_57
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->resumeKeyDispatchingLocked()V

    .line 6381
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_STATES_enabled:[Z

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_72

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_STATES:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v4, -0x231eeb25dd27c9c5L    # -2.542686590137254E139

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v3, v4, v5, v2, v0}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 6383
    :cond_72
    sget-object v0, Lcom/android/server/wm/ActivityRecord$State;->STOPPING:Lcom/android/server/wm/ActivityRecord$State;

    const-string v3, "stopIfPossible"

    invoke-virtual {p0, v0, v3}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityRecord$State;Ljava/lang/String;)V

    .line 6387
    iget v0, p0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 6388
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    iget-object v5, p0, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    .line 6387
    invoke-static {v0, v4, v5}, Lcom/android/server/wm/EventLogTags;->writeWmStopActivity(IILjava/lang/String;)V

    .line 6389
    new-instance v0, Landroid/app/servertransaction/StopActivityItem;

    iget-object v4, p0, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-direct {v0, v4}, Landroid/app/servertransaction/StopActivityItem;-><init>(Landroid/os/IBinder;)V

    .line 6390
    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityTaskManagerService;->getLifecycleManager()Lcom/android/server/wm/ClientLifecycleManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 6391
    invoke-virtual {v5}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v5

    .line 6390
    invoke-virtual {v4, v5, v0}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransactionItem(Landroid/app/IApplicationThread;Landroid/app/servertransaction/ClientTransactionItem;)Z

    move-result v0

    if-eqz v0, :cond_c8

    .line 6393
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mLastReportedConfiguration:Landroid/util/MergedConfiguration;

    invoke-virtual {v0}, Landroid/util/MergedConfiguration;->getMergedConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 6394
    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    .line 6395
    invoke-static {}, Lcom/android/server/wm/ActivityTaskManagerService;->isPip2ExperimentEnabled()Z

    move-result v2

    if-eqz v2, :cond_bc

    const/4 v2, 0x2

    if-ne v0, v2, :cond_bc

    .line 6396
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result v0

    if-nez v0, :cond_bc

    const/4 v0, 0x0

    .line 6400
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/ActivityRecord;->updatePictureInPictureMode(Landroid/graphics/Rect;Z)V

    .line 6402
    :cond_bc
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mStopTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x2af8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 6405
    :cond_c8
    iput-boolean v1, p0, Lcom/android/server/wm/ActivityRecord;->mAppStopped:Z

    .line 6406
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wm/ActivityRecord;->mStoppedTime:J

    .line 6407
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_STATES_enabled:[Z

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_e8

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_STATES:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v4, -0x74e93f8d5abac5feL

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v4, v5, v2, v0}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 6408
    :cond_e8
    sget-object v0, Lcom/android/server/wm/ActivityRecord$State;->STOPPED:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {p0, v0, v3}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityRecord$State;Ljava/lang/String;)V

    return-void

    .line 6361
    :cond_ee
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Request to stop a finishing activity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public supportsFreeform()Z
    .registers 2

    .line 3229
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->supportsFreeformInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;)Z

    move-result p0

    return p0
.end method

.method public supportsFreeformInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;)Z
    .registers 6

    if-eqz p1, :cond_19

    .line 3237
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsMultiWindow:Z

    iget-boolean v2, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsFreeformWindowManagement:Z

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsPictureInPicture:Z

    const/4 v3, 0x5

    .line 3238
    invoke-virtual {p1, v3, v1, v2, v0}, Lcom/android/server/wm/TaskDisplayArea;->isWindowingModeSupported(IZZZ)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 3242
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRecord;->supportsMultiWindowInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;)Z

    move-result p0

    if-eqz p0, :cond_19

    const/4 p0, 0x1

    return p0

    :cond_19
    const/4 p0, 0x0

    return p0
.end method

.method public supportsMultiWindow()Z
    .registers 2

    .line 3246
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->supportsMultiWindowInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;)Z

    move-result p0

    return p0
.end method

.method public supportsMultiWindowInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;)Z
    .registers 5

    .line 3254
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 3257
    :cond_8
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsMultiWindow:Z

    if-nez v0, :cond_f

    return v1

    :cond_f
    if-nez p1, :cond_12

    return v1

    .line 3264
    :cond_12
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isResizeable()Z

    move-result v0

    if-nez v0, :cond_1f

    invoke-virtual {p1}, Lcom/android/server/wm/TaskDisplayArea;->supportsNonResizableMultiWindow()Z

    move-result v0

    if-nez v0, :cond_1f

    return v1

    .line 3269
    :cond_1f
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    if-eqz v0, :cond_31

    .line 3270
    iget v2, v0, Landroid/content/pm/ActivityInfo$WindowLayout;->minWidth:I

    iget v0, v0, Landroid/content/pm/ActivityInfo$WindowLayout;->minHeight:I

    .line 3271
    invoke-virtual {p1, v2, v0, p0}, Lcom/android/server/wm/TaskDisplayArea;->supportsActivityMinWidthHeightMultiWindow(IILandroid/content/pm/ActivityInfo;)Z

    move-result p0

    if-eqz p0, :cond_30

    goto :goto_31

    :cond_30
    return v1

    :cond_31
    :goto_31
    const/4 p0, 0x1

    return p0
.end method

.method public supportsPictureInPicture()Z
    .registers 2

    .line 3216
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsPictureInPicture:Z

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeStandardOrUndefined()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 3217
    invoke-virtual {p0}, Landroid/content/pm/ActivityInfo;->supportsPictureInPicture()Z

    move-result p0

    if-eqz p0, :cond_16

    const/4 p0, 0x1

    return p0

    :cond_16
    const/4 p0, 0x0

    return p0
.end method

.method public takeFromHistory()V
    .registers 2

    .line 3093
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->inHistory:Z

    if-eqz v0, :cond_15

    const/4 v0, 0x0

    .line 3094
    iput-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->inHistory:Z

    .line 3095
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v0, :cond_12

    const/4 v0, 0x0

    .line 3096
    iput-object v0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 3098
    :cond_12
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->abortAndClearOptionsAnimation()V

    :cond_15
    return-void
.end method

.method public takeRemoteTransition()Landroid/window/RemoteTransition;
    .registers 3

    .line 5315
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mPendingRemoteTransition:Landroid/window/RemoteTransition;

    const/4 v1, 0x0

    .line 5316
    iput-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mPendingRemoteTransition:Landroid/window/RemoteTransition;

    return-object v0
.end method

.method public takeSceneTransitionInfo()Landroid/app/ActivityOptions$SceneTransitionInfo;
    .registers 3

    .line 5308
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mPendingOptions:Landroid/app/ActivityOptions;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    .line 5310
    :cond_6
    iput-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mPendingOptions:Landroid/app/ActivityOptions;

    .line 5311
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->getSceneTransitionInfo()Landroid/app/ActivityOptions$SceneTransitionInfo;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 9276
    iget-object v0, p0, Lcom/android/server/wm/WindowToken;->stringName:Ljava/lang/String;

    if-eqz v0, :cond_3e

    .line 9277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/wm/WindowToken;->stringName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-nez v1, :cond_19

    const/4 v1, -0x1

    goto :goto_1b

    :cond_19
    iget v1, v1, Lcom/android/server/wm/Task;->mTaskId:I

    :goto_1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9278
    iget-boolean v1, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    const-string v2, ""

    if-eqz v1, :cond_27

    const-string v1, " f}"

    goto :goto_28

    :cond_27
    move-object v1, v2

    :goto_28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/wm/WindowToken;->mIsExiting:Z

    if-eqz p0, :cond_31

    const-string v2, " isExiting"

    :cond_31
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 9280
    :cond_3e
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 9281
    const-string v1, "ActivityRecord{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9282
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 9283
    const-string v1, " u"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9284
    iget v1, p0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    .line 9285
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 9286
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9287
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/WindowToken;->stringName:Ljava/lang/String;

    return-object v0
.end method

.method public final transferSplashScreenIfNeeded()Z
    .registers 4

    .line 2554
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v0, :cond_48

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mHandleExitSplashScreen:Z

    if-eqz v0, :cond_48

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mStartingSurface:Lcom/android/server/wm/StartingSurfaceController$StartingSurface;

    if-eqz v0, :cond_48

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mStartingWindow:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_48

    iget v0, p0, Lcom/android/server/wm/ActivityRecord;->mTransferringSplashScreenState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_48

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    const/4 v1, 0x1

    if-eqz v0, :cond_22

    iget-boolean v2, v0, Lcom/android/server/wm/StartingData;->mResizedFromTransfer:Z

    if-nez v2, :cond_48

    iget v0, v0, Lcom/android/server/wm/StartingData;->mRemoveAfterTransaction:I

    if-eq v0, v1, :cond_48

    .line 2562
    :cond_22
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isRelaunching()Z

    move-result v0

    if-eqz v0, :cond_29

    goto :goto_48

    .line 2565
    :cond_29
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isTransferringSplashScreen()Z

    move-result v0

    if-eqz v0, :cond_30

    return v1

    .line 2569
    :cond_30
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    if-eqz v0, :cond_40

    .line 2570
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSyncTransactionCommitCallbackDepth()I

    move-result v0

    if-lez v0, :cond_40

    .line 2571
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/wm/StartingData;->mRemoveAfterTransaction:I

    return v1

    .line 2575
    :cond_40
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->requestCopySplashScreen()V

    .line 2576
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isTransferringSplashScreen()Z

    move-result p0

    return p0

    :cond_48
    :goto_48
    const/4 p0, 0x0

    return p0
.end method

.method public final transferStartingWindow(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 13

    .line 4522
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->mStartingWindow:Lcom/android/server/wm/WindowState;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_14d

    .line 4523
    iget-object v4, p1, Lcom/android/server/wm/ActivityRecord;->mStartingSurface:Lcom/android/server/wm/StartingSurfaceController$StartingSurface;

    if-eqz v4, :cond_14d

    .line 4524
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v4

    if-nez v4, :cond_12

    return v3

    .line 4534
    :cond_12
    invoke-virtual {p1}, Lcom/android/server/wm/WindowToken;->hasFixedRotationTransform()Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 4535
    iget-object v4, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v4, p0, v3}, Lcom/android/server/wm/DisplayContent;->handleTopActivityLaunchingInDifferentOrientation(Lcom/android/server/wm/ActivityRecord;Z)Z

    .line 4540
    :cond_1d
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRecord;->isStartingOrientationCompatible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v4

    if-eqz v4, :cond_14c

    iget-object v4, p1, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    iget-object v4, v4, Lcom/android/server/wm/StartingData;->mAssociatedTask:Lcom/android/server/wm/Task;

    if-nez v4, :cond_39

    .line 4544
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/wm/utils/RegionUtils;->sizeEquals(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v4

    if-nez v4, :cond_39

    goto/16 :goto_14c

    .line 4548
    :cond_39
    iget v4, p1, Lcom/android/server/wm/ActivityRecord;->mTransferringSplashScreenState:I

    if-eqz v4, :cond_3e

    return v3

    .line 4554
    :cond_3e
    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v4

    const/4 v5, 0x3

    if-lt v4, v5, :cond_5c

    iget-object v4, p1, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    iget-object v4, v4, Lcom/android/server/wm/StartingData;->mAssociatedTask:Lcom/android/server/wm/Task;

    if-nez v4, :cond_5c

    .line 4556
    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    invoke-virtual {v4, p1}, Lcom/android/server/wm/WindowContainer;->getActivityAbove(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    if-eqz v4, :cond_5c

    if-eq v4, p0, :cond_5c

    .line 4557
    iget-boolean v4, v4, Lcom/android/server/wm/ActivityRecord;->mReportedDrawn:Z

    if-nez v4, :cond_5c

    return v3

    .line 4562
    :cond_5c
    sget-object v4, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_STARTING_WINDOW_enabled:[Z

    aget-boolean v4, v4, v3

    if-eqz v4, :cond_7c

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_STARTING_WINDOW:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v9, 0x7409a3aa906e3d16L    # 9.178525759499134E250

    filled-new-array {v4, v6, v7}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v8, v9, v10, v3, v4}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 4565
    :cond_7c
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 4568
    :try_start_80
    iget-object v4, p1, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    iput-object v4, p0, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    .line 4569
    iget-object v4, p1, Lcom/android/server/wm/ActivityRecord;->mStartingSurface:Lcom/android/server/wm/StartingSurfaceController$StartingSurface;

    iput-object v4, p0, Lcom/android/server/wm/ActivityRecord;->mStartingSurface:Lcom/android/server/wm/StartingSurfaceController$StartingSurface;

    .line 4570
    iput-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mStartingWindow:Lcom/android/server/wm/WindowState;

    .line 4571
    iget-boolean v4, p1, Lcom/android/server/wm/ActivityRecord;->reportedVisible:Z

    iput-boolean v4, p0, Lcom/android/server/wm/ActivityRecord;->reportedVisible:Z

    .line 4572
    iput-object v1, p1, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    .line 4573
    iput-object v1, p1, Lcom/android/server/wm/ActivityRecord;->mStartingSurface:Lcom/android/server/wm/StartingSurfaceController$StartingSurface;

    .line 4574
    iput-object v1, p1, Lcom/android/server/wm/ActivityRecord;->mStartingWindow:Lcom/android/server/wm/WindowState;

    .line 4575
    iput-boolean v2, p1, Lcom/android/server/wm/ActivityRecord;->startingMoved:Z

    .line 4576
    iput-object p0, v0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 4577
    iput-object p0, v0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 4579
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    iget v4, v1, Lcom/android/server/wm/StartingData;->mRemoveAfterTransaction:I

    if-ne v4, v5, :cond_a6

    .line 4580
    iput v3, v1, Lcom/android/server/wm/StartingData;->mRemoveAfterTransaction:I

    goto :goto_a6

    :catchall_a3
    move-exception p0

    goto/16 :goto_148

    .line 4582
    :cond_a6
    :goto_a6
    iget v1, v1, Lcom/android/server/wm/StartingData;->mRemoveAfterTransaction:I

    if-ne v1, v2, :cond_bc

    .line 4585
    invoke-virtual {p0, v3}, Lcom/android/server/wm/ActivityRecord;->findMainWindow(Z)Lcom/android/server/wm/WindowState;

    move-result-object v1

    if-eqz v1, :cond_b6

    .line 4586
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isDrawn()Z

    move-result v1

    if-nez v1, :cond_bc

    .line 4587
    :cond_b6
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    iput v3, v1, Lcom/android/server/wm/StartingData;->mRemoveAfterTransaction:I

    .line 4588
    iput-boolean v3, v1, Lcom/android/server/wm/StartingData;->mPrepareRemoveAnimation:Z

    .line 4592
    :cond_bc
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_ADD_REMOVE_enabled:[Z

    aget-boolean v1, v1, v3

    if-eqz v1, :cond_d8

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget-object v8, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_ADD_REMOVE:Lcom/android/internal/protolog/WmProtoLogGroups;

    filled-new-array {v1, v4}, [Ljava/lang/Object;

    move-result-object v1

    const-wide v9, -0x2fe11762c7afcf6bL    # -8.947442604099203E77

    invoke-static {v8, v9, v10, v3, v1}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 4594
    :cond_d8
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/TransitionController;->collect(Lcom/android/server/wm/WindowContainer;)V

    const v1, 0x7fffffff

    .line 4595
    invoke-virtual {v0, p0, v1}, Lcom/android/server/wm/WindowContainer;->reparent(Lcom/android/server/wm/WindowContainer;I)V

    .line 4601
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->clearFrozenInsetsState()V

    .line 4606
    iget-boolean v1, p1, Lcom/android/server/wm/ActivityRecord;->allDrawn:Z

    if-eqz v1, :cond_ec

    .line 4607
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->allDrawn:Z

    .line 4609
    :cond_ec
    iget-boolean v1, p1, Lcom/android/server/wm/ActivityRecord;->firstWindowDrawn:Z

    if-eqz v1, :cond_f2

    .line 4610
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->firstWindowDrawn:Z

    .line 4612
    :cond_f2
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_107

    .line 4618
    invoke-virtual {p0, v2}, Lcom/android/server/wm/ActivityRecord;->setVisible(Z)V

    .line 4619
    invoke-virtual {p0, v2}, Lcom/android/server/wm/ActivityRecord;->setVisibleRequested(Z)Z

    .line 4620
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    invoke-virtual {v1, p0}, Lcom/android/server/wm/WindowAnimator;->addSurfaceVisibilityUpdate(Lcom/android/server/wm/WindowContainer;)V

    .line 4621
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityRecord;->mVisibleSetFromTransferredStartingWindow:Z

    .line 4623
    :cond_107
    invoke-virtual {p1}, Lcom/android/server/wm/WindowToken;->isClientVisible()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowToken;->setClientVisible(Z)V

    .line 4625
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isAnimating()Z

    move-result v1

    if-eqz v1, :cond_11e

    .line 4626
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->transferAnimation(Lcom/android/server/wm/WindowContainer;)V

    .line 4631
    iget v1, p0, Lcom/android/server/wm/ActivityRecord;->mTransitionChangeFlags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/android/server/wm/ActivityRecord;->mTransitionChangeFlags:I

    goto :goto_12c

    .line 4632
    :cond_11e
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v1}, Lcom/android/server/wm/TransitionController;->getTransitionPlayer()Landroid/window/ITransitionPlayer;

    move-result-object v1

    if-eqz v1, :cond_12c

    .line 4634
    iget v1, p0, Lcom/android/server/wm/ActivityRecord;->mTransitionChangeFlags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/android/server/wm/ActivityRecord;->mTransitionChangeFlags:I

    .line 4637
    :cond_12c
    :goto_12c
    invoke-virtual {p1, v0}, Lcom/android/server/wm/ActivityRecord;->postWindowRemoveStartingWindowCleanup(Lcom/android/server/wm/WindowState;)V

    .line 4638
    iput-boolean v3, p1, Lcom/android/server/wm/ActivityRecord;->mVisibleSetFromTransferredStartingWindow:Z

    .line 4640
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1, v5, v2}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    .line 4642
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 4643
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V
    :try_end_144
    .catchall {:try_start_80 .. :try_end_144} :catchall_a3

    .line 4645
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :goto_148
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4646
    throw p0

    :cond_14c
    :goto_14c
    return v3

    .line 4648
    :cond_14d
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    if-eqz v0, :cond_18e

    .line 4649
    instance-of v0, v0, Lcom/android/server/wm/SnapshotStartingData;

    if-eqz v0, :cond_166

    .line 4650
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRecord;->isStartingOrientationCompatible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-eqz v0, :cond_165

    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    check-cast v0, Lcom/android/server/wm/SnapshotStartingData;

    .line 4651
    invoke-virtual {v0}, Lcom/android/server/wm/SnapshotStartingData;->isValid()Z

    move-result v0

    if-nez v0, :cond_166

    :cond_165
    return v3

    .line 4657
    :cond_166
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_STARTING_WINDOW_enabled:[Z

    aget-boolean v0, v0, v3

    if-eqz v0, :cond_182

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_STARTING_WINDOW:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v6, 0x77e609a44b5535a5L    # 3.638242793076849E269

    filled-new-array {v0, v4}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v5, v6, v7, v3, v0}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 4659
    :cond_182
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    iput-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    .line 4660
    iput-object v1, p1, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    .line 4661
    iput-boolean v2, p1, Lcom/android/server/wm/ActivityRecord;->startingMoved:Z

    .line 4662
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->scheduleAddStartingWindow()V

    return v2

    :cond_18e
    return v3
.end method

.method public transferStartingWindowFromHiddenAboveTokenIfNeeded()V
    .registers 3

    const/4 v0, 0x0

    .line 4676
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->findMainWindow(Z)Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 4677
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateAnimator;->getShown()Z

    move-result v0

    if-eqz v0, :cond_10

    return-void

    .line 4683
    :cond_10
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    new-instance v1, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/wm/ActivityRecord;)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Predicate;)Z

    return-void
.end method

.method public unregisterCaptureObserver(Landroid/app/IScreenCaptureObserver;)V
    .registers 2

    .line 6943
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mCaptureCallbacks:Landroid/os/RemoteCallbackList;

    if-eqz p0, :cond_7

    .line 6944
    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    :cond_7
    return-void
.end method

.method public unregisterRemoteAnimations()V
    .registers 2

    const/4 v0, 0x0

    .line 7263
    iput-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mRemoteAnimationDefinition:Landroid/view/RemoteAnimationDefinition;

    return-void
.end method

.method public updateAllDrawn()V
    .registers 3

    .line 5254
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->allDrawn:Z

    if-nez v0, :cond_2f

    .line 5257
    iget v0, p0, Lcom/android/server/wm/ActivityRecord;->mNumInterestingWindows:I

    if-lez v0, :cond_2f

    .line 5262
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->allDrawnStatesConsidered()Z

    move-result v1

    if-eqz v1, :cond_2f

    iget v1, p0, Lcom/android/server/wm/ActivityRecord;->mNumDrawnWindows:I

    if-lt v1, v0, :cond_2f

    .line 5263
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isRelaunching()Z

    move-result v0

    if-nez v0, :cond_2f

    const/4 v0, 0x1

    .line 5266
    iput-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->allDrawn:Z

    .line 5269
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v0, :cond_22

    .line 5270
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 5272
    :cond_22
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v1, 0x20

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_2f
    return-void
.end method

.method public updateApplicationInfo(Landroid/content/pm/ApplicationInfo;)V
    .registers 2

    .line 1366
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iput-object p1, p0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    return-void
.end method

.method public final updateColorTransform()V
    .registers 5

    .line 1700
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mLastAppSaturationInfo:Lcom/android/server/wm/ActivityRecord$AppSaturationInfo;

    if-eqz v0, :cond_1c

    .line 1701
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mLastAppSaturationInfo:Lcom/android/server/wm/ActivityRecord$AppSaturationInfo;

    iget-object v3, v2, Lcom/android/server/wm/ActivityRecord$AppSaturationInfo;->mMatrix:[F

    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord$AppSaturationInfo;->mTranslation:[F

    invoke-virtual {v0, v1, v3, v2}, Landroid/view/SurfaceControl$Transaction;->setColorTransform(Landroid/view/SurfaceControl;[F[F)Landroid/view/SurfaceControl$Transaction;

    .line 1703
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    :cond_1c
    return-void
.end method

.method public updateDrawnWindowStates(Lcom/android/server/wm/WindowState;)Z
    .registers 9

    const/4 v0, 0x1

    .line 6684
    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowState;->setDrawnStateEvaluated(Z)V

    .line 6691
    iget-boolean v1, p0, Lcom/android/server/wm/ActivityRecord;->allDrawn:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_a

    return v2

    .line 6695
    :cond_a
    iget-wide v3, p0, Lcom/android/server/wm/ActivityRecord;->mLastTransactionSequence:J

    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget v1, v1, Lcom/android/server/wm/WindowManagerService;->mTransactionSequence:I

    int-to-long v5, v1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_25

    int-to-long v3, v1

    .line 6696
    iput-wide v3, p0, Lcom/android/server/wm/ActivityRecord;->mLastTransactionSequence:J

    .line 6697
    iput v2, p0, Lcom/android/server/wm/ActivityRecord;->mNumDrawnWindows:I

    .line 6700
    invoke-virtual {p0, v2}, Lcom/android/server/wm/ActivityRecord;->findMainWindow(Z)Lcom/android/server/wm/WindowState;

    move-result-object v1

    if-eqz v1, :cond_22

    move v1, v0

    goto :goto_23

    :cond_22
    move v1, v2

    :goto_23
    iput v1, p0, Lcom/android/server/wm/ActivityRecord;->mNumInterestingWindows:I

    .line 6703
    :cond_25
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 6707
    iget-boolean v3, p0, Lcom/android/server/wm/ActivityRecord;->allDrawn:Z

    if-nez v3, :cond_f2

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->mightAffectAllDrawn()Z

    move-result v3

    if-eqz v3, :cond_f2

    .line 6708
    sget-object v3, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_ORIENTATION:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-virtual {v3}, Lcom/android/internal/protolog/WmProtoLogGroups;->isLogToLogcat()Z

    move-result v4

    const-string v5, "ActivityTaskManager"

    if-eqz v4, :cond_a5

    .line 6709
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Eval win "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ": isDrawn="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isDrawn()Z

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6710
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isDrawn()Z

    move-result v4

    if-nez v4, :cond_a5

    .line 6711
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Not displayed: s="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " pv="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6712
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isVisibleByPolicy()Z

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " mDrawState="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6713
    invoke-virtual {v1}, Lcom/android/server/wm/WindowStateAnimator;->drawStateToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ph="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6714
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isParentWindowHidden()Z

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " th="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/WindowContainer;->mVisibleRequested:Z

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6711
    invoke-static {v5, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6718
    :cond_a5
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mStartingWindow:Lcom/android/server/wm/WindowState;

    if-eq p1, v1, :cond_f2

    .line 6719
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isInteresting()Z

    move-result v1

    if-eqz v1, :cond_f2

    .line 6721
    invoke-virtual {p0, v2}, Lcom/android/server/wm/ActivityRecord;->findMainWindow(Z)Lcom/android/server/wm/WindowState;

    move-result-object v1

    if-eq v1, p1, :cond_ba

    .line 6722
    iget v1, p0, Lcom/android/server/wm/ActivityRecord;->mNumInterestingWindows:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/server/wm/ActivityRecord;->mNumInterestingWindows:I

    .line 6724
    :cond_ba
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isDrawn()Z

    move-result v1

    if-eqz v1, :cond_f2

    .line 6725
    iget v1, p0, Lcom/android/server/wm/ActivityRecord;->mNumDrawnWindows:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/server/wm/ActivityRecord;->mNumDrawnWindows:I

    .line 6727
    invoke-virtual {v3}, Lcom/android/internal/protolog/WmProtoLogGroups;->isLogToLogcat()Z

    move-result v1

    if-eqz v1, :cond_f1

    .line 6728
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tokenMayBeDrawn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " w="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " numInteresting="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/wm/ActivityRecord;->mNumInterestingWindows:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f1
    return v0

    :cond_f2
    return v2
.end method

.method public updateLaunchSourceType(ILcom/android/server/wm/WindowProcessController;)V
    .registers 3

    .line 2222
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/ActivityRecord;->determineLaunchSourceType(ILcom/android/server/wm/WindowProcessController;)I

    move-result p1

    iput p1, p0, Lcom/android/server/wm/ActivityRecord;->mLaunchSourceType:I

    return-void
.end method

.method public updateLetterboxSurfaceIfNeeded(Lcom/android/server/wm/WindowState;)V
    .registers 2

    .line 1743
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatController;->getLetterboxPolicy()Lcom/android/server/wm/AppCompatLetterboxPolicy;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppCompatLetterboxPolicy;->updateLetterboxSurfaceIfNeeded(Lcom/android/server/wm/WindowState;)V

    return-void
.end method

.method public updateMultiWindowMode()V
    .registers 3

    .line 1423
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-eqz v0, :cond_2a

    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_2a

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_2a

    .line 1428
    :cond_11
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    move-result v0

    .line 1429
    iget-boolean v1, p0, Lcom/android/server/wm/ActivityRecord;->mLastReportedMultiWindowMode:Z

    if-eq v0, v1, :cond_2a

    if-nez v0, :cond_25

    .line 1430
    iget-boolean v1, p0, Lcom/android/server/wm/ActivityRecord;->mLastReportedPictureInPictureMode:Z

    if-eqz v1, :cond_25

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1431
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/ActivityRecord;->updatePictureInPictureMode(Landroid/graphics/Rect;Z)V

    return-void

    .line 1433
    :cond_25
    iput-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mLastReportedMultiWindowMode:Z

    .line 1434
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->ensureActivityConfiguration()Z

    :cond_2a
    :goto_2a
    return-void
.end method

.method public updateOptionsLocked(Landroid/app/ActivityOptions;)V
    .registers 3

    if-eqz p1, :cond_c

    .line 5105
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mPendingOptions:Landroid/app/ActivityOptions;

    if-eqz v0, :cond_9

    .line 5106
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->abort()V

    .line 5108
    :cond_9
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRecord;->setOptions(Landroid/app/ActivityOptions;)V

    :cond_c
    return-void
.end method

.method public updatePictureInPictureMode(Landroid/graphics/Rect;Z)V
    .registers 5

    .line 1440
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-eqz v0, :cond_60

    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_60

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_60

    .line 1445
    :cond_11
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1c

    if-eqz p1, :cond_1c

    move p1, v1

    goto :goto_1d

    :cond_1c
    const/4 p1, 0x0

    .line 1446
    :goto_1d
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mLastReportedPictureInPictureMode:Z

    if-ne p1, v0, :cond_23

    if-eqz p2, :cond_60

    .line 1451
    :cond_23
    iput-boolean p1, p0, Lcom/android/server/wm/ActivityRecord;->mLastReportedPictureInPictureMode:Z

    .line 1452
    iput-boolean p1, p0, Lcom/android/server/wm/ActivityRecord;->mLastReportedMultiWindowMode:Z

    if-nez p2, :cond_2f

    .line 1453
    invoke-static {}, Lcom/android/server/wm/ActivityTaskManagerService;->isPip2ExperimentEnabled()Z

    move-result p2

    if-nez p2, :cond_32

    .line 1455
    :cond_2f
    invoke-virtual {p0, v1}, Lcom/android/server/wm/ActivityRecord;->ensureActivityConfiguration(Z)Z

    :cond_32
    if-eqz p1, :cond_60

    .line 1459
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object p1

    if-nez p1, :cond_60

    iget-object p1, p0, Lcom/android/server/wm/ActivityRecord;->pictureInPictureArgs:Landroid/app/PictureInPictureParams;

    invoke-virtual {p1}, Landroid/app/PictureInPictureParams;->isLaunchIntoPip()Z

    move-result p1

    if-nez p1, :cond_60

    iget-object p1, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 1460
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-ne p1, p0, :cond_60

    const/4 p1, -0x1

    .line 1463
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, ""

    const-string v0, "265293293"

    filled-new-array {v0, p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const p2, 0x534e4554

    invoke-static {p2, p1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1464
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->removeImmediately()V

    :cond_60
    :goto_60
    return-void
.end method

.method public updateReportedConfigurationAndSend()Z
    .registers 16

    .line 8510
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isConfigurationDispatchPaused()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 8511
    const-string v0, "ActivityTaskManager"

    const-string v1, "trying to update reported(client) config while dispatch is paused"

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 8513
    :cond_d
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_CONFIGURATION_enabled:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_26

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_CONFIGURATION:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v3, -0x31cdb6f31616c7bdL    # -4.929721496946967E68

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v3, v4, v1, v0}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 8515
    :cond_26
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result v0

    .line 8516
    iget v2, p0, Lcom/android/server/wm/ActivityRecord;->mLastReportedDisplayId:I

    const/4 v3, 0x1

    if-eq v2, v0, :cond_31

    move v2, v3

    goto :goto_32

    :cond_31
    move v2, v1

    :goto_32
    if-eqz v2, :cond_36

    .line 8518
    iput v0, p0, Lcom/android/server/wm/ActivityRecord;->mLastReportedDisplayId:I

    .line 8527
    :cond_36
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v4

    if-eqz v4, :cond_45

    .line 8530
    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    invoke-virtual {v4}, Lcom/android/server/wm/AppCompatController;->getSizeCompatModePolicy()Lcom/android/server/wm/AppCompatSizeCompatModePolicy;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->updateAppCompatDisplayInsets()V

    .line 8537
    :cond_45
    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->mTmpConfig:Landroid/content/res/Configuration;

    iget-object v5, p0, Lcom/android/server/wm/ActivityRecord;->mLastReportedConfiguration:Landroid/util/MergedConfiguration;

    invoke-virtual {v5}, Landroid/util/MergedConfiguration;->getMergedConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 8538
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getActivityWindowInfo()Landroid/window/ActivityWindowInfo;

    move-result-object v4

    .line 8539
    iget-object v5, p0, Lcom/android/server/wm/ActivityRecord;->mLastReportedActivityWindowInfo:Landroid/window/ActivityWindowInfo;

    .line 8540
    invoke-virtual {v5, v4}, Landroid/window/ActivityWindowInfo;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v2, :cond_83

    if-eqz v5, :cond_83

    .line 8542
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wm/ActivityRecord;->mTmpConfig:Landroid/content/res/Configuration;

    invoke-virtual {v5, v6}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v5

    if-eqz v5, :cond_83

    .line 8543
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_CONFIGURATION_enabled:[Z

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_82

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_CONFIGURATION:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v4, 0x40d78ed72a0c31d5L    # 24123.361941383995

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, v4, v5, v1, p0}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_82
    return v3

    .line 8552
    :cond_83
    iget-object v5, p0, Lcom/android/server/wm/ActivityRecord;->mTmpConfig:Landroid/content/res/Configuration;

    invoke-virtual {p0, v5}, Lcom/android/server/wm/ActivityRecord;->getConfigurationChanges(Landroid/content/res/Configuration;)I

    move-result v5

    .line 8555
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getMergedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    if-eqz v5, :cond_a9

    .line 8558
    sget-object v7, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_CONFIGURATION_enabled:[Z

    aget-boolean v7, v7, v1

    if-eqz v7, :cond_a9

    iget-object v7, p0, Lcom/android/server/wm/ActivityRecord;->mLastReportedConfiguration:Landroid/util/MergedConfiguration;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_CONFIGURATION:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v9, -0x7083681a3633c476L    # -4.496436070161952E-234

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v8, v9, v10, v1, v7}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 8562
    :cond_a9
    invoke-direct {p0}, Lcom/android/server/wm/ActivityRecord;->getProcessGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    invoke-virtual {p0, v7, v6}, Lcom/android/server/wm/ActivityRecord;->setLastReportedConfiguration(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    .line 8563
    invoke-virtual {p0, v4}, Lcom/android/server/wm/ActivityRecord;->setLastReportedActivityWindowInfo(Landroid/window/ActivityWindowInfo;)V

    .line 8565
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getState()Lcom/android/server/wm/ActivityRecord$State;

    move-result-object v7

    sget-object v8, Lcom/android/server/wm/ActivityRecord$State;->INITIALIZING:Lcom/android/server/wm/ActivityRecord$State;

    if-ne v7, v8, :cond_d4

    .line 8569
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_CONFIGURATION_enabled:[Z

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_d3

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_CONFIGURATION:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v4, -0x77af9746bf74cabaL

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, v4, v5, v1, p0}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_d3
    return v3

    :cond_d4
    if-nez v5, :cond_103

    .line 8575
    sget-object v5, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_CONFIGURATION_enabled:[Z

    aget-boolean v5, v5, v1

    if-eqz v5, :cond_ee

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    sget-object v7, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_CONFIGURATION:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v8, 0x227dca4ed3c73babL    # 1.526850216325029E-142

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v7, v8, v9, v1, v5}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_ee
    if-eqz v2, :cond_f4

    .line 8579
    invoke-virtual {p0, v0, v6, v4}, Lcom/android/server/wm/ActivityRecord;->scheduleActivityMovedToDisplay(ILandroid/content/res/Configuration;Landroid/window/ActivityWindowInfo;)V

    goto :goto_f7

    .line 8582
    :cond_f4
    invoke-virtual {p0, v6, v4}, Lcom/android/server/wm/ActivityRecord;->scheduleConfigurationChanged(Landroid/content/res/Configuration;Landroid/window/ActivityWindowInfo;)V

    .line 8584
    :goto_f7
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mLastReportedConfiguration:Landroid/util/MergedConfiguration;

    .line 8585
    invoke-virtual {v0}, Landroid/util/MergedConfiguration;->getMergedConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mTmpConfig:Landroid/content/res/Configuration;

    .line 8584
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/ActivityRecord;->notifyActivityRefresherAboutConfigurationChange(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    return v3

    .line 8591
    :cond_103
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v7

    if-nez v7, :cond_122

    .line 8592
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_CONFIGURATION_enabled:[Z

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_121

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_CONFIGURATION:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v4, -0x6fb1ad2428a1cfd2L

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, v4, v5, v1, p0}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_121
    return v3

    .line 8597
    :cond_122
    sget-object v7, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_CONFIGURATION_enabled:[Z

    aget-boolean v7, v7, v1

    if-eqz v7, :cond_166

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5}, Landroid/content/res/Configuration;->configurationDiffToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v9}, Landroid/content/pm/ActivityInfo;->getRealConfigChanged()I

    move-result v9

    invoke-static {v9}, Landroid/content/res/Configuration;->configurationDiffToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v10}, Landroid/content/pm/ActivityInfo;->getRealConfigChanged()I

    move-result v10

    not-int v10, v10

    and-int/2addr v10, v5

    invoke-static {v10}, Landroid/content/res/Configuration;->configurationDiffToString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/wm/ActivityRecord;->mLastReportedConfiguration:Landroid/util/MergedConfiguration;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    sget-object v12, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_CONFIGURATION:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v13, 0x1d938a6334b6352bL    # 3.313750217918507E-166

    filled-new-array {v7, v8, v9, v10, v11}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v12, v13, v14, v1, v7}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 8604
    :cond_166
    iget-object v7, p0, Lcom/android/server/wm/ActivityRecord;->mTmpConfig:Landroid/content/res/Configuration;

    invoke-virtual {p0, v5, v7}, Lcom/android/server/wm/ActivityRecord;->shouldRelaunchLocked(ILandroid/content/res/Configuration;)Z

    move-result v7

    if-eqz v7, :cond_1fb

    .line 8605
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mTmpConfig:Landroid/content/res/Configuration;

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getDisplayRotation()I

    move-result v0

    .line 8606
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getDisplayRotation()I

    move-result v2

    if-ne v0, v2, :cond_19d

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mTmpConfig:Landroid/content/res/Configuration;

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 8607
    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getMaxBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 8608
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getMaxBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 8607
    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_197

    goto :goto_19d

    :cond_197
    and-int/lit16 v0, v5, -0xd81

    if-nez v0, :cond_19d

    move v0, v3

    goto :goto_19e

    :cond_19d
    :goto_19d
    move v0, v1

    .line 8614
    :goto_19e
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v2}, Landroid/content/pm/ActivityInfo;->getRealConfigChanged()I

    move-result v2

    not-int v2, v2

    and-int/2addr v2, v5

    invoke-static {v2}, Lcom/android/server/wm/ActivityRecord;->hasResizeChange(I)Z

    move-result v2

    if-eqz v2, :cond_1b8

    .line 8616
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    invoke-virtual {v2}, Lcom/android/server/wm/Task;->isDragResizing()Z

    move-result v2

    if-eqz v2, :cond_1b5

    const/4 v3, 0x2

    .line 8618
    :cond_1b5
    iput v3, p0, Lcom/android/server/wm/ActivityRecord;->mRelaunchReason:I

    goto :goto_1ba

    .line 8620
    :cond_1b8
    iput v1, p0, Lcom/android/server/wm/ActivityRecord;->mRelaunchReason:I

    .line 8622
    :goto_1ba
    sget-object v2, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_CONFIGURATION_enabled:[Z

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_1d2

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_CONFIGURATION:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v6, 0x5e155c8e8a7d3275L    # 1.6671346938309107E145

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3, v6, v7, v1, v2}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 8623
    :cond_1d2
    iget-boolean v2, p0, Lcom/android/server/wm/WindowContainer;->mVisibleRequested:Z

    if-nez v2, :cond_1f7

    .line 8624
    sget-object v2, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_STATES_enabled:[Z

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_1f7

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_STATES:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v6, 0x7c79b78539643a95L    # 4.009904604152005E291

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v4, v6, v7, v1, v2}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 8627
    :cond_1f7
    invoke-virtual {p0, v0, v5}, Lcom/android/server/wm/ActivityRecord;->relaunchActivityLocked(ZI)V

    return v1

    :cond_1fb
    if-eqz v2, :cond_201

    .line 8638
    invoke-virtual {p0, v0, v6, v4}, Lcom/android/server/wm/ActivityRecord;->scheduleActivityMovedToDisplay(ILandroid/content/res/Configuration;Landroid/window/ActivityWindowInfo;)V

    goto :goto_204

    .line 8641
    :cond_201
    invoke-virtual {p0, v6, v4}, Lcom/android/server/wm/ActivityRecord;->scheduleConfigurationChanged(Landroid/content/res/Configuration;Landroid/window/ActivityWindowInfo;)V

    .line 8643
    :goto_204
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mLastReportedConfiguration:Landroid/util/MergedConfiguration;

    .line 8644
    invoke-virtual {v0}, Landroid/util/MergedConfiguration;->getMergedConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mTmpConfig:Landroid/content/res/Configuration;

    .line 8643
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/ActivityRecord;->notifyActivityRefresherAboutConfigurationChange(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    return v3
.end method

.method public updateReportedVisibilityLocked()V
    .registers 7

    .line 6628
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 6630
    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mReportedVisibilityResults:Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;->reset()V

    const/4 v1, 0x0

    move v2, v1

    :goto_d
    if-ge v2, v0, :cond_1f

    .line 6633
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    .line 6634
    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->mReportedVisibilityResults:Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowState;->updateReportedVisibility(Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 6637
    :cond_1f
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mReportedVisibilityResults:Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;

    iget v2, v0, Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;->numInteresting:I

    .line 6638
    iget v3, v0, Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;->numVisible:I

    .line 6639
    iget v4, v0, Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;->numDrawn:I

    .line 6640
    iget-boolean v0, v0, Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;->nowGone:Z

    const/4 v5, 0x1

    if-lez v2, :cond_30

    if-lt v4, v2, :cond_30

    move v4, v5

    goto :goto_31

    :cond_30
    move v4, v1

    :goto_31
    if-lez v2, :cond_3c

    if-lt v3, v2, :cond_3c

    .line 6643
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_3c

    move v1, v5

    :cond_3c
    if-nez v0, :cond_46

    if-nez v4, :cond_42

    .line 6647
    iget-boolean v4, p0, Lcom/android/server/wm/ActivityRecord;->mReportedDrawn:Z

    :cond_42
    if-nez v1, :cond_46

    .line 6650
    iget-boolean v1, p0, Lcom/android/server/wm/ActivityRecord;->reportedVisible:Z

    .line 6655
    :cond_46
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mReportedDrawn:Z

    if-eq v4, v0, :cond_51

    if-eqz v4, :cond_4f

    .line 6657
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->onWindowsDrawn()V

    .line 6659
    :cond_4f
    iput-boolean v4, p0, Lcom/android/server/wm/ActivityRecord;->mReportedDrawn:Z

    .line 6661
    :cond_51
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->reportedVisible:Z

    if-eq v1, v0, :cond_60

    .line 6664
    iput-boolean v1, p0, Lcom/android/server/wm/ActivityRecord;->reportedVisible:Z

    if-eqz v1, :cond_5d

    .line 6666
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->onWindowsVisible()V

    return-void

    .line 6668
    :cond_5d
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->onWindowsGone()V

    :cond_60
    return-void
.end method

.method public final updateResolvedBoundsPosition(Landroid/content/res/Configuration;)V
    .registers 16

    .line 7888
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 7889
    iget-object v1, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 7890
    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_11

    return-void

    .line 7893
    :cond_11
    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 7894
    invoke-virtual {v2}, Lcom/android/server/wm/AppCompatController;->getSizeCompatModePolicy()Lcom/android/server/wm/AppCompatSizeCompatModePolicy;

    move-result-object v2

    .line 7895
    invoke-virtual {v2, v1}, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->replaceResolvedBoundsIfNeeded(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v3

    .line 7896
    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->mResolveConfigHint:Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;

    iget-object v5, v4, Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;->mParentAppBoundsOverride:Landroid/graphics/Rect;

    .line 7897
    iget-object v4, v4, Lcom/android/server/wm/TaskFragment$ConfigOverrideHint;->mParentBoundsOverride:Landroid/graphics/Rect;

    .line 7898
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    .line 7899
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    .line 7900
    invoke-virtual {p0, v4}, Lcom/android/server/wm/ActivityRecord;->isImmersiveMode(Landroid/graphics/Rect;)Z

    move-result v8

    if-eqz v8, :cond_45

    .line 7903
    iget-object v9, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v9}, Lcom/android/server/wm/DisplayContent;->getInsetsStateController()Lcom/android/server/wm/InsetsStateController;

    move-result-object v9

    .line 7904
    invoke-virtual {v9}, Lcom/android/server/wm/InsetsStateController;->getRawInsetsState()Landroid/view/InsetsState;

    move-result-object v9

    .line 7907
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v10

    const/4 v11, 0x1

    .line 7904
    invoke-virtual {v9, v4, v4, v10, v11}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;IZ)Landroid/graphics/Insets;

    move-result-object v9

    goto :goto_47

    .line 7910
    :cond_45
    sget-object v9, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    .line 7912
    :goto_47
    iget-object v10, p0, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 7913
    invoke-virtual {v10}, Lcom/android/server/wm/AppCompatController;->getReachabilityOverrides()Lcom/android/server/wm/AppCompatReachabilityOverrides;

    move-result-object v10

    .line 7916
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v11

    int-to-float v11, v11

    cmpl-float v11, v11, v6

    const/4 v12, 0x0

    if-eqz v11, :cond_78

    cmpg-float v11, v6, v7

    if-gtz v11, :cond_78

    .line 7918
    invoke-virtual {v10, p1}, Lcom/android/server/wm/AppCompatReachabilityOverrides;->getHorizontalPositionMultiplier(Landroid/content/res/Configuration;)F

    move-result v11

    .line 7922
    iget v13, v9, Landroid/graphics/Insets;->right:I

    int-to-float v13, v13

    add-float/2addr v7, v13

    float-to-int v7, v7

    int-to-float v7, v7

    sub-float/2addr v7, v6

    mul-float/2addr v7, v11

    float-to-double v6, v7

    .line 7923
    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    iget v7, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v7

    iget v7, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v7

    invoke-static {v12, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    goto :goto_79

    :cond_78
    move v6, v12

    .line 7932
    :goto_79
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    .line 7933
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v11

    int-to-float v11, v11

    .line 7934
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v13

    int-to-float v13, v13

    cmpl-float v11, v11, v13

    if-eqz v11, :cond_ac

    cmpg-float v11, v13, v7

    if-gtz v11, :cond_ac

    .line 7939
    invoke-virtual {v10, p1}, Lcom/android/server/wm/AppCompatReachabilityOverrides;->getVerticalPositionMultiplier(Landroid/content/res/Configuration;)F

    move-result v10

    .line 7943
    iget v9, v9, Landroid/graphics/Insets;->bottom:I

    int-to-float v9, v9

    add-float/2addr v7, v9

    float-to-int v7, v7

    int-to-float v7, v7

    sub-float/2addr v7, v13

    mul-float/2addr v7, v10

    float-to-double v9, v7

    .line 7944
    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v7, v9

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v3

    iget v3, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v7, v3

    invoke-static {v12, v7}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 7954
    :cond_ac
    invoke-virtual {v2, v1, v0, v6, v12}, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->applyOffsetIfNeeded(Landroid/graphics/Rect;Landroid/content/res/Configuration;II)Z

    move-result v3

    if-nez v3, :cond_b5

    .line 7955
    invoke-static {v0, v6, v12}, Lcom/android/server/wm/AppCompatUtils;->offsetBounds(Landroid/content/res/Configuration;II)V

    .line 7960
    :cond_b5
    iget-object v3, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget v5, v5, Landroid/graphics/Rect;->top:I

    if-ne v3, v5, :cond_d0

    if-nez v8, :cond_d0

    .line 7962
    iget-object v3, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget v5, v4, Landroid/graphics/Rect;->top:I

    iput v5, v3, Landroid/graphics/Rect;->top:I

    .line 7963
    invoke-virtual {v2, v4}, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->alignToTopIfNeeded(Landroid/graphics/Rect;)V

    .line 7967
    :cond_d0
    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/ActivityRecord;->computeConfigByResolveHint(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    .line 7973
    invoke-virtual {v2, v1, v0}, Lcom/android/server/wm/AppCompatSizeCompatModePolicy;->applySizeCompatScaleIfNeeded(Landroid/graphics/Rect;Landroid/content/res/Configuration;)V

    return-void
.end method

.method public updateSurfaceVisibility(Landroid/view/SurfaceControl$Transaction;)V
    .registers 3

    .line 7248
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mVisible:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    if-eqz v0, :cond_e

    .line 7251
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isDecorSurfaceBoosted()Z

    move-result v0

    if-nez v0, :cond_10

    :cond_e
    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    .line 7252
    :goto_11
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, p0, v0}, Landroid/view/SurfaceControl$Transaction;->setVisibility(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    return-void
.end method

.method public final updateTaskDescription(Ljava/lang/CharSequence;)V
    .registers 2

    .line 5352
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    iput-object p1, p0, Lcom/android/server/wm/Task;->lastDescription:Ljava/lang/CharSequence;

    return-void
.end method

.method public final updateUntrustedEmbeddingInputProtection()V
    .registers 2

    .line 1606
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 1609
    :cond_7
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mIsInputDroppedForAnimation:Z

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    .line 1611
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->setDropInputMode(I)V

    return-void

    .line 1612
    :cond_10
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isEmbeddedInUntrustedMode()Z

    move-result v0

    if-eqz v0, :cond_1b

    const/4 v0, 0x2

    .line 1614
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->setDropInputMode(I)V

    return-void

    :cond_1b
    const/4 v0, 0x0

    .line 1617
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->setDropInputMode(I)V

    return-void
.end method

.method public updateVisibilityIgnoringKeyguard(Z)V
    .registers 2

    if-eqz p1, :cond_6

    .line 5980
    iget-boolean p1, p0, Lcom/android/server/wm/WindowContainer;->mLaunchTaskBehind:Z

    if-eqz p1, :cond_e

    .line 5981
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->showToCurrentUser()Z

    move-result p1

    if-eqz p1, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    iput-boolean p1, p0, Lcom/android/server/wm/ActivityRecord;->visibleIgnoringKeyguard:Z

    return-void
.end method

.method public final updateVisibleForServiceConnection()V
    .registers 3

    .line 4276
    iget-boolean v0, p0, Lcom/android/server/wm/WindowContainer;->mVisibleRequested:Z

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mState:Lcom/android/server/wm/ActivityRecord$State;

    sget-object v1, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    if-eq v0, v1, :cond_11

    sget-object v1, Lcom/android/server/wm/ActivityRecord$State;->PAUSING:Lcom/android/server/wm/ActivityRecord$State;

    if-ne v0, v1, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v0, 0x1

    :goto_12
    iput-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mVisibleForServiceConnection:Z

    return-void
.end method

.method public final validateStartingWindowTheme(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;I)Z
    .registers 15

    .line 2246
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_STARTING_WINDOW_enabled:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    const/4 v2, 0x1

    if-eqz v0, :cond_1b

    int-to-long v3, p3

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_STARTING_WINDOW:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-wide v4, 0x4b2e6b0352c343fL

    invoke-static {v0, v4, v5, v2, v3}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_1b
    if-nez p3, :cond_1e

    return v1

    .line 2251
    :cond_1e
    iget v0, p0, Lcom/android/server/wm/ActivityRecord;->theme:I

    if-ne p3, v0, :cond_25

    .line 2252
    iget-object p2, p0, Lcom/android/server/wm/ActivityRecord;->mWindowStyle:Lcom/android/server/wm/ActivityRecord$WindowStyle;

    goto :goto_2d

    :cond_25
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v3, p0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-virtual {v0, p2, p3, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->getWindowStyle(Ljava/lang/String;II)Lcom/android/server/wm/ActivityRecord$WindowStyle;

    move-result-object p2

    :goto_2d
    if-nez p2, :cond_30

    return v1

    .line 2258
    :cond_30
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord$WindowStyle;->isTranslucent()Z

    move-result p3

    .line 2259
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord$WindowStyle;->isFloating()Z

    move-result v0

    .line 2260
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord$WindowStyle;->showWallpaper()Z

    move-result v3

    .line 2261
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord$WindowStyle;->disablePreview()Z

    move-result p2

    .line 2262
    sget-object v4, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_STARTING_WINDOW_enabled:[Z

    aget-boolean v4, v4, v1

    if-eqz v4, :cond_64

    invoke-static {p3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_STARTING_WINDOW:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v9, -0x238d5172ed39cb05L    # -2.1725895730886493E137

    filled-new-array {v4, v5, v6, v7}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v8, v9, v10, v1, v4}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_64
    if-nez p3, :cond_9b

    if-eqz v0, :cond_69

    goto :goto_9b

    :cond_69
    if-eqz v3, :cond_78

    .line 2271
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p3

    iget-object p3, p3, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {p3}, Lcom/android/server/wm/WallpaperController;->getWallpaperTarget()Lcom/android/server/wm/WindowState;

    move-result-object p3

    if-eqz p3, :cond_78

    return v1

    :cond_78
    if-eqz p2, :cond_9a

    .line 2274
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->launchedFromSystemSurface()Z

    move-result p0

    if-nez p0, :cond_9a

    if-eqz p1, :cond_99

    .line 2276
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    move-result p0

    if-ne p0, v2, :cond_99

    iget p0, p1, Lcom/android/server/wm/ActivityRecord;->mTransferringSplashScreenState:I

    if-nez p0, :cond_99

    iget-object p0, p1, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    if-nez p0, :cond_98

    iget-object p0, p1, Lcom/android/server/wm/ActivityRecord;->mStartingWindow:Lcom/android/server/wm/WindowState;

    if-eqz p0, :cond_99

    iget-object p0, p1, Lcom/android/server/wm/ActivityRecord;->mStartingSurface:Lcom/android/server/wm/StartingSurfaceController$StartingSurface;

    if-eqz p0, :cond_99

    :cond_98
    return v2

    :cond_99
    return v1

    :cond_9a
    return v2

    :cond_9b
    :goto_9b
    return v1
.end method

.method public windowsAreFocusable()Z
    .registers 2

    const/4 v0, 0x0

    .line 3389
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->windowsAreFocusable(Z)Z

    move-result p0

    return p0
.end method

.method public windowsAreFocusable(Z)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_22

    .line 3396
    iget p1, p0, Lcom/android/server/wm/ActivityRecord;->mTargetSdk:I

    const/16 v1, 0x1d

    if-ge p1, v1, :cond_22

    .line 3397
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getPid()I

    move-result p1

    .line 3398
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget-object v1, v1, Lcom/android/server/wm/RootWindowContainer;->mTopFocusedAppByProcess:Landroid/util/ArrayMap;

    .line 3399
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    if-eqz p1, :cond_22

    if-eq p1, p0, :cond_22

    return v0

    .line 3410
    :cond_22
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->canReceiveKeys()Z

    move-result p1

    if-nez p1, :cond_2e

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isAlwaysFocusable()Z

    move-result p1

    if-eqz p1, :cond_36

    :cond_2e
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isAttached()Z

    move-result p0

    if-eqz p0, :cond_36

    const/4 p0, 0x1

    return p0

    :cond_36
    return v0
.end method

.method public writeIdentifierToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 7

    .line 9361
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    const-wide v0, 0x10500000001L

    .line 9362
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v0, 0x10500000002L

    .line 9363
    iget v2, p0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 9364
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p0

    const-wide v0, 0x10900000003L

    invoke-virtual {p1, v0, v1, p0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 9365
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public writeNameToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 4

    .line 9356
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    invoke-virtual {p1, p2, p3, p0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    return-void
.end method
