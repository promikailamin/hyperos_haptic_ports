.class public final Lcom/android/server/am/AppStartInfoTracker;
.super Ljava/lang/Object;
.source "AppStartInfoTracker.java"


# static fields
.field static final APP_START_INFO_FILE:Ljava/lang/String; = "procstartinfo"

.field static final APP_START_INFO_HISTORY_LENGTH_MS:J

.field static final APP_START_INFO_HISTORY_LIST_SIZE:I = 0x10

.field public static final APP_START_INFO_PERSIST_INTERVAL:J

.field static final APP_START_STORE_DIR:Ljava/lang/String; = "procstartstore"

.field static final MAX_IN_PROGRESS_RECORDS:I = 0x5


# instance fields
.field mAppStartInfoHistoryListSize:I

.field mAppStartInfoLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public mAppStartInfoPersistTask:Ljava/lang/Runnable;

.field public final mCallbacks:Landroid/util/SparseArray;

.field public final mData:Lcom/android/internal/app/ProcessMap;

.field public mHandler:Landroid/os/Handler;

.field final mInProgressRecords:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Long;",
            "Landroid/app/ApplicationStartInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mLastAppStartInfoPersistTimestamp:J

.field final mLock:Ljava/lang/Object;

.field mMonotonicClock:Lcom/android/internal/os/MonotonicClock;

.field mProcStartInfoFile:Ljava/io/File;

.field mProcStartStoreDir:Ljava/io/File;

.field mService:Lcom/android/server/am/ActivityManagerService;

.field final mTemporaryInProgressIndexes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final mTmpStartInfoList:Ljava/util/ArrayList;


