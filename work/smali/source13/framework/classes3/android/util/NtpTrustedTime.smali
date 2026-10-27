.class public Landroid/util/NtpTrustedTime;
.super Ljava/lang/Object;
.source "NtpTrustedTime.java"

# interfaces
.implements Landroid/util/TrustedTime;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/NtpTrustedTime$NtpConnectionInfo;,
        Landroid/util/NtpTrustedTime$TimeResult;
    }
.end annotation


# static fields
.field private static final greylist-max-o LOGD:Z = false

.field private static final greylist-max-o TAG:Ljava/lang/String; = "NtpTrustedTime"

.field private static greylist-max-o sSingleton:Landroid/util/NtpTrustedTime;


# instance fields
.field private final blacklist mConnectivityManagerSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Landroid/net/ConnectivityManager;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mContext:Landroid/content/Context;

.field private blacklist mHostnameForTests:Ljava/lang/String;

.field private blacklist mPortForTests:Ljava/lang/Integer;

.field private volatile blacklist mTimeResult:Landroid/util/NtpTrustedTime$TimeResult;

.field private blacklist mTimeoutForTests:Ljava/time/Duration;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmContext(Landroid/util/NtpTrustedTime;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Landroid/util/NtpTrustedTime;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private constructor blacklist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    new-instance v0, Landroid/util/NtpTrustedTime$1;

    invoke-direct {v0, p0}, Landroid/util/NtpTrustedTime$1;-><init>(Landroid/util/NtpTrustedTime;)V

    iput-object v0, p0, Landroid/util/NtpTrustedTime;->mConnectivityManagerSupplier:Ljava/util/function/Supplier;

    .line 154
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Landroid/util/NtpTrustedTime;->mContext:Landroid/content/Context;

    .line 155
    return-void
.end method

.method public static declared-synchronized greylist getInstance(Landroid/content/Context;)Landroid/util/NtpTrustedTime;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;

    const-class v0, Landroid/util/NtpTrustedTime;

    monitor-enter v0

    .line 159
    :try_start_3
    sget-object v1, Landroid/util/NtpTrustedTime;->sSingleton:Landroid/util/NtpTrustedTime;

    if-nez v1, :cond_1a

    .line 160
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 161
    .local v1, "res":Landroid/content/res/Resources;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 163
    .local v2, "resolver":Landroid/content/ContentResolver;
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 164
    .local v3, "appContext":Landroid/content/Context;
    new-instance v4, Landroid/util/NtpTrustedTime;

    invoke-direct {v4, v3}, Landroid/util/NtpTrustedTime;-><init>(Landroid/content/Context;)V

    sput-object v4, Landroid/util/NtpTrustedTime;->sSingleton:Landroid/util/NtpTrustedTime;

    .line 166
    .end local v1    # "res":Landroid/content/res/Resources;
    .end local v2    # "resolver":Landroid/content/ContentResolver;
    .end local v3    # "appContext":Landroid/content/Context;
    :cond_1a
    sget-object v1, Landroid/util/NtpTrustedTime;->sSingleton:Landroid/util/NtpTrustedTime;
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1e

    monitor-exit v0

    return-object v1

    .line 158
    .end local p0    # "context":Landroid/content/Context;
    :catchall_1e
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private blacklist getNtpConnectionInfo()Landroid/util/NtpTrustedTime$NtpConnectionInfo;
    .registers 8

    .line 357
    iget-object v0, p0, Landroid/util/NtpTrustedTime;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 359
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-object v1, p0, Landroid/util/NtpTrustedTime;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 362
    .local v1, "res":Landroid/content/res/Resources;
    iget-object v2, p0, Landroid/util/NtpTrustedTime;->mHostnameForTests:Ljava/lang/String;

    if-eqz v2, :cond_13

    .line 363
    iget-object v2, p0, Landroid/util/NtpTrustedTime;->mHostnameForTests:Ljava/lang/String;

    .local v2, "hostname":Ljava/lang/String;
    goto :goto_27

    .line 365
    .end local v2    # "hostname":Ljava/lang/String;
    :cond_13
    nop

    .line 366
    const-string/jumbo v2, "ntp_server"

    invoke-static {v0, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 367
    .local v2, "serverGlobalSetting":Ljava/lang/String;
    if-eqz v2, :cond_1f

    .line 368
    move-object v3, v2

    .local v3, "hostname":Ljava/lang/String;
    goto :goto_27

    .line 370
    .end local v3    # "hostname":Ljava/lang/String;
    :cond_1f
    const v3, 0x10402a1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 375
    .local v2, "hostname":Ljava/lang/String;
    :goto_27
    iget-object v3, p0, Landroid/util/NtpTrustedTime;->mPortForTests:Ljava/lang/Integer;

    if-eqz v3, :cond_2e

    .line 376
    iget-object v3, p0, Landroid/util/NtpTrustedTime;->mPortForTests:Ljava/lang/Integer;

    .local v3, "port":Ljava/lang/Integer;
    goto :goto_34

    .line 378
    .end local v3    # "port":Ljava/lang/Integer;
    :cond_2e
    const/16 v3, 0x7b

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 382
    .restart local v3    # "port":Ljava/lang/Integer;
    :goto_34
    iget-object v4, p0, Landroid/util/NtpTrustedTime;->mTimeoutForTests:Ljava/time/Duration;

    if-eqz v4, :cond_3e

    .line 383
    invoke-virtual {v4}, Ljava/time/Duration;->toMillis()J

    move-result-wide v4

    long-to-int v4, v4

    .local v4, "timeoutMillis":I
    goto :goto_4d

    .line 385
    .end local v4    # "timeoutMillis":I
    :cond_3e
    const v4, 0x10e00c5

    .line 386
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 387
    .local v4, "defaultTimeoutMillis":I
    const-string/jumbo v5, "ntp_timeout"

    invoke-static {v0, v5, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    move v4, v5

    .line 390
    .local v4, "timeoutMillis":I
    :goto_4d
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_55

    const/4 v5, 0x0

    goto :goto_5e

    .line 391
    :cond_55
    new-instance v5, Landroid/util/NtpTrustedTime$NtpConnectionInfo;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {v5, v2, v6, v4}, Landroid/util/NtpTrustedTime$NtpConnectionInfo;-><init>(Ljava/lang/String;II)V

    .line 390
    :goto_5e
    return-object v5
.end method


# virtual methods
.method public blacklist clearCachedTimeResult()V
    .registers 2

    .line 314
    monitor-enter p0

    .line 315
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Landroid/util/NtpTrustedTime;->mTimeResult:Landroid/util/NtpTrustedTime$TimeResult;

    .line 316
    monitor-exit p0

    .line 317
    return-void

    .line 316
    :catchall_6
    move-exception v0

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_2 .. :try_end_8} :catchall_6

    throw v0
.end method

.method public greylist-max-r currentTimeMillis()J
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 267
    iget-object v0, p0, Landroid/util/NtpTrustedTime;->mTimeResult:Landroid/util/NtpTrustedTime$TimeResult;

    .line 268
    .local v0, "timeResult":Landroid/util/NtpTrustedTime$TimeResult;
    if-eqz v0, :cond_9

    .line 275
    invoke-virtual {v0}, Landroid/util/NtpTrustedTime$TimeResult;->currentTimeMillis()J

    move-result-wide v1

    return-wide v1

    .line 269
    :cond_9
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Missing authoritative time source"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist dump(Ljava/io/PrintWriter;)V
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 396
    monitor-enter p0

    .line 397
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getNtpConnectionInfo()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Landroid/util/NtpTrustedTime;->getNtpConnectionInfo()Landroid/util/NtpTrustedTime$NtpConnectionInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 398
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mTimeResult="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/util/NtpTrustedTime;->mTimeResult:Landroid/util/NtpTrustedTime$TimeResult;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 399
    iget-object v0, p0, Landroid/util/NtpTrustedTime;->mTimeResult:Landroid/util/NtpTrustedTime$TimeResult;

    if-eqz v0, :cond_59

    .line 400
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mTimeResult.getAgeMillis()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/util/NtpTrustedTime;->mTimeResult:Landroid/util/NtpTrustedTime$TimeResult;

    .line 401
    invoke-virtual {v1}, Landroid/util/NtpTrustedTime$TimeResult;->getAgeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 400
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 403
    :cond_59
    monitor-exit p0

    .line 404
    return-void

    .line 403
    :catchall_5b
    move-exception v0

    monitor-exit p0
    :try_end_5d
    .catchall {:try_start_1 .. :try_end_5d} :catchall_5b

    throw v0
.end method

.method public greylist-max-r forceRefresh()Z
    .registers 22

    .line 185
    move-object/from16 v1, p0

    monitor-enter p0

    .line 186
    :try_start_3
    invoke-direct/range {p0 .. p0}, Landroid/util/NtpTrustedTime;->getNtpConnectionInfo()Landroid/util/NtpTrustedTime$NtpConnectionInfo;

    move-result-object v0

    .line 187
    .local v0, "connectionInfo":Landroid/util/NtpTrustedTime$NtpConnectionInfo;
    const/4 v2, 0x0

    if-nez v0, :cond_c

    .line 190
    monitor-exit p0

    return v2

    .line 193
    :cond_c
    iget-object v3, v1, Landroid/util/NtpTrustedTime;->mConnectivityManagerSupplier:Ljava/util/function/Supplier;

    invoke-interface {v3}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    .line 194
    .local v3, "connectivityManager":Landroid/net/ConnectivityManager;
    if-nez v3, :cond_18

    .line 196
    monitor-exit p0

    return v2

    .line 198
    :cond_18
    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v4

    .line 199
    .local v4, "network":Landroid/net/Network;
    invoke-virtual {v3, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v5

    .line 210
    .local v5, "ni":Landroid/net/NetworkInfo;
    if-eqz v5, :cond_5d

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-nez v6, :cond_29

    goto :goto_5d

    .line 216
    :cond_29
    new-instance v6, Landroid/net/SntpClient;

    invoke-direct {v6}, Landroid/net/SntpClient;-><init>()V

    .line 217
    .local v6, "client":Landroid/net/SntpClient;
    invoke-virtual {v0}, Landroid/util/NtpTrustedTime$NtpConnectionInfo;->getServer()Ljava/lang/String;

    move-result-object v7

    .line 218
    .local v7, "serverName":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/util/NtpTrustedTime$NtpConnectionInfo;->getPort()I

    move-result v8

    .line 219
    .local v8, "port":I
    invoke-virtual {v0}, Landroid/util/NtpTrustedTime$NtpConnectionInfo;->getTimeoutMillis()I

    move-result v9

    .line 221
    .local v9, "timeoutMillis":I
    invoke-virtual {v6, v7, v8, v9, v4}, Landroid/net/SntpClient;->requestTime(Ljava/lang/String;IILandroid/net/Network;)Z

    move-result v10

    if-eqz v10, :cond_5b

    .line 222
    invoke-virtual {v6}, Landroid/net/SntpClient;->getRoundTripTime()J

    move-result-wide v10

    const-wide/16 v12, 0x2

    div-long v19, v10, v12

    .line 223
    .local v19, "ntpCertainty":J
    new-instance v2, Landroid/util/NtpTrustedTime$TimeResult;

    .line 224
    invoke-virtual {v6}, Landroid/net/SntpClient;->getNtpTime()J

    move-result-wide v15

    invoke-virtual {v6}, Landroid/net/SntpClient;->getNtpTimeReference()J

    move-result-wide v17

    move-object v14, v2

    invoke-direct/range {v14 .. v20}, Landroid/util/NtpTrustedTime$TimeResult;-><init>(JJJ)V

    iput-object v2, v1, Landroid/util/NtpTrustedTime;->mTimeResult:Landroid/util/NtpTrustedTime$TimeResult;

    .line 225
    const/4 v2, 0x1

    monitor-exit p0

    return v2

    .line 227
    .end local v19    # "ntpCertainty":J
    :cond_5b
    monitor-exit p0

    return v2

    .line 212
    .end local v6    # "client":Landroid/net/SntpClient;
    .end local v7    # "serverName":Ljava/lang/String;
    .end local v8    # "port":I
    .end local v9    # "timeoutMillis":I
    :cond_5d
    :goto_5d
    monitor-exit p0

    return v2

    .line 229
    .end local v0    # "connectionInfo":Landroid/util/NtpTrustedTime$NtpConnectionInfo;
    .end local v3    # "connectivityManager":Landroid/net/ConnectivityManager;
    .end local v4    # "network":Landroid/net/Network;
    .end local v5    # "ni":Landroid/net/NetworkInfo;
    :catchall_5f
    move-exception v0

    monitor-exit p0
    :try_end_61
    .catchall {:try_start_3 .. :try_end_61} :catchall_5f

    throw v0
.end method

.method public greylist-max-o getCacheAge()J
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 251
    iget-object v0, p0, Landroid/util/NtpTrustedTime;->mTimeResult:Landroid/util/NtpTrustedTime$TimeResult;

    .line 252
    .local v0, "timeResult":Landroid/util/NtpTrustedTime$TimeResult;
    if-eqz v0, :cond_e

    .line 253
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0}, Landroid/util/NtpTrustedTime$TimeResult;->getElapsedRealtimeMillis()J

    move-result-wide v3

    sub-long/2addr v1, v3

    return-wide v1

    .line 255
    :cond_e
    const-wide v1, 0x7fffffffffffffffL

    return-wide v1
.end method

.method public greylist-max-r getCachedNtpTime()J
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 287
    iget-object v0, p0, Landroid/util/NtpTrustedTime;->mTimeResult:Landroid/util/NtpTrustedTime$TimeResult;

    .line 288
    .local v0, "timeResult":Landroid/util/NtpTrustedTime$TimeResult;
    if-nez v0, :cond_7

    const-wide/16 v1, 0x0

    goto :goto_b

    :cond_7
    invoke-virtual {v0}, Landroid/util/NtpTrustedTime$TimeResult;->getTimeMillis()J

    move-result-wide v1

    :goto_b
    return-wide v1
.end method

.method public greylist-max-r getCachedNtpTimeReference()J
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 299
    iget-object v0, p0, Landroid/util/NtpTrustedTime;->mTimeResult:Landroid/util/NtpTrustedTime$TimeResult;

    .line 300
    .local v0, "timeResult":Landroid/util/NtpTrustedTime$TimeResult;
    if-nez v0, :cond_7

    const-wide/16 v1, 0x0

    goto :goto_b

    :cond_7
    invoke-virtual {v0}, Landroid/util/NtpTrustedTime$TimeResult;->getElapsedRealtimeMillis()J

    move-result-wide v1

    :goto_b
    return-wide v1
.end method

.method public blacklist getCachedTimeResult()Landroid/util/NtpTrustedTime$TimeResult;
    .registers 2

    .line 309
    iget-object v0, p0, Landroid/util/NtpTrustedTime;->mTimeResult:Landroid/util/NtpTrustedTime$TimeResult;

    return-object v0
.end method

.method public greylist-max-r hasCache()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 240
    iget-object v0, p0, Landroid/util/NtpTrustedTime;->mTimeResult:Landroid/util/NtpTrustedTime$TimeResult;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public blacklist setServerConfigForTests(Ljava/lang/String;Ljava/lang/Integer;Ljava/time/Duration;)V
    .registers 5
    .param p1, "hostname"    # Ljava/lang/String;
    .param p2, "port"    # Ljava/lang/Integer;
    .param p3, "timeout"    # Ljava/time/Duration;

    .line 175
    monitor-enter p0

    .line 176
    :try_start_1
    iput-object p1, p0, Landroid/util/NtpTrustedTime;->mHostnameForTests:Ljava/lang/String;

    .line 177
    iput-object p2, p0, Landroid/util/NtpTrustedTime;->mPortForTests:Ljava/lang/Integer;

    .line 178
    iput-object p3, p0, Landroid/util/NtpTrustedTime;->mTimeoutForTests:Ljava/time/Duration;

    .line 179
    monitor-exit p0

    .line 180
    return-void

    .line 179
    :catchall_9
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_9

    throw v0
.end method
