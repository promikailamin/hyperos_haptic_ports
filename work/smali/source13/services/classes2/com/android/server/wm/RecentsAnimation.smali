.class Lcom/android/server/wm/RecentsAnimation;
.super Ljava/lang/Object;
.source "RecentsAnimation.java"

# interfaces
.implements Lcom/android/server/wm/RecentsAnimationController$RecentsAnimationCallbacks;
.implements Lcom/android/server/wm/TaskDisplayArea$OnRootTaskOrderChangedListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mActivityStartController:Lcom/android/server/wm/ActivityStartController;

.field private final mCaller:Lcom/android/server/wm/WindowProcessController;

.field private final mDefaultTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

.field private mLaunchedTargetActivity:Lcom/android/server/wm/ActivityRecord;

.field private final mRecentsComponent:Landroid/content/ComponentName;

.field private final mRecentsFeatureId:Ljava/lang/String;

.field private final mRecentsUid:I

.field private mRestoreTargetBehindRootTask:Lcom/android/server/wm/Task;

.field private final mService:Lcom/android/server/wm/ActivityTaskManagerService;

.field private final mTargetActivityType:I

.field private final mTargetIntent:Landroid/content/Intent;

.field private final mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

.field private final mUserId:I

.field private final mWindowManager:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public static synthetic $r8$lambda$rlVkoJ_usUn95Q8zT-IqZfw2ZB8(Lcom/android/server/wm/RecentsAnimation;Lcom/android/server/wm/Task;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/RecentsAnimation;->matchesTarget(Lcom/android/server/wm/Task;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 63
    const-class v0, Lcom/android/server/wm/RecentsAnimation;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/RecentsAnimation;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityTaskSupervisor;Lcom/android/server/wm/ActivityStartController;Lcom/android/server/wm/WindowManagerService;Landroid/content/Intent;Landroid/content/ComponentName;Ljava/lang/String;ILcom/android/server/wm/WindowProcessController;)V
    .registers 11
    .param p1, "atm"    # Lcom/android/server/wm/ActivityTaskManagerService;
    .param p2, "taskSupervisor"    # Lcom/android/server/wm/ActivityTaskSupervisor;
    .param p3, "activityStartController"    # Lcom/android/server/wm/ActivityStartController;
    .param p4, "wm"    # Lcom/android/server/wm/WindowManagerService;
    .param p5, "targetIntent"    # Landroid/content/Intent;
    .param p6, "recentsComponent"    # Landroid/content/ComponentName;
    .param p7, "recentsFeatureId"    # Ljava/lang/String;
    .param p8, "recentsUid"    # I
    .param p9, "caller"    # Lcom/android/server/wm/WindowProcessController;

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p1, p0, Lcom/android/server/wm/RecentsAnimation;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 93
    iput-object p2, p0, Lcom/android/server/wm/RecentsAnimation;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 94
    iget-object v0, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/RecentsAnimation;->mDefaultTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 95
    iput-object p3, p0, Lcom/android/server/wm/RecentsAnimation;->mActivityStartController:Lcom/android/server/wm/ActivityStartController;

    .line 96
    iput-object p4, p0, Lcom/android/server/wm/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 97
    iput-object p5, p0, Lcom/android/server/wm/RecentsAnimation;->mTargetIntent:Landroid/content/Intent;

    .line 98
    iput-object p6, p0, Lcom/android/server/wm/RecentsAnimation;->mRecentsComponent:Landroid/content/ComponentName;

    .line 99
    iput-object p7, p0, Lcom/android/server/wm/RecentsAnimation;->mRecentsFeatureId:Ljava/lang/String;

    .line 100
    iput p8, p0, Lcom/android/server/wm/RecentsAnimation;->mRecentsUid:I

    .line 101
    iput-object p9, p0, Lcom/android/server/wm/RecentsAnimation;->mCaller:Lcom/android/server/wm/WindowProcessController;

    .line 102
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityTaskManagerService;->getCurrentUserId()I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/RecentsAnimation;->mUserId:I

    .line 103
    nop

    .line 104
    nop

    .line 103
    invoke-virtual {p5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_37

    .line 104
    invoke-virtual {p5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p6, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 105
    const/4 v0, 0x3

    goto :goto_38

    .line 106
    :cond_37
    const/4 v0, 0x2

    :goto_38
    iput v0, p0, Lcom/android/server/wm/RecentsAnimation;->mTargetActivityType:I

    .line 107
    return-void
.end method

.method private checkRotationFinished()Z
    .registers 3

    .line 177
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimation;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 178
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    .line 179
    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->getDefaultDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getRotation()I

    move-result v1

    if-eq v0, v1, :cond_1c

    const/4 v0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    .line 180
    .local v0, "rotationChanged":Z
    :goto_1d
    return v0
.end method

.method private finishAnimation(IZ)V
    .registers 14
    .param p1, "reorderMode"    # I
    .param p2, "sendUserLeaveHint"    # Z

    .line 319
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimation;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 320
    sget-boolean v1, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_RECENTS_ANIMATIONS_enabled:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_2e

    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .local v1, "protoLogParam0":Ljava/lang/String;
    int-to-long v3, p1

    .local v3, "protoLogParam1":J
    sget-object v5, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_RECENTS_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v6, 0x2d9f011c

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v1, v9, v10

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v9, v2

    invoke-static {v5, v6, v7, v8, v9}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 325
    .end local v1    # "protoLogParam0":Ljava/lang/String;
    .end local v3    # "protoLogParam1":J
    :cond_2e
    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimation;->mDefaultTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    invoke-virtual {v1, p0}, Lcom/android/server/wm/TaskDisplayArea;->unregisterRootTaskOrderChangedListener(Lcom/android/server/wm/TaskDisplayArea$OnRootTaskOrderChangedListener;)V

    .line 327
    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 328
    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v1

    .line 329
    .local v1, "controller":Lcom/android/server/wm/RecentsAnimationController;
    if-nez v1, :cond_40

    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_5 .. :try_end_3c} :catchall_6b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 331
    :cond_40
    :try_start_40
    invoke-static {}, Lcom/android/server/am/SmartPowerServiceStub;->getInstance()Lcom/android/server/am/SmartPowerServiceStub;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/server/am/SmartPowerServiceStub;->onRecentsAnimationEnd()V

    .line 333
    invoke-static {}, Lcom/android/server/inputmethod/InputMethodManagerServiceStub;->getInstance()Lcom/android/server/inputmethod/InputMethodManagerServiceStub;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/android/server/inputmethod/InputMethodManagerServiceStub;->setWindowGainedbyRecentTask(Z)V

    .line 338
    if-eqz p1, :cond_55

    .line 339
    iget-object v3, p0, Lcom/android/server/wm/RecentsAnimation;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->endLaunchPowerMode(I)V

    .line 344
    :cond_55
    if-ne p1, v2, :cond_5c

    .line 345
    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimation;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->stopAppSwitches()V

    .line 348
    :cond_5c
    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    new-instance v3, Lcom/android/server/wm/RecentsAnimation$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, p1, p2, v1}, Lcom/android/server/wm/RecentsAnimation$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/RecentsAnimation;IZLcom/android/server/wm/RecentsAnimationController;)V

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowManagerService;->inSurfaceTransaction(Ljava/lang/Runnable;)V

    .line 462
    .end local v1    # "controller":Lcom/android/server/wm/RecentsAnimationController;
    monitor-exit v0
    :try_end_67
    .catchall {:try_start_40 .. :try_end_67} :catchall_6b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 463
    return-void

    .line 462
    :catchall_6b
    move-exception v1

    :try_start_6c
    monitor-exit v0
    :try_end_6d
    .catchall {:try_start_6c .. :try_end_6d} :catchall_6b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method private getTargetActivity(Lcom/android/server/wm/Task;)Lcom/android/server/wm/ActivityRecord;
    .registers 5
    .param p1, "targetRootTask"    # Lcom/android/server/wm/Task;

    .line 539
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 540
    return-object v0

    .line 543
    :cond_4
    new-instance v1, Lcom/android/server/wm/RecentsAnimation$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/wm/RecentsAnimation$$ExternalSyntheticLambda0;-><init>()V

    const-class v2, Lcom/android/server/wm/Task;

    .line 544
    invoke-static {v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v2

    .line 543
    invoke-static {v1, p0, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainPredicate(Ljava/util/function/BiPredicate;Ljava/lang/Object;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;)Lcom/android/internal/util/function/pooled/PooledPredicate;

    move-result-object v1

    .line 545
    .local v1, "p":Lcom/android/internal/util/function/pooled/PooledPredicate;
    invoke-virtual {p1, v1}, Lcom/android/server/wm/Task;->getTask(Ljava/util/function/Predicate;)Lcom/android/server/wm/Task;

    move-result-object v2

    .line 546
    .local v2, "task":Lcom/android/server/wm/Task;
    invoke-interface {v1}, Lcom/android/internal/util/function/pooled/PooledPredicate;->recycle()V

    .line 547
    if-eqz v2, :cond_20

    invoke-virtual {v2}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    :cond_20
    return-object v0
.end method

.method private getTopNonAlwaysOnTopRootTask()Lcom/android/server/wm/Task;
    .registers 3

    .line 530
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimation;->mDefaultTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    new-instance v1, Lcom/android/server/wm/RecentsAnimation$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/android/server/wm/RecentsAnimation$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskDisplayArea;->getRootTask(Ljava/util/function/Predicate;)Lcom/android/server/wm/Task;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$getTopNonAlwaysOnTopRootTask$2(Lcom/android/server/wm/Task;)Z
    .registers 2
    .param p0, "task"    # Lcom/android/server/wm/Task;

    .line 531
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->isAlwaysOnTop()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static synthetic lambda$onRootTaskOrderChanged$1(Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;)Z
    .registers 3
    .param p0, "rootTask"    # Lcom/android/server/wm/Task;
    .param p1, "t"    # Lcom/android/server/wm/Task;

    .line 474
    if-ne p1, p0, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    return v0
.end method

.method private matchesTarget(Lcom/android/server/wm/Task;)Z
    .registers 4
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 551
    iget v0, p1, Lcom/android/server/wm/Task;->mUserId:I

    iget v1, p0, Lcom/android/server/wm/RecentsAnimation;->mUserId:I

    if-ne v0, v1, :cond_22

    .line 553
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getBaseIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 554
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getBaseIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimation;->mTargetIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    const/4 v0, 0x1

    goto :goto_23

    :cond_22
    const/4 v0, 0x0

    .line 551
    :goto_23
    return v0
.end method

.method static notifyAnimationCancelBeforeStart(Landroid/view/IRecentsAnimationRunner;)V
    .registers 4
    .param p0, "recentsAnimationRunner"    # Landroid/view/IRecentsAnimationRunner;

    .line 519
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {p0, v0, v0}, Landroid/view/IRecentsAnimationRunner;->onAnimationCanceled([I[Landroid/window/TaskSnapshot;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_4} :catch_5

    .line 523
    goto :goto_d

    .line 521
    :catch_5
    move-exception v0

    .line 522
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/android/server/wm/RecentsAnimation;->TAG:Ljava/lang/String;

    const-string v2, "Failed to cancel recents animation before start"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 524
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_d
    return-void
.end method

.method private startRecentsActivityInBackground(Ljava/lang/String;)V
    .registers 5
    .param p1, "reason"    # Ljava/lang/String;

    .line 499
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v0

    .line 500
    .local v0, "options":Landroid/app/ActivityOptions;
    iget v1, p0, Lcom/android/server/wm/RecentsAnimation;->mTargetActivityType:I

    invoke-virtual {v0, v1}, Landroid/app/ActivityOptions;->setLaunchActivityType(I)V

    .line 501
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->setAvoidMoveToFront()V

    .line 502
    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimation;->mTargetIntent:Landroid/content/Intent;

    const/high16 v2, 0x10010000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 504
    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimation;->mActivityStartController:Lcom/android/server/wm/ActivityStartController;

    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimation;->mTargetIntent:Landroid/content/Intent;

    .line 505
    invoke-virtual {v1, v2, p1}, Lcom/android/server/wm/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wm/RecentsAnimation;->mRecentsUid:I

    .line 506
    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityStarter;->setCallingUid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimation;->mRecentsComponent:Landroid/content/ComponentName;

    .line 507
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityStarter;->setCallingPackage(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/RecentsAnimation;->mRecentsFeatureId:Ljava/lang/String;

    .line 508
    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityStarter;->setCallingFeatureId(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v1

    new-instance v2, Lcom/android/server/wm/SafeActivityOptions;

    invoke-direct {v2, v0}, Lcom/android/server/wm/SafeActivityOptions;-><init>(Landroid/app/ActivityOptions;)V

    .line 509
    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityStarter;->setActivityOptions(Lcom/android/server/wm/SafeActivityOptions;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wm/RecentsAnimation;->mUserId:I

    .line 510
    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityStarter;->setUserId(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v1

    .line 511
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStarter;->execute()I

    .line 512
    return-void
.end method


# virtual methods
.method synthetic lambda$finishAnimation$0$com-android-server-wm-RecentsAnimation(IZLcom/android/server/wm/RecentsAnimationController;)V
    .registers 20
    .param p1, "reorderMode"    # I
    .param p2, "sendUserLeaveHint"    # Z
    .param p3, "controller"    # Lcom/android/server/wm/RecentsAnimationController;

    .line 349
    move-object/from16 v1, p0

    move/from16 v2, p1

    const-wide/16 v3, 0x20

    const-string v0, "RecentsAnimation#onAnimationFinished_inSurfaceTransaction"

    invoke-static {v3, v4, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 351
    iget-object v0, v1, Lcom/android/server/wm/RecentsAnimation;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    .line 353
    const/4 v5, 0x0

    :try_start_11
    iget-object v0, v1, Lcom/android/server/wm/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowManagerService;->cleanupRecentsAnimation(I)V

    .line 355
    iget-object v0, v1, Lcom/android/server/wm/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMiuiFreeFormGestureController:Lcom/android/server/wm/MiuiFreeformGestureControllerStub;

    invoke-interface {v0}, Lcom/android/server/wm/MiuiFreeformGestureControllerStub;->notifyRecentAnimationFinished()V

    .line 356
    iget-object v0, v1, Lcom/android/server/wm/RecentsAnimation;->mDefaultTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    iget v6, v1, Lcom/android/server/wm/RecentsAnimation;->mTargetActivityType:I

    invoke-virtual {v0, v5, v6}, Lcom/android/server/wm/TaskDisplayArea;->getRootTask(II)Lcom/android/server/wm/Task;

    move-result-object v0

    .line 360
    .local v0, "targetRootTask":Lcom/android/server/wm/Task;
    const/4 v12, 0x0

    if-eqz v0, :cond_2f

    .line 361
    iget-object v6, v1, Lcom/android/server/wm/RecentsAnimation;->mLaunchedTargetActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, v6}, Lcom/android/server/wm/Task;->isInTask(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v6

    goto :goto_30

    .line 362
    :cond_2f
    move-object v6, v12

    :goto_30
    move-object v13, v6

    .line 363
    .local v13, "targetActivity":Lcom/android/server/wm/ActivityRecord;
    sget-boolean v6, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_RECENTS_ANIMATIONS_enabled:Z

    const/4 v7, 0x3

    const/4 v14, 0x2

    const/4 v15, 0x1

    if-eqz v6, :cond_56

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .local v6, "protoLogParam0":Ljava/lang/String;
    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .local v8, "protoLogParam1":Ljava/lang/String;
    iget-object v9, v1, Lcom/android/server/wm/RecentsAnimation;->mRestoreTargetBehindRootTask:Lcom/android/server/wm/Task;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .local v9, "protoLogParam2":Ljava/lang/String;
    sget-object v10, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_RECENTS_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v11, 0x6a322c99

    new-array v3, v7, [Ljava/lang/Object;

    aput-object v6, v3, v5

    aput-object v8, v3, v15

    aput-object v9, v3, v14

    invoke-static {v10, v11, v5, v12, v3}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_56} :catch_1a1
    .catchall {:try_start_11 .. :try_end_56} :catchall_19f

    .line 367
    .end local v6    # "protoLogParam0":Ljava/lang/String;
    .end local v8    # "protoLogParam1":Ljava/lang/String;
    .end local v9    # "protoLogParam2":Ljava/lang/String;
    :cond_56
    if-nez v13, :cond_86

    .line 446
    iget-object v3, v1, Lcom/android/server/wm/RecentsAnimation;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iput-boolean v5, v3, Lcom/android/server/wm/ActivityTaskSupervisor;->mUserLeaving:Z

    .line 447
    iget-object v3, v1, Lcom/android/server/wm/RecentsAnimation;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 451
    iget-object v3, v1, Lcom/android/server/wm/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/RootWindowContainer;->isLayoutNeeded()Z

    move-result v3

    if-eqz v3, :cond_72

    .line 452
    iget-object v3, v1, Lcom/android/server/wm/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/RootWindowContainer;->performSurfacePlacement()V

    .line 454
    :cond_72
    iget-object v3, v1, Lcom/android/server/wm/RecentsAnimation;->mCaller:Lcom/android/server/wm/WindowProcessController;

    if-eqz v3, :cond_79

    .line 455
    invoke-virtual {v3, v5}, Lcom/android/server/wm/WindowProcessController;->setRunningRecentsAnimation(Z)V

    .line 458
    :cond_79
    invoke-static {}, Lcom/android/server/wm/WindowManagerServiceStub;->get()Lcom/android/server/wm/WindowManagerServiceStub;

    move-result-object v3

    invoke-interface {v3, v5}, Lcom/android/server/wm/WindowManagerServiceStub;->setRunningRecentsAnimation(Z)V

    .line 459
    const-wide/16 v3, 0x20

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 368
    return-void

    .line 372
    :cond_86
    :try_start_86
    iput-boolean v5, v13, Lcom/android/server/wm/ActivityRecord;->mLaunchTaskBehind:Z

    .line 374
    if-ne v2, v15, :cond_d4

    .line 376
    iget-object v3, v1, Lcom/android/server/wm/RecentsAnimation;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 378
    if-eqz p2, :cond_a6

    .line 380
    iget-object v3, v1, Lcom/android/server/wm/RecentsAnimation;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iput-boolean v15, v3, Lcom/android/server/wm/ActivityTaskSupervisor;->mUserLeaving:Z

    .line 381
    invoke-virtual {v13}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v7

    const/4 v8, 0x1

    const/4 v9, 0x0

    iget-object v10, v13, Lcom/android/server/wm/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    const-string v11, "RecentsAnimation.onAnimationFinished()"

    move-object v6, v0

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/wm/Task;->moveTaskToFront(Lcom/android/server/wm/Task;ZLandroid/app/ActivityOptions;Lcom/android/server/am/AppTimeTracker;Ljava/lang/String;)V

    goto :goto_ab

    .line 386
    :cond_a6
    const-string v3, "RecentsAnimation.onAnimationFinished()"

    invoke-virtual {v0, v3}, Lcom/android/server/wm/Task;->moveToFront(Ljava/lang/String;)V

    .line 389
    :goto_ab
    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_RECENTS_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-virtual {v3}, Lcom/android/internal/protolog/ProtoLogGroup;->isLogToAny()Z

    move-result v3

    if-eqz v3, :cond_114

    .line 390
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/RecentsAnimation;->getTopNonAlwaysOnTopRootTask()Lcom/android/server/wm/Task;

    move-result-object v3

    .line 391
    .local v3, "topRootTask":Lcom/android/server/wm/Task;
    if-eq v3, v0, :cond_d3

    .line 392
    sget-boolean v4, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_RECENTS_ANIMATIONS_enabled:Z

    if-eqz v4, :cond_d3

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .local v4, "protoLogParam0":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .local v6, "protoLogParam1":Ljava/lang/String;
    sget-object v7, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_RECENTS_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v8, -0x12074eb4

    new-array v9, v14, [Ljava/lang/Object;

    aput-object v4, v9, v5

    aput-object v6, v9, v15

    invoke-static {v7, v8, v5, v12, v9}, Lcom/android/internal/protolog/ProtoLogImpl;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 397
    .end local v3    # "topRootTask":Lcom/android/server/wm/Task;
    .end local v4    # "protoLogParam0":Ljava/lang/String;
    .end local v6    # "protoLogParam1":Ljava/lang/String;
    :cond_d3
    goto :goto_114

    .line 398
    :cond_d4
    if-ne v2, v14, :cond_162

    .line 400
    invoke-virtual {v13}, Lcom/android/server/wm/ActivityRecord;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v3

    .line 401
    .local v3, "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    iget-object v4, v1, Lcom/android/server/wm/RecentsAnimation;->mRestoreTargetBehindRootTask:Lcom/android/server/wm/Task;

    invoke-virtual {v3, v0, v4}, Lcom/android/server/wm/TaskDisplayArea;->moveRootTaskBehindRootTask(Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;)V

    .line 403
    sget-object v4, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_RECENTS_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    invoke-virtual {v4}, Lcom/android/internal/protolog/ProtoLogGroup;->isLogToAny()Z

    move-result v4

    if-eqz v4, :cond_113

    .line 404
    invoke-static {v0}, Lcom/android/server/wm/TaskDisplayArea;->getRootTaskAbove(Lcom/android/server/wm/Task;)Lcom/android/server/wm/Task;

    move-result-object v4

    .line 405
    .local v4, "aboveTargetRootTask":Lcom/android/server/wm/Task;
    iget-object v6, v1, Lcom/android/server/wm/RecentsAnimation;->mRestoreTargetBehindRootTask:Lcom/android/server/wm/Task;

    if-eqz v6, :cond_113

    if-eq v4, v6, :cond_113

    .line 407
    sget-boolean v6, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_RECENTS_ANIMATIONS_enabled:Z

    if-eqz v6, :cond_113

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .local v6, "protoLogParam0":Ljava/lang/String;
    iget-object v8, v1, Lcom/android/server/wm/RecentsAnimation;->mRestoreTargetBehindRootTask:Lcom/android/server/wm/Task;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .restart local v8    # "protoLogParam1":Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .restart local v9    # "protoLogParam2":Ljava/lang/String;
    sget-object v10, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_RECENTS_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v11, 0x6c9e51b6

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v6, v7, v5

    aput-object v8, v7, v15

    aput-object v9, v7, v14

    invoke-static {v10, v11, v5, v12, v7}, Lcom/android/internal/protolog/ProtoLogImpl;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 414
    .end local v3    # "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .end local v4    # "aboveTargetRootTask":Lcom/android/server/wm/Task;
    .end local v6    # "protoLogParam0":Ljava/lang/String;
    .end local v8    # "protoLogParam1":Ljava/lang/String;
    .end local v9    # "protoLogParam2":Ljava/lang/String;
    :cond_113
    nop

    .line 430
    :cond_114
    :goto_114
    iget-object v3, v1, Lcom/android/server/wm/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransitionNone()V

    .line 431
    iget-object v3, v1, Lcom/android/server/wm/RecentsAnimation;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3, v12, v5, v5}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 432
    iget-object v3, v1, Lcom/android/server/wm/RecentsAnimation;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities()Z

    .line 436
    iget-object v3, v1, Lcom/android/server/wm/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V

    .line 438
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v3

    .line 441
    .local v3, "rootTask":Lcom/android/server/wm/Task;
    invoke-virtual {v3, v15}, Lcom/android/server/wm/Task;->dispatchTaskInfoChangedIfNeeded(Z)V
    :try_end_133
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_133} :catch_1a1
    .catchall {:try_start_86 .. :try_end_133} :catchall_19f

    .line 446
    .end local v0    # "targetRootTask":Lcom/android/server/wm/Task;
    .end local v3    # "rootTask":Lcom/android/server/wm/Task;
    .end local v13    # "targetActivity":Lcom/android/server/wm/ActivityRecord;
    iget-object v0, v1, Lcom/android/server/wm/RecentsAnimation;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iput-boolean v5, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mUserLeaving:Z

    .line 447
    iget-object v0, v1, Lcom/android/server/wm/RecentsAnimation;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 451
    iget-object v0, v1, Lcom/android/server/wm/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->isLayoutNeeded()Z

    move-result v0

    if-eqz v0, :cond_14d

    .line 452
    iget-object v0, v1, Lcom/android/server/wm/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->performSurfacePlacement()V

    .line 454
    :cond_14d
    iget-object v0, v1, Lcom/android/server/wm/RecentsAnimation;->mCaller:Lcom/android/server/wm/WindowProcessController;

    if-eqz v0, :cond_154

    .line 455
    invoke-virtual {v0, v5}, Lcom/android/server/wm/WindowProcessController;->setRunningRecentsAnimation(Z)V

    .line 458
    :cond_154
    invoke-static {}, Lcom/android/server/wm/WindowManagerServiceStub;->get()Lcom/android/server/wm/WindowManagerServiceStub;

    move-result-object v0

    invoke-interface {v0, v5}, Lcom/android/server/wm/WindowManagerServiceStub;->setRunningRecentsAnimation(Z)V

    .line 459
    const-wide/16 v3, 0x20

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 460
    nop

    .line 461
    return-void

    .line 420
    .restart local v0    # "targetRootTask":Lcom/android/server/wm/Task;
    .restart local v13    # "targetActivity":Lcom/android/server/wm/ActivityRecord;
    :cond_162
    :try_start_162
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/wm/RecentsAnimationController;->shouldDeferCancelWithScreenshot()Z

    move-result v3

    if-nez v3, :cond_171

    .line 421
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isFocusedRootTaskOnDisplay()Z

    move-result v3

    if-nez v3, :cond_171

    .line 422
    invoke-virtual {v0, v12, v5, v5}, Lcom/android/server/wm/Task;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V
    :try_end_171
    .catch Ljava/lang/Exception; {:try_start_162 .. :try_end_171} :catch_1a1
    .catchall {:try_start_162 .. :try_end_171} :catchall_19f

    .line 446
    :cond_171
    iget-object v3, v1, Lcom/android/server/wm/RecentsAnimation;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iput-boolean v5, v3, Lcom/android/server/wm/ActivityTaskSupervisor;->mUserLeaving:Z

    .line 447
    iget-object v3, v1, Lcom/android/server/wm/RecentsAnimation;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 451
    iget-object v3, v1, Lcom/android/server/wm/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/RootWindowContainer;->isLayoutNeeded()Z

    move-result v3

    if-eqz v3, :cond_18b

    .line 452
    iget-object v3, v1, Lcom/android/server/wm/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/RootWindowContainer;->performSurfacePlacement()V

    .line 454
    :cond_18b
    iget-object v3, v1, Lcom/android/server/wm/RecentsAnimation;->mCaller:Lcom/android/server/wm/WindowProcessController;

    if-eqz v3, :cond_192

    .line 455
    invoke-virtual {v3, v5}, Lcom/android/server/wm/WindowProcessController;->setRunningRecentsAnimation(Z)V

    .line 458
    :cond_192
    invoke-static {}, Lcom/android/server/wm/WindowManagerServiceStub;->get()Lcom/android/server/wm/WindowManagerServiceStub;

    move-result-object v3

    invoke-interface {v3, v5}, Lcom/android/server/wm/WindowManagerServiceStub;->setRunningRecentsAnimation(Z)V

    .line 459
    const-wide/16 v3, 0x20

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 427
    return-void

    .line 446
    .end local v0    # "targetRootTask":Lcom/android/server/wm/Task;
    .end local v13    # "targetActivity":Lcom/android/server/wm/ActivityRecord;
    :catchall_19f
    move-exception v0

    goto :goto_1ab

    .line 442
    :catch_1a1
    move-exception v0

    .line 443
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1a2
    sget-object v3, Lcom/android/server/wm/RecentsAnimation;->TAG:Ljava/lang/String;

    const-string v4, "Failed to clean up recents activity"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 444
    nop

    .end local p0    # "this":Lcom/android/server/wm/RecentsAnimation;
    .end local p1    # "reorderMode":I
    .end local p2    # "sendUserLeaveHint":Z
    .end local p3    # "controller":Lcom/android/server/wm/RecentsAnimationController;
    throw v0
    :try_end_1ab
    .catchall {:try_start_1a2 .. :try_end_1ab} :catchall_19f

    .line 446
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local p0    # "this":Lcom/android/server/wm/RecentsAnimation;
    .restart local p1    # "reorderMode":I
    .restart local p2    # "sendUserLeaveHint":Z
    .restart local p3    # "controller":Lcom/android/server/wm/RecentsAnimationController;
    :goto_1ab
    iget-object v3, v1, Lcom/android/server/wm/RecentsAnimation;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iput-boolean v5, v3, Lcom/android/server/wm/ActivityTaskSupervisor;->mUserLeaving:Z

    .line 447
    iget-object v3, v1, Lcom/android/server/wm/RecentsAnimation;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 451
    iget-object v3, v1, Lcom/android/server/wm/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/RootWindowContainer;->isLayoutNeeded()Z

    move-result v3

    if-eqz v3, :cond_1c5

    .line 452
    iget-object v3, v1, Lcom/android/server/wm/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/RootWindowContainer;->performSurfacePlacement()V

    .line 454
    :cond_1c5
    iget-object v3, v1, Lcom/android/server/wm/RecentsAnimation;->mCaller:Lcom/android/server/wm/WindowProcessController;

    if-eqz v3, :cond_1cc

    .line 455
    invoke-virtual {v3, v5}, Lcom/android/server/wm/WindowProcessController;->setRunningRecentsAnimation(Z)V

    .line 458
    :cond_1cc
    invoke-static {}, Lcom/android/server/wm/WindowManagerServiceStub;->get()Lcom/android/server/wm/WindowManagerServiceStub;

    move-result-object v3

    invoke-interface {v3, v5}, Lcom/android/server/wm/WindowManagerServiceStub;->setRunningRecentsAnimation(Z)V

    .line 459
    const-wide/16 v3, 0x20

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 460
    throw v0
.end method

.method public onAnimationFinished(IZ)V
    .registers 3
    .param p1, "reorderMode"    # I
    .param p2, "sendUserLeaveHint"    # Z

    .line 468
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/RecentsAnimation;->finishAnimation(IZ)V

    .line 469
    return-void
.end method

.method public onRootTaskOrderChanged(Lcom/android/server/wm/Task;)V
    .registers 8
    .param p1, "rootTask"    # Lcom/android/server/wm/Task;

    .line 473
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_RECENTS_ANIMATIONS_enabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_17

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "protoLogParam0":Ljava/lang/String;
    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_RECENTS_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v3, -0x3fbcc940

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v2, v3, v5, v1, v4}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 474
    .end local v0    # "protoLogParam0":Ljava/lang/String;
    :cond_17
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimation;->mDefaultTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    new-instance v2, Lcom/android/server/wm/RecentsAnimation$$ExternalSyntheticLambda4;

    invoke-direct {v2, p1}, Lcom/android/server/wm/RecentsAnimation$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/wm/Task;)V

    invoke-virtual {v0, v2}, Lcom/android/server/wm/TaskDisplayArea;->getRootTask(Ljava/util/function/Predicate;)Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_57

    .line 475
    invoke-virtual {p1, v1}, Lcom/android/server/wm/Task;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-nez v0, :cond_2b

    goto :goto_57

    .line 479
    :cond_2b
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 480
    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v0

    .line 481
    .local v0, "controller":Lcom/android/server/wm/RecentsAnimationController;
    if-nez v0, :cond_34

    .line 482
    return-void

    .line 489
    :cond_34
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/RecentsAnimationController;->isAnimatingTask(Lcom/android/server/wm/Task;)Z

    move-result v1

    if-eqz v1, :cond_48

    .line 490
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/RecentsAnimationController;->isTargetApp(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v1

    if-eqz v1, :cond_56

    .line 491
    :cond_48
    invoke-virtual {v0}, Lcom/android/server/wm/RecentsAnimationController;->shouldDeferCancelUntilNextTransition()Z

    move-result v1

    if-eqz v1, :cond_56

    .line 493
    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransitionNone()V

    .line 494
    invoke-virtual {v0}, Lcom/android/server/wm/RecentsAnimationController;->setCancelOnNextTransitionStart()V

    .line 496
    :cond_56
    return-void

    .line 477
    .end local v0    # "controller":Lcom/android/server/wm/RecentsAnimationController;
    :cond_57
    :goto_57
    return-void
.end method

.method preloadRecentsActivity()V
    .registers 11

    .line 115
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_RECENTS_ANIMATIONS_enabled:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimation;->mTargetIntent:Landroid/content/Intent;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "protoLogParam0":Ljava/lang/String;
    sget-object v4, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_RECENTS_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v5, -0x6578968

    new-array v6, v2, [Ljava/lang/Object;

    aput-object v0, v6, v3

    invoke-static {v4, v5, v3, v1, v6}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 117
    .end local v0    # "protoLogParam0":Ljava/lang/String;
    :cond_19
    iget-object v0, p0, Lcom/android/server/wm/RecentsAnimation;->mDefaultTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    iget v4, p0, Lcom/android/server/wm/RecentsAnimation;->mTargetActivityType:I

    invoke-virtual {v0, v3, v4}, Lcom/android/server/wm/TaskDisplayArea;->getRootTask(II)Lcom/android/server/wm/Task;

    move-result-object v0

    .line 119
    .local v0, "targetRootTask":Lcom/android/server/wm/Task;
    invoke-direct {p0, v0}, Lcom/android/server/wm/RecentsAnimation;->getTargetActivity(Lcom/android/server/wm/Task;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    .line 120
    .local v4, "targetActivity":Lcom/android/server/wm/ActivityRecord;
    const-string/jumbo v5, "preloadRecents"

    if-eqz v4, :cond_58

    .line 121
    iget-boolean v6, v4, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-nez v6, :cond_57

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->isTopRunningActivity()Z

    move-result v6

    if-eqz v6, :cond_35

    goto :goto_57

    .line 125
    :cond_35
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v6

    if-eqz v6, :cond_92

    .line 129
    invoke-virtual {v4, v3, v3, v2}, Lcom/android/server/wm/ActivityRecord;->ensureActivityConfiguration(IZZ)Z

    .line 131
    sget-boolean v6, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_RECENTS_ANIMATIONS_enabled:Z

    if-eqz v6, :cond_92

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .local v6, "protoLogParam0":Ljava/lang/String;
    sget-object v7, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_RECENTS_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v8, -0x44e8f9ad

    new-array v9, v2, [Ljava/lang/Object;

    aput-object v6, v9, v3

    invoke-static {v7, v8, v3, v1, v9}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 132
    .end local v6    # "protoLogParam0":Ljava/lang/String;
    goto :goto_92

    .line 123
    :cond_57
    :goto_57
    return-void

    .line 134
    :cond_58
    iget-object v6, p0, Lcom/android/server/wm/RecentsAnimation;->mDefaultTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    new-instance v7, Lcom/android/server/wm/RecentsAnimation$$ExternalSyntheticLambda1;

    invoke-direct {v7}, Lcom/android/server/wm/RecentsAnimation$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v6, v7, v3}, Lcom/android/server/wm/TaskDisplayArea;->getActivity(Ljava/util/function/Predicate;Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v6

    if-nez v6, :cond_66

    .line 138
    return-void

    .line 142
    :cond_66
    invoke-direct {p0, v5}, Lcom/android/server/wm/RecentsAnimation;->startRecentsActivityInBackground(Ljava/lang/String;)V

    .line 143
    iget-object v6, p0, Lcom/android/server/wm/RecentsAnimation;->mDefaultTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    iget v7, p0, Lcom/android/server/wm/RecentsAnimation;->mTargetActivityType:I

    invoke-virtual {v6, v3, v7}, Lcom/android/server/wm/TaskDisplayArea;->getRootTask(II)Lcom/android/server/wm/Task;

    move-result-object v0

    .line 145
    invoke-direct {p0, v0}, Lcom/android/server/wm/RecentsAnimation;->getTargetActivity(Lcom/android/server/wm/Task;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    .line 146
    if-nez v4, :cond_92

    .line 147
    sget-object v1, Lcom/android/server/wm/RecentsAnimation;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot start "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/RecentsAnimation;->mTargetIntent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    return-void

    .line 152
    :cond_92
    :goto_92
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v6

    if-nez v6, :cond_bb

    .line 153
    sget-boolean v6, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_RECENTS_ANIMATIONS_enabled:Z

    if-eqz v6, :cond_a7

    sget-object v6, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_RECENTS_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v7, 0x266cf679

    move-object v8, v1

    check-cast v8, [Ljava/lang/Object;

    invoke-static {v6, v7, v3, v1, v1}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 154
    :cond_a7
    iget-object v1, p0, Lcom/android/server/wm/RecentsAnimation;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v1, v4, v3, v3}, Lcom/android/server/wm/ActivityTaskSupervisor;->startSpecificActivity(Lcom/android/server/wm/ActivityRecord;ZZ)V

    .line 157
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    if-eqz v1, :cond_bb

    .line 158
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mUnknownAppVisibilityController:Lcom/android/server/wm/UnknownAppVisibilityController;

    .line 159
    invoke-virtual {v1, v4}, Lcom/android/server/wm/UnknownAppVisibilityController;->appRemovedOrHidden(Lcom/android/server/wm/ActivityRecord;)V

    .line 165
    :cond_bb
    sget-object v1, Lcom/android/server/wm/ActivityRecord$State;->STOPPING:Lcom/android/server/wm/ActivityRecord$State;

    sget-object v3, Lcom/android/server/wm/ActivityRecord$State;->STOPPED:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {v4, v1, v3}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v1

    if-nez v1, :cond_c8

    .line 170
    invoke-virtual {v4, v2, v2, v5}, Lcom/android/server/wm/ActivityRecord;->addToStopping(ZZLjava/lang/String;)V

    .line 173
    :cond_c8
    return-void
.end method

.method startRecentsActivity(Landroid/view/IRecentsAnimationRunner;J)V
    .registers 11
    .param p1, "recentsAnimationRunner"    # Landroid/view/IRecentsAnimationRunner;
    .param p2, "eventTime"    # J

    .line 186
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/RecentsAnimation;->startRecentsActivity(Landroid/view/IRecentsAnimationRunner;J[F[IF)V

    .line 187
    return-void
.end method

.method startRecentsActivity(Landroid/view/IRecentsAnimationRunner;J[F[IF)V
    .registers 35
    .param p1, "recentsAnimationRunner"    # Landroid/view/IRecentsAnimationRunner;
    .param p2, "eventTime"    # J
    .param p4, "matrix"    # [F
    .param p5, "crop"    # [I
    .param p6, "radius"    # F

    .line 193
    move-object/from16 v11, p0

    move-wide/from16 v12, p2

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/RecentsAnimation;->checkRotationFinished()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 194
    sget-object v0, Lcom/android/server/wm/RecentsAnimation;->TAG:Ljava/lang/String;

    const-string v1, "Cancel recentsAnimation, because rotation has not finished"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    return-void

    .line 199
    :cond_12
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_RECENTS_ANIMATIONS_enabled:Z

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/4 v10, 0x0

    if-eqz v0, :cond_2b

    iget-object v0, v11, Lcom/android/server/wm/RecentsAnimation;->mTargetIntent:Landroid/content/Intent;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "protoLogParam0":Ljava/lang/String;
    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_RECENTS_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v2, -0x54466bce

    new-array v3, v15, [Ljava/lang/Object;

    aput-object v0, v3, v10

    invoke-static {v1, v2, v10, v14, v3}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 200
    .end local v0    # "protoLogParam0":Ljava/lang/String;
    :cond_2b
    const-wide/16 v8, 0x20

    const-string v0, "RecentsAnimation#startRecentsActivity"

    invoke-static {v8, v9, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 204
    iget-object v0, v11, Lcom/android/server/wm/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v0

    const/4 v1, 0x2

    if-eqz v0, :cond_47

    .line 205
    iget-object v0, v11, Lcom/android/server/wm/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v0

    const-string/jumbo v2, "startRecentsActivity"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/RecentsAnimationController;->forceCancelAnimation(ILjava/lang/String;)V

    .line 210
    :cond_47
    iget-object v0, v11, Lcom/android/server/wm/RecentsAnimation;->mDefaultTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    iget v2, v11, Lcom/android/server/wm/RecentsAnimation;->mTargetActivityType:I

    invoke-virtual {v0, v10, v2}, Lcom/android/server/wm/TaskDisplayArea;->getRootTask(II)Lcom/android/server/wm/Task;

    move-result-object v2

    .line 212
    .local v2, "targetRootTask":Lcom/android/server/wm/Task;
    invoke-direct {v11, v2}, Lcom/android/server/wm/RecentsAnimation;->getTargetActivity(Lcom/android/server/wm/Task;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    .line 213
    .local v3, "targetActivity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v3, :cond_57

    move v0, v15

    goto :goto_58

    :cond_57
    move v0, v10

    :goto_58
    move/from16 v16, v0

    .line 214
    .local v16, "hasExistingActivity":Z
    if-eqz v16, :cond_86

    .line 215
    invoke-static {v2}, Lcom/android/server/wm/TaskDisplayArea;->getRootTaskAbove(Lcom/android/server/wm/Task;)Lcom/android/server/wm/Task;

    move-result-object v0

    iput-object v0, v11, Lcom/android/server/wm/RecentsAnimation;->mRestoreTargetBehindRootTask:Lcom/android/server/wm/Task;

    .line 216
    if-nez v0, :cond_86

    .line 217
    invoke-virtual {v2}, Lcom/android/server/wm/Task;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v4

    if-ne v0, v4, :cond_86

    .line 218
    invoke-static/range {p1 .. p1}, Lcom/android/server/wm/RecentsAnimation;->notifyAnimationCancelBeforeStart(Landroid/view/IRecentsAnimationRunner;)V

    .line 219
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_RECENTS_ANIMATIONS_enabled:Z

    if-eqz v0, :cond_85

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "protoLogParam0":Ljava/lang/String;
    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_RECENTS_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v4, -0x817147

    new-array v5, v15, [Ljava/lang/Object;

    aput-object v0, v5, v10

    invoke-static {v1, v4, v10, v14, v5}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 221
    .end local v0    # "protoLogParam0":Ljava/lang/String;
    :cond_85
    return-void

    .line 227
    :cond_86
    if-eqz v3, :cond_8c

    iget-boolean v0, v3, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-nez v0, :cond_93

    .line 228
    :cond_8c
    iget-object v0, v11, Lcom/android/server/wm/RecentsAnimation;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, v15, v3}, Lcom/android/server/wm/RootWindowContainer;->startPowerModeLaunchIfNeeded(ZLcom/android/server/wm/ActivityRecord;)V

    .line 232
    :cond_93
    iget-object v0, v11, Lcom/android/server/wm/RecentsAnimation;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 233
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->getActivityMetricsLogger()Lcom/android/server/wm/ActivityMetricsLogger;

    move-result-object v0

    iget-object v4, v11, Lcom/android/server/wm/RecentsAnimation;->mTargetIntent:Landroid/content/Intent;

    invoke-virtual {v0, v4}, Lcom/android/server/wm/ActivityMetricsLogger;->notifyActivityLaunching(Landroid/content/Intent;)Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;

    move-result-object v23

    .line 235
    .local v23, "launchingState":Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;
    iget-object v0, v11, Lcom/android/server/wm/RecentsAnimation;->mCaller:Lcom/android/server/wm/WindowProcessController;

    if-eqz v0, :cond_a6

    .line 236
    invoke-virtual {v0, v15}, Lcom/android/server/wm/WindowProcessController;->setRunningRecentsAnimation(Z)V

    .line 239
    :cond_a6
    invoke-static {}, Lcom/android/server/wm/WindowManagerServiceStub;->get()Lcom/android/server/wm/WindowManagerServiceStub;

    move-result-object v0

    invoke-interface {v0, v15}, Lcom/android/server/wm/WindowManagerServiceStub;->setRunningRecentsAnimation(Z)V

    .line 241
    iget-object v0, v11, Lcom/android/server/wm/RecentsAnimation;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    .line 243
    const v0, 0x47063048

    if-eqz v16, :cond_e8

    .line 245
    :try_start_b7
    iget-object v4, v11, Lcom/android/server/wm/RecentsAnimation;->mDefaultTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    invoke-virtual {v4, v2}, Lcom/android/server/wm/TaskDisplayArea;->moveRootTaskBehindBottomMostVisibleRootTask(Lcom/android/server/wm/Task;)V

    .line 246
    sget-boolean v4, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_RECENTS_ANIMATIONS_enabled:Z

    if-eqz v4, :cond_d7

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .local v4, "protoLogParam0":Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/wm/TaskDisplayArea;->getRootTaskAbove(Lcom/android/server/wm/Task;)Lcom/android/server/wm/Task;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .local v5, "protoLogParam1":Ljava/lang/String;
    sget-object v6, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_RECENTS_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v4, v1, v10

    aput-object v5, v1, v15

    invoke-static {v6, v0, v10, v14, v1}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 252
    .end local v4    # "protoLogParam0":Ljava/lang/String;
    .end local v5    # "protoLogParam1":Ljava/lang/String;
    :cond_d7
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 253
    .local v0, "task":Lcom/android/server/wm/Task;
    invoke-virtual {v2}, Lcom/android/server/wm/Task;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-eq v1, v0, :cond_e4

    .line 254
    invoke-virtual {v2, v0}, Lcom/android/server/wm/Task;->positionChildAtTop(Lcom/android/server/wm/Task;)V

    .line 256
    .end local v0    # "task":Lcom/android/server/wm/Task;
    :cond_e4
    move-object/from16 v24, v2

    move-object v7, v3

    goto :goto_13f

    .line 258
    :cond_e8
    const-string/jumbo v4, "startRecentsActivity_noTargetActivity"

    invoke-direct {v11, v4}, Lcom/android/server/wm/RecentsAnimation;->startRecentsActivityInBackground(Ljava/lang/String;)V

    .line 261
    iget-object v4, v11, Lcom/android/server/wm/RecentsAnimation;->mDefaultTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    iget v5, v11, Lcom/android/server/wm/RecentsAnimation;->mTargetActivityType:I

    invoke-virtual {v4, v10, v5}, Lcom/android/server/wm/TaskDisplayArea;->getRootTask(II)Lcom/android/server/wm/Task;

    move-result-object v4

    move-object v2, v4

    .line 263
    invoke-direct {v11, v2}, Lcom/android/server/wm/RecentsAnimation;->getTargetActivity(Lcom/android/server/wm/Task;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    move-object v3, v4

    .line 264
    iget-object v4, v11, Lcom/android/server/wm/RecentsAnimation;->mDefaultTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    invoke-virtual {v4, v2}, Lcom/android/server/wm/TaskDisplayArea;->moveRootTaskBehindBottomMostVisibleRootTask(Lcom/android/server/wm/Task;)V

    .line 265
    sget-boolean v4, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_RECENTS_ANIMATIONS_enabled:Z

    if-eqz v4, :cond_11c

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "protoLogParam0":Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/wm/TaskDisplayArea;->getRootTaskAbove(Lcom/android/server/wm/Task;)Lcom/android/server/wm/Task;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "protoLogParam1":Ljava/lang/String;
    sget-object v6, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_RECENTS_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v4, v1, v10

    aput-object v5, v1, v15

    invoke-static {v6, v0, v10, v14, v1}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 268
    .end local v4    # "protoLogParam0":Ljava/lang/String;
    .end local v5    # "protoLogParam1":Ljava/lang/String;
    :cond_11c
    iget-object v0, v11, Lcom/android/server/wm/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransitionNone()V

    .line 269
    iget-object v0, v11, Lcom/android/server/wm/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V

    .line 273
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_RECENTS_ANIMATIONS_enabled:Z

    if-eqz v0, :cond_13c

    iget-object v0, v11, Lcom/android/server/wm/RecentsAnimation;->mTargetIntent:Landroid/content/Intent;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "protoLogParam0":Ljava/lang/String;
    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_RECENTS_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v4, 0x26838cff

    new-array v5, v15, [Ljava/lang/Object;

    aput-object v0, v5, v10

    invoke-static {v1, v4, v10, v14, v5}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_13c
    .catch Ljava/lang/Exception; {:try_start_b7 .. :try_end_13c} :catch_1d7
    .catchall {:try_start_b7 .. :try_end_13c} :catchall_1d3

    .line 277
    .end local v0    # "protoLogParam0":Ljava/lang/String;
    :cond_13c
    move-object/from16 v24, v2

    move-object v7, v3

    .end local v2    # "targetRootTask":Lcom/android/server/wm/Task;
    .end local v3    # "targetActivity":Lcom/android/server/wm/ActivityRecord;
    .local v7, "targetActivity":Lcom/android/server/wm/ActivityRecord;
    .local v24, "targetRootTask":Lcom/android/server/wm/Task;
    :goto_13f
    :try_start_13f
    invoke-static {}, Lcom/android/server/am/SmartPowerServiceStub;->getInstance()Lcom/android/server/am/SmartPowerServiceStub;

    move-result-object v0

    invoke-interface {v0, v7}, Lcom/android/server/am/SmartPowerServiceStub;->onRecentsAnimationStart(Lcom/android/server/wm/ActivityRecord;)V

    .line 281
    iput-boolean v15, v7, Lcom/android/server/wm/ActivityRecord;->mLaunchTaskBehind:Z

    .line 282
    iput-object v7, v11, Lcom/android/server/wm/RecentsAnimation;->mLaunchedTargetActivity:Lcom/android/server/wm/ActivityRecord;

    .line 284
    iget-object v0, v7, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    iget-object v1, v11, Lcom/android/server/wm/RecentsAnimation;->mTargetIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->replaceExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 288
    iget-object v1, v11, Lcom/android/server/wm/RecentsAnimation;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget v2, v11, Lcom/android/server/wm/RecentsAnimation;->mTargetActivityType:I

    iget-object v0, v11, Lcom/android/server/wm/RecentsAnimation;->mDefaultTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    .line 289
    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->getDisplayId()I

    move-result v5

    iget-object v0, v11, Lcom/android/server/wm/RecentsAnimation;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    .line 292
    invoke-virtual {v0}, Lcom/android/server/wm/RecentTasks;->getRecentTaskIds()Landroid/util/SparseBooleanArray;

    move-result-object v6
    :try_end_163
    .catch Ljava/lang/Exception; {:try_start_13f .. :try_end_163} :catch_1c9
    .catchall {:try_start_13f .. :try_end_163} :catchall_1bf

    .line 288
    move-object/from16 v3, p1

    move-object/from16 v4, p0

    move-object/from16 v25, v7

    .end local v7    # "targetActivity":Lcom/android/server/wm/ActivityRecord;
    .local v25, "targetActivity":Lcom/android/server/wm/ActivityRecord;
    move-wide/from16 v26, v8

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move v0, v10

    move/from16 v10, p6

    :try_start_172
    invoke-virtual/range {v1 .. v10}, Lcom/android/server/wm/WindowManagerService;->initializeRecentsAnimation(ILandroid/view/IRecentsAnimationRunner;Lcom/android/server/wm/RecentsAnimationController$RecentsAnimationCallbacks;ILandroid/util/SparseBooleanArray;Lcom/android/server/wm/ActivityRecord;[F[IF)V

    .line 296
    iget-object v1, v11, Lcom/android/server/wm/RecentsAnimation;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, v14, v0, v15}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 298
    const/4 v1, 0x0

    .line 299
    .local v1, "options":Landroid/app/ActivityOptions;
    const-wide/16 v2, 0x0

    cmp-long v2, v12, v2

    if-lez v2, :cond_18c

    .line 300
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v2

    move-object v1, v2

    .line 301
    const/4 v2, 0x4

    invoke-virtual {v1, v2, v12, v13}, Landroid/app/ActivityOptions;->setSourceInfo(IJ)V

    .line 303
    :cond_18c
    iget-object v2, v11, Lcom/android/server/wm/RecentsAnimation;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskSupervisor;->getActivityMetricsLogger()Lcom/android/server/wm/ActivityMetricsLogger;

    move-result-object v17

    const/16 v19, 0x2

    if-nez v16, :cond_199

    move/from16 v20, v15

    goto :goto_19b

    :cond_199
    move/from16 v20, v0

    :goto_19b
    move-object/from16 v18, v23

    move-object/from16 v21, v25

    move-object/from16 v22, v1

    invoke-virtual/range {v17 .. v22}, Lcom/android/server/wm/ActivityMetricsLogger;->notifyActivityLaunched(Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;IZLcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)V

    .line 307
    iget-object v0, v11, Lcom/android/server/wm/RecentsAnimation;->mDefaultTaskDisplayArea:Lcom/android/server/wm/TaskDisplayArea;

    invoke-virtual {v0, v11}, Lcom/android/server/wm/TaskDisplayArea;->registerRootTaskOrderChangedListener(Lcom/android/server/wm/TaskDisplayArea$OnRootTaskOrderChangedListener;)V
    :try_end_1a9
    .catch Ljava/lang/Exception; {:try_start_172 .. :try_end_1a9} :catch_1b9
    .catchall {:try_start_172 .. :try_end_1a9} :catchall_1b3

    .line 312
    .end local v1    # "options":Landroid/app/ActivityOptions;
    iget-object v0, v11, Lcom/android/server/wm/RecentsAnimation;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 313
    invoke-static/range {v26 .. v27}, Landroid/os/Trace;->traceEnd(J)V

    .line 314
    nop

    .line 315
    return-void

    .line 312
    :catchall_1b3
    move-exception v0

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    goto :goto_1e4

    .line 308
    :catch_1b9
    move-exception v0

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    goto :goto_1da

    .line 312
    .end local v25    # "targetActivity":Lcom/android/server/wm/ActivityRecord;
    .restart local v7    # "targetActivity":Lcom/android/server/wm/ActivityRecord;
    :catchall_1bf
    move-exception v0

    move-object/from16 v25, v7

    move-wide/from16 v26, v8

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    .end local v7    # "targetActivity":Lcom/android/server/wm/ActivityRecord;
    .restart local v25    # "targetActivity":Lcom/android/server/wm/ActivityRecord;
    goto :goto_1e4

    .line 308
    .end local v25    # "targetActivity":Lcom/android/server/wm/ActivityRecord;
    .restart local v7    # "targetActivity":Lcom/android/server/wm/ActivityRecord;
    :catch_1c9
    move-exception v0

    move-object/from16 v25, v7

    move-wide/from16 v26, v8

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    .end local v7    # "targetActivity":Lcom/android/server/wm/ActivityRecord;
    .restart local v25    # "targetActivity":Lcom/android/server/wm/ActivityRecord;
    goto :goto_1da

    .line 312
    .end local v24    # "targetRootTask":Lcom/android/server/wm/Task;
    .end local v25    # "targetActivity":Lcom/android/server/wm/ActivityRecord;
    .restart local v2    # "targetRootTask":Lcom/android/server/wm/Task;
    .restart local v3    # "targetActivity":Lcom/android/server/wm/ActivityRecord;
    :catchall_1d3
    move-exception v0

    move-wide/from16 v26, v8

    goto :goto_1e4

    .line 308
    :catch_1d7
    move-exception v0

    move-wide/from16 v26, v8

    .line 309
    .local v0, "e":Ljava/lang/Exception;
    :goto_1da
    :try_start_1da
    sget-object v1, Lcom/android/server/wm/RecentsAnimation;->TAG:Ljava/lang/String;

    const-string v4, "Failed to start recents activity"

    invoke-static {v1, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 310
    nop

    .end local v2    # "targetRootTask":Lcom/android/server/wm/Task;
    .end local v3    # "targetActivity":Lcom/android/server/wm/ActivityRecord;
    .end local v16    # "hasExistingActivity":Z
    .end local v23    # "launchingState":Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;
    .end local p0    # "this":Lcom/android/server/wm/RecentsAnimation;
    .end local p1    # "recentsAnimationRunner":Landroid/view/IRecentsAnimationRunner;
    .end local p2    # "eventTime":J
    .end local p4    # "matrix":[F
    .end local p5    # "crop":[I
    .end local p6    # "radius":F
    throw v0
    :try_end_1e3
    .catchall {:try_start_1da .. :try_end_1e3} :catchall_1e3

    .line 312
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "targetRootTask":Lcom/android/server/wm/Task;
    .restart local v3    # "targetActivity":Lcom/android/server/wm/ActivityRecord;
    .restart local v16    # "hasExistingActivity":Z
    .restart local v23    # "launchingState":Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;
    .restart local p0    # "this":Lcom/android/server/wm/RecentsAnimation;
    .restart local p1    # "recentsAnimationRunner":Landroid/view/IRecentsAnimationRunner;
    .restart local p2    # "eventTime":J
    .restart local p4    # "matrix":[F
    .restart local p5    # "crop":[I
    .restart local p6    # "radius":F
    :catchall_1e3
    move-exception v0

    :goto_1e4
    iget-object v1, v11, Lcom/android/server/wm/RecentsAnimation;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 313
    invoke-static/range {v26 .. v27}, Landroid/os/Trace;->traceEnd(J)V

    .line 314
    throw v0
.end method
