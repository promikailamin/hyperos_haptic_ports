.class public Lcom/android/server/usage/BroadcastResponseStatsLogger;
.super Ljava/lang/Object;
.source "BroadcastResponseStatsLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usage/BroadcastResponseStatsLogger$Data;,
        Lcom/android/server/usage/BroadcastResponseStatsLogger$NotificationEvent;,
        Lcom/android/server/usage/BroadcastResponseStatsLogger$BroadcastEvent;,
        Lcom/android/server/usage/BroadcastResponseStatsLogger$LogBuffer;
    }
.end annotation


# static fields
.field private static final MAX_LOG_SIZE:I


# instance fields
.field private final mBroadcastEventsBuffer:Lcom/android/server/usage/BroadcastResponseStatsLogger$LogBuffer;

.field private final mLock:Ljava/lang/Object;

.field private final mNotificationEventsBuffer:Lcom/android/server/usage/BroadcastResponseStatsLogger$LogBuffer;


# direct methods
.method static bridge synthetic -$$Nest$smgetBroadcastDispatchEventLog(ILjava/lang/String;IJJI)Ljava/lang/String;
    .registers 8

    invoke-static/range {p0 .. p7}, Lcom/android/server/usage/BroadcastResponseStatsLogger;->getBroadcastDispatchEventLog(ILjava/lang/String;IJJI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smgetNotificationEventLog(ILjava/lang/String;IJ)Ljava/lang/String;
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/usage/BroadcastResponseStatsLogger;->getNotificationEventLog(ILjava/lang/String;IJ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 45
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x14

    goto :goto_b

    :cond_9
    const/16 v0, 0x32

    :goto_b
    sput v0, Lcom/android/server/usage/BroadcastResponseStatsLogger;->MAX_LOG_SIZE:I

    .line 44
    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/BroadcastResponseStatsLogger;->mLock:Ljava/lang/Object;

    .line 49
    new-instance v0, Lcom/android/server/usage/BroadcastResponseStatsLogger$LogBuffer;

    const-class v1, Lcom/android/server/usage/BroadcastResponseStatsLogger$BroadcastEvent;

    sget v2, Lcom/android/server/usage/BroadcastResponseStatsLogger;->MAX_LOG_SIZE:I

    invoke-direct {v0, v1, v2}, Lcom/android/server/usage/BroadcastResponseStatsLogger$LogBuffer;-><init>(Ljava/lang/Class;I)V

    iput-object v0, p0, Lcom/android/server/usage/BroadcastResponseStatsLogger;->mBroadcastEventsBuffer:Lcom/android/server/usage/BroadcastResponseStatsLogger$LogBuffer;

    .line 52
    new-instance v0, Lcom/android/server/usage/BroadcastResponseStatsLogger$LogBuffer;

    const-class v1, Lcom/android/server/usage/BroadcastResponseStatsLogger$NotificationEvent;

    invoke-direct {v0, v1, v2}, Lcom/android/server/usage/BroadcastResponseStatsLogger$LogBuffer;-><init>(Ljava/lang/Class;I)V

    iput-object v0, p0, Lcom/android/server/usage/BroadcastResponseStatsLogger;->mNotificationEventsBuffer:Lcom/android/server/usage/BroadcastResponseStatsLogger$LogBuffer;

    return-void
.end method

.method private static getBroadcastDispatchEventLog(ILjava/lang/String;IJJI)Ljava/lang/String;
    .registers 11
    .param p0, "sourceUid"    # I
    .param p1, "targetPackage"    # Ljava/lang/String;
    .param p2, "targetUserId"    # I
    .param p3, "idForResponseEvent"    # J
    .param p5, "timestampMs"    # J
    .param p7, "targetUidProcState"    # I

    .line 152
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    .line 154
    invoke-static {p5, p6}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    aput-object p1, v0, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 155
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-static {p7}, Landroid/app/ActivityManager;->procStateToString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 152
    const-string v1, "broadcast:%s; srcUid=%d, tgtPkg=%s, tgtUsr=%d, id=%d, state=%s"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getNotificationEventLog(ILjava/lang/String;IJ)Ljava/lang/String;
    .registers 8
    .param p0, "event"    # I
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "timestampMs"    # J

    .line 162
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 163
    invoke-static {p3, p4}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p0}, Lcom/android/server/usage/BroadcastResponseStatsLogger;->notificationEventToString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    aput-object p1, v0, v1

    .line 164
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 162
    const-string/jumbo v1, "notification:%s; event=<%s>, pkg=%s, usr=%d"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static notificationEventToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "event"    # I

    .line 169
    packed-switch p0, :pswitch_data_14

    .line 177
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 175
    :pswitch_8
    const-string v0, "cancelled"

    return-object v0

    .line 173
    :pswitch_b
    const-string/jumbo v0, "updated"

    return-object v0

    .line 171
    :pswitch_f
    const-string/jumbo v0, "posted"

    return-object v0

    nop

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_f
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method


# virtual methods
.method dumpLogs(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 4
    .param p1, "ipw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 82
    iget-object v0, p0, Lcom/android/server/usage/BroadcastResponseStatsLogger;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 83
    :try_start_3
    const-string v1, "Broadcast events (most recent first):"

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 85
    iget-object v1, p0, Lcom/android/server/usage/BroadcastResponseStatsLogger;->mBroadcastEventsBuffer:Lcom/android/server/usage/BroadcastResponseStatsLogger$LogBuffer;

    invoke-virtual {v1, p1}, Lcom/android/server/usage/BroadcastResponseStatsLogger$LogBuffer;->reverseDump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 86
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 88
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 89
    const-string v1, "Notification events (most recent first):"

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 91
    iget-object v1, p0, Lcom/android/server/usage/BroadcastResponseStatsLogger;->mNotificationEventsBuffer:Lcom/android/server/usage/BroadcastResponseStatsLogger$LogBuffer;

    invoke-virtual {v1, p1}, Lcom/android/server/usage/BroadcastResponseStatsLogger$LogBuffer;->reverseDump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 92
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 93
    monitor-exit v0

    .line 94
    return-void

    .line 93
    :catchall_28
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_28

    throw v1
.end method

.method logBroadcastDispatchEvent(ILjava/lang/String;Landroid/os/UserHandle;JJI)V
    .registers 22
    .param p1, "sourceUid"    # I
    .param p2, "targetPackage"    # Ljava/lang/String;
    .param p3, "targetUser"    # Landroid/os/UserHandle;
    .param p4, "idForResponseEvent"    # J
    .param p6, "timeStampMs"    # J
    .param p8, "targetUidProcessState"    # I

    .line 59
    move-object v1, p0

    iget-object v2, v1, Lcom/android/server/usage/BroadcastResponseStatsLogger;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 60
    :try_start_4
    sget-boolean v0, Lcom/android/server/usage/UsageStatsService;->DEBUG_RESPONSE_STATS:Z

    if-eqz v0, :cond_1d

    .line 61
    const-string v0, "ResponseStatsTracker"

    .line 62
    invoke-virtual/range {p3 .. p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    .line 61
    move v3, p1

    move-object v4, p2

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    move/from16 v10, p8

    invoke-static/range {v3 .. v10}, Lcom/android/server/usage/BroadcastResponseStatsLogger;->getBroadcastDispatchEventLog(ILjava/lang/String;IJJI)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :cond_1d
    iget-object v4, v1, Lcom/android/server/usage/BroadcastResponseStatsLogger;->mBroadcastEventsBuffer:Lcom/android/server/usage/BroadcastResponseStatsLogger$LogBuffer;

    move v5, p1

    move-object v6, p2

    move-object/from16 v7, p3

    move-wide/from16 v8, p4

    move-wide/from16 v10, p6

    move/from16 v12, p8

    invoke-virtual/range {v4 .. v12}, Lcom/android/server/usage/BroadcastResponseStatsLogger$LogBuffer;->logBroadcastDispatchEvent(ILjava/lang/String;Landroid/os/UserHandle;JJI)V

    .line 67
    monitor-exit v2

    .line 68
    return-void

    .line 67
    :catchall_2e
    move-exception v0

    monitor-exit v2
    :try_end_30
    .catchall {:try_start_4 .. :try_end_30} :catchall_2e

    throw v0
.end method

.method logNotificationEvent(ILjava/lang/String;Landroid/os/UserHandle;J)V
    .registers 14
    .param p1, "event"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "user"    # Landroid/os/UserHandle;
    .param p4, "timestampMs"    # J

    .line 72
    iget-object v0, p0, Lcom/android/server/usage/BroadcastResponseStatsLogger;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 73
    :try_start_3
    sget-boolean v1, Lcom/android/server/usage/UsageStatsService;->DEBUG_RESPONSE_STATS:Z

    if-eqz v1, :cond_14

    .line 74
    const-string v1, "ResponseStatsTracker"

    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-static {p1, p2, v2, p4, p5}, Lcom/android/server/usage/BroadcastResponseStatsLogger;->getNotificationEventLog(ILjava/lang/String;IJ)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :cond_14
    iget-object v2, p0, Lcom/android/server/usage/BroadcastResponseStatsLogger;->mNotificationEventsBuffer:Lcom/android/server/usage/BroadcastResponseStatsLogger$LogBuffer;

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-wide v6, p4

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/usage/BroadcastResponseStatsLogger$LogBuffer;->logNotificationEvent(ILjava/lang/String;Landroid/os/UserHandle;J)V

    .line 78
    monitor-exit v0

    .line 79
    return-void

    .line 78
    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw v1
.end method
