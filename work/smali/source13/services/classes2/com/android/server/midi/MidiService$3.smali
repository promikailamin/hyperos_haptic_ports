.class Lcom/android/server/midi/MidiService$3;
.super Ljava/lang/Object;
.source "MidiService.java"

# interfaces
.implements Landroid/media/midi/MidiManager$OnDeviceOpenedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/midi/MidiService;->openBluetoothDevice(Landroid/bluetooth/BluetoothDevice;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/midi/MidiService;

.field final synthetic val$bluetoothDevice:Landroid/bluetooth/BluetoothDevice;


# direct methods
.method constructor <init>(Lcom/android/server/midi/MidiService;Landroid/bluetooth/BluetoothDevice;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/midi/MidiService;

    .line 980
    iput-object p1, p0, Lcom/android/server/midi/MidiService$3;->this$0:Lcom/android/server/midi/MidiService;

    iput-object p2, p0, Lcom/android/server/midi/MidiService$3;->val$bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeviceOpened(Landroid/media/midi/MidiDevice;)V
    .registers 6
    .param p1, "device"    # Landroid/media/midi/MidiDevice;

    .line 983
    iget-object v0, p0, Lcom/android/server/midi/MidiService$3;->this$0:Lcom/android/server/midi/MidiService;

    invoke-static {v0}, Lcom/android/server/midi/MidiService;->-$$Nest$fgetmBleMidiDeviceMap(Lcom/android/server/midi/MidiService;)Ljava/util/HashMap;

    move-result-object v0

    monitor-enter v0

    .line 984
    :try_start_7
    const-string v1, "MidiService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onDeviceOpened() device:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    iget-object v1, p0, Lcom/android/server/midi/MidiService$3;->this$0:Lcom/android/server/midi/MidiService;

    invoke-static {v1}, Lcom/android/server/midi/MidiService;->-$$Nest$fgetmBleMidiDeviceMap(Lcom/android/server/midi/MidiService;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/midi/MidiService$3;->val$bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 986
    monitor-exit v0

    .line 987
    return-void

    .line 986
    :catchall_2d
    move-exception v1

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_7 .. :try_end_2f} :catchall_2d

    throw v1
.end method
