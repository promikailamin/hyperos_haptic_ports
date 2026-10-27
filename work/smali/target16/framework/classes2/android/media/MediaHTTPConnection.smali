.class public Landroid/media/MediaHTTPConnection;
.super Landroid/media/IMediaHTTPConnection$Stub;
.source "MediaHTTPConnection.java"


# static fields
.field private static final greylist-max-o CONNECT_TIMEOUT_MS:I = 0x7530

.field private static final greylist-max-o HTTP_TEMP_REDIRECT:I = 0x133

.field private static final greylist-max-o MAX_REDIRECTS:I = 0x14

.field private static final greylist-max-o TAG:Ljava/lang/String; = "MediaHTTPConnection"

.field private static final greylist-max-o VERBOSE:Z = false


# instance fields
.field private greylist mAllowCrossDomainRedirect:Z

.field private greylist mAllowCrossProtocolRedirect:Z

.field private volatile greylist mConnection:Ljava/net/HttpURLConnection;

.field private greylist mCurrentOffset:J

.field private greylist mHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mInputStream:Ljava/io/InputStream;

.field private greylist-max-o mNativeContext:J

.field private final blacklist mNumDisconnectingThreads:Ljava/util/concurrent/atomic/AtomicInteger;

.field private greylist mTotalSize:J

.field private greylist mURL:Ljava/net/URL;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 488
    const-string v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 489
    invoke-static {}, Landroid/media/MediaHTTPConnection;->native_init()V

    .line 490
    return-void
.end method

.method public constructor greylist <init>()V
    .registers 4

    .line 93
    invoke-direct {p0}, Landroid/media/IMediaHTTPConnection$Stub;-><init>()V

    .line 52
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/media/MediaHTTPConnection;->mCurrentOffset:J

    .line 56
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/media/MediaHTTPConnection;->mURL:Ljava/net/URL;

    .line 60
    iput-object v2, p0, Landroid/media/MediaHTTPConnection;->mHeaders:Ljava/util/Map;

    .line 66
    iput-object v2, p0, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    .line 69
    iput-wide v0, p0, Landroid/media/MediaHTTPConnection;->mTotalSize:J

    .line 73
    iput-object v2, p0, Landroid/media/MediaHTTPConnection;->mInputStream:Ljava/io/InputStream;

    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/MediaHTTPConnection;->mAllowCrossDomainRedirect:Z

    .line 80
    iput-boolean v0, p0, Landroid/media/MediaHTTPConnection;->mAllowCrossProtocolRedirect:Z

    .line 90
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Landroid/media/MediaHTTPConnection;->mNumDisconnectingThreads:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 94
    invoke-static {}, Ljava/net/CookieHandler;->getDefault()Ljava/net/CookieHandler;

    move-result-object v0

    .line 95
    if-nez v0, :cond_2c

    .line 96
    const-string v0, "MediaHTTPConnection"

    const-string v1, "MediaHTTPConnection: Unexpected. No CookieHandler found."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :cond_2c
    invoke-direct {p0}, Landroid/media/MediaHTTPConnection;->native_setup()V

    .line 100
    return-void
.end method

