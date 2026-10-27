.class public Lcom/android/server/location/injector/SystemEmergencyHelper$1;
.super Landroid/content/BroadcastReceiver;
.source "SystemEmergencyHelper.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/location/injector/SystemEmergencyHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/location/injector/SystemEmergencyHelper;)V
    .registers 2

    .line 67
    iput-object p1, p0, Lcom/android/server/location/injector/SystemEmergencyHelper$1;->this$0:Lcom/android/server/location/injector/SystemEmergencyHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 70
    const-string p1, "android.intent.action.NEW_OUTGOING_CALL"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    return-void

    .line 75
    :cond_d
    :try_start_d
    iget-object p1, p0, Lcom/android/server/location/injector/SystemEmergencyHelper$1;->this$0:Lcom/android/server/location/injector/SystemEmergencyHelper;

    iget-object p1, p1, Lcom/android/server/location/injector/SystemEmergencyHelper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const-string v0, "android.intent.extra.PHONE_NUMBER"

    .line 76
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 75
    invoke-virtual {p1, p2}, Landroid/telephony/TelephonyManager;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result p1

    .line 77
    iget-object p2, p0, Lcom/android/server/location/injector/SystemEmergencyHelper$1;->this$0:Lcom/android/server/location/injector/SystemEmergencyHelper;

    monitor-enter p2
    :try_end_1e
    .catch Ljava/lang/IllegalStateException; {:try_start_d .. :try_end_1e} :catch_27
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_d .. :try_end_1e} :catch_27

    .line 78
    :try_start_1e
    iget-object v0, p0, Lcom/android/server/location/injector/SystemEmergencyHelper$1;->this$0:Lcom/android/server/location/injector/SystemEmergencyHelper;

    iput-boolean p1, v0, Lcom/android/server/location/injector/SystemEmergencyHelper;->mIsInEmergencyCall:Z

    .line 79
    monitor-exit p2

    goto :goto_2f

    :catchall_24
    move-exception p1

    monitor-exit p2
    :try_end_26
    .catchall {:try_start_1e .. :try_end_26} :catchall_24

    :try_start_26
    throw p1
    :try_end_27
    .catch Ljava/lang/IllegalStateException; {:try_start_26 .. :try_end_27} :catch_27
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_26 .. :try_end_27} :catch_27

    :catch_27
    move-exception p1

    .line 81
    const-string p2, "LocationManagerService"

    const-string v0, "Failed to call TelephonyManager.isEmergencyNumber()."

    invoke-static {p2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 84
    :goto_2f
    iget-object p0, p0, Lcom/android/server/location/injector/SystemEmergencyHelper$1;->this$0:Lcom/android/server/location/injector/SystemEmergencyHelper;

    invoke-virtual {p0}, Lcom/android/server/location/injector/EmergencyHelper;->dispatchEmergencyStateChanged()V

    return-void
.end method
