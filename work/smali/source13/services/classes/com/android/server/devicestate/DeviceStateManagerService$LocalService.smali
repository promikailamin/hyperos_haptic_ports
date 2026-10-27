.class final Lcom/android/server/devicestate/DeviceStateManagerService$LocalService;
.super Landroid/hardware/devicestate/DeviceStateManagerInternal;
.source "DeviceStateManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/devicestate/DeviceStateManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LocalService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/devicestate/DeviceStateManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/devicestate/DeviceStateManagerService;)V
    .registers 2

    .line 981
    iput-object p1, p0, Lcom/android/server/devicestate/DeviceStateManagerService$LocalService;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    invoke-direct {p0}, Landroid/hardware/devicestate/DeviceStateManagerInternal;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/devicestate/DeviceStateManagerService;Lcom/android/server/devicestate/DeviceStateManagerService$LocalService-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/devicestate/DeviceStateManagerService$LocalService;-><init>(Lcom/android/server/devicestate/DeviceStateManagerService;)V

    return-void
.end method


# virtual methods
.method public bootAnimationCompleted()V
    .registers 2

    .line 1006
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$LocalService;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    invoke-static {v0}, Lcom/android/server/devicestate/DeviceStateManagerService;->-$$Nest$fgetmDeviceStatePolicy(Lcom/android/server/devicestate/DeviceStateManagerService;)Lcom/android/server/devicestate/DeviceStatePolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/devicestate/DeviceStatePolicy;->getDeviceStateProvider()Lcom/android/server/devicestate/DeviceStateProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/devicestate/DeviceStateProvider;->bootAnimationCompleted()V

    .line 1007
    return-void
.end method

.method public getSupportedStateIdentifiers()[I
    .registers 3

    .line 984
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$LocalService;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    invoke-static {v0}, Lcom/android/server/devicestate/DeviceStateManagerService;->-$$Nest$fgetmLock(Lcom/android/server/devicestate/DeviceStateManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 985
    :try_start_7
    iget-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService$LocalService;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    invoke-static {v1}, Lcom/android/server/devicestate/DeviceStateManagerService;->-$$Nest$mgetSupportedStateIdentifiersLocked(Lcom/android/server/devicestate/DeviceStateManagerService;)[I

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 986
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public isReversedState()Z
    .registers 3

    .line 999
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$LocalService;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    invoke-static {v0}, Lcom/android/server/devicestate/DeviceStateManagerService;->-$$Nest$fgetmLock(Lcom/android/server/devicestate/DeviceStateManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1000
    :try_start_7
    iget-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService$LocalService;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    invoke-static {v1}, Lcom/android/server/devicestate/DeviceStateManagerService;->-$$Nest$misReversedStateLocked(Lcom/android/server/devicestate/DeviceStateManagerService;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 1001
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public onEarlyInteractivityChange(Z)V
    .registers 3
    .param p1, "interactive"    # Z

    .line 1011
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$LocalService;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    invoke-static {v0}, Lcom/android/server/devicestate/DeviceStateManagerService;->-$$Nest$fgetmDeviceStatePolicy(Lcom/android/server/devicestate/DeviceStateManagerService;)Lcom/android/server/devicestate/DeviceStatePolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/devicestate/DeviceStatePolicy;->getDeviceStateProvider()Lcom/android/server/devicestate/DeviceStateProvider;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/devicestate/DeviceStateProvider;->onEarlyInteractivityChange(Z)V

    .line 1012
    return-void
.end method

.method public setInteractive(Z)V
    .registers 3
    .param p1, "interactive"    # Z

    .line 992
    if-nez p1, :cond_7

    .line 993
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$LocalService;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    invoke-static {v0}, Lcom/android/server/devicestate/DeviceStateManagerService;->-$$Nest$mcancelStateRequestInternal(Lcom/android/server/devicestate/DeviceStateManagerService;)V

    .line 995
    :cond_7
    return-void
.end method
