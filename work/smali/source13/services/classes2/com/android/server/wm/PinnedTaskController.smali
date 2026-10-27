.class Lcom/android/server/wm/PinnedTaskController;
.super Ljava/lang/Object;
.source "PinnedTaskController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/PinnedTaskController$PinnedTaskListenerDeathHandler;
    }
.end annotation


# static fields
.field private static final DEFER_ORIENTATION_CHANGE_TIMEOUT_MS:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "WindowManager"


# instance fields
.field private mDeferOrientationChanging:Z

.field private final mDeferOrientationTimeoutRunnable:Ljava/lang/Runnable;

.field private mDestRotatedBounds:Landroid/graphics/Rect;

.field private final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field private mFreezingTaskConfig:Z

.field private mImeHeight:I

.field private mIsImeShowing:Z

.field private mMaxAspectRatio:F

.field private mMinAspectRatio:F

.field private mPinnedTaskListener:Landroid/view/IPinnedTaskListener;

.field private final mPinnedTaskListenerDeathHandler:Lcom/android/server/wm/PinnedTaskController$PinnedTaskListenerDeathHandler;

.field private mPipTransaction:Landroid/window/PictureInPictureSurfaceTransaction;

.field private final mService:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method static bridge synthetic -$$Nest$fgetmDeferOrientationTimeoutRunnable(Lcom/android/server/wm/PinnedTaskController;)Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/PinnedTaskController;->mDeferOrientationTimeoutRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmService(Lcom/android/server/wm/PinnedTaskController;)Lcom/android/server/wm/WindowManagerService;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/PinnedTaskController;->mService:Lcom/android/server/wm/WindowManagerService;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmFreezingTaskConfig(Lcom/android/server/wm/PinnedTaskController;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/wm/PinnedTaskController;->mFreezingTaskConfig:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPinnedTaskListener(Lcom/android/server/wm/PinnedTaskController;Landroid/view/IPinnedTaskListener;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/wm/PinnedTaskController;->mPinnedTaskListener:Landroid/view/IPinnedTaskListener;

    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V
    .registers 5
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Lcom/android/server/wm/PinnedTaskController$PinnedTaskListenerDeathHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/PinnedTaskController$PinnedTaskListenerDeathHandler;-><init>(Lcom/android/server/wm/PinnedTaskController;Lcom/android/server/wm/PinnedTaskController$PinnedTaskListenerDeathHandler-IA;)V

    iput-object v0, p0, Lcom/android/server/wm/PinnedTaskController;->mPinnedTaskListenerDeathHandler:Lcom/android/server/wm/PinnedTaskController$PinnedTaskListenerDeathHandler;

    .line 109
    iput-object p1, p0, Lcom/android/server/wm/PinnedTaskController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 110
    iput-object p2, p0, Lcom/android/server/wm/PinnedTaskController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 111
    new-instance v0, Lcom/android/server/wm/PinnedTaskController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/wm/PinnedTaskController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/PinnedTaskController;)V

    iput-object v0, p0, Lcom/android/server/wm/PinnedTaskController;->mDeferOrientationTimeoutRunnable:Ljava/lang/Runnable;

    .line 119
    invoke-direct {p0}, Lcom/android/server/wm/PinnedTaskController;->reloadResources()V

    .line 120
    return-void
.end method

.method private continueOrientationChange()V
    .registers 3

    .line 232
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/PinnedTaskController;->mDeferOrientationChanging:Z

    .line 233
    iget-object v0, p0, Lcom/android/server/wm/PinnedTaskController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v1, p0, Lcom/android/server/wm/PinnedTaskController;->mDeferOrientationTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 234
    iget-object v0, p0, Lcom/android/server/wm/PinnedTaskController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getLastOrientationSource()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    .line 235
    .local v0, "orientationSource":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->isAppTransitioning()Z

    move-result v1

    if-nez v1, :cond_1f

    .line 236
    iget-object v1, p0, Lcom/android/server/wm/PinnedTaskController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->continueUpdateOrientationForDiffOrienLaunchingApp()V

    .line 238
    :cond_1f
    return-void
.end method

.method static synthetic lambda$deferOrientationChangeForEnteringPipFromFullScreenIfNeeded$1(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 2
    .param p0, "a"    # Lcom/android/server/wm/ActivityRecord;

    .line 175
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->providesOrientation()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->inMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method private notifyImeVisibilityChanged(ZI)V
    .registers 6
    .param p1, "imeVisible"    # Z
    .param p2, "imeHeight"    # I

    .line 369
    iget-object v0, p0, Lcom/android/server/wm/PinnedTaskController;->mPinnedTaskListener:Landroid/view/IPinnedTaskListener;

    if-eqz v0, :cond_10

    .line 371
    :try_start_4
    invoke-interface {v0, p1, p2}, Landroid/view/IPinnedTaskListener;->onImeVisibilityChanged(ZI)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    .line 374
    goto :goto_10

    .line 372
    :catch_8
    move-exception v0

    .line 373
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "WindowManager"

    const-string v2, "Error delivering bounds changed event."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 376
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_10
    :goto_10
    return-void
.end method

.method private notifyMovementBoundsChanged(Z)V
    .registers 6
    .param p1, "fromImeAdjustment"    # Z

    .line 382
    iget-object v0, p0, Lcom/android/server/wm/PinnedTaskController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 383
    iget-object v1, p0, Lcom/android/server/wm/PinnedTaskController;->mPinnedTaskListener:Landroid/view/IPinnedTaskListener;

    if-nez v1, :cond_11

    .line 384
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_22

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 387
    :cond_11
    :try_start_11
    invoke-interface {v1, p1}, Landroid/view/IPinnedTaskListener;->onMovementBoundsChanged(Z)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_14} :catch_15
    .catchall {:try_start_11 .. :try_end_14} :catchall_22

    .line 390
    goto :goto_1d

    .line 388
    :catch_15
    move-exception v1

    .line 389
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_16
    const-string v2, "WindowManager"

    const-string v3, "Error delivering actions changed event."

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 391
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_16 .. :try_end_1e} :catchall_22

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 392
    return-void

    .line 391
    :catchall_22
    move-exception v1

    :try_start_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method private reloadResources()V
    .registers 3

    .line 132
    iget-object v0, p0, Lcom/android/server/wm/PinnedTaskController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 133
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x10500cf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v1

    iput v1, p0, Lcom/android/server/wm/PinnedTaskController;->mMinAspectRatio:F

    .line 135
    const v1, 0x10500ce

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v1

    iput v1, p0, Lcom/android/server/wm/PinnedTaskController;->mMaxAspectRatio:F

    .line 137
    return-void