.method private declared-synchronized greylist-max-o convertHeaderStringToMap(Ljava/lang/String;)Ljava/util/Map;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 143
    :try_start_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 145
    const-string v1, "\r\n"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 146
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_f
    if-ge v3, v1, :cond_31

    aget-object v4, p1, v3

    .line 147
    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 148
    if-ltz v5, :cond_2e

    .line 149
    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 150
    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 152
    invoke-direct {p0, v6, v4}, Landroid/media/MediaHTTPConnection;->filterOutInternalHeaders(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2e

    .line 153
    invoke-virtual {v0, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_33

    .line 146
    :cond_2e
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 158
    :cond_31
    monitor-exit p0

    return-object v0

    .line 142
    :catchall_33
    move-exception p1

    :try_start_34
    monitor-exit p0
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    throw p1
.end method

.method private declared-synchronized greylist-max-o filterOutInternalHeaders(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    monitor-enter p0

    .line 132
    :try_start_1
    const-string v0, "android-allow-cross-domain-redirect"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_16

    .line 133
    invoke-static {p2}, Landroid/media/MediaHTTPConnection;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Landroid/media/MediaHTTPConnection;->mAllowCrossDomainRedirect:Z

    .line 135
    iget-boolean p1, p0, Landroid/media/MediaHTTPConnection;->mAllowCrossDomainRedirect:Z

    iput-boolean p1, p0, Landroid/media/MediaHTTPConnection;->mAllowCrossProtocolRedirect:Z
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_19

    .line 139
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    .line 137
    :cond_16
    monitor-exit p0

    const/4 p1, 0x0

    return p1

    .line 131
    :catchall_19
    move-exception p1

    :try_start_1a
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw p1
.end method

.method private static final greylist-max-o isLocalHost(Ljava/net/URL;)Z
    .registers 4

    .line 203
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 204
    return v0

    .line 207
    :cond_4
    invoke-virtual {p0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object p0

    .line 209
    if-nez p0, :cond_b

    .line 210
    return v0

    .line 214
    :cond_b
    :try_start_b
    const-string v1, "localhost"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_15

    .line 215
    return v2

    .line 217
    :cond_15
    invoke-static {p0}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p0

    invoke-virtual {p0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result p0
    :try_end_1d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_1d} :catch_21

    if-eqz p0, :cond_20

    .line 218
    return v2

    .line 221
    :cond_20
    goto :goto_22

    .line 220
    :catch_21
    move-exception p0

    .line 222
    :goto_22
    return v0
.end method

.method private final native greylist-max-o native_finalize()V
.end method

.method private final native greylist-max-o native_getIMemory()Landroid/os/IBinder;
.end method

.method private static final native greylist-max-o native_init()V
.end method

.method private final native greylist-max-o native_readAt(JI)I
.end method

.method private final native greylist-max-o native_setup()V
.end method

.method private static greylist-max-o parseBoolean(Ljava/lang/String;)Z
    .registers 7

    .line 123
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_2
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_6} :catch_f

    const-wide/16 v4, 0x0

    cmp-long p0, v2, v4

    if-eqz p0, :cond_d

    goto :goto_e

    :cond_d
    move v0, v1

    :goto_e
    return v0

    .line 124
    :catch_f
    move-exception v2

    .line 125
    const-string v2, "true"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_23

    .line 126
    const-string v2, "yes"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_21

    goto :goto_23

    :cond_21
    move v0, v1

    goto :goto_24

    :cond_23
    :goto_23
    nop

    .line 125
    :goto_24
    return v0
.end method

.method private declared-synchronized greylist-max-o readAt(J[BI)I
    .registers 13

    monitor-enter p0

    .line 394
    :try_start_1
    new-instance v0, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    .line 395
    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 397
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_c3

    .line 400
    const/16 v0, -0x3f2

    const/4 v1, -0x1

    :try_start_14
    iget-wide v2, p0, Landroid/media/MediaHTTPConnection;->mCurrentOffset:J

    cmp-long v2, p1, v2

    if-eqz v2, :cond_1d

    .line 401
    invoke-direct {p0, p1, p2}, Landroid/media/MediaHTTPConnection;->seekTo(J)V

    .line 404
    :cond_1d
    iget-object v2, p0, Landroid/media/MediaHTTPConnection;->mInputStream:Ljava/io/InputStream;

    const/4 v3, 0x0

    invoke-virtual {v2, p3, v3, p4}, Ljava/io/InputStream;->read([BII)I

    move-result p3

    .line 406
    if-ne p3, v1, :cond_27

    .line 409
    goto :goto_28

    .line 406
    :cond_27
    move v3, p3

    .line 412
    :goto_28
    iget-wide v4, p0, Landroid/media/MediaHTTPConnection;->mCurrentOffset:J

    int-to-long v6, v3

    add-long/2addr v4, v6

    iput-wide v4, p0, Landroid/media/MediaHTTPConnection;->mCurrentOffset:J
    :try_end_2e
    .catch Ljava/net/ProtocolException; {:try_start_14 .. :try_end_2e} :catch_94
    .catch Ljava/net/NoRouteToHostException; {:try_start_14 .. :try_end_2e} :catch_65
    .catch Ljava/net/UnknownServiceException; {:try_start_14 .. :try_end_2e} :catch_36
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_2e} :catch_33
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_2e} :catch_30
    .catchall {:try_start_14 .. :try_end_2e} :catchall_c3

    .line 418
    monitor-exit p0

    return v3

    .line 433
    :catch_30
    move-exception p1

    .line 438
    monitor-exit p0

    return v1

    .line 428
    :catch_33
    move-exception p1

    .line 432
    monitor-exit p0

    return v1

    .line 425
    :catch_36
    move-exception p3

    .line 426
    :try_start_37
    const-string v1, "MediaHTTPConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "readAt "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " / "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " => "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_63
    .catchall {:try_start_37 .. :try_end_63} :catchall_c3

    .line 427
    monitor-exit p0

    return v0

    .line 422
    :catch_65
    move-exception p3

    .line 423
    :try_start_66
    const-string v1, "MediaHTTPConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "readAt "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " / "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " => "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_92
    .catchall {:try_start_66 .. :try_end_92} :catchall_c3

    .line 424
    monitor-exit p0

    return v0

    .line 419
    :catch_94
    move-exception p3

    .line 420
    :try_start_95
    const-string v1, "MediaHTTPConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "readAt "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " / "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " => "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c1
    .catchall {:try_start_95 .. :try_end_c1} :catchall_c3

    .line 421
    monitor-exit p0

    return v0

    .line 393
    :catchall_c3
    move-exception p1

    :try_start_c4
    monitor-exit p0
    :try_end_c5
    .catchall {:try_start_c4 .. :try_end_c5} :catchall_c3

    throw p1
.end method

.method private declared-synchronized greylist-max-o seekTo(J)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 226
    :try_start_1
    invoke-direct {p0}, Landroid/media/MediaHTTPConnection;->teardownConnection()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_1e5

    .line 230
    nop

    .line 232
    const-wide/16 v0, -0x1

    :try_start_7
    iget-object v2, p0, Landroid/media/MediaHTTPConnection;->mURL:Ljava/net/URL;

    .line 235
    invoke-static {v2}, Landroid/media/MediaHTTPConnection;->isLocalHost(Ljava/net/URL;)Z

    move-result v3

    const/4 v4, 0x0

    .line 248
    :goto_e
    iget-object v5, p0, Landroid/media/MediaHTTPConnection;->mNumDisconnectingThreads:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    if-gtz v5, :cond_1d4

    .line 251
    if-eqz v3, :cond_23

    .line 252
    sget-object v5, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    invoke-virtual {v2, v5}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    iput-object v2, p0, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    goto :goto_2b

    .line 254
    :cond_23
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    iput-object v2, p0, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    .line 261
    :goto_2b
    iget-object v2, p0, Landroid/media/MediaHTTPConnection;->mNumDisconnectingThreads:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-gtz v2, :cond_1cc

    .line 268
    iget-object v2, p0, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    const/16 v5, 0x7530

    invoke-virtual {v2, v5}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 271
    iget-object v2, p0, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    iget-boolean v5, p0, Landroid/media/MediaHTTPConnection;->mAllowCrossDomainRedirect:Z

    invoke-virtual {v2, v5}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 273
    iget-object v2, p0, Landroid/media/MediaHTTPConnection;->mHeaders:Ljava/util/Map;

    if-eqz v2, :cond_6d

    .line 274
    iget-object v2, p0, Landroid/media/MediaHTTPConnection;->mHeaders:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 275
    iget-object v6, p0, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    .line 276
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 275
    invoke-virtual {v6, v7, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    goto :goto_4f

    .line 280
    :cond_6d
    const-wide/16 v5, 0x0

    cmp-long v2, p1, v5

    if-lez v2, :cond_93

    .line 281
    iget-object v5, p0, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    const-string v6, "Range"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "bytes="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    :cond_93
    iget-object v5, p0, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    .line 286
    const/16 v6, 0x12c

    const/16 v7, 0x133

    if-eq v5, v6, :cond_111

    const/16 v6, 0x12d

    if-eq v5, v6, :cond_111

    const/16 v6, 0x12e

    if-eq v5, v6, :cond_111

    const/16 v6, 0x12f

    if-eq v5, v6, :cond_111

    if-eq v5, v7, :cond_111

    .line 292
    nop

    .line 331
    iget-boolean v3, p0, Landroid/media/MediaHTTPConnection;->mAllowCrossDomainRedirect:Z

    if-eqz v3, :cond_ba

    .line 334
    iget-object v3, p0, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v3

    iput-object v3, p0, Landroid/media/MediaHTTPConnection;->mURL:Ljava/net/URL;

    .line 337
    :cond_ba
    const/16 v3, 0xce

    if-ne v5, v3, :cond_e1

    .line 342
    iget-object v4, p0, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    const-string v6, "Content-Range"

    .line 343
    invoke-virtual {v4, v6}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 345
    iput-wide v0, p0, Landroid/media/MediaHTTPConnection;->mTotalSize:J

    .line 346
    if-eqz v4, :cond_e0

    .line 351
    const/16 v6, 0x2f

    invoke-virtual {v4, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    .line 352
    if-ltz v6, :cond_e0

    .line 353
    add-int/lit8 v6, v6, 0x1

    .line 354
    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4
    :try_end_d8
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_d8} :catch_1dc
    .catchall {:try_start_7 .. :try_end_d8} :catchall_1e5

    .line 357
    :try_start_d8
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p0, Landroid/media/MediaHTTPConnection;->mTotalSize:J
    :try_end_de
    .catch Ljava/lang/NumberFormatException; {:try_start_d8 .. :try_end_de} :catch_df
    .catch Ljava/io/IOException; {:try_start_d8 .. :try_end_de} :catch_1dc
    .catchall {:try_start_d8 .. :try_end_de} :catchall_1e5

    .line 359
    goto :goto_e0

    .line 358
    :catch_df
    move-exception v4

    .line 362
    :cond_e0
    :goto_e0
    goto :goto_ee

    :cond_e1
    const/16 v4, 0xc8

    if-ne v5, v4, :cond_10b

    .line 365
    :try_start_e5
    iget-object v4, p0, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v4

    int-to-long v6, v4

    iput-wide v6, p0, Landroid/media/MediaHTTPConnection;->mTotalSize:J

    .line 368
    :goto_ee
    if-lez v2, :cond_f9

    if-ne v5, v3, :cond_f3

    goto :goto_f9

    .line 371
    :cond_f3
    new-instance p1, Ljava/net/ProtocolException;

    invoke-direct {p1}, Ljava/net/ProtocolException;-><init>()V

    throw p1

    .line 374
    :cond_f9
    :goto_f9
    new-instance v2, Ljava/io/BufferedInputStream;

    iget-object v3, p0, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    .line 375
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v2, p0, Landroid/media/MediaHTTPConnection;->mInputStream:Ljava/io/InputStream;

    .line 377
    iput-wide p1, p0, Landroid/media/MediaHTTPConnection;->mCurrentOffset:J
    :try_end_108
    .catch Ljava/io/IOException; {:try_start_e5 .. :try_end_108} :catch_1dc
    .catchall {:try_start_e5 .. :try_end_108} :catchall_1e5

    .line 384
    nop

    .line 385
    monitor-exit p0

    return-void

    .line 363
    :cond_10b
    :try_start_10b
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    throw p1

    .line 295
    :cond_111
    add-int/lit8 v4, v4, 0x1

    const/16 v2, 0x14

    if-gt v4, v2, :cond_1b3

    .line 299
    iget-object v2, p0, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v2

    .line 300
    if-ne v5, v7, :cond_138

    const-string v6, "GET"

    .line 301
    invoke-virtual {v2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_138

    const-string v6, "HEAD"

    invoke-virtual {v2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_130

    goto :goto_138

    .line 305
    :cond_130
    new-instance p1, Ljava/net/NoRouteToHostException;

    const-string p2, "Invalid redirect"

    invoke-direct {p1, p2}, Ljava/net/NoRouteToHostException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 307
    :cond_138
    :goto_138
    iget-object v2, p0, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    const-string v6, "Location"

    invoke-virtual {v2, v6}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 308
    if-eqz v2, :cond_1ab

    .line 311
    new-instance v6, Ljava/net/URL;

    iget-object v8, p0, Landroid/media/MediaHTTPConnection;->mURL:Ljava/net/URL;

    invoke-direct {v6, v8, v2}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    .line 312
    invoke-virtual {v6}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    const-string v8, "https"

    invoke-virtual {v2, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16a

    .line 313
    invoke-virtual {v6}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    const-string v8, "http"

    invoke-virtual {v2, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_162

    goto :goto_16a

    .line 314
    :cond_162
    new-instance p1, Ljava/net/NoRouteToHostException;

    const-string p2, "Unsupported protocol redirect"

    invoke-direct {p1, p2}, Ljava/net/NoRouteToHostException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 316
    :cond_16a
    :goto_16a
    iget-object v2, p0, Landroid/media/MediaHTTPConnection;->mURL:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 317
    iget-boolean v8, p0, Landroid/media/MediaHTTPConnection;->mAllowCrossProtocolRedirect:Z

    if-nez v8, :cond_187

    if-eqz v2, :cond_17f

    goto :goto_187

    .line 318
    :cond_17f
    new-instance p1, Ljava/net/NoRouteToHostException;

    const-string p2, "Cross-protocol redirects are disallowed"

    invoke-direct {p1, p2}, Ljava/net/NoRouteToHostException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 320
    :cond_187
    :goto_187
    iget-object v2, p0, Landroid/media/MediaHTTPConnection;->mURL:Ljava/net/URL;

    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 321
    iget-boolean v8, p0, Landroid/media/MediaHTTPConnection;->mAllowCrossDomainRedirect:Z

    if-nez v8, :cond_1a4

    if-eqz v2, :cond_19c

    goto :goto_1a4

    .line 322
    :cond_19c
    new-instance p1, Ljava/net/NoRouteToHostException;

    const-string p2, "Cross-domain redirects are disallowed"

    invoke-direct {p1, p2}, Ljava/net/NoRouteToHostException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 325
    :cond_1a4
    :goto_1a4
    if-eq v5, v7, :cond_1a8

    .line 327
    iput-object v6, p0, Landroid/media/MediaHTTPConnection;->mURL:Ljava/net/URL;

    .line 329
    :cond_1a8
    move-object v2, v6

    goto/16 :goto_e

    .line 309
    :cond_1ab
    new-instance p1, Ljava/net/NoRouteToHostException;

    const-string p2, "Invalid redirect"

    invoke-direct {p1, p2}, Ljava/net/NoRouteToHostException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 296
    :cond_1b3
    new-instance p1, Ljava/net/NoRouteToHostException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Too many redirects: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/net/NoRouteToHostException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 262
    :cond_1cc
    new-instance p1, Ljava/io/IOException;

    const-string p2, "concurrently disconnecting"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 249
    :cond_1d4
    new-instance p1, Ljava/io/IOException;

    const-string p2, "concurrently disconnecting"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1dc
    .catch Ljava/io/IOException; {:try_start_10b .. :try_end_1dc} :catch_1dc
    .catchall {:try_start_10b .. :try_end_1dc} :catchall_1e5

    .line 378
    :catch_1dc
    move-exception p1

    .line 379
    :try_start_1dd
    iput-wide v0, p0, Landroid/media/MediaHTTPConnection;->mTotalSize:J

    .line 380
    invoke-direct {p0}, Landroid/media/MediaHTTPConnection;->teardownConnection()V

    .line 381
    iput-wide v0, p0, Landroid/media/MediaHTTPConnection;->mCurrentOffset:J

    .line 383
    throw p1

    .line 225
    :catchall_1e5
    move-exception p1

    monitor-exit p0
    :try_end_1e7
    .catchall {:try_start_1dd .. :try_end_1e7} :catchall_1e5

    throw p1
.end method

.method private declared-synchronized greylist-max-o teardownConnection()V
    .registers 3

    monitor-enter p0

    .line 186
    :try_start_1
    iget-object v0, p0, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_1e

    .line 187
    iget-object v0, p0, Landroid/media/MediaHTTPConnection;->mInputStream:Ljava/io/InputStream;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_20

    const/4 v1, 0x0

    if-eqz v0, :cond_13

    .line 189
    :try_start_a
    iget-object v0, p0, Landroid/media/MediaHTTPConnection;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_f} :catch_10
    .catchall {:try_start_a .. :try_end_f} :catchall_20

    .line 191
    goto :goto_11

    .line 190
    :catch_10
    move-exception v0

    .line 192
    :goto_11
    :try_start_11
    iput-object v1, p0, Landroid/media/MediaHTTPConnection;->mInputStream:Ljava/io/InputStream;

    .line 195
    :cond_13
    iget-object v0, p0, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 196
    iput-object v1, p0, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    .line 198
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/media/MediaHTTPConnection;->mCurrentOffset:J
    :try_end_1e
    .catchall {:try_start_11 .. :try_end_1e} :catchall_20

    .line 200
    :cond_1e
    monitor-exit p0

    return-void

    .line 185
    :catchall_20
    move-exception v0

    :try_start_21
    monitor-exit p0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    throw v0
.end method


# virtual methods
.method public declared-synchronized greylist connect(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IBinder;
    .registers 4

    monitor-enter p0

    .line 110
    :try_start_1
    invoke-virtual {p0}, Landroid/media/MediaHTTPConnection;->disconnect()V

    .line 111
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/MediaHTTPConnection;->mAllowCrossDomainRedirect:Z

    .line 112
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/media/MediaHTTPConnection;->mURL:Ljava/net/URL;

    .line 113
    invoke-direct {p0, p2}, Landroid/media/MediaHTTPConnection;->convertHeaderStringToMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Landroid/media/MediaHTTPConnection;->mHeaders:Ljava/util/Map;
    :try_end_14
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_14} :catch_1e
    .catchall {:try_start_1 .. :try_end_14} :catchall_1b

    .line 116
    nop

    .line 118
    :try_start_15
    invoke-direct {p0}, Landroid/media/MediaHTTPConnection;->native_getIMemory()Landroid/os/IBinder;

    move-result-object p1
    :try_end_19
    .catchall {:try_start_15 .. :try_end_19} :catchall_1b

    monitor-exit p0

    return-object p1

    .line 109
    :catchall_1b
    move-exception p1

    :try_start_1c
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw p1

    .line 114
    :catch_1e
    move-exception p1

    .line 115
    monitor-exit p0

    const/4 p1, 0x0

    return-object p1
.end method

.method public greylist disconnect()V
    .registers 3

    .line 164
    iget-object v0, p0, Landroid/media/MediaHTTPConnection;->mNumDisconnectingThreads:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 166
    :try_start_5
    iget-object v0, p0, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    .line 169
    if-eqz v0, :cond_c

    .line 170
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 172
    :cond_c
    monitor-enter p0
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_20

    .line 176
    :try_start_d
    invoke-direct {p0}, Landroid/media/MediaHTTPConnection;->teardownConnection()V

    .line 177
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaHTTPConnection;->mHeaders:Ljava/util/Map;

    .line 178
    iput-object v0, p0, Landroid/media/MediaHTTPConnection;->mURL:Ljava/net/URL;

    .line 179
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_1d

    .line 181
    iget-object v0, p0, Landroid/media/MediaHTTPConnection;->mNumDisconnectingThreads:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 182
    nop

    .line 183
    return-void

    .line 179
    :catchall_1d
    move-exception v0

    :try_start_1e
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    :try_start_1f
    throw v0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_20

    .line 181
    :catchall_20
    move-exception v0

    iget-object v1, p0, Landroid/media/MediaHTTPConnection;->mNumDisconnectingThreads:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 182
    throw v0
.end method

.method protected whitelist test-api finalize()V
    .registers 1

    .line 477
    invoke-direct {p0}, Landroid/media/MediaHTTPConnection;->native_finalize()V

    .line 478
    return-void
.end method

.method public declared-synchronized greylist getMIMEType()Ljava/lang/String;
    .registers 3

    monitor-enter p0

    .line 458
    :try_start_1
    iget-object v0, p0, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_18

    if-nez v0, :cond_10

    .line 460
    const-wide/16 v0, 0x0

    :try_start_7
    invoke-direct {p0, v0, v1}, Landroid/media/MediaHTTPConnection;->seekTo(J)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_a} :catch_b
    .catchall {:try_start_7 .. :try_end_a} :catchall_18

    .line 463
    goto :goto_10

    .line 461
    :catch_b
    move-exception v0

    .line 462
    :try_start_c
    const-string v0, "application/octet-stream"
    :try_end_e
    .catchall {:try_start_c .. :try_end_e} :catchall_18

    monitor-exit p0

    return-object v0

    .line 466
    :cond_10
    :goto_10
    :try_start_10
    iget-object v0, p0, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v0
    :try_end_16
    .catchall {:try_start_10 .. :try_end_16} :catchall_18

    monitor-exit p0

    return-object v0

    .line 457
    :catchall_18
    move-exception v0

    :try_start_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method public declared-synchronized greylist-max-o getSize()J
    .registers 3

    monitor-enter p0

    .line 444
    :try_start_1
    iget-object v0, p0, Landroid/media/MediaHTTPConnection;->mConnection:Ljava/net/HttpURLConnection;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_14

    if-nez v0, :cond_10

    .line 446
    const-wide/16 v0, 0x0

    :try_start_7
    invoke-direct {p0, v0, v1}, Landroid/media/MediaHTTPConnection;->seekTo(J)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_a} :catch_b
    .catchall {:try_start_7 .. :try_end_a} :catchall_14

    .line 449
    goto :goto_10

    .line 447
    :catch_b
    move-exception v0

    .line 448
    monitor-exit p0

    const-wide/16 v0, -0x1

    return-wide v0

    .line 452
    :cond_10
    :goto_10
    :try_start_10
    iget-wide v0, p0, Landroid/media/MediaHTTPConnection;->mTotalSize:J
    :try_end_12
    .catchall {:try_start_10 .. :try_end_12} :catchall_14

    monitor-exit p0

    return-wide v0

    .line 443
    :catchall_14
    move-exception v0

    :try_start_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw v0
.end method

.method public declared-synchronized greylist getUri()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    .line 472
    :try_start_1
    iget-object v0, p0, Landroid/media/MediaHTTPConnection;->mURL:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-object v0

    .line 472
    :catchall_9
    move-exception v0

    :try_start_a
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw v0
.end method

.method public declared-synchronized greylist readAt(JI)I
    .registers 4

    monitor-enter p0

    .line 390
    :try_start_1
    invoke-direct {p0, p1, p2, p3}, Landroid/media/MediaHTTPConnection;->native_readAt(JI)I

    move-result p1
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_7

    monitor-exit p0

    return p1

    .line 390
    :catchall_7
    move-exception p1

    :try_start_8
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_8 .. :try_end_9} :catchall_7

    throw p1
.end method
