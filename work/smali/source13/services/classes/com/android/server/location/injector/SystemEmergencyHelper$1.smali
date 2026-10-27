.class Lcom/android/server/location/injector/SystemEmergencyHelper$1;
.super Landroid/content/BroadcastReceiver;
.source "SystemEmergencyHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/injector/SystemEmergencyHelper;->onSystemReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/injector/SystemEmergencyHelper;


# direct methods
.method constructor <init>(Lcom/android/server/location/injector/SystemEmergencyHelper;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/location/injector/SystemEmergencyHelper;

    .line 64
    iput-object p1, p0, Lcom/android/server/location/injector/SystemEmergencyHelper$1;->this$0:Lcom/android/server/location/injector/SystemEmergencyHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 67
    const-string v0, "android.intent.action.NEW_OUTGOING_CALL"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 68
    return-void

    .line 71
    :cond_d
    iget-object v0, p0, Lcom/android/server/location/injector/SystemEmergencyHelper$1;->this$0:Lcom/android/server/location/injector/SystemEmergencyHelper;

    monitor-enter v0

    .line 73
    :try_start_10
    iget-object v1, p0, Lcom/android/server/location/injector/SystemEmergencyHelper$1;->this$0:Lcom/android/server/location/injector/SystemEmergencyHelper;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/server/location/injector/SystemEmergencyHelper;->mIsInEmergencyCall:Z

    .line 74
    iget-object v1, p0, Lcom/android/server/location/injector/SystemEmergencyHelper$1;->this$0:Lcom/android/server/location/injector/SystemEmergencyHelper;

    iget-object v2, v1, Lcom/android/server/location/injector/SystemEmergencyHelper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const-string v3, "android.intent.extra.PHONE_NUMBER"

    .line 75
    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 74
    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/server/location/injector/SystemEmergencyHelper;->mIsInEmergencyCall:Z
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_25} :catch_28
    .catchall {:try_start_10 .. :try_end_25} :catchall_26

    .line 79
    goto :goto_34

    .line 80
    :catchall_26
    move-exception v1

    goto :goto_36

    .line 76
    :catch_28
    move-exception v1

    .line 77
    .local v1, "e":Ljava/lang/Exception;
    :try_start_29
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 78
    const-string/jumbo v2, "location.injector.SystemEmergencyHelper"

    const-string v3, "error while getting to know if isEmergencyNumber "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_34
    monitor-exit v0

    .line 81
    return-void

    .line 80
    :goto_36
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_29 .. :try_end_37} :catchall_26

    throw v1
.end method
