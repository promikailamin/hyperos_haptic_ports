.class Landroid/companion/virtual/VirtualDeviceManager$VirtualDeviceListenerDelegate;
.super Landroid/companion/virtual/IVirtualDeviceListener$Stub;
.source "VirtualDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/companion/virtual/VirtualDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VirtualDeviceListenerDelegate"
.end annotation


# instance fields
.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mListener:Landroid/companion/virtual/VirtualDeviceManager$VirtualDeviceListener;


# direct methods
.method public static synthetic blacklist $r8$lambda$kdJUfP0pAUbkOUnCwtBb9HjFuXs(Landroid/companion/virtual/VirtualDeviceManager$VirtualDeviceListenerDelegate;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/companion/virtual/VirtualDeviceManager$VirtualDeviceListenerDelegate;->lambda$onVirtualDeviceCreated$0(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$p2Us45TFcGJxKVUnZv1-C1muzOI(Landroid/companion/virtual/VirtualDeviceManager$VirtualDeviceListenerDelegate;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/companion/virtual/VirtualDeviceManager$VirtualDeviceListenerDelegate;->lambda$onVirtualDeviceClosed$1(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmListener(Landroid/companion/virtual/VirtualDeviceManager$VirtualDeviceListenerDelegate;)Landroid/companion/virtual/VirtualDeviceManager$VirtualDeviceListener;
    .registers 1

    iget-object p0, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDeviceListenerDelegate;->mListener:Landroid/companion/virtual/VirtualDeviceManager$VirtualDeviceListener;

    return-object p0
.end method

.method private constructor blacklist <init>(Ljava/util/concurrent/Executor;Landroid/companion/virtual/VirtualDeviceManager$VirtualDeviceListener;)V
    .registers 3

    .line 1527
    invoke-direct {p0}, Landroid/companion/virtual/IVirtualDeviceListener$Stub;-><init>()V

    .line 1528
    iput-object p1, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDeviceListenerDelegate;->mExecutor:Ljava/util/concurrent/Executor;

    .line 1529
    iput-object p2, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDeviceListenerDelegate;->mListener:Landroid/companion/virtual/VirtualDeviceManager$VirtualDeviceListener;

    .line 1530
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/concurrent/Executor;Landroid/companion/virtual/VirtualDeviceManager$VirtualDeviceListener;Landroid/companion/virtual/VirtualDeviceManager-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/companion/virtual/VirtualDeviceManager$VirtualDeviceListenerDelegate;-><init>(Ljava/util/concurrent/Executor;Landroid/companion/virtual/VirtualDeviceManager$VirtualDeviceListener;)V

    return-void
.end method

.method private synthetic blacklist lambda$onVirtualDeviceClosed$1(I)V
    .registers 3

    .line 1546
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDeviceListenerDelegate;->mListener:Landroid/companion/virtual/VirtualDeviceManager$VirtualDeviceListener;

    invoke-interface {v0, p1}, Landroid/companion/virtual/VirtualDeviceManager$VirtualDeviceListener;->onVirtualDeviceClosed(I)V

    return-void
.end method

.method private synthetic blacklist lambda$onVirtualDeviceCreated$0(I)V
    .registers 3

    .line 1536
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDeviceListenerDelegate;->mListener:Landroid/companion/virtual/VirtualDeviceManager$VirtualDeviceListener;

    invoke-interface {v0, p1}, Landroid/companion/virtual/VirtualDeviceManager$VirtualDeviceListener;->onVirtualDeviceCreated(I)V

    return-void
.end method


# virtual methods
.method public blacklist onVirtualDeviceClosed(I)V
    .registers 6

    .line 1544
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1546
    :try_start_4
    iget-object v2, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDeviceListenerDelegate;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/companion/virtual/VirtualDeviceManager$VirtualDeviceListenerDelegate$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, p1}, Landroid/companion/virtual/VirtualDeviceManager$VirtualDeviceListenerDelegate$$ExternalSyntheticLambda1;-><init>(Landroid/companion/virtual/VirtualDeviceManager$VirtualDeviceListenerDelegate;I)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_13

    .line 1548
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1549
    nop

    .line 1550
    return-void

    .line 1548
    :catchall_13
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1549
    throw p1
.end method

.method public blacklist onVirtualDeviceCreated(I)V
    .registers 6

    .line 1534
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1536
    :try_start_4
    iget-object v2, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDeviceListenerDelegate;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/companion/virtual/VirtualDeviceManager$VirtualDeviceListenerDelegate$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p1}, Landroid/companion/virtual/VirtualDeviceManager$VirtualDeviceListenerDelegate$$ExternalSyntheticLambda0;-><init>(Landroid/companion/virtual/VirtualDeviceManager$VirtualDeviceListenerDelegate;I)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_13

    .line 1538
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1539
    nop

    .line 1540
    return-void

    .line 1538
    :catchall_13
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1539
    throw p1
.end method
