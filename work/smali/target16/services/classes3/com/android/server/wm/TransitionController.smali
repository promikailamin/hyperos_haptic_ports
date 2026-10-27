.class public Lcom/android/server/wm/TransitionController;
.super Ljava/lang/Object;
.source "TransitionController.java"


# static fields
.field public static final SHELL_TRANSITIONS_ROTATION:Z

.field public static final SYNC_METHOD:I


# instance fields
.field public final mAnimatingExitWindows:Ljava/util/ArrayList;

.field public mAnimatingState:Z

.field public final mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

.field public mBuildingFinishLayers:Z

.field public mBuildingTransitionLayers:Z

.field public mCollectingTransition:Lcom/android/server/wm/Transition;

.field public mFinishingTransition:Lcom/android/server/wm/Transition;

.field public mFullReadyTracking:Z

.field public mIsWaitingForDisplayEnabled:Z

.field public final mLatestOnTopTasksReported:Landroid/util/SparseArray;

.field public final mLegacyListeners:Ljava/util/ArrayList;

.field public final mLoggerHandler:Landroid/os/Handler;

.field public mNavigationBarAttachedToApp:Z

.field public final mPlayingTransitions:Ljava/util/ArrayList;

.field public final mQueuedTransitions:Ljava/util/ArrayList;

.field public final mRemotePlayer:Lcom/android/server/wm/TransitionController$RemotePlayer;

.field public final mRunningLock:Lcom/android/server/wm/TransitionController$Lock;

.field public mSnapshotController:Lcom/android/server/wm/SnapshotController;

.field public final mStateValidators:Ljava/util/ArrayList;

.field public mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

.field public mTrackCount:I

.field public final mTransitionMetricsReporter:Lcom/android/server/wm/TransitionController$TransitionMetricsReporter;

.field public final mTransitionPlayers:Ljava/util/ArrayList;

.field public mTransitionTracer:Lcom/android/server/wm/TransitionTracer;

.field public final mValidateActivityCompat:Ljava/util/ArrayList;

.field public final mValidateCommitVis:Ljava/util/ArrayList;

.field public final mValidateDisplayVis:Ljava/util/ArrayList;

.field public final mWaitingTransitions:Ljava/util/ArrayList;


