.class public Landroid/net/SntpClient;
.super Ljava/lang/Object;
.source "SntpClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/SntpClient$InvalidServerReplyException;
    }
.end annotation


# static fields
.field private static final greylist-max-o DBG:Z = true

.field private static final greylist-max-o NTP_LEAP_NOSYNC:I = 0x3

.field private static final greylist-max-o NTP_MODE_BROADCAST:I = 0x5

.field private static final greylist-max-o NTP_MODE_CLIENT:I = 0x3

.field private static final greylist-max-o NTP_MODE_SERVER:I = 0x4

.field private static final greylist-max-o NTP_PACKET_SIZE:I = 0x30

.field private static final greylist-max-o NTP_STRATUM_DEATH:I = 0x0

.field private static final greylist-max-o NTP_STRATUM_MAX:I = 0xf

.field private static final greylist-max-o NTP_VERSION:I = 0x3

.field private static final greylist-max-o ORIGINATE_TIME_OFFSET:I = 0x18

.field private static final greylist-max-o RECEIVE_TIME_OFFSET:I = 0x20

.field private static final greylist-max-o REFERENCE_TIME_OFFSET:I = 0x10

.field public static final blacklist STANDARD_NTP_PORT:I = 0x7b

.field private static final greylist-max-o TAG:Ljava/lang/String; = "SntpClient"

.field private static final greylist-max-o TRANSMIT_TIME_OFFSET:I = 0x28


# instance fields
.field private blacklist mClockOffset:J

.field private greylist-max-o mNtpTime:J

.field private greylist-max-o mNtpTimeReference:J

.field private final blacklist mRandom:Ljava/util/Random;

.field private greylist-max-o mRoundTripTime:J

.field private blacklist mServerSocketAddress:Ljava/net/InetSocketAddress;

.field private final blacklist mSystemTimeSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Ljava/time/Instant;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor greylist <init>()V
    .registers 3

    .line 105
    new-instance v0, Landroid/net/SntpClient$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/net/SntpClient$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {}, Landroid/net/SntpClient;->defaultRandom()Ljava/util/Random;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/net/SntpClient;-><init>(Ljava/util/function/Supplier;Ljava/util/Random;)V

    .line 106
    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/function/Supplier;Ljava/util/Random;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Ljava/time/Instant;",
            ">;",
            "Ljava/util/Random;",
            ")V"
        }
    .end annotation

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/function/Supplier;

    iput-object p1, p0, Landroid/net/SntpClient;->mSystemTimeSupplier:Ljava/util/function/Supplier;

    .line 111
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Random;

    iput-object p1, p0, Landroid/net/SntpClient;->mRandom:Ljava/util/Random;

    .line 112
    return-void
.end method

.method public static blacklist calculateClockOffset(Landroid/net/sntp/Timestamp64;Landroid/net/sntp/Timestamp64;Landroid/net/sntp/Timestamp64;Landroid/net/sntp/Timestamp64;)Ljava/time/Duration;
    .registers 4

    .line 244
    invoke-static {p0, p1}, Landroid/net/sntp/Duration64;->between(Landroid/net/sntp/Timestamp64;Landroid/net/sntp/Timestamp64;)Landroid/net/sntp/Duration64;

    move-result-object p0

    .line 245
    invoke-static {p3, p2}, Landroid/net/sntp/Duration64;->between(Landroid/net/sntp/Timestamp64;Landroid/net/sntp/Timestamp64;)Landroid/net/sntp/Duration64;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/net/sntp/Duration64;->plus(Landroid/net/sntp/Duration64;)Ljava/time/Duration;

    move-result-object p0

    .line 246
    const-wide/16 p1, 0x2

    invoke-virtual {p0, p1, p2}, Ljava/time/Duration;->dividedBy(J)Ljava/time/Duration;

    move-result-object p0

    .line 244
    return-object p0
.end method

