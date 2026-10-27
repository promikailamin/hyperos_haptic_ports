.class public Lcom/android/server/usage/AppIdleHistory;
.super Ljava/lang/Object;
.source "AppIdleHistory.java"


# static fields
.field static final APP_IDLE_FILENAME:Ljava/lang/String; = "app_idle_stats.xml"


# instance fields
.field public mElapsedDuration:J

.field public mElapsedSnapshot:J

.field public mIdleHistory:Landroid/util/SparseArray;

.field public mScreenOn:Z

.field public mScreenOnDuration:J

.field public mScreenOnSnapshot:J

.field public final mStorageDir:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;J)V
    .registers 5

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/AppIdleHistory;->mIdleHistory:Landroid/util/SparseArray;

    .line 211
    iput-wide p2, p0, Lcom/android/server/usage/AppIdleHistory;->mElapsedSnapshot:J

    .line 212
    iput-wide p2, p0, Lcom/android/server/usage/AppIdleHistory;->mScreenOnSnapshot:J

    .line 213
    iput-object p1, p0, Lcom/android/server/usage/AppIdleHistory;->mStorageDir:Ljava/io/File;

    .line 214
    invoke-virtual {p0}, Lcom/android/server/usage/AppIdleHistory;->readScreenOnTime()V

    return-void
.end method


