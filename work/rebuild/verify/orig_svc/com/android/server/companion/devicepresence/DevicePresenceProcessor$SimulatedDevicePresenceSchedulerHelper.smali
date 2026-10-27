.class public Lcom/android/server/companion/devicepresence/DevicePresenceProcessor$SimulatedDevicePresenceSchedulerHelper;
.super Landroid/os/Handler;
.source "DevicePresenceProcessor.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;


# direct methods
.method public constructor <init>(Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;)V
    .registers 2

    .line 1411
    iput-object p1, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor$SimulatedDevicePresenceSchedulerHelper;->this$0:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

    .line 1412
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    .line 1430
    iget p1, p1, Landroid/os/Message;->what:I

    .line 1431
    iget-object v0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor$SimulatedDevicePresenceSchedulerHelper;->this$0:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

    invoke-static {v0}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->-$$Nest$fgetmSimulated(Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;)Ljava/util/Set;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 1432
    iget-object p0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor$SimulatedDevicePresenceSchedulerHelper;->this$0:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

    invoke-static {p0}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->-$$Nest$fgetmSimulated(Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;)Ljava/util/Set;

    move-result-object v0

    new-instance v1, Landroid/companion/DevicePresenceEvent;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v1, p1, v2, v3}, Landroid/companion/DevicePresenceEvent;-><init>(IILandroid/os/ParcelUuid;)V

    invoke-static {p0, v0, p1, v1}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->-$$Nest$monDevicePresenceEvent(Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;Ljava/util/Set;ILandroid/companion/DevicePresenceEvent;)V

    :cond_22
    return-void
.end method

.method public scheduleOnDeviceGoneCallForSimulatedDevicePresence(I)V
    .registers 4

    .line 1417
    invoke-virtual {p0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1418
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_9
    const-wide/32 v0, 0xea60

    .line 1421
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public unscheduleOnDeviceGoneCallForSimulatedDevicePresence(I)V
    .registers 2

    .line 1425
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method
