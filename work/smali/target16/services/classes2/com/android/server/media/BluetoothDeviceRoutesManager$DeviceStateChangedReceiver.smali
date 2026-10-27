.class public Lcom/android/server/media/BluetoothDeviceRoutesManager$DeviceStateChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothDeviceRoutesManager.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/media/BluetoothDeviceRoutesManager;


# direct methods
.method public static synthetic $r8$lambda$YnNdjO8jUafYW9nGc-fEBOr8Jm4(Lcom/android/server/media/BluetoothDeviceRoutesManager$DeviceStateChangedReceiver;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/media/BluetoothDeviceRoutesManager$DeviceStateChangedReceiver;->lambda$onReceive$0()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/media/BluetoothDeviceRoutesManager;)V
    .registers 2

    .line 511
    iput-object p1, p0, Lcom/android/server/media/BluetoothDeviceRoutesManager$DeviceStateChangedReceiver;->this$0:Lcom/android/server/media/BluetoothDeviceRoutesManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/media/BluetoothDeviceRoutesManager;Lcom/android/server/media/BluetoothDeviceRoutesManager-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/media/BluetoothDeviceRoutesManager$DeviceStateChangedReceiver;-><init>(Lcom/android/server/media/BluetoothDeviceRoutesManager;)V

    return-void
.end method


# virtual methods
.method public final synthetic lambda$onReceive$0()V
    .registers 2

    .line 522
    iget-object v0, p0, Lcom/android/server/media/BluetoothDeviceRoutesManager$DeviceStateChangedReceiver;->this$0:Lcom/android/server/media/BluetoothDeviceRoutesManager;

    invoke-static {v0}, Lcom/android/server/media/BluetoothDeviceRoutesManager;->-$$Nest$mupdateBluetoothRoutes(Lcom/android/server/media/BluetoothDeviceRoutesManager;)V

    .line 523
    iget-object p0, p0, Lcom/android/server/media/BluetoothDeviceRoutesManager$DeviceStateChangedReceiver;->this$0:Lcom/android/server/media/BluetoothDeviceRoutesManager;

    invoke-static {p0}, Lcom/android/server/media/BluetoothDeviceRoutesManager;->-$$Nest$mnotifyBluetoothRoutesUpdated(Lcom/android/server/media/BluetoothDeviceRoutesManager;)V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 514
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    const/4 v0, -0x1

    sparse-switch p2, :sswitch_data_4e

    goto :goto_3b

    :sswitch_10
    const-string p2, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_19

    goto :goto_3b

    :cond_19
    const/4 v0, 0x3

    goto :goto_3b

    :sswitch_1b
    const-string p2, "android.bluetooth.device.action.ALIAS_CHANGED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_24

    goto :goto_3b

    :cond_24
    const/4 v0, 0x2

    goto :goto_3b

    :sswitch_26
    const-string p2, "android.bluetooth.hearingaid.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2f

    goto :goto_3b

    :cond_2f
    const/4 v0, 0x1

    goto :goto_3b

    :sswitch_31
    const-string p2, "android.bluetooth.action.LE_AUDIO_CONNECTION_STATE_CHANGED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3a

    goto :goto_3b

    :cond_3a
    const/4 v0, 0x0

    :goto_3b
    packed-switch v0, :pswitch_data_60

    return-void

    .line 520
    :pswitch_3f
    iget-object p1, p0, Lcom/android/server/media/BluetoothDeviceRoutesManager$DeviceStateChangedReceiver;->this$0:Lcom/android/server/media/BluetoothDeviceRoutesManager;

    invoke-static {p1}, Lcom/android/server/media/BluetoothDeviceRoutesManager;->-$$Nest$fgetmHandler(Lcom/android/server/media/BluetoothDeviceRoutesManager;)Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/android/server/media/BluetoothDeviceRoutesManager$DeviceStateChangedReceiver$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/server/media/BluetoothDeviceRoutesManager$DeviceStateChangedReceiver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/media/BluetoothDeviceRoutesManager$DeviceStateChangedReceiver;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :sswitch_data_4e
    .sparse-switch
        -0x693eab85 -> :sswitch_31
        -0x2486726f -> :sswitch_26
        0x46028ae6 -> :sswitch_1b
        0x4a286686 -> :sswitch_10
    .end sparse-switch

    :pswitch_data_60
    .packed-switch 0x0
        :pswitch_3f
        :pswitch_3f
        :pswitch_3f
        :pswitch_3f
    .end packed-switch
.end method
