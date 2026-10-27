.class Lmiui/app/ToggleManager$3;
.super Landroid/content/BroadcastReceiver;
.source "ToggleManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/ToggleManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lmiui/app/ToggleManager;


# direct methods
.method constructor blacklist <init>(Lmiui/app/ToggleManager;)V
    .registers 2
    .param p1, "this$0"    # Lmiui/app/ToggleManager;

    .line 1125
    iput-object p1, p0, Lmiui/app/ToggleManager$3;->this$0:Lmiui/app/ToggleManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 1127
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1128
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_76

    .line 1129
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_76

    .line 1130
    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    goto :goto_76

    .line 1132
    :cond_1d
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 1133
    iget-object v1, p0, Lmiui/app/ToggleManager$3;->this$0:Lmiui/app/ToggleManager;

    invoke-static {v1}, Lmiui/app/ToggleManager;->-$$Nest$fgetmBgHandler(Lmiui/app/ToggleManager;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_7b

    .line 1134
    iget-object v1, p0, Lmiui/app/ToggleManager$3;->this$0:Lmiui/app/ToggleManager;

    invoke-static {v1}, Lmiui/app/ToggleManager;->-$$Nest$mupdateBluetoothToggle(Lmiui/app/ToggleManager;)V

    goto :goto_7b

    .line 1136
    :cond_38
    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 1137
    iget-object v1, p0, Lmiui/app/ToggleManager$3;->this$0:Lmiui/app/ToggleManager;

    invoke-virtual {v1}, Lmiui/app/ToggleManager;->updateRingerToggle()V

    .line 1138
    iget-object v1, p0, Lmiui/app/ToggleManager$3;->this$0:Lmiui/app/ToggleManager;

    invoke-virtual {v1}, Lmiui/app/ToggleManager;->updateVibrateToggle()V

    goto :goto_7b

    .line 1139
    :cond_4b
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_59

    .line 1140
    iget-object v1, p0, Lmiui/app/ToggleManager$3;->this$0:Lmiui/app/ToggleManager;

    invoke-static {v1}, Lmiui/app/ToggleManager;->-$$Nest$mupdateFlightModeToggle(Lmiui/app/ToggleManager;)V

    goto :goto_7b

    .line 1141
    :cond_59
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7b

    .line 1142
    iget-object v1, p0, Lmiui/app/ToggleManager$3;->this$0:Lmiui/app/ToggleManager;

    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Lmiui/telephony/TelephonyManager;->hasIccCard()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Lmiui/app/ToggleManager;->-$$Nest$fputmIsSimMissing(Lmiui/app/ToggleManager;Z)V

    .line 1143
    iget-object v1, p0, Lmiui/app/ToggleManager$3;->this$0:Lmiui/app/ToggleManager;

    invoke-static {v1}, Lmiui/app/ToggleManager;->-$$Nest$mpostUpdateDataToggleAsync(Lmiui/app/ToggleManager;)V

    goto :goto_7b

    .line 1131
    :cond_76
    :goto_76
    iget-object v1, p0, Lmiui/app/ToggleManager$3;->this$0:Lmiui/app/ToggleManager;

    invoke-virtual {v1, p2}, Lmiui/app/ToggleManager;->updateWifiToggle(Landroid/content/Intent;)V

    .line 1145
    :cond_7b
    :goto_7b
    return-void
.end method
