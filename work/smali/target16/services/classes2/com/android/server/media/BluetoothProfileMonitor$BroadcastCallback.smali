.class public final Lcom/android/server/media/BluetoothProfileMonitor$BroadcastCallback;
.super Ljava/lang/Object;
.source "BluetoothProfileMonitor.java"

# interfaces
.implements Landroid/bluetooth/BluetoothLeBroadcast$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/media/BluetoothProfileMonitor;


# direct methods
.method public constructor <init>(Lcom/android/server/media/BluetoothProfileMonitor;)V
    .registers 2

    .line 589
    iput-object p1, p0, Lcom/android/server/media/BluetoothProfileMonitor$BroadcastCallback;->this$0:Lcom/android/server/media/BluetoothProfileMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/media/BluetoothProfileMonitor;Lcom/android/server/media/BluetoothProfileMonitor-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/media/BluetoothProfileMonitor$BroadcastCallback;-><init>(Lcom/android/server/media/BluetoothProfileMonitor;)V

    return-void
.end method


# virtual methods
.method public onBroadcastMetadataChanged(ILandroid/bluetooth/BluetoothLeBroadcastMetadata;)V
    .registers 4

    .line 624
    iget-object p1, p0, Lcom/android/server/media/BluetoothProfileMonitor$BroadcastCallback;->this$0:Lcom/android/server/media/BluetoothProfileMonitor;

    invoke-static {p1}, Lcom/android/server/media/BluetoothProfileMonitor;->-$$Nest$fgetmDevicesToAdd(Lcom/android/server/media/BluetoothProfileMonitor;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0, p2}, Lcom/android/server/media/BluetoothProfileMonitor;->-$$Nest$maddSourceToDevices(Lcom/android/server/media/BluetoothProfileMonitor;Ljava/util/List;Landroid/bluetooth/BluetoothLeBroadcastMetadata;)V

    .line 625
    iget-object p0, p0, Lcom/android/server/media/BluetoothProfileMonitor$BroadcastCallback;->this$0:Lcom/android/server/media/BluetoothProfileMonitor;

    invoke-static {p0}, Lcom/android/server/media/BluetoothProfileMonitor;->-$$Nest$fgetmDevicesToAdd(Lcom/android/server/media/BluetoothProfileMonitor;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public onBroadcastStartFailed(I)V
    .registers 2

    .line 598
    iget-object p0, p0, Lcom/android/server/media/BluetoothProfileMonitor$BroadcastCallback;->this$0:Lcom/android/server/media/BluetoothProfileMonitor;

    invoke-static {p0}, Lcom/android/server/media/BluetoothProfileMonitor;->-$$Nest$fgetmDevicesToAdd(Lcom/android/server/media/BluetoothProfileMonitor;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public onBroadcastStarted(II)V
    .registers 3

    .line 592
    iget-object p0, p0, Lcom/android/server/media/BluetoothProfileMonitor$BroadcastCallback;->this$0:Lcom/android/server/media/BluetoothProfileMonitor;

    invoke-static {p0, p2}, Lcom/android/server/media/BluetoothProfileMonitor;->-$$Nest$fputmBroadcastId(Lcom/android/server/media/BluetoothProfileMonitor;I)V

    return-void
.end method

.method public onBroadcastStopFailed(I)V
    .registers 2

    .line 0
    return-void
.end method

.method public onBroadcastStopped(II)V
    .registers 3

    .line 603
    iget-object p0, p0, Lcom/android/server/media/BluetoothProfileMonitor$BroadcastCallback;->this$0:Lcom/android/server/media/BluetoothProfileMonitor;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/server/media/BluetoothProfileMonitor;->-$$Nest$fputmBroadcastId(Lcom/android/server/media/BluetoothProfileMonitor;I)V

    return-void
.end method

.method public onBroadcastUpdateFailed(II)V
    .registers 3

    .line 0
    return-void
.end method

.method public onBroadcastUpdated(II)V
    .registers 3

    .line 0
    return-void
.end method

.method public onPlaybackStarted(II)V
    .registers 3

    .line 0
    return-void
.end method

.method public onPlaybackStopped(II)V
    .registers 3

    .line 0
    return-void
.end method
