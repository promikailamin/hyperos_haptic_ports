.class Lcom/android/server/bluetooth/BluetoothManagerService$4;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/bluetooth/BluetoothManagerService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/bluetooth/BluetoothManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/bluetooth/BluetoothManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/bluetooth/BluetoothManagerService;

    .line 853
    iput-object p1, p0, Lcom/android/server/bluetooth/BluetoothManagerService$4;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 856
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    sparse-switch v1, :sswitch_data_44

    :cond_c
    goto :goto_21

    :sswitch_d
    const-string v1, "android.os.action.USER_RESTRICTIONS_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_22

    :sswitch_17
    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    move v0, v2

    goto :goto_22

    :goto_21
    const/4 v0, -0x1

    :goto_22
    packed-switch v0, :pswitch_data_4e

    .line 865
    const-string v0, "BluetoothManagerService"

    const-string v1, "Unknown broadcast received in BluetoothManagerService receiver registered across all users"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_43

    .line 862
    :pswitch_2d
    iget-object v0, p0, Lcom/android/server/bluetooth/BluetoothManagerService$4;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-virtual {p0}, Lcom/android/server/bluetooth/BluetoothManagerService$4;->getSendingUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/bluetooth/BluetoothManagerService;->onUserRestrictionsChanged(Landroid/os/UserHandle;)V

    .line 863
    goto :goto_43

    .line 858
    :pswitch_37
    const-string v0, "android.intent.extra.user_handle"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 859
    .local v0, "foregroundUserId":I
    iget-object v1, p0, Lcom/android/server/bluetooth/BluetoothManagerService$4;->this$0:Lcom/android/server/bluetooth/BluetoothManagerService;

    invoke-static {v1, v0}, Lcom/android/server/bluetooth/BluetoothManagerService;->-$$Nest$mpropagateForegroundUserId(Lcom/android/server/bluetooth/BluetoothManagerService;I)V

    .line 860
    nop

    .line 868
    .end local v0    # "foregroundUserId":I
    :goto_43
    return-void

    :sswitch_data_44
    .sparse-switch
        0x392cb822 -> :sswitch_17
        0x5b136983 -> :sswitch_d
    .end sparse-switch

    :pswitch_data_4e
    .packed-switch 0x0
        :pswitch_37
        :pswitch_2d
    .end packed-switch
.end method
