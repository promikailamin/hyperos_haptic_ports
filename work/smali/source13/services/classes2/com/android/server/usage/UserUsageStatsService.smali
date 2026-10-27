.class Lcom/android/server/usage/UserUsageStatsService;
.super Ljava/lang/Object;
.source "UserUsageStatsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usage/UserUsageStatsService$CachedEarlyEvents;,
        Lcom/android/server/usage/UserUsageStatsService$StatsUpdatedListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final INTERVAL_LENGTH:[J

.field private static final TAG:Ljava/lang/String; = "UsageStatsService"

.field private static final sConfigStatsCombiner:Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/usage/UsageStatsDatabase$StatCombiner<",
            "Landroid/app/usage/ConfigurationStats;",
            ">;"
        }
    .end annotation
.end field

.field private static final sDateFormat:Ljava/text/SimpleDateFormat;

.field private static final sDateFormatFlags:I = 0x20015

.field private static final sEventStatsCombiner:Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/usage/UsageStatsDatabase$StatCombiner<",
            "Landroid/app/usage/EventStats;",
            ">;"
        }
    .end annotation
.end field

.field private static final sUsageStatsCombiner:Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/usage/UsageStatsDatabase$StatCombiner<",
            "Landroid/app/usage/UsageStats;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCachedEarlyEvents:Landroid/util/SparseArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/usage/UserUsageStatsService$CachedEarlyEvents;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mCurrentStats:[Lcom/android/server/usage/IntervalStats;

.field private final mDailyExpiryDate:Lcom/android/server/usage/UnixCalendar;

.field private final mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

.field private mLastBackgroundedPackage:Ljava/lang/String;

.field private final mListener:Lcom/android/server/usage/UserUsageStatsService$StatsUpdatedListener;

.field private final mLogPrefix:Ljava/lang/String;

.field private mRealTimeSnapshot:J

.field private mStatsChanged:Z

.field private mSystemTimeSnapshot:J

