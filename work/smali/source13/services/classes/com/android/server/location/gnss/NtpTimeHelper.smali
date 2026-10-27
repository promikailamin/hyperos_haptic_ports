.class Lcom/android/server/location/gnss/NtpTimeHelper;
.super Ljava/lang/Object;
.source "NtpTimeHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/gnss/NtpTimeHelper$InjectNtpTimeCallback;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final MAX_RETRY_INTERVAL:J = 0xdbba00L

.field static final NTP_INTERVAL:J = 0x5265c00L

.field static final RETRY_INTERVAL:J = 0x493e0L

.field private static final STATE_IDLE:I = 0x2

.field private static final STATE_PENDING_NETWORK:I = 0x0

.field private static final STATE_RETRIEVING_AND_INJECTING:I = 0x1

.field private static final TAG:Ljava/lang/String; = "NtpTimeHelper"

.field private static final WAKELOCK_KEY:Ljava/lang/String; = "NtpTimeHelper"

.field private static final WAKELOCK_TIMEOUT_MILLIS:J = 0xea60L


# instance fields
.field private final mCallback:Lcom/android/server/location/gnss/NtpTimeHelper$InjectNtpTimeCallback;

.field private final mConnMgr:Landroid/net/ConnectivityManager;

.field private final mHandler:Landroid/os/Handler;

.field private mInjectNtpTimeState:I

.field private final mNtpBackOff:Lcom/android/server/location/gnss/ExponentialBackOff;

.field private final mNtpTime:Landroid/util/NtpTrustedTime;

.field private mOnDemandTimeInjection:Z

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public static synthetic $r8$lambda$6kgcZo6aG137CmH5Dxnh01iZ8aI(Lcom/android/server/location/gnss/NtpTimeHelper;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/location/gnss/NtpTimeHelper;->blockingGetNtpTimeAndInject()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 43
    const-string v0, "NtpTimeHelper"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/location/gnss/NtpTimeHelper;->DEBUG:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/location/gnss/NtpTimeHelper$InjectNtpTimeCallback;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "callback"    # Lcom/android/server/location/gnss/NtpTimeHelper$InjectNtpTimeCallback;

    .line 103
    invoke-static {p1}, Landroid/util/NtpTrustedTime;->getInstance(Landroid/content/Context;)Landroid/util/NtpTrustedTime;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/location/gnss/NtpTimeHelper;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/location/gnss/NtpTimeHelper$InjectNtpTimeCallback;Landroid/util/NtpTrustedTime;)V

    .line 104
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/location/gnss/NtpTimeHelper$InjectNtpTimeCallback;Landroid/util/NtpTrustedTime;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "callback"    # Lcom/android/server/location/gnss/NtpTimeHelper$InjectNtpTimeCallback;
    .param p4, "ntpTime"    # Landroid/util/NtpTrustedTime;

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Lcom/android/server/location/gnss/ExponentialBackOff;

    const-wide/32 v1, 0x493e0

    const-wide/32 v3, 0xdbba00

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/location/gnss/ExponentialBackOff;-><init>(JJ)V

    iput-object v0, p0, Lcom/android/server/location/gnss/NtpTimeHelper;->mNtpBackOff:Lcom/android/server/location/gnss/ExponentialBackOff;

    .line 80
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/location/gnss/NtpTimeHelper;->mInjectNtpTimeState:I

    .line 94
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/server/location/gnss/NtpTimeHelper;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 95
    iput-object p3, p0, Lcom/android/server/location/gnss/NtpTimeHelper;->mCallback:Lcom/android/server/location/gnss/NtpTimeHelper$InjectNtpTimeCallback;

    .line 96
    iput-object p4, p0, Lcom/android/server/location/gnss/NtpTimeHelper;->mNtpTime:Landroid/util/NtpTrustedTime;

    .line 97
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/location/gnss/NtpTimeHelper;->mHandler:Landroid/os/Handler;

    .line 98
    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 99
    .local v0, "powerManager":Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-string v2, "NtpTimeHelper"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/location/gnss/NtpTimeHelper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 100
    return-void
.end method

