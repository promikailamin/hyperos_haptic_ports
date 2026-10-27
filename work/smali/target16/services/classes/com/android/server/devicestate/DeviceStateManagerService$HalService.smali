.class public final Lcom/android/server/devicestate/DeviceStateManagerService$HalService;
.super Landroid/frameworks/devicestate/IDeviceStateService$Stub;
.source "DeviceStateManagerService.java"


# instance fields
.field public final mPublicProperties:Landroid/util/LongSparseLongArray;

.field public final synthetic this$0:Lcom/android/server/devicestate/DeviceStateManagerService;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmPublicProperties(Lcom/android/server/devicestate/DeviceStateManagerService$HalService;)Landroid/util/LongSparseLongArray;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$HalService;->mPublicProperties:Landroid/util/LongSparseLongArray;

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/devicestate/DeviceStateManagerService;)V
    .registers 6

    .line 1342
    iput-object p1, p0, Lcom/android/server/devicestate/DeviceStateManagerService$HalService;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    invoke-direct {p0}, Landroid/frameworks/devicestate/IDeviceStateService$Stub;-><init>()V

    .line 1341
    new-instance p1, Landroid/util/LongSparseLongArray;

    invoke-direct {p1}, Landroid/util/LongSparseLongArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/devicestate/DeviceStateManagerService$HalService;->mPublicProperties:Landroid/util/LongSparseLongArray;

    const-wide/16 v0, 0x1

    .line 1343
    invoke-virtual {p1, v0, v1, v0, v1}, Landroid/util/LongSparseLongArray;->put(JJ)V

    const-wide/16 v0, 0x2

    .line 1346
    invoke-virtual {p1, v0, v1, v0, v1}, Landroid/util/LongSparseLongArray;->put(JJ)V

    const-wide/16 v0, 0x3

    const-wide/16 v2, 0x4

    .line 1349
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/util/LongSparseLongArray;->put(JJ)V

    const-wide/16 v0, 0xb

    const-wide/16 v2, 0x8

    .line 1352
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/util/LongSparseLongArray;->put(JJ)V

    const-wide/16 v0, 0xc

    const-wide/16 v2, 0x10

    .line 1355
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/util/LongSparseLongArray;->put(JJ)V

    const-wide/16 v0, 0x20

    .line 1358
    invoke-virtual {p1, v2, v3, v0, v1}, Landroid/util/LongSparseLongArray;->put(JJ)V

    const-wide/16 v0, 0x11

    const-wide/16 v2, 0x40

    .line 1361
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/util/LongSparseLongArray;->put(JJ)V

    return-void
.end method


# virtual methods
.method public getInterfaceHash()Ljava/lang/String;
    .registers 1

    .line 1454
    const-string p0, "be9013fedb7fc3886980eca0e588bce998d315d2"

    return-object p0
.end method

.method public getInterfaceVersion()I
    .registers 1

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public registerListener(Landroid/frameworks/devicestate/IDeviceStateListener;)V
    .registers 7

    if-eqz p1, :cond_2d

    .line 1418
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 1419
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1421
    :try_start_a
    new-instance v3, Lcom/android/server/devicestate/DeviceStateManagerService$HalService$HalBinderCallback;

    const/4 v4, 0x0

    invoke-direct {v3, p0, p1, v4}, Lcom/android/server/devicestate/DeviceStateManagerService$HalService$HalBinderCallback;-><init>(Lcom/android/server/devicestate/DeviceStateManagerService$HalService;Landroid/frameworks/devicestate/IDeviceStateListener;Lcom/android/server/devicestate/DeviceStateManagerService-IA;)V

    .line 1422
    iget-object p0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$HalService;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    invoke-static {p0, v0, v3}, Lcom/android/server/devicestate/DeviceStateManagerService;->-$$Nest$mregisterProcess(Lcom/android/server/devicestate/DeviceStateManagerService;ILandroid/hardware/devicestate/IDeviceStateManagerCallback;)Landroid/hardware/devicestate/DeviceStateInfo;

    move-result-object p0

    if-eqz p0, :cond_1e

    .line 1424
    invoke-virtual {v3, p0}, Lcom/android/server/devicestate/DeviceStateManagerService$HalService$HalBinderCallback;->onDeviceStateInfoChanged(Landroid/hardware/devicestate/DeviceStateInfo;)V
    :try_end_1b
    .catch Ljava/lang/SecurityException; {:try_start_a .. :try_end_1b} :catch_22
    .catchall {:try_start_a .. :try_end_1b} :catchall_1c

    goto :goto_1e

    :catchall_1c
    move-exception p0

    goto :goto_29

    .line 1429
    :cond_1e
    :goto_1e
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 1427
    :catch_22
    :try_start_22
    new-instance p0, Landroid/os/ServiceSpecificException;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Landroid/os/ServiceSpecificException;-><init>(I)V

    throw p0
    :try_end_29
    .catchall {:try_start_22 .. :try_end_29} :catchall_1c

    .line 1429
    :goto_29
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1430
    throw p0

    .line 1415
    :cond_2d
    new-instance p0, Landroid/os/ServiceSpecificException;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Landroid/os/ServiceSpecificException;-><init>(I)V

    throw p0
.end method

.method public unregisterListener(Landroid/frameworks/devicestate/IDeviceStateListener;)V
    .registers 4

    .line 1435
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    .line 1437
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$HalService;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    invoke-static {v0}, Lcom/android/server/devicestate/DeviceStateManagerService;->-$$Nest$fgetmLock(Lcom/android/server/devicestate/DeviceStateManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1438
    :try_start_b
    iget-object v1, p0, Lcom/android/server/devicestate/DeviceStateManagerService$HalService;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    invoke-static {v1}, Lcom/android/server/devicestate/DeviceStateManagerService;->-$$Nest$fgetmProcessRecords(Lcom/android/server/devicestate/DeviceStateManagerService;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 1439
    iget-object p0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$HalService;->this$0:Lcom/android/server/devicestate/DeviceStateManagerService;

    invoke-static {p0}, Lcom/android/server/devicestate/DeviceStateManagerService;->-$$Nest$fgetmProcessRecords(Lcom/android/server/devicestate/DeviceStateManagerService;)Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1440
    monitor-exit v0

    return-void

    :catchall_22
    move-exception p0

    goto :goto_2c

    .line 1442
    :cond_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_b .. :try_end_25} :catchall_22

    .line 1444
    new-instance p0, Landroid/os/ServiceSpecificException;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Landroid/os/ServiceSpecificException;-><init>(I)V

    throw p0

    .line 1442
    :goto_2c
    :try_start_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_22

    throw p0
.end method
