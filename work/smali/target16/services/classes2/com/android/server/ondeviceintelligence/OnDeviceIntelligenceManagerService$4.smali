.class public Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$4;
.super Landroid/service/ondeviceintelligence/IRemoteProcessingService$Stub;
.source "OnDeviceIntelligenceManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;


# direct methods
.method public static synthetic $r8$lambda$DbJb6_hTysBZW2Z1Cl4Yu2JUFcs(Landroid/os/Bundle;Landroid/service/ondeviceintelligence/IProcessingUpdateStatusCallback;Landroid/service/ondeviceintelligence/IOnDeviceSandboxedInferenceService;)V
    .registers 3

    .line 861
    invoke-interface {p2, p0, p1}, Landroid/service/ondeviceintelligence/IOnDeviceSandboxedInferenceService;->updateProcessingState(Landroid/os/Bundle;Landroid/service/ondeviceintelligence/IProcessingUpdateStatusCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZESmfRGz-2qg47dwW69EJfiogRY(Landroid/os/Bundle;)V
    .registers 1

    .line 871
    invoke-static {p0}, Lcom/android/server/ondeviceintelligence/BundleUtil;->tryCloseResource(Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic $r8$lambda$h81-TMl0KE16rAc52E5vCJgEmk0(Landroid/os/Bundle;Ljava/lang/Void;Ljava/lang/Throwable;)V
    .registers 3

    .line 865
    invoke-static {p0}, Lcom/android/server/ondeviceintelligence/BundleUtil;->tryCloseResource(Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hK3a1OpcLkuoXLhziEnvKf1Cze8(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$4;Landroid/os/Bundle;Landroid/service/ondeviceintelligence/IProcessingUpdateStatusCallback;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$4;->lambda$updateProcessingState$3(Landroid/os/Bundle;Landroid/service/ondeviceintelligence/IProcessingUpdateStatusCallback;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;)V
    .registers 2

    .line 832
    iput-object p1, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$4;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    invoke-direct {p0}, Landroid/service/ondeviceintelligence/IRemoteProcessingService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic lambda$updateProcessingState$3(Landroid/os/Bundle;Landroid/service/ondeviceintelligence/IProcessingUpdateStatusCallback;)V
    .registers 6

    const/4 v0, 0x0

    .line 842
    :try_start_1
    const-string v1, "android.service.ondeviceintelligence.KEY_DEVICE_CONFIG_UPDATE"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 844
    const-string v1, "device_config_update"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 846
    iget-object v1, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$4;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->ensureRemoteInferenceServiceInitialized(Z)Z

    move-result v1

    if-nez v1, :cond_3c

    .line 847
    sget-object v1, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->TAG:Ljava/lang/String;

    const-string v2, "Remote inference service not available forupdateProcessingState"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_23

    .line 850
    :try_start_1b
    const-string v1, "Remote inference service not available"

    const/16 v2, 0xf

    invoke-interface {p2, v2, v1}, Landroid/service/ondeviceintelligence/IProcessingUpdateStatusCallback;->onFailure(ILjava/lang/String;)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_22} :catch_25
    .catchall {:try_start_1b .. :try_end_22} :catchall_23

    goto :goto_2d

    :catchall_23
    move-exception p2

    goto :goto_6a

    :catch_25
    move-exception p2

    .line 855
    :try_start_26
    sget-object v1, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->TAG:Ljava/lang/String;

    const-string v2, "Failed to call onFailure for updateProcessingState"

    invoke-static {v1, v2, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2d
    .catchall {:try_start_26 .. :try_end_2d} :catchall_23

    .line 870
    :goto_2d
    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$4;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    invoke-static {p0}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->-$$Nest$fgetresourceClosingExecutor(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;)Ljava/util/concurrent/Executor;

    move-result-object p0

    new-instance p2, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$4$$ExternalSyntheticLambda1;

    invoke-direct {p2, p1}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$4$$ExternalSyntheticLambda1;-><init>(Landroid/os/Bundle;)V

    :goto_38
    invoke-interface {p0, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 860
    :cond_3c
    :try_start_3c
    iget-object v1, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$4;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    invoke-static {v1}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->-$$Nest$fgetmRemoteInferenceService(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;)Lcom/android/server/ondeviceintelligence/RemoteOnDeviceSandboxedInferenceService;

    move-result-object v1

    new-instance v2, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$4$$ExternalSyntheticLambda2;

    invoke-direct {v2, p1, p2}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$4$$ExternalSyntheticLambda2;-><init>(Landroid/os/Bundle;Landroid/service/ondeviceintelligence/IProcessingUpdateStatusCallback;)V

    invoke-virtual {v1, v2}, Lcom/android/server/ondeviceintelligence/ServiceConnector$Impl;->post(Lcom/android/server/ondeviceintelligence/ServiceConnector$VoidJob;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    if-eqz v0, :cond_5b

    .line 865
    new-instance p2, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$4$$ExternalSyntheticLambda3;

    invoke-direct {p2, p1}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$4$$ExternalSyntheticLambda3;-><init>(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$4;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    invoke-static {v1}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->-$$Nest$fgetresourceClosingExecutor(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/android/internal/infra/AndroidFuture;->whenCompleteAsync(Ljava/util/function/BiConsumer;Ljava/util/concurrent/Executor;)Lcom/android/internal/infra/AndroidFuture;
    :try_end_5b
    .catchall {:try_start_3c .. :try_end_5b} :catchall_23

    :cond_5b
    if-nez v0, :cond_69

    .line 870
    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$4;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    invoke-static {p0}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->-$$Nest$fgetresourceClosingExecutor(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;)Ljava/util/concurrent/Executor;

    move-result-object p0

    new-instance p2, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$4$$ExternalSyntheticLambda1;

    invoke-direct {p2, p1}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$4$$ExternalSyntheticLambda1;-><init>(Landroid/os/Bundle;)V

    goto :goto_38

    :cond_69
    return-void

    :goto_6a
    if-nez v0, :cond_7a

    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$4;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    invoke-static {p0}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->-$$Nest$fgetresourceClosingExecutor(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;)Ljava/util/concurrent/Executor;

    move-result-object p0

    new-instance v0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$4$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$4$$ExternalSyntheticLambda1;-><init>(Landroid/os/Bundle;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 873
    :cond_7a
    throw p2
.end method

.method public updateProcessingState(Landroid/os/Bundle;Landroid/service/ondeviceintelligence/IProcessingUpdateStatusCallback;)V
    .registers 5

    .line 837
    invoke-static {p1}, Lcom/android/server/ondeviceintelligence/BundleUtil;->sanitizeStateParams(Landroid/os/Bundle;)V

    .line 838
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$4;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    invoke-static {v0}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->-$$Nest$fgetcallbackExecutor(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$4$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$4$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$4;Landroid/os/Bundle;Landroid/service/ondeviceintelligence/IProcessingUpdateStatusCallback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
