.class public Lcom/android/server/devicestate/DeviceStateManagerService$1;
.super Landroid/app/IProcessObserver$Stub;
.source "DeviceStateManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/devicestate/DeviceStateManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/devicestate/DeviceStateManagerService;)V
    .registers 2

    .line 220
    iput-object p1, p0, Lcom/android/server/devicestate/DeviceStateManagerService$1;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    invoke-direct {p0}, Landroid/app/IProcessObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onForegroundActivitiesChanged(IIZ)V
    .registers 7

    .line 223
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$1;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    invoke-static {v0}, Lcom/android/server/devicestate/DeviceStateManagerService;->-$$Nest$fgetmLock(Lcom/android/server/devicestate/DeviceStateManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 224
    :try_start_7
    iget-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService$1;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    invoke-static {v1}, Lcom/android/server/devicestate/DeviceStateManagerService;->-$$Nest$mshouldCancelOverrideRequestWhenRequesterNotOnTop(Lcom/android/server/devicestate/DeviceStateManagerService;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 225
    monitor-exit v0

    return-void

    :catchall_11
    move-exception p0

    goto :goto_3b

    .line 228
    :cond_13
    iget-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService$1;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    invoke-static {v1}, Lcom/android/server/devicestate/DeviceStateManagerService;->-$$Nest$fgetmActiveOverride(Lcom/android/server/devicestate/DeviceStateManagerService;)Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/devicestate/OverrideRequest;

    .line 229
    invoke-virtual {v1}, Lcom/android/server/devicestate/OverrideRequest;->getPid()I

    move-result v2

    if-ne p1, v2, :cond_39

    invoke-virtual {v1}, Lcom/android/server/devicestate/OverrideRequest;->getUid()I

    move-result p1

    if-eq p2, p1, :cond_2c

    goto :goto_39

    :cond_2c
    if-nez p3, :cond_37

    .line 233
    iget-object p0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$1;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    invoke-static {p0}, Lcom/android/server/devicestate/DeviceStateManagerService;->-$$Nest$fgetmOverrideRequestController(Lcom/android/server/devicestate/DeviceStateManagerService;)Lcom/android/server/devicestate/OverrideRequestController;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/android/server/devicestate/OverrideRequestController;->cancelRequest(Lcom/android/server/devicestate/OverrideRequest;)V

    .line 235
    :cond_37
    monitor-exit v0

    return-void

    .line 230
    :cond_39
    :goto_39
    monitor-exit v0

    return-void

    .line 235
    :goto_3b
    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_7 .. :try_end_3c} :catchall_11

    throw p0
.end method

.method public onForegroundServicesChanged(III)V
    .registers 4

    .line 0
    return-void
.end method

.method public onProcessDied(II)V
    .registers 3

    .line 0
    return-void
.end method

.method public onProcessStarted(IIILjava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 0
    return-void
.end method
