.class Lcom/android/server/bluetooth/BluetoothModeChangeHelper$1;
.super Ljava/lang/Object;
.source "BluetoothModeChangeHelper.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/bluetooth/BluetoothModeChangeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/bluetooth/BluetoothModeChangeHelper;


# direct methods
.method constructor <init>(Lcom/android/server/bluetooth/BluetoothModeChangeHelper;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/bluetooth/BluetoothModeChangeHelper;

    .line 54
    iput-object p1, p0, Lcom/android/server/bluetooth/BluetoothModeChangeHelper$1;->this$0:Lcom/android/server/bluetooth/BluetoothModeChangeHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .registers 5
    .param p1, "profile"    # I
    .param p2, "proxy"    # Landroid/bluetooth/BluetoothProfile;

    .line 58
    sparse-switch p1, :sswitch_data_20

    goto :goto_1f

    .line 66
    :sswitch_4
    iget-object v0, p0, Lcom/android/server/bluetooth/BluetoothModeChangeHelper$1;->this$0:Lcom/android/server/bluetooth/BluetoothModeChangeHelper;

    move-object v1, p2

    check-cast v1, Landroid/bluetooth/BluetoothLeAudio;

    invoke-static {v0, v1}, Lcom/android/server/bluetooth/BluetoothModeChangeHelper;->-$$Nest$fputmLeAudio(Lcom/android/server/bluetooth/BluetoothModeChangeHelper;Landroid/bluetooth/BluetoothLeAudio;)V

    .line 67
    goto :goto_1f

    .line 63
    :sswitch_d
    iget-object v0, p0, Lcom/android/server/bluetooth/BluetoothModeChangeHelper$1;->this$0:Lcom/android/server/bluetooth/BluetoothModeChangeHelper;

    move-object v1, p2

    check-cast v1, Landroid/bluetooth/BluetoothHearingAid;

    invoke-static {v0, v1}, Lcom/android/server/bluetooth/BluetoothModeChangeHelper;->-$$Nest$fputmHearingAid(Lcom/android/server/bluetooth/BluetoothModeChangeHelper;Landroid/bluetooth/BluetoothHearingAid;)V

    .line 64
    goto :goto_1f

    .line 60
    :sswitch_16
    iget-object v0, p0, Lcom/android/server/bluetooth/BluetoothModeChangeHelper$1;->this$0:Lcom/android/server/bluetooth/BluetoothModeChangeHelper;

    move-object v1, p2

    check-cast v1, Landroid/bluetooth/BluetoothA2dp;

    invoke-static {v0, v1}, Lcom/android/server/bluetooth/BluetoothModeChangeHelper;->-$$Nest$fputmA2dp(Lcom/android/server/bluetooth/BluetoothModeChangeHelper;Landroid/bluetooth/BluetoothA2dp;)V

    .line 61
    nop

    .line 71
    :goto_1f
    return-void

    :sswitch_data_20
    .sparse-switch
        0x2 -> :sswitch_16
        0x15 -> :sswitch_d
        0x16 -> :sswitch_4
    .end sparse-switch
.end method

.method public onServiceDisconnected(I)V
    .registers 4
    .param p1, "profile"    # I

    .line 76
    const/4 v0, 0x0

    sparse-switch p1, :sswitch_data_18

    goto :goto_17

    .line 84
    :sswitch_5
    iget-object v1, p0, Lcom/android/server/bluetooth/BluetoothModeChangeHelper$1;->this$0:Lcom/android/server/bluetooth/BluetoothModeChangeHelper;

    invoke-static {v1, v0}, Lcom/android/server/bluetooth/BluetoothModeChangeHelper;->-$$Nest$fputmLeAudio(Lcom/android/server/bluetooth/BluetoothModeChangeHelper;Landroid/bluetooth/BluetoothLeAudio;)V

    .line 85
    goto :goto_17

    .line 81
    :sswitch_b
    iget-object v1, p0, Lcom/android/server/bluetooth/BluetoothModeChangeHelper$1;->this$0:Lcom/android/server/bluetooth/BluetoothModeChangeHelper;

    invoke-static {v1, v0}, Lcom/android/server/bluetooth/BluetoothModeChangeHelper;->-$$Nest$fputmHearingAid(Lcom/android/server/bluetooth/BluetoothModeChangeHelper;Landroid/bluetooth/BluetoothHearingAid;)V

    .line 82
    goto :goto_17

    .line 78
    :sswitch_11
    iget-object v1, p0, Lcom/android/server/bluetooth/BluetoothModeChangeHelper$1;->this$0:Lcom/android/server/bluetooth/BluetoothModeChangeHelper;

    invoke-static {v1, v0}, Lcom/android/server/bluetooth/BluetoothModeChangeHelper;->-$$Nest$fputmA2dp(Lcom/android/server/bluetooth/BluetoothModeChangeHelper;Landroid/bluetooth/BluetoothA2dp;)V

    .line 79
    nop

    .line 89
    :goto_17
    return-void

    :sswitch_data_18
    .sparse-switch
        0x2 -> :sswitch_11
        0x15 -> :sswitch_b
        0x16 -> :sswitch_5
    .end sparse-switch
.end method