# virtual methods
.method public clearLastUsedTimestamps(Ljava/lang/String;I)V
    .registers 9

    .line 772
    invoke-virtual {p0, p2}, Lcom/android/server/usage/AppIdleHistory;->getUserHistory(I)Landroid/util/ArrayMap;

    move-result-object v1

    .line 774
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    .line 773
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/usage/AppIdleHistory;->getPackageHistory(Landroid/util/ArrayMap;Ljava/lang/String;JZ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object p0

    if-eqz p0, :cond_1a

    const-wide/32 p1, -0x80000000

    .line 776
    iput-wide p1, p0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedByUserElapsedTime:J

    .line 777
    iput-wide p1, p0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedElapsedTime:J

    .line 778
    iput-wide p1, p0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedScreenTime:J

    :cond_1a
    return-void
.end method

.method public clearUsage(Ljava/lang/String;I)V
    .registers 3

    .line 682
    invoke-virtual {p0, p2}, Lcom/android/server/usage/AppIdleHistory;->getUserHistory(I)Landroid/util/ArrayMap;

    move-result-object p0

    .line 683
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final dumpBucketExpiryTimes(Landroid/util/IndentingPrintWriter;Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;J)V
    .registers 10

    .line 1105
    const-string p0, " expiryTimes="

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1106
    iget-object p0, p2, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketExpiryTimesMs:Landroid/util/SparseLongArray;

    if-eqz p0, :cond_53

    .line 1107
    invoke-virtual {p0}, Landroid/util/SparseLongArray;->size()I

    move-result p0

    if-nez p0, :cond_10

    goto :goto_53

    .line 1111
    :cond_10
    const-string p0, "("

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1112
    iget-object p0, p2, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketExpiryTimesMs:Landroid/util/SparseLongArray;

    invoke-virtual {p0}, Landroid/util/SparseLongArray;->size()I

    move-result p0

    const/4 v0, 0x0

    :goto_1c
    if-ge v0, p0, :cond_4d

    .line 1114
    iget-object v1, p2, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketExpiryTimesMs:Landroid/util/SparseLongArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseLongArray;->keyAt(I)I

    move-result v1

    .line 1115
    iget-object v2, p2, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketExpiryTimesMs:Landroid/util/SparseLongArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v2

    if-eqz v0, :cond_31

    .line 1117
    const-string v4, ","

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1119
    :cond_31
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    sub-long v1, p3, v2

    .line 1120
    invoke-static {v1, v2, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    .line 1122
    :cond_4d
    const-string p0, ")"

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    return-void

    .line 1108
    :cond_53
    :goto_53
    const-string p0, "<none>"

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    return-void
.end method

.method public final dumpUser(Landroid/util/IndentingPrintWriter;ILjava/util/List;)V
    .registers 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v6, p2

    .line 1035
    const-string v2, "User "

    invoke-virtual {v1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1036
    invoke-virtual/range {p1 .. p2}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 1037
    const-string v2, " App Standby States:"

    invoke-virtual {v1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1038
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1039
    iget-object v2, v0, Lcom/android/server/usage/AppIdleHistory;->mIdleHistory:Landroid/util/SparseArray;

    invoke-virtual {v2, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/util/ArrayMap;

    .line 1040
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 1041
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    .line 1042
    invoke-virtual {v0, v10, v11}, Lcom/android/server/usage/AppIdleHistory;->getElapsedTime(J)J

    move-result-wide v2

    .line 1043
    invoke-virtual {v0, v10, v11}, Lcom/android/server/usage/AppIdleHistory;->getScreenOnTime(J)J

    if-nez v7, :cond_31

    return-void

    .line 1045
    :cond_31
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v12

    const/4 v4, 0x0

    move v13, v4

    :goto_37
    if-ge v13, v12, :cond_162

    .line 1047
    invoke-virtual {v7, v13}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    move-object v14, v4

    check-cast v14, Ljava/lang/String;

    .line 1048
    invoke-virtual {v7, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    move-object v15, v4

    check-cast v15, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    .line 1049
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/jobs/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v4

    if-nez v4, :cond_57

    move-object/from16 v4, p3

    invoke-interface {v4, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_59

    goto/16 :goto_15e

    :cond_57
    move-object/from16 v4, p3

    .line 1052
    :cond_59
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "package="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1053
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " u="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1054
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " bucket="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v15, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " reason="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v15, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I

    .line 1056
    invoke-static {v5}, Landroid/app/usage/UsageStatsManager;->reasonToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1054
    invoke-virtual {v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1057
    const-string v0, " used="

    invoke-virtual {v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1058
    iget-wide v4, v15, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedElapsedTime:J

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/usage/AppIdleHistory;->printLastActionElapsedTime(Landroid/util/IndentingPrintWriter;JJ)V

    .line 1059
    const-string v0, " usedByUser="

    invoke-virtual {v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1060
    iget-wide v4, v15, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedByUserElapsedTime:J

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/usage/AppIdleHistory;->printLastActionElapsedTime(Landroid/util/IndentingPrintWriter;JJ)V

    .line 1062
    const-string v0, " usedScr="

    invoke-virtual {v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1063
    iget-wide v4, v15, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedScreenTime:J

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/usage/AppIdleHistory;->printLastActionElapsedTime(Landroid/util/IndentingPrintWriter;JJ)V

    .line 1064
    const-string v0, " lastPred="

    invoke-virtual {v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1065
    iget-wide v4, v15, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastPredictedTime:J

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/usage/AppIdleHistory;->printLastActionElapsedTime(Landroid/util/IndentingPrintWriter;JJ)V

    .line 1066
    invoke-virtual {v0, v1, v15, v2, v3}, Lcom/android/server/usage/AppIdleHistory;->dumpBucketExpiryTimes(Landroid/util/IndentingPrintWriter;Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;J)V

    .line 1067
    const-string v4, " lastJob="

    invoke-virtual {v1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1068
    iget-wide v4, v15, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastJobRunTime:J

    sub-long v4, v2, v4

    invoke-static {v4, v5, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1069
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " lastInformedBucket="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v15, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastInformedBucket:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1070
    iget-wide v4, v15, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastRestrictAttemptElapsedTime:J

    const-wide/16 v16, 0x0

    cmp-long v4, v4, v16

    if-lez v4, :cond_129

    .line 1071
    const-string v4, " lastRestrictAttempt="

    invoke-virtual {v1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1072
    iget-wide v4, v15, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastRestrictAttemptElapsedTime:J

    sub-long v4, v2, v4

    invoke-static {v4, v5, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1074
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " lastRestrictReason="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v15, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastRestrictReason:I

    .line 1075
    invoke-static {v5}, Landroid/app/usage/UsageStatsManager;->reasonToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1074
    invoke-virtual {v1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1077
    :cond_129
    iget-wide v4, v15, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->nextEstimatedLaunchTime:J

    cmp-long v4, v4, v16

    if-lez v4, :cond_13a

    .line 1078
    const-string v4, " nextEstimatedLaunchTime="

    invoke-virtual {v1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1079
    iget-wide v4, v15, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->nextEstimatedLaunchTime:J

    sub-long/2addr v4, v8

    invoke-static {v4, v5, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1081
    :cond_13a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " idle="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14, v6, v10, v11}, Lcom/android/server/usage/AppIdleHistory;->isIdle(Ljava/lang/String;IJ)Z

    move-result v5

    if-eqz v5, :cond_14e

    const-string/jumbo v5, "y"

    goto :goto_151

    :cond_14e
    const-string/jumbo v5, "n"

    :goto_151
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1082
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->println()V

    :goto_15e
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_37

    .line 1084
    :cond_162
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1085
    const-string/jumbo v2, "totalElapsedTime="

    invoke-virtual {v1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1086
    invoke-virtual {v0, v10, v11}, Lcom/android/server/usage/AppIdleHistory;->getElapsedTime(J)J

    move-result-wide v2

    invoke-static {v2, v3, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1087
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1088
    const-string/jumbo v2, "totalScreenOnTime="

    invoke-virtual {v1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1089
    invoke-virtual {v0, v10, v11}, Lcom/android/server/usage/AppIdleHistory;->getScreenOnTime(J)J

    move-result-wide v2

    invoke-static {v2, v3, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1090
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1091
    invoke-virtual {v1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void
.end method

.method public dumpUsers(Landroid/util/IndentingPrintWriter;[ILjava/util/List;)V
    .registers 7

    .line 1027
    array-length v0, p2

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_f

    .line 1029
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1030
    aget v2, p2, v1

    invoke-virtual {p0, p1, v2, p3}, Lcom/android/server/usage/AppIdleHistory;->dumpUser(Landroid/util/IndentingPrintWriter;ILjava/util/List;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_f
    return-void
.end method

.method public getAppStandbyBucket(Ljava/lang/String;IJ)I
    .registers 11

    .line 616
    invoke-virtual {p0, p2}, Lcom/android/server/usage/AppIdleHistory;->getUserHistory(I)Landroid/util/ArrayMap;

    move-result-object v1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-wide v3, p3

    .line 618
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/usage/AppIdleHistory;->getPackageHistory(Landroid/util/ArrayMap;Ljava/lang/String;JZ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object p0

    if-nez p0, :cond_11

    const/16 p0, 0x32

    return p0

    .line 619
    :cond_11
    iget p0, p0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    return p0
.end method

.method public getAppStandbyBucketAndReason(Ljava/lang/String;IJ)J
    .registers 11

    .line 624
    invoke-virtual {p0, p2}, Lcom/android/server/usage/AppIdleHistory;->getUserHistory(I)Landroid/util/ArrayMap;

    move-result-object v1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-wide v3, p3

    .line 626
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/usage/AppIdleHistory;->getPackageHistory(Landroid/util/ArrayMap;Ljava/lang/String;JZ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object p0

    if-nez p0, :cond_17

    const/16 p0, 0x32

    const/16 p1, 0x100

    .line 628
    invoke-static {p0, p1}, Lcom/android/internal/util/IntPair;->of(II)J

    move-result-wide p0

    return-wide p0

    .line 629
    :cond_17
    iget p1, p0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    iget p0, p0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I

    invoke-static {p1, p0}, Lcom/android/internal/util/IntPair;->of(II)J

    move-result-wide p0

    return-wide p0
.end method

.method public getAppStandbyBuckets(IZ)Ljava/util/ArrayList;
    .registers 8

    .line 633
    invoke-virtual {p0, p1}, Lcom/android/server/usage/AppIdleHistory;->getUserHistory(I)Landroid/util/ArrayMap;

    move-result-object p0

    .line 634
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result p1

    .line 635
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_e
    if-ge v1, p1, :cond_2e

    .line 637
    new-instance v2, Landroid/app/usage/AppStandbyInfo;

    invoke-virtual {p0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz p2, :cond_23

    .line 638
    invoke-virtual {p0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    iget v4, v4, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    goto :goto_25

    :cond_23
    const/16 v4, 0xa

    :goto_25
    invoke-direct {v2, v3, v4}, Landroid/app/usage/AppStandbyInfo;-><init>(Ljava/lang/String;I)V

    .line 637
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_2e
    return-object v0
.end method

.method public getAppStandbyReason(Ljava/lang/String;IJ)I
    .registers 11

    .line 644
    invoke-virtual {p0, p2}, Lcom/android/server/usage/AppIdleHistory;->getUserHistory(I)Landroid/util/ArrayMap;

    move-result-object v1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-wide v3, p3

    .line 646
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/usage/AppIdleHistory;->getPackageHistory(Landroid/util/ArrayMap;Ljava/lang/String;JZ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object p0

    if-eqz p0, :cond_11

    .line 647
    iget p0, p0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I

    return p0

    :cond_11
    const/4 p0, 0x0

    return p0
.end method

.method public getAppUsageHistory(Ljava/lang/String;IJ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    .registers 11

    .line 479
    invoke-virtual {p0, p2}, Lcom/android/server/usage/AppIdleHistory;->getUserHistory(I)Landroid/util/ArrayMap;

    move-result-object v1

    const/4 v5, 0x1

    move-object v0, p0

    move-object v2, p1

    move-wide v3, p3

    .line 481
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/usage/AppIdleHistory;->getPackageHistory(Landroid/util/ArrayMap;Ljava/lang/String;JZ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object p0

    return-object p0
.end method

.method public getBucketExpiryTimeMs(Ljava/lang/String;IIJ)J
    .registers 12

    .line 753
    invoke-virtual {p0, p2}, Lcom/android/server/usage/AppIdleHistory;->getUserHistory(I)Landroid/util/ArrayMap;

    move-result-object v1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-wide v3, p4

    .line 754
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/usage/AppIdleHistory;->getPackageHistory(Landroid/util/ArrayMap;Ljava/lang/String;JZ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object p0

    const-wide/16 p1, 0x0

    if-eqz p0, :cond_1a

    .line 756
    iget-object p0, p0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketExpiryTimesMs:Landroid/util/SparseLongArray;

    if-nez p0, :cond_15

    goto :goto_1a

    .line 759
    :cond_15
    invoke-virtual {p0, p3, p1, p2}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide p0

    return-wide p0

    :cond_1a
    :goto_1a
    return-wide p1
.end method

.method public getElapsedTime(J)J
    .registers 5

    .line 651
    iget-wide v0, p0, Lcom/android/server/usage/AppIdleHistory;->mElapsedSnapshot:J

    sub-long/2addr p1, v0

    iget-wide v0, p0, Lcom/android/server/usage/AppIdleHistory;->mElapsedDuration:J

    add-long/2addr p1, v0

    return-wide p1
.end method

.method public getEstimatedLaunchTime(Ljava/lang/String;IJ)J
    .registers 11

    .line 573
    invoke-virtual {p0, p2}, Lcom/android/server/usage/AppIdleHistory;->getUserHistory(I)Landroid/util/ArrayMap;

    move-result-object v1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-wide v3, p3

    .line 575
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/usage/AppIdleHistory;->getPackageHistory(Landroid/util/ArrayMap;Ljava/lang/String;JZ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object p0

    if-eqz p0, :cond_1c

    .line 577
    iget-wide p1, p0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->nextEstimatedLaunchTime:J

    .line 578
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    cmp-long p1, p1, p3

    if-gez p1, :cond_19

    goto :goto_1c

    .line 581
    :cond_19
    iget-wide p0, p0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->nextEstimatedLaunchTime:J

    return-wide p0

    :cond_1c
    :goto_1c
    const-wide p0, 0x7fffffffffffffffL

    return-wide p0
.end method

.method public final getIntValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I
    .registers 4

    const/4 p0, 0x0

    .line 931
    invoke-interface {p1, p0, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_8

    return p3

    .line 933
    :cond_8
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final getLongValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J
    .registers 5

    const/4 p0, 0x0

    .line 925
    invoke-interface {p1, p0, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_8

    return-wide p3

    .line 927
    :cond_8
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method public final getPackageHistory(Landroid/util/ArrayMap;Ljava/lang/String;JZ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    .registers 6

    .line 450
    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    if-nez p0, :cond_2c

    if-eqz p5, :cond_2c

    .line 452
    new-instance p0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    invoke-direct {p0}, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;-><init>()V

    const-wide/32 p3, -0x80000000

    .line 453
    iput-wide p3, p0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedByUserElapsedTime:J

    .line 454
    iput-wide p3, p0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedElapsedTime:J

    .line 455
    iput-wide p3, p0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedScreenTime:J

    .line 456
    iput-wide p3, p0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastPredictedTime:J

    const/16 p3, 0x32

    .line 457
    iput p3, p0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    const/16 p3, 0x100

    .line 458
    iput p3, p0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I

    const/4 p3, -0x1

    .line 459
    iput p3, p0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastInformedBucket:I

    const-wide/high16 p3, -0x8000000000000000L

    .line 460
    iput-wide p3, p0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastJobRunTime:J

    .line 461
    invoke-virtual {p1, p2, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2c
    return-object p0
.end method

.method public final getRestoreToRareAppsListFile(I)Ljava/io/File;
    .registers 3

    .line 286
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/android/server/usage/AppIdleHistory;->getUserDirectory(I)Ljava/io/File;

    move-result-object p0

    const-string/jumbo p1, "restore_to_rare_apps_list"

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getScreenOnTime(J)J
    .registers 7

    .line 234
    iget-wide v0, p0, Lcom/android/server/usage/AppIdleHistory;->mScreenOnDuration:J

    .line 235
    iget-boolean v2, p0, Lcom/android/server/usage/AppIdleHistory;->mScreenOn:Z

    if-eqz v2, :cond_a

    .line 236
    iget-wide v2, p0, Lcom/android/server/usage/AppIdleHistory;->mScreenOnSnapshot:J

    sub-long/2addr p1, v2

    add-long/2addr v0, p1

    :cond_a
    return-wide v0
.end method

.method public getScreenOnTimeFile()Ljava/io/File;
    .registers 3

    .line 243
    new-instance v0, Ljava/io/File;

    iget-object p0, p0, Lcom/android/server/usage/AppIdleHistory;->mStorageDir:Ljava/io/File;

    const-string/jumbo v1, "screen_on_time"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getThresholdIndex(Ljava/lang/String;IJ[J[J)I
    .registers 13

    .line 712
    invoke-virtual {p0, p2}, Lcom/android/server/usage/AppIdleHistory;->getUserHistory(I)Landroid/util/ArrayMap;

    move-result-object v1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-wide v3, p3

    .line 713
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/usage/AppIdleHistory;->getPackageHistory(Landroid/util/ArrayMap;Ljava/lang/String;JZ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object p0

    if-eqz p0, :cond_32

    .line 716
    iget-wide p1, p0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedElapsedTime:J

    const-wide/16 p3, 0x0

    cmp-long p1, p1, p3

    if-gez p1, :cond_17

    goto :goto_32

    .line 720
    :cond_17
    invoke-virtual {v0, v3, v4}, Lcom/android/server/usage/AppIdleHistory;->getScreenOnTime(J)J

    .line 721
    invoke-virtual {v0, v3, v4}, Lcom/android/server/usage/AppIdleHistory;->getElapsedTime(J)J

    move-result-wide p1

    iget-wide p3, p0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedElapsedTime:J

    sub-long/2addr p1, p3

    .line 728
    array-length p0, p5

    add-int/lit8 p0, p0, -0x1

    :goto_24
    if-ltz p0, :cond_30

    .line 729
    aget-wide p3, p6, p0

    cmp-long p3, p1, p3

    if-ltz p3, :cond_2d

    return p0

    :cond_2d
    add-int/lit8 p0, p0, -0x1

    goto :goto_24

    :cond_30
    const/4 p0, 0x0

    return p0

    :cond_32
    :goto_32
    const/4 p0, -0x1

    return p0
.end method

.method public getTimeSinceLastJobRun(Ljava/lang/String;IJ)J
    .registers 11

    .line 594
    invoke-virtual {p0, p2}, Lcom/android/server/usage/AppIdleHistory;->getUserHistory(I)Landroid/util/ArrayMap;

    move-result-object v1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-wide v3, p3

    .line 596
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/usage/AppIdleHistory;->getPackageHistory(Landroid/util/ArrayMap;Ljava/lang/String;JZ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object p0

    if-eqz p0, :cond_1f

    .line 598
    iget-wide p1, p0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastJobRunTime:J

    const-wide/high16 p3, -0x8000000000000000L

    cmp-long p1, p1, p3

    if-nez p1, :cond_17

    goto :goto_1f

    .line 601
    :cond_17
    invoke-virtual {v0, v3, v4}, Lcom/android/server/usage/AppIdleHistory;->getElapsedTime(J)J

    move-result-wide p1

    iget-wide p3, p0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastJobRunTime:J

    sub-long/2addr p1, p3

    return-wide p1

    :cond_1f
    :goto_1f
    const-wide p0, 0x7fffffffffffffffL

    return-wide p0
.end method

.method public getTimeSinceLastUsedByUser(Ljava/lang/String;IJ)J
    .registers 11

    .line 605
    invoke-virtual {p0, p2}, Lcom/android/server/usage/AppIdleHistory;->getUserHistory(I)Landroid/util/ArrayMap;

    move-result-object v1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-wide v3, p3

    .line 607
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/usage/AppIdleHistory;->getPackageHistory(Landroid/util/ArrayMap;Ljava/lang/String;JZ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object p0

    if-eqz p0, :cond_25

    .line 608
    iget-wide p1, p0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedByUserElapsedTime:J

    const-wide/high16 p3, -0x8000000000000000L

    cmp-long p3, p1, p3

    if-eqz p3, :cond_25

    const-wide/16 p3, 0x0

    cmp-long p1, p1, p3

    if-gtz p1, :cond_1d

    goto :goto_25

    .line 612
    :cond_1d
    invoke-virtual {v0, v3, v4}, Lcom/android/server/usage/AppIdleHistory;->getElapsedTime(J)J

    move-result-wide p1

    iget-wide p3, p0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedByUserElapsedTime:J

    sub-long/2addr p1, p3

    return-wide p1

    :cond_25
    :goto_25
    const-wide p0, 0x7fffffffffffffffL

    return-wide p0
.end method

.method public final getUserDirectory(I)Ljava/io/File;
    .registers 5

    .line 763
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    iget-object p0, p0, Lcom/android/server/usage/AppIdleHistory;->mStorageDir:Ljava/io/File;

    const-string/jumbo v2, "users"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getUserFile(I)Ljava/io/File;
    .registers 3

    .line 768
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/android/server/usage/AppIdleHistory;->getUserDirectory(I)Ljava/io/File;

    move-result-object p0

    const-string p1, "app_idle_stats.xml"

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getUserHistory(I)Landroid/util/ArrayMap;
    .registers 4

    .line 438
    iget-object v0, p0, Lcom/android/server/usage/AppIdleHistory;->mIdleHistory:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    if-nez v0, :cond_17

    .line 440
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 441
    iget-object v1, p0, Lcom/android/server/usage/AppIdleHistory;->mIdleHistory:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 442
    invoke-virtual {p0, p1, v0}, Lcom/android/server/usage/AppIdleHistory;->readAppIdleTimes(ILandroid/util/ArrayMap;)V

    :cond_17
    return-object v0
.end method

.method public final insertBucketExpiryTime(Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;IJ)V
    .registers 7

    const-wide/16 v0, 0x0

    cmp-long p0, p3, v0

    if-nez p0, :cond_7

    return-void

    .line 918
    :cond_7
    iget-object p0, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketExpiryTimesMs:Landroid/util/SparseLongArray;

    if-nez p0, :cond_12

    .line 919
    new-instance p0, Landroid/util/SparseLongArray;

    invoke-direct {p0}, Landroid/util/SparseLongArray;-><init>()V

    iput-object p0, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketExpiryTimesMs:Landroid/util/SparseLongArray;

    .line 921
    :cond_12
    iget-object p0, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketExpiryTimesMs:Landroid/util/SparseLongArray;

    invoke-virtual {p0, p2, p3, p4}, Landroid/util/SparseLongArray;->put(IJ)V

    return-void
.end method

.method public isIdle(Ljava/lang/String;IJ)Z
    .registers 11

    .line 471
    invoke-virtual {p0, p2}, Lcom/android/server/usage/AppIdleHistory;->getUserHistory(I)Landroid/util/ArrayMap;

    move-result-object v1

    const/4 v5, 0x1

    move-object v0, p0

    move-object v2, p1

    move-wide v3, p3

    .line 473
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/usage/AppIdleHistory;->getPackageHistory(Landroid/util/ArrayMap;Ljava/lang/String;JZ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object p0

    .line 474
    iget p0, p0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    const/16 p1, 0x28

    if-lt p0, p1, :cond_14

    const/4 p0, 0x1

    return p0

    :cond_14
    const/4 p0, 0x0

    return p0
.end method

.method public final logAppStandbyBucketChanged(Ljava/lang/String;III)V
    .registers 11

    const p0, 0xff00

    and-int v4, p4, p0

    and-int/lit16 v5, p4, 0xff

    const/16 v0, 0x102

    move-object v1, p1

    move v2, p2

    move v3, p3

    .line 741
    invoke-static/range {v0 .. v5}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILjava/lang/String;IIII)V

    return-void
.end method

.method public noteRestrictionAttempt(Ljava/lang/String;IJI)V
    .registers 12

    .line 560
    invoke-virtual {p0, p2}, Lcom/android/server/usage/AppIdleHistory;->getUserHistory(I)Landroid/util/ArrayMap;

    move-result-object v1

    const/4 v5, 0x1

    move-object v0, p0

    move-object v2, p1

    move-wide v3, p3

    .line 562
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/usage/AppIdleHistory;->getPackageHistory(Landroid/util/ArrayMap;Ljava/lang/String;JZ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object p0

    .line 563
    invoke-virtual {v0, v3, v4}, Lcom/android/server/usage/AppIdleHistory;->getElapsedTime(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastRestrictAttemptElapsedTime:J

    .line 564
    iput p5, p0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastRestrictReason:I

    return-void
.end method

.method public onUserRemoved(I)V
    .registers 2

    .line 467
    iget-object p0, p0, Lcom/android/server/usage/AppIdleHistory;->mIdleHistory:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method public final printLastActionElapsedTime(Landroid/util/IndentingPrintWriter;JJ)V
    .registers 8

    const-wide/16 v0, 0x0

    cmp-long p0, p4, v0

    if-gez p0, :cond_c

    .line 1097
    const-string p0, "<uninitialized>"

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    return-void

    :cond_c
    sub-long/2addr p2, p4

    .line 1099
    invoke-static {p2, p3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    return-void
.end method

.method public final readAppIdleTimes(ILandroid/util/ArrayMap;)V
    .registers 20

    move-object/from16 v1, p0

    move/from16 v2, p1

    .line 792
    const-string v3, "Unable to read app idle file for user "

    const-string v4, "AppIdleHistory"

    const/4 v5, 0x0

    .line 794
    :try_start_9
    new-instance v0, Landroid/util/AtomicFile;

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/usage/AppIdleHistory;->getUserFile(I)Ljava/io/File;

    move-result-object v6

    invoke-direct {v0, v6}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 795
    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v6
    :try_end_16
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_16} :catch_18d
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_16} :catch_18a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_16} :catch_18a
    .catchall {:try_start_9 .. :try_end_16} :catchall_187

    .line 796
    :try_start_16
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v7

    .line 797
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v6, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 800
    :goto_23
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0
    :try_end_27
    .catch Ljava/io/FileNotFoundException; {:try_start_16 .. :try_end_27} :catch_173
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_27} :catch_16e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_16 .. :try_end_27} :catch_16e
    .catchall {:try_start_16 .. :try_end_27} :catchall_169

    const/4 v8, 0x1

    const/4 v9, 0x2

    if-eq v0, v9, :cond_2e

    if-eq v0, v8, :cond_2e

    goto :goto_23

    :cond_2e
    if-eq v0, v9, :cond_51

    .line 806
    :try_start_30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_42
    .catch Ljava/io/FileNotFoundException; {:try_start_30 .. :try_end_42} :catch_4e
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_42} :catch_4a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_30 .. :try_end_42} :catch_4a
    .catchall {:try_start_30 .. :try_end_42} :catchall_46

    .line 893
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-void

    :catchall_46
    move-exception v0

    move-object v5, v6

    goto/16 :goto_1c2

    :catch_4a
    move-exception v0

    move-object v5, v6

    goto/16 :goto_18f

    :catch_4e
    move-object v5, v6

    goto/16 :goto_1a7

    .line 809
    :cond_51
    :try_start_51
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v10, "packages"

    invoke-virtual {v0, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_5c
    .catch Ljava/io/FileNotFoundException; {:try_start_51 .. :try_end_5c} :catch_173
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_5c} :catch_16e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_51 .. :try_end_5c} :catch_16e
    .catchall {:try_start_51 .. :try_end_5c} :catchall_169

    if-nez v0, :cond_62

    .line 893
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-void

    .line 812
    :cond_62
    :try_start_62
    const-string/jumbo v0, "version"

    const/4 v10, 0x0

    invoke-virtual {v1, v7, v0, v10}, Lcom/android/server/usage/AppIdleHistory;->getIntValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v10

    .line 813
    :cond_6a
    :goto_6a
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    if-eq v0, v8, :cond_181

    if-ne v0, v9, :cond_6a

    .line 815
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 816
    const-string/jumbo v11, "package"

    invoke-virtual {v0, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_177

    .line 817
    const-string/jumbo v0, "name"

    invoke-interface {v7, v5, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 818
    new-instance v12, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    invoke-direct {v12}, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;-><init>()V

    .line 819
    const-string v0, "elapsedIdleTime"

    .line 820
    invoke-interface {v7, v5, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    iput-wide v13, v12, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedElapsedTime:J

    .line 821
    const-string v0, "lastUsedByUserElapsedTime"

    invoke-virtual {v1, v7, v0, v13, v14}, Lcom/android/server/usage/AppIdleHistory;->getLongValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v13

    iput-wide v13, v12, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedByUserElapsedTime:J

    .line 824
    const-string/jumbo v0, "screenIdleTime"

    .line 825
    invoke-interface {v7, v5, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    iput-wide v13, v12, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedScreenTime:J

    .line 826
    const-string v0, "lastPredictedTime"

    const-wide/16 v13, 0x0

    invoke-virtual {v1, v7, v0, v13, v14}, Lcom/android/server/usage/AppIdleHistory;->getLongValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v8

    iput-wide v8, v12, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastPredictedTime:J

    .line 828
    const-string v0, "appLimitBucket"

    invoke-interface {v7, v5, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_c1

    const/16 v0, 0xa

    goto :goto_c5

    .line 832
    :cond_c1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :goto_c5
    iput v0, v12, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    .line 833
    const-string v0, "bucketReason"

    .line 834
    invoke-interface {v7, v5, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 835
    const-string v9, "lastJobRunTime"
    :try_end_cf
    .catch Ljava/io/FileNotFoundException; {:try_start_62 .. :try_end_cf} :catch_173
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_cf} :catch_16e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_62 .. :try_end_cf} :catch_16e
    .catchall {:try_start_62 .. :try_end_cf} :catchall_169

    move-object/from16 v16, v6

    const-wide/high16 v5, -0x8000000000000000L

    :try_start_d3
    invoke-virtual {v1, v7, v9, v5, v6}, Lcom/android/server/usage/AppIdleHistory;->getLongValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v5

    iput-wide v5, v12, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastJobRunTime:J

    const/16 v5, 0x100

    .line 837
    iput v5, v12, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I
    :try_end_dd
    .catch Ljava/io/FileNotFoundException; {:try_start_d3 .. :try_end_dd} :catch_f2
    .catch Ljava/io/IOException; {:try_start_d3 .. :try_end_dd} :catch_ed
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_d3 .. :try_end_dd} :catch_ed
    .catchall {:try_start_d3 .. :try_end_dd} :catchall_e8

    const/16 v5, 0x10

    if-eqz v0, :cond_fc

    .line 841
    :try_start_e1
    invoke-static {v0, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v12, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I
    :try_end_e7
    .catch Ljava/lang/NumberFormatException; {:try_start_e1 .. :try_end_e7} :catch_f6
    .catch Ljava/io/FileNotFoundException; {:try_start_e1 .. :try_end_e7} :catch_f2
    .catch Ljava/io/IOException; {:try_start_e1 .. :try_end_e7} :catch_ed
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_e1 .. :try_end_e7} :catch_ed
    .catchall {:try_start_e1 .. :try_end_e7} :catchall_e8

    goto :goto_fc

    :catchall_e8
    move-exception v0

    :goto_e9
    move-object/from16 v5, v16

    goto/16 :goto_1c2

    :catch_ed
    move-exception v0

    :goto_ee
    move-object/from16 v5, v16

    goto/16 :goto_18f

    :catch_f2
    :goto_f2
    move-object/from16 v5, v16

    goto/16 :goto_1a7

    :catch_f6
    move-exception v0

    .line 843
    :try_start_f7
    const-string v6, "Unable to read bucketing reason"

    invoke-static {v4, v6, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 846
    :cond_fc
    :goto_fc
    const-string v0, "lastRestrictionAttemptElapsedTime"

    .line 847
    invoke-virtual {v1, v7, v0, v13, v14}, Lcom/android/server/usage/AppIdleHistory;->getLongValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v8

    iput-wide v8, v12, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastRestrictAttemptElapsedTime:J

    .line 848
    const-string v0, "lastRestrictionAttemptReason"

    const/4 v8, 0x0

    invoke-interface {v7, v8, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_10b
    .catch Ljava/io/FileNotFoundException; {:try_start_f7 .. :try_end_10b} :catch_f2
    .catch Ljava/io/IOException; {:try_start_f7 .. :try_end_10b} :catch_ed
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_f7 .. :try_end_10b} :catch_ed
    .catchall {:try_start_f7 .. :try_end_10b} :catchall_e8

    if-eqz v0, :cond_11a

    .line 853
    :try_start_10d
    invoke-static {v0, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v12, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastRestrictReason:I
    :try_end_113
    .catch Ljava/lang/NumberFormatException; {:try_start_10d .. :try_end_113} :catch_114
    .catch Ljava/io/FileNotFoundException; {:try_start_10d .. :try_end_113} :catch_f2
    .catch Ljava/io/IOException; {:try_start_10d .. :try_end_113} :catch_ed
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_10d .. :try_end_113} :catch_ed
    .catchall {:try_start_10d .. :try_end_113} :catchall_e8

    goto :goto_11a

    :catch_114
    move-exception v0

    .line 855
    :try_start_115
    const-string v5, "Unable to read last restrict reason"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 858
    :cond_11a
    :goto_11a
    const-string/jumbo v0, "nextEstimatedAppLaunchTime"

    invoke-virtual {v1, v7, v0, v13, v14}, Lcom/android/server/usage/AppIdleHistory;->getLongValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v8

    iput-wide v8, v12, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->nextEstimatedLaunchTime:J

    .line 862
    iget v0, v12, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    iput v0, v12, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastInformedBucket:I

    move-object/from16 v5, p2

    .line 863
    invoke-virtual {v5, v11, v12}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v15, 0x1

    if-lt v10, v15, :cond_149

    .line 866
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 867
    :cond_133
    :goto_133
    invoke-static {v7, v0}, Lcom/android/internal/util/jobs/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v6

    if-eqz v6, :cond_17a

    .line 868
    const-string v6, "expiryTimes"

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_133

    .line 869
    invoke-virtual {v1, v7, v12}, Lcom/android/server/usage/AppIdleHistory;->readBucketExpiryTimes(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;)V

    goto :goto_133

    .line 873
    :cond_149
    const-string v0, "activeTimeoutTime"

    invoke-virtual {v1, v7, v0, v13, v14}, Lcom/android/server/usage/AppIdleHistory;->getLongValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v8

    .line 875
    const-string/jumbo v0, "workingSetTimeoutTime"

    invoke-virtual {v1, v7, v0, v13, v14}, Lcom/android/server/usage/AppIdleHistory;->getLongValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v5

    cmp-long v0, v8, v13

    if-nez v0, :cond_15e

    cmp-long v0, v5, v13

    if-eqz v0, :cond_17a

    :cond_15e
    const/16 v11, 0xa

    .line 878
    invoke-virtual {v1, v12, v11, v8, v9}, Lcom/android/server/usage/AppIdleHistory;->insertBucketExpiryTime(Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;IJ)V

    const/16 v0, 0x14

    .line 880
    invoke-virtual {v1, v12, v0, v5, v6}, Lcom/android/server/usage/AppIdleHistory;->insertBucketExpiryTime(Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;IJ)V
    :try_end_168
    .catch Ljava/io/FileNotFoundException; {:try_start_115 .. :try_end_168} :catch_f2
    .catch Ljava/io/IOException; {:try_start_115 .. :try_end_168} :catch_ed
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_115 .. :try_end_168} :catch_ed
    .catchall {:try_start_115 .. :try_end_168} :catchall_e8

    goto :goto_17a

    :catchall_169
    move-exception v0

    move-object/from16 v16, v6

    goto/16 :goto_e9

    :catch_16e
    move-exception v0

    move-object/from16 v16, v6

    goto/16 :goto_ee

    :catch_173
    move-object/from16 v16, v6

    goto/16 :goto_f2

    :cond_177
    move-object/from16 v16, v6

    move v15, v8

    :cond_17a
    :goto_17a
    move v8, v15

    move-object/from16 v6, v16

    const/4 v5, 0x0

    const/4 v9, 0x2

    goto/16 :goto_6a

    :cond_181
    move-object/from16 v16, v6

    .line 893
    invoke-static/range {v16 .. v16}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_1c1

    :catchall_187
    move-exception v0

    const/4 v5, 0x0

    goto :goto_1c2

    :catch_18a
    move-exception v0

    const/4 v5, 0x0

    goto :goto_18f

    :catch_18d
    const/4 v5, 0x0

    goto :goto_1a7

    .line 891
    :goto_18f
    :try_start_18f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1a1
    .catchall {:try_start_18f .. :try_end_1a1} :catchall_1a5

    .line 893
    :goto_1a1
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_1c1

    :catchall_1a5
    move-exception v0

    goto :goto_1c2

    .line 889
    :goto_1a7
    :try_start_1a7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "App idle file for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " does not exist"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1c0
    .catchall {:try_start_1a7 .. :try_end_1c0} :catchall_1a5

    goto :goto_1a1

    :goto_1c1
    return-void

    .line 893
    :goto_1c2
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 894
    throw v0
.end method

.method public final readBucketExpiryTimes(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;)V
    .registers 8

    .line 899
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 900
    :cond_4
    :goto_4
    invoke-static {p1, v0}, Lcom/android/internal/util/jobs/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 901
    const-string v1, "item"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 902
    const-string v1, "bucket"

    const/4 v2, -0x1

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/server/usage/AppIdleHistory;->getIntValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_27

    .line 904
    const-string v1, "AppIdleHistory"

    const-string v2, "Error reading the buckets expiry times"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 907
    :cond_27
    const-string v2, "expiry"

    const-wide/16 v3, 0x0

    invoke-virtual {p0, p1, v2, v3, v4}, Lcom/android/server/usage/AppIdleHistory;->getLongValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v2

    .line 908
    invoke-virtual {p0, p2, v1, v2, v3}, Lcom/android/server/usage/AppIdleHistory;->insertBucketExpiryTime(Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;IJ)V

    goto :goto_4

    :cond_33
    return-void
.end method

.method public readRestoreToRareAppsList(I)Landroid/util/ArraySet;
    .registers 8

    .line 290
    invoke-virtual {p0, p1}, Lcom/android/server/usage/AppIdleHistory;->getRestoreToRareAppsListFile(I)Ljava/io/File;

    move-result-object p0

    .line 291
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_c

    return-object v0

    .line 295
    :cond_c
    :try_start_c
    new-instance p1, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {p1, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_16} :catch_52
    .catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_16} :catch_52

    .line 297
    :try_start_16
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 298
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 299
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    const-wide/32 v2, 0xa4cb800

    cmp-long v2, v4, v2

    if-lez v2, :cond_3b

    .line 301
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V

    .line 302
    invoke-virtual {p0}, Ljava/io/File;->delete()Z
    :try_end_35
    .catchall {:try_start_16 .. :try_end_35} :catchall_39

    .line 310
    :try_start_35
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_38} :catch_52
    .catch Ljava/lang/NumberFormatException; {:try_start_35 .. :try_end_38} :catch_52

    return-object v0

    :catchall_39
    move-exception p0

    goto :goto_49

    .line 306
    :cond_3b
    :goto_3b
    :try_start_3b
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_45

    .line 307
    invoke-virtual {v1, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_44
    .catchall {:try_start_3b .. :try_end_44} :catchall_39

    goto :goto_3b

    .line 310
    :cond_45
    :try_start_45
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_48} :catch_52
    .catch Ljava/lang/NumberFormatException; {:try_start_45 .. :try_end_48} :catch_52

    return-object v1

    .line 295
    :goto_49
    :try_start_49
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_4c
    .catchall {:try_start_49 .. :try_end_4c} :catchall_4d

    goto :goto_51

    :catchall_4d
    move-exception p1

    :try_start_4e
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_51
    throw p0
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_52} :catch_52
    .catch Ljava/lang/NumberFormatException; {:try_start_4e .. :try_end_52} :catch_52

    :catch_52
    return-object v0
.end method

.method public final readScreenOnTime()V
    .registers 5

    .line 247
    invoke-virtual {p0}, Lcom/android/server/usage/AppIdleHistory;->getScreenOnTimeFile()Ljava/io/File;

    move-result-object v0

    .line 248
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 250
    :try_start_a
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 251
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/usage/AppIdleHistory;->mScreenOnDuration:J

    .line 252
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/usage/AppIdleHistory;->mElapsedDuration:J

    .line 253
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_2b} :catch_2b
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_2b} :catch_2b

    :catch_2b
    return-void

    .line 257
    :cond_2c
    invoke-virtual {p0}, Lcom/android/server/usage/AppIdleHistory;->writeScreenOnTime()V

    return-void
.end method

.method public final removeElapsedExpiryTimes(Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;J)V
    .registers 6

    .line 401
    iget-object p0, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketExpiryTimesMs:Landroid/util/SparseLongArray;

    if-nez p0, :cond_5

    goto :goto_1f

    .line 404
    :cond_5
    invoke-virtual {p0}, Landroid/util/SparseLongArray;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    :goto_b
    if-ltz p0, :cond_1f

    .line 405
    iget-object v0, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketExpiryTimesMs:Landroid/util/SparseLongArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v0

    cmp-long v0, v0, p2

    if-gez v0, :cond_1c

    .line 406
    iget-object v0, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketExpiryTimesMs:Landroid/util/SparseLongArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseLongArray;->removeAt(I)V

    :cond_1c
    add-int/lit8 p0, p0, -0x1

    goto :goto_b

    :cond_1f
    :goto_1f
    return-void
.end method

.method public reportUsage(Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;Ljava/lang/String;IIIJJ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    .registers 15

    or-int/lit16 p5, p5, 0x300

    .line 357
    invoke-static {p5}, Lcom/android/server/usage/AppStandbyController;->isUserUsage(I)Z

    move-result v0

    .line 359
    iget v1, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    const/16 v2, 0x2d

    if-ne v1, v2, :cond_1b

    if-nez v0, :cond_1b

    iget v1, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I

    const v3, 0xff00

    and-int/2addr v3, v1

    const/16 v4, 0x200

    if-eq v3, v4, :cond_1b

    move p5, v1

    move p4, v2

    goto :goto_44

    :cond_1b
    cmp-long v1, p8, p6

    if-lez v1, :cond_44

    .line 369
    invoke-virtual {p0, p8, p9}, Lcom/android/server/usage/AppIdleHistory;->getElapsedTime(J)J

    move-result-wide p8

    .line 370
    iget-object v1, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketExpiryTimesMs:Landroid/util/SparseLongArray;

    if-nez v1, :cond_2e

    .line 371
    new-instance v1, Landroid/util/SparseLongArray;

    invoke-direct {v1}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v1, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketExpiryTimesMs:Landroid/util/SparseLongArray;

    .line 373
    :cond_2e
    iget-object v1, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketExpiryTimesMs:Landroid/util/SparseLongArray;

    invoke-virtual {v1, p4}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v1

    .line 374
    iget-object v3, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketExpiryTimesMs:Landroid/util/SparseLongArray;

    .line 375
    invoke-static {p8, p9, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p8

    .line 374
    invoke-virtual {v3, p4, p8, p9}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 376
    invoke-virtual {p0, p6, p7}, Lcom/android/server/usage/AppIdleHistory;->getElapsedTime(J)J

    move-result-wide p8

    invoke-virtual {p0, p1, p8, p9}, Lcom/android/server/usage/AppIdleHistory;->removeElapsedExpiryTimes(Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;J)V

    :cond_44
    :goto_44
    const-wide/16 p8, 0x0

    cmp-long p8, p6, p8

    if-eqz p8, :cond_5d

    .line 381
    iget-wide p8, p0, Lcom/android/server/usage/AppIdleHistory;->mElapsedDuration:J

    iget-wide v1, p0, Lcom/android/server/usage/AppIdleHistory;->mElapsedSnapshot:J

    sub-long v1, p6, v1

    add-long/2addr p8, v1

    iput-wide p8, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedElapsedTime:J

    if-eqz v0, :cond_57

    .line 384
    iput-wide p8, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedByUserElapsedTime:J

    .line 386
    :cond_57
    invoke-virtual {p0, p6, p7}, Lcom/android/server/usage/AppIdleHistory;->getScreenOnTime(J)J

    move-result-wide p6

    iput-wide p6, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedScreenTime:J

    .line 389
    :cond_5d
    iget p6, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    if-lt p6, p4, :cond_6a

    if-le p6, p4, :cond_68

    .line 391
    iput p4, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    .line 392
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/android/server/usage/AppIdleHistory;->logAppStandbyBucketChanged(Ljava/lang/String;III)V

    .line 394
    :cond_68
    iput p5, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I

    :cond_6a
    return-object p1
.end method

.method public reportUsage(Ljava/lang/String;IIIJJ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    .registers 19

    .line 430
    invoke-virtual {p0, p2}, Lcom/android/server/usage/AppIdleHistory;->getUserHistory(I)Landroid/util/ArrayMap;

    move-result-object v1

    const/4 v5, 0x1

    move-object v0, p0

    move-object v2, p1

    move-wide v3, p5

    .line 431
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/usage/AppIdleHistory;->getPackageHistory(Landroid/util/ArrayMap;Ljava/lang/String;JZ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object v1

    move v5, p4

    move-wide/from16 v8, p7

    move-wide v6, v3

    move v3, p2

    move v4, p3

    .line 433
    invoke-virtual/range {v0 .. v9}, Lcom/android/server/usage/AppIdleHistory;->reportUsage(Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;Ljava/lang/String;IIIJJ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object v0

    return-object v0
.end method

.method public setAppStandbyBucket(Ljava/lang/String;IJII)V
    .registers 15

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move v5, p5

    move v6, p6

    .line 487
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/usage/AppIdleHistory;->setAppStandbyBucket(Ljava/lang/String;IJIIZ)V

    return-void
.end method

.method public setAppStandbyBucket(Ljava/lang/String;IJIIZ)V
    .registers 14

    .line 492
    invoke-virtual {p0, p2}, Lcom/android/server/usage/AppIdleHistory;->getUserHistory(I)Landroid/util/ArrayMap;

    move-result-object v1

    const/4 v5, 0x1

    move-object v0, p0

    move-object v2, p1

    move-wide v3, p3

    .line 494
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/usage/AppIdleHistory;->getPackageHistory(Landroid/util/ArrayMap;Ljava/lang/String;JZ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object p0

    .line 495
    iget p1, p0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    if-eq p1, p5, :cond_12

    const/4 p1, 0x1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    .line 496
    :goto_13
    iput p5, p0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    .line 497
    iput p6, p0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I

    .line 499
    invoke-virtual {v0, v3, v4}, Lcom/android/server/usage/AppIdleHistory;->getElapsedTime(J)J

    move-result-wide p3

    const v1, 0xff00

    and-int/2addr v1, p6

    const/16 v3, 0x500

    if-ne v1, v3, :cond_27

    .line 502
    iput-wide p3, p0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastPredictedTime:J

    .line 503
    iput p5, p0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastPredictedBucket:I

    :cond_27
    if-eqz p7, :cond_30

    .line 505
    iget-object p0, p0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketExpiryTimesMs:Landroid/util/SparseLongArray;

    if-eqz p0, :cond_30

    .line 506
    invoke-virtual {p0}, Landroid/util/SparseLongArray;->clear()V

    :cond_30
    if-eqz p1, :cond_35

    .line 509
    invoke-virtual {v0, v2, p2, p5, p6}, Lcom/android/server/usage/AppIdleHistory;->logAppStandbyBucketChanged(Ljava/lang/String;III)V

    :cond_35
    return-void
.end method

.method public setEstimatedLaunchTime(Ljava/lang/String;IJJ)V
    .registers 13

    .line 529
    invoke-virtual {p0, p2}, Lcom/android/server/usage/AppIdleHistory;->getUserHistory(I)Landroid/util/ArrayMap;

    move-result-object v1

    const/4 v5, 0x1

    move-object v0, p0

    move-object v2, p1

    move-wide v3, p3

    .line 531
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/usage/AppIdleHistory;->getPackageHistory(Landroid/util/ArrayMap;Ljava/lang/String;JZ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object p0

    .line 532
    iput-wide p5, p0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->nextEstimatedLaunchTime:J

    return-void
.end method

.method public setIdle(Ljava/lang/String;IZJ)I
    .registers 16

    if-eqz p3, :cond_29

    .line 661
    invoke-virtual {p0, p1, p2, p4, p5}, Lcom/android/server/usage/AppIdleHistory;->getAppUsageHistory(Ljava/lang/String;IJ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object p3

    .line 664
    iget-object v0, p3, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketExpiryTimesMs:Landroid/util/SparseLongArray;

    const/16 v1, 0x28

    if-eqz v0, :cond_24

    .line 665
    invoke-virtual {v0}, Landroid/util/SparseLongArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_12
    if-ltz v0, :cond_24

    .line 666
    iget-object v2, p3, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketExpiryTimesMs:Landroid/util/SparseLongArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseLongArray;->keyAt(I)I

    move-result v2

    if-ge v2, v1, :cond_21

    .line 667
    iget-object v2, p3, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketExpiryTimesMs:Landroid/util/SparseLongArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseLongArray;->removeAt(I)V

    :cond_21
    add-int/lit8 v0, v0, -0x1

    goto :goto_12

    :cond_24
    const/16 p3, 0x400

    :goto_26
    move v8, p3

    move v7, v1

    goto :goto_2e

    :cond_29
    const/16 v1, 0xa

    const/16 p3, 0x303

    goto :goto_26

    :goto_2e
    const/4 v9, 0x0

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-wide v5, p4

    .line 676
    invoke-virtual/range {v2 .. v9}, Lcom/android/server/usage/AppIdleHistory;->setAppStandbyBucket(Ljava/lang/String;IJIIZ)V

    return v7
.end method

.method public setLastJobRunTime(Ljava/lang/String;IJ)V
    .registers 11

    .line 543
    invoke-virtual {p0, p2}, Lcom/android/server/usage/AppIdleHistory;->getUserHistory(I)Landroid/util/ArrayMap;

    move-result-object v1

    const/4 v5, 0x1

    move-object v0, p0

    move-object v2, p1

    move-wide v3, p3

    .line 545
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/usage/AppIdleHistory;->getPackageHistory(Landroid/util/ArrayMap;Ljava/lang/String;JZ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object p0

    .line 546
    invoke-virtual {v0, v3, v4}, Lcom/android/server/usage/AppIdleHistory;->getElapsedTime(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastJobRunTime:J

    return-void
.end method

.method public shouldInformListeners(Ljava/lang/String;IJI)Z
    .registers 12

    .line 688
    invoke-virtual {p0, p2}, Lcom/android/server/usage/AppIdleHistory;->getUserHistory(I)Landroid/util/ArrayMap;

    move-result-object v1

    const/4 v5, 0x1

    move-object v0, p0

    move-object v2, p1

    move-wide v3, p3

    .line 689
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/usage/AppIdleHistory;->getPackageHistory(Landroid/util/ArrayMap;Ljava/lang/String;JZ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object p0

    .line 691
    iget p1, p0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastInformedBucket:I

    if-eq p1, p5, :cond_14

    .line 692
    iput p5, p0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastInformedBucket:I

    const/4 p0, 0x1

    return p0

    :cond_14
    const/4 p0, 0x0

    return p0
.end method

.method public updateDisplay(ZJ)V
    .registers 8

    .line 218
    iget-boolean v0, p0, Lcom/android/server/usage/AppIdleHistory;->mScreenOn:Z

    if-ne p1, v0, :cond_5

    return-void

    .line 220
    :cond_5
    iput-boolean p1, p0, Lcom/android/server/usage/AppIdleHistory;->mScreenOn:Z

    if-eqz p1, :cond_c

    .line 222
    iput-wide p2, p0, Lcom/android/server/usage/AppIdleHistory;->mScreenOnSnapshot:J

    return-void

    .line 224
    :cond_c
    iget-wide v0, p0, Lcom/android/server/usage/AppIdleHistory;->mScreenOnDuration:J

    iget-wide v2, p0, Lcom/android/server/usage/AppIdleHistory;->mScreenOnSnapshot:J

    sub-long v2, p2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/usage/AppIdleHistory;->mScreenOnDuration:J

    .line 225
    iget-wide v0, p0, Lcom/android/server/usage/AppIdleHistory;->mElapsedDuration:J

    iget-wide v2, p0, Lcom/android/server/usage/AppIdleHistory;->mElapsedSnapshot:J

    sub-long v2, p2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/usage/AppIdleHistory;->mElapsedDuration:J

    .line 226
    iput-wide p2, p0, Lcom/android/server/usage/AppIdleHistory;->mElapsedSnapshot:J

    return-void
.end method

.method public updateLastPrediction(Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;JI)V
    .registers 5

    .line 520
    iput-wide p2, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastPredictedTime:J

    .line 521
    iput p4, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastPredictedBucket:I

    return-void
.end method

.method public userFileExists(I)Z
    .registers 2

    .line 788
    invoke-virtual {p0, p1}, Lcom/android/server/usage/AppIdleHistory;->getUserFile(I)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    return p0
.end method

.method public writeAppIdleDurations()V
    .registers 7

    .line 278
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 280
    iget-wide v2, p0, Lcom/android/server/usage/AppIdleHistory;->mElapsedDuration:J

    iget-wide v4, p0, Lcom/android/server/usage/AppIdleHistory;->mElapsedSnapshot:J

    sub-long v4, v0, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/usage/AppIdleHistory;->mElapsedDuration:J

    .line 281
    iput-wide v0, p0, Lcom/android/server/usage/AppIdleHistory;->mElapsedSnapshot:J

    .line 282
    invoke-virtual {p0}, Lcom/android/server/usage/AppIdleHistory;->writeScreenOnTime()V

    return-void
.end method

.method public writeAppIdleTimes(IJ)V
    .registers 25

    .line 944
    const-string v0, "item"

    const-string v1, "expiryTimes"

    const-string/jumbo v2, "package"

    const-string v3, "AppIdleHistory"

    const-string/jumbo v4, "packages"

    .line 945
    new-instance v5, Landroid/util/AtomicFile;

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/usage/AppIdleHistory;->getUserFile(I)Ljava/io/File;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    const/4 v6, 0x0

    .line 947
    :try_start_16
    invoke-virtual {v5}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v7
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_1a} :catch_182

    .line 948
    :try_start_1a
    new-instance v8, Ljava/io/BufferedOutputStream;

    invoke-direct {v8, v7}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 950
    new-instance v9, Lcom/android/internal/util/jobs/FastXmlSerializer;

    invoke-direct {v9}, Lcom/android/internal/util/jobs/FastXmlSerializer;-><init>()V

    .line 951
    sget-object v10, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v10}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v8, v10}, Lcom/android/internal/util/jobs/FastXmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 952
    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v9, v6, v8}, Lcom/android/internal/util/jobs/FastXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 953
    const-string v8, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v10, 0x1

    invoke-virtual {v9, v8, v10}, Lcom/android/internal/util/jobs/FastXmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 955
    invoke-virtual {v9, v6, v4}, Lcom/android/internal/util/jobs/FastXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 956
    const-string/jumbo v8, "version"

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v6, v8, v10}, Lcom/android/internal/util/jobs/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-object/from16 v8, p0

    move-wide/from16 v10, p2

    .line 958
    invoke-virtual {v8, v10, v11}, Lcom/android/server/usage/AppIdleHistory;->getElapsedTime(J)J

    move-result-wide v10

    .line 959
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/usage/AppIdleHistory;->getUserHistory(I)Landroid/util/ArrayMap;

    move-result-object v8

    .line 960
    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v12

    const/4 v14, 0x0

    :goto_56
    if-ge v14, v12, :cond_175

    .line 962
    invoke-virtual {v8, v14}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_5e} :catch_171

    if-nez v15, :cond_71

    .line 965
    :try_start_60
    const-string v15, "Skipping App Idle write for unexpected null package"

    invoke-static {v3, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_65} :catch_6d

    move-object v15, v7

    move-object/from16 p2, v8

    move-object v7, v9

    move-wide/from16 v17, v10

    goto/16 :goto_166

    :catch_6d
    move-exception v0

    move-object v6, v7

    goto/16 :goto_184

    .line 968
    :cond_71
    :try_start_71
    invoke-virtual {v8, v14}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v13, v16

    check-cast v13, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    .line 969
    invoke-virtual {v9, v6, v2}, Lcom/android/internal/util/jobs/FastXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-object/from16 p2, v8

    .line 970
    const-string/jumbo v8, "name"

    invoke-virtual {v9, v6, v8, v15}, Lcom/android/internal/util/jobs/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 971
    const-string v8, "elapsedIdleTime"
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_86} :catch_171

    move-object v15, v7

    :try_start_87
    iget-wide v6, v13, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedElapsedTime:J

    .line 972
    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    .line 971
    invoke-virtual {v9, v7, v8, v6}, Lcom/android/internal/util/jobs/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 973
    const-string v6, "lastUsedByUserElapsedTime"

    iget-wide v7, v13, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedByUserElapsedTime:J

    .line 974
    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    .line 973
    invoke-virtual {v9, v8, v6, v7}, Lcom/android/internal/util/jobs/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 975
    const-string/jumbo v6, "screenIdleTime"

    move-object v7, v9

    iget-wide v8, v13, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedScreenTime:J

    .line 976
    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    .line 975
    invoke-virtual {v7, v9, v6, v8}, Lcom/android/internal/util/jobs/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 977
    const-string v6, "lastPredictedTime"

    move-wide/from16 v17, v10

    iget-wide v9, v13, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastPredictedTime:J

    .line 978
    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    .line 977
    invoke-virtual {v7, v9, v6, v8}, Lcom/android/internal/util/jobs/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 979
    const-string v6, "appLimitBucket"

    iget v8, v13, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    .line 980
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    .line 979
    invoke-virtual {v7, v9, v6, v8}, Lcom/android/internal/util/jobs/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 981
    const-string v6, "bucketReason"

    iget v8, v13, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I

    .line 982
    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    .line 981
    invoke-virtual {v7, v9, v6, v8}, Lcom/android/internal/util/jobs/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 983
    iget-wide v10, v13, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastJobRunTime:J

    const-wide/high16 v19, -0x8000000000000000L

    cmp-long v6, v10, v19

    if-eqz v6, :cond_e5

    .line 984
    const-string v6, "lastJobRunTime"

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v9, v6, v8}, Lcom/android/internal/util/jobs/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_e5

    :catch_e1
    move-exception v0

    :goto_e2
    move-object v6, v15

    goto/16 :goto_184

    .line 987
    :cond_e5
    :goto_e5
    iget-wide v8, v13, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastRestrictAttemptElapsedTime:J

    const-wide/16 v10, 0x0

    cmp-long v6, v8, v10

    if-lez v6, :cond_f7

    .line 988
    const-string v6, "lastRestrictionAttemptElapsedTime"

    .line 989
    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    .line 988
    invoke-virtual {v7, v9, v6, v8}, Lcom/android/internal/util/jobs/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 991
    :cond_f7
    const-string v6, "lastRestrictionAttemptReason"

    iget v8, v13, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastRestrictReason:I

    .line 992
    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    .line 991
    invoke-virtual {v7, v9, v6, v8}, Lcom/android/internal/util/jobs/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-wide/from16 v19, v10

    .line 993
    iget-wide v10, v13, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->nextEstimatedLaunchTime:J

    cmp-long v6, v10, v19

    if-lez v6, :cond_115

    .line 994
    const-string/jumbo v6, "nextEstimatedAppLaunchTime"

    .line 995
    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    .line 994
    invoke-virtual {v7, v9, v6, v8}, Lcom/android/internal/util/jobs/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 997
    :cond_115
    iget-object v6, v13, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketExpiryTimesMs:Landroid/util/SparseLongArray;

    if-eqz v6, :cond_162

    const/4 v9, 0x0

    .line 998
    invoke-virtual {v7, v9, v1}, Lcom/android/internal/util/jobs/FastXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 999
    iget-object v6, v13, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketExpiryTimesMs:Landroid/util/SparseLongArray;

    invoke-virtual {v6}, Landroid/util/SparseLongArray;->size()I

    move-result v6

    const/4 v8, 0x0

    :goto_124
    if-ge v8, v6, :cond_15e

    .line 1001
    iget-object v9, v13, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketExpiryTimesMs:Landroid/util/SparseLongArray;

    invoke-virtual {v9, v8}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v9

    cmp-long v11, v9, v17

    if-gez v11, :cond_135

    move/from16 p3, v6

    move/from16 v19, v8

    goto :goto_159

    .line 1006
    :cond_135
    iget-object v11, v13, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketExpiryTimesMs:Landroid/util/SparseLongArray;

    invoke-virtual {v11, v8}, Landroid/util/SparseLongArray;->keyAt(I)I

    move-result v11

    move/from16 p3, v6

    const/4 v6, 0x0

    .line 1007
    invoke-virtual {v7, v6, v0}, Lcom/android/internal/util/jobs/FastXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1008
    const-string v6, "bucket"

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    move/from16 v19, v8

    const/4 v8, 0x0

    invoke-virtual {v7, v8, v6, v11}, Lcom/android/internal/util/jobs/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1009
    const-string v6, "expiry"

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v6, v9}, Lcom/android/internal/util/jobs/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1010
    invoke-virtual {v7, v8, v0}, Lcom/android/internal/util/jobs/FastXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :goto_159
    add-int/lit8 v8, v19, 0x1

    move/from16 v6, p3

    goto :goto_124

    :cond_15e
    const/4 v9, 0x0

    .line 1012
    invoke-virtual {v7, v9, v1}, Lcom/android/internal/util/jobs/FastXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_162
    const/4 v9, 0x0

    .line 1014
    invoke-virtual {v7, v9, v2}, Lcom/android/internal/util/jobs/FastXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :goto_166
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v8, p2

    move-object v9, v7

    move-object v7, v15

    move-wide/from16 v10, v17

    const/4 v6, 0x0

    goto/16 :goto_56

    :catch_171
    move-exception v0

    move-object v15, v7

    goto/16 :goto_e2

    :cond_175
    move-object v15, v7

    move-object v7, v9

    move-object v9, v6

    .line 1017
    invoke-virtual {v7, v9, v4}, Lcom/android/internal/util/jobs/FastXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1018
    invoke-virtual {v7}, Lcom/android/internal/util/jobs/FastXmlSerializer;->endDocument()V

    .line 1019
    invoke-virtual {v5, v15}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_181
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_181} :catch_e1

    return-void

    :catch_182
    move-exception v0

    move-object v9, v6

    .line 1021
    :goto_184
    invoke-virtual {v5, v6}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 1022
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error writing app idle file for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public writeAppIdleTimes(J)V
    .registers 6

    .line 937
    iget-object v0, p0, Lcom/android/server/usage/AppIdleHistory;->mIdleHistory:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_15

    .line 939
    iget-object v2, p0, Lcom/android/server/usage/AppIdleHistory;->mIdleHistory:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p0, v2, p1, p2}, Lcom/android/server/usage/AppIdleHistory;->writeAppIdleTimes(IJ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_15
    return-void
.end method

.method public writeRestoreToRareAppsList(ILandroid/util/ArraySet;)V
    .registers 7

    .line 316
    const-string v0, "\n"

    invoke-virtual {p0, p1}, Lcom/android/server/usage/AppIdleHistory;->getRestoreToRareAppsListFile(I)Ljava/io/File;

    move-result-object p0

    .line 317
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_d

    return-void

    .line 321
    :cond_d
    new-instance p1, Landroid/util/AtomicFile;

    invoke-direct {p1, p0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 324
    :try_start_12
    invoke-virtual {p1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object p0
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_16} :catch_4b

    .line 325
    :try_start_16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 326
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    invoke-virtual {p2}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_29
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3c

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 328
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_29

    .line 330
    :cond_3c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/io/FileOutputStream;->write([B)V

    .line 331
    invoke-virtual {p1, p0}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_4a} :catch_4c

    return-void

    :catch_4b
    const/4 p0, 0x0

    .line 333
    :catch_4c
    invoke-virtual {p1, p0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    return-void
.end method

.method public final writeScreenOnTime()V
    .registers 7

    .line 262
    const-string v0, "\n"

    new-instance v1, Landroid/util/AtomicFile;

    invoke-virtual {p0}, Lcom/android/server/usage/AppIdleHistory;->getScreenOnTimeFile()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 265
    :try_start_b
    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_f} :catch_3b

    .line 266
    :try_start_f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, p0, Lcom/android/server/usage/AppIdleHistory;->mScreenOnDuration:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/android/server/usage/AppIdleHistory;->mElapsedDuration:J

    .line 267
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    .line 266
    invoke-virtual {v2, p0}, Ljava/io/FileOutputStream;->write([B)V

    .line 268
    invoke-virtual {v1, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_3a} :catch_3c

    return-void

    :catch_3b
    const/4 v2, 0x0

    .line 270
    :catch_3c
    invoke-virtual {v1, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    return-void
.end method
