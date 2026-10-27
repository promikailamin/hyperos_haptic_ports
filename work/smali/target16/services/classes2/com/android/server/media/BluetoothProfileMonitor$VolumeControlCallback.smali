.class public final Lcom/android/server/media/BluetoothProfileMonitor$VolumeControlCallback;
.super Ljava/lang/Object;
.source "BluetoothProfileMonitor.java"

# interfaces
.implements Landroid/bluetooth/BluetoothVolumeControl$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/media/BluetoothProfileMonitor;


# direct methods
.method public constructor <init>(Lcom/android/server/media/BluetoothProfileMonitor;)V
    .registers 2

    .line 678
    iput-object p1, p0, Lcom/android/server/media/BluetoothProfileMonitor$VolumeControlCallback;->this$0:Lcom/android/server/media/BluetoothProfileMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/media/BluetoothProfileMonitor;Lcom/android/server/media/BluetoothProfileMonitor-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/media/BluetoothProfileMonitor$VolumeControlCallback;-><init>(Lcom/android/server/media/BluetoothProfileMonitor;)V

    return-void
.end method


# virtual methods
.method public onDeviceVolumeChanged(Landroid/bluetooth/BluetoothDevice;I)V
    .registers 4

    .line 681
    iget-object v0, p0, Lcom/android/server/media/BluetoothProfileMonitor$VolumeControlCallback;->this$0:Lcom/android/server/media/BluetoothProfileMonitor;

    invoke-static {v0}, Lcom/android/server/media/BluetoothProfileMonitor;->-$$Nest$fgetmVolumeMap(Lcom/android/server/media/BluetoothProfileMonitor;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 682
    iget-object p2, p0, Lcom/android/server/media/BluetoothProfileMonitor$VolumeControlCallback;->this$0:Lcom/android/server/media/BluetoothProfileMonitor;

    invoke-virtual {p2, p1}, Lcom/android/server/media/BluetoothProfileMonitor;->isMediaOnlyDeviceInBroadcast(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p1

    if-eqz p1, :cond_1e

    .line 683
    iget-object p0, p0, Lcom/android/server/media/BluetoothProfileMonitor$VolumeControlCallback;->this$0:Lcom/android/server/media/BluetoothProfileMonitor;

    invoke-static {p0}, Lcom/android/server/media/BluetoothProfileMonitor;->-$$Nest$fgetmSinkChangedListener(Lcom/android/server/media/BluetoothProfileMonitor;)Lcom/android/server/media/BluetoothDeviceRoutesManager$OnBroadcastSinkChangedListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/media/BluetoothDeviceRoutesManager$OnBroadcastSinkChangedListener;->onBroadcastSinkChanged()V

    :cond_1e
    return-void
.end method
