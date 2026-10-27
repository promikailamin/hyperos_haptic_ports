.class public final Lcom/android/server/am/AppExitInfoTracker;
.super Ljava/lang/Object;
.source "AppExitInfoTracker.java"


# static fields
.field static final APP_EXIT_INFO_FILE:Ljava/lang/String; = "procexitinfo"

.field public static final APP_EXIT_INFO_PERSIST_INTERVAL:J

.field public static final APP_EXIT_INFO_STATSD_LOG_DEBOUNCE:J

.field static final APP_EXIT_STORE_DIR:Ljava/lang/String; = "procexitstore"

.field static final FOREACH_ACTION_NONE:I = 0x0

.field static final FOREACH_ACTION_REMOVE_ITEM:I = 0x1

.field static final FOREACH_ACTION_STOP_ITERATION:I = 0x2


# instance fields
.field public final mActiveAppStateSummary:Landroid/util/SparseArray;

.field public final mActiveAppTraces:Landroid/util/SparseArray;

.field public mAppExitInfoHistoryListSize:I

.field mAppExitInfoLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public mAppExitInfoPersistTask:Ljava/lang/Runnable;

.field public final mAppExitInfoSourceLmkd:Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;

.field public final mAppExitInfoSourceZygote:Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;

.field public final mAppTraceRetriever:Lcom/android/server/am/AppExitInfoTracker$AppTraceRetriever;

.field public final mData:Lcom/android/internal/app/ProcessMap;

.field public final mIsolatedUidRecords:Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;

.field public mKillHandler:Lcom/android/server/am/AppExitInfoTracker$KillHandler;

.field public mLastAppExitInfoPersistTimestamp:J

.field final mLock:Ljava/lang/Object;

.field mProcExitInfoFile:Ljava/io/File;

.field mProcExitStoreDir:Ljava/io/File;

.field public final mRawRecordsPool:Landroid/util/Pools$SynchronizedPool;

.field public mService:Lcom/android/server/am/ActivityManagerService;

.field public final mTmpInfoList:Ljava/util/ArrayList;

.field public final mTmpInfoList2:Ljava/util/ArrayList;


