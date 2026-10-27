.class public Lcom/android/server/wm/Transition;
.super Ljava/lang/Object;
.source "Transition.java"

# interfaces
.implements Lcom/android/server/wm/BLASTSyncEngine$TransactionReadyListener;


# static fields
.field public static final TRANSACTION_PRESENTED_TIMEOUT:Ljava/time/Duration;


# instance fields
.field public mAnimationTrack:I

.field public mCanPipOnFinish:Z

.field public mChainHead:Lcom/android/server/wm/ActionChain;

.field public final mChanges:Landroid/util/ArrayMap;

.field public mCleanupTransaction:Landroid/view/SurfaceControl$Transaction;

.field public mClientAnimationFinishCallback:Landroid/os/IRemoteCallback;

.field public mClientAnimationStartCallback:Landroid/os/IRemoteCallback;

.field public mConfigAtEndActivities:Ljava/util/ArrayList;

.field public mContainerFreezer:Lcom/android/server/wm/Transition$IContainerFreezer;

.field public final mController:Lcom/android/server/wm/TransitionController;

.field public mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

.field public mFlags:I

.field public mForcePlaying:Z

.field public mIsPlayerEnabled:Z

.field public mIsSeamlessRotation:Z

.field public mIsTimedOut:Z

.field public final mLogger:Lcom/android/server/wm/TransitionController$Logger;

.field public mOnTopDisplayAtReady:Lcom/android/server/wm/DisplayContent;

.field public mOnTopDisplayStart:Lcom/android/server/wm/DisplayContent;

.field public final mOnTopTasksAtReady:Ljava/util/ArrayList;

.field public final mOnTopTasksStart:Ljava/util/ArrayList;

.field public mOverrideBackgroundColor:I

.field public mOverrideOptions:Landroid/window/TransitionInfo$AnimationOptions;

.field public mParallelCollectType:I

.field public final mParticipants:Landroid/util/ArraySet;

.field public mPipActivity:Lcom/android/server/wm/ActivityRecord;

.field public mPriorVisibilityMightBeDirty:Z

.field public final mReadyTracker:Lcom/android/server/wm/Transition$ReadyTracker;

.field public final mReadyTrackerOld:Lcom/android/server/wm/Transition$ReadyTrackerOld;

.field public mRecentsDisplayId:I

.field public mRemoteDelegate:Landroid/app/IApplicationThread;

.field public mRequestedLocation:Landroid/window/TransitionRequestInfo$RequestedLocation;

.field public mSourceActivities:Ljava/util/ArrayList;

.field public mStartTransaction:Landroid/view/SurfaceControl$Transaction;

.field public mState:I

.field public mStatusBarTransitionDelay:J

.field public final mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

.field public mSyncId:I

.field public final mTargetDisplays:Ljava/util/ArrayList;

.field public mTargets:Ljava/util/ArrayList;

.field public final mToken:Lcom/android/server/wm/Transition$Token;

.field mTransactionPresentedListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public mTransientHideTasks:Ljava/util/ArrayList;

.field public mTransientLaunches:Landroid/util/ArrayMap;

.field public mTransitionEndedListeners:Ljava/util/ArrayList;

.field public final mType:I

.field public final mVisibleAtTransitionEndTokens:Landroid/util/ArraySet;

.field public final mWmService:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public static synthetic $r8$lambda$7u-fn7VqmBuRsg7PdONkj6v3G7w(Lcom/android/server/wm/Task;)V
    .registers 4

    .line 1542
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 1543
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result v0

    if-nez v0, :cond_13

    goto :goto_2b

    .line 1544
    :cond_13
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-nez v0, :cond_1a

    goto :goto_2b

    .line 1546
    :cond_1a
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_21

    goto :goto_2b

    .line 1547
    :cond_21
    const-string v1, "Transition"

    const-string v2, "Enter-PIP was started but not completed, this is a Shell/SysUI bug. This state breaks gesture-nav, so attempting clean-up."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1552
    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->abortPipEnter(Lcom/android/server/wm/ActivityRecord;)Z

    :cond_2b
    :goto_2b
    return-void
.end method

.method public static synthetic $r8$lambda$8bKqFyfcj6d7zGkZ56kJnkeIs9Q(Ljava/util/List;)V
    .registers 3

    const/4 v0, 0x0

    .line 1920
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_13

    .line 1921
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_13
    return-void
.end method