# direct methods
.method public static synthetic $r8$lambda$KV3NBYR4Jya7P9QoojzvC9rr4KE(Lcom/android/server/am/AppStartInfoTracker;Ljava/io/PrintWriter;Landroid/icu/text/SimpleDateFormat;Ljava/lang/String;Landroid/util/SparseArray;)Ljava/lang/Integer;
    .registers 5

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/am/AppStartInfoTracker;->lambda$dumpHistoryProcessStartInfo$7(Ljava/io/PrintWriter;Landroid/icu/text/SimpleDateFormat;Ljava/lang/String;Landroid/util/SparseArray;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$NYsQh-8lM7FDsO3bJCG0ECUX12o(Lcom/android/server/am/AppStartInfoTracker;Ljava/lang/Integer;Ljava/lang/Integer;)I
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/AppStartInfoTracker;->lambda$maybeTrimInProgressRecordsLocked$1(Ljava/lang/Integer;Ljava/lang/Integer;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$OAAONl-88gSRJWsYfe-6xUhxybY(ILjava/lang/String;Landroid/util/SparseArray;)Ljava/lang/Integer;
    .registers 5

    .line 827
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p1

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    :goto_6
    if-ltz p1, :cond_19

    .line 828
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-ne v1, p0, :cond_16

    .line 829
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->removeAt(I)V

    goto :goto_19

    :cond_16
    add-int/lit8 p1, p1, -0x1

    goto :goto_6

    .line 833
    :cond_19
    :goto_19
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p0

    if-nez p0, :cond_20

    goto :goto_21

    :cond_20
    const/4 v0, 0x0

    :goto_21
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$VdR_UMu5lcdcEkpdcV9tz9DCksE(Lcom/android/server/am/AppStartInfoTracker;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/am/AppStartInfoTracker;->lambda$onSystemReady$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$e8bB6slpx0Xgy9r3R5ue8hao6m0(Landroid/util/proto/ProtoOutputStream;Ljava/io/ByteArrayOutputStream;Ljava/io/ObjectOutputStream;Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Landroid/util/SparseArray;)Ljava/lang/Integer;
    .registers 19

    const-wide v2, 0x20b00000002L

    .line 1011
    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v7

    const-wide v2, 0x10900000001L

    move-object/from16 v0, p4

    .line 1012
    invoke-virtual {p0, v2, v3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1013
    invoke-virtual/range {p5 .. p5}, Landroid/util/SparseArray;->size()I

    move-result v9

    const/4 v10, 0x0

    move v11, v10

    :goto_19
    if-ge v11, v9, :cond_50

    move-object/from16 v12, p5

    .line 1016
    :try_start_1d
    invoke-virtual {v12, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;

    const-wide v2, 0x20b00000002L

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object/from16 v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;->writeToProto(Landroid/util/proto/ProtoOutputStream;JLjava/io/ByteArrayOutputStream;Ljava/io/ObjectOutputStream;Lcom/android/modules/utils/TypedXmlSerializer;)V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_30} :catch_33

    add-int/lit8 v11, v11, 0x1

    goto :goto_19

    :catch_33
    move-exception v0

    .line 1020
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to write app start info into persistentstorage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    .line 1025
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 1029
    :cond_50
    invoke-virtual {p0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1030
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$q83gRHliZ6lknI1uFyqnNAujwE8(ILjava/util/ArrayList;Ljava/lang/String;Landroid/util/SparseArray;)Ljava/lang/Integer;
    .registers 4

    .line 669
    invoke-virtual {p3, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;

    if-eqz p0, :cond_f

    .line 671
    invoke-static {p0}, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;->-$$Nest$fgetmInfos(Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_f
    const/4 p0, 0x0

    .line 673
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$u6qs2IdvBWItgRWSSXIvHozrGxQ(Ljava/lang/String;Landroid/util/SparseArray;)Ljava/lang/Integer;
    .registers 4

    const/4 p0, 0x0

    move v0, p0

    .line 550
    :goto_2
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_14

    .line 551
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;

    invoke-virtual {v1}, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;->disableAppMonitoringMode()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 553
    :cond_14
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$w9zNHkWKHXjwRe_q1c5gg2-70ps(Landroid/app/ApplicationStartInfo;Landroid/app/ApplicationStartInfo;)I
    .registers 4

    .line 678
    invoke-virtual {p1}, Landroid/app/ApplicationStartInfo;->getMonotonicCreationTimeMs()J

    move-result-wide v0

    .line 679
    invoke-virtual {p0}, Landroid/app/ApplicationStartInfo;->getMonotonicCreationTimeMs()J

    move-result-wide p0

    .line 678
    invoke-static {v0, v1, p0, p1}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mcheckCompletenessAndCallback(Lcom/android/server/am/AppStartInfoTracker;Landroid/app/ApplicationStartInfo;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/am/AppStartInfoTracker;->checkCompletenessAndCallback(Landroid/app/ApplicationStartInfo;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 88
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/am/AppStartInfoTracker;->APP_START_INFO_PERSIST_INTERVAL:J

    .line 101
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xe

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/am/AppStartInfoTracker;->APP_START_INFO_HISTORY_LENGTH_MS:J

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 131
    iput-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mMonotonicClock:Lcom/android/internal/os/MonotonicClock;

    .line 140
    iput-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mAppStartInfoPersistTask:Ljava/lang/Runnable;

    const-wide/16 v0, 0x0

    .line 146
    iput-wide v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mLastAppStartInfoPersistTimestamp:J

    .line 166
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mAppStartInfoLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 169
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mTmpStartInfoList:Ljava/util/ArrayList;

    .line 186
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mInProgressRecords:Landroid/util/ArrayMap;

    .line 191
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mTemporaryInProgressIndexes:Ljava/util/ArrayList;

    .line 196
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mCallbacks:Landroid/util/SparseArray;

    .line 197
    new-instance v0, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v0}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mData:Lcom/android/internal/app/ProcessMap;

    return-void
.end method


# virtual methods
.method public final addBaseFieldsFromProcessRecord(Landroid/app/ApplicationStartInfo;Lcom/android/server/am/ProcessRecord;)V
    .registers 5

    if-nez p2, :cond_3

    return-void

    .line 526
    :cond_3
    invoke-virtual {p2}, Lcom/android/server/am/ProcessRecord;->getHostingRecord()Lcom/android/server/am/HostingRecord;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_13

    .line 527
    invoke-virtual {p2}, Lcom/android/server/am/ProcessRecord;->getHostingRecord()Lcom/android/server/am/HostingRecord;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/am/HostingRecord;->getDefiningUid()I

    move-result p0

    goto :goto_14

    :cond_13
    move p0, v0

    .line 528
    :goto_14
    invoke-virtual {p2}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/app/ApplicationStartInfo;->setPid(I)V

    .line 529
    iget v1, p2, Lcom/android/server/am/psc/ProcessRecordInternal;->uid:I

    invoke-virtual {p1, v1}, Landroid/app/ApplicationStartInfo;->setRealUid(I)V

    .line 530
    iget-object v1, p2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p1, v1}, Landroid/app/ApplicationStartInfo;->setPackageUid(I)V

    if-lez p0, :cond_2a

    goto :goto_2e

    .line 531
    :cond_2a
    iget-object p0, p2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    :goto_2e
    invoke-virtual {p1, p0}, Landroid/app/ApplicationStartInfo;->setDefiningUid(I)V

    .line 532
    iget-object p0, p2, Lcom/android/server/am/psc/ProcessRecordInternal;->processName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/app/ApplicationStartInfo;->setProcessName(Ljava/lang/String;)V

    .line 533
    iget-object p0, p2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/app/ApplicationStartInfo;->setPackageName(Ljava/lang/String;)V

    .line 537
    invoke-virtual {p2}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object p0

    .line 538
    invoke-virtual {p2}, Lcom/android/server/am/ProcessRecord;->wasForceStopped()Z

    move-result p2

    if-nez p2, :cond_4f

    if-eqz p0, :cond_50

    .line 539
    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->wasForceStopped()Z

    move-result p0

    if-eqz p0, :cond_50

    :cond_4f
    const/4 v0, 0x1

    .line 538
    :cond_50
    invoke-virtual {p1, v0}, Landroid/app/ApplicationStartInfo;->setForceStopped(Z)V

    return-void
.end method

.method public addStartInfoCompleteListener(Landroid/app/IApplicationStartInfoCompleteListener;I)V
    .registers 6

    .line 730
    iget-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 731
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/AppStartInfoTracker;->mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-nez v1, :cond_1b

    .line 733
    iget-object v1, p0, Lcom/android/server/am/AppStartInfoTracker;->mCallbacks:Landroid/util/SparseArray;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, p2, v2}, Landroid/util/SparseArray;->set(ILjava/lang/Object;)V

    move-object v1, v2

    goto :goto_1b

    :catchall_19
    move-exception p0

    goto :goto_25

    .line 736
    :cond_1b
    :goto_1b
    new-instance v2, Lcom/android/server/am/AppStartInfoTracker$ApplicationStartInfoCompleteCallback;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/server/am/AppStartInfoTracker$ApplicationStartInfoCompleteCallback;-><init>(Lcom/android/server/am/AppStartInfoTracker;Landroid/app/IApplicationStartInfoCompleteListener;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 737
    monitor-exit v0

    return-void

    :goto_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_19

    throw p0
.end method

.method public final addStartInfoLocked(Landroid/app/ApplicationStartInfo;)Landroid/app/ApplicationStartInfo;
    .registers 6

    .line 594
    iget-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mAppStartInfoLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_11

    .line 596
    const-string p0, "ActivityManager"

    const-string p1, "Skipping saving the start info due to ongoing loading from storage"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 600
    :cond_11
    new-instance v0, Landroid/app/ApplicationStartInfo;

    invoke-direct {v0, p1}, Landroid/app/ApplicationStartInfo;-><init>(Landroid/app/ApplicationStartInfo;)V

    .line 601
    invoke-virtual {p1}, Landroid/app/ApplicationStartInfo;->getRealUid()I

    move-result v2

    .line 605
    invoke-static {v2}, Landroid/os/UserHandle;->isIsolated(I)Z

    move-result v3

    if-eqz v3, :cond_21

    return-object v1

    .line 609
    :cond_21
    iget-object v1, p0, Lcom/android/server/am/AppStartInfoTracker;->mData:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {p1}, Landroid/app/ApplicationStartInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;

    if-nez v1, :cond_42

    .line 611
    new-instance v1, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;

    iget v3, p0, Lcom/android/server/am/AppStartInfoTracker;->mAppStartInfoHistoryListSize:I

    invoke-direct {v1, p0, v3}, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;-><init>(Lcom/android/server/am/AppStartInfoTracker;I)V

    .line 612
    invoke-static {v1, v2}, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;->-$$Nest$fputmUid(Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;I)V

    .line 613
    iget-object v3, p0, Lcom/android/server/am/AppStartInfoTracker;->mData:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {p1}, Landroid/app/ApplicationStartInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1, v2, v1}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 615
    :cond_42
    invoke-virtual {v1, v0}, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;->addStartInfoLocked(Landroid/app/ApplicationStartInfo;)V

    const/4 p1, 0x0

    .line 617
    invoke-virtual {p0, p1}, Lcom/android/server/am/AppStartInfoTracker;->schedulePersistProcessStartInfo(Z)V

    return-object v0
.end method

.method public addTimestampToStart(Lcom/android/server/am/ProcessRecord;JI)V
    .registers 12

    .line 574
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v3, p1, Lcom/android/server/am/psc/ProcessRecordInternal;->uid:I

    move-object v1, p0

    move-wide v4, p2

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/AppStartInfoTracker;->addTimestampToStart(Ljava/lang/String;IJI)V

    return-void
.end method

.method public addTimestampToStart(Ljava/lang/String;IJI)V
    .registers 7

    .line 578
    iget-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 579
    :try_start_3
    iget-object p0, p0, Lcom/android/server/am/AppStartInfoTracker;->mData:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;

    if-nez p0, :cond_11

    .line 586
    monitor-exit v0

    return-void

    :catchall_f
    move-exception p0

    goto :goto_16

    .line 588
    :cond_11
    invoke-virtual {p0, p5, p3, p4}, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;->addTimestampToStartLocked(IJ)V

    .line 589
    monitor-exit v0

    return-void

    :goto_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_f

    throw p0
.end method

.method public final checkCompletenessAndCallback(Landroid/app/ApplicationStartInfo;)V
    .registers 7

    .line 628
    iget-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 629
    :try_start_3
    invoke-virtual {p1}, Landroid/app/ApplicationStartInfo;->getStartupState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3e

    .line 631
    iget-object v1, p0, Lcom/android/server/am/AppStartInfoTracker;->mCallbacks:Landroid/util/SparseArray;

    .line 632
    invoke-virtual {p1}, Landroid/app/ApplicationStartInfo;->getRealUid()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_1c

    .line 634
    monitor-exit v0

    return-void

    :catchall_1a
    move-exception p0

    goto :goto_40

    .line 636
    :cond_1c
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_21
    if-ge v3, v2, :cond_35

    .line 638
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_32

    .line 639
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/AppStartInfoTracker$ApplicationStartInfoCompleteCallback;

    invoke-virtual {v4, p1}, Lcom/android/server/am/AppStartInfoTracker$ApplicationStartInfoCompleteCallback;->onApplicationStartInfoComplete(Landroid/app/ApplicationStartInfo;)V

    :cond_32
    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    .line 642
    :cond_35
    iget-object p0, p0, Lcom/android/server/am/AppStartInfoTracker;->mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/app/ApplicationStartInfo;->getRealUid()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 644
    :cond_3e
    monitor-exit v0

    return-void

    :goto_40
    monitor-exit v0
    :try_end_41
    .catchall {:try_start_3 .. :try_end_41} :catchall_1a

    throw p0
.end method

.method public clearHistoryProcessStartInfo(Ljava/lang/String;I)V
    .registers 7

    .line 1092
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    .line 1093
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_15

    .line 1094
    iget-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1095
    :try_start_d
    invoke-virtual {p0, p2}, Lcom/android/server/am/AppStartInfoTracker;->removeByUserIdLocked(I)V

    .line 1096
    monitor-exit v0

    goto :goto_32

    :catchall_12
    move-exception p0

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_d .. :try_end_14} :catchall_12

    throw p0

    .line 1098
    :cond_15
    iget-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const-wide/32 v2, 0x20000

    .line 1099
    invoke-virtual {v0, p1, v2, v3, p2}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v0

    .line 1101
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    .line 1102
    iget-object v2, p0, Lcom/android/server/am/AppStartInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1103
    :try_start_2e
    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/android/server/am/AppStartInfoTracker;->removePackageLocked(Ljava/lang/String;IZI)V

    .line 1104
    monitor-exit v2
    :try_end_32
    .catchall {:try_start_2e .. :try_end_32} :catchall_36

    .line 1106
    :goto_32
    invoke-virtual {p0, v1}, Lcom/android/server/am/AppStartInfoTracker;->schedulePersistProcessStartInfo(Z)V

    return-void

    :catchall_36
    move-exception p0

    .line 1104
    :try_start_37
    monitor-exit v2
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    throw p0
.end method

.method public clearProcessStartInfo(Z)V
    .registers 5

    .line 1074
    iget-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1075
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/AppStartInfoTracker;->mAppStartInfoPersistTask:Ljava/lang/Runnable;

    if-eqz v1, :cond_16

    .line 1076
    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/AppStartInfoTracker;->mAppStartInfoPersistTask:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v1, 0x0

    .line 1077
    iput-object v1, p0, Lcom/android/server/am/AppStartInfoTracker;->mAppStartInfoPersistTask:Ljava/lang/Runnable;

    goto :goto_16

    :catchall_14
    move-exception p0

    goto :goto_2f

    :cond_16
    :goto_16
    if-eqz p1, :cond_1f

    .line 1079
    iget-object p1, p0, Lcom/android/server/am/AppStartInfoTracker;->mProcStartInfoFile:Ljava/io/File;

    if-eqz p1, :cond_1f

    .line 1080
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 1082
    :cond_1f
    iget-object p1, p0, Lcom/android/server/am/AppStartInfoTracker;->mData:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {p1}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/ArrayMap;->clear()V

    .line 1083
    iget-object p0, p0, Lcom/android/server/am/AppStartInfoTracker;->mInProgressRecords:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->clear()V

    .line 1084
    monitor-exit v0

    return-void

    :goto_2f
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_14

    throw p0
.end method

.method public configureDetailedMonitoring(Ljava/io/PrintWriter;Ljava/lang/String;I)V
    .registers 7

    .line 548
    iget-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 549
    :try_start_3
    new-instance v1, Lcom/android/server/am/AppStartInfoTracker$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lcom/android/server/am/AppStartInfoTracker$$ExternalSyntheticLambda5;-><init>()V

    invoke-virtual {p0, v1}, Lcom/android/server/am/AppStartInfoTracker;->forEachPackageLocked(Ljava/util/function/BiFunction;)Z

    .line 556
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 557
    const-string p0, "ActivityManager AppStartInfo detailed monitoring disabled"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_68

    :catchall_17
    move-exception p0

    goto :goto_6a

    .line 559
    :cond_19
    iget-object p0, p0, Lcom/android/server/am/AppStartInfoTracker;->mData:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {p0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/SparseArray;

    if-eqz p0, :cond_4f

    const/4 v1, 0x0

    .line 561
    :goto_28
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_3a

    .line 562
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;

    invoke-virtual {v2, p3}, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;->enableAppMonitoringModeForUser(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_28

    .line 564
    :cond_3a
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "ActivityManager AppStartInfo detailed monitoring enabled for "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_68

    .line 567
    :cond_4f
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Package "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " not found"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 570
    :goto_68
    monitor-exit v0

    return-void

    :goto_6a
    monitor-exit v0
    :try_end_6b
    .catchall {:try_start_3 .. :try_end_6b} :catchall_17

    throw p0
.end method

.method public dumpHistoryProcessStartInfo(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 11

    .line 1114
    const-string v0, "ACTIVITY MANAGER LRU PROCESSES (dumpsys activity start-info)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1115
    new-instance v6, Landroid/icu/text/SimpleDateFormat;

    invoke-direct {v6}, Landroid/icu/text/SimpleDateFormat;-><init>()V

    .line 1116
    iget-object v7, p0, Lcom/android/server/am/AppStartInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 1117
    :try_start_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Last Timestamp of Persistence Into Persistent Storage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/util/Date;

    iget-wide v2, p0, Lcom/android/server/am/AppStartInfoTracker;->mLastAppStartInfoPersistTimestamp:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 1118
    invoke-virtual {v6, v1}, Landroid/icu/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1117
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1119
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 1120
    new-instance p2, Lcom/android/server/am/AppStartInfoTracker$$ExternalSyntheticLambda6;

    invoke-direct {p2, p0, p1, v6}, Lcom/android/server/am/AppStartInfoTracker$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/am/AppStartInfoTracker;Ljava/io/PrintWriter;Landroid/icu/text/SimpleDateFormat;)V

    invoke-virtual {p0, p2}, Lcom/android/server/am/AppStartInfoTracker;->forEachPackageLocked(Ljava/util/function/BiFunction;)Z

    goto :goto_55

    :catchall_3b
    move-exception v0

    move-object p0, v0

    goto :goto_57

    .line 1125
    :cond_3e
    iget-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mData:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/util/SparseArray;

    if-eqz v5, :cond_55

    .line 1127
    const-string v3, "  "

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/AppStartInfoTracker;->dumpHistoryProcessStartInfoLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/util/SparseArray;Landroid/icu/text/SimpleDateFormat;)V

    .line 1130
    :cond_55
    :goto_55
    monitor-exit v7

    return-void

    :goto_57
    monitor-exit v7
    :try_end_58
    .catchall {:try_start_d .. :try_end_58} :catchall_3b

    throw p0
.end method

.method public final dumpHistoryProcessStartInfoLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/util/SparseArray;Landroid/icu/text/SimpleDateFormat;)V
    .registers 9

    .line 1137
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "package: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1138
    invoke-virtual {p4}, Landroid/util/SparseArray;->size()I

    move-result p0

    const/4 p3, 0x0

    :goto_1d
    if-ge p3, p0, :cond_57

    .line 1140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  Historical Process Start for userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1141
    invoke-virtual {p4, p3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p5}, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;->dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/icu/text/SimpleDateFormat;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_1d

    :cond_57
    return-void
.end method

.method public final forEachPackageLocked(Ljava/util/function/BiFunction;)Z
    .registers 7

    const/4 v0, 0x1

    if-eqz p1, :cond_3a

    .line 777
    iget-object p0, p0, Lcom/android/server/am/AppStartInfoTracker;->mData:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {p0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object p0

    .line 778
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    sub-int/2addr v1, v0

    :goto_e
    if-ltz v1, :cond_3a

    .line 779
    invoke-virtual {p0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseArray;

    invoke-interface {p1, v2, v3}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, v0, :cond_34

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eq v2, v3, :cond_33

    const/4 v3, 0x3

    if-eq v2, v3, :cond_30

    goto :goto_37

    .line 786
    :cond_30
    invoke-virtual {p0, v1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    :cond_33
    return v4

    .line 781
    :cond_34
    invoke-virtual {p0, v1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    :goto_37
    add-int/lit8 v1, v1, -0x1

    goto :goto_e

    :cond_3a
    return v0
.end method

.method public getMonotonicTimeMs()J
    .registers 3

    .line 1150
    iget-object p0, p0, Lcom/android/server/am/AppStartInfoTracker;->mMonotonicClock:Lcom/android/internal/os/MonotonicClock;

    if-nez p0, :cond_7

    const-wide/16 v0, 0x0

    return-wide v0

    .line 1154
    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/os/MonotonicClock;->monotonicTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getStartInfo(Ljava/lang/String;IIILjava/util/ArrayList;)V
    .registers 10

    if-nez p4, :cond_4

    const/16 p4, 0x10

    .line 652
    :cond_4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 654
    :try_start_8
    iget-object v2, p0, Lcom/android/server/am/AppStartInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_59

    .line 655
    :try_start_b
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_21

    .line 658
    iget-object p0, p0, Lcom/android/server/am/AppStartInfoTracker;->mData:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;

    if-eqz p0, :cond_52

    .line 660
    invoke-virtual {p0, p3, p4, p5}, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;->getStartInfoLocked(IILjava/util/ArrayList;)V

    goto :goto_52

    :catchall_1f
    move-exception p0

    goto :goto_57

    .line 664
    :cond_21
    iget-object p1, p0, Lcom/android/server/am/AppStartInfoTracker;->mTmpStartInfoList:Ljava/util/ArrayList;

    .line 665
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 667
    new-instance p3, Lcom/android/server/am/AppStartInfoTracker$$ExternalSyntheticLambda0;

    invoke-direct {p3, p2, p1}, Lcom/android/server/am/AppStartInfoTracker$$ExternalSyntheticLambda0;-><init>(ILjava/util/ArrayList;)V

    invoke-virtual {p0, p3}, Lcom/android/server/am/AppStartInfoTracker;->forEachPackageLocked(Ljava/util/function/BiFunction;)Z

    .line 676
    new-instance p0, Lcom/android/server/am/AppStartInfoTracker$$ExternalSyntheticLambda1;

    invoke-direct {p0}, Lcom/android/server/am/AppStartInfoTracker$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {p1, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 680
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-lez p4, :cond_40

    .line 682
    invoke-static {p0, p4}, Ljava/lang/Math;->min(II)I

    move-result p0

    :cond_40
    const/4 p2, 0x0

    :goto_41
    if-ge p2, p0, :cond_4f

    .line 685
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/app/ApplicationStartInfo;

    invoke-virtual {p5, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_41

    .line 687
    :cond_4f
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 689
    :cond_52
    :goto_52
    monitor-exit v2
    :try_end_53
    .catchall {:try_start_b .. :try_end_53} :catchall_1f

    .line 691
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 689
    :goto_57
    :try_start_57
    monitor-exit v2
    :try_end_58
    .catchall {:try_start_57 .. :try_end_58} :catchall_1f

    :try_start_58
    throw p0
    :try_end_59
    .catchall {:try_start_58 .. :try_end_59} :catchall_59

    :catchall_59
    move-exception p0

    .line 691
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 692
    throw p0
.end method

.method public handleProcessBackupStart(JLcom/android/server/am/ProcessRecord;Lcom/android/server/am/BackupRecord;Z)V
    .registers 9

    .line 500
    iget-object p4, p0, Lcom/android/server/am/AppStartInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter p4

    .line 501
    :try_start_3
    new-instance v0, Landroid/app/ApplicationStartInfo;

    invoke-virtual {p0}, Lcom/android/server/am/AppStartInfoTracker;->getMonotonicTimeMs()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Landroid/app/ApplicationStartInfo;-><init>(J)V

    .line 502
    invoke-virtual {p0, v0, p3}, Lcom/android/server/am/AppStartInfoTracker;->addBaseFieldsFromProcessRecord(Landroid/app/ApplicationStartInfo;Lcom/android/server/am/ProcessRecord;)V

    const/4 p3, 0x0

    .line 503
    invoke-virtual {v0, p3}, Landroid/app/ApplicationStartInfo;->setStartupState(I)V

    .line 504
    invoke-virtual {v0, p3, p1, p2}, Landroid/app/ApplicationStartInfo;->addStartupTimestamp(IJ)V

    const/4 p1, 0x1

    if-eqz p5, :cond_1b

    move p2, p1

    goto :goto_1c

    :cond_1b
    const/4 p2, 0x2

    .line 506
    :goto_1c
    invoke-virtual {v0, p2}, Landroid/app/ApplicationStartInfo;->setStartType(I)V

    .line 508
    invoke-virtual {v0, p1}, Landroid/app/ApplicationStartInfo;->setReason(I)V

    const/4 p1, 0x5

    .line 511
    invoke-virtual {v0, p1}, Landroid/app/ApplicationStartInfo;->setStartComponent(I)V

    .line 514
    invoke-virtual {p0, v0}, Lcom/android/server/am/AppStartInfoTracker;->addStartInfoLocked(Landroid/app/ApplicationStartInfo;)Landroid/app/ApplicationStartInfo;

    .line 515
    monitor-exit p4

    return-void

    :catchall_2b
    move-exception p0

    monitor-exit p4
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_2b

    throw p0
.end method

.method public handleProcessBroadcastStart(JLcom/android/server/am/ProcessRecord;Landroid/content/Intent;Z)V
    .registers 10

    .line 457
    iget-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 458
    :try_start_3
    new-instance v1, Landroid/app/ApplicationStartInfo;

    invoke-virtual {p0}, Lcom/android/server/am/AppStartInfoTracker;->getMonotonicTimeMs()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Landroid/app/ApplicationStartInfo;-><init>(J)V

    .line 459
    invoke-virtual {p0, v1, p3}, Lcom/android/server/am/AppStartInfoTracker;->addBaseFieldsFromProcessRecord(Landroid/app/ApplicationStartInfo;Lcom/android/server/am/ProcessRecord;)V

    const/4 p3, 0x0

    .line 460
    invoke-virtual {v1, p3}, Landroid/app/ApplicationStartInfo;->setStartupState(I)V

    .line 461
    invoke-virtual {v1, p3, p1, p2}, Landroid/app/ApplicationStartInfo;->addStartupTimestamp(IJ)V

    const/4 p1, 0x1

    .line 463
    invoke-virtual {v1, p1}, Landroid/app/ApplicationStartInfo;->setStartType(I)V

    if-eqz p5, :cond_22

    .line 465
    invoke-virtual {v1, p3}, Landroid/app/ApplicationStartInfo;->setReason(I)V

    goto :goto_26

    :catchall_20
    move-exception p0

    goto :goto_32

    :cond_22
    const/4 p1, 0x3

    .line 467
    invoke-virtual {v1, p1}, Landroid/app/ApplicationStartInfo;->setReason(I)V

    .line 469
    :goto_26
    invoke-virtual {v1, p4}, Landroid/app/ApplicationStartInfo;->setIntent(Landroid/content/Intent;)V

    const/4 p1, 0x2

    .line 472
    invoke-virtual {v1, p1}, Landroid/app/ApplicationStartInfo;->setStartComponent(I)V

    .line 475
    invoke-virtual {p0, v1}, Lcom/android/server/am/AppStartInfoTracker;->addStartInfoLocked(Landroid/app/ApplicationStartInfo;)Landroid/app/ApplicationStartInfo;

    .line 476
    monitor-exit v0

    return-void

    :goto_32
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_20

    throw p0
.end method

.method public handleProcessContentProviderStart(JLcom/android/server/am/ProcessRecord;)V
    .registers 8

    .line 481
    iget-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 482
    :try_start_3
    new-instance v1, Landroid/app/ApplicationStartInfo;

    invoke-virtual {p0}, Lcom/android/server/am/AppStartInfoTracker;->getMonotonicTimeMs()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Landroid/app/ApplicationStartInfo;-><init>(J)V

    .line 483
    invoke-virtual {p0, v1, p3}, Lcom/android/server/am/AppStartInfoTracker;->addBaseFieldsFromProcessRecord(Landroid/app/ApplicationStartInfo;Lcom/android/server/am/ProcessRecord;)V

    const/4 p3, 0x0

    .line 484
    invoke-virtual {v1, p3}, Landroid/app/ApplicationStartInfo;->setStartupState(I)V

    .line 485
    invoke-virtual {v1, p3, p1, p2}, Landroid/app/ApplicationStartInfo;->addStartupTimestamp(IJ)V

    const/4 p1, 0x1

    .line 487
    invoke-virtual {v1, p1}, Landroid/app/ApplicationStartInfo;->setStartType(I)V

    const/4 p1, 0x4

    .line 488
    invoke-virtual {v1, p1}, Landroid/app/ApplicationStartInfo;->setReason(I)V

    const/4 p1, 0x3

    .line 491
    invoke-virtual {v1, p1}, Landroid/app/ApplicationStartInfo;->setStartComponent(I)V

    .line 494
    invoke-virtual {p0, v1}, Lcom/android/server/am/AppStartInfoTracker;->addStartInfoLocked(Landroid/app/ApplicationStartInfo;)Landroid/app/ApplicationStartInfo;

    .line 495
    monitor-exit v0

    return-void

    :catchall_27
    move-exception p0

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_27

    throw p0
.end method

.method public handleProcessServiceStart(JLcom/android/server/am/ProcessRecord;Lcom/android/server/am/ServiceRecord;)V
    .registers 9

    .line 430
    iget-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 431
    :try_start_3
    new-instance v1, Landroid/app/ApplicationStartInfo;

    invoke-virtual {p0}, Lcom/android/server/am/AppStartInfoTracker;->getMonotonicTimeMs()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Landroid/app/ApplicationStartInfo;-><init>(J)V

    .line 432
    invoke-virtual {p0, v1, p3}, Lcom/android/server/am/AppStartInfoTracker;->addBaseFieldsFromProcessRecord(Landroid/app/ApplicationStartInfo;Lcom/android/server/am/ProcessRecord;)V

    const/4 p3, 0x0

    .line 433
    invoke-virtual {v1, p3}, Landroid/app/ApplicationStartInfo;->setStartupState(I)V

    .line 434
    invoke-virtual {v1, p3, p1, p2}, Landroid/app/ApplicationStartInfo;->addStartupTimestamp(IJ)V

    const/4 p1, 0x1

    .line 436
    invoke-virtual {v1, p1}, Landroid/app/ApplicationStartInfo;->setStartType(I)V

    const/4 p1, 0x4

    .line 439
    invoke-virtual {v1, p1}, Landroid/app/ApplicationStartInfo;->setStartComponent(I)V

    .line 444
    iget-object p1, p4, Lcom/android/server/am/ServiceRecord;->permission:Ljava/lang/String;

    if-eqz p1, :cond_2e

    const-string p2, "android.permission.BIND_JOB_SERVICE"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2e

    const/4 p1, 0x5

    goto :goto_30

    :catchall_2c
    move-exception p0

    goto :goto_43

    :cond_2e
    const/16 p1, 0xa

    .line 443
    :goto_30
    invoke-virtual {v1, p1}, Landroid/app/ApplicationStartInfo;->setReason(I)V

    .line 447
    iget-object p1, p4, Lcom/android/server/am/ServiceRecord;->intent:Landroid/content/Intent$FilterComparison;

    if-eqz p1, :cond_3e

    .line 448
    invoke-virtual {p1}, Landroid/content/Intent$FilterComparison;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/app/ApplicationStartInfo;->setIntent(Landroid/content/Intent;)V

    .line 450
    :cond_3e
    invoke-virtual {p0, v1}, Lcom/android/server/am/AppStartInfoTracker;->addStartInfoLocked(Landroid/app/ApplicationStartInfo;)Landroid/app/ApplicationStartInfo;

    .line 451
    monitor-exit v0

    return-void

    :goto_43
    monitor-exit v0
    :try_end_44
    .catchall {:try_start_3 .. :try_end_44} :catchall_2c

    throw p0
.end method

.method public init(Lcom/android/server/am/ActivityManagerService;)V
    .registers 5

    .line 201
    iput-object p1, p0, Lcom/android/server/am/AppStartInfoTracker;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 203
    new-instance p1, Lcom/android/server/ServiceThread;

    const/16 v0, 0xa

    const/4 v1, 0x1

    const-string v2, "ActivityManager:handler"

    invoke-direct {p1, v2, v0, v1}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    .line 205
    invoke-virtual {p1}, Lcom/android/server/ServiceThread;->start()V

    .line 206
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mHandler:Landroid/os/Handler;

    .line 208
    new-instance p1, Ljava/io/File;

    invoke-static {}, Lcom/android/server/SystemServiceManager;->ensureSystemDir()Ljava/io/File;

    move-result-object v0

    const-string/jumbo v1, "procstartstore"

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/am/AppStartInfoTracker;->mProcStartStoreDir:Ljava/io/File;

    .line 209
    invoke-static {p1}, Landroid/os/FileUtils;->createDir(Ljava/io/File;)Z

    move-result p1

    if-nez p1, :cond_47

    .line 210
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to create "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/am/AppStartInfoTracker;->mProcStartStoreDir:Ljava/io/File;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ActivityManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 213
    :cond_47
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mProcStartStoreDir:Ljava/io/File;

    const-string/jumbo v1, "procstartinfo"

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/am/AppStartInfoTracker;->mProcStartInfoFile:Ljava/io/File;

    const/16 p1, 0x10

    .line 215
    iput p1, p0, Lcom/android/server/am/AppStartInfoTracker;->mAppStartInfoHistoryListSize:I

    return-void
.end method

.method public final synthetic lambda$dumpHistoryProcessStartInfo$7(Ljava/io/PrintWriter;Landroid/icu/text/SimpleDateFormat;Ljava/lang/String;Landroid/util/SparseArray;)Ljava/lang/Integer;
    .registers 11

    .line 1121
    const-string v2, "  "

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/AppStartInfoTracker;->dumpHistoryProcessStartInfoLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/util/SparseArray;Landroid/icu/text/SimpleDateFormat;)V

    const/4 p0, 0x0

    .line 1122
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic lambda$maybeTrimInProgressRecordsLocked$1(Ljava/lang/Integer;Ljava/lang/Integer;)I
    .registers 5

    .line 263
    iget-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mInProgressRecords:Landroid/util/ArrayMap;

    .line 264
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object p0, p0, Lcom/android/server/am/AppStartInfoTracker;->mInProgressRecords:Landroid/util/ArrayMap;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    .line 263
    invoke-static {v0, v1, p0, p1}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    return p0
.end method

.method public final synthetic lambda$onSystemReady$0()V
    .registers 1

    .line 222
    invoke-virtual {p0}, Lcom/android/server/am/AppStartInfoTracker;->loadExistingProcessStartInfo()V

    return-void
.end method

.method public loadExistingProcessStartInfo()V
    .registers 8

    .line 906
    iget-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mProcStartInfoFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_f

    .line 908
    iget-object p0, p0, Lcom/android/server/am/AppStartInfoTracker;->mAppStartInfoLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :cond_f
    const/4 v0, 0x0

    .line 914
    :try_start_10
    new-instance v2, Landroid/util/AtomicFile;

    iget-object v3, p0, Lcom/android/server/am/AppStartInfoTracker;->mProcStartInfoFile:Ljava/io/File;

    invoke-direct {v2, v3}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 915
    invoke-virtual {v2}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v0

    .line 916
    new-instance v2, Landroid/util/proto/ProtoInputStream;

    invoke-direct {v2, v0}, Landroid/util/proto/ProtoInputStream;-><init>(Ljava/io/InputStream;)V

    .line 917
    invoke-virtual {v2}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v3

    :goto_24
    const/4 v4, -0x1

    if-eq v3, v4, :cond_63

    if-eq v3, v1, :cond_4c

    const/4 v4, 0x2

    if-eq v3, v4, :cond_47

    const/4 v4, 0x3

    if-eq v3, v4, :cond_30

    goto :goto_5b

    :cond_30
    const-wide v3, 0x10300000003L

    .line 931
    invoke-virtual {v2, v3, v4}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v3

    .line 932
    new-instance v5, Lcom/android/internal/os/MonotonicClock;

    sget-object v6, Lcom/android/internal/os/Clock;->SYSTEM_CLOCK:Lcom/android/internal/os/Clock;

    invoke-direct {v5, v3, v4, v6}, Lcom/android/internal/os/MonotonicClock;-><init>(JLcom/android/internal/os/Clock;)V

    iput-object v5, p0, Lcom/android/server/am/AppStartInfoTracker;->mMonotonicClock:Lcom/android/internal/os/MonotonicClock;

    goto :goto_5b

    :catchall_43
    move-exception p0

    goto :goto_88

    :catch_45
    move-exception v2

    goto :goto_69

    :cond_47
    int-to-long v3, v3

    .line 928
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/server/am/AppStartInfoTracker;->loadPackagesFromProto(Landroid/util/proto/ProtoInputStream;J)V

    goto :goto_5b

    .line 922
    :cond_4c
    iget-object v3, p0, Lcom/android/server/am/AppStartInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_4f} :catch_45
    .catch Ljava/lang/IllegalArgumentException; {:try_start_10 .. :try_end_4f} :catch_45
    .catch Landroid/util/proto/WireTypeMismatchException; {:try_start_10 .. :try_end_4f} :catch_45
    .catch Ljava/lang/ClassNotFoundException; {:try_start_10 .. :try_end_4f} :catch_45
    .catchall {:try_start_10 .. :try_end_4f} :catchall_43

    const-wide v4, 0x10300000001L

    .line 924
    :try_start_54
    invoke-virtual {v2, v4, v5}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/am/AppStartInfoTracker;->mLastAppStartInfoPersistTimestamp:J

    .line 925
    monitor-exit v3
    :try_end_5b
    .catchall {:try_start_54 .. :try_end_5b} :catchall_60

    .line 919
    :goto_5b
    :try_start_5b
    invoke-virtual {v2}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v3
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_5f} :catch_45
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5b .. :try_end_5f} :catch_45
    .catch Landroid/util/proto/WireTypeMismatchException; {:try_start_5b .. :try_end_5f} :catch_45
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5b .. :try_end_5f} :catch_45
    .catchall {:try_start_5b .. :try_end_5f} :catchall_43

    goto :goto_24

    :catchall_60
    move-exception v2

    .line 925
    :try_start_61
    monitor-exit v3
    :try_end_62
    .catchall {:try_start_61 .. :try_end_62} :catchall_60

    :try_start_62
    throw v2
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_63} :catch_45
    .catch Ljava/lang/IllegalArgumentException; {:try_start_62 .. :try_end_63} :catch_45
    .catch Landroid/util/proto/WireTypeMismatchException; {:try_start_62 .. :try_end_63} :catch_45
    .catch Ljava/lang/ClassNotFoundException; {:try_start_62 .. :try_end_63} :catch_45
    .catchall {:try_start_62 .. :try_end_63} :catchall_43

    :cond_63
    if-eqz v0, :cond_82

    .line 942
    :goto_65
    :try_start_65
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_68
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_68} :catch_82

    goto :goto_82

    .line 938
    :goto_69
    :try_start_69
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error in loading historical app start info from persistent storage: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7f
    .catchall {:try_start_69 .. :try_end_7f} :catchall_43

    if-eqz v0, :cond_82

    goto :goto_65

    .line 947
    :catch_82
    :cond_82
    :goto_82
    iget-object p0, p0, Lcom/android/server/am/AppStartInfoTracker;->mAppStartInfoLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :goto_88
    if-eqz v0, :cond_8d

    .line 942
    :try_start_8a
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_8d
    .catch Ljava/io/IOException; {:try_start_8a .. :try_end_8d} :catch_8d

    .line 946
    :catch_8d
    :cond_8d
    throw p0
.end method

.method public final loadPackagesFromProto(Landroid/util/proto/ProtoInputStream;J)V
    .registers 14

    .line 952
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide p2

    .line 953
    const-string v0, ""

    .line 960
    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v1

    move-object v6, v0

    :goto_b
    const/4 v0, -0x1

    if-eq v1, v0, :cond_50

    const/4 v0, 0x1

    if-eq v1, v0, :cond_3f

    const/4 v0, 0x2

    if-eq v1, v0, :cond_16

    move-object v3, p1

    goto :goto_4a

    .line 968
    :cond_16
    new-instance v2, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;

    iget v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mAppStartInfoHistoryListSize:I

    invoke-direct {v2, p0, v0}, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;-><init>(Lcom/android/server/am/AppStartInfoTracker;I)V

    const-wide v4, 0x20b00000002L

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, p1

    .line 970
    invoke-virtual/range {v2 .. v9}, Lcom/android/server/am/AppStartInfoTracker$AppStartInfoContainer;->readFromProto(Landroid/util/proto/ProtoInputStream;JLjava/lang/String;Ljava/io/ByteArrayInputStream;Ljava/io/ObjectInputStream;Lcom/android/modules/utils/TypedXmlPullParser;)I

    move-result p1

    .line 978
    invoke-static {p1}, Landroid/os/UserHandle;->isIsolated(I)Z

    move-result v0

    if-eqz v0, :cond_31

    goto :goto_4a

    .line 982
    :cond_31
    iget-object v1, p0, Lcom/android/server/am/AppStartInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 983
    :try_start_34
    iget-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mData:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v0, v6, p1, v2}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 984
    monitor-exit v1

    goto :goto_4a

    :catchall_3b
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_3e
    .catchall {:try_start_34 .. :try_end_3e} :catchall_3b

    throw p0

    :cond_3f
    move-object v3, p1

    const-wide v0, 0x10900000001L

    .line 965
    invoke-virtual {v3, v0, v1}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object p1

    move-object v6, p1

    .line 962
    :goto_4a
    invoke-virtual {v3}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v1

    move-object p1, v3

    goto :goto_b

    :cond_50
    move-object v3, p1

    .line 988
    invoke-virtual {v3, p2, p3}, Landroid/util/proto/ProtoInputStream;->end(J)V

    return-void
.end method

.method public final maybeTrimInProgressRecordsLocked()V
    .registers 6

    .line 248
    iget-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mInProgressRecords:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x5

    if-gt v0, v1, :cond_a

    return-void

    .line 254
    :cond_a
    iget-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mTemporaryInProgressIndexes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    move v2, v0

    .line 257
    :goto_11
    iget-object v3, p0, Lcom/android/server/am/AppStartInfoTracker;->mInProgressRecords:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_25

    .line 258
    iget-object v3, p0, Lcom/android/server/am/AppStartInfoTracker;->mTemporaryInProgressIndexes:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 263
    :cond_25
    iget-object v2, p0, Lcom/android/server/am/AppStartInfoTracker;->mTemporaryInProgressIndexes:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/server/am/AppStartInfoTracker$$ExternalSyntheticLambda8;

    invoke-direct {v3, p0}, Lcom/android/server/am/AppStartInfoTracker$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/am/AppStartInfoTracker;)V

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 266
    iget-object v2, p0, Lcom/android/server/am/AppStartInfoTracker;->mTemporaryInProgressIndexes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_4a

    .line 269
    iget-object v1, p0, Lcom/android/server/am/AppStartInfoTracker;->mInProgressRecords:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/server/am/AppStartInfoTracker;->mTemporaryInProgressIndexes:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    goto :goto_81

    .line 273
    :cond_4a
    iget-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mTemporaryInProgressIndexes:Ljava/util/ArrayList;

    .line 274
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v1

    iget-object v1, p0, Lcom/android/server/am/AppStartInfoTracker;->mTemporaryInProgressIndexes:Ljava/util/ArrayList;

    .line 275
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 273
    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 275
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 276
    iget-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mTemporaryInProgressIndexes:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 280
    iget-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mTemporaryInProgressIndexes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6b
    if-ltz v0, :cond_81

    .line 281
    iget-object v1, p0, Lcom/android/server/am/AppStartInfoTracker;->mInProgressRecords:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/server/am/AppStartInfoTracker;->mTemporaryInProgressIndexes:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_6b

    .line 286
    :cond_81
    :goto_81
    iget-object p0, p0, Lcom/android/server/am/AppStartInfoTracker;->mTemporaryInProgressIndexes:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public onActivityIntentFailed(J)V
    .registers 5

    .line 322
    iget-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 323
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/AppStartInfoTracker;->mInProgressRecords:Landroid/util/ArrayMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_13

    .line 325
    monitor-exit v0

    return-void

    :catchall_11
    move-exception p0

    goto :goto_2f

    .line 327
    :cond_13
    iget-object p2, p0, Lcom/android/server/am/AppStartInfoTracker;->mInProgressRecords:Landroid/util/ArrayMap;

    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/ApplicationStartInfo;

    if-nez p2, :cond_24

    .line 329
    iget-object p0, p0, Lcom/android/server/am/AppStartInfoTracker;->mInProgressRecords:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 330
    monitor-exit v0

    return-void

    :cond_24
    const/4 v1, 0x1

    .line 332
    invoke-virtual {p2, v1}, Landroid/app/ApplicationStartInfo;->setStartupState(I)V

    .line 333
    iget-object p0, p0, Lcom/android/server/am/AppStartInfoTracker;->mInProgressRecords:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 334
    monitor-exit v0

    return-void

    :goto_2f
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_11

    throw p0
.end method

.method public onActivityIntentStarted(Landroid/content/Intent;J)V
    .registers 8

    .line 294
    iget-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 295
    :try_start_3
    new-instance v1, Landroid/app/ApplicationStartInfo;

    invoke-virtual {p0}, Lcom/android/server/am/AppStartInfoTracker;->getMonotonicTimeMs()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Landroid/app/ApplicationStartInfo;-><init>(J)V

    const/4 v2, 0x0

    .line 296
    invoke-virtual {v1, v2}, Landroid/app/ApplicationStartInfo;->setStartupState(I)V

    .line 297
    invoke-virtual {v1, p1}, Landroid/app/ApplicationStartInfo;->setIntent(Landroid/content/Intent;)V

    .line 298
    invoke-virtual {v1, v2}, Landroid/app/ApplicationStartInfo;->setStartType(I)V

    .line 299
    invoke-virtual {v1, v2, p2, p3}, Landroid/app/ApplicationStartInfo;->addStartupTimestamp(IJ)V

    const/4 v2, 0x1

    .line 302
    invoke-virtual {v1, v2}, Landroid/app/ApplicationStartInfo;->setStartComponent(I)V

    if-eqz p1, :cond_38

    .line 306
    invoke-virtual {p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v2

    if-eqz v2, :cond_38

    .line 307
    invoke-virtual {p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object p1

    const-string v2, "android.intent.category.LAUNCHER"

    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_38

    const/4 p1, 0x6

    .line 308
    invoke-virtual {v1, p1}, Landroid/app/ApplicationStartInfo;->setReason(I)V

    goto :goto_3d

    :catchall_36
    move-exception p0

    goto :goto_4b

    :cond_38
    const/16 p1, 0xb

    .line 310
    invoke-virtual {v1, p1}, Landroid/app/ApplicationStartInfo;->setReason(I)V

    .line 312
    :goto_3d
    iget-object p1, p0, Lcom/android/server/am/AppStartInfoTracker;->mInProgressRecords:Landroid/util/ArrayMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    invoke-virtual {p0}, Lcom/android/server/am/AppStartInfoTracker;->maybeTrimInProgressRecordsLocked()V

    .line 314
    monitor-exit v0

    return-void

    :goto_4b
    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_3 .. :try_end_4c} :catchall_36

    throw p0
.end method

.method public onActivityLaunchCancelled(J)V
    .registers 5

    .line 370
    iget-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 371
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/AppStartInfoTracker;->mInProgressRecords:Landroid/util/ArrayMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_13

    .line 373
    monitor-exit v0

    return-void

    :catchall_11
    move-exception p0

    goto :goto_2f

    .line 375
    :cond_13
    iget-object p2, p0, Lcom/android/server/am/AppStartInfoTracker;->mInProgressRecords:Landroid/util/ArrayMap;

    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/ApplicationStartInfo;

    if-nez p2, :cond_24

    .line 377
    iget-object p0, p0, Lcom/android/server/am/AppStartInfoTracker;->mInProgressRecords:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 378
    monitor-exit v0

    return-void

    :cond_24
    const/4 v1, 0x1

    .line 380
    invoke-virtual {p2, v1}, Landroid/app/ApplicationStartInfo;->setStartupState(I)V

    .line 381
    iget-object p0, p0, Lcom/android/server/am/AppStartInfoTracker;->mInProgressRecords:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 382
    monitor-exit v0

    return-void

    :goto_2f
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_11

    throw p0
.end method

.method public onActivityLaunchFinished(JLandroid/content/ComponentName;JI)V
    .registers 7

    .line 391
    iget-object p3, p0, Lcom/android/server/am/AppStartInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter p3

    .line 392
    :try_start_3
    iget-object p4, p0, Lcom/android/server/am/AppStartInfoTracker;->mInProgressRecords:Landroid/util/ArrayMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p4, p1}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_13

    .line 394
    monitor-exit p3

    return-void

    :catchall_11
    move-exception p0

    goto :goto_29

    .line 396
    :cond_13
    iget-object p2, p0, Lcom/android/server/am/AppStartInfoTracker;->mInProgressRecords:Landroid/util/ArrayMap;

    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/ApplicationStartInfo;

    if-nez p2, :cond_24

    .line 398
    iget-object p0, p0, Lcom/android/server/am/AppStartInfoTracker;->mInProgressRecords:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 399
    monitor-exit p3

    return-void

    .line 401
    :cond_24
    invoke-virtual {p2, p6}, Landroid/app/ApplicationStartInfo;->setLaunchMode(I)V

    .line 402
    monitor-exit p3

    return-void

    :goto_29
    monitor-exit p3
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_11

    throw p0
.end method

.method public onActivityLaunched(JLandroid/content/ComponentName;JLcom/android/server/am/ProcessRecord;)V
    .registers 8

    .line 342
    iget-object p3, p0, Lcom/android/server/am/AppStartInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter p3

    .line 343
    :try_start_3
    iget-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mInProgressRecords:Landroid/util/ArrayMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_13

    .line 345
    monitor-exit p3

    return-void

    :catchall_11
    move-exception p0

    goto :goto_41

    .line 347
    :cond_13
    iget-object p2, p0, Lcom/android/server/am/AppStartInfoTracker;->mInProgressRecords:Landroid/util/ArrayMap;

    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/ApplicationStartInfo;

    if-eqz p2, :cond_3a

    if-nez p6, :cond_20

    goto :goto_3a

    :cond_20
    long-to-int p4, p4

    .line 352
    invoke-virtual {p2, p4}, Landroid/app/ApplicationStartInfo;->setStartType(I)V

    .line 353
    invoke-virtual {p0, p2, p6}, Lcom/android/server/am/AppStartInfoTracker;->addBaseFieldsFromProcessRecord(Landroid/app/ApplicationStartInfo;Lcom/android/server/am/ProcessRecord;)V

    .line 354
    invoke-virtual {p0, p2}, Lcom/android/server/am/AppStartInfoTracker;->addStartInfoLocked(Landroid/app/ApplicationStartInfo;)Landroid/app/ApplicationStartInfo;

    move-result-object p2

    if-nez p2, :cond_33

    .line 358
    iget-object p0, p0, Lcom/android/server/am/AppStartInfoTracker;->mInProgressRecords:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    goto :goto_38

    .line 360
    :cond_33
    iget-object p0, p0, Lcom/android/server/am/AppStartInfoTracker;->mInProgressRecords:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, p2}, Landroid/util/ArrayMap;->setValueAt(ILjava/lang/Object;)Ljava/lang/Object;

    .line 362
    :goto_38
    monitor-exit p3

    return-void

    .line 349
    :cond_3a
    :goto_3a
    iget-object p0, p0, Lcom/android/server/am/AppStartInfoTracker;->mInProgressRecords:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 350
    monitor-exit p3

    return-void

    .line 362
    :goto_41
    monitor-exit p3
    :try_end_42
    .catchall {:try_start_3 .. :try_end_42} :catchall_11

    throw p0
.end method

.method public onActivityReportFullyDrawn(JJ)Landroid/app/ApplicationStartInfo;
    .registers 7

    .line 411
    iget-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 412
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/AppStartInfoTracker;->mInProgressRecords:Landroid/util/ArrayMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result p1

    const/4 p2, 0x0

    if-gez p1, :cond_14

    .line 414
    monitor-exit v0

    return-object p2

    :catchall_12
    move-exception p0

    goto :goto_30

    .line 416
    :cond_14
    iget-object v1, p0, Lcom/android/server/am/AppStartInfoTracker;->mInProgressRecords:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ApplicationStartInfo;

    if-nez v1, :cond_25

    .line 418
    iget-object p0, p0, Lcom/android/server/am/AppStartInfoTracker;->mInProgressRecords:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 419
    monitor-exit v0

    return-object p2

    :cond_25
    const/4 p2, 0x5

    .line 421
    invoke-virtual {v1, p2, p3, p4}, Landroid/app/ApplicationStartInfo;->addStartupTimestamp(IJ)V

    .line 423
    iget-object p0, p0, Lcom/android/server/am/AppStartInfoTracker;->mInProgressRecords:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 424
    monitor-exit v0

    return-object v1

    .line 425
    :goto_30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_12

    throw p0
.end method

.method public onPackageRemoved(Ljava/lang/String;IZ)V
    .registers 6

    if-eqz p1, :cond_25

    .line 848
    iget-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 849
    invoke-virtual {v0, p2}, Landroid/content/pm/PackageManagerInternal;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 850
    iget-object v1, p0, Lcom/android/server/am/AppStartInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v1

    if-eqz p3, :cond_15

    const/4 p3, -0x1

    goto :goto_19

    .line 855
    :cond_15
    :try_start_15
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p3

    .line 851
    :goto_19
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/server/am/AppStartInfoTracker;->removePackageLocked(Ljava/lang/String;IZI)V

    const/4 p1, 0x1

    .line 856
    invoke-virtual {p0, p1}, Lcom/android/server/am/AppStartInfoTracker;->schedulePersistProcessStartInfo(Z)V

    .line 857
    monitor-exit v1

    return-void

    :catchall_22
    move-exception p0

    monitor-exit v1
    :try_end_24
    .catchall {:try_start_15 .. :try_end_24} :catchall_22

    throw p0

    :cond_25
    return-void
.end method

.method public onSystemReady()V
    .registers 5

    .line 219
    invoke-virtual {p0}, Lcom/android/server/am/AppStartInfoTracker;->registerForUserRemoval()V

    .line 220
    invoke-virtual {p0}, Lcom/android/server/am/AppStartInfoTracker;->registerForPackageRemoval()V

    .line 221
    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/am/AppStartInfoTracker$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/android/server/am/AppStartInfoTracker$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/am/AppStartInfoTracker;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 225
    iget-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mMonotonicClock:Lcom/android/internal/os/MonotonicClock;

    if-nez v0, :cond_23

    .line 230
    new-instance v0, Lcom/android/internal/os/MonotonicClock;

    sget-object v1, Lcom/android/internal/os/Clock;->SYSTEM_CLOCK:Lcom/android/internal/os/Clock;

    invoke-virtual {v1}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v2

    invoke-direct {v0, v2, v3, v1}, Lcom/android/internal/os/MonotonicClock;-><init>(JLcom/android/internal/os/Clock;)V

    iput-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mMonotonicClock:Lcom/android/internal/os/MonotonicClock;

    :cond_23
    return-void
.end method

.method public onUserRemoved(I)V
    .registers 3

    .line 839
    iget-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 840
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/am/AppStartInfoTracker;->removeByUserIdLocked(I)V

    const/4 p1, 0x1

    .line 841
    invoke-virtual {p0, p1}, Lcom/android/server/am/AppStartInfoTracker;->schedulePersistProcessStartInfo(Z)V

    .line 842
    monitor-exit v0

    return-void

    :catchall_c
    move-exception p0

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public persistProcessStartInfo()V
    .registers 11

    .line 994
    new-instance v0, Landroid/util/AtomicFile;

    iget-object v1, p0, Lcom/android/server/am/AppStartInfoTracker;->mProcStartInfoFile:Ljava/io/File;

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 997
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    .line 999
    :try_start_c
    invoke-virtual {v0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v4
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_10} :catch_4e
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_10} :catch_4e

    .line 1000
    :try_start_10
    new-instance v5, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v5, v4}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/OutputStream;)V

    const-wide v6, 0x10300000001L

    .line 1001
    invoke-virtual {v5, v6, v7, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1008
    iget-object v6, p0, Lcom/android/server/am/AppStartInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_20} :catch_46
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_20} :catch_46

    .line 1009
    :try_start_20
    new-instance v7, Lcom/android/server/am/AppStartInfoTracker$$ExternalSyntheticLambda2;

    invoke-direct {v7, v5, v3, v3, v3}, Lcom/android/server/am/AppStartInfoTracker$$ExternalSyntheticLambda2;-><init>(Landroid/util/proto/ProtoOutputStream;Ljava/io/ByteArrayOutputStream;Ljava/io/ObjectOutputStream;Lcom/android/modules/utils/TypedXmlSerializer;)V

    invoke-virtual {p0, v7}, Lcom/android/server/am/AppStartInfoTracker;->forEachPackageLocked(Ljava/util/function/BiFunction;)Z

    move-result v7

    if-eqz v7, :cond_30

    .line 1033
    iput-wide v1, p0, Lcom/android/server/am/AppStartInfoTracker;->mLastAppStartInfoPersistTimestamp:J

    goto :goto_30

    :catchall_2e
    move-exception v1

    goto :goto_4c

    .line 1035
    :cond_30
    :goto_30
    monitor-exit v6
    :try_end_31
    .catchall {:try_start_20 .. :try_end_31} :catchall_2e

    .line 1036
    :try_start_31
    invoke-virtual {p0}, Lcom/android/server/am/AppStartInfoTracker;->getMonotonicTimeMs()J

    move-result-wide v1

    const-wide v8, 0x10300000003L

    invoke-virtual {v5, v8, v9, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    if-eqz v7, :cond_48

    .line 1038
    invoke-virtual {v5}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 1039
    invoke-virtual {v0, v4}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    goto :goto_69

    :catch_46
    move-exception v1

    goto :goto_50

    .line 1041
    :cond_48
    invoke-virtual {v0, v4}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_4b} :catch_46
    .catch Ljava/lang/RuntimeException; {:try_start_31 .. :try_end_4b} :catch_46

    goto :goto_69

    .line 1035
    :goto_4c
    :try_start_4c
    monitor-exit v6
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_2e

    :try_start_4d
    throw v1
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_4e} :catch_46
    .catch Ljava/lang/RuntimeException; {:try_start_4d .. :try_end_4e} :catch_46

    :catch_4e
    move-exception v1

    move-object v4, v3

    .line 1044
    :goto_50
    const-string v2, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to write historical app start info into persistent storage: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    invoke-virtual {v0, v4}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 1047
    :goto_69
    iget-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1048
    :try_start_6c
    iput-object v3, p0, Lcom/android/server/am/AppStartInfoTracker;->mAppStartInfoPersistTask:Ljava/lang/Runnable;

    .line 1049
    monitor-exit v0

    return-void

    :catchall_70
    move-exception p0

    monitor-exit v0
    :try_end_72
    .catchall {:try_start_6c .. :try_end_72} :catchall_70

    throw p0
