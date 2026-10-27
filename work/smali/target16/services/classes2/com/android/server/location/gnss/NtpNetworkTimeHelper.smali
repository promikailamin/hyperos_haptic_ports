.class public Lcom/android/server/location/gnss/NtpNetworkTimeHelper;
.super Lcom/android/server/location/gnss/NetworkTimeHelper;
.source "NtpNetworkTimeHelper.java"


# static fields
.field public static final DEBUG:Z

.field static final NTP_INTERVAL:J = 0x5265c00L

.field static final RETRY_INTERVAL:J = 0x493e0L


# instance fields
.field public final mCallback:Lcom/android/server/location/gnss/NetworkTimeHelper$InjectTimeCallback;

.field public final mConnMgr:Landroid/net/ConnectivityManager;

.field public final mDumpLog:Landroid/util/LocalLog;

.field public final mHandler:Landroid/os/Handler;

.field public mInjectNtpTimeState:I

.field public final mNtpBackOff:Lcom/android/server/location/gnss/ExponentialBackOff;

.field public final mNtpTime:Landroid/util/NtpTrustedTime;

.field public mPeriodicTimeInjection:Z

.field public final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public static synthetic $r8$lambda$IPWGbr9Nh36EZ-h3856rT6UZpso(Lcom/android/server/location/gnss/NtpNetworkTimeHelper;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/NtpNetworkTimeHelper;->lambda$blockingGetNtpTimeAndInject$0(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OLV13z6hKfx0FRM6q4N4OOsAAtg(Lcom/android/server/location/gnss/NtpNetworkTimeHelper;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/location/gnss/NtpNetworkTimeHelper;->blockingGetNtpTimeAndInject()V

    return-void
.end method

.method public static synthetic $r8$lambda$Wa7_WJDlBG8wePZdQlvHB6gM8Hw(Lcom/android/server/location/gnss/NtpNetworkTimeHelper;JJI)V
    .registers 6

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/location/gnss/NtpNetworkTimeHelper;->lambda$maybeInjectCachedNtpTime$1(JJI)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 43
    const-string v0, "NtpNetworkTimeHelper"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/location/gnss/NtpNetworkTimeHelper;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/location/gnss/NetworkTimeHelper$InjectTimeCallback;)V
    .registers 5

    .line 102
    invoke-static {p1}, Landroid/util/NtpTrustedTime;->getInstance(Landroid/content/Context;)Landroid/util/NtpTrustedTime;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/location/gnss/NtpNetworkTimeHelper;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/location/gnss/NetworkTimeHelper$InjectTimeCallback;Landroid/util/NtpTrustedTime;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/location/gnss/NetworkTimeHelper$InjectTimeCallback;Landroid/util/NtpTrustedTime;)V
    .registers 12

    .line 92
    invoke-direct {p0}, Lcom/android/server/location/gnss/NetworkTimeHelper;-><init>()V

    .line 68
    new-instance v0, Landroid/util/LocalLog;

    const/16 v1, 0xa

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/util/LocalLog;-><init>(IZ)V

    iput-object v0, p0, Lcom/android/server/location/gnss/NtpNetworkTimeHelper;->mDumpLog:Landroid/util/LocalLog;

    .line 70
    new-instance v0, Lcom/android/server/location/gnss/ExponentialBackOff;

    const-wide/32 v3, 0x493e0

    const-wide/32 v5, 0xdbba00

    invoke-direct {v0, v3, v4, v5, v6}, Lcom/android/server/location/gnss/ExponentialBackOff;-><init>(JJ)V

    iput-object v0, p0, Lcom/android/server/location/gnss/NtpNetworkTimeHelper;->mNtpBackOff:Lcom/android/server/location/gnss/ExponentialBackOff;

    .line 83
    iput v2, p0, Lcom/android/server/location/gnss/NtpNetworkTimeHelper;->mInjectNtpTimeState:I

    .line 93
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/server/location/gnss/NtpNetworkTimeHelper;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 94
    iput-object p3, p0, Lcom/android/server/location/gnss/NtpNetworkTimeHelper;->mCallback:Lcom/android/server/location/gnss/NetworkTimeHelper$InjectTimeCallback;

    .line 95
    iput-object p4, p0, Lcom/android/server/location/gnss/NtpNetworkTimeHelper;->mNtpTime:Landroid/util/NtpTrustedTime;

    .line 96
    new-instance p3, Landroid/os/Handler;

    invoke-direct {p3, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p3, p0, Lcom/android/server/location/gnss/NtpNetworkTimeHelper;->mHandler:Landroid/os/Handler;

    .line 97
    const-string/jumbo p2, "power"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    const/4 p2, 0x1

    .line 98
    const-string p3, "NtpTimeHelper"

    invoke-virtual {p1, p2, p3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/location/gnss/NtpNetworkTimeHelper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-void
.end method


# virtual methods
.method public final blockingGetNtpTimeAndInject()V
    .registers 8

    .line 177
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 182
    iget-object v2, p0, Lcom/android/server/location/gnss/NtpNetworkTimeHelper;->mNtpTime:Landroid/util/NtpTrustedTime;

    invoke-virtual {v2}, Landroid/util/NtpTrustedTime;->getCachedTimeResult()Landroid/util/NtpTrustedTime$TimeResult;

    move-result-object v2

    const-wide/32 v3, 0x5265c00

    if-eqz v2, :cond_1a

    .line 183
    invoke-virtual {v2}, Landroid/util/NtpTrustedTime$TimeResult;->getAgeMillis()J

    move-result-wide v5

    cmp-long v2, v5, v3

    if-ltz v2, :cond_18

    goto :goto_1a

    :cond_18
    const/4 v2, 0x1

    goto :goto_20

    .line 185
    :cond_1a
    :goto_1a
    iget-object v2, p0, Lcom/android/server/location/gnss/NtpNetworkTimeHelper;->mNtpTime:Landroid/util/NtpTrustedTime;

    invoke-virtual {v2}, Landroid/util/NtpTrustedTime;->forceRefresh()Z

    move-result v2

    .line 188
    :goto_20
    monitor-enter p0

    const/4 v5, 0x2

    .line 189
    :try_start_22
    iput v5, p0, Lcom/android/server/location/gnss/NtpNetworkTimeHelper;->mInjectNtpTimeState:I

    .line 193
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "blockingGetNtpTimeAndInject:, debugId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ", refreshSuccess="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 196
    invoke-virtual {p0, v5}, Lcom/android/server/location/gnss/NtpNetworkTimeHelper;->maybeInjectCachedNtpTime(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4b

    .line 198
    iget-object v5, p0, Lcom/android/server/location/gnss/NtpNetworkTimeHelper;->mNtpBackOff:Lcom/android/server/location/gnss/ExponentialBackOff;

    invoke-virtual {v5}, Lcom/android/server/location/gnss/ExponentialBackOff;->reset()V

    goto :goto_57

    :catchall_49
    move-exception v0

    goto :goto_ae

    .line 200
    :cond_4b
    const-string/jumbo v3, "maybeInjectCachedNtpTime() returned false"

    invoke-virtual {p0, v3}, Lcom/android/server/location/gnss/NtpNetworkTimeHelper;->logWarn(Ljava/lang/String;)V

    .line 201
    iget-object v3, p0, Lcom/android/server/location/gnss/NtpNetworkTimeHelper;->mNtpBackOff:Lcom/android/server/location/gnss/ExponentialBackOff;

    invoke-virtual {v3}, Lcom/android/server/location/gnss/ExponentialBackOff;->nextBackoffMillis()J

    move-result-wide v3

    .line 204
    :goto_57
    iget-boolean v5, p0, Lcom/android/server/location/gnss/NtpNetworkTimeHelper;->mPeriodicTimeInjection:Z

    if-nez v5, :cond_5d

    if-nez v2, :cond_a7

    .line 205
    :cond_5d
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "blockingGetNtpTimeAndInject: Scheduling later NTP retrieval, debugId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ", mPeriodicTimeInjection="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/server/location/gnss/NtpNetworkTimeHelper;->mPeriodicTimeInjection:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", refreshSuccess="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", delayMillis="

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 210
    invoke-virtual {p0, v2}, Lcom/android/server/location/gnss/NtpNetworkTimeHelper;->logDebug(Ljava/lang/String;)V

    .line 215
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "scheduled: debugId="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 216
    iget-object v1, p0, Lcom/android/server/location/gnss/NtpNetworkTimeHelper;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/location/gnss/NtpNetworkTimeHelper$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v0}, Lcom/android/server/location/gnss/NtpNetworkTimeHelper$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/location/gnss/NtpNetworkTimeHelper;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 218
    :cond_a7
    monitor-exit p0
    :try_end_a8
    .catchall {:try_start_22 .. :try_end_a8} :catchall_49

    .line 220
    iget-object p0, p0, Lcom/android/server/location/gnss/NtpNetworkTimeHelper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void

    .line 218
    :goto_ae
    :try_start_ae
    monitor-exit p0
    :try_end_af
    .catchall {:try_start_ae .. :try_end_af} :catchall_49

    throw v0
.end method

.method public demandUtcTimeInjection()V
    .registers 2

    .line 114
    const-string v0, "demandUtcTimeInjection"

    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/NtpNetworkTimeHelper;->retrieveAndInjectNtpTime(Ljava/lang/String;)V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 4

    .line 126
    const-string v0, "NtpNetworkTimeHelper:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 128
    new-instance v0, Landroid/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p1, v1}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 129
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 130
    monitor-enter p0

    .line 131
    :try_start_10
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mInjectNtpTimeState="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/location/gnss/NtpNetworkTimeHelper;->mInjectNtpTimeState:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 132
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mPeriodicTimeInjection="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/location/gnss/NtpNetworkTimeHelper;->mPeriodicTimeInjection:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 133
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mNtpBackOff="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/location/gnss/NtpNetworkTimeHelper;->mNtpBackOff:Lcom/android/server/location/gnss/ExponentialBackOff;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 134
    monitor-exit p0
    :try_end_53
    .catchall {:try_start_10 .. :try_end_53} :catchall_74

    .line 136
    const-string p1, "Debug log:"

    invoke-virtual {v0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 137
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 138
    iget-object p1, p0, Lcom/android/server/location/gnss/NtpNetworkTimeHelper;->mDumpLog:Landroid/util/LocalLog;

    invoke-virtual {p1, v0}, Landroid/util/LocalLog;->dump(Ljava/io/PrintWriter;)V

    .line 139
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 141
    const-string p1, "NtpTrustedTime:"

    invoke-virtual {v0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 142
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 143
    iget-object p0, p0, Lcom/android/server/location/gnss/NtpNetworkTimeHelper;->mNtpTime:Landroid/util/NtpTrustedTime;

    invoke-virtual {p0, v0}, Landroid/util/NtpTrustedTime;->dump(Ljava/io/PrintWriter;)V

    .line 144
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void

    :catchall_74
    move-exception p1

    .line 134
    :try_start_75
    monitor-exit p0
    :try_end_76
    .catchall {:try_start_75 .. :try_end_76} :catchall_74

    throw p1
.end method

.method public final isNetworkConnected()Z
    .registers 1

    .line 152
    iget-object p0, p0, Lcom/android/server/location/gnss/NtpNetworkTimeHelper;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_10

    .line 153
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic lambda$blockingGetNtpTimeAndInject$0(Ljava/lang/String;)V
    .registers 2

    .line 216
    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/NtpNetworkTimeHelper;->retrieveAndInjectNtpTime(Ljava/lang/String;)V

    return-void
.end method

.method public final synthetic lambda$maybeInjectCachedNtpTime$1(JJI)V
    .registers 6

    .line 245
    iget-object p0, p0, Lcom/android/server/location/gnss/NtpNetworkTimeHelper;->mCallback:Lcom/android/server/location/gnss/NetworkTimeHelper$InjectTimeCallback;

    invoke-interface/range {p0 .. p5}, Lcom/android/server/location/gnss/NetworkTimeHelper$InjectTimeCallback;->injectTime(JJI)V

    return-void
.end method

.method public final logDebug(Ljava/lang/String;)V
    .registers 2

    .line 256
    iget-object p0, p0, Lcom/android/server/location/gnss/NtpNetworkTimeHelper;->mDumpLog:Landroid/util/LocalLog;

    invoke-virtual {p0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 257
    sget-boolean p0, Lcom/android/server/location/gnss/NtpNetworkTimeHelper;->DEBUG:Z

    if-eqz p0, :cond_e

    .line 258
    const-string p0, "NtpNetworkTimeHelper"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    return-void
.end method

.method public final logWarn(Ljava/lang/String;)V
    .registers 2

    .line 251
    iget-object p0, p0, Lcom/android/server/location/gnss/NtpNetworkTimeHelper;->mDumpLog:Landroid/util/LocalLog;

    invoke-virtual {p0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 252
    const-string p0, "NtpNetworkTimeHelper"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final declared-synchronized maybeInjectCachedNtpTime(Ljava/lang/String;)Z
    .registers 11

    monitor-enter p0

    .line 225
    :try_start_1
    iget-object v0, p0, Lcom/android/server/location/gnss/NtpNetworkTimeHelper;->mNtpTime:Landroid/util/NtpTrustedTime;

    invoke-virtual {v0}, Landroid/util/NtpTrustedTime;->getCachedTimeResult()Landroid/util/NtpTrustedTime$TimeResult;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 226
    invoke-virtual {v0}, Landroid/util/NtpTrustedTime$TimeResult;->getAgeMillis()J

    move-result-wide v1

    const-wide/32 v3, 0x5265c00

    cmp-long v1, v1, v3

    if-ltz v1, :cond_16

    :cond_14
    move-object v3, p0

    goto :goto_61

    .line 235
    :cond_16
    invoke-virtual {v0}, Landroid/util/NtpTrustedTime$TimeResult;->getTimeMillis()J

    move-result-wide v4

    .line 236
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 237
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "maybeInjectCachedNtpTime: Injecting latest NTP time, reason="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", ntpResult="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", System time offset millis="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v1, v4, v1

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 241
    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/NtpNetworkTimeHelper;->logDebug(Ljava/lang/String;)V

    .line 243
    invoke-virtual {v0}, Landroid/util/NtpTrustedTime$TimeResult;->getElapsedRealtimeMillis()J

    move-result-wide v6

    .line 244
    invoke-virtual {v0}, Landroid/util/NtpTrustedTime$TimeResult;->getUncertaintyMillis()I

    move-result v8

    .line 245
    iget-object p1, p0, Lcom/android/server/location/gnss/NtpNetworkTimeHelper;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/location/gnss/NtpNetworkTimeHelper$$ExternalSyntheticLambda2;
    :try_end_51
    .catchall {:try_start_1 .. :try_end_51} :catchall_5e

    move-object v3, p0

    :try_start_52
    invoke-direct/range {v2 .. v8}, Lcom/android/server/location/gnss/NtpNetworkTimeHelper$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/location/gnss/NtpNetworkTimeHelper;JJI)V

    invoke-virtual {p1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_58
    .catchall {:try_start_52 .. :try_end_58} :catchall_5b

    .line 247
    monitor-exit v3

    const/4 p0, 0x1

    return p0

    :catchall_5b
    move-exception v0

    :goto_5c
    move-object p0, v0

    goto :goto_81

    :catchall_5e
    move-exception v0

    move-object v3, p0

    goto :goto_5c

    .line 227
    :goto_61
    :try_start_61
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "maybeInjectCachedNtpTime: Not injecting latest NTP time, reason="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", ntpResult="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 230
    invoke-virtual {v3, p0}, Lcom/android/server/location/gnss/NtpNetworkTimeHelper;->logDebug(Ljava/lang/String;)V
    :try_end_7e
    .catchall {:try_start_61 .. :try_end_7e} :catchall_5b

    .line 232
    monitor-exit v3

    const/4 p0, 0x0

    return p0

    :goto_81
    :try_start_81
    monitor-exit v3
    :try_end_82
    .catchall {:try_start_81 .. :try_end_82} :catchall_5b

    throw p0
.end method

.method public declared-synchronized onNetworkAvailable()V
    .registers 2

    monitor-enter p0

    .line 119
    :try_start_1
    iget v0, p0, Lcom/android/server/location/gnss/NtpNetworkTimeHelper;->mInjectNtpTimeState:I

    if-nez v0, :cond_e

    .line 120
    const-string/jumbo v0, "onNetworkAvailable"

    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/NtpNetworkTimeHelper;->retrieveAndInjectNtpTime(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_c

    goto :goto_e

    :catchall_c
    move-exception v0

    goto :goto_10

    .line 122
    :cond_e
    :goto_e
    monitor-exit p0

    return-void

    :goto_10
    :try_start_10
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_c

    throw v0
.end method

.method public final declared-synchronized retrieveAndInjectNtpTime(Ljava/lang/String;)V
    .registers 4

    monitor-enter p0

    .line 157
    :try_start_1
    iget v0, p0, Lcom/android/server/location/gnss/NtpNetworkTimeHelper;->mInjectNtpTimeState:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_27

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    .line 159
    monitor-exit p0

    return-void

    .line 161
    :cond_8
    :try_start_8
    invoke-virtual {p0}, Lcom/android/server/location/gnss/NtpNetworkTimeHelper;->isNetworkConnected()Z

    move-result v0

    if-nez v0, :cond_29

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "[Network not connected]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/NtpNetworkTimeHelper;->maybeInjectCachedNtpTime(Ljava/lang/String;)Z

    const/4 p1, 0x0

    .line 165
    iput p1, p0, Lcom/android/server/location/gnss/NtpNetworkTimeHelper;->mInjectNtpTimeState:I
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_27

    .line 166
    monitor-exit p0

    return-void

    :catchall_27
    move-exception p1

    goto :goto_42

    .line 168
    :cond_29
    :try_start_29
    iput v1, p0, Lcom/android/server/location/gnss/NtpNetworkTimeHelper;->mInjectNtpTimeState:I

    .line 171
    iget-object p1, p0, Lcom/android/server/location/gnss/NtpNetworkTimeHelper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v0, 0xea60

    invoke-virtual {p1, v0, v1}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 172
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/android/server/location/gnss/NtpNetworkTimeHelper$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/location/gnss/NtpNetworkTimeHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/location/gnss/NtpNetworkTimeHelper;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V
    :try_end_40
    .catchall {:try_start_29 .. :try_end_40} :catchall_27

    .line 173
    monitor-exit p0

    return-void

    :goto_42
    :try_start_42
    monitor-exit p0
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_27

    throw p1
.end method

.method public declared-synchronized setPeriodicTimeInjectionMode(Z)V
    .registers 2

    monitor-enter p0

    if-eqz p1, :cond_a

    const/4 p1, 0x1

    .line 108
    :try_start_4
    iput-boolean p1, p0, Lcom/android/server/location/gnss/NtpNetworkTimeHelper;->mPeriodicTimeInjection:Z

    goto :goto_a

    :catchall_7
    move-exception p1

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_7

    throw p1

    .line 110
    :cond_a
    :goto_a
    monitor-exit p0

    return-void
.end method
