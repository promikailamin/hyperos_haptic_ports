.class Lcom/android/server/midi/MidiService$2;
.super Landroid/content/BroadcastReceiver;
.source "MidiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/midi/MidiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/midi/MidiService;


# direct methods
.method constructor <init>(Lcom/android/server/midi/MidiService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/midi/MidiService;

    .line 725
    iput-object p1, p0, Lcom/android/server/midi/MidiService$2;->this$0:Lcom/android/server/midi/MidiService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 728
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 729
    .local v0, "action":Ljava/lang/String;
    const-string v1, "MidiService"

    if-nez v0, :cond_e

    .line 730
    const-string v2, "MidiService, action is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    return-void

    .line 734
    :cond_e
    const/4 v2, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_c2

    :cond_16
    goto :goto_3e

    :sswitch_17
    const-string v3, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    const/4 v2, 0x2

    goto :goto_3e

    :sswitch_21
    const-string v3, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    const/4 v2, 0x1

    goto :goto_3e

    :sswitch_2b
    const-string v3, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    const/4 v2, 0x0

    goto :goto_3e

    :sswitch_35
    const-string v3, "android.bluetooth.device.action.UUID"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    const/4 v2, 0x3

    :goto_3e
    const-string v3, "android.bluetooth.device.extra.DEVICE"

    packed-switch v2, :pswitch_data_d4

    goto/16 :goto_c1

    .line 794
    :pswitch_45
    const-string v2, "ACTION_UUID"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    nop

    .line 796
    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 797
    .local v2, "btDevice":Landroid/bluetooth/BluetoothDevice;
    iget-object v3, p0, Lcom/android/server/midi/MidiService$2;->this$0:Lcom/android/server/midi/MidiService;

    invoke-static {v3, v2}, Lcom/android/server/midi/MidiService;->-$$Nest$mdumpUuids(Lcom/android/server/midi/MidiService;Landroid/bluetooth/BluetoothDevice;)V

    .line 798
    iget-object v3, p0, Lcom/android/server/midi/MidiService$2;->this$0:Lcom/android/server/midi/MidiService;

    invoke-static {v3, v2}, Lcom/android/server/midi/MidiService;->-$$Nest$misBLEMIDIDevice(Lcom/android/server/midi/MidiService;Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    if-eqz v3, :cond_c1

    .line 799
    const-string v3, "BT MIDI DEVICE"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    iget-object v1, p0, Lcom/android/server/midi/MidiService$2;->this$0:Lcom/android/server/midi/MidiService;

    invoke-static {v1, v2}, Lcom/android/server/midi/MidiService;->-$$Nest$mopenBluetoothDevice(Lcom/android/server/midi/MidiService;Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_c1

    .line 765
    .end local v2    # "btDevice":Landroid/bluetooth/BluetoothDevice;
    :pswitch_69
    const-string v2, "ACTION_ACL_DISCONNECTED"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    nop

    .line 767
    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 770
    .local v1, "btDevice":Landroid/bluetooth/BluetoothDevice;
    iget-object v2, p0, Lcom/android/server/midi/MidiService$2;->this$0:Lcom/android/server/midi/MidiService;

    invoke-static {v2, v1}, Lcom/android/server/midi/MidiService;->-$$Nest$misBLEMIDIDevice(Lcom/android/server/midi/MidiService;Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_82

    .line 771
    iget-object v2, p0, Lcom/android/server/midi/MidiService$2;->this$0:Lcom/android/server/midi/MidiService;

    invoke-static {v2, v1}, Lcom/android/server/midi/MidiService;->-$$Nest$mcloseBluetoothDevice(Lcom/android/server/midi/MidiService;Landroid/bluetooth/BluetoothDevice;)V

    .line 774
    .end local v1    # "btDevice":Landroid/bluetooth/BluetoothDevice;
    :cond_82
    goto :goto_c1

    .line 737
    :pswitch_83
    const-string v2, "ACTION_ACL_CONNECTED"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    invoke-static {p2}, Lcom/android/server/midi/MidiService;->-$$Nest$smdumpIntentExtras(Landroid/content/Intent;)V

    .line 741
    invoke-static {p2}, Lcom/android/server/midi/MidiService;->-$$Nest$smisBleTransport(Landroid/content/Intent;)Z

    move-result v2

    if-nez v2, :cond_97

    .line 742
    const-string v2, "No BLE transport - NOT MIDI"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    goto :goto_c1

    .line 746
    :cond_97
    const-string v2, "BLE Device"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    nop

    .line 748
    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 749
    .restart local v2    # "btDevice":Landroid/bluetooth/BluetoothDevice;
    iget-object v3, p0, Lcom/android/server/midi/MidiService$2;->this$0:Lcom/android/server/midi/MidiService;

    invoke-static {v3, v2}, Lcom/android/server/midi/MidiService;->-$$Nest$mdumpUuids(Lcom/android/server/midi/MidiService;Landroid/bluetooth/BluetoothDevice;)V

    .line 753
    iget-object v3, p0, Lcom/android/server/midi/MidiService$2;->this$0:Lcom/android/server/midi/MidiService;

    invoke-static {v3, v2}, Lcom/android/server/midi/MidiService;->-$$Nest$mhasNonMidiUuids(Lcom/android/server/midi/MidiService;Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    if-eqz v3, :cond_b6

    .line 754
    const-string v3, "Non-MIDI service UUIDs found. NOT MIDI"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    goto :goto_c1

    .line 758
    :cond_b6
    const-string v3, "Potential MIDI Device."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    iget-object v1, p0, Lcom/android/server/midi/MidiService$2;->this$0:Lcom/android/server/midi/MidiService;

    invoke-static {v1, v2}, Lcom/android/server/midi/MidiService;->-$$Nest$mopenBluetoothDevice(Lcom/android/server/midi/MidiService;Landroid/bluetooth/BluetoothDevice;)V

    .line 761
    .end local v2    # "btDevice":Landroid/bluetooth/BluetoothDevice;
    nop

    .line 805
    :cond_c1
    :goto_c1
    return-void

    :sswitch_data_c2
    .sparse-switch
        -0x16809cc6 -> :sswitch_35
        -0x11f77b4b -> :sswitch_2b
        0x6c9330ef -> :sswitch_21
        0x7e2cc189 -> :sswitch_17
    .end sparse-switch

    :pswitch_data_d4
    .packed-switch 0x0
        :pswitch_83
        :pswitch_69
        :pswitch_45
        :pswitch_45
    .end packed-switch
.end method
