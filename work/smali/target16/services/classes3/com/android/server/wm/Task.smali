.class public Lcom/android/server/wm/Task;
.super Lcom/android/server/wm/TaskFragment;
.source "Task.java"


# static fields
.field public static final sResetTargetTaskHelper:Lcom/android/server/wm/ResetTargetTaskHelper;

.field public static sTmpException:Ljava/lang/Exception;


# instance fields
.field public affinity:Ljava/lang/String;

.field public affinityIntent:Landroid/content/Intent;

.field public autoRemoveRecents:Z

.field public effectiveUid:I

.field public inRecents:Z

.field public intent:Landroid/content/Intent;

.field public isAvailable:Z

.field public isPersistable:Z

.field public lastActiveTime:J

.field public lastDescription:Ljava/lang/CharSequence;

.field public mAffiliatedTaskId:I

.field public mAlignActivityLocaleWithTask:Z

.field public mCallingFeatureId:Ljava/lang/String;

.field public mCallingPackage:Ljava/lang/String;

.field public mCallingUid:I

.field public mChildPipActivity:Lcom/android/server/wm/ActivityRecord;

.field public mConfigWillChange:Z

.field public mCurrentUser:I

.field public mDecorSurfaceContainer:Lcom/android/server/wm/Task$DecorSurfaceContainer;

.field public mDeferTaskAppear:Z

.field public mDisablePip:Z

.field public mDisallowOverrideBoundsForChildren:Z

.field public mDragResizing:Z

.field public mExcludeLayersFromTaskSnapshot:[Landroid/view/SurfaceControl;

.field public final mFindRootHelper:Lcom/android/server/wm/Task$FindRootHelper;

.field public mForceExcludedFromRecents:Z

.field public mForceNonResizeOverride:Z

.field public mForceResizeOverride:Z

.field public mForceShowForAllUsers:Z

.field public final mHandler:Landroid/os/Handler;

.field public mHasBeenVisible:Z

.field public mInRemoveTask:Z

.field public mInResumeTopActivity:Z

.field public mIsEffectivelySystemApp:Z

.field public mIsPerceptible:Z

.field public mIsTrimmableFromRecents:Z

.field public mKillProcessesOnDestroyed:Z

.field public mLastNonFullscreenBounds:Landroid/graphics/Rect;

.field public mLastRecentsAnimationOverlay:Landroid/view/SurfaceControl;

.field public mLastRecentsAnimationTransaction:Landroid/window/PictureInPictureSurfaceTransaction;

.field public mLastReportedRequestedOrientation:I

.field public mLastTimeMoved:J

.field public mLaunchAdjacentDisabled:Z

.field public mLaunchCookie:Landroid/os/IBinder;

.field public mLaunchNextToBubble:Z

.field public mLayerRank:I

.field public mLockTaskAuth:I

.field public mLockTaskUid:I

.field public mMultiWindowRestoreParent:Landroid/window/WindowContainerToken;

.field public mMultiWindowRestoreWindowingMode:I

.field public mName:Ljava/lang/String;

.field public mNeverRelinquishIdentity:Z

.field public mNextAffiliate:Lcom/android/server/wm/Task;

.field public mNextAffiliateTaskId:I

.field public mNonOccludedFreeformAreaRatio:I

.field public mOffsetXForInsets:I

.field public mOffsetYForInsets:I

.field public mPendingConvertFromTranslucentActivity:Lcom/android/server/wm/ActivityRecord;

.field public mPrevAffiliate:Lcom/android/server/wm/Task;

.field public mPrevAffiliateTaskId:I

.field public mPrevDisplayId:I

.field public mRemoveWithTaskOrganizer:Z

.field public mRemoving:Z

.field public mReparentLeafTaskIfRelaunch:Z

.field public mReparentOnDisplayRemoval:Z

.field public mRequiredDisplayCategory:Ljava/lang/String;

.field public mResizeMode:I

.field public mReuseTask:Z

.field public mRootProcess:Lcom/android/server/wm/WindowProcessController;

.field public mSelfMovable:I

.field public mSharedStartingData:Lcom/android/server/wm/StartingData;

.field public mSupportsPictureInPicture:Z

.field public mTaskAppearedSent:Z

.field public mTaskDescription:Landroid/app/ActivityManager$TaskDescription;

.field public mTaskFragmentHostProcessName:Ljava/lang/String;

.field public mTaskFragmentHostUid:I

.field public final mTaskId:I

.field public mTaskOrganizer:Landroid/window/ITaskOrganizer;

.field public final mTmpRect:Landroid/graphics/Rect;

.field public mTranslucentActivityWaiting:Lcom/android/server/wm/ActivityRecord;

.field public mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

.field public mUserId:I

.field public mUserSetupComplete:Z

.field public mWindowLayoutAffinity:Ljava/lang/String;

.field public maxRecents:I

.field public origActivity:Landroid/content/ComponentName;

.field public realActivity:Landroid/content/ComponentName;

.field public realActivitySuspended:Z

.field public rootAffinity:Ljava/lang/String;

.field public rootWasReset:Z

.field public stringName:Ljava/lang/String;

.field public voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

.field public voiceSession:Landroid/service/voice/IVoiceInteractionSession;


# direct methods
.method public static synthetic $r8$lambda$-SWRRFdKBFymJwoRoggPHSJhK8A(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 1

    .line 3509
    iget-boolean p0, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static synthetic $r8$lambda$0kCqOJ8ze-5Soyanb7c_3gmlAIE(Z[ILcom/android/server/wm/TaskFragment;)V
    .registers 3

    .line 5081
    invoke-virtual {p2, p0}, Lcom/android/server/wm/TaskFragment;->sleepIfPossible(Z)Z

    move-result p0

    if-nez p0, :cond_d

    const/4 p0, 0x0

    .line 5082
    aget p2, p1, p0

    add-int/lit8 p2, p2, 0x1

    aput p2, p1, p0

    :cond_d
    return-void
.end method

.method public static synthetic $r8$lambda$3Ewe-KAmC2DF3EixVQwwO30CZOI(Lcom/android/server/wm/ActivityRecord;Landroid/content/ComponentName;I)Z
    .registers 3

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/wm/Task;->matchesActivityInHistory(Lcom/android/server/wm/ActivityRecord;Landroid/content/ComponentName;I)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$3JraLNsRWsR4sqFLE316VG8tKnY(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 2

    .line 3191
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mHandleExitSplashScreen:Z

    if-eqz v0, :cond_a

    iget p0, p0, Lcom/android/server/wm/ActivityRecord;->mTransferringSplashScreenState:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_a

    return v0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$4hkkElslwSMq00RFoRoL-4xAILU(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 1

    .line 3463
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->occludesParent()Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$4iP5q8tY5x9_CYiffa7EFKO-l6E(Lcom/android/server/wm/WindowState;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V
    .registers 4

    const/4 v0, 0x0

    .line 4573
    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mIsSurfacePositionPaused:Z

    .line 4574
    invoke-virtual {p0, p2}, Lcom/android/server/wm/WindowState;->updateSurfacePosition(Landroid/view/SurfaceControl$Transaction;)V

    .line 4575
    invoke-virtual {p2, p1}, Landroid/view/SurfaceControl$Transaction;->merge(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    return-void
.end method

.method public static synthetic $r8$lambda$5AS_7NuUuhaiD4mSEQAHpIm36FM(Landroid/content/ComponentName;Lcom/android/server/wm/ActivityRecord;)Z
    .registers 4

    .line 5771
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 5772
    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1e

    const/4 p0, 0x1

    return p0

    :cond_1e
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$5TiwEo-YMpMik2pDaOLatEjRPl8(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/wm/Task;->isTopRunningNonDelayed(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$6cHz-NAnhUab3vTQ7uP5so63vzc(Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;Lcom/android/server/wm/Transition;Z)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/Task;->lambda$moveTaskToBack$30(Lcom/android/server/wm/Task;Lcom/android/server/wm/Transition;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$71YccE_AQP42Bwnq_wvEDeaMask(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityManager$TaskDescription;)Z
    .registers 3

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/wm/Task;->setTaskDescriptionFromActivityAboveRoot(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityManager$TaskDescription;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$ATwp9B4OfSUR2qVylvRqTZ8ave8(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->lambda$finishIfVoiceTask$24(Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public static synthetic $r8$lambda$AdtjBiCSBrf-4ry6DpupAgK2ANk([ILcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z
    .registers 3

    .line 1790
    invoke-static {p1, p2, p0}, Lcom/android/server/wm/Task;->finishActivityAbove(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;[I)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$CQYCwbvQSL2nqLahABOJys84_uk(IILcom/android/server/wm/TaskFragment;)V
    .registers 4

    .line 1102
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-nez v0, :cond_9

    .line 1103
    invoke-virtual {p2, p0, p1}, Lcom/android/server/wm/TaskFragment;->setMinDimensions(II)V

    :cond_9
    return-void
.end method

.method public static synthetic $r8$lambda$D3KYP03V7WedxeX6gNSyvdSrlK0(Lcom/android/server/am/AppTimeTracker;Lcom/android/server/wm/ActivityRecord;)V
    .registers 2

    .line 5886
    iput-object p0, p1, Lcom/android/server/wm/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    return-void
.end method

.method public static synthetic $r8$lambda$Gn8D-lilX5mRMd2eptluvSCrDAk(Lcom/android/server/wm/TaskFragment;[ZLcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;ZLcom/android/server/wm/TaskFragment;)V
    .registers 7

    if-ne p0, p5, :cond_3

    goto :goto_a

    :cond_3
    const/4 p0, 0x0

    .line 5369
    invoke-virtual {p5, p0}, Lcom/android/server/wm/TaskFragment;->canBeResumed(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    if-nez p0, :cond_b

    :goto_a
    return-void

    :cond_b
    const/4 p0, 0x0

    .line 5372
    aget-boolean v0, p1, p0

    invoke-virtual {p5, p2, p3, p4}, Lcom/android/server/wm/TaskFragment;->resumeTopActivity(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Z)Z

    move-result p2

    or-int/2addr p2, v0

    aput-boolean p2, p1, p0

    return-void
.end method

.method public static synthetic $r8$lambda$HlXBqqOR-QgwYsSxfxPhLxWgv6c(Lcom/android/server/wm/ActivityRecord;ZLcom/android/server/wm/Task;)V
    .registers 3

    .line 5127
    invoke-virtual {p2, p0, p1}, Lcom/android/server/wm/TaskFragment;->updateActivityVisibilities(Lcom/android/server/wm/ActivityRecord;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$JbhfpIQLHIlymaaN4Ed4hNlhymU([ILcom/android/server/wm/Task;)V
    .registers 3

    const/4 p1, 0x0

    .line 2677
    aget v0, p0, p1

    add-int/lit8 v0, v0, 0x1

    aput v0, p0, p1

    return-void
.end method

.method public static synthetic $r8$lambda$Mcecdnj-YGmhpeybYCbrbkgURg0(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;)Z
    .registers 3

    .line 5941
    iget p0, p0, Lcom/android/server/wm/Task;->mTaskId:I

    const/4 v0, 0x0

    invoke-static {p1, p0, v0}, Lcom/android/server/wm/Task;->isTopRunning(Lcom/android/server/wm/ActivityRecord;ILandroid/os/IBinder;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$MlvVaQXQozfQPRy0fDK6wU20wNA(Lcom/android/server/wm/ActivityRecord;ILandroid/os/IBinder;)Z
    .registers 3

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/wm/Task;->isTopRunning(Lcom/android/server/wm/ActivityRecord;ILandroid/os/IBinder;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$OF1uvXOUYU92SJq4X34ngGgUiqg(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;)Z
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->lambda$getBottomMostActivityInSamePackage$33(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Q4j1Zo5XMr3wcGmI579N3-4Ksu8(Lcom/android/server/wm/WindowState;)Z
    .registers 2

    .line 1496
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v0, 0x3

    if-ne p0, v0, :cond_9

    const/4 p0, 0x1

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$Vd_JubkSpa7BqHZrBAqyo-9yHEA(Lcom/android/server/wm/Task;ZLjava/lang/String;Lcom/android/server/wm/ActivityRecord;)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/Task;->lambda$removeActivities$3(ZLjava/lang/String;Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WSJnnx7sDBBCrdulqJF9zCQ69_0(Ljava/util/function/Consumer;ZLcom/android/server/wm/Task;)V
    .registers 8

    .line 3290
    invoke-virtual {p2}, Lcom/android/server/wm/TaskFragment;->isLeafTaskFragment()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 3291
    invoke-interface {p0, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    :cond_a
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_38

    .line 3298
    iget-object v2, p2, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v1

    :goto_15
    if-ltz v2, :cond_62

    .line 3299
    iget-object v3, p2, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    .line 3300
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v4

    if-eqz v4, :cond_29

    .line 3301
    invoke-virtual {v3, p0, p1}, Lcom/android/server/wm/WindowContainer;->forAllLeafTaskFragments(Ljava/util/function/Consumer;Z)V

    goto :goto_35

    .line 3302
    :cond_29
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    if-eqz v3, :cond_35

    if-nez v0, :cond_35

    .line 3303
    invoke-interface {p0, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    move v0, v1

    :cond_35
    :goto_35
    add-int/lit8 v2, v2, -0x1

    goto :goto_15

    :cond_38
    move v2, v0

    .line 3308
    :goto_39
    iget-object v3, p2, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_62

    .line 3309
    iget-object v3, p2, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    .line 3310
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v4

    if-eqz v4, :cond_53

    .line 3311
    invoke-virtual {v3, p0, p1}, Lcom/android/server/wm/WindowContainer;->forAllLeafTaskFragments(Ljava/util/function/Consumer;Z)V

    goto :goto_5f

    .line 3312
    :cond_53
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    if-eqz v3, :cond_5f

    if-nez v2, :cond_5f

    .line 3313
    invoke-interface {p0, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    move v2, v1

    :cond_5f
    :goto_5f
    add-int/lit8 v0, v0, 0x1

    goto :goto_39

    :cond_62
    return-void
.end method

.method public static synthetic $r8$lambda$cysn04rFHbtUQ4MzxliIEMFuvUQ(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 2

    .line 3186
    iget-boolean v0, p0, Lcom/android/server/wm/WindowToken;->mIsExiting:Z

    if-nez v0, :cond_12

    invoke-virtual {p0}, Lcom/android/server/wm/WindowToken;->isClientVisible()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$dOsd4Lo5lEwJC4pN8PO8qVfOV1Y(Lcom/android/server/wm/Task;ZLjava/lang/Object;)Z
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/Task;->lambda$getNextFocusableTask$9(ZLjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$dxwU1cM-XlGUhSWLfISfyN-jgw0(Lcom/android/server/wm/ActivityRecord;Landroid/os/IBinder;)Z
    .registers 2

    .line 0
    invoke-static {p0, p1}, Lcom/android/server/wm/Task;->finishIfVoiceActivity(Lcom/android/server/wm/ActivityRecord;Landroid/os/IBinder;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$ex9mH5p3Bpg8dXyG-r4cvHDfCnU([Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskFragment;)Z
    .registers 5

    .line 5516
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isDisablePip()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    goto :goto_26

    .line 5520
    :cond_c
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-eqz p1, :cond_26

    .line 5521
    sget-object v0, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    sget-object v2, Lcom/android/server/wm/ActivityRecord$State;->PAUSING:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {p1, v0, v2}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 5522
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->supportsPictureInPicture()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 5523
    aput-object p1, p0, v1

    const/4 p0, 0x1

    return p0

    :cond_26
    :goto_26
    return v1
.end method

.method public static synthetic $r8$lambda$iK08zrNtWbENDs778nSKw_nSqQs(Ljava/util/function/Predicate;Lcom/android/server/wm/TaskFragment;)Z
    .registers 2

    .line 2643
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$iQaicVpm_4CmaW_6h7_dLKK1AYM(Landroid/view/SurfaceControl$Transaction;[ILcom/android/server/wm/TaskFragment;)V
    .registers 6

    .line 3682
    invoke-virtual {p2}, Lcom/android/server/wm/TaskFragment;->shouldBoostDimmer()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x0

    .line 3683
    aget v1, p1, v0

    add-int/lit8 v2, v1, 0x1

    aput v2, p1, v0

    invoke-virtual {p2, p0, v1}, Lcom/android/server/wm/WindowContainer;->assignLayer(Landroid/view/SurfaceControl$Transaction;I)V

    :cond_10
    return-void
.end method

.method public static synthetic $r8$lambda$ifbgskeG0GV5E5wiQdHIfJ0UHQg(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z
    .registers 4

    if-ne p1, p0, :cond_3

    goto :goto_40

    .line 3086
    :cond_3
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->occludesParent()Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_4b

    .line 3090
    :cond_a
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object p1

    .line 3091
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object p0

    if-ne p1, p0, :cond_15

    goto :goto_40

    :cond_15
    if-eqz p1, :cond_1e

    .line 3095
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object p0

    if-eqz p0, :cond_1e

    goto :goto_40

    .line 3101
    :cond_1e
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object p0

    :goto_26
    move-object v1, p1

    move-object p1, p0

    move-object p0, v1

    if-eqz p1, :cond_4b

    .line 3103
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3a

    goto :goto_4b

    .line 3107
    :cond_3a
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object p0

    if-eqz p0, :cond_42

    :goto_40
    const/4 p0, 0x1

    return p0

    .line 3113
    :cond_42
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object p0

    goto :goto_26

    :cond_4b
    :goto_4b
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$k2gRSRshUDXQwbYYhMdvay1R7bk(Lcom/android/server/wm/Task;[ILcom/android/server/wm/Task;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/Task;->lambda$setDisallowOverrideBoundsForChildren$32([ILcom/android/server/wm/Task;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mJwlJtDokS1IeVB6-Wfblfh2Zgg(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;[ILcom/android/server/wm/TaskFragment;)V
    .registers 5

    .line 1356
    invoke-virtual {p3}, Lcom/android/server/wm/TaskFragment;->getResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 1357
    invoke-virtual {p3, p0}, Lcom/android/server/wm/TaskFragment;->canBeResumed(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-nez v0, :cond_19

    const/4 v0, 0x0

    .line 1358
    invoke-virtual {p3, v0, p0, p1}, Lcom/android/server/wm/TaskFragment;->startPausing(ZLcom/android/server/wm/ActivityRecord;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_19

    .line 1359
    aget p0, p2, v0

    add-int/lit8 p0, p0, 0x1

    aput p0, p2, v0

    :cond_19
    return-void
.end method

.method public static synthetic $r8$lambda$mO0nhN0TinnO-hXxu3NOXL7HKp0(Lcom/android/server/am/ActivityManagerService$ItemMatcher;Ljava/util/ArrayList;Lcom/android/server/wm/ActivityRecord;)V
    .registers 4

    .line 6144
    iget-object v0, p2, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->match(Ljava/lang/Object;Landroid/content/ComponentName;)Z

    move-result p0

    if-eqz p0, :cond_f

    .line 6145
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f
    return-void
.end method

.method public static synthetic $r8$lambda$oESpABTe6udMaDKxMx6BJayffmc(Lcom/android/server/wm/WindowState;)Z
    .registers 3

    .line 3177
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    invoke-virtual {p0}, Landroid/view/WindowManager$LayoutParams;->isFullscreen()Z

    move-result p0

    if-eqz p0, :cond_e

    return v1

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$oOKbdwx4puIe6IU8_ruEL582v7c(ZLjava/util/ArrayList;Lcom/android/server/wm/ActivityRecord;)V
    .registers 4

    .line 1713
    iget-boolean v0, p2, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v0, :cond_10

    if-eqz p0, :cond_d

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->isTaskOverlay()Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_10

    .line 1716
    :cond_d
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_10
    :goto_10
    return-void
.end method

.method public static synthetic $r8$lambda$t862PBvxPDCAZwyKylAtDpCwRqI(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 2

    .line 5502
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->showToCurrentUser()Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$tVpkFMG2_bx-FznGmNjbpYswPyE(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Lcom/android/modules/utils/TypedXmlSerializer;)Z
    .registers 3

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/wm/Task;->saveActivityToXml(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Lcom/android/modules/utils/TypedXmlSerializer;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$w39khe0EPqqNZHv7S-HUCvXuK8Q(Lcom/android/server/wm/ActivityRecord;[I[Landroid/content/Intent;[Lcom/android/server/uri/NeededUriGrants;Lcom/android/server/wm/ActivityRecord;)Z
    .registers 11

    if-ne p4, p0, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    const/4 p0, 0x0

    .line 5812
    aget v1, p1, p0

    aget-object v2, p2, p0

    aget-object v3, p3, p0

    const-string v4, "navigate-up"

    const/4 v5, 0x1

    move-object v0, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(ILandroid/content/Intent;Lcom/android/server/uri/NeededUriGrants;Ljava/lang/String;Z)I

    .line 5815
    aput p0, p1, p0

    const/4 p1, 0x0

    .line 5816
    aput-object p1, p2, p0

    return p0
.end method

.method public static synthetic $r8$lambda$z6Po_rePow-dmWUbmQrEMtdXN7c(Lcom/android/server/wm/Task;[ZLcom/android/server/wm/Task;)Z
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/Task;->lambda$inFrontOfStandardRootTask$25([ZLcom/android/server/wm/Task;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmHasBeenVisible(Lcom/android/server/wm/Task;Z)V
    .registers 2

    .line 0
    iput-boolean p1, p0, Lcom/android/server/wm/Task;->mHasBeenVisible:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$maddChild(Lcom/android/server/wm/Task;Lcom/android/server/wm/WindowContainer;IZ)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/Task;->addChild(Lcom/android/server/wm/WindowContainer;IZ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetWindowingModeInner(Lcom/android/server/wm/Task;IZ)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/Task;->setWindowingModeInner(IZ)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 568
    new-instance v0, Lcom/android/server/wm/ResetTargetTaskHelper;

    invoke-direct {v0}, Lcom/android/server/wm/ResetTargetTaskHelper;-><init>()V

    sput-object v0, Lcom/android/server/wm/Task;->sResetTargetTaskHelper:Lcom/android/server/wm/ResetTargetTaskHelper;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;ILandroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/content/ComponentName;ZZIILjava/lang/String;JZLandroid/app/ActivityManager$TaskDescription;IIIILjava/lang/String;Ljava/lang/String;IZZZIILandroid/content/pm/ActivityInfo;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;ZLandroid/os/IBinder;ZZ)V
    .registers 41

    move-object/from16 v0, p30

    const/4 v1, 0x0

    const/4 v2, 0x0

    move/from16 v3, p33

    .line 669
    invoke-direct {p0, p1, v1, v3, v2}, Lcom/android/server/wm/TaskFragment;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/os/IBinder;ZZ)V

    .line 285
    iput-object v1, p0, Lcom/android/server/wm/Task;->mTranslucentActivityWaiting:Lcom/android/server/wm/ActivityRecord;

    .line 286
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/Task;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    .line 290
    iput-object v1, p0, Lcom/android/server/wm/Task;->mPendingConvertFromTranslucentActivity:Lcom/android/server/wm/ActivityRecord;

    .line 301
    iput-boolean v2, p0, Lcom/android/server/wm/Task;->mInResumeTopActivity:Z

    const/4 p1, 0x1

    .line 345
    iput p1, p0, Lcom/android/server/wm/Task;->mLockTaskAuth:I

    const/4 v3, -0x1

    .line 347
    iput v3, p0, Lcom/android/server/wm/Task;->mLockTaskUid:I

    .line 366
    iput-boolean v2, p0, Lcom/android/server/wm/Task;->isPersistable:Z

    .line 381
    iput-boolean p1, p0, Lcom/android/server/wm/Task;->mNeverRelinquishIdentity:Z

    .line 388
    iput-boolean v2, p0, Lcom/android/server/wm/Task;->mReuseTask:Z

    .line 394
    iput v3, p0, Lcom/android/server/wm/Task;->mPrevAffiliateTaskId:I

    .line 396
    iput v3, p0, Lcom/android/server/wm/Task;->mNextAffiliateTaskId:I

    .line 406
    iput-object v1, p0, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    .line 428
    iput v3, p0, Lcom/android/server/wm/Task;->mLayerRank:I

    .line 442
    iput v3, p0, Lcom/android/server/wm/Task;->mPrevDisplayId:I

    .line 444
    iput v3, p0, Lcom/android/server/wm/Task;->mMultiWindowRestoreWindowingMode:I

    .line 453
    iput v3, p0, Lcom/android/server/wm/Task;->mLastReportedRequestedOrientation:I

    .line 455
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    .line 519
    iput-boolean v2, p0, Lcom/android/server/wm/Task;->mIsPerceptible:Z

    .line 544
    iput v2, p0, Lcom/android/server/wm/Task;->mSelfMovable:I

    .line 570
    new-instance v3, Lcom/android/server/wm/Task$FindRootHelper;

    invoke-direct {v3, p0, v1}, Lcom/android/server/wm/Task$FindRootHelper;-><init>(Lcom/android/server/wm/Task;Lcom/android/server/wm/Task-IA;)V

    iput-object v3, p0, Lcom/android/server/wm/Task;->mFindRootHelper:Lcom/android/server/wm/Task$FindRootHelper;

    .line 649
    iput-boolean v2, p0, Lcom/android/server/wm/Task;->mAlignActivityLocaleWithTask:Z

    .line 671
    iput p2, p0, Lcom/android/server/wm/Task;->mTaskId:I

    .line 672
    iput p11, p0, Lcom/android/server/wm/Task;->mUserId:I

    move/from16 v1, p25

    .line 673
    iput-boolean v1, p0, Lcom/android/server/wm/Task;->mSupportsPictureInPicture:Z

    if-eqz p17, :cond_51

    move-object/from16 v1, p17

    goto :goto_56

    .line 676
    :cond_51
    new-instance v1, Landroid/app/ActivityManager$TaskDescription;

    invoke-direct {v1}, Landroid/app/ActivityManager$TaskDescription;-><init>()V

    :goto_56
    iput-object v1, p0, Lcom/android/server/wm/Task;->mTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 677
    iput-object p4, p0, Lcom/android/server/wm/Task;->affinityIntent:Landroid/content/Intent;

    .line 678
    iput-object p5, p0, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    .line 679
    iput-object p6, p0, Lcom/android/server/wm/Task;->rootAffinity:Ljava/lang/String;

    move-object/from16 p4, p31

    .line 680
    iput-object p4, p0, Lcom/android/server/wm/Task;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    move-object/from16 p4, p32

    .line 681
    iput-object p4, p0, Lcom/android/server/wm/Task;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 682
    iput-object p7, p0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    move/from16 p4, p26

    .line 683
    iput-boolean p4, p0, Lcom/android/server/wm/Task;->realActivitySuspended:Z

    .line 684
    iput-object p8, p0, Lcom/android/server/wm/Task;->origActivity:Landroid/content/ComponentName;

    .line 685
    iput-boolean p9, p0, Lcom/android/server/wm/Task;->rootWasReset:Z

    .line 686
    iput-boolean p1, p0, Lcom/android/server/wm/Task;->isAvailable:Z

    .line 687
    iput-boolean p10, p0, Lcom/android/server/wm/Task;->autoRemoveRecents:Z

    move/from16 p4, p27

    .line 688
    iput-boolean p4, p0, Lcom/android/server/wm/Task;->mUserSetupComplete:Z

    move/from16 p4, p12

    .line 689
    iput p4, p0, Lcom/android/server/wm/Task;->effectiveUid:I

    .line 690
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->touchActiveTime()V

    move-object/from16 p4, p13

    .line 691
    iput-object p4, p0, Lcom/android/server/wm/Task;->lastDescription:Ljava/lang/CharSequence;

    move-wide/from16 p4, p14

    .line 692
    iput-wide p4, p0, Lcom/android/server/wm/Task;->mLastTimeMoved:J

    move/from16 p4, p16

    .line 693
    iput-boolean p4, p0, Lcom/android/server/wm/Task;->mNeverRelinquishIdentity:Z

    move/from16 p4, p18

    .line 694
    iput p4, p0, Lcom/android/server/wm/Task;->mAffiliatedTaskId:I

    move/from16 p4, p19

    .line 695
    iput p4, p0, Lcom/android/server/wm/Task;->mPrevAffiliateTaskId:I

    move/from16 p4, p20

    .line 696
    iput p4, p0, Lcom/android/server/wm/Task;->mNextAffiliateTaskId:I

    move/from16 p4, p21

    .line 697
    iput p4, p0, Lcom/android/server/wm/Task;->mCallingUid:I

    move-object/from16 p4, p22

    .line 698
    iput-object p4, p0, Lcom/android/server/wm/Task;->mCallingPackage:Ljava/lang/String;

    move-object/from16 p4, p23

    .line 699
    iput-object p4, p0, Lcom/android/server/wm/Task;->mCallingFeatureId:Ljava/lang/String;

    move/from16 p4, p24

    .line 700
    iput p4, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    if-eqz v0, :cond_ad

    .line 702
    invoke-virtual {p0, p3, v0}, Lcom/android/server/wm/Task;->setIntent(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V

    goto :goto_b7

    .line 704
    :cond_ad
    iput-object p3, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    move/from16 p3, p28

    .line 705
    iput p3, p0, Lcom/android/server/wm/TaskFragment;->mMinWidth:I

    move/from16 p3, p29

    .line 706
    iput p3, p0, Lcom/android/server/wm/TaskFragment;->mMinHeight:I

    .line 708
    :goto_b7
    iget-object p3, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p3}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object p3

    iget-object p4, p0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {p3, p2, p4}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskCreated(ILandroid/content/ComponentName;)V

    .line 709
    new-instance p3, Lcom/android/server/wm/Task$ActivityTaskHandler;

    iget-object p4, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object p4, p4, Lcom/android/server/wm/ActivityTaskSupervisor;->mLooper:Landroid/os/Looper;

    invoke-direct {p3, p0, p4}, Lcom/android/server/wm/Task$ActivityTaskHandler;-><init>(Lcom/android/server/wm/Task;Landroid/os/Looper;)V

    iput-object p3, p0, Lcom/android/server/wm/Task;->mHandler:Landroid/os/Handler;

    .line 710
    iget-object p3, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p3, p3, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {p3}, Landroid/app/ActivityManagerInternal;->getCurrentUserId()I

    move-result p3

    iput p3, p0, Lcom/android/server/wm/Task;->mCurrentUser:I

    move-object/from16 p3, p34

    .line 712
    iput-object p3, p0, Lcom/android/server/wm/Task;->mLaunchCookie:Landroid/os/IBinder;

    move/from16 p3, p35

    .line 713
    iput-boolean p3, p0, Lcom/android/server/wm/Task;->mDeferTaskAppear:Z

    move/from16 p3, p36

    .line 714
    iput-boolean p3, p0, Lcom/android/server/wm/Task;->mRemoveWithTaskOrganizer:Z

    .line 715
    iput-boolean p1, p0, Lcom/android/server/wm/Task;->mIsTrimmableFromRecents:Z

    .line 716
    invoke-static {p2}, Lcom/android/server/wm/EventLogTags;->writeWmTaskCreated(I)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;ILandroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/content/ComponentName;ZZIILjava/lang/String;JZLandroid/app/ActivityManager$TaskDescription;IIIILjava/lang/String;Ljava/lang/String;IZZZIILandroid/content/pm/ActivityInfo;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;ZLandroid/os/IBinder;ZZLcom/android/server/wm/Task-IA;)V
    .registers 38

    .line 0
    invoke-direct/range {p0 .. p36}, Lcom/android/server/wm/Task;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;ILandroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/content/ComponentName;ZZIILjava/lang/String;JZLandroid/app/ActivityManager$TaskDescription;IIIILjava/lang/String;Ljava/lang/String;IZZZIILandroid/content/pm/ActivityInfo;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;ZLandroid/os/IBinder;ZZ)V

    return-void
.end method

.method public static calculateTopActivityMainWindowFrameForTaskInfo(Lcom/android/server/wm/ActivityRecord;)Landroid/graphics/Rect;
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 3489
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object p0

    if-nez p0, :cond_b

    return-object v0

    .line 3493
    :cond_b
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mHaveFrame:Z

    if-nez v1, :cond_10

    return-object v0

    .line 3496
    :cond_10
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getFrame()Landroid/graphics/Rect;

    move-result-object v1

    .line 3497
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getParentFrame()Landroid/graphics/Rect;

    move-result-object p0

    .line 3498
    invoke-virtual {p0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1f

    return-object v0

    :cond_1f
    return-object v1
.end method

.method public static enableEnterPipOnTaskSwitch(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)V
    .registers 7

    if-nez p0, :cond_3

    goto :goto_12

    :cond_3
    if-eqz p3, :cond_c

    .line 5542
    invoke-virtual {p3}, Landroid/app/ActivityOptions;->disallowEnterPictureInPictureWhileLaunching()Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_12

    .line 5546
    :cond_c
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_13

    :goto_12
    return-void

    :cond_13
    if-eqz p1, :cond_1a

    .line 5550
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object p1

    goto :goto_22

    :cond_1a
    if-eqz p2, :cond_21

    .line 5551
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object p1

    goto :goto_22

    :cond_21
    const/4 p1, 0x0

    :goto_22
    if-nez p1, :cond_2c

    .line 5553
    const-string p0, "ActivityTaskManager"

    const-string p1, "No root task for enter pip, both to front task and activity are null?"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 5561
    :cond_2c
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_42

    iget-object p2, p1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 5562
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/android/server/wm/TransitionController;->isTransientHide(Lcom/android/server/wm/Task;)Z

    move-result p2

    if-eqz p2, :cond_42

    move p2, v1

    goto :goto_43

    :cond_42
    move p2, v0

    :goto_43
    if-eqz p3, :cond_4b

    .line 5564
    invoke-virtual {p3}, Landroid/app/ActivityOptions;->getTransientLaunch()Z

    move-result p3

    if-nez p3, :cond_5e

    :cond_4b
    iget-object p3, p1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 5565
    invoke-virtual {p3, p1}, Lcom/android/server/wm/TransitionController;->isTransientHide(Lcom/android/server/wm/Task;)Z

    move-result p3

    if-nez p3, :cond_5e

    .line 5566
    invoke-static {}, Lcom/android/server/wm/ActivityTaskManagerService;->isPip2ExperimentEnabled()Z

    move-result p3

    if-eqz p3, :cond_5c

    if-eqz p2, :cond_5c

    goto :goto_5e

    :cond_5c
    move p2, v0

    goto :goto_5f

    :cond_5e
    :goto_5e
    move p2, v1

    .line 5573
    :goto_5f
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeAssistant()Z

    move-result p1

    if-nez p1, :cond_68

    if-nez p2, :cond_68

    move v0, v1

    :cond_68
    iput-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->supportsEnterPipOnTaskSwitch:Z

    return-void
.end method

.method public static findEnterPipOnTaskSwitchCandidate(Lcom/android/server/wm/Task;)Lcom/android/server/wm/ActivityRecord;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const/4 v0, 0x1

    .line 5514
    new-array v0, v0, [Lcom/android/server/wm/ActivityRecord;

    .line 5515
    new-instance v1, Lcom/android/server/wm/Task$$ExternalSyntheticLambda16;

    invoke-direct {v1, v0}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda16;-><init>([Lcom/android/server/wm/ActivityRecord;)V

    invoke-virtual {p0, v1}, Lcom/android/server/wm/TaskFragment;->forAllLeafTaskFragments(Ljava/util/function/Predicate;)Z

    const/4 p0, 0x0

    .line 5528
    aget-object p0, v0, p0

    return-object p0
.end method

.method public static finishActivityAbove(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;[I)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 1857
    :cond_4
    iget-boolean v1, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    const/4 v2, 0x0

    if-nez v1, :cond_25

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isTaskOverlay()Z

    move-result v1

    if-nez v1, :cond_25

    .line 1858
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getOptions()Landroid/app/ActivityOptions;

    move-result-object v1

    if-eqz v1, :cond_1b

    .line 1860
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->clearOptionsAnimation()V

    .line 1862
    invoke-virtual {p1, v1}, Lcom/android/server/wm/ActivityRecord;->updateOptionsLocked(Landroid/app/ActivityOptions;)V

    .line 1864
    :cond_1b
    aget p1, p2, v2

    add-int/2addr p1, v0

    aput p1, p2, v2

    .line 1865
    const-string p1, "clear-task-stack"

    invoke-virtual {p0, p1, v2}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(Ljava/lang/String;Z)I

    :cond_25
    return v2
.end method

.method public static finishIfVoiceActivity(Lcom/android/server/wm/ActivityRecord;Landroid/os/IBinder;)Z
    .registers 4

    .line 5684
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v0, :cond_21

    invoke-interface {v0}, Landroid/service/voice/IVoiceInteractionSession;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    if-eq v0, p1, :cond_b

    goto :goto_21

    .line 5686
    :cond_b
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->clearVoiceSessionLocked()V

    .line 5688
    :try_start_e
    iget-object p1, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/app/IApplicationThread;->scheduleLocalVoiceInteractionStarted(Landroid/os/IBinder;Lcom/android/internal/app/IVoiceInteractor;)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_1a} :catch_1a

    .line 5692
    :catch_1a
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->finishRunningVoiceLocked()V

    const/4 p0, 0x1

    return p0

    :cond_21
    :goto_21
    const/4 p0, 0x0

    return p0
.end method

.method public static fitWithinBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;II)V
    .registers 8

    if-eqz p1, :cond_52

    .line 2373
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_52

    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_52

    .line 2381
    :cond_f
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 2382
    iget v0, p0, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    add-int v2, v1, p2

    const/4 v3, 0x0

    if-ge v0, v2, :cond_23

    sub-int/2addr v0, v1

    sub-int/2addr p2, v0

    goto :goto_30

    .line 2384
    :cond_23
    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    sub-int v2, v1, p2

    if-le v0, v2, :cond_2f

    sub-int/2addr v1, v0

    sub-int/2addr p2, v1

    neg-int p2, p2

    goto :goto_30

    :cond_2f
    move p2, v3

    .line 2388
    :goto_30
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 2389
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    add-int v2, v1, p3

    if-ge v0, v2, :cond_44

    sub-int/2addr v0, v1

    sub-int v3, p3, v0

    goto :goto_4f

    .line 2391
    :cond_44
    iget v0, p0, Landroid/graphics/Rect;->top:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int v1, p1, p3

    if-le v0, v1, :cond_4f

    sub-int/2addr p1, v0

    sub-int/2addr p3, p1

    neg-int v3, p3

    .line 2394
    :cond_4f
    :goto_4f
    invoke-virtual {p0, p2, v3}, Landroid/graphics/Rect;->offset(II)V

    :cond_52
    :goto_52
    return-void
.end method

.method public static fromWindowContainerToken(Landroid/window/WindowContainerToken;)Lcom/android/server/wm/Task;
    .registers 1

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 721
    :cond_4
    invoke-virtual {p0}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object p0

    return-object p0
.end method

.method public static getPictureInPictureParams(Lcom/android/server/wm/ActivityRecord;)Landroid/app/PictureInPictureParams;
    .registers 2

    if-eqz p0, :cond_13

    .line 3557
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->pictureInPictureArgs:Landroid/app/PictureInPictureParams;

    invoke-virtual {v0}, Landroid/app/PictureInPictureParams;->empty()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_13

    .line 3558
    :cond_b
    new-instance v0, Landroid/app/PictureInPictureParams;

    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->pictureInPictureArgs:Landroid/app/PictureInPictureParams;

    invoke-direct {v0, p0}, Landroid/app/PictureInPictureParams;-><init>(Landroid/app/PictureInPictureParams;)V

    return-object v0

    :cond_13
    :goto_13
    const/4 p0, 0x0

    return-object p0
.end method

.method public static isTopRunning(Lcom/android/server/wm/ActivityRecord;ILandroid/os/IBinder;)Z
    .registers 4

    .line 3172
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    iget v0, v0, Lcom/android/server/wm/Task;->mTaskId:I

    if-eq v0, p1, :cond_14

    iget-object p1, p0, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    if-eq p1, p2, :cond_14

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->canBeTopRunning()Z

    move-result p0

    if-eqz p0, :cond_14

    const/4 p0, 0x1

    return p0

    :cond_14
    const/4 p0, 0x0

    return p0
.end method

.method public static isTopRunningNonDelayed(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z
    .registers 3

    .line 3151
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->delayedResume:Z

    if-nez v0, :cond_e

    if-eq p0, p1, :cond_e

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->canBeTopRunning()Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public static matchesActivityInHistory(Lcom/android/server/wm/ActivityRecord;Landroid/content/ComponentName;I)Z
    .registers 4

    .line 1997
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    iget p0, p0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    if-ne p0, p2, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method public static persistTaskBounds(Landroid/app/WindowConfiguration;)Z
    .registers 2

    .line 1911
    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result p0

    const/4 v0, 0x5

    if-ne p0, v0, :cond_9

    const/4 p0, 0x1

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public static restoreFromXml(Lcom/android/modules/utils/TypedXmlPullParser;Lcom/android/server/wm/ActivityTaskSupervisor;)Lcom/android/server/wm/Task;
    .registers 46

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 4058
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4076
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v3

    .line 4077
    new-instance v4, Landroid/app/ActivityManager$TaskDescription;

    invoke-direct {v4}, Landroid/app/ActivityManager$TaskDescription;-><init>()V

    .line 4091
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeCount()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    const-wide/16 v10, 0x0

    const-string v12, ""

    move/from16 v26, v6

    move/from16 v28, v26

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v13, 0x0

    const/4 v14, -0x1

    const/4 v15, -0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v27, 0x0

    const/16 v29, -0x1

    const/16 v30, -0x1

    const/16 v31, -0x1

    const/16 v32, -0x1

    const/16 v33, 0x0

    const/16 v34, 0x4

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, -0x1

    const/16 v38, -0x1

    const/16 v39, 0x0

    :goto_4d
    const-string v6, "ActivityTaskManager"

    if-ltz v5, :cond_30a

    .line 4092
    invoke-interface {v0, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v9

    .line 4093
    invoke-interface {v0, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v41

    .line 4098
    invoke-virtual {v9}, Ljava/lang/Object;->hashCode()I

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v42

    sparse-switch v42, :sswitch_data_4d4

    move/from16 v42, v5

    :goto_65
    const/4 v5, -0x1

    goto/16 :goto_212

    :sswitch_68
    move/from16 v42, v5

    const-string v5, "root_has_reset"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_74

    goto/16 :goto_20f

    :cond_74
    const/16 v5, 0x1b

    goto/16 :goto_212

    :sswitch_78
    move/from16 v42, v5

    const-string v5, "window_layout_affinity"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_84

    goto/16 :goto_20f

    :cond_84
    const/16 v5, 0x1a

    goto/16 :goto_212

    :sswitch_88
    move/from16 v42, v5

    const-string v5, "real_activity"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_94

    goto/16 :goto_20f

    :cond_94
    const/16 v5, 0x19

    goto/16 :goto_212

    :sswitch_98
    move/from16 v42, v5

    const-string v5, "never_relinquish_identity"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a4

    goto/16 :goto_20f

    :cond_a4
    const/16 v5, 0x18

    goto/16 :goto_212

    :sswitch_a8
    move/from16 v42, v5

    const-string v5, "calling_package"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b4

    goto/16 :goto_20f

    :cond_b4
    const/16 v5, 0x17

    goto/16 :goto_212

    :sswitch_b8
    move/from16 v42, v5

    const-string v5, "persist_task_version"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c4

    goto/16 :goto_20f

    :cond_c4
    const/16 v5, 0x16

    goto/16 :goto_212

    :sswitch_c8
    move/from16 v42, v5

    const-string v5, "last_description"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d4

    goto/16 :goto_20f

    :cond_d4
    const/16 v5, 0x15

    goto/16 :goto_212

    :sswitch_d8
    move/from16 v42, v5

    const-string v5, "affinity"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e4

    goto/16 :goto_20f

    :cond_e4
    const/16 v5, 0x14

    goto/16 :goto_212

    :sswitch_e8
    move/from16 v42, v5

    const-string v5, "min_width"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_f4

    goto/16 :goto_20f

    :cond_f4
    const/16 v5, 0x13

    goto/16 :goto_212

    :sswitch_f8
    move/from16 v42, v5

    const-string v5, "calling_feature_id"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_104

    goto/16 :goto_20f

    :cond_104
    const/16 v5, 0x12

    goto/16 :goto_212

    :sswitch_108
    move/from16 v42, v5

    const-string v5, "prev_affiliation"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_114

    goto/16 :goto_20f

    :cond_114
    const/16 v5, 0x11

    goto/16 :goto_212

    :sswitch_118
    move/from16 v42, v5

    const-string v5, "task_type"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_124

    goto/16 :goto_20f

    :cond_124
    const/16 v5, 0x10

    goto/16 :goto_212

    :sswitch_128
    move/from16 v42, v5

    const-string v5, "calling_uid"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_134

    goto/16 :goto_20f

    :cond_134
    const/16 v5, 0xf

    goto/16 :goto_212

    :sswitch_138
    move/from16 v42, v5

    const-string v5, "user_id"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_144

    goto/16 :goto_20f

    :cond_144
    const/16 v5, 0xe

    goto/16 :goto_212

    :sswitch_148
    move/from16 v42, v5

    const-string v5, "root_affinity"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_154

    goto/16 :goto_20f

    :cond_154
    const/16 v5, 0xd

    goto/16 :goto_212

    :sswitch_158
    move/from16 v42, v5

    const-string v5, "supports_picture_in_picture"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_164

    goto/16 :goto_20f

    :cond_164
    const/16 v5, 0xc

    goto/16 :goto_212

    :sswitch_168
    move/from16 v42, v5

    const-string v5, "auto_remove_recents"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_174

    goto/16 :goto_20f

    :cond_174
    const/16 v5, 0xb

    goto/16 :goto_212

    :sswitch_178
    move/from16 v42, v5

    const-string v5, "orig_activity"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_184

    goto/16 :goto_20f

    :cond_184
    const/16 v5, 0xa

    goto/16 :goto_212

    :sswitch_188
    move/from16 v42, v5

    const-string v5, "non_fullscreen_bounds"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_194

    goto/16 :goto_20f

    :cond_194
    const/16 v5, 0x9

    goto/16 :goto_212

    :sswitch_198
    move/from16 v42, v5

    const-string v5, "min_height"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1a4

    goto/16 :goto_20f

    :cond_1a4
    const/16 v5, 0x8

    goto/16 :goto_212

    :sswitch_1a8
    move/from16 v42, v5

    const-string v5, "resize_mode"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1b4

    goto/16 :goto_20f

    :cond_1b4
    const/4 v5, 0x7

    goto/16 :goto_212

    :sswitch_1b7
    move/from16 v42, v5

    const-string v5, "effective_uid"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1c2

    goto :goto_20f

    :cond_1c2
    const/4 v5, 0x6

    goto :goto_212

    :sswitch_1c4
    move/from16 v42, v5

    const-string v5, "user_setup_complete"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1cf

    goto :goto_20f

    :cond_1cf
    const/4 v5, 0x5

    goto :goto_212

    :sswitch_1d1
    move/from16 v42, v5

    const-string v5, "task_affiliation"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1dc

    goto :goto_20f

    :cond_1dc
    const/4 v5, 0x4

    goto :goto_212

    :sswitch_1de
    move/from16 v42, v5

    const-string v5, "real_activity_suspended"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1e9

    goto :goto_20f

    :cond_1e9
    const/4 v5, 0x3

    goto :goto_212

    :sswitch_1eb
    move/from16 v42, v5

    const-string v5, "next_affiliation"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1f6

    goto :goto_20f

    :cond_1f6
    const/4 v5, 0x2

    goto :goto_212

    :sswitch_1f8
    move/from16 v42, v5

    const-string v5, "task_id"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_203

    goto :goto_20f

    :cond_203
    const/4 v5, 0x1

    goto :goto_212

    :sswitch_205
    move/from16 v42, v5

    const-string v5, "last_time_moved"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_211

    :goto_20f
    goto/16 :goto_65

    :cond_211
    const/4 v5, 0x0

    :goto_212
    packed-switch v5, :pswitch_data_546

    .line 4185
    const-string v5, "task_description_"

    invoke-virtual {v9, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_236

    .line 4186
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v43, v15

    const-string v15, "Task: Unknown attribute="

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_233
    const/4 v5, -0x1

    goto/16 :goto_2fa

    :cond_236
    move/from16 v43, v15

    goto :goto_233

    :pswitch_239
    move/from16 v43, v15

    .line 4122
    invoke-static/range {v41 .. v41}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v22

    :goto_23f
    const/4 v5, -0x1

    goto/16 :goto_305

    :pswitch_242
    move/from16 v43, v15

    move-object/from16 v21, v41

    goto :goto_23f

    :pswitch_247
    move/from16 v43, v15

    .line 4103
    invoke-static/range {v41 .. v41}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v8

    goto :goto_23f

    :pswitch_24e
    move/from16 v43, v15

    .line 4146
    invoke-static/range {v41 .. v41}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v28

    goto :goto_23f

    :pswitch_255
    move/from16 v43, v15

    move-object/from16 v12, v41

    goto :goto_23f

    :pswitch_25a
    move/from16 v43, v15

    .line 4182
    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v39

    goto :goto_23f

    :pswitch_261
    move/from16 v43, v15

    move-object/from16 v27, v41

    goto :goto_23f

    :pswitch_266
    move/from16 v43, v15

    move-object/from16 v7, v41

    goto :goto_23f

    :pswitch_26b
    move/from16 v43, v15

    .line 4176
    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v37

    goto :goto_23f

    :pswitch_272
    move/from16 v43, v15

    move-object/from16 v33, v41

    goto :goto_23f

    :pswitch_277
    move/from16 v43, v15

    .line 4152
    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v30

    goto :goto_23f

    :pswitch_27e
    move/from16 v43, v15

    .line 4137
    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v24

    goto :goto_23f

    :pswitch_285
    move/from16 v43, v15

    .line 4158
    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v32

    goto :goto_23f

    :pswitch_28c
    move/from16 v43, v15

    .line 4128
    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v25

    goto :goto_23f

    :pswitch_293
    move/from16 v43, v15

    move-object/from16 v13, v41

    const/4 v5, -0x1

    const/16 v18, 0x1

    goto/16 :goto_305

    :pswitch_29c
    move/from16 v43, v15

    .line 4170
    invoke-static/range {v41 .. v41}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v35

    goto :goto_23f

    :pswitch_2a3
    move/from16 v43, v15

    .line 4125
    invoke-static/range {v41 .. v41}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v23

    goto :goto_23f

    :pswitch_2aa
    move/from16 v43, v15

    .line 4109
    invoke-static/range {v41 .. v41}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v20

    goto :goto_23f

    :pswitch_2b1
    move/from16 v43, v15

    .line 4173
    invoke-static/range {v41 .. v41}, Landroid/graphics/Rect;->unflattenFromString(Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object v36

    goto :goto_23f

    :pswitch_2b8
    move/from16 v43, v15

    .line 4179
    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v38

    goto :goto_23f

    :pswitch_2bf
    move/from16 v43, v15

    .line 4167
    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v34

    goto/16 :goto_23f

    .line 4134
    :pswitch_2c7
    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    goto/16 :goto_23f

    :pswitch_2cd
    move/from16 v43, v15

    .line 4131
    invoke-static/range {v41 .. v41}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v26

    goto/16 :goto_23f

    :pswitch_2d5
    move/from16 v43, v15

    .line 4149
    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v29

    goto/16 :goto_23f

    :pswitch_2dd
    move/from16 v43, v15

    .line 4106
    invoke-static/range {v41 .. v41}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v19

    goto/16 :goto_23f

    :pswitch_2e9
    move/from16 v43, v15

    .line 4155
    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v31

    goto/16 :goto_23f

    :pswitch_2f1
    move/from16 v43, v15

    const/4 v5, -0x1

    if-ne v14, v5, :cond_2fa

    .line 4100
    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    :cond_2fa
    :goto_2fa
    move/from16 v15, v43

    goto :goto_305

    :pswitch_2fd
    move/from16 v43, v15

    const/4 v5, -0x1

    .line 4143
    invoke-static/range {v41 .. v41}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    move-wide v10, v9

    :goto_305
    add-int/lit8 v6, v42, -0x1

    move v5, v6

    goto/16 :goto_4d

    :cond_30a
    move/from16 v43, v15

    .line 4190
    invoke-virtual {v4, v0}, Landroid/app/ActivityManager$TaskDescription;->restoreFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)V

    const/4 v5, 0x0

    const/4 v9, 0x0

    .line 4193
    :goto_311
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v15

    const/4 v0, 0x1

    if-eq v15, v0, :cond_379

    const/4 v0, 0x3

    if-ne v15, v0, :cond_321

    .line 4194
    invoke-interface/range {p0 .. p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v0

    if-lt v0, v3, :cond_379

    :cond_321
    const/4 v0, 0x2

    if-ne v15, v0, :cond_376

    .line 4196
    invoke-interface/range {p0 .. p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 4198
    const-string v15, "affinity_intent"

    invoke-virtual {v15, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_338

    .line 4199
    invoke-static/range {p0 .. p0}, Landroid/content/Intent;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/Intent;

    move-result-object v0

    move-object v9, v0

    :cond_335
    :goto_335
    move/from16 v17, v3

    goto :goto_371

    .line 4200
    :cond_338
    const-string v15, "intent"

    invoke-virtual {v15, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_346

    .line 4201
    invoke-static/range {p0 .. p0}, Landroid/content/Intent;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/Intent;

    move-result-object v0

    move-object v5, v0

    goto :goto_335

    .line 4202
    :cond_346
    const-string v15, "activity"

    invoke-virtual {v15, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_358

    .line 4204
    invoke-static/range {p0 .. p1}, Lcom/android/server/wm/ActivityRecord;->restoreFromXml(Lcom/android/modules/utils/TypedXmlPullParser;Lcom/android/server/wm/ActivityTaskSupervisor;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_335

    .line 4209
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_335

    .line 4212
    :cond_358
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v17, v3

    const-string v3, "restoreTask: Unexpected name="

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4213
    invoke-static/range {p0 .. p0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_371
    move-object/from16 v0, p0

    move/from16 v3, v17

    goto :goto_311

    :cond_376
    move-object/from16 v0, p0

    goto :goto_311

    :cond_379
    if-nez v18, :cond_37d

    move-object v13, v7

    goto :goto_386

    .line 4219
    :cond_37d
    const-string v0, "@"

    invoke-virtual {v0, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_386

    const/4 v13, 0x0

    :cond_386
    :goto_386
    if-gtz v43, :cond_3de

    if-eqz v5, :cond_38c

    move-object v0, v5

    goto :goto_38d

    :cond_38c
    move-object v0, v9

    :goto_38d
    if-eqz v0, :cond_3af

    .line 4226
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    .line 4229
    :try_start_393
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v15
    :try_end_39b
    .catch Landroid/os/RemoteException; {:try_start_393 .. :try_end_39b} :catch_3af

    move-wide/from16 v16, v10

    const-wide/16 v10, 0x2200

    move-object/from16 v18, v2

    move/from16 v2, v25

    .line 4228
    :try_start_3a3
    invoke-interface {v3, v15, v10, v11, v2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    if-eqz v3, :cond_3ac

    .line 4233
    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_3ab
    .catch Landroid/os/RemoteException; {:try_start_3a3 .. :try_end_3ab} :catch_3b5

    goto :goto_3ad

    :cond_3ac
    const/4 v3, 0x0

    :goto_3ad
    move v15, v3

    goto :goto_3b6

    :catch_3af
    :cond_3af
    move-object/from16 v18, v2

    move-wide/from16 v16, v10

    move/from16 v2, v25

    :catch_3b5
    const/4 v15, 0x0

    .line 4238
    :goto_3b6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Updating task #"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " for "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ": effectiveUid="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3da
    move/from16 v0, v39

    const/4 v3, 0x1

    goto :goto_3e7

    :cond_3de
    move-object/from16 v18, v2

    move-wide/from16 v16, v10

    move/from16 v2, v25

    move/from16 v15, v43

    goto :goto_3da

    :goto_3e7
    if-ge v0, v3, :cond_3f9

    move/from16 v0, v24

    if-ne v0, v3, :cond_3f6

    move/from16 v0, v34

    const/4 v3, 0x2

    if-ne v0, v3, :cond_402

    move/from16 v3, v35

    const/4 v0, 0x1

    goto :goto_404

    :cond_3f6
    move/from16 v0, v34

    goto :goto_402

    :cond_3f9
    move/from16 v0, v34

    const/4 v3, 0x2

    const/4 v6, 0x3

    if-ne v0, v6, :cond_402

    move v0, v3

    const/4 v3, 0x1

    goto :goto_404

    :cond_402
    :goto_402
    move/from16 v3, v35

    .line 4261
    :goto_404
    new-instance v6, Lcom/android/server/wm/Task$Builder;

    iget-object v10, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-direct {v6, v10}, Lcom/android/server/wm/Task$Builder;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    .line 4262
    invoke-virtual {v6, v14}, Lcom/android/server/wm/Task$Builder;->setTaskId(I)Lcom/android/server/wm/Task$Builder;

    move-result-object v6

    .line 4263
    invoke-virtual {v6, v5}, Lcom/android/server/wm/Task$Builder;->setIntent(Landroid/content/Intent;)Lcom/android/server/wm/Task$Builder;

    move-result-object v5

    .line 4264
    invoke-static {v5, v9}, Lcom/android/server/wm/Task$Builder;->-$$Nest$msetAffinityIntent(Lcom/android/server/wm/Task$Builder;Landroid/content/Intent;)Lcom/android/server/wm/Task$Builder;

    move-result-object v5

    .line 4265
    invoke-static {v5, v7}, Lcom/android/server/wm/Task$Builder;->-$$Nest$msetAffinity(Lcom/android/server/wm/Task$Builder;Ljava/lang/String;)Lcom/android/server/wm/Task$Builder;

    move-result-object v5

    .line 4266
    invoke-static {v5, v13}, Lcom/android/server/wm/Task$Builder;->-$$Nest$msetRootAffinity(Lcom/android/server/wm/Task$Builder;Ljava/lang/String;)Lcom/android/server/wm/Task$Builder;

    move-result-object v5

    .line 4267
    invoke-virtual {v5, v8}, Lcom/android/server/wm/Task$Builder;->setRealActivity(Landroid/content/ComponentName;)Lcom/android/server/wm/Task$Builder;

    move-result-object v5

    move-object/from16 v7, v20

    .line 4268
    invoke-static {v5, v7}, Lcom/android/server/wm/Task$Builder;->-$$Nest$msetOrigActivity(Lcom/android/server/wm/Task$Builder;Landroid/content/ComponentName;)Lcom/android/server/wm/Task$Builder;

    move-result-object v5

    move/from16 v8, v22

    .line 4269
    invoke-static {v5, v8}, Lcom/android/server/wm/Task$Builder;->-$$Nest$msetRootWasReset(Lcom/android/server/wm/Task$Builder;Z)Lcom/android/server/wm/Task$Builder;

    move-result-object v5

    move/from16 v8, v23

    .line 4270
    invoke-static {v5, v8}, Lcom/android/server/wm/Task$Builder;->-$$Nest$msetAutoRemoveRecents(Lcom/android/server/wm/Task$Builder;Z)Lcom/android/server/wm/Task$Builder;

    move-result-object v5

    .line 4271
    invoke-static {v5, v2}, Lcom/android/server/wm/Task$Builder;->-$$Nest$msetUserId(Lcom/android/server/wm/Task$Builder;I)Lcom/android/server/wm/Task$Builder;

    move-result-object v2

    .line 4272
    invoke-virtual {v2, v15}, Lcom/android/server/wm/Task$Builder;->setEffectiveUid(I)Lcom/android/server/wm/Task$Builder;

    move-result-object v2

    move-object/from16 v7, v27

    .line 4273
    invoke-static {v2, v7}, Lcom/android/server/wm/Task$Builder;->-$$Nest$msetLastDescription(Lcom/android/server/wm/Task$Builder;Ljava/lang/String;)Lcom/android/server/wm/Task$Builder;

    move-result-object v2

    move-wide/from16 v10, v16

    .line 4274
    invoke-static {v2, v10, v11}, Lcom/android/server/wm/Task$Builder;->-$$Nest$msetLastTimeMoved(Lcom/android/server/wm/Task$Builder;J)Lcom/android/server/wm/Task$Builder;

    move-result-object v2

    move/from16 v6, v28

    .line 4275
    invoke-static {v2, v6}, Lcom/android/server/wm/Task$Builder;->-$$Nest$msetNeverRelinquishIdentity(Lcom/android/server/wm/Task$Builder;Z)Lcom/android/server/wm/Task$Builder;

    move-result-object v2

    .line 4276
    invoke-static {v2, v4}, Lcom/android/server/wm/Task$Builder;->-$$Nest$msetLastTaskDescription(Lcom/android/server/wm/Task$Builder;Landroid/app/ActivityManager$TaskDescription;)Lcom/android/server/wm/Task$Builder;

    move-result-object v2

    move/from16 v9, v29

    .line 4277
    invoke-static {v2, v9}, Lcom/android/server/wm/Task$Builder;->-$$Nest$msetTaskAffiliation(Lcom/android/server/wm/Task$Builder;I)Lcom/android/server/wm/Task$Builder;

    move-result-object v2

    move/from16 v9, v30

    .line 4278
    invoke-static {v2, v9}, Lcom/android/server/wm/Task$Builder;->-$$Nest$msetPrevAffiliateTaskId(Lcom/android/server/wm/Task$Builder;I)Lcom/android/server/wm/Task$Builder;

    move-result-object v2

    move/from16 v9, v31

    .line 4279
    invoke-static {v2, v9}, Lcom/android/server/wm/Task$Builder;->-$$Nest$msetNextAffiliateTaskId(Lcom/android/server/wm/Task$Builder;I)Lcom/android/server/wm/Task$Builder;

    move-result-object v2

    move/from16 v9, v32

    .line 4280
    invoke-static {v2, v9}, Lcom/android/server/wm/Task$Builder;->-$$Nest$msetCallingUid(Lcom/android/server/wm/Task$Builder;I)Lcom/android/server/wm/Task$Builder;

    move-result-object v2

    .line 4281
    invoke-static {v2, v12}, Lcom/android/server/wm/Task$Builder;->-$$Nest$msetCallingPackage(Lcom/android/server/wm/Task$Builder;Ljava/lang/String;)Lcom/android/server/wm/Task$Builder;

    move-result-object v2

    move-object/from16 v7, v33

    .line 4282
    invoke-static {v2, v7}, Lcom/android/server/wm/Task$Builder;->-$$Nest$msetCallingFeatureId(Lcom/android/server/wm/Task$Builder;Ljava/lang/String;)Lcom/android/server/wm/Task$Builder;

    move-result-object v2

    .line 4283
    invoke-static {v2, v0}, Lcom/android/server/wm/Task$Builder;->-$$Nest$msetResizeMode(Lcom/android/server/wm/Task$Builder;I)Lcom/android/server/wm/Task$Builder;

    move-result-object v0

    .line 4284
    invoke-static {v0, v3}, Lcom/android/server/wm/Task$Builder;->-$$Nest$msetSupportsPictureInPicture(Lcom/android/server/wm/Task$Builder;Z)Lcom/android/server/wm/Task$Builder;

    move-result-object v0

    move/from16 v8, v19

    .line 4285
    invoke-static {v0, v8}, Lcom/android/server/wm/Task$Builder;->-$$Nest$msetRealActivitySuspended(Lcom/android/server/wm/Task$Builder;Z)Lcom/android/server/wm/Task$Builder;

    move-result-object v0

    move/from16 v6, v26

    .line 4286
    invoke-static {v0, v6}, Lcom/android/server/wm/Task$Builder;->-$$Nest$msetUserSetupComplete(Lcom/android/server/wm/Task$Builder;Z)Lcom/android/server/wm/Task$Builder;

    move-result-object v0

    move/from16 v9, v37

    .line 4287
    invoke-virtual {v0, v9}, Lcom/android/server/wm/Task$Builder;->setMinWidth(I)Lcom/android/server/wm/Task$Builder;

    move-result-object v0

    move/from16 v9, v38

    .line 4288
    invoke-virtual {v0, v9}, Lcom/android/server/wm/Task$Builder;->setMinHeight(I)Lcom/android/server/wm/Task$Builder;

    move-result-object v0

    .line 4289
    invoke-virtual {v0}, Lcom/android/server/wm/Task$Builder;->buildInner()Lcom/android/server/wm/Task;

    move-result-object v0

    move-object/from16 v7, v36

    .line 4290
    iput-object v7, v0, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    .line 4291
    invoke-virtual {v0, v7}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    move-object/from16 v7, v21

    .line 4292
    iput-object v7, v0, Lcom/android/server/wm/Task;->mWindowLayoutAffinity:Ljava/lang/String;

    .line 4293
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_4d2

    .line 4295
    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v2, 0x0

    .line 4296
    invoke-virtual {v1, v2}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 4297
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    const/high16 v2, -0x80000000

    invoke-virtual {v1, v0, v2}, Lcom/android/server/wm/TaskDisplayArea;->addChild(Lcom/android/server/wm/WindowContainer;I)V

    .line 4299
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v40, 0x1

    add-int/lit8 v1, v1, -0x1

    :goto_4c2
    if-ltz v1, :cond_4d2

    move-object/from16 v2, v18

    .line 4300
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, v3}, Lcom/android/server/wm/TaskFragment;->addChild(Lcom/android/server/wm/ActivityRecord;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_4c2

    :cond_4d2
    return-object v0

    nop

    :sswitch_data_4d4
    .sparse-switch
        -0x5ccdaff6 -> :sswitch_205
        -0x5ba06deb -> :sswitch_1f8
        -0x591a685c -> :sswitch_1eb
        -0x43dc2f14 -> :sswitch_1de
        -0x430d08ca -> :sswitch_1d1
        -0x3a0f4851 -> :sswitch_1c4
        -0x37680e48 -> :sswitch_1b7
        -0x3395d9b2 -> :sswitch_1a8
        -0x313f784c -> :sswitch_198
        -0x2a27c539 -> :sswitch_188
        -0x2a0990b3 -> :sswitch_178
        -0x1df202b3 -> :sswitch_168
        -0x158140a0 -> :sswitch_158
        -0x9b3481b -> :sswitch_148
        -0x8c511f1 -> :sswitch_138
        -0x7e175ab -> :sswitch_128
        0xac8bdb4 -> :sswitch_118
        0x13bdcee4 -> :sswitch_108
        0x1782e55f -> :sswitch_f8
        0x2046b199 -> :sswitch_e8
        0x24172928 -> :sswitch_d8
        0x33cf43d3 -> :sswitch_c8
        0x3c12eca9 -> :sswitch_b8
        0x40756fcb -> :sswitch_a8
        0x56e1584e -> :sswitch_98
        0x5bc3bc90 -> :sswitch_88
        0x772fa04e -> :sswitch_78
        0x789a804d -> :sswitch_68
    .end sparse-switch

    :pswitch_data_546
    .packed-switch 0x0
        :pswitch_2fd
        :pswitch_2f1
        :pswitch_2e9
        :pswitch_2dd
        :pswitch_2d5
        :pswitch_2cd
        :pswitch_2c7
        :pswitch_2bf
        :pswitch_2b8
        :pswitch_2b1
        :pswitch_2aa
        :pswitch_2a3
        :pswitch_29c
        :pswitch_293
        :pswitch_28c
        :pswitch_285
        :pswitch_27e
        :pswitch_277
        :pswitch_272
        :pswitch_26b
        :pswitch_266
        :pswitch_261
        :pswitch_25a
        :pswitch_255
        :pswitch_24e
        :pswitch_247
        :pswitch_242
        :pswitch_239
    .end packed-switch
.end method

.method public static saveActivityToXml(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Lcom/android/modules/utils/TypedXmlSerializer;)Z
    .registers 7

    .line 4036
    const-string v0, "activity"

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v1, v1, Landroid/content/pm/ActivityInfo;->persistableMode:I

    const/4 v2, 0x1

    if-eqz v1, :cond_2e

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isPersistable()Z

    move-result v1

    if-eqz v1, :cond_2e

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 4037
    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const/high16 v3, 0x80000

    and-int/2addr v1, v3

    or-int/lit16 v1, v1, 0x2000

    if-ne v1, v3, :cond_1f

    if-eq p0, p1, :cond_1f

    goto :goto_2e

    :cond_1f
    const/4 p1, 0x0

    .line 4044
    :try_start_20
    invoke-interface {p2, p1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4045
    invoke-virtual {p0, p2}, Lcom/android/server/wm/ActivityRecord;->saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 4046
    invoke-interface {p2, p1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_29} :catch_2b

    const/4 p0, 0x0

    return p0

    :catch_2b
    move-exception p0

    .line 4049
    sput-object p0, Lcom/android/server/wm/Task;->sTmpException:Ljava/lang/Exception;

    :cond_2e
    :goto_2e
    return v2
.end method

.method public static setTaskDescriptionFromActivityAboveRoot(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityManager$TaskDescription;)Z
    .registers 5

    .line 2032
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isTaskOverlay()Z

    move-result v0

    if-nez v0, :cond_a6

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isNoDisplay()Z

    move-result v0

    if-nez v0, :cond_a6

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    if-eqz v0, :cond_a6

    .line 2034
    invoke-virtual {p2}, Landroid/app/ActivityManager$TaskDescription;->getLabel()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1d

    .line 2035
    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskDescription;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/app/ActivityManager$TaskDescription;->setLabel(Ljava/lang/String;)V

    .line 2037
    :cond_1d
    invoke-virtual {p2}, Landroid/app/ActivityManager$TaskDescription;->getRawIcon()Landroid/graphics/drawable/Icon;

    move-result-object v1

    if-nez v1, :cond_2a

    .line 2038
    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskDescription;->getRawIcon()Landroid/graphics/drawable/Icon;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/app/ActivityManager$TaskDescription;->setIcon(Landroid/graphics/drawable/Icon;)V

    .line 2040
    :cond_2a
    invoke-virtual {p2}, Landroid/app/ActivityManager$TaskDescription;->getIconFilename()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_37

    .line 2041
    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskDescription;->getIconFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/app/ActivityManager$TaskDescription;->setIconFilename(Ljava/lang/String;)V

    .line 2043
    :cond_37
    invoke-virtual {p2}, Landroid/app/ActivityManager$TaskDescription;->getPrimaryColor()I

    move-result v1

    if-nez v1, :cond_44

    .line 2044
    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskDescription;->getPrimaryColor()I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/app/ActivityManager$TaskDescription;->setPrimaryColor(I)V

    .line 2046
    :cond_44
    invoke-virtual {p2}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColor()I

    move-result v1

    if-nez v1, :cond_51

    .line 2047
    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColor()I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/app/ActivityManager$TaskDescription;->setBackgroundColor(I)V

    .line 2049
    :cond_51
    invoke-virtual {p2}, Landroid/app/ActivityManager$TaskDescription;->getStatusBarColor()I

    move-result v1

    if-nez v1, :cond_65

    .line 2050
    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskDescription;->getStatusBarColor()I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/app/ActivityManager$TaskDescription;->setStatusBarColor(I)V

    .line 2052
    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskDescription;->getEnsureStatusBarContrastWhenTransparent()Z

    move-result v1

    .line 2051
    invoke-virtual {p2, v1}, Landroid/app/ActivityManager$TaskDescription;->setEnsureStatusBarContrastWhenTransparent(Z)V

    .line 2054
    :cond_65
    invoke-virtual {p2}, Landroid/app/ActivityManager$TaskDescription;->getSystemBarsAppearance()I

    move-result v1

    if-nez v1, :cond_72

    .line 2055
    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskDescription;->getSystemBarsAppearance()I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/app/ActivityManager$TaskDescription;->setSystemBarsAppearance(I)V

    .line 2057
    :cond_72
    invoke-virtual {p2}, Landroid/app/ActivityManager$TaskDescription;->getTopOpaqueSystemBarsAppearance()I

    move-result v1

    if-nez v1, :cond_85

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->fillsParent()Z

    move-result v1

    if-eqz v1, :cond_85

    .line 2058
    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskDescription;->getSystemBarsAppearance()I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/app/ActivityManager$TaskDescription;->setTopOpaqueSystemBarsAppearance(I)V

    .line 2060
    :cond_85
    invoke-virtual {p2}, Landroid/app/ActivityManager$TaskDescription;->getNavigationBarColor()I

    move-result v1

    if-nez v1, :cond_99

    .line 2061
    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskDescription;->getNavigationBarColor()I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/app/ActivityManager$TaskDescription;->setNavigationBarColor(I)V

    .line 2063
    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskDescription;->getEnsureNavigationBarContrastWhenTransparent()Z

    move-result v1

    .line 2062
    invoke-virtual {p2, v1}, Landroid/app/ActivityManager$TaskDescription;->setEnsureNavigationBarContrastWhenTransparent(Z)V

    .line 2065
    :cond_99
    invoke-virtual {p2}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColorFloating()I

    move-result v1

    if-nez v1, :cond_a6

    .line 2066
    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColorFloating()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/app/ActivityManager$TaskDescription;->setBackgroundColorFloating(I)V

    :cond_a6
    if-ne p0, p1, :cond_aa

    const/4 p0, 0x1

    return p0

    :cond_aa
    const/4 p0, 0x0

    return p0
.end method

.method public static trimIneffectiveInfo(Lcom/android/server/wm/Task;Landroid/app/TaskInfo;)V
    .registers 7

    .line 3509
    new-instance v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda0;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 3512
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v0

    goto :goto_13

    :cond_11
    iget v0, p0, Lcom/android/server/wm/Task;->effectiveUid:I

    .line 3514
    :goto_13
    iget-object v1, p1, Landroid/app/TaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    const-string v2, ""

    if-eqz v1, :cond_6c

    iget v3, p0, Lcom/android/server/wm/Task;->effectiveUid:I

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v3, v1, :cond_6c

    .line 3517
    new-instance v1, Landroid/content/pm/ActivityInfo;

    iget-object v3, p1, Landroid/app/TaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    invoke-direct {v1, v3}, Landroid/content/pm/ActivityInfo;-><init>(Landroid/content/pm/ActivityInfo;)V

    iput-object v1, p1, Landroid/app/TaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 3518
    new-instance v3, Landroid/content/pm/ApplicationInfo;

    iget-object v4, p1, Landroid/app/TaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v3, v4}, Landroid/content/pm/ApplicationInfo;-><init>(Landroid/content/pm/ApplicationInfo;)V

    iput-object v3, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 3522
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, v2, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p1, Landroid/app/TaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 3523
    iget-object v1, p1, Landroid/app/TaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    iput-object v2, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 3524
    iput-object v2, v1, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    .line 3525
    iput-object v2, v1, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 3526
    iput-object v2, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 3527
    iput-object v2, v1, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    .line 3528
    iput-object v2, v1, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    .line 3529
    iput-object v2, v1, Landroid/content/pm/ActivityInfo;->splitName:Ljava/lang/String;

    .line 3530
    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v2, v1, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    .line 3531
    iput-object v2, v1, Landroid/content/pm/ApplicationInfo;->credentialProtectedDataDir:Ljava/lang/String;

    .line 3532
    iput-object v2, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 3533
    iput-object v2, v1, Landroid/content/pm/ApplicationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    .line 3534
    iput-object v2, v1, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    .line 3535
    iput-object v2, v1, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 3536
    iput-object v2, v1, Landroid/content/pm/ApplicationInfo;->nativeLibraryRootDir:Ljava/lang/String;

    .line 3537
    iput-object v2, v1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 3538
    iput-object v2, v1, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 3539
    iput-object v2, v1, Landroid/content/pm/ApplicationInfo;->scanPublicSourceDir:Ljava/lang/String;

    .line 3540
    iput-object v2, v1, Landroid/content/pm/ApplicationInfo;->scanSourceDir:Ljava/lang/String;

    .line 3541
    iput-object v2, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 3542
    iput-object v2, v1, Landroid/content/pm/ApplicationInfo;->taskAffinity:Ljava/lang/String;

    .line 3543
    iput-object v2, v1, Landroid/content/pm/ApplicationInfo;->name:Ljava/lang/String;

    .line 3544
    iput-object v2, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 3547
    :cond_6c
    iget p0, p0, Lcom/android/server/wm/Task;->effectiveUid:I

    if-eq p0, v0, :cond_77

    .line 3548
    new-instance p0, Landroid/content/ComponentName;

    invoke-direct {p0, v2, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p0, p1, Landroid/app/TaskInfo;->baseActivity:Landroid/content/ComponentName;

    :cond_77
    const/4 p0, 0x0

    .line 3551
    iput-object p0, p1, Landroid/app/TaskInfo;->capturedLink:Landroid/net/Uri;

    const-wide/16 v0, 0x0

    .line 3552
    iput-wide v0, p1, Landroid/app/TaskInfo;->capturedLinkTimestamp:J

    .line 3553
    iput-wide v0, p1, Landroid/app/TaskInfo;->topActivityRequestOpenInBrowserEducationTimestamp:J

    return-void
.end method


# virtual methods
.method public abortPipEnter(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 7

    .line 4936
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6d

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result v0

    if-nez v0, :cond_6d

    invoke-virtual {p0, p0}, Lcom/android/server/wm/Task;->canMoveTaskToBack(Lcom/android/server/wm/Task;)Z

    move-result v0

    if-nez v0, :cond_14

    goto :goto_6d

    .line 4939
    :cond_14
    new-instance v0, Lcom/android/server/wm/Transition;

    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    const/4 v4, 0x4

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/android/server/wm/Transition;-><init>(IILcom/android/server/wm/TransitionController;Lcom/android/server/wm/BLASTSyncEngine;)V

    .line 4941
    iget-object v2, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mChainTracker:Lcom/android/server/wm/ActionChain$Tracker;

    const-string v3, "abortPip"

    invoke-virtual {v2, v3, v0}, Lcom/android/server/wm/ActionChain$Tracker;->start(Ljava/lang/String;Lcom/android/server/wm/Transition;)Lcom/android/server/wm/ActionChain;

    .line 4942
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/TransitionController;->moveToCollecting(Lcom/android/server/wm/Transition;)V

    .line 4943
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, p0, v3, v3}, Lcom/android/server/wm/TransitionController;->requestStartTransition(Lcom/android/server/wm/Transition;Lcom/android/server/wm/Task;Landroid/window/RemoteTransition;Landroid/window/TransitionRequestInfo$DisplayChange;)Lcom/android/server/wm/Transition;

    .line 4945
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getLastParentBeforePip()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_4d

    .line 4946
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getLastParentBeforePip()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 4947
    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->isAttached()Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 4948
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v2

    const-string v4, "movePinnedActivityToOriginalTask"

    invoke-virtual {p1, v0, v2, v4}, Lcom/android/server/wm/ActivityRecord;->reparent(Lcom/android/server/wm/TaskFragment;ILjava/lang/String;)V

    .line 4952
    :cond_4d
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_59

    .line 4953
    invoke-virtual {p0, v1}, Lcom/android/server/wm/Task;->setRootTaskWindowingMode(I)V

    .line 4954
    invoke-virtual {p0, p0, v3}, Lcom/android/server/wm/Task;->moveTaskToBackInner(Lcom/android/server/wm/Task;Lcom/android/server/wm/Transition;)V

    .line 4956
    :cond_59
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_64

    .line 4957
    invoke-virtual {p1, v1}, Lcom/android/server/wm/ConfigurationContainer;->setWindowingMode(I)V

    .line 4958
    iput-boolean v1, p1, Lcom/android/server/wm/ActivityRecord;->mWaitForEnteringPinnedMode:Z

    .line 4960
    :cond_64
    iget-object p0, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mChainTracker:Lcom/android/server/wm/ActionChain$Tracker;

    invoke-virtual {p0}, Lcom/android/server/wm/ActionChain$Tracker;->end()V

    const/4 p0, 0x1

    return p0

    :cond_6d
    :goto_6d
    return v1
.end method

.method public abortTranslucentActivityWaiting(Lcom/android/server/wm/ActivityRecord;)V
    .registers 5

    .line 5142
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTranslucentActivityWaiting:Lcom/android/server/wm/ActivityRecord;

    if-eq p1, v0, :cond_9

    iget-object v1, p0, Lcom/android/server/wm/Task;->mPendingConvertFromTranslucentActivity:Lcom/android/server/wm/ActivityRecord;

    if-eq p1, v1, :cond_9

    return-void

    :cond_9
    const/4 p1, 0x0

    const/4 v1, 0x1

    if-eqz v0, :cond_16

    .line 5147
    iget-boolean v2, v0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v2, :cond_14

    .line 5148
    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityRecord;->setOccludesParent(Z)Z

    .line 5150
    :cond_14
    iput-object p1, p0, Lcom/android/server/wm/Task;->mTranslucentActivityWaiting:Lcom/android/server/wm/ActivityRecord;

    .line 5152
    :cond_16
    iget-object v0, p0, Lcom/android/server/wm/Task;->mPendingConvertFromTranslucentActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_23

    .line 5153
    iget-boolean v2, v0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v2, :cond_21

    .line 5154
    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityRecord;->setOccludesParent(Z)Z

    .line 5156
    :cond_21
    iput-object p1, p0, Lcom/android/server/wm/Task;->mPendingConvertFromTranslucentActivity:Lcom/android/server/wm/ActivityRecord;

    .line 5158
    :cond_23
    iget-object p1, p0, Lcom/android/server/wm/Task;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 5159
    iget-object p0, p0, Lcom/android/server/wm/Task;->mHandler:Landroid/os/Handler;

    const/16 p1, 0x65

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public addChild(Lcom/android/server/wm/WindowContainer;I)V
    .registers 7

    .line 1532
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/Task;->getAdjustedChildPosition(Lcom/android/server/wm/WindowContainer;I)I

    move-result p2

    .line 1533
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/TaskFragment;->addChild(Lcom/android/server/wm/WindowContainer;I)V

    .line 1535
    sget-object p2, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_ADD_REMOVE_enabled:[Z

    const/4 v0, 0x0

    aget-boolean p2, p2, v0

    if-eqz p2, :cond_20

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    sget-object v1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_ADD_REMOVE:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v2, -0xe475a036097c6b2L    # -6.420148178521097E239

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {v1, v2, v3, v0, p2}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 1539
    :cond_20
    iget-object p2, p0, Lcom/android/server/wm/Task;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    if-eqz p2, :cond_38

    iget-boolean p2, p0, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    if-eqz p2, :cond_38

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object p2

    if-eqz p2, :cond_38

    .line 1540
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p2

    move-object v0, p1

    check-cast v0, Lcom/android/server/wm/Task;

    invoke-virtual {p2, v0}, Lcom/android/server/wm/TaskDisplayArea;->addRootTaskReferenceIfNeeded(Lcom/android/server/wm/Task;)V

    .line 1545
    :cond_38
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object p1

    if-eqz p1, :cond_68

    .line 1546
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object p2

    if-nez p2, :cond_68

    .line 1547
    iget-object p2, p1, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizerProcessName:Ljava/lang/String;

    if-eqz p2, :cond_52

    iget-object v0, p0, Lcom/android/server/wm/Task;->mTaskFragmentHostProcessName:Ljava/lang/String;

    if-nez v0, :cond_52

    .line 1549
    iget v0, p1, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizerUid:I

    iput v0, p0, Lcom/android/server/wm/Task;->mTaskFragmentHostUid:I

    .line 1550
    iput-object p2, p0, Lcom/android/server/wm/Task;->mTaskFragmentHostProcessName:Ljava/lang/String;

    .line 1552
    :cond_52
    iget p2, p0, Lcom/android/server/wm/TaskFragment;->mMinWidth:I

    iget v0, p0, Lcom/android/server/wm/TaskFragment;->mMinHeight:I

    invoke-virtual {p1, p2, v0}, Lcom/android/server/wm/TaskFragment;->setMinDimensions(II)V

    .line 1556
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    if-eqz p0, :cond_68

    .line 1557
    invoke-virtual {p0}, Lcom/android/server/wm/WindowToken;->hasFixedRotationTransform()Z

    move-result p1

    if-nez p1, :cond_68

    .line 1558
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->associateStartingWindowWithTaskIfNeeded()V

    :cond_68
    return-void
.end method

.method public final addChild(Lcom/android/server/wm/WindowContainer;IZ)V
    .registers 5

    const/4 v0, 0x0

    .line 6284
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowContainer;->addChild(Lcom/android/server/wm/WindowContainer;Ljava/util/Comparator;)V

    .line 6287
    invoke-virtual {p0, p2, p1, p3}, Lcom/android/server/wm/Task;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    return-void
.end method

.method public addChild(Lcom/android/server/wm/WindowContainer;ZZ)V
    .registers 6

    .line 6211
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    .line 6214
    :try_start_7
    invoke-virtual {v0, p3}, Lcom/android/server/wm/Task;->setForceShowForAllUsers(Z)V

    goto :goto_d

    :catchall_b
    move-exception p0

    goto :goto_1d

    :cond_d
    :goto_d
    if-eqz p2, :cond_13

    const p3, 0x7fffffff

    goto :goto_14

    :cond_13
    move p3, v1

    .line 6218
    :goto_14
    invoke-virtual {p0, p1, p3, p2}, Lcom/android/server/wm/Task;->addChild(Lcom/android/server/wm/WindowContainer;IZ)V
    :try_end_17
    .catchall {:try_start_7 .. :try_end_17} :catchall_b

    if-eqz v0, :cond_1c

    .line 6221
    invoke-virtual {v0, v1}, Lcom/android/server/wm/Task;->setForceShowForAllUsers(Z)V

    :cond_1c
    return-void

    :goto_1d
    if-eqz v0, :cond_22

    invoke-virtual {v0, v1}, Lcom/android/server/wm/Task;->setForceShowForAllUsers(Z)V

    .line 6223
    :cond_22
    throw p0
.end method

.method public adjustFocusToNextFocusableTask(Ljava/lang/String;)Lcom/android/server/wm/Task;
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2686
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/wm/Task;->adjustFocusToNextFocusableTask(Ljava/lang/String;ZZ)Lcom/android/server/wm/Task;

    move-result-object p0

    return-object p0
.end method

.method public adjustFocusToNextFocusableTask(Ljava/lang/String;ZZ)Lcom/android/server/wm/Task;
    .registers 8

    .line 2715
    invoke-virtual {p0, p2}, Lcom/android/server/wm/Task;->getNextFocusableTask(Z)Lcom/android/server/wm/Task;

    move-result-object v0

    if-nez v0, :cond_e

    .line 2717
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {v0, p0, p2}, Lcom/android/server/wm/RootWindowContainer;->getNextFocusableRootTask(Lcom/android/server/wm/Task;Z)Lcom/android/server/wm/Task;

    move-result-object v0

    :cond_e
    if-nez v0, :cond_1b

    .line 2720
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p0

    if-eqz p0, :cond_19

    .line 2723
    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->clearPreferredTopFocusableRootTask()V

    :cond_19
    const/4 p0, 0x0

    return-object p0

    .line 2728
    :cond_1b
    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object p2

    if-nez p3, :cond_3c

    .line 2733
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object p0

    :cond_25
    move-object v3, v0

    move-object v0, p0

    move-object p0, v3

    const p1, 0x7fffffff

    const/4 p3, 0x0

    .line 2736
    invoke-virtual {v0, p1, p0, p3}, Lcom/android/server/wm/WindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 2738
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object p0

    .line 2739
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object p1

    if-eqz p1, :cond_3b

    if-nez p0, :cond_25

    :cond_3b
    return-object p2

    .line 2743
    :cond_3c
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " adjustFocusToNextFocusableTask"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 2744
    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 2745
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result v2

    if-eqz v2, :cond_67

    if-eqz v1, :cond_5f

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v1

    if-nez v1, :cond_67

    .line 2748
    :cond_5f
    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/android/server/wm/TaskDisplayArea;->moveHomeActivityToTop(Ljava/lang/String;)V

    return-object p2

    .line 2754
    :cond_67
    invoke-virtual {v0, p3}, Lcom/android/server/wm/Task;->moveToFront(Ljava/lang/String;)V

    .line 2756
    invoke-virtual {p2}, Lcom/android/server/wm/Task;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p3

    if-eqz p3, :cond_75

    .line 2757
    iget-object p0, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskSupervisor;->updateTopResumedActivityIfNeeded(Ljava/lang/String;)Lcom/android/server/wm/ActivityRecord;

    :cond_75
    return-object p2
.end method

.method public adjustForMinimalTaskDimensions(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/content/res/Configuration;)V
    .registers 8

    .line 2276
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2277
    const-string p0, "ActivityTaskManager"

    const-string p1, "Skip adjustForMinimalTaskDimensions for pip task"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2281
    :cond_e
    iget v0, p0, Lcom/android/server/wm/TaskFragment;->mMinWidth:I

    .line 2282
    iget v1, p0, Lcom/android/server/wm/TaskFragment;->mMinHeight:I

    .line 2284
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-nez p0, :cond_19

    const/16 p0, 0xdc

    goto :goto_1b

    .line 2285
    :cond_19
    iget p0, p0, Lcom/android/server/wm/DisplayContent;->mMinSizeOfResizeableTaskDp:I

    .line 2286
    :goto_1b
    iget v2, p3, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v2, v2

    const/high16 v3, 0x43200000    # 160.0f

    div-float/2addr v2, v3

    int-to-float p0, p0

    mul-float/2addr p0, v2

    float-to-int p0, p0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_28

    move v0, p0

    :cond_28
    if-ne v1, v2, :cond_2b

    move v1, p0

    .line 2296
    :cond_2b
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_47

    .line 2299
    iget-object p0, p3, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    .line 2300
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p3

    if-lt p3, v0, :cond_44

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p3

    if-lt p3, v1, :cond_44

    goto :goto_8c

    .line 2303
    :cond_44
    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2305
    :cond_47
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p0

    const/4 p3, 0x0

    const/4 v2, 0x1

    if-le v0, p0, :cond_51

    move p0, v2

    goto :goto_52

    :cond_51
    move p0, p3

    .line 2306
    :goto_52
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-le v1, v3, :cond_59

    move p3, v2

    :cond_59
    if-nez p0, :cond_5e

    if-nez p3, :cond_5e

    goto :goto_8c

    :cond_5e
    if-eqz p0, :cond_75

    .line 2312
    invoke-virtual {p2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_70

    iget p0, p1, Landroid/graphics/Rect;->right:I

    iget v2, p2, Landroid/graphics/Rect;->right:I

    if-ne p0, v2, :cond_70

    sub-int/2addr p0, v0

    .line 2313
    iput p0, p1, Landroid/graphics/Rect;->left:I

    goto :goto_75

    .line 2317
    :cond_70
    iget p0, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr p0, v0

    iput p0, p1, Landroid/graphics/Rect;->right:I

    :cond_75
    :goto_75
    if-eqz p3, :cond_8c

    .line 2321
    invoke-virtual {p2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_87

    iget p0, p1, Landroid/graphics/Rect;->bottom:I

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    if-ne p0, p2, :cond_87

    sub-int/2addr p0, v1

    .line 2322
    iput p0, p1, Landroid/graphics/Rect;->top:I

    return-void

    .line 2326
    :cond_87
    iget p0, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr p0, v1

    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    :cond_8c
    :goto_8c
    return-void
.end method

.method public asTask()Lcom/android/server/wm/Task;
    .registers 1

    .line 0
    return-object p0
.end method

.method public assignChildLayers(Landroid/view/SurfaceControl$Transaction;)V
    .registers 10

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    move v3, v2

    .line 3663
    :goto_4
    iget-object v4, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_76

    .line 3664
    iget-object v4, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowContainer;

    .line 3665
    invoke-virtual {v4, p1}, Lcom/android/server/wm/WindowContainer;->assignChildLayers(Landroid/view/SurfaceControl$Transaction;)V

    .line 3667
    iget-object v5, p0, Lcom/android/server/wm/Task;->mDecorSurfaceContainer:Lcom/android/server/wm/Task$DecorSurfaceContainer;

    const/4 v6, 0x1

    if-eqz v5, :cond_33

    invoke-static {v5}, Lcom/android/server/wm/Task$DecorSurfaceContainer;->-$$Nest$fgetmIsBoosted(Lcom/android/server/wm/Task$DecorSurfaceContainer;)Z

    move-result v5

    if-nez v5, :cond_33

    if-nez v3, :cond_33

    .line 3670
    invoke-virtual {p0, v4}, Lcom/android/server/wm/Task;->shouldPlaceDecorSurfaceBelowContainer(Lcom/android/server/wm/WindowContainer;)Z

    move-result v5

    if-eqz v5, :cond_33

    .line 3671
    iget-object v3, p0, Lcom/android/server/wm/Task;->mDecorSurfaceContainer:Lcom/android/server/wm/Task$DecorSurfaceContainer;

    add-int/lit8 v5, v2, 0x1

    invoke-static {v3, p1, v2}, Lcom/android/server/wm/Task$DecorSurfaceContainer;->-$$Nest$massignLayer(Lcom/android/server/wm/Task$DecorSurfaceContainer;Landroid/view/SurfaceControl$Transaction;I)V

    move v2, v5

    move v3, v6

    :cond_33
    add-int/lit8 v5, v2, 0x1

    .line 3674
    invoke-virtual {v4, p1, v2}, Lcom/android/server/wm/WindowContainer;->assignLayer(Landroid/view/SurfaceControl$Transaction;I)V

    .line 3677
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v2

    if-eqz v2, :cond_58

    .line 3678
    invoke-virtual {v2}, Lcom/android/server/wm/TaskFragment;->isEmbedded()Z

    move-result v7

    if-eqz v7, :cond_58

    .line 3679
    invoke-virtual {v2}, Lcom/android/server/wm/TaskFragment;->hasAdjacentTaskFragment()Z

    move-result v7

    if-eqz v7, :cond_58

    .line 3680
    filled-new-array {v5}, [I

    move-result-object v5

    .line 3681
    new-instance v7, Lcom/android/server/wm/Task$$ExternalSyntheticLambda6;

    invoke-direct {v7, p1, v5}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda6;-><init>(Landroid/view/SurfaceControl$Transaction;[I)V

    invoke-virtual {v2, v7}, Lcom/android/server/wm/TaskFragment;->forOtherAdjacentTaskFragments(Ljava/util/function/Consumer;)V

    .line 3686
    aget v5, v5, v0

    .line 3690
    :cond_58
    iget-object v2, p0, Lcom/android/server/wm/Task;->mDecorSurfaceContainer:Lcom/android/server/wm/Task$DecorSurfaceContainer;

    if-eqz v2, :cond_72

    invoke-static {v2}, Lcom/android/server/wm/Task$DecorSurfaceContainer;->-$$Nest$fgetmIsBoosted(Lcom/android/server/wm/Task$DecorSurfaceContainer;)Z

    move-result v2

    if-nez v2, :cond_72

    if-nez v3, :cond_72

    iget-object v2, p0, Lcom/android/server/wm/Task;->mDecorSurfaceContainer:Lcom/android/server/wm/Task$DecorSurfaceContainer;

    iget-object v7, v2, Lcom/android/server/wm/Task$DecorSurfaceContainer;->mOwnerTaskFragment:Lcom/android/server/wm/TaskFragment;

    if-ne v4, v7, :cond_72

    add-int/lit8 v3, v5, 0x1

    .line 3694
    invoke-static {v2, p1, v5}, Lcom/android/server/wm/Task$DecorSurfaceContainer;->-$$Nest$massignLayer(Lcom/android/server/wm/Task$DecorSurfaceContainer;Landroid/view/SurfaceControl$Transaction;I)V

    move v2, v3

    move v3, v6

    goto :goto_73

    :cond_72
    move v2, v5

    :goto_73
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 3701
    :cond_76
    iget-object v0, p0, Lcom/android/server/wm/Task;->mDecorSurfaceContainer:Lcom/android/server/wm/Task$DecorSurfaceContainer;

    if-eqz v0, :cond_88

    invoke-static {v0}, Lcom/android/server/wm/Task$DecorSurfaceContainer;->-$$Nest$fgetmIsBoosted(Lcom/android/server/wm/Task$DecorSurfaceContainer;)Z

    move-result v0

    if-eqz v0, :cond_88

    .line 3702
    iget-object v0, p0, Lcom/android/server/wm/Task;->mDecorSurfaceContainer:Lcom/android/server/wm/Task$DecorSurfaceContainer;

    add-int/lit8 v1, v2, 0x1

    invoke-static {v0, p1, v2}, Lcom/android/server/wm/Task$DecorSurfaceContainer;->-$$Nest$massignLayer(Lcom/android/server/wm/Task$DecorSurfaceContainer;Landroid/view/SurfaceControl$Transaction;I)V

    move v2, v1

    .line 3705
    :cond_88
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mOverlayHost:Lcom/android/server/wm/TrustedOverlayHost;

    if-eqz p0, :cond_8f

    .line 3706
    invoke-virtual {p0, p1, v2}, Lcom/android/server/wm/TrustedOverlayHost;->setLayer(Landroid/view/SurfaceControl$Transaction;I)V

    :cond_8f
    return-void
.end method

.method public canBeLaunchedOnDisplay(I)Z
    .registers 4

    .line 1928
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1, v1, p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->canPlaceEntityOnDisplay(IIILcom/android/server/wm/Task;)Z

    move-result p0

    return p0
.end method

.method public final canBeOrganized()Z
    .registers 3

    .line 4315
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1d

    iget-boolean v0, p0, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    if-eqz v0, :cond_c

    goto :goto_1d

    .line 4320
    :cond_c
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object p0

    if-eqz p0, :cond_1b

    .line 4321
    iget-boolean p0, p0, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    if-eqz p0, :cond_1b

    return v1

    :cond_1b
    const/4 p0, 0x0

    return p0

    :cond_1d
    :goto_1d
    return v1
.end method

.method public final canMoveTaskToBack(Lcom/android/server/wm/Task;)Z
    .registers 6

    const/4 v0, 0x0

    if-eq p1, p0, :cond_a

    .line 5926
    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowContainer;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    move-result v1

    if-nez v1, :cond_a

    return v0

    .line 5932
    :cond_a
    iget-object v1, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/wm/LockTaskController;->canMoveTaskToBack(Lcom/android/server/wm/Task;)Z

    move-result v1

    if-nez v1, :cond_17

    return v0

    .line 5939
    :cond_17
    iget-object v1, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    const/4 v2, 0x1

    if-eqz v1, :cond_57

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isTopRootTaskInDisplayArea()Z

    move-result v1

    if-eqz v1, :cond_57

    .line 5940
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    new-instance v3, Lcom/android/server/wm/Task$$ExternalSyntheticLambda10;

    invoke-direct {v3, p1}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/wm/Task;)V

    invoke-virtual {v1, v3}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-eqz p1, :cond_57

    .line 5943
    sget-object v1, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {p1, v1}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v1

    if-eqz v1, :cond_3c

    return v2

    .line 5949
    :cond_3c
    :try_start_3c
    iget-object v1, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-interface {v1, p1}, Landroid/app/IActivityController;->activityResuming(Ljava/lang/String;)Z

    move-result p0
    :try_end_46
    .catch Landroid/os/RemoteException; {:try_start_3c .. :try_end_46} :catch_47

    goto :goto_54

    .line 5951
    :catch_47
    iget-object p0, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    .line 5952
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/Watchdog;->setActivityController(Landroid/app/IActivityController;)V

    move p0, v2

    :goto_54
    if-nez p0, :cond_57

    return v0

    :cond_57
    return v2
.end method

.method public final canResizeToBounds(Landroid/graphics/Rect;)Z
    .registers 6

    const/4 v0, 0x1

    if-eqz p1, :cond_45

    .line 1962
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_45

    .line 1966
    :cond_a
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    const/4 v2, 0x0

    if-le v1, p1, :cond_17

    move p1, v0

    goto :goto_18

    :cond_17
    move p1, v2

    .line 1967
    :goto_18
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 1968
    iget p0, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    const/4 v3, 0x7

    if-ne p0, v3, :cond_39

    .line 1969
    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_38

    .line 1970
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result p0

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-le p0, v1, :cond_33

    move p0, v0

    goto :goto_34

    :cond_33
    move p0, v2

    :goto_34
    if-ne p1, p0, :cond_37

    goto :goto_38

    :cond_37
    return v2

    :cond_38
    :goto_38
    return v0

    :cond_39
    const/4 v1, 0x6

    if-ne p0, v1, :cond_3e

    if-nez p1, :cond_44

    :cond_3e
    const/4 v1, 0x5

    if-ne p0, v1, :cond_45

    if-eqz p1, :cond_44

    goto :goto_45

    :cond_44
    return v2

    :cond_45
    :goto_45
    return v0
.end method

.method public final canReuseAsLeafTask()Z
    .registers 2

    .line 6200
    iget-boolean v0, p0, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    if-nez v0, :cond_18

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_18

    .line 6205
    :cond_b
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v0

    .line 6206
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getActivityType()I

    move-result p0

    .line 6207
    invoke-static {v0, p0}, Lcom/android/server/wm/DisplayContent;->alwaysCreateRootTask(II)Z

    move-result p0

    return p0

    :cond_18
    :goto_18
    const/4 p0, 0x0

    return p0
.end method

.method public cancelTaskWindowTransition()V
    .registers 3

    .line 3056
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_18

    .line 3057
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->cancelAnimation()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_18
    return-void
.end method

.method public checkReadyForSleep()V
    .registers 2

    .line 5062
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->shouldSleepActivities()Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->goToSleepIfPossible(Z)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 5063
    iget-object p0, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->checkReadyForSleepLocked(Z)V

    :cond_13
    return-void
.end method

.method public checkTranslucentActivityWaiting(Lcom/android/server/wm/ActivityRecord;)V
    .registers 3

    .line 5163
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTranslucentActivityWaiting:Lcom/android/server/wm/ActivityRecord;

    if-eq v0, p1, :cond_1a

    .line 5164
    iget-object p1, p0, Lcom/android/server/wm/Task;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 5165
    iget-object p1, p0, Lcom/android/server/wm/Task;->mTranslucentActivityWaiting:Lcom/android/server/wm/ActivityRecord;

    if-eqz p1, :cond_13

    const/4 p1, 0x0

    .line 5167
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->notifyActivityDrawnLocked(Lcom/android/server/wm/ActivityRecord;)V

    .line 5168
    iput-object p1, p0, Lcom/android/server/wm/Task;->mTranslucentActivityWaiting:Lcom/android/server/wm/ActivityRecord;

    .line 5170
    :cond_13
    iget-object p0, p0, Lcom/android/server/wm/Task;->mHandler:Landroid/os/Handler;

    const/16 p1, 0x65

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1a
    return-void
.end method

.method public final cleanUpResourcesForDestroy(Lcom/android/server/wm/WindowContainer;)V
    .registers 6

    .line 745
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->hasChild()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 750
    :cond_7
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->saveLaunchingStateIfNeeded(Lcom/android/server/wm/DisplayContent;)V

    .line 753
    iget-object v0, p0, Lcom/android/server/wm/Task;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v0, :cond_14

    const/4 v1, 0x1

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    :goto_15
    if-eqz v1, :cond_1e

    .line 756
    :try_start_17
    iget-object v2, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    iget v3, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-interface {v0, v2, v3}, Landroid/service/voice/IVoiceInteractionSession;->taskFinished(Landroid/content/Intent;I)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_1e} :catch_1e

    .line 760
    :catch_1e
    :cond_1e
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->shouldAutoRemoveFromRecents(Lcom/android/server/wm/TaskFragment;)Z

    move-result p1

    if-nez p1, :cond_2a

    if-eqz v1, :cond_31

    .line 763
    :cond_2a
    iget-object p1, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {p1, p0}, Lcom/android/server/wm/RecentTasks;->remove(Lcom/android/server/wm/Task;)V

    .line 766
    :cond_31
    const-string p1, "cleanUpResourcesForDestroy"

    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->removeIfPossible(Ljava/lang/String;)V

    return-void
.end method

.method public clearExcludeLayersFromTaskSnapshot()V
    .registers 5

    .line 7081
    iget-object v0, p0, Lcom/android/server/wm/Task;->mExcludeLayersFromTaskSnapshot:[Landroid/view/SurfaceControl;

    if-nez v0, :cond_5

    return-void

    .line 7084
    :cond_5
    array-length v1, v0

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_11

    aget-object v3, v0, v2

    .line 7085
    invoke-virtual {v3}, Landroid/view/SurfaceControl;->release()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_11
    const/4 v0, 0x0

    .line 7087
    iput-object v0, p0, Lcom/android/server/wm/Task;->mExcludeLayersFromTaskSnapshot:[Landroid/view/SurfaceControl;

    return-void
.end method

.method public clearLastRecentsAnimationTransaction(Z)V
    .registers 3

    if-eqz p1, :cond_f

    .line 6379
    iget-object p1, p0, Lcom/android/server/wm/Task;->mLastRecentsAnimationOverlay:Landroid/view/SurfaceControl;

    if-eqz p1, :cond_f

    .line 6380
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/wm/Task;->mLastRecentsAnimationOverlay:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_f
    const/4 p1, 0x0

    .line 6382
    iput-object p1, p0, Lcom/android/server/wm/Task;->mLastRecentsAnimationTransaction:Landroid/window/PictureInPictureSurfaceTransaction;

    .line 6383
    iput-object p1, p0, Lcom/android/server/wm/Task;->mLastRecentsAnimationOverlay:Landroid/view/SurfaceControl;

    .line 6385
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->resetSurfaceControlTransforms()V

    return-void
.end method

.method public final clearPinnedTaskIfNeed()V
    .registers 2

    .line 1692
    iget-object v0, p0, Lcom/android/server/wm/Task;->mChildPipActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 1693
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object p0, p0, Lcom/android/server/wm/Task;->mChildPipActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->removeRootTask(Lcom/android/server/wm/Task;)V

    :cond_15
    return-void
.end method

.method public clearRootProcess()V
    .registers 2

    .line 2557
    iget-object v0, p0, Lcom/android/server/wm/Task;->mRootProcess:Lcom/android/server/wm/WindowProcessController;

    if-eqz v0, :cond_a

    .line 2558
    invoke-virtual {v0, p0}, Lcom/android/server/wm/WindowProcessController;->removeRecentTask(Lcom/android/server/wm/Task;)V

    const/4 v0, 0x0

    .line 2559
    iput-object v0, p0, Lcom/android/server/wm/Task;->mRootProcess:Lcom/android/server/wm/WindowProcessController;

    :cond_a
    return-void
.end method

.method public final clearTopActivities(Lcom/android/server/wm/ActivityRecord;I[I)Lcom/android/server/wm/ActivityRecord;
    .registers 5

    .line 1783
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    iget p1, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/Task;->findActivityInHistory(Landroid/content/ComponentName;I)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-nez p1, :cond_c

    const/4 p0, 0x0

    return-object p0

    .line 1786
    :cond_c
    invoke-virtual {p0, p1, p3}, Lcom/android/server/wm/Task;->moveTaskFragmentsToBottomIfNeeded(Lcom/android/server/wm/ActivityRecord;[I)V

    .line 1788
    new-instance v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda20;

    invoke-direct {v0, p3}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda20;-><init>([I)V

    const-class p3, Lcom/android/server/wm/ActivityRecord;

    .line 1791
    invoke-static {p3}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object p3

    .line 1788
    invoke-static {v0, p3, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainPredicate(Ljava/util/function/BiPredicate;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledPredicate;

    move-result-object p3

    .line 1792
    invoke-virtual {p0, p3}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Predicate;)Z

    .line 1793
    invoke-interface {p3}, Lcom/android/internal/util/function/pooled/PooledPredicate;->recycle()V

    .line 1797
    iget p0, p1, Lcom/android/server/wm/ActivityRecord;->launchMode:I

    if-nez p0, :cond_3d

    const/high16 p0, 0x20000000

    and-int/2addr p0, p2

    if-nez p0, :cond_3d

    .line 1799
    invoke-static {p2}, Lcom/android/server/wm/ActivityStarter;->isDocumentLaunchesIntoExisting(I)Z

    move-result p0

    if-nez p0, :cond_3d

    .line 1800
    iget-boolean p0, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez p0, :cond_3d

    .line 1801
    const-string p0, "clear-task-top"

    const/4 p2, 0x0

    invoke-virtual {p1, p0, p2}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(Ljava/lang/String;Z)I

    :cond_3d
    return-object p1
.end method

.method public final closeRecentsChain()V
    .registers 3

    .line 1385
    iget-object v0, p0, Lcom/android/server/wm/Task;->mPrevAffiliate:Lcom/android/server/wm/Task;

    if-eqz v0, :cond_9

    .line 1386
    iget-object v1, p0, Lcom/android/server/wm/Task;->mNextAffiliate:Lcom/android/server/wm/Task;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/Task;->setNextAffiliate(Lcom/android/server/wm/Task;)V

    .line 1388
    :cond_9
    iget-object v0, p0, Lcom/android/server/wm/Task;->mNextAffiliate:Lcom/android/server/wm/Task;

    if-eqz v0, :cond_12

    .line 1389
    iget-object v1, p0, Lcom/android/server/wm/Task;->mPrevAffiliate:Lcom/android/server/wm/Task;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/Task;->setPrevAffiliate(Lcom/android/server/wm/Task;)V

    :cond_12
    const/4 v0, 0x0

    .line 1391
    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->setPrevAffiliate(Lcom/android/server/wm/Task;)V

    .line 1392
    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->setNextAffiliate(Lcom/android/server/wm/Task;)V

    return-void
.end method

.method public commitDecorSurfaceBoostedState()V
    .registers 3

    .line 3739
    iget-object v0, p0, Lcom/android/server/wm/Task;->mDecorSurfaceContainer:Lcom/android/server/wm/Task$DecorSurfaceContainer;

    if-nez v0, :cond_5

    return-void

    .line 3742
    :cond_5
    invoke-static {v0}, Lcom/android/server/wm/Task$DecorSurfaceContainer;->-$$Nest$mcommitBoostedState(Lcom/android/server/wm/Task$DecorSurfaceContainer;)V

    .line 3744
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/server/wm/Task$$ExternalSyntheticLambda43;

    invoke-direct {v1, v0}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda43;-><init>(Lcom/android/server/wm/WindowAnimator;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;Z)V

    .line 3747
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->assignChildLayers()V

    return-void
.end method

.method public final computeFreeformBounds(Landroid/graphics/Rect;Landroid/content/res/Configuration;)V
    .registers 5

    .line 2335
    iget v0, p2, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v0, v0

    const/high16 v1, 0x43200000    # 160.0f

    div-float/2addr v0, v1

    .line 2337
    new-instance v1, Landroid/graphics/Rect;

    iget-object p2, p2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 2338
    invoke-virtual {p2}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object p2

    invoke-direct {v1, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 2339
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    if-eqz p0, :cond_22

    .line 2344
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    .line 2345
    invoke-virtual {p0, p2}, Lcom/android/server/wm/DisplayContent;->getStableRect(Landroid/graphics/Rect;)V

    .line 2346
    invoke-virtual {v1, p2}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    :cond_22
    const/high16 p0, 0x42400000    # 48.0f

    mul-float/2addr p0, v0

    float-to-int p0, p0

    const/high16 p2, 0x42000000    # 32.0f

    mul-float/2addr v0, p2

    float-to-int p2, v0

    .line 2349
    invoke-static {p1, v1, p0, p2}, Lcom/android/server/wm/Task;->fitWithinBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;II)V

    .line 2354
    iget p0, v1, Landroid/graphics/Rect;->top:I

    iget p2, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr p0, p2

    if-lez p0, :cond_38

    const/4 p2, 0x0

    .line 2356
    invoke-virtual {p1, p2, p0}, Landroid/graphics/Rect;->offset(II)V

    :cond_38
    return-void
.end method

.method public final computeMaxUserPosition(I)I
    .registers 3

    :goto_0
    if-lez p1, :cond_14

    .line 2789
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowContainer;

    .line 2790
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->showToCurrentUser()Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_14

    :cond_11
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_14
    :goto_14
    return p1
.end method

.method public final computeMinUserPosition(II)I
    .registers 4

    :goto_0
    if-ge p1, p2, :cond_14

    .line 2771
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowContainer;

    .line 2772
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->showToCurrentUser()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_14

    :cond_11
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_14
    :goto_14
    return p1
.end method

.method public convertActivityFromTranslucent(Lcom/android/server/wm/ActivityRecord;)V
    .registers 4

    .line 5183
    iget-object v0, p0, Lcom/android/server/wm/Task;->mPendingConvertFromTranslucentActivity:Lcom/android/server/wm/ActivityRecord;

    if-eq p1, v0, :cond_24

    .line 5184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "convertFromTranslucent expects "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/Task;->mPendingConvertFromTranslucentActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " but is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ActivityTaskManager"

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_24
    const/4 p1, 0x0

    .line 5187
    iput-object p1, p0, Lcom/android/server/wm/Task;->mPendingConvertFromTranslucentActivity:Lcom/android/server/wm/ActivityRecord;

    .line 5188
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->updateTaskDescription()V

    return-void
.end method

.method public convertActivityToTranslucent(Lcom/android/server/wm/ActivityRecord;)V
    .registers 4

    .line 5175
    iput-object p1, p0, Lcom/android/server/wm/Task;->mTranslucentActivityWaiting:Lcom/android/server/wm/ActivityRecord;

    .line 5176
    iput-object p1, p0, Lcom/android/server/wm/Task;->mPendingConvertFromTranslucentActivity:Lcom/android/server/wm/ActivityRecord;

    .line 5177
    iget-object p1, p0, Lcom/android/server/wm/Task;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 5178
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->updateTaskDescription()V

    .line 5179
    iget-object p0, p0, Lcom/android/server/wm/Task;->mHandler:Landroid/os/Handler;

    const/16 p1, 0x65

    const-wide/16 v0, 0x7d0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public cropWindowsToRootTaskBounds()Z
    .registers 3

    .line 3024
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHomeOrRecents()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 3027
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 3029
    iget-boolean v1, v0, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    if-eqz v1, :cond_12

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object v0

    :cond_12
    if-eq p0, v0, :cond_1a

    .line 3030
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    move-result v0

    if-eqz v0, :cond_1c

    :cond_1a
    const/4 p0, 0x0

    return p0

    .line 3034
    :cond_1c
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isResizeable()Z

    move-result p0

    return p0
.end method

.method public dismissPip()V
    .registers 5

    .line 6246
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeStandardOrUndefined()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 6250
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2b

    .line 6255
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getBottomMostTask()Lcom/android/server/wm/Task;

    move-result-object v0

    const/4 v1, 0x0

    .line 6256
    invoke-virtual {p0, v1}, Lcom/android/server/wm/Task;->setRootTaskWindowingMode(I)V

    .line 6260
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->isAttached()Z

    move-result v2

    if-eqz v2, :cond_25

    .line 6261
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    const v3, 0x7fffffff

    invoke-virtual {v2, v3, p0, v1}, Lcom/android/server/wm/TaskDisplayArea;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 6264
    :cond_25
    iget-object v1, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v1, v0, p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->scheduleUpdatePictureInPictureModeIfNeeded(Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;)V

    return-void

    .line 6251
    :cond_2b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Can\'t exit pinned mode if it\'s not pinned already."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 6247
    :cond_33
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "You can\'t move tasks from non-standard root tasks."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public dispatchTaskInfoChangedIfNeeded(Z)V
    .registers 3

    .line 6452
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isOrganized()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 6453
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/wm/TaskOrganizerController;->onTaskInfoChanged(Lcom/android/server/wm/Task;Z)V

    :cond_d
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 12

    .line 3775
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "userId="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 3776
    const-string v0, " effectiveUid="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/Task;->effectiveUid:I

    invoke-static {p1, v0}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 3777
    const-string v0, " mCallingUid="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/Task;->mCallingUid:I

    invoke-static {p1, v0}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 3778
    const-string v0, " mUserSetupComplete="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mUserSetupComplete:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 3779
    const-string v0, " mCallingPackage="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/Task;->mCallingPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3780
    const-string v0, " mCallingFeatureId="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/Task;->mCallingFeatureId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3781
    iget-object v0, p0, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    if-nez v0, :cond_47

    iget-object v0, p0, Lcom/android/server/wm/Task;->rootAffinity:Ljava/lang/String;

    if-eqz v0, :cond_6f

    .line 3782
    :cond_47
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "affinity="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3783
    iget-object v0, p0, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    if-eqz v0, :cond_65

    iget-object v1, p0, Lcom/android/server/wm/Task;->rootAffinity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_61

    goto :goto_65

    .line 3786
    :cond_61
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    goto :goto_6f

    .line 3784
    :cond_65
    :goto_65
    const-string v0, " root="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/Task;->rootAffinity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3789
    :cond_6f
    :goto_6f
    iget-object v0, p0, Lcom/android/server/wm/Task;->mWindowLayoutAffinity:Ljava/lang/String;

    if-eqz v0, :cond_80

    .line 3790
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "windowLayoutAffinity="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/Task;->mWindowLayoutAffinity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3792
    :cond_80
    iget-object v0, p0, Lcom/android/server/wm/Task;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-nez v0, :cond_88

    iget-object v0, p0, Lcom/android/server/wm/Task;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    if-eqz v0, :cond_af

    .line 3793
    :cond_88
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "VOICE: session=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3794
    iget-object v0, p0, Lcom/android/server/wm/Task;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3795
    const-string v0, " interactor=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3796
    iget-object v0, p0, Lcom/android/server/wm/Task;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3798
    :cond_af
    iget-object v0, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    const/16 v1, 0x7d

    const/16 v2, 0x80

    if-eqz v0, :cond_d7

    .line 3799
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3800
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "intent={"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3801
    iget-object v3, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual/range {v3 .. v8}, Landroid/content/Intent;->toShortString(Ljava/lang/StringBuilder;ZZZZ)V

    .line 3802
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3803
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3805
    :cond_d7
    iget-object v0, p0, Lcom/android/server/wm/Task;->affinityIntent:Landroid/content/Intent;

    if-eqz v0, :cond_fb

    .line 3806
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3807
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "affinityIntent={"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3808
    iget-object v3, p0, Lcom/android/server/wm/Task;->affinityIntent:Landroid/content/Intent;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual/range {v3 .. v8}, Landroid/content/Intent;->toShortString(Ljava/lang/StringBuilder;ZZZZ)V

    .line 3809
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3810
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3812
    :cond_fb
    iget-object v0, p0, Lcom/android/server/wm/Task;->origActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_110

    .line 3813
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "origActivity="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3814
    iget-object v0, p0, Lcom/android/server/wm/Task;->origActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3816
    :cond_110
    iget-object v0, p0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_125

    .line 3817
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mActivityComponent="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3818
    iget-object v0, p0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3820
    :cond_125
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->autoRemoveRecents:Z

    if-nez v0, :cond_133

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->isPersistable:Z

    if-nez v0, :cond_133

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeStandard()Z

    move-result v0

    if-nez v0, :cond_156

    .line 3821
    :cond_133
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "autoRemoveRecents="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->autoRemoveRecents:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 3822
    const-string v0, " isPersistable="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->isPersistable:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 3823
    const-string v0, " activityType="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getActivityType()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 3825
    :cond_156
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->rootWasReset:Z

    const/4 v1, 0x1

    if-nez v0, :cond_167

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mNeverRelinquishIdentity:Z

    if-nez v0, :cond_167

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mReuseTask:Z

    if-nez v0, :cond_167

    iget v0, p0, Lcom/android/server/wm/Task;->mLockTaskAuth:I

    if-eq v0, v1, :cond_194

    .line 3827
    :cond_167
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "rootWasReset="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->rootWasReset:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 3828
    const-string v0, " mNeverRelinquishIdentity="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mNeverRelinquishIdentity:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 3829
    const-string v0, " mReuseTask="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mReuseTask:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 3830
    const-string v0, " mLockTaskAuth="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->lockTaskAuthToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3832
    :cond_194
    iget v0, p0, Lcom/android/server/wm/Task;->mAffiliatedTaskId:I

    iget v2, p0, Lcom/android/server/wm/Task;->mTaskId:I

    if-ne v0, v2, :cond_1ab

    iget v0, p0, Lcom/android/server/wm/Task;->mPrevAffiliateTaskId:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1ab

    iget-object v0, p0, Lcom/android/server/wm/Task;->mPrevAffiliate:Lcom/android/server/wm/Task;

    if-nez v0, :cond_1ab

    iget v0, p0, Lcom/android/server/wm/Task;->mNextAffiliateTaskId:I

    if-ne v0, v2, :cond_1ab

    iget-object v0, p0, Lcom/android/server/wm/Task;->mNextAffiliate:Lcom/android/server/wm/Task;

    if-eqz v0, :cond_201

    .line 3835
    :cond_1ab
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "affiliation="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/Task;->mAffiliatedTaskId:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 3836
    const-string v0, " prevAffiliation="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/Task;->mPrevAffiliateTaskId:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 3837
    const-string v0, " ("

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3838
    iget-object v2, p0, Lcom/android/server/wm/Task;->mPrevAffiliate:Lcom/android/server/wm/Task;

    const-string v3, "null"

    if-nez v2, :cond_1d1

    .line 3839
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1dc

    .line 3841
    :cond_1d1
    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3843
    :goto_1dc
    const-string v2, ") nextAffiliation="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/Task;->mNextAffiliateTaskId:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 3844
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3845
    iget-object v0, p0, Lcom/android/server/wm/Task;->mNextAffiliate:Lcom/android/server/wm/Task;

    if-nez v0, :cond_1f1

    .line 3846
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1fc

    .line 3848
    :cond_1f1
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3850
    :goto_1fc
    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3852
    :cond_201
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Activities="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3853
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->inRecents:Z

    if-eqz v0, :cond_216

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->isAvailable:Z

    if-nez v0, :cond_22d

    .line 3854
    :cond_216
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3855
    const-string v0, " inRecents="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->inRecents:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 3856
    const-string v0, " isAvailable="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->isAvailable:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 3858
    :cond_22d
    iget-object v0, p0, Lcom/android/server/wm/Task;->lastDescription:Ljava/lang/CharSequence;

    if-eqz v0, :cond_23e

    .line 3859
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "lastDescription="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/Task;->lastDescription:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3861
    :cond_23e
    iget-object v0, p0, Lcom/android/server/wm/Task;->mRootProcess:Lcom/android/server/wm/WindowProcessController;

    if-eqz v0, :cond_24f

    .line 3862
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mRootProcess="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/Task;->mRootProcess:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3864
    :cond_24f
    iget-object v0, p0, Lcom/android/server/wm/Task;->mSharedStartingData:Lcom/android/server/wm/StartingData;

    if-eqz v0, :cond_26c

    .line 3865
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mSharedStartingData="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/Task;->mSharedStartingData:Lcom/android/server/wm/StartingData;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3867
    :cond_26c
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mKillProcessesOnDestroyed:Z

    if-eqz v0, :cond_284

    .line 3868
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mKillProcessesOnDestroyed=true"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3870
    :cond_284
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "taskId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3871
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " rootTaskId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootTaskId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3872
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hasChildPipActivity="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/Task;->mChildPipActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v2, :cond_2c7

    goto :goto_2c8

    :cond_2c7
    const/4 v1, 0x0

    :goto_2c8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3873
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mHasBeenVisible="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getHasBeenVisible()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 3874
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mResizeMode="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3875
    iget v0, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    invoke-static {v0}, Landroid/content/pm/ActivityInfo;->resizeModeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3876
    const-string v0, " mSupportsPictureInPicture="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mSupportsPictureInPicture:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 3877
    const-string v0, " isResizeable="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isResizeable()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 3878
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "isPerceptible="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mIsPerceptible:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 3879
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "lastActiveTime="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/wm/Task;->lastActiveTime:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 3880
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " (inactive for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getInactiveDuration()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "s)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3881
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isTrimmable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/Task;->mIsTrimmableFromRecents:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3882
    const-string v0, " isForceHidden="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->isForceHidden()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 3883
    const-string v0, " isForceExcludedFromRecents="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isForceExcludedFromRecents()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 3884
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mLaunchAdjacentDisabled:Z

    if-eqz v0, :cond_38b

    .line 3885
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mLaunchAdjacentDisabled=true"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3887
    :cond_38b
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mReparentLeafTaskIfRelaunch:Z

    if-eqz v0, :cond_3a3

    .line 3888
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mReparentLeafTaskIfRelaunch=true"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3890
    :cond_3a3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "mSelfMovable="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/wm/Task;->mSelfMovable:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ZZLjava/lang/String;Z)Z
    .registers 16

    .line 6086
    const-string v1, "  "

    const/4 v8, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/wm/TaskFragment;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ZZLjava/lang/String;ZLjava/lang/Runnable;)Z

    move-result p0

    return p0
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V
    .registers 8

    const/4 v0, 0x2

    if-ne p4, v0, :cond_a

    .line 6542
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v0

    if-nez v0, :cond_a

    return-void

    .line 6546
    :cond_a
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    const-wide v0, 0x10500000002L

    .line 6548
    iget v2, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v0, 0x10500000010L

    .line 6549
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootTaskId()I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 6551
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_36

    .line 6552
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    const-wide v1, 0x10b0000000cL

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/wm/ActivityRecord;->writeIdentifierToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 6554
    :cond_36
    iget-object v0, p0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_46

    const-wide v1, 0x1090000000dL

    .line 6555
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 6557
    :cond_46
    iget-object v0, p0, Lcom/android/server/wm/Task;->origActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_56

    const-wide v1, 0x1090000000eL

    .line 6558
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    :cond_56
    const-wide v0, 0x10500000012L

    .line 6560
    iget v2, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v0, 0x10800000004L

    .line 6561
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->matchParentBounds()Z

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 6562
    iget-object v0, p0, Lcom/android/server/wm/Task;->mName:Ljava/lang/String;

    if-eqz v0, :cond_78

    const-wide v1, 0x10900000020L

    .line 6563
    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 6565
    :cond_78
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRawBounds()Landroid/graphics/Rect;

    move-result-object v0

    const-wide v1, 0x10b00000005L

    invoke-virtual {v0, p1, v1, v2}, Landroid/graphics/Rect;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 6567
    iget-object v0, p0, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_90

    const-wide v1, 0x10b00000016L

    .line 6568
    invoke-virtual {v0, p1, v1, v2}, Landroid/graphics/Rect;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 6571
    :cond_90
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_ae

    const-wide v1, 0x10500000008L

    .line 6572
    invoke-virtual {v0}, Landroid/view/SurfaceControl;->getWidth()I

    move-result v0

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 6573
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->getHeight()I

    move-result v0

    const-wide v1, 0x10500000009L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_ae
    const-wide v0, 0x1080000001cL

    .line 6576
    iget-boolean v2, p0, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v0, 0x1090000001dL

    .line 6577
    iget-object v2, p0, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 6578
    iget-object v0, p0, Lcom/android/server/wm/Task;->mChildPipActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_c8

    const/4 v0, 0x1

    goto :goto_c9

    :cond_c8
    const/4 v0, 0x0

    :goto_c9
    const-wide v1, 0x1080000001eL

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v0, 0x10b0000001fL

    .line 6580
    invoke-super {p0, p1, v0, v1, p4}, Lcom/android/server/wm/TaskFragment;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 6582
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public dumpInner(Ljava/lang/String;Ljava/io/PrintWriter;ZLjava/lang/String;)V
    .registers 13

    .line 6091
    invoke-super/range {p0 .. p4}, Lcom/android/server/wm/TaskFragment;->dumpInner(Ljava/lang/String;Ljava/io/PrintWriter;ZLjava/lang/String;)V

    .line 6092
    iget-boolean v3, p0, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    if-eqz v3, :cond_46

    .line 6093
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  mCreatedByOrganizer=true"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6094
    iget v3, p0, Lcom/android/server/wm/Task;->mOffsetXForInsets:I

    if-nez v3, :cond_23

    iget v3, p0, Lcom/android/server/wm/Task;->mOffsetYForInsets:I

    if-eqz v3, :cond_46

    .line 6095
    :cond_23
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  mOffsetXForInsets="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/wm/Task;->mOffsetXForInsets:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mOffsetYForInsets="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/wm/Task;->mOffsetYForInsets:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6099
    :cond_46
    iget-boolean v3, p0, Lcom/android/server/wm/Task;->mLaunchNextToBubble:Z

    if-eqz v3, :cond_5e

    .line 6100
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  mLaunchNextToBubble=true"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6102
    :cond_5e
    iget-boolean v3, p0, Lcom/android/server/wm/Task;->mDisablePip:Z

    if-eqz v3, :cond_76

    .line 6103
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  mDisablePip=true"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6105
    :cond_76
    iget-boolean v3, p0, Lcom/android/server/wm/Task;->mDisallowOverrideBoundsForChildren:Z

    if-eqz v3, :cond_8e

    .line 6106
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  mDisallowOverrideBoundsForChildren=true"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6108
    :cond_8e
    iget-object v3, p0, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    if-eqz v3, :cond_9f

    .line 6109
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  mLastNonFullscreenBounds="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6110
    iget-object v3, p0, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 6112
    :cond_9f
    iget v3, p0, Lcom/android/server/wm/Task;->mNonOccludedFreeformAreaRatio:I

    if-eqz v3, :cond_b0

    .line 6113
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  mNonOccludedFreeformAreaRatio="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6114
    iget v3, p0, Lcom/android/server/wm/Task;->mNonOccludedFreeformAreaRatio:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 6116
    :cond_b0
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v3

    if-eqz v3, :cond_127

    .line 6117
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  isSleeping="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->shouldSleepActivities()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6118
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopPausingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "  topPausingActivity="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v2, p2

    move-object v4, p4

    invoke-static/range {v2 .. v7}, Lcom/android/server/wm/ActivityTaskSupervisor;->printThisActivity(Ljava/io/PrintWriter;Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Runnable;)Z

    .line 6120
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  topResumedActivity="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v2, p2

    move-object v4, p4

    invoke-static/range {v2 .. v7}, Lcom/android/server/wm/ActivityTaskSupervisor;->printThisActivity(Ljava/io/PrintWriter;Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Runnable;)Z

    .line 6122
    iget v3, p0, Lcom/android/server/wm/TaskFragment;->mMinWidth:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_110

    iget v3, p0, Lcom/android/server/wm/TaskFragment;->mMinHeight:I

    if-eq v3, v4, :cond_127

    .line 6123
    :cond_110
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  mMinWidth="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/wm/TaskFragment;->mMinWidth:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 6124
    const-string v1, " mMinHeight="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/TaskFragment;->mMinHeight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    :cond_127
    return-void
.end method

.method public ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;)V
    .registers 3

    const/4 v0, 0x1

    .line 5109
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/Task;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;Z)V

    return-void
.end method

.method public ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;Z)V
    .registers 4

    .line 5124
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->beginActivityVisibilityUpdate()V

    .line 5126
    :try_start_5
    new-instance v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda11;

    invoke-direct {v0, p1, p2}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/wm/ActivityRecord;Z)V

    const/4 p1, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/Task;->forAllLeafTasks(Ljava/util/function/Consumer;Z)V

    .line 5130
    iget-object p1, p0, Lcom/android/server/wm/Task;->mTranslucentActivityWaiting:Lcom/android/server/wm/ActivityRecord;

    if-eqz p1, :cond_21

    iget-object p1, p0, Lcom/android/server/wm/Task;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    .line 5131
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_21

    const/4 p1, 0x0

    .line 5134
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->notifyActivityDrawnLocked(Lcom/android/server/wm/ActivityRecord;)V
    :try_end_1e
    .catchall {:try_start_5 .. :try_end_1e} :catchall_1f

    goto :goto_21

    :catchall_1f
    move-exception p1

    goto :goto_27

    .line 5137
    :cond_21
    :goto_21
    iget-object p0, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->endActivityVisibilityUpdate()V

    return-void

    :goto_27
    iget-object p0, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->endActivityVisibilityUpdate()V

    .line 5138
    throw p1
.end method

.method public fillTaskInfo(Landroid/app/TaskInfo;)V
    .registers 3

    const/4 v0, 0x1

    .line 3382
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/Task;->fillTaskInfo(Landroid/app/TaskInfo;Z)V

    return-void
.end method

.method public fillTaskInfo(Landroid/app/TaskInfo;Z)V
    .registers 4

    .line 3386
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/Task;->fillTaskInfo(Landroid/app/TaskInfo;ZLcom/android/server/wm/TaskDisplayArea;)V

    return-void
.end method

.method public fillTaskInfo(Landroid/app/TaskInfo;ZLcom/android/server/wm/TaskDisplayArea;)V
    .registers 10

    .line 3396
    iget-object v0, p1, Landroid/app/TaskInfo;->launchCookies:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3397
    iget-object v0, p0, Lcom/android/server/wm/Task;->mLaunchCookie:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/app/TaskInfo;->addLaunchCookie(Landroid/os/IBinder;)V

    .line 3398
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mTaskInfoHelper:Lcom/android/server/wm/ActivityTaskSupervisor$TaskInfoHelper;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/wm/ActivityTaskSupervisor$TaskInfoHelper;->fillAndReturnTop(Lcom/android/server/wm/Task;Landroid/app/TaskInfo;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 3400
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getUserId()I

    move-result v1

    iput v1, p1, Landroid/app/TaskInfo;->userId:I

    .line 3401
    iget v1, p0, Lcom/android/server/wm/Task;->mTaskId:I

    iput v1, p1, Landroid/app/TaskInfo;->taskId:I

    .line 3402
    iget v1, p0, Lcom/android/server/wm/Task;->effectiveUid:I

    iput v1, p1, Landroid/app/TaskInfo;->effectiveUid:I

    .line 3403
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    move-result v1

    iput v1, p1, Landroid/app/TaskInfo;->displayId:I

    const/4 v1, -0x1

    if-eqz p3, :cond_2c

    .line 3404
    iget v2, p3, Lcom/android/server/wm/DisplayArea;->mFeatureId:I

    goto :goto_2d

    :cond_2c
    move v2, v1

    :goto_2d
    iput v2, p1, Landroid/app/TaskInfo;->displayAreaFeatureId:I

    .line 3405
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getBaseIntent()Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_38

    move v4, v3

    goto :goto_3c

    .line 3408
    :cond_38
    invoke-virtual {v2}, Landroid/content/Intent;->getFlags()I

    move-result v4

    :goto_3c
    if-nez v2, :cond_44

    .line 3410
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    goto :goto_50

    :cond_44
    if-eqz p2, :cond_4b

    .line 3411
    invoke-virtual {v2}, Landroid/content/Intent;->cloneFilter()Landroid/content/Intent;

    move-result-object p2

    goto :goto_50

    :cond_4b
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    :goto_50
    iput-object p2, p1, Landroid/app/TaskInfo;->baseIntent:Landroid/content/Intent;

    .line 3412
    invoke-virtual {p2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/4 p2, 0x1

    if-eqz v0, :cond_5a

    move v2, p2

    goto :goto_5b

    :cond_5a
    move v2, v3

    .line 3414
    :goto_5b
    iput-boolean v2, p1, Landroid/app/TaskInfo;->isRunning:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_63

    .line 3415
    iget-object v4, v0, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    goto :goto_64

    :cond_63
    move-object v4, v2

    :goto_64
    iput-object v4, p1, Landroid/app/TaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 3416
    iget-object v4, p0, Lcom/android/server/wm/Task;->origActivity:Landroid/content/ComponentName;

    iput-object v4, p1, Landroid/app/TaskInfo;->origActivity:Landroid/content/ComponentName;

    .line 3417
    iget-object v4, p0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    iput-object v4, p1, Landroid/app/TaskInfo;->realActivity:Landroid/content/ComponentName;

    .line 3418
    iget-wide v4, p0, Lcom/android/server/wm/Task;->lastActiveTime:J

    iput-wide v4, p1, Landroid/app/TaskInfo;->lastActiveTime:J

    .line 3419
    new-instance v4, Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTaskDescription()Landroid/app/ActivityManager$TaskDescription;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/ActivityManager$TaskDescription;-><init>(Landroid/app/ActivityManager$TaskDescription;)V

    iput-object v4, p1, Landroid/app/TaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 3420
    invoke-virtual {p0, p3}, Lcom/android/server/wm/TaskFragment;->supportsMultiWindowInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;)Z

    move-result p3

    iput-boolean p3, p1, Landroid/app/TaskInfo;->supportsMultiWindow:Z

    .line 3421
    iget-object p3, p1, Landroid/app/TaskInfo;->configuration:Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-virtual {p3, v4}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 3424
    iget-object p3, p1, Landroid/app/TaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object p3, p3, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getActivityType()I

    move-result v4

    invoke-virtual {p3, v4}, Landroid/app/WindowConfiguration;->setActivityType(I)V

    .line 3425
    iget-object p3, p1, Landroid/app/TaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object p3, p3, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v4

    invoke-virtual {p3, v4}, Landroid/app/WindowConfiguration;->setWindowingMode(I)V

    .line 3426
    iget-object p3, p0, Lcom/android/server/wm/WindowContainer;->mRemoteToken:Lcom/android/server/wm/WindowContainer$RemoteToken;

    invoke-virtual {p3}, Lcom/android/server/wm/WindowContainer$RemoteToken;->toWindowContainerToken()Landroid/window/WindowContainerToken;

    move-result-object p3

    iput-object p3, p1, Landroid/app/TaskInfo;->token:Landroid/window/WindowContainerToken;

    if-eqz v0, :cond_b7

    .line 3430
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p3

    if-eqz p3, :cond_b7

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p3

    goto :goto_b8

    :cond_b7
    move-object p3, p0

    .line 3431
    :goto_b8
    iget v4, p3, Lcom/android/server/wm/Task;->mResizeMode:I

    iput v4, p1, Landroid/app/TaskInfo;->resizeMode:I

    .line 3432
    invoke-virtual {p3}, Lcom/android/server/wm/TaskFragment;->getActivityType()I

    move-result v4

    iput v4, p1, Landroid/app/TaskInfo;->topActivityType:I

    .line 3433
    invoke-virtual {p3}, Lcom/android/server/wm/Task;->getDisplayCutoutInsets()Landroid/graphics/Rect;

    move-result-object v4

    iput-object v4, p1, Landroid/app/TaskInfo;->displayCutoutInsets:Landroid/graphics/Rect;

    .line 3434
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isResizeable()Z

    move-result v4

    iput-boolean v4, p1, Landroid/app/TaskInfo;->isResizeable:Z

    .line 3435
    iget v4, p0, Lcom/android/server/wm/TaskFragment;->mMinWidth:I

    iput v4, p1, Landroid/app/TaskInfo;->minWidth:I

    .line 3436
    iget v4, p0, Lcom/android/server/wm/TaskFragment;->mMinHeight:I

    iput v4, p1, Landroid/app/TaskInfo;->minHeight:I

    .line 3437
    iget-object v4, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-nez v4, :cond_dd

    const/16 v4, 0xdc

    goto :goto_df

    .line 3438
    :cond_dd
    iget v4, v4, Lcom/android/server/wm/DisplayContent;->mMinSizeOfResizeableTaskDp:I

    :goto_df
    iput v4, p1, Landroid/app/TaskInfo;->defaultMinSize:I

    .line 3439
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRelativePosition()Landroid/graphics/Point;

    move-result-object v4

    iput-object v4, p1, Landroid/app/TaskInfo;->positionInParent:Landroid/graphics/Point;

    if-eqz v0, :cond_ec

    .line 3441
    iget-object v4, v0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    goto :goto_ed

    :cond_ec
    move-object v4, v2

    :goto_ed
    iput-object v4, p1, Landroid/app/TaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 3442
    invoke-static {v0}, Lcom/android/server/wm/Task;->getPictureInPictureParams(Lcom/android/server/wm/ActivityRecord;)Landroid/app/PictureInPictureParams;

    move-result-object v4

    iput-object v4, p1, Landroid/app/TaskInfo;->pictureInPictureParams:Landroid/app/PictureInPictureParams;

    if-eqz v4, :cond_10a

    .line 3444
    invoke-virtual {v4}, Landroid/app/PictureInPictureParams;->isLaunchIntoPip()Z

    move-result v4

    if-eqz v4, :cond_10a

    .line 3445
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getLastParentBeforePip()Lcom/android/server/wm/Task;

    move-result-object v4

    if-eqz v4, :cond_10a

    .line 3446
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getLastParentBeforePip()Lcom/android/server/wm/Task;

    move-result-object v4

    iget v4, v4, Lcom/android/server/wm/Task;->mTaskId:I

    goto :goto_10b

    :cond_10a
    move v4, v1

    :goto_10b
    iput v4, p1, Landroid/app/TaskInfo;->launchIntoPipHostTaskId:I

    if-eqz v0, :cond_11c

    .line 3447
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getLastParentBeforePip()Lcom/android/server/wm/Task;

    move-result-object v4

    if-eqz v4, :cond_11c

    .line 3448
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getLastParentBeforePip()Lcom/android/server/wm/Task;

    move-result-object v4

    iget v4, v4, Lcom/android/server/wm/Task;->mTaskId:I

    goto :goto_11d

    :cond_11c
    move v4, v1

    :goto_11d
    iput v4, p1, Landroid/app/TaskInfo;->lastParentTaskIdBeforePip:I

    if-eqz v0, :cond_127

    .line 3449
    iget-boolean v4, v0, Lcom/android/server/wm/ActivityRecord;->shouldDockBigOverlays:Z

    if-eqz v4, :cond_127

    move v4, p2

    goto :goto_128

    :cond_127
    move v4, v3

    :goto_128
    iput-boolean v4, p1, Landroid/app/TaskInfo;->shouldDockBigOverlays:Z

    if-eqz v0, :cond_131

    .line 3450
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getLocusId()Landroid/content/LocusId;

    move-result-object v4

    goto :goto_132

    :cond_131
    move-object v4, v2

    :goto_132
    iput-object v4, p1, Landroid/app/TaskInfo;->mTopActivityLocusId:Landroid/content/LocusId;

    if-eqz v0, :cond_139

    .line 3452
    iget-wide v4, v0, Lcom/android/server/wm/ActivityRecord;->mRequestOpenInBrowserEducationTimestamp:J

    goto :goto_13b

    :cond_139
    const-wide/16 v4, 0x0

    :goto_13b
    iput-wide v4, p1, Landroid/app/TaskInfo;->topActivityRequestOpenInBrowserEducationTimestamp:J

    .line 3453
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v4

    if-eqz v4, :cond_14c

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v4

    goto :goto_14d

    :cond_14c
    move-object v4, v2

    :goto_14d
    if-eqz v4, :cond_155

    .line 3454
    iget-boolean v5, v4, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    if-eqz v5, :cond_155

    .line 3455
    iget v1, v4, Lcom/android/server/wm/Task;->mTaskId:I

    .line 3456
    :cond_155
    iput v1, p1, Landroid/app/TaskInfo;->parentTaskId:I

    .line 3457
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isFocused()Z

    move-result v1

    iput-boolean v1, p1, Landroid/app/TaskInfo;->isFocused:Z

    .line 3458
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->hasVisibleChildren()Z

    move-result v1

    iput-boolean v1, p1, Landroid/app/TaskInfo;->isVisible:Z

    .line 3459
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v1

    iput-boolean v1, p1, Landroid/app/TaskInfo;->isVisibleRequested:Z

    if-eqz v0, :cond_173

    .line 3460
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isNoDisplay()Z

    move-result v1

    if-eqz v1, :cond_173

    move v1, p2

    goto :goto_174

    :cond_173
    move v1, v3

    :goto_174
    iput-boolean v1, p1, Landroid/app/TaskInfo;->isTopActivityNoDisplay:Z

    .line 3461
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->shouldSleepActivities()Z

    move-result v1

    iput-boolean v1, p1, Landroid/app/TaskInfo;->isSleeping:Z

    if-eqz v0, :cond_186

    .line 3462
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->fillsParent()Z

    move-result v1

    if-nez v1, :cond_186

    move v1, p2

    goto :goto_187

    :cond_186
    move v1, v3

    :goto_187
    iput-boolean v1, p1, Landroid/app/TaskInfo;->isTopActivityTransparent:Z

    .line 3463
    new-instance v1, Lcom/android/server/wm/Task$$ExternalSyntheticLambda8;

    invoke-direct {v1}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda8;-><init>()V

    invoke-virtual {p3, v1}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Predicate;)Z

    move-result v1

    xor-int/2addr p2, v1

    iput-boolean p2, p1, Landroid/app/TaskInfo;->isActivityStackTransparent:Z

    .line 3464
    iget-object p2, p3, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    iput-object p2, p1, Landroid/app/TaskInfo;->lastNonFullscreenBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_19f

    .line 3466
    invoke-virtual {v0, v3}, Lcom/android/server/wm/ActivityRecord;->findMainWindow(Z)Lcom/android/server/wm/WindowState;

    move-result-object v2

    :cond_19f
    if-eqz v2, :cond_1ae

    .line 3468
    sget-object p2, Landroid/window/DesktopModeFlags;->ENABLE_FULLY_IMMERSIVE_IN_DESKTOP:Landroid/window/DesktopModeFlags;

    invoke-virtual {p2}, Landroid/window/DesktopModeFlags;->isTrue()Z

    move-result p2

    if-eqz p2, :cond_1ae

    .line 3469
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getRequestedVisibleTypes()I

    move-result p2

    goto :goto_1b2

    .line 3470
    :cond_1ae
    invoke-static {}, Landroid/view/WindowInsets$Type;->defaultVisible()I

    move-result p2

    :goto_1b2
    iput p2, p1, Landroid/app/TaskInfo;->requestedVisibleTypes:I

    .line 3471
    invoke-static {p0, p1, v0}, Lcom/android/server/wm/AppCompatUtils;->fillAppCompatTaskInfo(Lcom/android/server/wm/Task;Landroid/app/TaskInfo;Lcom/android/server/wm/ActivityRecord;)V

    .line 3472
    invoke-static {v0}, Lcom/android/server/wm/Task;->calculateTopActivityMainWindowFrameForTaskInfo(Lcom/android/server/wm/ActivityRecord;)Landroid/graphics/Rect;

    move-result-object p2

    iput-object p2, p1, Landroid/app/TaskInfo;->topActivityMainWindowFrame:Landroid/graphics/Rect;

    .line 3474
    iget-boolean p0, p0, Lcom/android/server/wm/Task;->mLaunchNextToBubble:Z

    iput-boolean p0, p1, Landroid/app/TaskInfo;->isAppBubble:Z

    return-void
.end method

.method public findActivityInHistory(Landroid/content/ComponentName;I)Lcom/android/server/wm/ActivityRecord;
    .registers 5

    .line 1988
    new-instance v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda37;

    invoke-direct {v0}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda37;-><init>()V

    const-class v1, Lcom/android/server/wm/ActivityRecord;

    .line 1989
    invoke-static {v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 1988
    invoke-static {v0, v1, p1, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainPredicate(Lcom/android/internal/util/function/TriPredicate;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledPredicate;

    move-result-object p1

    .line 1990
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    .line 1991
    invoke-interface {p1}, Lcom/android/internal/util/function/pooled/PooledPredicate;->recycle()V

    return-object p0
.end method

.method public finishIfVoiceTask(Landroid/os/IBinder;)V
    .registers 4

    .line 5667
    iget-object v0, p0, Lcom/android/server/wm/Task;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v0, :cond_13

    invoke-interface {v0}, Landroid/service/voice/IVoiceInteractionSession;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    if-ne v0, p1, :cond_13

    .line 5668
    new-instance p1, Lcom/android/server/wm/Task$$ExternalSyntheticLambda14;

    invoke-direct {p1, p0}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda14;-><init>(Lcom/android/server/wm/Task;)V

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    return-void

    .line 5675
    :cond_13
    new-instance v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda15;

    invoke-direct {v0}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda15;-><init>()V

    const-class v1, Lcom/android/server/wm/ActivityRecord;

    .line 5676
    invoke-static {v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v1

    .line 5675
    invoke-static {v0, v1, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainPredicate(Ljava/util/function/BiPredicate;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledPredicate;

    move-result-object p1

    .line 5678
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Predicate;)Z

    .line 5679
    invoke-interface {p1}, Lcom/android/internal/util/function/pooled/PooledPredicate;->recycle()V

    return-void
.end method

.method public final finishTopCrashedActivityLocked(Lcom/android/server/wm/WindowProcessController;Ljava/lang/String;)Lcom/android/server/wm/Task;
    .registers 11

    .line 5629
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_bb

    .line 5630
    iget-object v2, v0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eq v2, p1, :cond_d

    goto/16 :goto_bb

    .line 5633
    :cond_d
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result v2

    const-string v3, "ActivityTaskManager"

    if-eqz v2, :cond_3a

    iget-object v2, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mHomeProcess:Lcom/android/server/wm/WindowProcessController;

    if-ne v2, p1, :cond_3a

    .line 5636
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "  Not force finishing home activity "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 5637
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 5636
    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 5640
    :cond_3a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  Force finishing activity "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 5641
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5640
    invoke-static {v3, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5642
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p1

    .line 5643
    iget-object v2, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mChainTracker:Lcom/android/server/wm/ActionChain$Tracker;

    const-string v4, "finishTopCrash"

    invoke-virtual {v2, v4}, Lcom/android/server/wm/ActionChain$Tracker;->startTransit(Ljava/lang/String;)Lcom/android/server/wm/ActionChain;

    move-result-object v2

    .line 5644
    iget-object v4, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v5, 0x2

    const/16 v6, 0x10

    invoke-virtual {v4, v5, v6, p1, v2}, Lcom/android/server/wm/DisplayContent;->requestTransitionAndLegacyPrepare(IILcom/android/server/wm/WindowContainer;Lcom/android/server/wm/ActionChain;)V

    const/4 v2, 0x0

    .line 5646
    invoke-virtual {v0, p2, v2}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(Ljava/lang/String;Z)I

    .line 5650
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getActivityBelow(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_b3

    .line 5652
    sget-object v4, Lcom/android/server/wm/ActivityRecord$State;->STARTED:Lcom/android/server/wm/ActivityRecord$State;

    sget-object v5, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    sget-object v6, Lcom/android/server/wm/ActivityRecord$State;->PAUSING:Lcom/android/server/wm/ActivityRecord$State;

    sget-object v7, Lcom/android/server/wm/ActivityRecord$State;->PAUSED:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {v0, v4, v5, v6, v7}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;Lcom/android/server/wm/ActivityRecord$State;Lcom/android/server/wm/ActivityRecord$State;Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v4

    if-eqz v4, :cond_b3

    .line 5653
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result v4

    if-eqz v4, :cond_94

    iget-object v4, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mHomeProcess:Lcom/android/server/wm/WindowProcessController;

    iget-object v5, v0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eq v4, v5, :cond_b3

    .line 5655
    :cond_94
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 5656
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5655
    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5657
    invoke-virtual {v0, p2, v2}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(Ljava/lang/String;Z)I

    .line 5661
    :cond_b3
    iget-object p0, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mChainTracker:Lcom/android/server/wm/ActionChain$Tracker;

    invoke-virtual {p0}, Lcom/android/server/wm/ActionChain$Tracker;->endPartial()V

    return-object p1

    :cond_bb
    :goto_bb
    return-object v1
.end method

.method public forAllLeafTasks(Ljava/util/function/Consumer;Z)V
    .registers 8

    .line 3227
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_22

    sub-int/2addr v0, v2

    :goto_b
    if-ltz v0, :cond_3a

    .line 3231
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v3

    if-eqz v3, :cond_1f

    .line 3234
    invoke-virtual {v3, p1, p2}, Lcom/android/server/wm/Task;->forAllLeafTasks(Ljava/util/function/Consumer;Z)V

    move v2, v1

    :cond_1f
    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    :cond_22
    move v3, v1

    :goto_23
    if-ge v3, v0, :cond_3a

    .line 3239
    iget-object v4, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v4

    if-eqz v4, :cond_37

    .line 3242
    invoke-virtual {v4, p1, p2}, Lcom/android/server/wm/Task;->forAllLeafTasks(Ljava/util/function/Consumer;Z)V

    move v2, v1

    :cond_37
    add-int/lit8 v3, v3, 0x1

    goto :goto_23

    :cond_3a
    if-eqz v2, :cond_3f

    .line 3246
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_3f
    return-void
.end method

.method public forAllLeafTasks(Ljava/util/function/Predicate;)Z
    .registers 7

    .line 3271
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    move v2, v1

    :goto_9
    const/4 v3, 0x0

    if-ltz v0, :cond_25

    .line 3272
    iget-object v4, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v4

    if-eqz v4, :cond_22

    .line 3275
    invoke-virtual {v4, p1}, Lcom/android/server/wm/Task;->forAllLeafTasks(Ljava/util/function/Predicate;)Z

    move-result v2

    if-eqz v2, :cond_21

    return v1

    :cond_21
    move v2, v3

    :cond_22
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    :cond_25
    if-eqz v2, :cond_2c

    .line 3281
    invoke-interface {p1, p0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_2c
    return v3
.end method

.method public forAllLeafTasksAndLeafTaskFragments(Ljava/util/function/Consumer;Z)V
    .registers 4

    .line 3289
    new-instance v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda42;

    invoke-direct {v0, p1, p2}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda42;-><init>(Ljava/util/function/Consumer;Z)V

    invoke-virtual {p0, v0, p2}, Lcom/android/server/wm/Task;->forAllLeafTasks(Ljava/util/function/Consumer;Z)V

    return-void
.end method

.method public forAllRootTasks(Ljava/util/function/Consumer;Z)V
    .registers 3

    .line 3257
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result p2

    if-eqz p2, :cond_9

    .line 3258
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_9
    return-void
.end method

.method public forAllRootTasks(Ljava/util/function/Predicate;Z)Z
    .registers 3

    .line 3323
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result p2

    if-eqz p2, :cond_b

    invoke-interface {p1, p0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method public forAllTasks(Ljava/util/function/Consumer;Z)V
    .registers 3

    .line 3251
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->forAllTasks(Ljava/util/function/Consumer;Z)V

    .line 3252
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public forAllTasks(Ljava/util/function/Predicate;)Z
    .registers 3

    .line 3264
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->forAllTasks(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x1

    return p0

    .line 3265
    :cond_8
    invoke-interface {p1, p0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public forOtherAdjacentTasks(Ljava/util/function/Predicate;)Z
    .registers 4

    .line 2636
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTaskWithAdjacent()Lcom/android/server/wm/Task;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 2640
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getAdjacentTaskFragments()Lcom/android/server/wm/TaskFragment$AdjacentSet;

    move-result-object v0

    .line 2641
    new-instance v1, Lcom/android/server/wm/Task$$ExternalSyntheticLambda19;

    invoke-direct {v1, p1}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda19;-><init>(Ljava/util/function/Predicate;)V

    invoke-virtual {v0, v1, p0}, Lcom/android/server/wm/TaskFragment$AdjacentSet;->forAllTaskFragments(Ljava/util/function/Predicate;Lcom/android/server/wm/TaskFragment;)Z

    move-result p0

    return p0
.end method

.method public final getAdjustedChildPosition(Lcom/android/server/wm/WindowContainer;I)I
    .registers 7

    .line 2800
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->showToCurrentUser()Z

    move-result v0

    .line 2802
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v0, :cond_11

    .line 2805
    invoke-virtual {p0, v2, v1}, Lcom/android/server/wm/Task;->computeMinUserPosition(II)I

    move-result v2

    :cond_11
    if-lez v1, :cond_1f

    if-eqz v0, :cond_18

    add-int/lit8 v0, v1, -0x1

    goto :goto_20

    :cond_18
    add-int/lit8 v0, v1, -0x1

    .line 2808
    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->computeMaxUserPosition(I)I

    move-result v0

    goto :goto_20

    :cond_1f
    move v0, v2

    .line 2812
    :goto_20
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->isAlwaysOnTop()Z

    move-result v3

    if-nez v3, :cond_3a

    :goto_26
    if-le v0, v2, :cond_3a

    .line 2815
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->isAlwaysOnTop()Z

    move-result v3

    if-nez v3, :cond_37

    goto :goto_3a

    :cond_37
    add-int/lit8 v0, v0, -0x1

    goto :goto_26

    :cond_3a
    :goto_3a
    const/high16 v3, -0x80000000

    if-ne p2, v3, :cond_41

    if-nez v2, :cond_41

    return v3

    :cond_41
    const v3, 0x7fffffff

    if-ne p2, v3, :cond_4b

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_4b

    return v3

    .line 2828
    :cond_4b
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->hasChild(Lcom/android/server/wm/WindowContainer;)Z

    move-result p0

    if-nez p0, :cond_53

    add-int/lit8 v0, v0, 0x1

    .line 2833
    :cond_53
    invoke-static {p2, v2}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public getBaseIntent()Landroid/content/Intent;
    .registers 2

    .line 1432
    iget-object v0, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_5

    return-object v0

    .line 1433
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/Task;->affinityIntent:Landroid/content/Intent;

    if-eqz v0, :cond_a

    return-object v0

    .line 1435
    :cond_a
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eq v0, p0, :cond_17

    if-eqz v0, :cond_17

    .line 1436
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getBaseIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0

    :cond_17
    const/4 p0, 0x0

    return-object p0
.end method

.method public getBasePackageName()Ljava/lang/String;
    .registers 2

    .line 1455
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getBaseIntent()Landroid/content/Intent;

    move-result-object p0

    .line 1456
    const-string v0, ""

    if-nez p0, :cond_9

    return-object v0

    .line 1459
    :cond_9
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_14

    .line 1460
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_14
    return-object v0
.end method

.method public getBottomMostActivityInSamePackage()Lcom/android/server/wm/ActivityRecord;
    .registers 3

    .line 7017
    iget-object v0, p0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 7020
    :cond_6
    new-instance v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda33;

    invoke-direct {v0, p0}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda33;-><init>(Lcom/android/server/wm/Task;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    return-object p0
.end method

.method public getCreatedByOrganizerTask()Lcom/android/server/wm/Task;
    .registers 2

    .line 2585
    iget-boolean v0, p0, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    if-eqz v0, :cond_5

    return-object p0

    .line 2588
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_d

    return-object v0

    .line 2592
    :cond_d
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object p0

    if-nez p0, :cond_14

    return-object v0

    .line 2593
    :cond_14
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getCreatedByOrganizerTask()Lcom/android/server/wm/Task;

    move-result-object p0

    return-object p0
.end method

.method public getDecorSurface()Landroid/view/SurfaceControl;
    .registers 1

    .line 7048
    iget-object p0, p0, Lcom/android/server/wm/Task;->mDecorSurfaceContainer:Lcom/android/server/wm/Task$DecorSurfaceContainer;

    if-eqz p0, :cond_7

    iget-object p0, p0, Lcom/android/server/wm/Task$DecorSurfaceContainer;->mDecorSurface:Landroid/view/SurfaceControl;

    return-object p0

    :cond_7
    const/4 p0, 0x0

    return-object p0
.end method

.method public getDescendantTaskCount()I
    .registers 4

    const/4 v0, 0x0

    .line 2676
    filled-new-array {v0}, [I

    move-result-object v1

    .line 2677
    new-instance v2, Lcom/android/server/wm/Task$$ExternalSyntheticLambda21;

    invoke-direct {v2, v1}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda21;-><init>([I)V

    invoke-virtual {p0, v2, v0}, Lcom/android/server/wm/Task;->forAllLeafTasks(Ljava/util/function/Consumer;Z)V

    .line 2678
    aget p0, v1, v0

    return p0
.end method

.method public getDimmer()Lcom/android/server/wm/Dimmer;
    .registers 2

    .line 3349
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 3350
    iget-object p0, p0, Lcom/android/server/wm/TaskFragment;->mDimmer:Lcom/android/server/wm/Dimmer;

    return-object p0

    .line 3358
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->isTranslucentAndVisible()Z

    move-result v0

    if-nez v0, :cond_1f

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->isTranslucentForTransition()Z

    move-result v0

    if-eqz v0, :cond_1c

    goto :goto_1f

    .line 3362
    :cond_1c
    iget-object p0, p0, Lcom/android/server/wm/TaskFragment;->mDimmer:Lcom/android/server/wm/Dimmer;

    return-object p0

    .line 3359
    :cond_1f
    :goto_1f
    invoke-super {p0}, Lcom/android/server/wm/TaskFragment;->getDimmer()Lcom/android/server/wm/Dimmer;

    move-result-object p0

    return-object p0
.end method

.method public getDisplayCutoutInsets()Landroid/graphics/Rect;
    .registers 6

    .line 3563
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 3564
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v1, :cond_55

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    if-nez v1, :cond_12

    goto :goto_55

    .line 3567
    :cond_12
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopVisibleAppMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v1

    if-eqz v1, :cond_21

    .line 3569
    iget-boolean v2, v1, Lcom/android/server/wm/WindowState;->mHaveFrame:Z

    if-eqz v2, :cond_21

    .line 3570
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getDisplayFrame()Landroid/graphics/Rect;

    move-result-object v1

    goto :goto_34

    .line 3572
    :cond_21
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 3573
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    invoke-virtual {v2}, Landroid/view/DisplayCutout;->getSafeInsets()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->inset(Landroid/graphics/Rect;)V

    .line 3575
    :goto_34
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    .line 3576
    invoke-virtual {v0, p0, v1}, Landroid/graphics/Rect;->setIntersect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_55

    .line 3577
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/graphics/Rect;->right:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p0, v4

    invoke-virtual {v0, v1, v2, v3, p0}, Landroid/graphics/Rect;->set(IIII)V

    :cond_55
    :goto_55
    return-object v0
.end method

.method public getDisplayInfo()Landroid/view/DisplayInfo;
    .registers 1

    .line 6444
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object p0

    return-object p0
.end method

.method public getDumpActivitiesLocked(Ljava/lang/String;I)Ljava/util/ArrayList;
    .registers 5

    .line 6130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6132
    const-string v1, "all"

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 6133
    new-instance p1, Lcom/android/server/wm/Task$$ExternalSyntheticLambda38;

    invoke-direct {p1, v0}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda38;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    goto :goto_38

    .line 6134
    :cond_16
    const-string v1, "top"

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 6135
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    if-eqz p0, :cond_38

    .line 6137
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_38

    .line 6140
    :cond_28
    new-instance v1, Lcom/android/server/am/ActivityManagerService$ItemMatcher;

    invoke-direct {v1}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;-><init>()V

    .line 6141
    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->build(Ljava/lang/String;)V

    .line 6143
    new-instance p1, Lcom/android/server/wm/Task$$ExternalSyntheticLambda39;

    invoke-direct {p1, v1, v0}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda39;-><init>(Lcom/android/server/am/ActivityManagerService$ItemMatcher;Ljava/util/ArrayList;)V

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    :cond_38
    :goto_38
    const/4 p0, -0x1

    if-eq p2, p0, :cond_53

    .line 6150
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    :goto_41
    if-ltz p0, :cond_53

    .line 6151
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    iget p1, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    if-eq p1, p2, :cond_50

    .line 6152
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_50
    add-int/lit8 p0, p0, -0x1

    goto :goto_41

    :cond_53
    return-object v0
.end method

.method public getHasBeenVisible()Z
    .registers 1

    .line 4370
    iget-boolean p0, p0, Lcom/android/server/wm/Task;->mHasBeenVisible:Z

    return p0
.end method

.method public getInactiveDuration()J
    .registers 5

    .line 951
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/wm/Task;->lastActiveTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .registers 4

    .line 3340
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Task="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/Task;->mName:Ljava/lang/String;

    if-eqz v1, :cond_2c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/Task;->mName:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_2e

    :cond_2c
    const-string p0, ""

    :goto_2e
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getNextFocusableTask(Z)Lcom/android/server/wm/Task;
    .registers 4

    .line 2692
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 2697
    :cond_8
    new-instance v1, Lcom/android/server/wm/Task$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda13;-><init>(Lcom/android/server/wm/Task;Z)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowContainer;->getTask(Ljava/util/function/Predicate;)Lcom/android/server/wm/Task;

    move-result-object p0

    if-nez p0, :cond_21

    .line 2699
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-eqz v1, :cond_21

    .line 2700
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->getNextFocusableTask(Z)Lcom/android/server/wm/Task;

    move-result-object p0

    :cond_21
    return-object p0
.end method

.method public getOccludingActivityAbove(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;
    .registers 3

    .line 3080
    new-instance v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda22;

    invoke-direct {v0, p1}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda22;-><init>(Lcom/android/server/wm/ActivityRecord;)V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    if-eq p0, p1, :cond_c

    return-object p0

    :cond_c
    const/4 p0, 0x0

    return-object p0
.end method

.method public getOrganizedTask()Lcom/android/server/wm/Task;
    .registers 2

    .line 2571
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isOrganized()Z

    move-result v0

    if-eqz v0, :cond_7

    return-object p0

    .line 2574
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_f

    return-object v0

    .line 2578
    :cond_f
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object p0

    if-nez p0, :cond_16

    return-object v0

    .line 2579
    :cond_16
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getOrganizedTask()Lcom/android/server/wm/Task;

    move-result-object p0

    return-object p0
.end method

.method public getProtoFieldId()J
    .registers 3

    .line 0
    const-wide v0, 0x10b00000005L

    return-wide v0
.end method

.method public final getRawBounds()Landroid/graphics/Rect;
    .registers 1

    .line 6448
    invoke-super {p0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public final getRelativePosition()Landroid/graphics/Point;
    .registers 2

    .line 6420
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 6421
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getRelativePosition(Landroid/graphics/Point;)V

    return-object v0
.end method

.method public getRootActivity()Lcom/android/server/wm/ActivityRecord;
    .registers 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1466
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/Task;->getRootActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    return-object p0
.end method

.method public getRootActivity(Z)Lcom/android/server/wm/ActivityRecord;
    .registers 3

    const/4 v0, 0x0

    .line 1470
    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/Task;->getRootActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    return-object p0
.end method

.method public getRootActivity(ZZ)Lcom/android/server/wm/ActivityRecord;
    .registers 3

    .line 1474
    iget-object p0, p0, Lcom/android/server/wm/Task;->mFindRootHelper:Lcom/android/server/wm/Task$FindRootHelper;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/Task$FindRootHelper;->findRoot(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    return-object p0
.end method

.method public getRootTask(Ljava/util/function/Predicate;Z)Lcom/android/server/wm/Task;
    .registers 3

    .line 3336
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result p2

    if-eqz p2, :cond_d

    invoke-interface {p1, p0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    return-object p0

    :cond_d
    const/4 p0, 0x0

    return-object p0
.end method

.method public getRootTaskId()I
    .registers 1

    .line 2565
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object p0

    iget p0, p0, Lcom/android/server/wm/Task;->mTaskId:I

    return p0
.end method

.method public getSelfMovable()I
    .registers 1

    .line 6511
    iget p0, p0, Lcom/android/server/wm/Task;->mSelfMovable:I

    return p0
.end method

.method public getStartingWindowInfo(Lcom/android/server/wm/ActivityRecord;)Landroid/window/StartingWindowInfo;
    .registers 6

    .line 3600
    new-instance v0, Landroid/window/StartingWindowInfo;

    invoke-direct {v0}, Landroid/window/StartingWindowInfo;-><init>()V

    .line 3601
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v1

    iput-object v1, v0, Landroid/window/StartingWindowInfo;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 3603
    iget-object v2, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_14

    iget-object v3, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    if-eq v3, v2, :cond_14

    goto :goto_15

    :cond_14
    const/4 v3, 0x0

    .line 3604
    :goto_15
    iput-object v3, v0, Landroid/window/StartingWindowInfo;->targetActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 3605
    iget-object v2, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mKeyguardController:Lcom/android/server/wm/KeyguardController;

    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    .line 3606
    invoke-virtual {v2, v1}, Lcom/android/server/wm/KeyguardController;->isKeyguardOccluded(I)Z

    move-result v1

    iput-boolean v1, v0, Landroid/window/StartingWindowInfo;->isKeyguardOccluded:Z

    .line 3608
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    if-eqz v1, :cond_2a

    .line 3609
    iget v1, v1, Lcom/android/server/wm/StartingData;->mTypeParams:I

    goto :goto_2c

    :cond_2a
    const/16 v1, 0x110

    .line 3610
    :goto_2c
    iput v1, v0, Landroid/window/StartingWindowInfo;->startingWindowTypeParameter:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_42

    .line 3614
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopFullscreenMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object p0

    if-eqz p0, :cond_42

    .line 3616
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iput-object v1, v0, Landroid/window/StartingWindowInfo;->mainWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 3617
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getRequestedVisibleTypes()I

    move-result p0

    iput p0, v0, Landroid/window/StartingWindowInfo;->requestedVisibleTypes:I

    .line 3620
    :cond_42
    invoke-virtual {p1}, Lcom/android/server/wm/WindowToken;->getFixedRotationTransformDisplayBounds()Landroid/graphics/Rect;

    move-result-object p0

    .line 3621
    iget-object v1, v0, Landroid/window/StartingWindowInfo;->taskBounds:Landroid/graphics/Rect;

    if-eqz p0, :cond_4b

    goto :goto_55

    .line 3622
    :cond_4b
    iget-object p0, v0, Landroid/window/StartingWindowInfo;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    .line 3621
    :goto_55
    invoke-virtual {v1, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3625
    iget-object p0, v0, Landroid/window/StartingWindowInfo;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    return-object v0
.end method

.method public getTask(Ljava/util/function/Predicate;Z)Lcom/android/server/wm/Task;
    .registers 3

    .line 3328
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->getTask(Ljava/util/function/Predicate;Z)Lcom/android/server/wm/Task;

    move-result-object p2

    if-eqz p2, :cond_7

    return-object p2

    .line 3330
    :cond_7
    invoke-interface {p1, p0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    return-object p0

    :cond_e
    const/4 p0, 0x0

    return-object p0
.end method

.method public getTaskDescription()Landroid/app/ActivityManager$TaskDescription;
    .registers 1

    .line 3222
    iget-object p0, p0, Lcom/android/server/wm/Task;->mTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    return-object p0
.end method

.method public getTaskFragmentParentInfo()Landroid/window/TaskFragmentParentInfo;
    .registers 8

    .line 3634
    new-instance v0, Landroid/window/TaskFragmentParentInfo;

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    move-result v2

    iget v3, p0, Lcom/android/server/wm/Task;->mTaskId:I

    const/4 v4, 0x0

    .line 3635
    invoke-virtual {p0, v4}, Lcom/android/server/wm/TaskFragment;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v4

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->hasNonFinishingDirectActivity()Z

    move-result v5

    .line 3636
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDecorSurface()Landroid/view/SurfaceControl;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Landroid/window/TaskFragmentParentInfo;-><init>(Landroid/content/res/Configuration;IIZZLandroid/view/SurfaceControl;)V

    return-object v0
.end method

.method public getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;
    .registers 2

    .line 3590
    new-instance v0, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$RunningTaskInfo;-><init>()V

    .line 3591
    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->fillTaskInfo(Landroid/app/TaskInfo;)V

    return-object v0
.end method

.method public getTaskWithAdjacent()Lcom/android/server/wm/Task;
    .registers 2

    .line 2599
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->hasAdjacentTaskFragment()Z

    move-result v0

    if-eqz v0, :cond_7

    return-object p0

    .line 2602
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object p0

    if-eqz p0, :cond_1d

    .line 2603
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-nez v0, :cond_14

    goto :goto_1d

    .line 2606
    :cond_14
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTaskWithAdjacent()Lcom/android/server/wm/Task;

    move-result-object p0

    return-object p0

    :cond_1d
    :goto_1d
    const/4 p0, 0x0

    return-object p0
.end method

.method public getTopFullscreenMainWindow()Lcom/android/server/wm/WindowState;
    .registers 2

    .line 3177
    new-instance v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda41;

    invoke-direct {v0}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda41;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object p0

    return-object p0
.end method

.method public getTopLeafTask()Lcom/android/server/wm/Task;
    .registers 2

    .line 2663
    invoke-static {}, Lcom/android/server/wm/WindowContainer;->alwaysTruePredicate()Ljava/util/function/Predicate;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getTopLeafTask(Ljava/util/function/Predicate;)Lcom/android/server/wm/Task;

    move-result-object p0

    return-object p0
.end method

.method public getTopLeafTask(Ljava/util/function/Predicate;)Lcom/android/server/wm/Task;
    .registers 5

    .line 2667
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_27

    .line 2668
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-eqz v1, :cond_24

    .line 2669
    invoke-interface {p1, v1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    goto :goto_24

    .line 2670
    :cond_1f
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getTopLeafTask()Lcom/android/server/wm/Task;

    move-result-object p0

    return-object p0

    :cond_24
    :goto_24
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_27
    return-object p0
.end method

.method public getTopPausingActivity()Lcom/android/server/wm/ActivityRecord;
    .registers 7

    .line 1308
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v0

    if-nez v0, :cond_26

    .line 1309
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_e
    if-ltz v0, :cond_26

    .line 1310
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getTopPausingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-eqz v1, :cond_23

    return-object v1

    :cond_23
    add-int/lit8 v0, v0, -0x1

    goto :goto_e

    .line 1317
    :cond_26
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getPausingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 1319
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    move-object v3, v2

    :goto_34
    if-ltz v1, :cond_5c

    .line 1320
    iget-object v4, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowContainer;

    .line 1321
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v5

    if-eqz v5, :cond_4d

    .line 1322
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/TaskFragment;->getTopPausingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    goto :goto_56

    :cond_4d
    if-eqz v0, :cond_56

    .line 1324
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    if-ne v4, v0, :cond_56

    move-object v3, v0

    :cond_56
    :goto_56
    if-eqz v3, :cond_59

    return-object v3

    :cond_59
    add-int/lit8 v1, v1, -0x1

    goto :goto_34

    :cond_5c
    return-object v2
.end method

.method public getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;
    .registers 7

    .line 1279
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v0

    if-nez v0, :cond_26

    .line 1280
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_e
    if-ltz v0, :cond_26

    .line 1281
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-eqz v1, :cond_23

    return-object v1

    :cond_23
    add-int/lit8 v0, v0, -0x1

    goto :goto_e

    .line 1288
    :cond_26
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 1290
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    move-object v3, v2

    :goto_34
    if-ltz v1, :cond_5c

    .line 1291
    iget-object v4, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowContainer;

    .line 1292
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v5

    if-eqz v5, :cond_4d

    .line 1293
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/TaskFragment;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    goto :goto_56

    :cond_4d
    if-eqz v0, :cond_56

    .line 1295
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    if-ne v4, v0, :cond_56

    move-object v3, v0

    :cond_56
    :goto_56
    if-eqz v3, :cond_59

    return-object v3

    :cond_59
    add-int/lit8 v1, v1, -0x1

    goto :goto_34

    :cond_5c
    return-object v2
.end method

.method public getTopVisibleActivity()Lcom/android/server/wm/ActivityRecord;
    .registers 2

    .line 3186
    new-instance v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda5;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    return-object p0
.end method

.method public getTopVisibleAppMainWindow()Lcom/android/server/wm/WindowState;
    .registers 1

    .line 3138
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopVisibleActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 3139
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object p0

    return-object p0

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method

.method public getTopWaitSplashScreenActivity()Lcom/android/server/wm/ActivityRecord;
    .registers 2

    .line 3190
    new-instance v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    return-object p0
.end method

.method public getUserId()I
    .registers 2

    .line 1441
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v0

    if-nez v0, :cond_9

    iget p0, p0, Lcom/android/server/wm/Task;->mCurrentUser:I

    return p0

    .line 1442
    :cond_9
    sget-object v0, Landroid/window/DesktopExperienceFlags;->ENABLE_APPLY_DESK_ACTIVATION_ON_USER_SWITCH:Landroid/window/DesktopExperienceFlags;

    invoke-virtual {v0}, Landroid/window/DesktopExperienceFlags;->isTrue()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1443
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->showForAllUsers()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1444
    iget p0, p0, Lcom/android/server/wm/Task;->mCurrentUser:I

    return p0

    .line 1446
    :cond_1a
    iget p0, p0, Lcom/android/server/wm/Task;->mUserId:I

    return p0
.end method

.method public goToSleepIfPossible(Z)Z
    .registers 5

    const/4 v0, 0x0

    .line 5079
    filled-new-array {v0}, [I

    move-result-object v1

    .line 5080
    new-instance v2, Lcom/android/server/wm/Task$$ExternalSyntheticLambda24;

    invoke-direct {v2, p1, v1}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda24;-><init>(Z[I)V

    const/4 p1, 0x1

    invoke-virtual {p0, v2, p1}, Lcom/android/server/wm/Task;->forAllLeafTasksAndLeafTaskFragments(Ljava/util/function/Consumer;Z)V

    .line 5085
    aget p0, v1, v0

    if-nez p0, :cond_13

    return p1

    :cond_13
    return v0
.end method

.method public handlesOrientationChangeFromDescendant(I)Z
    .registers 5

    .line 2959
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->handlesOrientationChangeFromDescendant(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 2967
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_10

    return v2

    .line 2974
    :cond_10
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->canSpecifyOrientation()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskDisplayArea;->canSpecifyOrientation(I)Z

    move-result p0

    if-eqz p0, :cond_21

    return v2

    :cond_21
    return v1
.end method

.method public hasAdjacentTask()Z
    .registers 1

    .line 2611
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTaskWithAdjacent()Lcom/android/server/wm/Task;

    move-result-object p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public final hasVisibleChildren()Z
    .registers 3

    .line 4510
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->isAttached()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1b

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->isForceHidden()Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_1b

    .line 4514
    :cond_e
    new-instance v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda12;

    invoke-direct {v0}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda12;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    if-eqz p0, :cond_1b

    const/4 p0, 0x1

    return p0

    :cond_1b
    :goto_1b
    return v1
.end method

.method public final inFrontOfStandardRootTask()Z
    .registers 6

    .line 5698
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    const/4 v2, 0x1

    .line 5702
    new-array v3, v2, [Z

    .line 5703
    new-instance v4, Lcom/android/server/wm/Task$$ExternalSyntheticLambda29;

    invoke-direct {v4, p0, v3}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda29;-><init>(Lcom/android/server/wm/Task;[Z)V

    invoke-virtual {v0, v4}, Lcom/android/server/wm/WindowContainer;->getRootTask(Ljava/util/function/Predicate;)Lcom/android/server/wm/Task;

    move-result-object p0

    if-eqz p0, :cond_1d

    .line 5715
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeStandard()Z

    move-result p0

    if-eqz p0, :cond_1d

    return v2

    :cond_1d
    return v1
.end method

.method public isAlwaysOnTop()Z
    .registers 2

    .line 4609
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->isForceHidden()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-super {p0}, Lcom/android/server/wm/ConfigurationContainer;->isAlwaysOnTop()Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public isAlwaysOnTopWhenVisible()Z
    .registers 1

    .line 4619
    invoke-super {p0}, Lcom/android/server/wm/ConfigurationContainer;->isAlwaysOnTop()Z

    move-result p0

    return p0
.end method

.method public isAnimatingByRecents()Z
    .registers 2

    .line 3134
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/TransitionController;->isTransientHide(Lcom/android/server/wm/Task;)Z

    move-result p0

    return p0
.end method

.method public isClearingToReuseTask()Z
    .registers 1

    .line 1980
    iget-boolean p0, p0, Lcom/android/server/wm/Task;->mReuseTask:Z

    return p0
.end method

.method public isCompatible(II)Z
    .registers 3

    if-nez p2, :cond_3

    const/4 p2, 0x1

    .line 2939
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/ConfigurationContainer;->isCompatible(II)Z

    move-result p0

    return p0
.end method

.method public isDecorSurfaceBoosted()Z
    .registers 1

    .line 3751
    iget-object p0, p0, Lcom/android/server/wm/Task;->mDecorSurfaceContainer:Lcom/android/server/wm/Task$DecorSurfaceContainer;

    if-eqz p0, :cond_c

    invoke-static {p0}, Lcom/android/server/wm/Task$DecorSurfaceContainer;->-$$Nest$fgetmIsBoosted(Lcom/android/server/wm/Task$DecorSurfaceContainer;)Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public isDisablePip()Z
    .registers 4

    .line 4668
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_32

    const/4 v2, 0x2

    .line 4669
    invoke-virtual {v0, v2}, Lcom/android/server/wm/DisplayContent;->isWindowingModeSupported(I)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_32

    .line 4672
    :cond_f
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mDisablePip:Z

    if-eqz v0, :cond_14

    return v1

    .line 4676
    :cond_14
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object p0

    :goto_18
    if-eqz p0, :cond_30

    .line 4677
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 4678
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isDisablePip()Z

    move-result v0

    if-eqz v0, :cond_2b

    return v1

    .line 4681
    :cond_2b
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object p0

    goto :goto_18

    :cond_30
    const/4 p0, 0x0

    return p0

    :cond_32
    :goto_32
    return v1
.end method

.method public isDragResizing()Z
    .registers 1

    .line 3051
    iget-boolean p0, p0, Lcom/android/server/wm/Task;->mDragResizing:Z

    return p0
.end method

.method public isFocused()Z
    .registers 3

    .line 4499
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v1, 0x0

    if-eqz v0, :cond_1c

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    if-nez v0, :cond_a

    goto :goto_1c

    .line 4502
    :cond_a
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eq v0, p0, :cond_1a

    if-eqz v0, :cond_19

    .line 4503
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-ne v0, p0, :cond_19

    goto :goto_1a

    :cond_19
    return v1

    :cond_1a
    :goto_1a
    const/4 p0, 0x1

    return p0

    :cond_1c
    :goto_1c
    return v1
.end method

.method public isFocusedRootTaskOnDisplay()Z
    .registers 2

    .line 5098
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-ne p0, v0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public isForceExcludedFromRecents()Z
    .registers 3

    .line 4634
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mForceExcludedFromRecents:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    return v1

    .line 4638
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object p0

    :goto_a
    if-eqz p0, :cond_22

    .line 4639
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 4640
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isForceExcludedFromRecents()Z

    move-result v0

    if-eqz v0, :cond_1d

    return v1

    .line 4643
    :cond_1d
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object p0

    goto :goto_a

    :cond_22
    const/4 p0, 0x0

    return p0
.end method

.method public isForceHiddenForPinnedTask()Z
    .registers 2

    .line 4691
    iget p0, p0, Lcom/android/server/wm/TaskFragment;->mForceHiddenFlags:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_7

    return v0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method public isInTask(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;
    .registers 3

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 3768
    :cond_4
    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowContainer;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    move-result p0

    if-eqz p0, :cond_b

    return-object p1

    :cond_b
    return-object v0
.end method

.method public isLaunchAdjacentDisabled()Z
    .registers 2

    :goto_0
    if-eqz p0, :cond_11

    .line 6481
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mLaunchAdjacentDisabled:Z

    if-eqz v0, :cond_8

    const/4 p0, 0x1

    return p0

    .line 6484
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object p0

    goto :goto_0

    :cond_11
    const/4 p0, 0x0

    return p0
.end method

.method public isLeafTask()Z
    .registers 4

    .line 2653
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_8
    if-ltz v0, :cond_1d

    .line 2654
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v2

    if-eqz v2, :cond_1a

    const/4 p0, 0x0

    return p0

    :cond_1a
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_1d
    return v1
.end method

.method public final isOnHomeDisplay()Z
    .registers 1

    .line 4974
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    move-result p0

    if-nez p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public isOrganized()Z
    .registers 1

    .line 4310
    iget-object p0, p0, Lcom/android/server/wm/Task;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public isOverrideBoundsAllowed()Z
    .registers 2

    .line 1244
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object p0

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    if-eqz p0, :cond_21

    .line 1246
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mDisallowOverrideBoundsForChildren:Z

    if-eqz v0, :cond_18

    const/4 p0, 0x0

    return p0

    .line 1249
    :cond_18
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object p0

    goto :goto_10

    :cond_21
    const/4 p0, 0x1

    return p0
.end method

.method public isResizeable()Z
    .registers 2

    const/4 v0, 0x1

    .line 2996
    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->isResizeable(Z)Z

    move-result p0

    return p0
.end method

.method public isResizeable(Z)Z
    .registers 5

    .line 3000
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mForceResizableActivities:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_e

    .line 3001
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getActivityType()I

    move-result v0

    if-ne v0, v1, :cond_e

    return v1

    .line 3003
    :cond_e
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mForceNonResizeOverride:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_14

    return v2

    .line 3004
    :cond_14
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mForceResizeOverride:Z

    if-nez v0, :cond_28

    iget v0, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    invoke-static {v0}, Landroid/content/pm/ActivityInfo;->isResizeableMode(I)Z

    move-result v0

    if-nez v0, :cond_28

    iget-boolean p0, p0, Lcom/android/server/wm/Task;->mSupportsPictureInPicture:Z

    if-eqz p0, :cond_27

    if-eqz p1, :cond_27

    goto :goto_28

    :cond_27
    return v2

    :cond_28
    :goto_28
    return v1
.end method

.method public isRootTask()Z
    .registers 2

    .line 2649
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-ne v0, p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public isSameIntentFilter(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 4

    .line 1114
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1117
    iget-object v1, p0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2b

    iget-object p1, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    if-eqz p1, :cond_2b

    .line 1118
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1119
    invoke-virtual {v0}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_2b

    .line 1122
    iget-object p1, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1125
    :cond_2b
    iget-object p0, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p0}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result p0

    return p0
.end method

.method public isSameRequiredDisplayCategory(Landroid/content/pm/ActivityInfo;)Z
    .registers 4

    .line 6493
    iget-object v0, p0, Lcom/android/server/wm/Task;->mRequiredDisplayCategory:Ljava/lang/String;

    if-eqz v0, :cond_c

    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->requiredDisplayCategory:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    :cond_c
    iget-object p0, p0, Lcom/android/server/wm/Task;->mRequiredDisplayCategory:Ljava/lang/String;

    if-nez p0, :cond_16

    iget-object p0, p1, Landroid/content/pm/ActivityInfo;->requiredDisplayCategory:Ljava/lang/String;

    if-nez p0, :cond_16

    :cond_14
    const/4 p0, 0x1

    return p0

    :cond_16
    const/4 p0, 0x0

    return p0
.end method

.method public isSecure()Z
    .registers 2

    .line 7064
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getDisableSecureWindows()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p0, 0x0

    return p0

    .line 7067
    :cond_a
    invoke-static {}, Landroid/app/admin/DevicePolicyCache;->getInstance()Landroid/app/admin/DevicePolicyCache;

    move-result-object v0

    iget p0, p0, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {v0, p0}, Landroid/app/admin/DevicePolicyCache;->isScreenCaptureAllowed(I)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isSuitableForDimming()Z
    .registers 2

    .line 3369
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->isTranslucentAndVisible()Z

    move-result p0

    if-nez p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    return p0

    :cond_f
    :goto_f
    const/4 p0, 0x1

    return p0
.end method

.method public isTaskId(I)Z
    .registers 2

    .line 3755
    iget p0, p0, Lcom/android/server/wm/Task;->mTaskId:I

    if-ne p0, p1, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public isTopRootTaskInDisplayArea()Z
    .registers 2

    .line 5089
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 5090
    invoke-virtual {v0, p0}, Lcom/android/server/wm/TaskDisplayArea;->isTopRootTask(Lcom/android/server/wm/Task;)Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public isUidPresent(I)Z
    .registers 4

    .line 1488
    new-instance v0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda48;

    invoke-direct {v0}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda48;-><init>()V

    const-class v1, Lcom/android/server/wm/ActivityRecord;

    .line 1489
    invoke-static {v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 1488
    invoke-static {v0, v1, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainPredicate(Ljava/util/function/BiPredicate;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledPredicate;

    move-result-object p1

    .line 1490
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    if-eqz p0, :cond_1b

    const/4 p0, 0x1

    goto :goto_1c

    :cond_1b
    const/4 p0, 0x0

    .line 1491
    :goto_1c
    invoke-interface {p1}, Lcom/android/internal/util/function/pooled/PooledPredicate;->recycle()V

    return p0
.end method

.method public final synthetic lambda$finishIfVoiceTask$24(Lcom/android/server/wm/ActivityRecord;)V
    .registers 4

    .line 5669
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v0, :cond_5

    return-void

    .line 5670
    :cond_5
    const-string v0, "finish-voice"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(Ljava/lang/String;Z)I

    .line 5671
    iget-object p0, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->updateOomAdj()V

    return-void
.end method

.method public final synthetic lambda$getBottomMostActivityInSamePackage$33(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 2

    .line 7020
    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    .line 7021
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    .line 7020
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final synthetic lambda$getNextFocusableTask$9(ZLjava/lang/Object;)Z
    .registers 3

    if-nez p1, :cond_4

    if-eq p2, p0, :cond_e

    .line 2697
    :cond_4
    check-cast p2, Lcom/android/server/wm/Task;

    .line 2698
    invoke-virtual {p2}, Lcom/android/server/wm/TaskFragment;->isFocusableAndVisible()Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic lambda$inFrontOfStandardRootTask$25([ZLcom/android/server/wm/Task;)Z
    .registers 6

    const/4 v0, 0x0

    .line 5706
    aget-boolean v1, p1, v0

    const/4 v2, 0x1

    if-eqz v1, :cond_7

    return v2

    :cond_7
    if-ne p2, p0, :cond_b

    .line 5711
    aput-boolean v2, p1, v0

    :cond_b
    return v0
.end method

.method public final synthetic lambda$moveTaskToBack$30(Lcom/android/server/wm/Task;Lcom/android/server/wm/Transition;Z)V
    .registers 6

    .line 6002
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_2d

    if-eqz p3, :cond_f

    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->canMoveTaskToBack(Lcom/android/server/wm/Task;)Z

    move-result p3

    if-nez p3, :cond_f

    goto :goto_2d

    .line 6008
    :cond_f
    iget-object p3, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p3, p3, Lcom/android/server/wm/ActivityTaskManagerService;->mChainTracker:Lcom/android/server/wm/ActionChain$Tracker;

    const-string v0, "taskToBack"

    invoke-virtual {p3, v0, p2}, Lcom/android/server/wm/ActionChain$Tracker;->start(Ljava/lang/String;Lcom/android/server/wm/Transition;)Lcom/android/server/wm/ActionChain;

    move-result-object p3

    .line 6010
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p1, v1, v1}, Lcom/android/server/wm/TransitionController;->requestStartTransition(Lcom/android/server/wm/Transition;Lcom/android/server/wm/Task;Landroid/window/RemoteTransition;Landroid/window/TransitionRequestInfo$DisplayChange;)Lcom/android/server/wm/Transition;

    .line 6012
    invoke-virtual {p3, p1}, Lcom/android/server/wm/ActionChain;->collect(Lcom/android/server/wm/WindowContainer;)V

    .line 6013
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/Task;->moveTaskToBackInner(Lcom/android/server/wm/Task;Lcom/android/server/wm/Transition;)V

    .line 6014
    iget-object p0, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mChainTracker:Lcom/android/server/wm/ActionChain$Tracker;

    invoke-virtual {p0}, Lcom/android/server/wm/ActionChain$Tracker;->endPartial()V

    return-void

    .line 6003
    :cond_2d
    :goto_2d
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed to move task to back after saying we could: "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ActivityTaskManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6005
    invoke-virtual {p2}, Lcom/android/server/wm/Transition;->abort()V

    return-void
.end method

.method public final synthetic lambda$removeActivities$3(ZLjava/lang/String;Lcom/android/server/wm/ActivityRecord;)V
    .registers 5

    .line 1703
    iget-boolean v0, p3, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v0, :cond_13

    if-eqz p1, :cond_d

    invoke-virtual {p3}, Lcom/android/server/wm/ActivityRecord;->isTaskOverlay()Z

    move-result p1

    if-eqz p1, :cond_d

    goto :goto_13

    .line 1707
    :cond_d
    invoke-virtual {p3}, Lcom/android/server/wm/ActivityRecord;->takeFromHistory()V

    .line 1708
    invoke-virtual {p0, p3, p2}, Lcom/android/server/wm/Task;->removeChild(Lcom/android/server/wm/WindowContainer;Ljava/lang/String;)V

    :cond_13
    :goto_13
    return-void
.end method

.method public final synthetic lambda$setDisallowOverrideBoundsForChildren$32([ILcom/android/server/wm/Task;)V
    .registers 5

    if-ne p2, p0, :cond_3

    return-void

    :cond_3
    const/4 p0, 0x0

    .line 6533
    aget v0, p1, p0

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    move-result p2

    or-int/2addr p2, v0

    aput p2, p1, p0

    return-void
.end method

.method public lockTaskAuthToString()Ljava/lang/String;
    .registers 3

    .line 1872
    iget v0, p0, Lcom/android/server/wm/Task;->mLockTaskAuth:I

    if-eqz v0, :cond_30

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2d

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2a

    const/4 v1, 0x3

    if-eq v0, v1, :cond_27

    const/4 v1, 0x4

    if-eq v0, v1, :cond_24

    .line 1878
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/wm/Task;->mLockTaskAuth:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1877
    :cond_24
    const-string p0, "LOCK_TASK_AUTH_LAUNCHABLE_PRIV"

    return-object p0

    .line 1876
    :cond_27
    const-string p0, "LOCK_TASK_AUTH_ALLOWLISTED"

    return-object p0

    .line 1875
    :cond_2a
    const-string p0, "LOCK_TASK_AUTH_LAUNCHABLE"

    return-object p0

    .line 1874
    :cond_2d
    const-string p0, "LOCK_TASK_AUTH_PINNABLE"

    return-object p0

    .line 1873
    :cond_30
    const-string p0, "LOCK_TASK_AUTH_DONT_LOCK"

    return-object p0
.end method

.method public makeAnimationLeash()Landroid/view/SurfaceControl$Builder;
    .registers 3

    .line 3122
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->makeAnimationLeash()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    const/4 v1, 0x3

    iget p0, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v0, v1, p0}, Landroid/view/SurfaceControl$Builder;->setMetadata(II)Landroid/view/SurfaceControl$Builder;

    move-result-object p0

    return-object p0
.end method

.method public maybeApplyLastRecentsAnimationTransaction()V
    .registers 6

    .line 6396
    iget-object v0, p0, Lcom/android/server/wm/Task;->mLastRecentsAnimationTransaction:Landroid/window/PictureInPictureSurfaceTransaction;

    if-eqz v0, :cond_34

    .line 6397
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_MIN_enabled:[Z

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    const/4 v1, 0x0

    if-eqz v0, :cond_17

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS_MIN:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v2, 0x17c6f44d7fe23490L    # 3.930583272373758E-194

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v4, v1}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 6399
    :cond_17
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    .line 6400
    iget-object v2, p0, Lcom/android/server/wm/Task;->mLastRecentsAnimationOverlay:Landroid/view/SurfaceControl;

    if-eqz v2, :cond_24

    .line 6401
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v2, v3}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 6403
    :cond_24
    iget-object v2, p0, Lcom/android/server/wm/Task;->mLastRecentsAnimationTransaction:Landroid/window/PictureInPictureSurfaceTransaction;

    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-static {v2, v3, v0}, Landroid/window/PictureInPictureSurfaceTransaction;->apply(Landroid/window/PictureInPictureSurfaceTransaction;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V

    .line 6407
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 6408
    iput-object v1, p0, Lcom/android/server/wm/Task;->mLastRecentsAnimationTransaction:Landroid/window/PictureInPictureSurfaceTransaction;

    .line 6409
    iput-object v1, p0, Lcom/android/server/wm/Task;->mLastRecentsAnimationOverlay:Landroid/view/SurfaceControl;

    :cond_34
    return-void
.end method

.method public migrateToNewSurfaceControl(Landroid/view/SurfaceControl$Transaction;)V
    .registers 4

    .line 2414
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->migrateToNewSurfaceControl(Landroid/view/SurfaceControl$Transaction;)V

    .line 2415
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mLastSurfaceSize:Landroid/graphics/Point;

    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 2416
    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 2417
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->updateSurfaceSize(Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method public final moveActivityToFront(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 8

    .line 1509
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_ADD_REMOVE_enabled:[Z

    const/4 v1, 0x2

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_23

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_ADD_REMOVE:Lcom/android/internal/protolog/WmProtoLogGroups;

    const/4 v3, 0x0

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-wide v4, 0x59276a74a9683a61L    # 3.02327783715042E121

    invoke-static {v2, v4, v5, v3, v0}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 1511
    :cond_23
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    if-eq v0, p0, :cond_4e

    .line 1514
    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->isEmbedded()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_38

    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->getNonFinishingActivityCount()I

    move-result v1

    if-ne v1, v2, :cond_38

    .line 1515
    iput-boolean v2, v0, Lcom/android/server/wm/TaskFragment;->mClearedForReorderActivityToFront:Z

    :cond_38
    const v1, 0x7fffffff

    .line 1517
    invoke-virtual {p1, p0, v1}, Lcom/android/server/wm/WindowContainer;->reparent(Lcom/android/server/wm/WindowContainer;I)V

    .line 1519
    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->isEmbedded()Z

    move-result v0

    if-eqz v0, :cond_52

    .line 1520
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    iget-object v0, v0, Lcom/android/server/wm/WindowOrganizerController;->mTaskFragmentOrganizerController:Lcom/android/server/wm/TaskFragmentOrganizerController;

    .line 1521
    invoke-virtual {v0, p1}, Lcom/android/server/wm/TaskFragmentOrganizerController;->onActivityReparentedToTask(Lcom/android/server/wm/ActivityRecord;)V

    goto :goto_52

    .line 1524
    :cond_4e
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskFragment;->moveChildToFront(Lcom/android/server/wm/WindowContainer;)Z

    move-result v2

    .line 1526
    :cond_52
    :goto_52
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->updateEffectiveIntent()V

    return v2
.end method

.method public moveOrCreateDecorSurfaceFor(Lcom/android/server/wm/TaskFragment;Z)V
    .registers 5

    .line 7029
    iget-object v0, p0, Lcom/android/server/wm/Task;->mDecorSurfaceContainer:Lcom/android/server/wm/Task$DecorSurfaceContainer;

    if-eqz v0, :cond_7

    .line 7030
    iput-object p1, v0, Lcom/android/server/wm/Task$DecorSurfaceContainer;->mOwnerTaskFragment:Lcom/android/server/wm/TaskFragment;

    return-void

    .line 7032
    :cond_7
    new-instance v0, Lcom/android/server/wm/Task$DecorSurfaceContainer;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/android/server/wm/Task$DecorSurfaceContainer;-><init>(Lcom/android/server/wm/Task;Lcom/android/server/wm/TaskFragment;ZLcom/android/server/wm/Task-IA;)V

    iput-object v0, p0, Lcom/android/server/wm/Task;->mDecorSurfaceContainer:Lcom/android/server/wm/Task$DecorSurfaceContainer;

    .line 7033
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->assignChildLayers()V

    .line 7034
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->sendTaskFragmentParentInfoChangedIfNeeded()V

    return-void
.end method

.method public moveTaskFragmentsToBottomIfNeeded(Lcom/android/server/wm/ActivityRecord;[I)V
    .registers 8

    .line 1814
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_9

    goto :goto_37

    .line 1822
    :cond_9
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_12
    if-le v0, p1, :cond_35

    .line 1823
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v2

    if-eqz v2, :cond_32

    .line 1824
    invoke-virtual {v2}, Lcom/android/server/wm/TaskFragment;->isMoveToBottomIfClearWhenLaunch()Z

    move-result v3

    if-eqz v3, :cond_32

    if-nez v1, :cond_2f

    .line 1826
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1828
    :cond_2f
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_32
    add-int/lit8 v0, v0, -0x1

    goto :goto_12

    :cond_35
    if-nez v1, :cond_38

    :goto_37
    return-void

    .line 1836
    :cond_38
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x0

    move v2, v0

    :goto_3e
    if-ge v2, p1, :cond_53

    .line 1838
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/TaskFragment;

    .line 1842
    iget-object v4, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v4, v3}, Lcom/android/server/wm/TransitionController;->collect(Lcom/android/server/wm/WindowContainer;)V

    const/high16 v4, -0x80000000

    .line 1844
    invoke-virtual {p0, v4, v3, v0}, Lcom/android/server/wm/Task;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3e

    .line 1849
    :cond_53
    aget p0, p2, v0

    add-int/2addr p0, p1

    aput p0, p2, v0

    return-void
.end method

.method public moveTaskToBack(Lcom/android/server/wm/Task;)Z
    .registers 8

    .line 5976
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "moveTaskToBack: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5978
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->canMoveTaskToBack(Lcom/android/server/wm/Task;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1e

    return v1

    .line 5983
    :cond_1e
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_62

    .line 5985
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->getCollectingTransition()Lcom/android/server/wm/Transition;

    move-result-object v0

    if-eqz v0, :cond_4b

    .line 5986
    iget v3, v0, Lcom/android/server/wm/Transition;->mType:I

    if-ne v3, v2, :cond_4b

    .line 5987
    iget-object v1, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mChainTracker:Lcom/android/server/wm/ActionChain$Tracker;

    const-string v3, "taskToBack"

    invoke-virtual {v1, v3}, Lcom/android/server/wm/ActionChain$Tracker;->startDefault(Ljava/lang/String;)Lcom/android/server/wm/ActionChain;

    move-result-object v1

    .line 5990
    invoke-virtual {v1, p1}, Lcom/android/server/wm/ActionChain;->collect(Lcom/android/server/wm/WindowContainer;)V

    .line 5991
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/Task;->moveTaskToBackInner(Lcom/android/server/wm/Task;Lcom/android/server/wm/Transition;)V

    .line 5992
    iget-object p0, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mChainTracker:Lcom/android/server/wm/ActionChain$Tracker;

    invoke-virtual {p0}, Lcom/android/server/wm/ActionChain$Tracker;->endPartial()V

    return v2

    .line 5995
    :cond_4b
    new-instance v0, Lcom/android/server/wm/Transition;

    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    iget-object v4, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    const/4 v5, 0x4

    invoke-direct {v0, v5, v1, v3, v4}, Lcom/android/server/wm/Transition;-><init>(IILcom/android/server/wm/TransitionController;Lcom/android/server/wm/BLASTSyncEngine;)V

    .line 5998
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    new-instance v3, Lcom/android/server/wm/Task$$ExternalSyntheticLambda36;

    invoke-direct {v3, p0, p1, v0}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda36;-><init>(Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;Lcom/android/server/wm/Transition;)V

    invoke-virtual {v1, v0, v3}, Lcom/android/server/wm/TransitionController;->startCollectOrQueue(Lcom/android/server/wm/Transition;Lcom/android/server/wm/TransitionController$OnStartCollect;)Z

    goto :goto_66

    :cond_62
    const/4 v0, 0x0

    .line 6017
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/Task;->moveTaskToBackInner(Lcom/android/server/wm/Task;Lcom/android/server/wm/Transition;)V

    :goto_66
    return v2
.end method

.method public final moveTaskToBackInner(Lcom/android/server/wm/Task;Lcom/android/server/wm/Transition;)V
    .registers 7

    .line 6023
    new-instance v0, Lcom/android/server/wm/Transition$ReadyCondition;

    const-string v1, "moved-to-back"

    const/4 v2, 0x1

    invoke-direct {v0, v1, p1, v2}, Lcom/android/server/wm/Transition$ReadyCondition;-><init>(Ljava/lang/String;Ljava/lang/Object;Z)V

    if-eqz p2, :cond_14

    .line 6029
    iget-object v1, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    .line 6030
    iget-object v1, p2, Lcom/android/server/wm/Transition;->mReadyTracker:Lcom/android/server/wm/Transition$ReadyTracker;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/Transition$ReadyTracker;->add(Lcom/android/server/wm/Transition$ReadyCondition;)V

    .line 6033
    :cond_14
    :try_start_14
    const-string v1, "moveTaskToBackInner"

    invoke-virtual {p0, v1, p1}, Lcom/android/server/wm/Task;->moveToBack(Ljava/lang/String;Lcom/android/server/wm/Task;)V

    .line 6035
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result p1

    if-eqz p1, :cond_39

    .line 6036
    iget-object p1, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {p1, p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->removeRootTask(Lcom/android/server/wm/Task;)V
    :try_end_24
    .catchall {:try_start_14 .. :try_end_24} :catchall_37

    .line 6043
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {p1}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    move-result p1

    if-eqz p1, :cond_31

    .line 6044
    iget-object p0, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    :cond_31
    if-eqz p2, :cond_36

    .line 6047
    invoke-virtual {v0}, Lcom/android/server/wm/Transition$ReadyCondition;->meet()V

    :cond_36
    return-void

    :catchall_37
    move-exception p1

    goto :goto_80

    .line 6040
    :cond_39
    :try_start_39
    iget-object p1, p0, Lcom/android/server/wm/TaskFragment;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v1, v2}, Lcom/android/server/wm/RootWindowContainer;->ensureVisibilityAndConfig(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/DisplayContent;Z)V
    :try_end_42
    .catchall {:try_start_39 .. :try_end_42} :catchall_37

    .line 6043
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {p1}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    move-result p1

    if-eqz p1, :cond_4f

    .line 6044
    iget-object p1, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    :cond_4f
    if-eqz p2, :cond_54

    .line 6047
    invoke-virtual {v0}, Lcom/android/server/wm/Transition$ReadyCondition;->meet()V

    .line 6050
    :cond_54
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/TaskDisplayArea;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-nez p1, :cond_5f

    goto :goto_63

    .line 6051
    :cond_5f
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v3

    :goto_63
    if-eqz v3, :cond_7a

    if-eq v3, p0, :cond_7a

    .line 6052
    sget-object p2, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {p1, p2}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result p2

    if-eqz p2, :cond_7a

    .line 6055
    iget-object p2, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->executeAppTransition()V

    .line 6056
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent;->setFocusedApp(Lcom/android/server/wm/ActivityRecord;)Z

    return-void

    .line 6058
    :cond_7a
    iget-object p0, p0, Lcom/android/server/wm/TaskFragment;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities()Z

    return-void

    .line 6043
    :goto_80
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v1}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    move-result v1

    if-eqz v1, :cond_8d

    .line 6044
    iget-object p0, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    :cond_8d
    if-eqz p2, :cond_92

    .line 6047
    invoke-virtual {v0}, Lcom/android/server/wm/Transition$ReadyCondition;->meet()V

    .line 6049
    :cond_92
    throw p1
.end method

.method public final moveTaskToFront(Lcom/android/server/wm/Task;ZLandroid/app/ActivityOptions;Lcom/android/server/am/AppTimeTracker;Ljava/lang/String;)V
    .registers 13

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    .line 5864
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/Task;->moveTaskToFront(Lcom/android/server/wm/Task;ZLandroid/app/ActivityOptions;Lcom/android/server/am/AppTimeTracker;ZLjava/lang/String;)V

    return-void
.end method

.method public final moveTaskToFront(Lcom/android/server/wm/Task;ZLandroid/app/ActivityOptions;Lcom/android/server/am/AppTimeTracker;ZLjava/lang/String;)V
    .registers 10

    .line 5872
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->getTopRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 5871
    invoke-static {v0}, Lcom/android/server/wm/Task;->findEnterPipOnTaskSwitchCandidate(Lcom/android/server/wm/Task;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    const/4 v1, 0x3

    if-eq p1, p0, :cond_1f

    .line 5874
    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowContainer;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    move-result v2

    if-nez v2, :cond_1f

    if-eqz p2, :cond_1b

    .line 5877
    invoke-static {p3}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    return-void

    .line 5879
    :cond_1b
    invoke-virtual {p0, v1, p3}, Lcom/android/server/wm/Task;->updateTransitLocked(ILandroid/app/ActivityOptions;)V

    return-void

    :cond_1f
    if-eqz p4, :cond_29

    .line 5886
    new-instance v2, Lcom/android/server/wm/Task$$ExternalSyntheticLambda28;

    invoke-direct {v2, p4}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda28;-><init>(Lcom/android/server/am/AppTimeTracker;)V

    invoke-virtual {p1, v2}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 5890
    :cond_29
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p4

    if-eqz p4, :cond_5f

    .line 5891
    invoke-virtual {p4}, Lcom/android/server/wm/ActivityRecord;->showToCurrentUser()Z

    move-result v2

    if-nez v2, :cond_36

    goto :goto_5f

    .line 5901
    :cond_36
    invoke-virtual {p4, p6}, Lcom/android/server/wm/ActivityRecord;->moveFocusableActivityToTop(Ljava/lang/String;)Z

    if-eqz p2, :cond_50

    .line 5905
    iget-object p2, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object p2, p2, Lcom/android/server/wm/ActivityTaskSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5906
    iget-object p2, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {p2, p4}, Lcom/android/server/wm/TransitionController;->collect(Lcom/android/server/wm/WindowContainer;)V

    .line 5907
    iget-object p2, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {p2, p4}, Lcom/android/server/wm/TransitionController;->setNoAnimation(Lcom/android/server/wm/WindowContainer;)V

    .line 5908
    invoke-static {p3}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    goto :goto_53

    .line 5910
    :cond_50
    invoke-virtual {p0, v1, p3}, Lcom/android/server/wm/Task;->updateTransitLocked(ILandroid/app/ActivityOptions;)V

    :goto_53
    const/4 p2, 0x0

    .line 5916
    invoke-static {v0, p1, p2, p3}, Lcom/android/server/wm/Task;->enableEnterPipOnTaskSwitch(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)V

    if-nez p5, :cond_5e

    .line 5919
    iget-object p0, p0, Lcom/android/server/wm/TaskFragment;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities()Z

    :cond_5e
    return-void

    .line 5892
    :cond_5f
    :goto_5f
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->positionChildAtTop(Lcom/android/server/wm/Task;)V

    if-eqz p4, :cond_6f

    .line 5894
    iget-object p0, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {p4}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/RecentTasks;->add(Lcom/android/server/wm/Task;)V

    .line 5896
    :cond_6f
    invoke-static {p3}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    return-void
.end method

.method public moveToBack(Ljava/lang/String;Lcom/android/server/wm/Task;)V
    .registers 7

    .line 5016
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->isAttached()Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_3e

    .line 5019
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    .line 5020
    iget-boolean v1, p0, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    if-nez v1, :cond_36

    .line 5023
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    if-eqz v1, :cond_1a

    .line 5024
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v1

    goto :goto_1b

    :cond_1a
    const/4 v1, 0x0

    :goto_1b
    if-eqz v1, :cond_21

    .line 5026
    invoke-virtual {v1, p1, p0}, Lcom/android/server/wm/Task;->moveToBack(Ljava/lang/String;Lcom/android/server/wm/Task;)V

    goto :goto_2e

    .line 5028
    :cond_21
    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->getFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    const/high16 v2, -0x80000000

    const/4 v3, 0x0

    .line 5029
    invoke-virtual {v0, v2, p0, v3}, Lcom/android/server/wm/TaskDisplayArea;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 5030
    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/TaskDisplayArea;->updateLastFocusedRootTask(Lcom/android/server/wm/Task;Ljava/lang/String;)V

    :goto_2e
    if-eqz p2, :cond_3e

    if-eq p2, p0, :cond_3e

    .line 5033
    invoke-virtual {p0, p2}, Lcom/android/server/wm/Task;->positionChildAtBottom(Lcom/android/server/wm/Task;)V

    return-void

    :cond_36
    if-eqz p2, :cond_3e

    if-ne p2, p0, :cond_3b

    goto :goto_3e

    .line 5044
    :cond_3b
    invoke-virtual {v0, p2}, Lcom/android/server/wm/TaskDisplayArea;->positionTaskBehindHome(Lcom/android/server/wm/Task;)V

    :cond_3e
    :goto_3e
    return-void
.end method

.method public moveToFront(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    .line 4978
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/Task;->moveToFront(Ljava/lang/String;Lcom/android/server/wm/Task;)V

    return-void
.end method

.method public moveToFront(Ljava/lang/String;Lcom/android/server/wm/Task;)V
    .registers 7

    .line 4987
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->isAttached()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 4990
    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/TransitionController;->recordTaskOrder(Lcom/android/server/wm/WindowContainer;)V

    .line 4992
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    .line 4994
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result v1

    if-nez v1, :cond_30

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->returnsToHomeRootTask()Z

    move-result v1

    if-eqz v1, :cond_30

    .line 4997
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " returnToHome"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskDisplayArea;->moveHomeRootTaskToFront(Ljava/lang/String;)V

    .line 5000
    :cond_30
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v1

    if-eqz v1, :cond_3b

    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->getFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    goto :goto_3c

    :cond_3b
    const/4 v1, 0x0

    :goto_3c
    if-nez p2, :cond_3f

    goto :goto_40

    :cond_3f
    move-object p0, p2

    .line 5004
    :goto_40
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object p2

    const v2, 0x7fffffff

    const/4 v3, 0x1

    invoke-virtual {p2, v2, p0, v3}, Lcom/android/server/wm/WindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 5005
    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/TaskDisplayArea;->updateLastFocusedRootTask(Lcom/android/server/wm/Task;Ljava/lang/String;)V

    return-void
.end method

.method public navigateUpTo(Lcom/android/server/wm/ActivityRecord;Landroid/content/Intent;Ljava/lang/String;Lcom/android/server/uri/NeededUriGrants;ILandroid/content/Intent;Lcom/android/server/uri/NeededUriGrants;)Z
    .registers 20

    .line 5756
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 5761
    :cond_8
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 5762
    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowContainer;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    move-result v2

    if-nez v2, :cond_13

    return v1

    .line 5766
    :cond_13
    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowContainer;->getActivityBelow(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    .line 5768
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    .line 5769
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getBottomMostActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    const/4 v5, 0x1

    if-eq v4, p1, :cond_32

    if-eqz v3, :cond_32

    .line 5770
    new-instance v4, Lcom/android/server/wm/Task$$ExternalSyntheticLambda30;

    invoke-direct {v4, v3}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda30;-><init>(Landroid/content/ComponentName;)V

    invoke-virtual {v0, v4, p1, v1, v5}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;Lcom/android/server/wm/WindowContainer;ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    if-eqz v3, :cond_32

    move-object v2, v3

    move v3, v5

    goto :goto_33

    :cond_32
    move v3, v1

    .line 5782
    :goto_33
    iget-object v4, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    const/4 v6, -0x1

    if-eqz v4, :cond_59

    .line 5784
    iget-object v7, p1, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {p0, v7, v6}, Lcom/android/server/wm/Task;->topRunningActivity(Landroid/os/IBinder;I)Lcom/android/server/wm/ActivityRecord;

    move-result-object v7

    if-eqz v7, :cond_59

    .line 5789
    :try_start_42
    iget-object v7, v7, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-interface {v4, v7}, Landroid/app/IActivityController;->activityResuming(Ljava/lang/String;)Z

    move-result v4
    :try_end_48
    .catch Landroid/os/RemoteException; {:try_start_42 .. :try_end_48} :catch_49

    goto :goto_56

    .line 5791
    :catch_49
    iget-object v4, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    const/4 v7, 0x0

    iput-object v7, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    .line 5792
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/android/server/Watchdog;->setActivityController(Landroid/app/IActivityController;)V

    move v4, v5

    :goto_56
    if-nez v4, :cond_59

    return v1

    .line 5800
    :cond_59
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 5803
    filled-new-array/range {p5 .. p5}, [I

    move-result-object v4

    .line 5804
    new-array v9, v5, [Landroid/content/Intent;

    .line 5805
    aput-object p6, v9, v1

    .line 5807
    filled-new-array/range {p7 .. p7}, [Lcom/android/server/uri/NeededUriGrants;

    move-result-object v10

    .line 5809
    new-instance v11, Lcom/android/server/wm/Task$$ExternalSyntheticLambda31;

    invoke-direct {v11, v2, v4, v9, v10}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda31;-><init>(Lcom/android/server/wm/ActivityRecord;[I[Landroid/content/Intent;[Lcom/android/server/uri/NeededUriGrants;)V

    invoke-virtual {v0, v11, p1, v5, v5}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Predicate;Lcom/android/server/wm/WindowContainer;ZZ)Z

    .line 5819
    aget v0, v4, v1

    .line 5820
    aget-object v1, v9, v1

    if-eqz v2, :cond_e4

    if-eqz v3, :cond_e4

    .line 5823
    iget-object v3, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 5825
    iget-object p0, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object p0

    const-string v4, "navigateUpTo"

    .line 5826
    invoke-virtual {p0, p2, v4}, Lcom/android/server/wm/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object p0

    .line 5827
    invoke-virtual {p0, p3}, Lcom/android/server/wm/ActivityStarter;->setResolvedType(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object p0

    iget v4, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 5828
    invoke-virtual {p0, v4}, Lcom/android/server/wm/ActivityStarter;->setUserId(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object p0

    iget-object v4, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 5829
    invoke-virtual {v4}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/wm/ActivityStarter;->setCaller(Landroid/app/IApplicationThread;)Lcom/android/server/wm/ActivityStarter;

    move-result-object p0

    iget-object v4, v2, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    .line 5830
    invoke-virtual {p0, v4}, Lcom/android/server/wm/ActivityStarter;->setResultTo(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityStarter;

    move-result-object p0

    move-object/from16 v4, p4

    .line 5831
    invoke-virtual {p0, v4}, Lcom/android/server/wm/ActivityStarter;->setIntentGrants(Lcom/android/server/uri/NeededUriGrants;)Lcom/android/server/wm/ActivityStarter;

    move-result-object p0

    .line 5832
    invoke-virtual {p0, v6}, Lcom/android/server/wm/ActivityStarter;->setCallingPid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object p0

    .line 5833
    invoke-virtual {p0, v3}, Lcom/android/server/wm/ActivityStarter;->setCallingUid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object p0

    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 5834
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityStarter;->setCallingPackage(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object p0

    iget-object p1, v2, Lcom/android/server/wm/ActivityRecord;->launchedFromFeatureId:Ljava/lang/String;

    .line 5835
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityStarter;->setCallingFeatureId(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object p0

    .line 5836
    invoke-virtual {p0, v6}, Lcom/android/server/wm/ActivityStarter;->setRealCallingPid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object p0

    .line 5837
    invoke-virtual {p0, v3}, Lcom/android/server/wm/ActivityStarter;->setRealCallingUid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object p0

    .line 5838
    invoke-virtual {p0, v5}, Lcom/android/server/wm/ActivityStarter;->setComponentSpecified(Z)Lcom/android/server/wm/ActivityStarter;

    move-result-object p0

    .line 5839
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityStarter;->execute()I

    move-result p0

    .line 5840
    invoke-static {p0}, Landroid/app/ActivityManager;->isStartResultSuccessful(I)Z

    move-result v3

    if-nez p0, :cond_e4

    .line 5842
    const-string p0, "navigate-top"

    const/4 p1, 0x1

    move-object/from16 p4, p0

    move/from16 p5, p1

    move-object/from16 p3, p7

    move p1, v0

    move-object p2, v1

    move-object p0, v2

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(ILandroid/content/Intent;Lcom/android/server/uri/NeededUriGrants;Ljava/lang/String;Z)I

    .line 5846
    :cond_e4
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3
.end method

.method public notifyActivityDrawnLocked(Lcom/android/server/wm/ActivityRecord;)V
    .registers 4

    if-eqz p1, :cond_12

    .line 5200
    iget-object v0, p0, Lcom/android/server/wm/Task;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    .line 5201
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lcom/android/server/wm/Task;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    .line 5202
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 5205
    :cond_12
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTranslucentActivityWaiting:Lcom/android/server/wm/ActivityRecord;

    const/4 v1, 0x0

    .line 5206
    iput-object v1, p0, Lcom/android/server/wm/Task;->mTranslucentActivityWaiting:Lcom/android/server/wm/ActivityRecord;

    .line 5207
    iget-object v1, p0, Lcom/android/server/wm/Task;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 5208
    iget-object p0, p0, Lcom/android/server/wm/Task;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    if-eqz v0, :cond_3d

    const/4 p0, 0x0

    .line 5211
    invoke-virtual {v0, p0}, Lcom/android/server/wm/ActivityRecord;->setMainWindowOpaque(Z)V

    .line 5212
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 5214
    :try_start_2f
    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v1

    iget-object v0, v0, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    if-eqz p1, :cond_3a

    const/4 p0, 0x1

    :cond_3a
    invoke-interface {v1, v0, p0}, Landroid/app/IApplicationThread;->scheduleTranslucentConversionComplete(Landroid/os/IBinder;Z)V
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_3d} :catch_3d

    :catch_3d
    :cond_3d
    return-void
.end method

.method public onAppFocusChanged(Z)V
    .registers 4

    const/4 v0, 0x0

    .line 4522
    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->dispatchTaskInfoChangedIfNeeded(Z)V

    .line 4523
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 4524
    invoke-virtual {v1, v0}, Lcom/android/server/wm/Task;->dispatchTaskInfoChangedIfNeeded(Z)V

    .line 4526
    :cond_11
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v0

    iget p0, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v0, p0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskFocusChanged(IZ)V

    return-void
.end method

.method public onChildPositionChanged(Lcom/android/server/wm/WindowContainer;)V
    .registers 4

    .line 6327
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_36

    .line 6328
    invoke-virtual {p0, v1}, Lcom/android/server/wm/Task;->dispatchTaskInfoChangedIfNeeded(Z)V

    .line 6329
    sget-object p1, Landroid/window/DesktopExperienceFlags;->ENABLE_MULTIPLE_DESKTOPS_BACKEND:Landroid/window/DesktopExperienceFlags;

    invoke-virtual {p1}, Landroid/window/DesktopExperienceFlags;->isTrue()Z

    move-result p1

    if-eqz p1, :cond_35

    iget-boolean p1, p0, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    if-eqz p1, :cond_35

    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    .line 6330
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_35

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p1

    if-eqz p1, :cond_35

    .line 6331
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/wm/TaskDisplayArea;->mPreferredTopFocusableRootTask:Lcom/android/server/wm/Task;

    if-ne p1, p0, :cond_35

    .line 6333
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/TaskDisplayArea;->clearPreferredTopFocusableRootTask()V

    :cond_35
    return-void

    .line 6337
    :cond_36
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_41

    .line 6339
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->invalidateTaskLayers()V

    .line 6342
    :cond_41
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-eqz p1, :cond_4a

    .line 6344
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->sendTaskFragmentParentInfoChangedIfNeeded()V

    .line 6348
    :cond_4a
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->updateTaskDescription()V

    .line 6349
    invoke-virtual {p0, v1}, Lcom/android/server/wm/Task;->dispatchTaskInfoChangedIfNeeded(Z)V

    return-void
.end method

.method public onChildVisibleRequestedChanged(Lcom/android/server/wm/WindowContainer;)Z
    .registers 2

    .line 3641
    invoke-super {p0, p1}, Lcom/android/server/wm/TaskFragment;->onChildVisibleRequestedChanged(Lcom/android/server/wm/WindowContainer;)Z

    move-result p1

    if-nez p1, :cond_8

    const/4 p0, 0x0

    return p0

    .line 3642
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->sendTaskFragmentParentInfoChangedIfNeeded()V

    const/4 p0, 0x1

    return p0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 7

    .line 2184
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v0, :cond_d

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mPinnedTaskController:Lcom/android/server/wm/PinnedTaskController;

    .line 2185
    invoke-virtual {v0, p0}, Lcom/android/server/wm/PinnedTaskController;->isFreezingTaskConfig(Lcom/android/server/wm/Task;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_72

    .line 2196
    :cond_d
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v0

    if-nez v0, :cond_17

    .line 2197
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->onConfigurationChangedInner(Landroid/content/res/Configuration;)V

    return-void

    .line 2201
    :cond_17
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v0

    .line 2202
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isAlwaysOnTop()Z

    move-result v1

    .line 2203
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v2

    .line 2204
    iget-object v3, p0, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    .line 2207
    invoke-virtual {p0, v3}, Lcom/android/server/wm/ConfigurationContainer;->getBounds(Landroid/graphics/Rect;)V

    .line 2209
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->onConfigurationChangedInner(Landroid/content/res/Configuration;)V

    .line 2211
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p1

    if-nez p1, :cond_36

    goto :goto_72

    .line 2216
    :cond_36
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v4

    if-eq v0, v4, :cond_3f

    .line 2217
    invoke-virtual {p1, p0}, Lcom/android/server/wm/TaskDisplayArea;->onRootTaskWindowingModeChanged(Lcom/android/server/wm/Task;)V

    .line 2220
    :cond_3f
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isOrganized()Z

    move-result v0

    if-nez v0, :cond_65

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_65

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v0, :cond_65

    .line 2223
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v0

    if-eq v2, v0, :cond_65

    .line 2226
    iget-object v4, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v4, v2, v0, v3}, Lcom/android/server/wm/DisplayContent;->rotateBounds(IILandroid/graphics/Rect;)V

    .line 2227
    invoke-virtual {p0, v3}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    .line 2231
    :cond_65
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isAlwaysOnTop()Z

    move-result v0

    if-eq v1, v0, :cond_72

    const v0, 0x7fffffff

    const/4 v1, 0x0

    .line 2235
    invoke-virtual {p1, v0, p0, v1}, Lcom/android/server/wm/TaskDisplayArea;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    :cond_72
    :goto_72
    return-void
.end method

.method public final onConfigurationChangedInner(Landroid/content/res/Configuration;)V
    .registers 7

    .line 2096
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/Task;->persistTaskBounds(Landroid/app/WindowConfiguration;)Z

    move-result v0

    .line 2098
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 2097
    invoke-static {v1}, Lcom/android/server/wm/Task;->persistTaskBounds(Landroid/app/WindowConfiguration;)Z

    move-result v1

    .line 2099
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideWindowingMode()I

    move-result v2

    if-nez v2, :cond_1e

    .line 2100
    iget-object v1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-static {v1}, Lcom/android/server/wm/Task;->persistTaskBounds(Landroid/app/WindowConfiguration;)Z

    move-result v1

    .line 2105
    :cond_1e
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_3f

    .line 2106
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3d

    goto :goto_3f

    :cond_3d
    move v2, v4

    goto :goto_40

    :cond_3f
    :goto_3f
    move v2, v3

    :goto_40
    and-int/2addr v1, v2

    if-nez v0, :cond_5a

    if-eqz v1, :cond_5a

    .line 2110
    iget-object v0, p0, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_5a

    .line 2111
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5a

    .line 2113
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    iget-object v1, p0, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    .line 2114
    invoke-virtual {v0, v1}, Landroid/app/WindowConfiguration;->setBounds(Landroid/graphics/Rect;)V

    .line 2117
    :cond_5a
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v0

    .line 2118
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mTmpPrevBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2119
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    move-result v1

    .line 2120
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result v2

    .line 2121
    invoke-super {p0, p1}, Lcom/android/server/wm/TaskFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2122
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-nez p1, :cond_78

    goto/16 :goto_101

    .line 2130
    :cond_78
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->updateSurfaceSize(Landroid/view/SurfaceControl$Transaction;)V

    .line 2132
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result p1

    if-eq v2, p1, :cond_86

    goto :goto_87

    :cond_86
    move v3, v4

    :goto_87
    if-eqz v3, :cond_93

    .line 2134
    iget-object p1, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    invoke-virtual {p1, p0, v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->scheduleUpdatePictureInPictureModeIfNeeded(Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;)V

    goto :goto_9e

    .line 2135
    :cond_93
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    move-result p1

    if-eq v1, p1, :cond_9e

    .line 2136
    iget-object p1, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {p1, p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->scheduleUpdateMultiWindowMode(Lcom/android/server/wm/Task;)V

    .line 2139
    :cond_9e
    :goto_9e
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mTmpPrevBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/Task;->shouldStartChangeTransition(ILandroid/graphics/Rect;)Z

    move-result p1

    if-eqz p1, :cond_ab

    .line 2140
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {p1, p0}, Lcom/android/server/wm/TransitionController;->collectVisibleChange(Lcom/android/server/wm/WindowContainer;)V

    .line 2145
    :cond_ab
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/wm/Task;->persistTaskBounds(Landroid/app/WindowConfiguration;)Z

    move-result p1

    if-eqz p1, :cond_c2

    .line 2146
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object p1

    .line 2147
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c2

    .line 2148
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->setLastNonFullscreenBounds(Landroid/graphics/Rect;)V

    :cond_c2
    if-eqz v3, :cond_df

    if-eqz v2, :cond_df

    .line 2152
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 2153
    invoke-virtual {p1}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    move-result p1

    if-nez p1, :cond_df

    .line 2158
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-eqz p1, :cond_df

    .line 2159
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/DisplayContent;->isFixedRotationLaunchingApp(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p1

    if-eqz p1, :cond_df

    .line 2160
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->resetSurfaceControlTransforms()V

    .line 2164
    :cond_df
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->saveLaunchingStateIfNeeded()V

    .line 2165
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->updateTaskOrganizerState()Z

    move-result p1

    if-eqz p1, :cond_fc

    .line 2167
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->updateSurfacePosition(Landroid/view/SurfaceControl$Transaction;)V

    .line 2168
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isOrganized()Z

    move-result v0

    if-nez v0, :cond_fc

    .line 2172
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->updateSurfaceSize(Landroid/view/SurfaceControl$Transaction;)V

    :cond_fc
    if-nez p1, :cond_101

    .line 2178
    invoke-virtual {p0, v4}, Lcom/android/server/wm/Task;->dispatchTaskInfoChangedIfNeeded(Z)V

    :cond_101
    :goto_101
    return-void
.end method

.method public onDescendantActivityAdded(ZILcom/android/server/wm/ActivityRecord;)V
    .registers 5

    .line 1565
    const-string v0, "onDescendantActivityAdded"

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->warnForNonLeafTask(Ljava/lang/String;)V

    if-nez p1, :cond_4a

    .line 1570
    invoke-virtual {p3}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget-object p1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->getActivityType()I

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_22

    if-eqz p2, :cond_17

    goto :goto_18

    :cond_17
    move p2, v0

    .line 1581
    :goto_18
    invoke-virtual {p3}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget-object p1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p1, p2}, Landroid/app/WindowConfiguration;->setActivityType(I)V

    move p1, p2

    .line 1584
    :cond_22
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->setActivityType(I)V

    .line 1585
    invoke-virtual {p3}, Lcom/android/server/wm/ActivityRecord;->isPersistable()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/wm/Task;->isPersistable:Z

    .line 1586
    iget p1, p3, Lcom/android/server/wm/ActivityRecord;->launchedFromUid:I

    iput p1, p0, Lcom/android/server/wm/Task;->mCallingUid:I

    .line 1587
    iget-object p1, p3, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/wm/Task;->mCallingPackage:Ljava/lang/String;

    .line 1588
    iget-object p1, p3, Lcom/android/server/wm/ActivityRecord;->launchedFromFeatureId:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/wm/Task;->mCallingFeatureId:Ljava/lang/String;

    .line 1590
    iget-object p1, p3, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget p1, p1, Landroid/content/pm/ActivityInfo;->maxRecents:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1591
    invoke-static {}, Landroid/app/ActivityTaskManager;->getMaxAppRecentsLimitStatic()I

    move-result p2

    .line 1590
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/android/server/wm/Task;->maxRecents:I

    goto :goto_4d

    .line 1594
    :cond_4a
    invoke-virtual {p3, p2}, Lcom/android/server/wm/ConfigurationContainer;->setActivityType(I)V

    .line 1597
    :goto_4d
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->updateEffectiveIntent()V

    return-void
.end method

.method public onDescendantOrientationChanged(Lcom/android/server/wm/WindowContainer;)Z
    .registers 3

    .line 2944
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->onDescendantOrientationChanged(Lcom/android/server/wm/WindowContainer;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_8

    return v0

    .line 2950
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object p1

    if-eqz p1, :cond_1a

    .line 2951
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return v0

    :cond_1a
    const/4 p0, 0x0

    return p0
.end method

.method public onDisplayChanged(Lcom/android/server/wm/DisplayContent;)V
    .registers 4

    .line 2979
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    move-result v0

    .line 2980
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->onDisplayChanged(Lcom/android/server/wm/DisplayContent;)V

    .line 2981
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v1

    if-eqz v1, :cond_24

    if-eqz p1, :cond_14

    .line 2982
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result p1

    goto :goto_15

    :cond_14
    const/4 p1, -0x1

    :goto_15
    if-eq v0, p1, :cond_24

    .line 2985
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/Task;->mTaskId:I

    .line 2986
    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskDisplayChanged(II)V

    .line 2989
    :cond_24
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result p1

    if-eqz p1, :cond_2d

    .line 2990
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->updateSurfaceBounds()V

    .line 2992
    :cond_2d
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->sendTaskFragmentParentInfoChangedIfNeeded()V

    return-void
.end method

.method public onMovedByResize()V
    .registers 1

    .line 1262
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->onMovedByResize()V

    .line 1263
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->onTaskBoundsChangedForFreeform()V

    return-void
.end method

.method public onParentChanged(Lcom/android/server/wm/ConfigurationContainer;Lcom/android/server/wm/ConfigurationContainer;)V
    .registers 7

    .line 1155
    check-cast p1, Lcom/android/server/wm/WindowContainer;

    .line 1156
    check-cast p2, Lcom/android/server/wm/WindowContainer;

    const/4 v0, 0x0

    if-eqz p1, :cond_c

    .line 1157
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    goto :goto_d

    :cond_c
    move-object v1, v0

    :goto_d
    if-eqz p2, :cond_14

    .line 1158
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    goto :goto_15

    :cond_14
    move-object v2, v0

    :goto_15
    if-eqz v2, :cond_1a

    .line 1160
    iget v2, v2, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    goto :goto_1b

    :cond_1a
    const/4 v2, -0x1

    :goto_1b
    iput v2, p0, Lcom/android/server/wm/Task;->mPrevDisplayId:I

    if-eqz p2, :cond_24

    if-nez p1, :cond_24

    .line 1163
    invoke-virtual {p0, p2}, Lcom/android/server/wm/Task;->cleanUpResourcesForDestroy(Lcom/android/server/wm/WindowContainer;)V

    :cond_24
    if-eqz v1, :cond_37

    .line 1176
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 1177
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v1

    .line 1176
    invoke-virtual {v2, v1}, Landroid/app/WindowConfiguration;->setRotation(I)V

    .line 1180
    :cond_37
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->onParentChanged(Lcom/android/server/wm/ConfigurationContainer;Lcom/android/server/wm/ConfigurationContainer;)V

    .line 1185
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->updateTaskOrganizerState()Z

    if-eqz p2, :cond_85

    .line 1188
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-eqz v1, :cond_50

    .line 1190
    new-instance v2, Lcom/android/server/wm/Task$$ExternalSyntheticLambda9;

    invoke-direct {v2, v1}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/wm/Task;)V

    invoke-virtual {p0, v2}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 1193
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->updateTaskDescription()V

    :cond_50
    if-eqz p1, :cond_58

    .line 1196
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result v1

    if-nez v1, :cond_85

    .line 1197
    :cond_58
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_64

    .line 1200
    iget-object v1, p0, Lcom/android/server/wm/TaskFragment;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p0, v0}, Lcom/android/server/wm/RootWindowContainer;->notifyActivityPipModeChanged(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;)V

    goto :goto_85

    .line 1201
    :cond_64
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_85

    .line 1204
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pinned task is removed t="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityTaskManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1205
    iget-object v1, p0, Lcom/android/server/wm/TaskFragment;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p0, v0}, Lcom/android/server/wm/RootWindowContainer;->notifyActivityPipModeChanged(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;)V

    :cond_85
    :goto_85
    if-eqz p1, :cond_a8

    .line 1213
    iget-boolean v1, p0, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    if-nez v1, :cond_9a

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->canBeOrganized()Z

    move-result v1

    if-nez v1, :cond_9a

    .line 1214
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 1219
    :cond_9a
    iget-object v1, p0, Lcom/android/server/wm/Task;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v1, :cond_a5

    .line 1221
    :try_start_9e
    iget-object v2, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    iget v3, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-interface {v1, v2, v3}, Landroid/service/voice/IVoiceInteractionSession;->taskStarted(Landroid/content/Intent;I)V
    :try_end_a5
    .catch Landroid/os/RemoteException; {:try_start_9e .. :try_end_a5} :catch_a5

    .line 1227
    :catch_a5
    :cond_a5
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->updateTaskDescription()V

    :cond_a8
    if-nez p2, :cond_af

    if-eqz p1, :cond_af

    .line 1232
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->setInitialBoundsIfNeeded()V

    .line 1236
    :cond_af
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isOverrideBoundsAllowed()Z

    move-result p1

    if-nez p1, :cond_b8

    .line 1237
    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    .line 1240
    :cond_b8
    iget-object p0, p0, Lcom/android/server/wm/TaskFragment;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->updateUIDsPresentOnDisplay()V

    return-void
.end method

.method public onPictureInPictureParamsChanged()V
    .registers 2

    .line 4530
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result v0

    if-nez v0, :cond_10

    sget-object v0, Landroid/window/DesktopExperienceFlags;->ENABLE_DESKTOP_WINDOWING_PIP:Landroid/window/DesktopExperienceFlags;

    .line 4531
    invoke-virtual {v0}, Landroid/window/DesktopExperienceFlags;->isTrue()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_10

    :cond_f
    return-void

    :cond_10
    :goto_10
    const/4 v0, 0x1

    .line 4532
    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->dispatchTaskInfoChangedIfNeeded(Z)V

    return-void
.end method

.method public onResize()V
    .registers 1

    .line 1256
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->onResize()V

    .line 1257
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->onTaskBoundsChangedForFreeform()V

    return-void
.end method

.method public onShouldDockBigOverlaysChanged()V
    .registers 2

    const/4 v0, 0x1

    .line 4537
    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->dispatchTaskInfoChangedIfNeeded(Z)V

    return-void
.end method

.method public onSizeCompatActivityChanged()V
    .registers 2

    const/4 v0, 0x1

    .line 4543
    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->dispatchTaskInfoChangedIfNeeded(Z)V

    return-void
.end method

.method public onSnapshotChanged(Landroid/window/TaskSnapshot;)V
    .registers 3

    .line 3203
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mSnapshotController:Lcom/android/server/wm/SnapshotController;

    iget p0, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v0, p0, p1}, Lcom/android/server/wm/SnapshotController;->notifySnapshotChanged(ILandroid/window/TaskSnapshot;)V

    return-void
.end method

.method public onSnapshotInvalidated()V
    .registers 2

    .line 3213
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mSnapshotController:Lcom/android/server/wm/SnapshotController;

    iget p0, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v0, p0}, Lcom/android/server/wm/SnapshotController;->notifySnapshotInvalidate(I)V

    return-void
.end method

.method public final onTaskBoundsChangedForFreeform()V
    .registers 3

    .line 1267
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_18

    .line 1271
    :cond_d
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->notifyTaskPersisterLocked(Lcom/android/server/wm/Task;Z)V

    .line 1273
    iget-object p0, p0, Lcom/android/server/wm/TaskFragment;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->invalidateTaskLayersAndUpdateOomAdjIfNeeded()V

    :cond_18
    :goto_18
    return-void
.end method

.method public onlyHasTaskOverlayActivities(Z)Z
    .registers 8

    .line 1663
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    move v3, v2

    :goto_8
    if-ltz v0, :cond_28

    .line 1664
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    if-nez v4, :cond_15

    return v2

    :cond_15
    if-nez p1, :cond_1c

    .line 1669
    iget-boolean v5, v4, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v5, :cond_1c

    goto :goto_25

    .line 1672
    :cond_1c
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->isTaskOverlay()Z

    move-result v4

    if-nez v4, :cond_23

    return v2

    :cond_23
    add-int/lit8 v3, v3, 0x1

    :goto_25
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_28
    if-lez v3, :cond_2b

    return v1

    :cond_2b
    return v2
.end method

.method public pauseActivityIfNeeded(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)Z
    .registers 8

    .line 1335
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    const/4 v0, 0x1

    .line 1339
    new-array v2, v0, [I

    aput v1, v2, v1

    .line 1342
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->isLeafTaskFragment()Z

    move-result v3

    if-nez v3, :cond_36

    .line 1343
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    .line 1344
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    if-eqz v4, :cond_36

    if-eqz v3, :cond_2b

    .line 1346
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v3

    if-ne v3, p0, :cond_2b

    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskFragment;->canBeResumed(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v3

    if-nez v3, :cond_36

    .line 1349
    :cond_2b
    invoke-virtual {p0, v1, p1, p2}, Lcom/android/server/wm/TaskFragment;->startPausing(ZLcom/android/server/wm/ActivityRecord;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 1350
    aget v3, v2, v1

    add-int/2addr v3, v0

    aput v3, v2, v1

    .line 1355
    :cond_36
    new-instance v3, Lcom/android/server/wm/Task$$ExternalSyntheticLambda23;

    invoke-direct {v3, p1, p2, v2}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda23;-><init>(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;[I)V

    invoke-virtual {p0, v3, v0}, Lcom/android/server/wm/TaskFragment;->forAllLeafTaskFragments(Ljava/util/function/Consumer;Z)V

    .line 1364
    aget p0, v2, v1

    if-lez p0, :cond_43

    return v0

    :cond_43
    return v1
.end method

.method public performClearTaskForReuse(Z)V
    .registers 4

    const/4 v0, 0x1

    .line 1743
    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mReuseTask:Z

    .line 1744
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->beginDeferResume()V

    const/4 v0, 0x0

    .line 1746
    :try_start_9
    const-string v1, "clear-task-all"

    invoke-virtual {p0, v1, p1}, Lcom/android/server/wm/Task;->removeActivities(Ljava/lang/String;Z)V
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_16

    .line 1748
    iget-object p1, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityTaskSupervisor;->endDeferResume()V

    .line 1749
    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mReuseTask:Z

    return-void

    :catchall_16
    move-exception p1

    .line 1748
    iget-object v1, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->endDeferResume()V

    .line 1749
    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mReuseTask:Z

    .line 1750
    throw p1
.end method

.method public performClearTop(Lcom/android/server/wm/ActivityRecord;I[I)Lcom/android/server/wm/ActivityRecord;
    .registers 5

    const/4 v0, 0x1

    .line 1756
    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mReuseTask:Z

    .line 1757
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->beginDeferResume()V

    const/4 v0, 0x0

    .line 1760
    :try_start_9
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/Task;->clearTopActivities(Lcom/android/server/wm/ActivityRecord;I[I)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1
    :try_end_d
    .catchall {:try_start_9 .. :try_end_d} :catchall_15

    .line 1762
    iget-object p2, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityTaskSupervisor;->endDeferResume()V

    .line 1763
    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mReuseTask:Z

    return-object p1

    :catchall_15
    move-exception p1

    .line 1762
    iget-object p2, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityTaskSupervisor;->endDeferResume()V

    .line 1763
    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mReuseTask:Z

    .line 1764
    throw p1
.end method

.method public positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V
    .registers 7

    .line 2838
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    if-lt p1, v0, :cond_d

    move v0, v1

    goto :goto_e

    :cond_d
    move v0, v2

    .line 2839
    :goto_e
    invoke-virtual {p0, p2, p1}, Lcom/android/server/wm/Task;->getAdjustedChildPosition(Lcom/android/server/wm/WindowContainer;I)I

    move-result p1

    .line 2840
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/wm/WindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 2846
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object p0

    if-eqz p0, :cond_24

    const/high16 p2, -0x80000000

    if-ne p1, p2, :cond_20

    goto :goto_21

    :cond_20
    move v1, v2

    .line 2848
    :goto_21
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/wm/Task;->updateTaskMovement(ZZI)V

    :cond_24
    return-void
.end method

.method public positionChildAtBottom(Lcom/android/server/wm/Task;)V
    .registers 5

    .line 6310
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    .line 6311
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    const/4 v2, 0x1

    .line 6310
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/TaskDisplayArea;->getNextFocusableRootTask(Lcom/android/server/wm/Task;Z)Lcom/android/server/wm/Task;

    move-result-object v0

    if-nez v0, :cond_10

    goto :goto_11

    :cond_10
    const/4 v2, 0x0

    .line 6312
    :goto_11
    invoke-virtual {p0, p1, v2}, Lcom/android/server/wm/Task;->positionChildAtBottom(Lcom/android/server/wm/Task;Z)V

    return-void
.end method

.method public positionChildAtBottom(Lcom/android/server/wm/Task;Z)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    :cond_3
    const/high16 v0, -0x80000000

    .line 6322
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/wm/Task;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    return-void
.end method

.method public positionChildAtTop(Lcom/android/server/wm/Task;)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    :cond_3
    if-ne p1, p0, :cond_b

    .line 6298
    const-string p1, "positionChildAtTop"

    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->moveToFront(Ljava/lang/String;)V

    return-void

    :cond_b
    const v0, 0x7fffffff

    const/4 v1, 0x1

    .line 6302
    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/wm/Task;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    return-void
.end method

.method public removeActivities(Ljava/lang/String;Z)V
    .registers 5

    .line 1699
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->clearPinnedTaskIfNeed()V

    .line 1701
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-nez v0, :cond_12

    .line 1702
    new-instance v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda25;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda25;-><init>(Lcom/android/server/wm/Task;ZLjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    return-void

    .line 1711
    :cond_12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1712
    new-instance v1, Lcom/android/server/wm/Task$$ExternalSyntheticLambda26;

    invoke-direct {v1, p2, v0}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda26;-><init>(ZLjava/util/ArrayList;)V

    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 1724
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    :goto_25
    if-ltz p0, :cond_47

    .line 1725
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/wm/ActivityRecord;

    .line 1730
    sget-object v1, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {p2, v1}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v1

    if-nez v1, :cond_40

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_3c

    goto :goto_40

    .line 1733
    :cond_3c
    invoke-virtual {p2, p1}, Lcom/android/server/wm/ActivityRecord;->destroyIfPossible(Ljava/lang/String;)Z

    goto :goto_44

    :cond_40
    :goto_40
    const/4 v1, 0x0

    .line 1731
    invoke-virtual {p2, p1, v1}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(Ljava/lang/String;Z)I

    :goto_44
    add-int/lit8 p0, p0, -0x1

    goto :goto_25

    :cond_47
    return-void
.end method

.method public removeChild(Lcom/android/server/wm/WindowContainer;)V
    .registers 3

    .line 1602
    const-string v0, "removeChild"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/Task;->removeChild(Lcom/android/server/wm/WindowContainer;Ljava/lang/String;)V

    return-void
.end method

.method public removeChild(Lcom/android/server/wm/WindowContainer;Ljava/lang/String;)V
    .registers 5

    .line 1608
    iget-boolean v0, p0, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    if-eqz v0, :cond_14

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 1609
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lcom/android/server/wm/Task;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskDisplayArea;->removeRootTaskReferenceIfNeeded(Lcom/android/server/wm/Task;)V

    .line 1611
    :cond_14
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b

    .line 1612
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "removeChild: r="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " not found in t="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ActivityTaskManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3b
    const/4 v0, 0x0

    .line 1619
    invoke-super {p0, p1, v0}, Lcom/android/server/wm/TaskFragment;->removeChild(Lcom/android/server/wm/WindowContainer;Z)V

    .line 1621
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 1625
    iget-object v1, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskStackChanged()V

    .line 1628
    :cond_4e
    iget-object v1, p0, Lcom/android/server/wm/Task;->mDecorSurfaceContainer:Lcom/android/server/wm/Task$DecorSurfaceContainer;

    if-eqz v1, :cond_59

    iget-object v1, v1, Lcom/android/server/wm/Task$DecorSurfaceContainer;->mOwnerTaskFragment:Lcom/android/server/wm/TaskFragment;

    if-ne p1, v1, :cond_59

    .line 1630
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->removeDecorSurface()V

    .line 1633
    :cond_59
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->hasChild()Z

    move-result v1

    if-eqz v1, :cond_6f

    .line 1634
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->updateEffectiveIntent()V

    const/4 p1, 0x1

    .line 1639
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->onlyHasTaskOverlayActivities(Z)Z

    move-result p1

    if-eqz p1, :cond_98

    .line 1647
    iget-object p1, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {p1, p0, v0, v0, p2}, Lcom/android/server/wm/ActivityTaskSupervisor;->removeTask(Lcom/android/server/wm/Task;ZZLjava/lang/String;)V

    return-void

    .line 1650
    :cond_6f
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mReuseTask:Z

    if-nez v0, :cond_98

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->shouldRemoveSelfOnLastChildRemoval()Z

    move-result v0

    if-eqz v0, :cond_98

    .line 1651
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", last child = "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " in "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1652
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->removeIfPossible(Ljava/lang/String;)V

    :cond_98
    return-void
.end method

.method public removeDecorSurface()V
    .registers 2

    .line 7039
    iget-object v0, p0, Lcom/android/server/wm/Task;->mDecorSurfaceContainer:Lcom/android/server/wm/Task$DecorSurfaceContainer;

    if-nez v0, :cond_5

    return-void

    .line 7042
    :cond_5
    invoke-static {v0}, Lcom/android/server/wm/Task$DecorSurfaceContainer;->-$$Nest$mrelease(Lcom/android/server/wm/Task$DecorSurfaceContainer;)V

    const/4 v0, 0x0

    .line 7043
    iput-object v0, p0, Lcom/android/server/wm/Task;->mDecorSurfaceContainer:Lcom/android/server/wm/Task$DecorSurfaceContainer;

    .line 7044
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->sendTaskFragmentParentInfoChangedIfNeeded()V

    return-void
.end method

.method public removeIfPossible()V
    .registers 2

    .line 772
    const-string v0, "removeTaskIfPossible"

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->removeIfPossible(Ljava/lang/String;)V

    return-void
.end method

.method public removeIfPossible(Ljava/lang/String;)V
    .registers 3

    .line 776
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/wm/LockTaskController;->clearLockedTask(Lcom/android/server/wm/Task;)V

    .line 777
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->shouldDeferRemoval()Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_2f

    .line 782
    :cond_10
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v0

    .line 783
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->removeImmediately(Ljava/lang/String;)V

    if-eqz v0, :cond_2f

    .line 785
    iget-object p1, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object p1

    iget v0, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {p1, v0}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskRemoved(I)V

    .line 787
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p1

    if-eqz p1, :cond_2f

    .line 789
    iget p0, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {p1, p0}, Lcom/android/server/wm/TaskDisplayArea;->onLeafTaskRemoved(I)V

    :cond_2f
    :goto_2f
    return-void
.end method

.method public removeImmediately()V
    .registers 2

    .line 2854
    const-string v0, "removeTask"

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->removeImmediately(Ljava/lang/String;)V

    return-void
.end method

.method public removeImmediately(Ljava/lang/String;)V
    .registers 5

    .line 2860
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mRemoving:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    .line 2863
    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mRemoving:Z

    .line 2865
    iget v0, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootTaskId()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    move-result v2

    invoke-static {v0, v1, v2, p1}, Lcom/android/server/wm/EventLogTags;->writeWmTaskRemoved(IIILjava/lang/String;)V

    .line 2866
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->clearPinnedTaskIfNeed()V

    .line 2867
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->clearExcludeLayersFromTaskSnapshot()V

    .line 2868
    iget-object p1, p0, Lcom/android/server/wm/Task;->mChildPipActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz p1, :cond_22

    .line 2869
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->clearLastParentBeforePip()V

    :cond_22
    const/4 p1, 0x0

    .line 2872
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->setTaskOrganizer(Landroid/window/ITaskOrganizer;)Z

    .line 2873
    iget-object v0, p0, Lcom/android/server/wm/Task;->mDecorSurfaceContainer:Lcom/android/server/wm/Task$DecorSurfaceContainer;

    if-eqz v0, :cond_2d

    .line 2874
    invoke-static {v0}, Lcom/android/server/wm/Task$DecorSurfaceContainer;->-$$Nest$mrelease(Lcom/android/server/wm/Task$DecorSurfaceContainer;)V

    .line 2877
    :cond_2d
    invoke-super {p0}, Lcom/android/server/wm/TaskFragment;->removeImmediately()V

    .line 2878
    iput-object p1, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 p1, 0x0

    .line 2880
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->setHasBeenVisible(Z)V

    .line 2881
    iput-boolean p1, p0, Lcom/android/server/wm/Task;->mRemoving:Z

    return-void
.end method

.method public removedFromRecents()V
    .registers 3

    .line 1396
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->closeRecentsChain()V

    .line 1397
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->inRecents:Z

    if-eqz v0, :cond_f

    const/4 v0, 0x0

    .line 1398
    iput-boolean v0, p0, Lcom/android/server/wm/Task;->inRecents:Z

    .line 1399
    iget-object v1, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1, p0, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->notifyTaskPersisterLocked(Lcom/android/server/wm/Task;Z)V

    .line 1402
    :cond_f
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->clearRootProcess()V

    .line 1404
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    iget v1, p0, Lcom/android/server/wm/Task;->mTaskId:I

    iget p0, p0, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {v0, v1, p0}, Lcom/android/server/wm/TaskSnapshotController;->removeAndDeleteSnapshot(II)V

    return-void
.end method

.method public reparent(Lcom/android/server/wm/Task;IZLjava/lang/String;)V
    .registers 10

    .line 2888
    iget v0, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootTaskId()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reParentTask:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v0, v1, v2, p4}, Lcom/android/server/wm/EventLogTags;->writeWmTaskRemoved(IIILjava/lang/String;)V

    .line 2891
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->reparent(Lcom/android/server/wm/WindowContainer;I)V

    .line 2893
    invoke-virtual {p1, p2, p0, p3}, Lcom/android/server/wm/Task;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    return-void
.end method

.method public reparent(Lcom/android/server/wm/TaskDisplayArea;Z)V
    .registers 5

    if-eqz p1, :cond_6d

    .line 6357
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    const-string v1, "Task="

    if-eq v0, p1, :cond_50

    .line 6361
    invoke-virtual {p1}, Lcom/android/server/wm/TaskDisplayArea;->getDisplayId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->canBeLaunchedOnDisplay(I)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 6362
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideWindowingMode()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/server/wm/TaskDisplayArea;->isWindowingModeSupported(I)Z

    move-result v0

    if-nez v0, :cond_22

    const/4 v0, 0x0

    .line 6363
    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->setWindowingMode(I)V

    :cond_22
    if-eqz p2, :cond_28

    const v0, 0x7fffffff

    goto :goto_2a

    :cond_28
    const/high16 v0, -0x80000000

    .line 6365
    :goto_2a
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowContainer;->reparent(Lcom/android/server/wm/WindowContainer;I)V

    xor-int/lit8 v0, p2, 0x1

    .line 6366
    invoke-virtual {p1, p0, p2, v0}, Lcom/android/server/wm/TaskDisplayArea;->onTaskMoved(Lcom/android/server/wm/Task;ZZ)V

    return-void

    .line 6368
    :cond_33
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " can\'t reparent to "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ActivityTaskManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 6358
    :cond_50
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " already child of "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 6354
    :cond_6d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Task can\'t reparent to null "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public reparent(Lcom/android/server/wm/Task;ZIZZLjava/lang/String;)Z
    .registers 21

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p6

    .line 881
    iget-object v4, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 882
    iget-object v5, p0, Lcom/android/server/wm/TaskFragment;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 883
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v6

    .line 884
    invoke-virtual {v4, p0, p1, v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->getReparentTargetRootTask(Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;Z)Lcom/android/server/wm/Task;

    move-result-object v7

    const/4 v8, 0x0

    if-ne v7, v6, :cond_16

    return v8

    .line 889
    :cond_16
    invoke-virtual {v7}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    move-result v9

    invoke-virtual {p0, v9}, Lcom/android/server/wm/Task;->canBeLaunchedOnDisplay(I)Z

    move-result v9

    if-nez v9, :cond_21

    return v8

    .line 893
    :cond_21
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v9

    .line 895
    iget-object v10, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v10}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    .line 897
    :try_start_2a
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v10

    const/4 v11, 0x1

    if-eqz v10, :cond_42

    .line 898
    invoke-virtual {v5, v6}, Lcom/android/server/wm/RootWindowContainer;->isTopDisplayFocusedRootTask(Lcom/android/server/wm/Task;)Z

    move-result v12

    if-eqz v12, :cond_42

    .line 899
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v12

    if-ne v12, v10, :cond_42

    move v12, v11

    goto :goto_43

    :catchall_3f
    move-exception v0

    goto/16 :goto_ad

    :cond_42
    move v12, v8

    :goto_43
    if-eqz v10, :cond_53

    .line 904
    invoke-virtual {v6}, Lcom/android/server/wm/Task;->isTopRootTaskInDisplayArea()Z

    move-result v13

    if-eqz v13, :cond_53

    .line 905
    invoke-virtual {v6}, Lcom/android/server/wm/TaskFragment;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v6

    if-ne v6, v10, :cond_53

    move v6, v11

    goto :goto_54

    :cond_53
    move v6, v8

    :goto_54
    if-eqz v2, :cond_5f

    if-ne v2, v11, :cond_5d

    if-nez v12, :cond_5f

    if-eqz v6, :cond_5d

    goto :goto_5f

    :cond_5d
    move v2, v8

    goto :goto_60

    :cond_5f
    :goto_5f
    move v2, v11

    :goto_60
    if-eqz v1, :cond_66

    const v1, 0x7fffffff

    goto :goto_67

    :cond_66
    move v1, v8

    .line 911
    :goto_67
    invoke-virtual {p0, v7, v1, v2, v3}, Lcom/android/server/wm/Task;->reparent(Lcom/android/server/wm/Task;IZLjava/lang/String;)V

    if-eqz v10, :cond_86

    if-eqz v2, :cond_86

    .line 917
    invoke-virtual {v7, v3}, Lcom/android/server/wm/Task;->moveToFront(Ljava/lang/String;)V

    .line 921
    sget-object v1, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {v10, v1}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v1

    if-eqz v1, :cond_86

    iget-object v1, p0, Lcom/android/server/wm/TaskFragment;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-ne v10, v1, :cond_86

    .line 922
    iget-object v1, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1, v10, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->setLastResumedActivityUncheckLocked(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V

    :cond_86
    if-nez p4, :cond_8f

    .line 926
    iget-object v1, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_8f
    .catchall {:try_start_2a .. :try_end_8f} :catchall_3f

    .line 929
    :cond_8f
    iget-object v1, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    if-nez p5, :cond_9c

    .line 935
    invoke-virtual {v5}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible()V

    .line 936
    invoke-virtual {v5}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities()Z

    .line 940
    :cond_9c
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/wm/TaskFragment;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 941
    invoke-virtual {v2}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    .line 940
    invoke-virtual {v4, p0, v1, v2, v7}, Lcom/android/server/wm/ActivityTaskSupervisor;->handleNonResizableTaskIfNeeded(Lcom/android/server/wm/Task;ILcom/android/server/wm/TaskDisplayArea;Lcom/android/server/wm/Task;)V

    if-ne p1, v7, :cond_ac

    return v11

    :cond_ac
    return v8

    .line 929
    :goto_ad
    iget-object p0, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 930
    throw v0
.end method

.method public reparentSurfaceControl(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .registers 4

    .line 4345
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isOrganized()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isAlwaysOnTop()Z

    move-result v0

    if-eqz v0, :cond_d

    return-void

    .line 4348
    :cond_d
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->reparentSurfaceControl(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    return-void
.end method

.method public requestDecorSurfaceBoosted(Lcom/android/server/wm/TaskFragment;ZLandroid/view/SurfaceControl$Transaction;)V
    .registers 5

    .line 3731
    iget-object p0, p0, Lcom/android/server/wm/Task;->mDecorSurfaceContainer:Lcom/android/server/wm/Task$DecorSurfaceContainer;

    if-eqz p0, :cond_c

    iget-object v0, p0, Lcom/android/server/wm/Task$DecorSurfaceContainer;->mOwnerTaskFragment:Lcom/android/server/wm/TaskFragment;

    if-eq v0, p1, :cond_9

    goto :goto_c

    .line 3735
    :cond_9
    invoke-static {p0, p2, p3}, Lcom/android/server/wm/Task$DecorSurfaceContainer;->-$$Nest$mrequestBoosted(Lcom/android/server/wm/Task$DecorSurfaceContainer;ZLandroid/view/SurfaceControl$Transaction;)V

    :cond_c
    :goto_c
    return-void
.end method

.method public resetSurfaceControlTransforms()V
    .registers 5

    .line 6389
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    sget-object v2, Landroid/graphics/Matrix;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    const/16 v3, 0x9

    new-array v3, v3, [F

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;Landroid/graphics/Matrix;[F)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v2, 0x0

    .line 6390
    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v2, 0x0

    .line 6391
    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setShadowRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 6392
    invoke-virtual {v0, p0, v2}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    return-void
.end method

.method public resetTaskIfNeeded(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;
    .registers 6

    .line 5588
    iget-object p2, p2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget p2, p2, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit8 p2, p2, 0x4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_c

    move p2, v0

    goto :goto_d

    :cond_c
    move p2, v1

    .line 5590
    :goto_d
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    .line 5597
    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mReuseTask:Z

    .line 5599
    :try_start_13
    sget-object v0, Lcom/android/server/wm/Task;->sResetTargetTaskHelper:Lcom/android/server/wm/ResetTargetTaskHelper;

    invoke-virtual {v0, v2, p2}, Lcom/android/server/wm/ResetTargetTaskHelper;->process(Lcom/android/server/wm/Task;Z)Landroid/app/ActivityOptions;

    move-result-object p2
    :try_end_19
    .catchall {:try_start_13 .. :try_end_19} :catchall_30

    .line 5601
    iput-boolean v1, p0, Lcom/android/server/wm/Task;->mReuseTask:Z

    .line 5604
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2a

    .line 5605
    invoke-virtual {v2}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    if-eqz p0, :cond_2a

    move-object p1, p0

    :cond_2a
    if-eqz p2, :cond_2f

    .line 5614
    invoke-virtual {p1, p2}, Lcom/android/server/wm/ActivityRecord;->updateOptionsLocked(Landroid/app/ActivityOptions;)V

    :cond_2f
    return-object p1

    :catchall_30
    move-exception p1

    .line 5601
    iput-boolean v1, p0, Lcom/android/server/wm/Task;->mReuseTask:Z

    .line 5602
    throw p1
.end method

.method public resize(Landroid/graphics/Rect;IZ)Z
    .registers 7

    .line 805
    iget-object p3, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p3}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    and-int/lit8 p2, p2, 0x2

    const/4 p3, 0x0

    const/4 v0, 0x1

    if-eqz p2, :cond_d

    move p2, v0

    goto :goto_e

    :cond_d
    move p2, p3

    .line 810
    :goto_e
    :try_start_e
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    if-nez v1, :cond_2c

    .line 814
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    .line 815
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result p1

    if-nez p1, :cond_26

    .line 817
    iget-object p1, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    const/4 p2, 0x0

    invoke-virtual {p1, p0, p2, p3}, Lcom/android/server/wm/ActivityTaskSupervisor;->restoreRecentTaskLocked(Lcom/android/server/wm/Task;Landroid/app/ActivityOptions;Z)Z
    :try_end_23
    .catchall {:try_start_e .. :try_end_23} :catchall_24

    goto :goto_26

    :catchall_24
    move-exception p1

    goto :goto_96

    .line 858
    :cond_26
    :goto_26
    iget-object p0, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    return v0

    .line 822
    :cond_2c
    :try_start_2c
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->canResizeToBounds(Landroid/graphics/Rect;)Z

    move-result p3

    if-eqz p3, :cond_6d

    .line 831
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resizeTask_"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-wide/16 v1, 0x20

    invoke-static {v1, v2, p3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 837
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;Z)I

    move-result p1

    if-eqz p1, :cond_66

    .line 838
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-eqz p1, :cond_66

    .line 840
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->ensureActivityConfiguration()Z

    move-result v0

    .line 847
    iget-object p2, p0, Lcom/android/server/wm/TaskFragment;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p2, p1}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;)V

    if-nez v0, :cond_66

    .line 849
    iget-object p1, p0, Lcom/android/server/wm/TaskFragment;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p1}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities()Z

    .line 853
    :cond_66
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->saveLaunchingStateIfNeeded()V

    .line 855
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_26

    .line 823
    :cond_6d
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "resizeTask: Can not resize task="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " to bounds="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " resizeMode="

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_96
    .catchall {:try_start_2c .. :try_end_96} :catchall_24

    .line 858
    :goto_96
    iget-object p0, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 859
    throw p1
.end method

.method public resolveLeafTaskOnlyOverrideConfigs(Landroid/content/res/Configuration;Landroid/graphics/Rect;)V
    .registers 6

    .line 2240
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_40

    .line 2245
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    if-nez v0, :cond_19

    .line 2247
    iget-object v0, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    .line 2251
    :cond_19
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1, v0}, Landroid/app/WindowConfiguration;->setWindowingMode(I)V

    .line 2252
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_37

    .line 2255
    iget-boolean p0, p0, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    if-nez p0, :cond_40

    .line 2257
    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    return-void

    .line 2264
    :cond_37
    invoke-virtual {p0, v1, p2, p1}, Lcom/android/server/wm/Task;->adjustForMinimalTaskDimensions(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/content/res/Configuration;)V

    const/4 p2, 0x5

    if-ne v0, p2, :cond_40

    .line 2266
    invoke-virtual {p0, v1, p1}, Lcom/android/server/wm/Task;->computeFreeformBounds(Landroid/graphics/Rect;Landroid/content/res/Configuration;)V

    :cond_40
    :goto_40
    return-void
.end method

.method public restoreWindowingMode()V
    .registers 3

    .line 4705
    iget v0, p0, Lcom/android/server/wm/Task;->mMultiWindowRestoreWindowingMode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_6

    return-void

    .line 4708
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowContainer;->mRemoteToken:Lcom/android/server/wm/WindowContainer$RemoteToken;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer$RemoteToken;->toWindowContainerToken()Landroid/window/WindowContainerToken;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/Task;->mMultiWindowRestoreParent:Landroid/window/WindowContainerToken;

    .line 4709
    invoke-virtual {v0, v1}, Landroid/window/WindowContainerToken;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 4711
    iget-object v0, p0, Lcom/android/server/wm/Task;->mMultiWindowRestoreParent:Landroid/window/WindowContainerToken;

    invoke-static {v0}, Lcom/android/server/wm/Task;->fromWindowContainerToken(Landroid/window/WindowContainerToken;)Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_2c

    .line 4712
    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->isAttached()Z

    move-result v1

    if-eqz v1, :cond_2c

    const v1, 0x7fffffff

    .line 4713
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowContainer;->reparent(Lcom/android/server/wm/WindowContainer;I)V

    .line 4718
    :cond_2c
    iget v0, p0, Lcom/android/server/wm/Task;->mMultiWindowRestoreWindowingMode:I

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->setRootTaskWindowingMode(I)V

    return-void
.end method

.method public resumeNextFocusAfterReparent()V
    .registers 3

    .line 4965
    const-string v0, "reparent"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, v1}, Lcom/android/server/wm/Task;->adjustFocusToNextFocusableTask(Ljava/lang/String;ZZ)Lcom/android/server/wm/Task;

    .line 4967
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities()Z

    .line 4970
    iget-object p0, p0, Lcom/android/server/wm/TaskFragment;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible()V

    return-void
.end method

.method public final resumeNextFocusableActivityWhenRootTaskIsEmpty(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Z
    .registers 8

    .line 5389
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result v0

    const-string v1, "noMoreActivities"

    if-nez v0, :cond_15

    .line 5390
    invoke-virtual {p0, v1}, Lcom/android/server/wm/Task;->adjustFocusToNextFocusableTask(Ljava/lang/String;)Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 5395
    iget-object p0, p0, Lcom/android/server/wm/TaskFragment;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0

    .line 5401
    :cond_15
    invoke-static {p2}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 5402
    sget-object p2, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_STATES_enabled:[Z

    const/4 v0, 0x1

    aget-boolean p2, p2, v0

    if-eqz p2, :cond_2e

    sget-object p2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_STATES:Lcom/android/internal/protolog/WmProtoLogGroups;

    const/4 v0, 0x0

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v2

    const-wide v3, 0x3808e4901a1f301fL    # 9.144179306090412E-39

    invoke-static {p2, v3, v4, v0, v2}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 5404
    :cond_2e
    iget-object p2, p0, Lcom/android/server/wm/TaskFragment;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p0

    invoke-virtual {p2, p1, v1, p0}, Lcom/android/server/wm/RootWindowContainer;->resumeHomeActivity(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;Lcom/android/server/wm/TaskDisplayArea;)Z

    move-result p0

    return p0
.end method

.method public final resumeTopActivityInnerLocked(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Z)Z
    .registers 12

    .line 5348
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->isBooting()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->isBooted()Z

    move-result v0

    if-nez v0, :cond_12

    return v1

    .line 5353
    :cond_12
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->readyToResume()Z

    move-result v0

    if-eqz v0, :cond_46

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mRemoving:Z

    if-eqz v0, :cond_1f

    goto :goto_46

    :cond_1f
    const/4 v0, 0x1

    .line 5357
    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskFragment;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    if-nez v2, :cond_2b

    .line 5360
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/Task;->resumeNextFocusableActivityWhenRootTaskIsEmpty(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Z

    move-result p0

    return p0

    .line 5363
    :cond_2b
    new-array v4, v0, [Z

    .line 5364
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v3

    .line 5365
    new-instance v2, Lcom/android/server/wm/Task$$ExternalSyntheticLambda40;

    move-object v5, p1

    move-object v6, p2

    move v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda40;-><init>(Lcom/android/server/wm/TaskFragment;[ZLcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Z)V

    invoke-virtual {p0, v2, v0}, Lcom/android/server/wm/TaskFragment;->forAllLeafTaskFragments(Ljava/util/function/Consumer;Z)V

    .line 5374
    aget-boolean p0, v4, v1

    invoke-virtual {v3, v5, v6, v7}, Lcom/android/server/wm/TaskFragment;->resumeTopActivity(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Z)Z

    move-result p1

    or-int/2addr p0, p1

    aput-boolean p0, v4, v1

    return p0

    :cond_46
    :goto_46
    return v1
.end method

.method public resumeTopActivityUncheckedLocked()Z
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 5341
    invoke-virtual {p0, v0, v0, v1}, Lcom/android/server/wm/Task;->resumeTopActivityUncheckedLocked(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Z)Z

    move-result p0

    return p0
.end method

.method public resumeTopActivityUncheckedLocked(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Z)Z
    .registers 11

    .line 5242
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mInResumeTopActivity:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    return v1

    :cond_6
    const/4 v0, 0x1

    .line 5250
    :try_start_7
    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mInResumeTopActivity:Z

    .line 5252
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 5253
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->isFocusableAndVisible()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 5254
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/Task;->resumeTopActivityInnerLocked(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Z)Z

    move-result p1

    goto/16 :goto_af

    :catchall_1b
    move-exception p1

    goto/16 :goto_e0

    :cond_1e
    move p1, v1

    goto/16 :goto_af

    .line 5257
    :cond_21
    sget-object v2, Landroid/window/DesktopExperienceFlags;->ENABLE_MULTIPLE_DESKTOPS_BACKEND:Landroid/window/DesktopExperienceFlags;

    invoke-virtual {v2}, Landroid/window/DesktopExperienceFlags;->isTrue()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_71

    .line 5259
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 5260
    iget-object v4, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v0

    :goto_36
    if-ltz v4, :cond_58

    .line 5261
    invoke-virtual {p0, v4}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/Task;

    .line 5262
    invoke-virtual {v5}, Lcom/android/server/wm/TaskFragment;->isTopActivityFocusable()Z

    move-result v6

    if-nez v6, :cond_45

    goto :goto_55

    .line 5265
    :cond_45
    invoke-virtual {v5, v3}, Lcom/android/server/wm/TaskFragment;->getVisibility(Lcom/android/server/wm/ActivityRecord;)I

    move-result v6

    if-eqz v6, :cond_52

    .line 5267
    invoke-virtual {v5}, Lcom/android/server/wm/TaskFragment;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    if-nez v5, :cond_58

    goto :goto_55

    .line 5276
    :cond_52
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_55
    add-int/lit8 v4, v4, -0x1

    goto :goto_36

    .line 5279
    :cond_58
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v0

    move v4, v3

    move v3, v1

    :goto_5f
    if-ltz v4, :cond_6f

    .line 5280
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/Task;

    .line 5281
    invoke-virtual {v5, p1, p2, p3}, Lcom/android/server/wm/Task;->resumeTopActivityUncheckedLocked(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Z)Z

    move-result v5

    or-int/2addr v3, v5

    add-int/lit8 v4, v4, -0x1

    goto :goto_5f

    :cond_6f
    move p1, v3

    goto :goto_af

    .line 5285
    :cond_71
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v0

    move v4, v2

    move v2, v1

    :goto_7a
    if-ltz v4, :cond_ae

    add-int/lit8 v5, v4, -0x1

    .line 5287
    invoke-virtual {p0, v4}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/Task;

    .line 5288
    invoke-virtual {v4}, Lcom/android/server/wm/TaskFragment;->isTopActivityFocusable()Z

    move-result v6

    if-nez v6, :cond_8b

    goto :goto_97

    .line 5291
    :cond_8b
    invoke-virtual {v4, v3}, Lcom/android/server/wm/TaskFragment;->getVisibility(Lcom/android/server/wm/ActivityRecord;)I

    move-result v6

    if-eqz v6, :cond_99

    .line 5293
    invoke-virtual {v4}, Lcom/android/server/wm/TaskFragment;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    if-nez v4, :cond_ae

    :cond_97
    :goto_97
    move v4, v5

    goto :goto_7a

    .line 5303
    :cond_99
    invoke-virtual {v4, p1, p2, p3}, Lcom/android/server/wm/Task;->resumeTopActivityUncheckedLocked(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Z)Z

    move-result v4

    or-int/2addr v2, v4

    .line 5308
    iget-object v4, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v5, v4, :cond_97

    .line 5309
    iget-object v4, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v0

    goto :goto_7a

    :cond_ae
    move p1, v2

    .line 5322
    :goto_af
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->shouldSleepActivities()Z

    move-result p2

    if-eqz p2, :cond_dd

    .line 5323
    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskFragment;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object p2

    if-eqz p2, :cond_da

    .line 5324
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->canTurnScreenOn()Z

    move-result p3

    if-eqz p3, :cond_da

    iget-object p3, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p3, p3, Lcom/android/server/wm/WindowManagerService;->mPowerManager:Landroid/os/PowerManager;

    .line 5325
    invoke-virtual {p3}, Landroid/os/PowerManager;->isInteractive()Z

    move-result p3

    if-nez p3, :cond_da

    .line 5326
    iget-object p3, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    move-result v0

    const-string v2, "resumeTop-turnScreenOnFlag"

    invoke-virtual {p3, v0, v2}, Lcom/android/server/wm/ActivityTaskSupervisor;->wakeUp(ILjava/lang/String;)V

    .line 5327
    invoke-virtual {p2, v1}, Lcom/android/server/wm/ActivityRecord;->setCurrentLaunchCanTurnScreenOn(Z)V

    goto :goto_dd

    .line 5329
    :cond_da
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->checkReadyForSleep()V
    :try_end_dd
    .catchall {:try_start_7 .. :try_end_dd} :catchall_1b

    .line 5333
    :cond_dd
    :goto_dd
    iput-boolean v1, p0, Lcom/android/server/wm/Task;->mInResumeTopActivity:Z

    return p1

    :goto_e0
    iput-boolean v1, p0, Lcom/android/server/wm/Task;->mInResumeTopActivity:Z

    .line 5334
    throw p1
.end method

.method public returnsToHomeRootTask()Z
    .registers 5

    .line 1129
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4c

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->hasChild()Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_4c

    .line 1130
    :cond_e
    iget-object v0, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    const/4 v2, 0x1

    if-eqz v0, :cond_3f

    .line 1132
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const v3, 0x10004000

    and-int/2addr v0, v3

    if-eq v0, v3, :cond_1e

    return v1

    .line 1135
    :cond_1e
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    if-eqz v0, :cond_2d

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->getRootHomeTask()Lcom/android/server/wm/Task;

    move-result-object v0

    goto :goto_2e

    :cond_2d
    const/4 v0, 0x0

    :goto_2e
    if-eqz v0, :cond_3e

    .line 1136
    iget-object p0, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1137
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/LockTaskController;->isLockTaskModeViolation(Lcom/android/server/wm/Task;)Z

    move-result p0

    if-nez p0, :cond_3d

    goto :goto_3e

    :cond_3d
    return v1

    :cond_3e
    :goto_3e
    return v2

    .line 1139
    :cond_3f
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getBottomMostTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eq v0, p0, :cond_4c

    .line 1140
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->returnsToHomeRootTask()Z

    move-result p0

    if-eqz p0, :cond_4c

    return v2

    :cond_4c
    :goto_4c
    return v1
.end method

.method public reuseAsLeafTask(Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/Task;
    .registers 6

    .line 730
    iput-object p1, p0, Lcom/android/server/wm/Task;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 731
    iput-object p2, p0, Lcom/android/server/wm/Task;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 732
    invoke-virtual {p0, p5, p3, p4}, Lcom/android/server/wm/Task;->setIntent(Lcom/android/server/wm/ActivityRecord;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V

    .line 740
    iget-object p1, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object p1

    iget p2, p0, Lcom/android/server/wm/Task;->mTaskId:I

    iget-object p3, p0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {p1, p2, p3}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskCreated(ILandroid/content/ComponentName;)V

    return-object p0
.end method

.method public reuseOrCreateTask(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;ZLcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Lcom/android/server/wm/Task;
    .registers 16

    .line 6171
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->canReuseAsLeafTask()Z

    move-result v0

    if-eqz v0, :cond_13

    move-object v1, p0

    move-object v5, p1

    move-object v4, p2

    move-object v2, p3

    move-object v3, p4

    move-object v6, p6

    .line 6174
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/Task;->reuseAsLeafTask(Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/Task;

    move-result-object p0

    move-object p4, v6

    :goto_11
    move-object p2, p0

    goto :goto_56

    :cond_13
    move-object v1, p0

    move-object v5, p1

    move-object v4, p2

    move-object v2, p3

    move-object v3, p4

    move-object p4, p6

    if-eqz p4, :cond_24

    .line 6178
    iget-object p0, v1, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget p1, p4, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskSupervisor;->getNextTaskIdForUser(I)I

    move-result p0

    goto :goto_2a

    .line 6179
    :cond_24
    iget-object p0, v1, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->getNextTaskIdForUser()I

    move-result p0

    .line 6180
    :goto_2a
    new-instance p1, Lcom/android/server/wm/Task$Builder;

    iget-object p2, v1, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-direct {p1, p2}, Lcom/android/server/wm/Task$Builder;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    .line 6181
    invoke-virtual {p1, p0}, Lcom/android/server/wm/Task$Builder;->setTaskId(I)Lcom/android/server/wm/Task$Builder;

    move-result-object p0

    .line 6182
    invoke-virtual {p0, v5}, Lcom/android/server/wm/Task$Builder;->setActivityInfo(Landroid/content/pm/ActivityInfo;)Lcom/android/server/wm/Task$Builder;

    move-result-object p0

    .line 6183
    invoke-virtual {p0, p8}, Lcom/android/server/wm/Task$Builder;->setActivityOptions(Landroid/app/ActivityOptions;)Lcom/android/server/wm/Task$Builder;

    move-result-object p0

    .line 6184
    invoke-virtual {p0, v4}, Lcom/android/server/wm/Task$Builder;->setIntent(Landroid/content/Intent;)Lcom/android/server/wm/Task$Builder;

    move-result-object p0

    .line 6185
    invoke-virtual {p0, v2}, Lcom/android/server/wm/Task$Builder;->setVoiceSession(Landroid/service/voice/IVoiceInteractionSession;)Lcom/android/server/wm/Task$Builder;

    move-result-object p0

    .line 6186
    invoke-static {p0, v3}, Lcom/android/server/wm/Task$Builder;->-$$Nest$msetVoiceInteractor(Lcom/android/server/wm/Task$Builder;Lcom/android/internal/app/IVoiceInteractor;)Lcom/android/server/wm/Task$Builder;

    move-result-object p0

    .line 6187
    invoke-virtual {p0, p5}, Lcom/android/server/wm/Task$Builder;->setOnTop(Z)Lcom/android/server/wm/Task$Builder;

    move-result-object p0

    .line 6188
    invoke-virtual {p0, v1}, Lcom/android/server/wm/Task$Builder;->setParent(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/Task$Builder;

    move-result-object p0

    .line 6189
    invoke-virtual {p0}, Lcom/android/server/wm/Task$Builder;->build()Lcom/android/server/wm/Task;

    move-result-object p0

    goto :goto_11

    .line 6192
    :goto_56
    iget-object p0, v1, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->getLaunchParamsController()Lcom/android/server/wm/LaunchParamsController;

    move-result-object p1

    iget-object p3, v5, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    move-object p5, p7

    move-object p6, p8

    invoke-virtual/range {p1 .. p6}, Lcom/android/server/wm/LaunchParamsController;->layoutTask(Lcom/android/server/wm/Task;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Z

    return-object p2
.end method

.method public reuseOrCreateTask(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;Z)Lcom/android/server/wm/Task;
    .registers 13

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    .line 6160
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/wm/Task;->reuseOrCreateTask(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;ZLcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Lcom/android/server/wm/Task;

    move-result-object p0

    return-object p0
.end method

.method public final saveLaunchingStateIfNeeded()V
    .registers 2

    .line 2459
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->saveLaunchingStateIfNeeded(Lcom/android/server/wm/DisplayContent;)V

    return-void
.end method

.method public final saveLaunchingStateIfNeeded(Lcom/android/server/wm/DisplayContent;)V
    .registers 5

    .line 2463
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_31

    .line 2467
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getHasBeenVisible()Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_31

    .line 2472
    :cond_e
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x5

    if-eq v0, v1, :cond_19

    if-eq v0, v2, :cond_19

    goto :goto_31

    .line 2481
    :cond_19
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    if-eqz v0, :cond_31

    .line 2482
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v0

    if-eq v0, v2, :cond_2a

    goto :goto_31

    .line 2487
    :cond_2a
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mLaunchParamsPersister:Lcom/android/server/wm/LaunchParamsPersister;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/wm/LaunchParamsPersister;->saveTask(Lcom/android/server/wm/Task;Lcom/android/server/wm/DisplayContent;)V

    :cond_31
    :goto_31
    return-void
.end method

.method public saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V
    .registers 7

    .line 3959
    const-string v0, "task_id"

    iget v1, p0, Lcom/android/server/wm/Task;->mTaskId:I

    const/4 v2, 0x0

    invoke-interface {p1, v2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 3960
    iget-object v0, p0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_15

    .line 3961
    const-string v1, "real_activity"

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v2, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3963
    :cond_15
    const-string v0, "real_activity_suspended"

    iget-boolean v1, p0, Lcom/android/server/wm/Task;->realActivitySuspended:Z

    invoke-interface {p1, v2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 3964
    iget-object v0, p0, Lcom/android/server/wm/Task;->origActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_29

    .line 3965
    const-string v1, "orig_activity"

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v2, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3971
    :cond_29
    iget-object v0, p0, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    const-string v1, "@"

    const-string v3, "root_affinity"

    if-eqz v0, :cond_49

    .line 3972
    const-string v4, "affinity"

    invoke-interface {p1, v2, v4, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3973
    iget-object v0, p0, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/wm/Task;->rootAffinity:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_53

    .line 3974
    iget-object v0, p0, Lcom/android/server/wm/Task;->rootAffinity:Ljava/lang/String;

    if-eqz v0, :cond_45

    move-object v1, v0

    :cond_45
    invoke-interface {p1, v2, v3, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_53

    .line 3976
    :cond_49
    iget-object v0, p0, Lcom/android/server/wm/Task;->rootAffinity:Ljava/lang/String;

    if-eqz v0, :cond_53

    if-eqz v0, :cond_50

    move-object v1, v0

    .line 3977
    :cond_50
    invoke-interface {p1, v2, v3, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3979
    :cond_53
    :goto_53
    iget-object v0, p0, Lcom/android/server/wm/Task;->mWindowLayoutAffinity:Ljava/lang/String;

    if-eqz v0, :cond_5c

    .line 3980
    const-string v1, "window_layout_affinity"

    invoke-interface {p1, v2, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3982
    :cond_5c
    const-string v0, "root_has_reset"

    iget-boolean v1, p0, Lcom/android/server/wm/Task;->rootWasReset:Z

    invoke-interface {p1, v2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 3983
    const-string v0, "auto_remove_recents"

    iget-boolean v1, p0, Lcom/android/server/wm/Task;->autoRemoveRecents:Z

    invoke-interface {p1, v2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 3984
    const-string v0, "user_id"

    iget v1, p0, Lcom/android/server/wm/Task;->mUserId:I

    invoke-interface {p1, v2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 3985
    const-string v0, "user_setup_complete"

    iget-boolean v1, p0, Lcom/android/server/wm/Task;->mUserSetupComplete:Z

    invoke-interface {p1, v2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 3986
    const-string v0, "effective_uid"

    iget v1, p0, Lcom/android/server/wm/Task;->effectiveUid:I

    invoke-interface {p1, v2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 3987
    const-string v0, "last_time_moved"

    iget-wide v3, p0, Lcom/android/server/wm/Task;->mLastTimeMoved:J

    invoke-interface {p1, v2, v0, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 3988
    const-string v0, "never_relinquish_identity"

    iget-boolean v1, p0, Lcom/android/server/wm/Task;->mNeverRelinquishIdentity:Z

    invoke-interface {p1, v2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 3989
    iget-object v0, p0, Lcom/android/server/wm/Task;->lastDescription:Ljava/lang/CharSequence;

    if-eqz v0, :cond_9a

    .line 3990
    const-string v1, "last_description"

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v2, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3992
    :cond_9a
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTaskDescription()Landroid/app/ActivityManager$TaskDescription;

    move-result-object v0

    if-eqz v0, :cond_a7

    .line 3993
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTaskDescription()Landroid/app/ActivityManager$TaskDescription;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/ActivityManager$TaskDescription;->saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 3995
    :cond_a7
    const-string v0, "task_affiliation"

    iget v1, p0, Lcom/android/server/wm/Task;->mAffiliatedTaskId:I

    invoke-interface {p1, v2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 3996
    const-string v0, "prev_affiliation"

    iget v1, p0, Lcom/android/server/wm/Task;->mPrevAffiliateTaskId:I

    invoke-interface {p1, v2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 3997
    const-string v0, "next_affiliation"

    iget v1, p0, Lcom/android/server/wm/Task;->mNextAffiliateTaskId:I

    invoke-interface {p1, v2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 3998
    const-string v0, "calling_uid"

    iget v1, p0, Lcom/android/server/wm/Task;->mCallingUid:I

    invoke-interface {p1, v2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 3999
    iget-object v0, p0, Lcom/android/server/wm/Task;->mCallingPackage:Ljava/lang/String;

    const-string v1, ""

    if-nez v0, :cond_ca

    move-object v0, v1

    :cond_ca
    const-string v3, "calling_package"

    invoke-interface {p1, v2, v3, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4001
    iget-object v0, p0, Lcom/android/server/wm/Task;->mCallingFeatureId:Ljava/lang/String;

    if-nez v0, :cond_d4

    goto :goto_d5

    :cond_d4
    move-object v1, v0

    .line 4000
    :goto_d5
    const-string v0, "calling_feature_id"

    invoke-interface {p1, v2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4002
    const-string v0, "resize_mode"

    iget v1, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    invoke-interface {p1, v2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 4003
    const-string v0, "supports_picture_in_picture"

    iget-boolean v1, p0, Lcom/android/server/wm/Task;->mSupportsPictureInPicture:Z

    invoke-interface {p1, v2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 4004
    iget-object v0, p0, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_f5

    .line 4005
    const-string v1, "non_fullscreen_bounds"

    .line 4006
    invoke-virtual {v0}, Landroid/graphics/Rect;->flattenToString()Ljava/lang/String;

    move-result-object v0

    .line 4005
    invoke-interface {p1, v2, v1, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4008
    :cond_f5
    const-string v0, "min_width"

    iget v1, p0, Lcom/android/server/wm/TaskFragment;->mMinWidth:I

    invoke-interface {p1, v2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 4009
    const-string v0, "min_height"

    iget v1, p0, Lcom/android/server/wm/TaskFragment;->mMinHeight:I

    invoke-interface {p1, v2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 4010
    const-string v0, "persist_task_version"

    const/4 v1, 0x1

    invoke-interface {p1, v2, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 4012
    iget-object v0, p0, Lcom/android/server/wm/Task;->affinityIntent:Landroid/content/Intent;

    if-eqz v0, :cond_11a

    .line 4013
    const-string v0, "affinity_intent"

    invoke-interface {p1, v2, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4014
    iget-object v1, p0, Lcom/android/server/wm/Task;->affinityIntent:Landroid/content/Intent;

    invoke-virtual {v1, p1}, Landroid/content/Intent;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 4015
    invoke-interface {p1, v2, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4018
    :cond_11a
    iget-object v0, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_12b

    .line 4019
    const-string v0, "intent"

    invoke-interface {p1, v2, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4020
    iget-object v1, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    invoke-virtual {v1, p1}, Landroid/content/Intent;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 4021
    invoke-interface {p1, v2, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4024
    :cond_12b
    sput-object v2, Lcom/android/server/wm/Task;->sTmpException:Ljava/lang/Exception;

    .line 4025
    new-instance v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda34;

    invoke-direct {v0}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda34;-><init>()V

    const-class v1, Lcom/android/server/wm/ActivityRecord;

    .line 4026
    invoke-static {v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getBottomMostActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    .line 4025
    invoke-static {v0, v1, v2, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainPredicate(Lcom/android/internal/util/function/TriPredicate;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledPredicate;

    move-result-object p1

    .line 4027
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Predicate;)Z

    .line 4028
    invoke-interface {p1}, Lcom/android/internal/util/function/pooled/PooledPredicate;->recycle()V

    .line 4029
    sget-object p0, Lcom/android/server/wm/Task;->sTmpException:Ljava/lang/Exception;

    if-nez p0, :cond_14b

    return-void

    .line 4030
    :cond_14b
    throw p0
.end method

.method public final sendTaskAppeared()V
    .registers 3

    .line 4407
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    if-eqz v0, :cond_b

    .line 4408
    iget-object v1, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    invoke-virtual {v1, v0, p0}, Lcom/android/server/wm/TaskOrganizerController;->onTaskAppeared(Landroid/window/ITaskOrganizer;Lcom/android/server/wm/Task;)V

    :cond_b
    return-void
.end method

.method public sendTaskFragmentParentInfoChangedIfNeeded()V
    .registers 2

    .line 3647
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_15

    .line 3651
    :cond_7
    new-instance v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda2;-><init>()V

    .line 3652
    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskFragment;->getTaskFragment(Ljava/util/function/Predicate;)Lcom/android/server/wm/TaskFragment;

    move-result-object p0

    if-eqz p0, :cond_15

    .line 3654
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->sendTaskFragmentParentInfoChanged()V

    :cond_15
    :goto_15
    return-void
.end method

.method public final sendTaskVanished(Landroid/window/ITaskOrganizer;)V
    .registers 3

    if-eqz p1, :cond_9

    .line 4414
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    invoke-virtual {v0, p1, p0}, Lcom/android/server/wm/TaskOrganizerController;->onTaskVanished(Landroid/window/ITaskOrganizer;Lcom/android/server/wm/Task;)V

    :cond_9
    return-void
.end method

.method public setAlwaysOnTop(Z)V
    .registers 4

    .line 6230
    invoke-super {p0}, Lcom/android/server/wm/ConfigurationContainer;->isAlwaysOnTop()Z

    move-result v0

    if-ne v0, p1, :cond_7

    goto :goto_1b

    .line 6233
    :cond_7
    invoke-super {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->setAlwaysOnTop(Z)V

    .line 6240
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->isForceHidden()Z

    move-result p1

    if-nez p1, :cond_1b

    .line 6241
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object p1

    const v0, 0x7fffffff

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p0, v1}, Lcom/android/server/wm/WindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    :cond_1b
    :goto_1b
    return-void
.end method

.method public setBounds(Landroid/graphics/Rect;)I
    .registers 4

    .line 2910
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2911
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result p0

    return p0

    .line 2914
    :cond_f
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isOverrideBoundsAllowed()Z

    move-result v0

    if-nez v0, :cond_3d

    if-eqz p1, :cond_3d

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3d

    .line 2915
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not allowed to set override bounds "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " for "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ActivityTaskManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 2919
    :cond_3d
    invoke-super {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->setBounds(Landroid/graphics/Rect;)I

    move-result p1

    .line 2920
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->updateSurfacePositionNonOrganized()V

    return p1
.end method

.method public final setBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)I
    .registers 3

    .line 6268
    invoke-static {p1, p2}, Lcom/android/server/wm/ConfigurationContainer;->equivalentBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result p1

    if-eqz p1, :cond_8

    const/4 p0, 0x0

    return p0

    .line 6272
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    move-result p1

    if-nez p1, :cond_f

    const/4 p2, 0x0

    :cond_f
    invoke-virtual {p0, p2}, Lcom/android/server/wm/Task;->setBoundsUnchecked(Landroid/graphics/Rect;)I

    move-result p0

    return p0
.end method

.method public setBounds(Landroid/graphics/Rect;Z)I
    .registers 4

    .line 2897
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    move-result p1

    if-eqz p2, :cond_11

    and-int/lit8 p2, p1, 0x2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_11

    .line 2900
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->onResize()V

    or-int/lit8 p0, p1, 0x2

    return p0

    :cond_11
    return p1
.end method

.method public setBoundsUnchecked(Landroid/graphics/Rect;)I
    .registers 2

    .line 2926
    invoke-super {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->setBounds(Landroid/graphics/Rect;)I

    move-result p1

    .line 2927
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->updateSurfaceBounds()V

    return p1
.end method

.method public setDecorSurfaceVisible(Landroid/view/SurfaceControl$Transaction;)V
    .registers 2

    .line 7052
    iget-object p0, p0, Lcom/android/server/wm/Task;->mDecorSurfaceContainer:Lcom/android/server/wm/Task$DecorSurfaceContainer;

    if-nez p0, :cond_5

    return-void

    .line 7055
    :cond_5
    iget-object p0, p0, Lcom/android/server/wm/Task$DecorSurfaceContainer;->mDecorSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p1, p0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    return-void
.end method

.method public setDeferTaskAppear(Z)V
    .registers 3

    .line 4374
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mDeferTaskAppear:Z

    .line 4375
    iput-boolean p1, p0, Lcom/android/server/wm/Task;->mDeferTaskAppear:Z

    if-eqz v0, :cond_b

    if-nez p1, :cond_b

    .line 4377
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->sendTaskAppeared()V

    :cond_b
    return-void
.end method

.method public setDisablePip(Z)V
    .registers 2

    .line 4687
    iput-boolean p1, p0, Lcom/android/server/wm/Task;->mDisablePip:Z

    return-void
.end method

.method public setDisallowOverrideBoundsForChildren(Z)I
    .registers 4

    .line 6521
    iget-boolean v0, p0, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    const/4 v1, 0x0

    if-nez v0, :cond_d

    .line 6522
    const-string p0, "ActivityTaskManager"

    const-string p1, "Can only disable child bounds override on tasks created by organizer"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 6525
    :cond_d
    iput-boolean p1, p0, Lcom/android/server/wm/Task;->mDisallowOverrideBoundsForChildren:Z

    const/4 v0, 0x1

    .line 6527
    new-array v0, v0, [I

    if-eqz p1, :cond_1c

    .line 6529
    new-instance p1, Lcom/android/server/wm/Task$$ExternalSyntheticLambda35;

    invoke-direct {p1, p0, v0}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda35;-><init>(Lcom/android/server/wm/Task;[I)V

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->forAllTasks(Ljava/util/function/Consumer;)V

    .line 6536
    :cond_1c
    aget p0, v0, v1

    return p0
.end method

.method public setDragResizing(Z)V
    .registers 3

    .line 3038
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mDragResizing:Z

    if-eq v0, p1, :cond_34

    if-eqz p1, :cond_2f

    .line 3041
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->canResizeTask()Z

    move-result v0

    if-nez v0, :cond_2f

    .line 3042
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Drag resize isn\'t allowed for root task id="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootTaskId()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ActivityTaskManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3045
    :cond_2f
    iput-boolean p1, p0, Lcom/android/server/wm/Task;->mDragResizing:Z

    .line 3046
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->resetDragResizingChangeReported()V

    :cond_34
    return-void
.end method

.method public setExcludeLayersFromTaskSnapshot([Landroid/view/SurfaceControl;)V
    .registers 5

    .line 7071
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->clearExcludeLayersFromTaskSnapshot()V

    .line 7072
    array-length v0, p1

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_1a

    aget-object v2, p1, v1

    .line 7073
    invoke-virtual {v2}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v2

    if-eqz v2, :cond_12

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 7074
    :cond_12
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Invalid exclude layer from snapshot"

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 7077
    :cond_1a
    iput-object p1, p0, Lcom/android/server/wm/Task;->mExcludeLayersFromTaskSnapshot:[Landroid/view/SurfaceControl;

    return-void
.end method

.method public setForceExcludedFromRecents(Z)V
    .registers 2

    .line 4658
    iput-boolean p1, p0, Lcom/android/server/wm/Task;->mForceExcludedFromRecents:Z

    return-void
.end method

.method public setForceHidden(IZ)Z
    .registers 5

    .line 4588
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->isForceHidden()Z

    move-result v0

    .line 4589
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v1

    .line 4590
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/TaskFragment;->setForceHidden(IZ)Z

    move-result p1

    if-nez p1, :cond_10

    const/4 p0, 0x0

    return p0

    .line 4593
    :cond_10
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->isForceHidden()Z

    move-result p1

    if-eq v0, p1, :cond_2a

    .line 4596
    const-string p2, "setForceHidden"

    if-eqz v1, :cond_21

    if-eqz p1, :cond_21

    const/4 p1, 0x0

    .line 4598
    invoke-virtual {p0, p2, p1}, Lcom/android/server/wm/Task;->moveToBack(Ljava/lang/String;Lcom/android/server/wm/Task;)V

    goto :goto_2a

    .line 4599
    :cond_21
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isAlwaysOnTop()Z

    move-result p1

    if-eqz p1, :cond_2a

    .line 4601
    invoke-virtual {p0, p2}, Lcom/android/server/wm/Task;->moveToFront(Ljava/lang/String;)V

    :cond_2a
    :goto_2a
    const/4 p0, 0x1

    return p0
.end method

.method public setForceShowForAllUsers(Z)V
    .registers 2

    .line 3074
    iput-boolean p1, p0, Lcom/android/server/wm/Task;->mForceShowForAllUsers:Z

    return-void
.end method

.method public setHasBeenVisible(Z)V
    .registers 3

    .line 4352
    iput-boolean p1, p0, Lcom/android/server/wm/Task;->mHasBeenVisible:Z

    if-nez p1, :cond_5

    goto :goto_1e

    .line 4356
    :cond_5
    iget-boolean p1, p0, Lcom/android/server/wm/Task;->mDeferTaskAppear:Z

    if-nez p1, :cond_c

    .line 4357
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->sendTaskAppeared()V

    .line 4359
    :cond_c
    :goto_c
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object p0

    if-eqz p0, :cond_1e

    .line 4360
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object p1

    if-nez p1, :cond_19

    goto :goto_1e

    :cond_19
    const/4 v0, 0x1

    .line 4364
    invoke-virtual {p1, v0}, Lcom/android/server/wm/Task;->setHasBeenVisible(Z)V

    goto :goto_c

    :cond_1e
    :goto_1e
    return-void
.end method

.method public setInitialBoundsIfNeeded()V
    .registers 2

    .line 2495
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/Task;->persistTaskBounds(Landroid/app/WindowConfiguration;)Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 2498
    iget-object v0, p0, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    :cond_19
    return-void
.end method

.method public setInitialSurfaceControlProperties(Landroid/view/SurfaceControl$Builder;)V
    .registers 5

    .line 3127
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Builder;->setEffectLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    const/4 v1, 0x3

    iget v2, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Builder;->setMetadata(II)Landroid/view/SurfaceControl$Builder;

    .line 3128
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->setInitialSurfaceControlProperties(Landroid/view/SurfaceControl$Builder;)V

    .line 3129
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isSecure()Z

    move-result p0

    invoke-virtual {p1, v0, p0}, Landroid/view/SurfaceControl$Transaction;->setSecure(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    return-void
.end method

.method public final setIntent(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V
    .registers 13

    .line 987
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v0

    if-nez v0, :cond_8

    goto/16 :goto_14e

    .line 989
    :cond_8
    iget v0, p2, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v0, v0, 0x1000

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_12

    move v0, v1

    goto :goto_13

    :cond_12
    move v0, v2

    :goto_13
    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mNeverRelinquishIdentity:Z

    .line 990
    iget-object v0, p2, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    .line 991
    iget-object v3, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    if-nez v3, :cond_23

    .line 995
    iput-object v0, p0, Lcom/android/server/wm/Task;->rootAffinity:Ljava/lang/String;

    .line 996
    iget-object v0, p2, Landroid/content/pm/ActivityInfo;->requiredDisplayCategory:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wm/Task;->mRequiredDisplayCategory:Ljava/lang/String;

    .line 998
    :cond_23
    iget-object v0, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v3, p0, Lcom/android/server/wm/Task;->effectiveUid:I

    .line 999
    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mIsEffectivelySystemApp:Z

    .line 1001
    iget-object v0, p2, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    const/4 v3, 0x0

    if-nez v0, :cond_79

    if-eqz p1, :cond_4e

    .line 1006
    invoke-virtual {p1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_42

    invoke-virtual {p1}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_4e

    .line 1007
    :cond_42
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1008
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setSelector(Landroid/content/Intent;)V

    .line 1009
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    move-object p1, v0

    .line 1012
    :cond_4e
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_TASKS_enabled:[Z

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_6a

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v6, -0x777ad978351fc36fL    # -1.281134414677598E-267

    filled-new-array {v0, v4}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v5, v6, v7, v2, v0}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 1013
    :cond_6a
    iput-object p1, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    if-eqz p1, :cond_73

    .line 1014
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    goto :goto_74

    :cond_73
    move-object p1, v3

    :goto_74
    iput-object p1, p0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    .line 1015
    iput-object v3, p0, Lcom/android/server/wm/Task;->origActivity:Landroid/content/ComponentName;

    goto :goto_c5

    .line 1017
    :cond_79
    new-instance v0, Landroid/content/ComponentName;

    iget-object v4, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v5, p2, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    invoke-direct {v0, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_b6

    .line 1020
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1021
    invoke-virtual {v4, v3}, Landroid/content/Intent;->setSelector(Landroid/content/Intent;)V

    .line 1022
    invoke-virtual {v4, v3}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 1023
    sget-object v5, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_TASKS_enabled:[Z

    aget-boolean v5, v5, v2

    if-eqz v5, :cond_ab

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v8, -0x7f0d1f88dbf3c496L

    filled-new-array {v5, v6}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v7, v8, v9, v2, v5}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 1024
    :cond_ab
    iput-object v4, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    .line 1025
    iput-object v0, p0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    .line 1026
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/Task;->origActivity:Landroid/content/ComponentName;

    goto :goto_c5

    .line 1028
    :cond_b6
    iput-object v3, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    .line 1029
    iput-object v0, p0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    .line 1030
    new-instance p1, Landroid/content/ComponentName;

    iget-object v0, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v4, p2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {p1, v0, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/wm/Task;->origActivity:Landroid/content/ComponentName;

    .line 1034
    :goto_c5
    iget-object p1, p2, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    if-nez p1, :cond_cb

    move-object p1, v3

    goto :goto_cd

    :cond_cb
    iget-object p1, p1, Landroid/content/pm/ActivityInfo$WindowLayout;->windowLayoutAffinity:Ljava/lang/String;

    :goto_cd
    iput-object p1, p0, Lcom/android/server/wm/Task;->mWindowLayoutAffinity:Ljava/lang/String;

    .line 1036
    iget-object p1, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    if-nez p1, :cond_d5

    move p1, v2

    goto :goto_d9

    :cond_d5
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result p1

    :goto_d9
    const/high16 v0, 0x200000

    and-int/2addr v0, p1

    if-eqz v0, :cond_e0

    .line 1040
    iput-boolean v1, p0, Lcom/android/server/wm/Task;->rootWasReset:Z

    .line 1042
    :cond_e0
    iget-object v0, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/Task;->mUserId:I

    .line 1043
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 1044
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "user_setup_complete"

    iget v5, p0, Lcom/android/server/wm/Task;->mUserId:I

    .line 1043
    invoke-static {v0, v4, v2, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_fe

    move v0, v1

    goto :goto_ff

    :cond_fe
    move v0, v2

    :goto_ff
    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mUserSetupComplete:Z

    .line 1045
    iget v0, p2, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_10a

    .line 1047
    iput-boolean v1, p0, Lcom/android/server/wm/Task;->autoRemoveRecents:Z

    goto :goto_11e

    :cond_10a
    const v0, 0x82000

    and-int/2addr p1, v0

    const/high16 v0, 0x80000

    if-ne p1, v0, :cond_11c

    .line 1053
    iget p1, p2, Landroid/content/pm/ActivityInfo;->documentLaunchMode:I

    if-eqz p1, :cond_119

    .line 1054
    iput-boolean v2, p0, Lcom/android/server/wm/Task;->autoRemoveRecents:Z

    goto :goto_11e

    .line 1056
    :cond_119
    iput-boolean v1, p0, Lcom/android/server/wm/Task;->autoRemoveRecents:Z

    goto :goto_11e

    .line 1059
    :cond_11c
    iput-boolean v2, p0, Lcom/android/server/wm/Task;->autoRemoveRecents:Z

    .line 1062
    :goto_11e
    iget p1, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    iget v0, p2, Landroid/content/pm/ActivityInfo;->resizeMode:I

    if-eq p1, v0, :cond_127

    .line 1063
    iput v0, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    move v2, v1

    .line 1066
    :cond_127
    invoke-virtual {p0, p2}, Lcom/android/server/wm/Task;->setMinDimensions(Landroid/content/pm/ActivityInfo;)Z

    move-result p1

    if-eqz p1, :cond_12e

    goto :goto_12f

    :cond_12e
    move v1, v2

    :goto_12f
    if-eqz v1, :cond_134

    .line 1070
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->updateTaskDescription()V

    .line 1072
    :cond_134
    invoke-virtual {p2}, Landroid/content/pm/ActivityInfo;->supportsPictureInPicture()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/wm/Task;->mSupportsPictureInPicture:Z

    .line 1073
    iput-object v3, p0, Lcom/android/server/wm/Task;->stringName:Ljava/lang/String;

    .line 1076
    iget-boolean p1, p0, Lcom/android/server/wm/Task;->inRecents:Z

    if-eqz p1, :cond_14e

    .line 1077
    iget-object p1, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {p1, p0}, Lcom/android/server/wm/RecentTasks;->remove(Lcom/android/server/wm/Task;)V

    .line 1078
    iget-object p1, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {p1, p0}, Lcom/android/server/wm/RecentTasks;->add(Lcom/android/server/wm/Task;)V

    :cond_14e
    :goto_14e
    return-void
.end method

.method public setIntent(Lcom/android/server/wm/ActivityRecord;)V
    .registers 3

    const/4 v0, 0x0

    .line 956
    invoke-virtual {p0, p1, v0, v0}, Lcom/android/server/wm/Task;->setIntent(Lcom/android/server/wm/ActivityRecord;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V

    return-void
.end method

.method public setIntent(Lcom/android/server/wm/ActivityRecord;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V
    .registers 7

    .line 968
    iget-object v0, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    if-nez v0, :cond_5

    goto :goto_1f

    .line 970
    :cond_5
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mNeverRelinquishIdentity:Z

    if-nez v0, :cond_3b

    if-eqz p3, :cond_d

    move-object v0, p3

    goto :goto_f

    .line 971
    :cond_d
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 972
    :goto_f
    iget v1, p0, Lcom/android/server/wm/Task;->effectiveUid:I

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_1f

    iget-boolean v2, p0, Lcom/android/server/wm/Task;->mIsEffectivelySystemApp:Z

    if-nez v2, :cond_1f

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v1, v0, :cond_3b

    .line 976
    :cond_1f
    :goto_1f
    iget v0, p1, Lcom/android/server/wm/ActivityRecord;->launchedFromUid:I

    iput v0, p0, Lcom/android/server/wm/Task;->mCallingUid:I

    .line 977
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wm/Task;->mCallingPackage:Ljava/lang/String;

    .line 978
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->launchedFromFeatureId:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wm/Task;->mCallingFeatureId:Ljava/lang/String;

    if-eqz p2, :cond_2e

    goto :goto_30

    .line 979
    :cond_2e
    iget-object p2, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    :goto_30
    if-eqz p3, :cond_33

    goto :goto_35

    :cond_33
    iget-object p3, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    :goto_35
    invoke-virtual {p0, p2, p3}, Lcom/android/server/wm/Task;->setIntent(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V

    .line 980
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->updateForceResizeOverrides(Lcom/android/server/wm/ActivityRecord;)V

    .line 982
    :cond_3b
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->setLockTaskAuth(Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public setLastNonFullscreenBounds(Landroid/graphics/Rect;)V
    .registers 3

    .line 2086
    iget-object v0, p0, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    if-nez v0, :cond_c

    .line 2087
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    return-void

    .line 2089
    :cond_c
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setLastRecentsAnimationTransaction(Landroid/window/PictureInPictureSurfaceTransaction;Landroid/view/SurfaceControl;)V
    .registers 4

    .line 6374
    new-instance v0, Landroid/window/PictureInPictureSurfaceTransaction;

    invoke-direct {v0, p1}, Landroid/window/PictureInPictureSurfaceTransaction;-><init>(Landroid/window/PictureInPictureSurfaceTransaction;)V

    iput-object v0, p0, Lcom/android/server/wm/Task;->mLastRecentsAnimationTransaction:Landroid/window/PictureInPictureSurfaceTransaction;

    .line 6375
    iput-object p2, p0, Lcom/android/server/wm/Task;->mLastRecentsAnimationOverlay:Landroid/view/SurfaceControl;

    return-void
.end method

.method public setLaunchAdjacentDisabled(Z)V
    .registers 2

    .line 6471
    iput-boolean p1, p0, Lcom/android/server/wm/Task;->mLaunchAdjacentDisabled:Z

    return-void
.end method

.method public setLockTaskAuth()V
    .registers 2

    .line 1883
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->setLockTaskAuth(Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public final setLockTaskAuth(Lcom/android/server/wm/ActivityRecord;)V
    .registers 6

    .line 1887
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lcom/android/server/wm/LockTaskController;->getLockTaskAuth(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)I

    move-result p1

    iput p1, p0, Lcom/android/server/wm/Task;->mLockTaskAuth:I

    .line 1888
    sget-object p1, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_LOCKTASK_enabled:[Z

    const/4 v0, 0x1

    aget-boolean p1, p1, v0

    if-eqz p1, :cond_2e

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->lockTaskAuthToString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_LOCKTASK:Lcom/android/internal/protolog/WmProtoLogGroups;

    const/4 v1, 0x0

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-wide v2, 0x8a86e5b51736dcL

    invoke-static {v0, v2, v3, v1, p0}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_2e
    return-void
.end method

.method public setMainWindowSizeChangeTransaction(Landroid/view/SurfaceControl$Transaction;)V
    .registers 3

    .line 4552
    invoke-virtual {p0, p1, p0}, Lcom/android/server/wm/Task;->setMainWindowSizeChangeTransaction(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/Task;)V

    .line 4553
    iget-object p1, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean p1, p1, Lcom/android/server/wm/WindowManagerService;->mAlwaysSeqId:Z

    if-nez p1, :cond_12

    .line 4554
    new-instance p1, Lcom/android/server/wm/Task$$ExternalSyntheticLambda17;

    invoke-direct {p1}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda17;-><init>()V

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    :cond_12
    return-void
.end method

.method public final setMainWindowSizeChangeTransaction(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/Task;)V
    .registers 4

    .line 4560
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 4561
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    if-nez v0, :cond_f

    return-void

    :cond_f
    if-eq v0, p0, :cond_15

    .line 4566
    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/Task;->setMainWindowSizeChangeTransaction(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/Task;)V

    return-void

    .line 4569
    :cond_15
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopVisibleAppMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object p0

    if-eqz p0, :cond_27

    const/4 p2, 0x1

    .line 4571
    iput-boolean p2, p0, Lcom/android/server/wm/WindowState;->mIsSurfacePositionPaused:Z

    .line 4572
    new-instance p2, Lcom/android/server/wm/Task$$ExternalSyntheticLambda44;

    invoke-direct {p2, p0, p1}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda44;-><init>(Lcom/android/server/wm/WindowState;Landroid/view/SurfaceControl$Transaction;)V

    invoke-virtual {p0, p2}, Lcom/android/server/wm/WindowState;->applyWithNextDraw(Ljava/util/function/Consumer;)V

    return-void

    .line 4578
    :cond_27
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void
.end method

.method public setMinDimensions(Landroid/content/pm/ActivityInfo;)Z
    .registers 4

    if-eqz p1, :cond_b

    .line 1087
    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    if-eqz p1, :cond_b

    .line 1088
    iget v0, p1, Landroid/content/pm/ActivityInfo$WindowLayout;->minWidth:I

    .line 1089
    iget p1, p1, Landroid/content/pm/ActivityInfo$WindowLayout;->minHeight:I

    goto :goto_d

    :cond_b
    const/4 v0, -0x1

    move p1, v0

    .line 1095
    :goto_d
    iget v1, p0, Lcom/android/server/wm/TaskFragment;->mMinWidth:I

    if-ne v1, v0, :cond_17

    iget v1, p0, Lcom/android/server/wm/TaskFragment;->mMinHeight:I

    if-ne v1, p1, :cond_17

    const/4 p0, 0x0

    return p0

    .line 1098
    :cond_17
    iput v0, p0, Lcom/android/server/wm/TaskFragment;->mMinWidth:I

    .line 1099
    iput p1, p0, Lcom/android/server/wm/TaskFragment;->mMinHeight:I

    .line 1101
    new-instance v1, Lcom/android/server/wm/Task$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0, p1}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda1;-><init>(II)V

    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowContainer;->forAllTaskFragments(Ljava/util/function/Consumer;)V

    const/4 p0, 0x1

    return p0
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    .line 725
    iput-object p1, p0, Lcom/android/server/wm/Task;->mName:Ljava/lang/String;

    return-void
.end method

.method public setNextAffiliate(Lcom/android/server/wm/Task;)V
    .registers 2

    .line 1149
    iput-object p1, p0, Lcom/android/server/wm/Task;->mNextAffiliate:Lcom/android/server/wm/Task;

    if-nez p1, :cond_6

    const/4 p1, -0x1

    goto :goto_8

    .line 1150
    :cond_6
    iget p1, p1, Lcom/android/server/wm/Task;->mTaskId:I

    :goto_8
    iput p1, p0, Lcom/android/server/wm/Task;->mNextAffiliateTaskId:I

    return-void
.end method

.method public setPrevAffiliate(Lcom/android/server/wm/Task;)V
    .registers 2

    .line 1144
    iput-object p1, p0, Lcom/android/server/wm/Task;->mPrevAffiliate:Lcom/android/server/wm/Task;

    if-nez p1, :cond_6

    const/4 p1, -0x1

    goto :goto_8

    .line 1145
    :cond_6
    iget p1, p1, Lcom/android/server/wm/Task;->mTaskId:I

    :goto_8
    iput p1, p0, Lcom/android/server/wm/Task;->mPrevAffiliateTaskId:I

    return-void
.end method

.method public setReparentLeafTaskIfRelaunch(Z)V
    .registers 3

    .line 6458
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isOrganized()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 6459
    iput-boolean p1, p0, Lcom/android/server/wm/Task;->mReparentLeafTaskIfRelaunch:Z

    :cond_8
    return-void
.end method

.method public setResizeMode(I)V
    .registers 3

    .line 795
    iget v0, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    if-ne v0, p1, :cond_5

    return-void

    .line 798
    :cond_5
    iput p1, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    .line 799
    iget-object p1, p0, Lcom/android/server/wm/TaskFragment;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p1}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible()V

    .line 800
    iget-object p1, p0, Lcom/android/server/wm/TaskFragment;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p1}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities()Z

    .line 801
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->updateTaskDescription()V

    return-void
.end method

.method public setRootProcess(Lcom/android/server/wm/WindowProcessController;)V
    .registers 4

    .line 2548
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->clearRootProcess()V

    .line 2549
    iget-object v0, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_15

    .line 2550
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x800000

    and-int/2addr v0, v1

    if-nez v0, :cond_15

    .line 2551
    iput-object p1, p0, Lcom/android/server/wm/Task;->mRootProcess:Lcom/android/server/wm/WindowProcessController;

    .line 2552
    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowProcessController;->addRecentTask(Lcom/android/server/wm/Task;)V

    :cond_15
    return-void
.end method

.method public setRootTaskWindowingMode(I)V
    .registers 5

    .line 4742
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v0

    if-nez v0, :cond_25

    .line 4743
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Trying to set root-task windowing-mode on a non-root-task: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    const-string v2, "ActivityTaskManager"

    invoke-static {v2, v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4745
    invoke-super {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->setWindowingMode(I)V

    return-void

    :cond_25
    const/4 v0, 0x0

    .line 4748
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/Task;->setWindowingModeInner(IZ)V

    return-void
.end method

.method public setSecure(Z)V
    .registers 4

    .line 7059
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1, p1}, Landroid/view/SurfaceControl$Transaction;->setSecure(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    .line 7060
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->scheduleAnimation()V

    return-void
.end method

.method public setSelfMovable(I)V
    .registers 2

    .line 6503
    iput p1, p0, Lcom/android/server/wm/Task;->mSelfMovable:I

    return-void
.end method

.method public setSurfaceControl(Landroid/view/SurfaceControl;)V
    .registers 2

    .line 4489
    invoke-super {p0, p1}, Lcom/android/server/wm/TaskFragment;->setSurfaceControl(Landroid/view/SurfaceControl;)V

    .line 4492
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->sendTaskAppeared()V

    return-void
.end method

.method public setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V
    .registers 2

    .line 3197
    iput-object p1, p0, Lcom/android/server/wm/Task;->mTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    return-void
.end method

.method public setTaskOrganizer(Landroid/window/ITaskOrganizer;)Z
    .registers 3

    const/4 v0, 0x0

    .line 4420
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/Task;->setTaskOrganizer(Landroid/window/ITaskOrganizer;Z)Z

    move-result p0

    return p0
.end method

.method public setTaskOrganizer(Landroid/window/ITaskOrganizer;Z)Z
    .registers 5

    .line 4425
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    const/4 v1, 0x0

    if-ne v0, p1, :cond_6

    return v1

    .line 4432
    :cond_6
    iput-object p1, p0, Lcom/android/server/wm/Task;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    .line 4434
    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->sendTaskVanished(Landroid/window/ITaskOrganizer;)V

    .line 4436
    iget-object p1, p0, Lcom/android/server/wm/Task;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    if-eqz p1, :cond_15

    if-nez p2, :cond_2b

    .line 4438
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->sendTaskAppeared()V

    goto :goto_2b

    .line 4442
    :cond_15
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p1

    if-eqz p1, :cond_1e

    .line 4444
    invoke-virtual {p1, p0}, Lcom/android/server/wm/TaskDisplayArea;->removeLaunchRootTask(Lcom/android/server/wm/Task;)V

    :cond_1e
    const/4 p1, 0x2

    .line 4446
    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/Task;->setForceHidden(IZ)Z

    .line 4447
    iget-boolean p1, p0, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    if-eqz p1, :cond_2b

    .line 4448
    const-string p1, "setTaskOrganizer"

    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->removeImmediately(Ljava/lang/String;)V

    :cond_2b
    :goto_2b
    const/4 p0, 0x1

    return p0
.end method

.method public setTaskToAffiliateWith(Lcom/android/server/wm/Task;)V
    .registers 6

    .line 1409
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->closeRecentsChain()V

    .line 1410
    iget v0, p1, Lcom/android/server/wm/Task;->mAffiliatedTaskId:I

    iput v0, p0, Lcom/android/server/wm/Task;->mAffiliatedTaskId:I

    .line 1412
    :goto_7
    iget-object v0, p1, Lcom/android/server/wm/Task;->mNextAffiliate:Lcom/android/server/wm/Task;

    const/4 v1, 0x0

    if-eqz v0, :cond_49

    .line 1414
    iget v2, v0, Lcom/android/server/wm/Task;->mAffiliatedTaskId:I

    iget v3, p0, Lcom/android/server/wm/Task;->mAffiliatedTaskId:I

    if-eq v2, v3, :cond_47

    .line 1415
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setTaskToAffiliateWith: nextRecents="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " affilTaskId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/server/wm/Task;->mAffiliatedTaskId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " should be "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/wm/Task;->mAffiliatedTaskId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ActivityTaskManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1417
    iget-object v2, v0, Lcom/android/server/wm/Task;->mPrevAffiliate:Lcom/android/server/wm/Task;

    if-ne v2, p1, :cond_43

    .line 1418
    invoke-virtual {v0, v1}, Lcom/android/server/wm/Task;->setPrevAffiliate(Lcom/android/server/wm/Task;)V

    .line 1420
    :cond_43
    invoke-virtual {p1, v1}, Lcom/android/server/wm/Task;->setNextAffiliate(Lcom/android/server/wm/Task;)V

    goto :goto_49

    :cond_47
    move-object p1, v0

    goto :goto_7

    .line 1425
    :cond_49
    :goto_49
    invoke-virtual {p1, p0}, Lcom/android/server/wm/Task;->setNextAffiliate(Lcom/android/server/wm/Task;)V

    .line 1426
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->setPrevAffiliate(Lcom/android/server/wm/Task;)V

    .line 1427
    invoke-virtual {p0, v1}, Lcom/android/server/wm/Task;->setNextAffiliate(Lcom/android/server/wm/Task;)V

    return-void
.end method

.method public setTrimmableFromRecents(Z)V
    .registers 2

    .line 6464
    iput-boolean p1, p0, Lcom/android/server/wm/Task;->mIsTrimmableFromRecents:Z

    return-void
.end method

.method public setWindowingMode(I)V
    .registers 3

    .line 4725
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v0

    if-nez v0, :cond_d

    const/4 v0, -0x1

    .line 4726
    iput v0, p0, Lcom/android/server/wm/Task;->mMultiWindowRestoreWindowingMode:I

    .line 4727
    invoke-super {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->setWindowingMode(I)V

    return-void

    :cond_d
    const/4 v0, 0x0

    .line 4731
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/Task;->setWindowingModeInner(IZ)V

    return-void
.end method

.method public final setWindowingModeInner(IZ)V
    .registers 14

    .line 4755
    const-string v0, "movePinnedActivityToOriginalTask"

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    if-nez v1, :cond_10

    .line 4757
    const-string p0, "ActivityTaskManager"

    const-string p1, "taskDisplayArea is null, bail early"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4760
    :cond_10
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v2

    .line 4761
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-nez p2, :cond_23

    .line 4768
    invoke-virtual {v1, p1, v5, v3}, Lcom/android/server/wm/TaskDisplayArea;->isValidWindowingMode(ILcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)Z

    move-result v6

    if-nez v6, :cond_23

    move p1, v4

    :cond_23
    if-ne v2, p1, :cond_2f

    .line 4778
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p0, p1}, Landroid/app/WindowConfiguration;->setWindowingMode(I)V

    return-void

    :cond_2f
    const/4 v6, -0x1

    .line 4783
    iput v6, p0, Lcom/android/server/wm/Task;->mMultiWindowRestoreWindowingMode:I

    .line 4785
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v6

    const/4 v7, 0x1

    if-nez p1, :cond_46

    .line 4792
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v8

    if-eqz v8, :cond_44

    .line 4793
    invoke-virtual {v8}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v8

    goto :goto_47

    :cond_44
    move v8, v7

    goto :goto_47

    :cond_46
    move v8, p1

    :goto_47
    const/4 v9, 0x2

    if-ne v2, v9, :cond_52

    .line 4800
    invoke-virtual {p0, v7}, Lcom/android/server/wm/TaskFragment;->setCanAffectSystemUiFlags(Z)V

    .line 4801
    iget-object v10, p0, Lcom/android/server/wm/TaskFragment;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v10, p0, v5}, Lcom/android/server/wm/RootWindowContainer;->notifyActivityPipModeChanged(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;)V

    :cond_52
    if-ne v8, v9, :cond_61

    .line 4804
    invoke-virtual {v1}, Lcom/android/server/wm/TaskDisplayArea;->getRootPinnedTask()Lcom/android/server/wm/Task;

    move-result-object v5

    if-eqz v5, :cond_61

    .line 4806
    invoke-virtual {v1}, Lcom/android/server/wm/TaskDisplayArea;->getRootPinnedTask()Lcom/android/server/wm/Task;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/Task;->dismissPip()V

    :cond_61
    if-eq v8, v7, :cond_82

    if-eqz v6, :cond_82

    .line 4810
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->isNoDisplay()Z

    move-result v5

    if-nez v5, :cond_82

    .line 4811
    invoke-virtual {v6, v8}, Lcom/android/server/wm/ActivityRecord;->canForceResizeNonResizable(I)Z

    move-result v5

    if-eqz v5, :cond_82

    .line 4814
    iget-object v5, v6, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 4815
    iget-object v8, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v8}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v8

    iget v3, v3, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v8, v3, v7, v5}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyActivityForcedResizable(IILjava/lang/String;)V

    .line 4819
    :cond_82
    iget-object v3, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    if-eqz v6, :cond_94

    .line 4822
    :try_start_89
    iget-object v3, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_94

    :catchall_91
    move-exception p1

    goto/16 :goto_16b

    .line 4826
    :cond_94
    :goto_94
    invoke-static {}, Lcom/android/server/wm/ActivityTaskManagerService;->isPip2ExperimentEnabled()Z

    move-result v3

    if-nez v3, :cond_9d

    .line 4828
    invoke-super {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->setWindowingMode(I)V

    :cond_9d
    if-ne v2, v9, :cond_146

    if-eqz v6, :cond_146

    .line 4840
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->getLastParentBeforePip()Lcom/android/server/wm/Task;

    move-result-object v2

    if-eqz v2, :cond_11c

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->isForceHidden()Z

    move-result v2

    if-nez v2, :cond_11c

    .line 4841
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->getLastParentBeforePip()Lcom/android/server/wm/Task;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/TaskFragment;->isAttached()Z

    move-result v2

    if-eqz v2, :cond_11c

    .line 4844
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v2, v6}, Lcom/android/server/wm/TransitionController;->collect(Lcom/android/server/wm/WindowContainer;)V

    .line 4846
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->getLastParentBeforePip()Lcom/android/server/wm/Task;

    move-result-object v2

    if-eqz v3, :cond_c7

    .line 4850
    iget-object v5, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v5, v2}, Lcom/android/server/wm/TransitionController;->collect(Lcom/android/server/wm/WindowContainer;)V

    .line 4854
    :cond_c7
    invoke-virtual {v6}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget-object v5, v5, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 4855
    invoke-virtual {v5, v4}, Landroid/app/WindowConfiguration;->setWindowingMode(I)V

    .line 4857
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v4

    .line 4856
    invoke-virtual {v6, v2, v4, v0}, Lcom/android/server/wm/ActivityRecord;->reparent(Lcom/android/server/wm/TaskFragment;ILjava/lang/String;)V

    .line 4859
    invoke-virtual {v6}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    if-eqz v4, :cond_ea

    .line 4860
    invoke-virtual {v4, v6}, Lcom/android/server/wm/DisplayContent;->isFixedRotationLaunchingApp(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v4

    if-eqz v4, :cond_ea

    .line 4864
    invoke-virtual {v6}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v4

    .line 4863
    invoke-virtual {v6, v4}, Lcom/android/server/wm/WindowToken;->getOrCreateFixedRotationLeash(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl;

    .line 4866
    :cond_ea
    invoke-virtual {v2, v0}, Lcom/android/server/wm/Task;->moveToFront(Ljava/lang/String;)V

    .line 4871
    iget v0, v2, Lcom/android/server/wm/WindowContainer;->mSyncState:I

    if-nez v0, :cond_11c

    .line 4872
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_100

    .line 4873
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v2, v2, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 4878
    :cond_100
    iget-object v0, v6, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v0, v6}, Lcom/android/server/wm/TransitionController;->inFinishingTransition(Lcom/android/server/wm/WindowContainer;)Z

    move-result v0

    if-eqz v0, :cond_11c

    .line 4880
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayArea;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    .line 4881
    invoke-static {v1, v0}, Lcom/android/server/wm/Transition;->assignLayersForStartTransaction(Lcom/android/server/wm/WindowContainer;Landroid/view/SurfaceControl$Transaction;)V

    .line 4882
    invoke-virtual {v6}, Lcom/android/server/wm/WindowToken;->getFixedRotationLeash()Landroid/view/SurfaceControl;

    move-result-object v1

    if-eqz v1, :cond_11c

    .line 4884
    invoke-virtual {v6}, Lcom/android/server/wm/WindowContainer;->getLastLayer()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    :cond_11c
    if-eqz v3, :cond_121

    .line 4890
    invoke-super {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->setWindowingMode(I)V

    .line 4894
    :cond_121
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->shouldBeVisible()Z

    move-result p1

    if-eqz p1, :cond_14b

    .line 4895
    iget-object p1, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityTaskManagerService;->resumeAppSwitches()V

    if-nez v3, :cond_14b

    .line 4899
    iget-object p1, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mLastResumedActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz p1, :cond_14b

    .line 4900
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_14b

    .line 4902
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/server/wm/TaskSnapshotController;->recordSnapshot(Lcom/android/server/wm/Task;)V

    goto :goto_14b

    :cond_146
    if-eqz v3, :cond_14b

    .line 4911
    invoke-super {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->setWindowingMode(I)V
    :try_end_14b
    .catchall {:try_start_89 .. :try_end_14b} :catchall_91

    :cond_14b
    :goto_14b
    if-eqz p2, :cond_153

    .line 4919
    iget-object p0, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    return-void

    :cond_153
    iget-object p1, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 4922
    iget-object p1, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityTaskSupervisor;->isRootVisibilityUpdateDeferred()Z

    move-result p1

    if-nez p1, :cond_16a

    .line 4923
    iget-object p1, p0, Lcom/android/server/wm/TaskFragment;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p1}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible()V

    .line 4924
    iget-object p0, p0, Lcom/android/server/wm/TaskFragment;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities()Z

    :cond_16a
    return-void

    .line 4919
    :goto_16b
    iget-object p0, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 4920
    throw p1
.end method

.method public final shouldAutoRemoveFromRecents(Lcom/android/server/wm/TaskFragment;)Z
    .registers 3

    .line 1685
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->autoRemoveRecents:Z

    if-nez v0, :cond_25

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->hasChild()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getHasBeenVisible()Z

    move-result v0

    if-eqz v0, :cond_25

    :cond_10
    if-eqz p1, :cond_18

    .line 1686
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->isEmbedded()Z

    move-result p1

    if-nez p1, :cond_25

    :cond_18
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz p0, :cond_23

    .line 1687
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->canShowTasksInHostDeviceRecents()Z

    move-result p0

    if-nez p0, :cond_23

    goto :goto_25

    :cond_23
    const/4 p0, 0x0

    return p0

    :cond_25
    :goto_25
    const/4 p0, 0x1

    return p0
.end method

.method public shouldIgnoreInput()Z
    .registers 2

    .line 6426
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mHasLeanbackFeature:Z

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 6427
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isFocusedRootTaskOnDisplay()Z

    move-result p0

    if-nez p0, :cond_14

    const/4 p0, 0x1

    return p0

    :cond_14
    const/4 p0, 0x0

    return p0
.end method

.method public shouldPlaceDecorSurfaceBelowContainer(Lcom/android/server/wm/WindowContainer;)Z
    .registers 5

    .line 3712
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_16

    .line 3713
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    iget p0, p0, Lcom/android/server/wm/Task;->effectiveUid:I

    invoke-virtual {v0, p0}, Lcom/android/server/wm/ActivityRecord;->isUid(I)Z

    move-result p0

    if-eqz p0, :cond_16

    move p0, v2

    goto :goto_17

    :cond_16
    move p0, v1

    .line 3715
    :goto_17
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    if-eqz v0, :cond_33

    .line 3716
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->isEmbedded()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 3717
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->isAllowedToBeEmbeddedInTrustedMode()Z

    move-result p1

    if-eqz p1, :cond_33

    move p1, v2

    goto :goto_34

    :cond_33
    move p1, v1

    :goto_34
    if-nez p0, :cond_39

    if-nez p1, :cond_39

    return v2

    :cond_39
    return v1
.end method

.method public shouldReparentOnDisplayRemoval()Z
    .registers 4

    .line 4331
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeStandardOrUndefined()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 4332
    :cond_8
    sget-object v0, Landroid/window/DesktopExperienceFlags;->ENABLE_DISPLAY_DISCONNECT_INTERACTION:Landroid/window/DesktopExperienceFlags;

    invoke-virtual {v0}, Landroid/window/DesktopExperienceFlags;->isTrue()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_15

    .line 4333
    iget-boolean p0, p0, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    xor-int/2addr p0, v2

    return p0

    .line 4336
    :cond_15
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mReparentOnDisplayRemoval:Z

    if-nez v0, :cond_1f

    iget-boolean p0, p0, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    if-nez p0, :cond_1e

    goto :goto_1f

    :cond_1e
    return v1

    :cond_1f
    :goto_1f
    return v2
.end method

.method public final shouldStartChangeTransition(ILandroid/graphics/Rect;)Z
    .registers 7

    .line 2398
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    if-eqz v0, :cond_11

    :cond_b
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->canStartChangeTransition()Z

    move-result v0

    if-nez v0, :cond_12

    :cond_11
    return v1

    .line 2401
    :cond_12
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v0

    .line 2402
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v2, p0}, Lcom/android/server/wm/TransitionController;->inTransition(Lcom/android/server/wm/WindowContainer;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_42

    .line 2403
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    if-ne p1, v0, :cond_41

    .line 2404
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p1

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-ne p1, v0, :cond_41

    .line 2405
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    if-eq p1, p0, :cond_40

    goto :goto_41

    :cond_40
    return v1

    :cond_41
    :goto_41
    return v3

    :cond_42
    const/4 p0, 0x5

    if-ne p1, p0, :cond_47

    move p1, v3

    goto :goto_48

    :cond_47
    move p1, v1

    :goto_48
    if-ne v0, p0, :cond_4c

    move p0, v3

    goto :goto_4d

    :cond_4c
    move p0, v1

    :goto_4d
    if-eq p1, p0, :cond_50

    return v3

    :cond_50
    return v1
.end method

.method public shouldUpRecreateTaskLocked(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)Z
    .registers 6

    .line 5722
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v0

    invoke-static {p2, v0}, Lcom/android/server/wm/ActivityRecord;->computeTaskAffinity(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    .line 5723
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_69

    .line 5724
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1e

    goto :goto_69

    .line 5731
    :cond_1e
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p2

    .line 5732
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isRootOfTask()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_68

    invoke-virtual {p2}, Lcom/android/server/wm/Task;->getBaseIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_68

    .line 5733
    invoke-virtual {p2}, Lcom/android/server/wm/Task;->getBaseIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->isDocument()Z

    move-result v0

    if-eqz v0, :cond_68

    .line 5735
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inFrontOfStandardRootTask()Z

    move-result v0

    if-nez v0, :cond_40

    return v1

    .line 5740
    :cond_40
    invoke-virtual {p0, p2}, Lcom/android/server/wm/WindowContainer;->getTaskBelow(Lcom/android/server/wm/Task;)Lcom/android/server/wm/Task;

    move-result-object p0

    if-nez p0, :cond_5d

    .line 5742
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "shouldUpRecreateTask: task not in history for "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ActivityTaskManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 5745
    :cond_5d
    iget-object p1, p2, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_68

    return v1

    :cond_68
    return v2

    :cond_69
    :goto_69
    return v1
.end method

.method public showForAllUsers()Z
    .registers 3

    .line 3062
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return v1

    .line 3063
    :cond_a
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    if-eqz p0, :cond_16

    .line 3064
    iget-boolean p0, p0, Lcom/android/server/wm/ActivityRecord;->mShowForAllUsers:Z

    if-eqz p0, :cond_16

    const/4 p0, 0x1

    return p0

    :cond_16
    return v1
.end method

.method public showSurfaceOnCreation()Z
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public showToCurrentUser()Z
    .registers 2

    .line 3069
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mForceShowForAllUsers:Z

    if-nez v0, :cond_1b

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->showForAllUsers()Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 3070
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object p0

    iget p0, p0, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {v0, p0}, Lcom/android/server/wm/WindowManagerService;->isUserVisible(I)Z

    move-result p0

    if-eqz p0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 p0, 0x0

    return p0

    :cond_1b
    :goto_1b
    const/4 p0, 0x1

    return p0
.end method

.method public startActivityLocked(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;ZZLandroid/app/ActivityOptions;Lcom/android/server/wm/ActivityRecord;)V
    .registers 18

    move-object/from16 v0, p5

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_f

    .line 5410
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->getAvoidMoveToFront()Z

    move-result v3

    if-nez v3, :cond_d

    goto :goto_f

    :cond_d
    move v3, v2

    goto :goto_10

    :cond_f
    :goto_f
    move v3, v1

    .line 5411
    :goto_10
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v4

    if-eq v4, p0, :cond_1f

    .line 5412
    invoke-virtual {p0, v4}, Lcom/android/server/wm/WindowContainer;->hasChild(Lcom/android/server/wm/WindowContainer;)Z

    move-result v5

    if-eqz v5, :cond_1d

    goto :goto_1f

    :cond_1d
    move v5, v2

    goto :goto_20

    :cond_1f
    :goto_1f
    move v5, v1

    .line 5415
    :goto_20
    iget-boolean v6, p1, Lcom/android/server/wm/WindowContainer;->mLaunchTaskBehind:Z

    if-nez v6, :cond_2d

    if-eqz v3, :cond_2d

    if-eqz v5, :cond_2a

    if-eqz p3, :cond_2d

    .line 5419
    :cond_2a
    invoke-virtual {p0, v4}, Lcom/android/server/wm/Task;->positionChildAtTop(Lcom/android/server/wm/Task;)V

    :cond_2d
    if-nez p3, :cond_3b

    if-eqz v5, :cond_3b

    .line 5422
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->shouldBeVisible()Z

    move-result v5

    if-nez v5, :cond_3b

    .line 5423
    invoke-static {v0}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    return-void

    .line 5428
    :cond_3b
    sget-object v5, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_ADD_REMOVE_enabled:[Z

    const/4 v6, 0x2

    aget-boolean v5, v5, v6

    if-eqz v5, :cond_58

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_ADD_REMOVE:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v8, -0x46b022362a4c9a8L

    filled-new-array {v5, v6}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v7, v8, v9, v2, v5}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 5430
    :cond_58
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHomeOrRecents()Z

    move-result v5

    if-eqz v5, :cond_68

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wm/WindowContainer;->getActivityBelow(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    if-nez v5, :cond_68

    .line 5433
    invoke-static {v0}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    return-void

    :cond_68
    if-nez v3, :cond_6e

    .line 5440
    invoke-static {v0}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    return-void

    .line 5447
    :cond_6e
    iget-object v3, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    move-result v3

    const/high16 v5, 0x10000

    and-int/2addr v3, v5

    if-eqz v3, :cond_86

    .line 5448
    iget-object v3, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5449
    iget-object v3, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/TransitionController;->setNoAnimation(Lcom/android/server/wm/WindowContainer;)V

    goto :goto_8d

    .line 5451
    :cond_86
    iget-object v3, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :goto_8d
    const/4 v3, 0x0

    if-eqz p3, :cond_a1

    .line 5453
    iget-boolean v5, p1, Lcom/android/server/wm/WindowContainer;->mLaunchTaskBehind:Z

    if-nez v5, :cond_a1

    .line 5458
    invoke-static {}, Lcom/android/server/wm/ActivityTaskManagerService;->isPip2ExperimentEnabled()Z

    move-result v5

    if-nez v5, :cond_a1

    .line 5459
    invoke-static {p2}, Lcom/android/server/wm/Task;->findEnterPipOnTaskSwitchCandidate(Lcom/android/server/wm/Task;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p2

    .line 5460
    invoke-static {p2, v3, p1, v0}, Lcom/android/server/wm/Task;->enableEnterPipOnTaskSwitch(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)V

    :cond_a1
    if-eqz p3, :cond_b8

    .line 5470
    iget-object p2, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {p2}, Landroid/content/Intent;->getFlags()I

    move-result p2

    const/high16 v5, 0x200000

    and-int/2addr p2, v5

    if-eqz p2, :cond_c3

    .line 5471
    invoke-virtual {p0, p1, p1}, Lcom/android/server/wm/Task;->resetTaskIfNeeded(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    .line 5472
    invoke-virtual {p0, v3}, Lcom/android/server/wm/Task;->topRunningNonDelayedActivityLocked(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p2

    if-ne p2, p1, :cond_c1

    goto :goto_c3

    :cond_b8
    if-eqz v0, :cond_c3

    .line 5474
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->getAnimationType()I

    move-result p2

    const/4 v5, 0x5

    if-ne p2, v5, :cond_c3

    :cond_c1
    move p2, v2

    goto :goto_c4

    :cond_c3
    :goto_c3
    move p2, v1

    :goto_c4
    if-eqz v0, :cond_cd

    .line 5478
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->getDisableStartingWindow()Z

    move-result v0

    if-eqz v0, :cond_cd

    goto :goto_ce

    :cond_cd
    move v2, p2

    .line 5481
    :goto_ce
    iget-boolean p2, p1, Lcom/android/server/wm/WindowContainer;->mLaunchTaskBehind:Z

    if-eqz p2, :cond_e7

    .line 5485
    invoke-virtual {p1, v1}, Lcom/android/server/wm/ActivityRecord;->setVisibility(Z)V

    .line 5486
    invoke-virtual {p0, v3}, Lcom/android/server/wm/Task;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;)V

    .line 5490
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result p2

    if-nez p2, :cond_e1

    .line 5491
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->notifyUnknownVisibilityLaunchedForKeyguardTransition()V

    .line 5495
    :cond_e1
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->executeAppTransition()V

    return-void

    :cond_e7
    if-eqz v2, :cond_fe

    .line 5501
    new-instance p2, Lcom/android/server/wm/Task$$ExternalSyntheticLambda32;

    invoke-direct {p2}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda32;-><init>()V

    invoke-virtual {v4, p2}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v7

    .line 5503
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, p0, Lcom/android/server/wm/WindowManagerService;->mStartingSurfaceController:Lcom/android/server/wm/StartingSurfaceController;

    move-object v6, p1

    move v8, p3

    move v9, p4

    move-object/from16 v10, p6

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/wm/StartingSurfaceController;->showStartingWindow(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;ZZLcom/android/server/wm/ActivityRecord;)V

    :cond_fe
    return-void
.end method

.method public supportsFreeformInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;)Z
    .registers 6

    if-eqz p1, :cond_19

    .line 1901
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsMultiWindow:Z

    iget-boolean v2, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsFreeformWindowManagement:Z

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsPictureInPicture:Z

    const/4 v3, 0x5

    .line 1902
    invoke-virtual {p1, v3, v1, v2, v0}, Lcom/android/server/wm/TaskDisplayArea;->isWindowingModeSupported(IZZZ)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1906
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskFragment;->supportsMultiWindowInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;)Z

    move-result p0

    if-eqz p0, :cond_19

    const/4 p0, 0x1

    return p0

    :cond_19
    const/4 p0, 0x0

    return p0
.end method

.method public switchUser(I)V
    .registers 4

    .line 5050
    iget v0, p0, Lcom/android/server/wm/Task;->mCurrentUser:I

    if-ne v0, p1, :cond_5

    goto :goto_21

    .line 5053
    :cond_5
    iput p1, p0, Lcom/android/server/wm/Task;->mCurrentUser:I

    .line 5055
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->switchUser(I)V

    .line 5056
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result p1

    if-nez p1, :cond_21

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->showToCurrentUser()Z

    move-result p1

    if-eqz p1, :cond_21

    .line 5057
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object p1

    const v0, 0x7fffffff

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p0, v1}, Lcom/android/server/wm/WindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    :cond_21
    :goto_21
    return-void
.end method

.method public taskAppearedReady()Z
    .registers 4

    .line 4391
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 4395
    :cond_6
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mDeferTaskAppear:Z

    if-eqz v0, :cond_b

    return v1

    .line 4399
    :cond_b
    iget-boolean v0, p0, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_11

    return v2

    .line 4403
    :cond_11
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_1c

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getHasBeenVisible()Z

    move-result p0

    if-eqz p0, :cond_1c

    return v2

    :cond_1c
    return v1
.end method

.method public toFullString()Ljava/lang/String;
    .registers 4

    .line 3895
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0xc0

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3896
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3897
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3898
    const-string v1, " U="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3899
    iget v1, p0, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3900
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-eq v1, p0, :cond_2d

    .line 3902
    const-string v2, " rootTaskId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3903
    iget v1, v1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3905
    :cond_2d
    const-string v1, " visible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 3906
    invoke-virtual {p0, v1}, Lcom/android/server/wm/TaskFragment;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3907
    const-string v2, " visibleRequested="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3908
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3909
    const-string v2, " mode="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3910
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v2

    invoke-static {v2}, Landroid/app/WindowConfiguration;->windowingModeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3911
    const-string v2, " translucent="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3912
    invoke-virtual {p0, v1}, Lcom/android/server/wm/TaskFragment;->isTranslucent(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3913
    const-string v1, " sz="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3914
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    .line 3915
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3916
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 3921
    iget-object v0, p0, Lcom/android/server/wm/Task;->stringName:Ljava/lang/String;

    if-eqz v0, :cond_5

    return-object v0

    .line 3922
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3923
    const-string v1, "Task{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3924
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3925
    const-string v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3926
    iget v1, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3927
    iget-object v1, p0, Lcom/android/server/wm/Task;->mName:Ljava/lang/String;

    if-eqz v1, :cond_34

    .line 3928
    const-string v1, " name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3929
    iget-object v1, p0, Lcom/android/server/wm/Task;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3931
    :cond_34
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getActivityType()I

    move-result v2

    invoke-static {v2}, Landroid/app/WindowConfiguration;->activityTypeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3932
    iget-object v1, p0, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    if-eqz v1, :cond_5f

    .line 3933
    const-string v1, " A="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3934
    iget-object v1, p0, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_98

    .line 3935
    :cond_5f
    iget-object v1, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    if-eqz v1, :cond_7c

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_7c

    .line 3936
    const-string v1, " I="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3937
    iget-object v1, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_98

    .line 3938
    :cond_7c
    iget-object v1, p0, Lcom/android/server/wm/Task;->affinityIntent:Landroid/content/Intent;

    if-eqz v1, :cond_98

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_98

    .line 3939
    const-string v1, " aI="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3940
    iget-object v1, p0, Lcom/android/server/wm/Task;->affinityIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3942
    :cond_98
    :goto_98
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isResizeable()Z

    move-result v1

    if-nez v1, :cond_a3

    .line 3943
    const-string v1, " nonResizable"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3945
    :cond_a3
    iget v1, p0, Lcom/android/server/wm/TaskFragment;->mMinWidth:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_ac

    iget v1, p0, Lcom/android/server/wm/TaskFragment;->mMinHeight:I

    if-eq v1, v2, :cond_c0

    .line 3946
    :cond_ac
    const-string v1, " minWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/TaskFragment;->mMinWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3947
    const-string v1, " minHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/TaskFragment;->mMinHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_c0
    const/16 v1, 0x7d

    .line 3949
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3950
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/Task;->stringName:Ljava/lang/String;

    return-object v0
.end method

.method public topActivityContainsStartingWindow()Lcom/android/server/wm/ActivityRecord;
    .registers 1

    .line 1500
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->topStartingWindow()Lcom/android/server/wm/WindowState;

    move-result-object p0

    if-eqz p0, :cond_9

    .line 1501
    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public topRunningActivity(Landroid/os/IBinder;I)Lcom/android/server/wm/ActivityRecord;
    .registers 5

    .line 3164
    new-instance v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda18;

    invoke-direct {v0}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda18;-><init>()V

    const-class v1, Lcom/android/server/wm/ActivityRecord;

    .line 3165
    invoke-static {v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 3164
    invoke-static {v0, v1, p2, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainPredicate(Lcom/android/internal/util/function/TriPredicate;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledPredicate;

    move-result-object p1

    .line 3166
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    .line 3167
    invoke-interface {p1}, Lcom/android/internal/util/function/pooled/PooledPredicate;->recycle()V

    return-object p0
.end method

.method public topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;
    .registers 2

    .line 1478
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 1481
    :cond_8
    new-instance v0, Lcom/android/server/wm/ActivityStarter$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/wm/ActivityStarter$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    return-object p0
.end method

.method public topRunningNonDelayedActivityLocked(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;
    .registers 4

    .line 3143
    new-instance v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda27;

    invoke-direct {v0}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda27;-><init>()V

    const-class v1, Lcom/android/server/wm/ActivityRecord;

    .line 3144
    invoke-static {v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v1

    .line 3143
    invoke-static {v0, v1, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainPredicate(Ljava/util/function/BiPredicate;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledPredicate;

    move-result-object p1

    .line 3145
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    .line 3146
    invoke-interface {p1}, Lcom/android/internal/util/function/pooled/PooledPredicate;->recycle()V

    return-object p0
.end method

.method public topStartingWindow()Lcom/android/server/wm/WindowState;
    .registers 2

    .line 1496
    new-instance v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda7;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object p0

    return-object p0
.end method

.method public touchActiveTime()V
    .registers 3

    .line 947
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wm/Task;->lastActiveTime:J

    return-void
.end method

.method public unhandledBackLocked()V
    .registers 3

    .line 6076
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    if-eqz p0, :cond_c

    .line 6080
    const-string v0, "unhandled-back"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(Ljava/lang/String;Z)I

    :cond_c
    return-void
.end method

.method public updateEffectiveIntent()V
    .registers 2

    const/4 v0, 0x1

    .line 2077
    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getRootActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 2079
    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->setIntent(Lcom/android/server/wm/ActivityRecord;)V

    .line 2081
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->updateTaskDescription()V

    :cond_d
    return-void
.end method

.method public final updateForceResizeOverrides(Lcom/android/server/wm/ActivityRecord;)V
    .registers 4

    .line 1945
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 1946
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatController;->getResizeOverrides()Lcom/android/server/wm/AppCompatResizeOverrides;

    move-result-object v0

    .line 1948
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatResizeOverrides;->shouldOverrideForceResizeApp()Z

    move-result v1

    if-nez v1, :cond_23

    .line 1949
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isUniversalResizeable()Z

    move-result v1

    if-nez v1, :cond_23

    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 1950
    invoke-virtual {p1}, Lcom/android/server/wm/AppCompatController;->getAspectRatioOverrides()Lcom/android/server/wm/AppCompatAspectRatioOverrides;

    move-result-object p1

    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 1951
    invoke-virtual {p1, v1}, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->hasFullscreenOverride(Lcom/android/server/wm/DisplayContent;)Z

    move-result p1

    if-eqz p1, :cond_21

    goto :goto_23

    :cond_21
    const/4 p1, 0x0

    goto :goto_24

    :cond_23
    :goto_23
    const/4 p1, 0x1

    :goto_24
    iput-boolean p1, p0, Lcom/android/server/wm/Task;->mForceResizeOverride:Z

    .line 1952
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatResizeOverrides;->shouldOverrideForceNonResizeApp()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/wm/Task;->mForceNonResizeOverride:Z

    return-void
.end method

.method public updateForceResizeOverridesIfNeeded(Lcom/android/server/wm/ActivityRecord;)V
    .registers 3

    .line 1937
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->mAppCompatController:Lcom/android/server/wm/AppCompatController;

    .line 1938
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatController;->getAspectRatioOverrides()Lcom/android/server/wm/AppCompatAspectRatioOverrides;

    move-result-object v0

    .line 1939
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatAspectRatioOverrides;->hasSystemFullscreenOverrideCache()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1940
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->updateForceResizeOverrides(Lcom/android/server/wm/ActivityRecord;)V

    :cond_f
    return-void
.end method

.method public updateOverlayInsetsState(Lcom/android/server/wm/WindowState;)V
    .registers 3

    .line 7004
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->updateOverlayInsetsState(Lcom/android/server/wm/WindowState;)V

    .line 7005
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopVisibleAppMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eq p1, v0, :cond_a

    goto :goto_1f

    .line 7008
    :cond_a
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mOverlayHost:Lcom/android/server/wm/TrustedOverlayHost;

    if-eqz v0, :cond_1f

    const/4 v0, 0x1

    .line 7009
    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowState;->getInsetsState(Z)Landroid/view/InsetsState;

    move-result-object p1

    .line 7010
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds(Landroid/graphics/Rect;)V

    .line 7011
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mOverlayHost:Lcom/android/server/wm/TrustedOverlayHost;

    iget-object p0, p0, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p0}, Lcom/android/server/wm/TrustedOverlayHost;->dispatchInsetsChanged(Landroid/view/InsetsState;Landroid/graphics/Rect;)V

    :cond_1f
    :goto_1f
    return-void
.end method

.method public final updateSurfaceBounds()V
    .registers 2

    .line 6414
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->updateSurfaceSize(Landroid/view/SurfaceControl$Transaction;)V

    .line 6415
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->updateSurfacePositionNonOrganized()V

    .line 6416
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->scheduleAnimation()V

    return-void
.end method

.method public updateSurfaceSize(Landroid/view/SurfaceControl$Transaction;)V
    .registers 6

    .line 2421
    iget v0, p0, Lcom/android/server/wm/WindowContainer;->mSyncState:I

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    move v0, v1

    .line 2422
    :goto_8
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v2, :cond_4a

    .line 2425
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isOrganized()Z

    move-result v2

    if-eqz v2, :cond_15

    if-nez v0, :cond_15

    goto :goto_4a

    .line 2432
    :cond_15
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v0

    if-nez v0, :cond_21

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->fillsParentBounds()Z

    move-result v0

    if-nez v0, :cond_34

    :cond_21
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    iget-boolean v0, v0, Lcom/android/server/wm/TransitionController;->mIsWaitingForDisplayEnabled:Z

    if-nez v0, :cond_34

    .line 2434
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 2435
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 2436
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    goto :goto_35

    :cond_34
    move v0, v1

    .line 2438
    :goto_35
    iget-object v2, p0, Lcom/android/server/wm/TaskFragment;->mLastSurfaceSize:Landroid/graphics/Point;

    iget v3, v2, Landroid/graphics/Point;->x:I

    if-ne v1, v3, :cond_40

    iget v2, v2, Landroid/graphics/Point;->y:I

    if-ne v0, v2, :cond_40

    goto :goto_4a

    .line 2441
    :cond_40
    iget-object v2, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v2, v1, v0}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 2442
    iget-object p0, p0, Lcom/android/server/wm/TaskFragment;->mLastSurfaceSize:Landroid/graphics/Point;

    invoke-virtual {p0, v1, v0}, Landroid/graphics/Point;->set(II)V

    :cond_4a
    :goto_4a
    return-void
.end method

.method public updateSurfaceVisibility(Landroid/view/SurfaceControl$Transaction;)V
    .registers 3

    .line 3374
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result p0

    invoke-virtual {p1, v0, p0}, Landroid/view/SurfaceControl$Transaction;->setVisibility(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    return-void
.end method

.method public updateTaskDescription()V
    .registers 5

    const/4 v0, 0x1

    .line 2003
    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getRootActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-nez v0, :cond_8

    return-void

    .line 2006
    :cond_8
    new-instance v1, Landroid/app/ActivityManager$TaskDescription;

    invoke-direct {v1}, Landroid/app/ActivityManager$TaskDescription;-><init>()V

    .line 2007
    new-instance v2, Lcom/android/server/wm/Task$$ExternalSyntheticLambda4;

    invoke-direct {v2}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda4;-><init>()V

    const-class v3, Lcom/android/server/wm/ActivityRecord;

    .line 2009
    invoke-static {v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v3

    .line 2007
    invoke-static {v2, v3, v0, v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainPredicate(Lcom/android/internal/util/function/TriPredicate;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledPredicate;

    move-result-object v0

    .line 2010
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Predicate;)Z

    .line 2011
    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledPredicate;->recycle()V

    .line 2012
    iget v0, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    invoke-virtual {v1, v0}, Landroid/app/ActivityManager$TaskDescription;->setResizeMode(I)V

    .line 2013
    iget v0, p0, Lcom/android/server/wm/TaskFragment;->mMinWidth:I

    invoke-virtual {v1, v0}, Landroid/app/ActivityManager$TaskDescription;->setMinWidth(I)V

    .line 2014
    iget v0, p0, Lcom/android/server/wm/TaskFragment;->mMinHeight:I

    invoke-virtual {v1, v0}, Landroid/app/ActivityManager$TaskDescription;->setMinHeight(I)V

    .line 2015
    invoke-virtual {p0, v1}, Lcom/android/server/wm/Task;->setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V

    .line 2016
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v0

    .line 2017
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v1

    .line 2016
    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskDescriptionChanged(Landroid/app/TaskInfo;)V

    .line 2019
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-eqz v0, :cond_50

    .line 2021
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_50

    .line 2023
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->updateTaskDescription()V

    :cond_50
    const/4 v0, 0x0

    .line 2027
    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->dispatchTaskInfoChangedIfNeeded(Z)V

    return-void
.end method

.method public updateTaskMovement(ZZI)V
    .registers 7

    .line 1368
    iget v0, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootTaskId()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    move-result v2

    invoke-static {v0, v1, v2, p1, p3}, Lcom/android/server/wm/EventLogTags;->writeWmTaskMoved(IIIII)V

    .line 1370
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p3

    if-eqz p3, :cond_16

    .line 1372
    invoke-virtual {p3, p0, p1, p2}, Lcom/android/server/wm/TaskDisplayArea;->onTaskMoved(Lcom/android/server/wm/Task;ZZ)V

    .line 1374
    :cond_16
    iget-boolean p2, p0, Lcom/android/server/wm/Task;->isPersistable:Z

    if-eqz p2, :cond_20

    .line 1375
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    iput-wide p2, p0, Lcom/android/server/wm/Task;->mLastTimeMoved:J

    :cond_20
    if-eqz p1, :cond_2d

    .line 1377
    iget-boolean p1, p0, Lcom/android/server/wm/Task;->inRecents:Z

    if-eqz p1, :cond_2d

    .line 1379
    iget-object p1, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {p1, p0}, Lcom/android/server/wm/RecentTasks;->add(Lcom/android/server/wm/Task;)V

    :cond_2d
    return-void
.end method

.method public updateTaskOrganizerState()Z
    .registers 2

    const/4 v0, 0x0

    .line 4456
    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->updateTaskOrganizerState(Z)Z

    move-result p0

    return p0
.end method

.method public updateTaskOrganizerState(Z)Z
    .registers 5

    .line 4467
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 4472
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->canBeOrganized()Z

    move-result v0

    if-nez v0, :cond_14

    const/4 p1, 0x0

    .line 4473
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->setTaskOrganizer(Landroid/window/ITaskOrganizer;)Z

    move-result p0

    return p0

    .line 4476
    :cond_14
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    .line 4477
    invoke-virtual {v0}, Lcom/android/server/wm/TaskOrganizerController;->getTaskOrganizer()Landroid/window/ITaskOrganizer;

    move-result-object v0

    .line 4480
    iget-boolean v2, p0, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    if-eqz v2, :cond_2b

    iget-object v2, p0, Lcom/android/server/wm/Task;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    if-eqz v2, :cond_2b

    if-eqz v0, :cond_2b

    if-eq v2, v0, :cond_2b

    return v1

    .line 4484
    :cond_2b
    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/Task;->setTaskOrganizer(Landroid/window/ITaskOrganizer;Z)Z

    move-result p0

    return p0
.end method

.method public final updateTransitLocked(ILandroid/app/ActivityOptions;)V
    .registers 3

    if-eqz p2, :cond_17

    .line 5853
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    if-eqz p0, :cond_14

    .line 5854
    sget-object p1, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result p1

    if-nez p1, :cond_14

    .line 5855
    invoke-virtual {p0, p2}, Lcom/android/server/wm/ActivityRecord;->updateOptionsLocked(Landroid/app/ActivityOptions;)V

    return-void

    .line 5857
    :cond_14
    invoke-static {p2}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    :cond_17
    return-void
.end method

.method public final warnForNonLeafTask(Ljava/lang/String;)V
    .registers 3

    .line 6438
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 6439
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " on non-leaf task "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ActivityTaskManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    return-void
.end method

.method public willActivityBeVisible(Landroid/os/IBinder;)Z
    .registers 3

    .line 6063
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_8

    return p1

    .line 6068
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->shouldBeVisible()Z

    move-result v0

    if-nez v0, :cond_f

    return p1

    .line 6070
    :cond_f
    iget-boolean p1, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz p1, :cond_29

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "willActivityBeVisible: Returning false, would have returned true for r="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ActivityTaskManager"

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6072
    :cond_29
    iget-boolean p0, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public writeIdentifierToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 7

    .line 2447
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    const-wide v0, 0x10500000001L

    .line 2448
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v0, 0x10500000002L

    .line 2449
    iget v2, p0, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2450
    iget-object v0, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_2f

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_2f

    .line 2451
    iget-object p0, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p0

    goto :goto_31

    :cond_2f
    const-string p0, "Task"

    :goto_31
    const-wide v0, 0x10900000003L

    .line 2450
    invoke-virtual {p1, v0, v1, p0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 2452
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method