.method private static blacklist checkValidServerReply(BBILandroid/net/sntp/Timestamp64;Landroid/net/sntp/Timestamp64;Landroid/net/sntp/Timestamp64;Landroid/net/sntp/Timestamp64;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/SntpClient$InvalidServerReplyException;
        }
    .end annotation

    .line 307
    const/4 v0, 0x3

    if-eq p0, v0, :cond_76

    .line 310
    const/4 p0, 0x4

    if-eq p1, p0, :cond_24

    const/4 p0, 0x5

    if-ne p1, p0, :cond_a

    goto :goto_24

    .line 311
    :cond_a
    new-instance p0, Landroid/net/SntpClient$InvalidServerReplyException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "untrusted mode: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/net/SntpClient$InvalidServerReplyException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 313
    :cond_24
    :goto_24
    if-eqz p2, :cond_5c

    const/16 p0, 0xf

    if-gt p2, p0, :cond_5c

    .line 316
    invoke-virtual {p5, p6}, Landroid/net/sntp/Timestamp64;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_53

    .line 320
    sget-object p0, Landroid/net/sntp/Timestamp64;->ZERO:Landroid/net/sntp/Timestamp64;

    invoke-virtual {p3, p0}, Landroid/net/sntp/Timestamp64;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4a

    .line 323
    sget-object p0, Landroid/net/sntp/Timestamp64;->ZERO:Landroid/net/sntp/Timestamp64;

    invoke-virtual {p4, p0}, Landroid/net/sntp/Timestamp64;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_41

    .line 326
    return-void

    .line 324
    :cond_41
    new-instance p0, Landroid/net/SntpClient$InvalidServerReplyException;

    const-string/jumbo p1, "zero referenceTimestamp"

    invoke-direct {p0, p1}, Landroid/net/SntpClient$InvalidServerReplyException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 321
    :cond_4a
    new-instance p0, Landroid/net/SntpClient$InvalidServerReplyException;

    const-string/jumbo p1, "zero transmitTimestamp"

    invoke-direct {p0, p1}, Landroid/net/SntpClient$InvalidServerReplyException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 317
    :cond_53
    new-instance p0, Landroid/net/SntpClient$InvalidServerReplyException;

    const-string/jumbo p1, "originateTimestamp != randomizedRequestTimestamp"

    invoke-direct {p0, p1}, Landroid/net/SntpClient$InvalidServerReplyException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 314
    :cond_5c
    new-instance p0, Landroid/net/SntpClient$InvalidServerReplyException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "untrusted stratum: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/net/SntpClient$InvalidServerReplyException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 308
    :cond_76
    new-instance p0, Landroid/net/SntpClient$InvalidServerReplyException;

    const-string/jumbo p1, "unsynchronized server"

    invoke-direct {p0, p1}, Landroid/net/SntpClient$InvalidServerReplyException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static blacklist defaultRandom()Ljava/util/Random;
    .registers 3

    .line 372
    :try_start_0
    invoke-static {}, Ljava/security/SecureRandom;->getInstanceStrong()Ljava/security/SecureRandom;

    move-result-object v0
    :try_end_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_4} :catch_5

    .line 377
    goto :goto_16

    .line 373
    :catch_5
    move-exception v0

    .line 375
    const-string v1, "SntpClient"

    const-string v2, "Unable to access SecureRandom"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 376
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    .line 378
    :goto_16
    return-object v0
.end method