.end method


# virtual methods
.method deferOrientationChangeForEnteringPipFromFullScreenIfNeeded()V
    .registers 8

    .line 174
    iget-object v0, p0, Lcom/android/server/wm/PinnedTaskController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    new-instance v1, Lcom/android/server/wm/PinnedTaskController$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/server/wm/PinnedTaskController$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayContent;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 178
    .local v0, "topFullscreen":Lcom/android/server/wm/ActivityRecord;
    if-eqz v0, :cond_4e

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->hasFixedRotationTransform()Z

    move-result v1

    if-nez v1, :cond_4e

    iget-boolean v1, v0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v1, :cond_18

    goto :goto_4e

    .line 183
    :cond_18
    iget-object v1, p0, Lcom/android/server/wm/PinnedTaskController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/DisplayContent;->rotationForActivityInDifferentOrientation(Lcom/android/server/wm/ActivityRecord;)I

    move-result v1

    .line 185
    .local v1, "rotation":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_22

    .line 186
    return-void

    .line 191
    :cond_22
    iget-object v2, p0, Lcom/android/server/wm/PinnedTaskController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/wm/DisplayContent;->setFixedRotationLaunchingApp(Lcom/android/server/wm/ActivityRecord;I)V

    .line 192
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/wm/PinnedTaskController;->mDeferOrientationChanging:Z

    .line 193
    iget-object v2, p0, Lcom/android/server/wm/PinnedTaskController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v3, p0, Lcom/android/server/wm/PinnedTaskController;->mDeferOrientationTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowManagerService$H;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 194
    const/high16 v2, 0x3f800000    # 1.0f

    iget-object v3, p0, Lcom/android/server/wm/PinnedTaskController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->getCurrentAnimatorScale()F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 195
    .local v2, "animatorScale":F
    iget-object v3, p0, Lcom/android/server/wm/PinnedTaskController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v4, p0, Lcom/android/server/wm/PinnedTaskController;->mDeferOrientationTimeoutRunnable:Ljava/lang/Runnable;

    const/high16 v5, 0x447a0000    # 1000.0f

    mul-float/2addr v5, v2

    float-to-int v5, v5

    int-to-long v5, v5

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/wm/WindowManagerService$H;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 197
    return-void

    .line 181
    .end local v1    # "rotation":I
    .end local v2    # "animatorScale":F
    :cond_4e
    :goto_4e
    return-void