# direct methods
.method public static synthetic $r8$lambda$7oLnee2Rh5_8EJK8D_8JbzM99Ik(Ljava/util/function/Consumer;Z)V
    .registers 2

    .line 1711
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TerymLUGAYTwMRaNmsjSQz8dpTM(Lcom/android/server/wm/TransitionController;Lcom/android/server/wm/Transition;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TransitionController;->lambda$requestStartTransition$1(Lcom/android/server/wm/Transition;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WNpVl0LuKNnWcI5WnjVuynh0ucM(Lcom/android/server/wm/TransitionController;Lcom/android/server/wm/TransitionController$QueuedTransition;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TransitionController;->lambda$tryStartCollectFromQueue$4(Lcom/android/server/wm/TransitionController$QueuedTransition;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZGyX8J_xlg5yzX_FWtxgtrHJgsg(Lcom/android/server/wm/TransitionController;ZLcom/android/server/wm/Transition;Lcom/android/server/wm/WindowState;)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/TransitionController;->lambda$collectForDisplayAreaChange$3(ZLcom/android/server/wm/Transition;Lcom/android/server/wm/WindowState;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hdU7GOPCaI6x9zEuADVHZmrRCfs(Lcom/android/server/wm/Transition;Lcom/android/server/wm/Task;)V
    .registers 3

    .line 988
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 989
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Transition;->collect(Lcom/android/server/wm/WindowContainer;)V

    :cond_9
    return-void
.end method

.method public static synthetic $r8$lambda$sp5jLXZnTtjq9H_2FnHYm0f8wvE(Lcom/android/server/wm/WindowState;)V
    .registers 2

    .line 792
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowToken;->mRoundedCornerOverlay:Z

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v0, :cond_d

    .line 793
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->useBlastForNextSync()V

    :cond_d
    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 107
    const-string v0, "persist.wm.debug.shell_transit_rotate"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/TransitionController;->SHELL_TRANSITIONS_ROTATION:Z

    .line 111
    const-string v0, "persist.wm.debug.shell_transit_blast"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 112
    sput v0, Lcom/android/server/wm/TransitionController;->SYNC_METHOD:I

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .registers 4

    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TransitionController;->mTransitionPlayers:Ljava/util/ArrayList;

    .line 120
    new-instance v0, Lcom/android/server/wm/TransitionController$TransitionMetricsReporter;

    invoke-direct {v0}, Lcom/android/server/wm/TransitionController$TransitionMetricsReporter;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TransitionController;->mTransitionMetricsReporter:Lcom/android/server/wm/TransitionController$TransitionMetricsReporter;

    const/4 v0, 0x0

    .line 129
    iput-boolean v0, p0, Lcom/android/server/wm/TransitionController;->mFullReadyTracking:Z

    .line 131
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/TransitionController;->mLegacyListeners:Ljava/util/ArrayList;

    .line 138
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/TransitionController;->mStateValidators:Ljava/util/ArrayList;

    .line 145
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/TransitionController;->mValidateCommitVis:Ljava/util/ArrayList;

    .line 153
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/TransitionController;->mValidateActivityCompat:Ljava/util/ArrayList;

    .line 160
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/TransitionController;->mValidateDisplayVis:Ljava/util/ArrayList;

    .line 166
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    .line 167
    iput v0, p0, Lcom/android/server/wm/TransitionController;->mTrackCount:I

    .line 176
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/TransitionController;->mAnimatingExitWindows:Ljava/util/ArrayList;

    .line 178
    new-instance v1, Lcom/android/server/wm/TransitionController$Lock;

    invoke-direct {v1, p0}, Lcom/android/server/wm/TransitionController$Lock;-><init>(Lcom/android/server/wm/TransitionController;)V

    iput-object v1, p0, Lcom/android/server/wm/TransitionController;->mRunningLock:Lcom/android/server/wm/TransitionController$Lock;

    .line 204
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/TransitionController;->mQueuedTransitions:Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 210
    iput-object v1, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    .line 215
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/TransitionController;->mWaitingTransitions:Ljava/util/ArrayList;

    .line 223
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/TransitionController;->mLatestOnTopTasksReported:Landroid/util/SparseArray;

    .line 231
    iput-boolean v0, p0, Lcom/android/server/wm/TransitionController;->mBuildingTransitionLayers:Z

    .line 237
    iput-boolean v0, p0, Lcom/android/server/wm/TransitionController;->mBuildingFinishLayers:Z

    .line 242
    iput-boolean v0, p0, Lcom/android/server/wm/TransitionController;->mNavigationBarAttachedToApp:Z

    .line 244
    iput-boolean v0, p0, Lcom/android/server/wm/TransitionController;->mAnimatingState:Z

    .line 246
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/TransitionController;->mLoggerHandler:Landroid/os/Handler;

    .line 253
    iput-boolean v0, p0, Lcom/android/server/wm/TransitionController;->mIsWaitingForDisplayEnabled:Z

    .line 256
    iput-object p1, p0, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 257
    new-instance v0, Lcom/android/server/wm/TransitionController$RemotePlayer;

    invoke-direct {v0, p1}, Lcom/android/server/wm/TransitionController$RemotePlayer;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    iput-object v0, p0, Lcom/android/server/wm/TransitionController;->mRemotePlayer:Lcom/android/server/wm/TransitionController$RemotePlayer;

    return-void
.end method

.method public static getCanBeIndependent(Lcom/android/server/wm/Transition;Lcom/android/server/wm/Transition;)Z
    .registers 8

    const/4 v0, 0x1

    if-eqz p1, :cond_c

    .line 1291
    iget v1, p1, Lcom/android/server/wm/Transition;->mParallelCollectType:I

    if-ne v1, v0, :cond_c

    iget v1, p0, Lcom/android/server/wm/Transition;->mParallelCollectType:I

    if-ne v1, v0, :cond_c

    return v0

    :cond_c
    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz p1, :cond_5b

    .line 1296
    iget v3, p1, Lcom/android/server/wm/Transition;->mParallelCollectType:I

    if-ne v3, v1, :cond_5b

    .line 1297
    iget v3, p0, Lcom/android/server/wm/Transition;->mParallelCollectType:I

    if-ne v3, v1, :cond_19

    return v2

    :cond_19
    move v1, v2

    .line 1301
    :goto_1a
    iget-object v3, p0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-ge v1, v3, :cond_5a

    .line 1302
    iget-object v3, p0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-virtual {v3, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    .line 1303
    iget-object v4, v3, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p1, v4}, Lcom/android/server/wm/Transition;->isOnDisplay(Lcom/android/server/wm/DisplayContent;)Z

    move-result v4

    if-nez v4, :cond_3b

    .line 1304
    sget-object v4, Landroid/window/DesktopExperienceFlags;->ENABLE_PARALLEL_CD_TRANSITIONS_DURING_RECENTS:Landroid/window/DesktopExperienceFlags;

    .line 1305
    invoke-virtual {v4}, Landroid/window/DesktopExperienceFlags;->isTrue()Z

    move-result v4

    if-eqz v4, :cond_3b

    goto :goto_57

    .line 1309
    :cond_3b
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    if-nez v4, :cond_4e

    .line 1310
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asWindowState()Lcom/android/server/wm/WindowState;

    move-result-object v5

    if-nez v5, :cond_4e

    .line 1311
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asWindowToken()Lcom/android/server/wm/WindowToken;

    move-result-object v3

    if-nez v3, :cond_4e

    return v2

    :cond_4e
    if-eqz v4, :cond_57

    .line 1316
    invoke-virtual {v4}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHomeOrRecents()Z

    move-result v3

    if-eqz v3, :cond_57

    return v2

    :cond_57
    :goto_57
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    :cond_5a
    return v0

    .line 1322
    :cond_5b
    iget p0, p0, Lcom/android/server/wm/Transition;->mParallelCollectType:I

    if-ne p0, v1, :cond_60

    return v0

    :cond_60
    return v2
.end method

.method public static getIsIndependent(Lcom/android/server/wm/Transition;Lcom/android/server/wm/Transition;)Z
    .registers 9

    .line 1337
    iget v0, p0, Lcom/android/server/wm/Transition;->mParallelCollectType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    iget v2, p1, Lcom/android/server/wm/Transition;->mParallelCollectType:I

    if-ne v2, v1, :cond_a

    return v1

    :cond_a
    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ne v0, v2, :cond_19

    .line 1348
    invoke-virtual {p0}, Lcom/android/server/wm/Transition;->hasTransientLaunch()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1349
    iget v0, p1, Lcom/android/server/wm/Transition;->mParallelCollectType:I

    if-ne v0, v2, :cond_26

    return v3

    .line 1355
    :cond_19
    iget v0, p1, Lcom/android/server/wm/Transition;->mParallelCollectType:I

    if-ne v0, v2, :cond_6a

    .line 1356
    invoke-virtual {p1}, Lcom/android/server/wm/Transition;->hasTransientLaunch()Z

    move-result v0

    if-eqz v0, :cond_6a

    move-object v6, p1

    move-object p1, p0

    move-object p0, v6

    :cond_26
    move v0, v3

    .line 1364
    :goto_27
    iget-object v2, p1, Lcom/android/server/wm/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_69

    .line 1365
    iget-object v2, p1, Lcom/android/server/wm/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Transition$ChangeInfo;

    iget-object v2, v2, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 1366
    iget-object v4, v2, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0, v4}, Lcom/android/server/wm/Transition;->isOnDisplay(Lcom/android/server/wm/DisplayContent;)Z

    move-result v4

    if-nez v4, :cond_4a

    .line 1367
    sget-object v4, Landroid/window/DesktopExperienceFlags;->ENABLE_PARALLEL_CD_TRANSITIONS_DURING_RECENTS:Landroid/window/DesktopExperienceFlags;

    .line 1368
    invoke-virtual {v4}, Landroid/window/DesktopExperienceFlags;->isTrue()Z

    move-result v4

    if-eqz v4, :cond_4a

    goto :goto_66

    .line 1372
    :cond_4a
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    if-nez v4, :cond_5d

    .line 1373
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asWindowState()Lcom/android/server/wm/WindowState;

    move-result-object v5

    if-nez v5, :cond_5d

    .line 1374
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asWindowToken()Lcom/android/server/wm/WindowToken;

    move-result-object v2

    if-nez v2, :cond_5d

    return v3

    :cond_5d
    if-eqz v4, :cond_66

    .line 1379
    invoke-virtual {p0, v4}, Lcom/android/server/wm/Transition;->isTransientLaunch(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v2

    if-eqz v2, :cond_66

    return v3

    :cond_66
    :goto_66
    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    :cond_69
    return v1

    :cond_6a
    return v3
.end method

.method public static shouldDispatchLegacyListener(Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;I)Z
    .registers 3

    .line 1531
    iget p0, p0, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;->mTargetDisplayId:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_a

    if-ne p0, p1, :cond_8

    goto :goto_a

    :cond_8
    const/4 p0, 0x0

    return p0

    :cond_a
    :goto_a
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public assignTrack(Lcom/android/server/wm/Transition;Landroid/window/TransitionInfo;)V
    .registers 12

    const/4 v0, -0x1

    const/4 v1, 0x0

    move v2, v1

    .line 1390
    :goto_3
    iget-object v3, p0, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v2, v3, :cond_42

    .line 1392
    iget-object v3, p0, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p1, :cond_15

    goto :goto_3f

    .line 1393
    :cond_15
    iget-object v3, p0, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/Transition;

    invoke-static {v3, p1}, Lcom/android/server/wm/TransitionController;->getIsIndependent(Lcom/android/server/wm/Transition;Lcom/android/server/wm/Transition;)Z

    move-result v3

    if-eqz v3, :cond_24

    goto :goto_3f

    :cond_24
    if-gez v0, :cond_31

    .line 1395
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/Transition;

    iget v0, v0, Lcom/android/server/wm/Transition;->mAnimationTrack:I

    goto :goto_3f

    .line 1396
    :cond_31
    iget-object v3, p0, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/Transition;

    iget v3, v3, Lcom/android/server/wm/Transition;->mAnimationTrack:I

    if-eq v0, v3, :cond_3f

    move v2, v4

    goto :goto_43

    :cond_3f
    :goto_3f
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_42
    move v2, v1

    :goto_43
    if-eqz v2, :cond_46

    move v0, v1

    :cond_46
    if-gez v0, :cond_6f

    .line 1408
    iget v0, p0, Lcom/android/server/wm/TransitionController;->mTrackCount:I

    if-lez v0, :cond_6f

    .line 1410
    sget-object v3, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    aget-boolean v3, v3, v1

    if-eqz v3, :cond_6f

    invoke-virtual {p1}, Lcom/android/server/wm/Transition;->getSyncId()I

    move-result v3

    int-to-long v5, v3

    int-to-long v7, v0

    sget-object v3, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    filled-new-array {v5, v6}, [Ljava/lang/Object;

    move-result-object v5

    const-wide v6, -0x627f3fcbd5f1cfaeL    # -1.420325404709624E-166

    const/4 v8, 0x5

    invoke-static {v3, v6, v7, v8, v5}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 1414
    :cond_6f
    iput v0, p1, Lcom/android/server/wm/Transition;->mAnimationTrack:I

    .line 1415
    invoke-virtual {p2, v0}, Landroid/window/TransitionInfo;->setTrack(I)V

    .line 1416
    iget v3, p0, Lcom/android/server/wm/TransitionController;->mTrackCount:I

    add-int/2addr v0, v4

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/TransitionController;->mTrackCount:I

    if-eqz v2, :cond_a8

    if-le v0, v4, :cond_a8

    .line 1419
    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getFlags()I

    move-result p0

    const/high16 v0, 0x200000

    or-int/2addr p0, v0

    invoke-virtual {p2, p0}, Landroid/window/TransitionInfo;->setFlags(I)V

    .line 1420
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    aget-boolean p0, p0, v1

    if-eqz p0, :cond_a8

    invoke-virtual {p1}, Lcom/android/server/wm/Transition;->getSyncId()I

    move-result p0

    int-to-long p0, p0

    sget-object p2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-wide v0, -0x6633d5a00ae6cf2cL

    invoke-static {p2, v0, v1, v4, p0}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_a8
    return-void
.end method

.method public canApplyDim(Lcom/android/server/wm/Task;)Z
    .registers 5

    const/4 v0, 0x1

    if-nez p1, :cond_4

    return v0

    .line 677
    :cond_4
    iget-object v1, p0, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v0

    :goto_b
    if-ltz v1, :cond_20

    .line 678
    iget-object v2, p0, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Transition;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/Transition;->canApplyDim(Lcom/android/server/wm/Task;)Z

    move-result v2

    if-nez v2, :cond_1d

    const/4 p0, 0x0

    return p0

    :cond_1d
    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    :cond_20
    return v0
.end method

.method public canAssignLayers(Lcom/android/server/wm/WindowContainer;)Z
    .registers 5

    .line 736
    iget-boolean v0, p0, Lcom/android/server/wm/TransitionController;->mBuildingTransitionLayers:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_e

    .line 737
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asWindowState()Lcom/android/server/wm/WindowState;

    move-result-object p0

    if-nez p0, :cond_d

    return v2

    :cond_d
    return v1

    .line 740
    :cond_e
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asWindowState()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-nez v0, :cond_2e

    invoke-virtual {p0}, Lcom/android/server/wm/TransitionController;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_2d

    .line 742
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-nez v0, :cond_26

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asDisplayArea()Lcom/android/server/wm/DisplayArea;

    move-result-object p1

    if-eqz p1, :cond_2e

    :cond_26
    invoke-virtual {p0}, Lcom/android/server/wm/TransitionController;->isCollecting()Z

    move-result p0

    if-nez p0, :cond_2d

    goto :goto_2e

    :cond_2d
    return v1

    :cond_2e
    :goto_2e
    return v2
.end method

.method public final canStartCollectingNow(Lcom/android/server/wm/Transition;)Z
    .registers 6

    .line 1196
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    const/4 v1, 0x1

    if-nez v0, :cond_6

    return v1

    .line 1198
    :cond_6
    invoke-virtual {v0}, Lcom/android/server/wm/Transition;->isPopulated()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_e

    return v2

    .line 1200
    :cond_e
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    invoke-static {v0, p1}, Lcom/android/server/wm/TransitionController;->getCanBeIndependent(Lcom/android/server/wm/Transition;Lcom/android/server/wm/Transition;)Z

    move-result v0

    if-nez v0, :cond_17

    return v2

    :cond_17
    move v0, v2

    .line 1201
    :goto_18
    iget-object v3, p0, Lcom/android/server/wm/TransitionController;->mWaitingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_32

    .line 1202
    iget-object v3, p0, Lcom/android/server/wm/TransitionController;->mWaitingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/Transition;

    invoke-static {v3, p1}, Lcom/android/server/wm/TransitionController;->getCanBeIndependent(Lcom/android/server/wm/Transition;Lcom/android/server/wm/Transition;)Z

    move-result v3

    if-nez v3, :cond_2f

    return v2

    :cond_2f
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    :cond_32
    return v1
.end method

.method public collect(Lcom/android/server/wm/WindowContainer;)V
    .registers 2

    .line 956
    iget-object p0, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    if-nez p0, :cond_5

    return-void

    .line 957
    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Transition;->collect(Lcom/android/server/wm/WindowContainer;)V

    return-void
.end method

.method public collectExistenceChange(Lcom/android/server/wm/WindowContainer;)V
    .registers 2

    .line 962
    iget-object p0, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    if-nez p0, :cond_5

    return-void

    .line 963
    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Transition;->collectExistenceChange(Lcom/android/server/wm/WindowContainer;)V

    return-void
.end method

.method public collectForDisplayAreaChange(Lcom/android/server/wm/DisplayArea;)V
    .registers 6

    .line 983
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    if-eqz v0, :cond_30

    .line 984
    iget-object v1, v0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_30

    .line 985
    :cond_d
    invoke-virtual {v0, p1}, Lcom/android/server/wm/Transition;->collectVisibleChange(Lcom/android/server/wm/WindowContainer;)V

    .line 987
    new-instance v1, Lcom/android/server/wm/TransitionController$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/server/wm/TransitionController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/Transition;)V

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Lcom/android/server/wm/DisplayArea;->forAllLeafTasks(Ljava/util/function/Consumer;Z)V

    .line 993
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    if-eqz v1, :cond_30

    .line 995
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getAsyncRotationController()Lcom/android/server/wm/AsyncRotationController;

    move-result-object v1

    if-nez v1, :cond_27

    move v1, v2

    goto :goto_28

    :cond_27
    const/4 v1, 0x0

    .line 996
    :goto_28
    new-instance v3, Lcom/android/server/wm/TransitionController$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, v1, v0}, Lcom/android/server/wm/TransitionController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/TransitionController;ZLcom/android/server/wm/Transition;)V

    invoke-virtual {p1, v3, v2}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    :cond_30
    :goto_30
    return-void
.end method

.method public collectReparentChange(Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/WindowContainer;)V
    .registers 4

    .line 1022
    invoke-virtual {p0}, Lcom/android/server/wm/TransitionController;->isCollecting()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 1023
    :cond_7
    iget-object p0, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/Transition;->collectReparentChange(Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/WindowContainer;)V

    return-void
.end method

.method public collectVisibleChange(Lcom/android/server/wm/WindowContainer;)V
    .registers 3

    .line 1011
    invoke-virtual {p0}, Lcom/android/server/wm/TransitionController;->isCollecting()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 1012
    :cond_7
    iget-object p0, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/Transition;->collectVisibleChange(Lcom/android/server/wm/WindowContainer;)V

    return-void
.end method

.method public continueTransitionReady()V
    .registers 2

    .line 1075
    invoke-virtual {p0}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 1076
    :cond_7
    iget-object p0, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    if-eqz p0, :cond_f

    .line 1079
    invoke-virtual {p0}, Lcom/android/server/wm/Transition;->continueTransitionReady()V

    return-void

    .line 1077
    :cond_f
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "No collecting transition to defer readiness for."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public createAndStartCollecting(I)Lcom/android/server/wm/Transition;
    .registers 9

    .line 1673
    invoke-virtual {p0}, Lcom/android/server/wm/TransitionController;->isFlushing()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    .line 1679
    :cond_8
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mQueuedTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    return-object v1

    .line 1683
    :cond_11
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    invoke-virtual {v0}, Lcom/android/server/wm/BLASTSyncEngine;->hasActiveSync()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_62

    .line 1684
    invoke-virtual {p0}, Lcom/android/server/wm/TransitionController;->isCollecting()Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 1686
    invoke-virtual {p0, v1}, Lcom/android/server/wm/TransitionController;->canStartCollectingNow(Lcom/android/server/wm/Transition;)Z

    move-result v0

    if-eqz v0, :cond_61

    .line 1688
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_MIN_enabled:[Z

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_46

    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    invoke-virtual {v0}, Lcom/android/server/wm/Transition;->getSyncId()I

    move-result v0

    int-to-long v3, v0

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS_MIN:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-wide v4, -0x165e91cdd667c4f0L    # -6.67107460160601E200

    const/4 v6, 0x1

    invoke-static {v0, v4, v5, v6, v3}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 1690
    :cond_46
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mWaitingTransitions:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1691
    iput-object v1, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    .line 1692
    new-instance v0, Lcom/android/server/wm/Transition;

    iget-object v1, p0, Lcom/android/server/wm/TransitionController;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    invoke-direct {v0, p1, v2, p0, v1}, Lcom/android/server/wm/Transition;-><init>(IILcom/android/server/wm/TransitionController;Lcom/android/server/wm/BLASTSyncEngine;)V

    .line 1693
    invoke-virtual {p0, v0}, Lcom/android/server/wm/TransitionController;->moveToCollecting(Lcom/android/server/wm/Transition;)V

    return-object v0

    .line 1697
    :cond_5a
    const-string p0, "TransitionController"

    const-string p1, "Ongoing Sync outside of transition."

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_61
    return-object v1

    .line 1701
    :cond_62
    new-instance v0, Lcom/android/server/wm/Transition;

    iget-object v1, p0, Lcom/android/server/wm/TransitionController;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    invoke-direct {v0, p1, v2, p0, v1}, Lcom/android/server/wm/Transition;-><init>(IILcom/android/server/wm/TransitionController;Lcom/android/server/wm/BLASTSyncEngine;)V

    .line 1702
    invoke-virtual {p0, v0}, Lcom/android/server/wm/TransitionController;->moveToCollecting(Lcom/android/server/wm/Transition;)V

    return-object v0
.end method

.method public createTransition(I)Lcom/android/server/wm/Transition;
    .registers 3

    const/4 v0, 0x0

    .line 322
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/TransitionController;->createTransition(II)Lcom/android/server/wm/Transition;

    move-result-object p0

    return-object p0
.end method

.method public createTransition(II)Lcom/android/server/wm/Transition;
    .registers 7

    .line 331
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mTransitionPlayers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_38

    .line 334
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    if-nez v0, :cond_30

    .line 339
    new-instance v0, Lcom/android/server/wm/Transition;

    iget-object v1, p0, Lcom/android/server/wm/TransitionController;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    invoke-direct {v0, p1, p2, p0, v1}, Lcom/android/server/wm/Transition;-><init>(IILcom/android/server/wm/TransitionController;Lcom/android/server/wm/BLASTSyncEngine;)V

    .line 340
    sget-object p1, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    const/4 p2, 0x0

    aget-boolean p1, p1, p2

    if-eqz p1, :cond_2c

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v2, -0x33c205f93dbc2d2L

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, v2, v3, p2, p1}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 342
    :cond_2c
    invoke-virtual {p0, v0}, Lcom/android/server/wm/TransitionController;->moveToCollecting(Lcom/android/server/wm/Transition;)V

    return-object v0

    .line 335
    :cond_30
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Trying to directly start transition collection while  collection is already ongoing. Use {@link #startCollectOrQueue} if possible."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 332
    :cond_38
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Somehow creating a transition while flushing"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public deferTransitionReady()V
    .registers 2

    .line 1065
    invoke-virtual {p0}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 1066
    :cond_7
    iget-object p0, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    if-eqz p0, :cond_f

    .line 1069
    invoke-virtual {p0}, Lcom/android/server/wm/Transition;->deferTransitionReady()V

    return-void

    .line 1067
    :cond_f
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "No collecting transition to defer readiness for."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public dispatchLegacyAppTransitionCancelled(Ljava/util/ArrayList;)V
    .registers 8

    const/4 v0, 0x0

    move v1, v0

    .line 1570
    :goto_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_30

    .line 1571
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/DisplayContent;

    iget v2, v2, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    move v3, v0

    .line 1572
    :goto_11
    iget-object v4, p0, Lcom/android/server/wm/TransitionController;->mLegacyListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_2d

    .line 1573
    iget-object v4, p0, Lcom/android/server/wm/TransitionController;->mLegacyListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;

    .line 1574
    invoke-static {v4, v2}, Lcom/android/server/wm/TransitionController;->shouldDispatchLegacyListener(Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;I)Z

    move-result v5

    if-eqz v5, :cond_2a

    .line 1575
    invoke-virtual {v4, v0}, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;->onAppTransitionCancelledLocked(Z)V

    :cond_2a
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    :cond_2d
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_30
    return-void
.end method

.method public dispatchLegacyAppTransitionFinished(Lcom/android/server/wm/ActivityRecord;)V
    .registers 5

    const/4 v0, 0x0

    .line 1561
    :goto_1
    iget-object v1, p0, Lcom/android/server/wm/TransitionController;->mLegacyListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_23

    .line 1562
    iget-object v1, p0, Lcom/android/server/wm/TransitionController;->mLegacyListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;

    .line 1563
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/wm/TransitionController;->shouldDispatchLegacyListener(Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;I)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 1564
    iget-object v2, p1, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;->onAppTransitionFinishedLocked(Landroid/os/IBinder;)V

    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_23
    return-void
.end method

.method public dispatchLegacyAppTransitionPending(I)V
    .registers 5

    const/4 v0, 0x0

    .line 1536
    :goto_1
    iget-object v1, p0, Lcom/android/server/wm/TransitionController;->mLegacyListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1d

    .line 1537
    iget-object v1, p0, Lcom/android/server/wm/TransitionController;->mLegacyListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;

    .line 1538
    invoke-static {v1, p1}, Lcom/android/server/wm/TransitionController;->shouldDispatchLegacyListener(Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;I)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 1539
    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;->onAppTransitionPendingLocked()V

    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1d
    return-void
.end method

.method public dispatchLegacyAppTransitionStarting([Lcom/android/server/wm/DisplayContent;J)V
    .registers 14

    .line 1546
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    move v3, v2

    .line 1547
    :goto_6
    iget-object v4, p0, Lcom/android/server/wm/TransitionController;->mLegacyListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_31

    .line 1548
    iget-object v4, p0, Lcom/android/server/wm/TransitionController;->mLegacyListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;

    move v5, v2

    .line 1549
    :goto_17
    array-length v6, p1

    if-ge v5, v6, :cond_2e

    .line 1550
    aget-object v6, p1, v5

    iget v6, v6, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 1551
    invoke-static {v4, v6}, Lcom/android/server/wm/TransitionController;->shouldDispatchLegacyListener(Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;I)Z

    move-result v6

    if-eqz v6, :cond_2b

    add-long v6, v0, p2

    const-wide/16 v8, 0x78

    .line 1552
    invoke-virtual {v4, v6, v7, v8, v9}, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;->onAppTransitionStartingLocked(JJ)I

    :cond_2b
    add-int/lit8 v5, v5, 0x1

    goto :goto_17

    :cond_2e
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_31
    return-void
.end method

.method public dumpDebugLegacy(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 6

    .line 1582
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 1584
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 p0, 0x2

    goto :goto_23

    .line 1586
    :cond_e
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Lcom/android/server/wm/Transition;->getLegacyIsReady()Z

    move-result v0

    if-nez v0, :cond_20

    :cond_18
    iget-object p0, p0, Lcom/android/server/wm/TransitionController;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    .line 1587
    invoke-virtual {p0}, Lcom/android/server/wm/BLASTSyncEngine;->hasPendingSyncSets()Z

    move-result p0

    if-eqz p0, :cond_22

    :cond_20
    const/4 p0, 0x1

    goto :goto_23

    :cond_22
    const/4 p0, 0x0

    :goto_23
    const-wide v0, 0x10e00000001L

    .line 1593
    invoke-virtual {p1, v0, v1, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1594
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public finishTransition(Lcom/android/server/wm/ActionChain;)V
    .registers 8

    .line 1084
    invoke-virtual {p1}, Lcom/android/server/wm/ActionChain;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_d2

    .line 1088
    invoke-virtual {p1}, Lcom/android/server/wm/ActionChain;->getTransition()Lcom/android/server/wm/Transition;

    move-result-object v0

    .line 1090
    iget-object v1, p0, Lcom/android/server/wm/TransitionController;->mTransitionMetricsReporter:Lcom/android/server/wm/TransitionController$TransitionMetricsReporter;

    invoke-virtual {v0}, Lcom/android/server/wm/Transition;->getToken()Landroid/os/IBinder;

    move-result-object v2

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/wm/TransitionController$TransitionMetricsReporter;->reportAnimationStart(Landroid/os/IBinder;J)V

    .line 1092
    iget-object v1, p0, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->endPowerMode(I)V

    .line 1093
    iget-object v1, p0, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3a

    .line 1094
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Trying to finish a non-playing transition "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TransitionController"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1097
    :cond_3a
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    const/4 v2, 0x0

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_53

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v4, -0x53aef9017752c0a9L    # -3.188656315350661E-95

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v3, v4, v5, v2, v1}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 1098
    :cond_53
    iget-object v1, p0, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1099
    invoke-virtual {p0}, Lcom/android/server/wm/TransitionController;->inTransition()Z

    move-result v1

    if-nez v1, :cond_60

    .line 1101
    iput v2, p0, Lcom/android/server/wm/TransitionController;->mTrackCount:I

    .line 1103
    :cond_60
    invoke-virtual {p0, v0, v2}, Lcom/android/server/wm/TransitionController;->updateRunningRemoteAnimation(Lcom/android/server/wm/Transition;Z)V

    .line 1104
    invoke-virtual {v0, p1}, Lcom/android/server/wm/Transition;->finishTransition(Lcom/android/server/wm/ActionChain;)V

    .line 1105
    iget-object p1, p0, Lcom/android/server/wm/TransitionController;->mAnimatingExitWindows:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_6e
    if-ltz p1, :cond_99

    .line 1106
    iget-object v1, p0, Lcom/android/server/wm/TransitionController;->mAnimatingExitWindows:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 1107
    iget-boolean v2, v1, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-eqz v2, :cond_89

    iget-boolean v2, v1, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v2, :cond_89

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->inTransition()Z

    move-result v2

    if-nez v2, :cond_89

    .line 1108
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->onExitAnimationDone()V

    .line 1110
    :cond_89
    iget-boolean v2, v1, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-eqz v2, :cond_91

    iget-boolean v1, v1, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-nez v1, :cond_96

    .line 1111
    :cond_91
    iget-object v1, p0, Lcom/android/server/wm/TransitionController;->mAnimatingExitWindows:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_96
    add-int/lit8 p1, p1, -0x1

    goto :goto_6e

    .line 1114
    :cond_99
    iget-object p1, p0, Lcom/android/server/wm/TransitionController;->mRunningLock:Lcom/android/server/wm/TransitionController$Lock;

    invoke-virtual {p1}, Lcom/android/server/wm/TransitionController$Lock;->doNotifyLocked()V

    .line 1117
    invoke-virtual {p0}, Lcom/android/server/wm/TransitionController;->inTransition()Z

    move-result p1

    if-nez p1, :cond_ae

    .line 1118
    invoke-virtual {p0}, Lcom/android/server/wm/TransitionController;->validateStates()V

    .line 1119
    iget-object p1, p0, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->onAnimationFinished()V

    .line 1124
    :cond_ae
    invoke-virtual {v0}, Lcom/android/server/wm/Transition;->ensureParticipantSurfaceVisibility()V

    .line 1126
    iget-object p1, v0, Lcom/android/server/wm/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_b9
    if-ltz p1, :cond_d1

    .line 1127
    iget-object v1, p0, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget-object v2, v0, Lcom/android/server/wm/Transition;->mTargets:Ljava/util/ArrayList;

    .line 1128
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Transition$ChangeInfo;

    iget-object v2, v2, Lcom/android/server/wm/Transition$ChangeInfo;->mContainer:Lcom/android/server/wm/WindowContainer;

    .line 1127
    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowAnimator;->addSurfaceVisibilityUpdate(Lcom/android/server/wm/WindowContainer;)V

    add-int/lit8 p1, p1, -0x1

    goto :goto_b9

    :cond_d1
    return-void

    .line 1085
    :cond_d2
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t finish on a non-finishing transition "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1086
    invoke-virtual {p1}, Lcom/android/server/wm/ActionChain;->getTransition()Lcom/android/server/wm/Transition;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public flushRunningTransitions()V
    .registers 6

    .line 286
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/wm/TransitionController;->mTransitionPlayers:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 287
    iget-object v1, p0, Lcom/android/server/wm/TransitionController;->mTransitionPlayers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 289
    iget-object v1, p0, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_14
    if-ltz v1, :cond_24

    .line 290
    iget-object v2, p0, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Transition;

    invoke-virtual {v2}, Lcom/android/server/wm/Transition;->cleanUpOnFailure()V

    add-int/lit8 v1, v1, -0x1

    goto :goto_14

    .line 292
    :cond_24
    iget-object v1, p0, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 295
    iget-object v1, p0, Lcom/android/server/wm/TransitionController;->mWaitingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_31
    if-ltz v1, :cond_41

    .line 296
    iget-object v2, p0, Lcom/android/server/wm/TransitionController;->mWaitingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Transition;

    invoke-virtual {v2}, Lcom/android/server/wm/Transition;->abort()V

    add-int/lit8 v1, v1, -0x1

    goto :goto_31

    .line 298
    :cond_41
    iget-object v1, p0, Lcom/android/server/wm/TransitionController;->mWaitingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 299
    iget-object v1, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    if-eqz v1, :cond_4d

    .line 300
    invoke-virtual {v1}, Lcom/android/server/wm/Transition;->abort()V

    .line 302
    :cond_4d
    iget-object v1, p0, Lcom/android/server/wm/TransitionController;->mRemotePlayer:Lcom/android/server/wm/TransitionController$RemotePlayer;

    invoke-virtual {v1}, Lcom/android/server/wm/TransitionController$RemotePlayer;->clear()V

    .line 303
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/wm/TransitionController;->mQueuedTransitions:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 304
    iget-object v2, p0, Lcom/android/server/wm/TransitionController;->mQueuedTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    const/4 v2, 0x0

    .line 305
    :goto_5f
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_7f

    .line 306
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/TransitionController$QueuedTransition;

    .line 307
    iget-object v4, v3, Lcom/android/server/wm/TransitionController$QueuedTransition;->mTransition:Lcom/android/server/wm/Transition;

    if-eqz v4, :cond_73

    .line 308
    invoke-virtual {v4}, Lcom/android/server/wm/Transition;->abort()V

    goto :goto_7c

    .line 311
    :cond_73
    iget-object v4, p0, Lcom/android/server/wm/TransitionController;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    iget-object v3, v3, Lcom/android/server/wm/TransitionController$QueuedTransition;->mLegacySync:Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

    iget v3, v3, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mSyncId:I

    invoke-virtual {v4, v3}, Lcom/android/server/wm/BLASTSyncEngine;->abort(I)V

    :goto_7c
    add-int/lit8 v2, v2, 0x1

    goto :goto_5f

    .line 314
    :cond_7f
    iget-object v1, p0, Lcom/android/server/wm/TransitionController;->mRunningLock:Lcom/android/server/wm/TransitionController$Lock;

    invoke-virtual {v1}, Lcom/android/server/wm/TransitionController$Lock;->doNotifyLocked()V

    .line 316
    iget-object p0, p0, Lcom/android/server/wm/TransitionController;->mTransitionPlayers:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public getCollectingTransition()Lcom/android/server/wm/Transition;
    .registers 3

    .line 445
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    if-eqz v0, :cond_34

    invoke-virtual {v0}, Lcom/android/server/wm/Transition;->isCollecting()Z

    move-result v0

    if-nez v0, :cond_34

    .line 446
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Collecting Transition (#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    invoke-virtual {v1}, Lcom/android/server/wm/Transition;->getSyncId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") is not collecting. state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    .line 447
    invoke-virtual {v1}, Lcom/android/server/wm/Transition;->getState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 446
    const-string v1, "TransitionController"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    :cond_34
    iget-object p0, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    return-object p0
.end method

.method public getCollectingTransitionId()I
    .registers 2

    .line 457
    iget-object p0, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    if-eqz p0, :cond_9

    .line 460
    invoke-virtual {p0}, Lcom/android/server/wm/Transition;->getSyncId()I

    move-result p0

    return p0

    .line 458
    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "There is no collecting transition"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getCollectingTransitionType()I
    .registers 1

    .line 758
    iget-object p0, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    if-eqz p0, :cond_7

    iget p0, p0, Lcom/android/server/wm/Transition;->mType:I

    return p0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method public getTransientHideTransitionForContainer(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/Transition;
    .registers 5

    .line 616
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_1c

    .line 617
    iget-object v1, p0, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/Transition;

    .line 618
    invoke-virtual {v1, p1}, Lcom/android/server/wm/Transition;->isInTransientHide(Lcom/android/server/wm/WindowContainer;)Z

    move-result v2

    if-eqz v2, :cond_19

    return-object v1

    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_1c
    const/4 p0, 0x0

    return-object p0
.end method

.method public getTransientLaunchTransitionAndTarget(Lcom/android/server/wm/WindowContainer;)Landroid/util/Pair;
    .registers 5

    .line 598
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_21

    .line 599
    iget-object v1, p0, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/Transition;

    .line 600
    invoke-virtual {v1, p1}, Lcom/android/server/wm/Transition;->getTransientLaunchRestoreTarget(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/Task;

    move-result-object v2

    if-eqz v2, :cond_1e

    .line 602
    new-instance p0, Landroid/util/Pair;

    invoke-direct {p0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_1e
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_21
    const/4 p0, 0x0

    return-object p0
.end method

.method public getTransitionPlayer()Landroid/window/ITransitionPlayer;
    .registers 2

    .line 411
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mTransitionPlayers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p0, 0x0

    return-object p0

    .line 412
    :cond_a
    iget-object p0, p0, Lcom/android/server/wm/TransitionController;->mTransitionPlayers:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->getLast()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/TransitionController$TransitionPlayerRecord;

    iget-object p0, p0, Lcom/android/server/wm/TransitionController$TransitionPlayerRecord;->mPlayer:Landroid/window/ITransitionPlayer;

    return-object p0
.end method

.method public getWindowingModeAtStart(Lcom/android/server/wm/WindowContainer;)I
    .registers 2

    .line 747
    iget-object p0, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    if-nez p0, :cond_9

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result p0

    return p0

    .line 748
    :cond_9
    iget-object p0, p0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/Transition$ChangeInfo;

    if-nez p0, :cond_18

    .line 751
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result p0

    return p0

    .line 753
    :cond_18
    iget p0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mWindowingMode:I

    return p0
.end method

.method public hasCollectingRotationChange(Lcom/android/server/wm/WindowContainer;I)Z
    .registers 5

    .line 766
    iget-object p0, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    const/4 v0, 0x0

    if-eqz p0, :cond_1e

    .line 767
    iget-object v1, p0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    goto :goto_1e

    .line 768
    :cond_e
    iget-object p0, p0, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/Transition$ChangeInfo;

    if-eqz p0, :cond_1e

    .line 769
    iget p0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mRotation:I

    if-eq p0, p2, :cond_1e

    const/4 p0, 0x1

    return p0

    :cond_1e
    :goto_1e
    return v0
.end method

.method public hasOrderChanges()Z
    .registers 1

    .line 974
    iget-object p0, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 975
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/wm/Transition;->hasOrderChanges()Z

    move-result p0

    return p0
.end method

.method public hasTransientLaunch(Lcom/android/server/wm/DisplayContent;)Z
    .registers 6

    .line 627
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    const/4 v1, 0x1

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Lcom/android/server/wm/Transition;->hasTransientLaunch()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    .line 628
    invoke-virtual {v0, p1}, Lcom/android/server/wm/Transition;->isOnDisplay(Lcom/android/server/wm/DisplayContent;)Z

    move-result v0

    if-eqz v0, :cond_14

    return v1

    .line 631
    :cond_14
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mWaitingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_1b
    if-ltz v0, :cond_35

    .line 632
    iget-object v2, p0, Lcom/android/server/wm/TransitionController;->mWaitingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Transition;

    .line 633
    invoke-virtual {v2}, Lcom/android/server/wm/Transition;->hasTransientLaunch()Z

    move-result v3

    if-eqz v3, :cond_32

    invoke-virtual {v2, p1}, Lcom/android/server/wm/Transition;->isOnDisplay(Lcom/android/server/wm/DisplayContent;)Z

    move-result v2

    if-eqz v2, :cond_32

    return v1

    :cond_32
    add-int/lit8 v0, v0, -0x1

    goto :goto_1b

    .line 637
    :cond_35
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_3c
    if-ltz v0, :cond_56

    .line 638
    iget-object v2, p0, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Transition;

    .line 639
    invoke-virtual {v2}, Lcom/android/server/wm/Transition;->hasTransientLaunch()Z

    move-result v3

    if-eqz v3, :cond_53

    invoke-virtual {v2, p1}, Lcom/android/server/wm/Transition;->isOnDisplay(Lcom/android/server/wm/DisplayContent;)Z

    move-result v2

    if-eqz v2, :cond_53

    return v1

    :cond_53
    add-int/lit8 v0, v0, -0x1

    goto :goto_3c

    :cond_56
    const/4 p0, 0x0

    return p0
.end method

.method public inCollectingTransition(Lcom/android/server/wm/WindowContainer;)Z
    .registers 6

    .line 481
    invoke-virtual {p0}, Lcom/android/server/wm/TransitionController;->isCollecting()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 482
    :cond_8
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/Transition;->isInTransition(Lcom/android/server/wm/WindowContainer;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_12

    return v2

    :cond_12
    move v0, v1

    .line 483
    :goto_13
    iget-object v3, p0, Lcom/android/server/wm/TransitionController;->mWaitingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2d

    .line 484
    iget-object v3, p0, Lcom/android/server/wm/TransitionController;->mWaitingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/Transition;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/Transition;->isInTransition(Lcom/android/server/wm/WindowContainer;)Z

    move-result v3

    if-eqz v3, :cond_2a

    return v2

    :cond_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_2d
    return v1
.end method

.method public inFinishingTransition(Lcom/android/server/wm/WindowContainer;)Z
    .registers 2

    .line 532
    iget-object p0, p0, Lcom/android/server/wm/TransitionController;->mFinishingTransition:Lcom/android/server/wm/Transition;

    if-eqz p0, :cond_c

    invoke-virtual {p0, p1}, Lcom/android/server/wm/Transition;->isInTransition(Lcom/android/server/wm/WindowContainer;)Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public inPlayingTransition(Lcom/android/server/wm/WindowContainer;)Z
    .registers 5

    .line 501
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_8
    if-ltz v0, :cond_1c

    .line 502
    iget-object v2, p0, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Transition;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/Transition;->isInTransition(Lcom/android/server/wm/WindowContainer;)Z

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

.method public inTransition()Z
    .registers 2

    .line 538
    invoke-virtual {p0}, Lcom/android/server/wm/TransitionController;->isCollecting()Z

    move-result v0

    if-nez v0, :cond_17

    invoke-virtual {p0}, Lcom/android/server/wm/TransitionController;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_17

    iget-object p0, p0, Lcom/android/server/wm/TransitionController;->mQueuedTransitions:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_15

    goto :goto_17

    :cond_15
    const/4 p0, 0x0

    return p0

    :cond_17
    :goto_17
    const/4 p0, 0x1

    return p0
.end method

.method public inTransition(I)Z
    .registers 5

    .line 548
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/android/server/wm/Transition;->getSyncId()I

    move-result v0

    if-ne v0, p1, :cond_c

    return v1

    .line 551
    :cond_c
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_13
    if-ltz v0, :cond_27

    .line 552
    iget-object v2, p0, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Transition;

    invoke-virtual {v2}, Lcom/android/server/wm/Transition;->getSyncId()I

    move-result v2

    if-ne v2, p1, :cond_24

    return v1

    :cond_24
    add-int/lit8 v0, v0, -0x1

    goto :goto_13

    :cond_27
    const/4 p0, 0x0

    return p0
.end method

.method public inTransition(Lcom/android/server/wm/WindowContainer;)Z
    .registers 3

    .line 543
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TransitionController;->inCollectingTransition(Lcom/android/server/wm/WindowContainer;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0, p1}, Lcom/android/server/wm/TransitionController;->inPlayingTransition(Lcom/android/server/wm/WindowContainer;)Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    return p0

    :cond_f
    :goto_f
    const/4 p0, 0x1

    return p0
.end method

.method public isAnimating()Z
    .registers 1

    .line 1427
    iget-boolean p0, p0, Lcom/android/server/wm/TransitionController;->mAnimatingState:Z

    return p0
.end method

.method public isCollecting()Z
    .registers 1

    .line 437
    iget-object p0, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public isCollecting(Lcom/android/server/wm/WindowContainer;)Z
    .registers 6

    .line 468
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 469
    :cond_6
    iget-object v0, v0, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_10

    return v2

    :cond_10
    move v0, v1

    .line 470
    :goto_11
    iget-object v3, p0, Lcom/android/server/wm/TransitionController;->mWaitingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2d

    .line 471
    iget-object v3, p0, Lcom/android/server/wm/TransitionController;->mWaitingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/Transition;

    iget-object v3, v3, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-virtual {v3, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    return v2

    :cond_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_2d
    return v1
.end method

.method public isCollectingTransitionOnDisplay(Lcom/android/server/wm/DisplayContent;)Z
    .registers 2

    .line 561
    iget-object p0, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    if-eqz p0, :cond_c

    invoke-virtual {p0, p1}, Lcom/android/server/wm/Transition;->isOnDisplay(Lcom/android/server/wm/DisplayContent;)Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public final isFlushing()Z
    .registers 1

    .line 281
    iget-object p0, p0, Lcom/android/server/wm/TransitionController;->mTransitionPlayers:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public isInAodAppearTransition()Z
    .registers 4

    .line 579
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/android/server/wm/Transition;->isInAodAppearTransition()Z

    move-result v0

    if-eqz v0, :cond_c

    return v1

    .line 582
    :cond_c
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mWaitingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_13
    if-ltz v0, :cond_27

    .line 583
    iget-object v2, p0, Lcom/android/server/wm/TransitionController;->mWaitingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Transition;

    invoke-virtual {v2}, Lcom/android/server/wm/Transition;->isInAodAppearTransition()Z

    move-result v2

    if-eqz v2, :cond_24

    return v1

    :cond_24
    add-int/lit8 v0, v0, -0x1

    goto :goto_13

    .line 585
    :cond_27
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_2e
    if-ltz v0, :cond_42

    .line 586
    iget-object v2, p0, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Transition;

    invoke-virtual {v2}, Lcom/android/server/wm/Transition;->isInAodAppearTransition()Z

    move-result v2

    if-eqz v2, :cond_3f

    return v1

    :cond_3f
    add-int/lit8 v0, v0, -0x1

    goto :goto_2e

    :cond_42
    const/4 p0, 0x0

    return p0
.end method

.method public isParticipantOfPlayingTransition(Lcom/android/server/wm/WindowContainer;)Z
    .registers 5

    .line 522
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_8
    if-ltz v0, :cond_1e

    .line 523
    iget-object v2, p0, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Transition;

    iget-object v2, v2, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    return v1

    :cond_1b
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_1e
    const/4 p0, 0x0

    return p0
.end method

.method public isPlaying()Z
    .registers 1

    .line 494
    iget-object p0, p0, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isPlayingTarget(Lcom/android/server/wm/WindowContainer;)Z
    .registers 5

    .line 509
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_8
    if-ltz v0, :cond_1e

    .line 510
    iget-object v2, p0, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Transition;

    iget-object v2, v2, Lcom/android/server/wm/Transition;->mTargets:Ljava/util/ArrayList;

    invoke-static {p1, v2}, Lcom/android/server/wm/Transition;->containsChangeFor(Lcom/android/server/wm/WindowContainer;Ljava/util/ArrayList;)Z

    move-result v2

    if-eqz v2, :cond_1b

    return v1

    :cond_1b
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_1e
    const/4 p0, 0x0

    return p0
.end method

.method public isShellTransitionsEnabled()Z
    .registers 1

    .line 416
    iget-object p0, p0, Lcom/android/server/wm/TransitionController;->mTransitionPlayers:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_a

    const/4 p0, 0x0

    return p0

    :cond_a
    const/4 p0, 0x1

    return p0
.end method

.method public isTransientCollect(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 2

    .line 708
    iget-object p0, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    if-eqz p0, :cond_c

    invoke-virtual {p0, p1}, Lcom/android/server/wm/Transition;->isTransientLaunch(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public isTransientHide(Lcom/android/server/wm/Task;)Z
    .registers 5

    .line 647
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    invoke-virtual {v0, p1}, Lcom/android/server/wm/Transition;->isInTransientHide(Lcom/android/server/wm/WindowContainer;)Z

    move-result v0

    if-eqz v0, :cond_c

    return v1

    .line 650
    :cond_c
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mWaitingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_13
    if-ltz v0, :cond_27

    .line 651
    iget-object v2, p0, Lcom/android/server/wm/TransitionController;->mWaitingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Transition;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/Transition;->isInTransientHide(Lcom/android/server/wm/WindowContainer;)Z

    move-result v2

    if-eqz v2, :cond_24

    return v1

    :cond_24
    add-int/lit8 v0, v0, -0x1

    goto :goto_13

    .line 653
    :cond_27
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_2e
    if-ltz v0, :cond_42

    .line 654
    iget-object v2, p0, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Transition;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/Transition;->isInTransientHide(Lcom/android/server/wm/WindowContainer;)Z

    move-result v2

    if-eqz v2, :cond_3f

    return v1

    :cond_3f
    add-int/lit8 v0, v0, -0x1

    goto :goto_2e

    :cond_42
    const/4 p0, 0x0

    return p0
.end method

.method public isTransientLaunch(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 5

    .line 716
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TransitionController;->isTransientCollect(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    .line 719
    :cond_8
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mWaitingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_f
    if-ltz v0, :cond_23

    .line 720
    iget-object v2, p0, Lcom/android/server/wm/TransitionController;->mWaitingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Transition;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/Transition;->isTransientLaunch(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v2

    if-eqz v2, :cond_20

    return v1

    :cond_20
    add-int/lit8 v0, v0, -0x1

    goto :goto_f

    .line 722
    :cond_23
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_2a
    if-ltz v0, :cond_3e

    .line 723
    iget-object v2, p0, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Transition;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/Transition;->isTransientLaunch(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v2

    if-eqz v2, :cond_3b

    return v1

    :cond_3b
    add-int/lit8 v0, v0, -0x1

    goto :goto_2a

    :cond_3e
    const/4 p0, 0x0

    return p0
.end method

.method public isTransientVisible(Lcom/android/server/wm/Task;)Z
    .registers 5

    .line 660
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    invoke-virtual {v0, p1}, Lcom/android/server/wm/Transition;->isTransientVisible(Lcom/android/server/wm/Task;)Z

    move-result v0

    if-eqz v0, :cond_c

    return v1

    .line 663
    :cond_c
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mWaitingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_13
    if-ltz v0, :cond_27

    .line 664
    iget-object v2, p0, Lcom/android/server/wm/TransitionController;->mWaitingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Transition;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/Transition;->isTransientVisible(Lcom/android/server/wm/Task;)Z

    move-result v2

    if-eqz v2, :cond_24

    return v1

    :cond_24
    add-int/lit8 v0, v0, -0x1

    goto :goto_13

    .line 666
    :cond_27
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_2e
    if-ltz v0, :cond_42

    .line 667
    iget-object v2, p0, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Transition;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/Transition;->isTransientVisible(Lcom/android/server/wm/Task;)Z

    move-result v2

    if-eqz v2, :cond_3f

    return v1

    :cond_3f
    add-int/lit8 v0, v0, -0x1

    goto :goto_2e

    :cond_42
    const/4 p0, 0x0

    return p0
.end method

.method public isTransitionOnDisplay(Lcom/android/server/wm/DisplayContent;)Z
    .registers 5

    .line 566
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TransitionController;->isCollectingTransitionOnDisplay(Lcom/android/server/wm/DisplayContent;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    .line 569
    :cond_8
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mWaitingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_f
    if-ltz v0, :cond_23

    .line 570
    iget-object v2, p0, Lcom/android/server/wm/TransitionController;->mWaitingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Transition;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/Transition;->isOnDisplay(Lcom/android/server/wm/DisplayContent;)Z

    move-result v2

    if-eqz v2, :cond_20

    return v1

    :cond_20
    add-int/lit8 v0, v0, -0x1

    goto :goto_f

    .line 572
    :cond_23
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_2a
    if-ltz v0, :cond_3e

    .line 573
    iget-object v2, p0, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Transition;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/Transition;->isOnDisplay(Lcom/android/server/wm/DisplayContent;)Z

    move-result v2

    if-eqz v2, :cond_3b

    return v1

    :cond_3b
    add-int/lit8 v0, v0, -0x1

    goto :goto_2a

    :cond_3e
    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic lambda$collectForDisplayAreaChange$3(ZLcom/android/server/wm/Transition;Lcom/android/server/wm/WindowState;)V
    .registers 5

    .line 997
    iget-object v0, p3, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-nez v0, :cond_21

    invoke-virtual {p3}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p3, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TransitionController;->isCollecting(Lcom/android/server/wm/WindowContainer;)Z

    move-result p0

    if-nez p0, :cond_21

    if-nez p1, :cond_1c

    iget-object p0, p3, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 998
    invoke-static {p0}, Lcom/android/server/wm/AsyncRotationController;->canBeAsync(Lcom/android/server/wm/WindowToken;)Z

    move-result p0

    if-nez p0, :cond_21

    .line 999
    :cond_1c
    iget-object p0, p3, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {p2, p0}, Lcom/android/server/wm/Transition;->collect(Lcom/android/server/wm/WindowContainer;)V

    :cond_21
    return-void
.end method

.method public final synthetic lambda$requestStartTransition$1(Lcom/android/server/wm/Transition;)V
    .registers 3

    .line 878
    iget-object p0, p0, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    .line 879
    invoke-virtual {p1}, Lcom/android/server/wm/Transition;->getToken()Landroid/os/IBinder;

    move-result-object p1

    const/4 v0, 0x0

    .line 878
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowOrganizerController;->startTransition(Landroid/os/IBinder;Landroid/window/WindowContainerTransaction;)V

    return-void
.end method

.method public final synthetic lambda$tryStartCollectFromQueue$4(Lcom/android/server/wm/TransitionController$QueuedTransition;)V
    .registers 3

    .line 1251
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 1253
    :try_start_8
    iget-object p0, p0, Lcom/android/server/wm/TransitionController;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    invoke-virtual {p1, p0}, Lcom/android/server/wm/TransitionController$QueuedTransition;->isAborted(Lcom/android/server/wm/BLASTSyncEngine;)Z

    move-result p0

    if-eqz p0, :cond_17

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_8 .. :try_end_11} :catchall_15

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_15
    move-exception p0

    goto :goto_22

    .line 1254
    :cond_17
    :try_start_17
    iget-object p0, p1, Lcom/android/server/wm/TransitionController$QueuedTransition;->mOnStartCollect:Lcom/android/server/wm/TransitionController$OnStartCollect;

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Lcom/android/server/wm/TransitionController$OnStartCollect;->onCollectStarted(Z)V

    .line 1255
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_17 .. :try_end_1e} :catchall_15

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_22
    :try_start_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_15

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public legacyDetachNavigationBarFromApp(Landroid/os/IBinder;)V
    .registers 3

    .line 1512
    invoke-static {p1}, Lcom/android/server/wm/Transition;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/Transition;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 1513
    iget-object p0, p0, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_f

    goto :goto_13

    .line 1517
    :cond_f
    invoke-virtual {v0}, Lcom/android/server/wm/Transition;->legacyRestoreNavigationBarFromApp()V

    return-void

    .line 1514
    :cond_13
    :goto_13
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Transition isn\'t playing: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TransitionController"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public moveToCollecting(Lcom/android/server/wm/Transition;)V
    .registers 5

    .line 348
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    if-nez v0, :cond_39

    .line 351
    invoke-virtual {p0}, Lcom/android/server/wm/TransitionController;->isFlushing()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 352
    invoke-virtual {p1}, Lcom/android/server/wm/Transition;->abort()V

    return-void

    .line 355
    :cond_e
    iput-object p1, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    .line 358
    iget v0, p1, Lcom/android/server/wm/Transition;->mType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_18

    const-wide/16 v0, 0x7d0

    goto :goto_1a

    :cond_18
    const-wide/16 v0, 0x1388

    .line 359
    :goto_1a
    invoke-virtual {p1, v0, v1}, Lcom/android/server/wm/Transition;->startCollecting(J)V

    .line 360
    sget-object p1, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    const/4 v0, 0x0

    aget-boolean p1, p1, v0

    if-eqz p1, :cond_38

    iget-object p0, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v1, 0x1de7036ff85639deL

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, v1, v2, v0, p0}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_38
    return-void

    .line 349
    :cond_39
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Simultaneous transition collection not supported."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public moveToPlaying(Lcom/android/server/wm/Transition;)V
    .registers 4

    .line 1261
    invoke-virtual {p0}, Lcom/android/server/wm/TransitionController;->isFlushing()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1262
    const-string v0, "TransitionController"

    const-string v1, "Starting to play a transition while flushing"

    invoke-static {v0, v1}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 1264
    :cond_d
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    if-ne p1, v0, :cond_31

    const/4 v0, 0x0

    .line 1265
    iput-object v0, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    .line 1266
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mWaitingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_27

    .line 1267
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mWaitingTransitions:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/Transition;

    iput-object v0, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    .line 1269
    :cond_27
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    if-nez v0, :cond_39

    .line 1271
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mLatestOnTopTasksReported:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    goto :goto_39

    .line 1274
    :cond_31
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mWaitingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 1279
    :cond_39
    :goto_39
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    .line 1280
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/TransitionController;->updateRunningRemoteAnimation(Lcom/android/server/wm/Transition;Z)V

    return-void

    .line 1275
    :cond_43
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Trying to move non-collecting transition toplaying "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1276
    invoke-virtual {p1}, Lcom/android/server/wm/Transition;->getSyncId()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onAbort(Lcom/android/server/wm/Transition;)V
    .registers 3

    .line 1480
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    if-eq p1, v0, :cond_1a

    .line 1481
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mWaitingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_12

    .line 1485
    iget-object p0, p0, Lcom/android/server/wm/TransitionController;->mWaitingTransitions:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void

    .line 1483
    :cond_12
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Too late for abort."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1a
    const/4 p1, 0x0

    .line 1487
    iput-object p1, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    .line 1488
    iget-object p1, p0, Lcom/android/server/wm/TransitionController;->mWaitingTransitions:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_30

    .line 1489
    iget-object p1, p0, Lcom/android/server/wm/TransitionController;->mWaitingTransitions:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/Transition;

    iput-object p1, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    .line 1491
    :cond_30
    iget-object p1, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    if-nez p1, :cond_39

    .line 1493
    iget-object p0, p0, Lcom/android/server/wm/TransitionController;->mLatestOnTopTasksReported:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    :cond_39
    return-void
.end method

.method public onCommittedInvisibles()V
    .registers 4

    .line 1134
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    const/4 v1, 0x1

    if-eqz v0, :cond_7

    .line 1135
    iput-boolean v1, v0, Lcom/android/server/wm/Transition;->mPriorVisibilityMightBeDirty:Z

    .line 1137
    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mWaitingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_e
    if-ltz v0, :cond_1d

    .line 1138
    iget-object v2, p0, Lcom/android/server/wm/TransitionController;->mWaitingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Transition;

    iput-boolean v1, v2, Lcom/android/server/wm/Transition;->mPriorVisibilityMightBeDirty:Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_e

    :cond_1d
    return-void
.end method

.method public onTransitionPopulated(Lcom/android/server/wm/Transition;)V
    .registers 2

    .line 1192
    invoke-virtual {p0}, Lcom/android/server/wm/TransitionController;->tryStartCollectFromQueue()V

    return-void
.end method

.method public onVisibleWithoutCollectingTransition(Lcom/android/server/wm/WindowContainer;Ljava/lang/String;)V
    .registers 5

    .line 1182
    iget-object p0, p0, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    .line 1183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Set visible without transition "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " playing="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, " caller="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TransitionController"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final queueTransition(Lcom/android/server/wm/Transition;Lcom/android/server/wm/TransitionController$OnStartCollect;Z)V
    .registers 6

    .line 1599
    new-instance v0, Lcom/android/server/wm/TransitionController$QueuedTransition;

    invoke-direct {v0, p1, p2}, Lcom/android/server/wm/TransitionController$QueuedTransition;-><init>(Lcom/android/server/wm/Transition;Lcom/android/server/wm/TransitionController$OnStartCollect;)V

    const/4 p2, 0x0

    if-eqz p3, :cond_3d

    .line 1604
    invoke-virtual {p1}, Lcom/android/server/wm/Transition;->getFlags()I

    move-result p3

    const/high16 v1, 0x20000

    and-int/2addr p3, v1

    if-nez p3, :cond_3d

    iget-object p3, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    if-eqz p3, :cond_3d

    .line 1605
    invoke-virtual {p3}, Lcom/android/server/wm/Transition;->hasStarted()Z

    move-result p3

    if-nez p3, :cond_3d

    move p3, p2

    .line 1606
    :goto_1c
    iget-object v1, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    iget-object v1, v1, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge p3, v1, :cond_3d

    .line 1607
    iget-object v1, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    iget-object v1, v1, Lcom/android/server/wm/Transition;->mParticipants:Landroid/util/ArraySet;

    invoke-virtual {v1, p3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    if-eqz v1, :cond_3a

    const/4 p3, 0x1

    .line 1608
    iput-boolean p3, v0, Lcom/android/server/wm/TransitionController$QueuedTransition;->mShouldNoopUponDequeue:Z

    goto :goto_3d

    :cond_3a
    add-int/lit8 p3, p3, 0x1

    goto :goto_1c

    .line 1614
    :cond_3d
    :goto_3d
    iget-object p0, p0, Lcom/android/server/wm/TransitionController;->mQueuedTransitions:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1615
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_MIN_enabled:[Z

    aget-boolean p0, p0, p2

    if-eqz p0, :cond_5a

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS_MIN:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v0, -0x4c762d3db2dfc06dL    # -2.0087331146961005E-60

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, v0, v1, p2, p0}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_5a
    return-void
.end method

.method public recordTaskOrder(Lcom/android/server/wm/WindowContainer;)V
    .registers 2

    .line 968
    iget-object p0, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    if-nez p0, :cond_5

    return-void

    .line 969
    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Transition;->recordTaskOrder(Lcom/android/server/wm/WindowContainer;)V

    return-void
.end method

.method public registerLegacyListener(Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;)V
    .registers 2

    .line 1521
    iget-object p0, p0, Lcom/android/server/wm/TransitionController;->mLegacyListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public registerTransitionPlayer(Landroid/window/ITransitionPlayer;Lcom/android/server/wm/WindowProcessController;)V
    .registers 8

    .line 366
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mTransitionPlayers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_26

    .line 374
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_MIN_enabled:[Z

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_51

    invoke-interface {p1}, Landroid/window/ITransitionPlayer;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS_MIN:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v3, -0x3afc20681e8ccaa3L    # -3.003185000262496E24

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v3, v4, v1, v0}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    goto :goto_51

    .line 367
    :cond_26
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_MIN_enabled:[Z

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_4e

    invoke-interface {p1}, Landroid/window/ITransitionPlayer;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/TransitionController;->mTransitionPlayers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    int-to-long v1, v1

    sget-object v3, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS_MIN:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-wide v1, -0x3f17c8741fc1c04dL    # -49596.37112343255

    const/4 v4, 0x4

    invoke-static {v3, v1, v2, v4, v0}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 372
    :cond_4e
    invoke-virtual {p0}, Lcom/android/server/wm/TransitionController;->flushRunningTransitions()V

    .line 377
    :cond_51
    :goto_51
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mTransitionPlayers:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/server/wm/TransitionController$TransitionPlayerRecord;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/wm/TransitionController$TransitionPlayerRecord;-><init>(Lcom/android/server/wm/TransitionController;Landroid/window/ITransitionPlayer;Lcom/android/server/wm/WindowProcessController;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public requestCloseTransitionIfNeeded(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/Transition;
    .registers 5

    .line 947
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mTransitionPlayers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return-object v1

    .line 948
    :cond_a
    invoke-virtual {p0}, Lcom/android/server/wm/TransitionController;->isCollecting()Z

    move-result v0

    if-eqz v0, :cond_11

    return-object v1

    .line 949
    :cond_11
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v0

    if-nez v0, :cond_18

    return-object v1

    :cond_18
    const/4 v0, 0x2

    const/4 v2, 0x0

    .line 950
    invoke-virtual {p0, v0, v2}, Lcom/android/server/wm/TransitionController;->createTransition(II)Lcom/android/server/wm/Transition;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object p1

    invoke-virtual {p0, v0, p1, v1, v1}, Lcom/android/server/wm/TransitionController;->requestStartTransition(Lcom/android/server/wm/Transition;Lcom/android/server/wm/Task;Landroid/window/RemoteTransition;Landroid/window/TransitionRequestInfo$DisplayChange;)Lcom/android/server/wm/Transition;

    move-result-object p0

    return-object p0
.end method

.method public requestStartDisplayTransition(IILcom/android/server/wm/DisplayContent;Landroid/window/RemoteTransition;Landroid/window/TransitionRequestInfo$DisplayChange;)Lcom/android/server/wm/Transition;
    .registers 6

    .line 843
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/TransitionController;->createTransition(II)Lcom/android/server/wm/Transition;

    move-result-object p1

    const/4 p2, 0x0

    .line 844
    invoke-virtual {p0, p1, p2, p4, p5}, Lcom/android/server/wm/TransitionController;->requestStartTransition(Lcom/android/server/wm/Transition;Lcom/android/server/wm/Task;Landroid/window/RemoteTransition;Landroid/window/TransitionRequestInfo$DisplayChange;)Lcom/android/server/wm/Transition;

    if-eqz p5, :cond_d

    .line 846
    invoke-virtual {p0, p5, p3}, Lcom/android/server/wm/TransitionController;->setDisplaySyncMethod(Landroid/window/TransitionRequestInfo$DisplayChange;Lcom/android/server/wm/DisplayContent;)V

    :cond_d
    return-object p1
.end method

.method public requestStartTransition(Lcom/android/server/wm/Transition;Lcom/android/server/wm/Task;Landroid/window/RemoteTransition;Landroid/window/TransitionRequestInfo$DisplayChange;)Lcom/android/server/wm/Transition;
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 862
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/TransitionController;->requestStartTransition(Lcom/android/server/wm/Transition;Lcom/android/server/wm/Task;Landroid/window/RemoteTransition;Landroid/window/TransitionRequestInfo$DisplayChange;Landroid/window/TransitionRequestInfo$UserChange;)Lcom/android/server/wm/Transition;

    move-result-object p0

    return-object p0
.end method

.method public requestStartTransition(Lcom/android/server/wm/Transition;Lcom/android/server/wm/Task;Landroid/window/RemoteTransition;Landroid/window/TransitionRequestInfo$DisplayChange;Landroid/window/TransitionRequestInfo$UserChange;)Lcom/android/server/wm/Transition;
    .registers 18

    .line 872
    iget-boolean v1, p0, Lcom/android/server/wm/TransitionController;->mIsWaitingForDisplayEnabled:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_3a

    .line 873
    sget-object p2, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    aget-boolean p2, p2, v2

    if-eqz p2, :cond_23

    invoke-virtual {p1}, Lcom/android/server/wm/Transition;->getSyncId()I

    move-result p2

    int-to-long v0, p2

    sget-object p2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-wide v3, -0x3ac8823a709dc01dL    # -2.8399234001968437E25

    const/4 v1, 0x1

    invoke-static {p2, v3, v4, v1, v0}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 876
    :cond_23
    iput-boolean v2, p1, Lcom/android/server/wm/Transition;->mIsPlayerEnabled:Z

    .line 877
    iget-object p2, p1, Lcom/android/server/wm/Transition;->mLogger:Lcom/android/server/wm/TransitionController$Logger;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    iput-wide v0, p2, Lcom/android/server/wm/TransitionController$Logger;->mRequestTimeNs:J

    .line 878
    iget-object p2, p0, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p2, p2, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    new-instance v0, Lcom/android/server/wm/TransitionController$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1}, Lcom/android/server/wm/TransitionController$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/wm/TransitionController;Lcom/android/server/wm/Transition;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object p1

    .line 882
    :cond_3a
    iget-object v1, p0, Lcom/android/server/wm/TransitionController;->mTransitionPlayers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_103

    invoke-virtual {p1}, Lcom/android/server/wm/Transition;->isAborted()Z

    move-result v1

    if-eqz v1, :cond_4a

    goto/16 :goto_103

    .line 890
    :cond_4a
    :try_start_4a
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:[Z

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_67

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-wide v4, 0x37971f38593a3bd5L    # 6.635675241800035E-41

    invoke-static {v3, v4, v5, v2, v1}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    goto :goto_67

    :catch_63
    move-exception v0

    move-object p0, v0

    goto/16 :goto_f8

    :cond_67
    :goto_67
    const/4 v1, 0x0

    if-eqz p2, :cond_70

    .line 895
    invoke-virtual {p2}, Lcom/android/server/wm/Task;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p2

    move-object v3, p2

    goto :goto_71

    :cond_70
    move-object v3, v1

    .line 899
    :goto_71
    invoke-virtual {p1}, Lcom/android/server/wm/Transition;->getPipActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p2

    if-eqz p2, :cond_b0

    .line 901
    invoke-virtual {p1}, Lcom/android/server/wm/Transition;->getPipActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/wm/Task;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p2

    .line 902
    invoke-virtual {p1}, Lcom/android/server/wm/Transition;->getPipActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    .line 903
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v4

    if-eqz v4, :cond_a7

    .line 904
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v4

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v5

    if-eq v4, v5, :cond_a7

    .line 907
    new-instance v4, Landroid/window/TransitionRequestInfo$PipChange;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/WindowContainer;->mRemoteToken:Lcom/android/server/wm/WindowContainer$RemoteToken;

    .line 908
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer$RemoteToken;->toWindowContainerToken()Landroid/window/WindowContainerToken;

    move-result-object v2

    invoke-direct {v4, v2, p2}, Landroid/window/TransitionRequestInfo$PipChange;-><init>(Landroid/window/WindowContainerToken;Landroid/app/ActivityManager$RunningTaskInfo;)V

    goto :goto_ac

    .line 910
    :cond_a7
    new-instance v4, Landroid/window/TransitionRequestInfo$PipChange;

    invoke-direct {v4, p2}, Landroid/window/TransitionRequestInfo$PipChange;-><init>(Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 912
    :goto_ac
    invoke-virtual {p1, v1}, Lcom/android/server/wm/Transition;->setPipActivity(Lcom/android/server/wm/ActivityRecord;)V

    goto :goto_b1

    :cond_b0
    move-object v4, v1

    :goto_b1
    if-eqz p3, :cond_be

    .line 917
    invoke-virtual {p3}, Landroid/window/RemoteTransition;->getAppThread()Landroid/app/IApplicationThread;

    move-result-object p2

    iput-object p2, p1, Lcom/android/server/wm/Transition;->mRemoteDelegate:Landroid/app/IApplicationThread;

    .line 918
    new-instance v1, Landroid/window/TransitionRequestInfo$RemoteTransitionInfo;

    invoke-direct {v1, p3}, Landroid/window/TransitionRequestInfo$RemoteTransitionInfo;-><init>(Landroid/window/RemoteTransition;)V

    :cond_be
    move-object v5, v1

    .line 923
    new-instance v1, Landroid/window/TransitionRequestInfo;

    iget v2, p1, Lcom/android/server/wm/Transition;->mType:I

    .line 925
    invoke-virtual {p1}, Lcom/android/server/wm/Transition;->getRequestedLocation()Landroid/window/TransitionRequestInfo$RequestedLocation;

    move-result-object v7

    .line 926
    invoke-virtual {p1}, Lcom/android/server/wm/Transition;->getFlags()I

    move-result v10

    invoke-virtual {p1}, Lcom/android/server/wm/Transition;->getSyncId()I

    move-result v11

    const/4 v9, 0x0

    move-object/from16 v6, p4

    move-object/from16 v8, p5

    invoke-direct/range {v1 .. v11}, Landroid/window/TransitionRequestInfo;-><init>(ILandroid/app/ActivityManager$RunningTaskInfo;Landroid/window/TransitionRequestInfo$PipChange;Landroid/window/TransitionRequestInfo$RemoteTransitionInfo;Landroid/window/TransitionRequestInfo$DisplayChange;Landroid/window/TransitionRequestInfo$RequestedLocation;Landroid/window/TransitionRequestInfo$UserChange;Landroid/window/TransitionRequestInfo$WindowingLayerChange;II)V

    .line 928
    iget-object p2, p1, Lcom/android/server/wm/Transition;->mLogger:Lcom/android/server/wm/TransitionController$Logger;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v2

    iput-wide v2, p2, Lcom/android/server/wm/TransitionController$Logger;->mRequestTimeNs:J

    .line 929
    iget-object p2, p1, Lcom/android/server/wm/Transition;->mLogger:Lcom/android/server/wm/TransitionController$Logger;

    iput-object v1, p2, Lcom/android/server/wm/TransitionController$Logger;->mRequest:Landroid/window/TransitionRequestInfo;

    .line 930
    invoke-virtual {p0}, Lcom/android/server/wm/TransitionController;->getTransitionPlayer()Landroid/window/ITransitionPlayer;

    move-result-object p0

    .line 931
    invoke-virtual {p1}, Lcom/android/server/wm/Transition;->getToken()Landroid/os/IBinder;

    move-result-object p2

    .line 930
    invoke-interface {p0, p2, v1}, Landroid/window/ITransitionPlayer;->requestStartTransition(Landroid/os/IBinder;Landroid/window/TransitionRequestInfo;)V

    if-eqz p3, :cond_f7

    .line 933
    invoke-virtual {p3}, Landroid/window/RemoteTransition;->getAppThread()Landroid/app/IApplicationThread;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/server/wm/Transition;->setRemoteAnimationApp(Landroid/app/IApplicationThread;)V
    :try_end_f7
    .catch Landroid/os/RemoteException; {:try_start_4a .. :try_end_f7} :catch_63

    :cond_f7
    return-object p1

    .line 936
    :goto_f8
    const-string p2, "TransitionController"

    const-string v0, "Error requesting transition"

    invoke-static {p2, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 937
    invoke-virtual {p1}, Lcom/android/server/wm/Transition;->start()V

    return-object p1

    .line 884
    :cond_103
    :goto_103
    invoke-virtual {p1}, Lcom/android/server/wm/Transition;->isCollecting()Z

    move-result p0

    if-eqz p0, :cond_10c

    .line 885
    invoke-virtual {p1}, Lcom/android/server/wm/Transition;->abort()V

    :cond_10c
    return-object p1
.end method

.method public requestStartUserTransition(Lcom/android/server/wm/Transition;Landroid/window/TransitionRequestInfo$UserChange;)Lcom/android/server/wm/Transition;
    .registers 9

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    .line 854
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/TransitionController;->requestStartTransition(Lcom/android/server/wm/Transition;Lcom/android/server/wm/Task;Landroid/window/RemoteTransition;Landroid/window/TransitionRequestInfo$DisplayChange;Landroid/window/TransitionRequestInfo$UserChange;)Lcom/android/server/wm/Transition;

    move-result-object p0

    return-object p0
.end method

.method public requestTransitionIfNeeded(IILcom/android/server/wm/WindowContainer;Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/ActionChain;)Lcom/android/server/wm/Transition;
    .registers 8

    .line 810
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mTransitionPlayers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return-object v1

    .line 817
    :cond_a
    invoke-virtual {p5}, Lcom/android/server/wm/ActionChain;->isCollecting()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 819
    invoke-virtual {p5}, Lcom/android/server/wm/ActionChain;->getTransition()Lcom/android/server/wm/Transition;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p4, p1}, Lcom/android/server/wm/Transition;->setReady(Lcom/android/server/wm/WindowContainer;Z)V

    const p0, 0xb900

    and-int/2addr p0, p2

    if-eqz p0, :cond_25

    .line 822
    invoke-virtual {p5}, Lcom/android/server/wm/ActionChain;->getTransition()Lcom/android/server/wm/Transition;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/server/wm/Transition;->addFlag(I)V

    :cond_25
    return-object v1

    .line 825
    :cond_26
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/TransitionController;->createTransition(II)Lcom/android/server/wm/Transition;

    move-result-object p1

    invoke-virtual {p5, p1}, Lcom/android/server/wm/ActionChain;->attachTransition(Lcom/android/server/wm/Transition;)V

    .line 826
    invoke-virtual {p5}, Lcom/android/server/wm/ActionChain;->getTransition()Lcom/android/server/wm/Transition;

    move-result-object p1

    if-eqz p3, :cond_38

    .line 827
    invoke-virtual {p3}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object p2

    goto :goto_39

    :cond_38
    move-object p2, v1

    .line 826
    :goto_39
    invoke-virtual {p0, p1, p2, v1, v1}, Lcom/android/server/wm/TransitionController;->requestStartTransition(Lcom/android/server/wm/Transition;Lcom/android/server/wm/Task;Landroid/window/RemoteTransition;Landroid/window/TransitionRequestInfo$DisplayChange;)Lcom/android/server/wm/Transition;

    move-result-object p0

    return-object p0
.end method

.method public setDisplaySyncMethod(Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/android/server/wm/DisplayContent;)V
    .registers 8

    .line 783
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p0

    .line 784
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    .line 785
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 786
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-le v0, p0, :cond_16

    move v3, v2

    goto :goto_17

    :cond_16
    move v3, v1

    :goto_17
    if-le p2, p1, :cond_1a

    move v1, v2

    :cond_1a
    if-ne v3, v1, :cond_28

    if-ne v0, p0, :cond_20

    if-eq p2, p1, :cond_28

    .line 791
    :cond_20
    new-instance p0, Lcom/android/server/wm/TransitionController$$ExternalSyntheticLambda6;

    invoke-direct {p0}, Lcom/android/server/wm/TransitionController$$ExternalSyntheticLambda6;-><init>()V

    invoke-virtual {p3, p0, v2}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    :cond_28
    return-void
.end method

.method public final setDisplaySyncMethod(Landroid/window/TransitionRequestInfo$DisplayChange;Lcom/android/server/wm/DisplayContent;)V
    .registers 4

    .line 775
    invoke-virtual {p1}, Landroid/window/TransitionRequestInfo$DisplayChange;->getStartAbsBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 776
    invoke-virtual {p1}, Landroid/window/TransitionRequestInfo$DisplayChange;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object p1

    if-eqz v0, :cond_10

    if-nez p1, :cond_d

    goto :goto_10

    .line 778
    :cond_d
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/wm/TransitionController;->setDisplaySyncMethod(Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/android/server/wm/DisplayContent;)V

    :cond_10
    :goto_10
    return-void
.end method

.method public setNoAnimation(Lcom/android/server/wm/WindowContainer;)V
    .registers 2

    .line 1047
    iget-object p0, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    if-nez p0, :cond_5

    return-void

    .line 1048
    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Transition;->setNoAnimation(Lcom/android/server/wm/WindowContainer;)V

    return-void
.end method

.method public setOverrideAnimation(Landroid/window/TransitionInfo$AnimationOptions;Lcom/android/server/wm/ActivityRecord;Landroid/os/IRemoteCallback;Landroid/os/IRemoteCallback;)V
    .registers 5

    .line 1036
    iget-object p0, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    if-nez p0, :cond_5

    return-void

    .line 1037
    :cond_5
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/wm/Transition;->setOverrideAnimation(Landroid/window/TransitionInfo$AnimationOptions;Lcom/android/server/wm/ActivityRecord;Landroid/os/IRemoteCallback;Landroid/os/IRemoteCallback;)V

    return-void
.end method

.method public setOverrideBackgroundColor(I)V
    .registers 2

    .line 1042
    iget-object p0, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    if-nez p0, :cond_5

    return-void

    .line 1043
    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Transition;->setOverrideBackgroundColor(I)V

    return-void
.end method

.method public setReady(Lcom/android/server/wm/WindowContainer;)V
    .registers 3

    const/4 v0, 0x1

    .line 1059
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/TransitionController;->setReady(Lcom/android/server/wm/WindowContainer;Z)V

    return-void
.end method

.method public setReady(Lcom/android/server/wm/WindowContainer;Z)V
    .registers 3

    .line 1053
    iget-object p0, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    if-nez p0, :cond_5

    return-void

    .line 1054
    :cond_5
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/Transition;->setReady(Lcom/android/server/wm/WindowContainer;Z)V

    return-void
.end method

.method public setStatusBarTransitionDelay(J)V
    .registers 3

    .line 1028
    iget-object p0, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    if-nez p0, :cond_5

    return-void

    .line 1029
    :cond_5
    iput-wide p1, p0, Lcom/android/server/wm/Transition;->mStatusBarTransitionDelay:J

    return-void
.end method

.method public setSyncEngine(Lcom/android/server/wm/BLASTSyncEngine;)V
    .registers 3

    .line 275
    iput-object p1, p0, Lcom/android/server/wm/TransitionController;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    .line 277
    new-instance v0, Lcom/android/server/wm/TransitionController$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/server/wm/TransitionController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/TransitionController;)V

    invoke-virtual {p1, v0}, Lcom/android/server/wm/BLASTSyncEngine;->addOnIdleListener(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setTransientLaunch(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)V
    .registers 3

    .line 1507
    iget-object p0, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    if-nez p0, :cond_5

    return-void

    .line 1508
    :cond_5
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/Transition;->setTransientLaunch(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)V

    return-void
.end method

.method public setWindowManager(Lcom/android/server/wm/WindowManagerService;)V
    .registers 3

    .line 265
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mSnapshotController:Lcom/android/server/wm/SnapshotController;

    iput-object v0, p0, Lcom/android/server/wm/TransitionController;->mSnapshotController:Lcom/android/server/wm/SnapshotController;

    .line 266
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mTransitionTracer:Lcom/android/server/wm/TransitionTracer;

    iput-object v0, p0, Lcom/android/server/wm/TransitionController;->mTransitionTracer:Lcom/android/server/wm/TransitionTracer;

    .line 267
    iget-boolean v0, p1, Lcom/android/server/wm/WindowManagerService;->mDisplayEnabled:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/TransitionController;->mIsWaitingForDisplayEnabled:Z

    .line 268
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mActivityManagerAppTransitionNotifier:Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TransitionController;->registerLegacyListener(Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;)V

    .line 269
    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/TransitionController;->setSyncEngine(Lcom/android/server/wm/BLASTSyncEngine;)V

    const/4 p1, 0x0

    .line 270
    iput-boolean p1, p0, Lcom/android/server/wm/TransitionController;->mFullReadyTracking:Z

    return-void
.end method

.method public shouldKeepFocus(Lcom/android/server/wm/WindowContainer;)Z
    .registers 5

    .line 694
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    .line 695
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    return v1

    .line 696
    :cond_e
    iget-object p0, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/Transition;->isInTransientHide(Lcom/android/server/wm/WindowContainer;)Z

    move-result p0

    return p0

    .line 697
    :cond_15
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2b

    .line 698
    iget-object p0, p0, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/Transition;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/Transition;->isInTransientHide(Lcom/android/server/wm/WindowContainer;)Z

    move-result p0

    return p0

    :cond_2b
    return v1
.end method

.method public startCollectOrQueue(Lcom/android/server/wm/Transition;Lcom/android/server/wm/TransitionController$OnStartCollect;)Z
    .registers 4

    const/4 v0, 0x0

    .line 1621
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/TransitionController;->startCollectOrQueue(Lcom/android/server/wm/Transition;Lcom/android/server/wm/TransitionController$OnStartCollect;Z)Z

    move-result p0

    return p0
.end method

.method public startCollectOrQueue(Lcom/android/server/wm/Transition;Lcom/android/server/wm/TransitionController$OnStartCollect;Z)Z
    .registers 9

    .line 1632
    invoke-virtual {p0}, Lcom/android/server/wm/TransitionController;->isFlushing()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_b

    .line 1633
    invoke-virtual {p1}, Lcom/android/server/wm/Transition;->abort()V

    return v1

    .line 1636
    :cond_b
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mQueuedTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_18

    .line 1638
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/TransitionController;->queueTransition(Lcom/android/server/wm/Transition;Lcom/android/server/wm/TransitionController$OnStartCollect;Z)V

    return v2

    .line 1641
    :cond_18
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    invoke-virtual {v0}, Lcom/android/server/wm/BLASTSyncEngine;->hasActiveSync()Z

    move-result v0

    if-eqz v0, :cond_67

    .line 1642
    invoke-virtual {p0}, Lcom/android/server/wm/TransitionController;->isCollecting()Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 1644
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TransitionController;->canStartCollectingNow(Lcom/android/server/wm/Transition;)Z

    move-result v0

    if-eqz v0, :cond_63

    .line 1646
    sget-object p3, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_MIN_enabled:[Z

    aget-boolean p3, p3, v2

    if-eqz p3, :cond_4b

    iget-object p3, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    invoke-virtual {p3}, Lcom/android/server/wm/Transition;->getSyncId()I

    move-result p3

    int-to-long v3, p3

    sget-object p3, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS_MIN:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-wide v3, -0x165e91cdd667c4f0L    # -6.67107460160601E200

    invoke-static {p3, v3, v4, v1, v0}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 1648
    :cond_4b
    iget-object p3, p0, Lcom/android/server/wm/TransitionController;->mWaitingTransitions:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p3, 0x0

    .line 1649
    iput-object p3, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    .line 1650
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TransitionController;->moveToCollecting(Lcom/android/server/wm/Transition;)V

    .line 1651
    invoke-interface {p2, v2}, Lcom/android/server/wm/TransitionController$OnStartCollect;->onCollectStarted(Z)V

    return v1

    .line 1655
    :cond_5c
    const-string v0, "TransitionController"

    const-string v1, "Ongoing Sync outside of transition."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1657
    :cond_63
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/TransitionController;->queueTransition(Lcom/android/server/wm/Transition;Lcom/android/server/wm/TransitionController$OnStartCollect;Z)V

    return v2

    .line 1660
    :cond_67
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TransitionController;->moveToCollecting(Lcom/android/server/wm/Transition;)V

    .line 1661
    invoke-interface {p2, v2}, Lcom/android/server/wm/TransitionController$OnStartCollect;->onCollectStarted(Z)V

    return v1
.end method

.method public startLegacySyncOrQueue(Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;Ljava/util/function/Consumer;)V
    .registers 5

    .line 1708
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mQueuedTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    invoke-virtual {v0}, Lcom/android/server/wm/BLASTSyncEngine;->hasActiveSync()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_1c

    .line 1716
    :cond_11
    iget-object p0, p0, Lcom/android/server/wm/TransitionController;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/BLASTSyncEngine;->startSyncSet(Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;)V

    .line 1717
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p2, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    .line 1710
    :cond_1c
    :goto_1c
    iget-object p0, p0, Lcom/android/server/wm/TransitionController;->mQueuedTransitions:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/server/wm/TransitionController$QueuedTransition;

    new-instance v1, Lcom/android/server/wm/TransitionController$$ExternalSyntheticLambda5;

    invoke-direct {v1, p2}, Lcom/android/server/wm/TransitionController$$ExternalSyntheticLambda5;-><init>(Ljava/util/function/Consumer;)V

    invoke-direct {v0, p1, v1}, Lcom/android/server/wm/TransitionController$QueuedTransition;-><init>(Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;Lcom/android/server/wm/TransitionController$OnStartCollect;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1712
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_MIN_enabled:[Z

    const/4 p2, 0x0

    aget-boolean p0, p0, p2

    if-eqz p0, :cond_46

    iget p0, p1, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mSyncId:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS_MIN:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v0, -0x260c18a64943c1eaL    # -2.105194890288045E125

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, v0, v1, p2, p0}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_46
    return-void
.end method

.method public tryStartCollectFromQueue()V
    .registers 8

    .line 1208
    invoke-virtual {p0}, Lcom/android/server/wm/TransitionController;->isFlushing()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_5c

    .line 1209
    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mQueuedTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_5c

    .line 1212
    :cond_10
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mQueuedTransitions:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/TransitionController$QueuedTransition;

    .line 1213
    iget-object v2, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    const/4 v3, 0x1

    if-eqz v2, :cond_54

    .line 1215
    iget-object v2, v0, Lcom/android/server/wm/TransitionController$QueuedTransition;->mTransition:Lcom/android/server/wm/Transition;

    if-nez v2, :cond_23

    goto :goto_5c

    .line 1216
    :cond_23
    invoke-virtual {p0, v2}, Lcom/android/server/wm/TransitionController;->canStartCollectingNow(Lcom/android/server/wm/Transition;)Z

    move-result v2

    if-nez v2, :cond_2a

    goto :goto_5c

    .line 1217
    :cond_2a
    sget-object v2, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_MIN_enabled:[Z

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_49

    iget-object v2, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    invoke-virtual {v2}, Lcom/android/server/wm/Transition;->getSyncId()I

    move-result v2

    int-to-long v4, v2

    sget-object v2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS_MIN:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-wide v5, -0x165e91cdd667c4f0L    # -6.67107460160601E200

    invoke-static {v2, v5, v6, v3, v4}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 1219
    :cond_49
    iget-object v2, p0, Lcom/android/server/wm/TransitionController;->mWaitingTransitions:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    .line 1220
    iput-object v2, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    goto :goto_5d

    .line 1221
    :cond_54
    iget-object v2, p0, Lcom/android/server/wm/TransitionController;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    invoke-virtual {v2}, Lcom/android/server/wm/BLASTSyncEngine;->hasActiveSync()Z

    move-result v2

    if-eqz v2, :cond_5d

    :goto_5c
    return-void

    .line 1225
    :cond_5d
    :goto_5d
    iget-object v2, p0, Lcom/android/server/wm/TransitionController;->mQueuedTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1228
    iget-object v1, v0, Lcom/android/server/wm/TransitionController$QueuedTransition;->mTransition:Lcom/android/server/wm/Transition;

    if-eqz v1, :cond_6a

    .line 1229
    invoke-virtual {p0, v1}, Lcom/android/server/wm/TransitionController;->moveToCollecting(Lcom/android/server/wm/Transition;)V

    goto :goto_71

    .line 1232
    :cond_6a
    iget-object v1, p0, Lcom/android/server/wm/TransitionController;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    iget-object v2, v0, Lcom/android/server/wm/TransitionController$QueuedTransition;->mLegacySync:Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/BLASTSyncEngine;->startSyncSet(Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;)V

    .line 1234
    :goto_71
    iget-object v1, v0, Lcom/android/server/wm/TransitionController$QueuedTransition;->mTransition:Lcom/android/server/wm/Transition;

    if-eqz v1, :cond_81

    iget v2, v1, Lcom/android/server/wm/Transition;->mType:I

    const/16 v4, 0xc

    if-ne v2, v4, :cond_81

    .line 1239
    iget-object p0, v0, Lcom/android/server/wm/TransitionController$QueuedTransition;->mOnStartCollect:Lcom/android/server/wm/TransitionController$OnStartCollect;

    invoke-interface {p0, v3}, Lcom/android/server/wm/TransitionController$OnStartCollect;->onCollectStarted(Z)V

    return-void

    :cond_81
    if-eqz v1, :cond_ab

    .line 1240
    iget-boolean v2, v0, Lcom/android/server/wm/TransitionController$QueuedTransition;->mShouldNoopUponDequeue:Z

    if-eqz v2, :cond_ab

    .line 1245
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_MIN_enabled:[Z

    const/4 v2, 0x3

    aget-boolean p0, p0, v2

    if-eqz p0, :cond_a5

    invoke-virtual {v1}, Lcom/android/server/wm/Transition;->getSyncId()I

    move-result p0

    int-to-long v1, p0

    sget-object p0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS_MIN:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-wide v4, -0x313e0f0e81d0c5c0L    # -2.476510145342663E71

    invoke-static {p0, v4, v5, v3, v1}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 1247
    :cond_a5
    iget-object p0, v0, Lcom/android/server/wm/TransitionController$QueuedTransition;->mTransition:Lcom/android/server/wm/Transition;

    invoke-virtual {p0}, Lcom/android/server/wm/Transition;->playNow()V

    return-void

    .line 1250
    :cond_ab
    iget-object v1, p0, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    new-instance v2, Lcom/android/server/wm/TransitionController$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, v0}, Lcom/android/server/wm/TransitionController$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/wm/TransitionController;Lcom/android/server/wm/TransitionController$QueuedTransition;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public unregisterLegacyListener(Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;)V
    .registers 2

    .line 1525
    iget-object p0, p0, Lcom/android/server/wm/TransitionController;->mLegacyListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public unregisterTransitionPlayer(Landroid/window/ITransitionPlayer;)V
    .registers 11

    .line 382
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mTransitionPlayers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_8
    if-ltz v0, :cond_22

    .line 384
    iget-object v2, p0, Lcom/android/server/wm/TransitionController;->mTransitionPlayers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/TransitionController$TransitionPlayerRecord;

    iget-object v2, v2, Lcom/android/server/wm/TransitionController$TransitionPlayerRecord;->mPlayer:Landroid/window/ITransitionPlayer;

    invoke-interface {v2}, Landroid/window/ITransitionPlayer;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {p1}, Landroid/window/ITransitionPlayer;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    if-ne v2, v3, :cond_1f

    goto :goto_22

    :cond_1f
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_22
    :goto_22
    const/4 v2, 0x0

    if-gez v0, :cond_43

    .line 387
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_MIN_enabled:[Z

    const/4 v0, 0x3

    aget-boolean p0, p0, v0

    if-eqz p0, :cond_b8

    invoke-interface {p1}, Landroid/window/ITransitionPlayer;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS_MIN:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v0, 0x2d00a38953023dcfL    # 6.381366704917865E-92

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, v0, v1, v2, p0}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    return-void

    .line 391
    :cond_43
    iget-object v3, p0, Lcom/android/server/wm/TransitionController;->mTransitionPlayers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v1

    if-ne v0, v3, :cond_4d

    goto :goto_4e

    :cond_4d
    move v1, v2

    .line 392
    :goto_4e
    iget-object v3, p0, Lcom/android/server/wm/TransitionController;->mTransitionPlayers:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/TransitionController$TransitionPlayerRecord;

    const/16 v4, 0x14

    if-eqz v1, :cond_87

    .line 394
    sget-object v5, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_MIN_enabled:[Z

    aget-boolean v2, v5, v2

    if-eqz v2, :cond_b3

    invoke-interface {p1}, Landroid/window/ITransitionPlayer;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    int-to-long v5, v0

    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mTransitionPlayers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    int-to-long v7, v0

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS_MIN:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    filled-new-array {p1, v2, v5}, [Ljava/lang/Object;

    move-result-object p1

    const-wide v5, 0x333c4f1d2b4f3463L    # 6.88154613984404E-62

    invoke-static {v0, v5, v6, v4, p1}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    goto :goto_b3

    .line 398
    :cond_87
    sget-object v5, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_MIN_enabled:[Z

    aget-boolean v2, v5, v2

    if-eqz v2, :cond_b3

    invoke-interface {p1}, Landroid/window/ITransitionPlayer;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    int-to-long v5, v0

    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mTransitionPlayers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    int-to-long v7, v0

    sget-object v0, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS_MIN:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    filled-new-array {p1, v2, v5}, [Ljava/lang/Object;

    move-result-object p1

    const-wide v5, -0x27f7beac5544cef7L    # -1.1946285839395035E116

    invoke-static {v0, v5, v6, v4, p1}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 402
    :cond_b3
    :goto_b3
    invoke-virtual {v3}, Lcom/android/server/wm/TransitionController$TransitionPlayerRecord;->unlinkToDeath()V

    if-nez v1, :cond_b9

    :cond_b8
    return-void

    .line 407
    :cond_b9
    invoke-virtual {p0}, Lcom/android/server/wm/TransitionController;->flushRunningTransitions()V

    return-void
.end method

.method public updateAnimatingState()V
    .registers 7

    .line 1431
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    if-eqz v0, :cond_15

    .line 1432
    invoke-virtual {v0}, Lcom/android/server/wm/Transition;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_17

    :cond_15
    move v0, v1

    goto :goto_18

    :cond_17
    :goto_17
    move v0, v2

    :goto_18
    const v3, 0x41bfaf1

    if-eqz v0, :cond_72

    .line 1433
    iget-boolean v4, p0, Lcom/android/server/wm/TransitionController;->mAnimatingState:Z

    if-nez v4, :cond_72

    .line 1436
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v0

    sub-int/2addr v0, v2

    :goto_2a
    if-ltz v0, :cond_65

    .line 1437
    iget-object v1, p0, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    .line 1438
    iget-object v4, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    if-eqz v4, :cond_44

    invoke-virtual {v4, v1}, Lcom/android/server/wm/Transition;->shouldUsePerfHint(Lcom/android/server/wm/DisplayContent;)Z

    move-result v4

    if-eqz v4, :cond_44

    .line 1439
    invoke-virtual {v1, v2}, Lcom/android/server/wm/DisplayContent;->enableHighPerfTransition(Z)V

    goto :goto_62

    .line 1442
    :cond_44
    iget-object v4, p0, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v2

    :goto_4b
    if-ltz v4, :cond_62

    .line 1443
    iget-object v5, p0, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/Transition;

    invoke-virtual {v5, v1}, Lcom/android/server/wm/Transition;->shouldUsePerfHint(Lcom/android/server/wm/DisplayContent;)Z

    move-result v5

    if-eqz v5, :cond_5f

    .line 1444
    invoke-virtual {v1, v2}, Lcom/android/server/wm/DisplayContent;->enableHighPerfTransition(Z)V

    goto :goto_62

    :cond_5f
    add-int/lit8 v4, v4, -0x1

    goto :goto_4b

    :cond_62
    :goto_62
    add-int/lit8 v0, v0, -0x1

    goto :goto_2a

    .line 1451
    :cond_65
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mSnapshotController:Lcom/android/server/wm/SnapshotController;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/SnapshotController;->setPause(Z)V

    .line 1452
    iput-boolean v2, p0, Lcom/android/server/wm/TransitionController;->mAnimatingState:Z

    .line 1453
    const-string p0, "animating"

    invoke-static {p0, v3}, Lcom/android/server/wm/Transition;->asyncTraceBegin(Ljava/lang/String;I)V

    return-void

    :cond_72
    if-nez v0, :cond_a4

    .line 1454
    iget-boolean v0, p0, Lcom/android/server/wm/TransitionController;->mAnimatingState:Z

    if-eqz v0, :cond_a4

    .line 1455
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v0

    sub-int/2addr v0, v2

    :goto_81
    if-ltz v0, :cond_93

    .line 1456
    iget-object v2, p0, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/DisplayContent;->enableHighPerfTransition(Z)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_81

    .line 1458
    :cond_93
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    .line 1459
    iget-object v0, p0, Lcom/android/server/wm/TransitionController;->mSnapshotController:Lcom/android/server/wm/SnapshotController;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/SnapshotController;->setPause(Z)V

    .line 1460
    iput-boolean v1, p0, Lcom/android/server/wm/TransitionController;->mAnimatingState:Z

    .line 1461
    invoke-static {v3}, Lcom/android/server/wm/Transition;->asyncTraceEnd(I)V

    :cond_a4
    return-void
.end method

.method public final updateRunningRemoteAnimation(Lcom/android/server/wm/Transition;Z)V
    .registers 4

    .line 1467
    iget-object p1, p0, Lcom/android/server/wm/TransitionController;->mTransitionPlayers:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_38

    .line 1468
    :cond_9
    iget-object p1, p0, Lcom/android/server/wm/TransitionController;->mTransitionPlayers:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->getLast()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/TransitionController$TransitionPlayerRecord;

    .line 1469
    invoke-static {p1}, Lcom/android/server/wm/TransitionController$TransitionPlayerRecord;->-$$Nest$fgetmPlayerProc(Lcom/android/server/wm/TransitionController$TransitionPlayerRecord;)Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    if-nez v0, :cond_18

    goto :goto_38

    :cond_18
    if-eqz p2, :cond_23

    .line 1471
    invoke-static {p1}, Lcom/android/server/wm/TransitionController$TransitionPlayerRecord;->-$$Nest$fgetmPlayerProc(Lcom/android/server/wm/TransitionController$TransitionPlayerRecord;)Lcom/android/server/wm/WindowProcessController;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowProcessController;->setRunningRemoteAnimation(Z)V

    return-void

    .line 1472
    :cond_23
    iget-object p2, p0, Lcom/android/server/wm/TransitionController;->mPlayingTransitions:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_38

    .line 1473
    invoke-static {p1}, Lcom/android/server/wm/TransitionController$TransitionPlayerRecord;->-$$Nest$fgetmPlayerProc(Lcom/android/server/wm/TransitionController$TransitionPlayerRecord;)Lcom/android/server/wm/WindowProcessController;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/android/server/wm/WindowProcessController;->setRunningRemoteAnimation(Z)V

    .line 1474
    iget-object p0, p0, Lcom/android/server/wm/TransitionController;->mRemotePlayer:Lcom/android/server/wm/TransitionController$RemotePlayer;

    invoke-virtual {p0}, Lcom/android/server/wm/TransitionController$RemotePlayer;->clear()V

    :cond_38
    :goto_38
    return-void
.end method

.method public useFullReadyTracking()Z
    .registers 1

    .line 425
    iget-boolean p0, p0, Lcom/android/server/wm/TransitionController;->mFullReadyTracking:Z

    return p0
.end method

.method public useShellTransitionsRotation()Z
    .registers 1

    .line 421
    invoke-virtual {p0}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    move-result p0

    if-eqz p0, :cond_c

    sget-boolean p0, Lcom/android/server/wm/TransitionController;->SHELL_TRANSITIONS_ROTATION:Z

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public final validateStates()V
    .registers 8

    const/4 v0, 0x0

    move v1, v0

    .line 1143
    :goto_2
    iget-object v2, p0, Lcom/android/server/wm/TransitionController;->mStateValidators:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2a

    .line 1144
    iget-object v2, p0, Lcom/android/server/wm/TransitionController;->mStateValidators:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 1145
    invoke-virtual {p0}, Lcom/android/server/wm/TransitionController;->inTransition()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 1148
    iget-object p0, p0, Lcom/android/server/wm/TransitionController;->mStateValidators:Ljava/util/ArrayList;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void

    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1152
    :cond_2a
    iget-object v1, p0, Lcom/android/server/wm/TransitionController;->mStateValidators:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    move v1, v0

    .line 1153
    :goto_30
    iget-object v2, p0, Lcom/android/server/wm/TransitionController;->mValidateCommitVis:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const-string v3, "TransitionController"

    if-ge v1, v2, :cond_6c

    .line 1154
    iget-object v2, p0, Lcom/android/server/wm/TransitionController;->mValidateCommitVis:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    .line 1155
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v4

    if-nez v4, :cond_69

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_69

    .line 1156
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Uncommitted visibility change: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1157
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v3

    invoke-virtual {v2, v3, v0, v0}, Lcom/android/server/wm/ActivityRecord;->commitVisibility(ZZZ)V

    :cond_69
    add-int/lit8 v1, v1, 0x1

    goto :goto_30

    .line 1161
    :cond_6c
    iget-object v1, p0, Lcom/android/server/wm/TransitionController;->mValidateCommitVis:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    move v1, v0

    .line 1162
    :goto_72
    iget-object v2, p0, Lcom/android/server/wm/TransitionController;->mValidateActivityCompat:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_a5

    .line 1163
    iget-object v2, p0, Lcom/android/server/wm/TransitionController;->mValidateActivityCompat:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    .line 1164
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v4

    if-nez v4, :cond_89

    goto :goto_a2

    .line 1165
    :cond_89
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    .line 1166
    invoke-virtual {v2, v4}, Lcom/android/server/wm/WindowContainer;->getRelativePosition(Landroid/graphics/Point;)V

    .line 1167
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v5

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v2

    iget v6, v4, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    iget v4, v4, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    invoke-virtual {v5, v2, v6, v4}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    :goto_a2
    add-int/lit8 v1, v1, 0x1

    goto :goto_72

    .line 1169
    :cond_a5
    iget-object v1, p0, Lcom/android/server/wm/TransitionController;->mValidateActivityCompat:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1170
    :goto_aa
    iget-object v1, p0, Lcom/android/server/wm/TransitionController;->mValidateDisplayVis:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_ef

    .line 1171
    iget-object v1, p0, Lcom/android/server/wm/TransitionController;->mValidateDisplayVis:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayArea;

    .line 1172
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->isAttached()Z

    move-result v2

    if-eqz v2, :cond_ec

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayArea;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v2

    if-nez v2, :cond_c7

    goto :goto_ec

    .line 1173
    :cond_c7
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v2

    if-eqz v2, :cond_ec

    .line 1174
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DisplayArea became visible outside of a transition: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1175
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayArea;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayArea;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_ec
    :goto_ec
    add-int/lit8 v0, v0, 0x1

    goto :goto_aa

    .line 1178
    :cond_ef
    iget-object p0, p0, Lcom/android/server/wm/TransitionController;->mValidateDisplayVis:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public waitFor(Lcom/android/server/wm/Transition$ReadyCondition;)V
    .registers 3

    .line 1725
    iget-object p0, p0, Lcom/android/server/wm/TransitionController;->mCollectingTransition:Lcom/android/server/wm/Transition;

    if-nez p0, :cond_1f

    .line 1726
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No collecting transition available to wait for "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "TransitionController"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1727
    sget-object p0, Lcom/android/server/wm/Transition$ReadyTracker;->NULL_TRACKER:Lcom/android/server/wm/Transition$ReadyTracker;

    iput-object p0, p1, Lcom/android/server/wm/Transition$ReadyCondition;->mTracker:Lcom/android/server/wm/Transition$ReadyTracker;

    return-void

    .line 1730
    :cond_1f
    iget-object p0, p0, Lcom/android/server/wm/Transition;->mReadyTracker:Lcom/android/server/wm/Transition$ReadyTracker;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/Transition$ReadyTracker;->add(Lcom/android/server/wm/Transition$ReadyCondition;)V

    return-void
.end method