.method private blockingGetNtpTimeAndInject()V
    .registers 11

    .line 149
    const/4 v0, 0x1

    .line 150
    .local v0, "refreshSuccess":Z
    iget-object v1, p0, Lcom/android/server/location/gnss/NtpTimeHelper;->mNtpTime:Landroid/util/NtpTrustedTime;

    invoke-virtual {v1}, Landroid/util/NtpTrustedTime;->getCachedTimeResult()Landroid/util/NtpTrustedTime$TimeResult;

    move-result-object v1

    .line 151
    .local v1, "ntpResult":Landroid/util/NtpTrustedTime$TimeResult;
    if-eqz v1, :cond_14

    invoke-virtual {v1}, Landroid/util/NtpTrustedTime$TimeResult;->getAgeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x5265c00

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1a

    .line 153
    :cond_14
    iget-object v2, p0, Lcom/android/server/location/gnss/NtpTimeHelper;->mNtpTime:Landroid/util/NtpTrustedTime;

    invoke-virtual {v2}, Landroid/util/NtpTrustedTime;->forceRefresh()Z

    move-result v0

    .line 156
    :cond_1a
    monitor-enter p0

    .line 157
    const/4 v2, 0x2

    :try_start_1c
    iput v2, p0, Lcom/android/server/location/gnss/NtpTimeHelper;->mInjectNtpTimeState:I

    .line 161
    invoke-direct {p0}, Lcom/android/server/location/gnss/NtpTimeHelper;->injectCachedNtpTime()Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 162
    const-wide/32 v3, 0x5265c00

    .line 163
    .local v3, "delay":J
    iget-object v5, p0, Lcom/android/server/location/gnss/NtpTimeHelper;->mNtpBackOff:Lcom/android/server/location/gnss/ExponentialBackOff;

    invoke-virtual {v5}, Lcom/android/server/location/gnss/ExponentialBackOff;->reset()V

    goto :goto_3b

    .line 165
    .end local v3    # "delay":J
    :cond_2d
    const-string v3, "NtpTimeHelper"

    const-string/jumbo v4, "requestTime failed"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-object v3, p0, Lcom/android/server/location/gnss/NtpTimeHelper;->mNtpBackOff:Lcom/android/server/location/gnss/ExponentialBackOff;

    invoke-virtual {v3}, Lcom/android/server/location/gnss/ExponentialBackOff;->nextBackoffMillis()J

    move-result-wide v3

    .line 169
    .restart local v3    # "delay":J
    :goto_3b
    sget-boolean v5, Lcom/android/server/location/gnss/NtpTimeHelper;->DEBUG:Z

    if-eqz v5, :cond_64

    .line 170
    const-string v5, "NtpTimeHelper"

    const-string/jumbo v6, "onDemandTimeInjection=%s, refreshSuccess=%s, delay=%s"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-boolean v9, p0, Lcom/android/server/location/gnss/NtpTimeHelper;->mOnDemandTimeInjection:Z

    .line 172
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    .line 173
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v7, v8

    .line 174
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v2

    .line 170
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :cond_64
    iget-boolean v2, p0, Lcom/android/server/location/gnss/NtpTimeHelper;->mOnDemandTimeInjection:Z

    if-nez v2, :cond_6a

    if-nez v0, :cond_74

    .line 183
    :cond_6a
    iget-object v2, p0, Lcom/android/server/location/gnss/NtpTimeHelper;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda25;

    invoke-direct {v5, p0}, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda25;-><init>(Lcom/android/server/location/gnss/NtpTimeHelper;)V

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 185
    :cond_74
    monitor-exit p0
    :try_end_75
    .catchall {:try_start_1c .. :try_end_75} :catchall_7b

    .line 187
    iget-object v2, p0, Lcom/android/server/location/gnss/NtpTimeHelper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 188
    return-void

    .line 185
    .end local v3    # "delay":J
    :catchall_7b
    move-exception v2

    :try_start_7c
    monitor-exit p0
    :try_end_7d
    .catchall {:try_start_7c .. :try_end_7d} :catchall_7b

    throw v2
.end method

