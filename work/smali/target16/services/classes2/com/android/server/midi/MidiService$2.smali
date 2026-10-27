.class public Lcom/android/server/midi/MidiService$2;
.super Landroid/content/BroadcastReceiver;
.source "MidiService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/midi/MidiService;


# direct methods
.method public constructor <init>(Lcom/android/server/midi/MidiService;)V
    .registers 2

    .line 862
    iput-object p1, p0, Lcom/android/server/midi/MidiService$2;->this$0:Lcom/android/server/midi/MidiService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    .line 865
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 866
    const-string v0, "MidiService"

    if-nez p1, :cond_e

    .line 867
    const-string p0, "MidiService, action is null"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 871
    :cond_e
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_cc

    goto :goto_45

    :sswitch_1a
    const-string v1, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_23

    goto :goto_45

    :cond_23
    const/4 v2, 0x3

    goto :goto_45

    :sswitch_25
    const-string v1, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2e

    goto :goto_45

    :cond_2e
    const/4 v2, 0x2

    goto :goto_45

    :sswitch_30
    const-string v1, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_39

    goto :goto_45

    :cond_39
    const/4 v2, 0x1

    goto :goto_45

    :sswitch_3b
    const-string v1, "android.bluetooth.device.action.UUID"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_44

    goto :goto_45

    :cond_44
    const/4 v2, 0x0

    :goto_45
    const-string p1, "android.bluetooth.device.extra.DEVICE"

    packed-switch v2, :pswitch_data_de

    goto/16 :goto_ca

    .line 902
    :pswitch_4c
    const-string v1, "ACTION_ACL_DISCONNECTED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    const-class v0, Landroid/bluetooth/BluetoothDevice;

    .line 904
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    .line 907
    iget-object p2, p0, Lcom/android/server/midi/MidiService$2;->this$0:Lcom/android/server/midi/MidiService;

    invoke-static {p2, p1}, Lcom/android/server/midi/MidiService;->-$$Nest$misBLEMIDIDevice(Lcom/android/server/midi/MidiService;Landroid/bluetooth/BluetoothDevice;)Z

    move-result p2

    if-eqz p2, :cond_ca

    .line 908
    iget-object p0, p0, Lcom/android/server/midi/MidiService$2;->this$0:Lcom/android/server/midi/MidiService;

    invoke-static {p0, p1}, Lcom/android/server/midi/MidiService;->-$$Nest$mcloseBluetoothDevice(Lcom/android/server/midi/MidiService;Landroid/bluetooth/BluetoothDevice;)V

    return-void

    .line 874
    :pswitch_67
    const-string v1, "ACTION_ACL_CONNECTED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    invoke-static {p2}, Lcom/android/server/midi/MidiService;->-$$Nest$smdumpIntentExtras(Landroid/content/Intent;)V

    .line 878
    invoke-static {p2}, Lcom/android/server/midi/MidiService;->-$$Nest$smisBleTransport(Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_7b

    .line 879
    const-string p0, "No BLE transport - NOT MIDI"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 883
    :cond_7b
    const-string v1, "BLE Device"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    const-class v1, Landroid/bluetooth/BluetoothDevice;

    .line 885
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    .line 886
    iget-object p2, p0, Lcom/android/server/midi/MidiService$2;->this$0:Lcom/android/server/midi/MidiService;

    invoke-static {p2, p1}, Lcom/android/server/midi/MidiService;->-$$Nest$mdumpUuids(Lcom/android/server/midi/MidiService;Landroid/bluetooth/BluetoothDevice;)V

    .line 890
    iget-object p2, p0, Lcom/android/server/midi/MidiService$2;->this$0:Lcom/android/server/midi/MidiService;

    invoke-static {p2, p1}, Lcom/android/server/midi/MidiService;->-$$Nest$mhasNonMidiUuids(Lcom/android/server/midi/MidiService;Landroid/bluetooth/BluetoothDevice;)Z

    move-result p2

    if-eqz p2, :cond_9b

    .line 891
    const-string p0, "Non-MIDI service UUIDs found. NOT MIDI"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 895
    :cond_9b
    const-string p2, "Potential MIDI Device."

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    iget-object p0, p0, Lcom/android/server/midi/MidiService$2;->this$0:Lcom/android/server/midi/MidiService;

    invoke-static {p0, p1}, Lcom/android/server/midi/MidiService;->-$$Nest$mopenBluetoothDevice(Lcom/android/server/midi/MidiService;Landroid/bluetooth/BluetoothDevice;)V

    return-void

    .line 931
    :pswitch_a6
    const-string v1, "ACTION_UUID"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    const-class v1, Landroid/bluetooth/BluetoothDevice;

    .line 933
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    .line 934
    iget-object p2, p0, Lcom/android/server/midi/MidiService$2;->this$0:Lcom/android/server/midi/MidiService;

    invoke-static {p2, p1}, Lcom/android/server/midi/MidiService;->-$$Nest$mdumpUuids(Lcom/android/server/midi/MidiService;Landroid/bluetooth/BluetoothDevice;)V

    .line 935
    iget-object p2, p0, Lcom/android/server/midi/MidiService$2;->this$0:Lcom/android/server/midi/MidiService;

    invoke-static {p2, p1}, Lcom/android/server/midi/MidiService;->-$$Nest$misBLEMIDIDevice(Lcom/android/server/midi/MidiService;Landroid/bluetooth/BluetoothDevice;)Z

    move-result p2

    if-eqz p2, :cond_ca

    .line 936
    const-string p2, "BT MIDI DEVICE"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 937
    iget-object p0, p0, Lcom/android/server/midi/MidiService$2;->this$0:Lcom/android/server/midi/MidiService;

    invoke-static {p0, p1}, Lcom/android/server/midi/MidiService;->-$$Nest$mopenBluetoothDevice(Lcom/android/server/midi/MidiService;Landroid/bluetooth/BluetoothDevice;)V

    :cond_ca
    :goto_ca
    return-void

    nop

    :sswitch_data_cc
    .sparse-switch
        -0x16809cc6 -> :sswitch_3b
        -0x11f77b4b -> :sswitch_30
        0x6c9330ef -> :sswitch_25
        0x7e2cc189 -> :sswitch_1a
    .end sparse-switch

    :pswitch_data_de
    .packed-switch 0x0
        :pswitch_a6
        :pswitch_67
        :pswitch_4c
        :pswitch_a6
    .end packed-switch
.end method
