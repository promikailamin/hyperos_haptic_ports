.class Lcom/android/server/location/gnss/GnssPsdsDownloader;
.super Ljava/lang/Object;
.source "GnssPsdsDownloader.java"


# static fields
.field private static final CONNECTION_TIMEOUT_MS:I

.field private static final DEBUG:Z

.field static final LONG_TERM_PSDS_SERVER_INDEX:I = 0x1

.field private static final MAXIMUM_CONTENT_LENGTH_BYTES:J = 0xf4240L

.field private static final MAX_PSDS_TYPE_INDEX:I = 0x3

.field private static final NORMAL_PSDS_SERVER_INDEX:I = 0x2

.field static final PSDS_INTERVAL:J = 0x5265c00L

.field private static final READ_TIMEOUT_MS:I

.field private static final REALTIME_PSDS_SERVER_INDEX:I = 0x3

.field private static final TAG:Ljava/lang/String; = "GnssPsdsDownloader"


# instance fields
.field private final mLongTermPsdsServers:[Ljava/lang/String;

.field private mNextServerIndex:I

.field private final mPsdsServers:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 46
    const-string v0, "GnssPsdsDownloader"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/location/gnss/GnssPsdsDownloader;->DEBUG:Z

    .line 48
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    long-to-int v0, v0

    sput v0, Lcom/android/server/location/gnss/GnssPsdsDownloader;->CONNECTION_TIMEOUT_MS:I

    .line 49
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3c

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    long-to-int v0, v0

    sput v0, Lcom/android/server/location/gnss/GnssPsdsDownloader;->READ_TIMEOUT_MS:I

    return-void
.end method

.method constructor <init>(Ljava/util/Properties;)V
    .registers 10
    .param p1, "properties"    # Ljava/util/Properties;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/4 v0, 0x0

    .line 64
    .local v0, "count":I
    const-string v1, "LONGTERM_PSDS_SERVER_1"

    invoke-virtual {p1, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 66
    .local v1, "longTermPsdsServer1":Ljava/lang/String;
    const-string v2, "LONGTERM_PSDS_SERVER_2"

    invoke-virtual {p1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 68
    .local v2, "longTermPsdsServer2":Ljava/lang/String;
    const-string v3, "LONGTERM_PSDS_SERVER_3"

    invoke-virtual {p1, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 70
    .local v3, "longTermPsdsServer3":Ljava/lang/String;
    if-eqz v1, :cond_1a

    add-int/lit8 v0, v0, 0x1

    .line 71
    :cond_1a
    if-eqz v2, :cond_1e

    add-int/lit8 v0, v0, 0x1

    .line 72
    :cond_1e
    if-eqz v3, :cond_22

    add-int/lit8 v0, v0, 0x1

    .line 74
    :cond_22
    if-nez v0, :cond_2f

    .line 75
    const-string v4, "GnssPsdsDownloader"

    const-string v5, "No Long-Term PSDS servers were specified in the GnssConfiguration"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/location/gnss/GnssPsdsDownloader;->mLongTermPsdsServers:[Ljava/lang/String;

    goto :goto_54

    .line 78
    :cond_2f
    new-array v4, v0, [Ljava/lang/String;

    iput-object v4, p0, Lcom/android/server/location/gnss/GnssPsdsDownloader;->mLongTermPsdsServers:[Ljava/lang/String;

    .line 79
    const/4 v0, 0x0

    .line 80
    if-eqz v1, :cond_3b

    add-int/lit8 v5, v0, 0x1

    .end local v0    # "count":I
    .local v5, "count":I
    aput-object v1, v4, v0

    move v0, v5

    .line 81
    .end local v5    # "count":I
    .restart local v0    # "count":I
    :cond_3b
    if-eqz v2, :cond_42

    add-int/lit8 v5, v0, 0x1

    .end local v0    # "count":I
    .restart local v5    # "count":I
    aput-object v2, v4, v0

    move v0, v5

    .line 82
    .end local v5    # "count":I
    .restart local v0    # "count":I
    :cond_42
    if-eqz v3, :cond_49

    add-int/lit8 v5, v0, 0x1

    .end local v0    # "count":I
    .restart local v5    # "count":I
    aput-object v3, v4, v0

    move v0, v5

    .line 85
    .end local v5    # "count":I
    .restart local v0    # "count":I
    :cond_49
    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    .line 86
    .local v4, "random":Ljava/util/Random;
    invoke-virtual {v4, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    iput v5, p0, Lcom/android/server/location/gnss/GnssPsdsDownloader;->mNextServerIndex:I

    .line 89
    .end local v4    # "random":Ljava/util/Random;
    :goto_54
    const-string v4, "NORMAL_PSDS_SERVER"

    invoke-virtual {p1, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 91
    .local v4, "normalPsdsServer":Ljava/lang/String;
    const-string v5, "REALTIME_PSDS_SERVER"

    invoke-virtual {p1, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 93
    .local v5, "realtimePsdsServer":Ljava/lang/String;
    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/String;

    iput-object v6, p0, Lcom/android/server/location/gnss/GnssPsdsDownloader;->mPsdsServers:[Ljava/lang/String;

    .line 94
    const/4 v7, 0x2

    aput-object v4, v6, v7

    .line 95
    const/4 v7, 0x3

    aput-object v5, v6, v7

    .line 96
    return-void
.end method

.method private doDownload(Ljava/lang/String;)[B
    .registers 15
    .param p1, "url"    # Ljava/lang/String;

    .line 145
    sget-boolean v0, Lcom/android/server/location/gnss/GnssPsdsDownloader;->DEBUG:Z

    const-string v1, "GnssPsdsDownloader"

    if-eqz v0, :cond_1c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Downloading PSDS data from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :cond_1c
    const/4 v2, 0x0

    .line 149
    .local v2, "connection":Ljava/net/HttpURLConnection;
    const/4 v3, 0x0

    :try_start_1e
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    check-cast v4, Ljava/net/HttpURLConnection;

    move-object v2, v4

    .line 150
    const-string v4, "Accept"

    const-string v5, "*/*, application/vnd.wap.mms-message, application/vnd.wap.sic"

    invoke-virtual {v2, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    const-string/jumbo v4, "x-wap-profile"

    const-string/jumbo v5, "http://www.openmobilealliance.org/tech/profiles/UAPROF/ccppschema-20021212#"

    invoke-virtual {v2, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    sget v4, Lcom/android/server/location/gnss/GnssPsdsDownloader;->CONNECTION_TIMEOUT_MS:I

    invoke-virtual {v2, v4}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 157
    sget v4, Lcom/android/server/location/gnss/GnssPsdsDownloader;->READ_TIMEOUT_MS:I

    invoke-virtual {v2, v4}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 159
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->connect()V

    .line 160
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    .line 161
    .local v4, "statusCode":I
    const/16 v5, 0xc8

    if-eq v4, v5, :cond_6e

    .line 162
    if-eqz v0, :cond_67

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HTTP error downloading gnss PSDS: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_67
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_67} :catch_c5
    .catchall {:try_start_1e .. :try_end_67} :catchall_c3

    .line 163
    :cond_67
    nop

    .line 182
    if-eqz v2, :cond_6d

    .line 183
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 163
    :cond_6d
    return-object v3

    .line 166
    :cond_6e
    :try_start_6e
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_72
    .catch Ljava/io/IOException; {:try_start_6e .. :try_end_72} :catch_c5
    .catchall {:try_start_6e .. :try_end_72} :catchall_c3

    .line 167
    .local v0, "in":Ljava/io/InputStream;
    :try_start_72
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 168
    .local v5, "bytes":Ljava/io/ByteArrayOutputStream;
    const/16 v6, 0x400

    new-array v6, v6, [B

    .line 170
    .local v6, "buffer":[B
    :cond_7b
    invoke-virtual {v0, v6}, Ljava/io/InputStream;->read([B)I

    move-result v7

    move v8, v7

    .local v8, "count":I
    const/4 v9, -0x1

    if-eq v7, v9, :cond_a8

    .line 171
    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 172
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v7

    int-to-long v9, v7

    const-wide/32 v11, 0xf4240

    cmp-long v7, v9, v11

    if-lez v7, :cond_7b

    .line 173
    sget-boolean v7, Lcom/android/server/location/gnss/GnssPsdsDownloader;->DEBUG:Z

    if-eqz v7, :cond_9c

    const-string v7, "PSDS file too large"

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9c
    .catchall {:try_start_72 .. :try_end_9c} :catchall_b7

    .line 174
    :cond_9c
    nop

    .line 178
    if-eqz v0, :cond_a2

    :try_start_9f
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_a2
    .catch Ljava/io/IOException; {:try_start_9f .. :try_end_a2} :catch_c5
    .catchall {:try_start_9f .. :try_end_a2} :catchall_c3

    .line 182
    :cond_a2
    if-eqz v2, :cond_a7

    .line 183
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 174
    :cond_a7
    return-object v3

    .line 177
    :cond_a8
    :try_start_a8
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7
    :try_end_ac
    .catchall {:try_start_a8 .. :try_end_ac} :catchall_b7

    .line 178
    if-eqz v0, :cond_b1

    :try_start_ae
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_b1
    .catch Ljava/io/IOException; {:try_start_ae .. :try_end_b1} :catch_c5
    .catchall {:try_start_ae .. :try_end_b1} :catchall_c3

    .line 182
    :cond_b1
    if-eqz v2, :cond_b6

    .line 183
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 177
    :cond_b6
    return-object v7

    .line 166
    .end local v5    # "bytes":Ljava/io/ByteArrayOutputStream;
    .end local v6    # "buffer":[B
    .end local v8    # "count":I
    :catchall_b7
    move-exception v5

    if-eqz v0, :cond_c2

    :try_start_ba
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_bd
    .catchall {:try_start_ba .. :try_end_bd} :catchall_be

    goto :goto_c2

    :catchall_be
    move-exception v6

    :try_start_bf
    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v2    # "connection":Ljava/net/HttpURLConnection;
    .end local p0    # "this":Lcom/android/server/location/gnss/GnssPsdsDownloader;
    .end local p1    # "url":Ljava/lang/String;
    :cond_c2
    :goto_c2
    throw v5
    :try_end_c3
    .catch Ljava/io/IOException; {:try_start_bf .. :try_end_c3} :catch_c5
    .catchall {:try_start_bf .. :try_end_c3} :catchall_c3

    .line 182
    .end local v0    # "in":Ljava/io/InputStream;
    .end local v4    # "statusCode":I
    .restart local v2    # "connection":Ljava/net/HttpURLConnection;
    .restart local p0    # "this":Lcom/android/server/location/gnss/GnssPsdsDownloader;
    .restart local p1    # "url":Ljava/lang/String;
    :catchall_c3
    move-exception v0

    goto :goto_d5

    .line 179
    :catch_c5
    move-exception v0

    .line 180
    .local v0, "ioe":Ljava/io/IOException;
    :try_start_c6
    sget-boolean v4, Lcom/android/server/location/gnss/GnssPsdsDownloader;->DEBUG:Z

    if-eqz v4, :cond_cf

    const-string v4, "Error downloading gnss PSDS: "

    invoke-static {v1, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_cf
    .catchall {:try_start_c6 .. :try_end_cf} :catchall_c3

    .line 182
    .end local v0    # "ioe":Ljava/io/IOException;
    :cond_cf
    if-eqz v2, :cond_d4

    .line 183
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 186
    :cond_d4
    return-object v3

    .line 182
    :goto_d5
    if-eqz v2, :cond_da

    .line 183
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 185
    :cond_da
    throw v0
.end method

.method private doDownloadWithTrafficAccounted(Ljava/lang/String;)[B
    .registers 4
    .param p1, "url"    # Ljava/lang/String;

    .line 133
    const/16 v0, -0xbc

    invoke-static {v0}, Landroid/net/TrafficStats;->getAndSetThreadStatsTag(I)I

    move-result v0

    .line 136
    .local v0, "oldTag":I
    :try_start_6
    invoke-direct {p0, p1}, Lcom/android/server/location/gnss/GnssPsdsDownloader;->doDownload(Ljava/lang/String;)[B

    move-result-object v1
    :try_end_a
    .catchall {:try_start_6 .. :try_end_a} :catchall_f

    .line 138
    .local v1, "result":[B
    invoke-static {v0}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 139
    nop

    .line 140
    return-object v1

    .line 138
    .end local v1    # "result":[B
    :catchall_f
    move-exception v1

    invoke-static {v0}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 139
    throw v1
.end method


# virtual methods
.method downloadPsdsData(I)[B
    .registers 8
    .param p1, "psdsType"    # I

    .line 100
    const/4 v0, 0x0

    .line 101
    .local v0, "result":[B
    iget v1, p0, Lcom/android/server/location/gnss/GnssPsdsDownloader;->mNextServerIndex:I

    .line 103
    .local v1, "startIndex":I
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p1, v3, :cond_c

    iget-object v4, p0, Lcom/android/server/location/gnss/GnssPsdsDownloader;->mLongTermPsdsServers:[Ljava/lang/String;

    if-nez v4, :cond_c

    .line 104
    return-object v2

    .line 105
    :cond_c
    const/4 v4, 0x3

    if-le p1, v3, :cond_18

    if-gt p1, v4, :cond_18

    iget-object v5, p0, Lcom/android/server/location/gnss/GnssPsdsDownloader;->mPsdsServers:[Ljava/lang/String;

    aget-object v5, v5, p1

    if-nez v5, :cond_18

    .line 107
    return-object v2

    .line 110
    :cond_18
    if-ne p1, v3, :cond_38

    .line 112
    :cond_1a
    if-nez v0, :cond_44

    .line 113
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssPsdsDownloader;->mLongTermPsdsServers:[Ljava/lang/String;

    iget v4, p0, Lcom/android/server/location/gnss/GnssPsdsDownloader;->mNextServerIndex:I

    aget-object v2, v2, v4

    invoke-direct {p0, v2}, Lcom/android/server/location/gnss/GnssPsdsDownloader;->doDownloadWithTrafficAccounted(Ljava/lang/String;)[B

    move-result-object v0

    .line 116
    iget v2, p0, Lcom/android/server/location/gnss/GnssPsdsDownloader;->mNextServerIndex:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/server/location/gnss/GnssPsdsDownloader;->mNextServerIndex:I

    .line 117
    iget-object v4, p0, Lcom/android/server/location/gnss/GnssPsdsDownloader;->mLongTermPsdsServers:[Ljava/lang/String;

    array-length v4, v4

    if-ne v2, v4, :cond_33

    .line 118
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/location/gnss/GnssPsdsDownloader;->mNextServerIndex:I

    .line 121
    :cond_33
    iget v2, p0, Lcom/android/server/location/gnss/GnssPsdsDownloader;->mNextServerIndex:I

    if-ne v2, v1, :cond_1a

    goto :goto_44

    .line 123
    :cond_38
    if-le p1, v3, :cond_44

    if-gt p1, v4, :cond_44

    .line 124
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssPsdsDownloader;->mPsdsServers:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-direct {p0, v2}, Lcom/android/server/location/gnss/GnssPsdsDownloader;->doDownloadWithTrafficAccounted(Ljava/lang/String;)[B

    move-result-object v0

    .line 127
    :cond_44
    :goto_44
    return-object v0
.end method
