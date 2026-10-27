.class public Lcom/android/server/location/injector/SystemEmergencyHelper;
.super Lcom/android/server/location/injector/EmergencyHelper;
.source "SystemEmergencyHelper.java"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mEmergencyCallEndRealtimeMs:J

.field public final mEmergencyCallTelephonyCallback:Lcom/android/server/location/injector/SystemEmergencyHelper$EmergencyCallTelephonyCallback;

.field public mIsInEmergencyCall:Z

.field public mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 50
    invoke-direct {p0}, Lcom/android/server/location/injector/EmergencyHelper;-><init>()V

    .line 42
    new-instance v0, Lcom/android/server/location/injector/SystemEmergencyHelper$EmergencyCallTelephonyCallback;

    invoke-direct {v0, p0}, Lcom/android/server/location/injector/SystemEmergencyHelper$EmergencyCallTelephonyCallback;-><init>(Lcom/android/server/location/injector/SystemEmergencyHelper;)V

    iput-object v0, p0, Lcom/android/server/location/injector/SystemEmergencyHelper;->mEmergencyCallTelephonyCallback:Lcom/android/server/location/injector/SystemEmergencyHelper$EmergencyCallTelephonyCallback;

    const-wide/high16 v0, -0x8000000000000000L

    .line 48
    iput-wide v0, p0, Lcom/android/server/location/injector/SystemEmergencyHelper;->mEmergencyCallEndRealtimeMs:J

    .line 51
    iput-object p1, p0, Lcom/android/server/location/injector/SystemEmergencyHelper;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public isInEmergency(J)Z
    .registers 12

    .line 103
    iget-object v0, p0, Lcom/android/server/location/injector/SystemEmergencyHelper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 108
    :cond_6
    iget-object v0, p0, Lcom/android/server/location/injector/SystemEmergencyHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 109
    const-string v2, "android.hardware.telephony.calling"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 110
    iget-object v2, p0, Lcom/android/server/location/injector/SystemEmergencyHelper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getEmergencyCallbackMode()Z

    move-result v2

    goto :goto_1c

    :cond_1b
    move v2, v1

    .line 112
    :goto_1c
    const-string v3, "android.hardware.telephony.messaging"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 113
    iget-object v0, p0, Lcom/android/server/location/injector/SystemEmergencyHelper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isInEmergencySmsMode()Z

    move-result v0

    goto :goto_2c

    :cond_2b
    move v0, v1

    .line 116
    :goto_2c
    monitor-enter p0

    .line 117
    :try_start_2d
    iget-wide v3, p0, Lcom/android/server/location/injector/SystemEmergencyHelper;->mEmergencyCallEndRealtimeMs:J

    const-wide/high16 v5, -0x8000000000000000L

    cmp-long v3, v3, v5

    const/4 v4, 0x1

    if-eqz v3, :cond_45

    .line 118
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/android/server/location/injector/SystemEmergencyHelper;->mEmergencyCallEndRealtimeMs:J

    sub-long/2addr v5, v7

    cmp-long p1, v5, p1

    if-gez p1, :cond_45

    move p1, v4

    goto :goto_46

    :catchall_43
    move-exception p1

    goto :goto_53

    :cond_45
    move p1, v1

    .line 120
    :goto_46
    iget-boolean p2, p0, Lcom/android/server/location/injector/SystemEmergencyHelper;->mIsInEmergencyCall:Z

    if-nez p2, :cond_50

    if-nez p1, :cond_50

    if-nez v2, :cond_50

    if-eqz v0, :cond_51

    :cond_50
    move v1, v4

    :cond_51
    monitor-exit p0

    return v1

    .line 124
    :goto_53
    monitor-exit p0
    :try_end_54
    .catchall {:try_start_2d .. :try_end_54} :catchall_43

    throw p1
.end method

.method public declared-synchronized onSystemReady()V
    .registers 5

    monitor-enter p0

    .line 56
    :try_start_1
    iget-object v0, p0, Lcom/android/server/location/injector/SystemEmergencyHelper;->mTelephonyManager:Landroid/telephony/TelephonyManager;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_46

    if-eqz v0, :cond_7

    .line 57
    monitor-exit p0

    return-void

    .line 60
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/android/server/location/injector/SystemEmergencyHelper;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/TelephonyManager;

    .line 61
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 60
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/server/location/injector/SystemEmergencyHelper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 65
    invoke-static {}, Lcom/android/server/FgThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/location/injector/SystemEmergencyHelper;->mEmergencyCallTelephonyCallback:Lcom/android/server/location/injector/SystemEmergencyHelper$EmergencyCallTelephonyCallback;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->registerTelephonyCallback(Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyCallback;)V

    .line 67
    iget-object v0, p0, Lcom/android/server/location/injector/SystemEmergencyHelper;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/location/injector/SystemEmergencyHelper$1;

    invoke-direct {v1, p0}, Lcom/android/server/location/injector/SystemEmergencyHelper$1;-><init>(Lcom/android/server/location/injector/SystemEmergencyHelper;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.NEW_OUTGOING_CALL"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 88
    iget-object v0, p0, Lcom/android/server/location/injector/SystemEmergencyHelper;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/location/injector/SystemEmergencyHelper$2;

    invoke-direct {v1, p0}, Lcom/android/server/location/injector/SystemEmergencyHelper$2;-><init>(Lcom/android/server/location/injector/SystemEmergencyHelper;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_44
    .catchall {:try_start_7 .. :try_end_44} :catchall_46

    .line 99
    monitor-exit p0

    return-void

    :catchall_46
    move-exception v0

    :try_start_47
    monitor-exit p0
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_46

    throw v0
.end method
