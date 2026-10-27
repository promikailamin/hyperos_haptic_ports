.class public abstract Lcom/android/server/am/LogcatFetcher;
.super Ljava/lang/Object;
.source "LogcatFetcher.java"


# static fields
.field public static final ALL_BUFFERS:Ljava/util/List;

.field public static final CORE_BUFFERS:Ljava/util/List;

.field public static final LOGCAT_FORMATTER:Ljava/time/format/DateTimeFormatter;

.field public static final LOGCAT_TIMEOUT_SEC:I = 0xf


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 58
    const-string/jumbo v0, "main"

    const-string v1, "crash"

    .line 59
    const-string v2, "events"

    const-string/jumbo v3, "system"

    invoke-static {v2, v3, v0, v1}, Ljava/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/LogcatFetcher;->CORE_BUFFERS:Ljava/util/List;

    .line 63
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    const-string/jumbo v1, "kernel"

    invoke-static {v1}, Ljava/util/stream/Stream;->of(Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/stream/Stream;->concat(Ljava/util/stream/Stream;Ljava/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/LogcatFetcher;->ALL_BUFFERS:Ljava/util/List;

    .line 66
    const-string v0, "MM-dd HH:mm:ss.SSS"

    .line 67
    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sget-object v1, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    .line 68
    invoke-virtual {v0, v1}, Ljava/time/format/DateTimeFormatter;->withZone(Ljava/time/ZoneId;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/LogcatFetcher;->LOGCAT_FORMATTER:Ljava/time/format/DateTimeFormatter;

    return-void
.end method

.method public static appendLogcatLogs(Ljava/lang/StringBuilder;ILjava/time/Instant;II)V
    .registers 6

    .line 87
    sget-object v0, Lcom/android/server/am/LogcatFetcher;->LOGCAT_FORMATTER:Ljava/time/format/DateTimeFormatter;

    invoke-virtual {v0, p2}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object p2

    add-int/2addr p3, p4

    const/16 v0, 0x1f40

    .line 88
    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    if-lez p3, :cond_23

    const/16 v0, 0xc8

    if-lt p1, v0, :cond_23

    .line 92
    sget v0, Lcom/android/server/am/LogcatFetcher;->LOGCAT_TIMEOUT_SEC:I

    if-lez p4, :cond_1a

    .line 93
    sget-object p4, Lcom/android/server/am/LogcatFetcher;->ALL_BUFFERS:Ljava/util/List;

    goto :goto_1c

    :cond_1a
    sget-object p4, Lcom/android/server/am/LogcatFetcher;->CORE_BUFFERS:Ljava/util/List;

    .line 92
    :goto_1c
    invoke-static {p3, v0, p2, p4}, Lcom/android/server/am/LogcatFetcher;->fetchLogcatBuffers(IILjava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    .line 94
    invoke-static {p0, p2, p1}, Lcom/android/server/am/LogcatFetcher;->trimAndAppendLogs(Ljava/lang/StringBuilder;Ljava/util/List;I)I

    :cond_23
    return-void
.end method

.method public static extractLogTimestamp(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 174
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x12

    if-ge v0, v1, :cond_9

    return-object p0

    :cond_9
    const/4 v0, 0x0

    .line 178
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static fetchLogcatBuffers(IILjava/lang/String;Ljava/util/List;)Ljava/util/List;
    .registers 7

    .line 109
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d6

    if-lez p0, :cond_d6

    if-gtz p1, :cond_c

    goto/16 :goto_d6

    .line 112
    :cond_c
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(I)V

    .line 113
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0xa

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 116
    const-string v2, "/system/bin/timeout"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    const-string v2, "-i"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    const-string v2, "-s"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    const-string v2, "ABRT"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "s"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    const-string p1, "/system/bin/logcat"

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    const-string p1, "-v"

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    const-string/jumbo p1, "threadtime,UTC"

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_70

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 129
    const-string v2, "-b"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    invoke-interface {v1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5b

    .line 133
    :cond_70
    const-string p1, "-t"

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    :try_start_7c
    new-instance p0, Ljava/lang/ProcessBuilder;

    invoke-direct {p0, v1}, Ljava/lang/ProcessBuilder;-><init>(Ljava/util/List;)V

    const/4 p1, 0x1

    .line 137
    invoke-virtual {p0, p1}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object p0
    :try_end_8a
    .catch Ljava/io/IOException; {:try_start_7c .. :try_end_8a} :catch_c3

    .line 141
    :try_start_8a
    invoke-virtual {p0}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_91
    .catch Ljava/io/IOException; {:try_start_8a .. :try_end_91} :catch_91

    .line 145
    :catch_91
    :try_start_91
    new-instance p1, Ljava/io/BufferedReader;

    new-instance p3, Ljava/io/InputStreamReader;

    .line 146
    invoke-virtual {p0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    invoke-direct {p3, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 p0, 0x2000

    invoke-direct {p1, p3, p0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_a1
    .catch Ljava/io/IOException; {:try_start_91 .. :try_end_a1} :catch_c3

    .line 148
    :cond_a1
    :goto_a1
    :try_start_a1
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_bf

    .line 150
    invoke-static {p0}, Lcom/android/server/am/LogcatFetcher;->extractLogTimestamp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p3

    if-gtz p3, :cond_bf

    .line 152
    const-string p3, "---------"

    invoke-virtual {p0, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_a1

    .line 153
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_bc
    .catchall {:try_start_a1 .. :try_end_bc} :catchall_bd

    goto :goto_a1

    :catchall_bd
    move-exception p0

    goto :goto_c5

    .line 156
    :cond_bf
    :try_start_bf
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_c2
    .catch Ljava/io/IOException; {:try_start_bf .. :try_end_c2} :catch_c3

    goto :goto_d5

    :catch_c3
    move-exception p0

    goto :goto_ce

    .line 145
    :goto_c5
    :try_start_c5
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_c8
    .catchall {:try_start_c5 .. :try_end_c8} :catchall_c9

    goto :goto_cd

    :catchall_c9
    move-exception p1

    :try_start_ca
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_cd
    throw p0
    :try_end_ce
    .catch Ljava/io/IOException; {:try_start_ca .. :try_end_ce} :catch_c3

    .line 158
    :goto_ce
    const-string p1, "ActivityManager"

    const-string p2, "Error running logcat"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_d5
    return-object v0

    .line 110
    :cond_d6
    :goto_d6
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0
.end method

.method public static trimAndAppendLogs(Ljava/lang/StringBuilder;Ljava/util/List;I)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)I"
        }
    .end annotation

    .line 195
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 198
    :cond_8
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/16 v2, 0x1e

    :goto_10
    if-ltz v0, :cond_31

    .line 204
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v2

    add-int/lit8 v3, v3, 0x1

    if-gt v3, p2, :cond_31

    .line 205
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v2, v3

    add-int/lit8 v0, v0, -0x1

    goto :goto_10

    .line 210
    :cond_31
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    if-ne v0, p2, :cond_3a

    return v1

    .line 213
    :cond_3a
    const-string p2, "--------- beginning of logcat"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\n"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_44
    add-int/lit8 v0, v0, 0x1

    .line 215
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_59

    .line 216
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_44

    :cond_59
    return v2
.end method
