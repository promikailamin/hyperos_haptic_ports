.class Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor$SimulatedDevicePresenceSchedulerHelper;
.super Landroid/os/Handler;
.source "CompanionDevicePresenceMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimulatedDevicePresenceSchedulerHelper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;


# direct methods
.method constructor <init>(Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;)V
    .registers 2

    .line 346
    iput-object p1, p0, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor$SimulatedDevicePresenceSchedulerHelper;->this$0:Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;

    .line 347
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 348
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 365
    iget v0, p1, Landroid/os/Message;->what:I

    .line 366
    .local v0, "associationId":I
    iget-object v1, p0, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor$SimulatedDevicePresenceSchedulerHelper;->this$0:Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;

    invoke-static {v1}, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->-$$Nest$fgetmSimulated(Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;)Ljava/util/Set;

    move-result-object v2

    const-string/jumbo v3, "simulated"

    invoke-static {v1, v2, v0, v3}, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->-$$Nest$monDeviceGone(Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;Ljava/util/Set;ILjava/lang/String;)V

    .line 367
    return-void
.end method

.method scheduleOnDeviceGoneCallForSimulatedDevicePresence(I)V
    .registers 4
    .param p1, "associationId"    # I

    .line 352
    invoke-virtual {p0, p1}, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor$SimulatedDevicePresenceSchedulerHelper;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 353
    invoke-virtual {p0, p1}, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor$SimulatedDevicePresenceSchedulerHelper;->removeMessages(I)V

    .line 356
    :cond_9
    const-wide/32 v0, 0xea60

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor$SimulatedDevicePresenceSchedulerHelper;->sendEmptyMessageDelayed(IJ)Z

    .line 357
    return-void
.end method

.method unscheduleOnDeviceGoneCallForSimulatedDevicePresence(I)V
    .registers 2
    .param p1, "associationId"    # I

    .line 360
    invoke-virtual {p0, p1}, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor$SimulatedDevicePresenceSchedulerHelper;->removeMessages(I)V

    .line 361
    return-void
.end method
