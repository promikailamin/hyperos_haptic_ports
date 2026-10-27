.class public final Lcom/android/server/devicestate/DeviceStateManagerService$HalService$HalBinderCallback;
.super Ljava/lang/Object;
.source "DeviceStateManagerService.java"

# interfaces
.implements Landroid/hardware/devicestate/IDeviceStateManagerCallback;


# instance fields
.field public final mListener:Landroid/frameworks/devicestate/IDeviceStateListener;

.field public final synthetic this$1:Lcom/android/server/devicestate/DeviceStateManagerService$HalService;


# direct methods
.method public constructor <init>(Lcom/android/server/devicestate/DeviceStateManagerService$HalService;Landroid/frameworks/devicestate/IDeviceStateListener;)V
    .registers 3

    .line 1369
    iput-object p1, p0, Lcom/android/server/devicestate/DeviceStateManagerService$HalService$HalBinderCallback;->this$1:Lcom/android/server/devicestate/DeviceStateManagerService$HalService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1370
    iput-object p2, p0, Lcom/android/server/devicestate/DeviceStateManagerService$HalService$HalBinderCallback;->mListener:Landroid/frameworks/devicestate/IDeviceStateListener;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/devicestate/DeviceStateManagerService$HalService;Landroid/frameworks/devicestate/IDeviceStateListener;Lcom/android/server/devicestate/DeviceStateManagerService-IA;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/devicestate/DeviceStateManagerService$HalService$HalBinderCallback;-><init>(Lcom/android/server/devicestate/DeviceStateManagerService$HalService;Landroid/frameworks/devicestate/IDeviceStateListener;)V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 1408
    iget-object p0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$HalService$HalBinderCallback;->mListener:Landroid/frameworks/devicestate/IDeviceStateListener;

    invoke-interface {p0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public onDeviceStateInfoChanged(Landroid/hardware/devicestate/DeviceStateInfo;)V
    .registers 9

    .line 1375
    new-instance v0, Landroid/frameworks/devicestate/DeviceStateConfiguration;

    invoke-direct {v0}, Landroid/frameworks/devicestate/DeviceStateConfiguration;-><init>()V

    .line 1376
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p1, Landroid/hardware/devicestate/DeviceStateInfo;->currentState:Landroid/hardware/devicestate/DeviceState;

    .line 1377
    invoke-virtual {v2}, Landroid/hardware/devicestate/DeviceState;->getConfiguration()Landroid/hardware/devicestate/DeviceState$Configuration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/devicestate/DeviceState$Configuration;->getSystemProperties()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1378
    new-instance v2, Ljava/util/HashSet;

    iget-object p1, p1, Landroid/hardware/devicestate/DeviceStateInfo;->currentState:Landroid/hardware/devicestate/DeviceState;

    .line 1379
    invoke-virtual {p1}, Landroid/hardware/devicestate/DeviceState;->getConfiguration()Landroid/hardware/devicestate/DeviceState$Configuration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/hardware/devicestate/DeviceState$Configuration;->getPhysicalProperties()Ljava/util/Set;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    const-wide/16 v3, 0x0

    .line 1380
    iput-wide v3, v0, Landroid/frameworks/devicestate/DeviceStateConfiguration;->deviceProperties:J

    .line 1381
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1382
    iget-object v3, p0, Lcom/android/server/devicestate/DeviceStateManagerService$HalService$HalBinderCallback;->this$1:Lcom/android/server/devicestate/DeviceStateManagerService$HalService;

    invoke-static {v3}, Lcom/android/server/devicestate/DeviceStateManagerService$HalService;->-$$Nest$fgetmPublicProperties(Lcom/android/server/devicestate/DeviceStateManagerService$HalService;)Landroid/util/LongSparseLongArray;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v4, v1

    invoke-virtual {v3, v4, v5}, Landroid/util/LongSparseLongArray;->get(J)J

    move-result-wide v3

    .line 1384
    iget-wide v5, v0, Landroid/frameworks/devicestate/DeviceStateConfiguration;->deviceProperties:J

    or-long/2addr v3, v5

    iput-wide v3, v0, Landroid/frameworks/devicestate/DeviceStateConfiguration;->deviceProperties:J

    goto :goto_2b

    .line 1387
    :cond_4c
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_50
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_71

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1388
    iget-object v2, p0, Lcom/android/server/devicestate/DeviceStateManagerService$HalService$HalBinderCallback;->this$1:Lcom/android/server/devicestate/DeviceStateManagerService$HalService;

    invoke-static {v2}, Lcom/android/server/devicestate/DeviceStateManagerService$HalService;->-$$Nest$fgetmPublicProperties(Lcom/android/server/devicestate/DeviceStateManagerService$HalService;)Landroid/util/LongSparseLongArray;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v3, v1

    invoke-virtual {v2, v3, v4}, Landroid/util/LongSparseLongArray;->get(J)J

    move-result-wide v1

    .line 1390
    iget-wide v3, v0, Landroid/frameworks/devicestate/DeviceStateConfiguration;->deviceProperties:J

    or-long/2addr v1, v3

    iput-wide v1, v0, Landroid/frameworks/devicestate/DeviceStateConfiguration;->deviceProperties:J

    goto :goto_50

    .line 1393
    :cond_71
    iget-object p0, p0, Lcom/android/server/devicestate/DeviceStateManagerService$HalService$HalBinderCallback;->mListener:Landroid/frameworks/devicestate/IDeviceStateListener;

    invoke-interface {p0, v0}, Landroid/frameworks/devicestate/IDeviceStateListener;->onDeviceStateChanged(Landroid/frameworks/devicestate/DeviceStateConfiguration;)V

    return-void
.end method

.method public onRequestActive(Landroid/os/IBinder;)V
    .registers 2

    .line 0
    return-void
.end method

.method public onRequestCanceled(Landroid/os/IBinder;)V
    .registers 2

    .line 0
    return-void
.end method