.end method

.method dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 5
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 395
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "PinnedTaskController"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 396
    iget-boolean v0, p0, Lcom/android/server/wm/PinnedTaskController;->mDeferOrientationChanging:Z

    if-eqz v0, :cond_30

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  mDeferOrientationChanging=true"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 397
    :cond_30
    iget-boolean v0, p0, Lcom/android/server/wm/PinnedTaskController;->mFreezingTaskConfig:Z

    if-eqz v0, :cond_4a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  mFreezingTaskConfig=true"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 398
    :cond_4a
    iget-object v0, p0, Lcom/android/server/wm/PinnedTaskController;->mDestRotatedBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_6a

    .line 399
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  mPendingBounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/PinnedTaskController;->mDestRotatedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 401
    :cond_6a
    iget-object v0, p0, Lcom/android/server/wm/PinnedTaskController;->mPipTransaction:Landroid/window/PictureInPictureSurfaceTransaction;

    if-eqz v0, :cond_8a

    .line 402
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  mPipTransaction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/PinnedTaskController;->mPipTransaction:Landroid/window/PictureInPictureSurfaceTransaction;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 404
    :cond_8a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  mIsImeShowing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/wm/PinnedTaskController;->mIsImeShowing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 405
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  mImeHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/PinnedTaskController;->mImeHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 406
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  mMinAspectRatio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/PinnedTaskController;->mMinAspectRatio:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 407
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  mMaxAspectRatio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/PinnedTaskController;->mMaxAspectRatio:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 408
    return-void
.end method

.method isFreezingTaskConfig(Lcom/android/server/wm/Task;)Z
    .registers 3
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 320
    iget-boolean v0, p0, Lcom/android/server/wm/PinnedTaskController;->mFreezingTaskConfig:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/server/wm/PinnedTaskController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 321
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->getRootPinnedTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-ne p1, v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    .line 320
    :goto_13
    return v0
.end method

.method public isValidExpandedPictureInPictureAspectRatio(F)Z
    .registers 3
    .param p1, "aspectRatio"    # F

    .line 165
    iget v0, p0, Lcom/android/server/wm/PinnedTaskController;->mMinAspectRatio:F

    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-gtz v0, :cond_13

    iget v0, p0, Lcom/android/server/wm/PinnedTaskController;->mMaxAspectRatio:F

    .line 166
    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-lez v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    .line 165
    :goto_14
    return v0
.end method

