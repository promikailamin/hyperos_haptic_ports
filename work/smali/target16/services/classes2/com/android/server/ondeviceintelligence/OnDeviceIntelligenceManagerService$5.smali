.class public Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$5;
.super Ljava/lang/Object;
.source "OnDeviceIntelligenceManagerService.java"

# interfaces
.implements Lcom/android/server/ondeviceintelligence/ServiceConnector$ServiceLifecycleCallbacks;


# instance fields
.field public final synthetic this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;


# direct methods
.method public static synthetic $r8$lambda$0TbuWMlFnL8G6Uh3cLwFh7iJkcI(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$5;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$5;->lambda$onConnected$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$baymUP91x4Tob7pA9O_IsnBcjzM(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$5;Landroid/service/ondeviceintelligence/IOnDeviceSandboxedInferenceService;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$5;->lambda$onConnected$0(Landroid/service/ondeviceintelligence/IOnDeviceSandboxedInferenceService;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;)V
    .registers 2

    .line 900
    iput-object p1, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$5;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic lambda$onConnected$0(Landroid/service/ondeviceintelligence/IOnDeviceSandboxedInferenceService;)V
    .registers 2

    .line 925
    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$5;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    invoke-static {p0, p1}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->-$$Nest$mregisterModelLoadingBroadcasts(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;Landroid/service/ondeviceintelligence/IOnDeviceSandboxedInferenceService;)V

    return-void
.end method

.method public final synthetic lambda$onConnected$1()V
    .registers 1

    .line 927
    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$5;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    invoke-static {p0}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->-$$Nest$mregisterDeviceConfigChangeListener(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;)V

    return-void
.end method

.method public bridge synthetic onConnected(Landroid/os/IInterface;)V
    .registers 2

    .line 900
    check-cast p1, Landroid/service/ondeviceintelligence/IOnDeviceSandboxedInferenceService;

    invoke-virtual {p0, p1}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$5;->onConnected(Landroid/service/ondeviceintelligence/IOnDeviceSandboxedInferenceService;)V

    return-void
.end method

.method public onConnected(Landroid/service/ondeviceintelligence/IOnDeviceSandboxedInferenceService;)V
    .registers 4

    .line 904
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$5;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->ensureRemoteIntelligenceServiceInitialized(Z)Z

    move-result v0

    if-nez v0, :cond_11

    .line 906
    sget-object p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->TAG:Ljava/lang/String;

    const-string p1, "Failed to initialize remote intelligence service from inference service connection."

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 912
    :cond_11
    :try_start_11
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$5;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    .line 913
    invoke-static {v0}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->-$$Nest$mgetRemoteStorageService(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;)Landroid/service/ondeviceintelligence/IRemoteStorageService$Stub;

    move-result-object v0

    new-instance v1, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$5$1;

    invoke-direct {v1, p0}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$5$1;-><init>(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$5;)V

    .line 912
    invoke-interface {p1, v0, v1}, Landroid/service/ondeviceintelligence/IOnDeviceSandboxedInferenceService;->registerRemoteStorageService(Landroid/service/ondeviceintelligence/IRemoteStorageService;Landroid/os/IRemoteCallback;)V

    .line 921
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$5;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    invoke-static {v0}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->-$$Nest$fgetmRemoteOnDeviceIntelligenceService(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;)Lcom/android/server/ondeviceintelligence/RemoteOnDeviceIntelligenceService;

    move-result-object v0

    new-instance v1, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$5$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$5$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl;->run(Lcom/android/server/ondeviceintelligence/ServiceConnector$VoidJob;)Z

    .line 924
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$5;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    invoke-static {v0}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->-$$Nest$fgetbroadcastExecutor(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$5$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$5$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$5;Landroid/service/ondeviceintelligence/IOnDeviceSandboxedInferenceService;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 926
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$5;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    invoke-static {v0}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->-$$Nest$fgetmConfigExecutor(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$5$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$5$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$5;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 928
    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$5;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    invoke-static {p0}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->-$$Nest$fgetmSystemLifecycleListener(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;)Landroid/app/ondeviceintelligence/ILifecycleListener;

    move-result-object p0

    invoke-interface {p1, p0}, Landroid/service/ondeviceintelligence/IOnDeviceSandboxedInferenceService;->registerInferenceServiceLifecycleListener(Landroid/app/ondeviceintelligence/ILifecycleListener;)V
    :try_end_52
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_52} :catch_53

    return-void

    :catch_53
    move-exception p0

    .line 931
    sget-object p1, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->TAG:Ljava/lang/String;

    const-string v0, "Failed to send connected event"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public bridge synthetic onDisconnected(Landroid/os/IInterface;)V
    .registers 2

    .line 900
    check-cast p1, Landroid/service/ondeviceintelligence/IOnDeviceSandboxedInferenceService;

    invoke-virtual {p0, p1}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$5;->onDisconnected(Landroid/service/ondeviceintelligence/IOnDeviceSandboxedInferenceService;)V

    return-void
.end method

.method public onDisconnected(Landroid/service/ondeviceintelligence/IOnDeviceSandboxedInferenceService;)V
    .registers 3

    .line 938
    iget-object p1, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$5;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->ensureRemoteIntelligenceServiceInitialized(Z)Z

    .line 939
    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$5;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    invoke-static {p0}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->-$$Nest$fgetmRemoteOnDeviceIntelligenceService(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;)Lcom/android/server/ondeviceintelligence/RemoteOnDeviceIntelligenceService;

    move-result-object p0

    new-instance p1, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$5$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$5$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p0, p1}, Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl;->run(Lcom/android/server/ondeviceintelligence/ServiceConnector$VoidJob;)Z

    return-void
.end method
