.class Landroid/app/UiModeManager$UserCallback;
.super Landroid/app/IUiModeManagerCallback$Stub;
.source "UiModeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/UiModeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UserCallback"
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


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmContrast(Landroid/app/UiModeManager$UserCallback;)F
    .registers 1

    iget p0, p0, Landroid/app/UiModeManager$UserCallback;->mContrast:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmContrastChangeListeners(Landroid/app/UiModeManager$UserCallback;)Landroid/util/ArrayMap;
    .registers 1

    iget-object p0, p0, Landroid/app/UiModeManager$UserCallback;->mContrastChangeListeners:Landroid/util/ArrayMap;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmForceInvertState(Landroid/app/UiModeManager$UserCallback;)I
    .registers 1

    iget p0, p0, Landroid/app/UiModeManager$UserCallback;->mForceInvertState:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmForceInvertStateChangeListeners(Landroid/app/UiModeManager$UserCallback;)Landroid/util/ArrayMap;
    .registers 1

    iget-object p0, p0, Landroid/app/UiModeManager$UserCallback;->mForceInvertStateChangeListeners:Landroid/util/ArrayMap;

    return-object p0
.end method

.method private constructor blacklist <init>(I)V
    .registers 3

    .line 746
    invoke-direct {p0}, Landroid/app/IUiModeManagerCallback$Stub;-><init>()V

    .line 757
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/UiModeManager$UserCallback;->mContrast:F

    .line 760
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/UiModeManager$UserCallback;->mForceInvertState:I

    .line 767
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/UiModeManager$UserCallback;->mContrastChangeListeners:Landroid/util/ArrayMap;

    .line 770
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/UiModeManager$UserCallback;->mForceInvertStateChangeListeners:Landroid/util/ArrayMap;

    .line 748
    :try_start_17
    invoke-static {}, Landroid/app/UiModeManager;->-$$Nest$sfgetsGlobals()Landroid/app/UiModeManager$Globals;

    move-result-object v0

    invoke-static {v0}, Landroid/app/UiModeManager$Globals;->-$$Nest$fgetmService(Landroid/app/UiModeManager$Globals;)Landroid/app/IUiModeManager;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/app/IUiModeManager;->addCallback(Landroid/app/IUiModeManagerCallback;I)V

    .line 749
    invoke-static {}, Landroid/app/UiModeManager;->-$$Nest$sfgetsGlobals()Landroid/app/UiModeManager$Globals;

    move-result-object v0

    invoke-static {v0}, Landroid/app/UiModeManager$Globals;->-$$Nest$fgetmService(Landroid/app/UiModeManager$Globals;)Landroid/app/IUiModeManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IUiModeManager;->getContrast(I)F

    move-result v0

    iput v0, p0, Landroid/app/UiModeManager$UserCallback;->mContrast:F

    .line 750
    invoke-static {}, Landroid/app/UiModeManager;->-$$Nest$sfgetsGlobals()Landroid/app/UiModeManager$Globals;

    move-result-object v0

    invoke-static {v0}, Landroid/app/UiModeManager$Globals;->-$$Nest$fgetmService(Landroid/app/UiModeManager$Globals;)Landroid/app/IUiModeManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IUiModeManager;->getForceInvertState(I)I

    move-result p1

    iput p1, p0, Landroid/app/UiModeManager$UserCallback;->mForceInvertState:I
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_3e} :catch_40

    .line 753
    nop

    .line 754
    return-void

    .line 751
    :catch_40
    move-exception p1

    .line 752
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method synthetic constructor blacklist <init>(ILandroid/app/UiModeManager-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/UiModeManager$UserCallback;-><init>(I)V

    return-void
.end method

.method static synthetic blacklist lambda$notifyContrastChanged$0(Landroid/app/UiModeManager$ContrastChangeListener;F)V
    .registers 2

    .line 785
    invoke-interface {p0, p1}, Landroid/app/UiModeManager$ContrastChangeListener;->onContrastChanged(F)V

    return-void
.end method

.method static synthetic blacklist lambda$notifyContrastChanged$1(FLandroid/app/UiModeManager$ContrastChangeListener;Ljava/util/concurrent/Executor;)V
    .registers 4

    .line 785
    new-instance v0, Landroid/app/UiModeManager$UserCallback$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p0}, Landroid/app/UiModeManager$UserCallback$$ExternalSyntheticLambda0;-><init>(Landroid/app/UiModeManager$ContrastChangeListener;F)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$notifyForceInvertStateChanged$2(Landroid/app/UiModeManager$ForceInvertStateChangeListener;I)V
    .registers 2

    .line 812
    invoke-interface {p0, p1}, Landroid/app/UiModeManager$ForceInvertStateChangeListener;->onForceInvertStateChanged(I)V

    return-void
