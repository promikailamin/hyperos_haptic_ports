.class Landroid/app/UiModeManager$Globals;
.super Landroid/app/IUiModeManagerCallback$Stub;
.source "UiModeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/UiModeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Globals"
.end annotation


# instance fields
.field private blacklist mContrast:F

.field private final blacklist mContrastChangeListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/app/UiModeManager$ContrastChangeListener;",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mForceInvertState:I

.field private final blacklist mForceInvertStateChangeListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/app/UiModeManager$ForceInvertStateChangeListener;",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mGlobalsLock:Ljava/lang/Object;

.field private final blacklist mService:Landroid/app/IUiModeManager;

.field private final blacklist mUserCallbacks:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/app/UiModeManager$UserCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmGlobalsLock(Landroid/app/UiModeManager$Globals;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/app/UiModeManager$Globals;->mGlobalsLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmService(Landroid/app/UiModeManager$Globals;)Landroid/app/IUiModeManager;
    .registers 1

    iget-object p0, p0, Landroid/app/UiModeManager$Globals;->mService:Landroid/app/IUiModeManager;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$maddContrastChangeListener(Landroid/app/UiModeManager$Globals;Landroid/app/UiModeManager$ContrastChangeListener;Ljava/util/concurrent/Executor;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/app/UiModeManager$Globals;->addContrastChangeListener(Landroid/app/UiModeManager$ContrastChangeListener;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$maddContrastChangeListener(Landroid/app/UiModeManager$Globals;Landroid/app/UiModeManager$ContrastChangeListener;Ljava/util/concurrent/Executor;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/app/UiModeManager$Globals;->addContrastChangeListener(Landroid/app/UiModeManager$ContrastChangeListener;Ljava/util/concurrent/Executor;I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$maddForceInvertStateChangeListener(Landroid/app/UiModeManager$Globals;Landroid/app/UiModeManager$ForceInvertStateChangeListener;Ljava/util/concurrent/Executor;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/app/UiModeManager$Globals;->addForceInvertStateChangeListener(Landroid/app/UiModeManager$ForceInvertStateChangeListener;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$maddForceInvertStateChangeListener(Landroid/app/UiModeManager$Globals;Landroid/app/UiModeManager$ForceInvertStateChangeListener;Ljava/util/concurrent/Executor;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/app/UiModeManager$Globals;->addForceInvertStateChangeListener(Landroid/app/UiModeManager$ForceInvertStateChangeListener;Ljava/util/concurrent/Executor;I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mgetContrast(Landroid/app/UiModeManager$Globals;)F
    .registers 1

    invoke-direct {p0}, Landroid/app/UiModeManager$Globals;->getContrast()F

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetContrast(Landroid/app/UiModeManager$Globals;I)F
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/UiModeManager$Globals;->getContrast(I)F

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetForceInvertOverrideState(Landroid/app/UiModeManager$Globals;ILjava/lang/String;)I
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/app/UiModeManager$Globals;->getForceInvertOverrideState(ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetForceInvertState(Landroid/app/UiModeManager$Globals;)I
    .registers 1

    invoke-direct {p0}, Landroid/app/UiModeManager$Globals;->getForceInvertState()I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetForceInvertState(Landroid/app/UiModeManager$Globals;I)I
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/UiModeManager$Globals;->getForceInvertState(I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mremoveContrastChangeListener(Landroid/app/UiModeManager$Globals;Landroid/app/UiModeManager$ContrastChangeListener;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/UiModeManager$Globals;->removeContrastChangeListener(Landroid/app/UiModeManager$ContrastChangeListener;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mremoveContrastChangeListener(Landroid/app/UiModeManager$Globals;Landroid/app/UiModeManager$ContrastChangeListener;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/app/UiModeManager$Globals;->removeContrastChangeListener(Landroid/app/UiModeManager$ContrastChangeListener;I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mremoveForceInvertStateChangeListener(Landroid/app/UiModeManager$Globals;Landroid/app/UiModeManager$ForceInvertStateChangeListener;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/UiModeManager$Globals;->removeForceInvertStateChangeListener(Landroid/app/UiModeManager$ForceInvertStateChangeListener;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mremoveForceInvertStateChangeListener(Landroid/app/UiModeManager$Globals;Landroid/app/UiModeManager$ForceInvertStateChangeListener;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/app/UiModeManager$Globals;->removeForceInvertStateChangeListener(Landroid/app/UiModeManager$ForceInvertStateChangeListener;I)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/app/IUiModeManager;)V
    .registers 4

    .line 623
    invoke-direct {p0}, Landroid/app/IUiModeManagerCallback$Stub;-><init>()V

    .line 490
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/app/UiModeManager$Globals;->mGlobalsLock:Ljava/lang/Object;

    .line 494
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/UiModeManager$Globals;->mForceInvertState:I

    .line 496
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/UiModeManager$Globals;->mContrast:F

    .line 502
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/UiModeManager$Globals;->mContrastChangeListeners:Landroid/util/ArrayMap;

    .line 505
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/UiModeManager$Globals;->mForceInvertStateChangeListeners:Landroid/util/ArrayMap;

    .line 621
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/app/UiModeManager$Globals;->mUserCallbacks:Landroid/util/SparseArray;

    .line 624
    iput-object p1, p0, Landroid/app/UiModeManager$Globals;->mService:Landroid/app/IUiModeManager;

    .line 625
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/Flags;->fixContrastAndForceInvertStateForMultiUser()Z

    move-result p1

    if-eqz p1, :cond_2e

    return-void

    .line 627
    :cond_2e
    :try_start_2e
    iget-object p1, p0, Landroid/app/UiModeManager$Globals;->mService:Landroid/app/IUiModeManager;

    const/16 v0, -0x2710

    invoke-interface {p1, p0, v0}, Landroid/app/IUiModeManager;->addCallback(Landroid/app/IUiModeManagerCallback;I)V

    .line 628
    iget-object p1, p0, Landroid/app/UiModeManager$Globals;->mService:Landroid/app/IUiModeManager;

    invoke-interface {p1, v0}, Landroid/app/IUiModeManager;->getContrast(I)F

    move-result p1

    iput p1, p0, Landroid/app/UiModeManager$Globals;->mContrast:F

    .line 629
    iget-object p1, p0, Landroid/app/UiModeManager$Globals;->mService:Landroid/app/IUiModeManager;

    invoke-interface {p1, v0}, Landroid/app/IUiModeManager;->getForceInvertState(I)I

    move-result p1

    iput p1, p0, Landroid/app/UiModeManager$Globals;->mForceInvertState:I
    :try_end_45
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_45} :catch_46

    .line 632
    goto :goto_4e

    .line 630
    :catch_46
    move-exception p1

    .line 631
    const-string v0, "UiModeManager"

    const-string v1, "Setup failed: UiModeManagerService is dead"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 633
    :goto_4e
    return-void
.end method

.method private blacklist addContrastChangeListener(Landroid/app/UiModeManager$ContrastChangeListener;Ljava/util/concurrent/Executor;)V
    .registers 5

    .line 564
    iget-object v0, p0, Landroid/app/UiModeManager$Globals;->mGlobalsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 565
    :try_start_3
    iget-object v1, p0, Landroid/app/UiModeManager$Globals;->mContrastChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 566
    monitor-exit v0

    .line 567
    return-void

    .line 566
    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p1
.end method

.method private blacklist addContrastChangeListener(Landroid/app/UiModeManager$ContrastChangeListener;Ljava/util/concurrent/Executor;I)V
    .registers 5

    .line 714
    iget-object v0, p0, Landroid/app/UiModeManager$Globals;->mGlobalsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 715
    :try_start_3
    invoke-direct {p0, p3}, Landroid/app/UiModeManager$Globals;->getUserCallbackOrCreate(I)Landroid/app/UiModeManager$UserCallback;

    move-result-object p3

    .line 716
    invoke-static {p3}, Landroid/app/UiModeManager$UserCallback;->-$$Nest$fgetmContrastChangeListeners(Landroid/app/UiModeManager$UserCallback;)Landroid/util/ArrayMap;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 717
    monitor-exit v0

    .line 718
    return-void

    .line 717
    :catchall_10
    move-exception p1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw p1
.end method

.method private blacklist addForceInvertStateChangeListener(Landroid/app/UiModeManager$ForceInvertStateChangeListener;Ljava/util/concurrent/Executor;)V
    .registers 5

    .line 517
    iget-object v0, p0, Landroid/app/UiModeManager$Globals;->mGlobalsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 518
    :try_start_3
    iget-object v1, p0, Landroid/app/UiModeManager$Globals;->mForceInvertStateChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 519
    monitor-exit v0

    .line 520
    return-void

    .line 519
    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p1
.end method

.method private blacklist addForceInvertStateChangeListener(Landroid/app/UiModeManager$ForceInvertStateChangeListener;Ljava/util/concurrent/Executor;I)V
    .registers 5

    .line 681
    iget-object v0, p0, Landroid/app/UiModeManager$Globals;->mGlobalsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 682
    :try_start_3
    invoke-direct {p0, p3}, Landroid/app/UiModeManager$Globals;->getUserCallbackOrCreate(I)Landroid/app/UiModeManager$UserCallback;

    move-result-object p3

    .line 683
    invoke-static {p3}, Landroid/app/UiModeManager$UserCallback;->-$$Nest$fgetmForceInvertStateChangeListeners(Landroid/app/UiModeManager$UserCallback;)Landroid/util/ArrayMap;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 684
    monitor-exit v0

    .line 685
    return-void

    .line 684
    :catchall_10
    move-exception p1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw p1
.end method

.method private blacklist getContrast()F
    .registers 3

    .line 558
    iget-object v0, p0, Landroid/app/UiModeManager$Globals;->mGlobalsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 559
    :try_start_3
    iget v1, p0, Landroid/app/UiModeManager$Globals;->mContrast:F

    monitor-exit v0

    return v1

    .line 560
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method private blacklist getContrast(I)F
    .registers 4

    .line 699
    iget-object v0, p0, Landroid/app/UiModeManager$Globals;->mGlobalsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 700
    :try_start_3
    iget-object v1, p0, Landroid/app/UiModeManager$Globals;->mUserCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/UiModeManager$UserCallback;

    .line 701
    if-eqz v1, :cond_13

    .line 702
    invoke-static {v1}, Landroid/app/UiModeManager$UserCallback;->-$$Nest$fgetmContrast(Landroid/app/UiModeManager$UserCallback;)F

    move-result p1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_21

    return p1

    .line 705
    :cond_13
    :try_start_13
    iget-object v1, p0, Landroid/app/UiModeManager$Globals;->mService:Landroid/app/IUiModeManager;

    invoke-interface {v1, p1}, Landroid/app/IUiModeManager;->getContrast(I)F

    move-result p1
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_19} :catch_1b
    .catchall {:try_start_13 .. :try_end_19} :catchall_21

    :try_start_19
    monitor-exit v0

    return p1

    .line 706
    :catch_1b
    move-exception p1

    .line 707
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 709
    :catchall_21
    move-exception p1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_19 .. :try_end_23} :catchall_21

    throw p1
.end method

.method private blacklist getForceInvertOverrideState(ILjava/lang/String;)I
    .registers 5

    .line 732
    iget-object v0, p0, Landroid/app/UiModeManager$Globals;->mGlobalsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 735
    :try_start_3
    iget-object v1, p0, Landroid/app/UiModeManager$Globals;->mService:Landroid/app/IUiModeManager;

    invoke-interface {v1, p1, p2}, Landroid/app/IUiModeManager;->getForceInvertOverrideState(ILjava/lang/String;)I

    move-result p1
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_9} :catch_d
    .catchall {:try_start_3 .. :try_end_9} :catchall_b

    :try_start_9
    monitor-exit v0

    return p1

    .line 739
    :catchall_b
    move-exception p1

    goto :goto_13

    .line 736
    :catch_d
    move-exception p1

    .line 737
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 739
    :goto_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_9 .. :try_end_14} :catchall_b

    throw p1
.end method

.method private blacklist getForceInvertState()I
    .registers 3

    .line 510
    iget-object v0, p0, Landroid/app/UiModeManager$Globals;->mGlobalsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 511
    :try_start_3
    iget v1, p0, Landroid/app/UiModeManager$Globals;->mForceInvertState:I

    monitor-exit v0

    return v1

    .line 512
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method private blacklist getForceInvertState(I)I
    .registers 4

    .line 666
    iget-object v0, p0, Landroid/app/UiModeManager$Globals;->mGlobalsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 667
    :try_start_3
    iget-object v1, p0, Landroid/app/UiModeManager$Globals;->mUserCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/UiModeManager$UserCallback;

    .line 668
    if-eqz v1, :cond_13

    .line 669
    invoke-static {v1}, Landroid/app/UiModeManager$UserCallback;->-$$Nest$fgetmForceInvertState(Landroid/app/UiModeManager$UserCallback;)I

    move-result p1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_21

    return p1

    .line 672
    :cond_13
    :try_start_13
    iget-object v1, p0, Landroid/app/UiModeManager$Globals;->mService:Landroid/app/IUiModeManager;

    invoke-interface {v1, p1}, Landroid/app/IUiModeManager;->getForceInvertState(I)I

    move-result p1
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_19} :catch_1b
    .catchall {:try_start_13 .. :try_end_19} :catchall_21

    :try_start_19
    monitor-exit v0

    return p1

    .line 673
    :catch_1b
    move-exception p1

    .line 674
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 676
    :catchall_21
    move-exception p1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_19 .. :try_end_23} :catchall_21

    throw p1
.end method

.method private blacklist getUserCallbackOrCreate(I)Landroid/app/UiModeManager$UserCallback;
    .registers 4

    .line 636
    iget-object v0, p0, Landroid/app/UiModeManager$Globals;->mUserCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/UiModeManager$UserCallback;

    .line 637
    if-nez v0, :cond_21

    .line 639
    :try_start_a
    new-instance v0, Landroid/app/UiModeManager$UserCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/app/UiModeManager$UserCallback;-><init>(ILandroid/app/UiModeManager-IA;)V

    .line 640
    iget-object v1, p0, Landroid/app/UiModeManager$Globals;->mService:Landroid/app/IUiModeManager;

    invoke-interface {v1, v0, p1}, Landroid/app/IUiModeManager;->addCallback(Landroid/app/IUiModeManagerCallback;I)V

    .line 641
    iget-object v1, p0, Landroid/app/UiModeManager$Globals;->mUserCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_1a} :catch_1b

    .line 644
    goto :goto_21

    .line 642
    :catch_1b
    move-exception p1

    .line 643
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 646
    :cond_21
    :goto_21
    return-object v0
.end method

.method static synthetic blacklist lambda$notifyContrastChanged$2(Landroid/app/UiModeManager$ContrastChangeListener;F)V
    .registers 2

    .line 585
    invoke-interface {p0, p1}, Landroid/app/UiModeManager$ContrastChangeListener;->onContrastChanged(F)V

    return-void
.end method

.method static synthetic blacklist lambda$notifyContrastChanged$3(FLandroid/app/UiModeManager$ContrastChangeListener;Ljava/util/concurrent/Executor;)V
    .registers 4

    .line 584
    new-instance v0, Landroid/app/UiModeManager$Globals$$ExternalSyntheticLambda5;

    invoke-direct {v0, p1, p0}, Landroid/app/UiModeManager$Globals$$ExternalSyntheticLambda5;-><init>(Landroid/app/UiModeManager$ContrastChangeListener;F)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$notifyContrastChanged$4(Landroid/app/UiModeManager$ContrastChangeListener;F)V
    .registers 2

    .line 594
    invoke-interface {p0, p1}, Landroid/app/UiModeManager$ContrastChangeListener;->onContrastChanged(F)V

    return-void
.end method

.method static synthetic blacklist lambda$notifyContrastChanged$5(FLandroid/app/UiModeManager$ContrastChangeListener;Ljava/util/concurrent/Executor;)V
    .registers 6

    .line 592
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 594
    :try_start_4
    new-instance v2, Landroid/app/UiModeManager$Globals$$ExternalSyntheticLambda3;

    invoke-direct {v2, p1, p0}, Landroid/app/UiModeManager$Globals$$ExternalSyntheticLambda3;-><init>(Landroid/app/UiModeManager$ContrastChangeListener;F)V

    invoke-interface {p2, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_11

    .line 596
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 597
    nop

    .line 598
    return-void

    .line 596
    :catchall_11
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 597
    throw p0
.end method

.method static synthetic blacklist lambda$notifyForceInvertStateChanged$0(Landroid/app/UiModeManager$ForceInvertStateChangeListener;I)V
    .registers 2

    .line 550
    invoke-interface {p0, p1}, Landroid/app/UiModeManager$ForceInvertStateChangeListener;->onForceInvertStateChanged(I)V

    return-void
.end method

.method static synthetic blacklist lambda$notifyForceInvertStateChanged$1(ILandroid/app/UiModeManager$ForceInvertStateChangeListener;Ljava/util/concurrent/Executor;)V
    .registers 6

    .line 548
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 550
    :try_start_4
    new-instance v2, Landroid/app/UiModeManager$Globals$$ExternalSyntheticLambda4;

    invoke-direct {v2, p1, p0}, Landroid/app/UiModeManager$Globals$$ExternalSyntheticLambda4;-><init>(Landroid/app/UiModeManager$ForceInvertStateChangeListener;I)V

    invoke-interface {p2, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_11

    .line 552
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 553
    nop

    .line 554
    return-void

    .line 552
    :catchall_11
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 553
    throw p0
.end method

.method private blacklist notifyForceInvertStateChanged(IZ)V
    .registers 6

    .line 536
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 537
    iget-object v1, p0, Landroid/app/UiModeManager$Globals;->mGlobalsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 539
    :try_start_8
    iget v2, p0, Landroid/app/UiModeManager$Globals;->mForceInvertState:I

    if-ne v2, p1, :cond_10

    if-nez p2, :cond_10

    .line 540
    monitor-exit v1

    return-void

    .line 543
    :cond_10
    iput p1, p0, Landroid/app/UiModeManager$Globals;->mForceInvertState:I

    .line 544
    iget-object p2, p0, Landroid/app/UiModeManager$Globals;->mForceInvertStateChangeListeners:Landroid/util/ArrayMap;

    invoke-interface {v0, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 545
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_8 .. :try_end_18} :catchall_21

    .line 547
    new-instance p2, Landroid/app/UiModeManager$Globals$$ExternalSyntheticLambda0;

    invoke-direct {p2, p1}, Landroid/app/UiModeManager$Globals$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {v0, p2}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 555
    return-void

    .line 545
    :catchall_21
    move-exception p1

    :try_start_22
    monitor-exit v1
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw p1
.end method

.method private blacklist removeCallbackIfUnusedLocked(I)V
    .registers 4

    .line 650
    iget-object v0, p0, Landroid/app/UiModeManager$Globals;->mUserCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/UiModeManager$UserCallback;

    .line 651
    if-eqz v0, :cond_33

    invoke-static {v0}, Landroid/app/UiModeManager$UserCallback;->-$$Nest$fgetmContrastChangeListeners(Landroid/app/UiModeManager$UserCallback;)Landroid/util/ArrayMap;

    move-result-object v1

    .line 652
    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-static {v0}, Landroid/app/UiModeManager$UserCallback;->-$$Nest$fgetmForceInvertStateChangeListeners(Landroid/app/UiModeManager$UserCallback;)Landroid/util/ArrayMap;

    move-result-object v1

    .line 653
    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1f

    goto :goto_33

    .line 657
    :cond_1f
    :try_start_1f
    iget-object v1, p0, Landroid/app/UiModeManager$Globals;->mService:Landroid/app/IUiModeManager;

    invoke-interface {v1, v0, p1}, Landroid/app/IUiModeManager;->removeCallback(Landroid/app/IUiModeManagerCallback;I)V

    .line 658
    iget-object v0, p0, Landroid/app/UiModeManager$Globals;->mUserCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_29} :catch_2a

    .line 661
    goto :goto_32

    .line 659
    :catch_2a
    move-exception p1

    .line 660
    const-string v0, "UiModeManager"

    const-string v1, "Failed to remove UiModeManagerCallback"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 662
    :goto_32
    return-void

    .line 654
    :cond_33
    :goto_33
    return-void
.end method

.method private blacklist removeContrastChangeListener(Landroid/app/UiModeManager$ContrastChangeListener;)V
    .registers 4

    .line 570
    iget-object v0, p0, Landroid/app/UiModeManager$Globals;->mGlobalsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 571
    :try_start_3
    iget-object v1, p0, Landroid/app/UiModeManager$Globals;->mContrastChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 572
    monitor-exit v0

    .line 573
    return-void

    .line 572
    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p1
.end method

.method private blacklist removeContrastChangeListener(Landroid/app/UiModeManager$ContrastChangeListener;I)V
    .registers 5

    .line 721
    iget-object v0, p0, Landroid/app/UiModeManager$Globals;->mGlobalsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 722
    :try_start_3
    iget-object v1, p0, Landroid/app/UiModeManager$Globals;->mUserCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/UiModeManager$UserCallback;

    .line 723
    if-eqz v1, :cond_17

    .line 724
    invoke-static {v1}, Landroid/app/UiModeManager$UserCallback;->-$$Nest$fgetmContrastChangeListeners(Landroid/app/UiModeManager$UserCallback;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 725
    invoke-direct {p0, p2}, Landroid/app/UiModeManager$Globals;->removeCallbackIfUnusedLocked(I)V

    .line 727
    :cond_17
    monitor-exit v0

    .line 728
    return-void

    .line 727
    :catchall_19
    move-exception p1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw p1
.end method

.method private blacklist removeForceInvertStateChangeListener(Landroid/app/UiModeManager$ForceInvertStateChangeListener;)V
    .registers 4

    .line 523
    iget-object v0, p0, Landroid/app/UiModeManager$Globals;->mGlobalsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 524
    :try_start_3
    iget-object v1, p0, Landroid/app/UiModeManager$Globals;->mForceInvertStateChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 525
    monitor-exit v0

    .line 526
    return-void

    .line 525
    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p1
.end method

.method private blacklist removeForceInvertStateChangeListener(Landroid/app/UiModeManager$ForceInvertStateChangeListener;I)V
    .registers 5

    .line 689
    iget-object v0, p0, Landroid/app/UiModeManager$Globals;->mGlobalsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 690
    :try_start_3
    iget-object v1, p0, Landroid/app/UiModeManager$Globals;->mUserCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/UiModeManager$UserCallback;

    .line 691
    if-eqz v1, :cond_17

    .line 692
    invoke-static {v1}, Landroid/app/UiModeManager$UserCallback;->-$$Nest$fgetmForceInvertStateChangeListeners(Landroid/app/UiModeManager$UserCallback;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 693
    invoke-direct {p0, p2}, Landroid/app/UiModeManager$Globals;->removeCallbackIfUnusedLocked(I)V

    .line 695
    :cond_17
    monitor-exit v0

    .line 696
    return-void

    .line 695
    :catchall_19
    move-exception p1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw p1
.end method


# virtual methods
.method public blacklist notifyContrastChanged(F)V
    .registers 7

    .line 578
    iget-object v0, p0, Landroid/app/UiModeManager$Globals;->mGlobalsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 580
    :try_start_3
    iget v1, p0, Landroid/app/UiModeManager$Globals;->mContrast:F

    sub-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v1, v1

    const-wide v3, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    cmpg-double v1, v1, v3

    if-gez v1, :cond_16

    monitor-exit v0

    return-void

    .line 581
    :cond_16
    iput p1, p0, Landroid/app/UiModeManager$Globals;->mContrast:F

    .line 583
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/Flags;->fixContrastAndForceInvertStateForMultiUser()Z

    move-result v1

    if-nez v1, :cond_2a

    .line 584
    iget-object v1, p0, Landroid/app/UiModeManager$Globals;->mContrastChangeListeners:Landroid/util/ArrayMap;

    new-instance v2, Landroid/app/UiModeManager$Globals$$ExternalSyntheticLambda1;

    invoke-direct {v2, p1}, Landroid/app/UiModeManager$Globals$$ExternalSyntheticLambda1;-><init>(F)V

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 586
    monitor-exit v0

    return-void

    .line 588
    :cond_2a
    new-instance v1, Landroid/util/ArrayMap;

    iget-object v2, p0, Landroid/app/UiModeManager$Globals;->mContrastChangeListeners:Landroid/util/ArrayMap;

    invoke-direct {v1, v2}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    .line 589
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_3 .. :try_end_32} :catchall_3b

    .line 591
    new-instance v0, Landroid/app/UiModeManager$Globals$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1}, Landroid/app/UiModeManager$Globals$$ExternalSyntheticLambda2;-><init>(F)V

    invoke-interface {v1, v0}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 601
    return-void

    .line 589
    :catchall_3b
    move-exception p1

    :try_start_3c
    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3b

    throw p1
.end method

.method public blacklist notifyForceInvertOverrideStateChanged()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 606
    invoke-static {}, Landroid/app/UiModeManager;->-$$Nest$sfgetsGlobals()Landroid/app/UiModeManager$Globals;

    move-result-object v0

    iget-object v0, v0, Landroid/app/UiModeManager$Globals;->mGlobalsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 607
    :try_start_7
    iget v1, p0, Landroid/app/UiModeManager$Globals;->mForceInvertState:I

    .line 608
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_f

    .line 612
    const/4 v0, 0x1

    invoke-direct {p0, v1, v0}, Landroid/app/UiModeManager$Globals;->notifyForceInvertStateChanged(IZ)V

    .line 613
    return-void

    .line 608
    :catchall_f
    move-exception v1

    :try_start_10
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public blacklist notifyForceInvertStateChanged(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 531
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/app/UiModeManager$Globals;->notifyForceInvertStateChanged(IZ)V

    .line 532
    return-void
.end method
