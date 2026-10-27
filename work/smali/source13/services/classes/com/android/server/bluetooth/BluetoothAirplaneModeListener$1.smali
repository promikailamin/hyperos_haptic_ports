.class Lcom/android/server/bluetooth/BluetoothAirplaneModeListener$1;
.super Landroid/database/ContentObserver;
.source "BluetoothAirplaneModeListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/bluetooth/BluetoothAirplaneModeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/bluetooth/BluetoothAirplaneModeListener;


# direct methods
.method constructor <init>(Lcom/android/server/bluetooth/BluetoothAirplaneModeListener;Landroid/os/Handler;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/bluetooth/BluetoothAirplaneModeListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 63
    iput-object p1, p0, Lcom/android/server/bluetooth/BluetoothAirplaneModeListener$1;->this$0:Lcom/android/server/bluetooth/BluetoothAirplaneModeListener;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 4
    .param p1, "unused"    # Z

    .line 67
    iget-object v0, p0, Lcom/android/server/bluetooth/BluetoothAirplaneModeListener$1;->this$0:Lcom/android/server/bluetooth/BluetoothAirplaneModeListener;

    invoke-static {v0}, Lcom/android/server/bluetooth/BluetoothAirplaneModeListener;->-$$Nest$fgetmHandler(Lcom/android/server/bluetooth/BluetoothAirplaneModeListener;)Lcom/android/server/bluetooth/BluetoothAirplaneModeListener$BluetoothAirplaneModeHandler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/bluetooth/BluetoothAirplaneModeListener$BluetoothAirplaneModeHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 68
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/bluetooth/BluetoothAirplaneModeListener$1;->this$0:Lcom/android/server/bluetooth/BluetoothAirplaneModeListener;

    invoke-static {v1}, Lcom/android/server/bluetooth/BluetoothAirplaneModeListener;->-$$Nest$fgetmHandler(Lcom/android/server/bluetooth/BluetoothAirplaneModeListener;)Lcom/android/server/bluetooth/BluetoothAirplaneModeListener$BluetoothAirplaneModeHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/bluetooth/BluetoothAirplaneModeListener$BluetoothAirplaneModeHandler;->sendMessage(Landroid/os/Message;)Z

    .line 69
    return-void
.end method
