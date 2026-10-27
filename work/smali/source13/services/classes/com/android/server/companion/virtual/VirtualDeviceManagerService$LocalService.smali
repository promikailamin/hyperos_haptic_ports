.class final Lcom/android/server/companion/virtual/VirtualDeviceManagerService$LocalService;
.super Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;
.source "VirtualDeviceManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/companion/virtual/VirtualDeviceManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LocalService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;)V
    .registers 2

    .line 380
    iput-object p1, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$LocalService;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    invoke-direct {p0}, Lcom/android/server/companion/virtual/VirtualDeviceManagerInternal;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;Lcom/android/server/companion/virtual/VirtualDeviceManagerService$LocalService-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$LocalService;-><init>(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;)V

    return-void
.end method


# virtual methods
.method public getBaseVirtualDisplayFlags(Landroid/companion/virtual/IVirtualDevice;)I
    .registers 3
    .param p1, "virtualDevice"    # Landroid/companion/virtual/IVirtualDevice;

    .line 397
    move-object v0, p1

    check-cast v0, Lcom/android/server/companion/virtual/VirtualDeviceImpl;

    invoke-virtual {v0}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->getBaseVirtualDisplayFlags()I

    move-result v0

    return v0
.end method

.method public isAppOwnerOfAnyVirtualDevice(I)Z
    .registers 6
    .param p1, "uid"    # I

    .line 402
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$LocalService;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    invoke-static {v0}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->-$$Nest$fgetmVirtualDeviceManagerLock(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 403
    :try_start_7
    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$LocalService;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    invoke-static {v1}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->-$$Nest$fgetmVirtualDevices(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 404
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_12
    if-ge v2, v1, :cond_2c

    .line 405
    iget-object v3, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$LocalService;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    invoke-static {v3}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->-$$Nest$fgetmVirtualDevices(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/companion/virtual/VirtualDeviceImpl;

    invoke-virtual {v3}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->getOwnerUid()I

    move-result v3

    if-ne v3, p1, :cond_29

    .line 406
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    .line 404
    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 409
    .end local v2    # "i":I
    :cond_2c
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 410
    .end local v1    # "size":I
    :catchall_2f
    move-exception v1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_7 .. :try_end_31} :catchall_2f

    throw v1
.end method

.method public isAppRunningOnAnyVirtualDevice(I)Z
    .registers 6
    .param p1, "uid"    # I

    .line 415
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$LocalService;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    invoke-static {v0}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->-$$Nest$fgetmVirtualDeviceManagerLock(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 416
    :try_start_7
    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$LocalService;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    invoke-static {v1}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->-$$Nest$fgetmVirtualDevices(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 417
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_12
    if-ge v2, v1, :cond_2c

    .line 418
    iget-object v3, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$LocalService;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    invoke-static {v3}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->-$$Nest$fgetmVirtualDevices(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/companion/virtual/VirtualDeviceImpl;

    invoke-virtual {v3, p1}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->isAppRunningOnVirtualDevice(I)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 419
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    .line 417
    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 422
    .end local v1    # "size":I
    .end local v2    # "i":I
    :cond_2c
    monitor-exit v0

    .line 423
    const/4 v0, 0x0

    return v0

    .line 422
    :catchall_2f
    move-exception v1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_7 .. :try_end_31} :catchall_2f

    throw v1
.end method

.method public isDisplayOwnedByAnyVirtualDevice(I)Z
    .registers 6
    .param p1, "displayId"    # I

    .line 428
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$LocalService;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    invoke-static {v0}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->-$$Nest$fgetmVirtualDeviceManagerLock(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 429
    :try_start_7
    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$LocalService;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    invoke-static {v1}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->-$$Nest$fgetmVirtualDevices(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 430
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_12
    if-ge v2, v1, :cond_2c

    .line 431
    iget-object v3, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$LocalService;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    invoke-static {v3}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->-$$Nest$fgetmVirtualDevices(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/companion/virtual/VirtualDeviceImpl;

    invoke-virtual {v3, p1}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->isDisplayOwnedByVirtualDevice(I)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 432
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    .line 430
    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 435
    .end local v1    # "size":I
    .end local v2    # "i":I
    :cond_2c
    monitor-exit v0

    .line 436
    const/4 v0, 0x0

    return v0

    .line 435
    :catchall_2f
    move-exception v1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_7 .. :try_end_31} :catchall_2f

    throw v1
.end method

.method public isValidVirtualDevice(Landroid/companion/virtual/IVirtualDevice;)Z
    .registers 4
    .param p1, "virtualDevice"    # Landroid/companion/virtual/IVirtualDevice;

    .line 383
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$LocalService;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    invoke-static {v0}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->-$$Nest$fgetmVirtualDeviceManagerLock(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 384
    :try_start_7
    iget-object v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$LocalService;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    invoke-static {v1, p1}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->-$$Nest$misValidVirtualDeviceLocked(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;Landroid/companion/virtual/IVirtualDevice;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 385
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public onVirtualDisplayRemoved(Landroid/companion/virtual/IVirtualDevice;I)V
    .registers 5
    .param p1, "virtualDevice"    # Landroid/companion/virtual/IVirtualDevice;
    .param p2, "displayId"    # I

    .line 390
    iget-object v0, p0, Lcom/android/server/companion/virtual/VirtualDeviceManagerService$LocalService;->this$0:Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    invoke-static {v0}, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;->-$$Nest$fgetmVirtualDeviceManagerLock(Lcom/android/server/companion/virtual/VirtualDeviceManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 391
    :try_start_7
    move-object v1, p1

    check-cast v1, Lcom/android/server/companion/virtual/VirtualDeviceImpl;

    invoke-virtual {v1, p2}, Lcom/android/server/companion/virtual/VirtualDeviceImpl;->onVirtualDisplayRemovedLocked(I)V

    .line 392
    monitor-exit v0

    .line 393
    return-void

    .line 392
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw v1
.end method