.end method

.method static synthetic blacklist lambda$notifyForceInvertStateChanged$3(ILandroid/app/UiModeManager$ForceInvertStateChangeListener;Ljava/util/concurrent/Executor;)V
    .registers 6

    .line 810
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 812
    :try_start_4
    new-instance v2, Landroid/app/UiModeManager$UserCallback$$ExternalSyntheticLambda1;

    invoke-direct {v2, p1, p0}, Landroid/app/UiModeManager$UserCallback$$ExternalSyntheticLambda1;-><init>(Landroid/app/UiModeManager$ForceInvertStateChangeListener;I)V

    invoke-interface {p2, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_11

    .line 814
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 815
    nop

    .line 816
    return-void

    .line 814
    :catchall_11
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 815
    throw p0
.end method

.method private blacklist notifyForceInvertStateChanged(IZ)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 798
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 799
    invoke-static {}, Landroid/app/UiModeManager;->-$$Nest$sfgetsGlobals()Landroid/app/UiModeManager$Globals;

    move-result-object v1

    invoke-static {v1}, Landroid/app/UiModeManager$Globals;->-$$Nest$fgetmGlobalsLock(Landroid/app/UiModeManager$Globals;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 801
    :try_start_e
    iget v2, p0, Landroid/app/UiModeManager$UserCallback;->mForceInvertState:I

    if-ne v2, p1, :cond_16

    if-nez p2, :cond_16

    .line 802
    monitor-exit v1

    return-void

    .line 805
    :cond_16
    iput p1, p0, Landroid/app/UiModeManager$UserCallback;->mForceInvertState:I

    .line 806
    iget-object p2, p0, Landroid/app/UiModeManager$UserCallback;->mForceInvertStateChangeListeners:Landroid/util/ArrayMap;

    invoke-interface {v0, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 807
    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_e .. :try_end_1e} :catchall_27

    .line 809
    new-instance p2, Landroid/app/UiModeManager$UserCallback$$ExternalSyntheticLambda2;

    invoke-direct {p2, p1}, Landroid/app/UiModeManager$UserCallback$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-interface {v0, p2}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 817
    return-void

    .line 807
    :catchall_27
    move-exception p1

    :try_start_28
    monitor-exit v1
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    throw p1
.end method


# virtual methods
.method public blacklist notifyContrastChanged(F)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 775
    invoke-static {}, Landroid/app/UiModeManager;->-$$Nest$sfgetsGlobals()Landroid/app/UiModeManager$Globals;

    move-result-object v0

    invoke-static {v0}, Landroid/app/UiModeManager$Globals;->-$$Nest$fgetmGlobalsLock(Landroid/app/UiModeManager$Globals;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 777
    :try_start_9
    iget v1, p0, Landroid/app/UiModeManager$UserCallback;->mContrast:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 778
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    sub-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v1, v1

    const-wide v3, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    cmpg-double v1, v1, v3

    if-gez v1, :cond_24

    .line 779
    monitor-exit v0

    return-void

    .line 781
    :cond_24
    iput p1, p0, Landroid/app/UiModeManager$UserCallback;->mContrast:F

    .line 784
    iget-object v1, p0, Landroid/app/UiModeManager$UserCallback;->mContrastChangeListeners:Landroid/util/ArrayMap;

    new-instance v2, Landroid/app/UiModeManager$UserCallback$$ExternalSyntheticLambda3;

    invoke-direct {v2, p1}, Landroid/app/UiModeManager$UserCallback$$ExternalSyntheticLambda3;-><init>(F)V

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 786
    monitor-exit v0

    .line 787
    return-void

    .line 786
    :catchall_32
    move-exception p1

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_9 .. :try_end_34} :catchall_32

    throw p1
.end method

.method public blacklist notifyForceInvertOverrideStateChanged()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 822
    invoke-static {}, Landroid/app/UiModeManager;->-$$Nest$sfgetsGlobals()Landroid/app/UiModeManager$Globals;

    move-result-object v0

    invoke-static {v0}, Landroid/app/UiModeManager$Globals;->-$$Nest$fgetmGlobalsLock(Landroid/app/UiModeManager$Globals;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 823
    :try_start_9
    iget v1, p0, Landroid/app/UiModeManager$UserCallback;->mForceInvertState:I

    .line 824
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_11

    .line 828
    const/4 v0, 0x1

    invoke-direct {p0, v1, v0}, Landroid/app/UiModeManager$UserCallback;->notifyForceInvertStateChanged(IZ)V

    .line 829
    return-void

    .line 824
    :catchall_11
    move-exception v1

    :try_start_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public blacklist notifyForceInvertStateChanged(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 792
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/app/UiModeManager$UserCallback;->notifyForceInvertStateChanged(IZ)V

    .line 793
    return-void
.end method
