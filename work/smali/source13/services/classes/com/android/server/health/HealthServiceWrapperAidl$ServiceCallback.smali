.class Lcom/android/server/health/HealthServiceWrapperAidl$ServiceCallback;
.super Landroid/os/IServiceCallback$Stub;
.source "HealthServiceWrapperAidl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/health/HealthServiceWrapperAidl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/health/HealthServiceWrapperAidl;


# direct methods
.method private constructor <init>(Lcom/android/server/health/HealthServiceWrapperAidl;)V
    .registers 2

    .line 192
    iput-object p1, p0, Lcom/android/server/health/HealthServiceWrapperAidl$ServiceCallback;->this$0:Lcom/android/server/health/HealthServiceWrapperAidl;

    invoke-direct {p0}, Landroid/os/IServiceCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/health/HealthServiceWrapperAidl;Lcom/android/server/health/HealthServiceWrapperAidl$ServiceCallback-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/health/HealthServiceWrapperAidl$ServiceCallback;-><init>(Lcom/android/server/health/HealthServiceWrapperAidl;)V

    return-void
.end method


# virtual methods
.method synthetic lambda$onRegistration$0$com-android-server-health-HealthServiceWrapperAidl$ServiceCallback(Landroid/os/IBinder;)V
    .registers 7
    .param p1, "newBinder"    # Landroid/os/IBinder;

    .line 203
    nop

    .line 204
    invoke-static {p1}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/health/IHealth$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/health/IHealth;

    move-result-object v0

    .line 205
    .local v0, "newService":Landroid/hardware/health/IHealth;
    iget-object v1, p0, Lcom/android/server/health/HealthServiceWrapperAidl$ServiceCallback;->this$0:Lcom/android/server/health/HealthServiceWrapperAidl;

    invoke-static {v1}, Lcom/android/server/health/HealthServiceWrapperAidl;->-$$Nest$fgetmLastService(Lcom/android/server/health/HealthServiceWrapperAidl;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/health/IHealth;

    .line 207
    .local v1, "oldService":Landroid/hardware/health/IHealth;
    if-eqz v1, :cond_1c

    invoke-interface {v1}, Landroid/hardware/health/IHealth;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_1d

    :cond_1c
    const/4 v2, 0x0

    .line 208
    .local v2, "oldBinder":Landroid/os/IBinder;
    :goto_1d
    invoke-static {p1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    return-void

    .line 210
    :cond_24
    const-string v3, "HealthServiceWrapperAidl"

    const-string v4, "New health AIDL HAL service registered"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iget-object v3, p0, Lcom/android/server/health/HealthServiceWrapperAidl$ServiceCallback;->this$0:Lcom/android/server/health/HealthServiceWrapperAidl;

    invoke-static {v3}, Lcom/android/server/health/HealthServiceWrapperAidl;->-$$Nest$fgetmRegCallback(Lcom/android/server/health/HealthServiceWrapperAidl;)Lcom/android/server/health/HealthRegCallbackAidl;

    move-result-object v3

    if-eqz v3, :cond_3c

    .line 212
    iget-object v3, p0, Lcom/android/server/health/HealthServiceWrapperAidl$ServiceCallback;->this$0:Lcom/android/server/health/HealthServiceWrapperAidl;

    invoke-static {v3}, Lcom/android/server/health/HealthServiceWrapperAidl;->-$$Nest$fgetmRegCallback(Lcom/android/server/health/HealthServiceWrapperAidl;)Lcom/android/server/health/HealthRegCallbackAidl;

    move-result-object v3

    invoke-virtual {v3, v1, v0}, Lcom/android/server/health/HealthRegCallbackAidl;->onRegistration(Landroid/hardware/health/IHealth;Landroid/hardware/health/IHealth;)V

    .line 214
    :cond_3c
    return-void
.end method

.method public onRegistration(Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "newBinder"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 196
    sget-object v0, Lcom/android/server/health/HealthServiceWrapperAidl;->SERVICE_NAME:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 199
    :cond_9
    iget-object v0, p0, Lcom/android/server/health/HealthServiceWrapperAidl$ServiceCallback;->this$0:Lcom/android/server/health/HealthServiceWrapperAidl;

    invoke-virtual {v0}, Lcom/android/server/health/HealthServiceWrapperAidl;->getHandlerThread()Landroid/os/HandlerThread;

    move-result-object v0

    .line 200
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/health/HealthServiceWrapperAidl$ServiceCallback$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p2}, Lcom/android/server/health/HealthServiceWrapperAidl$ServiceCallback$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/health/HealthServiceWrapperAidl$ServiceCallback;Landroid/os/IBinder;)V

    .line 201
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 215
    return-void
.end method