.method private blacklist readTimeStamp([BI)Landroid/net/sntp/Timestamp64;
    .registers 5

    .line 345
    invoke-direct {p0, p1, p2}, Landroid/net/SntpClient;->readUnsigned32([BI)J

    move-result-wide v0

    .line 346
    add-int/lit8 p2, p2, 0x4

    invoke-direct {p0, p1, p2}, Landroid/net/SntpClient;->readUnsigned32([BI)J

    move-result-wide p1

    long-to-int p1, p1

    .line 347
    invoke-static {v0, v1, p1}, Landroid/net/sntp/Timestamp64;->fromComponents(JI)Landroid/net/sntp/Timestamp64;

    move-result-object p1

    return-object p1
.end method

.method private blacklist readUnsigned32([BI)J
    .registers 6

    .line 332
    add-int/lit8 v0, p2, 0x1

    aget-byte p2, p1, p2

    and-int/lit16 p2, p2, 0xff

    .line 333
    add-int/lit8 v1, v0, 0x1

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    .line 334
    add-int/lit8 v2, v1, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    .line 335
    aget-byte p1, p1, v2

    and-int/lit16 p1, p1, 0xff

    .line 337
    shl-int/lit8 p2, p2, 0x18

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr p2, v0

    shl-int/lit8 v0, v1, 0x8

    or-int/2addr p2, v0

    or-int/2addr p1, p2

    .line 338
    int-to-long p1, p1

    const-wide v0, 0xffffffffL

    and-long/2addr p1, v0

    return-wide p1
.end method

.method private blacklist writeTimeStamp([BILandroid/net/sntp/Timestamp64;)V
    .registers 9

    .line 354
    invoke-virtual {p3}, Landroid/net/sntp/Timestamp64;->getEraSeconds()J

    move-result-wide v0

    .line 356
    add-int/lit8 v2, p2, 0x1

    const/16 v3, 0x18

    ushr-long v3, v0, v3

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, p1, p2

    .line 357
    add-int/lit8 p2, v2, 0x1

    const/16 v3, 0x10

    ushr-long v3, v0, v3

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, p1, v2

    .line 358
    add-int/lit8 v2, p2, 0x1

    const/16 v3, 0x8

    ushr-long v3, v0, v3

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, p1, p2

    .line 359
    add-int/lit8 p2, v2, 0x1

    long-to-int v0, v0

    int-to-byte v0, v0

    aput-byte v0, p1, v2

    .line 361
    invoke-virtual {p3}, Landroid/net/sntp/Timestamp64;->getFractionBits()I

    move-result p3

    .line 363
    add-int/lit8 v0, p2, 0x1

    ushr-int/lit8 v1, p3, 0x18

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    .line 364
    add-int/lit8 p2, v0, 0x1

    ushr-int/lit8 v1, p3, 0x10

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 365
    add-int/lit8 v0, p2, 0x1

    ushr-int/lit8 v1, p3, 0x8

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    .line 366
    int-to-byte p2, p3

    aput-byte p2, p1, v0

    .line 367
    return-void
.end method


# virtual methods
.method public blacklist getClockOffset()J
    .registers 3

    .line 261
    iget-wide v0, p0, Landroid/net/SntpClient;->mClockOffset:J

    return-wide v0
.end method

.method public greylist getNtpTime()J
    .registers 3

    .line 271
    iget-wide v0, p0, Landroid/net/SntpClient;->mNtpTime:J

    return-wide v0
.end method

.method public greylist getNtpTimeReference()J
    .registers 3

    .line 282
    iget-wide v0, p0, Landroid/net/SntpClient;->mNtpTimeReference:J

    return-wide v0
.end method

.method public greylist getRoundTripTime()J
    .registers 3

    .line 292
    iget-wide v0, p0, Landroid/net/SntpClient;->mRoundTripTime:J

    return-wide v0
.end method

.method public blacklist getServerSocketAddress()Ljava/net/InetSocketAddress;
    .registers 2

    .line 300
    iget-object v0, p0, Landroid/net/SntpClient;->mServerSocketAddress:Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method public greylist requestTime(Ljava/lang/String;I)Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 252
    const-string p1, "SntpClient"

    const-string p2, "Shame on you for calling the hidden API requestTime()!"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    const/4 p1, 0x0

    return p1
.end method

.method public blacklist requestTime(Ljava/lang/String;IILandroid/net/Network;)Z
    .registers 10

    .line 126
    const-string v0, "SntpClient"

    invoke-virtual {p4}, Landroid/net/Network;->getPrivateDnsBypassingCopy()Landroid/net/Network;

    move-result-object p4

    .line 128
    const/4 v1, 0x0

    :try_start_7
    invoke-virtual {p4, p1}, Landroid/net/Network;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v2

    .line 129
    move v3, v1

    :goto_c
    array-length v4, v2

    if-ge v3, v4, :cond_1c

    .line 130
    aget-object v4, v2, v3

    invoke-virtual {p0, v4, p2, p3, p4}, Landroid/net/SntpClient;->requestTime(Ljava/net/InetAddress;IILandroid/net/Network;)Z

    move-result v4
    :try_end_15
    .catch Ljava/net/UnknownHostException; {:try_start_7 .. :try_end_15} :catch_1d

    if-eqz v4, :cond_19

    .line 131
    const/4 p1, 0x1

    return p1

    .line 129
    :cond_19
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 137
    :cond_1c
    goto :goto_3b

    .line 134
    :catch_1d
    move-exception p2

    .line 135
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unknown host: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/net/EventLogTags;->writeNtpFailure(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    :goto_3b
    const-string/jumbo p1, "request time failed"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    return v1
.end method

.method public greylist-max-o requestTime(Ljava/net/InetAddress;IILandroid/net/Network;)Z
    .registers 29

    .line 144
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    const-string v3, "SntpClient"

    .line 145
    const/16 v4, -0xbf

    invoke-static {v4}, Landroid/net/TrafficStats;->getAndSetThreadStatsTag(I)I

    move-result v4

    .line 148
    const/4 v5, 0x0

    const/4 v6, 0x0

    :try_start_10
    new-instance v7, Ljava/net/DatagramSocket;

    invoke-direct {v7}, Ljava/net/DatagramSocket;-><init>()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_15} :catch_13d
    .catchall {:try_start_10 .. :try_end_15} :catchall_139

    .line 149
    move-object/from16 v6, p4

    :try_start_17
    invoke-virtual {v6, v7}, Landroid/net/Network;->bindSocket(Ljava/net/DatagramSocket;)V

    .line 150
    move/from16 v6, p3

    invoke-virtual {v7, v6}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    .line 151
    const/16 v6, 0x30

    new-array v8, v6, [B

    .line 152
    new-instance v9, Ljava/net/DatagramPacket;

    invoke-direct {v9, v8, v6, v1, v2}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 157
    const/16 v10, 0x1b

    aput-byte v10, v8, v5

    .line 160
    iget-object v10, v0, Landroid/net/SntpClient;->mSystemTimeSupplier:Ljava/util/function/Supplier;

    invoke-interface {v10}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/time/Instant;

    .line 161
    invoke-static {v10}, Landroid/net/sntp/Timestamp64;->fromInstant(Ljava/time/Instant;)Landroid/net/sntp/Timestamp64;

    move-result-object v11

    .line 163
    iget-object v12, v0, Landroid/net/SntpClient;->mRandom:Ljava/util/Random;

    .line 164
    invoke-virtual {v11, v12}, Landroid/net/sntp/Timestamp64;->randomizeSubMillis(Ljava/util/Random;)Landroid/net/sntp/Timestamp64;

    move-result-object v12

    .line 165
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    .line 166
    const/16 v15, 0x28

    invoke-direct {v0, v8, v15, v12}, Landroid/net/SntpClient;->writeTimeStamp([BILandroid/net/sntp/Timestamp64;)V

    .line 168
    invoke-virtual {v7, v9}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 171
    new-instance v9, Ljava/net/DatagramPacket;

    invoke-direct {v9, v8, v6}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 172
    invoke-virtual {v7, v9}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_52} :catch_12f
    .catchall {:try_start_17 .. :try_end_52} :catchall_127

    .line 173
    move v9, v5

    :try_start_53
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 174
    sub-long v13, v5, v13

    invoke-virtual {v10, v13, v14}, Ljava/time/Instant;->plusMillis(J)Ljava/time/Instant;

    move-result-object v10
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_5d} :catch_11f
    .catchall {:try_start_53 .. :try_end_5d} :catchall_127

    .line 175
    move/from16 p3, v9

    :try_start_5f
    invoke-static {v10}, Landroid/net/sntp/Timestamp64;->fromInstant(Ljava/time/Instant;)Landroid/net/sntp/Timestamp64;

    move-result-object v9

    .line 178
    aget-byte v16, v8, p3

    shr-int/lit8 v16, v16, 0x6

    and-int/lit8 v15, v16, 0x3

    int-to-byte v15, v15

    .line 179
    aget-byte v16, v8, p3
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_6c} :catch_11b
    .catchall {:try_start_5f .. :try_end_6c} :catchall_127

    move/from16 v20, v4

    and-int/lit8 v4, v16, 0x7

    int-to-byte v4, v4

    .line 180
    const/16 v21, 0x1

    move/from16 v16, v4

    :try_start_75
    aget-byte v4, v8, v21

    and-int/lit16 v4, v4, 0xff

    .line 181
    move/from16 v17, v4

    const/16 v4, 0x10

    invoke-direct {v0, v8, v4}, Landroid/net/SntpClient;->readTimeStamp([BI)Landroid/net/sntp/Timestamp64;

    move-result-object v4

    .line 182
    move-object/from16 v18, v4

    const/16 v4, 0x18

    invoke-direct {v0, v8, v4}, Landroid/net/SntpClient;->readTimeStamp([BI)Landroid/net/sntp/Timestamp64;

    move-result-object v19

    .line 183
    const/16 v4, 0x20

    invoke-direct {v0, v8, v4}, Landroid/net/SntpClient;->readTimeStamp([BI)Landroid/net/sntp/Timestamp64;

    move-result-object v4
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_75 .. :try_end_8f} :catch_119
    .catchall {:try_start_75 .. :try_end_8f} :catchall_117

    .line 184
    move-object/from16 v22, v7

    const/16 v7, 0x28

    :try_start_93
    invoke-direct {v0, v8, v7}, Landroid/net/SntpClient;->readTimeStamp([BI)Landroid/net/sntp/Timestamp64;

    move-result-object v7

    .line 187
    move/from16 v23, v16

    move-object/from16 v16, v7

    move-wide v7, v13

    move/from16 v14, v23

    move v13, v15

    move/from16 v15, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v12

    invoke-static/range {v13 .. v19}, Landroid/net/SntpClient;->checkValidServerReply(BBILandroid/net/sntp/Timestamp64;Landroid/net/sntp/Timestamp64;Landroid/net/sntp/Timestamp64;Landroid/net/sntp/Timestamp64;)V

    move-object/from16 v12, v16

    .line 190
    nop

    .line 191
    nop

    .line 192
    invoke-static {v4, v12}, Landroid/net/sntp/Duration64;->between(Landroid/net/sntp/Timestamp64;Landroid/net/sntp/Timestamp64;)Landroid/net/sntp/Duration64;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/sntp/Duration64;->toDuration()Ljava/time/Duration;

    move-result-object v13

    invoke-virtual {v13}, Ljava/time/Duration;->toMillis()J

    move-result-wide v13

    .line 193
    sub-long v13, v7, v13

    .line 195
    invoke-static {v11, v4, v12, v9}, Landroid/net/SntpClient;->calculateClockOffset(Landroid/net/sntp/Timestamp64;Landroid/net/sntp/Timestamp64;Landroid/net/sntp/Timestamp64;Landroid/net/sntp/Timestamp64;)Ljava/time/Duration;

    move-result-object v4

    .line 197
    invoke-virtual {v4}, Ljava/time/Duration;->toMillis()J

    move-result-wide v7

    .line 199
    nop

    .line 200
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    .line 199
    invoke-static {v9, v13, v14, v7, v8}, Landroid/net/EventLogTags;->writeNtpSuccess(Ljava/lang/String;JJ)V

    .line 202
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "round trip: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v11, "ms, clock offset: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v11, "ms"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iput-wide v7, v0, Landroid/net/SntpClient;->mClockOffset:J

    .line 209
    invoke-virtual {v10, v4}, Ljava/time/Instant;->plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/Instant;

    move-result-object v4

    invoke-virtual {v4}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v7

    iput-wide v7, v0, Landroid/net/SntpClient;->mNtpTime:J

    .line 210
    iput-wide v5, v0, Landroid/net/SntpClient;->mNtpTimeReference:J

    .line 211
    iput-wide v13, v0, Landroid/net/SntpClient;->mRoundTripTime:J

    .line 212
    new-instance v4, Ljava/net/InetSocketAddress;

    invoke-direct {v4, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    iput-object v4, v0, Landroid/net/SntpClient;->mServerSocketAddress:Ljava/net/InetSocketAddress;
    :try_end_10a
    .catch Ljava/lang/Exception; {:try_start_93 .. :try_end_10a} :catch_115
    .catchall {:try_start_93 .. :try_end_10a} :catchall_113

    .line 218
    nop

    .line 219
    invoke-virtual/range {v22 .. v22}, Ljava/net/DatagramSocket;->close()V

    .line 221
    invoke-static/range {v20 .. v20}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 222
    nop

    .line 224
    return v21

    .line 218
    :catchall_113
    move-exception v0

    goto :goto_12c

    .line 213
    :catch_115
    move-exception v0

    goto :goto_136

    .line 218
    :catchall_117
    move-exception v0

    goto :goto_12a

    .line 213
    :catch_119
    move-exception v0

    goto :goto_134

    :catch_11b
    move-exception v0

    move/from16 v20, v4

    goto :goto_134

    :catch_11f
    move-exception v0

    move/from16 v20, v4

    move-object/from16 v22, v7

    move/from16 p3, v9

    goto :goto_136

    .line 218
    :catchall_127
    move-exception v0

    move/from16 v20, v4

    :goto_12a
    move-object/from16 v22, v7

    :goto_12c
    move-object/from16 v6, v22

    goto :goto_16f

    .line 213
    :catch_12f
    move-exception v0

    move/from16 v20, v4

    move/from16 p3, v5

    :goto_134
    move-object/from16 v22, v7

    :goto_136
    move-object/from16 v6, v22

    goto :goto_142

    .line 218
    :catchall_139
    move-exception v0

    move/from16 v20, v4

    goto :goto_16f

    .line 213
    :catch_13d
    move-exception v0

    move/from16 v20, v4

    move/from16 p3, v5

    .line 214
    :goto_142
    :try_start_142
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/EventLogTags;->writeNtpFailure(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "request time failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_164
    .catchall {:try_start_142 .. :try_end_164} :catchall_16e

    .line 216
    nop

    .line 218
    if-eqz v6, :cond_16a

    .line 219
    invoke-virtual {v6}, Ljava/net/DatagramSocket;->close()V

    .line 221
    :cond_16a
    invoke-static/range {v20 .. v20}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 216
    return p3

    .line 218
    :catchall_16e
    move-exception v0

    :goto_16f
    if-eqz v6, :cond_174

    .line 219
    invoke-virtual {v6}, Ljava/net/DatagramSocket;->close()V

    .line 221
    :cond_174
    invoke-static/range {v20 .. v20}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 222
    throw v0
.end method
