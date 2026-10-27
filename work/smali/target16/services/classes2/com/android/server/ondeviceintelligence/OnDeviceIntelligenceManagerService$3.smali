.class public Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$3;
.super Ljava/lang/Object;
.source "OnDeviceIntelligenceManagerService.java"

# interfaces
.implements Lcom/android/server/ondeviceintelligence/ServiceConnector$ServiceLifecycleCallbacks;


# instance fields
.field public final synthetic this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;)V
    .registers 2

    .line 806
    iput-object p1, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$3;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onConnected(Landroid/os/IInterface;)V
    .registers 2

    .line 806
    check-cast p1, Landroid/service/ondeviceintelligence/IOnDeviceIntelligenceService;

    invoke-virtual {p0, p1}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$3;->onConnected(Landroid/service/ondeviceintelligence/IOnDeviceIntelligenceService;)V

    return-void
.end method

.method public onConnected(Landroid/service/ondeviceintelligence/IOnDeviceIntelligenceService;)V
    .registers 3

    .line 811
    :try_start_0
    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService$3;->this$0:Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    .line 812
    invoke-static {p0}, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->-$$Nest$mgetRemoteProcessingService(Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;)Landroid/service/ondeviceintelligence/IRemoteProcessingService$Stub;

    move-result-object p0

    .line 811
    invoke-interface {p1, p0}, Landroid/service/ondeviceintelligence/IOnDeviceIntelligenceService;->registerRemoteServices(Landroid/service/ondeviceintelligence/IRemoteProcessingService;)V

    .line 813
    invoke-interface {p1}, Landroid/service/ondeviceintelligence/IOnDeviceIntelligenceService;->ready()V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-void

    :catch_d
    move-exception p0

    .line 815
    sget-object p1, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;->TAG:Ljava/lang/String;

    const-string v0, "Failed to send connected event"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
