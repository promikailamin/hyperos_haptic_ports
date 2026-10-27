.class public Landroid/util/TimeUtils;
.super Ljava/lang/Object;
.source "TimeUtils.java"


# static fields
.field public static final greylist-max-o HUNDRED_DAY_FIELD_LEN:I = 0x13

.field public static final blacklist MIN_USE_DATE_OF_TIMEZONE:Ljava/time/Instant;

.field public static final greylist-max-o NANOS_PER_MS:J = 0xf4240L

.field private static final greylist-max-o SECONDS_PER_DAY:I = 0x15180

.field private static final greylist-max-o SECONDS_PER_HOUR:I = 0xe10

.field private static final greylist-max-o SECONDS_PER_MINUTE:I = 0x3c

.field public static final blacklist sDumpDateFormat:Ljava/text/SimpleDateFormat;

.field private static greylist-max-o sFormatStr:[C

.field private static final greylist-max-o sFormatSync:Ljava/lang/Object;

.field private static final greylist-max-o sLoggingFormat:Ljava/text/SimpleDateFormat;

.field private static greylist-max-o sTmpFormatStr:[C


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 49
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/util/TimeUtils;->sLoggingFormat:Ljava/text/SimpleDateFormat;

    .line 53
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/util/TimeUtils;->sDumpDateFormat:Ljava/text/SimpleDateFormat;

    .line 79
    nop

    .line 80
    const-wide v0, 0x16806b5bc00L

    invoke-static {v0, v1}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v0

    sput-object v0, Landroid/util/TimeUtils;->MIN_USE_DATE_OF_TIMEZONE:Ljava/time/Instant;

    .line 181
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/util/TimeUtils;->sFormatSync:Ljava/lang/Object;

    .line 182
    const/16 v0, 0x1d

    new-array v1, v0, [C

    sput-object v1, Landroid/util/TimeUtils;->sFormatStr:[C

    .line 183
    new-array v0, v0, [C

    sput-object v0, Landroid/util/TimeUtils;->sTmpFormatStr:[C

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static greylist-max-o accumField(IIZI)I
    .registers 7

    .line 187
    const/16 v0, 0x3e7

    const/4 v1, 0x0

    if-le p0, v0, :cond_f

    .line 188
    nop

    .line 189
    :goto_6
    if-eqz p0, :cond_d

    .line 190
    add-int/lit8 v1, v1, 0x1

    .line 191
    div-int/lit8 p0, p0, 0xa

    goto :goto_6

    .line 193
    :cond_d
    add-int/2addr v1, p1

    return v1

    .line 195
    :cond_f
    const/16 v0, 0x63

    const/4 v2, 0x3

    if-gt p0, v0, :cond_2e

    if-eqz p2, :cond_19

    if-lt p3, v2, :cond_19

    goto :goto_2e

    .line 198
    :cond_19
    const/16 v0, 0x9

    const/4 v2, 0x2

    if-gt p0, v0, :cond_2c

    if-eqz p2, :cond_23

    if-lt p3, v2, :cond_23

    goto :goto_2c

    .line 201
    :cond_23
    if-nez p2, :cond_29

    if-lez p0, :cond_28

    goto :goto_29

    .line 205
    :cond_28
    return v1

    .line 202
    :cond_29
    :goto_29
    add-int/lit8 p1, p1, 0x1

    return p1

    .line 199
    :cond_2c
    :goto_2c
    add-int/2addr p1, v2

    return p1

    .line 196
    :cond_2e
    :goto_2e
    add-int/2addr p1, v2

    return p1
.end method

.method public static blacklist dumpTime(Ljava/io/PrintWriter;J)V
    .registers 5

    .line 448
    sget-object v0, Landroid/util/TimeUtils;->sDumpDateFormat:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 449
    return-void
.end method

.method public static blacklist dumpTimeWithDelta(Ljava/io/PrintWriter;JJ)V
    .registers 7

    .line 480
    sget-object v0, Landroid/util/TimeUtils;->sDumpDateFormat:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 481
    cmp-long v0, p1, p3

    if-nez v0, :cond_18

    .line 482
    const-string p1, " (now)"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_25

    .line 484
    :cond_18
    const-string v0, " ("

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 485
    invoke-static {p1, p2, p3, p4, p0}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 486
    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 488
    :goto_25
    return-void
.end method

.method public static greylist-max-o formatDuration(J)Ljava/lang/String;
    .registers 5

    .line 353
    sget-object v0, Landroid/util/TimeUtils;->sFormatSync:Ljava/lang/Object;

    monitor-enter v0

    .line 354
    const/4 v1, 0x0

    :try_start_4
    invoke-static {p0, p1, v1}, Landroid/util/TimeUtils;->formatDurationLocked(JI)I

    move-result p0

    .line 355
    new-instance p1, Ljava/lang/String;

    sget-object v2, Landroid/util/TimeUtils;->sFormatStr:[C

    invoke-direct {p1, v2, v1, p0}, Ljava/lang/String;-><init>([CII)V

    monitor-exit v0

    return-object p1

    .line 356
    :catchall_11
    move-exception p0

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_11

    throw p0
.end method

.method public static greylist-max-o formatDuration(JJLjava/io/PrintWriter;)V
    .registers 7

    .line 379
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-nez v0, :cond_c

    .line 380
    const-string p0, "--"

    invoke-virtual {p4, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 381
    return-void

    .line 383
    :cond_c
    sub-long/2addr p0, p2

    const/4 p2, 0x0

    invoke-static {p0, p1, p4, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;I)V

    .line 384
    return-void
.end method

.method public static blacklist formatDuration(JJLjava/lang/StringBuilder;)V
    .registers 7

    .line 369
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-nez v0, :cond_c

    .line 370
    const-string p0, "--"

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    return-void

    .line 373
    :cond_c
    sub-long/2addr p0, p2

    const/4 p2, 0x0

    invoke-static {p0, p1, p4, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;I)V

    .line 374
    return-void
.end method

.method public static greylist-max-p formatDuration(JLjava/io/PrintWriter;)V
    .registers 4

    .line 363
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;I)V

    .line 364
    return-void
.end method

.method public static greylist-max-p formatDuration(JLjava/io/PrintWriter;I)V
    .registers 6

    .line 343
    sget-object v0, Landroid/util/TimeUtils;->sFormatSync:Ljava/lang/Object;

    monitor-enter v0

    .line 344
    :try_start_3
    invoke-static {p0, p1, p3}, Landroid/util/TimeUtils;->formatDurationLocked(JI)I

    move-result p0

    .line 345
    new-instance p1, Ljava/lang/String;

    sget-object p3, Landroid/util/TimeUtils;->sFormatStr:[C

    const/4 v1, 0x0

    invoke-direct {p1, p3, v1, p0}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 346
    monitor-exit v0

    .line 347
    return-void

    .line 346
    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw p0
.end method

.method public static greylist-max-o formatDuration(JLjava/lang/StringBuilder;)V
    .registers 5

    .line 324
    sget-object v0, Landroid/util/TimeUtils;->sFormatSync:Ljava/lang/Object;

    monitor-enter v0

    .line 325
    const/4 v1, 0x0

    :try_start_4
    invoke-static {p0, p1, v1}, Landroid/util/TimeUtils;->formatDurationLocked(JI)I

    move-result p0

    .line 326
    sget-object p1, Landroid/util/TimeUtils;->sFormatStr:[C

    invoke-virtual {p2, p1, v1, p0}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 327
    monitor-exit v0

    .line 328
    return-void

    .line 327
    :catchall_f
    move-exception p0

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_4 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public static greylist-max-o formatDuration(JLjava/lang/StringBuilder;I)V
    .registers 5

    .line 333
    sget-object v0, Landroid/util/TimeUtils;->sFormatSync:Ljava/lang/Object;

    monitor-enter v0

    .line 334
    :try_start_3
    invoke-static {p0, p1, p3}, Landroid/util/TimeUtils;->formatDurationLocked(JI)I

    move-result p0

    .line 335
    sget-object p1, Landroid/util/TimeUtils;->sFormatStr:[C

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p3, p0}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 336
    monitor-exit v0

    .line 337
    return-void

    .line 336
    :catchall_f
    move-exception p0

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw p0
.end method

.method private static greylist-max-o formatDurationLocked(JI)I
    .registers 19

    .line 251
    move-wide/from16 v0, p0

    move/from16 v2, p2

    sget-object v3, Landroid/util/TimeUtils;->sFormatStr:[C

    array-length v3, v3

    if-ge v3, v2, :cond_d

    .line 252
    new-array v3, v2, [C

    sput-object v3, Landroid/util/TimeUtils;->sFormatStr:[C

    .line 255
    :cond_d
    sget-object v4, Landroid/util/TimeUtils;->sFormatStr:[C

    .line 257
    const-wide/16 v5, 0x0

    cmp-long v3, v0, v5

    const/16 v5, 0x20

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-nez v3, :cond_2a

    .line 258
    nop

    .line 259
    add-int/lit8 v0, v2, -0x1

    .line 260
    :goto_1c
    if-ge v11, v0, :cond_24

    .line 261
    add-int/lit8 v1, v11, 0x1

    aput-char v5, v4, v11

    move v11, v1

    goto :goto_1c

    .line 263
    :cond_24
    const/16 v0, 0x30

    aput-char v0, v4, v11

    .line 264
    add-int/2addr v11, v10

    return v11

    .line 268
    :cond_2a
    if-lez v3, :cond_2f

    .line 269
    const/16 v3, 0x2b

    goto :goto_33

    .line 271
    :cond_2f
    nop

    .line 272
    neg-long v0, v0

    const/16 v3, 0x2d

    .line 275
    :goto_33
    const-wide/16 v6, 0x3e8

    rem-long v8, v0, v6

    long-to-int v12, v8

    .line 276
    div-long/2addr v0, v6

    long-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 277
    nop

    .line 279
    const v1, 0x15180

    if-lt v0, v1, :cond_4a

    .line 280
    div-int v6, v0, v1

    .line 281
    mul-int/2addr v1, v6

    sub-int/2addr v0, v1

    goto :goto_4b

    .line 279
    :cond_4a
    move v6, v11

    .line 283
    :goto_4b
    const/16 v1, 0xe10

    if-lt v0, v1, :cond_55

    .line 284
    div-int/lit16 v1, v0, 0xe10

    .line 285
    mul-int/lit16 v7, v1, 0xe10

    sub-int/2addr v0, v7

    goto :goto_56

    .line 283
    :cond_55
    move v1, v11

    .line 287
    :goto_56
    const/16 v7, 0x3c

    if-lt v0, v7, :cond_61

    .line 288
    div-int/lit8 v7, v0, 0x3c

    .line 289
    mul-int/lit8 v8, v7, 0x3c

    sub-int/2addr v0, v8

    move v13, v7

    goto :goto_62

    .line 287
    :cond_61
    move v13, v11

    .line 292
    :goto_62
    nop

    .line 294
    const/4 v14, 0x3

    const/4 v15, 0x2

    if-eqz v2, :cond_9e

    .line 295
    invoke-static {v6, v10, v11, v11}, Landroid/util/TimeUtils;->accumField(IIZI)I

    move-result v7

    .line 296
    if-lez v7, :cond_6f

    move v8, v10

    goto :goto_70

    :cond_6f
    move v8, v11

    :goto_70
    invoke-static {v1, v10, v8, v15}, Landroid/util/TimeUtils;->accumField(IIZI)I

    move-result v8

    add-int/2addr v7, v8

    .line 297
    if-lez v7, :cond_79

    move v8, v10

    goto :goto_7a

    :cond_79
    move v8, v11

    :goto_7a
    invoke-static {v13, v10, v8, v15}, Landroid/util/TimeUtils;->accumField(IIZI)I

    move-result v8

    add-int/2addr v7, v8

    .line 298
    if-lez v7, :cond_83

    move v8, v10

    goto :goto_84

    :cond_83
    move v8, v11

    :goto_84
    invoke-static {v0, v10, v8, v15}, Landroid/util/TimeUtils;->accumField(IIZI)I

    move-result v8

    add-int/2addr v7, v8

    .line 299
    if-lez v7, :cond_8d

    move v8, v14

    goto :goto_8e

    :cond_8d
    move v8, v11

    :goto_8e
    invoke-static {v12, v15, v10, v8}, Landroid/util/TimeUtils;->accumField(IIZI)I

    move-result v8

    add-int/2addr v8, v10

    add-int/2addr v7, v8

    move v8, v11

    .line 300
    :goto_95
    if-ge v7, v2, :cond_9f

    .line 301
    aput-char v5, v4, v8

    .line 302
    add-int/lit8 v8, v8, 0x1

    .line 303
    add-int/lit8 v7, v7, 0x1

    goto :goto_95

    .line 294
    :cond_9e
    move v8, v11

    .line 307
    :cond_9f
    aput-char v3, v4, v8

    .line 308
    add-int/lit8 v7, v8, 0x1

    .line 310
    nop

    .line 311
    if-eqz v2, :cond_a8

    move v2, v10

    goto :goto_a9

    :cond_a8
    move v2, v11

    .line 312
    :goto_a9
    const/4 v8, 0x0

    const/4 v9, 0x0

    move v5, v6

    const/16 v6, 0x64

    invoke-static/range {v4 .. v9}, Landroid/util/TimeUtils;->printFieldLocked([CICIZI)I

    move-result v3

    .line 313
    move v5, v7

    if-eq v3, v5, :cond_b7

    move v8, v10

    goto :goto_b8

    :cond_b7
    move v8, v11

    :goto_b8
    if-eqz v2, :cond_bc

    move v9, v15

    goto :goto_bd

    :cond_bc
    move v9, v11

    :goto_bd
    const/16 v6, 0x68

    move v7, v5

    move v5, v1

    move v1, v7

    move v7, v3

    invoke-static/range {v4 .. v9}, Landroid/util/TimeUtils;->printFieldLocked([CICIZI)I

    move-result v7

    .line 314
    if-eq v7, v1, :cond_cb

    move v8, v10

    goto :goto_cc

    :cond_cb
    move v8, v11

    :goto_cc
    if-eqz v2, :cond_d0

    move v9, v15

    goto :goto_d1

    :cond_d0
    move v9, v11

    :goto_d1
    const/16 v6, 0x6d

    move v5, v13

    invoke-static/range {v4 .. v9}, Landroid/util/TimeUtils;->printFieldLocked([CICIZI)I

    move-result v7

    .line 315
    if-eq v7, v1, :cond_dc

    move v8, v10

    goto :goto_dd

    :cond_dc
    move v8, v11

    :goto_dd
    if-eqz v2, :cond_e1

    move v9, v15

    goto :goto_e2

    :cond_e1
    move v9, v11

    :goto_e2
    const/16 v6, 0x73

    move v5, v0

    invoke-static/range {v4 .. v9}, Landroid/util/TimeUtils;->printFieldLocked([CICIZI)I

    move-result v7

    .line 316
    if-eqz v2, :cond_ef

    if-eq v7, v1, :cond_ef

    move v9, v14

    goto :goto_f0

    :cond_ef
    move v9, v11

    :goto_f0
    const/16 v6, 0x6d

    const/4 v8, 0x1

    move v5, v12

    invoke-static/range {v4 .. v9}, Landroid/util/TimeUtils;->printFieldLocked([CICIZI)I

    move-result v0

    .line 317
    const/16 v1, 0x73

    aput-char v1, v4, v0

    .line 318
    add-int/2addr v0, v10

    return v0
.end method

.method public static greylist-max-o formatForLogging(J)Ljava/lang/String;
    .registers 4

    .line 434
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gtz v0, :cond_9

    .line 435
    const-string p0, "unknown"

    return-object p0

    .line 437
    :cond_9
    sget-object v0, Landroid/util/TimeUtils;->sLoggingFormat:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist formatRealtime(J)Ljava/lang/String;
    .registers 4

    .line 395
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Landroid/util/TimeUtils;->formatTime(JJ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist formatTime(JJ)Ljava/lang/String;
    .registers 6

    .line 401
    sub-long p2, p0, p2

    .line 402
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_26

    .line 403
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " (in "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " ms)"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 405
    :cond_26
    if-gez v0, :cond_47

    .line 406
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " ("

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    neg-long p1, p2

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " ms ago)"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 408
    :cond_47
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " (now)"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static greylist-max-o formatUptime(J)Ljava/lang/String;
    .registers 4

    .line 389
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Landroid/util/TimeUtils;->formatTime(JJ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static greylist-max-o getIcuTimeZone(IZJLjava/lang/String;)Landroid/icu/util/TimeZone;
    .registers 12

    .line 103
    const/4 v0, 0x0

    if-nez p4, :cond_4

    .line 104
    return-object v0

    .line 107
    :cond_4
    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    move-result-object v4

    .line 109
    invoke-static {}, Lcom/android/i18n/timezone/TimeZoneFinder;->getInstance()Lcom/android/i18n/timezone/TimeZoneFinder;

    move-result-object v1

    invoke-virtual {v1, p4}, Lcom/android/i18n/timezone/TimeZoneFinder;->lookupCountryTimeZones(Ljava/lang/String;)Lcom/android/i18n/timezone/CountryTimeZones;

    move-result-object v1

    .line 110
    if-nez v1, :cond_13

    .line 111
    return-object v0

    .line 113
    :cond_13
    move v5, p0

    move v6, p1

    move-wide v2, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/i18n/timezone/CountryTimeZones;->lookupByOffsetWithBias(JLandroid/icu/util/TimeZone;IZ)Lcom/android/i18n/timezone/CountryTimeZones$OffsetResult;

    move-result-object p0

    .line 115
    if-eqz p0, :cond_20

    invoke-virtual {p0}, Lcom/android/i18n/timezone/CountryTimeZones$OffsetResult;->getTimeZone()Landroid/icu/util/TimeZone;

    move-result-object v0

    :cond_20
    return-object v0
.end method

.method public static whitelist getTimeZone(IZJLjava/lang/String;)Ljava/util/TimeZone;
    .registers 5

    .line 90
    invoke-static {p0, p1, p2, p3, p4}, Landroid/util/TimeUtils;->getIcuTimeZone(IZJLjava/lang/String;)Landroid/icu/util/TimeZone;

    move-result-object p0

    .line 93
    if-eqz p0, :cond_f

    invoke-virtual {p0}, Landroid/icu/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p0

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    return-object p0
.end method

.method public static whitelist getTimeZoneDatabaseVersion()Ljava/lang/String;
    .registers 1

    .line 168
    invoke-static {}, Lcom/android/i18n/timezone/ZoneInfoDb;->getInstance()Lcom/android/i18n/timezone/ZoneInfoDb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/i18n/timezone/ZoneInfoDb;->getVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist getTimeZoneIdsForCountryCode(Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 131
    if-eqz p0, :cond_41

    .line 134
    invoke-static {}, Lcom/android/i18n/timezone/TimeZoneFinder;->getInstance()Lcom/android/i18n/timezone/TimeZoneFinder;

    move-result-object v0

    .line 135
    nop

    .line 136
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/i18n/timezone/TimeZoneFinder;->lookupCountryTimeZones(Ljava/lang/String;)Lcom/android/i18n/timezone/CountryTimeZones;

    move-result-object p0

    .line 137
    if-nez p0, :cond_13

    .line 138
    const/4 p0, 0x0

    return-object p0

    .line 141
    :cond_13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 142
    invoke-virtual {p0}, Lcom/android/i18n/timezone/CountryTimeZones;->getTimeZoneMappings()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_20
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;

    .line 143
    sget-object v2, Landroid/util/TimeUtils;->MIN_USE_DATE_OF_TIMEZONE:Ljava/time/Instant;

    invoke-virtual {v1, v2}, Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;->isShownInPickerAt(Ljava/time/Instant;)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 144
    invoke-virtual {v1}, Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;->getTimeZoneId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    :cond_3b
    goto :goto_20

    .line 147
    :cond_3c
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 132
    :cond_41
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "countryCode == null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static whitelist isTimeBetween(Ljava/time/LocalTime;Ljava/time/LocalTime;Ljava/time/LocalTime;)Z
    .registers 4

    .line 462
    invoke-virtual {p0, p1}, Ljava/time/LocalTime;->isBefore(Ljava/time/LocalTime;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p0, p2}, Ljava/time/LocalTime;->isAfter(Ljava/time/LocalTime;)Z

    move-result v0

    if-nez v0, :cond_30

    .line 464
    :cond_c
    invoke-virtual {p0, p2}, Ljava/time/LocalTime;->isBefore(Ljava/time/LocalTime;)Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-virtual {p0, p1}, Ljava/time/LocalTime;->isBefore(Ljava/time/LocalTime;)Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-virtual {p1, p2}, Ljava/time/LocalTime;->isBefore(Ljava/time/LocalTime;)Z

    move-result v0

    if-nez v0, :cond_30

    .line 466
    :cond_1e
    invoke-virtual {p0, p2}, Ljava/time/LocalTime;->isAfter(Ljava/time/LocalTime;)Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-virtual {p0, p1}, Ljava/time/LocalTime;->isAfter(Ljava/time/LocalTime;)Z

    move-result p0

    if-eqz p0, :cond_32

    invoke-virtual {p1, p2}, Ljava/time/LocalTime;->isBefore(Ljava/time/LocalTime;)Z

    move-result p0

    if-eqz p0, :cond_32

    .line 467
    :cond_30
    const/4 p0, 0x0

    return p0

    .line 469
    :cond_32
    const/4 p0, 0x1

    return p0
.end method

.method public static greylist-max-r logTimeOfDay(J)Ljava/lang/String;
    .registers 8

    .line 422
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 423
    const-wide/16 v1, 0x0

    cmp-long v1, p0, v1

    if-ltz v1, :cond_1d

    .line 424
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 425
    const-string p0, "%tm-%td %tH:%tM:%tS.%tL"

    move-object v1, v0

    move-object v2, v0

    move-object v3, v0

    move-object v4, v0

    move-object v5, v0

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 427
    :cond_1d
    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static greylist-max-o printFieldLocked([CICIZI)I
    .registers 8

    .line 211
    if-nez p4, :cond_4

    if-lez p1, :cond_68

    .line 212
    :cond_4
    nop

    .line 213
    const/16 v0, 0x3e7

    if-le p1, v0, :cond_2f

    .line 214
    const/4 p4, 0x0

    .line 215
    :goto_a
    if-eqz p1, :cond_1f

    sget-object p5, Landroid/util/TimeUtils;->sTmpFormatStr:[C

    array-length p5, p5

    if-ge p4, p5, :cond_1f

    .line 216
    rem-int/lit8 p5, p1, 0xa

    .line 217
    sget-object v0, Landroid/util/TimeUtils;->sTmpFormatStr:[C

    add-int/lit8 p5, p5, 0x30

    int-to-char p5, p5

    aput-char p5, v0, p4

    .line 218
    add-int/lit8 p4, p4, 0x1

    .line 219
    div-int/lit8 p1, p1, 0xa

    .line 220
    goto :goto_a

    .line 221
    :cond_1f
    add-int/lit8 p4, p4, -0x1

    .line 222
    :goto_21
    if-ltz p4, :cond_2e

    .line 223
    sget-object p1, Landroid/util/TimeUtils;->sTmpFormatStr:[C

    aget-char p1, p1, p4

    aput-char p1, p0, p3

    .line 224
    add-int/lit8 p3, p3, 0x1

    .line 225
    add-int/lit8 p4, p4, -0x1

    goto :goto_21

    .line 227
    :cond_2e
    goto :goto_64

    .line 228
    :cond_2f
    if-eqz p4, :cond_34

    const/4 v0, 0x3

    if-ge p5, v0, :cond_38

    :cond_34
    const/16 v0, 0x63

    if-le p1, v0, :cond_45

    .line 229
    :cond_38
    div-int/lit8 v0, p1, 0x64

    .line 230
    add-int/lit8 v1, v0, 0x30

    int-to-char v1, v1

    aput-char v1, p0, p3

    .line 231
    add-int/lit8 v1, p3, 0x1

    .line 232
    mul-int/lit8 v0, v0, 0x64

    sub-int/2addr p1, v0

    goto :goto_46

    .line 228
    :cond_45
    move v1, p3

    .line 234
    :goto_46
    if-eqz p4, :cond_4b

    const/4 p4, 0x2

    if-ge p5, p4, :cond_51

    :cond_4b
    const/16 p4, 0x9

    if-gt p1, p4, :cond_51

    if-eq p3, v1, :cond_5d

    .line 235
    :cond_51
    div-int/lit8 p3, p1, 0xa

    .line 236
    add-int/lit8 p4, p3, 0x30

    int-to-char p4, p4

    aput-char p4, p0, v1

    .line 237
    add-int/lit8 v1, v1, 0x1

    .line 238
    mul-int/lit8 p3, p3, 0xa

    sub-int/2addr p1, p3

    .line 240
    :cond_5d
    add-int/lit8 p1, p1, 0x30

    int-to-char p1, p1

    aput-char p1, p0, v1

    .line 241
    add-int/lit8 p3, v1, 0x1

    .line 243
    :goto_64
    aput-char p2, p0, p3

    .line 244
    add-int/lit8 p3, p3, 0x1

    .line 246
    :cond_68
    return p3
.end method