.method public isValidPictureInPictureAspectRatio(F)Z
    .registers 3
    .param p1, "aspectRatio"    # F

    .line 157
    iget v0, p0, Lcom/android/server/wm/PinnedTaskController;->mMinAspectRatio:F

    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-gtz v0, :cond_12

    iget v0, p0, Lcom/android/server/wm/PinnedTaskController;->mMaxAspectRatio:F

    .line 158
    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-gtz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    .line 157
    :goto_13
    return v0
.end method

.method synthetic lambda$new$0$com-android-server-wm-PinnedTaskController()V
    .registers 3

    .line 112
    iget-object v0, p0, Lcom/android/server/wm/PinnedTaskController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 113
    iget-boolean v1, p0, Lcom/android/server/wm/PinnedTaskController;->mDeferOrientationChanging:Z

    if-eqz v1, :cond_16

    .line 114
    invoke-direct {p0}, Lcom/android/server/wm/PinnedTaskController;->continueOrientationChange()V

    .line 115
    iget-object v1, p0, Lcom/android/server/wm/PinnedTaskController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    .line 117
    :cond_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_1b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 118
    return-void

    .line 117
    :catchall_1b
    move-exception v1

    :try_start_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method onActivityHidden(Landroid/content/ComponentName;)V
    .registers 5
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .line 337
    iget-object v0, p0, Lcom/android/server/wm/PinnedTaskController;->mPinnedTaskListener:Landroid/view/IPinnedTaskListener;

    if-nez v0, :cond_5

    return-void

    .line 339
    :cond_5
    :try_start_5
    invoke-interface {v0, p1}, Landroid/view/IPinnedTaskListener;->onActivityHidden(Landroid/content/ComponentName;)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_8} :catch_9

    .line 342
    goto :goto_11

    .line 340
    :catch_9
    move-exception v0

    .line 341
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "WindowManager"

    const-string v2, "Error delivering reset reentry fraction event."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 343
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_11
    return-void
.end method

.method onCancelFixedRotationTransform()V
    .registers 2

    .line 326
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/PinnedTaskController;->mFreezingTaskConfig:Z

    .line 327
    iput-boolean v0, p0, Lcom/android/server/wm/PinnedTaskController;->mDeferOrientationChanging:Z

    .line 328
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/PinnedTaskController;->mDestRotatedBounds:Landroid/graphics/Rect;

    .line 329
    iput-object v0, p0, Lcom/android/server/wm/PinnedTaskController;->mPipTransaction:Landroid/window/PictureInPictureSurfaceTransaction;

    .line 330
    return-void
.end method

.method onPostDisplayConfigurationChanged()V
    .registers 2

    .line 124
    invoke-direct {p0}, Lcom/android/server/wm/PinnedTaskController;->reloadResources()V

    .line 125
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/PinnedTaskController;->mFreezingTaskConfig:Z

    .line 126
    return-void
.end method

.method registerPinnedTaskListener(Landroid/view/IPinnedTaskListener;)V
    .registers 5
    .param p1, "listener"    # Landroid/view/IPinnedTaskListener;

    .line 144
    :try_start_0
    invoke-interface {p1}, Landroid/view/IPinnedTaskListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/PinnedTaskController;->mPinnedTaskListenerDeathHandler:Lcom/android/server/wm/PinnedTaskController$PinnedTaskListenerDeathHandler;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 145
    iput-object p1, p0, Lcom/android/server/wm/PinnedTaskController;->mPinnedTaskListener:Landroid/view/IPinnedTaskListener;

    .line 146
    iget-boolean v0, p0, Lcom/android/server/wm/PinnedTaskController;->mIsImeShowing:Z

    iget v1, p0, Lcom/android/server/wm/PinnedTaskController;->mImeHeight:I

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/PinnedTaskController;->notifyImeVisibilityChanged(ZI)V

    .line 147
    invoke-direct {p0, v2}, Lcom/android/server/wm/PinnedTaskController;->notifyMovementBoundsChanged(Z)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_16} :catch_17

    .line 150
    goto :goto_1f

    .line 148
    :catch_17
    move-exception v0

    .line 149
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "WindowManager"

    const-string v2, "Failed to register pinned task listener"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 151
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1f
    return-void
