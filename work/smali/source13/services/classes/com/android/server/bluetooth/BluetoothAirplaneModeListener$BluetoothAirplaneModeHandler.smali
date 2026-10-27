.class Lcom/android/server/bluetooth/BluetoothAirplaneModeListener$BluetoothAirplaneModeHandler;
.super Landroid/os/Handler;
.source "BluetoothAirplaneModeListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/bluetooth/BluetoothAirplaneModeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BluetoothAirplaneModeHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/bluetooth/BluetoothAirplaneModeListener;


# direct methods
.method constructor <init>(Lcom/android/server/bluetooth/BluetoothAirplaneModeListener;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .line 73
    iput-object p1, p0, Lcom/android/server/bluetooth/BluetoothAirplaneModeListener$BluetoothAirplaneModeHandler;->this$0:Lcom/android/server/bluetooth/BluetoothAirplaneModeListener;

    .line 74
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 75
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 79
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_28

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothAirplaneModeListener"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26

    .line 81
    :pswitch_20
    iget-object v0, p0, Lcom/android/server/bluetooth/BluetoothAirplaneModeListener$BluetoothAirplaneModeHandler;->this$0:Lcom/android/server/bluetooth/BluetoothAirplaneModeListener;

    invoke-virtual {v0}, Lcom/android/server/bluetooth/BluetoothAirplaneModeListener;->handleAirplaneModeChange()V

    .line 82
    nop

    .line 87
    :goto_26
    return-void

    nop

    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_20
    .end packed-switch
.end method