.end method

.method public final registerForPackageRemoval()V
    .registers 5

    .line 879
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 880
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 881
    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 882
    iget-object v1, p0, Lcom/android/server/am/AppStartInfoTracker;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/am/AppStartInfoTracker$2;

    invoke-direct {v2, p0}, Lcom/android/server/am/AppStartInfoTracker$2;-><init>(Lcom/android/server/am/AppStartInfoTracker;)V

    const/4 v3, 0x0

    iget-object p0, p0, Lcom/android/server/am/AppStartInfoTracker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v0, v3, p0}, Landroid/content/Context;->registerReceiverForAllUsers(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method public final registerForUserRemoval()V
    .registers 5

    .line 862
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 863
    const-string v1, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 864
    iget-object v1, p0, Lcom/android/server/am/AppStartInfoTracker;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/am/AppStartInfoTracker$1;

    invoke-direct {v2, p0}, Lcom/android/server/am/AppStartInfoTracker$1;-><init>(Lcom/android/server/am/AppStartInfoTracker;)V

    const/4 v3, 0x0

    iget-object p0, p0, Lcom/android/server/am/AppStartInfoTracker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v0, v3, p0}, Landroid/content/Context;->registerReceiverForAllUsers(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method public final removeByUserIdLocked(I)V
    .registers 3

    const/4 v0, -0x1

    if-ne p1, v0, :cond_d

    .line 822
    iget-object p0, p0, Lcom/android/server/am/AppStartInfoTracker;->mData:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {p0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/ArrayMap;->clear()V

    return-void

    .line 825
    :cond_d
    new-instance v0, Lcom/android/server/am/AppStartInfoTracker$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1}, Lcom/android/server/am/AppStartInfoTracker$$ExternalSyntheticLambda3;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/server/am/AppStartInfoTracker;->forEachPackageLocked(Ljava/util/function/BiFunction;)Z

    return-void
.end method

.method public final removePackageLocked(Ljava/lang/String;IZI)V
    .registers 6

    .line 799
    iget-object p2, p0, Lcom/android/server/am/AppStartInfoTracker;->mData:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {p2}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object p2

    .line 800
    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/util/SparseArray;

    if-nez p3, :cond_f

    goto :goto_3e

    :cond_f
    const/4 v0, -0x1

    if-ne p4, v0, :cond_1c

    .line 805
    iget-object p0, p0, Lcom/android/server/am/AppStartInfoTracker;->mData:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {p0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 807
    :cond_1c
    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    :goto_22
    if-ltz p0, :cond_35

    .line 808
    invoke-virtual {p3, p0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    if-ne v0, p4, :cond_32

    .line 809
    invoke-virtual {p3, p0}, Landroid/util/SparseArray;->removeAt(I)V

    goto :goto_35

    :cond_32
    add-int/lit8 p0, p0, -0x1

    goto :goto_22

    .line 813
    :cond_35
    :goto_35
    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result p0

    if-nez p0, :cond_3e

    .line 814
    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3e
    :goto_3e
    return-void
.end method

.method public removeStartInfoCompleteListener(Landroid/app/IApplicationStartInfoCompleteListener;IZ)V
    .registers 10

    .line 743
    iget-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 744
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/AppStartInfoTracker;->mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-nez v1, :cond_11

    .line 746
    monitor-exit v0

    return-void

    :catchall_f
    move-exception p0

    goto :goto_3f

    .line 748
    :cond_11
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_16
    if-ge v3, v2, :cond_2d

    .line 751
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/AppStartInfoTracker$ApplicationStartInfoCompleteCallback;

    .line 752
    invoke-static {v4}, Lcom/android/server/am/AppStartInfoTracker$ApplicationStartInfoCompleteCallback;->-$$Nest$fgetmCallback(Lcom/android/server/am/AppStartInfoTracker$ApplicationStartInfoCompleteCallback;)Landroid/app/IApplicationStartInfoCompleteListener;

    move-result-object v5

    if-ne v5, p1, :cond_2a

    if-eqz p3, :cond_2d

    .line 754
    invoke-virtual {v4}, Lcom/android/server/am/AppStartInfoTracker$ApplicationStartInfoCompleteCallback;->unlinkToDeath()V

    goto :goto_2d

    :cond_2a
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    :cond_2d
    :goto_2d
    if-ge v3, v2, :cond_32

    .line 760
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 762
    :cond_32
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3d

    .line 763
    iget-object p0, p0, Lcom/android/server/am/AppStartInfoTracker;->mCallbacks:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 765
    :cond_3d
    monitor-exit v0

    return-void

    :goto_3f
    monitor-exit v0
    :try_end_40
    .catchall {:try_start_3 .. :try_end_40} :catchall_f

    throw p0
.end method

.method public schedulePersistProcessStartInfo(Z)V
    .registers 6

    .line 1057
    iget-object v0, p0, Lcom/android/server/am/AppStartInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1058
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/AppStartInfoTracker;->mAppStartInfoPersistTask:Ljava/lang/Runnable;

    if-eqz v1, :cond_9

    if-eqz p1, :cond_2e

    :cond_9
    if-eqz v1, :cond_17

    .line 1060
    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/AppStartInfoTracker;->mAppStartInfoPersistTask:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_17

    :catchall_15
    move-exception p0

    goto :goto_30

    .line 1062
    :cond_17
    :goto_17
    new-instance v1, Lcom/android/server/am/AppStartInfoTracker$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/android/server/am/AppStartInfoTracker$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/am/AppStartInfoTracker;)V

    iput-object v1, p0, Lcom/android/server/am/AppStartInfoTracker;->mAppStartInfoPersistTask:Ljava/lang/Runnable;

    .line 1063
    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/am/AppStartInfoTracker;->mAppStartInfoPersistTask:Ljava/lang/Runnable;

    if-eqz p1, :cond_29

    const-wide/16 v2, 0x0

    goto :goto_2b

    .line 1066
    :cond_29
    sget-wide v2, Lcom/android/server/am/AppStartInfoTracker;->APP_START_INFO_PERSIST_INTERVAL:J

    .line 1064
    :goto_2b
    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1068
    :cond_2e
    monitor-exit v0

    return-void

    :goto_30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_15

    throw p0
.end method
