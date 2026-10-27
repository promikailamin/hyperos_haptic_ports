.class public Lcom/android/server/health/HealthServiceWrapperAidl$ServiceCallback;
.super Landroid/os/IServiceCallback$Stub;
.source "HealthServiceWrapperAidl.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/health/HealthServiceWrapperAidl;


# direct methods
.method public static synthetic $r8$lambda$G_xjW-zTuBz0FJQbymKloWh0CU8(Lcom/android/server/health/HealthServiceWrapperAidl$ServiceCallback;Landroid/os/IBinder;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/health/HealthServiceWrapperAidl$ServiceCallback;->lambda$onRegistration$0(Landroid/os/IBinder;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/health/HealthServiceWrapperAidl;)V
    .registers 2

    .line 261
    iput-object p1, p0, Lcom/android/server/health/HealthServiceWrapperAidl$ServiceCallback;->this$0:Lcom/android/server/health/HealthServiceWrapperAidl;

    invoke-direct {p0}, Landroid/os/IServiceCallback$Stub;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/health/HealthServiceWrapperAidl;Lcom/android/server/health/HealthServiceWrapperAidl-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/health/HealthServiceWrapperAidl$ServiceCallback;-><init>(Lcom/android/server/health/HealthServiceWrapperAidl;)V

    return-void
.end method


# virtual methods
.method public final synthetic lambda$onRegistration$0(Landroid/os/IBinder;)V
    .registers 5

    .line 274
    invoke-static {p1}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/health/IHealth$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/health/IHealth;

    move-result-object v0

    .line 275
    iget-object v1, p0, Lcom/android/server/health/HealthServiceWrapperAidl$ServiceCallback;->this$0:Lcom/android/server/health/HealthServiceWrapperAidl;

    invoke-static {v1}, Lcom/android/server/health/HealthServiceWrapperAidl;->-$$Nest$fgetmLastService(Lcom/android/server/health/HealthServiceWrapperAidl;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/health/IHealth;

    if-eqz v1, :cond_1b

    .line 276
    invoke-interface {v1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_1c

    :cond_1b
    const/4 v2, 0x0

    .line 277
    :goto_1c
    invoke-static {p1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_23

    goto :goto_3b

    .line 280
    :cond_23
    const-string p1, "HealthServiceWrapperAidl"

    const-string v2, "New health AIDL HAL service registered"

    invoke-static {p1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    iget-object p1, p0, Lcom/android/server/health/HealthServiceWrapperAidl$ServiceCallback;->this$0:Lcom/android/server/health/HealthServiceWrapperAidl;

    invoke-static {p1}, Lcom/android/server/health/HealthServiceWrapperAidl;->-$$Nest$fgetmRegCallback(Lcom/android/server/health/HealthServiceWrapperAidl;)Lcom/android/server/health/HealthRegCallbackAidl;

    move-result-object p1

    if-eqz p1, :cond_3b

    .line 282
    iget-object p0, p0, Lcom/android/server/health/HealthServiceWrapperAidl$ServiceCallback;->this$0:Lcom/android/server/health/HealthServiceWrapperAidl;

    invoke-static {p0}, Lcom/android/server/health/HealthServiceWrapperAidl;->-$$Nest$fgetmRegCallback(Lcom/android/server/health/HealthServiceWrapperAidl;)Lcom/android/server/health/HealthRegCallbackAidl;

    move-result-object p0

    invoke-virtual {p0, v1, v0}, Lcom/android/server/health/HealthRegCallbackAidl;->onRegistration(Landroid/hardware/health/IHealth;Landroid/hardware/health/IHealth;)V

    :cond_3b
    :goto_3b
    return-void
.end method

.method public onRegistration(Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 4

    .line 265
    sget-object v0, Lcom/android/server/health/HealthServiceWrapperAidl;->SERVICE_NAME:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    return-void

    .line 270
    :cond_9
    iget-object p1, p0, Lcom/android/server/health/HealthServiceWrapperAidl$ServiceCallback;->this$0:Lcom/android/server/health/HealthServiceWrapperAidl;

    invoke-virtual {p1}, Lcom/android/server/health/HealthServiceWrapperAidl;->getHandlerThread()Landroid/os/HandlerThread;

    move-result-object p1

    .line 271
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/android/server/health/HealthServiceWrapperAidl$ServiceCallback$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2}, Lcom/android/server/health/HealthServiceWrapperAidl$ServiceCallback$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/health/HealthServiceWrapperAidl$ServiceCallback;Landroid/os/IBinder;)V

    .line 272
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