.field private final mUserId:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 74
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/usage/UserUsageStatsService;->sDateFormat:Ljava/text/SimpleDateFormat;

    .line 93
    const/4 v0, 0x4

    new-array v0, v0, [J

    fill-array-data v0, :array_28

    sput-object v0, Lcom/android/server/usage/UserUsageStatsService;->INTERVAL_LENGTH:[J

    .line 419
    new-instance v0, Lcom/android/server/usage/UserUsageStatsService$1;

    invoke-direct {v0}, Lcom/android/server/usage/UserUsageStatsService$1;-><init>()V

    sput-object v0, Lcom/android/server/usage/UserUsageStatsService;->sUsageStatsCombiner:Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;

    .line 437
    new-instance v0, Lcom/android/server/usage/UserUsageStatsService$2;

    invoke-direct {v0}, Lcom/android/server/usage/UserUsageStatsService$2;-><init>()V

    sput-object v0, Lcom/android/server/usage/UserUsageStatsService;->sConfigStatsCombiner:Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;

    .line 455
    new-instance v0, Lcom/android/server/usage/UserUsageStatsService$3;

    invoke-direct {v0}, Lcom/android/server/usage/UserUsageStatsService$3;-><init>()V

    sput-object v0, Lcom/android/server/usage/UserUsageStatsService;->sEventStatsCombiner:Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;

    return-void

    :array_28
    .array-data 8
        0x5265c00
        0x240c8400
        0x9a7ec800L
        0x757b12c00L
    .end array-data
.end method

.method constructor <init>(Landroid/content/Context;ILjava/io/File;Lcom/android/server/usage/UserUsageStatsService$StatsUpdatedListener;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I
    .param p3, "usageStatsDir"    # Ljava/io/File;
    .param p4, "listener"    # Lcom/android/server/usage/UserUsageStatsService$StatsUpdatedListener;

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mStatsChanged:Z

    .line 122
    new-instance v0, Landroid/util/SparseArrayMap;

    invoke-direct {v0}, Landroid/util/SparseArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mCachedEarlyEvents:Landroid/util/SparseArrayMap;

    .line 127
    iput-object p1, p0, Lcom/android/server/usage/UserUsageStatsService;->mContext:Landroid/content/Context;

    .line 128
    new-instance v0, Lcom/android/server/usage/UnixCalendar;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/usage/UnixCalendar;-><init>(J)V

    iput-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mDailyExpiryDate:Lcom/android/server/usage/UnixCalendar;

    .line 129
    new-instance v0, Lcom/android/server/usage/UsageStatsDatabase;

    invoke-direct {v0, p3}, Lcom/android/server/usage/UsageStatsDatabase;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    .line 130
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/server/usage/IntervalStats;

    iput-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    .line 131
    iput-object p4, p0, Lcom/android/server/usage/UserUsageStatsService;->mListener:Lcom/android/server/usage/UserUsageStatsService$StatsUpdatedListener;

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "User["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mLogPrefix:Ljava/lang/String;

    .line 133
    iput p2, p0, Lcom/android/server/usage/UserUsageStatsService;->mUserId:I

    .line 134
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mRealTimeSnapshot:J

    .line 135
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mSystemTimeSnapshot:J

    .line 136
    return-void
.end method

.method private checkAndGetTimeLocked()J
    .registers 13

    .line 276
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 277
    .local v0, "actualSystemTime":J
    sget-boolean v2, Lcom/android/server/usage/UsageStatsService;->ENABLE_TIME_CHANGE_CORRECTION:Z

    if-nez v2, :cond_9

    .line 278
    return-wide v0

    .line 280
    :cond_9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 281
    .local v2, "actualRealtime":J
    iget-wide v4, p0, Lcom/android/server/usage/UserUsageStatsService;->mRealTimeSnapshot:J

    sub-long v4, v2, v4

    iget-wide v6, p0, Lcom/android/server/usage/UserUsageStatsService;->mSystemTimeSnapshot:J

    add-long/2addr v4, v6

    .line 282
    .local v4, "expectedSystemTime":J
    sub-long v6, v0, v4

    .line 283
    .local v6, "diffSystemTime":J
    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    cmp-long v8, v8, v10

    if-lez v8, :cond_4d

    .line 285
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/android/server/usage/UserUsageStatsService;->mLogPrefix:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "Time changed in by "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    div-long v9, v6, v10

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " seconds"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "UsageStatsService"

    invoke-static {v9, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    invoke-direct {p0, v4, v5, v0, v1}, Lcom/android/server/usage/UserUsageStatsService;->onTimeChanged(JJ)V

    .line 287
    iput-wide v2, p0, Lcom/android/server/usage/UserUsageStatsService;->mRealTimeSnapshot:J

    .line 288
    iput-wide v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mSystemTimeSnapshot:J

    .line 290
    :cond_4d
    return-wide v0
.end method

.method private convertToSystemTimeLocked(Landroid/app/usage/UsageEvents$Event;)V
    .registers 6
    .param p1, "event"    # Landroid/app/usage/UsageEvents$Event;

    .line 316
    iget-wide v0, p1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    iget-wide v2, p0, Lcom/android/server/usage/UserUsageStatsService;->mRealTimeSnapshot:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/usage/UserUsageStatsService;->mSystemTimeSnapshot:J

    add-long/2addr v0, v2

    iput-wide v0, p1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    .line 317
    return-void
.end method

.method private dumpFileDetails(Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/usage/IntervalStats;J)V
    .registers 12
    .param p1, "ipw"    # Lcom/android/internal/util/IndentingPrintWriter;
    .param p2, "stats"    # Lcom/android/server/usage/IntervalStats;
    .param p3, "filename"    # J

    .line 1074
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1075
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1076
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/usage/UserUsageStatsService;->printIntervalStats(Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/usage/IntervalStats;ZZLjava/util/List;)V

    .line 1077
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1078
    return-void
.end method

.method private dumpFileDetailsForInterval(Lcom/android/internal/util/IndentingPrintWriter;I)V
    .registers 9
    .param p1, "ipw"    # Lcom/android/internal/util/IndentingPrintWriter;
    .param p2, "interval"    # I

    .line 1063
    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    iget-object v0, v0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v0, v0, p2

    .line 1064
    .local v0, "files":Landroid/app/usage/TimeSparseArray;, "Landroid/app/usage/TimeSparseArray<Landroid/util/AtomicFile;>;"
    invoke-virtual {v0}, Landroid/app/usage/TimeSparseArray;->size()I

    move-result v1

    .line 1065
    .local v1, "numFiles":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    if-ge v2, v1, :cond_20

    .line 1066
    invoke-virtual {v0, v2}, Landroid/app/usage/TimeSparseArray;->keyAt(I)J

    move-result-wide v3

    .line 1067
    .local v3, "filename":J
    iget-object v5, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    invoke-virtual {v5, p2, v3, v4}, Lcom/android/server/usage/UsageStatsDatabase;->readIntervalStatsForFile(IJ)Lcom/android/server/usage/IntervalStats;

    move-result-object v5

    .line 1068
    .local v5, "stats":Lcom/android/server/usage/IntervalStats;
    invoke-direct {p0, p1, v5, v3, v4}, Lcom/android/server/usage/UserUsageStatsService;->dumpFileDetails(Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/usage/IntervalStats;J)V

    .line 1069
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1065
    .end local v3    # "filename":J
    .end local v5    # "stats":Lcom/android/server/usage/IntervalStats;
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 1071
    .end local v2    # "i":I
    :cond_20
    return-void
.end method

.method private static eventToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "eventType"    # I

    .line 1342
    packed-switch p0, :pswitch_data_72

    .line 1404
    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN_TYPE_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1402
    :pswitch_17
    const-string v0, "APP_COMPONENT_USED"

    return-object v0

    .line 1400
    :pswitch_1a
    const-string v0, "LOCUS_ID_SET"

    return-object v0

    .line 1398
    :pswitch_1d
    const-string v0, "USER_STOPPED"

    return-object v0

    .line 1396
    :pswitch_20
    const-string v0, "USER_UNLOCKED"

    return-object v0

    .line 1394
    :pswitch_23
    const-string v0, "DEVICE_STARTUP"

    return-object v0

    .line 1392
    :pswitch_26
    const-string v0, "DEVICE_SHUTDOWN"

    return-object v0

    .line 1354
    :pswitch_29
    const-string v0, "ACTIVITY_STOPPED"

    return-object v0

    .line 1358
    :pswitch_2c
    const-string v0, "ROLLOVER_FOREGROUND_SERVICE"

    return-object v0

    .line 1362
    :pswitch_2f
    const-string v0, "CONTINUING_FOREGROUND_SERVICE"

    return-object v0

    .line 1352
    :pswitch_32
    const-string v0, "FOREGROUND_SERVICE_STOP"

    return-object v0

    .line 1350
    :pswitch_35
    const-string v0, "FOREGROUND_SERVICE_START"

    return-object v0

    .line 1390
    :pswitch_38
    const-string v0, "KEYGUARD_HIDDEN"

    return-object v0

    .line 1388
    :pswitch_3b
    const-string v0, "KEYGUARD_SHOWN"

    return-object v0

    .line 1386
    :pswitch_3e
    const-string v0, "SCREEN_NON_INTERACTIVE"

    return-object v0

    .line 1384
    :pswitch_41
    const-string v0, "SCREEN_INTERACTIVE"

    return-object v0

    .line 1380
    :pswitch_44
    const-string v0, "SLICE_PINNED"

    return-object v0

    .line 1382
    :pswitch_47
    const-string v0, "SLICE_PINNED_PRIV"

    return-object v0

    .line 1378
    :pswitch_4a
    const-string v0, "NOTIFICATION_INTERRUPTION"

    return-object v0

    .line 1376
    :pswitch_4d
    const-string v0, "STANDBY_BUCKET_CHANGED"

    return-object v0

    .line 1374
    :pswitch_50
    const-string v0, "NOTIFICATION_SEEN"

    return-object v0

    .line 1372
    :pswitch_53
    const-string v0, "CHOOSER_ACTION"

    return-object v0

    .line 1370
    :pswitch_56
    const-string v0, "SHORTCUT_INVOCATION"

    return-object v0

    .line 1368
    :pswitch_59
    const-string v0, "USER_INTERACTION"

    return-object v0

    .line 1366
    :pswitch_5c
    const-string v0, "SYSTEM_INTERACTION"

    return-object v0

    .line 1364
    :pswitch_5f
    const-string v0, "CONFIGURATION_CHANGE"

    return-object v0

    .line 1360
    :pswitch_62
    const-string v0, "CONTINUE_PREVIOUS_DAY"

    return-object v0

    .line 1356
    :pswitch_65
    const-string v0, "END_OF_DAY"

    return-object v0

    .line 1346
    :pswitch_68
    const-string v0, "ACTIVITY_PAUSED"

    return-object v0

    .line 1348
    :pswitch_6b
    const-string v0, "ACTIVITY_RESUMED"

    return-object v0

    .line 1344
    :pswitch_6e
    const-string v0, "NONE"

    return-object v0

    nop

    :pswitch_data_72
    .packed-switch 0x0
        :pswitch_6e
        :pswitch_6b
        :pswitch_68
        :pswitch_65
        :pswitch_62
        :pswitch_5f
        :pswitch_5c
        :pswitch_59
        :pswitch_56
        :pswitch_53
        :pswitch_50
        :pswitch_4d
        :pswitch_4a
        :pswitch_47
        :pswitch_44
        :pswitch_41
        :pswitch_3e
        :pswitch_3b
        :pswitch_38
        :pswitch_35
        :pswitch_32
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_3
        :pswitch_3
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
    .end packed-switch
.end method

.method static formatDateTime(JZ)Ljava/lang/String;
    .registers 7
    .param p0, "dateTime"    # J
    .param p2, "pretty"    # Z

    .line 1081
    if-eqz p2, :cond_24

    .line 1082
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/android/server/usage/UserUsageStatsService;->sDateFormat:Ljava/text/SimpleDateFormat;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1084
    :cond_24
    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private formatElapsedTime(JZ)Ljava/lang/String;
    .registers 8
    .param p1, "elapsedTime"    # J
    .param p3, "pretty"    # Z

    .line 1088
    if-eqz p3, :cond_22

    .line 1089
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    div-long v2, p1, v2

    invoke-static {v2, v3}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1091
    :cond_22
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static intervalToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "interval"    # I

    .line 1312
    packed-switch p0, :pswitch_data_16

    .line 1322
    const-string v0, "?"

    return-object v0

    .line 1320
    :pswitch_6
    const-string/jumbo v0, "yearly"

    return-object v0

    .line 1318
    :pswitch_a
    const-string/jumbo v0, "monthly"

    return-object v0

    .line 1316
    :pswitch_e
    const-string/jumbo v0, "weekly"

    return-object v0

    .line 1314
    :pswitch_12
    const-string v0, "daily"

    return-object v0

    nop

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_12
        :pswitch_e
        :pswitch_a
        :pswitch_6
    .end packed-switch
.end method

.method private isTimeChange()Z
    .registers 14

    .line 294
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 295
    .local v0, "actualSystemTime":J
    sget-boolean v2, Lcom/android/server/usage/UsageStatsService;->ENABLE_TIME_CHANGE_CORRECTION:Z

    if-nez v2, :cond_a

    .line 296
    const/4 v2, 0x0

    return v2

    .line 298
    :cond_a
    const/4 v2, 0x0

    .line 299
    .local v2, "res":Z
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 300
    .local v3, "actualRealtime":J
    iget-wide v5, p0, Lcom/android/server/usage/UserUsageStatsService;->mRealTimeSnapshot:J

    sub-long v5, v3, v5

    iget-wide v7, p0, Lcom/android/server/usage/UserUsageStatsService;->mSystemTimeSnapshot:J

    add-long/2addr v5, v7

    .line 301
    .local v5, "expectedSystemTime":J
    sub-long v7, v0, v5

    .line 302
    .local v7, "diffSystemTime":J
    invoke-static {v7, v8}, Ljava/lang/Math;->abs(J)J

    move-result-wide v9

    const-wide/16 v11, 0x3e8

    cmp-long v9, v9, v11

    if-lez v9, :cond_49

    .line 304
    const/4 v2, 0x1

    .line 305
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/android/server/usage/UserUsageStatsService;->mLogPrefix:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "isTimeChange -- Time changed in by "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    div-long v10, v7, v11

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " seconds"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "UsageStatsService"

    invoke-static {v10, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    :cond_49
    return v2
.end method

.method static synthetic lambda$queryEarliestAppEvents$0(JJLandroid/util/ArraySet;Landroid/util/ArraySet;ILcom/android/server/usage/IntervalStats;ZLjava/util/List;)Z
    .registers 16
    .param p0, "beginTime"    # J
    .param p2, "endTime"    # J
    .param p4, "eventSuccess"    # Landroid/util/ArraySet;
    .param p5, "names"    # Landroid/util/ArraySet;
    .param p6, "eventType"    # I
    .param p7, "stats"    # Lcom/android/server/usage/IntervalStats;
    .param p8, "mutable"    # Z
    .param p9, "accumulatedResult"    # Ljava/util/List;

    .line 646
    iget-object v0, p7, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {v0, p0, p1}, Landroid/app/usage/EventList;->firstIndexOnOrAfter(J)I

    move-result v0

    .line 647
    .local v0, "startIndex":I
    iget-object v1, p7, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {v1}, Landroid/app/usage/EventList;->size()I

    move-result v1

    .line 648
    .local v1, "size":I
    move v2, v0

    .local v2, "i":I
    :goto_d
    const/4 v3, 0x1

    if-ge v2, v1, :cond_5e

    .line 650
    invoke-static {}, Lcom/android/server/usage/UsageStatsServiceStub;->getInstance()Lcom/android/server/usage/UsageStatsServiceStub;

    move-result-object v4

    invoke-interface {v4, p9}, Lcom/android/server/usage/UsageStatsServiceStub;->isLimitExceed(Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 651
    return v3

    .line 654
    :cond_1b
    iget-object v3, p7, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {v3, v2}, Landroid/app/usage/EventList;->get(I)Landroid/app/usage/UsageEvents$Event;

    move-result-object v3

    .line 655
    .local v3, "event":Landroid/app/usage/UsageEvents$Event;
    invoke-virtual {v3}, Landroid/app/usage/UsageEvents$Event;->getTimeStamp()J

    move-result-wide v4

    cmp-long v4, v4, p2

    if-ltz v4, :cond_2b

    .line 656
    const/4 v4, 0x0

    return v4

    .line 658
    :cond_2b
    invoke-virtual {v3}, Landroid/app/usage/UsageEvents$Event;->getPackageName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_32

    .line 659
    goto :goto_5b

    .line 661
    :cond_32
    invoke-virtual {v3}, Landroid/app/usage/UsageEvents$Event;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p4, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3d

    .line 662
    goto :goto_5b

    .line 665
    :cond_3d
    invoke-virtual {v3}, Landroid/app/usage/UsageEvents$Event;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p5, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 667
    .local v4, "firstEvent":Z
    invoke-virtual {v3}, Landroid/app/usage/UsageEvents$Event;->getEventType()I

    move-result v5

    if-ne v5, p6, :cond_56

    .line 668
    invoke-interface {p9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 669
    invoke-virtual {v3}, Landroid/app/usage/UsageEvents$Event;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p4, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_5b

    .line 670
    :cond_56
    if-eqz v4, :cond_5b

    .line 672
    invoke-interface {p9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 648
    .end local v3    # "event":Landroid/app/usage/UsageEvents$Event;
    .end local v4    # "firstEvent":Z
    :cond_5b
    :goto_5b
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 675
    .end local v2    # "i":I
    :cond_5e
    return v3
.end method

.method static synthetic lambda$queryEarliestEventsForPackage$2(JJLjava/lang/String;ILcom/android/server/usage/IntervalStats;ZLjava/util/List;)Z
    .registers 15
    .param p0, "finalBeginTime"    # J
    .param p2, "endTime"    # J
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "eventType"    # I
    .param p6, "stats"    # Lcom/android/server/usage/IntervalStats;
    .param p7, "mutable"    # Z
    .param p8, "accumulatedResult"    # Ljava/util/List;

    .line 788
    iget-object v0, p6, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {v0, p0, p1}, Landroid/app/usage/EventList;->firstIndexOnOrAfter(J)I

    move-result v0

    .line 789
    .local v0, "startIndex":I
    iget-object v1, p6, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {v1}, Landroid/app/usage/EventList;->size()I

    move-result v1

    .line 790
    .local v1, "size":I
    move v2, v0

    .local v2, "i":I
    :goto_d
    if-ge v2, v1, :cond_40

    .line 791
    iget-object v3, p6, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {v3, v2}, Landroid/app/usage/EventList;->get(I)Landroid/app/usage/UsageEvents$Event;

    move-result-object v3

    .line 792
    .local v3, "event":Landroid/app/usage/UsageEvents$Event;
    invoke-virtual {v3}, Landroid/app/usage/UsageEvents$Event;->getTimeStamp()J

    move-result-wide v4

    cmp-long v4, v4, p2

    const/4 v5, 0x0

    if-ltz v4, :cond_1f

    .line 793
    return v5

    .line 796
    :cond_1f
    invoke-virtual {v3}, Landroid/app/usage/UsageEvents$Event;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p4, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2a

    .line 797
    goto :goto_3d

    .line 799
    :cond_2a
    invoke-virtual {v3}, Landroid/app/usage/UsageEvents$Event;->getEventType()I

    move-result v4

    if-ne v4, p5, :cond_34

    .line 800
    invoke-interface {p8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 802
    return v5

    .line 803
    :cond_34
    invoke-interface {p8}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_3d

    .line 805
    invoke-interface {p8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 790
    .end local v3    # "event":Landroid/app/usage/UsageEvents$Event;
    :cond_3d
    :goto_3d
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 808
    .end local v2    # "i":I
    :cond_40
    const/4 v2, 0x1

    return v2
.end method

.method static synthetic lambda$queryEventsForPackage$1(JJLjava/lang/String;Landroid/util/ArraySet;ZLcom/android/server/usage/IntervalStats;ZLjava/util/List;)Z
    .registers 16
    .param p0, "beginTime"    # J
    .param p2, "endTime"    # J
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "names"    # Landroid/util/ArraySet;
    .param p6, "includeTaskRoot"    # Z
    .param p7, "stats"    # Lcom/android/server/usage/IntervalStats;
    .param p8, "mutable"    # Z
    .param p9, "accumulatedResult"    # Ljava/util/List;

    .line 700
    iget-object v0, p7, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {v0, p0, p1}, Landroid/app/usage/EventList;->firstIndexOnOrAfter(J)I

    move-result v0

    .line 701
    .local v0, "startIndex":I
    iget-object v1, p7, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {v1}, Landroid/app/usage/EventList;->size()I

    move-result v1

    .line 702
    .local v1, "size":I
    move v2, v0

    .local v2, "i":I
    :goto_d
    if-ge v2, v1, :cond_4b

    .line 703
    iget-object v3, p7, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {v3, v2}, Landroid/app/usage/EventList;->get(I)Landroid/app/usage/UsageEvents$Event;

    move-result-object v3

    .line 704
    .local v3, "event":Landroid/app/usage/UsageEvents$Event;
    iget-wide v4, v3, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    cmp-long v4, v4, p2

    if-ltz v4, :cond_1d

    .line 705
    const/4 v4, 0x0

    return v4

    .line 708
    :cond_1d
    iget-object v4, v3, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-virtual {p4, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_26

    .line 709
    goto :goto_48

    .line 711
    :cond_26
    iget-object v4, v3, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    if-eqz v4, :cond_2f

    .line 712
    iget-object v4, v3, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    invoke-virtual {p5, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 714
    :cond_2f
    if-eqz p6, :cond_3a

    iget-object v4, v3, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackage:Ljava/lang/String;

    if-eqz v4, :cond_3a

    .line 715
    iget-object v4, v3, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackage:Ljava/lang/String;

    invoke-virtual {p5, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 717
    :cond_3a
    if-eqz p6, :cond_45

    iget-object v4, v3, Landroid/app/usage/UsageEvents$Event;->mTaskRootClass:Ljava/lang/String;

    if-eqz v4, :cond_45

    .line 718
    iget-object v4, v3, Landroid/app/usage/UsageEvents$Event;->mTaskRootClass:Ljava/lang/String;

    invoke-virtual {p5, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 720
    :cond_45
    invoke-interface {p9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 702
    .end local v3    # "event":Landroid/app/usage/UsageEvents$Event;
    :goto_48
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 722
    .end local v2    # "i":I
    :cond_4b
    const/4 v2, 0x1

    return v2
.end method

.method private loadActiveStats(J)V
    .registers 9
    .param p1, "currentTimeMillis"    # J

    .line 934
    const/4 v0, 0x0

    .local v0, "intervalType":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    array-length v1, v1

    if-ge v0, v1, :cond_39

    .line 935
    iget-object v1, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    invoke-virtual {v1, v0}, Lcom/android/server/usage/UsageStatsDatabase;->getLatestUsageStats(I)Lcom/android/server/usage/IntervalStats;

    move-result-object v1

    .line 936
    .local v1, "stats":Lcom/android/server/usage/IntervalStats;
    if-eqz v1, :cond_1e

    iget-wide v2, v1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    sget-object v4, Lcom/android/server/usage/UserUsageStatsService;->INTERVAL_LENGTH:[J

    aget-wide v4, v4, v0

    add-long/2addr v2, v4

    cmp-long v2, p1, v2

    if-gez v2, :cond_1e

    .line 943
    iget-object v2, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    aput-object v1, v2, v0

    goto :goto_36

    .line 952
    :cond_1e
    iget-object v2, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    new-instance v3, Lcom/android/server/usage/IntervalStats;

    invoke-direct {v3}, Lcom/android/server/usage/IntervalStats;-><init>()V

    aput-object v3, v2, v0

    .line 953
    iget-object v2, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    aget-object v2, v2, v0

    iput-wide p1, v2, Lcom/android/server/usage/IntervalStats;->beginTime:J

    .line 954
    iget-object v2, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    aget-object v2, v2, v0

    const-wide/16 v3, 0x1

    add-long/2addr v3, p1

    iput-wide v3, v2, Lcom/android/server/usage/IntervalStats;->endTime:J

    .line 934
    .end local v1    # "stats":Lcom/android/server/usage/IntervalStats;
    :goto_36
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 958
    .end local v0    # "intervalType":I
    :cond_39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mStatsChanged:Z

    .line 959
    invoke-direct {p0}, Lcom/android/server/usage/UserUsageStatsService;->updateRolloverDeadline()V

    .line 962
    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mListener:Lcom/android/server/usage/UserUsageStatsService$StatsUpdatedListener;

    invoke-interface {v0}, Lcom/android/server/usage/UserUsageStatsService$StatsUpdatedListener;->onStatsReloaded()V

    .line 963
    return-void
.end method

.method private notifyNewUpdate()V
    .registers 3

    .line 930
    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mListener:Lcom/android/server/usage/UserUsageStatsService$StatsUpdatedListener;

    iget v1, p0, Lcom/android/server/usage/UserUsageStatsService;->mUserId:I

    invoke-interface {v0, v1}, Lcom/android/server/usage/UserUsageStatsService$StatsUpdatedListener;->onNewUpdate(I)V

    .line 931
    return-void
.end method

.method private notifyStatsChanged()V
    .registers 2

    .line 923
    iget-boolean v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mStatsChanged:Z

    if-nez v0, :cond_c

    .line 924
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mStatsChanged:Z

    .line 925
    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mListener:Lcom/android/server/usage/UserUsageStatsService$StatsUpdatedListener;

    invoke-interface {v0}, Lcom/android/server/usage/UserUsageStatsService$StatsUpdatedListener;->onStatsUpdated()V

    .line 927
    :cond_c
    return-void
.end method

.method private onTimeChanged(JJ)V
    .registers 8
    .param p1, "oldTime"    # J
    .param p3, "newTime"    # J

    .line 266
    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mCachedEarlyEvents:Landroid/util/SparseArrayMap;

    invoke-virtual {v0}, Landroid/util/SparseArrayMap;->clear()V

    .line 267
    invoke-virtual {p0}, Lcom/android/server/usage/UserUsageStatsService;->persistActiveStats()V

    .line 268
    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    sub-long v1, p3, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/usage/UsageStatsDatabase;->onTimeChanged(J)V

    .line 269
    invoke-direct {p0, p3, p4}, Lcom/android/server/usage/UserUsageStatsService;->loadActiveStats(J)V

    .line 270
    return-void
.end method

.method static printEvent(Lcom/android/internal/util/IndentingPrintWriter;Landroid/app/usage/UsageEvents$Event;Z)V
    .registers 5
    .param p0, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;
    .param p1, "event"    # Landroid/app/usage/UsageEvents$Event;
    .param p2, "prettyDates"    # Z

    .line 1095
    iget-wide v0, p1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    invoke-static {v0, v1, p2}, Lcom/android/server/usage/UserUsageStatsService;->formatDateTime(JZ)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "time"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 1096
    iget v0, p1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    invoke-static {v0}, Lcom/android/server/usage/UserUsageStatsService;->eventToString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "type"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 1097
    iget-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    const-string/jumbo v1, "package"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 1098
    iget-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    if-eqz v0, :cond_2b

    .line 1099
    iget-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    const-string v1, "class"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 1101
    :cond_2b
    iget-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    if-eqz v0, :cond_3a

    .line 1102
    iget-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    invoke-static {v0}, Landroid/content/res/Configuration;->resourceQualifierString(Landroid/content/res/Configuration;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "config"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 1104
    :cond_3a
    iget-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mShortcutId:Ljava/lang/String;

    if-eqz v0, :cond_46

    .line 1105
    iget-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mShortcutId:Ljava/lang/String;

    const-string/jumbo v1, "shortcutId"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 1107
    :cond_46
    iget v0, p1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_69

    .line 1108
    invoke-virtual {p1}, Landroid/app/usage/UsageEvents$Event;->getAppStandbyBucket()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "standbyBucket"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 1109
    invoke-virtual {p1}, Landroid/app/usage/UsageEvents$Event;->getStandbyReason()I

    move-result v0

    invoke-static {v0}, Landroid/app/usage/UsageStatsManager;->reasonToString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "reason"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    goto :goto_86

    .line 1110
    :cond_69
    iget v0, p1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_79

    iget v0, p1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_79

    iget v0, p1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/16 v1, 0x17

    if-ne v0, v1, :cond_86

    .line 1113
    :cond_79
    invoke-virtual {p1}, Landroid/app/usage/UsageEvents$Event;->getInstanceId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "instanceId"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 1116
    :cond_86
    :goto_86
    invoke-virtual {p1}, Landroid/app/usage/UsageEvents$Event;->getTaskRootPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_96

    .line 1117
    invoke-virtual {p1}, Landroid/app/usage/UsageEvents$Event;->getTaskRootPackageName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "taskRootPackage"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 1120
    :cond_96
    invoke-virtual {p1}, Landroid/app/usage/UsageEvents$Event;->getTaskRootClassName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a6

    .line 1121
    invoke-virtual {p1}, Landroid/app/usage/UsageEvents$Event;->getTaskRootClassName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "taskRootClass"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 1124
    :cond_a6
    iget-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelId:Ljava/lang/String;

    if-eqz v0, :cond_b1

    .line 1125
    iget-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelId:Ljava/lang/String;

    const-string v1, "channelId"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 1127
    :cond_b1
    iget v0, p1, Landroid/app/usage/UsageEvents$Event;->mFlags:I

    const-string v1, "flags"

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printHexPair(Ljava/lang/String;I)Lcom/android/internal/util/IndentingPrintWriter;

    .line 1128
    invoke-virtual {p0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1129
    return-void
.end method

.method private queryStats(IJJLcom/android/server/usage/UsageStatsDatabase$StatCombiner;Z)Ljava/util/List;
    .registers 25
    .param p1, "intervalType"    # I
    .param p2, "beginTime"    # J
    .param p4, "endTime"    # J
    .param p7, "skipEvents"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(IJJ",
            "Lcom/android/server/usage/UsageStatsDatabase$StatCombiner<",
            "TT;>;Z)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 477
    .local p6, "combiner":Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;, "Lcom/android/server/usage/UsageStatsDatabase$StatCombiner<TT;>;"
    move-object/from16 v0, p0

    move-wide/from16 v9, p2

    move-wide/from16 v11, p4

    const/4 v1, 0x4

    move/from16 v2, p1

    if-ne v2, v1, :cond_18

    .line 478
    iget-object v1, v0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    invoke-virtual {v1, v9, v10, v11, v12}, Lcom/android/server/usage/UsageStatsDatabase;->findBestFitBucket(JJ)I

    move-result v1

    .line 479
    .end local p1    # "intervalType":I
    .local v1, "intervalType":I
    if-gez v1, :cond_16

    .line 482
    const/4 v1, 0x0

    move v13, v1

    goto :goto_19

    .line 479
    :cond_16
    move v13, v1

    goto :goto_19

    .line 477
    .end local v1    # "intervalType":I
    .restart local p1    # "intervalType":I
    :cond_18
    move v13, v2

    .line 486
    .end local p1    # "intervalType":I
    .local v13, "intervalType":I
    :goto_19
    const/4 v1, 0x0

    if-ltz v13, :cond_64

    iget-object v2, v0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    array-length v3, v2

    if-lt v13, v3, :cond_24

    move-object/from16 v3, p6

    goto :goto_66

    .line 493
    :cond_24
    aget-object v14, v2, v13

    .line 500
    .local v14, "currentStats":Lcom/android/server/usage/IntervalStats;
    iget-wide v2, v14, Lcom/android/server/usage/IntervalStats;->endTime:J

    cmp-long v2, v9, v2

    if-ltz v2, :cond_2d

    .line 506
    return-object v1

    .line 512
    :cond_2d
    iget-wide v1, v14, Lcom/android/server/usage/IntervalStats;->beginTime:J

    invoke-static {v1, v2, v11, v12}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v15

    .line 515
    .local v15, "truncatedEndTime":J
    iget-object v1, v0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    move v2, v13

    move-wide/from16 v3, p2

    move-wide v5, v15

    move-object/from16 v7, p6

    move/from16 v8, p7

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/usage/UsageStatsDatabase;->queryUsageStats(IJJLcom/android/server/usage/UsageStatsDatabase$StatCombiner;Z)Ljava/util/List;

    move-result-object v1

    .line 524
    .local v1, "results":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget-wide v2, v14, Lcom/android/server/usage/IntervalStats;->endTime:J

    cmp-long v2, v9, v2

    if-gez v2, :cond_61

    iget-wide v2, v14, Lcom/android/server/usage/IntervalStats;->beginTime:J

    cmp-long v2, v11, v2

    if-lez v2, :cond_61

    .line 529
    if-nez v1, :cond_55

    .line 530
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v2

    .line 532
    :cond_55
    iget-object v2, v0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    invoke-virtual {v2, v14}, Lcom/android/server/usage/UsageStatsDatabase;->filterStats(Lcom/android/server/usage/IntervalStats;)V

    .line 533
    const/4 v2, 0x1

    move-object/from16 v3, p6

    invoke-interface {v3, v14, v2, v1}, Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;->combine(Lcom/android/server/usage/IntervalStats;ZLjava/util/List;)Z

    goto :goto_63

    .line 524
    :cond_61
    move-object/from16 v3, p6

    .line 539
    :goto_63
    return-object v1

    .line 486
    .end local v1    # "results":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .end local v14    # "currentStats":Lcom/android/server/usage/IntervalStats;
    .end local v15    # "truncatedEndTime":J
    :cond_64
    move-object/from16 v3, p6

    .line 490
    :goto_66
    return-object v1
.end method

.method private readPackageMappingsLocked(Ljava/util/HashMap;Z)V
    .registers 4
    .param p2, "deleteObsoleteData"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .line 211
    .local p1, "installedPackages":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    invoke-virtual {v0}, Lcom/android/server/usage/UsageStatsDatabase;->readMappingsLocked()V

    .line 215
    iget v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mUserId:I

    if-eqz v0, :cond_e

    if-eqz p2, :cond_e

    .line 216
    invoke-virtual {p0, p1}, Lcom/android/server/usage/UserUsageStatsService;->updatePackageMappingsLocked(Ljava/util/HashMap;)Z

    .line 218
    :cond_e
    return-void
.end method

.method private rolloverStats(J)V
    .registers 35
    .param p1, "currentTimeMillis"    # J

    .line 841
    move-object/from16 v0, p0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 842
    .local v1, "startTime":J
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Lcom/android/server/usage/UserUsageStatsService;->mLogPrefix:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Rolling over usage stats"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UsageStatsService"

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    iget-object v3, v0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    const/4 v5, 0x0

    aget-object v3, v3, v5

    iget-object v3, v3, Lcom/android/server/usage/IntervalStats;->activeConfiguration:Landroid/content/res/Configuration;

    .line 849
    .local v3, "previousConfig":Landroid/content/res/Configuration;
    new-instance v6, Landroid/util/ArraySet;

    invoke-direct {v6}, Landroid/util/ArraySet;-><init>()V

    .line 850
    .local v6, "continuePkgs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    new-instance v7, Landroid/util/ArrayMap;

    invoke-direct {v7}, Landroid/util/ArrayMap;-><init>()V

    .line 852
    .local v7, "continueActivity":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    new-instance v8, Landroid/util/ArrayMap;

    invoke-direct {v8}, Landroid/util/ArrayMap;-><init>()V

    .line 854
    .local v8, "continueForegroundService":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    iget-object v9, v0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    array-length v10, v9

    move v11, v5

    :goto_3a
    if-ge v11, v10, :cond_105

    aget-object v15, v9, v11

    .line 855
    .local v15, "stat":Lcom/android/server/usage/IntervalStats;
    iget-object v12, v15, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    invoke-virtual {v12}, Landroid/util/ArrayMap;->size()I

    move-result v14

    .line 856
    .local v14, "pkgCount":I
    const/4 v12, 0x0

    move v13, v12

    .local v13, "i":I
    :goto_46
    const-wide/16 v19, 0x1

    if-ge v13, v14, :cond_de

    .line 857
    iget-object v12, v15, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    invoke-virtual {v12, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/usage/UsageStats;

    .line 858
    .local v12, "pkgStats":Landroid/app/usage/UsageStats;
    iget-object v5, v12, Landroid/app/usage/UsageStats;->mActivities:Landroid/util/SparseIntArray;

    invoke-virtual {v5}, Landroid/util/SparseIntArray;->size()I

    move-result v5

    if-gtz v5, :cond_6c

    iget-object v5, v12, Landroid/app/usage/UsageStats;->mForegroundServices:Landroid/util/ArrayMap;

    .line 859
    invoke-virtual {v5}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_63

    goto :goto_6c

    :cond_63
    move-object/from16 v22, v9

    move/from16 v25, v13

    move v5, v14

    move-object/from16 v26, v15

    goto/16 :goto_d4

    .line 860
    :cond_6c
    :goto_6c
    iget-object v5, v12, Landroid/app/usage/UsageStats;->mActivities:Landroid/util/SparseIntArray;

    invoke-virtual {v5}, Landroid/util/SparseIntArray;->size()I

    move-result v5

    if-lez v5, :cond_9e

    .line 861
    iget-object v5, v12, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    move-object/from16 v22, v9

    iget-object v9, v12, Landroid/app/usage/UsageStats;->mActivities:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v5, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 863
    iget-object v5, v12, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    iget-object v9, v0, Lcom/android/server/usage/UserUsageStatsService;->mDailyExpiryDate:Lcom/android/server/usage/UnixCalendar;

    .line 864
    invoke-virtual {v9}, Lcom/android/server/usage/UnixCalendar;->getTimeInMillis()J

    move-result-wide v17

    sub-long v17, v17, v19

    const/4 v9, 0x3

    const/16 v23, 0x0

    .line 863
    move-object/from16 v24, v12

    .end local v12    # "pkgStats":Landroid/app/usage/UsageStats;
    .local v24, "pkgStats":Landroid/app/usage/UsageStats;
    move-object v12, v15

    move/from16 v25, v13

    .end local v13    # "i":I
    .local v25, "i":I
    move-object v13, v5

    move v5, v14

    const/4 v14, 0x0

    .end local v14    # "pkgCount":I
    .local v5, "pkgCount":I
    move-object/from16 v26, v15

    .end local v15    # "stat":Lcom/android/server/usage/IntervalStats;
    .local v26, "stat":Lcom/android/server/usage/IntervalStats;
    move-wide/from16 v15, v17

    move/from16 v17, v9

    move/from16 v18, v23

    invoke-virtual/range {v12 .. v18}, Lcom/android/server/usage/IntervalStats;->update(Ljava/lang/String;Ljava/lang/String;JII)V

    goto :goto_a7

    .line 860
    .end local v5    # "pkgCount":I
    .end local v24    # "pkgStats":Landroid/app/usage/UsageStats;
    .end local v25    # "i":I
    .end local v26    # "stat":Lcom/android/server/usage/IntervalStats;
    .restart local v12    # "pkgStats":Landroid/app/usage/UsageStats;
    .restart local v13    # "i":I
    .restart local v14    # "pkgCount":I
    .restart local v15    # "stat":Lcom/android/server/usage/IntervalStats;
    :cond_9e
    move-object/from16 v22, v9

    move-object/from16 v24, v12

    move/from16 v25, v13

    move v5, v14

    move-object/from16 v26, v15

    .line 867
    .end local v12    # "pkgStats":Landroid/app/usage/UsageStats;
    .end local v13    # "i":I
    .end local v14    # "pkgCount":I
    .end local v15    # "stat":Lcom/android/server/usage/IntervalStats;
    .restart local v5    # "pkgCount":I
    .restart local v24    # "pkgStats":Landroid/app/usage/UsageStats;
    .restart local v25    # "i":I
    .restart local v26    # "stat":Lcom/android/server/usage/IntervalStats;
    :goto_a7
    move-object/from16 v9, v24

    .end local v24    # "pkgStats":Landroid/app/usage/UsageStats;
    .local v9, "pkgStats":Landroid/app/usage/UsageStats;
    iget-object v12, v9, Landroid/app/usage/UsageStats;->mForegroundServices:Landroid/util/ArrayMap;

    invoke-virtual {v12}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_cc

    .line 868
    iget-object v12, v9, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    iget-object v13, v9, Landroid/app/usage/UsageStats;->mForegroundServices:Landroid/util/ArrayMap;

    invoke-virtual {v8, v12, v13}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 870
    iget-object v13, v9, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    const/4 v14, 0x0

    iget-object v12, v0, Lcom/android/server/usage/UserUsageStatsService;->mDailyExpiryDate:Lcom/android/server/usage/UnixCalendar;

    .line 871
    invoke-virtual {v12}, Lcom/android/server/usage/UnixCalendar;->getTimeInMillis()J

    move-result-wide v15

    sub-long v15, v15, v19

    const/16 v17, 0x16

    const/16 v18, 0x0

    .line 870
    move-object/from16 v12, v26

    invoke-virtual/range {v12 .. v18}, Lcom/android/server/usage/IntervalStats;->update(Ljava/lang/String;Ljava/lang/String;JII)V

    .line 874
    :cond_cc
    iget-object v12, v9, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    invoke-virtual {v6, v12}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 875
    invoke-direct/range {p0 .. p0}, Lcom/android/server/usage/UserUsageStatsService;->notifyStatsChanged()V

    .line 856
    .end local v9    # "pkgStats":Landroid/app/usage/UsageStats;
    :goto_d4
    add-int/lit8 v13, v25, 0x1

    move v14, v5

    move-object/from16 v9, v22

    move-object/from16 v15, v26

    const/4 v5, 0x0

    .end local v25    # "i":I
    .restart local v13    # "i":I
    goto/16 :goto_46

    .end local v5    # "pkgCount":I
    .end local v26    # "stat":Lcom/android/server/usage/IntervalStats;
    .restart local v14    # "pkgCount":I
    .restart local v15    # "stat":Lcom/android/server/usage/IntervalStats;
    :cond_de
    move-object/from16 v22, v9

    move/from16 v25, v13

    move v5, v14

    move-object/from16 v26, v15

    .line 879
    .end local v13    # "i":I
    .end local v14    # "pkgCount":I
    .end local v15    # "stat":Lcom/android/server/usage/IntervalStats;
    .restart local v5    # "pkgCount":I
    .restart local v26    # "stat":Lcom/android/server/usage/IntervalStats;
    const/4 v9, 0x0

    iget-object v12, v0, Lcom/android/server/usage/UserUsageStatsService;->mDailyExpiryDate:Lcom/android/server/usage/UnixCalendar;

    .line 880
    invoke-virtual {v12}, Lcom/android/server/usage/UnixCalendar;->getTimeInMillis()J

    move-result-wide v12

    sub-long v12, v12, v19

    .line 879
    move-object/from16 v14, v26

    .end local v26    # "stat":Lcom/android/server/usage/IntervalStats;
    .local v14, "stat":Lcom/android/server/usage/IntervalStats;
    invoke-virtual {v14, v9, v12, v13}, Lcom/android/server/usage/IntervalStats;->updateConfigurationStats(Landroid/content/res/Configuration;J)V

    .line 881
    iget-object v9, v0, Lcom/android/server/usage/UserUsageStatsService;->mDailyExpiryDate:Lcom/android/server/usage/UnixCalendar;

    invoke-virtual {v9}, Lcom/android/server/usage/UnixCalendar;->getTimeInMillis()J

    move-result-wide v12

    sub-long v12, v12, v19

    invoke-virtual {v14, v12, v13}, Lcom/android/server/usage/IntervalStats;->commitTime(J)V

    .line 854
    .end local v5    # "pkgCount":I
    .end local v14    # "stat":Lcom/android/server/usage/IntervalStats;
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v9, v22

    const/4 v5, 0x0

    goto/16 :goto_3a

    .line 884
    :cond_105
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/usage/UserUsageStatsService;->persistActiveStats()V

    .line 885
    iget-object v5, v0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    move-wide/from16 v9, p1

    invoke-virtual {v5, v9, v10}, Lcom/android/server/usage/UsageStatsDatabase;->prune(J)V

    .line 886
    invoke-direct/range {p0 .. p2}, Lcom/android/server/usage/UserUsageStatsService;->loadActiveStats(J)V

    .line 888
    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    move-result v5

    .line 889
    .local v5, "continueCount":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_117
    if-ge v11, v5, :cond_1f4

    .line 890
    invoke-virtual {v6, v11}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 891
    .local v12, "pkgName":Ljava/lang/String;
    iget-object v13, v0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    const/16 v20, 0x0

    aget-object v13, v13, v20

    iget-wide v14, v13, Lcom/android/server/usage/IntervalStats;->beginTime:J

    .line 892
    .local v14, "beginTime":J
    iget-object v13, v0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    move-wide/from16 v16, v14

    .end local v14    # "beginTime":J
    .local v16, "beginTime":J
    array-length v15, v13

    move/from16 v14, v20

    :goto_12e
    if-ge v14, v15, :cond_1e4

    move/from16 v18, v15

    aget-object v15, v13, v14

    .line 893
    .restart local v15    # "stat":Lcom/android/server/usage/IntervalStats;
    invoke-virtual {v7, v12}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_188

    .line 894
    nop

    .line 895
    invoke-virtual {v7, v12}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    move/from16 v21, v5

    .end local v5    # "continueCount":I
    .local v21, "continueCount":I
    move-object/from16 v5, v19

    check-cast v5, Landroid/util/SparseIntArray;

    .line 896
    .local v5, "eventMap":Landroid/util/SparseIntArray;
    move-object/from16 v22, v6

    .end local v6    # "continuePkgs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v22, "continuePkgs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {v5}, Landroid/util/SparseIntArray;->size()I

    move-result v6

    .line 897
    .local v6, "size":I
    const/16 v19, 0x0

    move-object/from16 v23, v7

    move/from16 v7, v19

    .local v7, "j":I
    .local v23, "continueActivity":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    :goto_151
    if-ge v7, v6, :cond_17d

    .line 898
    const/16 v19, 0x0

    .line 899
    invoke-virtual {v5, v7}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v24

    invoke-virtual {v5, v7}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v25

    .line 898
    move-object/from16 v26, v13

    move-object v13, v15

    move/from16 v29, v14

    move-wide/from16 v27, v16

    .end local v16    # "beginTime":J
    .local v27, "beginTime":J
    move-object v14, v12

    move-object/from16 v31, v15

    move/from16 v30, v18

    .end local v15    # "stat":Lcom/android/server/usage/IntervalStats;
    .local v31, "stat":Lcom/android/server/usage/IntervalStats;
    move-object/from16 v15, v19

    move/from16 v18, v24

    move/from16 v19, v25

    invoke-virtual/range {v13 .. v19}, Lcom/android/server/usage/IntervalStats;->update(Ljava/lang/String;Ljava/lang/String;JII)V

    .line 897
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v13, v26

    move/from16 v14, v29

    move/from16 v18, v30

    move-object/from16 v15, v31

    goto :goto_151

    .end local v27    # "beginTime":J
    .end local v31    # "stat":Lcom/android/server/usage/IntervalStats;
    .restart local v15    # "stat":Lcom/android/server/usage/IntervalStats;
    .restart local v16    # "beginTime":J
    :cond_17d
    move-object/from16 v26, v13

    move/from16 v29, v14

    move-object/from16 v31, v15

    move-wide/from16 v27, v16

    move/from16 v30, v18

    .end local v15    # "stat":Lcom/android/server/usage/IntervalStats;
    .end local v16    # "beginTime":J
    .restart local v27    # "beginTime":J
    .restart local v31    # "stat":Lcom/android/server/usage/IntervalStats;
    goto :goto_198

    .line 893
    .end local v21    # "continueCount":I
    .end local v22    # "continuePkgs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v23    # "continueActivity":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    .end local v27    # "beginTime":J
    .end local v31    # "stat":Lcom/android/server/usage/IntervalStats;
    .local v5, "continueCount":I
    .local v6, "continuePkgs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v7, "continueActivity":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    .restart local v15    # "stat":Lcom/android/server/usage/IntervalStats;
    .restart local v16    # "beginTime":J
    :cond_188
    move/from16 v21, v5

    move-object/from16 v22, v6

    move-object/from16 v23, v7

    move-object/from16 v26, v13

    move/from16 v29, v14

    move-object/from16 v31, v15

    move-wide/from16 v27, v16

    move/from16 v30, v18

    .line 902
    .end local v5    # "continueCount":I
    .end local v6    # "continuePkgs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v7    # "continueActivity":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    .end local v15    # "stat":Lcom/android/server/usage/IntervalStats;
    .end local v16    # "beginTime":J
    .restart local v21    # "continueCount":I
    .restart local v22    # "continuePkgs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v23    # "continueActivity":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    .restart local v27    # "beginTime":J
    .restart local v31    # "stat":Lcom/android/server/usage/IntervalStats;
    :goto_198
    invoke-virtual {v8, v12}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1ca

    .line 903
    nop

    .line 904
    invoke-virtual {v8, v12}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArrayMap;

    .line 905
    .local v5, "eventMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v6

    .line 906
    .local v6, "size":I
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_1aa
    if-ge v7, v6, :cond_1ca

    .line 907
    invoke-virtual {v5, v7}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v13

    move-object v15, v13

    check-cast v15, Ljava/lang/String;

    .line 908
    invoke-virtual {v5, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v18

    const/16 v19, 0x0

    .line 907
    move-object/from16 v13, v31

    move-object v14, v12

    move-wide/from16 v16, v27

    invoke-virtual/range {v13 .. v19}, Lcom/android/server/usage/IntervalStats;->update(Ljava/lang/String;Ljava/lang/String;JII)V

    .line 906
    add-int/lit8 v7, v7, 0x1

    goto :goto_1aa

    .line 911
    .end local v5    # "eventMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v6    # "size":I
    .end local v7    # "j":I
    :cond_1ca
    move-wide/from16 v5, v27

    move-object/from16 v7, v31

    .end local v27    # "beginTime":J
    .end local v31    # "stat":Lcom/android/server/usage/IntervalStats;
    .local v5, "beginTime":J
    .local v7, "stat":Lcom/android/server/usage/IntervalStats;
    invoke-virtual {v7, v3, v5, v6}, Lcom/android/server/usage/IntervalStats;->updateConfigurationStats(Landroid/content/res/Configuration;J)V

    .line 912
    invoke-direct/range {p0 .. p0}, Lcom/android/server/usage/UserUsageStatsService;->notifyStatsChanged()V

    .line 892
    .end local v7    # "stat":Lcom/android/server/usage/IntervalStats;
    add-int/lit8 v14, v29, 0x1

    move-wide/from16 v16, v5

    move/from16 v5, v21

    move-object/from16 v6, v22

    move-object/from16 v7, v23

    move-object/from16 v13, v26

    move/from16 v15, v30

    goto/16 :goto_12e

    .end local v21    # "continueCount":I
    .end local v22    # "continuePkgs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v23    # "continueActivity":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    .local v5, "continueCount":I
    .local v6, "continuePkgs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v7, "continueActivity":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    .restart local v16    # "beginTime":J
    :cond_1e4
    move/from16 v21, v5

    move-object/from16 v22, v6

    move-object/from16 v23, v7

    move-wide/from16 v5, v16

    .line 889
    .end local v5    # "continueCount":I
    .end local v6    # "continuePkgs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v7    # "continueActivity":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    .end local v12    # "pkgName":Ljava/lang/String;
    .end local v16    # "beginTime":J
    .restart local v21    # "continueCount":I
    .restart local v22    # "continuePkgs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v23    # "continueActivity":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    add-int/lit8 v11, v11, 0x1

    move/from16 v5, v21

    move-object/from16 v6, v22

    goto/16 :goto_117

    .end local v21    # "continueCount":I
    .end local v22    # "continuePkgs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v23    # "continueActivity":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    .restart local v5    # "continueCount":I
    .restart local v6    # "continuePkgs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v7    # "continueActivity":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    :cond_1f4
    move/from16 v21, v5

    move-object/from16 v23, v7

    .line 915
    .end local v5    # "continueCount":I
    .end local v7    # "continueActivity":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    .end local v11    # "i":I
    .restart local v21    # "continueCount":I
    .restart local v23    # "continueActivity":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/usage/UserUsageStatsService;->persistActiveStats()V

    .line 917
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long/2addr v5, v1

    .line 918
    .local v5, "totalTime":J
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v0, Lcom/android/server/usage/UserUsageStatsService;->mLogPrefix:Ljava/lang/String;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v11, "Rolling over usage stats complete. Took "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v11, " milliseconds"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    return-void
.end method

.method private static stringToInterval(Ljava/lang/String;)I
    .registers 8
    .param p0, "interval"    # Ljava/lang/String;

    .line 1327
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, -0x1

    sparse-switch v1, :sswitch_data_46

    :cond_10
    goto :goto_3c

    :sswitch_11
    const-string/jumbo v1, "monthly"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    move v0, v3

    goto :goto_3d

    :sswitch_1c
    const-string v1, "daily"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    move v0, v5

    goto :goto_3d

    :sswitch_26
    const-string/jumbo v1, "yearly"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    move v0, v2

    goto :goto_3d

    :sswitch_31
    const-string/jumbo v1, "weekly"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    move v0, v4

    goto :goto_3d

    :goto_3c
    move v0, v6

    :goto_3d
    packed-switch v0, :pswitch_data_58

    .line 1337
    return v6

    .line 1335
    :pswitch_41
    return v2

    .line 1333
    :pswitch_42
    return v3

    .line 1331
    :pswitch_43
    return v4

    .line 1329
    :pswitch_44
    return v5

    nop

    :sswitch_data_46
    .sparse-switch
        -0x2f307f7f -> :sswitch_31
        -0x2bc88576 -> :sswitch_26
        0x5aede19 -> :sswitch_1c
        0x49b5900d -> :sswitch_11
    .end sparse-switch

    :pswitch_data_58
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
    .end packed-switch
.end method

.method private updateRolloverDeadline()V
    .registers 5

    .line 966
    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mDailyExpiryDate:Lcom/android/server/usage/UnixCalendar;

    iget-object v1, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget-wide v1, v1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    invoke-virtual {v0, v1, v2}, Lcom/android/server/usage/UnixCalendar;->setTimeInMillis(J)V

    .line 968
    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mDailyExpiryDate:Lcom/android/server/usage/UnixCalendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/usage/UnixCalendar;->addDays(I)V

    .line 969
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/usage/UserUsageStatsService;->mLogPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Rollover scheduled @ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/server/usage/UserUsageStatsService;->sDateFormat:Ljava/text/SimpleDateFormat;

    iget-object v2, p0, Lcom/android/server/usage/UserUsageStatsService;->mDailyExpiryDate:Lcom/android/server/usage/UnixCalendar;

    .line 970
    invoke-virtual {v2}, Lcom/android/server/usage/UnixCalendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/usage/UserUsageStatsService;->mDailyExpiryDate:Lcom/android/server/usage/UnixCalendar;

    .line 971
    invoke-virtual {v1}, Lcom/android/server/usage/UnixCalendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 969
    const-string v1, "UsageStatsService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    return-void
.end method

.method private static validRange(JJJ)Z
    .registers 7
    .param p0, "currentTime"    # J
    .param p2, "beginTime"    # J
    .param p4, "endTime"    # J

    .line 466
    cmp-long v0, p2, p0

    if-gtz v0, :cond_a

    cmp-long v0, p2, p4

    if-gez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method


# virtual methods
.method applyRestoredPayload(Ljava/lang/String;[B)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "payload"    # [B

    .line 1415
    invoke-direct {p0}, Lcom/android/server/usage/UserUsageStatsService;->checkAndGetTimeLocked()J

    .line 1416
    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/usage/UsageStatsDatabase;->applyRestoredPayload(Ljava/lang/String;[B)V

    .line 1417
    return-void
.end method

.method checkin(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 4
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 979
    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    new-instance v1, Lcom/android/server/usage/UserUsageStatsService$5;

    invoke-direct {v1, p0, p1}, Lcom/android/server/usage/UserUsageStatsService$5;-><init>(Lcom/android/server/usage/UserUsageStatsService;Lcom/android/internal/util/IndentingPrintWriter;)V

    invoke-virtual {v0, v1}, Lcom/android/server/usage/UsageStatsDatabase;->checkinDailyFiles(Lcom/android/server/usage/UsageStatsDatabase$CheckinAction;)Z

    .line 986
    return-void
.end method

.method dump(Lcom/android/internal/util/IndentingPrintWriter;Ljava/util/List;)V
    .registers 4
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/IndentingPrintWriter;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 989
    .local p2, "pkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/usage/UserUsageStatsService;->dump(Lcom/android/internal/util/IndentingPrintWriter;Ljava/util/List;Z)V

    .line 990
    return-void
.end method

.method dump(Lcom/android/internal/util/IndentingPrintWriter;Ljava/util/List;Z)V
    .registers 12
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;
    .param p3, "compact"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/IndentingPrintWriter;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 993
    .local p2, "pkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    xor-int/lit8 v0, p3, 0x1

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/usage/UserUsageStatsService;->printLast24HrEvents(Lcom/android/internal/util/IndentingPrintWriter;ZLjava/util/List;)V

    .line 994
    const/4 v0, 0x0

    .local v0, "interval":I
    :goto_6
    iget-object v1, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    array-length v1, v1

    if-ge v0, v1, :cond_2c

    .line 995
    const-string v1, "In-memory "

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 996
    invoke-static {v0}, Lcom/android/server/usage/UserUsageStatsService;->intervalToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 997
    const-string v1, " stats"

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 998
    iget-object v1, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    aget-object v4, v1, v0

    xor-int/lit8 v5, p3, 0x1

    const/4 v6, 0x1

    move-object v2, p0

    move-object v3, p1

    move-object v7, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/usage/UserUsageStatsService;->printIntervalStats(Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/usage/IntervalStats;ZZLjava/util/List;)V

    .line 994
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 1000
    .end local v0    # "interval":I
    :cond_2c
    invoke-static {p2}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 1001
    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    invoke-virtual {v0, p1, p3}, Lcom/android/server/usage/UsageStatsDatabase;->dump(Lcom/android/internal/util/IndentingPrintWriter;Z)V

    .line 1003
    :cond_37
    return-void
.end method

.method dumpDatabaseInfo(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 4
    .param p1, "ipw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 1006
    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/server/usage/UsageStatsDatabase;->dump(Lcom/android/internal/util/IndentingPrintWriter;Z)V

    .line 1007
    return-void
.end method

.method dumpFile(Lcom/android/internal/util/IndentingPrintWriter;[Ljava/lang/String;)V
    .registers 10
    .param p1, "ipw"    # Lcom/android/internal/util/IndentingPrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .line 1014
    if-eqz p2, :cond_6c

    array-length v0, p2

    if-nez v0, :cond_6

    goto :goto_6c

    .line 1026
    :cond_6
    const/4 v0, 0x0

    :try_start_7
    aget-object v1, p2, v0

    invoke-static {v1}, Lcom/android/server/usage/UserUsageStatsService;->stringToInterval(Ljava/lang/String;)I

    move-result v1

    .line 1027
    .local v1, "intervalValue":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1b

    .line 1028
    aget-object v0, p2, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_1a
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_1a} :catch_65

    .local v0, "interval":I
    goto :goto_1c

    .line 1030
    .end local v0    # "interval":I
    :cond_1b
    move v0, v1

    .line 1035
    .end local v1    # "intervalValue":I
    .restart local v0    # "interval":I
    :goto_1c
    nop

    .line 1036
    if-ltz v0, :cond_5e

    iget-object v1, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    iget-object v1, v1, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    array-length v1, v1

    if-lt v0, v1, :cond_27

    goto :goto_5e

    .line 1040
    :cond_27
    array-length v1, p2

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2f

    .line 1042
    invoke-direct {p0, p1, v0}, Lcom/android/server/usage/UserUsageStatsService;->dumpFileDetailsForInterval(Lcom/android/internal/util/IndentingPrintWriter;I)V

    goto :goto_9b

    .line 1047
    :cond_2f
    :try_start_2f
    aget-object v1, p2, v2

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3
    :try_end_39
    .catch Ljava/lang/NumberFormatException; {:try_start_2f .. :try_end_39} :catch_57

    .line 1051
    .local v3, "filename":J
    nop

    .line 1052
    iget-object v1, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    invoke-virtual {v1, v0, v3, v4}, Lcom/android/server/usage/UsageStatsDatabase;->readIntervalStatsForFile(IJ)Lcom/android/server/usage/IntervalStats;

    move-result-object v1

    .line 1053
    .local v1, "stats":Lcom/android/server/usage/IntervalStats;
    if-nez v1, :cond_49

    .line 1054
    const-string/jumbo v2, "the specified filename does not exist."

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1055
    return-void

    .line 1057
    :cond_49
    aget-object v2, p2, v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-direct {p0, p1, v1, v5, v6}, Lcom/android/server/usage/UserUsageStatsService;->dumpFileDetails(Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/usage/IntervalStats;J)V

    goto :goto_9b

    .line 1048
    .end local v1    # "stats":Lcom/android/server/usage/IntervalStats;
    .end local v3    # "filename":J
    :catch_57
    move-exception v1

    .line 1049
    .local v1, "nfe":Ljava/lang/NumberFormatException;
    const-string v2, "invalid filename specified."

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1050
    return-void

    .line 1037
    .end local v1    # "nfe":Ljava/lang/NumberFormatException;
    :cond_5e
    :goto_5e
    const-string/jumbo v1, "the specified interval does not exist."

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1038
    return-void

    .line 1032
    .end local v0    # "interval":I
    :catch_65
    move-exception v0

    .line 1033
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    const-string v1, "invalid interval specified."

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1034
    return-void

    .line 1016
    .end local v0    # "nfe":Ljava/lang/NumberFormatException;
    :cond_6c
    :goto_6c
    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    iget-object v0, v0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    array-length v0, v0

    .line 1017
    .local v0, "numIntervals":I
    const/4 v1, 0x0

    .local v1, "interval":I
    :goto_72
    if-ge v1, v0, :cond_9a

    .line 1018
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "interval="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Lcom/android/server/usage/UserUsageStatsService;->intervalToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1019
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1020
    invoke-direct {p0, p1, v1}, Lcom/android/server/usage/UserUsageStatsService;->dumpFileDetailsForInterval(Lcom/android/internal/util/IndentingPrintWriter;I)V

    .line 1021
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1017
    add-int/lit8 v1, v1, 0x1

    goto :goto_72

    .line 1023
    .end local v0    # "numIntervals":I
    .end local v1    # "interval":I
    :cond_9a
    nop

    .line 1060
    :goto_9b
    return-void
.end method

.method dumpMappings(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 3
    .param p1, "ipw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 1010
    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    invoke-virtual {v0, p1}, Lcom/android/server/usage/UsageStatsDatabase;->dumpMappings(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 1011
    return-void
.end method

.method getBackupPayload(Ljava/lang/String;)[B
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .line 1409
    invoke-direct {p0}, Lcom/android/server/usage/UserUsageStatsService;->checkAndGetTimeLocked()J

    .line 1410
    invoke-virtual {p0}, Lcom/android/server/usage/UserUsageStatsService;->persistActiveStats()V

    .line 1411
    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    invoke-virtual {v0, p1}, Lcom/android/server/usage/UsageStatsDatabase;->getBackupPayload(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method init(JLjava/util/HashMap;Z)V
    .registers 13
    .param p1, "currentTimeMillis"    # J
    .param p4, "deleteObsoleteData"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .line 140
    .local p3, "installedPackages":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-direct {p0, p3, p4}, Lcom/android/server/usage/UserUsageStatsService;->readPackageMappingsLocked(Ljava/util/HashMap;Z)V

    .line 141
    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/usage/UsageStatsDatabase;->init(J)V

    .line 142
    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    invoke-virtual {v0}, Lcom/android/server/usage/UsageStatsDatabase;->wasUpgradePerformed()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 143
    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    invoke-virtual {v0, p3}, Lcom/android/server/usage/UsageStatsDatabase;->prunePackagesDataOnUpgrade(Ljava/util/HashMap;)V

    .line 146
    :cond_15
    const/4 v0, 0x0

    .line 147
    .local v0, "nullCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_17
    iget-object v2, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    array-length v3, v2

    if-ge v1, v3, :cond_2f

    .line 148
    iget-object v3, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    invoke-virtual {v3, v1}, Lcom/android/server/usage/UsageStatsDatabase;->getLatestUsageStats(I)Lcom/android/server/usage/IntervalStats;

    move-result-object v3

    aput-object v3, v2, v1

    .line 149
    iget-object v2, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    aget-object v2, v2, v1

    if-nez v2, :cond_2c

    .line 152
    add-int/lit8 v0, v0, 0x1

    .line 147
    :cond_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 156
    .end local v1    # "i":I
    :cond_2f
    if-lez v0, :cond_52

    .line 157
    array-length v1, v2

    if-eq v0, v1, :cond_4e

    .line 160
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/usage/UserUsageStatsService;->mLogPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Some stats have no latest available"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UsageStatsService"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :cond_4e
    invoke-direct {p0, p1, p2}, Lcom/android/server/usage/UserUsageStatsService;->loadActiveStats(J)V

    goto :goto_55

    .line 172
    :cond_52
    invoke-direct {p0}, Lcom/android/server/usage/UserUsageStatsService;->updateRolloverDeadline()V

    .line 179
    :goto_55
    iget-object v1, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 180
    .local v1, "currentDailyStats":Lcom/android/server/usage/IntervalStats;
    if-eqz v1, :cond_82

    .line 181
    new-instance v2, Landroid/app/usage/UsageEvents$Event;

    const/16 v3, 0x1a

    iget-wide v4, v1, Lcom/android/server/usage/IntervalStats;->lastTimeSaved:J

    iget-wide v6, v1, Lcom/android/server/usage/IntervalStats;->endTime:J

    .line 182
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    invoke-direct {v2, v3, v4, v5}, Landroid/app/usage/UsageEvents$Event;-><init>(IJ)V

    .line 183
    .local v2, "shutdownEvent":Landroid/app/usage/UsageEvents$Event;
    const-string v3, "android"

    iput-object v3, v2, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 184
    invoke-virtual {v1, v2}, Lcom/android/server/usage/IntervalStats;->addEvent(Landroid/app/usage/UsageEvents$Event;)V

    .line 185
    new-instance v4, Landroid/app/usage/UsageEvents$Event;

    const/16 v5, 0x1b

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v4, v5, v6, v7}, Landroid/app/usage/UsageEvents$Event;-><init>(IJ)V

    .line 186
    .local v4, "startupEvent":Landroid/app/usage/UsageEvents$Event;
    iput-object v3, v4, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 187
    invoke-virtual {v1, v4}, Lcom/android/server/usage/IntervalStats;->addEvent(Landroid/app/usage/UsageEvents$Event;)V

    .line 190
    .end local v2    # "shutdownEvent":Landroid/app/usage/UsageEvents$Event;
    .end local v4    # "startupEvent":Landroid/app/usage/UsageEvents$Event;
    :cond_82
    iget-object v2, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    invoke-virtual {v2}, Lcom/android/server/usage/UsageStatsDatabase;->isNewUpdate()Z

    move-result v2

    if-eqz v2, :cond_8d

    .line 191
    invoke-direct {p0}, Lcom/android/server/usage/UserUsageStatsService;->notifyNewUpdate()V

    .line 193
    :cond_8d
    return-void
.end method

.method onPackageRemoved(Ljava/lang/String;J)I
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "timeRemoved"    # J

    .line 202
    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mCachedEarlyEvents:Landroid/util/SparseArrayMap;

    invoke-virtual {v0}, Landroid/util/SparseArrayMap;->numMaps()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_18

    .line 203
    iget-object v1, p0, Lcom/android/server/usage/UserUsageStatsService;->mCachedEarlyEvents:Landroid/util/SparseArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/SparseArrayMap;->keyAt(I)I

    move-result v1

    .line 204
    .local v1, "eventType":I
    iget-object v2, p0, Lcom/android/server/usage/UserUsageStatsService;->mCachedEarlyEvents:Landroid/util/SparseArrayMap;

    invoke-virtual {v2, v1, p1}, Landroid/util/SparseArrayMap;->delete(ILjava/lang/Object;)Ljava/lang/Object;

    .line 202
    .end local v1    # "eventType":I
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 206
    .end local v0    # "i":I
    :cond_18
    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/usage/UsageStatsDatabase;->onPackageRemoved(Ljava/lang/String;J)I

    move-result v0

    return v0
.end method

.method persistActiveStats()V
    .registers 5

    .line 825
    iget-boolean v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mStatsChanged:Z

    if-eqz v0, :cond_57

    .line 826
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/usage/UserUsageStatsService;->mLogPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Flushing usage stats to disk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UsageStatsService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    :try_start_1e
    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    iget-object v2, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    invoke-virtual {v0, v2}, Lcom/android/server/usage/UsageStatsDatabase;->obfuscateCurrentStats([Lcom/android/server/usage/IntervalStats;)V

    .line 829
    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    invoke-virtual {v0}, Lcom/android/server/usage/UsageStatsDatabase;->writeMappingsLocked()V

    .line 830
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2b
    iget-object v2, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    array-length v3, v2

    if-ge v0, v3, :cond_3a

    .line 831
    iget-object v3, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    aget-object v2, v2, v0

    invoke-virtual {v3, v0, v2}, Lcom/android/server/usage/UsageStatsDatabase;->putUsageStats(ILcom/android/server/usage/IntervalStats;)V

    .line 830
    add-int/lit8 v0, v0, 0x1

    goto :goto_2b

    .line 833
    .end local v0    # "i":I
    :cond_3a
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mStatsChanged:Z
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_3d} :catch_3e

    .line 836
    goto :goto_57

    .line 834
    :catch_3e
    move-exception v0

    .line 835
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/usage/UserUsageStatsService;->mLogPrefix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Failed to persist active stats"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 838
    .end local v0    # "e":Ljava/io/IOException;
    :cond_57
    :goto_57
    return-void
.end method

.method printEventAggregation(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Lcom/android/server/usage/IntervalStats$EventTracker;Z)V
    .registers 10
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "tracker"    # Lcom/android/server/usage/IntervalStats$EventTracker;
    .param p4, "prettyDates"    # Z

    .line 1181
    iget v0, p3, Lcom/android/server/usage/IntervalStats$EventTracker;->count:I

    const-wide/16 v1, 0x0

    if-nez v0, :cond_c

    iget-wide v3, p3, Lcom/android/server/usage/IntervalStats$EventTracker;->duration:J

    cmp-long v0, v3, v1

    if-eqz v0, :cond_40

    .line 1182
    :cond_c
    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1183
    const-string v0, ": "

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1184
    iget v0, p3, Lcom/android/server/usage/IntervalStats$EventTracker;->count:I

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 1185
    const-string/jumbo v0, "x for "

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1186
    iget-wide v3, p3, Lcom/android/server/usage/IntervalStats$EventTracker;->duration:J

    invoke-direct {p0, v3, v4, p4}, Lcom/android/server/usage/UserUsageStatsService;->formatElapsedTime(JZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1187
    iget-wide v3, p3, Lcom/android/server/usage/IntervalStats$EventTracker;->curStartTime:J

    cmp-long v0, v3, v1

    if-eqz v0, :cond_3d

    .line 1188
    const-string v0, " (now running, started at "

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1189
    iget-wide v0, p3, Lcom/android/server/usage/IntervalStats$EventTracker;->curStartTime:J

    invoke-static {v0, v1, p4}, Lcom/android/server/usage/UserUsageStatsService;->formatDateTime(JZ)Ljava/lang/String;

    .line 1190
    const-string v0, ")"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1192
    :cond_3d
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1194
    :cond_40
    return-void
.end method

.method printIntervalStats(Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/usage/IntervalStats;ZZLjava/util/List;)V
    .registers 27
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;
    .param p2, "stats"    # Lcom/android/server/usage/IntervalStats;
    .param p3, "prettyDates"    # Z
    .param p4, "skipEvents"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/IndentingPrintWriter;",
            "Lcom/android/server/usage/IntervalStats;",
            "ZZ",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1198
    .local p5, "pkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p5

    if-eqz v3, :cond_37

    .line 1199
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, v0, Lcom/android/server/usage/UserUsageStatsService;->mContext:Landroid/content/Context;

    iget-wide v8, v2, Lcom/android/server/usage/IntervalStats;->beginTime:J

    iget-wide v10, v2, Lcom/android/server/usage/IntervalStats;->endTime:J

    const v12, 0x20015

    invoke-static/range {v7 .. v12}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "timeRange"

    invoke-virtual {v1, v6, v5}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    goto :goto_4d

    .line 1202
    :cond_37
    iget-wide v5, v2, Lcom/android/server/usage/IntervalStats;->beginTime:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v6, "beginTime"

    invoke-virtual {v1, v6, v5}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 1203
    iget-wide v5, v2, Lcom/android/server/usage/IntervalStats;->endTime:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v6, "endTime"

    invoke-virtual {v1, v6, v5}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 1205
    :goto_4d
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1206
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1207
    const-string/jumbo v5, "packages"

    invoke-virtual {v1, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1208
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1209
    iget-object v5, v2, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    .line 1210
    .local v5, "pkgStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/app/usage/UsageStats;>;"
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v6

    .line 1211
    .local v6, "pkgCount":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_63
    const-string/jumbo v8, "package"

    if-ge v7, v6, :cond_e3

    .line 1212
    invoke-virtual {v5, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/usage/UsageStats;

    .line 1213
    .local v9, "usageStats":Landroid/app/usage/UsageStats;
    invoke-static/range {p5 .. p5}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v10

    if-nez v10, :cond_7d

    iget-object v10, v9, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    invoke-interface {v4, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_7d

    .line 1214
    goto :goto_e0

    .line 1216
    :cond_7d
    iget-object v10, v9, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v8, v10}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 1217
    iget-wide v10, v9, Landroid/app/usage/UsageStats;->mTotalTimeInForeground:J

    .line 1218
    invoke-direct {v0, v10, v11, v3}, Lcom/android/server/usage/UserUsageStatsService;->formatElapsedTime(JZ)Ljava/lang/String;

    move-result-object v8

    .line 1217
    const-string/jumbo v10, "totalTimeUsed"

    invoke-virtual {v1, v10, v8}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 1219
    iget-wide v10, v9, Landroid/app/usage/UsageStats;->mLastTimeUsed:J

    invoke-static {v10, v11, v3}, Lcom/android/server/usage/UserUsageStatsService;->formatDateTime(JZ)Ljava/lang/String;

    move-result-object v8

    const-string v10, "lastTimeUsed"

    invoke-virtual {v1, v10, v8}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 1220
    iget-wide v10, v9, Landroid/app/usage/UsageStats;->mTotalTimeVisible:J

    .line 1221
    invoke-direct {v0, v10, v11, v3}, Lcom/android/server/usage/UserUsageStatsService;->formatElapsedTime(JZ)Ljava/lang/String;

    move-result-object v8

    .line 1220
    const-string/jumbo v10, "totalTimeVisible"

    invoke-virtual {v1, v10, v8}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 1222
    iget-wide v10, v9, Landroid/app/usage/UsageStats;->mLastTimeVisible:J

    .line 1223
    invoke-static {v10, v11, v3}, Lcom/android/server/usage/UserUsageStatsService;->formatDateTime(JZ)Ljava/lang/String;

    move-result-object v8

    .line 1222
    const-string v10, "lastTimeVisible"

    invoke-virtual {v1, v10, v8}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 1224
    iget-wide v10, v9, Landroid/app/usage/UsageStats;->mLastTimeComponentUsed:J

    .line 1225
    invoke-static {v10, v11, v3}, Lcom/android/server/usage/UserUsageStatsService;->formatDateTime(JZ)Ljava/lang/String;

    move-result-object v8

    .line 1224
    const-string v10, "lastTimeComponentUsed"

    invoke-virtual {v1, v10, v8}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 1226
    iget-wide v10, v9, Landroid/app/usage/UsageStats;->mTotalTimeForegroundServiceUsed:J

    .line 1227
    invoke-direct {v0, v10, v11, v3}, Lcom/android/server/usage/UserUsageStatsService;->formatElapsedTime(JZ)Ljava/lang/String;

    move-result-object v8

    .line 1226
    const-string/jumbo v10, "totalTimeFS"

    invoke-virtual {v1, v10, v8}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 1228
    iget-wide v10, v9, Landroid/app/usage/UsageStats;->mLastTimeForegroundServiceUsed:J

    .line 1229
    invoke-static {v10, v11, v3}, Lcom/android/server/usage/UserUsageStatsService;->formatDateTime(JZ)Ljava/lang/String;

    move-result-object v8

    .line 1228
    const-string v10, "lastTimeFS"

    invoke-virtual {v1, v10, v8}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 1230
    iget v8, v9, Landroid/app/usage/UsageStats;->mAppLaunchCount:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v10, "appLaunchCount"

    invoke-virtual {v1, v10, v8}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 1231
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1211
    .end local v9    # "usageStats":Landroid/app/usage/UsageStats;
    :goto_e0
    add-int/lit8 v7, v7, 0x1

    goto :goto_63

    .line 1233
    .end local v7    # "i":I
    :cond_e3
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1235
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1236
    const-string v7, "ChooserCounts"

    invoke-virtual {v1, v7}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1237
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1238
    invoke-virtual {v5}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_f9
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1be

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/usage/UsageStats;

    .line 1239
    .local v10, "usageStats":Landroid/app/usage/UsageStats;
    invoke-static/range {p5 .. p5}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v11

    if-nez v11, :cond_114

    iget-object v11, v10, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    invoke-interface {v4, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_114

    .line 1240
    goto :goto_f9

    .line 1242
    :cond_114
    iget-object v11, v10, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v8, v11}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 1243
    iget-object v11, v10, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    if-eqz v11, :cond_1a9

    .line 1244
    iget-object v11, v10, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v11

    .line 1245
    .local v11, "chooserCountSize":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_124
    if-ge v12, v11, :cond_1a0

    .line 1246
    iget-object v13, v10, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    invoke-virtual {v13, v12}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 1247
    .local v13, "action":Ljava/lang/String;
    iget-object v14, v10, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    invoke-virtual {v14, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/util/ArrayMap;

    .line 1248
    .local v14, "counts":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-virtual {v14}, Landroid/util/ArrayMap;->size()I

    move-result v15

    .line 1249
    .local v15, "annotationSize":I
    const/16 v16, 0x0

    move-object/from16 v17, v5

    move/from16 v5, v16

    .local v5, "j":I
    .local v17, "pkgStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/app/usage/UsageStats;>;"
    :goto_140
    if-ge v5, v15, :cond_195

    .line 1250
    invoke-virtual {v14, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v16

    move/from16 v18, v6

    .end local v6    # "pkgCount":I
    .local v18, "pkgCount":I
    move-object/from16 v6, v16

    check-cast v6, Ljava/lang/String;

    .line 1251
    .local v6, "key":Ljava/lang/String;
    invoke-virtual {v14, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v16

    .line 1252
    .local v16, "count":I
    if-eqz v16, :cond_188

    .line 1253
    move-object/from16 v19, v8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v20, v9

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1254
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1253
    invoke-virtual {v1, v7, v8}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 1255
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    goto :goto_18c

    .line 1252
    :cond_188
    move-object/from16 v19, v8

    move-object/from16 v20, v9

    .line 1249
    .end local v6    # "key":Ljava/lang/String;
    .end local v16    # "count":I
    :goto_18c
    add-int/lit8 v5, v5, 0x1

    move/from16 v6, v18

    move-object/from16 v8, v19

    move-object/from16 v9, v20

    goto :goto_140

    .end local v18    # "pkgCount":I
    .local v6, "pkgCount":I
    :cond_195
    move/from16 v18, v6

    move-object/from16 v19, v8

    move-object/from16 v20, v9

    .line 1245
    .end local v5    # "j":I
    .end local v6    # "pkgCount":I
    .end local v13    # "action":Ljava/lang/String;
    .end local v14    # "counts":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v15    # "annotationSize":I
    .restart local v18    # "pkgCount":I
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v5, v17

    goto :goto_124

    .end local v17    # "pkgStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/app/usage/UsageStats;>;"
    .end local v18    # "pkgCount":I
    .local v5, "pkgStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/app/usage/UsageStats;>;"
    .restart local v6    # "pkgCount":I
    :cond_1a0
    move-object/from16 v17, v5

    move/from16 v18, v6

    move-object/from16 v19, v8

    move-object/from16 v20, v9

    .end local v5    # "pkgStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/app/usage/UsageStats;>;"
    .end local v6    # "pkgCount":I
    .restart local v17    # "pkgStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/app/usage/UsageStats;>;"
    .restart local v18    # "pkgCount":I
    goto :goto_1b1

    .line 1243
    .end local v11    # "chooserCountSize":I
    .end local v12    # "i":I
    .end local v17    # "pkgStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/app/usage/UsageStats;>;"
    .end local v18    # "pkgCount":I
    .restart local v5    # "pkgStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/app/usage/UsageStats;>;"
    .restart local v6    # "pkgCount":I
    :cond_1a9
    move-object/from16 v17, v5

    move/from16 v18, v6

    move-object/from16 v19, v8

    move-object/from16 v20, v9

    .line 1260
    .end local v5    # "pkgStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/app/usage/UsageStats;>;"
    .end local v6    # "pkgCount":I
    .restart local v17    # "pkgStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/app/usage/UsageStats;>;"
    .restart local v18    # "pkgCount":I
    :goto_1b1
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1261
    .end local v10    # "usageStats":Landroid/app/usage/UsageStats;
    move-object/from16 v5, v17

    move/from16 v6, v18

    move-object/from16 v8, v19

    move-object/from16 v9, v20

    goto/16 :goto_f9

    .line 1262
    .end local v17    # "pkgStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/app/usage/UsageStats;>;"
    .end local v18    # "pkgCount":I
    .restart local v5    # "pkgStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/app/usage/UsageStats;>;"
    .restart local v6    # "pkgCount":I
    :cond_1be
    move-object/from16 v17, v5

    move/from16 v18, v6

    .end local v5    # "pkgStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/app/usage/UsageStats;>;"
    .end local v6    # "pkgCount":I
    .restart local v17    # "pkgStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/app/usage/UsageStats;>;"
    .restart local v18    # "pkgCount":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1264
    invoke-static/range {p5 .. p5}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v5

    if-eqz v5, :cond_241

    .line 1265
    const-string v5, "configurations"

    invoke-virtual {v1, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1266
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1267
    iget-object v5, v2, Lcom/android/server/usage/IntervalStats;->configurations:Landroid/util/ArrayMap;

    .line 1268
    .local v5, "configStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/res/Configuration;Landroid/app/usage/ConfigurationStats;>;"
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v6

    .line 1269
    .local v6, "configCount":I
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_1da
    if-ge v7, v6, :cond_215

    .line 1270
    invoke-virtual {v5, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/usage/ConfigurationStats;

    .line 1271
    .local v8, "config":Landroid/app/usage/ConfigurationStats;
    iget-object v9, v8, Landroid/app/usage/ConfigurationStats;->mConfiguration:Landroid/content/res/Configuration;

    invoke-static {v9}, Landroid/content/res/Configuration;->resourceQualifierString(Landroid/content/res/Configuration;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "config"

    invoke-virtual {v1, v10, v9}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 1273
    iget-wide v9, v8, Landroid/app/usage/ConfigurationStats;->mTotalTimeActive:J

    invoke-direct {v0, v9, v10, v3}, Lcom/android/server/usage/UserUsageStatsService;->formatElapsedTime(JZ)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "totalTime"

    invoke-virtual {v1, v10, v9}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 1274
    iget-wide v9, v8, Landroid/app/usage/ConfigurationStats;->mLastTimeActive:J

    invoke-static {v9, v10, v3}, Lcom/android/server/usage/UserUsageStatsService;->formatDateTime(JZ)Ljava/lang/String;

    move-result-object v9

    const-string v10, "lastTime"

    invoke-virtual {v1, v10, v9}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 1275
    iget v9, v8, Landroid/app/usage/ConfigurationStats;->mActivationCount:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v10, "count"

    invoke-virtual {v1, v10, v9}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 1276
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1269
    .end local v8    # "config":Landroid/app/usage/ConfigurationStats;
    add-int/lit8 v7, v7, 0x1

    goto :goto_1da

    .line 1278
    .end local v7    # "i":I
    :cond_215
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1279
    const-string v7, "event aggregations"

    invoke-virtual {v1, v7}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1280
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1281
    iget-object v7, v2, Lcom/android/server/usage/IntervalStats;->interactiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    const-string/jumbo v8, "screen-interactive"

    invoke-virtual {v0, v1, v8, v7, v3}, Lcom/android/server/usage/UserUsageStatsService;->printEventAggregation(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Lcom/android/server/usage/IntervalStats$EventTracker;Z)V

    .line 1283
    iget-object v7, v2, Lcom/android/server/usage/IntervalStats;->nonInteractiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    const-string/jumbo v8, "screen-non-interactive"

    invoke-virtual {v0, v1, v8, v7, v3}, Lcom/android/server/usage/UserUsageStatsService;->printEventAggregation(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Lcom/android/server/usage/IntervalStats$EventTracker;Z)V

    .line 1285
    iget-object v7, v2, Lcom/android/server/usage/IntervalStats;->keyguardShownTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    const-string v8, "keyguard-shown"

    invoke-virtual {v0, v1, v8, v7, v3}, Lcom/android/server/usage/UserUsageStatsService;->printEventAggregation(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Lcom/android/server/usage/IntervalStats$EventTracker;Z)V

    .line 1287
    iget-object v7, v2, Lcom/android/server/usage/IntervalStats;->keyguardHiddenTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    const-string v8, "keyguard-hidden"

    invoke-virtual {v0, v1, v8, v7, v3}, Lcom/android/server/usage/UserUsageStatsService;->printEventAggregation(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Lcom/android/server/usage/IntervalStats$EventTracker;Z)V

    .line 1289
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1294
    .end local v5    # "configStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/content/res/Configuration;Landroid/app/usage/ConfigurationStats;>;"
    .end local v6    # "configCount":I
    :cond_241
    if-nez p4, :cond_274

    .line 1295
    const-string v5, "events"

    invoke-virtual {v1, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1296
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1297
    iget-object v5, v2, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    .line 1298
    .local v5, "events":Landroid/app/usage/EventList;
    if-eqz v5, :cond_254

    invoke-virtual {v5}, Landroid/app/usage/EventList;->size()I

    move-result v6

    goto :goto_255

    :cond_254
    const/4 v6, 0x0

    .line 1299
    .local v6, "eventCount":I
    :goto_255
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_256
    if-ge v7, v6, :cond_271

    .line 1300
    invoke-virtual {v5, v7}, Landroid/app/usage/EventList;->get(I)Landroid/app/usage/UsageEvents$Event;

    move-result-object v8

    .line 1301
    .local v8, "event":Landroid/app/usage/UsageEvents$Event;
    invoke-static/range {p5 .. p5}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v9

    if-nez v9, :cond_26b

    iget-object v9, v8, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-interface {v4, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_26b

    .line 1302
    goto :goto_26e

    .line 1304
    :cond_26b
    invoke-static {v1, v8, v3}, Lcom/android/server/usage/UserUsageStatsService;->printEvent(Lcom/android/internal/util/IndentingPrintWriter;Landroid/app/usage/UsageEvents$Event;Z)V

    .line 1299
    .end local v8    # "event":Landroid/app/usage/UsageEvents$Event;
    :goto_26e
    add-int/lit8 v7, v7, 0x1

    goto :goto_256

    .line 1306
    .end local v7    # "i":I
    :cond_271
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1308
    .end local v5    # "events":Landroid/app/usage/EventList;
    .end local v6    # "eventCount":I
    :cond_274
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1309
    return-void
.end method

.method printLast24HrEvents(Lcom/android/internal/util/IndentingPrintWriter;ZLjava/util/List;)V
    .registers 21
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;
    .param p2, "prettyDates"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/IndentingPrintWriter;",
            "Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1133
    .local p3, "pkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 1134
    .local v10, "endTime":J
    new-instance v2, Lcom/android/server/usage/UnixCalendar;

    invoke-direct {v2, v10, v11}, Lcom/android/server/usage/UnixCalendar;-><init>(J)V

    move-object v12, v2

    .line 1135
    .local v12, "yesterday":Lcom/android/server/usage/UnixCalendar;
    const/4 v2, -0x1

    invoke-virtual {v12, v2}, Lcom/android/server/usage/UnixCalendar;->addDays(I)V

    .line 1137
    invoke-virtual {v12}, Lcom/android/server/usage/UnixCalendar;->getTimeInMillis()J

    move-result-wide v13

    .line 1139
    .local v13, "beginTime":J
    new-instance v9, Lcom/android/server/usage/UserUsageStatsService$6;

    move-object v2, v9

    move-object/from16 v3, p0

    move-wide v4, v13

    move-wide v6, v10

    move-object/from16 v8, p3

    invoke-direct/range {v2 .. v8}, Lcom/android/server/usage/UserUsageStatsService$6;-><init>(Lcom/android/server/usage/UserUsageStatsService;JJLjava/util/List;)V

    const/4 v3, 0x0

    const/4 v15, 0x0

    move-object/from16 v2, p0

    move-object v8, v9

    move v9, v15

    invoke-direct/range {v2 .. v9}, Lcom/android/server/usage/UserUsageStatsService;->queryStats(IJJLcom/android/server/usage/UsageStatsDatabase$StatCombiner;Z)Ljava/util/List;

    move-result-object v8

    .line 1161
    .local v8, "events":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/UsageEvents$Event;>;"
    const-string v2, "Last 24 hour events ("

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1162
    if-eqz v1, :cond_60

    .line 1163
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\""

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v7, p0

    iget-object v2, v7, Lcom/android/server/usage/UserUsageStatsService;->mContext:Landroid/content/Context;

    const v16, 0x20015

    move-wide v3, v13

    move-wide v5, v10

    move/from16 v7, v16

    invoke-static/range {v2 .. v7}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "timeRange"

    invoke-virtual {v0, v3, v2}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    goto :goto_72

    .line 1166
    :cond_60
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "beginTime"

    invoke-virtual {v0, v3, v2}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 1167
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "endTime"

    invoke-virtual {v0, v3, v2}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 1169
    :goto_72
    const-string v2, ")"

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1170
    if-eqz v8, :cond_93

    .line 1171
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1172
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_80
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_90

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/usage/UsageEvents$Event;

    .line 1173
    .local v3, "event":Landroid/app/usage/UsageEvents$Event;
    invoke-static {v0, v3, v1}, Lcom/android/server/usage/UserUsageStatsService;->printEvent(Lcom/android/internal/util/IndentingPrintWriter;Landroid/app/usage/UsageEvents$Event;Z)V

    .line 1174
    .end local v3    # "event":Landroid/app/usage/UsageEvents$Event;
    goto :goto_80

    .line 1175
    :cond_90
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1177
    :cond_93
    return-void
.end method

.method pruneUninstalledPackagesData()Z
    .registers 2

    .line 262
    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    invoke-virtual {v0}, Lcom/android/server/usage/UsageStatsDatabase;->pruneUninstalledPackagesData()Z

    move-result v0

    return v0
.end method

.method queryConfigurationStats(IJJ)Ljava/util/List;
    .registers 15
    .param p1, "bucketType"    # I
    .param p2, "beginTime"    # J
    .param p4, "endTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ)",
            "Ljava/util/List<",
            "Landroid/app/usage/ConfigurationStats;",
            ">;"
        }
    .end annotation

    .line 550
    invoke-direct {p0}, Lcom/android/server/usage/UserUsageStatsService;->checkAndGetTimeLocked()J

    move-result-wide v0

    move-wide v2, p2

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, Lcom/android/server/usage/UserUsageStatsService;->validRange(JJJ)Z

    move-result v0

    if-nez v0, :cond_e

    .line 551
    const/4 v0, 0x0

    return-object v0

    .line 553
    :cond_e
    sget-object v7, Lcom/android/server/usage/UserUsageStatsService;->sConfigStatsCombiner:Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;

    const/4 v8, 0x1

    move-object v1, p0

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-direct/range {v1 .. v8}, Lcom/android/server/usage/UserUsageStatsService;->queryStats(IJJLcom/android/server/usage/UsageStatsDatabase$StatCombiner;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method queryEarliestAppEvents(JJI)Landroid/app/usage/UsageEvents;
    .registers 22
    .param p1, "beginTime"    # J
    .param p3, "endTime"    # J
    .param p5, "eventType"    # I

    .line 639
    invoke-direct/range {p0 .. p0}, Lcom/android/server/usage/UserUsageStatsService;->checkAndGetTimeLocked()J

    move-result-wide v0

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    invoke-static/range {v0 .. v5}, Lcom/android/server/usage/UserUsageStatsService;->validRange(JJJ)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_10

    .line 640
    return-object v1

    .line 642
    :cond_10
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 643
    .local v0, "names":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    new-instance v7, Landroid/util/ArraySet;

    invoke-direct {v7}, Landroid/util/ArraySet;-><init>()V

    .line 644
    .local v7, "eventSuccess":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v10, 0x0

    new-instance v14, Lcom/android/server/usage/UserUsageStatsService$$ExternalSyntheticLambda1;

    move-object v2, v14

    move-wide/from16 v3, p1

    move-wide/from16 v5, p3

    move-object v8, v0

    move/from16 v9, p5

    invoke-direct/range {v2 .. v9}, Lcom/android/server/usage/UserUsageStatsService$$ExternalSyntheticLambda1;-><init>(JJLandroid/util/ArraySet;Landroid/util/ArraySet;I)V

    const/4 v15, 0x0

    move-object/from16 v8, p0

    move v9, v10

    move-wide/from16 v10, p1

    move-wide/from16 v12, p3

    invoke-direct/range {v8 .. v15}, Lcom/android/server/usage/UserUsageStatsService;->queryStats(IJJLcom/android/server/usage/UsageStatsDatabase$StatCombiner;Z)Ljava/util/List;

    move-result-object v2

    .line 678
    .local v2, "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/UsageEvents$Event;>;"
    if-eqz v2, :cond_53

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3d

    goto :goto_53

    .line 685
    :cond_3d
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 686
    .local v1, "table":[Ljava/lang/String;
    invoke-static {v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 687
    new-instance v3, Landroid/app/usage/UsageEvents;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v1, v4}, Landroid/app/usage/UsageEvents;-><init>(Ljava/util/List;[Ljava/lang/String;Z)V

    return-object v3

    .line 679
    .end local v1    # "table":[Ljava/lang/String;
    :cond_53
    :goto_53
    return-object v1
.end method

.method queryEarliestEventsForPackage(JJLjava/lang/String;I)Landroid/app/usage/UsageEvents;
    .registers 26
    .param p1, "beginTime"    # J
    .param p3, "endTime"    # J
    .param p5, "packageName"    # Ljava/lang/String;
    .param p6, "eventType"    # I

    .line 741
    move-object/from16 v8, p0

    move-wide/from16 v6, p1

    move-wide/from16 v14, p3

    move-object/from16 v12, p5

    move/from16 v13, p6

    invoke-direct/range {p0 .. p0}, Lcom/android/server/usage/UserUsageStatsService;->checkAndGetTimeLocked()J

    move-result-wide v9

    .line 742
    .local v9, "currentTime":J
    move-wide v0, v9

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    invoke-static/range {v0 .. v5}, Lcom/android/server/usage/UserUsageStatsService;->validRange(JJJ)Z

    move-result v0

    const/4 v4, 0x0

    if-nez v0, :cond_1b

    .line 743
    return-object v4

    .line 746
    :cond_1b
    iget-object v0, v8, Lcom/android/server/usage/UserUsageStatsService;->mCachedEarlyEvents:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, v13, v12}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usage/UserUsageStatsService$CachedEarlyEvents;

    .line 747
    .local v0, "cachedEvents":Lcom/android/server/usage/UserUsageStatsService$CachedEarlyEvents;
    const/4 v5, 0x1

    if-eqz v0, :cond_81

    .line 752
    iget-wide v2, v0, Lcom/android/server/usage/UserUsageStatsService$CachedEarlyEvents;->searchBeginTime:J

    cmp-long v1, v2, v6

    if-gtz v1, :cond_7a

    iget-wide v1, v0, Lcom/android/server/usage/UserUsageStatsService$CachedEarlyEvents;->eventTime:J

    cmp-long v1, v6, v1

    if-gtz v1, :cond_7a

    .line 753
    iget-object v1, v0, Lcom/android/server/usage/UserUsageStatsService$CachedEarlyEvents;->events:Ljava/util/List;

    if-nez v1, :cond_38

    const/4 v1, 0x0

    goto :goto_3e

    :cond_38
    iget-object v1, v0, Lcom/android/server/usage/UserUsageStatsService$CachedEarlyEvents;->events:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 754
    .local v1, "numEvents":I
    :goto_3e
    if-eqz v1, :cond_50

    iget-object v2, v0, Lcom/android/server/usage/UserUsageStatsService$CachedEarlyEvents;->events:Ljava/util/List;

    add-int/lit8 v3, v1, -0x1

    .line 755
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/usage/UsageEvents$Event;

    invoke-virtual {v2}, Landroid/app/usage/UsageEvents$Event;->getEventType()I

    move-result v2

    if-eq v2, v13, :cond_61

    :cond_50
    iget-wide v2, v0, Lcom/android/server/usage/UserUsageStatsService$CachedEarlyEvents;->eventTime:J

    cmp-long v2, v2, v14

    if-gez v2, :cond_61

    .line 760
    iget-wide v2, v0, Lcom/android/server/usage/UserUsageStatsService$CachedEarlyEvents;->eventTime:J

    invoke-static {v9, v10, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 775
    .end local v1    # "numEvents":I
    .end local p1    # "beginTime":J
    .local v2, "beginTime":J
    move-object v7, v0

    move-wide/from16 v16, v2

    const/4 v11, 0x0

    goto :goto_92

    .line 764
    .end local v2    # "beginTime":J
    .restart local v1    # "numEvents":I
    .restart local p1    # "beginTime":J
    :cond_61
    iget-wide v2, v0, Lcom/android/server/usage/UserUsageStatsService$CachedEarlyEvents;->eventTime:J

    cmp-long v2, v2, v14

    if-gtz v2, :cond_79

    .line 765
    iget-object v2, v0, Lcom/android/server/usage/UserUsageStatsService$CachedEarlyEvents;->events:Ljava/util/List;

    if-nez v2, :cond_6c

    .line 766
    return-object v4

    .line 768
    :cond_6c
    new-instance v2, Landroid/app/usage/UsageEvents;

    iget-object v3, v0, Lcom/android/server/usage/UserUsageStatsService$CachedEarlyEvents;->events:Ljava/util/List;

    new-array v4, v5, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v12, v4, v11

    invoke-direct {v2, v3, v4, v11}, Landroid/app/usage/UsageEvents;-><init>(Ljava/util/List;[Ljava/lang/String;Z)V

    return-object v2

    .line 773
    :cond_79
    return-object v4

    .line 752
    .end local v1    # "numEvents":I
    :cond_7a
    const/4 v11, 0x0

    .line 777
    iput-wide v6, v0, Lcom/android/server/usage/UserUsageStatsService$CachedEarlyEvents;->searchBeginTime:J

    move-wide/from16 v16, v6

    move-object v7, v0

    goto :goto_92

    .line 780
    :cond_81
    const/4 v11, 0x0

    new-instance v1, Lcom/android/server/usage/UserUsageStatsService$CachedEarlyEvents;

    invoke-direct {v1, v4}, Lcom/android/server/usage/UserUsageStatsService$CachedEarlyEvents;-><init>(Lcom/android/server/usage/UserUsageStatsService$CachedEarlyEvents-IA;)V

    move-object v0, v1

    .line 781
    iput-wide v6, v0, Lcom/android/server/usage/UserUsageStatsService$CachedEarlyEvents;->searchBeginTime:J

    .line 782
    iget-object v1, v8, Lcom/android/server/usage/UserUsageStatsService;->mCachedEarlyEvents:Landroid/util/SparseArrayMap;

    invoke-virtual {v1, v13, v12, v0}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)V

    move-wide/from16 v16, v6

    move-object v7, v0

    .line 785
    .end local v0    # "cachedEvents":Lcom/android/server/usage/UserUsageStatsService$CachedEarlyEvents;
    .end local p1    # "beginTime":J
    .local v7, "cachedEvents":Lcom/android/server/usage/UserUsageStatsService$CachedEarlyEvents;
    .local v16, "beginTime":J
    :goto_92
    move-wide v2, v9

    move v6, v11

    .end local v9    # "currentTime":J
    .local v2, "currentTime":J
    move-wide/from16 v10, v16

    .line 786
    .local v10, "finalBeginTime":J
    const/4 v1, 0x0

    new-instance v18, Lcom/android/server/usage/UserUsageStatsService$$ExternalSyntheticLambda0;

    move-object/from16 v9, v18

    move-wide/from16 v12, p3

    move-object/from16 v14, p5

    move/from16 v15, p6

    invoke-direct/range {v9 .. v15}, Lcom/android/server/usage/UserUsageStatsService$$ExternalSyntheticLambda0;-><init>(JJLjava/lang/String;I)V

    const/4 v9, 0x0

    move-object/from16 v0, p0

    move-wide v12, v2

    move v14, v6

    .end local v2    # "currentTime":J
    .local v12, "currentTime":J
    move-wide/from16 v2, v16

    move-object v6, v4

    move v15, v5

    move-wide/from16 v4, p3

    move-object/from16 v6, v18

    move-object v14, v7

    .end local v7    # "cachedEvents":Lcom/android/server/usage/UserUsageStatsService$CachedEarlyEvents;
    .local v14, "cachedEvents":Lcom/android/server/usage/UserUsageStatsService$CachedEarlyEvents;
    move v7, v9

    invoke-direct/range {v0 .. v7}, Lcom/android/server/usage/UserUsageStatsService;->queryStats(IJJLcom/android/server/usage/UsageStatsDatabase$StatCombiner;Z)Ljava/util/List;

    move-result-object v0

    .line 811
    .local v0, "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/UsageEvents$Event;>;"
    if-eqz v0, :cond_de

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_c0

    goto :goto_de

    .line 819
    :cond_c0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v15

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/usage/UsageEvents$Event;

    invoke-virtual {v1}, Landroid/app/usage/UsageEvents$Event;->getTimeStamp()J

    move-result-wide v1

    iput-wide v1, v14, Lcom/android/server/usage/UserUsageStatsService$CachedEarlyEvents;->eventTime:J

    .line 820
    iput-object v0, v14, Lcom/android/server/usage/UserUsageStatsService$CachedEarlyEvents;->events:Ljava/util/List;

    .line 821
    new-instance v1, Landroid/app/usage/UsageEvents;

    new-array v2, v15, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p5, v2, v3

    invoke-direct {v1, v0, v2, v3}, Landroid/app/usage/UsageEvents;-><init>(Ljava/util/List;[Ljava/lang/String;Z)V

    return-object v1

    .line 814
    :cond_de
    :goto_de
    move-wide/from16 v1, p3

    invoke-static {v12, v13, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    iput-wide v3, v14, Lcom/android/server/usage/UserUsageStatsService$CachedEarlyEvents;->eventTime:J

    .line 815
    const/4 v3, 0x0

    iput-object v3, v14, Lcom/android/server/usage/UserUsageStatsService$CachedEarlyEvents;->events:Ljava/util/List;

    .line 816
    return-object v3
.end method

.method queryEventStats(IJJ)Ljava/util/List;
    .registers 15
    .param p1, "bucketType"    # I
    .param p2, "beginTime"    # J
    .param p4, "endTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ)",
            "Ljava/util/List<",
            "Landroid/app/usage/EventStats;",
            ">;"
        }
    .end annotation

    .line 557
    invoke-direct {p0}, Lcom/android/server/usage/UserUsageStatsService;->checkAndGetTimeLocked()J

    move-result-wide v0

    move-wide v2, p2

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, Lcom/android/server/usage/UserUsageStatsService;->validRange(JJJ)Z

    move-result v0

    if-nez v0, :cond_e

    .line 558
    const/4 v0, 0x0

    return-object v0

    .line 560
    :cond_e
    sget-object v7, Lcom/android/server/usage/UserUsageStatsService;->sEventStatsCombiner:Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;

    const/4 v8, 0x1

    move-object v1, p0

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-direct/range {v1 .. v8}, Lcom/android/server/usage/UserUsageStatsService;->queryStats(IJJLcom/android/server/usage/UsageStatsDatabase$StatCombiner;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method queryEvents(JJI)Landroid/app/usage/UsageEvents;
    .registers 18
    .param p1, "beginTime"    # J
    .param p3, "endTime"    # J
    .param p5, "flags"    # I

    .line 564
    invoke-direct {p0}, Lcom/android/server/usage/UserUsageStatsService;->checkAndGetTimeLocked()J

    move-result-wide v0

    move-wide v2, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lcom/android/server/usage/UserUsageStatsService;->validRange(JJJ)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_e

    .line 565
    return-object v1

    .line 567
    :cond_e
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 568
    .local v0, "names":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v10, 0x0

    new-instance v11, Lcom/android/server/usage/UserUsageStatsService$4;

    move-object v2, v11

    move-object v3, p0

    move-wide v4, p1

    move-wide v6, p3

    move/from16 v8, p5

    move-object v9, v0

    invoke-direct/range {v2 .. v9}, Lcom/android/server/usage/UserUsageStatsService$4;-><init>(Lcom/android/server/usage/UserUsageStatsService;JJILandroid/util/ArraySet;)V

    const/4 v9, 0x0

    move-object v2, p0

    move v3, v10

    move-object v8, v11

    invoke-direct/range {v2 .. v9}, Lcom/android/server/usage/UserUsageStatsService;->queryStats(IJJLcom/android/server/usage/UsageStatsDatabase$StatCombiner;Z)Ljava/util/List;

    move-result-object v2

    .line 623
    .local v2, "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/UsageEvents$Event;>;"
    if-eqz v2, :cond_47

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_31

    goto :goto_47

    .line 627
    :cond_31
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 628
    .local v1, "table":[Ljava/lang/String;
    invoke-static {v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 629
    new-instance v3, Landroid/app/usage/UsageEvents;

    const/4 v4, 0x1

    invoke-direct {v3, v2, v1, v4}, Landroid/app/usage/UsageEvents;-><init>(Ljava/util/List;[Ljava/lang/String;Z)V

    return-object v3

    .line 624
    .end local v1    # "table":[Ljava/lang/String;
    :cond_47
    :goto_47
    return-object v1
.end method

.method queryEventsForPackage(JJLjava/lang/String;Z)Landroid/app/usage/UsageEvents;
    .registers 20
    .param p1, "beginTime"    # J
    .param p3, "endTime"    # J
    .param p5, "packageName"    # Ljava/lang/String;
    .param p6, "includeTaskRoot"    # Z

    .line 693
    invoke-direct {p0}, Lcom/android/server/usage/UserUsageStatsService;->checkAndGetTimeLocked()J

    move-result-wide v0

    move-wide v2, p1

    move-wide/from16 v4, p3

    invoke-static/range {v0 .. v5}, Lcom/android/server/usage/UserUsageStatsService;->validRange(JJJ)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_f

    .line 694
    return-object v1

    .line 696
    :cond_f
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 697
    .local v0, "names":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    move-object/from16 v10, p5

    invoke-virtual {v0, v10}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 698
    const/4 v11, 0x0

    new-instance v12, Lcom/android/server/usage/UserUsageStatsService$$ExternalSyntheticLambda2;

    move-object v2, v12

    move-wide v3, p1

    move-wide/from16 v5, p3

    move-object/from16 v7, p5

    move-object v8, v0

    move/from16 v9, p6

    invoke-direct/range {v2 .. v9}, Lcom/android/server/usage/UserUsageStatsService$$ExternalSyntheticLambda2;-><init>(JJLjava/lang/String;Landroid/util/ArraySet;Z)V

    const/4 v9, 0x0

    move-object v2, p0

    move v3, v11

    move-wide v4, p1

    move-wide/from16 v6, p3

    move-object v8, v12

    invoke-direct/range {v2 .. v9}, Lcom/android/server/usage/UserUsageStatsService;->queryStats(IJJLcom/android/server/usage/UsageStatsDatabase$StatCombiner;Z)Ljava/util/List;

    move-result-object v2

    .line 725
    .local v2, "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/UsageEvents$Event;>;"
    if-eqz v2, :cond_55

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3e

    move/from16 v4, p6

    goto :goto_57

    .line 729
    :cond_3e
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 730
    .local v1, "table":[Ljava/lang/String;
    invoke-static {v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 731
    new-instance v3, Landroid/app/usage/UsageEvents;

    move/from16 v4, p6

    invoke-direct {v3, v2, v1, v4}, Landroid/app/usage/UsageEvents;-><init>(Ljava/util/List;[Ljava/lang/String;Z)V

    return-object v3

    .line 725
    .end local v1    # "table":[Ljava/lang/String;
    :cond_55
    move/from16 v4, p6

    .line 726
    :goto_57
    return-object v1
.end method

.method queryUsageStats(IJJ)Ljava/util/List;
    .registers 15
    .param p1, "bucketType"    # I
    .param p2, "beginTime"    # J
    .param p4, "endTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ)",
            "Ljava/util/List<",
            "Landroid/app/usage/UsageStats;",
            ">;"
        }
    .end annotation

    .line 543
    invoke-direct {p0}, Lcom/android/server/usage/UserUsageStatsService;->checkAndGetTimeLocked()J

    move-result-wide v0

    move-wide v2, p2

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, Lcom/android/server/usage/UserUsageStatsService;->validRange(JJJ)Z

    move-result v0

    if-nez v0, :cond_e

    .line 544
    const/4 v0, 0x0

    return-object v0

    .line 546
    :cond_e
    sget-object v7, Lcom/android/server/usage/UserUsageStatsService;->sUsageStatsCombiner:Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;

    const/4 v8, 0x1

    move-object v1, p0

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-direct/range {v1 .. v8}, Lcom/android/server/usage/UserUsageStatsService;->queryStats(IJJLcom/android/server/usage/UsageStatsDatabase$StatCombiner;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method reportEvent(Landroid/app/usage/UsageEvents$Event;)V
    .registers 19
    .param p1, "event"    # Landroid/app/usage/UsageEvents$Event;

    .line 326
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/16 v3, 0x1f

    const/4 v4, 0x7

    if-eq v2, v4, :cond_15

    iget v2, v1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    if-eq v2, v3, :cond_15

    .line 328
    invoke-direct/range {p0 .. p0}, Lcom/android/server/usage/UserUsageStatsService;->checkAndGetTimeLocked()J

    .line 329
    invoke-direct/range {p0 .. p1}, Lcom/android/server/usage/UserUsageStatsService;->convertToSystemTimeLocked(Landroid/app/usage/UsageEvents$Event;)V

    .line 332
    :cond_15
    iget-wide v4, v1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    iget-object v2, v0, Lcom/android/server/usage/UserUsageStatsService;->mDailyExpiryDate:Lcom/android/server/usage/UnixCalendar;

    invoke-virtual {v2}, Lcom/android/server/usage/UnixCalendar;->getTimeInMillis()J

    move-result-wide v6

    cmp-long v2, v4, v6

    if-ltz v2, :cond_3b

    .line 335
    invoke-virtual/range {p1 .. p1}, Landroid/app/usage/UsageEvents$Event;->getEventType()I

    move-result v2

    if-ne v2, v3, :cond_36

    invoke-direct/range {p0 .. p0}, Lcom/android/server/usage/UserUsageStatsService;->isTimeChange()Z

    move-result v2

    if-eqz v2, :cond_36

    .line 336
    const-string v2, "UsageStatsService"

    const-string/jumbo v4, "time change no rollover"

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3b

    .line 339
    :cond_36
    iget-wide v4, v1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    invoke-direct {v0, v4, v5}, Lcom/android/server/usage/UserUsageStatsService;->rolloverStats(J)V

    .line 345
    :cond_3b
    :goto_3b
    iget-object v2, v0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    .line 347
    .local v2, "currentDailyStats":Lcom/android/server/usage/IntervalStats;
    iget-object v5, v1, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    .line 348
    .local v5, "newFullConfig":Landroid/content/res/Configuration;
    iget v6, v1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/4 v7, 0x5

    if-ne v6, v7, :cond_53

    iget-object v6, v2, Lcom/android/server/usage/IntervalStats;->activeConfiguration:Landroid/content/res/Configuration;

    if-eqz v6, :cond_53

    .line 351
    iget-object v6, v2, Lcom/android/server/usage/IntervalStats;->activeConfiguration:Landroid/content/res/Configuration;

    invoke-static {v6, v5}, Landroid/content/res/Configuration;->generateDelta(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Landroid/content/res/Configuration;

    move-result-object v6

    iput-object v6, v1, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    .line 355
    :cond_53
    iget v6, v1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/4 v7, 0x6

    if-eq v6, v7, :cond_71

    iget v6, v1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/16 v7, 0x18

    if-eq v6, v7, :cond_71

    iget v6, v1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/16 v7, 0x19

    if-eq v6, v7, :cond_71

    iget v6, v1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/16 v7, 0x1a

    if-eq v6, v7, :cond_71

    iget v6, v1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    if-eq v6, v3, :cond_71

    .line 366
    invoke-virtual {v2, v1}, Lcom/android/server/usage/IntervalStats;->addEvent(Landroid/app/usage/UsageEvents$Event;)V

    .line 369
    :cond_71
    const/4 v3, 0x0

    .line 370
    .local v3, "incrementAppLaunch":Z
    iget v6, v1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_87

    .line 371
    iget-object v6, v1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    if-eqz v6, :cond_94

    iget-object v6, v1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    iget-object v7, v0, Lcom/android/server/usage/UserUsageStatsService;->mLastBackgroundedPackage:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_94

    .line 372
    const/4 v3, 0x1

    goto :goto_94

    .line 374
    :cond_87
    iget v6, v1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_94

    .line 375
    iget-object v6, v1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    if-eqz v6, :cond_94

    .line 376
    iget-object v6, v1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    iput-object v6, v0, Lcom/android/server/usage/UserUsageStatsService;->mLastBackgroundedPackage:Ljava/lang/String;

    .line 380
    :cond_94
    :goto_94
    iget-object v6, v0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    array-length v7, v6

    move v8, v4

    :goto_98
    if-ge v8, v7, :cond_fd

    aget-object v15, v6, v8

    .line 381
    .local v15, "stats":Lcom/android/server/usage/IntervalStats;
    iget v9, v1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    sparse-switch v9, :sswitch_data_102

    .line 407
    iget-object v10, v1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Landroid/app/usage/UsageEvents$Event;->getClassName()Ljava/lang/String;

    move-result-object v11

    iget-wide v12, v1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    iget v14, v1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    iget v9, v1, Landroid/app/usage/UsageEvents$Event;->mInstanceId:I

    move/from16 v16, v9

    move-object v9, v15

    move-object v4, v15

    .end local v15    # "stats":Lcom/android/server/usage/IntervalStats;
    .local v4, "stats":Lcom/android/server/usage/IntervalStats;
    move/from16 v15, v16

    invoke-virtual/range {v9 .. v15}, Lcom/android/server/usage/IntervalStats;->update(Ljava/lang/String;Ljava/lang/String;JII)V

    .line 409
    if-eqz v3, :cond_f9

    .line 410
    iget-object v9, v1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-virtual {v4, v9}, Lcom/android/server/usage/IntervalStats;->incrementAppLaunchCount(Ljava/lang/String;)V

    goto :goto_f9

    .line 404
    .end local v4    # "stats":Lcom/android/server/usage/IntervalStats;
    .restart local v15    # "stats":Lcom/android/server/usage/IntervalStats;
    :sswitch_be
    iget-wide v9, v1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    invoke-virtual {v15, v9, v10}, Lcom/android/server/usage/IntervalStats;->updateKeyguardHidden(J)V

    .line 405
    goto :goto_f9

    .line 401
    :sswitch_c4
    iget-wide v9, v1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    invoke-virtual {v15, v9, v10}, Lcom/android/server/usage/IntervalStats;->updateKeyguardShown(J)V

    .line 402
    goto :goto_f9

    .line 398
    :sswitch_ca
    iget-wide v9, v1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    invoke-virtual {v15, v9, v10}, Lcom/android/server/usage/IntervalStats;->updateScreenNonInteractive(J)V

    .line 399
    goto :goto_f9

    .line 395
    :sswitch_d0
    iget-wide v9, v1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    invoke-virtual {v15, v9, v10}, Lcom/android/server/usage/IntervalStats;->updateScreenInteractive(J)V

    .line 396
    goto :goto_f9

    .line 386
    :sswitch_d6
    iget-object v9, v1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    iget-object v10, v1, Landroid/app/usage/UsageEvents$Event;->mContentType:Ljava/lang/String;

    iget-object v11, v1, Landroid/app/usage/UsageEvents$Event;->mAction:Ljava/lang/String;

    invoke-virtual {v15, v9, v10, v11}, Lcom/android/server/usage/IntervalStats;->updateChooserCounts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    iget-object v9, v1, Landroid/app/usage/UsageEvents$Event;->mContentAnnotations:[Ljava/lang/String;

    .line 388
    .local v9, "annotations":[Ljava/lang/String;
    if-eqz v9, :cond_f3

    .line 389
    array-length v10, v9

    move v11, v4

    :goto_e5
    if-ge v11, v10, :cond_f3

    aget-object v12, v9, v11

    .line 390
    .local v12, "annotation":Ljava/lang/String;
    iget-object v13, v1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    iget-object v14, v1, Landroid/app/usage/UsageEvents$Event;->mAction:Ljava/lang/String;

    invoke-virtual {v15, v13, v12, v14}, Lcom/android/server/usage/IntervalStats;->updateChooserCounts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    .end local v12    # "annotation":Ljava/lang/String;
    add-int/lit8 v11, v11, 0x1

    goto :goto_e5

    .line 393
    .end local v9    # "annotations":[Ljava/lang/String;
    :cond_f3
    goto :goto_f9

    .line 383
    :sswitch_f4
    iget-wide v9, v1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    invoke-virtual {v15, v5, v9, v10}, Lcom/android/server/usage/IntervalStats;->updateConfigurationStats(Landroid/content/res/Configuration;J)V

    .line 380
    .end local v15    # "stats":Lcom/android/server/usage/IntervalStats;
    :cond_f9
    :goto_f9
    add-int/lit8 v8, v8, 0x1

    const/4 v4, 0x0

    goto :goto_98

    .line 416
    :cond_fd
    invoke-direct/range {p0 .. p0}, Lcom/android/server/usage/UserUsageStatsService;->notifyStatsChanged()V

    .line 417
    return-void

    nop

    :sswitch_data_102
    .sparse-switch
        0x5 -> :sswitch_f4
        0x9 -> :sswitch_d6
        0xf -> :sswitch_d0
        0x10 -> :sswitch_ca
        0x11 -> :sswitch_c4
        0x12 -> :sswitch_be
    .end sparse-switch
.end method

.method updatePackageMappingsLocked(Ljava/util/HashMap;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)Z"
        }
    .end annotation

    .line 231
    .local p1, "installedPackages":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Map;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 232
    return v1

    .line 235
    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 236
    .local v2, "timeNow":J
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 238
    .local v0, "removedPackages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    iget-object v4, v4, Lcom/android/server/usage/UsageStatsDatabase;->mPackagesTokenData:Lcom/android/server/usage/PackagesTokenData;

    iget-object v4, v4, Lcom/android/server/usage/PackagesTokenData;->packagesToTokensMap:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    sub-int/2addr v4, v1

    .local v4, "i":I
    :goto_1c
    if-ltz v4, :cond_36

    .line 239
    iget-object v5, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    iget-object v5, v5, Lcom/android/server/usage/UsageStatsDatabase;->mPackagesTokenData:Lcom/android/server/usage/PackagesTokenData;

    iget-object v5, v5, Lcom/android/server/usage/PackagesTokenData;->packagesToTokensMap:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 240
    .local v5, "packageName":Ljava/lang/String;
    invoke-virtual {p1, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_33

    .line 241
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 238
    .end local v5    # "packageName":Ljava/lang/String;
    :cond_33
    add-int/lit8 v4, v4, -0x1

    goto :goto_1c

    .line 244
    .end local v4    # "i":I
    :cond_36
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3d

    .line 245
    return v1

    .line 249
    :cond_3d
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v1

    .restart local v4    # "i":I
    :goto_42
    if-ltz v4, :cond_54

    .line 250
    iget-object v5, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    iget-object v5, v5, Lcom/android/server/usage/UsageStatsDatabase;->mPackagesTokenData:Lcom/android/server/usage/PackagesTokenData;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6, v2, v3}, Lcom/android/server/usage/PackagesTokenData;->removePackage(Ljava/lang/String;J)I

    .line 249
    add-int/lit8 v4, v4, -0x1

    goto :goto_42

    .line 253
    .end local v4    # "i":I
    :cond_54
    :try_start_54
    iget-object v4, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    invoke-virtual {v4}, Lcom/android/server/usage/UsageStatsDatabase;->writeMappingsLocked()V
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_59} :catch_5b

    .line 257
    nop

    .line 258
    return v1

    .line 254
    :catch_5b
    move-exception v1

    .line 255
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "UsageStatsService"

    const-string v5, "Unable to write updated package mappings file on service initialization."

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    const/4 v4, 0x0

    return v4
.end method

.method userStopped()V
    .registers 2

    .line 197
    invoke-virtual {p0}, Lcom/android/server/usage/UserUsageStatsService;->persistActiveStats()V

    .line 198
    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mCachedEarlyEvents:Landroid/util/SparseArrayMap;

    invoke-virtual {v0}, Landroid/util/SparseArrayMap;->clear()V

    .line 199
    return-void
.end method
