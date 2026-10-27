.class public Lcom/android/server/wm/WindowAnimator;
.super Ljava/lang/Object;
.source "WindowAnimator.java"


# instance fields
.field public mAfterPrepareSurfacesRunnables:Ljava/util/ArrayList;

.field public final mAnimationFrameCallback:Landroid/view/Choreographer$FrameCallback;

.field public mAnimationFrameCallbackScheduled:Z

.field public final mAnimationVsyncCallback:Landroid/view/Choreographer$VsyncCallback;

.field public mChoreographer:Landroid/view/Choreographer;

.field public final mContext:Landroid/content/Context;

.field public mCurrentTime:J

.field public final mExecutor:Landroid/os/HandlerExecutor;

.field public mInitialized:Z

.field public mLastRootAnimating:Z

.field public mNotifyWhenNoAnimation:Z

.field public mPendingState:I

.field public final mPendingVisibilityUpdates:Ljava/util/ArrayList;

.field public final mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

.field public final mService:Lcom/android/server/wm/WindowManagerService;

.field public final mTransaction:Landroid/view/SurfaceControl$Transaction;


# direct methods
.method public static synthetic $r8$lambda$-TvtloJGyubjgrDRe42dfhkeA1U(Lcom/android/server/wm/WindowAnimator;Landroid/view/Choreographer$FrameData;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowAnimator;->lambda$new$3(Landroid/view/Choreographer$FrameData;)V

    return-void
.end method

.method public static synthetic $r8$lambda$h3L_t7VxUjjUNbq-ndmicV87HYM(Lcom/android/server/wm/WindowAnimator;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowAnimator;->lambda$new$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$odnUF4axNlkErEcaN926WBNQuM8(Lcom/android/server/wm/WindowAnimator;Ljava/util/ArrayList;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowAnimator;->lambda$animate$4(Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qop-nRjD2Ynebk-CoZINpktHLeo(Lcom/android/server/wm/WindowAnimator;J)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/WindowAnimator;->lambda$new$2(J)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .registers 6

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 63
    iput-boolean v0, p0, Lcom/android/server/wm/WindowAnimator;->mInitialized:Z

    .line 74
    iput-boolean v0, p0, Lcom/android/server/wm/WindowAnimator;->mNotifyWhenNoAnimation:Z

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mPendingVisibilityUpdates:Ljava/util/ArrayList;

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mAfterPrepareSurfacesRunnables:Ljava/util/ArrayList;

    .line 106
    iput-object p1, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 107
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mContext:Landroid/content/Context;

    .line 108
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iput-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 109
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl$Transaction;

    iput-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 114
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mAnimationHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/wm/WindowAnimator$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/wm/WindowAnimator$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/WindowAnimator;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->runWithScissors(Ljava/lang/Runnable;J)Z

    .line 117
    new-instance v0, Landroid/os/HandlerExecutor;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mAnimationHandler:Landroid/os/Handler;

    invoke-direct {v0, p1}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mExecutor:Landroid/os/HandlerExecutor;

    .line 119
    new-instance p1, Lcom/android/server/wm/WindowAnimator$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/android/server/wm/WindowAnimator$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/WindowAnimator;)V

    iput-object p1, p0, Lcom/android/server/wm/WindowAnimator;->mAnimationFrameCallback:Landroid/view/Choreographer$FrameCallback;

    .line 129
    new-instance p1, Lcom/android/server/wm/WindowAnimator$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lcom/android/server/wm/WindowAnimator$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/WindowAnimator;)V

    iput-object p1, p0, Lcom/android/server/wm/WindowAnimator;->mAnimationVsyncCallback:Landroid/view/Choreographer$VsyncCallback;

    return-void
.end method


# virtual methods
.method public addAfterPrepareSurfacesRunnable(Ljava/lang/Runnable;)V
    .registers 3

    .line 362
    iget-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mAfterPrepareSurfacesRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 363
    invoke-virtual {p0}, Lcom/android/server/wm/WindowAnimator;->scheduleAnimation()V

    return-void
.end method

.method public addSurfaceVisibilityUpdate(Lcom/android/server/wm/WindowContainer;)V
    .registers 3

    .line 343
    iget-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mPendingVisibilityUpdates:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 344
    iget-object p0, p0, Lcom/android/server/wm/WindowAnimator;->mPendingVisibilityUpdates:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    return-void
.end method

.method public addSurfaceVisibilityUpdateIncludingAnimatableParents(Lcom/android/server/wm/WindowContainer;)V
    .registers 2

    .line 350
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowAnimator;->addSurfaceVisibilityUpdate(Lcom/android/server/wm/WindowContainer;)V

    .line 351
    invoke-static {p1}, Lcom/android/server/wm/Transition;->getAnimatableParent(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/WindowContainer;

    move-result-object p1

    :goto_7
    if-eqz p1, :cond_11

    .line 353
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowAnimator;->addSurfaceVisibilityUpdate(Lcom/android/server/wm/WindowContainer;)V

    .line 352
    invoke-static {p1}, Lcom/android/server/wm/Transition;->getAnimatableParent(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/WindowContainer;

    move-result-object p1

    goto :goto_7

    :cond_11
    return-void
.end method

.method public final animate(J)V
    .registers 15

    .line 146
    iget-boolean v0, p0, Lcom/android/server/wm/WindowAnimator;->mInitialized:Z

    if-nez v0, :cond_5

    return-void

    .line 151
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/wm/WindowAnimator;->scheduleAnimation()V

    .line 153
    iget-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    const-wide/32 v1, 0xf4240

    .line 155
    div-long/2addr p1, v1

    iput-wide p1, p0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    .line 160
    sget-object p1, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_SHOW_TRANSACTIONS_enabled:[Z

    const/4 p2, 0x2

    aget-boolean p1, p1, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p1, :cond_25

    sget-object p1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_SHOW_TRANSACTIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v3, -0x4a6312243002c0e8L    # -1.9330192995483828E-50

    invoke-static {p1, v3, v4, v2, v1}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_25
    const-wide/16 v3, 0x20

    .line 163
    :try_start_27
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->handleCompleteDeferredRemoval()Z

    .line 165
    iget-object p1, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    .line 167
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v5

    move v6, v2

    :goto_33
    if-ge v6, v5, :cond_48

    .line 169
    invoke-virtual {v0, v6}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/DisplayContent;

    .line 172
    invoke-virtual {v7}, Lcom/android/server/wm/DisplayContent;->updateWindowsForAnimator()V

    .line 173
    invoke-virtual {v7}, Lcom/android/server/wm/DisplayContent;->prepareSurfaces()V

    add-int/lit8 v6, v6, 0x1

    goto :goto_33

    :catch_44
    move-exception p1

    move v7, v2

    goto/16 :goto_c6

    .line 176
    :cond_48
    iget-object v6, p0, Lcom/android/server/wm/WindowAnimator;->mPendingVisibilityUpdates:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    const/4 v7, 0x1

    if-nez v6, :cond_75

    .line 177
    const-string v6, "updateSurfaceVisibility"

    invoke-static {v3, v4, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 178
    iget-object v6, p0, Lcom/android/server/wm/WindowAnimator;->mPendingVisibilityUpdates:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v6, v7

    :goto_5d
    if-ltz v6, :cond_6d

    .line 179
    iget-object v8, p0, Lcom/android/server/wm/WindowAnimator;->mPendingVisibilityUpdates:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {p0, v8}, Lcom/android/server/wm/WindowAnimator;->updateSurfaceVisibility(Lcom/android/server/wm/WindowContainer;)V

    add-int/lit8 v6, v6, -0x1

    goto :goto_5d

    .line 181
    :cond_6d
    iget-object v6, p0, Lcom/android/server/wm/WindowAnimator;->mPendingVisibilityUpdates:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 182
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_75
    .catch Ljava/lang/RuntimeException; {:try_start_27 .. :try_end_75} :catch_44

    :cond_75
    move v6, v2

    move v8, v6

    :goto_77
    if-ge v6, v5, :cond_b9

    .line 186
    :try_start_79
    invoke-virtual {v0, v6}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/DisplayContent;

    .line 187
    invoke-virtual {p1}, Lcom/android/server/wm/AccessibilityController;->hasCallbacks()Z

    move-result v10

    if-eqz v10, :cond_8e

    .line 188
    iget v10, v9, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 189
    invoke-virtual {p1, v10}, Lcom/android/server/wm/AccessibilityController;->recomputeMagnifiedRegionAndDrawMagnifiedRegionBorderIfNeeded(I)V

    goto :goto_8e

    :catch_8b
    move-exception p1

    move v7, v8

    goto :goto_c6

    :cond_8e
    :goto_8e
    const/4 v10, 0x4

    const/4 v11, -0x1

    .line 193
    invoke-virtual {v9, v10, v11}, Lcom/android/server/wm/WindowContainer;->isAnimating(II)Z

    move-result v10
    :try_end_94
    .catch Ljava/lang/RuntimeException; {:try_start_79 .. :try_end_94} :catch_8b

    if-eqz v10, :cond_a4

    .line 195
    :try_start_96
    iget-boolean v8, v9, Lcom/android/server/wm/DisplayContent;->mLastContainsRunningSurfaceAnimator:Z

    if-nez v8, :cond_a2

    .line 196
    iput-boolean v7, v9, Lcom/android/server/wm/DisplayContent;->mLastContainsRunningSurfaceAnimator:Z

    .line 197
    invoke-virtual {v9, v7}, Lcom/android/server/wm/DisplayContent;->enableHighFrameRate(Z)V
    :try_end_9f
    .catch Ljava/lang/RuntimeException; {:try_start_96 .. :try_end_9f} :catch_a0

    goto :goto_a2

    :catch_a0
    move-exception p1

    goto :goto_c6

    :cond_a2
    :goto_a2
    move v8, v7

    goto :goto_ad

    .line 199
    :cond_a4
    :try_start_a4
    iget-boolean v10, v9, Lcom/android/server/wm/DisplayContent;->mLastContainsRunningSurfaceAnimator:Z

    if-eqz v10, :cond_ad

    .line 200
    iput-boolean v2, v9, Lcom/android/server/wm/DisplayContent;->mLastContainsRunningSurfaceAnimator:Z

    .line 201
    invoke-virtual {v9, v2}, Lcom/android/server/wm/DisplayContent;->enableHighFrameRate(Z)V

    .line 203
    :cond_ad
    :goto_ad
    iget-object v10, p0, Lcom/android/server/wm/WindowAnimator;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v9}, Lcom/android/server/wm/DisplayArea;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v9

    invoke-virtual {v10, v9}, Landroid/view/SurfaceControl$Transaction;->merge(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    add-int/lit8 v6, v6, 0x1

    goto :goto_77

    .line 206
    :cond_b9
    invoke-virtual {p0}, Lcom/android/server/wm/WindowAnimator;->cancelAnimation()V

    .line 208
    iget-object p1, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mWatermark:Lcom/android/server/wm/Watermark;

    if-eqz p1, :cond_ce

    .line 209
    invoke-virtual {p1}, Lcom/android/server/wm/Watermark;->drawIfNeeded()V
    :try_end_c5
    .catch Ljava/lang/RuntimeException; {:try_start_a4 .. :try_end_c5} :catch_8b

    goto :goto_ce

    .line 213
    :goto_c6
    const-string v5, "WindowManager"

    const-string v6, "Unhandled exception in Window Manager"

    invoke-static {v5, v6, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v8, v7

    .line 216
    :cond_ce
    :goto_ce
    invoke-virtual {v0, p0}, Lcom/android/server/wm/RootWindowContainer;->hasPendingLayoutChanges(Lcom/android/server/wm/WindowAnimator;)Z

    move-result p1

    if-eqz p1, :cond_db

    .line 218
    iget-object p1, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    .line 221
    :cond_db
    const-string p1, "animating"

    if-eqz v8, :cond_e6

    iget-boolean v0, p0, Lcom/android/server/wm/WindowAnimator;->mLastRootAnimating:Z

    if-nez v0, :cond_e6

    .line 222
    invoke-static {v3, v4, p1, v2}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    :cond_e6
    if-nez v8, :cond_f6

    .line 224
    iget-boolean v0, p0, Lcom/android/server/wm/WindowAnimator;->mLastRootAnimating:Z

    if-eqz v0, :cond_f6

    .line 225
    iget-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    .line 226
    invoke-static {v3, v4, p1, v2}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 228
    :cond_f6
    iput-boolean v8, p0, Lcom/android/server/wm/WindowAnimator;->mLastRootAnimating:Z

    .line 230
    iget-object p1, p0, Lcom/android/server/wm/WindowAnimator;->mAfterPrepareSurfacesRunnables:Ljava/util/ArrayList;

    .line 231
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_113

    .line 232
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mAfterPrepareSurfacesRunnables:Ljava/util/ArrayList;

    .line 233
    iget-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v5, p0, Lcom/android/server/wm/WindowAnimator;->mExecutor:Landroid/os/HandlerExecutor;

    new-instance v6, Lcom/android/server/wm/WindowAnimator$$ExternalSyntheticLambda3;

    invoke-direct {v6, p0, p1}, Lcom/android/server/wm/WindowAnimator$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/wm/WindowAnimator;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v5, v6}, Landroid/view/SurfaceControl$Transaction;->addTransactionCommittedListener(Ljava/util/concurrent/Executor;Landroid/view/SurfaceControl$TransactionCommittedListener;)Landroid/view/SurfaceControl$Transaction;

    .line 243
    :cond_113
    const-string p1, "applyTransaction"

    invoke-static {v3, v4, p1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 244
    iget-object p1, p0, Lcom/android/server/wm/WindowAnimator;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 245
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 246
    iput v2, p0, Lcom/android/server/wm/WindowAnimator;->mPendingState:I

    .line 247
    iget-object p1, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mWindowTracing:Lcom/android/server/wm/WindowTracing;

    const-string v0, "WindowAnimator"

    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowTracing;->logState(Ljava/lang/String;)V

    .line 248
    sget-object p1, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_SHOW_TRANSACTIONS_enabled:[Z

    aget-boolean p1, p1, p2

    if-eqz p1, :cond_13b

    sget-object p1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_SHOW_TRANSACTIONS:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v3, -0x376c11a3a0d0c7a2L    # -4.340608548080452E41

    invoke-static {p1, v3, v4, v2, v1}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 250
    :cond_13b
    iget-object p0, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    invoke-virtual {p0}, Lcom/android/server/wm/TaskOrganizerController;->dispatchPendingEvents()V

    return-void
.end method

.method public applyPendingTransaction()V
    .registers 7

    .line 303
    const-string v0, "applyPendingTransaction"

    const-wide/16 v1, 0x20

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    const/4 v0, 0x0

    .line 304
    iput v0, p0, Lcom/android/server/wm/WindowAnimator;->mPendingState:I

    .line 305
    iget-object v3, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_27

    .line 307
    iget-object p0, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    goto :goto_44

    :cond_27
    :goto_27
    if-ge v0, v3, :cond_3f

    .line 310
    iget-object v4, p0, Lcom/android/server/wm/WindowAnimator;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v5, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v5, v0}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayArea;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/SurfaceControl$Transaction;->merge(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    .line 312
    :cond_3f
    iget-object p0, p0, Lcom/android/server/wm/WindowAnimator;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 314
    :goto_44
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method public final cancelAnimation()V
    .registers 2

    .line 288
    iget-boolean v0, p0, Lcom/android/server/wm/WindowAnimator;->mAnimationFrameCallbackScheduled:Z

    if-eqz v0, :cond_e

    const/4 v0, 0x0

    .line 289
    iput-boolean v0, p0, Lcom/android/server/wm/WindowAnimator;->mAnimationFrameCallbackScheduled:Z

    .line 293
    iget-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mChoreographer:Landroid/view/Choreographer;

    iget-object p0, p0, Lcom/android/server/wm/WindowAnimator;->mAnimationFrameCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    :cond_e
    return-void
.end method

.method public dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .registers 8

    .line 259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 261
    :goto_12
    iget-object v2, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_3a

    .line 262
    iget-object v2, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/DisplayContent;

    .line 263
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v3, ":"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 264
    invoke-virtual {v2, p1, v0}, Lcom/android/server/wm/DisplayContent;->dumpWindowAnimators(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 265
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 268
    :cond_3a
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    if-eqz p3, :cond_50

    .line 271
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "mCurrentTime="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 272
    iget-wide p2, p0, Lcom/android/server/wm/WindowAnimator;->mCurrentTime:J

    invoke-static {p2, p3}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_50
    return-void
.end method

.method public isAnimationScheduled()Z
    .registers 1

    .line 299
    iget-boolean p0, p0, Lcom/android/server/wm/WindowAnimator;->mAnimationFrameCallbackScheduled:Z

    return p0
.end method

.method public final synthetic lambda$animate$4(Ljava/util/ArrayList;)V
    .registers 5

    .line 234
    iget-object p0, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter p0

    .line 236
    :try_start_8
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_d
    if-ge v1, v0, :cond_1d

    .line 237
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :catchall_1b
    move-exception p1

    goto :goto_25

    .line 239
    :cond_1d
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 240
    monitor-exit p0
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_1b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_25
    :try_start_25
    monitor-exit p0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_1b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public final synthetic lambda$new$1()V
    .registers 2

    .line 115
    invoke-static {}, Landroid/view/Choreographer;->getSfInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mChoreographer:Landroid/view/Choreographer;

    return-void
.end method

.method public final synthetic lambda$new$2(J)V
    .registers 5

    .line 121
    iget-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    const/4 v1, 0x0

    .line 122
    :try_start_9
    iput-boolean v1, p0, Lcom/android/server/wm/WindowAnimator;->mAnimationFrameCallbackScheduled:Z

    .line 123
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/WindowAnimator;->animate(J)V

    .line 124
    iget-boolean p1, p0, Lcom/android/server/wm/WindowAnimator;->mNotifyWhenNoAnimation:Z

    if-eqz p1, :cond_20

    iget-boolean p1, p0, Lcom/android/server/wm/WindowAnimator;->mLastRootAnimating:Z

    if-nez p1, :cond_20

    .line 125
    iget-object p0, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    goto :goto_20

    :catchall_1e
    move-exception p0

    goto :goto_25

    .line 127
    :cond_20
    :goto_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_9 .. :try_end_21} :catchall_1e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_25
    :try_start_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_1e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final synthetic lambda$new$3(Landroid/view/Choreographer$FrameData;)V
    .registers 5

    .line 131
    iget-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    const/4 v1, 0x0

    .line 132
    :try_start_9
    iput-boolean v1, p0, Lcom/android/server/wm/WindowAnimator;->mAnimationFrameCallbackScheduled:Z

    .line 133
    invoke-virtual {p1}, Landroid/view/Choreographer$FrameData;->getFrameTimeNanos()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/WindowAnimator;->animate(J)V

    .line 134
    iget-boolean p1, p0, Lcom/android/server/wm/WindowAnimator;->mNotifyWhenNoAnimation:Z

    if-eqz p1, :cond_24

    iget-boolean p1, p0, Lcom/android/server/wm/WindowAnimator;->mLastRootAnimating:Z

    if-nez p1, :cond_24

    .line 135
    iget-object p0, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    goto :goto_24

    :catchall_22
    move-exception p0

    goto :goto_29

    .line 137
    :cond_24
    :goto_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_9 .. :try_end_25} :catchall_22

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_29
    :try_start_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_22

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public ready()V
    .registers 2

    const/4 v0, 0x1

    .line 142
    iput-boolean v0, p0, Lcom/android/server/wm/WindowAnimator;->mInitialized:Z

    return-void
.end method

.method public scheduleAnimation()V
    .registers 2

    .line 277
    iget-boolean v0, p0, Lcom/android/server/wm/WindowAnimator;->mAnimationFrameCallbackScheduled:Z

    if-nez v0, :cond_e

    const/4 v0, 0x1

    .line 278
    iput-boolean v0, p0, Lcom/android/server/wm/WindowAnimator;->mAnimationFrameCallbackScheduled:Z

    .line 282
    iget-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mChoreographer:Landroid/view/Choreographer;

    iget-object p0, p0, Lcom/android/server/wm/WindowAnimator;->mAnimationFrameCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    :cond_e
    return-void
.end method

.method public final updateSurfaceVisibility(Lcom/android/server/wm/WindowContainer;)V
    .registers 4

    .line 322
    iget-object v0, p1, Lcom/android/server/wm/WindowContainer;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_5

    goto :goto_24

    .line 325
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/WindowAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget-object v0, v0, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 326
    invoke-virtual {v0, p1}, Lcom/android/server/wm/TransitionController;->isCollecting(Lcom/android/server/wm/WindowContainer;)Z

    move-result v1

    if-nez v1, :cond_24

    invoke-virtual {v0, p1}, Lcom/android/server/wm/TransitionController;->isPlayingTarget(Lcom/android/server/wm/WindowContainer;)Z

    move-result v1

    if-eqz v1, :cond_18

    goto :goto_24

    .line 330
    :cond_18
    invoke-virtual {v0, p1}, Lcom/android/server/wm/TransitionController;->isParticipantOfPlayingTransition(Lcom/android/server/wm/WindowContainer;)Z

    move-result v0

    if-eqz v0, :cond_1f

    goto :goto_24

    .line 335
    :cond_1f
    iget-object p0, p0, Lcom/android/server/wm/WindowAnimator;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowContainer;->updateSurfaceVisibility(Landroid/view/SurfaceControl$Transaction;)V

    :cond_24
    :goto_24
    return-void
.end method
