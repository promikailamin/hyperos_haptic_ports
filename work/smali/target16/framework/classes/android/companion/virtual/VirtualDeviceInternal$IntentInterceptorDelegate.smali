.class Landroid/companion/virtual/VirtualDeviceInternal$IntentInterceptorDelegate;
.super Landroid/companion/virtual/IVirtualDeviceIntentInterceptor$Stub;
.source "VirtualDeviceInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/companion/virtual/VirtualDeviceInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IntentInterceptorDelegate"
.end annotation


# instance fields
.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mIntentInterceptorCallback:Landroid/companion/virtual/VirtualDeviceManager$IntentInterceptorCallback;


# direct methods
.method public static synthetic blacklist $r8$lambda$C7PKd0PqD2-0ji6M9yiHi4Scrs4(Landroid/companion/virtual/VirtualDeviceInternal$IntentInterceptorDelegate;Landroid/content/Intent;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/companion/virtual/VirtualDeviceInternal$IntentInterceptorDelegate;->lambda$onIntentIntercepted$0(Landroid/content/Intent;)V

    return-void
.end method

.method private constructor blacklist <init>(Ljava/util/concurrent/Executor;Landroid/companion/virtual/VirtualDeviceManager$IntentInterceptorCallback;)V
    .registers 3

    .line 653
    invoke-direct {p0}, Landroid/companion/virtual/IVirtualDeviceIntentInterceptor$Stub;-><init>()V

    .line 654
    iput-object p1, p0, Landroid/companion/virtual/VirtualDeviceInternal$IntentInterceptorDelegate;->mExecutor:Ljava/util/concurrent/Executor;

    .line 655
    iput-object p2, p0, Landroid/companion/virtual/VirtualDeviceInternal$IntentInterceptorDelegate;->mIntentInterceptorCallback:Landroid/companion/virtual/VirtualDeviceManager$IntentInterceptorCallback;

    .line 656
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/concurrent/Executor;Landroid/companion/virtual/VirtualDeviceManager$IntentInterceptorCallback;Landroid/companion/virtual/VirtualDeviceInternal-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/companion/virtual/VirtualDeviceInternal$IntentInterceptorDelegate;-><init>(Ljava/util/concurrent/Executor;Landroid/companion/virtual/VirtualDeviceManager$IntentInterceptorCallback;)V

    return-void
.end method

.method private synthetic blacklist lambda$onIntentIntercepted$0(Landroid/content/Intent;)V
    .registers 3

    .line 662
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceInternal$IntentInterceptorDelegate;->mIntentInterceptorCallback:Landroid/companion/virtual/VirtualDeviceManager$IntentInterceptorCallback;

    invoke-interface {v0, p1}, Landroid/companion/virtual/VirtualDeviceManager$IntentInterceptorCallback;->onIntentIntercepted(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public blacklist onIntentIntercepted(Landroid/content/Intent;)V
    .registers 6

    .line 660
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 662
    :try_start_4
    iget-object v2, p0, Landroid/companion/virtual/VirtualDeviceInternal$IntentInterceptorDelegate;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/companion/virtual/VirtualDeviceInternal$IntentInterceptorDelegate$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p1}, Landroid/companion/virtual/VirtualDeviceInternal$IntentInterceptorDelegate$$ExternalSyntheticLambda0;-><init>(Landroid/companion/virtual/VirtualDeviceInternal$IntentInterceptorDelegate;Landroid/content/Intent;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_13

    .line 664
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 665
    nop

    .line 666
    return-void

    .line 664
    :catchall_13
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 665
    throw p1
.end method
