.class public final Lcom/android/server/ondeviceintelligence/executors/InferenceServiceExecutor;
.super Lcom/android/server/ondeviceintelligence/executors/RemoteCallExecutor;
.source "InferenceServiceExecutor.java"


# direct methods
.method public static synthetic $r8$lambda$1Dct7O3IggQuMB2B-XzikbLFSbI(Lcom/android/server/ondeviceintelligence/executors/InferenceServiceExecutor;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/ondeviceintelligence/executors/InferenceServiceExecutor;->lambda$execute$3(Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$F6I4hAx5NyHiqqFIaXqL4EuoYaQ(Lcom/android/server/ondeviceintelligence/executors/InferenceServiceExecutor;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/ondeviceintelligence/executors/InferenceServiceExecutor;->lambda$execute$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$YRmc5k8SveljgwaUFhu1m1ebZ2U(Lcom/android/server/ondeviceintelligence/executors/InferenceServiceExecutor;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/ondeviceintelligence/executors/InferenceServiceExecutor;->lambda$execute$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$b8IPxfoT4VHSUfhsdTexWrwd1B8(Lcom/android/server/ondeviceintelligence/executors/InferenceServiceExecutor;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/ondeviceintelligence/executors/InferenceServiceExecutor;->lambda$execute$1()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/ondeviceintelligence/executors/InferenceServiceExecutor$Builder;)V
    .registers 2

    .line 39
    invoke-direct {p0, p1}, Lcom/android/server/ondeviceintelligence/executors/RemoteCallExecutor;-><init>(Lcom/android/server/ondeviceintelligence/executors/RemoteCallExecutor$Builder;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/ondeviceintelligence/executors/InferenceServiceExecutor$Builder;Lcom/android/server/ondeviceintelligence/executors/InferenceServiceExecutor-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/ondeviceintelligence/executors/InferenceServiceExecutor;-><init>(Lcom/android/server/ondeviceintelligence/executors/InferenceServiceExecutor$Builder;)V

    return-void
.end method


# virtual methods
.method public execute(Lcom/android/server/ondeviceintelligence/executors/RemoteCallExecutor$RemoteCallRunner;)Lcom/android/internal/infra/AndroidFuture;
    .registers 6

    .line 46
    invoke-static {}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->getInstance()Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    move-result-object v0

    .line 47
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->TAG:Ljava/lang/String;

    .line 48
    const-string v3, "android.permission.USE_ON_DEVICE_INTELLIGENCE"

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-virtual {v0}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->isServiceEnabled()Z

    move-result v1

    if-nez v1, :cond_24

    .line 52
    const-string p1, "Service not available"

    invoke-static {v2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    new-instance p1, Lcom/android/server/ondeviceintelligence/executors/InferenceServiceExecutor$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/server/ondeviceintelligence/executors/InferenceServiceExecutor$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/ondeviceintelligence/executors/InferenceServiceExecutor;)V

    invoke-virtual {p0, p1}, Lcom/android/server/ondeviceintelligence/executors/RemoteCallExecutor;->executeOnRemoteExecutor(Ljava/lang/Runnable;)V

    const/4 p0, 0x0

    return-object p0

    :cond_24
    const/4 v1, 0x1

    .line 65
    invoke-virtual {v0, v1}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->ensureRemoteInferenceServiceInitialized(Z)Z

    .line 67
    invoke-virtual {v0}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->getRemoteInferenceService()Lcom/android/server/ondeviceintelligence/RemoteOnDeviceSandboxedInferenceService;

    move-result-object v0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/server/ondeviceintelligence/executors/InferenceServiceExecutor$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lcom/android/server/ondeviceintelligence/executors/InferenceServiceExecutor$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/ondeviceintelligence/executors/RemoteCallExecutor$RemoteCallRunner;)V

    invoke-virtual {v0, v1}, Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl;->postAsync(Lcom/android/server/ondeviceintelligence/ServiceConnector$Job;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object p1

    .line 68
    new-instance v0, Lcom/android/server/ondeviceintelligence/executors/InferenceServiceExecutor$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/server/ondeviceintelligence/executors/InferenceServiceExecutor$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/ondeviceintelligence/executors/InferenceServiceExecutor;)V

    invoke-virtual {p1, v0}, Lcom/android/internal/infra/AndroidFuture;->whenComplete(Ljava/util/function/BiConsumer;)Lcom/android/internal/infra/AndroidFuture;

    return-object p1
.end method

.method public final synthetic lambda$execute$0()V
    .registers 3

    .line 55
    :try_start_0
    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/executors/RemoteCallExecutor;->mFailureConsumer:Lcom/android/server/ondeviceintelligence/executors/RemoteCallExecutor$FailureConsumer;

    sget-object v0, Lcom/android/server/ondeviceintelligence/executors/RemoteCallExecutor$FailureType;->SERVICE_UNAVAILABLE:Lcom/android/server/ondeviceintelligence/executors/RemoteCallExecutor$FailureType;

    invoke-interface {p0, v0}, Lcom/android/server/ondeviceintelligence/executors/RemoteCallExecutor$FailureConsumer;->accept(Lcom/android/server/ondeviceintelligence/executors/RemoteCallExecutor$FailureType;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    return-void

    :catch_8
    move-exception p0

    .line 57
    sget-object v0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->TAG:Ljava/lang/String;

    const-string v1, "Failed to call service unavailable callback"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final synthetic lambda$execute$1()V
    .registers 3

    .line 78
    :try_start_0
    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/executors/RemoteCallExecutor;->mFailureConsumer:Lcom/android/server/ondeviceintelligence/executors/RemoteCallExecutor$FailureConsumer;

    sget-object v0, Lcom/android/server/ondeviceintelligence/executors/RemoteCallExecutor$FailureType;->TIMEOUT:Lcom/android/server/ondeviceintelligence/executors/RemoteCallExecutor$FailureType;

    invoke-interface {p0, v0}, Lcom/android/server/ondeviceintelligence/executors/RemoteCallExecutor$FailureConsumer;->accept(Lcom/android/server/ondeviceintelligence/executors/RemoteCallExecutor$FailureType;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    return-void

    :catch_8
    move-exception p0

    .line 80
    sget-object v0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->TAG:Ljava/lang/String;

    const-string v1, "Failed to call timeout callback"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final synthetic lambda$execute$2()V
    .registers 3

    .line 87
    :try_start_0
    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/executors/RemoteCallExecutor;->mFailureConsumer:Lcom/android/server/ondeviceintelligence/executors/RemoteCallExecutor$FailureConsumer;

    sget-object v0, Lcom/android/server/ondeviceintelligence/executors/RemoteCallExecutor$FailureType;->REMOTE_FAILURE:Lcom/android/server/ondeviceintelligence/executors/RemoteCallExecutor$FailureType;

    invoke-interface {p0, v0}, Lcom/android/server/ondeviceintelligence/executors/RemoteCallExecutor$FailureConsumer;->accept(Lcom/android/server/ondeviceintelligence/executors/RemoteCallExecutor$FailureType;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    return-void

    :catch_8
    move-exception p0

    .line 89
    sget-object v0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->TAG:Ljava/lang/String;

    const-string v1, "Failed to call remote failure callback"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final synthetic lambda$execute$3(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 4

    if-eqz p2, :cond_1e

    .line 71
    sget-object p1, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->TAG:Ljava/lang/String;

    const-string v0, "Remote inference service call failed"

    invoke-static {p1, v0, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 75
    instance-of p1, p2, Ljava/util/concurrent/TimeoutException;

    if-eqz p1, :cond_16

    .line 76
    new-instance p1, Lcom/android/server/ondeviceintelligence/executors/InferenceServiceExecutor$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0}, Lcom/android/server/ondeviceintelligence/executors/InferenceServiceExecutor$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/ondeviceintelligence/executors/InferenceServiceExecutor;)V

    invoke-virtual {p0, p1}, Lcom/android/server/ondeviceintelligence/executors/RemoteCallExecutor;->executeOnRemoteExecutor(Ljava/lang/Runnable;)V

    return-void

    .line 85
    :cond_16
    new-instance p1, Lcom/android/server/ondeviceintelligence/executors/InferenceServiceExecutor$$ExternalSyntheticLambda4;

    invoke-direct {p1, p0}, Lcom/android/server/ondeviceintelligence/executors/InferenceServiceExecutor$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/ondeviceintelligence/executors/InferenceServiceExecutor;)V

    invoke-virtual {p0, p1}, Lcom/android/server/ondeviceintelligence/executors/RemoteCallExecutor;->executeOnRemoteExecutor(Ljava/lang/Runnable;)V

    :cond_1e
    return-void
.end method