.method private declared-synchronized injectCachedNtpTime()Z
    .registers 14

    monitor-enter p0

    .line 192
    :try_start_1
    iget-object v0, p0, Lcom/android/server/location/gnss/NtpTimeHelper;->mNtpTime:Landroid/util/NtpTrustedTime;

    invoke-virtual {v0}, Landroid/util/NtpTrustedTime;->getCachedTimeResult()Landroid/util/NtpTrustedTime$TimeResult;

    move-result-object v0

    .line 193
    .local v0, "ntpResult":Landroid/util/NtpTrustedTime$TimeResult;
    if-eqz v0, :cond_76

    invoke-virtual {v0}, Landroid/util/NtpTrustedTime$TimeResult;->getAgeMillis()J

    move-result-wide v1

    const-wide/32 v3, 0x5265c00

    cmp-long v1, v1, v3

    if-ltz v1, :cond_15

    goto :goto_76

    .line 197
    :cond_15
    invoke-virtual {v0}, Landroid/util/NtpTrustedTime$TimeResult;->getTimeMillis()J

    move-result-wide v1

    .line 198
    .local v1, "time":J
    invoke-virtual {v0}, Landroid/util/NtpTrustedTime$TimeResult;->getElapsedRealtimeMillis()J

    move-result-wide v7

    .line 199
    .local v7, "timeReference":J
    invoke-virtual {v0}, Landroid/util/NtpTrustedTime$TimeResult;->getCertaintyMillis()J

    move-result-wide v9

    .line 201
    .local v9, "certainty":J
    sget-boolean v3, Lcom/android/server/location/gnss/NtpTimeHelper;->DEBUG:Z

    if-eqz v3, :cond_66

    .line 202
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 203
    .local v3, "now":J
    const-string v5, "NtpTimeHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "NTP server returned: "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v11, " ("

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    new-instance v11, Ljava/util/Date;

    invoke-direct {v11, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v11, ") ntpResult: "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v11, " system time offset: "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-long v11, v1, v3

    invoke-virtual {v6, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    .end local v3    # "now":J
    .end local p0    # "this":Lcom/android/server/location/gnss/NtpTimeHelper;
    :cond_66
    iget-object v11, p0, Lcom/android/server/location/gnss/NtpTimeHelper;->mHandler:Landroid/os/Handler;

    new-instance v12, Lcom/android/server/location/gnss/NtpTimeHelper$$ExternalSyntheticLambda1;

    move-object v3, v12

    move-object v4, p0

    move-wide v5, v1

    invoke-direct/range {v3 .. v10}, Lcom/android/server/location/gnss/NtpTimeHelper$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/location/gnss/NtpTimeHelper;JJJ)V

    invoke-virtual {v11, v12}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_73
    .catchall {:try_start_1 .. :try_end_73} :catchall_79

    .line 209
    const/4 v3, 0x1

    monitor-exit p0

    return v3

    .line 194
    .end local v1    # "time":J
    .end local v7    # "timeReference":J
    .end local v9    # "certainty":J
    :cond_76
    :goto_76
    const/4 v1, 0x0

    monitor-exit p0

    return v1

    .line 191
    .end local v0    # "ntpResult":Landroid/util/NtpTrustedTime$TimeResult;
    :catchall_79
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private isNetworkConnected()Z
    .registers 3

    .line 121
    iget-object v0, p0, Lcom/android/server/location/gnss/NtpTimeHelper;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 122
    .local v0, "activeNetworkInfo":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_10

    const/4 v1, 0x1

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    return v1
.end method


# virtual methods
.method declared-synchronized enablePeriodicTimeInjection()V
    .registers 2

    monitor-enter p0

    .line 107
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/android/server/location/gnss/NtpTimeHelper;->mOnDemandTimeInjection:Z
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    .line 108
    monitor-exit p0

    return-void

    .line 106
    .end local p0    # "this":Lcom/android/server/location/gnss/NtpTimeHelper;
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method synthetic lambda$injectCachedNtpTime$0$com-android-server-location-gnss-NtpTimeHelper(JJJ)V
    .registers 13
    .param p1, "time"    # J
    .param p3, "timeReference"    # J
    .param p5, "certainty"    # J

    .line 208
    iget-object v0, p0, Lcom/android/server/location/gnss/NtpTimeHelper;->mCallback:Lcom/android/server/location/gnss/NtpTimeHelper$InjectNtpTimeCallback;

    long-to-int v5, p5

    move-wide v1, p1

    move-wide v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/android/server/location/gnss/NtpTimeHelper$InjectNtpTimeCallback;->injectTime(JJI)V

    return-void
.end method

.method declared-synchronized onNetworkAvailable()V
    .registers 2

    monitor-enter p0

    .line 111
    :try_start_1
    iget v0, p0, Lcom/android/server/location/gnss/NtpTimeHelper;->mInjectNtpTimeState:I

    if-nez v0, :cond_8

    .line 112
    invoke-virtual {p0}, Lcom/android/server/location/gnss/NtpTimeHelper;->retrieveAndInjectNtpTime()V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    .line 114
    .end local p0    # "this":Lcom/android/server/location/gnss/NtpTimeHelper;
    :cond_8
    monitor-exit p0

    return-void

    .line 110
    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized retrieveAndInjectNtpTime()V
    .registers 4

    monitor-enter p0

    .line 126
    :try_start_1
    iget v0, p0, Lcom/android/server/location/gnss/NtpTimeHelper;->mInjectNtpTimeState:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_2f

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    .line 128
    monitor-exit p0

    return-void

    .line 130
    :cond_8
    :try_start_8
    invoke-direct {p0}, Lcom/android/server/location/gnss/NtpTimeHelper;->isNetworkConnected()Z

    move-result v0

    if-nez v0, :cond_16

    .line 132
    invoke-direct {p0}, Lcom/android/server/location/gnss/NtpTimeHelper;->injectCachedNtpTime()Z

    .line 134
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/location/gnss/NtpTimeHelper;->mInjectNtpTimeState:I
    :try_end_14
    .catchall {:try_start_8 .. :try_end_14} :catchall_2f

    .line 135
    monitor-exit p0

    return-void

    .line 137
    .end local p0    # "this":Lcom/android/server/location/gnss/NtpTimeHelper;
    :cond_16
    :try_start_16
    iput v1, p0, Lcom/android/server/location/gnss/NtpTimeHelper;->mInjectNtpTimeState:I

    .line 140
    iget-object v0, p0, Lcom/android/server/location/gnss/NtpTimeHelper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v1, 0xea60

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 141
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/location/gnss/NtpTimeHelper$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/location/gnss/NtpTimeHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/location/gnss/NtpTimeHelper;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_2d
    .catchall {:try_start_16 .. :try_end_2d} :catchall_2f

    .line 142
    monitor-exit p0

    return-void

    .line 125
    :catchall_2f
    move-exception v0

    monitor-exit p0

    throw v0
.end method