.end method

.method setAdjustedForIme(ZI)V
    .registers 6
    .param p1, "adjustedForIme"    # Z
    .param p2, "imeHeight"    # I

    .line 353
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_8

    if-lez p2, :cond_8

    move v2, v0

    goto :goto_9

    :cond_8
    move v2, v1

    .line 354
    .local v2, "imeShowing":Z
    :goto_9
    if-eqz v2, :cond_c

    move v1, p2

    :cond_c
    move p2, v1

    .line 355
    iget-boolean v1, p0, Lcom/android/server/wm/PinnedTaskController;->mIsImeShowing:Z

    if-ne v2, v1, :cond_16

    iget v1, p0, Lcom/android/server/wm/PinnedTaskController;->mImeHeight:I

    if-ne p2, v1, :cond_16

    .line 356
    return-void

    .line 359
    :cond_16
    iput-boolean v2, p0, Lcom/android/server/wm/PinnedTaskController;->mIsImeShowing:Z

    .line 360
    iput p2, p0, Lcom/android/server/wm/PinnedTaskController;->mImeHeight:I

    .line 361
    invoke-direct {p0, v2, p2}, Lcom/android/server/wm/PinnedTaskController;->notifyImeVisibilityChanged(ZI)V

    .line 362
    invoke-direct {p0, v0}, Lcom/android/server/wm/PinnedTaskController;->notifyMovementBoundsChanged(Z)V

    .line 363
    return-void
.end method

