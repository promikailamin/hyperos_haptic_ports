.class public Lcom/android/server/location/injector/SystemEmergencyHelper;
.super Lcom/android/server/location/injector/EmergencyHelper;
.source "SystemEmergencyHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/injector/SystemEmergencyHelper$EmergencyCallTelephonyCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "location.injector.SystemEmergencyHelper"


# instance fields
.field private final mContext:Landroid/content/Context;

.field mEmergencyCallEndRealtimeMs:J

.field private final mEmergencyCallTelephonyCallback:Lcom/android/server/location/injector/SystemEmergencyHelper$EmergencyCallTelephonyCallback;

.field mIsInEmergencyCall:Z

.field mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 47
    invoke-direct {p0}, Lcom/android/server/location/injector/EmergencyHelper;-><init>()V

    .line 38
    new-instance v0, Lcom/android/server/location/injector/SystemEmergencyHelper$EmergencyCallTelephonyCallback;

    invoke-direct {v0, p0}, Lcom/android/server/location/injector/SystemEmergencyHelper$EmergencyCallTelephonyCallback;-><init>(Lcom/android/server/location/injector/SystemEmergencyHelper;)V

    iput-object v0, p0, Lcom/android/server/location/injector/SystemEmergencyHelper;->mEmergencyCallTelephonyCallback:Lcom/android/server/location/injector/SystemEmergencyHelper$EmergencyCallTelephonyCallback;

    .line 45
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/android/server/location/injector/SystemEmergencyHelper;->mEmergencyCallEndRealtimeMs:J

    .line 48
    iput-object p1, p0, Lcom/android/server/location/injector/SystemEmergencyHelper;->mContext:Landroid/content/Context;

    .line 49
    return-void
.end method


# virtual methods
.method public declared-synchronized isInEmergency(J)Z
    .registers 10
    .param p1, "extensionTimeMs"    # J

    monitor-enter p0

    .line 87
    :try_start_1
    iget-object v0, p0, Lcom/android/server/location/injector/SystemEmergencyHelper;->mTelephonyManager:Landroid/telephony/TelephonyManager;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_38

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 88
    monitor-exit p0

    return v1

    .line 91
    :cond_8
    :try_start_8
    iget-wide v2, p0, Lcom/android/server/location/injector/SystemEmergencyHelper;->mEmergencyCallEndRealtimeMs:J

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v0, v2, v4

    const/4 v2, 0x1

    if-eqz v0, :cond_1e

    .line 92
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/server/location/injector/SystemEmergencyHelper;->mEmergencyCallEndRealtimeMs:J

    sub-long/2addr v3, v5

    cmp-long v0, v3, p1

    if-gez v0, :cond_1e

    move v0, v2

    goto :goto_1f

    .end local p0    # "this":Lcom/android/server/location/injector/SystemEmergencyHelper;
    :cond_1e
    move v0, v1

    .line 94
    .local v0, "isInExtensionTime":Z
    :goto_1f
    iget-boolean v3, p0, Lcom/android/server/location/injector/SystemEmergencyHelper;->mIsInEmergencyCall:Z

    if-nez v3, :cond_35

    if-nez v0, :cond_35

    iget-object v3, p0, Lcom/android/server/location/injector/SystemEmergencyHelper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 96
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getEmergencyCallbackMode()Z

    move-result v3

    if-nez v3, :cond_35

    iget-object v3, p0, Lcom/android/server/location/injector/SystemEmergencyHelper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 97
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->isInEmergencySmsMode()Z

    move-result v3
    :try_end_33
    .catchall {:try_start_8 .. :try_end_33} :catchall_38

    if-eqz v3, :cond_36

    :cond_35
    move v1, v2

    .line 94
    :cond_36
    monitor-exit p0

    return v1

    .line 86
    .end local v0    # "isInExtensionTime":Z
    .end local p1    # "extensionTimeMs":J
    :catchall_38
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onSystemReady()V
    .registers 5

    monitor-enter p0

    .line 53
    :try_start_1
    iget-object v0, p0, Lcom/android/server/location/injector/SystemEmergencyHelper;->mTelephonyManager:Landroid/telephony/TelephonyManager;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_35

    if-eqz v0, :cond_7

    .line 54
    monitor-exit p0

    return-void

    .line 57
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/android/server/location/injector/SystemEmergencyHelper;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/TelephonyManager;

    .line 58
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 57
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/server/location/injector/SystemEmergencyHelper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 62
    invoke-static {}, Lcom/android/server/FgThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/location/injector/SystemEmergencyHelper;->mEmergencyCallTelephonyCallback:Lcom/android/server/location/injector/SystemEmergencyHelper$EmergencyCallTelephonyCallback;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->registerTelephonyCallback(Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyCallback;)V

    .line 64
    iget-object v0, p0, Lcom/android/server/location/injector/SystemEmergencyHelper;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/location/injector/SystemEmergencyHelper$1;

    invoke-direct {v1, p0}, Lcom/android/server/location/injector/SystemEmergencyHelper$1;-><init>(Lcom/android/server/location/injector/SystemEmergencyHelper;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.NEW_OUTGOING_CALL"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_33
    .catchall {:try_start_7 .. :try_end_33} :catchall_35

    .line 83
    monitor-exit p0

    return-void

    .line 52
    .end local p0    # "this":Lcom/android/server/location/injector/SystemEmergencyHelper;
    :catchall_35
    move-exception v0

    monitor-exit p0

    throw v0
.end method
