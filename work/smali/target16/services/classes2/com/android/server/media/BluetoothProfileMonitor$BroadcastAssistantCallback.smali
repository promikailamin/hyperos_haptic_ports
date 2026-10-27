.class public final Lcom/android/server/media/BluetoothProfileMonitor$BroadcastAssistantCallback;
.super Ljava/lang/Object;
.source "BluetoothProfileMonitor.java"

# interfaces
.implements Landroid/bluetooth/BluetoothLeBroadcastAssistant$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/media/BluetoothProfileMonitor;


# direct methods
.method public constructor <init>(Lcom/android/server/media/BluetoothProfileMonitor;)V
    .registers 2

    .line 629
    iput-object p1, p0, Lcom/android/server/media/BluetoothProfileMonitor$BroadcastAssistantCallback;->this$0:Lcom/android/server/media/BluetoothProfileMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/media/BluetoothProfileMonitor;Lcom/android/server/media/BluetoothProfileMonitor-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/media/BluetoothProfileMonitor$BroadcastAssistantCallback;-><init>(Lcom/android/server/media/BluetoothProfileMonitor;)V

    return-void
.end method


# virtual methods
.method public onReceiveStateChanged(Landroid/bluetooth/BluetoothDevice;ILandroid/bluetooth/BluetoothLeBroadcastReceiveState;)V
    .registers 4

    .line 0
    return-void
.end method

.method public onSearchStartFailed(I)V
    .registers 2

    .line 0
    return-void
.end method

.method public onSearchStarted(I)V
    .registers 2

    .line 0
    return-void
.end method

.method public onSearchStopFailed(I)V
    .registers 2

    .line 0
    return-void
.end method

.method public onSearchStopped(I)V
    .registers 2

    .line 0
    return-void
.end method

.method public onSourceAddFailed(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothLeBroadcastMetadata;I)V
    .registers 4

    .line 0
    return-void
.end method

.method public onSourceAdded(Landroid/bluetooth/BluetoothDevice;II)V
    .registers 4

    .line 648
    iget-object p0, p0, Lcom/android/server/media/BluetoothProfileMonitor$BroadcastAssistantCallback;->this$0:Lcom/android/server/media/BluetoothProfileMonitor;

    invoke-static {p0}, Lcom/android/server/media/BluetoothProfileMonitor;->-$$Nest$fgetmSinkChangedListener(Lcom/android/server/media/BluetoothProfileMonitor;)Lcom/android/server/media/BluetoothDeviceRoutesManager$OnBroadcastSinkChangedListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/media/BluetoothDeviceRoutesManager$OnBroadcastSinkChangedListener;->onBroadcastSinkChanged()V

    return-void
.end method

.method public onSourceFound(Landroid/bluetooth/BluetoothLeBroadcastMetadata;)V
    .registers 2

    .line 0
    return-void
.end method

.method public onSourceModified(Landroid/bluetooth/BluetoothDevice;II)V
    .registers 4

    .line 0
    return-void
.end method

.method public onSourceModifyFailed(Landroid/bluetooth/BluetoothDevice;II)V
    .registers 4

    .line 0
    return-void
.end method

.method public onSourceRemoveFailed(Landroid/bluetooth/BluetoothDevice;II)V
    .registers 4

    .line 0
    return-void
.end method

.method public onSourceRemoved(Landroid/bluetooth/BluetoothDevice;II)V
    .registers 4

    .line 665
    iget-object p0, p0, Lcom/android/server/media/BluetoothProfileMonitor$BroadcastAssistantCallback;->this$0:Lcom/android/server/media/BluetoothProfileMonitor;

    invoke-static {p0}, Lcom/android/server/media/BluetoothProfileMonitor;->-$$Nest$fgetmSinkChangedListener(Lcom/android/server/media/BluetoothProfileMonitor;)Lcom/android/server/media/BluetoothDeviceRoutesManager$OnBroadcastSinkChangedListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/media/BluetoothDeviceRoutesManager$OnBroadcastSinkChangedListener;->onBroadcastSinkChanged()V

    return-void
.end method