.method setEnterPipBounds(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 209
    iget-boolean v0, p0, Lcom/android/server/wm/PinnedTaskController;->mDeferOrientationChanging:Z

    if-nez v0, :cond_5

    .line 210
    return-void

    .line 212
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/PinnedTaskController;->mFreezingTaskConfig:Z

    .line 213
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/android/server/wm/PinnedTaskController;->mDestRotatedBounds:Landroid/graphics/Rect;

    .line 214
    iget-object v0, p0, Lcom/android/server/wm/PinnedTaskController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 215
    invoke-direct {p0}, Lcom/android/server/wm/PinnedTaskController;->continueOrientationChange()V

    .line 217
    :cond_1c
    return-void
.end method

.method setEnterPipTransaction(Landroid/window/PictureInPictureSurfaceTransaction;)V
    .registers 3
    .param p1, "tx"    # Landroid/window/PictureInPictureSurfaceTransaction;

    .line 226
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/PinnedTaskController;->mFreezingTaskConfig:Z

    .line 227
    iput-object p1, p0, Lcom/android/server/wm/PinnedTaskController;->mPipTransaction:Landroid/window/PictureInPictureSurfaceTransaction;

    .line 228
    return-void
.end method

.method shouldDeferOrientationChange()Z
    .registers 2

    .line 201
    iget-boolean v0, p0, Lcom/android/server/wm/PinnedTaskController;->mDeferOrientationChanging:Z

    return v0
.end method

.method startSeamlessRotationIfNeeded(Landroid/view/SurfaceControl$Transaction;II)V
    .registers 25
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "oldRotation"    # I
    .param p3, "newRotation"    # I

    .line 247
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/server/wm/PinnedTaskController;->mDestRotatedBounds:Landroid/graphics/Rect;

    .line 248
    .local v2, "bounds":Landroid/graphics/Rect;
    iget-object v3, v0, Lcom/android/server/wm/PinnedTaskController;->mPipTransaction:Landroid/window/PictureInPictureSurfaceTransaction;

    .line 249
    .local v3, "pipTx":Landroid/window/PictureInPictureSurfaceTransaction;
    if-eqz v3, :cond_11

    iget-object v4, v3, Landroid/window/PictureInPictureSurfaceTransaction;->mPosition:Landroid/graphics/PointF;

    if-nez v4, :cond_f

    goto :goto_11

    :cond_f
    const/4 v4, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v4, 0x1

    .line 250
    .local v4, "emptyPipPositionTx":Z
    :goto_12
    if-nez v2, :cond_17

    if-eqz v4, :cond_17

    .line 251
    return-void

    .line 253
    :cond_17
    iget-object v5, v0, Lcom/android/server/wm/PinnedTaskController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v5

    .line 254
    .local v5, "taskArea":Lcom/android/server/wm/TaskDisplayArea;
    invoke-virtual {v5}, Lcom/android/server/wm/TaskDisplayArea;->getRootPinnedTask()Lcom/android/server/wm/Task;

    move-result-object v6

    .line 255
    .local v6, "pinnedTask":Lcom/android/server/wm/Task;
    if-nez v6, :cond_24

    .line 256
    return-void

    .line 259
    :cond_24
    const/4 v7, 0x0

    iput-object v7, v0, Lcom/android/server/wm/PinnedTaskController;->mDestRotatedBounds:Landroid/graphics/Rect;

    .line 260
    iput-object v7, v0, Lcom/android/server/wm/PinnedTaskController;->mPipTransaction:Landroid/window/PictureInPictureSurfaceTransaction;

    .line 261
    invoke-virtual {v5}, Lcom/android/server/wm/TaskDisplayArea;->getBounds()Landroid/graphics/Rect;

    move-result-object v8

    .line 262
    .local v8, "areaBounds":Landroid/graphics/Rect;
    const/16 v9, 0x9

    const-string v10, "WindowManager"

    if-nez v4, :cond_b2

    .line 265
    iget-object v7, v3, Landroid/window/PictureInPictureSurfaceTransaction;->mPosition:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->x:F

    .line 266
    .local v7, "dx":F
    iget-object v11, v3, Landroid/window/PictureInPictureSurfaceTransaction;->mPosition:Landroid/graphics/PointF;

    iget v11, v11, Landroid/graphics/PointF;->y:F

    .line 267
    .local v11, "dy":F
    invoke-virtual {v3}, Landroid/window/PictureInPictureSurfaceTransaction;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v12

    .line 268
    .local v12, "matrix":Landroid/graphics/Matrix;
    iget v13, v3, Landroid/window/PictureInPictureSurfaceTransaction;->mRotation:F

    const/high16 v14, 0x42b40000    # 90.0f

    cmpl-float v13, v13, v14

    const/high16 v15, -0x3d4c0000    # -90.0f

    if-nez v13, :cond_5a

    .line 269
    iget-object v13, v3, Landroid/window/PictureInPictureSurfaceTransaction;->mPosition:Landroid/graphics/PointF;

    iget v7, v13, Landroid/graphics/PointF;->y:F

    .line 270
    iget v13, v8, Landroid/graphics/Rect;->right:I

    int-to-float v13, v13

    iget-object v14, v3, Landroid/window/PictureInPictureSurfaceTransaction;->mPosition:Landroid/graphics/PointF;

    iget v14, v14, Landroid/graphics/PointF;->x:F

    sub-float v11, v13, v14

    .line 271
    invoke-virtual {v12, v15}, Landroid/graphics/Matrix;->postRotate(F)Z

    goto :goto_70

    .line 272
    :cond_5a
    iget v13, v3, Landroid/window/PictureInPictureSurfaceTransaction;->mRotation:F

    cmpl-float v13, v13, v15

    if-nez v13, :cond_70

    .line 273
    iget v13, v8, Landroid/graphics/Rect;->bottom:I

    int-to-float v13, v13

    iget-object v15, v3, Landroid/window/PictureInPictureSurfaceTransaction;->mPosition:Landroid/graphics/PointF;

    iget v15, v15, Landroid/graphics/PointF;->y:F

    sub-float v7, v13, v15

    .line 274
    iget-object v13, v3, Landroid/window/PictureInPictureSurfaceTransaction;->mPosition:Landroid/graphics/PointF;

    iget v11, v13, Landroid/graphics/PointF;->x:F

    .line 275
    invoke-virtual {v12, v14}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 277
    :cond_70
    :goto_70
    invoke-virtual {v12, v7, v11}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 278
    invoke-virtual {v6}, Lcom/android/server/wm/Task;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v13

    .line 279
    .local v13, "leash":Landroid/view/SurfaceControl;
    new-array v9, v9, [F

    invoke-virtual {v1, v13, v12, v9}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;Landroid/graphics/Matrix;[F)Landroid/view/SurfaceControl$Transaction;

    .line 280
    invoke-virtual {v3}, Landroid/window/PictureInPictureSurfaceTransaction;->hasCornerRadiusSet()Z

    move-result v9

    if-eqz v9, :cond_87

    .line 281
    iget v9, v3, Landroid/window/PictureInPictureSurfaceTransaction;->mCornerRadius:F

    invoke-virtual {v1, v13, v9}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 283
    :cond_87
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Seamless rotation PiP tx="

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v14, " pos="

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v14, ","

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    return-void

    .line 287
    .end local v7    # "dx":F
    .end local v11    # "dy":F
    .end local v12    # "matrix":Landroid/graphics/Matrix;
    .end local v13    # "leash":Landroid/view/SurfaceControl;
    :cond_b2
    invoke-virtual {v6}, Lcom/android/server/wm/Task;->getPictureInPictureParams()Landroid/app/PictureInPictureParams;

    move-result-object v11

    .line 288
    .local v11, "params":Landroid/app/PictureInPictureParams;
    if-eqz v11, :cond_c3

    invoke-virtual {v11}, Landroid/app/PictureInPictureParams;->hasSourceBoundsHint()Z

    move-result v12

    if-eqz v12, :cond_c3

    .line 289
    invoke-virtual {v11}, Landroid/app/PictureInPictureParams;->getSourceRectHint()Landroid/graphics/Rect;

    move-result-object v7

    goto :goto_c4

    .line 290
    :cond_c3
    nop

    :goto_c4
    nop

    .line 291
    .local v7, "sourceHintRect":Landroid/graphics/Rect;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Seamless rotation PiP bounds="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " hintRect="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    invoke-static/range {p2 .. p3}, Landroid/util/RotationUtils;->deltaRotation(II)I

    move-result v10

    .line 294
    .local v10, "rotationDelta":I
    if-eqz v7, :cond_11a

    const/4 v12, 0x3

    if-ne v10, v12, :cond_11a

    .line 295
    invoke-virtual {v6}, Lcom/android/server/wm/Task;->getDisplayCutoutInsets()Landroid/graphics/Rect;

    move-result-object v12

    if-eqz v12, :cond_115

    .line 296
    move/from16 v12, p2

    move/from16 v13, p3

    invoke-static {v13, v12}, Landroid/util/RotationUtils;->deltaRotation(II)I

    move-result v14

    .line 297
    .local v14, "rotationBackDelta":I
    nop

    .line 298
    invoke-virtual {v6}, Lcom/android/server/wm/Task;->getDisplayCutoutInsets()Landroid/graphics/Rect;

    move-result-object v15

    invoke-static {v15}, Landroid/graphics/Insets;->of(Landroid/graphics/Rect;)Landroid/graphics/Insets;

    move-result-object v15

    .line 297
    invoke-static {v15, v14}, Landroid/util/RotationUtils;->rotateInsets(Landroid/graphics/Insets;I)Landroid/graphics/Insets;

    move-result-object v15

    .line 298
    invoke-virtual {v15}, Landroid/graphics/Insets;->toRect()Landroid/graphics/Rect;

    move-result-object v15

    .line 299
    .local v15, "displayCutoutInsets":Landroid/graphics/Rect;
    iget v9, v15, Landroid/graphics/Rect;->left:I

    iget v0, v15, Landroid/graphics/Rect;->top:I

    invoke-virtual {v7, v9, v0}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_11e

    .line 295
    .end local v14    # "rotationBackDelta":I
    .end local v15    # "displayCutoutInsets":Landroid/graphics/Rect;
    :cond_115
    move/from16 v12, p2

    move/from16 v13, p3

    goto :goto_11e

    .line 294
    :cond_11a
    move/from16 v12, p2

    move/from16 v13, p3

    .line 302
    :goto_11e
    if-eqz v7, :cond_128

    invoke-virtual {v8, v7}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_128

    .line 303
    move-object v0, v7

    goto :goto_129

    :cond_128
    move-object v0, v8

    .line 304
    .local v0, "contentBounds":Landroid/graphics/Rect;
    :goto_129
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v9

    .line 305
    .local v9, "w":I
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v14

    .line 306
    .local v14, "h":I
    if-gt v9, v14, :cond_13d

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v15

    int-to-float v15, v15

    move-object/from16 v16, v3

    .end local v3    # "pipTx":Landroid/window/PictureInPictureSurfaceTransaction;
    .local v16, "pipTx":Landroid/window/PictureInPictureSurfaceTransaction;
    int-to-float v3, v9

    div-float/2addr v15, v3

    goto :goto_147

    .end local v16    # "pipTx":Landroid/window/PictureInPictureSurfaceTransaction;
    .restart local v3    # "pipTx":Landroid/window/PictureInPictureSurfaceTransaction;
    :cond_13d
    move-object/from16 v16, v3

    .end local v3    # "pipTx":Landroid/window/PictureInPictureSurfaceTransaction;
    .restart local v16    # "pipTx":Landroid/window/PictureInPictureSurfaceTransaction;
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    int-to-float v15, v14

    div-float v15, v3, v15

    :goto_147
    move v3, v15

    .line 307
    .local v3, "scale":F
    iget v15, v0, Landroid/graphics/Rect;->left:I

    move/from16 v17, v4

    .end local v4    # "emptyPipPositionTx":Z
    .local v17, "emptyPipPositionTx":Z
    iget v4, v8, Landroid/graphics/Rect;->left:I

    sub-int/2addr v15, v4

    int-to-float v4, v15

    mul-float/2addr v4, v3

    const/high16 v15, 0x3f000000    # 0.5f

    add-float/2addr v4, v15

    float-to-int v4, v4

    .line 308
    .local v4, "insetLeft":I
    iget v15, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v19, v0

    .end local v0    # "contentBounds":Landroid/graphics/Rect;
    .local v19, "contentBounds":Landroid/graphics/Rect;
    iget v0, v8, Landroid/graphics/Rect;->top:I

    sub-int/2addr v15, v0

    int-to-float v0, v15

    mul-float/2addr v0, v3

    const/high16 v15, 0x3f000000    # 0.5f

    add-float/2addr v0, v15

    float-to-int v0, v0

    .line 309
    .local v0, "insetTop":I
    new-instance v15, Landroid/graphics/Matrix;

    invoke-direct {v15}, Landroid/graphics/Matrix;-><init>()V

    .line 310
    .local v15, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v15, v3, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 311
    move/from16 v18, v3

    .end local v3    # "scale":F
    .local v18, "scale":F
    iget v3, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    move/from16 v20, v4

    .end local v4    # "insetLeft":I
    .local v20, "insetLeft":I
    iget v4, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v0

    int-to-float v4, v4

    invoke-virtual {v15, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 312
    invoke-virtual {v6}, Lcom/android/server/wm/Task;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v3

    const/16 v4, 0x9

    new-array v4, v4, [F

    invoke-virtual {v1, v3, v15, v4}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;Landroid/graphics/Matrix;[F)Landroid/view/SurfaceControl$Transaction;

    .line 313
    return-void
.end method