.method public static synthetic $r8$lambda$JF5kuO075N6GGSCYS1rcdSlMiJI(Lcom/android/server/wm/Transition;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/wm/Transition;->lambda$postCleanupOnFailure$9()V

    return-void
.end method

.method public static synthetic $r8$lambda$M6wH2HEM1Z7mDppJQRMyBRlOzWk(Lcom/android/server/wm/Transition;Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;)Z
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/Transition;->lambda$setTransientLaunch$0(Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$SYsgHpqfl5XMocCZiY-l8D62cxM(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 2

    .line 3542
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->fillsParent()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$SZu63gJM1sDweH3PrOJU3kTDLPM(Lcom/android/server/wm/Transition;Lcom/android/server/wm/ActivityRecord;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Transition;->lambda$setConfigAtEnd$1(Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Y8P9-rV0qdsR0ipKKvEe0HQAsN0(ILandroid/util/ArraySet;Lcom/android/server/wm/ActivityRecord;)Z
    .registers 4

    .line 3536
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getRemoteAnimationDefinition()Landroid/view/RemoteAnimationDefinition;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 3537
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getRemoteAnimationDefinition()Landroid/view/RemoteAnimationDefinition;

    move-result-object p2

    invoke-virtual {p2, p0, p1}, Landroid/view/RemoteAnimationDefinition;->hasTransition(ILandroid/util/ArraySet;)Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$ae2rOBsvLNpO5hISqyOOeQUaP48(Lcom/android/server/wm/Task;)Z
    .registers 1

    .line 911
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->isAlwaysOnTop()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static synthetic $r8$lambda$kPxQ7qFowyfVDQtPYc35gZ7JoMs(ILandroid/view/SurfaceControl$Transaction;)V
    .registers 2

    .line 1750
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void
.end method

.method public static synthetic $r8$lambda$l-oAoCfJkscbIwo8-SCNzjktQkg(Landroid/os/IRemoteCallback;)V
    .registers 2

    const/4 v0, 0x0

    .line 1076
    :try_start_1
    invoke-interface {p0, v0}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_4} :catch_4

    :catch_4
    return-void
.end method

.method public static synthetic $r8$lambda$nJpvR9TAhuf-2chfswuW5Bx3jds(Lcom/android/server/wm/Transition;Ljava/lang/Runnable;Landroid/view/SurfaceControl$TransactionStats;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/Transition;->lambda$addTransactionPresentedCallback$8(Ljava/lang/Runnable;Landroid/view/SurfaceControl$TransactionStats;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nm-N6zwqOkYjJbrt2zNKNbMnT08(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 1

    .line 3546
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$tznWdmYk4DuTLhN0IJ0SMRe633A(Lcom/android/server/wm/Transition;Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/Transition;->lambda$finishTransition$4(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zFYOP9SbyNZGO20udggjvZF1vsk(Landroid/util/ArraySet;Lcom/android/server/wm/ActivityRecord;)V
    .registers 3

    .line 3651
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 3652
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_9
    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmIsSeamlessRotation(Lcom/android/server/wm/Transition;)Z
    .registers 1

    .line 0
    iget-boolean p0, p0, Lcom/android/server/wm/Transition;->mIsSeamlessRotation:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmState(Lcom/android/server/wm/Transition;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/wm/Transition;->mState:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSyncId(Lcom/android/server/wm/Transition;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$mapplyReady(Lcom/android/server/wm/Transition;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/wm/Transition;->applyReady()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smgetDisplayId(Lcom/android/server/wm/WindowContainer;)I
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/android/server/wm/Transition;->getDisplayId(Lcom/android/server/wm/WindowContainer;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smisInputMethod(Lcom/android/server/wm/WindowContainer;)Z
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/android/server/wm/Transition;->isInputMethod(Lcom/android/server/wm/WindowContainer;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smisReadyGroup(Lcom/android/server/wm/WindowContainer;)Z
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/android/server/wm/Transition;->isReadyGroup(Lcom/android/server/wm/WindowContainer;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smisTranslucent(Lcom/android/server/wm/WindowContainer;)Z
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/android/server/wm/Transition;->isTranslucent(Lcom/android/server/wm/WindowContainer;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smisWallpaper(Lcom/android/server/wm/WindowContainer;)Z
    .registers 1

    .line 0
    invoke-static {p0}, Lcom/android/server/wm/Transition;->isWallpaper(Lcom/android/server/wm/WindowContainer;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 2

    const-wide/16 v0, 0x1

    .line 277
    invoke-static {v0, v1}, Ljava/time/Duration;->ofSeconds(J)Ljava/time/Duration;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/Transition;->TRANSACTION_PRESENTED_TIMEOUT:Ljava/time/Duration;

    return-void
.end method

.method public constructor <init>(IILcom/android/server/wm/TransitionController;Lcom/android/server/wm/BLASTSyncEngine;)V
    .registers 11

    .line 388
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 199
    iput v0, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    const/4 v1, 0x0

    .line 213
    iput-object v1, p0, Lcom/android/server/wm/Transition;->mRemoteDelegate:Landroid/app/IApplicationThread;

    .line 216
    iput-object v1, p0, Lcom/android/server/wm/Transition;->mStartTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 217
    iput-object v1, p0, Lcom/android/server/wm/Transition;->mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 220
    iput-object v1, p0, Lcom/android/server/wm/Transition;->mCleanupTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 227
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    .line 230
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    .line 236
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/Transition;->mTargetDisplays:Ljava/util/ArrayList;

    .line 242
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/Transition;->mOnTopTasksStart:Ljava/util/ArrayList;

    .line 248
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/Transition;->mOnTopTasksAtReady:Ljava/util/ArrayList;

    .line 254
    iput-object v1, p0, Lcom/android/server/wm/Transition;->mOnTopDisplayStart:Lcom/android/server/wm/DisplayContent;

    .line 255
    iput-object v1, p0, Lcom/android/server/wm/Transition;->mOnTopDisplayAtReady:Lcom/android/server/wm/DisplayContent;

    .line 261
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/Transition;->mVisibleAtTransitionEndTokens:Landroid/util/ArraySet;

    .line 267
    iput-object v1, p0, Lcom/android/server/wm/Transition;->mTransientLaunches:Landroid/util/ArrayMap;

    .line 279
    iput-object v1, p0, Lcom/android/server/wm/Transition;->mTransactionPresentedListeners:Ljava/util/ArrayList;

    .line 282
    iput-object v1, p0, Lcom/android/server/wm/Transition;->mTransitionEndedListeners:Ljava/util/ArrayList;

    .line 293
    iput-object v1, p0, Lcom/android/server/wm/Transition;->mClientAnimationStartCallback:Landroid/os/IRemoteCallback;

    .line 294
    iput-object v1, p0, Lcom/android/server/wm/Transition;->mClientAnimationFinishCallback:Landroid/os/IRemoteCallback;

    .line 296
    iput v0, p0, Lcom/android/server/wm/Transition;->mState:I

    .line 297
    new-instance v2, Lcom/android/server/wm/Transition$ReadyTrackerOld;

    invoke-direct {v2}, Lcom/android/server/wm/Transition$ReadyTrackerOld;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/Transition;->mReadyTrackerOld:Lcom/android/server/wm/Transition$ReadyTrackerOld;

    .line 298
    new-instance v3, Lcom/android/server/wm/Transition$ReadyTracker;

    invoke-direct {v3, p0}, Lcom/android/server/wm/Transition$ReadyTracker;-><init>(Lcom/android/server/wm/Transition;)V

    iput-object v3, p0, Lcom/android/server/wm/Transition;->mReadyTracker:Lcom/android/server/wm/Transition$ReadyTracker;

    .line 300
    iput v0, p0, Lcom/android/server/wm/Transition;->mRecentsDisplayId:I

    const/4 v0, 0x1

    .line 306
    iput-boolean v0, p0, Lcom/android/server/wm/Transition;->mCanPipOnFinish:Z

    const/4 v4, 0x0

    .line 308
    iput-boolean v4, p0, Lcom/android/server/wm/Transition;->mIsSeamlessRotation:Z

    .line 309
    iput-object v1, p0, Lcom/android/server/wm/Transition;->mContainerFreezer:Lcom/android/server/wm/Transition$IContainerFreezer;

    .line 319
    iput-boolean v4, p0, Lcom/android/server/wm/Transition;->mPriorVisibilityMightBeDirty:Z

    .line 321
    new-instance v5, Lcom/android/server/wm/TransitionController$Logger;

    invoke-direct {v5}, Lcom/android/server/wm/TransitionController$Logger;-><init>()V

    iput-object v5, p0, Lcom/android/server/wm/Transition;->mLogger:Lcom/android/server/wm/TransitionController$Logger;

    .line 327
    iput-boolean v4, p0, Lcom/android/server/wm/Transition;->mForcePlaying:Z

    .line 333
    iput-boolean v0, p0, Lcom/android/server/wm/Transition;->mIsPlayerEnabled:Z

    .line 360
    iput v4, p0, Lcom/android/server/wm/Transition;->mParallelCollectType:I

    .line 368
    iput v4, p0, Lcom/android/server/wm/Transition;->mAnimationTrack:I

    .line 374
    iput-object v1, p0, Lcom/android/server/wm/Transition;->mConfigAtEndActivities:Ljava/util/ArrayList;

    .line 377
    iput-object v1, p0, Lcom/android/server/wm/Transition;->mChainHead:Lcom/android/server/wm/ActionChain;

    .line 384
    iput-object v1, p0, Lcom/android/server/wm/Transition;->mSourceActivities:Ljava/util/ArrayList;

    .line 389
    iput p1, p0, Lcom/android/server/wm/Transition;->mType:I

    .line 390
    iput p2, p0, Lcom/android/server/wm/Transition;->mFlags:I

    .line 391
    iput-object p3, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    .line 392
    iget-object p1, p3, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iput-object p1, p0, Lcom/android/server/wm/Transition;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 393
    iput-object p4, p0, Lcom/android/server/wm/Transition;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    .line 394
    new-instance p1, Lcom/android/server/wm/Transition$Token;

    invoke-direct {p1, p0}, Lcom/android/server/wm/Transition$Token;-><init>(Lcom/android/server/wm/Transition;)V

    iput-object p1, p0, Lcom/android/server/wm/Transition;->mToken:Lcom/android/server/wm/Transition$Token;

    .line 396
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    iput-wide p0, v5, Lcom/android/server/wm/TransitionController$Logger;->mCreateWallTimeMs:J

    .line 397
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide p0

    iput-wide p0, v5, Lcom/android/server/wm/TransitionController$Logger;->mCreateTimeNs:J

    .line 398
    invoke-virtual {p3}, Lcom/android/server/wm/TransitionController;->useFullReadyTracking()Z

    move-result p0

    if-nez p0, :cond_a2

    .line 399
    invoke-virtual {v3, v2}, Lcom/android/server/wm/Transition$ReadyTracker;->add(Lcom/android/server/wm/Transition$ReadyCondition;)V

    :cond_a2
    return-void
.end method

.method public static addCustomActivityTransition(Lcom/android/server/wm/ActivityRecord;ZLandroid/window/TransitionInfo$AnimationOptions;)Landroid/window/TransitionInfo$AnimationOptions;
    .registers 5

    .line 3378
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRecord;->getCustomAnimation(Z)Lcom/android/server/wm/ActivityRecord$CustomAppTransition;

    move-result-object v0

    if-eqz v0, :cond_1c

    if-nez p2, :cond_13

    .line 3381
    iget-object p2, p0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 3382
    invoke-static {p2}, Landroid/window/TransitionInfo$AnimationOptions;->makeCommonAnimOptions(Ljava/lang/String;)Landroid/window/TransitionInfo$AnimationOptions;

    move-result-object p2

    .line 3383
    iget p0, p0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-virtual {p2, p0}, Landroid/window/TransitionInfo$AnimationOptions;->setUserId(I)V

    .line 3385
    :cond_13
    iget p0, v0, Lcom/android/server/wm/ActivityRecord$CustomAppTransition;->mEnterAnim:I

    iget v1, v0, Lcom/android/server/wm/ActivityRecord$CustomAppTransition;->mExitAnim:I

    iget v0, v0, Lcom/android/server/wm/ActivityRecord$CustomAppTransition;->mBackgroundColor:I

    invoke-virtual {p2, p1, p0, v1, v0}, Landroid/window/TransitionInfo$AnimationOptions;->addCustomActivityTransition(ZIII)V

    :cond_1c
    return-object p2
.end method

.method public static addOnTopTasks(Lcom/android/server/wm/DisplayContent;Ljava/util/ArrayList;)V
    .registers 3

    .line 910
    new-instance v0, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getRootTask(Ljava/util/function/Predicate;)Lcom/android/server/wm/Task;

    move-result-object p0

    if-nez p0, :cond_c

    return-void

    .line 913
    :cond_c
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 914
    invoke-static {p0, p1}, Lcom/android/server/wm/Transition;->addOnTopTasks(Lcom/android/server/wm/Task;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static addOnTopTasks(Lcom/android/server/wm/Task;Ljava/util/ArrayList;)V
    .registers 5

    .line 894
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_26

    .line 895
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-nez v1, :cond_13

    goto :goto_26

    .line 897
    :cond_13
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->isAlwaysOnTop()Z

    move-result v2

    if-eqz v2, :cond_20

    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 902
    :cond_20
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 903
    invoke-static {v1, p1}, Lcom/android/server/wm/Transition;->addOnTopTasks(Lcom/android/server/wm/Task;Ljava/util/ArrayList;)V

    :cond_26
    :goto_26
    return-void
.end method

.method public static assignLayersForFinishTransaction(Lcom/android/server/wm/WindowContainer;Landroid/view/SurfaceControl$Transaction;)V
    .registers 4

    .line 1244
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/wm/TransitionController;->mBuildingTransitionLayers:Z

    .line 1245
    iput-boolean v1, v0, Lcom/android/server/wm/TransitionController;->mBuildingFinishLayers:Z

    const/4 v0, 0x0

    .line 1247
    :try_start_8
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->assignChildLayers(Landroid/view/SurfaceControl$Transaction;)V
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_12

    .line 1249
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    iput-boolean v0, p0, Lcom/android/server/wm/TransitionController;->mBuildingFinishLayers:Z

    .line 1250
    iput-boolean v0, p0, Lcom/android/server/wm/TransitionController;->mBuildingTransitionLayers:Z

    return-void

    :catchall_12
    move-exception p1

    .line 1249
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    iput-boolean v0, v1, Lcom/android/server/wm/TransitionController;->mBuildingFinishLayers:Z

    .line 1250
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    iput-boolean v0, p0, Lcom/android/server/wm/TransitionController;->mBuildingTransitionLayers:Z

    .line 1251
    throw p1
.end method

.method public static assignLayersForStartTransaction(Lcom/android/server/wm/WindowContainer;Landroid/view/SurfaceControl$Transaction;)V
    .registers 4

    .line 1233
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/wm/TransitionController;->mBuildingTransitionLayers:Z

    const/4 v0, 0x0

    .line 1235
    :try_start_6
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowContainer;->assignChildLayers(Landroid/view/SurfaceControl$Transaction;)V
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_e

    .line 1237
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    iput-boolean v0, p0, Lcom/android/server/wm/TransitionController;->mBuildingTransitionLayers:Z

    return-void

    :catchall_e
    move-exception p1

    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    iput-boolean v0, p0, Lcom/android/server/wm/TransitionController;->mBuildingTransitionLayers:Z

    .line 1238
    throw p1
.end method

.method public static asyncTraceBegin(Ljava/lang/String;I)V
    .registers 5

    const-wide/16 v0, 0x20

    .line 3687
    const-string v2, "Transition"

    invoke-static {v0, v1, v2, p0, p1}, Landroid/os/Trace;->asyncTraceForTrackBegin(JLjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static asyncTraceEnd(I)V
    .registers 4

    const-wide/16 v0, 0x20

    .line 3691
    const-string v2, "Transition"

    invoke-static {v0, v1, v2, p0}, Landroid/os/Trace;->asyncTraceForTrackEnd(JLjava/lang/String;I)V

    return-void
.end method

.method public static buildCleanupTransaction(Landroid/view/SurfaceControl$Transaction;Landroid/window/TransitionInfo;)V
    .registers 6

    .line 1259
    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_a
    const/4 v1, 0x0

    if-ltz v0, :cond_54

    .line 1260
    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/TransitionInfo$Change;

    .line 1261
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getSnapshot()Landroid/view/SurfaceControl;

    move-result-object v3

    if-eqz v3, :cond_24

    .line 1262
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getSnapshot()Landroid/view/SurfaceControl;

    move-result-object v3

    invoke-virtual {p0, v3, v1}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_24
    const/16 v1, 0x20

    .line 1266
    invoke-virtual {v2, v1}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    move-result v1

    if-eqz v1, :cond_51

    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getStartRotation()I

    move-result v1

    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getEndRotation()I

    move-result v3

    if-eq v1, v3, :cond_51

    .line 1267
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getContainer()Landroid/window/WindowContainerToken;

    move-result-object v1

    if-eqz v1, :cond_51

    .line 1268
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getContainer()Landroid/window/WindowContainerToken;

    move-result-object v1

    invoke-virtual {v1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    .line 1269
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 1268
    invoke-virtual {p0, v1}, Landroid/view/SurfaceControl$Transaction;->unsetFixedTransformHint(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_51
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    .line 1272
    :cond_54
    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getRootCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_5a
    if-ltz v0, :cond_6d

    .line 1273
    invoke-virtual {p1, v0}, Landroid/window/TransitionInfo;->getRoot(I)Landroid/window/TransitionInfo$Root;

    move-result-object v2

    invoke-virtual {v2}, Landroid/window/TransitionInfo$Root;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v2

    if-nez v2, :cond_67

    goto :goto_6a

    .line 1275
    :cond_67
    invoke-virtual {p0, v2, v1}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :goto_6a
    add-int/lit8 v0, v0, -0x1

    goto :goto_5a

    :cond_6d
    return-void
.end method

.method public static calculateAnimationOptionsForActivityTransition(ILjava/util/ArrayList;)Landroid/window/TransitionInfo$AnimationOptions;
    .registers 6

    const/4 v0, 0x0

    move v1, v0

    .line 3330
    :goto_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    if-ge v1, v2, :cond_23

    .line 3331
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Transition$ChangeInfo;

    iget-object v2, v2, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    invoke-static {v2}, Lcom/android/server/wm/Transition;->isWallpaper(Lcom/android/server/wm/WindowContainer;)Z

    move-result v2

    if-eqz v2, :cond_1a

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 3332
    :cond_1a
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/Transition$ChangeInfo;

    iget-object v1, v1, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    goto :goto_24

    :cond_23
    move-object v1, v3

    .line 3335
    :goto_24
    instance-of v2, v1, Lcom/android/server/wm/ActivityRecord;

    if-eqz v2, :cond_36

    .line 3336
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    const/4 v2, 0x1

    .line 3337
    invoke-static {v1, v2, v3}, Lcom/android/server/wm/Transition;->addCustomActivityTransition(Lcom/android/server/wm/ActivityRecord;ZLandroid/window/TransitionInfo$AnimationOptions;)Landroid/window/TransitionInfo$AnimationOptions;

    move-result-object v2

    .line 3339
    invoke-static {v1, v0, v2}, Lcom/android/server/wm/Transition;->addCustomActivityTransition(Lcom/android/server/wm/ActivityRecord;ZLandroid/window/TransitionInfo$AnimationOptions;)Landroid/window/TransitionInfo$AnimationOptions;

    move-result-object v0

    goto :goto_37

    :cond_36
    move-object v0, v3

    .line 3343
    :goto_37
    invoke-static {p0, p1}, Lcom/android/server/wm/Transition;->findAnimLayoutParamsActivityRecord(ILjava/util/ArrayList;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    if-eqz p0, :cond_42

    .line 3345
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object p1

    goto :goto_43

    :cond_42
    move-object p1, v3

    :goto_43
    if-eqz p1, :cond_47

    .line 3346
    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    :cond_47
    if-eqz v3, :cond_62

    .line 3347
    iget p1, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v1, 0x3

    if-eq p1, v1, :cond_62

    iget p1, v3, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eqz p1, :cond_62

    if-eqz v0, :cond_58

    .line 3353
    invoke-virtual {v0, v3}, Landroid/window/TransitionInfo$AnimationOptions;->addOptionsFromLayoutParameters(Landroid/view/WindowManager$LayoutParams;)V

    return-object v0

    .line 3356
    :cond_58
    invoke-static {v3}, Landroid/window/TransitionInfo$AnimationOptions;->makeAnimOptionsFromLayoutParameters(Landroid/view/WindowManager$LayoutParams;)Landroid/window/TransitionInfo$AnimationOptions;

    move-result-object p1

    .line 3357
    iget p0, p0, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-virtual {p1, p0}, Landroid/window/TransitionInfo$AnimationOptions;->setUserId(I)V

    return-object p1

    :cond_62
    return-object v0
.end method

.method public static calculateTargets(Landroid/util/ArraySet;Landroid/util/ArrayMap;)Ljava/util/ArrayList;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/WindowContainer;",
            ">;",
            "Landroid/util/ArrayMap<",
            "Lcom/android/server/wm/WindowContainer;",
            "Lcom/android/server/wm/Transition$ChangeInfo;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/Transition$ChangeInfo;",
            ">;"
        }
    .end annotation

    .line 2939
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_19

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v3, 0xa51bfd09a803dffL

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v3, v4, v1, v0}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 2943
    :cond_19
    new-instance v0, Lcom/android/server/wm/Transition$Targets;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/android/server/wm/Transition$Targets;-><init>(Lcom/android/server/wm/Transition-IA;)V

    .line 2944
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_25
    if-ltz v2, :cond_88

    .line 2945
    invoke-virtual {p0, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    .line 2946
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->isAttached()Z

    move-result v4

    if-nez v4, :cond_4c

    .line 2947
    sget-object v4, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    aget-boolean v4, v4, v1

    if-eqz v4, :cond_85

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v5, -0x64940b6165c5c105L

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v4, v5, v6, v1, v3}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    goto :goto_85

    .line 2952
    :cond_4c
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asWindowState()Lcom/android/server/wm/WindowState;

    move-result-object v4

    if-eqz v4, :cond_53

    goto :goto_85

    .line 2956
    :cond_53
    invoke-virtual {p1, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 2958
    invoke-virtual {v4}, Lcom/android/server/wm/Transition$ChangeInfo;->hasChanged()Z

    move-result v5

    if-nez v5, :cond_82

    .line 2959
    sget-object v4, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    aget-boolean v4, v4, v1

    if-eqz v4, :cond_85

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v3

    sget-object v5, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    filled-new-array {v4, v3}, [Ljava/lang/Object;

    move-result-object v3

    const-wide v6, -0x7032121ad5e4ca8aL

    const/16 v4, 0xc

    invoke-static {v5, v6, v7, v4, v3}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    goto :goto_85

    .line 2963
    :cond_82
    invoke-virtual {v0, v4}, Lcom/android/server/wm/Transition$Targets;->add(Lcom/android/server/wm/Transition$ChangeInfo;)V

    :cond_85
    :goto_85
    add-int/lit8 v2, v2, -0x1

    goto :goto_25

    .line 2965
    :cond_88
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    aget-boolean p0, p0, v1

    if-eqz p0, :cond_a2

    iget-object p0, v0, Lcom/android/server/wm/Transition$Targets;->mArray:Landroid/util/SparseArray;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object v2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v3, -0x100392630555c6f8L

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v2, v3, v4, v1, p0}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 2968
    :cond_a2
    invoke-static {v0, p1}, Lcom/android/server/wm/Transition;->tryPromote(Lcom/android/server/wm/Transition$Targets;Landroid/util/ArrayMap;)V

    .line 2970
    invoke-static {v0, p1}, Lcom/android/server/wm/Transition;->populateParentChanges(Lcom/android/server/wm/Transition$Targets;Landroid/util/ArrayMap;)V

    .line 2972
    invoke-virtual {v0}, Lcom/android/server/wm/Transition$Targets;->getListSortedByZ()Ljava/util/ArrayList;

    move-result-object p0

    .line 2973
    sget-object p1, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    aget-boolean p1, p1, v1

    if-eqz p1, :cond_c4

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v2, -0x7f8e28b736a5c6c8L    # -1.587897648457723E-306

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, v2, v3, v1, p1}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_c4
    return-object p0
.end method

.method public static calculateTransitionInfo(IILjava/util/ArrayList;Landroid/view/SurfaceControl$Transaction;)Landroid/window/TransitionInfo;
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/Transition$ChangeInfo;",
            ">;",
            "Landroid/view/SurfaceControl$Transaction;",
            ")",
            "Landroid/window/TransitionInfo;"
        }
    .end annotation

    move/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    .line 3148
    new-instance v3, Landroid/window/TransitionInfo;

    move/from16 v4, p1

    invoke-direct {v3, v0, v4}, Landroid/window/TransitionInfo;-><init>(II)V

    .line 3149
    invoke-static {v3, v1, v2}, Lcom/android/server/wm/Transition;->calculateTransitionRoots(Landroid/window/TransitionInfo;Ljava/util/ArrayList;Landroid/view/SurfaceControl$Transaction;)V

    .line 3150
    invoke-virtual {v3}, Landroid/window/TransitionInfo;->getRootCount()I

    move-result v4

    if-nez v4, :cond_18

    goto/16 :goto_25c

    .line 3155
    :cond_18
    invoke-static {v0, v1}, Lcom/android/server/wm/Transition;->calculateAnimationOptionsForActivityTransition(ILjava/util/ArrayList;)Landroid/window/TransitionInfo$AnimationOptions;

    move-result-object v0

    .line 3157
    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    .line 3159
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v7, 0x0

    :goto_26
    if-ge v7, v5, :cond_25c

    .line 3161
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 3162
    iget-object v9, v8, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 3163
    new-instance v10, Landroid/window/TransitionInfo$Change;

    .line 3164
    iget-object v11, v9, Lcom/android/server/wm/WindowContainer;->mRemoteToken:Lcom/android/server/wm/WindowContainer$RemoteToken;

    if-eqz v11, :cond_3b

    invoke-virtual {v11}, Lcom/android/server/wm/WindowContainer$RemoteToken;->toWindowContainerToken()Landroid/window/WindowContainerToken;

    move-result-object v11

    goto :goto_3c

    :cond_3b
    const/4 v11, 0x0

    .line 3165
    :goto_3c
    invoke-static {v9, v2}, Lcom/android/server/wm/Transition;->getLeashSurface(Lcom/android/server/wm/WindowContainer;Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl;

    move-result-object v13

    invoke-direct {v10, v11, v13}, Landroid/window/TransitionInfo$Change;-><init>(Landroid/window/WindowContainerToken;Landroid/view/SurfaceControl;)V

    .line 3167
    iget-object v11, v8, Lcom/android/server/wm/Transition$ChangeInfo;->mEndParent:Lcom/android/server/wm/WindowContainer;

    if-eqz v11, :cond_50

    .line 3168
    iget-object v11, v11, Lcom/android/server/wm/WindowContainer;->mRemoteToken:Lcom/android/server/wm/WindowContainer$RemoteToken;

    invoke-virtual {v11}, Lcom/android/server/wm/WindowContainer$RemoteToken;->toWindowContainerToken()Landroid/window/WindowContainerToken;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/window/TransitionInfo$Change;->setParent(Landroid/window/WindowContainerToken;)V

    .line 3170
    :cond_50
    iget-object v11, v8, Lcom/android/server/wm/Transition$ChangeInfo;->mStartParent:Lcom/android/server/wm/WindowContainer;

    if-eqz v11, :cond_69

    iget-object v11, v11, Lcom/android/server/wm/WindowContainer;->mRemoteToken:Lcom/android/server/wm/WindowContainer$RemoteToken;

    if-eqz v11, :cond_69

    .line 3171
    invoke-virtual {v9}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v11

    iget-object v13, v8, Lcom/android/server/wm/Transition$ChangeInfo;->mStartParent:Lcom/android/server/wm/WindowContainer;

    if-eq v11, v13, :cond_69

    .line 3172
    iget-object v11, v13, Lcom/android/server/wm/WindowContainer;->mRemoteToken:Lcom/android/server/wm/WindowContainer$RemoteToken;

    invoke-virtual {v11}, Lcom/android/server/wm/WindowContainer$RemoteToken;->toWindowContainerToken()Landroid/window/WindowContainerToken;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/window/TransitionInfo$Change;->setLastParent(Landroid/window/WindowContainerToken;)V

    .line 3174
    :cond_69
    invoke-virtual {v8, v9}, Lcom/android/server/wm/Transition$ChangeInfo;->getTransitMode(Lcom/android/server/wm/WindowContainer;)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/window/TransitionInfo$Change;->setMode(I)V

    .line 3175
    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v11

    iput v11, v8, Lcom/android/server/wm/Transition$ChangeInfo;->mReadyMode:I

    .line 3176
    iget-object v11, v8, Lcom/android/server/wm/Transition$ChangeInfo;->mAbsoluteBounds:Landroid/graphics/Rect;

    invoke-virtual {v10, v11}, Landroid/window/TransitionInfo$Change;->setStartAbsBounds(Landroid/graphics/Rect;)V

    .line 3177
    invoke-virtual {v8, v9}, Lcom/android/server/wm/Transition$ChangeInfo;->getChangeFlags(Lcom/android/server/wm/WindowContainer;)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/window/TransitionInfo$Change;->setFlags(I)V

    .line 3178
    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->getFlags()I

    move-result v11

    iput v11, v8, Lcom/android/server/wm/Transition$ChangeInfo;->mReadyFlags:I

    .line 3179
    iget v11, v8, Lcom/android/server/wm/Transition$ChangeInfo;->mDisplayId:I

    invoke-static {v9}, Lcom/android/server/wm/Transition;->getDisplayId(Lcom/android/server/wm/WindowContainer;)I

    move-result v13

    invoke-virtual {v10, v11, v13}, Landroid/window/TransitionInfo$Change;->setDisplayId(II)V

    .line 3183
    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v11

    const/4 v13, 0x3

    const/4 v14, 0x1

    if-eq v11, v13, :cond_9f

    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v11

    if-ne v11, v14, :cond_c1

    .line 3184
    :cond_9f
    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v11

    sub-int/2addr v11, v14

    :goto_a4
    if-ltz v11, :cond_c1

    .line 3185
    invoke-virtual {v4, v11}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v9, v15}, Lcom/android/server/wm/WindowContainer;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    move-result v15

    if-eqz v15, :cond_be

    .line 3186
    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->getFlags()I

    move-result v11

    const v15, 0x8000

    or-int/2addr v11, v15

    invoke-virtual {v10, v11}, Landroid/window/TransitionInfo$Change;->setFlags(I)V

    goto :goto_c1

    :cond_be
    add-int/lit8 v11, v11, -0x1

    goto :goto_a4

    :cond_c1
    :goto_c1
    const/4 v11, 0x4

    .line 3191
    invoke-virtual {v10, v11}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    move-result v11

    if-nez v11, :cond_e2

    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v11

    if-eq v11, v14, :cond_db

    .line 3192
    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v11

    if-eq v11, v13, :cond_db

    .line 3193
    invoke-virtual {v10}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v11

    const/4 v15, 0x6

    if-ne v11, v15, :cond_e2

    .line 3194
    :cond_db
    invoke-virtual {v9}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v11

    invoke-virtual {v4, v11}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 3197
    :cond_e2
    invoke-virtual {v9}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v11

    .line 3198
    invoke-virtual {v9}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v15

    if-eqz v15, :cond_f5

    .line 3200
    invoke-virtual {v15}, Lcom/android/server/wm/TaskFragment;->isEmbedded()Z

    move-result v16

    if-eqz v16, :cond_f5

    move/from16 v16, v14

    goto :goto_f7

    :cond_f5
    const/16 v16, 0x0

    :goto_f7
    if-eqz v15, :cond_100

    .line 3202
    invoke-virtual {v15}, Lcom/android/server/wm/TaskFragment;->getFragmentToken()Landroid/os/IBinder;

    move-result-object v17

    move-object/from16 v12, v17

    goto :goto_101

    :cond_100
    const/4 v12, 0x0

    .line 3203
    :goto_101
    invoke-virtual {v10, v12}, Landroid/window/TransitionInfo$Change;->setTaskFragmentToken(Landroid/os/IBinder;)V

    .line 3204
    invoke-virtual {v9}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v12

    if-eqz v11, :cond_135

    .line 3207
    new-instance v13, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-direct {v13}, Landroid/app/ActivityManager$RunningTaskInfo;-><init>()V

    .line 3208
    invoke-virtual {v11, v13}, Lcom/android/server/wm/Task;->fillTaskInfo(Landroid/app/TaskInfo;)V

    .line 3209
    invoke-virtual {v10, v13}, Landroid/window/TransitionInfo$Change;->setTaskInfo(Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 3210
    invoke-static {v11}, Lcom/android/server/wm/Transition;->getTaskRotationAnimation(Lcom/android/server/wm/Task;)I

    move-result v13

    invoke-virtual {v10, v13}, Landroid/window/TransitionInfo$Change;->setRotationAnimation(I)V

    .line 3211
    invoke-virtual {v11}, Lcom/android/server/wm/TaskFragment;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v13

    if-eqz v13, :cond_13d

    .line 3213
    iget-object v14, v13, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v14}, Landroid/content/pm/ActivityInfo;->supportsPictureInPicture()Z

    move-result v14

    if-eqz v14, :cond_131

    .line 3215
    invoke-virtual {v13}, Lcom/android/server/wm/ActivityRecord;->checkEnterPictureInPictureAppOpsState()Z

    move-result v14

    .line 3214
    invoke-virtual {v10, v14}, Landroid/window/TransitionInfo$Change;->setAllowEnterPip(Z)V

    .line 3217
    :cond_131
    invoke-static {v10, v11, v13}, Lcom/android/server/wm/Transition;->setEndFixedRotationIfNeeded(Landroid/window/TransitionInfo$Change;Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;)V

    goto :goto_13d

    .line 3219
    :cond_135
    iget v11, v8, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    and-int/2addr v11, v14

    if-eqz v11, :cond_13d

    .line 3220
    invoke-virtual {v10, v13}, Landroid/window/TransitionInfo$Change;->setRotationAnimation(I)V

    .line 3223
    :cond_13d
    :goto_13d
    invoke-virtual {v9}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v11

    .line 3224
    invoke-virtual {v9}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v13

    .line 3225
    invoke-virtual {v11}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v14

    .line 3226
    iget v6, v13, Landroid/graphics/Rect;->left:I

    move-object/from16 v17, v0

    iget v0, v14, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v0

    iget v0, v13, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    iget v0, v14, Landroid/graphics/Rect;->top:I

    sub-int v0, v18, v0

    invoke-virtual {v10, v6, v0}, Landroid/window/TransitionInfo$Change;->setEndRelOffset(II)V

    .line 3228
    invoke-virtual {v14}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-virtual {v10, v0, v6}, Landroid/window/TransitionInfo$Change;->setEndParentSize(II)V

    .line 3229
    invoke-virtual {v9}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v0

    if-eqz v12, :cond_18a

    .line 3234
    invoke-virtual {v10, v14}, Landroid/window/TransitionInfo$Change;->setEndAbsBounds(Landroid/graphics/Rect;)V

    .line 3235
    invoke-virtual {v12}, Lcom/android/server/wm/WindowContainer;->getRelativeDisplayRotation()I

    move-result v6

    if-eqz v6, :cond_1b1

    iget-object v6, v12, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 3236
    invoke-virtual {v6}, Lcom/android/server/wm/TransitionController;->useShellTransitionsRotation()Z

    move-result v6

    if-nez v6, :cond_1b1

    .line 3238
    invoke-virtual {v11}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v0

    goto :goto_1b1

    .line 3240
    :cond_18a
    invoke-static {v9}, Lcom/android/server/wm/Transition;->isWallpaper(Lcom/android/server/wm/WindowContainer;)Z

    move-result v6

    if-eqz v6, :cond_1ae

    .line 3241
    invoke-virtual {v9}, Lcom/android/server/wm/WindowContainer;->getRelativeDisplayRotation()I

    move-result v6

    if-eqz v6, :cond_1ae

    iget-object v6, v9, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 3242
    invoke-virtual {v6}, Lcom/android/server/wm/TransitionController;->useShellTransitionsRotation()Z

    move-result v6

    if-nez v6, :cond_1ae

    .line 3245
    invoke-virtual {v11}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/window/TransitionInfo$Change;->setEndAbsBounds(Landroid/graphics/Rect;)V

    .line 3246
    invoke-virtual {v11}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v0

    goto :goto_1b1

    .line 3248
    :cond_1ae
    invoke-virtual {v10, v13}, Landroid/window/TransitionInfo$Change;->setEndAbsBounds(Landroid/graphics/Rect;)V

    :cond_1b1
    :goto_1b1
    if-nez v12, :cond_1b5

    if-eqz v16, :cond_1f1

    :cond_1b5
    if-eqz v12, :cond_1bc

    .line 3254
    invoke-virtual {v12}, Lcom/android/server/wm/ActivityRecord;->getOrganizedTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v6

    goto :goto_1c0

    .line 3255
    :cond_1bc
    invoke-virtual {v15}, Lcom/android/server/wm/TaskFragment;->getOrganizedTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v6

    :goto_1c0
    if-eqz v6, :cond_1d5

    .line 3256
    invoke-virtual {v6}, Lcom/android/server/wm/TaskFragment;->getAnimationParams()Landroid/window/TaskFragmentAnimationParams;

    move-result-object v9

    .line 3257
    invoke-virtual {v9}, Landroid/window/TaskFragmentAnimationParams;->getAnimationBackgroundColor()I

    move-result v9

    if-eqz v9, :cond_1d5

    .line 3261
    invoke-virtual {v6}, Lcom/android/server/wm/TaskFragment;->getAnimationParams()Landroid/window/TaskFragmentAnimationParams;

    move-result-object v6

    .line 3262
    invoke-virtual {v6}, Landroid/window/TaskFragmentAnimationParams;->getAnimationBackgroundColor()I

    move-result v6

    goto :goto_1e8

    :cond_1d5
    if-eqz v12, :cond_1dc

    .line 3267
    invoke-virtual {v12}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v6

    goto :goto_1e0

    .line 3268
    :cond_1dc
    invoke-virtual {v15}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v6

    .line 3269
    :goto_1e0
    invoke-virtual {v6}, Lcom/android/server/wm/Task;->getTaskDescription()Landroid/app/ActivityManager$TaskDescription;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColor()I

    move-result v6

    :goto_1e8
    const/16 v9, 0xff

    .line 3273
    invoke-static {v6, v9}, Lcom/android/internal/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v6

    invoke-virtual {v10, v6}, Landroid/window/TransitionInfo$Change;->setBackgroundColor(I)V

    :cond_1f1
    if-eqz v12, :cond_1f9

    if-eqz v17, :cond_1f9

    move-object/from16 v6, v17

    const/4 v14, 0x0

    goto :goto_22a

    :cond_1f9
    if-eqz v16, :cond_228

    .line 3280
    invoke-virtual {v15}, Lcom/android/server/wm/TaskFragment;->getAnimationParams()Landroid/window/TaskFragmentAnimationParams;

    move-result-object v6

    .line 3281
    invoke-virtual {v6}, Landroid/window/TaskFragmentAnimationParams;->hasOverrideAnimation()Z

    move-result v9

    if-eqz v9, :cond_228

    .line 3284
    invoke-virtual {v15}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/wm/Task;->getBasePackageName()Ljava/lang/String;

    move-result-object v9

    .line 3285
    invoke-virtual {v6}, Landroid/window/TaskFragmentAnimationParams;->getOpenAnimationResId()I

    move-result v11

    invoke-virtual {v6}, Landroid/window/TaskFragmentAnimationParams;->getChangeAnimationResId()I

    move-result v13

    .line 3286
    invoke-virtual {v6}, Landroid/window/TaskFragmentAnimationParams;->getCloseAnimationResId()I

    move-result v6

    const/4 v14, 0x0

    .line 3283
    invoke-static {v9, v11, v13, v6, v14}, Landroid/window/TransitionInfo$AnimationOptions;->makeCustomAnimOptions(Ljava/lang/String;IIIZ)Landroid/window/TransitionInfo$AnimationOptions;

    move-result-object v6

    .line 3287
    invoke-virtual {v15}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v9

    iget v9, v9, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {v6, v9}, Landroid/window/TransitionInfo$AnimationOptions;->setUserId(I)V

    goto :goto_22a

    :cond_228
    const/4 v14, 0x0

    const/4 v6, 0x0

    :goto_22a
    if-eqz v6, :cond_22f

    .line 3291
    invoke-virtual {v10, v6}, Landroid/window/TransitionInfo$Change;->setAnimationOptions(Landroid/window/TransitionInfo$AnimationOptions;)V

    :cond_22f
    if-eqz v12, :cond_245

    .line 3296
    invoke-static {v12}, Lcom/android/server/wm/AppCompatUtils;->createAppCompatTransitionInfo(Lcom/android/server/wm/ActivityRecord;)Landroid/window/AppCompatTransitionInfo;

    move-result-object v6

    .line 3297
    new-instance v9, Landroid/window/ActivityTransitionInfo;

    iget-object v11, v12, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    .line 3299
    invoke-virtual {v12}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v12

    iget v12, v12, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-direct {v9, v11, v12, v6}, Landroid/window/ActivityTransitionInfo;-><init>(Landroid/content/ComponentName;ILandroid/window/AppCompatTransitionInfo;)V

    .line 3297
    invoke-virtual {v10, v9}, Landroid/window/TransitionInfo$Change;->setActivityTransitionInfo(Landroid/window/ActivityTransitionInfo;)V

    .line 3302
    :cond_245
    iget v6, v8, Lcom/android/server/wm/Transition$ChangeInfo;->mRotation:I

    invoke-virtual {v10, v6, v0}, Landroid/window/TransitionInfo$Change;->setRotation(II)V

    .line 3303
    iget-object v0, v8, Lcom/android/server/wm/Transition$ChangeInfo;->mSnapshot:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_253

    .line 3304
    iget v6, v8, Lcom/android/server/wm/Transition$ChangeInfo;->mSnapshotLuma:F

    invoke-virtual {v10, v0, v6}, Landroid/window/TransitionInfo$Change;->setSnapshot(Landroid/view/SurfaceControl;F)V

    .line 3307
    :cond_253
    invoke-virtual {v3, v10}, Landroid/window/TransitionInfo;->addChange(Landroid/window/TransitionInfo$Change;)V

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, v17

    goto/16 :goto_26

    :cond_25c
    :goto_25c
    return-object v3
.end method

.method public static calculateTransitionRoots(Landroid/window/TransitionInfo;Ljava/util/ArrayList;Landroid/view/SurfaceControl$Transaction;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/window/TransitionInfo;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/Transition$ChangeInfo;",
            ">;",
            "Landroid/view/SurfaceControl$Transaction;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 3094
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_b1

    .line 3095
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/Transition$ChangeInfo;

    iget-object v1, v1, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 3096
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    if-nez v2, :cond_17

    goto/16 :goto_ad

    .line 3098
    :cond_17
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v3

    .line 3101
    invoke-virtual {p0, v3}, Landroid/window/TransitionInfo;->findRootIndex(I)I

    move-result v4

    if-ltz v4, :cond_23

    goto/16 :goto_ad

    .line 3103
    :cond_23
    invoke-static {p1, v1}, Lcom/android/server/wm/Transition;->findCommonAncestor(Ljava/util/ArrayList;Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/WindowContainer;

    move-result-object v4

    .line 3107
    invoke-virtual {v1, v4}, Lcom/android/server/wm/WindowContainer;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    move-result v5

    if-nez v5, :cond_4d

    .line 3110
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Did not find common ancestor! Ancestor= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " target= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Transition"

    invoke-static {v6, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v1

    goto :goto_59

    :cond_4d
    move-object v5, v1

    .line 3113
    :goto_4e
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v6

    if-eq v6, v4, :cond_59

    .line 3114
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v5

    goto :goto_4e

    :cond_59
    :goto_59
    if-ne v1, v5, :cond_6a

    .line 3118
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/Transition$ChangeInfo;

    iget v1, v1, Lcom/android/server/wm/Transition$ChangeInfo;->mWindowingMode:I

    const/4 v6, 0x2

    if-ne v1, v6, :cond_6a

    .line 3122
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->getTopChild()Lcom/android/server/wm/WindowContainer;

    move-result-object v5

    .line 3124
    :cond_6a
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->makeAnimationLeash()Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Transition Root: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3125
    invoke-virtual {v5}, Lcom/android/server/wm/ConfigurationContainer;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    .line 3126
    const-string v6, "Transition.calculateTransitionRoots"

    invoke-virtual {v1, v6}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v1

    .line 3127
    invoke-virtual {v1, v6}, Landroid/view/SurfaceControl;->setUnreleasedWarningCallSite(Ljava/lang/String;)V

    .line 3130
    invoke-static {v2, p2}, Lcom/android/server/wm/Transition;->assignLayersForStartTransaction(Lcom/android/server/wm/WindowContainer;Landroid/view/SurfaceControl$Transaction;)V

    .line 3131
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->getLastLayer()I

    move-result v2

    invoke-virtual {p2, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 3133
    invoke-virtual {v4}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->top:I

    .line 3132
    invoke-virtual {p0, v3, v1, v2, v4}, Landroid/window/TransitionInfo;->addRootLeash(ILandroid/view/SurfaceControl;II)V

    :goto_ad
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_b1
    return-void
.end method

.method public static canPromote(Lcom/android/server/wm/Transition$ChangeInfo;Lcom/android/server/wm/Transition$Targets;Landroid/util/ArrayMap;)Z
    .registers 14

    .line 2817
    iget-object v0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 2818
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    .line 2819
    invoke-virtual {p2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 2820
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->canCreateRemoteAnimationTarget()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_f8

    if-eqz v2, :cond_f8

    .line 2821
    invoke-virtual {v2}, Lcom/android/server/wm/Transition$ChangeInfo;->hasChanged()Z

    move-result v2

    if-nez v2, :cond_1d

    goto/16 :goto_f8

    .line 2826
    :cond_1d
    invoke-static {v0}, Lcom/android/server/wm/Transition;->isWallpaper(Lcom/android/server/wm/WindowContainer;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_35

    .line 2827
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    aget-boolean p0, p0, v4

    if-eqz p0, :cond_34

    sget-object p0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide p1, -0x25ad13ad2acccd76L    # -1.280947603135937E127

    invoke-static {p0, p1, p2, v4, v3}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_34
    return v4

    .line 2831
    :cond_35
    iget-object v2, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mStartParent:Lcom/android/server/wm/WindowContainer;

    if-eqz v2, :cond_42

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    iget-object v5, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mStartParent:Lcom/android/server/wm/WindowContainer;

    if-eq v2, v5, :cond_42

    return v4

    .line 2837
    :cond_42
    invoke-virtual {p0, v0}, Lcom/android/server/wm/Transition$ChangeInfo;->getTransitMode(Lcom/android/server/wm/WindowContainer;)I

    move-result p0

    .line 2838
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v2

    const/4 v5, 0x1

    sub-int/2addr v2, v5

    :goto_4c
    if-ltz v2, :cond_f7

    .line 2839
    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v6

    if-ne v0, v6, :cond_56

    goto/16 :goto_f3

    .line 2841
    :cond_56
    sget-object v7, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    aget-boolean v7, v7, v4

    if-eqz v7, :cond_6e

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v9, 0x19bfecb549673b62L

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v8, v9, v10, v4, v7}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 2843
    :cond_6e
    invoke-virtual {p2, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/Transition$ChangeInfo;

    if-eqz v7, :cond_c4

    .line 2844
    invoke-virtual {p1, v7}, Lcom/android/server/wm/Transition$Targets;->wasParticipated(Lcom/android/server/wm/Transition$ChangeInfo;)Z

    move-result v8

    if-nez v8, :cond_7d

    goto :goto_c4

    .line 2856
    :cond_7d
    invoke-virtual {v7, v6}, Lcom/android/server/wm/Transition$ChangeInfo;->getTransitMode(Lcom/android/server/wm/WindowContainer;)I

    move-result v6

    .line 2857
    sget-object v7, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    aget-boolean v7, v7, v4

    if-eqz v7, :cond_9d

    invoke-static {v6}, Landroid/window/TransitionInfo;->modeToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v9, 0x35c169e944f53a58L    # 9.30855293649066E-50

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v8, v9, v10, v4, v7}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 2860
    :cond_9d
    invoke-static {p0}, Lcom/android/server/wm/Transition;->reduceMode(I)I

    move-result v7

    invoke-static {v6}, Lcom/android/server/wm/Transition;->reduceMode(I)I

    move-result v6

    if-eq v7, v6, :cond_f3

    .line 2861
    sget-object p1, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    aget-boolean p1, p1, v4

    if-eqz p1, :cond_c3

    invoke-static {p0}, Landroid/window/TransitionInfo;->modeToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v0, 0x6a61845989c233aaL    # 2.7460382737481744E204

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, v0, v1, v4, p0}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_c3
    return v4

    .line 2845
    :cond_c4
    :goto_c4
    invoke-virtual {v6}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v7

    if-eqz v7, :cond_db

    .line 2847
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    aget-boolean p0, p0, v4

    if-eqz p0, :cond_da

    sget-object p0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide p1, -0x5751d4667473cf6dL    # -9.801023515249834E-113

    invoke-static {p0, p1, p2, v4, v3}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_da
    return v4

    .line 2851
    :cond_db
    sget-object v7, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    aget-boolean v7, v7, v4

    if-eqz v7, :cond_f3

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v8, 0x6d9a1d968ce03c38L    # 9.218844765689588E219

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v7, v8, v9, v4, v6}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_f3
    :goto_f3
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_4c

    :cond_f7
    return v5

    .line 2822
    :cond_f8
    :goto_f8
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    aget-boolean p0, p0, v4

    if-eqz p0, :cond_11d

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "parent can\'t be target "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v0, -0xa86bcf20866cc83L    # -7.586175146368892E257

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, v0, v1, v4, p0}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_11d
    return v4
.end method

.method public static containsChangeFor(Lcom/android/server/wm/WindowContainer;Ljava/util/ArrayList;)Z
    .registers 5

    .line 1890
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_6
    if-ltz v0, :cond_16

    .line 1891
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Transition$ChangeInfo;

    iget-object v2, v2, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    if-ne v2, p0, :cond_13

    return v1

    :cond_13
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_16
    const/4 p0, 0x0

    return p0
.end method

.method public static findAnimLayoutParamsActivityRecord(ILjava/util/ArrayList;)Lcom/android/server/wm/ActivityRecord;
    .registers 8

    .line 3509
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 3510
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_a
    const/4 v3, 0x0

    if-ge v2, v1, :cond_37

    .line 3512
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/Transition$ChangeInfo;

    iget-object v4, v4, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 3513
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    if-eqz v5, :cond_27

    .line 3514
    invoke-virtual {v4}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_34

    .line 3515
    :cond_27
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asWindowToken()Lcom/android/server/wm/WindowToken;

    move-result-object v5

    if-nez v5, :cond_34

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asWindowState()Lcom/android/server/wm/WindowState;

    move-result-object v4

    if-nez v4, :cond_34

    return-object v3

    :cond_34
    :goto_34
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 3523
    :cond_37
    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3e

    return-object v3

    .line 3528
    :cond_3e
    invoke-static {p1, p0, v0}, Lcom/android/server/wm/Transition;->findAnimLayoutParamsActivityRecord(Ljava/util/List;ILandroid/util/ArraySet;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    return-object p0
.end method

.method public static findAnimLayoutParamsActivityRecord(Ljava/util/List;ILandroid/util/ArraySet;)Lcom/android/server/wm/ActivityRecord;
    .registers 4

    .line 3535
    new-instance v0, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1, p2}, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda1;-><init>(ILandroid/util/ArraySet;)V

    invoke-static {p0, v0}, Lcom/android/server/wm/Transition;->lookForTopWindowWithFilter(Ljava/util/List;Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-eqz p1, :cond_c

    return-object p1

    .line 3541
    :cond_c
    new-instance p1, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda2;

    invoke-direct {p1}, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {p0, p1}, Lcom/android/server/wm/Transition;->lookForTopWindowWithFilter(Ljava/util/List;Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    if-eqz p1, :cond_18

    return-object p1

    .line 3546
    :cond_18
    new-instance p1, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda3;

    invoke-direct {p1}, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda3;-><init>()V

    invoke-static {p0, p1}, Lcom/android/server/wm/Transition;->lookForTopWindowWithFilter(Ljava/util/List;Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    return-object p0
.end method

.method public static findCommonAncestor(Ljava/util/ArrayList;Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/WindowContainer;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/Transition$ChangeInfo;",
            ">;",
            "Lcom/android/server/wm/WindowContainer;",
            ")",
            "Lcom/android/server/wm/WindowContainer;"
        }
    .end annotation

    .line 3453
    invoke-static {p1}, Lcom/android/server/wm/Transition;->getDisplayId(Lcom/android/server/wm/WindowContainer;)I

    move-result v0

    .line 3454
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    .line 3457
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_e
    if-ltz v2, :cond_9b

    .line 3458
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 3459
    iget-object v4, v3, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 3460
    invoke-static {v4}, Lcom/android/server/wm/Transition;->getDisplayId(Lcom/android/server/wm/WindowContainer;)I

    move-result v5

    if-eq v5, v0, :cond_20

    goto/16 :goto_97

    .line 3464
    :cond_20
    invoke-static {v4}, Lcom/android/server/wm/Transition;->isWallpaper(Lcom/android/server/wm/WindowContainer;)Z

    move-result v5

    invoke-static {p1}, Lcom/android/server/wm/Transition;->isWallpaper(Lcom/android/server/wm/WindowContainer;)Z

    move-result v6

    if-eq v5, v6, :cond_2c

    goto/16 :goto_97

    .line 3469
    :cond_2c
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    if-eqz v5, :cond_45

    invoke-static {v3}, Lcom/android/server/wm/Transition;->isOrderOnly(Lcom/android/server/wm/Transition$ChangeInfo;)Z

    move-result v5

    if-eqz v5, :cond_45

    iget v5, v3, Lcom/android/server/wm/Transition$ChangeInfo;->mRotation:I

    .line 3470
    invoke-virtual {v4}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v6

    if-ne v5, v6, :cond_45

    goto :goto_97

    .line 3478
    :cond_45
    iget-object v5, v3, Lcom/android/server/wm/Transition$ChangeInfo;->mStartParent:Lcom/android/server/wm/WindowContainer;

    if-eqz v5, :cond_74

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v5

    if-eqz v5, :cond_74

    iget-object v5, v3, Lcom/android/server/wm/Transition$ChangeInfo;->mStartParent:Lcom/android/server/wm/WindowContainer;

    .line 3479
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->isAttached()Z

    move-result v5

    if-eqz v5, :cond_74

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v5

    iget-object v6, v3, Lcom/android/server/wm/Transition$ChangeInfo;->mStartParent:Lcom/android/server/wm/WindowContainer;

    if-eq v5, v6, :cond_74

    .line 3480
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne v2, v5, :cond_74

    .line 3481
    invoke-virtual {v3, v4}, Lcom/android/server/wm/Transition$ChangeInfo;->getTransitMode(Lcom/android/server/wm/WindowContainer;)I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_71

    const/4 v6, 0x4

    if-ne v5, v6, :cond_74

    .line 3483
    :cond_71
    iget-object v1, v3, Lcom/android/server/wm/Transition$ChangeInfo;->mStartParent:Lcom/android/server/wm/WindowContainer;

    goto :goto_97

    .line 3487
    :cond_74
    :goto_74
    invoke-virtual {v4, v1}, Lcom/android/server/wm/WindowContainer;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    move-result v5

    if-nez v5, :cond_7f

    .line 3488
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    goto :goto_74

    .line 3494
    :cond_7f
    iget-object v3, v3, Lcom/android/server/wm/Transition$ChangeInfo;->mCommonAncestor:Lcom/android/server/wm/WindowContainer;

    if-eqz v3, :cond_97

    .line 3495
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->isAttached()Z

    move-result v4

    if-nez v4, :cond_8a

    goto :goto_97

    :cond_8a
    :goto_8a
    if-eq v3, v1, :cond_97

    .line 3498
    invoke-virtual {v3, v1}, Lcom/android/server/wm/WindowContainer;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    move-result v4

    if-nez v4, :cond_97

    .line 3499
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    goto :goto_8a

    :cond_97
    :goto_97
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_e

    :cond_9b
    return-object v1
.end method

.method public static fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/Transition;
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 407
    :cond_4
    :try_start_4
    move-object v1, p0

    check-cast v1, Lcom/android/server/wm/Transition$Token;

    iget-object v1, v1, Lcom/android/server/wm/Transition$Token;->mTransition:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/Transition;
    :try_end_f
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_f} :catch_10

    return-object v1

    :catch_10
    move-exception v1

    .line 409
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid transition token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "Transition"

    invoke-static {v2, p0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method public static getAnimatableParent(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/WindowContainer;
    .registers 2

    .line 2750
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object p0

    :goto_4
    if-eqz p0, :cond_17

    .line 2752
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->canCreateRemoteAnimationTarget()Z

    move-result v0

    if-nez v0, :cond_17

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isOrganized()Z

    move-result v0

    if-nez v0, :cond_17

    .line 2753
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object p0

    goto :goto_4

    :cond_17
    return-object p0
.end method

.method public static getDisplayId(Lcom/android/server/wm/WindowContainer;)I
    .registers 2

    .line 3085
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 3086
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result p0

    return p0

    :cond_f
    const/4 p0, -0x1

    return p0
.end method

.method public static getLeashSurface(Lcom/android/server/wm/WindowContainer;Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl;
    .registers 3

    .line 3047
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 3051
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getWindowingLayer()Landroid/view/SurfaceControl;

    move-result-object p0

    return-object p0

    .line 3053
    :cond_b
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->useShellTransitionsRotation()Z

    move-result v0

    if-nez v0, :cond_27

    .line 3054
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asWindowToken()Lcom/android/server/wm/WindowToken;

    move-result-object v0

    if-eqz v0, :cond_27

    if-eqz p1, :cond_20

    .line 3058
    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowToken;->getOrCreateFixedRotationLeash(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl;

    move-result-object p1

    goto :goto_24

    .line 3059
    :cond_20
    invoke-virtual {v0}, Lcom/android/server/wm/WindowToken;->getFixedRotationLeash()Landroid/view/SurfaceControl;

    move-result-object p1

    :goto_24
    if-eqz p1, :cond_27

    return-object p1

    .line 3063
    :cond_27
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object p0

    return-object p0
.end method

.method public static getOrigParentSurface(Lcom/android/server/wm/WindowContainer;)Landroid/view/SurfaceControl;
    .registers 2

    .line 3067
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 3070
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object p0

    return-object p0

    .line 3072
    :cond_b
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object p0

    return-object p0
.end method

.method public static getTaskRotationAnimation(Lcom/android/server/wm/Task;)I
    .registers 6

    .line 3565
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopVisibleActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    const/4 v1, -0x1

    if-nez v0, :cond_8

    return v1

    :cond_8
    const/4 v2, 0x0

    .line 3567
    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityRecord;->findMainWindow(Z)Lcom/android/server/wm/WindowState;

    move-result-object v2

    if-nez v2, :cond_10

    return v1

    .line 3569
    :cond_10
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getRotationAnimationHint()I

    move-result v3

    if-ltz v3, :cond_17

    return v3

    .line 3571
    :cond_17
    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1f

    return v3

    .line 3573
    :cond_1f
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getTopFullscreenOpaqueWindow()Lcom/android/server/wm/WindowState;

    move-result-object p0

    if-ne v2, p0, :cond_37

    .line 3574
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->matchParentBounds()Z

    move-result p0

    if-nez p0, :cond_32

    goto :goto_37

    .line 3578
    :cond_32
    iget-object p0, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    return p0

    :cond_37
    :goto_37
    return v1
.end method

.method public static isInputMethod(Lcom/android/server/wm/WindowContainer;)Z
    .registers 2

    .line 2770
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getWindowType()I

    move-result p0

    const/16 v0, 0x7db

    if-ne p0, v0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public static isOrderOnly(Lcom/android/server/wm/Transition$ChangeInfo;)Z
    .registers 4

    .line 3435
    iget-object v0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 3436
    iget v1, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_1d

    .line 3437
    invoke-virtual {p0, v0}, Lcom/android/server/wm/Transition$ChangeInfo;->getTransitMode(Lcom/android/server/wm/WindowContainer;)I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_1d

    .line 3438
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mAbsoluteBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1d

    const/4 p0, 0x1

    return p0

    :cond_1d
    const/4 p0, 0x0

    return p0
.end method

.method public static isReadyGroup(Lcom/android/server/wm/WindowContainer;)Z
    .registers 1

    .line 3081
    instance-of p0, p0, Lcom/android/server/wm/DisplayContent;

    return p0
.end method

.method public static isTranslucent(Lcom/android/server/wm/WindowContainer;)Z
    .registers 4

    .line 2774
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_d

    .line 2776
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->fillsParent()Z

    move-result p0

    xor-int/2addr p0, v1

    return p0

    .line 2781
    :cond_d
    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->isTranslucentForTransition()Z

    move-result v2

    if-eqz v2, :cond_14

    return v1

    .line 2785
    :cond_14
    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->hasAdjacentTaskFragment()Z

    move-result v2

    if-nez v2, :cond_20

    .line 2787
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->fillsParent()Z

    move-result p0

    xor-int/2addr p0, v1

    return p0

    .line 2791
    :cond_20
    new-instance p0, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda4;

    invoke-direct {p0}, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda4;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/server/wm/TaskFragment;->forOtherAdjacentTaskFragments(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public static isWallpaper(Lcom/android/server/wm/WindowContainer;)Z
    .registers 1

    .line 2766
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asWallpaperToken()Lcom/android/server/wm/WallpaperWindowToken;

    move-result-object p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public static lookForTopWindowWithFilter(Ljava/util/List;Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;
    .registers 6

    .line 3551
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_2e

    .line 3553
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Transition$ChangeInfo;

    iget-object v2, v2, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 3554
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v3

    if-eqz v3, :cond_1e

    .line 3555
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    goto :goto_22

    .line 3556
    :cond_1e
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    :goto_22
    if-eqz v2, :cond_2b

    .line 3557
    invoke-interface {p1, v2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b

    return-object v2

    :cond_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_2e
    const/4 p0, 0x0

    return-object p0
.end method

.method public static parallelCollectTypeToString(I)Ljava/lang/String;
    .registers 3

    if-eqz p0, :cond_25

    const/4 v0, 0x1

    if-eq p0, v0, :cond_22

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1f

    .line 4077
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 4076
    :cond_1f
    const-string p0, "RECENTS"

    return-object p0

    .line 4075
    :cond_22
    const-string p0, "MUTUAL"

    return-object p0

    .line 4074
    :cond_25
    const-string p0, "NONE"

    return-object p0
.end method

.method public static populateParentChanges(Lcom/android/server/wm/Transition$Targets;Landroid/util/ArrayMap;)V
    .registers 10

    .line 2980
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2982
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/wm/Transition$Targets;->mArray:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 2983
    iget-object v2, p0, Lcom/android/server/wm/Transition$Targets;->mArray:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_18
    if-ltz v2, :cond_28

    .line 2984
    iget-object v3, p0, Lcom/android/server/wm/Transition$Targets;->mArray:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/Transition$ChangeInfo;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, -0x1

    goto :goto_18

    .line 2986
    :cond_28
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_2e
    if-ltz v2, :cond_b5

    .line 2987
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 2988
    iget-object v4, v3, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 2990
    invoke-static {v4}, Lcom/android/server/wm/Transition;->isWallpaper(Lcom/android/server/wm/WindowContainer;)Z

    move-result v5

    .line 2991
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2994
    invoke-static {v4}, Lcom/android/server/wm/Transition;->getAnimatableParent(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/WindowContainer;

    move-result-object v4

    :goto_43
    if-eqz v4, :cond_b1

    .line 2996
    invoke-virtual {p1, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/Transition$ChangeInfo;

    if-nez v6, :cond_4e

    goto :goto_b1

    .line 3000
    :cond_4e
    invoke-virtual {v6}, Lcom/android/server/wm/Transition$ChangeInfo;->hasChanged()Z

    move-result v7

    if-nez v7, :cond_55

    goto :goto_ac

    .line 3006
    :cond_55
    iget-object v7, v4, Lcom/android/server/wm/WindowContainer;->mRemoteToken:Lcom/android/server/wm/WindowContainer$RemoteToken;

    if-nez v7, :cond_5a

    goto :goto_ac

    .line 3010
    :cond_5a
    iget-object v7, v6, Lcom/android/server/wm/Transition$ChangeInfo;->mEndParent:Lcom/android/server/wm/WindowContainer;

    if-eqz v7, :cond_63

    if-nez v5, :cond_63

    .line 3011
    iput-object v4, v3, Lcom/android/server/wm/Transition$ChangeInfo;->mEndParent:Lcom/android/server/wm/WindowContainer;

    goto :goto_b1

    .line 3015
    :cond_63
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a1

    if-eqz v5, :cond_6e

    .line 3017
    iput-object v4, v3, Lcom/android/server/wm/Transition$ChangeInfo;->mEndParent:Lcom/android/server/wm/WindowContainer;

    goto :goto_71

    .line 3019
    :cond_6e
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3027
    :goto_71
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_78

    goto :goto_b1

    :cond_78
    const/4 v4, 0x0

    .line 3029
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/Transition$ChangeInfo;

    iget-object v5, v5, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    iput-object v5, v3, Lcom/android/server/wm/Transition$ChangeInfo;->mEndParent:Lcom/android/server/wm/WindowContainer;

    .line 3030
    :goto_83
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v4, v3, :cond_b1

    .line 3031
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/Transition$ChangeInfo;

    add-int/lit8 v4, v4, 0x1

    .line 3032
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/Transition$ChangeInfo;

    iget-object v5, v5, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    iput-object v5, v3, Lcom/android/server/wm/Transition$ChangeInfo;->mEndParent:Lcom/android/server/wm/WindowContainer;

    .line 3033
    invoke-virtual {p0, v3}, Lcom/android/server/wm/Transition$Targets;->add(Lcom/android/server/wm/Transition$ChangeInfo;)V

    goto :goto_83

    .line 3023
    :cond_a1
    invoke-static {v4}, Lcom/android/server/wm/Transition;->reportIfNotTop(Lcom/android/server/wm/WindowContainer;)Z

    move-result v7

    if-eqz v7, :cond_ac

    if-nez v5, :cond_ac

    .line 3024
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2995
    :cond_ac
    :goto_ac
    invoke-static {v4}, Lcom/android/server/wm/Transition;->getAnimatableParent(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/WindowContainer;

    move-result-object v4

    goto :goto_43

    :cond_b1
    :goto_b1
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_2e

    :cond_b5
    return-void
.end method

.method public static reduceMode(I)I
    .registers 2

    .line 0
    const/4 v0, 0x3

    if-eq p0, v0, :cond_9

    const/4 v0, 0x4

    if-eq p0, v0, :cond_7

    return p0

    :cond_7
    const/4 p0, 0x2

    return p0

    :cond_9
    const/4 p0, 0x1

    return p0
.end method

.method public static reportIfNotTop(Lcom/android/server/wm/WindowContainer;)Z
    .registers 1

    .line 2762
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isOrganized()Z

    move-result p0

    return p0
.end method

.method public static setEndFixedRotationIfNeeded(Landroid/window/TransitionInfo$Change;Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;)V
    .registers 5

    .line 3393
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_55

    .line 3397
    :cond_7
    invoke-static {}, Lcom/android/server/wm/ActivityTaskManagerService;->isPip2ExperimentEnabled()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 3398
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_1a

    goto :goto_55

    .line 3405
    :cond_1a
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getDisplayRotation()I

    move-result v0

    .line 3406
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v1

    .line 3407
    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getDisplayRotation()I

    move-result v1

    if-eq v0, v1, :cond_30

    .line 3411
    invoke-virtual {p0, v1}, Landroid/window/TransitionInfo$Change;->setEndFixedRotation(I)V

    return-void

    .line 3419
    :cond_30
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result p1

    if-eqz p1, :cond_55

    iget-object p1, p2, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->inTransition()Z

    move-result p1

    if-eqz p1, :cond_3f

    goto :goto_55

    .line 3422
    :cond_3f
    iget-object p1, p2, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 3423
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getLastOrientationSource()Lcom/android/server/wm/WindowContainer;

    move-result-object p1

    if-nez p1, :cond_48

    goto :goto_55

    .line 3427
    :cond_48
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->getDisplayRotation()I

    move-result p1

    if-eq v0, p1, :cond_55

    .line 3429
    invoke-virtual {p0, p1}, Landroid/window/TransitionInfo$Change;->setEndFixedRotation(I)V

    :cond_55
    :goto_55
    return-void
.end method

.method public static tryPromote(Lcom/android/server/wm/Transition$Targets;Landroid/util/ArrayMap;)V
    .registers 12

    .line 2888
    iget-object v0, p0, Lcom/android/server/wm/Transition$Targets;->mArray:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    move-object v2, v1

    :goto_a
    if-ltz v0, :cond_eb

    .line 2889
    iget-object v3, p0, Lcom/android/server/wm/Transition$Targets;->mArray:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 2890
    iget-object v4, v3, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 2891
    sget-object v5, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    const/4 v6, 0x0

    aget-boolean v5, v5, v6

    if-eqz v5, :cond_2f

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    sget-object v7, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v8, -0x7bbc591a68b0c5d1L    # -4.033105707718502E-288

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v7, v8, v9, v6, v5}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 2892
    :cond_2f
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v5

    if-ne v5, v2, :cond_47

    .line 2894
    sget-object v3, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    aget-boolean v3, v3, v6

    if-eqz v3, :cond_e7

    sget-object v3, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v4, -0x5e9fc77bb376cc2dL    # -6.342837275253804E-148

    invoke-static {v3, v4, v5, v6, v1}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    goto/16 :goto_e7

    .line 2898
    :cond_47
    invoke-static {v3, p0, p1}, Lcom/android/server/wm/Transition;->canPromote(Lcom/android/server/wm/Transition$ChangeInfo;Lcom/android/server/wm/Transition$Targets;Landroid/util/ArrayMap;)Z

    move-result v7

    if-nez v7, :cond_50

    move-object v2, v5

    goto/16 :goto_e7

    .line 2902
    :cond_50
    invoke-static {v4}, Lcom/android/server/wm/Transition;->reportIfNotTop(Lcom/android/server/wm/WindowContainer;)Z

    move-result v7

    if-eqz v7, :cond_6f

    .line 2903
    sget-object v7, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    aget-boolean v7, v7, v6

    if-eqz v7, :cond_a9

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget-object v7, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v8, -0x65adad8a553ec094L    # -6.899189364683506E-182

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v7, v8, v9, v6, v4}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    goto :goto_a9

    .line 2905
    :cond_6f
    iget v7, v3, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    and-int/lit8 v7, v7, 0x40

    if-eqz v7, :cond_8e

    .line 2908
    sget-object v7, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    aget-boolean v7, v7, v6

    if-eqz v7, :cond_a9

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget-object v7, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v8, 0x1eb734bc7e503baaL

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v7, v8, v9, v6, v4}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    goto :goto_a9

    .line 2911
    :cond_8e
    sget-object v7, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    aget-boolean v7, v7, v6

    if-eqz v7, :cond_a6

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget-object v7, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v8, 0xd199f8fa39d39c7L

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v7, v8, v9, v6, v4}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 2913
    :cond_a6
    invoke-virtual {p0, v0}, Lcom/android/server/wm/Transition$Targets;->remove(I)V

    .line 2915
    :cond_a9
    :goto_a9
    invoke-virtual {p1, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 2916
    iget-object v7, p0, Lcom/android/server/wm/Transition$Targets;->mArray:Landroid/util/SparseArray;

    invoke-virtual {v7, v4}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v7

    if-gez v7, :cond_d4

    .line 2917
    sget-object v7, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    aget-boolean v7, v7, v6

    if-eqz v7, :cond_cf

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    sget-object v7, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v8, 0xbadc3b08a373fbcL

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v7, v8, v9, v6, v5}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_cf
    add-int/lit8 v0, v0, 0x1

    .line 2921
    invoke-virtual {p0, v4}, Lcom/android/server/wm/Transition$Targets;->add(Lcom/android/server/wm/Transition$ChangeInfo;)V

    .line 2923
    :cond_d4
    iget v3, v3, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_e1

    .line 2924
    iget v3, v4, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    or-int/lit8 v3, v3, 0x8

    iput v3, v4, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    goto :goto_e7

    .line 2926
    :cond_e1
    iget v3, v4, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    or-int/lit8 v3, v3, 0x10

    iput v3, v4, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    :cond_e7
    :goto_e7
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_a

    :cond_eb
    return-void
.end method


# virtual methods
.method public abort()V
    .registers 7

    .line 1822
    iget v0, p0, Lcom/android/server/wm/Transition;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_6

    return-void

    :cond_6
    const/4 v2, -0x1

    if-ne v0, v2, :cond_c

    .line 1825
    iput v1, p0, Lcom/android/server/wm/Transition;->mState:I

    return-void

    :cond_c
    const/4 v2, 0x1

    if-eqz v0, :cond_2b

    if-ne v0, v2, :cond_12

    goto :goto_2b

    .line 1829
    :cond_12
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Too late to abort. state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/wm/Transition;->mState:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1831
    :cond_2b
    :goto_2b
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    const/4 v3, 0x0

    aget-boolean v0, v0, v3

    if-eqz v0, :cond_47

    iget v0, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    int-to-long v3, v0

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-wide v4, 0x1114a0668f863630L

    invoke-static {v0, v4, v5, v2, v3}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 1833
    :cond_47
    iput v1, p0, Lcom/android/server/wm/Transition;->mState:I

    .line 1834
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mLogger:Lcom/android/server/wm/TransitionController$Logger;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/wm/TransitionController$Logger;->mAbortTimeNs:J

    .line 1835
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget-object v0, v0, Lcom/android/server/wm/TransitionController;->mTransitionTracer:Lcom/android/server/wm/TransitionTracer;

    invoke-interface {v0, p0}, Lcom/android/server/wm/TransitionTracer;->logAbortedTransition(Lcom/android/server/wm/Transition;)V

    .line 1837
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    iget v1, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    invoke-virtual {v0, v1}, Lcom/android/server/wm/BLASTSyncEngine;->abort(I)V

    .line 1838
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget-object v1, p0, Lcom/android/server/wm/Transition;->mTargetDisplays:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/TransitionController;->dispatchLegacyAppTransitionCancelled(Ljava/util/ArrayList;)V

    .line 1839
    invoke-virtual {p0}, Lcom/android/server/wm/Transition;->invokeTransitionEndedListeners()V

    return-void
.end method

.method public addFlag(I)V
    .registers 3

    .line 420
    iget v0, p0, Lcom/android/server/wm/Transition;->mFlags:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/android/server/wm/Transition;->mFlags:I

    return-void
.end method

.method public addSourceActivity(Lcom/android/server/wm/ActivityRecord;)V
    .registers 3

    .line 1030
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mSourceActivities:Ljava/util/ArrayList;

    if-nez v0, :cond_c

    .line 1031
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/Transition;->mSourceActivities:Ljava/util/ArrayList;

    goto :goto_13

    .line 1032
    :cond_c
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    return-void

    .line 1035
    :cond_13
    :goto_13
    iget-object p0, p0, Lcom/android/server/wm/Transition;->mSourceActivities:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final addToTopChange(Lcom/android/server/wm/WindowContainer;)V
    .registers 4

    .line 2448
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2449
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 2450
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/server/wm/Transition$ChangeInfo;

    invoke-direct {v1, p1}, Lcom/android/server/wm/Transition$ChangeInfo;-><init>(Lcom/android/server/wm/WindowContainer;)V

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2452
    :cond_17
    iget-object p0, p0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/Transition$ChangeInfo;

    iget p1, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    return-void
.end method

.method public final addTransactionPresentedCallback(Landroid/view/SurfaceControl$Transaction;Ljava/lang/Runnable;)V
    .registers 5

    .line 2305
    new-instance v0, Lcom/android/server/SystemServerInitThreadPool$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/SystemServerInitThreadPool$$ExternalSyntheticLambda0;-><init>()V

    new-instance v1, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda15;

    invoke-direct {v1, p0, p2}, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda15;-><init>(Lcom/android/server/wm/Transition;Ljava/lang/Runnable;)V

    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->addTransactionCompletedListener(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)Landroid/view/SurfaceControl$Transaction;

    return-void
.end method

.method public addTransactionPresentedListener(Ljava/lang/Runnable;)V
    .registers 3

    .line 2283
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mTransactionPresentedListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 2284
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/Transition;->mTransactionPresentedListeners:Ljava/util/ArrayList;

    .line 2286
    :cond_b
    iget-object p0, p0, Lcom/android/server/wm/Transition;->mTransactionPresentedListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addTransitionEndedListener(Ljava/lang/Runnable;)V
    .registers 4

    .line 2293
    iget v0, p0, Lcom/android/server/wm/Transition;->mState:I

    if-eqz v0, :cond_21

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    goto :goto_21

    .line 2294
    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t register listeners if the transition isn\'t collecting. state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/wm/Transition;->mState:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2297
    :cond_21
    :goto_21
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mTransitionEndedListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_2c

    .line 2298
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/Transition;->mTransitionEndedListeners:Ljava/util/ArrayList;

    .line 2300
    :cond_2c
    iget-object p0, p0, Lcom/android/server/wm/Transition;->mTransitionEndedListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public allReady()Z
    .registers 2

    .line 1150
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mReadyTracker:Lcom/android/server/wm/Transition$ReadyTracker;

    invoke-virtual {v0}, Lcom/android/server/wm/Transition$ReadyTracker;->isReady()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    .line 1151
    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->useFullReadyTracking()Z

    move-result v0

    if-nez v0, :cond_18

    iget-object p0, p0, Lcom/android/server/wm/Transition;->mReadyTrackerOld:Lcom/android/server/wm/Transition$ReadyTrackerOld;

    invoke-virtual {p0}, Lcom/android/server/wm/Transition$ReadyTrackerOld;->allReady()Z

    move-result p0

    if-eqz p0, :cond_1a

    :cond_18
    const/4 p0, 0x1

    return p0

    :cond_1a
    const/4 p0, 0x0

    return p0
.end method

.method public applyDisplayChangeIfNeeded(Landroid/util/ArraySet;)V
    .registers 7

    .line 3626
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_8
    if-ltz v0, :cond_5e

    .line 3627
    iget-object v2, p0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    .line 3628
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    if-nez v2, :cond_19

    goto :goto_5b

    .line 3630
    :cond_19
    iget-object v3, p0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 3631
    sget-object v4, Landroid/window/DesktopExperienceFlags;->ENABLE_DISPLAY_DISCONNECT_INTERACTION:Landroid/window/DesktopExperienceFlags;

    invoke-virtual {v4}, Landroid/window/DesktopExperienceFlags;->isTrue()Z

    move-result v4

    if-eqz v4, :cond_2e

    iget-boolean v4, v3, Lcom/android/server/wm/Transition$ChangeInfo;->mExistenceChanged:Z

    if-eqz v4, :cond_2e

    goto :goto_5b

    .line 3637
    :cond_2e
    invoke-virtual {v3}, Lcom/android/server/wm/Transition$ChangeInfo;->hasChanged()Z

    move-result v3

    if-nez v3, :cond_35

    goto :goto_5b

    .line 3638
    :cond_35
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->sendNewConfiguration()Z

    move-result v3

    .line 3643
    iget-object v4, p0, Lcom/android/server/wm/Transition;->mReadyTrackerOld:Lcom/android/server/wm/Transition$ReadyTrackerOld;

    invoke-static {v4}, Lcom/android/server/wm/Transition$ReadyTrackerOld;->-$$Nest$fgetmUsed(Lcom/android/server/wm/Transition$ReadyTrackerOld;)Z

    move-result v4

    if-nez v4, :cond_44

    .line 3644
    invoke-virtual {p0, v2, v1}, Lcom/android/server/wm/Transition;->setReady(Lcom/android/server/wm/WindowContainer;Z)V

    :cond_44
    if-nez v3, :cond_47

    goto :goto_5b

    .line 3649
    :cond_47
    iget-object v3, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget-object v3, v3, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskSupervisor;->isRootVisibilityUpdateDeferred()Z

    move-result v3

    if-eqz v3, :cond_5b

    .line 3650
    new-instance v3, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda9;

    invoke-direct {v3, p1}, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda9;-><init>(Landroid/util/ArraySet;)V

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    :cond_5b
    :goto_5b
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_5e
    return-void
.end method

.method public applyDisplayRemovalsIfNeeded()Z
    .registers 6

    .line 3666
    sget-object v0, Landroid/window/DesktopExperienceFlags;->ENABLE_DISPLAY_DISCONNECT_INTERACTION:Landroid/window/DesktopExperienceFlags;

    invoke-virtual {v0}, Landroid/window/DesktopExperienceFlags;->isTrue()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    .line 3668
    :cond_a
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    :goto_12
    if-ltz v0, :cond_3f

    .line 3669
    iget-object v3, p0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-virtual {v3, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    .line 3670
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    if-nez v3, :cond_23

    goto :goto_3c

    .line 3672
    :cond_23
    iget-object v4, p0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 3673
    iget-boolean v4, v4, Lcom/android/server/wm/Transition$ChangeInfo;->mExistenceChanged:Z

    if-eqz v4, :cond_3c

    .line 3674
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->remove()V

    .line 3675
    iget-object v1, p0, Lcom/android/server/wm/Transition;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPossibleDisplayInfoMapper:Lcom/android/server/wm/PossibleDisplayInfoMapper;

    iget v3, v3, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v1, v3}, Lcom/android/server/wm/PossibleDisplayInfoMapper;->removePossibleDisplayInfos(I)V

    move v1, v2

    :cond_3c
    :goto_3c
    add-int/lit8 v0, v0, -0x1

    goto :goto_12

    :cond_3f
    return v1
.end method

.method public final applyReady()V
    .registers 8

    .line 1120
    iget v0, p0, Lcom/android/server/wm/Transition;->mState:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_6

    goto :goto_6d

    .line 1123
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/wm/Transition;->allReady()Z

    move-result v0

    .line 1124
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    const/4 v2, 0x0

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_2b

    iget v1, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    int-to-long v3, v1

    sget-object v1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    filled-new-array {v5, v3}, [Ljava/lang/Object;

    move-result-object v3

    const-wide v4, -0x36b50dd81b48ce0fL    # -1.2018282467695568E45

    const/4 v6, 0x7

    invoke-static {v1, v4, v5, v6, v3}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 1126
    :cond_2b
    iget-object v1, p0, Lcom/android/server/wm/Transition;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    iget v3, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    invoke-virtual {v1, v3, v0}, Lcom/android/server/wm/BLASTSyncEngine;->setReady(IZ)Z

    move-result v1

    if-eqz v1, :cond_6d

    if-eqz v0, :cond_6d

    .line 1128
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mLogger:Lcom/android/server/wm/TransitionController$Logger;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/android/server/wm/TransitionController$Logger;->mReadyTimeNs:J

    .line 1129
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mOnTopTasksAtReady:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1130
    :goto_44
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mTargetDisplays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_5c

    .line 1131
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mTargetDisplays:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/DisplayContent;

    iget-object v1, p0, Lcom/android/server/wm/Transition;->mOnTopTasksAtReady:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/android/server/wm/Transition;->addOnTopTasks(Lcom/android/server/wm/DisplayContent;Ljava/util/ArrayList;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_44

    .line 1133
    :cond_5c
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget-object v0, v0, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 1134
    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getTopFocusedDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/Transition;->mOnTopDisplayAtReady:Lcom/android/server/wm/DisplayContent;

    .line 1135
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/TransitionController;->onTransitionPopulated(Lcom/android/server/wm/Transition;)V

    :cond_6d
    :goto_6d
    return-void
.end method

.method public final buildFinishTransaction(Landroid/view/SurfaceControl$Transaction;Landroid/window/TransitionInfo;[Lcom/android/server/wm/DisplayContent;)V
    .registers 8

    .line 1196
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    const/4 v1, 0x0

    if-ltz v0, :cond_54

    .line 1197
    iget-object v2, p0, Lcom/android/server/wm/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Transition$ChangeInfo;

    iget-object v2, v2, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 1198
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    if-nez v3, :cond_1c

    goto :goto_51

    .line 1199
    :cond_1c
    invoke-static {v2, v1}, Lcom/android/server/wm/Transition;->getLeashSurface(Lcom/android/server/wm/WindowContainer;Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl;

    move-result-object v1

    .line 1200
    invoke-static {v2}, Lcom/android/server/wm/Transition;->getOrigParentSurface(Lcom/android/server/wm/WindowContainer;)Landroid/view/SurfaceControl;

    move-result-object v3

    .line 1202
    invoke-virtual {p1, v1, v3}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 1203
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getLastLayer()I

    move-result v3

    invoke-virtual {p1, v1, v3}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    const/4 v3, 0x0

    .line 1204
    invoke-virtual {p1, v1, v3}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 1205
    invoke-virtual {p1, v1, v3}, Landroid/view/SurfaceControl$Transaction;->setShadowRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    const/high16 v3, 0x3f800000    # 1.0f

    .line 1206
    invoke-virtual {p1, v1, v3}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 1210
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    if-eqz v3, :cond_4e

    iget-object v3, p0, Lcom/android/server/wm/Transition;->mTargets:Ljava/util/ArrayList;

    .line 1211
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/Transition$ChangeInfo;

    iget v3, v3, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    and-int/lit8 v3, v3, 0x40

    if-nez v3, :cond_51

    .line 1212
    :cond_4e
    invoke-virtual {p0, p1, v2, v1}, Lcom/android/server/wm/Transition;->resetSurfaceTransform(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/WindowContainer;Landroid/view/SurfaceControl;)V

    :cond_51
    :goto_51
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1216
    :cond_54
    iget-object p0, p0, Lcom/android/server/wm/Transition;->mContainerFreezer:Lcom/android/server/wm/Transition$IContainerFreezer;

    if-eqz p0, :cond_5b

    .line 1217
    invoke-interface {p0, p1}, Lcom/android/server/wm/Transition$IContainerFreezer;->cleanUp(Landroid/view/SurfaceControl$Transaction;)V

    .line 1221
    :cond_5b
    array-length p0, p3

    add-int/lit8 p0, p0, -0x1

    :goto_5e
    if-ltz p0, :cond_68

    .line 1222
    aget-object v0, p3, p0

    invoke-static {v0, p1}, Lcom/android/server/wm/Transition;->assignLayersForFinishTransaction(Lcom/android/server/wm/WindowContainer;Landroid/view/SurfaceControl$Transaction;)V

    add-int/lit8 p0, p0, -0x1

    goto :goto_5e

    :cond_68
    const/4 p0, 0x0

    .line 1225
    :goto_69
    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getRootCount()I

    move-result p3

    if-ge p0, p3, :cond_7d

    .line 1226
    invoke-virtual {p2, p0}, Landroid/window/TransitionInfo;->getRoot(I)Landroid/window/TransitionInfo$Root;

    move-result-object p3

    invoke-virtual {p3}, Landroid/window/TransitionInfo$Root;->getLeash()Landroid/view/SurfaceControl;

    move-result-object p3

    invoke-virtual {p1, p3, v1}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    add-int/lit8 p0, p0, 0x1

    goto :goto_69

    :cond_7d
    return-void
.end method

.method public calcParallelCollectType(Landroid/window/WindowContainerTransaction;)V
    .registers 8

    const/4 v0, 0x0

    move v1, v0

    .line 428
    :goto_2
    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction;->getHierarchyOps()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4a

    .line 429
    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction;->getHierarchyOps()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/WindowContainerTransaction$HierarchyOp;

    .line 430
    invoke-virtual {v2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getType()I

    move-result v3

    const/4 v4, 0x7

    if-eq v3, v4, :cond_1e

    goto :goto_47

    .line 431
    :cond_1e
    invoke-virtual {v2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getLaunchOptions()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_47

    .line 432
    invoke-virtual {v2}, Landroid/os/Bundle;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2b

    goto :goto_47

    .line 433
    :cond_2b
    const-string v3, "android.activity.transientLaunch"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_47

    .line 435
    sget-object v2, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_44

    sget-object v2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v3, -0x257a196ac496c4d7L    # -1.1860048369741397E128

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v0, v5}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_44
    const/4 v2, 0x2

    .line 437
    iput v2, p0, Lcom/android/server/wm/Transition;->mParallelCollectType:I

    :cond_47
    :goto_47
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4a
    return-void
.end method

.method public canApplyDim(Lcom/android/server/wm/Task;)Z
    .registers 4

    .line 571
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mTransientLaunches:Landroid/util/ArrayMap;

    const/4 v1, 0x1

    if-nez v0, :cond_6

    return v1

    .line 572
    :cond_6
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isSuitableForDimming()Z

    move-result p1

    if-eqz p1, :cond_d

    return v1

    .line 578
    :cond_d
    iget-object p1, p0, Lcom/android/server/wm/Transition;->mTransientLaunches:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result p1

    sub-int/2addr p1, v1

    :goto_14
    if-ltz p1, :cond_2f

    .line 580
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mTransientLaunches:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_2c

    .line 581
    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->canAffectSystemUiFlags()Z

    move-result v0

    if-eqz v0, :cond_2c

    const/4 p0, 0x0

    return p0

    :cond_2c
    add-int/lit8 p1, p1, -0x1

    goto :goto_14

    :cond_2f
    return v1
.end method

.method public final checkEnterPipOnFinish(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 7

    .line 1333
    iget-boolean v0, p0, Lcom/android/server/wm/Transition;->mCanPipOnFinish:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_cc

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_cc

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_cc

    sget-object v0, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {p1, v0}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v0

    if-nez v0, :cond_1b

    goto/16 :goto_cc

    .line 1338
    :cond_1b
    sget-object v0, Landroid/window/DesktopExperienceFlags;->ENABLE_DESKTOP_WINDOWING_PIP:Landroid/window/DesktopExperienceFlags;

    invoke-virtual {v0}, Landroid/window/DesktopExperienceFlags;->isTrue()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 1339
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_2f

    return v1

    .line 1343
    :cond_2f
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Transition;->getVisibleTransientLaunch(Lcom/android/server/wm/TaskDisplayArea;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 1344
    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->pictureInPictureArgs:Landroid/app/PictureInPictureParams;

    const/4 v3, 0x1

    if-eqz v2, :cond_90

    invoke-virtual {v2}, Landroid/app/PictureInPictureParams;->isAutoEnterEnabled()Z

    move-result v2

    if-eqz v2, :cond_90

    .line 1345
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v0

    if-eqz v0, :cond_52

    invoke-virtual {p0}, Lcom/android/server/wm/Transition;->didCommitTransientLaunch()Z

    move-result v0

    if-eqz v0, :cond_54

    .line 1348
    :cond_52
    iput-boolean v3, p1, Lcom/android/server/wm/ActivityRecord;->supportsEnterPipOnTaskSwitch:Z

    .line 1353
    :cond_54
    const-string v0, "enterPictureInPictureMode"

    invoke-virtual {p1, v0, v3}, Lcom/android/server/wm/ActivityRecord;->checkEnterPictureInPictureState(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_5d

    return v1

    .line 1357
    :cond_5d
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v0

    .line 1358
    iget-object v2, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget-object v2, v2, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, p1, Lcom/android/server/wm/ActivityRecord;->pictureInPictureArgs:Landroid/app/PictureInPictureParams;

    invoke-virtual {v2, p1, v4, v1, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->enterPictureInPictureMode(Lcom/android/server/wm/ActivityRecord;Landroid/app/PictureInPictureParams;ZZ)Z

    move-result v1

    .line 1360
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v2

    if-ne v0, v3, :cond_8f

    const/4 v0, 0x2

    if-ne v2, v0, :cond_8f

    .line 1361
    iget-object p0, p0, Lcom/android/server/wm/Transition;->mTransientLaunches:Landroid/util/ArrayMap;

    if-eqz p0, :cond_8f

    iget-object p0, p1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 1363
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->hasTopFixedRotationLaunchingApp()Z

    move-result p0

    if-eqz p0, :cond_8f

    .line 1368
    iget-object p0, p1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mPinnedTaskController:Lcom/android/server/wm/PinnedTaskController;

    invoke-virtual {p0}, Lcom/android/server/wm/PinnedTaskController;->setEnterPipWithRotatedTransientLaunch()V

    :cond_8f
    return v1

    .line 1374
    :cond_90
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v2

    if-eqz v2, :cond_a0

    invoke-virtual {p0}, Lcom/android/server/wm/Transition;->didCommitTransientLaunch()Z

    move-result v2

    if-eqz v2, :cond_a8

    .line 1375
    :cond_a0
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->supportsPictureInPicture()Z

    move-result v2

    if-eqz v2, :cond_a8

    .line 1378
    iput-boolean v3, p1, Lcom/android/server/wm/ActivityRecord;->supportsEnterPipOnTaskSwitch:Z

    .line 1383
    :cond_a8
    :try_start_a8
    iget-object v2, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget-object v2, v2, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iput-boolean v3, v2, Lcom/android/server/wm/ActivityTaskSupervisor;->mUserLeaving:Z

    .line 1384
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object p1

    const-string v2, "finishTransition"

    invoke-virtual {p1, v1, v0, v2}, Lcom/android/server/wm/TaskFragment;->startPausing(ZLcom/android/server/wm/ActivityRecord;Ljava/lang/String;)Z
    :try_end_b9
    .catchall {:try_start_a8 .. :try_end_b9} :catchall_c2

    .line 1386
    iget-object p0, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget-object p0, p0, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iput-boolean v1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mUserLeaving:Z

    return v1

    :catchall_c2
    move-exception p1

    iget-object p0, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget-object p0, p0, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iput-boolean v1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mUserLeaving:Z

    .line 1387
    throw p1

    :cond_cc
    :goto_cc
    return v1
.end method

.method public final cleanUpInternal()V
    .registers 3

    const/4 v0, 0x0

    .line 2495
    :goto_1
    iget-object v1, p0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 2496
    iget-object v1, p0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 2497
    iget-object v1, v1, Lcom/android/server/wm/Transition$ChangeInfo;->mSnapshot:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_18

    .line 2498
    invoke-virtual {v1}, Landroid/view/SurfaceControl;->release()V

    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2501
    :cond_1b
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mCleanupTransaction:Landroid/view/SurfaceControl$Transaction;

    if-eqz v0, :cond_25

    .line 2502
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    const/4 v0, 0x0

    .line 2503
    iput-object v0, p0, Lcom/android/server/wm/Transition;->mCleanupTransaction:Landroid/view/SurfaceControl$Transaction;

    :cond_25
    return-void
.end method

.method public cleanUpOnFailure()V
    .registers 5

    .line 2469
    iget v0, p0, Lcom/android/server/wm/Transition;->mState:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_6

    return-void

    .line 2471
    :cond_6
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mStartTransaction:Landroid/view/SurfaceControl$Transaction;

    if-eqz v0, :cond_d

    .line 2472
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 2474
    :cond_d
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    if-eqz v0, :cond_5a

    .line 2475
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cleanUpOnFailure for #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Transition"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2480
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_31
    if-ltz v0, :cond_55

    .line 2481
    iget-object v1, p0, Lcom/android/server/wm/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/Transition$ChangeInfo;

    iget-object v1, v1, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 2482
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    if-nez v2, :cond_44

    goto :goto_52

    :cond_44
    const/4 v2, 0x0

    .line 2483
    invoke-static {v1, v2}, Lcom/android/server/wm/Transition;->getLeashSurface(Lcom/android/server/wm/WindowContainer;Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl;

    move-result-object v2

    .line 2484
    invoke-static {v1}, Lcom/android/server/wm/Transition;->getOrigParentSurface(Lcom/android/server/wm/WindowContainer;)Landroid/view/SurfaceControl;

    move-result-object v1

    .line 2485
    iget-object v3, p0, Lcom/android/server/wm/Transition;->mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v3, v2, v1}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :goto_52
    add-int/lit8 v0, v0, -0x1

    goto :goto_31

    .line 2487
    :cond_55
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 2489
    :cond_5a
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget-object v1, v0, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mChainTracker:Lcom/android/server/wm/ActionChain$Tracker;

    const-string v2, "clean-up"

    invoke-virtual {v1, v2, p0}, Lcom/android/server/wm/ActionChain$Tracker;->startFinish(Ljava/lang/String;Lcom/android/server/wm/Transition;)Lcom/android/server/wm/ActionChain;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/TransitionController;->finishTransition(Lcom/android/server/wm/ActionChain;)V

    .line 2490
    iget-object p0, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget-object p0, p0, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mChainTracker:Lcom/android/server/wm/ActionChain$Tracker;

    invoke-virtual {p0}, Lcom/android/server/wm/ActionChain$Tracker;->endPartial()V

    return-void
.end method

.method public collect(Lcom/android/server/wm/WindowContainer;)V
    .registers 7

    .line 808
    iget v0, p0, Lcom/android/server/wm/Transition;->mState:I

    if-ltz v0, :cond_88

    .line 811
    invoke-virtual {p0}, Lcom/android/server/wm/Transition;->isCollecting()Z

    move-result v0

    if-nez v0, :cond_c

    goto/16 :goto_87

    .line 815
    :cond_c
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_2d

    iget v0, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    int-to-long v0, v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-wide v1, -0x40d82296fef9ccbfL    # -1.8207461154098363E-4

    const/4 v4, 0x1

    invoke-static {v3, v1, v2, v4, v0}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 818
    :cond_2d
    invoke-static {p1}, Lcom/android/server/wm/Transition;->getAnimatableParent(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Transition;->snapshotStartState(Lcom/android/server/wm/WindowContainer;)V

    .line 819
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    goto :goto_87

    .line 821
    :cond_3d
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Transition;->isInTransientHide(Lcom/android/server/wm/WindowContainer;)Z

    move-result v0

    if-nez v0, :cond_4a

    .line 822
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    iget v1, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/BLASTSyncEngine;->addToSyncSet(ILcom/android/server/wm/WindowContainer;)V

    .line 824
    :cond_4a
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asWindowToken()Lcom/android/server/wm/WindowToken;

    move-result-object v0

    if-eqz v0, :cond_59

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asWindowToken()Lcom/android/server/wm/WindowToken;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/server/wm/WindowToken;->mRoundedCornerOverlay:Z

    if-eqz v0, :cond_59

    goto :goto_87

    .line 830
    :cond_59
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/Transition$ChangeInfo;

    if-nez v0, :cond_70

    .line 832
    new-instance v0, Lcom/android/server/wm/Transition$ChangeInfo;

    invoke-direct {v0, p1}, Lcom/android/server/wm/Transition$ChangeInfo;-><init>(Lcom/android/server/wm/WindowContainer;)V

    .line 833
    invoke-virtual {p0, v0}, Lcom/android/server/wm/Transition;->updateTransientFlags(Lcom/android/server/wm/Transition$ChangeInfo;)V

    .line 834
    iget-object v1, p0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 836
    :cond_70
    iget-object v1, p0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 837
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wm/Transition;->recordDisplay(Lcom/android/server/wm/DisplayContent;)V

    .line 838
    iget-boolean v0, v0, Lcom/android/server/wm/Transition$ChangeInfo;->mShowWallpaper:Z

    if-eqz v0, :cond_87

    .line 840
    iget-object p1, p1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p1, p1, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {p1, p0}, Lcom/android/server/wm/WallpaperController;->collectTopWallpapers(Lcom/android/server/wm/Transition;)V

    :cond_87
    :goto_87
    return-void

    .line 809
    :cond_88
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Transition hasn\'t started collecting."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public collectClose(Lcom/android/server/wm/WindowContainer;)V
    .registers 3

    .line 1017
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1018
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Transition;->collectExistenceChange(Lcom/android/server/wm/WindowContainer;)V

    return-void

    .line 1022
    :cond_a
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Transition;->collect(Lcom/android/server/wm/WindowContainer;)V

    return-void
.end method

.method public collectExistenceChange(Lcom/android/server/wm/WindowContainer;)V
    .registers 7

    .line 927
    iget v0, p0, Lcom/android/server/wm/Transition;->mState:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_6

    return-void

    .line 931
    :cond_6
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    const/4 v1, 0x1

    if-eqz v0, :cond_27

    iget v0, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    int-to-long v2, v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-wide v2, 0xf484ddf43bd3ccbL    # 4.777431964610698E-235

    invoke-static {v4, v2, v3, v1, v0}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 933
    :cond_27
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Transition;->collect(Lcom/android/server/wm/WindowContainer;)V

    .line 934
    iget-object p0, p0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/Transition$ChangeInfo;

    iput-boolean v1, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mExistenceChanged:Z

    return-void
.end method

.method public collectOrderChanges(Z)V
    .registers 14

    .line 2384
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mOnTopTasksStart:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    goto/16 :goto_102

    :cond_a
    const/4 v0, 0x0

    move v1, v0

    .line 2386
    :goto_c
    iget-object v2, p0, Lcom/android/server/wm/Transition;->mOnTopTasksAtReady:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_2a

    .line 2387
    iget-object v2, p0, Lcom/android/server/wm/Transition;->mOnTopTasksAtReady:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Task;

    .line 2388
    iget-object v4, p0, Lcom/android/server/wm/Transition;->mOnTopTasksStart:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_28
    move v1, v3

    goto :goto_2b

    :cond_2a
    move v1, v0

    .line 2392
    :goto_2b
    sget-object v2, Landroid/window/DesktopExperienceFlags;->ENABLE_DISPLAY_FOCUS_IN_SHELL_TRANSITIONS:Landroid/window/DesktopExperienceFlags;

    invoke-virtual {v2}, Landroid/window/DesktopExperienceFlags;->isTrue()Z

    move-result v2

    if-eqz v2, :cond_3b

    iget-object v2, p0, Lcom/android/server/wm/Transition;->mOnTopDisplayStart:Lcom/android/server/wm/DisplayContent;

    iget-object v4, p0, Lcom/android/server/wm/Transition;->mOnTopDisplayAtReady:Lcom/android/server/wm/DisplayContent;

    if-eq v2, v4, :cond_3b

    move v2, v3

    goto :goto_3c

    :cond_3b
    move v2, v0

    :goto_3c
    or-int/2addr v1, v2

    if-nez v1, :cond_43

    if-nez p1, :cond_43

    goto/16 :goto_102

    .line 2403
    :cond_43
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 2404
    iget-object v1, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget-object v1, v1, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 2405
    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->getTopFocusedDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 2406
    sget-object v2, Landroid/window/DesktopExperienceFlags;->EXCLUDE_DESK_ROOTS_FROM_DESKTOP_TASKS:Landroid/window/DesktopExperienceFlags;

    .line 2407
    invoke-virtual {v2}, Landroid/window/DesktopExperienceFlags;->isTrue()Z

    move-result v2

    move v4, v0

    .line 2408
    :goto_59
    iget-object v5, p0, Lcom/android/server/wm/Transition;->mTargetDisplays:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_102

    .line 2409
    iget-object v5, p0, Lcom/android/server/wm/Transition;->mTargetDisplays:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/DisplayContent;

    invoke-static {v5, p1}, Lcom/android/server/wm/Transition;->addOnTopTasks(Lcom/android/server/wm/DisplayContent;Ljava/util/ArrayList;)V

    .line 2410
    iget-object v5, p0, Lcom/android/server/wm/Transition;->mTargetDisplays:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/DisplayContent;

    iget v5, v5, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 2411
    iget-object v6, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget-object v6, v6, Lcom/android/server/wm/TransitionController;->mLatestOnTopTasksReported:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 2412
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move v8, v0

    .line 2414
    :goto_86
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_c5

    .line 2415
    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/Task;

    .line 2416
    invoke-virtual {v9}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    move-result v10

    if-eq v10, v5, :cond_99

    goto :goto_c2

    .line 2417
    :cond_99
    invoke-virtual {v9}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v10

    if-eqz v10, :cond_ab

    .line 2418
    invoke-virtual {v9}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v10

    invoke-interface {v7, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_ab

    move v10, v3

    goto :goto_ac

    :cond_ab
    move v10, v0

    .line 2419
    :goto_ac
    iget-object v11, p0, Lcom/android/server/wm/Transition;->mOnTopTasksStart:Ljava/util/ArrayList;

    invoke-static {v6, v11}, Ljava/util/Objects;->requireNonNullElse(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_bf

    if-eqz v2, :cond_c2

    if-nez v10, :cond_bf

    goto :goto_c2

    .line 2428
    :cond_bf
    invoke-interface {v7, v9}, Ljava/util/List;->addFirst(Ljava/lang/Object;)V

    :cond_c2
    :goto_c2
    add-int/lit8 v8, v8, 0x1

    goto :goto_86

    .line 2430
    :cond_c5
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    move v9, v0

    :goto_ca
    if-ge v9, v8, :cond_d8

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    add-int/lit8 v9, v9, 0x1

    check-cast v10, Lcom/android/server/wm/Task;

    .line 2431
    invoke-virtual {p0, v10}, Lcom/android/server/wm/Transition;->addToTopChange(Lcom/android/server/wm/WindowContainer;)V

    goto :goto_ca

    .line 2435
    :cond_d8
    iget-object v7, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget-object v7, v7, Lcom/android/server/wm/TransitionController;->mLatestOnTopTasksReported:Landroid/util/SparseArray;

    invoke-virtual {v7, v5, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    if-eqz v6, :cond_e3

    move-object p1, v6

    goto :goto_e8

    .line 2436
    :cond_e3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 2437
    :goto_e8
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 2439
    sget-object v6, Landroid/window/DesktopExperienceFlags;->ENABLE_DISPLAY_FOCUS_IN_SHELL_TRANSITIONS:Landroid/window/DesktopExperienceFlags;

    invoke-virtual {v6}, Landroid/window/DesktopExperienceFlags;->isTrue()Z

    move-result v6

    if-eqz v6, :cond_fe

    iget-object v6, p0, Lcom/android/server/wm/Transition;->mOnTopDisplayStart:Lcom/android/server/wm/DisplayContent;

    if-eq v6, v1, :cond_fe

    iget v6, v1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-ne v5, v6, :cond_fe

    .line 2442
    invoke-virtual {p0, v1}, Lcom/android/server/wm/Transition;->addToTopChange(Lcom/android/server/wm/WindowContainer;)V

    :cond_fe
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_59

    :cond_102
    :goto_102
    return-void
.end method

.method public collectReparentChange(Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/WindowContainer;)V
    .registers 6

    .line 978
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 984
    :cond_9
    iget-object p0, p0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 988
    iget-object v0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mStartParent:Lcom/android/server/wm/WindowContainer;

    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_1c

    goto :goto_1f

    .line 990
    :cond_1c
    iget-object v0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mCommonAncestor:Lcom/android/server/wm/WindowContainer;

    goto :goto_21

    .line 989
    :cond_1f
    :goto_1f
    iget-object v0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mStartParent:Lcom/android/server/wm/WindowContainer;

    .line 991
    :goto_21
    const-string v1, "Transition"

    if-eqz v0, :cond_6e

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->isAttached()Z

    move-result v2

    if-nez v2, :cond_2c

    goto :goto_6e

    :cond_2c
    if-ne v0, p2, :cond_43

    .line 997
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Trying to collect reparenting of a window that has not been reparented: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1001
    :cond_43
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->isAttached()Z

    move-result v2

    if-nez v2, :cond_5e

    .line 1002
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Trying to collect reparenting of a window that is not attached after reparenting: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5e
    :goto_5e
    if-eq v0, p2, :cond_6b

    .line 1007
    invoke-virtual {v0, p2}, Lcom/android/server/wm/WindowContainer;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    move-result p1

    if-nez p1, :cond_6b

    .line 1008
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object p2

    goto :goto_5e

    .line 1010
    :cond_6b
    iput-object p2, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mCommonAncestor:Lcom/android/server/wm/WindowContainer;

    return-void

    .line 992
    :cond_6e
    :goto_6e
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Trying to collect reparenting of a window after the previous parent has been detached: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public collectVisibleChange(Lcom/android/server/wm/WindowContainer;)V
    .registers 4

    .line 943
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    iget v1, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    invoke-virtual {v0, v1}, Lcom/android/server/wm/BLASTSyncEngine;->getSyncSet(I)Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

    move-result-object v0

    iget v0, v0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mSyncMethod:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    goto :goto_72

    .line 947
    :cond_e
    iget-object v0, p1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v0, :cond_72

    invoke-virtual {p0, p1}, Lcom/android/server/wm/Transition;->isInTransition(Lcom/android/server/wm/WindowContainer;)Z

    move-result v0

    if-nez v0, :cond_19

    goto :goto_72

    .line 948
    :cond_19
    iget-object v0, p1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->isScreenOnFully()Z

    move-result v0

    if-eqz v0, :cond_6c

    iget-object v0, p1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 949
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    iget v0, v0, Landroid/view/DisplayInfo;->state:I

    if-ne v0, v1, :cond_30

    goto :goto_6c

    .line 954
    :cond_30
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_43

    .line 955
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 956
    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    if-eqz v0, :cond_43

    iget-object v0, v0, Lcom/android/server/wm/StartingData;->mAssociatedTask:Lcom/android/server/wm/Task;

    if-eqz v0, :cond_43

    goto :goto_72

    .line 962
    :cond_43
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mContainerFreezer:Lcom/android/server/wm/Transition$IContainerFreezer;

    if-nez v0, :cond_4f

    .line 963
    new-instance v0, Lcom/android/server/wm/Transition$ScreenshotFreezer;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/Transition$ScreenshotFreezer;-><init>(Lcom/android/server/wm/Transition;Lcom/android/server/wm/Transition-IA;)V

    iput-object v0, p0, Lcom/android/server/wm/Transition;->mContainerFreezer:Lcom/android/server/wm/Transition$IContainerFreezer;

    .line 965
    :cond_4f
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/Transition$ChangeInfo;

    if-eqz v0, :cond_72

    .line 966
    iget-boolean v1, v0, Lcom/android/server/wm/Transition$ChangeInfo;->mVisible:Z

    if-eqz v1, :cond_72

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v1

    if-nez v1, :cond_64

    goto :goto_72

    .line 968
    :cond_64
    iget-object p0, p0, Lcom/android/server/wm/Transition;->mContainerFreezer:Lcom/android/server/wm/Transition$IContainerFreezer;

    iget-object v0, v0, Lcom/android/server/wm/Transition$ChangeInfo;->mAbsoluteBounds:Landroid/graphics/Rect;

    invoke-interface {p0, p1, v0}, Lcom/android/server/wm/Transition$IContainerFreezer;->freeze(Lcom/android/server/wm/WindowContainer;Landroid/graphics/Rect;)Z

    return-void

    .line 950
    :cond_6c
    :goto_6c
    iget p1, p0, Lcom/android/server/wm/Transition;->mFlags:I

    or-int/lit16 p1, p1, 0x400

    iput p1, p0, Lcom/android/server/wm/Transition;->mFlags:I

    :cond_72
    :goto_72
    return-void
.end method

.method public final commitConfigAtEndActivities()V
    .registers 10

    .line 1732
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mConfigAtEndActivities:Ljava/util/ArrayList;

    if-eqz v0, :cond_7a

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    goto/16 :goto_7a

    :cond_c
    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 1739
    :goto_e
    iget-object v2, p0, Lcom/android/server/wm/Transition;->mConfigAtEndActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_73

    .line 1740
    iget-object v2, p0, Lcom/android/server/wm/Transition;->mConfigAtEndActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    .line 1741
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v3

    if-nez v3, :cond_28

    .line 1744
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->resumeConfigurationDispatch()Z

    goto :goto_70

    .line 1747
    :cond_28
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getSyncGroup()Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

    move-result-object v4

    const/4 v5, 0x1

    if-eqz v4, :cond_43

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getSyncGroup()Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->isIgnoring(Lcom/android/server/wm/WindowContainer;)Z

    move-result v4

    if-eqz v4, :cond_3a

    goto :goto_43

    .line 1760
    :cond_3a
    new-instance v4, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda11;

    invoke-direct {v4}, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda11;-><init>()V

    invoke-virtual {v2, v4, v5}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    goto :goto_66

    :cond_43
    :goto_43
    if-gez v0, :cond_61

    .line 1749
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    new-instance v4, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda10;

    invoke-direct {v4}, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda10;-><init>()V

    const-string v6, "ConfigAtTransitEnd"

    invoke-virtual {v0, v4, v6}, Lcom/android/server/wm/BLASTSyncEngine;->prepareSyncSet(Lcom/android/server/wm/BLASTSyncEngine$TransactionReadyListener;Ljava/lang/String;)Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

    move-result-object v0

    .line 1752
    iget v4, v0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mSyncId:I

    .line 1753
    iget-object v6, p0, Lcom/android/server/wm/Transition;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    const-wide/16 v7, 0x1388

    invoke-virtual {v6, v0, v7, v8, v5}, Lcom/android/server/wm/BLASTSyncEngine;->startSyncSet(Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;JZ)V

    .line 1754
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    invoke-virtual {v0, v4, v5}, Lcom/android/server/wm/BLASTSyncEngine;->setSyncMethod(II)V

    move v0, v4

    .line 1756
    :cond_61
    iget-object v4, p0, Lcom/android/server/wm/Transition;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    invoke-virtual {v4, v0, v2}, Lcom/android/server/wm/BLASTSyncEngine;->addToSyncSet(ILcom/android/server/wm/WindowContainer;)V

    .line 1766
    :goto_66
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v4

    invoke-virtual {p0, v4, v2, v3}, Lcom/android/server/wm/Transition;->resetSurfaceTransform(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/WindowContainer;Landroid/view/SurfaceControl;)V

    .line 1767
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->resumeConfigurationDispatch()Z

    :goto_70
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_73
    if-ltz v0, :cond_7a

    .line 1770
    iget-object p0, p0, Lcom/android/server/wm/Transition;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/BLASTSyncEngine;->setReady(I)V

    :cond_7a
    :goto_7a
    return-void
.end method

.method public final commitVisibleActivities(Landroid/view/SurfaceControl$Transaction;)V
    .registers 7

    .line 2509
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_8
    if-ltz v0, :cond_36

    .line 2510
    iget-object v2, p0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    if-eqz v2, :cond_33

    .line 2511
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v3

    if-nez v3, :cond_1f

    goto :goto_33

    .line 2514
    :cond_1f
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2c

    .line 2515
    invoke-virtual {v2, v1, v4, v1}, Lcom/android/server/wm/ActivityRecord;->commitVisibility(ZZZ)V

    .line 2517
    invoke-virtual {v2, p1}, Lcom/android/server/wm/ActivityRecord;->commitFinishDrawing(Landroid/view/SurfaceControl$Transaction;)V

    .line 2519
    :cond_2c
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/server/wm/Task;->setDeferTaskAppear(Z)V

    :cond_33
    :goto_33
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_36
    return-void
.end method

.method public final commitVisibleWallpapers(Landroid/view/SurfaceControl$Transaction;)V
    .registers 7

    .line 2524
    invoke-virtual {p0}, Lcom/android/server/wm/Transition;->shouldWallpaperBeVisible()Z

    move-result v0

    .line 2525
    iget-object v1, p0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_c
    if-ltz v1, :cond_50

    .line 2526
    iget-object v2, p0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asWallpaperToken()Lcom/android/server/wm/WallpaperWindowToken;

    move-result-object v2

    if-eqz v2, :cond_4d

    .line 2528
    invoke-virtual {v2}, Lcom/android/server/wm/WallpaperWindowToken;->isVisible()Z

    move-result v3

    if-nez v3, :cond_2b

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 2529
    invoke-virtual {v2, v0}, Lcom/android/server/wm/WallpaperWindowToken;->commitVisibility(Z)V

    :cond_2b
    if-eqz v0, :cond_4d

    .line 2531
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v3

    if-eqz v3, :cond_4d

    .line 2532
    iget-object v3, v2, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_3b
    if-ltz v3, :cond_4d

    .line 2533
    iget-object v4, v2, Lcom/android/server/wm/WindowContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;

    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v4, p1}, Lcom/android/server/wm/WindowStateAnimator;->prepareSurfaceLocked(Landroid/view/SurfaceControl$Transaction;)V

    add-int/lit8 v3, v3, -0x1

    goto :goto_3b

    :cond_4d
    add-int/lit8 v1, v1, -0x1

    goto :goto_c

    :cond_50
    return-void
.end method

.method public continueTransitionReady()V
    .registers 8

    .line 4045
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mReadyTrackerOld:Lcom/android/server/wm/Transition$ReadyTrackerOld;

    invoke-static {v0}, Lcom/android/server/wm/Transition$ReadyTrackerOld;->-$$Nest$fgetmDeferReadyDepth(Lcom/android/server/wm/Transition$ReadyTrackerOld;)I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/android/server/wm/Transition$ReadyTrackerOld;->-$$Nest$fputmDeferReadyDepth(Lcom/android/server/wm/Transition$ReadyTrackerOld;I)V

    .line 4047
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_MIN_enabled:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/android/server/wm/Transition;->mReadyTrackerOld:Lcom/android/server/wm/Transition$ReadyTrackerOld;

    invoke-static {v0}, Lcom/android/server/wm/Transition$ReadyTrackerOld;->-$$Nest$fgetmDeferReadyDepth(Lcom/android/server/wm/Transition$ReadyTrackerOld;)I

    move-result v0

    int-to-long v0, v0

    const/4 v3, 0x5

    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS_MIN:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    const-wide v5, 0x5b04d6343bae3d68L    # 2.8886691156083905E130

    invoke-static {v4, v5, v6, v2, v0}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 4052
    :cond_34
    iget-object p0, p0, Lcom/android/server/wm/Transition;->mReadyTrackerOld:Lcom/android/server/wm/Transition$ReadyTrackerOld;

    invoke-virtual {p0}, Lcom/android/server/wm/Transition$ReadyTrackerOld;->checkReady()V

    return-void
.end method

.method public deferTransitionReady()V
    .registers 7

    .line 4033
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mReadyTrackerOld:Lcom/android/server/wm/Transition$ReadyTrackerOld;

    invoke-static {v0}, Lcom/android/server/wm/Transition$ReadyTrackerOld;->-$$Nest$fgetmDeferReadyDepth(Lcom/android/server/wm/Transition$ReadyTrackerOld;)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/android/server/wm/Transition$ReadyTrackerOld;->-$$Nest$fputmDeferReadyDepth(Lcom/android/server/wm/Transition$ReadyTrackerOld;I)V

    .line 4035
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_MIN_enabled:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/android/server/wm/Transition;->mReadyTrackerOld:Lcom/android/server/wm/Transition$ReadyTrackerOld;

    invoke-static {v0}, Lcom/android/server/wm/Transition$ReadyTrackerOld;->-$$Nest$fgetmDeferReadyDepth(Lcom/android/server/wm/Transition$ReadyTrackerOld;)I

    move-result v0

    int-to-long v3, v0

    const/4 v0, 0x5

    invoke-static {v0}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v5, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS_MIN:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    filled-new-array {v3, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-wide v3, 0x31b87c841eb33b4aL    # 3.547854377669619E-69

    invoke-static {v5, v3, v4, v2, v0}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 4040
    :cond_34
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    iget p0, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    invoke-virtual {v0, p0, v1}, Lcom/android/server/wm/BLASTSyncEngine;->setReady(IZ)Z

    return-void
.end method

.method public final didCommitTransientLaunch()Z
    .registers 4

    .line 1289
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mTransientLaunches:Landroid/util/ArrayMap;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    move v0, v1

    .line 1290
    :goto_7
    iget-object v2, p0, Lcom/android/server/wm/Transition;->mTransientLaunches:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v0, v2, :cond_22

    .line 1291
    iget-object v2, p0, Lcom/android/server/wm/Transition;->mTransientLaunches:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v2

    if-eqz v2, :cond_1f

    const/4 p0, 0x1

    return p0

    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_22
    return v1
.end method

.method public ensureParticipantSurfaceVisibility()V
    .registers 4

    .line 2174
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_20

    .line 2175
    iget-object v1, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget-object v1, v1, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget-object v2, p0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    .line 2176
    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    .line 2175
    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowAnimator;->addSurfaceVisibilityUpdate(Lcom/android/server/wm/WindowContainer;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_20
    return-void
.end method

.method public finishTransition(Lcom/android/server/wm/ActionChain;)V
    .registers 16

    const-wide/16 v0, 0x20

    .line 1397
    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-boolean v0, p0, Lcom/android/server/wm/Transition;->mIsPlayerEnabled:Z

    if-eqz v0, :cond_13

    .line 1398
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Lcom/android/server/wm/Transition;->asyncTraceEnd(I)V

    .line 1400
    :cond_13
    invoke-virtual {p1}, Lcom/android/server/wm/ActionChain;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_41a

    .line 1404
    iget-object p1, p0, Lcom/android/server/wm/Transition;->mLogger:Lcom/android/server/wm/TransitionController$Logger;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/server/wm/TransitionController$Logger;->mFinishTimeNs:J

    .line 1405
    iget-object p1, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget-object p1, p1, Lcom/android/server/wm/TransitionController;->mLoggerHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/server/wm/Transition;->mLogger:Lcom/android/server/wm/TransitionController$Logger;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda5;

    invoke-direct {v1, v0}, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/wm/TransitionController$Logger;)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1406
    iget-object p1, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget-object p1, p1, Lcom/android/server/wm/TransitionController;->mTransitionTracer:Lcom/android/server/wm/TransitionTracer;

    invoke-interface {p1, p0}, Lcom/android/server/wm/TransitionTracer;->logFinishedTransition(Lcom/android/server/wm/Transition;)V

    .line 1410
    iget-object p1, p0, Lcom/android/server/wm/Transition;->mStartTransaction:Landroid/view/SurfaceControl$Transaction;

    if-eqz p1, :cond_40

    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->close()V

    .line 1411
    :cond_40
    iget-object p1, p0, Lcom/android/server/wm/Transition;->mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    if-eqz p1, :cond_47

    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->close()V

    :cond_47
    const/4 p1, 0x0

    .line 1412
    iput-object p1, p0, Lcom/android/server/wm/Transition;->mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    iput-object p1, p0, Lcom/android/server/wm/Transition;->mStartTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 1413
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mCleanupTransaction:Landroid/view/SurfaceControl$Transaction;

    if-eqz v0, :cond_55

    .line 1414
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 1415
    iput-object p1, p0, Lcom/android/server/wm/Transition;->mCleanupTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 1417
    :cond_55
    iget v0, p0, Lcom/android/server/wm/Transition;->mState:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_401

    .line 1420
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iput-object p0, v0, Lcom/android/server/wm/TransitionController;->mFinishingTransition:Lcom/android/server/wm/Transition;

    .line 1421
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mTransientHideTasks:Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-eqz v0, :cond_8e

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8e

    .line 1425
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget-object v0, v0, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible()V

    move v0, v2

    .line 1428
    :goto_73
    iget-object v3, p0, Lcom/android/server/wm/Transition;->mTransientHideTasks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_8e

    .line 1429
    iget-object v3, p0, Lcom/android/server/wm/Transition;->mTransientHideTasks:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/Task;

    .line 1430
    new-instance v4, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda6;

    invoke-direct {v4, p0, v3}, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/wm/Transition;Lcom/android/server/wm/Task;)V

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_73

    :cond_8e
    move v0, v2

    move v3, v0

    move v4, v3

    move v5, v4

    .line 1455
    :goto_92
    iget-object v6, p0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    move-result v6

    const/4 v7, 0x1

    if-ge v0, v6, :cond_1c7

    .line 1456
    iget-object v6, p0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-virtual {v6, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowContainer;

    .line 1457
    invoke-virtual {v6}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v8

    if-eqz v8, :cond_191

    .line 1459
    invoke-virtual {v8}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v6

    if-nez v6, :cond_b1

    goto/16 :goto_1c3

    .line 1461
    :cond_b1
    iget-object v9, p0, Lcom/android/server/wm/Transition;->mVisibleAtTransitionEndTokens:Landroid/util/ArraySet;

    invoke-virtual {v9, v8}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v9

    .line 1468
    invoke-virtual {p0, v8}, Lcom/android/server/wm/Transition;->isTransientLaunch(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v10

    if-eqz v10, :cond_cc

    invoke-virtual {v8}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v10

    if-nez v10, :cond_cc

    iget-object v10, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    .line 1469
    invoke-virtual {v10, v8}, Lcom/android/server/wm/TransitionController;->inCollectingTransition(Lcom/android/server/wm/WindowContainer;)Z

    move-result v10

    if-eqz v10, :cond_cc

    move v9, v7

    .line 1480
    :cond_cc
    iget-object v10, v8, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v10, :cond_db

    .line 1481
    invoke-virtual {v10}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v10

    iget v10, v10, Landroid/view/DisplayInfo;->state:I

    if-ne v10, v7, :cond_d9

    goto :goto_db

    :cond_d9
    move v10, v2

    goto :goto_dc

    :cond_db
    :goto_db
    move v10, v7

    :goto_dc
    if-eqz v9, :cond_e0

    if-eqz v10, :cond_14f

    .line 1482
    :cond_e0
    invoke-virtual {v8}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v10

    if-nez v10, :cond_14f

    .line 1483
    invoke-virtual {p0, v8}, Lcom/android/server/wm/Transition;->checkEnterPipOnFinish(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v10

    if-nez v10, :cond_14e

    .line 1487
    sget-object v3, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    aget-boolean v3, v3, v2

    if-eqz v3, :cond_104

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget-object v10, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v11, -0x4111a0226d5ec4eaL    # -1.4483678189373217E-5

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v10, v11, v12, v2, v3}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 1489
    :cond_104
    iget-object v3, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget-object v3, v3, Lcom/android/server/wm/TransitionController;->mSnapshotController:Lcom/android/server/wm/SnapshotController;

    .line 1490
    iget-object v10, p0, Lcom/android/server/wm/Transition;->mTransientLaunches:Landroid/util/ArrayMap;

    if-eqz v10, :cond_149

    invoke-virtual {v6}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v10

    if-nez v10, :cond_149

    .line 1491
    invoke-virtual {v6}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result v10

    if-nez v10, :cond_149

    .line 1492
    iget-object v10, p0, Lcom/android/server/wm/Transition;->mLogger:Lcom/android/server/wm/TransitionController$Logger;

    iget-wide v10, v10, Lcom/android/server/wm/TransitionController$Logger;->mSendTimeNs:J

    .line 1493
    iget-object v12, v3, Lcom/android/server/wm/SnapshotController;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    iget v13, v6, Lcom/android/server/wm/Task;->mTaskId:I

    .line 1494
    invoke-virtual {v12, v13}, Lcom/android/server/wm/TaskSnapshotController;->getSnapshotCaptureTime(I)J

    move-result-wide v12

    cmp-long v10, v12, v10

    if-gez v10, :cond_12e

    .line 1499
    iget-object v3, v3, Lcom/android/server/wm/SnapshotController;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    invoke-virtual {v3, v6}, Lcom/android/server/wm/TaskSnapshotController;->recordSnapshot(Lcom/android/server/wm/Task;)V

    goto :goto_149

    .line 1501
    :cond_12e
    sget-object v3, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    aget-boolean v3, v3, v2

    if-eqz v3, :cond_149

    iget v3, v6, Lcom/android/server/wm/Task;->mTaskId:I

    int-to-long v10, v3

    sget-object v3, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    const-wide v10, 0x1938043d5ead3377L

    invoke-static {v3, v10, v11, v7, v6}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 1506
    :cond_149
    :goto_149
    invoke-virtual {v8, v2, v2, v7}, Lcom/android/server/wm/ActivityRecord;->commitVisibility(ZZZ)V

    move v3, v7

    goto :goto_14f

    :cond_14e
    move v4, v7

    .line 1514
    :cond_14f
    :goto_14f
    iget-object v6, v8, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    if-eqz v6, :cond_16d

    iget v6, v6, Lcom/android/server/wm/StartingData;->mRemoveAfterTransaction:I

    const/4 v10, 0x3

    if-ne v6, v10, :cond_16d

    .line 1516
    invoke-virtual {v8}, Lcom/android/server/wm/ActivityRecord;->isVisible()Z

    move-result v6

    if-eqz v6, :cond_166

    iget-object v6, v8, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v6, v8}, Lcom/android/server/wm/TransitionController;->inTransition(Lcom/android/server/wm/WindowContainer;)Z

    move-result v6

    if-nez v6, :cond_16d

    .line 1517
    :cond_166
    iget-object v6, v8, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    iput v2, v6, Lcom/android/server/wm/StartingData;->mRemoveAfterTransaction:I

    .line 1518
    invoke-virtual {v8}, Lcom/android/server/wm/ActivityRecord;->removeStartingWindow()V

    .line 1520
    :cond_16d
    iget-object v6, p0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {v6, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/Transition$ChangeInfo;

    if-eqz v6, :cond_17e

    .line 1523
    iget-boolean v6, v6, Lcom/android/server/wm/Transition$ChangeInfo;->mVisible:Z

    if-eq v6, v9, :cond_17e

    .line 1525
    iput-boolean v9, v8, Lcom/android/server/wm/ActivityRecord;->mEnteringAnimation:Z

    goto :goto_1c3

    .line 1526
    :cond_17e
    iget-object v6, p0, Lcom/android/server/wm/Transition;->mTransientLaunches:Landroid/util/ArrayMap;

    if-eqz v6, :cond_1c3

    invoke-virtual {v6, v8}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1c3

    .line 1527
    invoke-virtual {v8}, Lcom/android/server/wm/ActivityRecord;->isVisible()Z

    move-result v6

    if-eqz v6, :cond_1c3

    .line 1529
    iput-boolean v7, v8, Lcom/android/server/wm/ActivityRecord;->mEnteringAnimation:Z

    goto :goto_1c3

    .line 1533
    :cond_191
    invoke-virtual {v6}, Lcom/android/server/wm/WindowContainer;->asDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v8

    if-eqz v8, :cond_199

    move v5, v7

    goto :goto_1c3

    .line 1537
    :cond_199
    invoke-virtual {v6}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v6

    if-eqz v6, :cond_1c3

    .line 1538
    invoke-virtual {v6}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v7

    if-eqz v7, :cond_1c3

    invoke-virtual {v6}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result v7

    if-eqz v7, :cond_1c3

    .line 1539
    invoke-virtual {v6}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v7

    if-eqz v7, :cond_1c3

    .line 1540
    invoke-virtual {v7}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result v7

    if-nez v7, :cond_1c3

    .line 1541
    iget-object v7, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget-object v7, v7, Lcom/android/server/wm/TransitionController;->mStateValidators:Ljava/util/ArrayList;

    new-instance v8, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda7;

    invoke-direct {v8, v6}, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/wm/Task;)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1c3
    :goto_1c3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_92

    .line 1559
    :cond_1c7
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    sub-int/2addr v0, v7

    :goto_1ce
    const/4 v6, 0x4

    if-ltz v0, :cond_239

    .line 1560
    iget-object v8, p0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-virtual {v8, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/WindowContainer;

    .line 1561
    invoke-virtual {v8}, Lcom/android/server/wm/WindowContainer;->asWallpaperToken()Lcom/android/server/wm/WallpaperWindowToken;

    move-result-object v8

    if-eqz v8, :cond_236

    .line 1562
    invoke-virtual {v8}, Lcom/android/server/wm/WallpaperWindowToken;->isVisible()Z

    move-result v9

    if-nez v9, :cond_1e6

    goto :goto_236

    .line 1563
    :cond_1e6
    iget-object v9, v8, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v9, v9, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v9}, Lcom/android/server/wm/WallpaperController;->getWallpaperTarget()Lcom/android/server/wm/WindowState;

    move-result-object v9

    if-eqz v9, :cond_1fb

    .line 1564
    iget-object v9, v9, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v9}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v9

    if-nez v9, :cond_1f9

    goto :goto_1fb

    :cond_1f9
    move v9, v2

    goto :goto_1fc

    :cond_1fb
    :goto_1fb
    move v9, v7

    .line 1566
    :goto_1fc
    invoke-virtual {v8}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v10

    if-nez v10, :cond_20d

    iget-object v10, p0, Lcom/android/server/wm/Transition;->mVisibleAtTransitionEndTokens:Landroid/util/ArraySet;

    invoke-virtual {v10, v8}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_20b

    goto :goto_20d

    :cond_20b
    move v10, v2

    goto :goto_20e

    :cond_20d
    :goto_20d
    move v10, v7

    :goto_20e
    if-nez v9, :cond_212

    if-nez v10, :cond_22d

    .line 1568
    :cond_212
    sget-object v10, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    aget-boolean v10, v10, v2

    if-eqz v10, :cond_22a

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    sget-object v11, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v12, -0x2914a3da1ae6ce20L    # -5.140481217967095E110

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v10

    invoke-static {v11, v12, v13, v2, v10}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 1570
    :cond_22a
    invoke-virtual {v8, v2}, Lcom/android/server/wm/WallpaperWindowToken;->commitVisibility(Z)V

    :cond_22d
    if-eqz v9, :cond_236

    .line 1574
    iget-object v8, v8, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v9, v8, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/2addr v6, v9

    iput v6, v8, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    :cond_236
    :goto_236
    add-int/lit8 v0, v0, -0x1

    goto :goto_1ce

    :cond_239
    if-eqz v3, :cond_240

    .line 1578
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->onCommittedInvisibles()V

    .line 1581
    :cond_240
    invoke-virtual {p0}, Lcom/android/server/wm/Transition;->handleVisibleTransientLaunchOnFinish()Z

    move-result v0

    if-eqz v0, :cond_25c

    if-eqz v4, :cond_253

    .line 1585
    iget-object v3, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget-object v3, v3, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskStackChanged()V

    .line 1589
    :cond_253
    iget-object v3, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget-object v3, v3, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/RootWindowContainer;->rankTaskLayers()V

    .line 1592
    :cond_25c
    invoke-virtual {p0}, Lcom/android/server/wm/Transition;->commitConfigAtEndActivities()V

    move v3, v2

    .line 1597
    :goto_260
    iget-object v4, p0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    if-ge v3, v4, :cond_2ae

    .line 1598
    iget-object v4, p0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    if-nez v4, :cond_277

    goto :goto_2ab

    .line 1606
    :cond_277
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v8

    if-nez v8, :cond_285

    sget-object v8, Lcom/android/server/wm/ActivityRecord$State;->INITIALIZING:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {v4, v8}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v8

    if-nez v8, :cond_292

    :cond_285
    const/16 v8, 0x100

    .line 1607
    invoke-virtual {v4, v1, v8}, Lcom/android/server/wm/WindowContainer;->isAnimating(II)Z

    move-result v8

    if-nez v8, :cond_292

    .line 1608
    iget-object v8, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v8, v4}, Lcom/android/server/wm/TransitionController;->dispatchLegacyAppTransitionFinished(Lcom/android/server/wm/ActivityRecord;)V

    .line 1614
    :cond_292
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->currentLaunchCanTurnScreenOn()Z

    move-result v8

    if-eqz v8, :cond_2ab

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v8

    if-eqz v8, :cond_2ab

    .line 1615
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/wm/DisplayContent;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v8

    if-eq v8, v4, :cond_2ab

    .line 1616
    invoke-virtual {v4, v2}, Lcom/android/server/wm/ActivityRecord;->setCurrentLaunchCanTurnScreenOn(Z)V

    :cond_2ab
    :goto_2ab
    add-int/lit8 v3, v3, 0x1

    goto :goto_260

    :cond_2ae
    move v1, v2

    move v3, v1

    .line 1622
    :goto_2b0
    iget-object v4, p0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    if-ge v1, v4, :cond_2e0

    .line 1623
    iget-object v4, p0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-virtual {v4, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    if-eqz v4, :cond_2dd

    .line 1624
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->isVisible()Z

    move-result v8

    if-eqz v8, :cond_2dd

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v8

    if-nez v8, :cond_2d3

    goto :goto_2dd

    .line 1626
    :cond_2d3
    iget-object v3, v4, Lcom/android/server/wm/ActivityRecord;->mActivityRecordInputSink:Lcom/android/server/wm/ActivityRecordInputSink;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/wm/ActivityRecordInputSink;->applyChangesToSurfaceIfChanged(Landroid/view/SurfaceControl$Transaction;)V

    move v3, v7

    :cond_2dd
    :goto_2dd
    add-int/lit8 v1, v1, 0x1

    goto :goto_2b0

    :cond_2e0
    if-eqz v3, :cond_2e7

    .line 1629
    iget-object v1, p0, Lcom/android/server/wm/Transition;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    .line 1633
    :cond_2e7
    iget-object v1, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget-object v1, v1, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 1634
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->scheduleProcessStoppingAndFinishingActivitiesIfNeeded()V

    .line 1636
    iget-object v1, p0, Lcom/android/server/wm/Transition;->mClientAnimationFinishCallback:Landroid/os/IRemoteCallback;

    invoke-virtual {p0, v1}, Lcom/android/server/wm/Transition;->sendRemoteCallback(Landroid/os/IRemoteCallback;)V

    .line 1638
    invoke-virtual {p0}, Lcom/android/server/wm/Transition;->legacyRestoreNavigationBarFromApp()V

    .line 1640
    iget v1, p0, Lcom/android/server/wm/Transition;->mRecentsDisplayId:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_315

    .line 1642
    iget-object v3, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget-object v3, v3, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 1643
    invoke-virtual {v3, v1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 1644
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v3

    invoke-virtual {v3, p1, p1}, Lcom/android/server/wm/InputMonitor;->setActiveRecents(Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;)V

    .line 1645
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 1647
    :cond_315
    iget-object v1, p0, Lcom/android/server/wm/Transition;->mTransientLaunches:Landroid/util/ArrayMap;

    if-eqz v1, :cond_334

    .line 1648
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    sub-int/2addr v1, v7

    :goto_31e
    if-ltz v1, :cond_334

    .line 1651
    iget-object v3, p0, Lcom/android/server/wm/Transition;->mTransientLaunches:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v3

    if-eqz v3, :cond_331

    .line 1653
    invoke-virtual {v3, v7}, Lcom/android/server/wm/TaskFragment;->setCanAffectSystemUiFlags(Z)V

    :cond_331
    add-int/lit8 v1, v1, -0x1

    goto :goto_31e

    :cond_334
    move v1, v2

    .line 1658
    :goto_335
    iget-object v3, p0, Lcom/android/server/wm/Transition;->mTargetDisplays:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_3cb

    .line 1659
    iget-object v3, p0, Lcom/android/server/wm/Transition;->mTargetDisplays:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/DisplayContent;

    .line 1660
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getAsyncRotationController()Lcom/android/server/wm/AsyncRotationController;

    move-result-object v4

    if-eqz v4, :cond_356

    .line 1661
    iget-object v7, p0, Lcom/android/server/wm/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-static {v3, v7}, Lcom/android/server/wm/Transition;->containsChangeFor(Lcom/android/server/wm/WindowContainer;Ljava/util/ArrayList;)Z

    move-result v7

    if-eqz v7, :cond_356

    .line 1662
    invoke-virtual {v4}, Lcom/android/server/wm/AsyncRotationController;->onTransitionFinished()V

    .line 1664
    :cond_356
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->onTransitionFinished()V

    if-eqz v5, :cond_376

    .line 1666
    iget-object v4, p0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/Transition$ChangeInfo;

    if-eqz v4, :cond_376

    .line 1667
    iget v4, v4, Lcom/android/server/wm/Transition$ChangeInfo;->mRotation:I

    .line 1668
    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v7

    if-eq v4, v7, :cond_376

    .line 1669
    iget-object v4, v3, Lcom/android/server/wm/DisplayContent;->mAppCompatCameraPolicy:Lcom/android/server/wm/AppCompatCameraPolicy;

    invoke-virtual {v4}, Lcom/android/server/wm/AppCompatCameraPolicy;->onScreenRotationAnimationFinished()V

    .line 1672
    :cond_376
    iget-object v4, p0, Lcom/android/server/wm/Transition;->mTransientLaunches:Landroid/util/ArrayMap;

    if-eqz v4, :cond_3c1

    move v4, v2

    .line 1674
    :goto_37b
    iget-object v7, p0, Lcom/android/server/wm/Transition;->mTransientLaunches:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v7

    if-ge v4, v7, :cond_3a6

    .line 1675
    iget-object v7, p0, Lcom/android/server/wm/Transition;->mTransientLaunches:Landroid/util/ArrayMap;

    invoke-virtual {v7, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v7

    if-ne v7, v3, :cond_3a3

    if-eqz v0, :cond_396

    .line 1677
    invoke-virtual {p0, v3}, Lcom/android/server/wm/Transition;->updateImeForVisibleTransientLaunch(Lcom/android/server/wm/DisplayContent;)V

    .line 1679
    :cond_396
    iget-object v4, p0, Lcom/android/server/wm/Transition;->mTransientLaunches:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->getTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v4

    goto :goto_3a7

    :cond_3a3
    add-int/lit8 v4, v4, 0x1

    goto :goto_37b

    :cond_3a6
    move-object v4, p1

    :goto_3a7
    if-nez v0, :cond_3ba

    .line 1683
    iget v7, p0, Lcom/android/server/wm/Transition;->mRecentsDisplayId:I

    iget v8, v3, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-ne v7, v8, :cond_3ba

    .line 1687
    invoke-static {}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->get()Lcom/android/server/inputmethod/InputMethodManagerInternal;

    move-result-object v7

    .line 1688
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v8

    .line 1687
    invoke-virtual {v7, v2, v8}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->updateImeWindowStatus(ZI)V

    :cond_3ba
    if-nez v0, :cond_3c1

    if-eqz v4, :cond_3c1

    .line 1694
    invoke-virtual {v4, p1}, Lcom/android/server/wm/TaskDisplayArea;->pauseBackTasks(Lcom/android/server/wm/ActivityRecord;)Z

    .line 1697
    :cond_3c1
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->removeImeScreenshotImmediately()V

    .line 1698
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->handleCompleteDeferredRemoval()Z

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_335

    .line 1700
    :cond_3cb
    invoke-virtual {p0}, Lcom/android/server/wm/Transition;->validateKeyguardOcclusion()V

    .line 1702
    iput v6, p0, Lcom/android/server/wm/Transition;->mState:I

    if-eqz v5, :cond_3df

    .line 1705
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->useShellTransitionsRotation()Z

    move-result v0

    if-nez v0, :cond_3df

    .line 1706
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, v2, v2}, Lcom/android/server/wm/WindowManagerService;->updateRotation(ZZ)V

    .line 1709
    :cond_3df
    invoke-virtual {p0}, Lcom/android/server/wm/Transition;->cleanUpInternal()V

    .line 1712
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget-object v0, v0, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mBackNavigationController:Lcom/android/server/wm/BackNavigationController;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/BackNavigationController;->onTransitionFinish(Lcom/android/server/wm/Transition;)V

    .line 1713
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iput-object p1, v0, Lcom/android/server/wm/TransitionController;->mFinishingTransition:Lcom/android/server/wm/Transition;

    .line 1714
    iget-object p1, v0, Lcom/android/server/wm/TransitionController;->mSnapshotController:Lcom/android/server/wm/SnapshotController;

    iget v0, p0, Lcom/android/server/wm/Transition;->mType:I

    iget-object v1, p0, Lcom/android/server/wm/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Lcom/android/server/wm/SnapshotController;->onTransitionFinish(ILjava/util/ArrayList;)V

    .line 1716
    iget-object p1, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {p1}, Lcom/android/server/wm/TransitionController;->updateAnimatingState()V

    .line 1718
    invoke-virtual {p0}, Lcom/android/server/wm/Transition;->invokeTransitionEndedListeners()V

    return-void

    .line 1418
    :cond_401
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t finish a non-playing transition "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1401
    :cond_41a
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t finish on a non-finishing transition "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1402
    invoke-virtual {p1}, Lcom/android/server/wm/ActionChain;->getTransition()Lcom/android/server/wm/Transition;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getFinishTransaction()Landroid/view/SurfaceControl$Transaction;
    .registers 1

    .line 734
    iget-object p0, p0, Lcom/android/server/wm/Transition;->mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    return-object p0
.end method

.method public getFlags()I
    .registers 1

    .line 724
    iget p0, p0, Lcom/android/server/wm/Transition;->mFlags:I

    return p0
.end method

.method public getLegacyIsReady()Z
    .registers 2

    .line 3683
    invoke-virtual {p0}, Lcom/android/server/wm/Transition;->isCollecting()Z

    move-result v0

    if-eqz v0, :cond_c

    iget p0, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    if-ltz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public getPipActivity()Lcom/android/server/wm/ActivityRecord;
    .registers 1

    .line 674
    iget-object p0, p0, Lcom/android/server/wm/Transition;->mPipActivity:Lcom/android/server/wm/ActivityRecord;

    return-object p0
.end method

.method public getRequestedLocation()Landroid/window/TransitionRequestInfo$RequestedLocation;
    .registers 1

    .line 690
    iget-object p0, p0, Lcom/android/server/wm/Transition;->mRequestedLocation:Landroid/window/TransitionRequestInfo$RequestedLocation;

    return-object p0
.end method

.method public getStartTransaction()Landroid/view/SurfaceControl$Transaction;
    .registers 1

    .line 729
    iget-object p0, p0, Lcom/android/server/wm/Transition;->mStartTransaction:Landroid/view/SurfaceControl$Transaction;

    return-object p0
.end method

.method public getState()I
    .registers 1

    .line 715
    iget p0, p0, Lcom/android/server/wm/Transition;->mState:I

    return p0
.end method

.method public getSyncId()I
    .registers 1

    .line 719
    iget p0, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    return p0
.end method

.method public getToken()Landroid/os/IBinder;
    .registers 1

    .line 416
    iget-object p0, p0, Lcom/android/server/wm/Transition;->mToken:Lcom/android/server/wm/Transition$Token;

    return-object p0
.end method

.method public getTransientLaunchRestoreTarget(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/Task;
    .registers 5

    .line 599
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mTransientLaunches:Landroid/util/ArrayMap;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    :cond_6
    const/4 v0, 0x0

    .line 600
    :goto_7
    iget-object v2, p0, Lcom/android/server/wm/Transition;->mTransientLaunches:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v0, v2, :cond_29

    .line 601
    iget-object v2, p0, Lcom/android/server/wm/Transition;->mTransientLaunches:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/WindowContainer;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 602
    iget-object p0, p0, Lcom/android/server/wm/Transition;->mTransientLaunches:Landroid/util/ArrayMap;

    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/Task;

    return-object p0

    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_29
    return-object v1
.end method

.method public final getVisibleTransientLaunch(Lcom/android/server/wm/TaskDisplayArea;)Lcom/android/server/wm/ActivityRecord;
    .registers 6

    .line 1776
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mTransientLaunches:Landroid/util/ArrayMap;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    .line 1777
    :cond_6
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_c
    if-ltz v0, :cond_27

    .line 1778
    iget-object v2, p0, Lcom/android/server/wm/Transition;->mTransientLaunches:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    .line 1779
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v3

    if-eq v3, p1, :cond_1d

    goto :goto_23

    .line 1782
    :cond_1d
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v3

    if-nez v3, :cond_26

    :goto_23
    add-int/lit8 v0, v0, -0x1

    goto :goto_c

    :cond_26
    return-object v2

    :cond_27
    return-object v1
.end method

.method public final handleLegacyRecentsStartBehavior(Lcom/android/server/wm/DisplayContent;Landroid/window/TransitionInfo;)V
    .registers 14

    .line 2551
    iget v0, p0, Lcom/android/server/wm/Transition;->mFlags:I

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_8

    goto/16 :goto_125

    .line 2557
    :cond_8
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v0

    const-string v1, "recents_animation_input_consumer"

    invoke-virtual {v0, v1}, Lcom/android/server/wm/InputMonitor;->getInputConsumer(Ljava/lang/String;)Lcom/android/server/wm/InputConsumerImpl;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v6, v2

    if-eqz v0, :cond_6e

    move-object v7, v6

    move v5, v3

    .line 2564
    :goto_1b
    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v5, v8, :cond_58

    .line 2566
    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v8}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v8

    if-nez v8, :cond_36

    goto :goto_55

    .line 2568
    :cond_36
    iget-object v9, v8, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-static {v9}, Lcom/android/server/wm/Task;->fromWindowContainerToken(Landroid/window/WindowContainerToken;)Lcom/android/server/wm/Task;

    move-result-object v9

    if-nez v9, :cond_3f

    goto :goto_55

    .line 2570
    :cond_3f
    iget v8, v8, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityType:I

    if-eq v8, v1, :cond_49

    const/4 v10, 0x3

    if-ne v8, v10, :cond_47

    goto :goto_49

    :cond_47
    move v8, v3

    goto :goto_4a

    :cond_49
    :goto_49
    move v8, v4

    :goto_4a
    if-eqz v8, :cond_50

    if-nez v6, :cond_50

    move-object v6, v9

    goto :goto_55

    :cond_50
    if-nez v8, :cond_55

    if-nez v7, :cond_55

    move-object v7, v9

    :cond_55
    :goto_55
    add-int/lit8 v5, v5, 0x1

    goto :goto_1b

    :cond_58
    if-eqz v6, :cond_6e

    if-eqz v7, :cond_6e

    .line 2580
    iget-object v0, v0, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Landroid/view/InputWindowHandle;

    iget-object v0, v0, Landroid/view/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    .line 2581
    invoke-virtual {v7}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    .line 2580
    invoke-virtual {v0, v5}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    .line 2582
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Lcom/android/server/wm/InputMonitor;->setActiveRecents(Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;)V

    :cond_6e
    if-nez v6, :cond_72

    goto/16 :goto_125

    .line 2590
    :cond_72
    iget v0, p1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    iput v0, p0, Lcom/android/server/wm/Transition;->mRecentsDisplayId:I

    .line 2594
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayPolicy;->shouldAttachNavBarToAppDuringTransition()Z

    move-result v0

    if-eqz v0, :cond_125

    .line 2596
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getAsyncRotationController()Lcom/android/server/wm/AsyncRotationController;

    move-result-object v0

    if-eqz v0, :cond_88

    goto/16 :goto_125

    :cond_88
    move v0, v3

    .line 2602
    :goto_89
    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_d5

    .line 2603
    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/window/TransitionInfo$Change;

    .line 2604
    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v6

    if-eqz v6, :cond_d2

    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v6

    iget v6, v6, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    iget v7, p0, Lcom/android/server/wm/Transition;->mRecentsDisplayId:I

    if-ne v6, v7, :cond_d2

    .line 2605
    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    move-result v6

    if-ne v6, v4, :cond_d2

    .line 2606
    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v6

    if-eq v6, v1, :cond_c5

    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v6

    const/4 v7, 0x4

    if-eq v6, v7, :cond_c5

    goto :goto_d2

    .line 2609
    :cond_c5
    invoke-virtual {v5}, Landroid/window/TransitionInfo$Change;->getContainer()Landroid/window/WindowContainerToken;

    move-result-object p2

    invoke-virtual {p2}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    goto :goto_d5

    :cond_d2
    :goto_d2
    add-int/lit8 v0, v0, 0x1

    goto :goto_89

    :cond_d5
    :goto_d5
    if-eqz v2, :cond_125

    .line 2612
    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    move-result p2

    if-eqz p2, :cond_de

    goto :goto_125

    .line 2616
    :cond_de
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBar()Lcom/android/server/wm/WindowState;

    move-result-object p2

    if-eqz p2, :cond_125

    .line 2617
    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    if-nez v0, :cond_ed

    goto :goto_125

    .line 2620
    :cond_ed
    iget-object v1, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iput-boolean v4, v1, Lcom/android/server/wm/TransitionController;->mNavigationBarAttachedToApp:Z

    .line 2621
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->cancelAnimation()V

    .line 2622
    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    .line 2623
    iget-object p2, p2, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object p2

    .line 2624
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 2625
    invoke-virtual {v0, p2}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 2627
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getImeContainer()Lcom/android/server/wm/DisplayArea$Tokens;

    move-result-object v1

    .line 2628
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_11c

    .line 2629
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v0, p2, v1, v4}, Landroid/view/SurfaceControl$Transaction;->setRelativeLayer(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    goto :goto_122

    :cond_11c
    const v1, 0x7fffffff

    .line 2632
    invoke-virtual {v0, p2, v1}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 2634
    :goto_122
    invoke-virtual {p0, p1, v3}, Lcom/android/server/wm/Transition;->sendLumaSamplingEnabledToStatusBarInternal(Lcom/android/server/wm/DisplayContent;Z)V

    :cond_125
    :goto_125
    return-void
.end method

.method public final handleVisibleTransientLaunchOnFinish()Z
    .registers 8

    .line 1300
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mTransientLaunches:Landroid/util/ArrayMap;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 1302
    :cond_6
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    move v3, v1

    :goto_d
    if-ltz v0, :cond_63

    .line 1303
    iget-object v4, p0, Lcom/android/server/wm/Transition;->mTransientLaunches:Landroid/util/ArrayMap;

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/ActivityRecord;

    .line 1304
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v5

    if-eqz v5, :cond_60

    .line 1305
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->isVisible()Z

    move-result v6

    if-nez v6, :cond_24

    goto :goto_60

    .line 1310
    :cond_24
    invoke-virtual {v5}, Lcom/android/server/wm/Task;->isFocused()Z

    move-result v3

    if-nez v3, :cond_39

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->isTopRunningActivity()Z

    move-result v3

    if-eqz v3, :cond_39

    .line 1311
    iget-object v3, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget-object v3, v3, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    const-string v6, "transitionFinished"

    invoke-virtual {v3, v4, v6}, Lcom/android/server/wm/ActivityTaskManagerService;->setLastResumedActivityUncheckLocked(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V

    .line 1314
    :cond_39
    iget-object v3, v4, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    if-ne v3, v4, :cond_47

    .line 1315
    iget-object v3, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget-object v3, v3, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->stopAppSwitches()V

    goto :goto_5f

    .line 1316
    :cond_47
    sget-object v3, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {v4, v3}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v3

    if-eqz v3, :cond_5f

    const/4 v3, 0x0

    invoke-virtual {v5, v3}, Lcom/android/server/wm/TaskFragment;->getVisibility(Lcom/android/server/wm/ActivityRecord;)I

    move-result v5

    if-ne v5, v2, :cond_5f

    .line 1318
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v4

    const-string v5, "finishTransition-behind-translucent"

    invoke-virtual {v4, v1, v3, v5}, Lcom/android/server/wm/TaskFragment;->startPausing(ZLcom/android/server/wm/ActivityRecord;Ljava/lang/String;)Z

    :cond_5f
    :goto_5f
    move v3, v2

    :cond_60
    :goto_60
    add-int/lit8 v0, v0, -0x1

    goto :goto_d

    :cond_63
    return v3
.end method

.method public hasChanged(Lcom/android/server/wm/WindowContainer;)Z
    .registers 2

    .line 3705
    iget-object p0, p0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/Transition$ChangeInfo;

    if-nez p0, :cond_c

    const/4 p0, 0x0

    return p0

    .line 3707
    :cond_c
    invoke-virtual {p0}, Lcom/android/server/wm/Transition$ChangeInfo;->hasChanged()Z

    move-result p0

    return p0
.end method

.method public hasOrderChanges()Z
    .registers 8

    .line 2346
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2349
    iget-object v1, p0, Lcom/android/server/wm/Transition;->mTargetDisplays:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_d
    if-ge v4, v2, :cond_1b

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lcom/android/server/wm/DisplayContent;

    .line 2350
    invoke-static {v5, v0}, Lcom/android/server/wm/Transition;->addOnTopTasks(Lcom/android/server/wm/DisplayContent;Ljava/util/ArrayList;)V

    goto :goto_d

    .line 2352
    :cond_1b
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v2, v3

    :cond_20
    const/4 v4, 0x1

    if-ge v2, v1, :cond_34

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v2, v2, 0x1

    check-cast v5, Lcom/android/server/wm/Task;

    .line 2353
    iget-object v6, p0, Lcom/android/server/wm/Transition;->mOnTopTasksStart:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_20

    return v4

    .line 2357
    :cond_34
    sget-object v0, Landroid/window/DesktopExperienceFlags;->ENABLE_DISPLAY_FOCUS_IN_SHELL_TRANSITIONS:Landroid/window/DesktopExperienceFlags;

    invoke-virtual {v0}, Landroid/window/DesktopExperienceFlags;->isTrue()Z

    move-result v0

    if-eqz v0, :cond_4b

    iget-object v0, p0, Lcom/android/server/wm/Transition;->mOnTopDisplayStart:Lcom/android/server/wm/DisplayContent;

    iget-object p0, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget-object p0, p0, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 2358
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getTopFocusedDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    if-eq v0, p0, :cond_4b

    return v4

    :cond_4b
    return v3
.end method

.method public hasStarted()Z
    .registers 2

    .line 754
    iget p0, p0, Lcom/android/server/wm/Transition;->mState:I

    const/4 v0, 0x1

    if-lt p0, v0, :cond_6

    return v0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public hasTransientLaunch()Z
    .registers 1

    .line 591
    iget-object p0, p0, Lcom/android/server/wm/Transition;->mTransientLaunches:Landroid/util/ArrayMap;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public final invokeTransitionEndedListeners()V
    .registers 3

    .line 1722
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mTransitionEndedListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    .line 1725
    :goto_6
    iget-object v1, p0, Lcom/android/server/wm/Transition;->mTransitionEndedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1c

    .line 1726
    iget-object v1, p0, Lcom/android/server/wm/Transition;->mTransitionEndedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_1c
    const/4 v0, 0x0

    .line 1728
    iput-object v0, p0, Lcom/android/server/wm/Transition;->mTransitionEndedListeners:Ljava/util/ArrayList;

    return-void
.end method

.method public isAborted()Z
    .registers 2

    .line 746
    iget p0, p0, Lcom/android/server/wm/Transition;->mState:I

    const/4 v0, 0x3

    if-ne p0, v0, :cond_7

    const/4 p0, 0x1

    return p0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method public isCollecting()Z
    .registers 2

    .line 742
    iget p0, p0, Lcom/android/server/wm/Transition;->mState:I

    const/4 v0, 0x1

    if-eqz p0, :cond_a

    if-ne p0, v0, :cond_8

    goto :goto_a

    :cond_8
    const/4 p0, 0x0

    return p0

    :cond_a
    :goto_a
    return v0
.end method

.method public isForcePlaying()Z
    .registers 1

    .line 1868
    iget-boolean p0, p0, Lcom/android/server/wm/Transition;->mForcePlaying:Z

    return p0
.end method

.method public isInAodAppearTransition()Z
    .registers 2

    .line 1057
    iget p0, p0, Lcom/android/server/wm/Transition;->mFlags:I

    const v0, 0x8000

    and-int/2addr p0, v0

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public isInTransientHide(Lcom/android/server/wm/WindowContainer;)Z
    .registers 6

    .line 504
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mTransientHideTasks:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 505
    :cond_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    :goto_c
    if-ltz v0, :cond_23

    .line 506
    iget-object v3, p0, Lcom/android/server/wm/Transition;->mTransientHideTasks:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/Task;

    if-eq p1, v3, :cond_22

    .line 507
    invoke-virtual {p1, v3}, Lcom/android/server/wm/WindowContainer;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    move-result v3

    if-eqz v3, :cond_1f

    goto :goto_22

    :cond_1f
    add-int/lit8 v0, v0, -0x1

    goto :goto_c

    :cond_22
    :goto_22
    return v2

    :cond_23
    return v1
.end method

.method public isInTransition(Lcom/android/server/wm/WindowContainer;)Z
    .registers 3

    :goto_0
    if-eqz p1, :cond_11

    .line 1051
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 p0, 0x1

    return p0

    .line 1050
    :cond_c
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object p1

    goto :goto_0

    :cond_11
    const/4 p0, 0x0

    return p0
.end method

.method public isOnDisplay(Lcom/android/server/wm/DisplayContent;)Z
    .registers 2

    .line 609
    iget-object p0, p0, Lcom/android/server/wm/Transition;->mTargetDisplays:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isPopulated()Z
    .registers 3

    .line 1156
    iget v0, p0, Lcom/android/server/wm/Transition;->mState:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_c

    invoke-virtual {p0}, Lcom/android/server/wm/Transition;->allReady()Z

    move-result p0

    if-eqz p0, :cond_c

    return v1

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public isSourceActivity(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 2

    .line 1042
    iget-object p0, p0, Lcom/android/server/wm/Transition;->mSourceActivities:Ljava/util/ArrayList;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 1043
    :cond_6
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isStarted()Z
    .registers 2

    .line 750
    iget p0, p0, Lcom/android/server/wm/Transition;->mState:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_6

    return v0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public isTransientLaunch(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 2

    .line 595
    iget-object p0, p0, Lcom/android/server/wm/Transition;->mTransientLaunches:Landroid/util/ArrayMap;

    if-eqz p0, :cond_c

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public isTransientVisible(Lcom/android/server/wm/Task;)Z
    .registers 11

    .line 541
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mTransientLaunches:Landroid/util/ArrayMap;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 545
    :cond_6
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    move v3, v1

    :goto_d
    if-ltz v2, :cond_5b

    .line 547
    iget-object v4, p0, Lcom/android/server/wm/Transition;->mTransientLaunches:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v4

    if-nez v4, :cond_1e

    goto :goto_58

    .line 549
    :cond_1e
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v5

    if-eqz v5, :cond_58

    .line 550
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->getTopChild()Lcom/android/server/wm/WindowContainer;

    move-result-object v6

    if-ne v6, v4, :cond_2b

    goto :goto_58

    .line 551
    :cond_2b
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    :goto_31
    if-ltz v6, :cond_58

    .line 552
    invoke-virtual {v5, v6}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v7

    if-ne v7, v4, :cond_3a

    goto :goto_58

    .line 554
    :cond_3a
    invoke-virtual {v7}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/WindowConfiguration;->isAlwaysOnTop()Z

    move-result v8

    if-nez v8, :cond_55

    iget-object v8, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget-object v8, v8, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v8, v8, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v8, v8, Lcom/android/server/wm/ActivityTaskSupervisor;->mOpaqueContainerHelper:Lcom/android/server/wm/ActivityTaskSupervisor$OpaqueContainerHelper;

    .line 555
    invoke-virtual {v8, v7}, Lcom/android/server/wm/ActivityTaskSupervisor$OpaqueContainerHelper;->isOpaque(Lcom/android/server/wm/WindowContainer;)Z

    move-result v7

    if-eqz v7, :cond_55

    add-int/lit8 v3, v3, 0x1

    goto :goto_58

    :cond_55
    add-int/lit8 v6, v6, -0x1

    goto :goto_31

    :cond_58
    :goto_58
    add-int/lit8 v2, v2, -0x1

    goto :goto_d

    :cond_5b
    if-ne v3, v0, :cond_5e

    return v1

    .line 567
    :cond_5e
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Transition;->isInTransientHide(Lcom/android/server/wm/WindowContainer;)Z

    move-result p0

    return p0
.end method

.method public final synthetic lambda$addTransactionPresentedCallback$8(Ljava/lang/Runnable;Landroid/view/SurfaceControl$TransactionStats;)V
    .registers 3

    .line 2311
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public final synthetic lambda$finishTransition$4(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;)V
    .registers 5

    .line 1432
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    return-void

    .line 1433
    :cond_d
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result p1

    if-eqz p1, :cond_27

    .line 1437
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result p1

    if-nez p1, :cond_21

    .line 1438
    iget-object p0, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget-object p0, p0, Lcom/android/server/wm/TransitionController;->mValidateCommitVis:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 1441
    :cond_21
    iget-object p0, p0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-virtual {p0, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-void

    .line 1446
    :cond_27
    iget-object p0, p0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-virtual {p0, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final synthetic lambda$postCleanupOnFailure$9()V
    .registers 2

    .line 2457
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget-object v0, v0, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 2458
    :try_start_a
    invoke-virtual {p0}, Lcom/android/server/wm/Transition;->cleanUpOnFailure()V

    .line 2459
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_a .. :try_end_e} :catchall_12

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_12
    move-exception p0

    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final synthetic lambda$setConfigAtEnd$1(Lcom/android/server/wm/ActivityRecord;)V
    .registers 3

    .line 614
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_39

    .line 615
    :cond_d
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mConfigAtEndActivities:Ljava/util/ArrayList;

    if-nez v0, :cond_19

    .line 616
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/Transition;->mConfigAtEndActivities:Ljava/util/ArrayList;

    goto :goto_20

    .line 617
    :cond_19
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    goto :goto_39

    .line 620
    :cond_20
    :goto_20
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mConfigAtEndActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 621
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->pauseConfigurationDispatch()V

    .line 622
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Transition;->collect(Lcom/android/server/wm/WindowContainer;)V

    .line 623
    iget-object p0, p0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/Transition$ChangeInfo;

    iget p1, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    or-int/lit8 p1, p1, 0x40

    iput p1, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    :cond_39
    :goto_39
    return-void
.end method

.method public final synthetic lambda$setTransientLaunch$0(Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;)Z
    .registers 9

    const/4 v0, 0x0

    if-ne p3, p1, :cond_4

    return v0

    .line 467
    :cond_4
    invoke-virtual {p3}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_40

    invoke-virtual {p3}, Lcom/android/server/wm/Task;->isAlwaysOnTop()Z

    move-result p1

    if-nez p1, :cond_40

    .line 468
    invoke-virtual {p3}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result p1

    if-eqz p1, :cond_37

    .line 469
    sget-object p1, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    aget-boolean p1, p1, v0

    if-eqz p1, :cond_32

    iget p1, p3, Lcom/android/server/wm/Task;->mTaskId:I

    int-to-long v2, p1

    sget-object p1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-wide v3, -0x36ec53650f09c873L    # -1.0968754893250029E44

    invoke-static {p1, v3, v4, v1, v2}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 471
    :cond_32
    iget-object p1, p0, Lcom/android/server/wm/Transition;->mTransientHideTasks:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 473
    :cond_37
    invoke-virtual {p3}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result p1

    if-eqz p1, :cond_40

    .line 474
    invoke-virtual {p0, p3}, Lcom/android/server/wm/Transition;->collect(Lcom/android/server/wm/WindowContainer;)V

    :cond_40
    if-eqz p2, :cond_46

    if-ne p3, p2, :cond_45

    return v1

    :cond_45
    return v0

    .line 481
    :cond_46
    invoke-virtual {p3}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result p0

    if-eqz p0, :cond_53

    invoke-virtual {p3}, Lcom/android/server/wm/TaskFragment;->fillsParent()Z

    move-result p0

    if-eqz p0, :cond_53

    return v1

    :cond_53
    return v0
.end method

.method public legacyRestoreNavigationBarFromApp()V
    .registers 10

    .line 2639
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget-boolean v1, v0, Lcom/android/server/wm/TransitionController;->mNavigationBarAttachedToApp:Z

    if-nez v1, :cond_7

    goto :goto_37

    :cond_7
    const/4 v1, 0x0

    .line 2642
    iput-boolean v1, v0, Lcom/android/server/wm/TransitionController;->mNavigationBarAttachedToApp:Z

    .line 2644
    iget v0, p0, Lcom/android/server/wm/Transition;->mRecentsDisplayId:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_17

    .line 2646
    const-string v0, "Transition"

    const-string v2, "Restore parent surface of navigation bar by another transition"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 2650
    :cond_17
    iget-object v2, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget-object v2, v2, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 2651
    invoke-virtual {v2, v0}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    const/4 v2, 0x1

    .line 2652
    invoke-virtual {p0, v0, v2}, Lcom/android/server/wm/Transition;->sendLumaSamplingEnabledToStatusBarInternal(Lcom/android/server/wm/DisplayContent;Z)V

    .line 2653
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBar()Lcom/android/server/wm/WindowState;

    move-result-object v3

    if-nez v3, :cond_30

    goto :goto_37

    .line 2655
    :cond_30
    invoke-virtual {v3, v1}, Lcom/android/server/wm/WindowState;->setSurfaceTranslationY(I)V

    .line 2657
    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    if-nez v3, :cond_38

    :goto_37
    return-void

    .line 2659
    :cond_38
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayArea;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v4

    .line 2660
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v5

    .line 2661
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v6

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->getLastLayer()I

    move-result v7

    invoke-virtual {v4, v6, v7}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move v6, v1

    .line 2666
    :goto_4c
    iget-object v7, p0, Lcom/android/server/wm/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_73

    .line 2667
    iget-object v7, p0, Lcom/android/server/wm/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/Transition$ChangeInfo;

    iget-object v7, v7, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v7

    if-eqz v7, :cond_70

    .line 2668
    invoke-virtual {v7}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHomeOrRecents()Z

    move-result v8

    if-nez v8, :cond_6b

    goto :goto_70

    .line 2669
    :cond_6b
    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v1

    goto :goto_73

    :cond_70
    :goto_70
    add-int/lit8 v6, v6, 0x1

    goto :goto_4c

    :cond_73
    :goto_73
    if-eqz v1, :cond_7e

    .line 2674
    new-instance p0, Lcom/android/server/wm/NavBarFadeAnimationController;

    invoke-direct {p0, v0}, Lcom/android/server/wm/NavBarFadeAnimationController;-><init>(Lcom/android/server/wm/DisplayContent;)V

    .line 2676
    invoke-virtual {p0, v2}, Lcom/android/server/wm/NavBarFadeAnimationController;->fadeWindowToken(Z)V

    goto :goto_89

    .line 2679
    :cond_7e
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object p0

    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v4, p0, v1}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 2683
    :goto_89
    iget-object p0, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    return-void
.end method

.method public onReadyTraceEnd(Ljava/lang/String;I)V
    .registers 3

    .line 3701
    invoke-static {p2}, Lcom/android/server/wm/Transition;->asyncTraceEnd(I)V

    return-void
.end method

.method public onReadyTraceStart(Ljava/lang/String;I)V
    .registers 3

    .line 3696
    invoke-static {p1, p2}, Lcom/android/server/wm/Transition;->asyncTraceBegin(Ljava/lang/String;I)V

    return-void
.end method

.method public onSeamlessRotating(Lcom/android/server/wm/DisplayContent;)V
    .registers 5

    .line 649
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    iget v1, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    invoke-virtual {v0, v1}, Lcom/android/server/wm/BLASTSyncEngine;->getSyncSet(I)Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

    move-result-object v0

    iget v0, v0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mSyncMethod:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    goto :goto_46

    .line 650
    :cond_e
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mContainerFreezer:Lcom/android/server/wm/Transition$IContainerFreezer;

    if-nez v0, :cond_1a

    .line 651
    new-instance v0, Lcom/android/server/wm/Transition$ScreenshotFreezer;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/android/server/wm/Transition$ScreenshotFreezer;-><init>(Lcom/android/server/wm/Transition;Lcom/android/server/wm/Transition-IA;)V

    iput-object v0, p0, Lcom/android/server/wm/Transition;->mContainerFreezer:Lcom/android/server/wm/Transition$IContainerFreezer;

    .line 653
    :cond_1a
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayPolicy;->getTopFullscreenOpaqueWindow()Lcom/android/server/wm/WindowState;

    move-result-object p1

    if-eqz p1, :cond_46

    .line 655
    iput-boolean v1, p0, Lcom/android/server/wm/Transition;->mIsSeamlessRotation:Z

    .line 656
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->useBlastForNextSync()V

    .line 657
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    const/4 v0, 0x0

    aget-boolean p0, p0, v0

    if-eqz p0, :cond_46

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v1, 0x25f1edc4196f3fa3L    # 6.621439290562198E-126

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, v1, v2, v0, p0}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_46
    :goto_46
    return-void
.end method

.method public onSyncGroupTimeout(Z)V
    .registers 5

    const/4 v0, 0x1

    .line 4057
    iput-boolean v0, p0, Lcom/android/server/wm/Transition;->mIsTimedOut:Z

    if-nez p1, :cond_6

    goto :goto_6c

    .line 4061
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " readiness timeout. state="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/Transition;->mState:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Transition"

    invoke-static {v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4062
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "   met conditions: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/Transition;->mReadyTracker:Lcom/android/server/wm/Transition$ReadyTracker;

    iget-object v2, v2, Lcom/android/server/wm/Transition$ReadyTracker;->mMet:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4063
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "   unmet conditions: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/Transition;->mReadyTracker:Lcom/android/server/wm/Transition$ReadyTracker;

    iget-object v2, v2, Lcom/android/server/wm/Transition$ReadyTracker;->mConditions:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4066
    iget p1, p0, Lcom/android/server/wm/Transition;->mState:I

    if-ge p1, v0, :cond_6c

    iget-object p1, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {p1}, Lcom/android/server/wm/TransitionController;->getCollectingTransition()Lcom/android/server/wm/Transition;

    move-result-object p1

    if-ne p0, p1, :cond_6c

    .line 4067
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {p0, p1}, Lcom/android/server/wm/Transition;->applyDisplayChangeIfNeeded(Landroid/util/ArraySet;)V

    :cond_6c
    :goto_6c
    return-void
.end method

.method public onTransactionCommitTimeout()V
    .registers 5

    .line 2268
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mCleanupTransaction:Landroid/view/SurfaceControl$Transaction;

    if-nez v0, :cond_5

    goto :goto_2d

    .line 2269
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mTargetDisplays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_d
    if-ltz v0, :cond_2d

    .line 2270
    iget-object v1, p0, Lcom/android/server/wm/Transition;->mTargetDisplays:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    .line 2271
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getAsyncRotationController()Lcom/android/server/wm/AsyncRotationController;

    move-result-object v2

    if-eqz v2, :cond_2a

    .line 2272
    iget-object v3, p0, Lcom/android/server/wm/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-static {v1, v3}, Lcom/android/server/wm/Transition;->containsChangeFor(Lcom/android/server/wm/WindowContainer;Ljava/util/ArrayList;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 2273
    iget-object v1, p0, Lcom/android/server/wm/Transition;->mCleanupTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/AsyncRotationController;->onTransactionCommitTimeout(Landroid/view/SurfaceControl$Transaction;)V

    :cond_2a
    add-int/lit8 v0, v0, -0x1

    goto :goto_d

    :cond_2d
    :goto_2d
    return-void
.end method

.method public onTransactionCommitted()V
    .registers 3

    .line 2263
    iget-object p0, p0, Lcom/android/server/wm/Transition;->mLogger:Lcom/android/server/wm/TransitionController$Logger;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wm/TransitionController$Logger;->mTransactionCommitTimeNs:J

    return-void
.end method

.method public onTransactionReady(ILandroid/view/SurfaceControl$Transaction;)V
    .registers 12

    .line 1898
    iget v0, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    const-string v1, "Transition"

    if-eq p1, v0, :cond_25

    .line 1899
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected Sync ID "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ". Expected "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_25
    const/4 p1, 0x0

    move v0, p1

    .line 1903
    :goto_27
    iget-object v2, p0, Lcom/android/server/wm/Transition;->mReadyTracker:Lcom/android/server/wm/Transition$ReadyTracker;

    iget-object v2, v2, Lcom/android/server/wm/Transition$ReadyTracker;->mMet:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v0, v2, :cond_5c

    .line 1904
    sget-object v2, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    aget-boolean v2, v2, p1

    if-eqz v2, :cond_59

    iget v2, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    int-to-long v4, v2

    iget-object v2, p0, Lcom/android/server/wm/Transition;->mReadyTracker:Lcom/android/server/wm/Transition$ReadyTracker;

    iget-object v2, v2, Lcom/android/server/wm/Transition$ReadyTracker;->mMet:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget-object v6, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    filled-new-array {v4, v2}, [Ljava/lang/Object;

    move-result-object v2

    const-wide v4, -0x12cc95eb18b3c9c2L    # -1.0708297704870128E218

    invoke-static {v6, v4, v5, v3, v2}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_59
    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    .line 1912
    :cond_5c
    invoke-virtual {p0, p2}, Lcom/android/server/wm/Transition;->commitVisibleActivities(Landroid/view/SurfaceControl$Transaction;)V

    .line 1913
    invoke-virtual {p0, p2}, Lcom/android/server/wm/Transition;->commitVisibleWallpapers(Landroid/view/SurfaceControl$Transaction;)V

    .line 1915
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mTransactionPresentedListeners:Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-eqz v0, :cond_78

    .line 1916
    new-instance v0, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/wm/Transition;->mTransactionPresentedListeners:Ljava/util/ArrayList;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1919
    new-instance v4, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda13;

    invoke-direct {v4, v0}, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda13;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, p2, v4}, Lcom/android/server/wm/Transition;->addTransactionPresentedCallback(Landroid/view/SurfaceControl$Transaction;Ljava/lang/Runnable;)V

    .line 1925
    iput-object v2, p0, Lcom/android/server/wm/Transition;->mTransactionPresentedListeners:Ljava/util/ArrayList;

    .line 1929
    :cond_78
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mTargetDisplays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_89

    iget-object v0, p0, Lcom/android/server/wm/Transition;->mTargetDisplays:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/DisplayContent;

    goto :goto_93

    .line 1930
    :cond_89
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget-object v0, v0, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 1932
    :goto_93
    iget v4, p0, Lcom/android/server/wm/Transition;->mState:I

    const/4 v5, 0x3

    const/4 v6, -0x1

    if-ne v4, v5, :cond_cf

    .line 1933
    iget-object v1, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v1, p0}, Lcom/android/server/wm/TransitionController;->onAbort(Lcom/android/server/wm/Transition;)V

    .line 1934
    iget-object v1, p0, Lcom/android/server/wm/Transition;->mConfigAtEndActivities:Ljava/util/ArrayList;

    if-eqz v1, :cond_ba

    .line 1935
    :goto_a2
    iget-object v1, p0, Lcom/android/server/wm/Transition;->mConfigAtEndActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_b8

    .line 1936
    iget-object v1, p0, Lcom/android/server/wm/Transition;->mConfigAtEndActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->resumeConfigurationDispatch()Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_a2

    .line 1938
    :cond_b8
    iput-object v2, p0, Lcom/android/server/wm/Transition;->mConfigAtEndActivities:Ljava/util/ArrayList;

    .line 1940
    :cond_ba
    invoke-virtual {p0}, Lcom/android/server/wm/Transition;->ensureParticipantSurfaceVisibility()V

    .line 1941
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayArea;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/SurfaceControl$Transaction;->merge(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    .line 1942
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->scheduleAnimation()V

    .line 1943
    iput v6, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    .line 1944
    iput-object v2, p0, Lcom/android/server/wm/Transition;->mOverrideOptions:Landroid/window/TransitionInfo$AnimationOptions;

    .line 1945
    invoke-virtual {p0}, Lcom/android/server/wm/Transition;->cleanUpInternal()V

    return-void

    :cond_cf
    if-eq v4, v3, :cond_ec

    .line 1950
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Playing a Transition which hasn\'t started! #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " This will likely cause an exception in Shell"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ec
    const/4 v1, 0x2

    .line 1954
    iput v1, p0, Lcom/android/server/wm/Transition;->mState:I

    .line 1955
    iput-object p2, p0, Lcom/android/server/wm/Transition;->mStartTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 1956
    iget-object v1, p0, Lcom/android/server/wm/Transition;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/SurfaceControl$Transaction;

    iput-object v1, p0, Lcom/android/server/wm/Transition;->mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 1959
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_109

    .line 1960
    iget v0, p0, Lcom/android/server/wm/Transition;->mFlags:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/android/server/wm/Transition;->mFlags:I

    .line 1965
    :cond_109
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget-object v0, v0, Lcom/android/server/wm/TransitionController;->mWaitingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Transition;->collectOrderChanges(Z)V

    .line 1967
    iget-boolean v0, p0, Lcom/android/server/wm/Transition;->mPriorVisibilityMightBeDirty:Z

    if-eqz v0, :cond_11b

    .line 1968
    invoke-virtual {p0}, Lcom/android/server/wm/Transition;->updatePriorVisibility()V

    .line 1972
    :cond_11b
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    iget-object v1, p0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    invoke-static {v0, v1}, Lcom/android/server/wm/Transition;->calculateTargets(Landroid/util/ArraySet;Landroid/util/ArrayMap;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/Transition;->mTargets:Ljava/util/ArrayList;

    .line 1975
    iget-object v1, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget-object v1, v1, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mBackNavigationController:Lcom/android/server/wm/BackNavigationController;

    iget-object v4, p0, Lcom/android/server/wm/Transition;->mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v1, p0, v0, p2, v4}, Lcom/android/server/wm/BackNavigationController;->onTransactionReady(Lcom/android/server/wm/Transition;Ljava/util/ArrayList;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V

    .line 1977
    iget v0, p0, Lcom/android/server/wm/Transition;->mType:I

    iget v1, p0, Lcom/android/server/wm/Transition;->mFlags:I

    iget-object v4, p0, Lcom/android/server/wm/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-static {v0, v1, v4, p2}, Lcom/android/server/wm/Transition;->calculateTransitionInfo(IILjava/util/ArrayList;Landroid/view/SurfaceControl$Transaction;)Landroid/window/TransitionInfo;

    move-result-object v0

    .line 1978
    iget v1, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    invoke-virtual {v0, v1}, Landroid/window/TransitionInfo;->setDebugId(I)V

    .line 1979
    iget-object v1, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v1, p0, v0}, Lcom/android/server/wm/TransitionController;->assignTrack(Lcom/android/server/wm/Transition;Landroid/window/TransitionInfo;)V

    .line 1981
    iget-object v1, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v1, p0}, Lcom/android/server/wm/TransitionController;->moveToPlaying(Lcom/android/server/wm/Transition;)V

    .line 1984
    iget-object v1, p0, Lcom/android/server/wm/Transition;->mTargetDisplays:Ljava/util/ArrayList;

    .line 1985
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Lcom/android/server/wm/DisplayContent;

    .line 1984
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/server/wm/DisplayContent;

    .line 1986
    iget-object v4, p0, Lcom/android/server/wm/Transition;->mTargetDisplays:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    move v4, p1

    .line 1987
    :goto_15d
    invoke-virtual {v0}, Landroid/window/TransitionInfo;->getRootCount()I

    move-result v5

    if-ge v4, v5, :cond_17d

    .line 1988
    iget-object v5, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget-object v5, v5, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 1989
    invoke-virtual {v0, v4}, Landroid/window/TransitionInfo;->getRoot(I)Landroid/window/TransitionInfo$Root;

    move-result-object v7

    invoke-virtual {v7}, Landroid/window/TransitionInfo$Root;->getDisplayId()I

    move-result v7

    .line 1988
    invoke-virtual {v5, v7}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    .line 1990
    iget-object v7, p0, Lcom/android/server/wm/Transition;->mTargetDisplays:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_15d

    :cond_17d
    move v4, p1

    .line 1993
    :goto_17e
    iget-object v5, p0, Lcom/android/server/wm/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_1e4

    .line 1994
    iget-object v5, p0, Lcom/android/server/wm/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/Transition$ChangeInfo;

    iget-object v5, v5, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 1995
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->asWallpaperToken()Lcom/android/server/wm/WallpaperWindowToken;

    move-result-object v7

    if-eqz v7, :cond_1af

    .line 2000
    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v5

    if-eqz v5, :cond_1e1

    invoke-virtual {v7}, Lcom/android/server/wm/WindowToken;->getFixedRotationLeash()Landroid/view/SurfaceControl;

    move-result-object v5

    if-eqz v5, :cond_1e1

    .line 2001
    iget-object v5, v7, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p2, v5}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 2002
    iget-object v5, v7, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {p2, v5, v7}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    goto :goto_1e1

    .line 2006
    :cond_1af
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->asDisplayArea()Lcom/android/server/wm/DisplayArea;

    move-result-object v5

    if-nez v5, :cond_1b6

    goto :goto_1e1

    .line 2008
    :cond_1b6
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v7

    if-eqz v7, :cond_1da

    .line 2009
    iget-object v7, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget-object v7, v7, Lcom/android/server/wm/TransitionController;->mValidateDisplayVis:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v7

    if-ltz v7, :cond_1e1

    .line 2010
    iget-object v8, p0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    .line 2013
    invoke-virtual {v8, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/Transition$ChangeInfo;

    iget-boolean v5, v5, Lcom/android/server/wm/Transition$ChangeInfo;->mVisible:Z

    if-nez v5, :cond_1e1

    .line 2014
    iget-object v5, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget-object v5, v5, Lcom/android/server/wm/TransitionController;->mValidateDisplayVis:Ljava/util/ArrayList;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1e1

    .line 2018
    :cond_1da
    iget-object v7, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget-object v7, v7, Lcom/android/server/wm/TransitionController;->mValidateDisplayVis:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1e1
    :goto_1e1
    add-int/lit8 v4, v4, 0x1

    goto :goto_17e

    .line 2021
    :cond_1e4
    invoke-virtual {p0, v0}, Lcom/android/server/wm/Transition;->overrideAnimationOptionsToInfoIfNecessary(Landroid/window/TransitionInfo;)V

    move v4, p1

    .line 2024
    :goto_1e8
    iget-object v5, p0, Lcom/android/server/wm/Transition;->mTargetDisplays:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_203

    .line 2025
    iget-object v5, p0, Lcom/android/server/wm/Transition;->mTargetDisplays:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0, v5, v0}, Lcom/android/server/wm/Transition;->handleLegacyRecentsStartBehavior(Lcom/android/server/wm/DisplayContent;Landroid/window/TransitionInfo;)V

    .line 2026
    iget v5, p0, Lcom/android/server/wm/Transition;->mRecentsDisplayId:I

    if-eq v5, v6, :cond_200

    goto :goto_203

    :cond_200
    add-int/lit8 v4, v4, 0x1

    goto :goto_1e8

    .line 2030
    :cond_203
    :goto_203
    iget-object v4, p0, Lcom/android/server/wm/Transition;->mClientAnimationStartCallback:Landroid/os/IRemoteCallback;

    invoke-virtual {p0, v4}, Lcom/android/server/wm/Transition;->sendRemoteCallback(Landroid/os/IRemoteCallback;)V

    .line 2039
    iget-object v4, p0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    sub-int/2addr v4, v3

    :goto_20f
    if-ltz v4, :cond_25b

    .line 2040
    iget-object v5, p0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-virtual {v5, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    if-eqz v5, :cond_258

    .line 2041
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v6

    if-nez v6, :cond_226

    goto :goto_258

    .line 2042
    :cond_226
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v6

    invoke-virtual {p2, v6}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 2056
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v5

    :goto_231
    if-eqz v5, :cond_258

    .line 2057
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->asDisplayArea()Lcom/android/server/wm/DisplayArea;

    move-result-object v6

    if-nez v6, :cond_258

    .line 2058
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->isOrganized()Z

    move-result v6

    if-nez v6, :cond_253

    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->canCreateRemoteAnimationTarget()Z

    move-result v6

    if-nez v6, :cond_246

    goto :goto_253

    .line 2059
    :cond_246
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v6

    if-eqz v6, :cond_253

    .line 2060
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v6

    invoke-virtual {p2, v6}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 2057
    :cond_253
    :goto_253
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v5

    goto :goto_231

    :cond_258
    :goto_258
    add-int/lit8 v4, v4, -0x1

    goto :goto_20f

    .line 2068
    :cond_25b
    iget-object v4, p0, Lcom/android/server/wm/Transition;->mTransientLaunches:Landroid/util/ArrayMap;

    if-nez v4, :cond_289

    .line 2069
    iget-object v4, p0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    sub-int/2addr v4, v3

    :goto_266
    if-ltz v4, :cond_289

    .line 2070
    iget-object v5, p0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-virtual {v5, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowContainer;

    .line 2071
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->asWindowToken()Lcom/android/server/wm/WindowToken;

    move-result-object v6

    if-eqz v6, :cond_286

    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v6

    if-nez v6, :cond_27d

    goto :goto_286

    .line 2072
    :cond_27d
    iget-object v6, p0, Lcom/android/server/wm/Transition;->mVisibleAtTransitionEndTokens:Landroid/util/ArraySet;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->asWindowToken()Lcom/android/server/wm/WindowToken;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_286
    :goto_286
    add-int/lit8 v4, v4, -0x1

    goto :goto_266

    :cond_289
    move v4, p1

    .line 2078
    :goto_28a
    iget-object v5, p0, Lcom/android/server/wm/Transition;->mTargetDisplays:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_2ae

    .line 2079
    iget-object v5, p0, Lcom/android/server/wm/Transition;->mTargetDisplays:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/DisplayContent;

    .line 2080
    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->getAsyncRotationController()Lcom/android/server/wm/AsyncRotationController;

    move-result-object v6

    if-eqz v6, :cond_2ab

    .line 2081
    iget-object v7, p0, Lcom/android/server/wm/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-static {v5, v7}, Lcom/android/server/wm/Transition;->containsChangeFor(Lcom/android/server/wm/WindowContainer;Ljava/util/ArrayList;)Z

    move-result v5

    if-eqz v5, :cond_2ab

    .line 2082
    invoke-virtual {v6, p2}, Lcom/android/server/wm/AsyncRotationController;->setupStartTransaction(Landroid/view/SurfaceControl$Transaction;)V

    :cond_2ab
    add-int/lit8 v4, v4, 0x1

    goto :goto_28a

    .line 2087
    :cond_2ae
    iget-object v4, p0, Lcom/android/server/wm/Transition;->mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p0, v4, v0, v1}, Lcom/android/server/wm/Transition;->buildFinishTransaction(Landroid/view/SurfaceControl$Transaction;Landroid/window/TransitionInfo;[Lcom/android/server/wm/DisplayContent;)V

    .line 2088
    iget-object v4, p0, Lcom/android/server/wm/Transition;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    invoke-interface {v4}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/SurfaceControl$Transaction;

    iput-object v4, p0, Lcom/android/server/wm/Transition;->mCleanupTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 2089
    invoke-static {v4, v0}, Lcom/android/server/wm/Transition;->buildCleanupTransaction(Landroid/view/SurfaceControl$Transaction;Landroid/window/TransitionInfo;)V

    .line 2090
    iget-object v4, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v4}, Lcom/android/server/wm/TransitionController;->getTransitionPlayer()Landroid/window/ITransitionPlayer;

    move-result-object v4

    if-eqz v4, :cond_343

    iget-boolean v4, p0, Lcom/android/server/wm/Transition;->mIsPlayerEnabled:Z

    if-eqz v4, :cond_343

    .line 2091
    iget-object v3, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget-wide v4, p0, Lcom/android/server/wm/Transition;->mStatusBarTransitionDelay:J

    invoke-virtual {v3, v1, v4, v5}, Lcom/android/server/wm/TransitionController;->dispatchLegacyAppTransitionStarting([Lcom/android/server/wm/DisplayContent;J)V

    .line 2094
    :try_start_2d5
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    aget-boolean v1, v1, p1

    if-eqz v1, :cond_2ed

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-wide v4, -0x4a41677db194c275L    # -8.177520965211613E-50

    invoke-static {v3, v4, v5, p1, v1}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 2096
    :cond_2ed
    iget-object v1, p0, Lcom/android/server/wm/Transition;->mLogger:Lcom/android/server/wm/TransitionController$Logger;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v3

    iput-wide v3, v1, Lcom/android/server/wm/TransitionController$Logger;->mSendTimeNs:J

    .line 2097
    iget-object v1, p0, Lcom/android/server/wm/Transition;->mLogger:Lcom/android/server/wm/TransitionController$Logger;

    iput-object v0, v1, Lcom/android/server/wm/TransitionController$Logger;->mInfo:Landroid/window/TransitionInfo;

    .line 2098
    iget-object v1, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v1}, Lcom/android/server/wm/TransitionController;->getTransitionPlayer()Landroid/window/ITransitionPlayer;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/wm/Transition;->mToken:Lcom/android/server/wm/Transition$Token;

    iget-object v4, p0, Lcom/android/server/wm/Transition;->mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-interface {v1, v3, v0, p2, v4}, Landroid/window/ITransitionPlayer;->onTransitionReady(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V

    const-wide/16 v3, 0x20

    .line 2100
    invoke-static {v3, v4}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result p2

    if-eqz p2, :cond_31b

    .line 2101
    const-string p2, "playing"

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {p2, v1}, Lcom/android/server/wm/Transition;->asyncTraceBegin(Ljava/lang/String;I)V
    :try_end_317
    .catch Landroid/os/RemoteException; {:try_start_2d5 .. :try_end_317} :catch_318

    goto :goto_31b

    .line 2106
    :catch_318
    invoke-virtual {p0}, Lcom/android/server/wm/Transition;->postCleanupOnFailure()V

    .line 2108
    :cond_31b
    :goto_31b
    iget-object p2, p0, Lcom/android/server/wm/Transition;->mTargetDisplays:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p1, p2, :cond_36d

    .line 2109
    iget-object p2, p0, Lcom/android/server/wm/Transition;->mTargetDisplays:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/wm/DisplayContent;

    .line 2110
    iget-object v1, p2, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    .line 2112
    invoke-virtual {v1}, Lcom/android/server/wm/AccessibilityController;->hasCallbacks()Z

    move-result v3

    if-eqz v3, :cond_340

    .line 2113
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result p2

    iget v3, p0, Lcom/android/server/wm/Transition;->mType:I

    iget v4, p0, Lcom/android/server/wm/Transition;->mFlags:I

    invoke-virtual {v1, p2, v3, v4}, Lcom/android/server/wm/AccessibilityController;->onWMTransition(III)V

    :cond_340
    add-int/lit8 p1, p1, 0x1

    goto :goto_31b

    .line 2118
    :cond_343
    iget-boolean p2, p0, Lcom/android/server/wm/Transition;->mIsPlayerEnabled:Z

    if-nez p2, :cond_36a

    .line 2119
    iget-object p2, p0, Lcom/android/server/wm/Transition;->mLogger:Lcom/android/server/wm/TransitionController$Logger;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v4

    iput-wide v4, p2, Lcom/android/server/wm/TransitionController$Logger;->mSendTimeNs:J

    .line 2120
    sget-object p2, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    aget-boolean p1, p2, p1

    if-eqz p1, :cond_36a

    iget p1, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    int-to-long p1, p1

    sget-object v1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-wide v4, 0x1966d582a0723dcfL

    invoke-static {v1, v4, v5, v3, p1}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 2124
    :cond_36a
    invoke-virtual {p0}, Lcom/android/server/wm/Transition;->postCleanupOnFailure()V

    .line 2126
    :cond_36d
    iput-object v2, p0, Lcom/android/server/wm/Transition;->mOverrideOptions:Landroid/window/TransitionInfo$AnimationOptions;

    .line 2128
    invoke-virtual {p0}, Lcom/android/server/wm/Transition;->reportStartReasonsToLogger()V

    .line 2133
    iget-object p1, p0, Lcom/android/server/wm/Transition;->mTransientLaunches:Landroid/util/ArrayMap;

    if-nez p1, :cond_381

    .line 2134
    iget-object p1, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget-object p1, p1, Lcom/android/server/wm/TransitionController;->mSnapshotController:Lcom/android/server/wm/SnapshotController;

    iget p2, p0, Lcom/android/server/wm/Transition;->mType:I

    iget-object v1, p0, Lcom/android/server/wm/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {p1, p2, v1}, Lcom/android/server/wm/SnapshotController;->onTransactionReady(ILjava/util/ArrayList;)V

    .line 2138
    :cond_381
    invoke-virtual {v0}, Landroid/window/TransitionInfo;->releaseAnimSurfaces()V

    .line 2140
    iget-object p1, p0, Lcom/android/server/wm/Transition;->mLogger:Lcom/android/server/wm/TransitionController$Logger;

    iget-object p2, p1, Lcom/android/server/wm/TransitionController$Logger;->mInfo:Landroid/window/TransitionInfo;

    if-eqz p2, :cond_39a

    .line 2141
    iget-object p2, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget-object p2, p2, Lcom/android/server/wm/TransitionController;->mLoggerHandler:Landroid/os/Handler;

    invoke-virtual {p1, p2}, Lcom/android/server/wm/TransitionController$Logger;->logOnSendAsync(Landroid/os/Handler;)V

    .line 2142
    iget-object p1, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget-object p1, p1, Lcom/android/server/wm/TransitionController;->mTransitionTracer:Lcom/android/server/wm/TransitionTracer;

    iget-object p2, p0, Lcom/android/server/wm/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-interface {p1, p0, p2}, Lcom/android/server/wm/TransitionTracer;->logSentTransition(Lcom/android/server/wm/Transition;Ljava/util/ArrayList;)V

    .line 2144
    :cond_39a
    invoke-virtual {p0}, Lcom/android/server/wm/Transition;->removeStartingWindowIfAny()V

    return-void
.end method

.method public overrideAnimationOptionsToInfoIfNecessary(Landroid/window/TransitionInfo;)V
    .registers 7

    .line 2182
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mOverrideOptions:Landroid/window/TransitionInfo$AnimationOptions;

    if-nez v0, :cond_5

    return-void

    .line 2185
    :cond_5
    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v0

    .line 2186
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_f
    if-ltz v1, :cond_59

    .line 2187
    iget-object v2, p0, Lcom/android/server/wm/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Transition$ChangeInfo;

    iget-object v2, v2, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 2188
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/window/TransitionInfo$Change;

    .line 2189
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    if-nez v4, :cond_4c

    .line 2190
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/wm/Transition;->shouldApplyAnimOptionsToTask(Lcom/android/server/wm/Task;)Z

    move-result v4

    if-nez v4, :cond_4c

    .line 2191
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v4

    invoke-virtual {p0, v4, v3}, Lcom/android/server/wm/Transition;->shouldApplyAnimOptionsToFillParentTf(Lcom/android/server/wm/TaskFragment;Landroid/window/TransitionInfo$Change;)Z

    move-result v4

    if-eqz v4, :cond_3c

    goto :goto_4c

    .line 2194
    :cond_3c
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/wm/Transition;->shouldApplyAnimOptionsToEmbeddedTf(Lcom/android/server/wm/TaskFragment;)Z

    move-result v2

    if-eqz v2, :cond_56

    .line 2197
    iget-object v2, p0, Lcom/android/server/wm/Transition;->mOverrideOptions:Landroid/window/TransitionInfo$AnimationOptions;

    invoke-virtual {v3, v2}, Landroid/window/TransitionInfo$Change;->setAnimationOptions(Landroid/window/TransitionInfo$AnimationOptions;)V

    goto :goto_56

    .line 2192
    :cond_4c
    :goto_4c
    iget-object v2, p0, Lcom/android/server/wm/Transition;->mOverrideOptions:Landroid/window/TransitionInfo$AnimationOptions;

    invoke-virtual {v3, v2}, Landroid/window/TransitionInfo$Change;->setAnimationOptions(Landroid/window/TransitionInfo$AnimationOptions;)V

    .line 2193
    iget v2, p0, Lcom/android/server/wm/Transition;->mOverrideBackgroundColor:I

    invoke-virtual {v3, v2}, Landroid/window/TransitionInfo$Change;->setBackgroundColor(I)V

    :cond_56
    :goto_56
    add-int/lit8 v1, v1, -0x1

    goto :goto_f

    .line 2200
    :cond_59
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Transition;->updateActivityTargetForCrossProfileAnimation(Landroid/window/TransitionInfo;)V

    return-void
.end method

.method public playNow()V
    .registers 6

    .line 1844
    iget v0, p0, Lcom/android/server/wm/Transition;->mState:I

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    if-eq v0, v1, :cond_8

    return-void

    .line 1847
    :cond_8
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    const/4 v2, 0x0

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_24

    iget v0, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    int-to-long v2, v0

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-wide v3, -0xc6418a78964c316L    # -7.804015622836719E248

    invoke-static {v0, v3, v4, v1, v2}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 1849
    :cond_24
    iput-boolean v1, p0, Lcom/android/server/wm/Transition;->mForcePlaying:Z

    .line 1851
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mReadyTracker:Lcom/android/server/wm/Transition$ReadyTracker;

    iget-object v0, v0, Lcom/android/server/wm/Transition$ReadyTracker;->mConditions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_2f
    if-ltz v0, :cond_43

    .line 1852
    iget-object v2, p0, Lcom/android/server/wm/Transition;->mReadyTracker:Lcom/android/server/wm/Transition$ReadyTracker;

    iget-object v2, v2, Lcom/android/server/wm/Transition$ReadyTracker;->mConditions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Transition$ReadyCondition;

    const-string v3, "play-now"

    invoke-virtual {v2, v3}, Lcom/android/server/wm/Transition$ReadyCondition;->meetAlternate(Ljava/lang/String;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_2f

    .line 1854
    :cond_43
    new-instance v0, Lcom/android/server/wm/Transition$ReadyCondition;

    const-string v2, "force-play-now"

    invoke-direct {v0, v2, v1}, Lcom/android/server/wm/Transition$ReadyCondition;-><init>(Ljava/lang/String;Z)V

    .line 1856
    iget-object v1, p0, Lcom/android/server/wm/Transition;->mReadyTracker:Lcom/android/server/wm/Transition$ReadyTracker;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/Transition$ReadyTracker;->add(Lcom/android/server/wm/Transition$ReadyCondition;)V

    .line 1857
    invoke-virtual {v0}, Lcom/android/server/wm/Transition$ReadyCondition;->meet()V

    .line 1858
    invoke-virtual {p0}, Lcom/android/server/wm/Transition;->setAllReady()V

    .line 1859
    iget v0, p0, Lcom/android/server/wm/Transition;->mState:I

    if-nez v0, :cond_5c

    .line 1860
    invoke-virtual {p0}, Lcom/android/server/wm/Transition;->start()V

    .line 1864
    :cond_5c
    iget-object p0, p0, Lcom/android/server/wm/Transition;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    invoke-virtual {p0}, Lcom/android/server/wm/BLASTSyncEngine;->onSurfacePlacement()V

    return-void
.end method

.method public final postCleanupOnFailure()V
    .registers 3

    .line 2456
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget-object v0, v0, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    new-instance v1, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda16;

    invoke-direct {v1, p0}, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda16;-><init>(Lcom/android/server/wm/Transition;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public recordChain(Lcom/android/server/wm/ActionChain;)V
    .registers 3

    .line 3720
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mChainHead:Lcom/android/server/wm/ActionChain;

    iput-object v0, p1, Lcom/android/server/wm/ActionChain;->mPrevious:Lcom/android/server/wm/ActionChain;

    .line 3721
    iput-object p1, p0, Lcom/android/server/wm/Transition;->mChainHead:Lcom/android/server/wm/ActionChain;

    return-void
.end method

.method public final recordDisplay(Lcom/android/server/wm/DisplayContent;)V
    .registers 3

    if-eqz p1, :cond_38

    .line 869
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mTargetDisplays:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_38

    .line 870
    :cond_b
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mTargetDisplays:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 871
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mOnTopTasksStart:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lcom/android/server/wm/Transition;->addOnTopTasks(Lcom/android/server/wm/DisplayContent;Ljava/util/ArrayList;)V

    .line 872
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mOnTopDisplayStart:Lcom/android/server/wm/DisplayContent;

    if-nez v0, :cond_25

    .line 873
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget-object v0, v0, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 874
    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getTopFocusedDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/Transition;->mOnTopDisplayStart:Lcom/android/server/wm/DisplayContent;

    .line 878
    :cond_25
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_31

    const/4 v0, 0x1

    .line 879
    invoke-virtual {p1, v0}, Lcom/android/server/wm/DisplayContent;->enableHighPerfTransition(Z)V

    .line 881
    :cond_31
    iget-object p0, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget p1, p1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {p0, p1}, Lcom/android/server/wm/TransitionController;->dispatchLegacyAppTransitionPending(I)V

    :cond_38
    :goto_38
    return-void
.end method

.method public recordTaskOrder(Lcom/android/server/wm/WindowContainer;)V
    .registers 2

    .line 889
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/Transition;->recordDisplay(Lcom/android/server/wm/DisplayContent;)V

    return-void
.end method

.method public removeFlag(I)V
    .registers 3

    .line 424
    iget v0, p0, Lcom/android/server/wm/Transition;->mFlags:I

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p0, Lcom/android/server/wm/Transition;->mFlags:I

    return-void
.end method

.method public final removeStartingWindowIfAny()V
    .registers 10

    .line 2149
    iget-boolean v0, p0, Lcom/android/server/wm/Transition;->mIsPlayerEnabled:Z

    if-nez v0, :cond_5

    goto :goto_60

    .line 2152
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_d
    if-ltz v0, :cond_60

    .line 2153
    iget-object v2, p0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    if-eqz v2, :cond_5d

    .line 2154
    iget-object v3, v2, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    if-eqz v3, :cond_5d

    iget-object v4, v2, Lcom/android/server/wm/ActivityRecord;->mStartingSurface:Lcom/android/server/wm/StartingSurfaceController$StartingSurface;

    if-eqz v4, :cond_5d

    iget v3, v3, Lcom/android/server/wm/StartingData;->mRemoveAfterTransaction:I

    if-eq v3, v1, :cond_2a

    goto :goto_5d

    .line 2159
    :cond_2a
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getStartingWindowInfo()Landroid/window/StartingWindowRemovalInfo;

    move-result-object v3

    if-eqz v3, :cond_5d

    .line 2162
    :try_start_30
    sget-object v4, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    const/4 v5, 0x0

    aget-boolean v4, v4, v5

    if-eqz v4, :cond_49

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget-object v6, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-wide v7, -0x1eeb0ee7653ac79cL    # -4.600355005338391E159

    invoke-static {v6, v7, v8, v5, v4}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 2164
    :cond_49
    iget-object v4, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v4}, Lcom/android/server/wm/TransitionController;->getTransitionPlayer()Landroid/window/ITransitionPlayer;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/window/ITransitionPlayer;->removeStartingWindow(Landroid/window/StartingWindowRemovalInfo;)V
    :try_end_52
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_52} :catch_53

    goto :goto_5a

    .line 2166
    :catch_53
    const-string v3, "Transition"

    const-string v4, "Unable to remove starting window after transition"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2168
    :goto_5a
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->cleanUpStartingInfo()V

    :cond_5d
    :goto_5d
    add-int/lit8 v0, v0, -0x1

    goto :goto_d

    :cond_60
    :goto_60
    return-void
.end method

.method public final reportStartReasonsToLogger()V
    .registers 7

    .line 2697
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 2698
    iget-object v1, p0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_d
    if-ltz v1, :cond_5a

    .line 2699
    iget-object v3, p0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-virtual {v3, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    if-eqz v3, :cond_57

    .line 2700
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v4

    if-nez v4, :cond_24

    goto :goto_57

    .line 2701
    :cond_24
    iget-boolean v4, p0, Lcom/android/server/wm/Transition;->mIsTimedOut:Z

    if-eqz v4, :cond_31

    const/4 v4, 0x3

    .line 2702
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_57

    .line 2708
    :cond_31
    iget-object v4, v3, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    if-eqz v4, :cond_41

    iget-boolean v5, v3, Lcom/android/server/wm/ActivityRecord;->mLastAllReadyAtSync:Z

    if-nez v5, :cond_41

    .line 2709
    instance-of v4, v4, Lcom/android/server/wm/SplashScreenStartingData;

    if-eqz v4, :cond_3f

    move v4, v2

    goto :goto_50

    :cond_3f
    const/4 v4, 0x4

    goto :goto_50

    .line 2712
    :cond_41
    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHomeOrRecents()Z

    move-result v4

    if-eqz v4, :cond_4f

    invoke-virtual {p0, v3}, Lcom/android/server/wm/Transition;->isTransientLaunch(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v4

    if-eqz v4, :cond_4f

    const/4 v4, 0x5

    goto :goto_50

    :cond_4f
    const/4 v4, 0x2

    .line 2715
    :goto_50
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_57
    :goto_57
    add-int/lit8 v1, v1, -0x1

    goto :goto_d

    .line 2717
    :cond_5a
    iget-object p0, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget-object p0, p0, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->getActivityMetricsLogger()Lcom/android/server/wm/ActivityMetricsLogger;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityMetricsLogger;->notifyTransitionStarting(Landroid/util/ArrayMap;)V

    return-void
.end method

.method public final resetSurfaceTransform(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/WindowContainer;Landroid/view/SurfaceControl;)V
    .registers 11

    .line 1165
    new-instance p0, Landroid/graphics/Point;

    invoke-direct {p0}, Landroid/graphics/Point;-><init>()V

    .line 1166
    invoke-virtual {p2, p0}, Lcom/android/server/wm/WindowContainer;->getRelativePosition(Landroid/graphics/Point;)V

    .line 1167
    iget v0, p0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget p0, p0, Landroid/graphics/Point;->y:I

    int-to-float p0, p0

    invoke-virtual {p1, p3, v0, p0}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 1171
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object p0

    if-nez p0, :cond_1c

    const/4 p0, 0x0

    .line 1172
    invoke-virtual {p1, p3, p0}, Landroid/view/SurfaceControl$Transaction;->setCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    goto :goto_2b

    .line 1175
    :cond_1c
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->getResolvedOverrideBounds()Landroid/graphics/Rect;

    move-result-object p0

    .line 1176
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    invoke-virtual {p1, p3, v0, p0}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    :goto_2b
    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    move-object v1, p1

    move-object v2, p3

    .line 1178
    invoke-virtual/range {v1 .. v6}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    .line 1183
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->isOrganized()Z

    move-result p0

    if-eqz p0, :cond_46

    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->matchParentBounds()Z

    move-result p0

    if-eqz p0, :cond_46

    const/4 p0, -0x1

    .line 1184
    invoke-virtual {v1, v2, p0, p0}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    :cond_46
    return-void
.end method

.method public final sendLumaSamplingEnabledToStatusBarInternal(Lcom/android/server/wm/DisplayContent;Z)V
    .registers 3

    .line 2688
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayPolicy;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object p0

    if-eqz p0, :cond_11

    .line 2690
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result p1

    invoke-interface {p0, p1, p2}, Lcom/android/server/statusbar/StatusBarManagerInternal;->setNavigationBarLumaSamplingEnabled(IZ)V

    :cond_11
    return-void
.end method

.method public final sendRemoteCallback(Landroid/os/IRemoteCallback;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    .line 1074
    :cond_3
    iget-object p0, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget-object p0, p0, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    new-instance v0, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda12;

    invoke-direct {v0}, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda12;-><init>()V

    invoke-static {v0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setAllReady()V
    .registers 2

    .line 1144
    invoke-virtual {p0}, Lcom/android/server/wm/Transition;->isCollecting()Z

    move-result v0

    if-eqz v0, :cond_10

    iget v0, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    if-gez v0, :cond_b

    goto :goto_10

    .line 1145
    :cond_b
    iget-object p0, p0, Lcom/android/server/wm/Transition;->mReadyTrackerOld:Lcom/android/server/wm/Transition$ReadyTrackerOld;

    invoke-virtual {p0}, Lcom/android/server/wm/Transition$ReadyTrackerOld;->setAllReady()V

    :cond_10
    :goto_10
    return-void
.end method

.method public setBackGestureAnimation(Lcom/android/server/wm/WindowContainer;Z)V
    .registers 3

    .line 629
    iget-object p0, p0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/Transition$ChangeInfo;

    if-nez p0, :cond_b

    return-void

    .line 631
    :cond_b
    iget p1, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    if-eqz p2, :cond_12

    const/16 p2, 0x80

    goto :goto_14

    :cond_12
    const/16 p2, 0x100

    :goto_14
    or-int/2addr p1, p2

    .line 632
    iput p1, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    return-void
.end method

.method public setCanPipOnFinish(Z)V
    .registers 2

    .line 1285
    iput-boolean p1, p0, Lcom/android/server/wm/Transition;->mCanPipOnFinish:Z

    return-void
.end method

.method public setConfigAtEnd(Lcom/android/server/wm/WindowContainer;)V
    .registers 3

    .line 613
    new-instance v0, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/wm/Transition;)V

    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public setKnownConfigChanges(Lcom/android/server/wm/WindowContainer;I)V
    .registers 3

    .line 1066
    iget-object p0, p0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/Transition$ChangeInfo;

    if-eqz p0, :cond_c

    .line 1068
    iput p2, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mKnownConfigChanges:I

    :cond_c
    return-void
.end method

.method public setNoAnimation(Lcom/android/server/wm/WindowContainer;)V
    .registers 2

    .line 1882
    iget-object p0, p0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/Transition$ChangeInfo;

    if-eqz p0, :cond_11

    .line 1886
    iget p1, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    return-void

    .line 1884
    :cond_11
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Can\'t set no-animation property of non-participant"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setOverrideAnimation(Landroid/window/TransitionInfo$AnimationOptions;Lcom/android/server/wm/ActivityRecord;Landroid/os/IRemoteCallback;Landroid/os/IRemoteCallback;)V
    .registers 6

    .line 1087
    invoke-virtual {p0}, Lcom/android/server/wm/Transition;->isCollecting()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 1088
    :cond_7
    iput-object p1, p0, Lcom/android/server/wm/Transition;->mOverrideOptions:Landroid/window/TransitionInfo$AnimationOptions;

    if-eqz p1, :cond_10

    .line 1090
    iget p2, p2, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-virtual {p1, p2}, Landroid/window/TransitionInfo$AnimationOptions;->setUserId(I)V

    .line 1092
    :cond_10
    iget-object p1, p0, Lcom/android/server/wm/Transition;->mClientAnimationStartCallback:Landroid/os/IRemoteCallback;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/Transition;->sendRemoteCallback(Landroid/os/IRemoteCallback;)V

    .line 1093
    iput-object p3, p0, Lcom/android/server/wm/Transition;->mClientAnimationStartCallback:Landroid/os/IRemoteCallback;

    .line 1094
    iput-object p4, p0, Lcom/android/server/wm/Transition;->mClientAnimationFinishCallback:Landroid/os/IRemoteCallback;

    return-void
.end method

.method public setOverrideBackgroundColor(I)V
    .registers 2

    .line 1101
    iput p1, p0, Lcom/android/server/wm/Transition;->mOverrideBackgroundColor:I

    return-void
.end method

.method public setPipActivity(Lcom/android/server/wm/ActivityRecord;)V
    .registers 2

    .line 667
    iput-object p1, p0, Lcom/android/server/wm/Transition;->mPipActivity:Lcom/android/server/wm/ActivityRecord;

    return-void
.end method

.method public setReady(Lcom/android/server/wm/WindowContainer;Z)V
    .registers 4

    .line 1115
    invoke-virtual {p0}, Lcom/android/server/wm/Transition;->isCollecting()Z

    move-result v0

    if-eqz v0, :cond_10

    iget v0, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    if-gez v0, :cond_b

    goto :goto_10

    .line 1116
    :cond_b
    iget-object p0, p0, Lcom/android/server/wm/Transition;->mReadyTrackerOld:Lcom/android/server/wm/Transition$ReadyTrackerOld;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/Transition$ReadyTrackerOld;->setReadyFrom(Lcom/android/server/wm/WindowContainer;Z)V

    :cond_10
    :goto_10
    return-void
.end method

.method public setRemoteAnimationApp(Landroid/app/IApplicationThread;)V
    .registers 3

    .line 1873
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget-object v0, v0, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(Landroid/app/IApplicationThread;)Lcom/android/server/wm/WindowProcessController;

    move-result-object p1

    if-eqz p1, :cond_12

    .line 1877
    iget-object p0, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget-object p0, p0, Lcom/android/server/wm/TransitionController;->mRemotePlayer:Lcom/android/server/wm/TransitionController$RemotePlayer;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, v0}, Lcom/android/server/wm/TransitionController$RemotePlayer;->update(Lcom/android/server/wm/WindowProcessController;ZZ)V

    :cond_12
    return-void
.end method

.method public setRequestedLocation(ILandroid/graphics/Rect;)V
    .registers 4

    .line 683
    new-instance v0, Landroid/window/TransitionRequestInfo$RequestedLocation;

    invoke-direct {v0, p1, p2}, Landroid/window/TransitionRequestInfo$RequestedLocation;-><init>(ILandroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/android/server/wm/Transition;->mRequestedLocation:Landroid/window/TransitionRequestInfo$RequestedLocation;

    return-void
.end method

.method public setSeamlessRotation(Lcom/android/server/wm/WindowContainer;)V
    .registers 4

    .line 637
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/Transition$ChangeInfo;

    if-nez v0, :cond_b

    return-void

    .line 639
    :cond_b
    iget v1, v0, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    .line 640
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/Transition;->onSeamlessRotating(Lcom/android/server/wm/DisplayContent;)V

    return-void
.end method

.method public setTransientLaunch(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)V
    .registers 10

    .line 444
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mTransientLaunches:Landroid/util/ArrayMap;

    if-nez v0, :cond_12

    .line 445
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/Transition;->mTransientLaunches:Landroid/util/ArrayMap;

    .line 446
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/Transition;->mTransientHideTasks:Ljava/util/ArrayList;

    .line 448
    :cond_12
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mTransientLaunches:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Transition;->setTransientLaunchToChanges(Lcom/android/server/wm/WindowContainer;)V

    if-eqz p2, :cond_1f

    .line 451
    iget v0, p2, Lcom/android/server/wm/Task;->mTaskId:I

    goto :goto_20

    :cond_1f
    const/4 v0, -0x1

    .line 452
    :goto_20
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    const/4 v2, 0x0

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_47

    iget v1, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    int-to-long v3, v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    int-to-long v5, v0

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    filled-new-array {v3, v1, v4}, [Ljava/lang/Object;

    move-result-object v1

    const-wide v3, -0x759ff8203330c0cdL

    const/16 v5, 0x11

    invoke-static {v0, v3, v4, v5, v1}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 455
    :cond_47
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz p2, :cond_52

    .line 456
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    goto :goto_5a

    :cond_52
    if-eqz v0, :cond_59

    .line 457
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    goto :goto_5a

    :cond_59
    const/4 v1, 0x0

    :goto_5a
    if-eqz v1, :cond_7c

    .line 464
    new-instance v3, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda14;

    invoke-direct {v3, p0, v0, p2}, Lcom/android/server/wm/Transition$$ExternalSyntheticLambda14;-><init>(Lcom/android/server/wm/Transition;Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;)V

    invoke-virtual {v1, v3}, Lcom/android/server/wm/WindowContainer;->forAllTasks(Ljava/util/function/Predicate;)Z

    .line 485
    iget-object p2, p0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_6c
    if-ltz p2, :cond_7c

    .line 486
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/Transition$ChangeInfo;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Transition;->updateTransientFlags(Lcom/android/server/wm/Transition$ChangeInfo;)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_6c

    .line 492
    :cond_7c
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHomeOrRecents()Z

    move-result p2

    if-eqz p2, :cond_8e

    const/16 p2, 0x80

    .line 493
    invoke-virtual {p0, p2}, Lcom/android/server/wm/Transition;->addFlag(I)V

    .line 498
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/android/server/wm/TaskFragment;->setCanAffectSystemUiFlags(Z)V

    :cond_8e
    return-void
.end method

.method public final setTransientLaunchToChanges(Lcom/android/server/wm/WindowContainer;)V
    .registers 4

    :goto_0
    if-eqz p1, :cond_2a

    .line 698
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 700
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-nez v0, :cond_17

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-nez v0, :cond_17

    goto :goto_2a

    .line 703
    :cond_17
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 704
    iget v1, v0, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    .line 699
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object p1

    goto :goto_0

    :cond_2a
    :goto_2a
    return-void
.end method

.method public final shouldApplyAnimOptionsToEmbeddedTf(Lcom/android/server/wm/TaskFragment;)Z
    .registers 4

    const/4 v0, 0x0

    if-eqz p1, :cond_21

    .line 2225
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->isEmbedded()Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_21

    .line 2228
    :cond_a
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getAnimationParams()Landroid/window/TaskFragmentAnimationParams;

    move-result-object p1

    invoke-virtual {p1}, Landroid/window/TaskFragmentAnimationParams;->hasOverrideAnimation()Z

    move-result p1

    if-eqz p1, :cond_15

    return v0

    .line 2233
    :cond_15
    iget-object p0, p0, Lcom/android/server/wm/Transition;->mOverrideOptions:Landroid/window/TransitionInfo$AnimationOptions;

    if-eqz p0, :cond_21

    invoke-virtual {p0}, Landroid/window/TransitionInfo$AnimationOptions;->getType()I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_21

    return p1

    :cond_21
    :goto_21
    return v0
.end method

.method public final shouldApplyAnimOptionsToFillParentTf(Lcom/android/server/wm/TaskFragment;Landroid/window/TransitionInfo$Change;)Z
    .registers 4

    const/4 v0, 0x0

    if-eqz p1, :cond_21

    .line 2215
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->isEmbedded()Z

    move-result p1

    if-eqz p1, :cond_21

    iget-object p1, p0, Lcom/android/server/wm/Transition;->mOverrideOptions:Landroid/window/TransitionInfo$AnimationOptions;

    if-nez p1, :cond_e

    goto :goto_21

    :cond_e
    const/16 p1, 0x400

    .line 2220
    invoke-virtual {p2, p1}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    move-result p1

    if-eqz p1, :cond_21

    iget-object p0, p0, Lcom/android/server/wm/Transition;->mOverrideOptions:Landroid/window/TransitionInfo$AnimationOptions;

    .line 2221
    invoke-virtual {p0}, Landroid/window/TransitionInfo$AnimationOptions;->getType()I

    move-result p0

    const/4 p1, 0x5

    if-ne p0, p1, :cond_21

    const/4 p0, 0x1

    return p0

    :cond_21
    :goto_21
    return v0
.end method

.method public final shouldApplyAnimOptionsToTask(Lcom/android/server/wm/Task;)Z
    .registers 4

    const/4 v0, 0x0

    if-eqz p1, :cond_1b

    .line 2204
    iget-object p1, p0, Lcom/android/server/wm/Transition;->mOverrideOptions:Landroid/window/TransitionInfo$AnimationOptions;

    if-nez p1, :cond_8

    goto :goto_1b

    .line 2207
    :cond_8
    invoke-virtual {p1}, Landroid/window/TransitionInfo$AnimationOptions;->getType()I

    move-result p1

    const/4 v1, 0x5

    if-eq p1, v1, :cond_19

    .line 2210
    iget-object p0, p0, Lcom/android/server/wm/Transition;->mOverrideOptions:Landroid/window/TransitionInfo$AnimationOptions;

    invoke-virtual {p0}, Landroid/window/TransitionInfo$AnimationOptions;->getOverrideTaskTransition()Z

    move-result p0

    if-eqz p0, :cond_18

    goto :goto_19

    :cond_18
    return v0

    :cond_19
    :goto_19
    const/4 p0, 0x1

    return p0

    :cond_1b
    :goto_1b
    return v0
.end method

.method public shouldApplyOnDisplayThread()Z
    .registers 6

    .line 3609
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_8
    const/4 v2, 0x0

    if-ltz v0, :cond_3f

    .line 3610
    iget-object v3, p0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-virtual {v3, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    if-nez v3, :cond_1a

    goto :goto_3c

    .line 3612
    :cond_1a
    iget-object v4, p0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/Transition$ChangeInfo;

    if-eqz v4, :cond_3c

    .line 3613
    iget v4, v4, Lcom/android/server/wm/Transition$ChangeInfo;->mRotation:I

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getRotation()I

    move-result v3

    if-eq v4, v3, :cond_3c

    .line 3614
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/wm/Transition;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p0

    if-eq v0, p0, :cond_3b

    return v1

    :cond_3b
    return v2

    :cond_3c
    :goto_3c
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_3f
    return v2
.end method

.method public shouldUsePerfHint(Lcom/android/server/wm/DisplayContent;)Z
    .registers 4

    .line 3589
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mOverrideOptions:Landroid/window/TransitionInfo$AnimationOptions;

    if-eqz v0, :cond_1b

    .line 3590
    invoke-virtual {v0}, Landroid/window/TransitionInfo$AnimationOptions;->getType()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1b

    iget v0, p0, Lcom/android/server/wm/Transition;->mType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1b

    iget-object v0, p0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    .line 3591
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1b

    const/4 p0, 0x0

    return p0

    .line 3597
    :cond_1b
    iget-object p0, p0, Lcom/android/server/wm/Transition;->mTargetDisplays:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final shouldWallpaperBeVisible()Z
    .registers 4

    .line 2541
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_8
    if-ltz v0, :cond_1c

    .line 2542
    iget-object v2, p0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    .line 2543
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->showWallpaper()Z

    move-result v2

    if-eqz v2, :cond_19

    return v1

    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_1c
    const/4 p0, 0x0

    return p0
.end method

.method public final snapshotStartState(Lcom/android/server/wm/WindowContainer;)V
    .registers 7

    :goto_0
    if-eqz p1, :cond_48

    .line 847
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_48

    .line 849
    new-instance v0, Lcom/android/server/wm/Transition$ChangeInfo;

    invoke-direct {v0, p1}, Lcom/android/server/wm/Transition$ChangeInfo;-><init>(Lcom/android/server/wm/WindowContainer;)V

    .line 850
    invoke-virtual {p0, v0}, Lcom/android/server/wm/Transition;->updateTransientFlags(Lcom/android/server/wm/Transition$ChangeInfo;)V

    .line 851
    iget-object v1, p0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 852
    invoke-static {p1}, Lcom/android/server/wm/Transition;->isReadyGroup(Lcom/android/server/wm/WindowContainer;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 853
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mReadyTrackerOld:Lcom/android/server/wm/Transition$ReadyTrackerOld;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/Transition$ReadyTrackerOld;->addGroup(Lcom/android/server/wm/WindowContainer;)V

    .line 854
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_43

    iget v0, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    int-to-long v0, v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-wide v1, 0xea0e7710d73332L

    const/4 v4, 0x1

    invoke-static {v3, v1, v2, v4, v0}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 848
    :cond_43
    invoke-static {p1}, Lcom/android/server/wm/Transition;->getAnimatableParent(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/WindowContainer;

    move-result-object p1

    goto :goto_0

    :cond_48
    return-void
.end method

.method public start()V
    .registers 6

    .line 786
    iget v0, p0, Lcom/android/server/wm/Transition;->mState:I

    if-ltz v0, :cond_59

    const/4 v1, 0x1

    if-lt v0, v1, :cond_2a

    .line 789
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Transition already started id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/wm/Transition;->mState:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Transition"

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 794
    :cond_2a
    iput v1, p0, Lcom/android/server/wm/Transition;->mState:I

    .line 795
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    const/4 v2, 0x0

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_48

    iget v0, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    int-to-long v2, v0

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-wide v3, 0x26f8cb1209403231L    # 6.000882256300104E-121

    invoke-static {v0, v3, v4, v1, v2}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 797
    :cond_48
    invoke-virtual {p0}, Lcom/android/server/wm/Transition;->applyReady()V

    .line 799
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mLogger:Lcom/android/server/wm/TransitionController$Logger;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/wm/TransitionController$Logger;->mStartTimeNs:J

    .line 801
    iget-object p0, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {p0}, Lcom/android/server/wm/TransitionController;->updateAnimatingState()V

    return-void

    .line 787
    :cond_59
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Can\'t start Transition which isn\'t collecting."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public startCollecting(J)V
    .registers 10

    .line 767
    iget v0, p0, Lcom/android/server/wm/Transition;->mState:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_43

    const/4 v0, 0x0

    .line 770
    iput v0, p0, Lcom/android/server/wm/Transition;->mState:I

    .line 771
    iget-object v1, p0, Lcom/android/server/wm/Transition;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Transition-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/wm/Transition;->mType:I

    .line 772
    invoke-static {v3}, Landroid/view/WindowManager;->transitTypeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget v2, p0, Lcom/android/server/wm/Transition;->mParallelCollectType:I

    if-eqz v2, :cond_26

    const/4 v0, 0x1

    :cond_26
    move-object v2, p0

    move-wide v3, p1

    move v6, v0

    .line 771
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/BLASTSyncEngine;->startSyncSet(Lcom/android/server/wm/BLASTSyncEngine$TransactionReadyListener;JLjava/lang/String;Z)I

    move-result p0

    iput p0, v2, Lcom/android/server/wm/Transition;->mSyncId:I

    .line 774
    iget-object p1, v2, Lcom/android/server/wm/Transition;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    sget p2, Lcom/android/server/wm/TransitionController;->SYNC_METHOD:I

    invoke-virtual {p1, p0, p2}, Lcom/android/server/wm/BLASTSyncEngine;->setSyncMethod(II)V

    .line 776
    iget-object p0, v2, Lcom/android/server/wm/Transition;->mLogger:Lcom/android/server/wm/TransitionController$Logger;

    iget p1, v2, Lcom/android/server/wm/Transition;->mSyncId:I

    iput p1, p0, Lcom/android/server/wm/TransitionController$Logger;->mSyncId:I

    .line 777
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/wm/TransitionController$Logger;->mCollectTimeNs:J

    return-void

    .line 768
    :cond_43
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Attempting to re-use a transition"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 2723
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2724
    const-string v1, "TransitionRecord{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2725
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2726
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2727
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/Transition;->mType:I

    invoke-static {v2}, Landroid/view/WindowManager;->transitTypeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2728
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " flags=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/Transition;->mFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2729
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " parallelCollectType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/Transition;->mParallelCollectType:I

    invoke-static {v2}, Lcom/android/server/wm/Transition;->parallelCollectTypeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2730
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " recentsDisplayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/Transition;->mRecentsDisplayId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2731
    iget-object v1, p0, Lcom/android/server/wm/Transition;->mOverrideOptions:Landroid/window/TransitionInfo$AnimationOptions;

    if-eqz v1, :cond_ab

    .line 2732
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " overrideAnimOptions="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/Transition;->mOverrideOptions:Landroid/window/TransitionInfo$AnimationOptions;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2734
    :cond_ab
    iget v1, p0, Lcom/android/server/wm/Transition;->mOverrideBackgroundColor:I

    if-eqz v1, :cond_c5

    .line 2735
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " overrideBackgroundColor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/Transition;->mOverrideBackgroundColor:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2737
    :cond_c5
    iget-object v1, p0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_fc

    .line 2738
    const-string v1, " c=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 2739
    :goto_d3
    iget-object v2, p0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_f7

    .line 2740
    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "   "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Transition$ChangeInfo;

    invoke-virtual {v2}, Lcom/android/server/wm/Transition$ChangeInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_d3

    .line 2742
    :cond_f7
    const-string p0, "\n]\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_fc
    const/16 p0, 0x7d

    .line 2744
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2745
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final updateActivityTargetForCrossProfileAnimation(Landroid/window/TransitionInfo;)V
    .registers 7

    .line 2241
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mOverrideOptions:Landroid/window/TransitionInfo$AnimationOptions;

    invoke-virtual {v0}, Landroid/window/TransitionInfo$AnimationOptions;->getType()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_b

    goto :goto_4f

    :cond_b
    const/4 v0, 0x0

    .line 2244
    :goto_c
    iget-object v1, p0, Lcom/android/server/wm/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_4f

    .line 2245
    iget-object v1, p0, Lcom/android/server/wm/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/Transition$ChangeInfo;

    iget-object v1, v1, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 2246
    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/TransitionInfo$Change;

    if-eqz v1, :cond_4c

    .line 2247
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_36

    goto :goto_4c

    .line 2251
    :cond_36
    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getFlags()I

    move-result p0

    .line 2252
    iget p1, v1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    iget-object v0, v1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mCurrentUserId:I

    if-ne p1, v0, :cond_45

    const/16 p1, 0x1000

    goto :goto_47

    :cond_45
    const/16 p1, 0x2000

    :goto_47
    or-int/2addr p0, p1

    .line 2255
    invoke-virtual {v2, p0}, Landroid/window/TransitionInfo$Change;->setFlags(I)V

    return-void

    :cond_4c
    :goto_4c
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_4f
    :goto_4f
    return-void
.end method

.method public updateChangesForRestoreTransientHideTasks(Lcom/android/server/wm/Transition;)V
    .registers 9

    .line 519
    iget-object v0, p1, Lcom/android/server/wm/Transition;->mTransientHideTasks:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_17

    .line 521
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    aget-boolean p0, p0, v1

    if-eqz p0, :cond_5b

    sget-object p0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v2, -0x27733487299dc7d8L    # -3.6306348282157184E118

    const/4 p1, 0x0

    invoke-static {p0, v2, v3, v1, p1}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    return-void

    :cond_17
    move v0, v1

    .line 528
    :goto_18
    iget-object v2, p0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v0, v2, :cond_5b

    .line 529
    iget-object v2, p0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    .line 530
    invoke-virtual {p1, v2}, Lcom/android/server/wm/Transition;->isInTransientHide(Lcom/android/server/wm/WindowContainer;)Z

    move-result v3

    if-eqz v3, :cond_58

    .line 531
    sget-object v3, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    aget-boolean v3, v3, v1

    const/4 v4, 0x1

    if-eqz v3, :cond_4e

    iget v3, p0, Lcom/android/server/wm/Transition;->mSyncId:I

    int-to-long v5, v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    filled-new-array {v5, v2}, [Ljava/lang/Object;

    move-result-object v2

    const-wide v5, 0x333a0b21c5973445L    # 6.330820282808929E-62

    invoke-static {v3, v5, v6, v4, v2}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 533
    :cond_4e
    iget-object v2, p0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 534
    iput-boolean v4, v2, Lcom/android/server/wm/Transition$ChangeInfo;->mRestoringTransientHide:Z

    :cond_58
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    :cond_5b
    return-void
.end method

.method public final updateImeForVisibleTransientLaunch(Lcom/android/server/wm/DisplayContent;)V
    .registers 5

    const/4 v0, 0x1

    .line 1796
    invoke-virtual {p1, v0}, Lcom/android/server/wm/DisplayContent;->computeImeLayeringTarget(Z)Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 1797
    iget-object v1, p1, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_57

    if-eqz v0, :cond_57

    .line 1798
    iget-object p0, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    .line 1799
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getRotation()I

    move-result v2

    invoke-virtual {p0, p1, v2}, Lcom/android/server/wm/TransitionController;->hasCollectingRotationChange(Lcom/android/server/wm/WindowContainer;I)Z

    move-result p0

    if-nez p0, :cond_18

    goto :goto_57

    .line 1806
    :cond_18
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getControllableInsetProvider()Lcom/android/server/wm/InsetsSourceProvider;

    move-result-object p0

    if-eqz p0, :cond_57

    .line 1807
    iget-object v1, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControl:Landroid/view/InsetsSourceControl;

    if-eqz v1, :cond_57

    .line 1808
    invoke-virtual {p0}, Lcom/android/server/wm/InsetsSourceProvider;->isClientVisible()Z

    move-result v1

    if-eqz v1, :cond_57

    .line 1809
    invoke-virtual {p0}, Lcom/android/server/wm/InsetsSourceProvider;->getControlTarget()Lcom/android/server/wm/InsetsControlTarget;

    move-result-object v1

    if-ne v0, v1, :cond_2f

    goto :goto_57

    .line 1812
    :cond_2f
    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider;->mControl:Landroid/view/InsetsSourceControl;

    invoke-virtual {v0}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v0

    .line 1813
    invoke-virtual {p0}, Lcom/android/server/wm/InsetsSourceProvider;->getControlTarget()Lcom/android/server/wm/InsetsControlTarget;

    move-result-object p0

    if-eqz v0, :cond_57

    if-eqz p0, :cond_57

    .line 1814
    invoke-interface {p0}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object v1

    if-eqz v1, :cond_57

    .line 1815
    invoke-interface {p0}, Lcom/android/server/wm/InsetsControlTarget;->getWindow()Lcom/android/server/wm/WindowState;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result p0

    if-nez p0, :cond_57

    .line 1816
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayArea;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_57
    :goto_57
    return-void
.end method

.method public final updatePriorVisibility()V
    .registers 4

    const/4 v0, 0x0

    .line 2795
    :goto_1
    iget-object v1, p0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_32

    .line 2796
    iget-object v1, p0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/Transition$ChangeInfo;

    .line 2798
    iget-object v2, v1, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    if-nez v2, :cond_22

    iget-object v2, v1, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v2

    if-nez v2, :cond_22

    goto :goto_2f

    .line 2803
    :cond_22
    iget-boolean v2, v1, Lcom/android/server/wm/Transition$ChangeInfo;->mVisible:Z

    if-nez v2, :cond_27

    goto :goto_2f

    .line 2804
    :cond_27
    iget-object v2, v1, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/server/wm/Transition$ChangeInfo;->mVisible:Z

    :goto_2f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_32
    return-void
.end method

.method public final updateTransientFlags(Lcom/android/server/wm/Transition$ChangeInfo;)V
    .registers 4

    .line 861
    iget-object v0, p1, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 863
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v1

    if-nez v1, :cond_f

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-nez v1, :cond_f

    goto :goto_15

    .line 864
    :cond_f
    invoke-virtual {p0, v0}, Lcom/android/server/wm/Transition;->isInTransientHide(Lcom/android/server/wm/WindowContainer;)Z

    move-result p0

    if-nez p0, :cond_16

    :goto_15
    return-void

    .line 865
    :cond_16
    iget p0, p1, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    or-int/lit8 p0, p0, 0x4

    iput p0, p1, Lcom/android/server/wm/Transition$ChangeInfo;->mFlags:I

    return-void
.end method

.method public final validateKeyguardOcclusion()V
    .registers 3

    .line 3582
    iget v0, p0, Lcom/android/server/wm/Transition;->mFlags:I

    const v1, 0xb900

    and-int/2addr v0, v1

    if-eqz v0, :cond_1b

    .line 3583
    iget-object v0, p0, Lcom/android/server/wm/Transition;->mController:Lcom/android/server/wm/TransitionController;

    iget-object v0, v0, Lcom/android/server/wm/TransitionController;->mStateValidators:Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/server/wm/Transition;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/server/wm/KeyguardController$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/server/wm/KeyguardController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/policy/WindowManagerPolicy;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1b
    return-void
.end method
