.class Lmiui/app/WifiApEnabler$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiApEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/WifiApEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lmiui/app/WifiApEnabler;


# direct methods
.method constructor blacklist <init>(Lmiui/app/WifiApEnabler;)V
    .registers 2
    .param p1, "this$0"    # Lmiui/app/WifiApEnabler;

    .line 51
    iput-object p1, p0, Lmiui/app/WifiApEnabler$1;->this$0:Lmiui/app/WifiApEnabler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 54
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "wifi_state"

    if-eqz v1, :cond_1a

    .line 56
    iget-object v1, p0, Lmiui/app/WifiApEnabler$1;->this$0:Lmiui/app/WifiApEnabler;

    const/16 v3, 0xe

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v1, v2}, Lmiui/app/WifiApEnabler;->-$$Nest$mhandleWifiApStateChanged(Lmiui/app/WifiApEnabler;I)V

    goto :goto_42

    .line 58
    :cond_1a
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 59
    iget-object v1, p0, Lmiui/app/WifiApEnabler$1;->this$0:Lmiui/app/WifiApEnabler;

    invoke-static {v1}, Lmiui/app/WifiApEnabler;->-$$Nest$mupdateAirplaneMode(Lmiui/app/WifiApEnabler;)V

    goto :goto_42

    .line 60
    :cond_28
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 61
    iget-object v1, p0, Lmiui/app/WifiApEnabler$1;->this$0:Lmiui/app/WifiApEnabler;

    invoke-static {v1}, Lmiui/app/WifiApEnabler;->-$$Nest$fgetmWaitForWifiStateChange(Lmiui/app/WifiApEnabler;)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 62
    iget-object v1, p0, Lmiui/app/WifiApEnabler$1;->this$0:Lmiui/app/WifiApEnabler;

    const/4 v3, 0x4

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v1, v2}, Lmiui/app/WifiApEnabler;->-$$Nest$mhandleWifiStateChanged(Lmiui/app/WifiApEnabler;I)V

    .line 66
    :cond_42
    :goto_42
    return-void
.end method
