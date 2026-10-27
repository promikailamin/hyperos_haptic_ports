.class public Lcom/android/server/alarm/UserWakeupStore;
.super Ljava/lang/Object;
.source "UserWakeupStore.java"


# static fields
.field static final BUFFER_TIME_MS:J

.field static final INITIAL_USER_START_SCHEDULING_DELAY_MS:J

.field static final ROOT_DIR_NAME:Ljava/lang/String; = "alarms"

.field static final USERS_FILE_NAME:Ljava/lang/String; = "usersWithAlarmClocks.xml"

.field public static final USER_RUN_FOR_TIME_SECS:I

.field static final USER_START_TIME_DEVIATION_LIMIT_MS:J

.field public static final USER_WAKEUP_DIR:Ljava/io/File;

.field public static final USER_WAKEUP_TAG:Ljava/lang/String; = "UserWakeupStore"

.field public static final sRandom:Ljava/util/Random;


# instance fields
.field public mBackgroundExecutor:Ljava/util/concurrent/Executor;

.field public final mUserStarts:Landroid/util/SparseLongArray;

.field public final mUserWakeupLock:Ljava/lang/Object;


# direct methods
.method public static synthetic $r8$lambda$RRPL7G24EIHFeMe-T-tGIgJID68(Landroid/util/Pair;)J
    .registers 3

    .line 270
    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic $r8$lambda$RtPOqbDBIOvatsb3ac7h25ScrKA(Lcom/android/server/alarm/UserWakeupStore;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/alarm/UserWakeupStore;->lambda$updateUserListFile$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$pWSHEtk9BW_hVoHWFYf0q0jjP9E(Lcom/android/server/alarm/UserWakeupStore;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/alarm/UserWakeupStore;->readUserIdList()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 5

    .line 82
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    sput-wide v1, Lcom/android/server/alarm/UserWakeupStore;->BUFFER_TIME_MS:J

    .line 85
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xa

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v1

    long-to-int v1, v1

    sput v1, Lcom/android/server/alarm/UserWakeupStore;->USER_RUN_FOR_TIME_SECS:I

    const-wide/16 v1, 0x5

    .line 90
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    sput-wide v3, Lcom/android/server/alarm/UserWakeupStore;->USER_START_TIME_DEVIATION_LIMIT_MS:J

    .line 95
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/alarm/UserWakeupStore;->INITIAL_USER_START_SCHEDULING_DELAY_MS:J

    .line 106
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "alarms"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/alarm/UserWakeupStore;->USER_WAKEUP_DIR:Ljava/io/File;

    .line 108
    new-instance v0, Ljava/util/Random;

    const-wide/16 v1, 0x1f4

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    sput-object v0, Lcom/android/server/alarm/UserWakeupStore;->sRandom:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/alarm/UserWakeupStore;->mUserWakeupLock:Ljava/lang/Object;

    .line 102
    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/alarm/UserWakeupStore;->mUserStarts:Landroid/util/SparseLongArray;

    return-void
.end method

.method public static getUserWakeupOffset()J
    .registers 5

    .line 238
    sget-object v0, Lcom/android/server/alarm/UserWakeupStore;->sRandom:Ljava/util/Random;

    sget-wide v1, Lcom/android/server/alarm/UserWakeupStore;->USER_START_TIME_DEVIATION_LIMIT_MS:J

    const-wide/16 v3, 0x2

    mul-long/2addr v3, v1

    invoke-virtual {v0, v3, v4}, Ljava/util/Random;->nextLong(J)J

    move-result-wide v3

    sub-long/2addr v3, v1

    return-wide v3
.end method


# virtual methods
.method public addUserWakeup(IJ)V
    .registers 8

    .line 124
    iget-object v0, p0, Lcom/android/server/alarm/UserWakeupStore;->mUserWakeupLock:Ljava/lang/Object;

    monitor-enter v0

    .line 125
    :try_start_3
    iget-object v1, p0, Lcom/android/server/alarm/UserWakeupStore;->mUserStarts:Landroid/util/SparseLongArray;

    sget-wide v2, Lcom/android/server/alarm/UserWakeupStore;->BUFFER_TIME_MS:J

    sub-long/2addr p2, v2

    invoke-static {}, Lcom/android/server/alarm/UserWakeupStore;->getUserWakeupOffset()J

    move-result-wide v2

    add-long/2addr p2, v2

    invoke-virtual {v1, p1, p2, p3}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 126
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_15

    .line 127
    invoke-virtual {p0}, Lcom/android/server/alarm/UserWakeupStore;->updateUserListFile()V

    return-void

    :catchall_15
    move-exception p0

    .line 126
    :try_start_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public final deleteWakeupFromUserStarts(I)Z
    .registers 4

    .line 212
    iget-object v0, p0, Lcom/android/server/alarm/UserWakeupStore;->mUserWakeupLock:Ljava/lang/Object;

    monitor-enter v0

    .line 213
    :try_start_3
    iget-object v1, p0, Lcom/android/server/alarm/UserWakeupStore;->mUserStarts:Landroid/util/SparseLongArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseLongArray;->indexOfKey(I)I

    move-result p1

    if-ltz p1, :cond_15

    .line 215
    iget-object p0, p0, Lcom/android/server/alarm/UserWakeupStore;->mUserStarts:Landroid/util/SparseLongArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseLongArray;->removeAt(I)V

    const/4 p0, 0x1

    .line 216
    monitor-exit v0

    return p0

    :catchall_13
    move-exception p0

    goto :goto_18

    :cond_15
    const/4 p0, 0x0

    .line 218
    monitor-exit v0

    return p0

    .line 219
    :goto_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_13

    throw p0
.end method

.method public dump(Landroid/util/IndentingPrintWriter;J)V
    .registers 8

    .line 345
    iget-object v0, p0, Lcom/android/server/alarm/UserWakeupStore;->mUserWakeupLock:Ljava/lang/Object;

    monitor-enter v0

    .line 346
    :try_start_3
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 347
    const-string v1, "User wakeup store file path: "

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 348
    invoke-virtual {p0}, Lcom/android/server/alarm/UserWakeupStore;->getUserWakeupFile()Landroid/util/AtomicFile;

    move-result-object v1

    if-nez v1, :cond_1a

    .line 350
    const-string/jumbo v1, "null"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_25

    :catchall_18
    move-exception p0

    goto :goto_6f

    .line 352
    :cond_1a
    invoke-virtual {v1}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 354
    :goto_25
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/alarm/UserWakeupStore;->mUserStarts:Landroid/util/SparseLongArray;

    invoke-virtual {v2}, Landroid/util/SparseLongArray;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " user wakeups scheduled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 355
    :goto_40
    iget-object v2, p0, Lcom/android/server/alarm/UserWakeupStore;->mUserStarts:Landroid/util/SparseLongArray;

    invoke-virtual {v2}, Landroid/util/SparseLongArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_6a

    .line 356
    const-string v2, "UserId: "

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 357
    iget-object v2, p0, Lcom/android/server/alarm/UserWakeupStore;->mUserStarts:Landroid/util/SparseLongArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseLongArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 358
    const-string v2, ", userStartTime: "

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 359
    iget-object v2, p0, Lcom/android/server/alarm/UserWakeupStore;->mUserStarts:Landroid/util/SparseLongArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v2

    invoke-static {v2, v3, p2, p3, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 360
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_40

    .line 362
    :cond_6a
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 363
    monitor-exit v0

    return-void

    :goto_6f
    monitor-exit v0
    :try_end_70
    .catchall {:try_start_3 .. :try_end_70} :catchall_18

    throw p0
.end method

.method public getNextWakeupTime()J
    .registers 9

    .line 227
    iget-object v0, p0, Lcom/android/server/alarm/UserWakeupStore;->mUserWakeupLock:Ljava/lang/Object;

    monitor-enter v0

    const-wide/16 v1, -0x1

    const/4 v3, 0x0

    move-wide v4, v1

    .line 228
    :goto_7
    :try_start_7
    iget-object v6, p0, Lcom/android/server/alarm/UserWakeupStore;->mUserStarts:Landroid/util/SparseLongArray;

    invoke-virtual {v6}, Landroid/util/SparseLongArray;->size()I

    move-result v6

    if-ge v3, v6, :cond_28

    .line 229
    iget-object v6, p0, Lcom/android/server/alarm/UserWakeupStore;->mUserStarts:Landroid/util/SparseLongArray;

    invoke-virtual {v6, v3}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v6

    cmp-long v6, v6, v4

    if-ltz v6, :cond_1d

    cmp-long v6, v4, v1

    if-nez v6, :cond_23

    .line 230
    :cond_1d
    iget-object v4, p0, Lcom/android/server/alarm/UserWakeupStore;->mUserStarts:Landroid/util/SparseLongArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v4

    :cond_23
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :catchall_26
    move-exception p0

    goto :goto_2a

    .line 233
    :cond_28
    monitor-exit v0

    return-wide v4

    :goto_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_7 .. :try_end_2b} :catchall_26

    throw p0
.end method

.method public getUserIdsToWakeup(J)[I
    .registers 10

    .line 145
    iget-object v0, p0, Lcom/android/server/alarm/UserWakeupStore;->mUserWakeupLock:Ljava/lang/Object;

    monitor-enter v0

    .line 146
    :try_start_3
    iget-object v1, p0, Lcom/android/server/alarm/UserWakeupStore;->mUserStarts:Landroid/util/SparseLongArray;

    invoke-virtual {v1}, Landroid/util/SparseLongArray;->size()I

    move-result v1

    new-array v1, v1, [I

    .line 148
    iget-object v2, p0, Lcom/android/server/alarm/UserWakeupStore;->mUserStarts:Landroid/util/SparseLongArray;

    invoke-virtual {v2}, Landroid/util/SparseLongArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    move v4, v3

    :goto_15
    if-ltz v2, :cond_32

    .line 149
    iget-object v5, p0, Lcom/android/server/alarm/UserWakeupStore;->mUserStarts:Landroid/util/SparseLongArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v5

    cmp-long v5, v5, p1

    if-gtz v5, :cond_2f

    add-int/lit8 v5, v4, 0x1

    .line 150
    iget-object v6, p0, Lcom/android/server/alarm/UserWakeupStore;->mUserStarts:Landroid/util/SparseLongArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseLongArray;->keyAt(I)I

    move-result v6

    aput v6, v1, v4

    move v4, v5

    goto :goto_2f

    :catchall_2d
    move-exception p0

    goto :goto_38

    :cond_2f
    :goto_2f
    add-int/lit8 v2, v2, -0x1

    goto :goto_15

    .line 153
    :cond_32
    invoke-static {v1, v3, v4}, Ljava/util/Arrays;->copyOfRange([III)[I

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 154
    :goto_38
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_3 .. :try_end_39} :catchall_2d

    throw p0
.end method

.method public final getUserWakeupFile()Landroid/util/AtomicFile;
    .registers 4

    .line 336
    sget-object p0, Lcom/android/server/alarm/UserWakeupStore;->USER_WAKEUP_DIR:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_26

    invoke-virtual {p0}, Ljava/io/File;->mkdir()Z

    move-result v0

    if-nez v0, :cond_26

    .line 337
    sget-object v0, Lcom/android/server/alarm/UserWakeupStore;->USER_WAKEUP_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to mkdir() user list file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 340
    :cond_26
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "usersWithAlarmClocks.xml"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 341
    new-instance p0, Landroid/util/AtomicFile;

    invoke-direct {p0, v0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    return-object p0
.end method

.method public getWakeupTimeForUser(I)J
    .registers 5

    .line 184
    iget-object v0, p0, Lcom/android/server/alarm/UserWakeupStore;->mUserWakeupLock:Ljava/lang/Object;

    monitor-enter v0

    .line 185
    :try_start_3
    iget-object p0, p0, Lcom/android/server/alarm/UserWakeupStore;->mUserStarts:Landroid/util/SparseLongArray;

    const-wide/16 v1, -0x1

    invoke-virtual {p0, p1, v1, v2}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide p0

    monitor-exit v0

    return-wide p0

    :catchall_d
    move-exception p0

    .line 186
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method public init()V
    .registers 3

    .line 114
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/alarm/UserWakeupStore;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    .line 115
    new-instance v1, Lcom/android/server/alarm/UserWakeupStore$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/alarm/UserWakeupStore$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/alarm/UserWakeupStore;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final synthetic lambda$updateUserListFile$0()V
    .registers 4

    .line 163
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/alarm/UserWakeupStore;->writeUserIdList()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    return-void

    :catch_4
    move-exception p0

    .line 174
    sget-object v0, Lcom/android/server/alarm/UserWakeupStore;->USER_WAKEUP_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to write "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onUserRemoved(I)V
    .registers 2

    .line 202
    invoke-virtual {p0, p1}, Lcom/android/server/alarm/UserWakeupStore;->deleteWakeupFromUserStarts(I)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 203
    invoke-virtual {p0}, Lcom/android/server/alarm/UserWakeupStore;->updateUserListFile()V

    :cond_9
    return-void
.end method

.method public onUserStarting(I)V
    .registers 2

    .line 193
    invoke-virtual {p0, p1}, Lcom/android/server/alarm/UserWakeupStore;->deleteWakeupFromUserStarts(I)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 194
    invoke-virtual {p0}, Lcom/android/server/alarm/UserWakeupStore;->updateUserListFile()V

    :cond_9
    return-void
.end method

.method public final readUserIdList()V
    .registers 18

    move-object/from16 v0, p0

    .line 286
    invoke-virtual {v0}, Lcom/android/server/alarm/UserWakeupStore;->getUserWakeupFile()Landroid/util/AtomicFile;

    move-result-object v1

    if-nez v1, :cond_a

    goto/16 :goto_c2

    .line 289
    :cond_a
    invoke-virtual {v1}, Landroid/util/AtomicFile;->exists()Z

    move-result v2

    if-nez v2, :cond_2b

    .line 290
    sget-object v0, Lcom/android/server/alarm/UserWakeupStore;->USER_WAKEUP_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "User wakeup file not available: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    invoke-virtual {v1}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 290
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 294
    :cond_2b
    iget-object v2, v0, Lcom/android/server/alarm/UserWakeupStore;->mUserWakeupLock:Ljava/lang/Object;

    monitor-enter v2

    .line 295
    :try_start_2e
    iget-object v3, v0, Lcom/android/server/alarm/UserWakeupStore;->mUserStarts:Landroid/util/SparseLongArray;

    invoke-virtual {v3}, Landroid/util/SparseLongArray;->clear()V

    .line 296
    monitor-exit v2
    :try_end_34
    .catchall {:try_start_2e .. :try_end_34} :catchall_d7

    .line 297
    :try_start_34
    invoke-virtual {v1}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v2
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_38} :catch_ce
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_34 .. :try_end_38} :catch_ce

    .line 298
    :try_start_38
    invoke-static {v2}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object v3

    .line 300
    :goto_3c
    invoke-interface {v3}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x2

    if-eq v4, v6, :cond_47

    if-eq v4, v5, :cond_47

    goto :goto_3c

    :cond_47
    if-eq v4, v6, :cond_69

    .line 305
    sget-object v0, Lcom/android/server/alarm/UserWakeupStore;->USER_WAKEUP_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to read user list. No start tag found in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    invoke-virtual {v1}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 305
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_c2

    goto :goto_bf

    :catchall_66
    move-exception v0

    move-object v1, v0

    goto :goto_c3

    .line 310
    :cond_69
    invoke-interface {v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "users"

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v4, 0x0

    if-eqz v1, :cond_7e

    .line 311
    const-string/jumbo v1, "version"

    const/4 v7, -0x1

    invoke-interface {v3, v4, v1, v7}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    .line 315
    :cond_7e
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    .line 317
    sget-wide v9, Lcom/android/server/alarm/UserWakeupStore;->BUFFER_TIME_MS:J

    add-long/2addr v7, v9

    invoke-static {}, Lcom/android/server/alarm/UserWakeupStore;->getUserWakeupOffset()J

    move-result-wide v9

    add-long/2addr v7, v9

    const-wide/16 v9, 0x0

    .line 318
    :cond_8c
    :goto_8c
    invoke-interface {v3}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v1

    if-eq v1, v5, :cond_bd

    if-ne v1, v6, :cond_8c

    .line 320
    invoke-interface {v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v11, "user"

    invoke-virtual {v1, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8c

    .line 321
    const-string/jumbo v1, "user_id"

    invoke-interface {v3, v4, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 322
    iget-object v11, v0, Lcom/android/server/alarm/UserWakeupStore;->mUserWakeupLock:Ljava/lang/Object;

    monitor-enter v11
    :try_end_ab
    .catchall {:try_start_38 .. :try_end_ab} :catchall_66

    .line 323
    :try_start_ab
    iget-object v12, v0, Lcom/android/server/alarm/UserWakeupStore;->mUserStarts:Landroid/util/SparseLongArray;

    const-wide/16 v13, 0x1

    add-long/2addr v13, v9

    sget-wide v15, Lcom/android/server/alarm/UserWakeupStore;->INITIAL_USER_START_SCHEDULING_DELAY_MS:J

    mul-long/2addr v9, v15

    add-long/2addr v9, v7

    invoke-virtual {v12, v1, v9, v10}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 325
    monitor-exit v11

    move-wide v9, v13

    goto :goto_8c

    :catchall_ba
    move-exception v0

    monitor-exit v11
    :try_end_bc
    .catchall {:try_start_ab .. :try_end_bc} :catchall_ba

    :try_start_bc
    throw v0
    :try_end_bd
    .catchall {:try_start_bc .. :try_end_bd} :catchall_66

    :cond_bd
    if-eqz v2, :cond_c2

    .line 329
    :goto_bf
    :try_start_bf
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_c2
    .catch Ljava/io/IOException; {:try_start_bf .. :try_end_c2} :catch_ce
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_bf .. :try_end_c2} :catch_ce

    :cond_c2
    :goto_c2
    return-void

    :goto_c3
    if-eqz v2, :cond_cd

    .line 297
    :try_start_c5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_c8
    .catchall {:try_start_c5 .. :try_end_c8} :catchall_c9

    goto :goto_cd

    :catchall_c9
    move-exception v0

    :try_start_ca
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_cd
    :goto_cd
    throw v1
    :try_end_ce
    .catch Ljava/io/IOException; {:try_start_ca .. :try_end_ce} :catch_ce
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_ca .. :try_end_ce} :catch_ce

    :catch_ce
    move-exception v0

    .line 330
    sget-object v1, Lcom/android/server/alarm/UserWakeupStore;->USER_WAKEUP_TAG:Ljava/lang/String;

    const-string v2, "Error reading user wakeup data"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :catchall_d7
    move-exception v0

    .line 296
    :try_start_d8
    monitor-exit v2
    :try_end_d9
    .catchall {:try_start_d8 .. :try_end_d9} :catchall_d7

    throw v0
.end method

.method public removeUserWakeup(I)V
    .registers 2

    .line 134
    invoke-virtual {p0, p1}, Lcom/android/server/alarm/UserWakeupStore;->deleteWakeupFromUserStarts(I)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 135
    invoke-virtual {p0}, Lcom/android/server/alarm/UserWakeupStore;->updateUserListFile()V

    :cond_9
    return-void
.end method

.method public final updateUserListFile()V
    .registers 3

    .line 161
    iget-object v0, p0, Lcom/android/server/alarm/UserWakeupStore;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/server/alarm/UserWakeupStore$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/alarm/UserWakeupStore$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/alarm/UserWakeupStore;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final writeUserIdList()V
    .registers 13

    .line 254
    invoke-virtual {p0}, Lcom/android/server/alarm/UserWakeupStore;->getUserWakeupFile()Landroid/util/AtomicFile;

    move-result-object v0

    if-nez v0, :cond_8

    goto/16 :goto_b0

    .line 258
    :cond_8
    :try_start_8
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/util/AtomicFile;->startWrite(J)Ljava/io/FileOutputStream;

    move-result-object v1
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_10} :catch_ae

    .line 259
    :try_start_10
    new-instance v2, Lcom/android/internal/util/jobs/FastXmlSerializer;

    invoke-direct {v2}, Lcom/android/internal/util/jobs/FastXmlSerializer;-><init>()V

    .line 260
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 261
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v4, 0x0

    invoke-interface {v2, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 262
    const-string/jumbo v3, "users"

    invoke-interface {v2, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 263
    const-string/jumbo v3, "version"

    const/4 v5, 0x1

    invoke-static {v2, v3, v5}, Lcom/android/internal/util/jobs/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 264
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 265
    iget-object v5, p0, Lcom/android/server/alarm/UserWakeupStore;->mUserWakeupLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_39
    .catchall {:try_start_10 .. :try_end_39} :catchall_9a

    const/4 v6, 0x0

    move v7, v6

    .line 266
    :goto_3b
    :try_start_3b
    iget-object v8, p0, Lcom/android/server/alarm/UserWakeupStore;->mUserStarts:Landroid/util/SparseLongArray;

    invoke-virtual {v8}, Landroid/util/SparseLongArray;->size()I

    move-result v8

    if-ge v7, v8, :cond_64

    .line 267
    new-instance v8, Landroid/util/Pair;

    iget-object v9, p0, Lcom/android/server/alarm/UserWakeupStore;->mUserStarts:Landroid/util/SparseLongArray;

    invoke-virtual {v9, v7}, Landroid/util/SparseLongArray;->keyAt(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/alarm/UserWakeupStore;->mUserStarts:Landroid/util/SparseLongArray;

    invoke-virtual {v10, v7}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_3b

    :catchall_62
    move-exception p0

    goto :goto_b1

    .line 269
    :cond_64
    monitor-exit v5
    :try_end_65
    .catchall {:try_start_3b .. :try_end_65} :catchall_62

    .line 270
    :try_start_65
    new-instance p0, Lcom/android/server/alarm/UserWakeupStore$$ExternalSyntheticLambda2;

    invoke-direct {p0}, Lcom/android/server/alarm/UserWakeupStore$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {p0}, Ljava/util/Comparator;->comparingLong(Ljava/util/function/ToLongFunction;)Ljava/util/Comparator;

    move-result-object p0

    invoke-static {v3, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 271
    :goto_71
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result p0

    if-ge v6, p0, :cond_9c

    .line 272
    const-string/jumbo p0, "user"

    invoke-interface {v2, v4, p0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 273
    const-string/jumbo p0, "user_id"

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    iget-object v5, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v2, p0, v5}, Lcom/android/internal/util/jobs/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 274
    const-string/jumbo p0, "user"

    invoke-interface {v2, v4, p0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v6, v6, 0x1

    goto :goto_71

    :catchall_9a
    move-exception p0

    goto :goto_b3

    .line 276
    :cond_9c
    const-string/jumbo p0, "users"

    invoke-interface {v2, v4, p0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 277
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 278
    invoke-virtual {v0, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_a8
    .catchall {:try_start_65 .. :try_end_a8} :catchall_9a

    if-eqz v1, :cond_b0

    .line 279
    :try_start_aa
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_ad
    .catch Ljava/io/IOException; {:try_start_aa .. :try_end_ad} :catch_ae

    return-void

    :catch_ae
    move-exception p0

    goto :goto_be

    :cond_b0
    :goto_b0
    return-void

    .line 269
    :goto_b1
    :try_start_b1
    monitor-exit v5
    :try_end_b2
    .catchall {:try_start_b1 .. :try_end_b2} :catchall_62

    :try_start_b2
    throw p0
    :try_end_b3
    .catchall {:try_start_b2 .. :try_end_b3} :catchall_9a

    :goto_b3
    if-eqz v1, :cond_bd

    .line 258
    :try_start_b5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_b8
    .catchall {:try_start_b5 .. :try_end_b8} :catchall_b9

    goto :goto_bd

    :catchall_b9
    move-exception v1

    :try_start_ba
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_bd
    :goto_bd
    throw p0
    :try_end_be
    .catch Ljava/io/IOException; {:try_start_ba .. :try_end_be} :catch_ae

    .line 280
    :goto_be
    sget-object v1, Lcom/android/server/alarm/UserWakeupStore;->USER_WAKEUP_TAG:Ljava/lang/String;

    const-string v2, "Error writing user wakeup data"

    invoke-static {v1, v2, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 281
    invoke-virtual {v0}, Landroid/util/AtomicFile;->delete()V

    return-void
.end method
