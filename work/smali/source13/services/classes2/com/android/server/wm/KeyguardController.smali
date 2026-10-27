.class Lcom/android/server/wm/KeyguardController;
.super Ljava/lang/Object;
.source "KeyguardController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;
    }
.end annotation


# static fields
.field static final KEYGUARD_SLEEP_TOKEN_TAG:Ljava/lang/String; = "keyguard"

.field private static final TAG:Ljava/lang/String; = "ActivityTaskManager"


# instance fields
.field private final mDisplayStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;",
            ">;"
        }
    .end annotation
.end field

.field private mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

.field private final mService:Lcom/android/server/wm/ActivityTaskManagerService;

.field private final mSleepTokenAcquirer:Lcom/android/server/wm/ActivityTaskManagerInternal$SleepTokenAcquirer;

.field private final mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

.field private mWindowManager:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method static bridge synthetic -$$Nest$fgetmService(Lcom/android/server/wm/KeyguardController;)Lcom/android/server/wm/ActivityTaskManagerService;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/KeyguardController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTaskSupervisor(Lcom/android/server/wm/KeyguardController;)Lcom/android/server/wm/ActivityTaskSupervisor;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/KeyguardController;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWindowManager(Lcom/android/server/wm/KeyguardController;)Lcom/android/server/wm/WindowManagerService;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mhandleKeyguardGoingAwayChanged(Lcom/android/server/wm/KeyguardController;Lcom/android/server/wm/DisplayContent;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/KeyguardController;->handleKeyguardGoingAwayChanged(Lcom/android/server/wm/DisplayContent;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleOccludedChanged(Lcom/android/server/wm/KeyguardController;ILcom/android/server/wm/ActivityRecord;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/KeyguardController;->handleOccludedChanged(ILcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityTaskSupervisor;)V
    .registers 5
    .param p1, "service"    # Lcom/android/server/wm/ActivityTaskManagerService;
    .param p2, "taskSupervisor"    # Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/KeyguardController;->mDisplayStates:Landroid/util/SparseArray;

    .line 87
    iput-object p1, p0, Lcom/android/server/wm/KeyguardController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 88
    iput-object p2, p0, Lcom/android/server/wm/KeyguardController;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 89
    new-instance v0, Lcom/android/server/wm/ActivityTaskManagerService$SleepTokenAcquirerImpl;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "keyguard"

    invoke-direct {v0, p1, v1}, Lcom/android/server/wm/ActivityTaskManagerService$SleepTokenAcquirerImpl;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wm/KeyguardController;->mSleepTokenAcquirer:Lcom/android/server/wm/ActivityTaskManagerInternal$SleepTokenAcquirer;

    .line 90
    return-void
.end method

.method private convertTransitFlags(I)I
    .registers 4
    .param p1, "keyguardGoingAwayFlags"    # I

    .line 308
    const/16 v0, 0x100

    .line 309
    .local v0, "result":I
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_8

    .line 310
    or-int/lit8 v0, v0, 0x1

    .line 312
    :cond_8
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_e

    .line 313
    or-int/lit8 v0, v0, 0x2

    .line 315
    :cond_e
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_14

    .line 316
    or-int/lit8 v0, v0, 0x4

    .line 318
    :cond_14
    and-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_1a

    .line 319
    or-int/lit8 v0, v0, 0x8

    .line 321
    :cond_1a
    and-int/lit8 v1, p1, 0x10

    if-eqz v1, :cond_20

    .line 323
    or-int/lit8 v0, v0, 0x16

    .line 325
    :cond_20
    return v0
.end method

.method private dismissMultiWindowModeForTaskIfNeeded(ILcom/android/server/wm/Task;)V
    .registers 4
    .param p1, "displayId"    # I
    .param p2, "currentTaskControllingOcclusion"    # Lcom/android/server/wm/Task;

    .line 500
    invoke-direct {p0, p1}, Lcom/android/server/wm/KeyguardController;->getDisplayState(I)Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->-$$Nest$fgetmKeyguardShowing(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;)Z

    move-result v0

    if-eqz v0, :cond_20

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/KeyguardController;->isDisplayOccluded(I)Z

    move-result v0

    if-nez v0, :cond_12

    goto :goto_20

    .line 505
    :cond_12
    if-nez p2, :cond_15

    .line 506
    return-void

    .line 508
    :cond_15
    invoke-virtual {p2}, Lcom/android/server/wm/Task;->inFreeformWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 509
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/android/server/wm/Task;->setWindowingMode(I)V

    .line 511
    :cond_1f
    return-void

    .line 501
    :cond_20
    :goto_20
    return-void
.end method

.method private dumpDisplayStates(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 722
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/wm/KeyguardController;->mDisplayStates:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 723
    iget-object v1, p0, Lcom/android/server/wm/KeyguardController;->mDisplayStates:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->dumpStatus(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 722
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 725
    .end local v0    # "i":I
    :cond_17
    return-void
.end method

.method private failCallback(Lcom/android/internal/policy/IKeyguardDismissCallback;)V
    .registers 5
    .param p1, "callback"    # Lcom/android/internal/policy/IKeyguardDismissCallback;

    .line 301
    :try_start_0
    invoke-interface {p1}, Lcom/android/internal/policy/IKeyguardDismissCallback;->onDismissError()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    .line 304
    goto :goto_c

    .line 302
    :catch_4
    move-exception v0

    .line 303
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ActivityTaskManager"

    const-string v2, "Failed to call callback"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 305
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_c
    return-void
.end method

.method private getDisplayState(I)Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;
    .registers 6
    .param p1, "displayId"    # I

    .line 531
    iget-object v0, p0, Lcom/android/server/wm/KeyguardController;->mDisplayStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;

    .line 532
    .local v0, "state":Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;
    if-nez v0, :cond_19

    .line 533
    new-instance v1, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;

    iget-object v2, p0, Lcom/android/server/wm/KeyguardController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, p0, Lcom/android/server/wm/KeyguardController;->mSleepTokenAcquirer:Lcom/android/server/wm/ActivityTaskManagerInternal$SleepTokenAcquirer;

    invoke-direct {v1, v2, p1, v3}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;ILcom/android/server/wm/ActivityTaskManagerInternal$SleepTokenAcquirer;)V

    move-object v0, v1

    .line 534
    iget-object v1, p0, Lcom/android/server/wm/KeyguardController;->mDisplayStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 536
    :cond_19
    return-object v0
.end method

.method private handleDismissKeyguard(I)V
    .registers 6
    .param p1, "displayId"    # I

    .line 461
    iget-object v0, p0, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/wm/KeyguardController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getCurrentUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->isKeyguardSecure(I)Z

    move-result v0

    if-nez v0, :cond_f

    .line 462
    return-void

    .line 465
    :cond_f
    iget-object v0, p0, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/android/server/wm/WindowManagerService;->dismissKeyguard(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V

    .line 466
    invoke-direct {p0, p1}, Lcom/android/server/wm/KeyguardController;->getDisplayState(I)Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;

    move-result-object v0

    .line 467
    .local v0, "state":Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->-$$Nest$fputmDismissalRequested(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;Z)V

    .line 471
    iget-object v1, p0, Lcom/android/server/wm/KeyguardController;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->getDefaultDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 472
    .local v1, "dc":Lcom/android/server/wm/DisplayContent;
    invoke-static {v0}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->-$$Nest$fgetmKeyguardShowing(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;)Z

    move-result v2

    if-eqz v2, :cond_3e

    invoke-virtual {p0}, Lcom/android/server/wm/KeyguardController;->canDismissKeyguard()Z

    move-result v2

    if-eqz v2, :cond_3e

    iget-object v2, v1, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    const/16 v3, 0x9

    .line 473
    invoke-virtual {v2, v3}, Lcom/android/server/wm/AppTransition;->containsTransitRequest(I)Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 474
    iget-object v2, p0, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V

    .line 476
    :cond_3e
    return-void
.end method

.method private handleKeyguardGoingAwayChanged(Lcom/android/server/wm/DisplayContent;)V
    .registers 6
    .param p1, "dc"    # Lcom/android/server/wm/DisplayContent;

    .line 439
    iget-object v0, p0, Lcom/android/server/wm/KeyguardController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    .line 441
    const/4 v0, 0x7

    const/4 v1, 0x0

    :try_start_7
    invoke-virtual {p1, v0, v1}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(II)V

    .line 445
    iget-object v0, p1, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTransitionController()Lcom/android/server/wm/TransitionController;

    move-result-object v0

    const/4 v1, 0x1

    const/16 v2, 0x100

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/server/wm/TransitionController;->requestTransitionIfNeeded(IILcom/android/server/wm/WindowContainer;Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/Transition;

    .line 447
    invoke-direct {p0}, Lcom/android/server/wm/KeyguardController;->updateKeyguardSleepToken()V

    .line 448
    iget-object v0, p0, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V
    :try_end_1f
    .catchall {:try_start_7 .. :try_end_1f} :catchall_26

    .line 450
    iget-object v0, p0, Lcom/android/server/wm/KeyguardController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 451
    nop

    .line 452
    return-void

    .line 450
    :catchall_26
    move-exception v0

    iget-object v1, p0, Lcom/android/server/wm/KeyguardController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 451
    throw v0
.end method

.method private handleOccludedChanged(ILcom/android/server/wm/ActivityRecord;)V
    .registers 6
    .param p1, "displayId"    # I
    .param p2, "topActivity"    # Lcom/android/server/wm/ActivityRecord;

    .line 400
    if-eqz p1, :cond_6

    .line 401
    invoke-direct {p0, p1}, Lcom/android/server/wm/KeyguardController;->updateKeyguardSleepToken(I)V

    .line 402
    return-void

    .line 405
    :cond_6
    iget-object v0, p0, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/wm/KeyguardController;->isDisplayOccluded(I)Z

    move-result v2

    invoke-interface {v0, v2}, Lcom/android/server/policy/WindowManagerPolicy;->onKeyguardOccludedChangedLw(Z)V

    .line 408
    iget-object v0, p0, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardShowing()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 409
    invoke-virtual {p0, v1}, Lcom/android/server/wm/KeyguardController;->isDisplayOccluded(I)Z

    move-result v0

    if-eqz v0, :cond_40

    if-eqz p2, :cond_40

    .line 410
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_40

    const/4 v0, 0x1

    .line 411
    invoke-virtual {p2, v0}, Lcom/android/server/wm/ActivityRecord;->isAnimating(I)Z

    move-result v0

    if-nez v0, :cond_40

    .line 412
    const-string v0, "ActivityTaskManager"

    const-string/jumbo v2, "may apply pending occlusion change"

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    iget-object v0, p0, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0, v1}, Lcom/android/server/policy/WindowManagerPolicy;->applyKeyguardOcclusionChange(Z)I

    .line 417
    :cond_40
    invoke-virtual {p0, p1}, Lcom/android/server/wm/KeyguardController;->isKeyguardLocked(I)Z

    move-result v0

    if-eqz v0, :cond_75

    .line 418
    iget-object v0, p0, Lcom/android/server/wm/KeyguardController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    .line 420
    :try_start_4b
    iget-object v0, p0, Lcom/android/server/wm/KeyguardController;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 422
    invoke-virtual {p0, v1}, Lcom/android/server/wm/KeyguardController;->isDisplayOccluded(I)Z

    move-result v2

    if-eqz v2, :cond_5a

    .line 423
    const/16 v2, 0x8

    goto :goto_5c

    .line 424
    :cond_5a
    const/16 v2, 0x9

    :goto_5c
    nop

    .line 421
    invoke-virtual {v0, v2, v1}, Lcom/android/server/wm/DisplayContent;->requestTransitionAndLegacyPrepare(II)V

    .line 425
    invoke-direct {p0, v1}, Lcom/android/server/wm/KeyguardController;->updateKeyguardSleepToken(I)V

    .line 426
    iget-object v0, p0, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V
    :try_end_68
    .catchall {:try_start_4b .. :try_end_68} :catchall_6e

    .line 428
    iget-object v0, p0, Lcom/android/server/wm/KeyguardController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 429
    goto :goto_75

    .line 428
    :catchall_6e
    move-exception v0

    iget-object v1, p0, Lcom/android/server/wm/KeyguardController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 429
    throw v0

    .line 431
    :cond_75
    :goto_75
    if-eqz p2, :cond_7c

    .line 432
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    goto :goto_7d

    :cond_7c
    const/4 v0, 0x0

    .line 431
    :goto_7d
    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/KeyguardController;->dismissMultiWindowModeForTaskIfNeeded(ILcom/android/server/wm/Task;)V

    .line 433
    return-void
.end method

.method private setWakeTransitionReady()V
    .registers 3

    .line 233
    iget-object v0, p0, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTransitionController()Lcom/android/server/wm/TransitionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->getCollectingTransitionType()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_21

    .line 235
    iget-object v0, p0, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTransitionController()Lcom/android/server/wm/TransitionController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/KeyguardController;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 236
    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->getDefaultDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 235
    invoke-virtual {v0, v1}, Lcom/android/server/wm/TransitionController;->setReady(Lcom/android/server/wm/WindowContainer;)V

    .line 238
    :cond_21
    return-void
.end method

.method private updateKeyguardSleepToken()V
    .registers 4

    .line 514
    iget-object v0, p0, Lcom/android/server/wm/KeyguardController;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 515
    .local v0, "displayNdx":I
    :goto_8
    if-ltz v0, :cond_1a

    .line 516
    iget-object v1, p0, Lcom/android/server/wm/KeyguardController;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/RootWindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    .line 517
    .local v1, "display":Lcom/android/server/wm/DisplayContent;
    iget v2, v1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-direct {p0, v2}, Lcom/android/server/wm/KeyguardController;->updateKeyguardSleepToken(I)V

    .line 515
    .end local v1    # "display":Lcom/android/server/wm/DisplayContent;
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 519
    .end local v0    # "displayNdx":I
    :cond_1a
    return-void
.end method

.method private updateKeyguardSleepToken(I)V
    .registers 4
    .param p1, "displayId"    # I

    .line 522
    invoke-direct {p0, p1}, Lcom/android/server/wm/KeyguardController;->getDisplayState(I)Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;

    move-result-object v0

    .line 523
    .local v0, "state":Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;
    invoke-virtual {p0, p1}, Lcom/android/server/wm/KeyguardController;->isKeyguardUnoccludedOrAodShowing(I)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 524
    invoke-static {v0}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->-$$Nest$fgetmSleepTokenAcquirer(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;)Lcom/android/server/wm/ActivityTaskManagerInternal$SleepTokenAcquirer;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/server/wm/ActivityTaskManagerInternal$SleepTokenAcquirer;->acquire(I)V

    goto :goto_19

    .line 526
    :cond_12
    invoke-static {v0}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->-$$Nest$fgetmSleepTokenAcquirer(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;)Lcom/android/server/wm/ActivityTaskManagerInternal$SleepTokenAcquirer;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/server/wm/ActivityTaskManagerInternal$SleepTokenAcquirer;->release(I)V

    .line 528
    :goto_19
    return-void
.end method

.method private writeDisplayStatesToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 6
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 728
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/wm/KeyguardController;->mDisplayStates:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 729
    iget-object v1, p0, Lcom/android/server/wm/KeyguardController;->mDisplayStates:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 728
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 731
    .end local v0    # "i":I
    :cond_17
    return-void
.end method


# virtual methods
.method canDismissKeyguard()Z
    .registers 3

    .line 486
    iget-object v0, p0, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardTrustedLw()Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/wm/KeyguardController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 487
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getCurrentUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->isKeyguardSecure(I)Z

    move-result v0

    if-nez v0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 v0, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 v0, 0x1

    .line 486
    :goto_1c
    return v0
.end method

.method canShowActivityWhileKeyguardShowing(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 4
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 336
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/wm/KeyguardController;->getDisplayState(I)Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;

    move-result-object v0

    .line 337
    .local v0, "state":Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->containsDismissKeyguardWindow()Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-virtual {p0}, Lcom/android/server/wm/KeyguardController;->canDismissKeyguard()Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-static {v0}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->-$$Nest$fgetmAodShowing(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;)Z

    move-result v1

    if-nez v1, :cond_2e

    invoke-static {v0}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->-$$Nest$fgetmDismissalRequested(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;)Z

    move-result v1

    if-nez v1, :cond_2c

    .line 339
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->canShowWhenLocked()Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-static {v0}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->-$$Nest$fgetmDismissingKeyguardActivity(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-eq v1, p1, :cond_2e

    :cond_2c
    const/4 v1, 0x1

    goto :goto_2f

    :cond_2e
    const/4 v1, 0x0

    .line 337
    :goto_2f
    return v1
.end method

.method canShowWhileOccluded(ZZ)Z
    .registers 5
    .param p1, "dismissKeyguard"    # Z
    .param p2, "showWhenLocked"    # Z

    .line 346
    if-nez p2, :cond_15

    if-eqz p1, :cond_13

    iget-object v0, p0, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/wm/KeyguardController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 347
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getCurrentUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->isKeyguardSecure(I)Z

    move-result v0

    if-nez v0, :cond_13

    goto :goto_15

    :cond_13
    const/4 v0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 v0, 0x1

    .line 346
    :goto_16
    return v0
.end method

.method checkKeyguardVisibility(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 4
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 356
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->canShowWithInsecureKeyguard()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/android/server/wm/KeyguardController;->canDismissKeyguard()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 357
    return v1

    .line 360
    :cond_10
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/KeyguardController;->isKeyguardOrAodShowing(I)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 363
    invoke-virtual {p0, p1}, Lcom/android/server/wm/KeyguardController;->canShowActivityWhileKeyguardShowing(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    return v0

    .line 364
    :cond_21
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/KeyguardController;->isKeyguardLocked(I)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 365
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->containsDismissKeyguardWindow()Z

    move-result v0

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->canShowWhenLocked()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/KeyguardController;->canShowWhileOccluded(ZZ)Z

    move-result v0

    return v0

    .line 367
    :cond_38
    return v1
.end method

.method dismissKeyguard(Landroid/os/IBinder;Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V
    .registers 7
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "callback"    # Lcom/android/internal/policy/IKeyguardDismissCallback;
    .param p3, "message"    # Ljava/lang/CharSequence;

    .line 283
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 284
    .local v0, "activityRecord":Lcom/android/server/wm/ActivityRecord;
    if-eqz v0, :cond_3c

    iget-boolean v1, v0, Lcom/android/server/wm/ActivityRecord;->visibleIgnoringKeyguard:Z

    if-nez v1, :cond_b

    goto :goto_3c

    .line 288
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Activity requesting to dismiss Keyguard: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityTaskManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTurnScreenOnFlag()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isTopRunningActivity()Z

    move-result v1

    if-eqz v1, :cond_36

    .line 293
    iget-object v1, p0, Lcom/android/server/wm/KeyguardController;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    const-string v2, "dismissKeyguard"

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityTaskSupervisor;->wakeUp(Ljava/lang/String;)V

    .line 296
    :cond_36
    iget-object v1, p0, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, p2, p3}, Lcom/android/server/wm/WindowManagerService;->dismissKeyguard(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V

    .line 297
    return-void

    .line 285
    :cond_3c
    :goto_3c
    invoke-direct {p0, p2}, Lcom/android/server/wm/KeyguardController;->failCallback(Lcom/android/internal/policy/IKeyguardDismissCallback;)V

    .line 286
    return-void
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 702
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/wm/KeyguardController;->getDisplayState(I)Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;

    move-result-object v0

    .line 703
    .local v0, "default_state":Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "KeyguardController:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 704
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  mKeyguardShowing="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->-$$Nest$fgetmKeyguardShowing(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 705
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  mAodShowing="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->-$$Nest$fgetmAodShowing(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 706
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  mKeyguardGoingAway="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->-$$Nest$fgetmKeyguardGoingAway(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 707
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/KeyguardController;->dumpDisplayStates(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 708
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  mDismissalRequested="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->-$$Nest$fgetmDismissalRequested(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 709
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 710
    return-void
.end method

.method dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 10
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 713
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/wm/KeyguardController;->getDisplayState(I)Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;

    move-result-object v0

    .line 714
    .local v0, "default_state":Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    .line 715
    .local v1, "token":J
    invoke-static {v0}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->-$$Nest$fgetmAodShowing(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;)Z

    move-result v3

    const-wide v4, 0x10800000003L

    invoke-virtual {p1, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 716
    invoke-static {v0}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->-$$Nest$fgetmKeyguardShowing(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;)Z

    move-result v3

    const-wide v4, 0x10800000001L

    invoke-virtual {p1, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 717
    const-wide v3, 0x20b00000004L

    invoke-direct {p0, p1, v3, v4}, Lcom/android/server/wm/KeyguardController;->writeDisplayStatesToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 718
    invoke-virtual {p1, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 719
    return-void
.end method

.method isAodShowing(I)Z
    .registers 3
    .param p1, "displayId"    # I

    .line 98
    invoke-direct {p0, p1}, Lcom/android/server/wm/KeyguardController;->getDisplayState(I)Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->-$$Nest$fgetmAodShowing(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;)Z

    move-result v0

    return v0
.end method

.method isDisplayOccluded(I)Z
    .registers 3
    .param p1, "displayId"    # I

    .line 479
    invoke-direct {p0, p1}, Lcom/android/server/wm/KeyguardController;->getDisplayState(I)Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->-$$Nest$fgetmOccluded(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;)Z

    move-result v0

    return v0
.end method

.method isKeyguardGoingAway(I)Z
    .registers 4
    .param p1, "displayId"    # I

    .line 155
    invoke-direct {p0, p1}, Lcom/android/server/wm/KeyguardController;->getDisplayState(I)Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;

    move-result-object v0

    .line 157
    .local v0, "state":Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;
    invoke-static {v0}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->-$$Nest$fgetmKeyguardGoingAway(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;)Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-static {v0}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->-$$Nest$fgetmKeyguardShowing(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;)Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v1, 0x1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    return v1
.end method

.method isKeyguardLocked(I)Z
    .registers 4
    .param p1, "displayId"    # I

    .line 139
    invoke-direct {p0, p1}, Lcom/android/server/wm/KeyguardController;->getDisplayState(I)Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;

    move-result-object v0

    .line 140
    .local v0, "state":Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;
    invoke-static {v0}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->-$$Nest$fgetmKeyguardShowing(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;)Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-static {v0}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->-$$Nest$fgetmKeyguardGoingAway(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;)Z

    move-result v1

    if-nez v1, :cond_12

    const/4 v1, 0x1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    return v1
.end method

.method isKeyguardOrAodShowing(I)Z
    .registers 4
    .param p1, "displayId"    # I

    .line 106
    invoke-direct {p0, p1}, Lcom/android/server/wm/KeyguardController;->getDisplayState(I)Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;

    move-result-object v0

    .line 107
    .local v0, "state":Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;
    invoke-static {v0}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->-$$Nest$fgetmKeyguardShowing(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;)Z

    move-result v1

    if-nez v1, :cond_10

    invoke-static {v0}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->-$$Nest$fgetmAodShowing(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;)Z

    move-result v1

    if-eqz v1, :cond_1e

    :cond_10
    invoke-static {v0}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->-$$Nest$fgetmKeyguardGoingAway(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 109
    invoke-virtual {p0, p1}, Lcom/android/server/wm/KeyguardController;->isDisplayOccluded(I)Z

    move-result v1

    if-nez v1, :cond_1e

    const/4 v1, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v1, 0x0

    .line 107
    :goto_1f
    return v1
.end method

.method isKeyguardShowing(I)Z
    .registers 4
    .param p1, "displayId"    # I

    .line 130
    invoke-direct {p0, p1}, Lcom/android/server/wm/KeyguardController;->getDisplayState(I)Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;

    move-result-object v0

    .line 131
    .local v0, "state":Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;
    invoke-static {v0}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->-$$Nest$fgetmKeyguardShowing(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;)Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-static {v0}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->-$$Nest$fgetmKeyguardGoingAway(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;)Z

    move-result v1

    if-nez v1, :cond_18

    .line 132
    invoke-virtual {p0, p1}, Lcom/android/server/wm/KeyguardController;->isDisplayOccluded(I)Z

    move-result v1

    if-nez v1, :cond_18

    const/4 v1, 0x1

    goto :goto_19

    :cond_18
    const/4 v1, 0x0

    .line 131
    :goto_19
    return v1
.end method

.method isKeyguardUnoccludedOrAodShowing(I)Z
    .registers 4
    .param p1, "displayId"    # I

    .line 118
    invoke-direct {p0, p1}, Lcom/android/server/wm/KeyguardController;->getDisplayState(I)Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;

    move-result-object v0

    .line 119
    .local v0, "state":Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;
    if-nez p1, :cond_13

    invoke-static {v0}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->-$$Nest$fgetmAodShowing(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 120
    invoke-static {v0}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->-$$Nest$fgetmKeyguardGoingAway(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    return v1

    .line 122
    :cond_13
    invoke-virtual {p0, p1}, Lcom/android/server/wm/KeyguardController;->isKeyguardOrAodShowing(I)Z

    move-result v1

    return v1
.end method

.method isShowingDream()Z
    .registers 2

    .line 494
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/wm/KeyguardController;->getDisplayState(I)Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->-$$Nest$fgetmShowingDream(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;)Z

    move-result v0

    return v0
.end method

.method keyguardGoingAway(II)V
    .registers 12
    .param p1, "displayId"    # I
    .param p2, "flags"    # I

    .line 247
    invoke-direct {p0, p1}, Lcom/android/server/wm/KeyguardController;->getDisplayState(I)Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;

    move-result-object v0

    .line 248
    .local v0, "state":Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;
    invoke-static {v0}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->-$$Nest$fgetmKeyguardShowing(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;)Z

    move-result v1

    if-eqz v1, :cond_73

    invoke-static {v0}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->-$$Nest$fgetmKeyguardGoingAway(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;)Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_73

    .line 251
    :cond_11
    const-wide/16 v1, 0x20

    const-string v3, "keyguardGoingAway"

    invoke-static {v1, v2, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 252
    iget-object v4, p0, Lcom/android/server/wm/KeyguardController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    .line 253
    const/4 v4, 0x1

    invoke-static {v0, v4}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->-$$Nest$fputmKeyguardGoingAway(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;Z)V

    .line 255
    nop

    .line 258
    :try_start_22
    invoke-static {v0}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->-$$Nest$fgetmAodShowing(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_2b

    move v5, v4

    goto :goto_2c

    :cond_2b
    move v5, v6

    .line 255
    :goto_2c
    invoke-static {p1, v4, v5, v4, v3}, Lcom/android/server/wm/EventLogTags;->writeWmSetKeyguardShown(IIIILjava/lang/String;)V

    .line 261
    invoke-direct {p0, p2}, Lcom/android/server/wm/KeyguardController;->convertTransitFlags(I)I

    move-result v3

    .line 262
    .local v3, "transitFlags":I
    iget-object v4, p0, Lcom/android/server/wm/KeyguardController;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v4}, Lcom/android/server/wm/RootWindowContainer;->getDefaultDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    .line 263
    .local v4, "dc":Lcom/android/server/wm/DisplayContent;
    const/4 v5, 0x7

    invoke-virtual {v4, v5, v3}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(II)V

    .line 267
    iget-object v5, v4, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityTaskManagerService;->getTransitionController()Lcom/android/server/wm/TransitionController;

    move-result-object v5

    const/4 v7, 0x4

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v3, v8, v4}, Lcom/android/server/wm/TransitionController;->requestTransitionIfNeeded(IILcom/android/server/wm/WindowContainer;Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/Transition;

    .line 269
    invoke-direct {p0}, Lcom/android/server/wm/KeyguardController;->updateKeyguardSleepToken()V

    .line 272
    iget-object v5, p0, Lcom/android/server/wm/KeyguardController;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v5}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities()Z

    .line 273
    iget-object v5, p0, Lcom/android/server/wm/KeyguardController;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v5, v8, v6, v6}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 274
    iget-object v5, p0, Lcom/android/server/wm/KeyguardController;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v5}, Lcom/android/server/wm/RootWindowContainer;->addStartingWindowsForVisibleActivities()V

    .line 275
    iget-object v5, p0, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V
    :try_end_5f
    .catchall {:try_start_22 .. :try_end_5f} :catchall_69

    .line 277
    .end local v3    # "transitFlags":I
    .end local v4    # "dc":Lcom/android/server/wm/DisplayContent;
    iget-object v3, p0, Lcom/android/server/wm/KeyguardController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 278
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 279
    nop

    .line 280
    return-void

    .line 277
    :catchall_69
    move-exception v3

    iget-object v4, p0, Lcom/android/server/wm/KeyguardController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 278
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 279
    throw v3

    .line 249
    :cond_73
    :goto_73
    return-void
.end method

.method onDisplayRemoved(I)V
    .registers 4
    .param p1, "displayId"    # I

    .line 540
    iget-object v0, p0, Lcom/android/server/wm/KeyguardController;->mDisplayStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;

    .line 541
    .local v0, "state":Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;
    if-eqz v0, :cond_12

    .line 542
    invoke-virtual {v0}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->onRemoved()V

    .line 543
    iget-object v1, p0, Lcom/android/server/wm/KeyguardController;->mDisplayStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 545
    :cond_12
    return-void
.end method

.method setKeyguardShown(IZZ)V
    .registers 11
    .param p1, "displayId"    # I
    .param p2, "keyguardShowing"    # Z
    .param p3, "aodShowing"    # Z

    .line 164
    iget-object v0, p0, Lcom/android/server/wm/KeyguardController;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->isKeyguardAlwaysUnlocked()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setKeyguardShown ignoring always unlocked display "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    return-void

    .line 169
    :cond_26
    invoke-direct {p0, p1}, Lcom/android/server/wm/KeyguardController;->getDisplayState(I)Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;

    move-result-object v0

    .line 170
    .local v0, "state":Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;
    invoke-static {v0}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->-$$Nest$fgetmAodShowing(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq p3, v1, :cond_34

    move v1, v2

    goto :goto_35

    :cond_34
    move v1, v3

    .line 173
    .local v1, "aodChanged":Z
    :goto_35
    invoke-static {v0}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->-$$Nest$fgetmKeyguardShowing(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;)Z

    move-result v4

    if-ne p2, v4, :cond_48

    invoke-static {v0}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->-$$Nest$fgetmKeyguardGoingAway(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;)Z

    move-result v4

    if-eqz v4, :cond_46

    if-eqz p2, :cond_46

    if-nez v1, :cond_46

    goto :goto_48

    :cond_46
    move v4, v3

    goto :goto_49

    :cond_48
    :goto_48
    move v4, v2

    .line 175
    .local v4, "keyguardChanged":Z
    :goto_49
    if-nez v4, :cond_51

    if-nez v1, :cond_51

    .line 176
    invoke-direct {p0}, Lcom/android/server/wm/KeyguardController;->setWakeTransitionReady()V

    .line 177
    return-void

    .line 179
    :cond_51
    nop

    .line 181
    nop

    .line 182
    nop

    .line 183
    invoke-static {v0}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->-$$Nest$fgetmKeyguardGoingAway(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;)Z

    move-result v5

    .line 179
    const-string/jumbo v6, "setKeyguardShown"

    invoke-static {p1, p2, p3, v5, v6}, Lcom/android/server/wm/EventLogTags;->writeWmSetKeyguardShown(IIIILjava/lang/String;)V

    .line 195
    xor-int v5, p3, p2

    if-nez v5, :cond_68

    if-eqz p3, :cond_95

    if-eqz v1, :cond_95

    if-eqz v4, :cond_95

    :cond_68
    invoke-static {v0}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->-$$Nest$fgetmKeyguardGoingAway(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;)Z

    move-result v5

    if-nez v5, :cond_95

    iget-object v5, p0, Lcom/android/server/wm/KeyguardController;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 197
    invoke-virtual {v5}, Lcom/android/server/wm/RootWindowContainer;->getDefaultDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v5

    iget v5, v5, Landroid/view/DisplayInfo;->state:I

    .line 196
    invoke-static {v5}, Landroid/view/Display;->isOnState(I)Z

    move-result v5

    if-eqz v5, :cond_95

    .line 199
    iget-object v5, p0, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    invoke-virtual {v5, v2}, Lcom/android/server/wm/TaskSnapshotController;->settingKeyguardShown(Z)V

    .line 201
    iget-object v2, p0, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/TaskSnapshotController;->snapshotForSleeping(I)V

    .line 204
    iget-object v2, p0, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/TaskSnapshotController;->settingKeyguardShown(Z)V

    .line 207
    :cond_95
    invoke-static {v0, p2}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->-$$Nest$fputmKeyguardShowing(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;Z)V

    .line 208
    invoke-static {v0, p3}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->-$$Nest$fputmAodShowing(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;Z)V

    .line 209
    if-eqz v1, :cond_a4

    .line 211
    iget-object v2, p0, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    .line 214
    :cond_a4
    const/4 v2, 0x0

    if-eqz v4, :cond_b2

    .line 216
    invoke-direct {p0, p1, v2}, Lcom/android/server/wm/KeyguardController;->dismissMultiWindowModeForTaskIfNeeded(ILcom/android/server/wm/Task;)V

    .line 218
    invoke-static {v0, v3}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->-$$Nest$fputmKeyguardGoingAway(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;Z)V

    .line 219
    if-eqz p2, :cond_b2

    .line 220
    invoke-static {v0, v3}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->-$$Nest$fputmDismissalRequested(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;Z)V

    .line 226
    :cond_b2
    invoke-direct {p0}, Lcom/android/server/wm/KeyguardController;->updateKeyguardSleepToken()V

    .line 227
    iget-object v5, p0, Lcom/android/server/wm/KeyguardController;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v5, v2, v3, v3}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 228
    invoke-static {}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->get()Lcom/android/server/inputmethod/InputMethodManagerInternal;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->updateImeWindowStatus(Z)V

    .line 229
    invoke-direct {p0}, Lcom/android/server/wm/KeyguardController;->setWakeTransitionReady()V

    .line 230
    return-void
.end method

.method setWindowManager(Lcom/android/server/wm/WindowManagerService;)V
    .registers 3
    .param p1, "windowManager"    # Lcom/android/server/wm/WindowManagerService;

    .line 93
    iput-object p1, p0, Lcom/android/server/wm/KeyguardController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 94
    iget-object v0, p0, Lcom/android/server/wm/KeyguardController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iput-object v0, p0, Lcom/android/server/wm/KeyguardController;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 95
    return-void
.end method

.method topActivityOccludesKeyguard(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 3
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 148
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/wm/KeyguardController;->getDisplayState(I)Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->-$$Nest$fgetmTopOccludesActivity(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-ne v0, p1, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method updateVisibility()V
    .registers 5

    .line 377
    iget-object v0, p0, Lcom/android/server/wm/KeyguardController;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 378
    .local v0, "displayNdx":I
    :goto_8
    if-ltz v0, :cond_38

    .line 379
    iget-object v1, p0, Lcom/android/server/wm/KeyguardController;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/RootWindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    .line 380
    .local v1, "display":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->isRemoving()Z

    move-result v2

    if-nez v2, :cond_35

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->isRemoved()Z

    move-result v2

    if-eqz v2, :cond_1f

    goto :goto_35

    .line 381
    :cond_1f
    iget v2, v1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-direct {p0, v2}, Lcom/android/server/wm/KeyguardController;->getDisplayState(I)Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;

    move-result-object v2

    .line 382
    .local v2, "state":Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;
    invoke-virtual {v2, p0, v1}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->updateVisibility(Lcom/android/server/wm/KeyguardController;Lcom/android/server/wm/DisplayContent;)V

    .line 383
    invoke-static {v2}, Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;->-$$Nest$fgetmRequestDismissKeyguard(Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 384
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/server/wm/KeyguardController;->handleDismissKeyguard(I)V

    .line 378
    .end local v1    # "display":Lcom/android/server/wm/DisplayContent;
    .end local v2    # "state":Lcom/android/server/wm/KeyguardController$KeyguardDisplayState;
    :cond_35
    :goto_35
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 387
    .end local v0    # "displayNdx":I
    :cond_38
    return-void
.end method