# direct methods
.method public static synthetic $r8$lambda$79m5azk2tK6LcZ3Yl1NAv9TePfo(IILjava/util/List;Ljava/lang/String;Landroid/util/SparseArray;)Ljava/lang/Integer;
    .registers 5

    .line 587
    invoke-virtual {p4, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;

    const/4 p3, 0x0

    if-eqz p0, :cond_c

    .line 589
    invoke-virtual {p0, p1, p3, p2}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->getExitInfosLocked(IILjava/util/List;)V

    .line 591
    :cond_c
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$C-42QRtlcPZF8LMuQWWEP8-FpiE(ILjava/lang/Integer;)Z
    .registers 2

    .line 1013
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    if-ne p1, p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$FobXridV8bJbSJwLZ01HIoNqLBM(ILjava/lang/Integer;)Z
    .registers 2

    .line 1015
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    if-ne p1, p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$OWHcomjhuh9GSg33DvNTU9an5Wo(ILjava/lang/String;Landroid/util/SparseArray;)Ljava/lang/Integer;
    .registers 5

    .line 1017
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p1

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    :goto_6
    if-ltz p1, :cond_22

    .line 1018
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-ne v1, p0, :cond_1f

    .line 1019
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;

    invoke-virtual {p0}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->destroyLocked()V

    .line 1020
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->removeAt(I)V

    goto :goto_22

    :cond_1f
    add-int/lit8 p1, p1, -0x1

    goto :goto_6

    .line 1024
    :cond_22
    :goto_22
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p0

    if-nez p0, :cond_29

    goto :goto_2a

    :cond_29
    const/4 v0, 0x0

    :goto_2a
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$PBal3LhXhlJzkyZGQhM9r0rLIVk(Landroid/util/ArraySet;Landroid/app/ApplicationExitInfo;)Ljava/lang/Integer;
    .registers 2

    .line 1212
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getTraceFile()Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_d

    .line 1214
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    :cond_d
    const/4 p0, 0x0

    .line 1216
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$TPzc1BYfBz6DIcGfSaFuUE6sNrk(Landroid/app/ApplicationExitInfo;Landroid/app/ApplicationExitInfo;)I
    .registers 4

    .line 597
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p0}, Landroid/app/ApplicationExitInfo;->getTimestamp()J

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$cLz4iUeWqZoK0EW5TZSsc7S3PCk(Landroid/util/ArraySet;Ljava/io/File;)V
    .registers 2

    .line 1222
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic $r8$lambda$e9BXcnIkbk10cETntxBOeT7VHoQ(Lcom/android/server/am/AppExitInfoTracker;II[ZLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/String;Landroid/util/SparseArray;)Ljava/lang/Integer;
    .registers 9

    .line 0
    invoke-virtual/range {p0 .. p8}, Lcom/android/server/am/AppExitInfoTracker;->lambda$updateExitInfoIfNecessaryLocked$2(II[ZLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/String;Landroid/util/SparseArray;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$fsNqCm83thaKw9uks7YUEatBS_E(Ljava/io/File;)V
    .registers 1

    .line 1148
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    return-void
.end method

.method public static synthetic $r8$lambda$h-8YP32HtmCPcUbOWTowipwKDNc(Lcom/android/server/am/AppExitInfoTracker;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/am/AppExitInfoTracker;->lambda$onSystemReady$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$jYTNDCvJr3W8Cm9aBB_O8XuX3BY(Ljava/io/File;)V
    .registers 1

    .line 1015
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    return-void
.end method

.method public static synthetic $r8$lambda$s0EKUBJJZeJwfK4O5JO_62l6adE(Landroid/util/ArraySet;Ljava/lang/String;Landroid/util/SparseArray;)Ljava/lang/Integer;
    .registers 5

    .line 1209
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_6
    if-ltz p1, :cond_19

    .line 1210
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;

    .line 1211
    new-instance v1, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0}, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda13;-><init>(Landroid/util/ArraySet;)V

    invoke-virtual {v0, v1}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->forEachRecordLocked(Ljava/util/function/Function;)V

    add-int/lit8 p1, p1, -0x1

    goto :goto_6

    :cond_19
    const/4 p0, 0x0

    .line 1219
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ssiqOZh4VOBkBnURlK4Jng8PzkI(Landroid/util/ArraySet;Ljava/io/File;)Z
    .registers 3

    .line 1196
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    .line 1197
    const-string v0, "anr_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, ".gz"

    .line 1198
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    if-eqz v0, :cond_1c

    .line 1200
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_1c
    return v0
.end method

.method public static synthetic $r8$lambda$suhVvBtvtWr_A5EY9keo_d8eTdU(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;Landroid/util/SparseArray;)Ljava/lang/Integer;
    .registers 10

    const-wide v0, 0x20b00000002L

    .line 772
    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    const-wide v4, 0x10900000001L

    .line 773
    invoke-virtual {p0, v4, v5, p1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 774
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p1

    const/4 v4, 0x0

    move v5, v4

    :goto_17
    if-ge v5, p1, :cond_25

    .line 776
    invoke-virtual {p2, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;

    invoke-virtual {v6, p0, v0, v1}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_17

    .line 778
    :cond_25
    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 779
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$u1Wh6UXS6IHKkHcVHzIA5WClufo(Lcom/android/server/am/AppExitInfoTracker;Ljava/io/PrintWriter;Landroid/icu/text/SimpleDateFormat;Ljava/lang/String;Landroid/util/SparseArray;)Ljava/lang/Integer;
    .registers 5

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/am/AppExitInfoTracker;->lambda$dumpHistoryProcessExitInfo$6(Ljava/io/PrintWriter;Landroid/icu/text/SimpleDateFormat;Ljava/lang/String;Landroid/util/SparseArray;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmService(Lcom/android/server/am/AppExitInfoTracker;)Lcom/android/server/am/ActivityManagerService;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/am/AppExitInfoTracker;->mService:Lcom/android/server/am/ActivityManagerService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$maddExitInfoLocked(Lcom/android/server/am/AppExitInfoTracker;Landroid/app/ApplicationExitInfo;)Landroid/app/ApplicationExitInfo;
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/am/AppExitInfoTracker;->addExitInfoLocked(Landroid/app/ApplicationExitInfo;)Landroid/app/ApplicationExitInfo;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetExitInfoLocked(Lcom/android/server/am/AppExitInfoTracker;Ljava/lang/String;II)Landroid/app/ApplicationExitInfo;
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/AppExitInfoTracker;->getExitInfoLocked(Ljava/lang/String;II)Landroid/app/ApplicationExitInfo;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mperformLogToStatsdLocked(Lcom/android/server/am/AppExitInfoTracker;Landroid/app/ApplicationExitInfo;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/am/AppExitInfoTracker;->performLogToStatsdLocked(Landroid/app/ApplicationExitInfo;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateExitInfoIfNecessaryLocked(Lcom/android/server/am/AppExitInfoTracker;IILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Long;)Z
    .registers 6

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/am/AppExitInfoTracker;->updateExitInfoIfNecessaryLocked(IILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Long;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smfindAndRemoveFromSparse2dArray(Landroid/util/SparseArray;II)Ljava/lang/Object;
    .registers 3

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/server/am/AppExitInfoTracker;->findAndRemoveFromSparse2dArray(Landroid/util/SparseArray;II)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 105
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/am/AppExitInfoTracker;->APP_EXIT_INFO_PERSIST_INTERVAL:J

    .line 119
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xf

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/am/AppExitInfoTracker;->APP_EXIT_INFO_STATSD_LOG_DEBOUNCE:J

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 144
    iput-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoPersistTask:Ljava/lang/Runnable;

    const-wide/16 v1, 0x0

    .line 150
    iput-wide v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mLastAppExitInfoPersistTimestamp:J

    .line 175
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 181
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mTmpInfoList:Ljava/util/ArrayList;

    .line 187
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mTmpInfoList2:Ljava/util/ArrayList;

    .line 206
    new-instance v1, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;

    invoke-direct {v1, p0}, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;-><init>(Lcom/android/server/am/AppExitInfoTracker;)V

    iput-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mIsolatedUidRecords:Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;

    .line 212
    new-instance v1, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;

    const-string/jumbo v2, "zygote"

    invoke-direct {v1, p0, v2, v0}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;-><init>(Lcom/android/server/am/AppExitInfoTracker;Ljava/lang/String;Ljava/lang/Integer;)V

    iput-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoSourceZygote:Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;

    .line 218
    new-instance v0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;

    const/4 v1, 0x3

    .line 219
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "lmkd"

    invoke-direct {v0, p0, v2, v1}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;-><init>(Lcom/android/server/am/AppExitInfoTracker;Ljava/lang/String;Ljava/lang/Integer;)V

    iput-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoSourceLmkd:Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;

    .line 231
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mActiveAppStateSummary:Landroid/util/SparseArray;

    .line 242
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mActiveAppTraces:Landroid/util/SparseArray;

    .line 248
    new-instance v0, Lcom/android/server/am/AppExitInfoTracker$AppTraceRetriever;

    invoke-direct {v0, p0}, Lcom/android/server/am/AppExitInfoTracker$AppTraceRetriever;-><init>(Lcom/android/server/am/AppExitInfoTracker;)V

    iput-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppTraceRetriever:Lcom/android/server/am/AppExitInfoTracker$AppTraceRetriever;

    .line 251
    new-instance v0, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v0}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mData:Lcom/android/internal/app/ProcessMap;

    .line 252
    new-instance v0, Landroid/util/Pools$SynchronizedPool;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mRawRecordsPool:Landroid/util/Pools$SynchronizedPool;

    return-void
.end method

.method public static copyToGzFile(Ljava/io/File;Ljava/io/File;JJ)Z
    .registers 12

    const/4 v0, 0x0

    .line 1167
    :try_start_1
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_b} :catch_61

    .line 1168
    :try_start_b
    new-instance p0, Ljava/util/zip/GZIPOutputStream;

    new-instance v2, Ljava/io/BufferedOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {p0, v2}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1a
    .catchall {:try_start_b .. :try_end_1a} :catchall_4d

    const/16 v2, 0x2000

    .line 1170
    :try_start_1c
    new-array v3, v2, [B

    .line 1171
    invoke-virtual {v1, p2, p3}, Ljava/io/BufferedInputStream;->skip(J)J

    :goto_21
    const-wide/16 p2, 0x0

    cmp-long p2, p4, p2

    if-lez p2, :cond_3c

    int-to-long v4, v2

    .line 1173
    invoke-static {v4, v5, p4, p5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int p3, v4

    invoke-virtual {v1, v3, v0, p3}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result p3

    if-gez p3, :cond_34

    goto :goto_3c

    .line 1177
    :cond_34
    invoke-virtual {p0, v3, v0, p3}, Ljava/util/zip/GZIPOutputStream;->write([BII)V
    :try_end_37
    .catchall {:try_start_1c .. :try_end_37} :catchall_3a

    int-to-long p2, p3

    sub-long/2addr p4, p2

    goto :goto_21

    :catchall_3a
    move-exception p1

    goto :goto_4f

    .line 1180
    :cond_3c
    :goto_3c
    :try_start_3c
    invoke-virtual {p0}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_4d

    :try_start_3f
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_42} :catch_61

    if-nez p2, :cond_4c

    .line 1186
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_4c

    const/4 p0, 0x1

    return p0

    :cond_4c
    return v0

    :catchall_4d
    move-exception p0

    goto :goto_58

    .line 1166
    :goto_4f
    :try_start_4f
    invoke-virtual {p0}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_52
    .catchall {:try_start_4f .. :try_end_52} :catchall_53

    goto :goto_57

    :catchall_53
    move-exception p0

    :try_start_54
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_57
    throw p1
    :try_end_58
    .catchall {:try_start_54 .. :try_end_58} :catchall_4d

    :goto_58
    :try_start_58
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5b
    .catchall {:try_start_58 .. :try_end_5b} :catchall_5c

    goto :goto_60

    :catchall_5c
    move-exception p1

    :try_start_5d
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_60
    throw p0
    :try_end_61
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_61} :catch_61

    :catch_61
    return v0
.end method

.method public static findAndRemoveFromSparse2dArray(Landroid/util/SparseArray;II)Ljava/lang/Object;
    .registers 5

    .line 1305
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result p1

    const/4 v0, 0x0

    if-ltz p1, :cond_26

    .line 1307
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    if-nez v1, :cond_10

    return-object v0

    .line 1311
    :cond_10
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result p2

    if-ltz p2, :cond_26

    .line 1313
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    .line 1314
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->removeAt(I)V

    .line 1315
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result p2

    if-nez p2, :cond_26

    .line 1316
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->removeAt(I)V

    :cond_26
    return-object v0
.end method

.method public static forEachSparse2dArray(Landroid/util/SparseArray;Ljava/util/function/Consumer;)V
    .registers 6

    if-eqz p1, :cond_28

    .line 1261
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_28

    .line 1262
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    if-nez v1, :cond_13

    goto :goto_25

    .line 1266
    :cond_13
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_19
    if-ltz v2, :cond_25

    .line 1267
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_19

    :cond_25
    :goto_25
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    :cond_28
    return-void
.end method

.method public static putToSparse2dArray(Landroid/util/SparseArray;IILjava/lang/Object;Ljava/util/function/Supplier;Ljava/util/function/Consumer;)V
    .registers 7

    .line 1236
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_10

    .line 1239
    invoke-interface {p4}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/util/SparseArray;

    .line 1240
    invoke-virtual {p0, p1, p4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_17

    .line 1242
    :cond_10
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    move-object p4, p0

    check-cast p4, Landroid/util/SparseArray;

    .line 1244
    :goto_17
    invoke-virtual {p4, p2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result p0

    if-ltz p0, :cond_2a

    if-eqz p5, :cond_26

    .line 1247
    invoke-virtual {p4, p0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p5, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1249
    :cond_26
    invoke-virtual {p4, p0, p3}, Landroid/util/SparseArray;->setValueAt(ILjava/lang/Object;)V

    return-void

    .line 1251
    :cond_2a
    invoke-virtual {p4, p2, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public static removeFromSparse2dArray(Landroid/util/SparseArray;Ljava/util/function/Predicate;Ljava/util/function/Predicate;Ljava/util/function/Consumer;)V
    .registers 8

    .line 1279
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_54

    if-eqz p1, :cond_18

    .line 1280
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_51

    .line 1281
    :cond_18
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    if-nez v1, :cond_21

    goto :goto_51

    .line 1285
    :cond_21
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_27
    if-ltz v2, :cond_48

    if-eqz p2, :cond_39

    .line 1286
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_45

    :cond_39
    if-eqz p3, :cond_42

    .line 1288
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p3, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1290
    :cond_42
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->removeAt(I)V

    :cond_45
    add-int/lit8 v2, v2, -0x1

    goto :goto_27

    .line 1293
    :cond_48
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-nez v1, :cond_51

    .line 1294
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->removeAt(I)V

    :cond_51
    :goto_51
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_54
    return-void
.end method


# virtual methods
.method public final addExitInfoInnerLocked(Ljava/lang/String;ILandroid/app/ApplicationExitInfo;)V
    .registers 7

    .line 890
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mData:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;

    if-nez v0, :cond_3b

    .line 892
    new-instance v0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;

    iget v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoHistoryListSize:I

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;-><init>(Lcom/android/server/am/AppExitInfoTracker;I)V

    .line 893
    invoke-virtual {p3}, Landroid/app/ApplicationExitInfo;->getRealUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->isIsolated(I)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 894
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mIsolatedUidRecords:Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;

    invoke-virtual {p3}, Landroid/app/ApplicationExitInfo;->getRealUid()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;->getUidByIsolatedUid(I)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_36

    .line 896
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->-$$Nest$fputmUid(Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;I)V

    goto :goto_36

    .line 899
    :cond_2f
    invoke-virtual {p3}, Landroid/app/ApplicationExitInfo;->getRealUid()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->-$$Nest$fputmUid(Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;I)V

    .line 901
    :cond_36
    :goto_36
    iget-object p0, p0, Lcom/android/server/am/AppExitInfoTracker;->mData:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 903
    :cond_3b
    invoke-virtual {v0, p3}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->addExitInfoLocked(Landroid/app/ApplicationExitInfo;)V

    return-void
.end method

.method public final addExitInfoLocked(Landroid/app/ApplicationExitInfo;)Landroid/app/ApplicationExitInfo;
    .registers 8

    .line 454
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_11

    .line 455
    const-string p0, "ActivityManager"

    const-string p1, "Skipping saving the exit info due to ongoing loading from storage"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 459
    :cond_11
    new-instance v0, Landroid/app/ApplicationExitInfo;

    invoke-direct {v0, p1}, Landroid/app/ApplicationExitInfo;-><init>(Landroid/app/ApplicationExitInfo;)V

    .line 460
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getPackageList()[Ljava/lang/String;

    move-result-object v1

    .line 461
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getRealUid()I

    move-result v2

    .line 462
    invoke-static {v2}, Landroid/os/UserHandle;->isIsolated(I)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 463
    iget-object v3, p0, Lcom/android/server/am/AppExitInfoTracker;->mIsolatedUidRecords:Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;

    invoke-virtual {v3, v2}, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;->getUidByIsolatedUid(I)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_30

    .line 465
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :cond_30
    const/4 v3, 0x0

    move v4, v3

    .line 468
    :goto_32
    array-length v5, v1

    if-ge v4, v5, :cond_3d

    .line 469
    aget-object v5, v1, v4

    invoke-virtual {p0, v5, v2, v0}, Lcom/android/server/am/AppExitInfoTracker;->addExitInfoInnerLocked(Ljava/lang/String;ILandroid/app/ApplicationExitInfo;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_32

    .line 473
    :cond_3d
    invoke-static {v2}, Landroid/os/Process;->isSdkSandboxUid(I)Z

    move-result v2

    if-eqz v2, :cond_53

    move v2, v3

    .line 474
    :goto_44
    array-length v4, v1

    if-ge v2, v4, :cond_53

    .line 475
    aget-object v4, v1, v2

    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getPackageUid()I

    move-result v5

    invoke-virtual {p0, v4, v5, v0}, Lcom/android/server/am/AppExitInfoTracker;->addExitInfoInnerLocked(Ljava/lang/String;ILandroid/app/ApplicationExitInfo;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_44

    .line 479
    :cond_53
    invoke-virtual {p0, v3}, Lcom/android/server/am/AppExitInfoTracker;->schedulePersistProcessExitInfo(Z)V

    return-object v0
.end method

.method public clearHistoryProcessExitInfo(Ljava/lang/String;I)V
    .registers 9

    .line 835
    const-class v0, Lcom/android/server/os/NativeTombstoneManager;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/os/NativeTombstoneManager;

    .line 837
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v1

    .line 839
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1e

    .line 840
    iget-object v2, p0, Lcom/android/server/am/AppExitInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 841
    :try_start_16
    invoke-virtual {p0, p2}, Lcom/android/server/am/AppExitInfoTracker;->removeByUserIdLocked(I)V

    .line 842
    monitor-exit v2

    goto :goto_3d

    :catchall_1b
    move-exception p0

    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_16 .. :try_end_1d} :catchall_1b

    throw p0

    .line 844
    :cond_1e
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const-wide/32 v4, 0x20000

    invoke-virtual {v1, p1, v4, v5, p2}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v1

    .line 846
    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v2

    .line 847
    iget-object v4, p0, Lcom/android/server/am/AppExitInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 848
    :try_start_38
    invoke-virtual {p0, p1, v1, v3, p2}, Lcom/android/server/am/AppExitInfoTracker;->removePackageLocked(Ljava/lang/String;IZI)V

    .line 849
    monitor-exit v4
    :try_end_3c
    .catchall {:try_start_38 .. :try_end_3c} :catchall_4c

    move-object v1, v2

    .line 852
    :goto_3d
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/os/NativeTombstoneManager;->purge(Ljava/util/Optional;Ljava/util/Optional;)V

    .line 853
    invoke-virtual {p0, v3}, Lcom/android/server/am/AppExitInfoTracker;->schedulePersistProcessExitInfo(Z)V

    return-void

    :catchall_4c
    move-exception p0

    .line 849
    :try_start_4d
    monitor-exit v4
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4c

    throw p0
.end method

.method public clearProcessExitInfo(Z)V
    .registers 5

    .line 816
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 817
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoPersistTask:Ljava/lang/Runnable;

    if-eqz v1, :cond_16

    .line 818
    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoPersistTask:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v1, 0x0

    .line 819
    iput-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoPersistTask:Ljava/lang/Runnable;

    goto :goto_16

    :catchall_14
    move-exception p0

    goto :goto_37

    :cond_16
    :goto_16
    if-eqz p1, :cond_1f

    .line 821
    iget-object p1, p0, Lcom/android/server/am/AppExitInfoTracker;->mProcExitInfoFile:Ljava/io/File;

    if-eqz p1, :cond_1f

    .line 822
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 824
    :cond_1f
    iget-object p1, p0, Lcom/android/server/am/AppExitInfoTracker;->mData:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {p1}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/ArrayMap;->clear()V

    .line 825
    iget-object p1, p0, Lcom/android/server/am/AppExitInfoTracker;->mActiveAppStateSummary:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    .line 826
    iget-object p1, p0, Lcom/android/server/am/AppExitInfoTracker;->mActiveAppTraces:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    .line 827
    invoke-virtual {p0}, Lcom/android/server/am/AppExitInfoTracker;->pruneAnrTracesIfNecessaryLocked()V

    .line 828
    monitor-exit v0

    return-void

    :goto_37
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_3 .. :try_end_38} :catchall_14

    throw p0
.end method

.method public dumpHistoryProcessExitInfo(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 11

    .line 857
    const-string v0, "ACTIVITY MANAGER PROCESS EXIT INFO (dumpsys activity exit-info)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 858
    new-instance v6, Landroid/icu/text/SimpleDateFormat;

    const-string/jumbo v0, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v6, v0}, Landroid/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 859
    iget-object v7, p0, Lcom/android/server/am/AppExitInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 860
    :try_start_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Last Timestamp of Persistence Into Persistent Storage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/util/Date;

    iget-wide v2, p0, Lcom/android/server/am/AppExitInfoTracker;->mLastAppExitInfoPersistTimestamp:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 861
    invoke-virtual {v6, v1}, Landroid/icu/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 860
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 862
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 863
    new-instance p2, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda14;

    invoke-direct {p2, p0, p1, v6}, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda14;-><init>(Lcom/android/server/am/AppExitInfoTracker;Ljava/io/PrintWriter;Landroid/icu/text/SimpleDateFormat;)V

    invoke-virtual {p0, p2}, Lcom/android/server/am/AppExitInfoTracker;->forEachPackageLocked(Ljava/util/function/BiFunction;)V

    goto :goto_58

    :catchall_3e
    move-exception v0

    move-object p0, v0

    goto :goto_5a

    .line 868
    :cond_41
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mData:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/util/SparseArray;

    if-eqz v5, :cond_58

    .line 870
    const-string v3, "  "

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/AppExitInfoTracker;->dumpHistoryProcessExitInfoLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/util/SparseArray;Landroid/icu/text/SimpleDateFormat;)V

    .line 873
    :cond_58
    :goto_58
    monitor-exit v7

    return-void

    :goto_5a
    monitor-exit v7
    :try_end_5b
    .catchall {:try_start_10 .. :try_end_5b} :catchall_3e

    throw p0
.end method

.method public final dumpHistoryProcessExitInfoLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/util/SparseArray;Landroid/icu/text/SimpleDateFormat;)V
    .registers 9

    .line 880
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "package: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 881
    invoke-virtual {p4}, Landroid/util/SparseArray;->size()I

    move-result p0

    const/4 p3, 0x0

    :goto_1d
    if-ge p3, p0, :cond_57

    .line 883
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  Historical Process Exit for uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 884
    invoke-virtual {p4, p3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p5}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/icu/text/SimpleDateFormat;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_1d

    :cond_57
    return-void
.end method

.method public final forEachPackageLocked(Ljava/util/function/BiFunction;)V
    .registers 7

    if-eqz p1, :cond_4d

    .line 945
    iget-object p0, p0, Lcom/android/server/am/AppExitInfoTracker;->mData:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {p0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object p0

    .line 946
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_e
    if-ltz v0, :cond_4d

    .line 947
    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseArray;

    invoke-interface {p1, v2, v3}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, v1, :cond_2e

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2c

    goto :goto_4a

    :cond_2c
    const/4 v0, 0x0

    goto :goto_4a

    .line 949
    :cond_2e
    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    .line 950
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v3

    sub-int/2addr v3, v1

    :goto_39
    if-ltz v3, :cond_47

    .line 951
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;

    invoke-virtual {v4}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->destroyLocked()V

    add-int/lit8 v3, v3, -0x1

    goto :goto_39

    .line 953
    :cond_47
    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    :goto_4a
    add-int/lit8 v0, v0, -0x1

    goto :goto_e

    :cond_4d
    return-void
.end method

.method public getExitInfo(Ljava/lang/String;IIILjava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "III",
            "Ljava/util/List<",
            "Landroid/app/ApplicationExitInfo;",
            ">;)V"
        }
    .end annotation

    .line 573
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 575
    :try_start_4
    iget-object v2, p0, Lcom/android/server/am/AppExitInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_4e

    .line 576
    :try_start_7
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_22

    .line 578
    iget-object p0, p0, Lcom/android/server/am/AppExitInfoTracker;->mData:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;

    if-eqz p0, :cond_1d

    .line 580
    invoke-virtual {p0, p3, p4, p5}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->getExitInfosLocked(IILjava/util/List;)V

    goto :goto_1d

    :catchall_1b
    move-exception p0

    goto :goto_4c

    .line 582
    :cond_1d
    :goto_1d
    monitor-exit v2
    :try_end_1e
    .catchall {:try_start_7 .. :try_end_1e} :catchall_1b

    .line 608
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 586
    :cond_22
    :try_start_22
    new-instance p1, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda10;

    invoke-direct {p1, p2, p3, p5}, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda10;-><init>(IILjava/util/List;)V

    invoke-virtual {p0, p1}, Lcom/android/server/am/AppExitInfoTracker;->forEachPackageLocked(Ljava/util/function/BiFunction;)V

    .line 596
    new-instance p0, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda11;

    invoke-direct {p0}, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda11;-><init>()V

    invoke-static {p5, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    if-gtz p4, :cond_39

    .line 599
    monitor-exit v2
    :try_end_35
    .catchall {:try_start_22 .. :try_end_35} :catchall_1b

    .line 608
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 602
    :cond_39
    :try_start_39
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result p0

    sub-int/2addr p0, p4

    const/4 p1, 0x0

    :goto_3f
    if-ge p1, p0, :cond_47

    .line 604
    invoke-interface {p5}, Ljava/util/List;->removeLast()Ljava/lang/Object;

    add-int/lit8 p1, p1, 0x1

    goto :goto_3f

    .line 606
    :cond_47
    monitor-exit v2
    :try_end_48
    .catchall {:try_start_39 .. :try_end_48} :catchall_1b

    .line 608
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 606
    :goto_4c
    :try_start_4c
    monitor-exit v2
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_1b

    :try_start_4d
    throw p0
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4e

    :catchall_4e
    move-exception p0

    .line 608
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 609
    throw p0
.end method

.method public final getExitInfoLocked(Ljava/lang/String;II)Landroid/app/ApplicationExitInfo;
    .registers 11

    .line 619
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mTmpInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v5, 0x1

    .line 620
    iget-object v6, p0, Lcom/android/server/am/AppExitInfoTracker;->mTmpInfoList:Ljava/util/ArrayList;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/AppExitInfoTracker;->getExitInfo(Ljava/lang/String;IIILjava/util/List;)V

    .line 621
    iget-object p0, v1, Lcom/android/server/am/AppExitInfoTracker;->mTmpInfoList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-lez p0, :cond_20

    iget-object p0, v1, Lcom/android/server/am/AppExitInfoTracker;->mTmpInfoList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->getFirst()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ApplicationExitInfo;

    goto :goto_21

    :cond_20
    const/4 p0, 0x0

    .line 622
    :goto_21
    iget-object p1, v1, Lcom/android/server/am/AppExitInfoTracker;->mTmpInfoList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    return-object p0
.end method

.method public getProcessStateSummary(II)[B
    .registers 5

    .line 1084
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1085
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mIsolatedUidRecords:Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;

    invoke-virtual {v1, p1}, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;->getUidByIsolatedUid(I)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_12

    .line 1087
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_12

    :catchall_10
    move-exception p0

    goto :goto_2d

    .line 1089
    :cond_12
    :goto_12
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mActiveAppStateSummary:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result p1

    if-gez p1, :cond_1d

    const/4 p0, 0x0

    .line 1091
    monitor-exit v0

    return-object p0

    .line 1093
    :cond_1d
    iget-object p0, p0, Lcom/android/server/am/AppExitInfoTracker;->mActiveAppStateSummary:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    monitor-exit v0

    return-object p0

    .line 1094
    :goto_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_10

    throw p0
.end method

.method public handleLogAnrTrace(II[Ljava/lang/String;Ljava/io/File;JJ)V
    .registers 17

    .line 1113
    invoke-virtual {p4}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_92

    invoke-static {p3}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    goto/16 :goto_92

    .line 1116
    :cond_e
    invoke-virtual {p4}, Ljava/io/File;->length()J

    move-result-wide v0

    sub-long v6, p7, p5

    cmp-long v2, p5, v0

    if-gez v2, :cond_92

    cmp-long v0, p7, v0

    if-gtz v0, :cond_92

    const-wide/16 v0, 0x0

    cmp-long v0, v6, v0

    if-gtz v0, :cond_24

    goto/16 :goto_92

    .line 1122
    :cond_24
    new-instance v3, Ljava/io/File;

    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mProcExitStoreDir:Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".gz"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v2, p4

    move-wide v4, p5

    .line 1125
    invoke-static/range {v2 .. v7}, Lcom/android/server/am/AppExitInfoTracker;->copyToGzFile(Ljava/io/File;Ljava/io/File;JJ)Z

    move-result p4

    if-eqz p4, :cond_92

    .line 1127
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1128
    :try_start_4b
    iget-object p4, p0, Lcom/android/server/am/AppExitInfoTracker;->mIsolatedUidRecords:Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;

    invoke-virtual {p4, p2}, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;->getUidByIsolatedUid(I)Ljava/lang/Integer;

    move-result-object p4

    if-eqz p4, :cond_5b

    .line 1130
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_5b

    :catchall_58
    move-exception v0

    move-object p0, v0

    goto :goto_90

    :cond_5b
    :goto_5b
    const/4 p4, 0x0

    const/4 v0, 0x1

    move v2, p4

    .line 1137
    :goto_5e
    array-length v4, p3

    if-ge v2, v4, :cond_77

    .line 1138
    iget-object v4, p0, Lcom/android/server/am/AppExitInfoTracker;->mData:Lcom/android/internal/app/ProcessMap;

    aget-object v5, p3, v2

    invoke-virtual {v4, v5, p2}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;

    if-eqz v4, :cond_74

    .line 1140
    invoke-virtual {v4, p1, v3}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->appendTraceIfNecessaryLocked(ILjava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_74

    move v0, p4

    :cond_74
    add-int/lit8 v2, v2, 0x1

    goto :goto_5e

    :cond_77
    if-eqz v0, :cond_8e

    .line 1147
    iget-object p0, p0, Lcom/android/server/am/AppExitInfoTracker;->mActiveAppTraces:Landroid/util/SparseArray;

    new-instance p3, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda5;

    invoke-direct {p3}, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda5;-><init>()V

    new-instance p4, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda12;

    invoke-direct {p4}, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda12;-><init>()V

    move-object p6, p3

    move-object p7, p4

    move-object p5, v3

    move p4, p1

    move p3, p2

    move-object p2, p0

    invoke-static/range {p2 .. p7}, Lcom/android/server/am/AppExitInfoTracker;->putToSparse2dArray(Landroid/util/SparseArray;IILjava/lang/Object;Ljava/util/function/Supplier;Ljava/util/function/Consumer;)V

    .line 1150
    :cond_8e
    monitor-exit v1

    return-void

    :goto_90
    monitor-exit v1
    :try_end_91
    .catchall {:try_start_4b .. :try_end_91} :catchall_58

    throw p0

    :cond_92
    :goto_92
    return-void
.end method

.method public handleNoteAppKillLocked(Landroid/app/ApplicationExitInfo;)V
    .registers 5

    .line 437
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getPackageUid()I

    move-result v1

    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getPid()I

    move-result v2

    .line 436
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/am/AppExitInfoTracker;->getExitInfoLocked(Ljava/lang/String;II)Landroid/app/ApplicationExitInfo;

    move-result-object v0

    if-eqz v0, :cond_3a

    .line 439
    invoke-virtual {p0, v0}, Lcom/android/server/am/AppExitInfoTracker;->preventExitInfoUpdate(Landroid/app/ApplicationExitInfo;)Z

    move-result v1

    if-eqz v1, :cond_19

    goto :goto_3a

    .line 443
    :cond_19
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getReason()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ApplicationExitInfo;->setReason(I)V

    .line 444
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getSubReason()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ApplicationExitInfo;->setSubReason(I)V

    const/4 v1, 0x0

    .line 445
    invoke-virtual {v0, v1}, Landroid/app/ApplicationExitInfo;->setStatus(I)V

    .line 446
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/app/ApplicationExitInfo;->setTimestamp(J)V

    .line 447
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/ApplicationExitInfo;->setDescription(Ljava/lang/String;)V

    goto :goto_3e

    .line 440
    :cond_3a
    :goto_3a
    invoke-virtual {p0, p1}, Lcom/android/server/am/AppExitInfoTracker;->addExitInfoLocked(Landroid/app/ApplicationExitInfo;)Landroid/app/ApplicationExitInfo;

    move-result-object v0

    :goto_3e
    const/4 p1, 0x1

    .line 449
    invoke-virtual {p0, v0, p1}, Lcom/android/server/am/AppExitInfoTracker;->scheduleLogToStatsdLocked(Landroid/app/ApplicationExitInfo;Z)V

    return-void
.end method

.method public handleNoteProcessDiedLocked(Landroid/app/ApplicationExitInfo;)V
    .registers 7

    if-eqz p1, :cond_5b

    .line 388
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 389
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getPackageUid()I

    move-result v1

    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getPid()I

    move-result v2

    .line 388
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/am/AppExitInfoTracker;->getExitInfoLocked(Ljava/lang/String;II)Landroid/app/ApplicationExitInfo;

    move-result-object v0

    .line 392
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoSourceZygote:Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;

    .line 393
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getPid()I

    move-result v2

    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getRealUid()I

    move-result v3

    .line 392
    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;->remove(II)Landroid/util/Pair;

    move-result-object v1

    .line 394
    iget-object v2, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoSourceLmkd:Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;

    .line 395
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getPid()I

    move-result v3

    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getRealUid()I

    move-result v4

    .line 394
    invoke-virtual {v2, v3, v4}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;->remove(II)Landroid/util/Pair;

    move-result-object v2

    .line 396
    iget-object v3, p0, Lcom/android/server/am/AppExitInfoTracker;->mIsolatedUidRecords:Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;

    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getRealUid()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;->removeIsolatedUidLocked(I)I

    if-nez v0, :cond_3d

    .line 399
    invoke-virtual {p0, p1}, Lcom/android/server/am/AppExitInfoTracker;->addExitInfoLocked(Landroid/app/ApplicationExitInfo;)Landroid/app/ApplicationExitInfo;

    move-result-object v0

    :cond_3d
    const/4 p1, 0x0

    if-eqz v2, :cond_4d

    const/4 v1, 0x3

    .line 404
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    .line 403
    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/android/server/am/AppExitInfoTracker;->updateExistingExitInfoRecordLocked(Landroid/app/ApplicationExitInfo;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Long;)V

    return-void

    :cond_4d
    if-eqz v1, :cond_57

    .line 406
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {p0, v0, v1, p1, p1}, Lcom/android/server/am/AppExitInfoTracker;->updateExistingExitInfoRecordLocked(Landroid/app/ApplicationExitInfo;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Long;)V

    return-void

    :cond_57
    const/4 p1, 0x0

    .line 408
    invoke-virtual {p0, v0, p1}, Lcom/android/server/am/AppExitInfoTracker;->scheduleLogToStatsdLocked(Landroid/app/ApplicationExitInfo;Z)V

    :cond_5b
    return-void
.end method

.method public handleZygoteSigChld(III)V
    .registers 4

    .line 372
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/AppExitInfoTracker;->scheduleChildProcDied(III)V

    return-void
.end method

.method public init(Lcom/android/server/am/ActivityManagerService;)V
    .registers 6

    .line 256
    iput-object p1, p0, Lcom/android/server/am/AppExitInfoTracker;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 257
    new-instance v0, Lcom/android/server/ServiceThread;

    const/16 v1, 0xa

    const/4 v2, 0x1

    const-string v3, "ActivityManager:killHandler"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    .line 259
    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->start()V

    .line 260
    new-instance v1, Lcom/android/server/am/AppExitInfoTracker$KillHandler;

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/android/server/am/AppExitInfoTracker$KillHandler;-><init>(Lcom/android/server/am/AppExitInfoTracker;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mKillHandler:Lcom/android/server/am/AppExitInfoTracker$KillHandler;

    .line 262
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/android/server/SystemServiceManager;->ensureSystemDir()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "procexitstore"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mProcExitStoreDir:Ljava/io/File;

    .line 263
    invoke-static {v0}, Landroid/os/FileUtils;->createDir(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_47

    .line 264
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to create "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/am/AppExitInfoTracker;->mProcExitStoreDir:Ljava/io/File;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ActivityManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 267
    :cond_47
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mProcExitStoreDir:Ljava/io/File;

    const-string/jumbo v2, "procexitinfo"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mProcExitInfoFile:Ljava/io/File;

    .line 269
    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x10e0025

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoHistoryListSize:I

    return-void
.end method

.method public isFresh(J)Z
    .registers 7

    .line 1726
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x493e0

    add-long/2addr p1, v2

    cmp-long p0, p1, v0

    if-ltz p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic lambda$dumpHistoryProcessExitInfo$6(Ljava/io/PrintWriter;Landroid/icu/text/SimpleDateFormat;Ljava/lang/String;Landroid/util/SparseArray;)Ljava/lang/Integer;
    .registers 11

    .line 864
    const-string v2, "  "

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/AppExitInfoTracker;->dumpHistoryProcessExitInfoLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/util/SparseArray;Landroid/icu/text/SimpleDateFormat;)V

    const/4 p0, 0x0

    .line 865
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic lambda$onSystemReady$0()V
    .registers 3

    .line 278
    const-string/jumbo v0, "sys.lmk.reportkills"

    const/4 v1, 0x0

    .line 279
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    .line 278
    const-string/jumbo v1, "persist.sys.lmk.reportkills"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    invoke-virtual {p0}, Lcom/android/server/am/AppExitInfoTracker;->loadExistingProcessExitInfo()V

    return-void
.end method

.method public final synthetic lambda$updateExitInfoIfNecessaryLocked$2(II[ZLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/String;Landroid/util/SparseArray;)Ljava/lang/Integer;
    .registers 12

    const/4 p7, 0x0

    .line 541
    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 539
    invoke-virtual {p8, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p8

    check-cast p8, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;

    if-nez p8, :cond_e

    return-object v0

    .line 543
    :cond_e
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mTmpInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 544
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mTmpInfoList:Ljava/util/ArrayList;

    invoke-virtual {p8, p2, p7, v1}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->getExitInfosLocked(IILjava/util/List;)V

    .line 545
    iget-object p2, p0, Lcom/android/server/am/AppExitInfoTracker;->mTmpInfoList:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-nez p2, :cond_21

    return-object v0

    .line 549
    :cond_21
    iget-object p2, p0, Lcom/android/server/am/AppExitInfoTracker;->mTmpInfoList:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    move p8, p7

    :goto_28
    if-ge p8, p2, :cond_47

    .line 550
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mTmpInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1, p8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ApplicationExitInfo;

    .line 551
    invoke-virtual {v1}, Landroid/app/ApplicationExitInfo;->getRealUid()I

    move-result v2

    if-eq v2, p1, :cond_3b

    add-int/lit8 p8, p8, 0x1

    goto :goto_28

    :cond_3b
    const/4 p1, 0x1

    .line 557
    aput-boolean p1, p3, p7

    .line 558
    invoke-virtual {p0, v1, p4, p5, p6}, Lcom/android/server/am/AppExitInfoTracker;->updateExistingExitInfoRecordLocked(Landroid/app/ApplicationExitInfo;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Long;)V

    const/4 p0, 0x2

    .line 559
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_47
    return-object v0
.end method

.method public loadExistingProcessExitInfo()V
    .registers 7

    .line 693
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mProcExitInfoFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_f

    .line 694
    iget-object p0, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :cond_f
    const/4 v0, 0x0

    .line 700
    :try_start_10
    new-instance v2, Landroid/util/AtomicFile;

    iget-object v3, p0, Lcom/android/server/am/AppExitInfoTracker;->mProcExitInfoFile:Ljava/io/File;

    invoke-direct {v2, v3}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 701
    invoke-virtual {v2}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v0

    .line 702
    new-instance v2, Landroid/util/proto/ProtoInputStream;

    invoke-direct {v2, v0}, Landroid/util/proto/ProtoInputStream;-><init>(Ljava/io/InputStream;)V

    .line 703
    invoke-virtual {v2}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v3

    :goto_24
    const/4 v4, -0x1

    if-eq v3, v4, :cond_4d

    if-eq v3, v1, :cond_36

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2d

    goto :goto_45

    :cond_2d
    int-to-long v3, v3

    .line 714
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/server/am/AppExitInfoTracker;->loadPackagesFromProto(Landroid/util/proto/ProtoInputStream;J)V

    goto :goto_45

    :catchall_32
    move-exception p0

    goto :goto_7c

    :catch_34
    move-exception v2

    goto :goto_53

    .line 708
    :cond_36
    iget-object v3, p0, Lcom/android/server/am/AppExitInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_39} :catch_34
    .catchall {:try_start_10 .. :try_end_39} :catchall_32

    const-wide v4, 0x10300000001L

    .line 710
    :try_start_3e
    invoke-virtual {v2, v4, v5}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/am/AppExitInfoTracker;->mLastAppExitInfoPersistTimestamp:J

    .line 711
    monitor-exit v3
    :try_end_45
    .catchall {:try_start_3e .. :try_end_45} :catchall_4a

    .line 705
    :goto_45
    :try_start_45
    invoke-virtual {v2}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v3
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_49} :catch_34
    .catchall {:try_start_45 .. :try_end_49} :catchall_32

    goto :goto_24

    :catchall_4a
    move-exception v2

    .line 711
    :try_start_4b
    monitor-exit v3
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_4a

    :try_start_4c
    throw v2
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_4d} :catch_34
    .catchall {:try_start_4c .. :try_end_4d} :catchall_32

    :cond_4d
    if-eqz v0, :cond_6c

    .line 723
    :goto_4f
    :try_start_4f
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_52} :catch_6c

    goto :goto_6c

    .line 719
    :goto_53
    :try_start_53
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error in loading historical app exit info from persistent storage: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_69
    .catchall {:try_start_53 .. :try_end_69} :catchall_32

    if-eqz v0, :cond_6c

    goto :goto_4f

    .line 728
    :catch_6c
    :cond_6c
    :goto_6c
    iget-object v2, p0, Lcom/android/server/am/AppExitInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 729
    :try_start_6f
    invoke-virtual {p0}, Lcom/android/server/am/AppExitInfoTracker;->pruneAnrTracesIfNecessaryLocked()V

    .line 730
    iget-object p0, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 731
    monitor-exit v2

    return-void

    :catchall_79
    move-exception p0

    monitor-exit v2
    :try_end_7b
    .catchall {:try_start_6f .. :try_end_7b} :catchall_79

    throw p0

    :goto_7c
    if-eqz v0, :cond_81

    .line 723
    :try_start_7e
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_81
    .catch Ljava/io/IOException; {:try_start_7e .. :try_end_81} :catch_81

    .line 727
    :catch_81
    :cond_81
    throw p0
.end method

.method public final loadPackagesFromProto(Landroid/util/proto/ProtoInputStream;J)V
    .registers 9

    .line 736
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide p2

    .line 737
    const-string v0, ""

    .line 738
    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v1

    :goto_a
    const/4 v2, -0x1

    if-eq v1, v2, :cond_3f

    const/4 v2, 0x1

    if-eq v1, v2, :cond_31

    const/4 v2, 0x2

    if-eq v1, v2, :cond_14

    goto :goto_3a

    .line 746
    :cond_14
    new-instance v1, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;

    iget v2, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoHistoryListSize:I

    invoke-direct {v1, p0, v2}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;-><init>(Lcom/android/server/am/AppExitInfoTracker;I)V

    const-wide v2, 0x20b00000002L

    .line 748
    invoke-virtual {v1, p1, v2, v3}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->readFromProto(Landroid/util/proto/ProtoInputStream;J)I

    move-result v2

    .line 749
    iget-object v3, p0, Lcom/android/server/am/AppExitInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 750
    :try_start_27
    iget-object v4, p0, Lcom/android/server/am/AppExitInfoTracker;->mData:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v4, v0, v2, v1}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 751
    monitor-exit v3

    goto :goto_3a

    :catchall_2e
    move-exception p0

    monitor-exit v3
    :try_end_30
    .catchall {:try_start_27 .. :try_end_30} :catchall_2e

    throw p0

    :cond_31
    const-wide v0, 0x10900000001L

    .line 743
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v0

    .line 740
    :goto_3a
    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v1

    goto :goto_a

    .line 755
    :cond_3f
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoInputStream;->end(J)V

    return-void
.end method

.method public obtainRawRecord(Lcom/android/server/am/ProcessRecord;J)Landroid/app/ApplicationExitInfo;
    .registers 8

    .line 1030
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mRawRecordsPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0}, Landroid/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ApplicationExitInfo;

    if-nez v0, :cond_f

    .line 1032
    new-instance v0, Landroid/app/ApplicationExitInfo;

    invoke-direct {v0}, Landroid/app/ApplicationExitInfo;-><init>()V

    .line 1035
    :cond_f
    iget-object p0, p0, Lcom/android/server/am/AppExitInfoTracker;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    monitor-enter p0

    .line 1036
    :try_start_17
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getHostingRecord()Lcom/android/server/am/HostingRecord;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_29

    .line 1037
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getHostingRecord()Lcom/android/server/am/HostingRecord;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/HostingRecord;->getDefiningUid()I

    move-result v1

    goto :goto_2a

    :catchall_27
    move-exception p1

    goto :goto_9a

    :cond_29
    move v1, v2

    .line 1038
    :goto_2a
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/app/ApplicationExitInfo;->setPid(I)V

    .line 1039
    iget v3, p1, Lcom/android/server/am/psc/ProcessRecordInternal;->uid:I

    invoke-virtual {v0, v3}, Landroid/app/ApplicationExitInfo;->setRealUid(I)V

    .line 1040
    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v3}, Landroid/app/ApplicationExitInfo;->setPackageUid(I)V

    if-lez v1, :cond_40

    goto :goto_44

    .line 1041
    :cond_40
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    :goto_44
    invoke-virtual {v0, v1}, Landroid/app/ApplicationExitInfo;->setDefiningUid(I)V

    .line 1042
    iget-object v1, p1, Lcom/android/server/am/psc/ProcessRecordInternal;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/ApplicationExitInfo;->setProcessName(Ljava/lang/String;)V

    .line 1043
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {v1}, Lcom/android/server/am/psc/ProcessServiceRecordInternal;->getConnectionGroup()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ApplicationExitInfo;->setConnectionGroup(I)V

    .line 1044
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/ApplicationExitInfo;->setPackageName(Ljava/lang/String;)V

    .line 1045
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getProcessPackageNames()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ApplicationExitInfo;->setPackageList([Ljava/lang/String;)V

    .line 1046
    invoke-virtual {v0, v2}, Landroid/app/ApplicationExitInfo;->setReason(I)V

    .line 1047
    invoke-virtual {v0, v2}, Landroid/app/ApplicationExitInfo;->setSubReason(I)V

    .line 1048
    invoke-virtual {v0, v2}, Landroid/app/ApplicationExitInfo;->setStatus(I)V

    .line 1049
    invoke-virtual {p1}, Lcom/android/server/am/psc/ProcessRecordInternal;->getReportedProcState()I

    move-result v1

    invoke-static {v1}, Landroid/app/ActivityManager$RunningAppProcessInfo;->procStateToImportance(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ApplicationExitInfo;->setImportance(I)V

    .line 1050
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessProfileRecord;->getLastPss()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/app/ApplicationExitInfo;->setPss(J)V

    .line 1051
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessProfileRecord;->getLastRss()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/app/ApplicationExitInfo;->setRss(J)V

    .line 1052
    invoke-virtual {v0, p2, p3}, Landroid/app/ApplicationExitInfo;->setTimestamp(J)V

    .line 1053
    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {p1}, Lcom/android/server/am/ProcessServiceRecord;->hasReportedForegroundServices()Z

    move-result p1

    invoke-virtual {v0, p1}, Landroid/app/ApplicationExitInfo;->setHasForegroundServices(Z)V

    .line 1054
    monitor-exit p0
    :try_end_96
    .catchall {:try_start_17 .. :try_end_96} :catchall_27

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return-object v0

    :goto_9a
    :try_start_9a
    monitor-exit p0
    :try_end_9b
    .catchall {:try_start_9a .. :try_end_9b} :catchall_27

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw p1
.end method

.method public onPackageRemoved(Ljava/lang/String;IZ)V
    .registers 7

    if-eqz p1, :cond_38

    .line 640
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 641
    invoke-virtual {v0, p2}, Landroid/content/pm/PackageManagerInternal;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 640
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 642
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v1

    if-eqz v0, :cond_25

    .line 644
    :try_start_13
    iget-object v2, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoSourceZygote:Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;

    invoke-virtual {v2, p2, p3}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;->removeByUidLocked(IZ)V

    .line 645
    iget-object v2, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoSourceLmkd:Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;

    invoke-virtual {v2, p2, p3}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;->removeByUidLocked(IZ)V

    .line 646
    iget-object v2, p0, Lcom/android/server/am/AppExitInfoTracker;->mIsolatedUidRecords:Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;

    invoke-virtual {v2, p2, p3}, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;->removeAppUid(IZ)V

    goto :goto_25

    :catchall_23
    move-exception p0

    goto :goto_36

    :cond_25
    :goto_25
    if-eqz p3, :cond_29

    const/4 p3, -0x1

    goto :goto_2d

    .line 649
    :cond_29
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p3

    .line 648
    :goto_2d
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/server/am/AppExitInfoTracker;->removePackageLocked(Ljava/lang/String;IZI)V

    const/4 p1, 0x1

    .line 650
    invoke-virtual {p0, p1}, Lcom/android/server/am/AppExitInfoTracker;->schedulePersistProcessExitInfo(Z)V

    .line 651
    monitor-exit v1

    return-void

    :goto_36
    monitor-exit v1
    :try_end_37
    .catchall {:try_start_13 .. :try_end_37} :catchall_23

    throw p0

    :cond_38
    return-void
.end method

.method public onSystemReady()V
    .registers 3

    .line 274
    invoke-virtual {p0}, Lcom/android/server/am/AppExitInfoTracker;->registerForUserRemoval()V

    .line 275
    invoke-virtual {p0}, Lcom/android/server/am/AppExitInfoTracker;->registerForPackageRemoval()V

    .line 276
    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda15;

    invoke-direct {v1, p0}, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda15;-><init>(Lcom/android/server/am/AppExitInfoTracker;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onUserRemoved(I)V
    .registers 3

    .line 628
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoSourceZygote:Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;

    invoke-virtual {v0, p1}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;->removeByUserId(I)V

    .line 629
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoSourceLmkd:Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;

    invoke-virtual {v0, p1}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;->removeByUserId(I)V

    .line 630
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mIsolatedUidRecords:Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;

    invoke-virtual {v0, p1}, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;->removeByUserId(I)V

    .line 631
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 632
    :try_start_12
    invoke-virtual {p0, p1}, Lcom/android/server/am/AppExitInfoTracker;->removeByUserIdLocked(I)V

    const/4 p1, 0x1

    .line 633
    invoke-virtual {p0, p1}, Lcom/android/server/am/AppExitInfoTracker;->schedulePersistProcessExitInfo(Z)V

    .line 634
    monitor-exit v0

    return-void

    :catchall_1b
    move-exception p0

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_1b

    throw p0
.end method

.method public final performLogToStatsdLocked(Landroid/app/ApplicationExitInfo;)V
    .registers 12

    .line 922
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->isLoggedInStatsd()Z

    move-result p0

    if-eqz p0, :cond_7

    return-void

    :cond_7
    const/4 p0, 0x1

    .line 925
    invoke-virtual {p1, p0}, Landroid/app/ApplicationExitInfo;->setLoggedInStatsd(Z)V

    .line 926
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getPackageName()Ljava/lang/String;

    move-result-object p0

    .line 927
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getProcessName()Ljava/lang/String;

    move-result-object v0

    .line 928
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1c

    const/4 v0, 0x0

    :cond_1a
    :goto_1a
    move-object v3, v0

    goto :goto_2f

    :cond_1c
    if-eqz v0, :cond_1a

    if-eqz p0, :cond_1a

    .line 931
    invoke-virtual {v0, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 933
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1a

    .line 936
    :goto_2f
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getPackageUid()I

    move-result v2

    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getReason()I

    move-result v4

    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getSubReason()I

    move-result v5

    .line 937
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getImportance()I

    move-result v6

    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getPss()J

    move-result-wide v0

    long-to-int v7, v0

    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getRss()J

    move-result-wide v0

    long-to-int v8, v0

    .line 938
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->hasForegroundServices()Z

    move-result v9

    const/16 v1, 0x175

    .line 935
    invoke-static/range {v1 .. v9}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;IIIIIZ)V

    return-void
.end method

.method public persistProcessExitInfo()V
    .registers 9

    .line 763
    new-instance v0, Landroid/util/AtomicFile;

    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mProcExitInfoFile:Ljava/io/File;

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 765
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    .line 767
    :try_start_c
    invoke-virtual {v0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v4
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_10} :catch_37
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_10} :catch_37

    .line 768
    :try_start_10
    new-instance v5, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v5, v4}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/OutputStream;)V

    const-wide v6, 0x10300000001L

    .line 769
    invoke-virtual {v5, v6, v7, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 770
    iget-object v6, p0, Lcom/android/server/am/AppExitInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_20} :catch_32
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_20} :catch_32

    .line 771
    :try_start_20
    new-instance v7, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda6;

    invoke-direct {v7, v5}, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda6;-><init>(Landroid/util/proto/ProtoOutputStream;)V

    invoke-virtual {p0, v7}, Lcom/android/server/am/AppExitInfoTracker;->forEachPackageLocked(Ljava/util/function/BiFunction;)V

    .line 781
    iput-wide v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mLastAppExitInfoPersistTimestamp:J

    .line 782
    monitor-exit v6
    :try_end_2b
    .catchall {:try_start_20 .. :try_end_2b} :catchall_34

    .line 783
    :try_start_2b
    invoke-virtual {v5}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 784
    invoke-virtual {v0, v4}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_31} :catch_32
    .catch Ljava/lang/RuntimeException; {:try_start_2b .. :try_end_31} :catch_32

    goto :goto_52

    :catch_32
    move-exception v1

    goto :goto_39

    :catchall_34
    move-exception v1

    .line 782
    :try_start_35
    monitor-exit v6
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    :try_start_36
    throw v1
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_37} :catch_32
    .catch Ljava/lang/RuntimeException; {:try_start_36 .. :try_end_37} :catch_32

    :catch_37
    move-exception v1

    move-object v4, v3

    .line 786
    :goto_39
    const-string v2, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to write historical app exit info into persistent storage: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    invoke-virtual {v0, v4}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 789
    :goto_52
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 790
    :try_start_55
    iput-object v3, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoPersistTask:Ljava/lang/Runnable;

    .line 791
    monitor-exit v0

    return-void

    :catchall_59
    move-exception p0

    monitor-exit v0
    :try_end_5b
    .catchall {:try_start_55 .. :try_end_5b} :catchall_59

    throw p0
.end method

.method public final preventExitInfoUpdate(Landroid/app/ApplicationExitInfo;)Z
    .registers 2

    .line 420
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getReason()I

    move-result p0

    const/4 p1, 0x4

    if-eq p0, p1, :cond_f

    const/4 p1, 0x5

    if-eq p0, p1, :cond_f

    const/4 p1, 0x6

    if-eq p0, p1, :cond_f

    const/4 p0, 0x0

    return p0

    :cond_f
    const/4 p0, 0x1

    return p0
.end method

.method public final pruneAnrTracesIfNecessaryLocked()V
    .registers 6

    .line 1194
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 1195
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mProcExitStoreDir:Ljava/io/File;

    new-instance v2, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda7;

    invoke-direct {v2, v0}, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda7;-><init>(Landroid/util/ArraySet;)V

    invoke-virtual {v1, v2}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v1

    .line 1204
    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    goto :goto_44

    .line 1208
    :cond_17
    new-instance v1, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda8;

    invoke-direct {v1, v0}, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda8;-><init>(Landroid/util/ArraySet;)V

    invoke-virtual {p0, v1}, Lcom/android/server/am/AppExitInfoTracker;->forEachPackageLocked(Ljava/util/function/BiFunction;)V

    .line 1222
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mActiveAppTraces:Landroid/util/SparseArray;

    new-instance v2, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda9;

    invoke-direct {v2, v0}, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda9;-><init>(Landroid/util/ArraySet;)V

    invoke-static {v1, v2}, Lcom/android/server/am/AppExitInfoTracker;->forEachSparse2dArray(Landroid/util/SparseArray;Ljava/util/function/Consumer;)V

    .line 1225
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_2f
    if-ltz v1, :cond_44

    .line 1226
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/am/AppExitInfoTracker;->mProcExitStoreDir:Ljava/io/File;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    add-int/lit8 v1, v1, -0x1

    goto :goto_2f

    :cond_44
    :goto_44
    return-void
.end method

.method public recycleRawRecord(Landroid/app/ApplicationExitInfo;)V
    .registers 3

    const/4 v0, 0x0

    .line 1061
    invoke-virtual {p1, v0}, Landroid/app/ApplicationExitInfo;->setProcessName(Ljava/lang/String;)V

    .line 1062
    invoke-virtual {p1, v0}, Landroid/app/ApplicationExitInfo;->setDescription(Ljava/lang/String;)V

    .line 1063
    invoke-virtual {p1, v0}, Landroid/app/ApplicationExitInfo;->setPackageList([Ljava/lang/String;)V

    .line 1065
    iget-object p0, p0, Lcom/android/server/am/AppExitInfoTracker;->mRawRecordsPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {p0, p1}, Landroid/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    return-void
.end method

.method public final registerForPackageRemoval()V
    .registers 5

    .line 669
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 670
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 671
    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 672
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/am/AppExitInfoTracker$2;

    invoke-direct {v2, p0}, Lcom/android/server/am/AppExitInfoTracker$2;-><init>(Lcom/android/server/am/AppExitInfoTracker;)V

    const/4 v3, 0x0

    iget-object p0, p0, Lcom/android/server/am/AppExitInfoTracker;->mKillHandler:Lcom/android/server/am/AppExitInfoTracker$KillHandler;

    invoke-virtual {v1, v2, v0, v3, p0}, Landroid/content/Context;->registerReceiverForAllUsers(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method public final registerForUserRemoval()V
    .registers 5

    .line 656
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 657
    const-string v1, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 658
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/am/AppExitInfoTracker$1;

    invoke-direct {v2, p0}, Lcom/android/server/am/AppExitInfoTracker$1;-><init>(Lcom/android/server/am/AppExitInfoTracker;)V

    const/4 v3, 0x0

    iget-object p0, p0, Lcom/android/server/am/AppExitInfoTracker;->mKillHandler:Lcom/android/server/am/AppExitInfoTracker$KillHandler;

    invoke-virtual {v1, v2, v0, v3, p0}, Landroid/content/Context;->registerReceiverForAllUsers(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method public final removeByUserIdLocked(I)V
    .registers 6

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1a

    .line 1006
    iget-object p1, p0, Lcom/android/server/am/AppExitInfoTracker;->mData:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {p1}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/ArrayMap;->clear()V

    .line 1007
    iget-object p1, p0, Lcom/android/server/am/AppExitInfoTracker;->mActiveAppStateSummary:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    .line 1008
    iget-object p1, p0, Lcom/android/server/am/AppExitInfoTracker;->mActiveAppTraces:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    .line 1009
    invoke-virtual {p0}, Lcom/android/server/am/AppExitInfoTracker;->pruneAnrTracesIfNecessaryLocked()V

    return-void

    .line 1012
    :cond_1a
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mActiveAppStateSummary:Landroid/util/SparseArray;

    new-instance v1, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda1;-><init>(I)V

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v2}, Lcom/android/server/am/AppExitInfoTracker;->removeFromSparse2dArray(Landroid/util/SparseArray;Ljava/util/function/Predicate;Ljava/util/function/Predicate;Ljava/util/function/Consumer;)V

    .line 1014
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mActiveAppTraces:Landroid/util/SparseArray;

    new-instance v1, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1}, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda2;-><init>(I)V

    new-instance v3, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda3;

    invoke-direct {v3}, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda3;-><init>()V

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/am/AppExitInfoTracker;->removeFromSparse2dArray(Landroid/util/SparseArray;Ljava/util/function/Predicate;Ljava/util/function/Predicate;Ljava/util/function/Consumer;)V

    .line 1016
    new-instance v0, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1}, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda4;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/server/am/AppExitInfoTracker;->forEachPackageLocked(Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public final removePackageLocked(Ljava/lang/String;IZI)V
    .registers 7

    if-eqz p3, :cond_30

    .line 969
    iget-object p3, p0, Lcom/android/server/am/AppExitInfoTracker;->mActiveAppStateSummary:Landroid/util/SparseArray;

    invoke-virtual {p3, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 970
    iget-object p3, p0, Lcom/android/server/am/AppExitInfoTracker;->mActiveAppTraces:Landroid/util/SparseArray;

    invoke-virtual {p3, p2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result p2

    if-ltz p2, :cond_30

    .line 972
    iget-object p3, p0, Lcom/android/server/am/AppExitInfoTracker;->mActiveAppTraces:Landroid/util/SparseArray;

    invoke-virtual {p3, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/util/SparseArray;

    .line 973
    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1d
    if-ltz v0, :cond_2b

    .line 974
    invoke-virtual {p3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_1d

    .line 976
    :cond_2b
    iget-object p3, p0, Lcom/android/server/am/AppExitInfoTracker;->mActiveAppTraces:Landroid/util/SparseArray;

    invoke-virtual {p3, p2}, Landroid/util/SparseArray;->removeAt(I)V

    .line 979
    :cond_30
    iget-object p2, p0, Lcom/android/server/am/AppExitInfoTracker;->mData:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {p2}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object p2

    .line 980
    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/util/SparseArray;

    if-nez p3, :cond_3f

    goto :goto_8b

    :cond_3f
    const/4 v0, -0x1

    if-ne p4, v0, :cond_60

    .line 985
    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_48
    if-ltz p2, :cond_56

    .line 986
    invoke-virtual {p3, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;

    invoke-virtual {p4}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->destroyLocked()V

    add-int/lit8 p2, p2, -0x1

    goto :goto_48

    .line 988
    :cond_56
    iget-object p0, p0, Lcom/android/server/am/AppExitInfoTracker;->mData:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {p0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 990
    :cond_60
    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    :goto_66
    if-ltz p0, :cond_82

    .line 991
    invoke-virtual {p3, p0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    if-ne v0, p4, :cond_7f

    .line 992
    invoke-virtual {p3, p0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;

    invoke-virtual {p4}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->destroyLocked()V

    .line 993
    invoke-virtual {p3, p0}, Landroid/util/SparseArray;->removeAt(I)V

    goto :goto_82

    :cond_7f
    add-int/lit8 p0, p0, -0x1

    goto :goto_66

    .line 997
    :cond_82
    :goto_82
    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result p0

    if-nez p0, :cond_8b

    .line 998
    invoke-virtual {p2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8b
    :goto_8b
    return-void
.end method

.method public final scheduleChildProcDied(III)V
    .registers 5

    .line 362
    iget-object p0, p0, Lcom/android/server/am/AppExitInfoTracker;->mKillHandler:Lcom/android/server/am/AppExitInfoTracker$KillHandler;

    const/16 v0, 0x1006

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 363
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public scheduleLogAnrTrace(II[Ljava/lang/String;Ljava/io/File;JJ)V
    .registers 11

    .line 1102
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mKillHandler:Lcom/android/server/am/AppExitInfoTracker$KillHandler;

    move-object v1, p0

    new-instance p0, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda17;

    invoke-direct {p0, v1}, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda17;-><init>(Lcom/android/server/am/AppExitInfoTracker;)V

    .line 1103
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 1104
    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p5

    invoke-static {p7, p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p6

    .line 1102
    invoke-static/range {p0 .. p6}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/HexConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final scheduleLogToStatsdLocked(Landroid/app/ApplicationExitInfo;Z)V
    .registers 5

    .line 908
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->isLoggedInStatsd()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_27

    :cond_7
    const/16 v0, 0x1009

    if-eqz p2, :cond_14

    .line 912
    iget-object p2, p0, Lcom/android/server/am/AppExitInfoTracker;->mKillHandler:Lcom/android/server/am/AppExitInfoTracker$KillHandler;

    invoke-virtual {p2, v0, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 913
    invoke-virtual {p0, p1}, Lcom/android/server/am/AppExitInfoTracker;->performLogToStatsdLocked(Landroid/app/ApplicationExitInfo;)V

    return-void

    .line 914
    :cond_14
    iget-object p2, p0, Lcom/android/server/am/AppExitInfoTracker;->mKillHandler:Lcom/android/server/am/AppExitInfoTracker$KillHandler;

    invoke-virtual {p2, v0, p1}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_27

    .line 915
    iget-object p0, p0, Lcom/android/server/am/AppExitInfoTracker;->mKillHandler:Lcom/android/server/am/AppExitInfoTracker$KillHandler;

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    sget-wide v0, Lcom/android/server/am/AppExitInfoTracker;->APP_EXIT_INFO_STATSD_LOG_DEBOUNCE:J

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_27
    :goto_27
    return-void
.end method

.method public scheduleNoteAppKill(IIIILjava/lang/String;)V
    .registers 7

    .line 324
    iget-object p2, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    if-nez p2, :cond_9

    goto :goto_19

    .line 328
    :cond_9
    iget-object p2, p0, Lcom/android/server/am/AppExitInfoTracker;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p2, p2, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter p2

    .line 329
    :try_start_e
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityManagerService$PidMap;->get(I)Lcom/android/server/am/ProcessRecord;

    move-result-object p1

    .line 330
    monitor-exit p2
    :try_end_17
    .catchall {:try_start_e .. :try_end_17} :catchall_1e

    if-nez p1, :cond_1a

    :goto_19
    return-void

    .line 337
    :cond_1a
    invoke-virtual {p0, p1, p3, p4, p5}, Lcom/android/server/am/AppExitInfoTracker;->scheduleNoteAppKill(Lcom/android/server/am/ProcessRecord;IILjava/lang/String;)V

    return-void

    :catchall_1e
    move-exception p0

    .line 330
    :try_start_1f
    monitor-exit p2
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw p0
.end method

.method public scheduleNoteAppKill(Lcom/android/server/am/ProcessRecord;IILjava/lang/String;)V
    .registers 7

    .line 298
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_2c

    :cond_9
    if-eqz p1, :cond_2c

    .line 301
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-nez v0, :cond_10

    goto :goto_2c

    .line 305
    :cond_10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/am/AppExitInfoTracker;->obtainRawRecord(Lcom/android/server/am/ProcessRecord;J)Landroid/app/ApplicationExitInfo;

    move-result-object p1

    .line 306
    invoke-virtual {p1, p2}, Landroid/app/ApplicationExitInfo;->setReason(I)V

    .line 307
    invoke-virtual {p1, p3}, Landroid/app/ApplicationExitInfo;->setSubReason(I)V

    .line 308
    invoke-virtual {p1, p4}, Landroid/app/ApplicationExitInfo;->setDescription(Ljava/lang/String;)V

    .line 309
    iget-object p0, p0, Lcom/android/server/am/AppExitInfoTracker;->mKillHandler:Lcom/android/server/am/AppExitInfoTracker$KillHandler;

    const/16 p2, 0x1008

    invoke-virtual {p0, p2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_2c
    :goto_2c
    return-void
.end method

.method public scheduleNoteAppRecoverableCrash(Lcom/android/server/am/ProcessRecord;)V
    .registers 4

    .line 313
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_30

    if-eqz p1, :cond_30

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-nez v0, :cond_f

    goto :goto_30

    .line 315
    :cond_f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/am/AppExitInfoTracker;->obtainRawRecord(Lcom/android/server/am/ProcessRecord;J)Landroid/app/ApplicationExitInfo;

    move-result-object p1

    const/4 v0, 0x5

    .line 316
    invoke-virtual {p1, v0}, Landroid/app/ApplicationExitInfo;->setReason(I)V

    const/4 v0, 0x0

    .line 317
    invoke-virtual {p1, v0}, Landroid/app/ApplicationExitInfo;->setSubReason(I)V

    .line 318
    const-string/jumbo v0, "recoverable_crash"

    invoke-virtual {p1, v0}, Landroid/app/ApplicationExitInfo;->setDescription(Ljava/lang/String;)V

    .line 319
    iget-object p0, p0, Lcom/android/server/am/AppExitInfoTracker;->mKillHandler:Lcom/android/server/am/AppExitInfoTracker$KillHandler;

    const/16 v0, 0x100a

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_30
    :goto_30
    return-void
.end method

.method public scheduleNoteLmkdProcKilled(III)V
    .registers 6

    .line 357
    iget-object p0, p0, Lcom/android/server/am/AppExitInfoTracker;->mKillHandler:Lcom/android/server/am/AppExitInfoTracker$KillHandler;

    int-to-long v0, p3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    const/16 v0, 0x1005

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 358
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public scheduleNoteProcessDied(Lcom/android/server/am/ProcessRecord;)V
    .registers 5

    if-eqz p1, :cond_23

    .line 285
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-nez v0, :cond_7

    goto :goto_23

    .line 289
    :cond_7
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_10

    goto :goto_23

    .line 292
    :cond_10
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mKillHandler:Lcom/android/server/am/AppExitInfoTracker$KillHandler;

    .line 293
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/server/am/AppExitInfoTracker;->obtainRawRecord(Lcom/android/server/am/ProcessRecord;J)Landroid/app/ApplicationExitInfo;

    move-result-object p0

    const/16 p1, 0x1007

    .line 292
    invoke-virtual {v0, p1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 293
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_23
    :goto_23
    return-void
.end method

.method public schedulePersistProcessExitInfo(Z)V
    .registers 6

    .line 799
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 800
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoPersistTask:Ljava/lang/Runnable;

    if-eqz v1, :cond_9

    if-eqz p1, :cond_2e

    :cond_9
    if-eqz v1, :cond_17

    .line 802
    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoPersistTask:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_17

    :catchall_15
    move-exception p0

    goto :goto_30

    .line 804
    :cond_17
    :goto_17
    new-instance v1, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/AppExitInfoTracker;)V

    iput-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoPersistTask:Ljava/lang/Runnable;

    .line 805
    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoPersistTask:Ljava/lang/Runnable;

    if-eqz p1, :cond_29

    const-wide/16 v2, 0x0

    goto :goto_2b

    .line 806
    :cond_29
    sget-wide v2, Lcom/android/server/am/AppExitInfoTracker;->APP_EXIT_INFO_PERSIST_INTERVAL:J

    .line 805
    :goto_2b
    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 808
    :cond_2e
    monitor-exit v0

    return-void

    :goto_30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_15

    throw p0
.end method

.method public setProcessStateSummary(II[B)V
    .registers 12

    .line 1073
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1074
    :try_start_3
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mIsolatedUidRecords:Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;

    invoke-virtual {v0, p1}, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;->getUidByIsolatedUid(I)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 1076
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :cond_f
    move v3, p1

    goto :goto_14

    :catchall_11
    move-exception v0

    move-object p0, v0

    goto :goto_23

    .line 1078
    :goto_14
    iget-object v2, p0, Lcom/android/server/am/AppExitInfoTracker;->mActiveAppStateSummary:Landroid/util/SparseArray;

    new-instance v6, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda5;

    invoke-direct {v6}, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda5;-><init>()V

    const/4 v7, 0x0

    move v4, p2

    move-object v5, p3

    invoke-static/range {v2 .. v7}, Lcom/android/server/am/AppExitInfoTracker;->putToSparse2dArray(Landroid/util/SparseArray;IILjava/lang/Object;Ljava/util/function/Supplier;Ljava/util/function/Consumer;)V

    .line 1079
    monitor-exit v1

    return-void

    :goto_23
    monitor-exit v1
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_11

    throw p0
.end method

.method public final updateExistingExitInfoRecordLocked(Landroid/app/ApplicationExitInfo;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Long;)V
    .registers 8

    if-eqz p1, :cond_7d

    .line 490
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/AppExitInfoTracker;->isFresh(J)Z

    move-result v0

    if-nez v0, :cond_e

    goto/16 :goto_7d

    :cond_e
    const/4 v0, 0x1

    if-eqz p2, :cond_5e

    .line 496
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Landroid/system/OsConstants;->WIFEXITED(I)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 497
    invoke-virtual {p1, v0}, Landroid/app/ApplicationExitInfo;->setReason(I)V

    .line 498
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p2}, Landroid/system/OsConstants;->WEXITSTATUS(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/app/ApplicationExitInfo;->setStatus(I)V

    :goto_29
    move p2, v0

    goto :goto_5f

    .line 500
    :cond_2b
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Landroid/system/OsConstants;->WIFSIGNALED(I)Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 501
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getReason()I

    move-result v1

    if-nez v1, :cond_4b

    const/4 v1, 0x2

    .line 502
    invoke-virtual {p1, v1}, Landroid/app/ApplicationExitInfo;->setReason(I)V

    .line 503
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p2}, Landroid/system/OsConstants;->WTERMSIG(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/app/ApplicationExitInfo;->setStatus(I)V

    goto :goto_5e

    .line 504
    :cond_4b
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getReason()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_5e

    .line 505
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p2}, Landroid/system/OsConstants;->WTERMSIG(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/app/ApplicationExitInfo;->setStatus(I)V

    goto :goto_29

    :cond_5e
    :goto_5e
    const/4 p2, 0x0

    :goto_5f
    if-eqz p3, :cond_70

    .line 511
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/app/ApplicationExitInfo;->setReason(I)V

    .line 512
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    const/4 v1, 0x3

    if-ne p3, v1, :cond_70

    goto :goto_71

    :cond_70
    move v0, p2

    :goto_71
    if-eqz p4, :cond_7a

    .line 517
    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Landroid/app/ApplicationExitInfo;->setRss(J)V

    .line 519
    :cond_7a
    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/AppExitInfoTracker;->scheduleLogToStatsdLocked(Landroid/app/ApplicationExitInfo;Z)V

    :cond_7d
    :goto_7d
    return-void
.end method

.method public final updateExitInfoIfNecessaryLocked(IILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Long;)Z
    .registers 14

    .line 530
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mIsolatedUidRecords:Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;

    invoke-virtual {v0, p2}, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;->getUidByIsolatedUid(I)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 532
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p2

    :cond_c
    move v2, p2

    const/4 p2, 0x1

    .line 537
    new-array v4, p2, [Z

    const/4 p2, 0x0

    aput-boolean p2, v4, p2

    .line 538
    new-instance v0, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda16;

    move-object v1, p0

    move v3, p1

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda16;-><init>(Lcom/android/server/am/AppExitInfoTracker;II[ZLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Long;)V

    invoke-virtual {v1, v0}, Lcom/android/server/am/AppExitInfoTracker;->forEachPackageLocked(Ljava/util/function/BiFunction;)V

    .line 563
    iget-object p0, v1, Lcom/android/server/am/AppExitInfoTracker;->mTmpInfoList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 564
    aget-boolean p0, v4, p2

    return p0
.end method
