.class public Lcom/android/server/usage/AppIdleHistory;
.super Ljava/lang/Object;
.source "AppIdleHistory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    }
.end annotation


# static fields
.field static final APP_IDLE_FILENAME:Ljava/lang/String; = "app_idle_stats.xml"

.field private static final ATTR_BUCKET:Ljava/lang/String; = "bucket"

.field private static final ATTR_BUCKETING_REASON:Ljava/lang/String; = "bucketReason"

.field private static final ATTR_BUCKET_ACTIVE_TIMEOUT_TIME:Ljava/lang/String; = "activeTimeoutTime"

.field private static final ATTR_BUCKET_WORKING_SET_TIMEOUT_TIME:Ljava/lang/String; = "workingSetTimeoutTime"

.field private static final ATTR_CURRENT_BUCKET:Ljava/lang/String; = "appLimitBucket"

.field private static final ATTR_ELAPSED_IDLE:Ljava/lang/String; = "elapsedIdleTime"

.field private static final ATTR_EXPIRY_TIME:Ljava/lang/String; = "expiry"

.field private static final ATTR_LAST_PREDICTED_TIME:Ljava/lang/String; = "lastPredictedTime"

.field private static final ATTR_LAST_RESTRICTION_ATTEMPT_ELAPSED:Ljava/lang/String; = "lastRestrictionAttemptElapsedTime"

.field private static final ATTR_LAST_RESTRICTION_ATTEMPT_REASON:Ljava/lang/String; = "lastRestrictionAttemptReason"

.field private static final ATTR_LAST_RUN_JOB_TIME:Ljava/lang/String; = "lastJobRunTime"

.field private static final ATTR_LAST_USED_BY_USER_ELAPSED:Ljava/lang/String; = "lastUsedByUserElapsedTime"

.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_NEXT_ESTIMATED_APP_LAUNCH_TIME:Ljava/lang/String; = "nextEstimatedAppLaunchTime"

.field private static final ATTR_SCREEN_IDLE:Ljava/lang/String; = "screenIdleTime"

.field private static final ATTR_VERSION:Ljava/lang/String; = "version"

.field private static final DEBUG:Z = false

.field static final IDLE_BUCKET_CUTOFF:I = 0x28

.field private static final ONE_MINUTE:J = 0xea60L

.field static final STANDBY_BUCKET_UNKNOWN:I = -0x1

.field private static final TAG:Ljava/lang/String; = "AppIdleHistory"

.field private static final TAG_BUCKET_EXPIRY_TIMES:Ljava/lang/String; = "expiryTimes"

.field private static final TAG_ITEM:Ljava/lang/String; = "item"

.field private static final TAG_PACKAGE:Ljava/lang/String; = "package"

.field private static final TAG_PACKAGES:Ljava/lang/String; = "packages"

.field private static final XML_VERSION_ADD_BUCKET_EXPIRY_TIMES:I = 0x1

.field private static final XML_VERSION_CURRENT:I = 0x1

.field private static final XML_VERSION_INITIAL:I


# instance fields
.field private mElapsedDuration:J

.field private mElapsedSnapshot:J

.field private mIdleHistory:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;",
            ">;>;"
        }
    .end annotation
.end field

.field private mScreenOn:Z

.field private mScreenOnDuration:J

.field private mScreenOnSnapshot:J

.field private final mStorageDir:Ljava/io/File;


# direct methods
.method constructor <init>(Ljava/io/File;J)V
    .registers 5
    .param p1, "storageDir"    # Ljava/io/File;
    .param p2, "elapsedRealtime"    # J

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/AppIdleHistory;->mIdleHistory:Landroid/util/SparseArray;

    .line 205
    iput-wide p2, p0, Lcom/android/server/usage/AppIdleHistory;->mElapsedSnapshot:J

    .line 206
    iput-wide p2, p0, Lcom/android/server/usage/AppIdleHistory;->mScreenOnSnapshot:J

    .line 207
    iput-object p1, p0, Lcom/android/server/usage/AppIdleHistory;->mStorageDir:Ljava/io/File;

    .line 208
    invoke-direct {p0}, Lcom/android/server/usage/AppIdleHistory;->readScreenOnTime()V

    .line 209
    return-void
.end method

.method private dumpBucketExpiryTimes(Landroid/util/IndentingPrintWriter;Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;J)V
    .registers 12
    .param p1, "idpw"    # Landroid/util/IndentingPrintWriter;
    .param p2, "appUsageHistory"    # Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    .param p3, "totalElapsedTimeMs"    # J

    .line 1020
    const-string v0, " expiryTimes="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1021
    iget-object v0, p2, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketExpiryTimesMs:Landroid/util/SparseLongArray;

    if-eqz v0, :cond_57

    iget-object v0, p2, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketExpiryTimesMs:Landroid/util/SparseLongArray;

    .line 1022
    invoke-virtual {v0}, Landroid/util/SparseLongArray;->size()I

    move-result v0

    if-nez v0, :cond_12

    goto :goto_57

    .line 1026
    :cond_12
    const-string v0, "("

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1027
    iget-object v0, p2, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketExpiryTimesMs:Landroid/util/SparseLongArray;

    invoke-virtual {v0}, Landroid/util/SparseLongArray;->size()I

    move-result v0

    .line 1028
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1e
    if-ge v1, v0, :cond_51

    .line 1029
    iget-object v2, p2, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketExpiryTimesMs:Landroid/util/SparseLongArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseLongArray;->keyAt(I)I

    move-result v2

    .line 1030
    .local v2, "bucket":I
    iget-object v3, p2, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketExpiryTimesMs:Landroid/util/SparseLongArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v3

    .line 1031
    .local v3, "expiryTimeMs":J
    if-eqz v1, :cond_33

    .line 1032
    const-string v5, ","

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1034
    :cond_33
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1035
    sub-long v5, p3, v3

    invoke-static {v5, v6, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1028
    .end local v2    # "bucket":I
    .end local v3    # "expiryTimeMs":J
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .line 1037
    .end local v1    # "i":I
    :cond_51
    const-string v1, ")"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1038
    return-void

    .line 1023
    .end local v0    # "size":I
    :cond_57
    :goto_57
    const-string v0, "<none>"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1024
    return-void
.end method

.method private dumpUser(Landroid/util/IndentingPrintWriter;ILjava/util/List;)V
    .registers 27
    .param p1, "idpw"    # Landroid/util/IndentingPrintWriter;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/IndentingPrintWriter;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 950
    .local p3, "pkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move/from16 v8, p2

    const-string v0, "User "

    invoke-virtual {v7, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 951
    invoke-virtual/range {p1 .. p2}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 952
    const-string v0, " App Standby States:"

    invoke-virtual {v7, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 953
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 954
    iget-object v0, v6, Lcom/android/server/usage/AppIdleHistory;->mIdleHistory:Landroid/util/SparseArray;

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/util/ArrayMap;

    .line 955
    .local v9, "userHistory":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 956
    .local v10, "now":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    .line 957
    .local v12, "elapsedRealtime":J
    invoke-virtual {v6, v12, v13}, Lcom/android/server/usage/AppIdleHistory;->getElapsedTime(J)J

    move-result-wide v14

    .line 958
    .local v14, "totalElapsedTime":J
    invoke-virtual {v6, v12, v13}, Lcom/android/server/usage/AppIdleHistory;->getScreenOnTime(J)J

    move-result-wide v16

    .line 959
    .local v16, "screenOnTime":J
    if-nez v9, :cond_32

    return-void

    .line 960
    :cond_32
    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    move-result v4

    .line 961
    .local v4, "P":I
    const/4 v0, 0x0

    move v5, v0

    .local v5, "p":I
    :goto_38
    if-ge v5, v4, :cond_18f

    .line 962
    invoke-virtual {v9, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    .line 963
    .local v2, "packageName":Ljava/lang/String;
    invoke-virtual {v9, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    .line 964
    .local v3, "appUsageHistory":Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/jobs/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_5f

    move-object/from16 v1, p3

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_61

    .line 965
    move/from16 v21, v4

    move/from16 v22, v5

    move v1, v8

    move-object/from16 v20, v9

    goto/16 :goto_186

    .line 964
    :cond_5f
    move-object/from16 v1, p3

    .line 967
    :cond_61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "package="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 968
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " u="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 969
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " bucket="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v3, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v3, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I

    .line 971
    invoke-static {v1}, Landroid/app/usage/UsageStatsManager;->reasonToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 969
    invoke-virtual {v7, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 972
    const-string v0, " used="

    invoke-virtual {v7, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 973
    iget-wide v0, v3, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedElapsedTime:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v8, v3

    move-object/from16 v20, v9

    move-object v9, v2

    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "appUsageHistory":Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    .local v8, "appUsageHistory":Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    .local v9, "packageName":Ljava/lang/String;
    .local v20, "userHistory":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;>;"
    move-wide v2, v14

    move/from16 v21, v4

    move/from16 v22, v5

    .end local v4    # "P":I
    .end local v5    # "p":I
    .local v21, "P":I
    .local v22, "p":I
    move-wide/from16 v4, v18

    invoke-direct/range {v0 .. v5}, Lcom/android/server/usage/AppIdleHistory;->printLastActionElapsedTime(Landroid/util/IndentingPrintWriter;JJ)V

    .line 974
    const-string v0, " usedByUser="

    invoke-virtual {v7, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 975
    iget-wide v4, v8, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedByUserElapsedTime:J

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/usage/AppIdleHistory;->printLastActionElapsedTime(Landroid/util/IndentingPrintWriter;JJ)V

    .line 977
    const-string v0, " usedScr="

    invoke-virtual {v7, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 978
    iget-wide v4, v8, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedScreenTime:J

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/usage/AppIdleHistory;->printLastActionElapsedTime(Landroid/util/IndentingPrintWriter;JJ)V

    .line 979
    const-string v0, " lastPred="

    invoke-virtual {v7, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 980
    iget-wide v4, v8, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastPredictedTime:J

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/usage/AppIdleHistory;->printLastActionElapsedTime(Landroid/util/IndentingPrintWriter;JJ)V

    .line 981
    invoke-direct {v6, v7, v8, v14, v15}, Lcom/android/server/usage/AppIdleHistory;->dumpBucketExpiryTimes(Landroid/util/IndentingPrintWriter;Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;J)V

    .line 982
    const-string v0, " lastJob="

    invoke-virtual {v7, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 983
    iget-wide v0, v8, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastJobRunTime:J

    sub-long v0, v14, v0

    invoke-static {v0, v1, v7}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 984
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " lastInformedBucket="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v8, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastInformedBucket:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 985
    iget-wide v0, v8, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastRestrictAttemptElapsedTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_14c

    .line 986
    const-string v0, " lastRestrictAttempt="

    invoke-virtual {v7, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 987
    iget-wide v0, v8, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastRestrictAttemptElapsedTime:J

    sub-long v0, v14, v0

    invoke-static {v0, v1, v7}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 989
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " lastRestrictReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v8, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastRestrictReason:I

    .line 990
    invoke-static {v1}, Landroid/app/usage/UsageStatsManager;->reasonToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 989
    invoke-virtual {v7, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 992
    :cond_14c
    iget-wide v0, v8, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->nextEstimatedLaunchTime:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_15d

    .line 993
    const-string v0, " nextEstimatedLaunchTime="

    invoke-virtual {v7, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 994
    iget-wide v0, v8, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->nextEstimatedLaunchTime:J

    sub-long/2addr v0, v10

    invoke-static {v0, v1, v7}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 996
    :cond_15d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " idle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v1, p2

    move-object v2, v8

    .end local v8    # "appUsageHistory":Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    .local v2, "appUsageHistory":Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    invoke-virtual {v6, v9, v1, v12, v13}, Lcom/android/server/usage/AppIdleHistory;->isIdle(Ljava/lang/String;IJ)Z

    move-result v3

    if-eqz v3, :cond_175

    const-string/jumbo v3, "y"

    goto :goto_178

    :cond_175
    const-string/jumbo v3, "n"

    :goto_178
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 997
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 961
    .end local v2    # "appUsageHistory":Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    .end local v9    # "packageName":Ljava/lang/String;
    :goto_186
    add-int/lit8 v5, v22, 0x1

    move v8, v1

    move-object/from16 v9, v20

    move/from16 v4, v21

    .end local v22    # "p":I
    .restart local v5    # "p":I
    goto/16 :goto_38

    .line 999
    .end local v5    # "p":I
    .end local v20    # "userHistory":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;>;"
    .end local v21    # "P":I
    .restart local v4    # "P":I
    .local v9, "userHistory":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;>;"
    :cond_18f
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1000
    const-string/jumbo v0, "totalElapsedTime="

    invoke-virtual {v7, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1001
    invoke-virtual {v6, v12, v13}, Lcom/android/server/usage/AppIdleHistory;->getElapsedTime(J)J

    move-result-wide v2

    invoke-static {v2, v3, v7}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1002
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1003
    const-string/jumbo v0, "totalScreenOnTime="

    invoke-virtual {v7, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1004
    invoke-virtual {v6, v12, v13}, Lcom/android/server/usage/AppIdleHistory;->getScreenOnTime(J)J

    move-result-wide v2

    invoke-static {v2, v3, v7}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1005
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1006
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1007
    return-void
.end method

.method private getIntValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I
    .registers 6
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "attrName"    # Ljava/lang/String;
    .param p3, "defValue"    # I

    .line 846
    const/4 v0, 0x0

    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 847
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_8

    return p3

    .line 848
    :cond_8
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method private getLongValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J
    .registers 8
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "attrName"    # Ljava/lang/String;
    .param p3, "defValue"    # J

    .line 840
    const/4 v0, 0x0

    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 841
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_8

    return-wide p3

    .line 842
    :cond_8
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    return-wide v1
.end method

.method private getPackageHistory(Landroid/util/ArrayMap;Ljava/lang/String;JZ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    .registers 9
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "elapsedRealtime"    # J
    .param p5, "create"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;",
            ">;",
            "Ljava/lang/String;",
            "JZ)",
            "Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;"
        }
    .end annotation

    .line 392
    .local p1, "userHistory":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;>;"
    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    .line 393
    .local v0, "appUsageHistory":Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    if-nez v0, :cond_2d

    if-eqz p5, :cond_2d

    .line 394
    new-instance v1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    invoke-direct {v1}, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;-><init>()V

    move-object v0, v1

    .line 395
    const-wide/32 v1, -0x80000000

    iput-wide v1, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedByUserElapsedTime:J

    .line 396
    iput-wide v1, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedElapsedTime:J

    .line 397
    iput-wide v1, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedScreenTime:J

    .line 398
    iput-wide v1, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastPredictedTime:J

    .line 399
    const/16 v1, 0x32

    iput v1, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    .line 400
    const/16 v1, 0x100

    iput v1, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I

    .line 401
    const/4 v1, -0x1

    iput v1, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastInformedBucket:I

    .line 402
    const-wide/high16 v1, -0x8000000000000000L

    iput-wide v1, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastJobRunTime:J

    .line 403
    invoke-virtual {p1, p2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    :cond_2d
    return-object v0
.end method

.method private getUserHistory(I)Landroid/util/ArrayMap;
    .registers 4
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;",
            ">;"
        }
    .end annotation

    .line 380
    iget-object v0, p0, Lcom/android/server/usage/AppIdleHistory;->mIdleHistory:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 381
    .local v0, "userHistory":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;>;"
    if-nez v0, :cond_18

    .line 382
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    move-object v0, v1

    .line 383
    iget-object v1, p0, Lcom/android/server/usage/AppIdleHistory;->mIdleHistory:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 384
    invoke-direct {p0, p1, v0}, Lcom/android/server/usage/AppIdleHistory;->readAppIdleTimes(ILandroid/util/ArrayMap;)V

    .line 386
    :cond_18
    return-object v0
.end method

.method private insertBucketExpiryTime(Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;IJ)V
    .registers 7
    .param p1, "appUsageHistory"    # Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    .param p2, "bucket"    # I
    .param p3, "expiryTimeMs"    # J

    .line 830
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-nez v0, :cond_7

    .line 831
    return-void

    .line 833
    :cond_7
    iget-object v0, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketExpiryTimesMs:Landroid/util/SparseLongArray;

    if-nez v0, :cond_12

    .line 834
    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v0, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketExpiryTimesMs:Landroid/util/SparseLongArray;

    .line 836
    :cond_12
    iget-object v0, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketExpiryTimesMs:Landroid/util/SparseLongArray;

    invoke-virtual {v0, p2, p3, p4}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 837
    return-void
.end method

.method private logAppStandbyBucketChanged(Ljava/lang/String;III)V
    .registers 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "bucket"    # I
    .param p4, "reason"    # I

    .line 664
    const v0, 0xff00

    and-int v5, p4, v0

    and-int/lit16 v6, p4, 0xff

    const/16 v1, 0x102

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-static/range {v1 .. v6}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILjava/lang/String;IIII)V

    .line 672
    return-void
.end method

.method private printLastActionElapsedTime(Landroid/util/IndentingPrintWriter;JJ)V
    .registers 8
    .param p1, "idpw"    # Landroid/util/IndentingPrintWriter;
    .param p2, "totalElapsedTimeMS"    # J
    .param p4, "lastActionTimeMs"    # J

    .line 1011
    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-gez v0, :cond_c

    .line 1012
    const-string v0, "<uninitialized>"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_11

    .line 1014
    :cond_c
    sub-long v0, p2, p4

    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1016
    :goto_11
    return-void
.end method

.method private readAppIdleTimes(ILandroid/util/ArrayMap;)V
    .registers 29
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;",
            ">;)V"
        }
    .end annotation

    .line 712
    .local p2, "userHistory":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;>;"
    move-object/from16 v1, p0

    move/from16 v2, p1

    const-string v3, "Unable to read app idle file for user "

    const-string v4, "AppIdleHistory"

    const/4 v5, 0x0

    .line 714
    .local v5, "fis":Ljava/io/FileInputStream;
    :try_start_9
    new-instance v0, Landroid/util/AtomicFile;

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/usage/AppIdleHistory;->getUserFile(I)Ljava/io/File;

    move-result-object v6

    invoke-direct {v0, v6}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    move-object v6, v0

    .line 715
    .local v6, "appIdleFile":Landroid/util/AtomicFile;
    invoke-virtual {v6}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v0

    move-object v5, v0

    .line 716
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    move-object v7, v0

    .line 717
    .local v7, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v5, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 720
    :goto_26
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    move v8, v0

    .local v8, "type":I
    const/4 v9, 0x1

    const/4 v10, 0x2

    if-eq v0, v10, :cond_32

    if-eq v8, v9, :cond_32

    goto :goto_26

    .line 725
    :cond_32
    if-eq v8, v10, :cond_4c

    .line 726
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_48} :catch_1ae
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_48} :catch_1ae
    .catchall {:try_start_9 .. :try_end_48} :catchall_1ac

    .line 808
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 727
    return-void

    .line 729
    :cond_4c
    :try_start_4c
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v11, "packages"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_57} :catch_1ae
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4c .. :try_end_57} :catch_1ae
    .catchall {:try_start_4c .. :try_end_57} :catchall_1ac

    if-nez v0, :cond_5d

    .line 808
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 730
    return-void

    .line 732
    :cond_5d
    :try_start_5d
    const-string/jumbo v0, "version"

    const/4 v11, 0x0

    invoke-direct {v1, v7, v0, v11}, Lcom/android/server/usage/AppIdleHistory;->getIntValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v0

    move v11, v0

    .line 733
    .local v11, "version":I
    :goto_66
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    move v8, v0

    if-eq v0, v9, :cond_1a6

    .line 734
    if-ne v8, v10, :cond_198

    .line 735
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    move-object v12, v0

    .line 736
    .local v12, "name":Ljava/lang/String;
    const-string/jumbo v0, "package"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_190

    .line 737
    const-string/jumbo v0, "name"

    const/4 v13, 0x0

    invoke-interface {v7, v13, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v14, v0

    .line 738
    .local v14, "packageName":Ljava/lang/String;
    new-instance v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    invoke-direct {v0}, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;-><init>()V

    move-object v15, v0

    .line 739
    .local v15, "appUsageHistory":Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    const-string v0, "elapsedIdleTime"

    .line 740
    invoke-interface {v7, v13, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    iput-wide v9, v15, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedElapsedTime:J

    .line 741
    const-string v0, "lastUsedByUserElapsedTime"

    iget-wide v9, v15, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedElapsedTime:J

    invoke-direct {v1, v7, v0, v9, v10}, Lcom/android/server/usage/AppIdleHistory;->getLongValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v9

    iput-wide v9, v15, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedByUserElapsedTime:J

    .line 744
    const-string/jumbo v0, "screenIdleTime"

    .line 745
    invoke-interface {v7, v13, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    iput-wide v9, v15, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedScreenTime:J

    .line 746
    const-string v0, "lastPredictedTime"

    const-wide/16 v9, 0x0

    move-object/from16 v17, v14

    .end local v14    # "packageName":Ljava/lang/String;
    .local v17, "packageName":Ljava/lang/String;
    invoke-direct {v1, v7, v0, v9, v10}, Lcom/android/server/usage/AppIdleHistory;->getLongValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v13

    iput-wide v13, v15, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastPredictedTime:J

    .line 748
    const-string v0, "appLimitBucket"

    const/4 v13, 0x0

    invoke-interface {v7, v13, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v13, v0

    .line 750
    .local v13, "currentBucketString":Ljava/lang/String;
    if-nez v13, :cond_c8

    .line 751
    const/16 v0, 0xa

    goto :goto_cc

    .line 752
    :cond_c8
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :goto_cc
    iput v0, v15, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    .line 753
    const-string v0, "bucketReason"

    .line 754
    const/4 v14, 0x0

    invoke-interface {v7, v14, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v14, v0

    .line 755
    .local v14, "bucketingReason":Ljava/lang/String;
    const-string v0, "lastJobRunTime"

    const-wide/high16 v9, -0x8000000000000000L

    invoke-direct {v1, v7, v0, v9, v10}, Lcom/android/server/usage/AppIdleHistory;->getLongValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v9

    iput-wide v9, v15, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastJobRunTime:J

    .line 757
    const/16 v0, 0x100

    iput v0, v15, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I
    :try_end_e4
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_e4} :catch_1ae
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5d .. :try_end_e4} :catch_1ae
    .catchall {:try_start_5d .. :try_end_e4} :catchall_1ac

    .line 758
    const/16 v9, 0x10

    if-eqz v14, :cond_f6

    .line 760
    nop

    .line 761
    :try_start_e9
    invoke-static {v14, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v15, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I
    :try_end_ef
    .catch Ljava/lang/NumberFormatException; {:try_start_e9 .. :try_end_ef} :catch_f0
    .catch Ljava/io/IOException; {:try_start_e9 .. :try_end_ef} :catch_1ae
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_e9 .. :try_end_ef} :catch_1ae
    .catchall {:try_start_e9 .. :try_end_ef} :catchall_1ac

    .line 764
    goto :goto_f6

    .line 762
    :catch_f0
    move-exception v0

    .line 763
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    :try_start_f1
    const-string v10, "Unable to read bucketing reason"

    invoke-static {v4, v10, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 766
    .end local v0    # "nfe":Ljava/lang/NumberFormatException;
    :cond_f6
    :goto_f6
    const-string v0, "lastRestrictionAttemptElapsedTime"

    .line 767
    move-object/from16 v20, v12

    move-object/from16 v21, v13

    const-wide/16 v9, 0x0

    .end local v12    # "name":Ljava/lang/String;
    .end local v13    # "currentBucketString":Ljava/lang/String;
    .local v20, "name":Ljava/lang/String;
    .local v21, "currentBucketString":Ljava/lang/String;
    invoke-direct {v1, v7, v0, v9, v10}, Lcom/android/server/usage/AppIdleHistory;->getLongValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v12

    iput-wide v12, v15, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastRestrictAttemptElapsedTime:J

    .line 768
    const-string v0, "lastRestrictionAttemptReason"

    const/4 v9, 0x0

    invoke-interface {v7, v9, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_10b
    .catch Ljava/io/IOException; {:try_start_f1 .. :try_end_10b} :catch_1ae
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_f1 .. :try_end_10b} :catch_1ae
    .catchall {:try_start_f1 .. :try_end_10b} :catchall_1ac

    move-object v9, v0

    .line 770
    .local v9, "lastRestrictReason":Ljava/lang/String;
    if-eqz v9, :cond_11e

    .line 772
    nop

    .line 773
    const/16 v10, 0x10

    :try_start_111
    invoke-static {v9, v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, v15, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastRestrictReason:I
    :try_end_117
    .catch Ljava/lang/NumberFormatException; {:try_start_111 .. :try_end_117} :catch_118
    .catch Ljava/io/IOException; {:try_start_111 .. :try_end_117} :catch_1ae
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_111 .. :try_end_117} :catch_1ae
    .catchall {:try_start_111 .. :try_end_117} :catchall_1ac

    .line 776
    goto :goto_11e

    .line 774
    :catch_118
    move-exception v0

    .line 775
    .restart local v0    # "nfe":Ljava/lang/NumberFormatException;
    :try_start_119
    const-string v10, "Unable to read last restrict reason"

    invoke-static {v4, v10, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 778
    .end local v0    # "nfe":Ljava/lang/NumberFormatException;
    :cond_11e
    :goto_11e
    const-string/jumbo v0, "nextEstimatedAppLaunchTime"

    move v10, v8

    move-object/from16 v16, v9

    const-wide/16 v12, 0x0

    .end local v8    # "type":I
    .end local v9    # "lastRestrictReason":Ljava/lang/String;
    .local v10, "type":I
    .local v16, "lastRestrictReason":Ljava/lang/String;
    invoke-direct {v1, v7, v0, v12, v13}, Lcom/android/server/usage/AppIdleHistory;->getLongValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v8

    iput-wide v8, v15, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->nextEstimatedLaunchTime:J

    .line 780
    const/4 v0, -0x1

    iput v0, v15, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastInformedBucket:I

    .line 781
    move-object/from16 v8, p2

    move-object/from16 v9, v17

    .end local v17    # "packageName":Ljava/lang/String;
    .local v9, "packageName":Ljava/lang/String;
    invoke-virtual {v8, v9, v15}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 783
    const/4 v12, 0x1

    if-lt v11, v12, :cond_15b

    .line 784
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 785
    .local v0, "outerDepth":I
    :goto_13d
    invoke-static {v7, v0}, Lcom/android/internal/util/jobs/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v13

    if-eqz v13, :cond_156

    .line 786
    const-string v13, "expiryTimes"

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_154

    .line 787
    invoke-direct {v1, v7, v15}, Lcom/android/server/usage/AppIdleHistory;->readBucketExpiryTimes(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;)V

    const/4 v12, 0x1

    goto :goto_13d

    .line 786
    :cond_154
    const/4 v12, 0x1

    goto :goto_13d

    .line 790
    .end local v0    # "outerDepth":I
    :cond_156
    move-object/from16 v17, v6

    move-object/from16 v18, v7

    goto :goto_197

    .line 791
    :cond_15b
    const-string v0, "activeTimeoutTime"

    const-wide/16 v12, 0x0

    invoke-direct {v1, v7, v0, v12, v13}, Lcom/android/server/usage/AppIdleHistory;->getLongValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v18

    move-wide/from16 v22, v18

    .line 793
    .local v22, "bucketActiveTimeoutTime":J
    const-string/jumbo v0, "workingSetTimeoutTime"

    invoke-direct {v1, v7, v0, v12, v13}, Lcom/android/server/usage/AppIdleHistory;->getLongValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v18

    move-wide/from16 v24, v18

    .line 795
    .local v24, "bucketWorkingSetTimeoutTime":J
    move-object/from16 v17, v6

    move-object/from16 v18, v7

    move-wide/from16 v6, v22

    .end local v7    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v22    # "bucketActiveTimeoutTime":J
    .local v6, "bucketActiveTimeoutTime":J
    .local v17, "appIdleFile":Landroid/util/AtomicFile;
    .local v18, "parser":Lorg/xmlpull/v1/XmlPullParser;
    cmp-long v0, v6, v12

    if-nez v0, :cond_181

    move-object/from16 v19, v9

    move-wide/from16 v8, v24

    .end local v9    # "packageName":Ljava/lang/String;
    .end local v24    # "bucketWorkingSetTimeoutTime":J
    .local v8, "bucketWorkingSetTimeoutTime":J
    .local v19, "packageName":Ljava/lang/String;
    cmp-long v0, v8, v12

    if-eqz v0, :cond_197

    goto :goto_185

    .end local v8    # "bucketWorkingSetTimeoutTime":J
    .end local v19    # "packageName":Ljava/lang/String;
    .restart local v9    # "packageName":Ljava/lang/String;
    .restart local v24    # "bucketWorkingSetTimeoutTime":J
    :cond_181
    move-object/from16 v19, v9

    move-wide/from16 v8, v24

    .line 796
    .end local v9    # "packageName":Ljava/lang/String;
    .end local v24    # "bucketWorkingSetTimeoutTime":J
    .restart local v8    # "bucketWorkingSetTimeoutTime":J
    .restart local v19    # "packageName":Ljava/lang/String;
    :goto_185
    const/16 v12, 0xa

    invoke-direct {v1, v15, v12, v6, v7}, Lcom/android/server/usage/AppIdleHistory;->insertBucketExpiryTime(Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;IJ)V

    .line 798
    const/16 v0, 0x14

    invoke-direct {v1, v15, v0, v8, v9}, Lcom/android/server/usage/AppIdleHistory;->insertBucketExpiryTime(Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;IJ)V
    :try_end_18f
    .catch Ljava/io/IOException; {:try_start_119 .. :try_end_18f} :catch_1ae
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_119 .. :try_end_18f} :catch_1ae
    .catchall {:try_start_119 .. :try_end_18f} :catchall_1ac

    goto :goto_197

    .line 736
    .end local v10    # "type":I
    .end local v14    # "bucketingReason":Ljava/lang/String;
    .end local v15    # "appUsageHistory":Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    .end local v16    # "lastRestrictReason":Ljava/lang/String;
    .end local v17    # "appIdleFile":Landroid/util/AtomicFile;
    .end local v18    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v19    # "packageName":Ljava/lang/String;
    .end local v20    # "name":Ljava/lang/String;
    .end local v21    # "currentBucketString":Ljava/lang/String;
    .local v6, "appIdleFile":Landroid/util/AtomicFile;
    .restart local v7    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .local v8, "type":I
    .restart local v12    # "name":Ljava/lang/String;
    :cond_190
    move-object/from16 v17, v6

    move-object/from16 v18, v7

    move v10, v8

    move-object/from16 v20, v12

    .line 803
    .end local v6    # "appIdleFile":Landroid/util/AtomicFile;
    .end local v7    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v8    # "type":I
    .end local v12    # "name":Ljava/lang/String;
    .restart local v10    # "type":I
    .restart local v17    # "appIdleFile":Landroid/util/AtomicFile;
    .restart local v18    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_197
    :goto_197
    goto :goto_19d

    .line 734
    .end local v10    # "type":I
    .end local v17    # "appIdleFile":Landroid/util/AtomicFile;
    .end local v18    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6    # "appIdleFile":Landroid/util/AtomicFile;
    .restart local v7    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v8    # "type":I
    :cond_198
    move-object/from16 v17, v6

    move-object/from16 v18, v7

    move v10, v8

    .line 733
    .end local v6    # "appIdleFile":Landroid/util/AtomicFile;
    .end local v7    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v8    # "type":I
    .restart local v10    # "type":I
    .restart local v17    # "appIdleFile":Landroid/util/AtomicFile;
    .restart local v18    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :goto_19d
    move v8, v10

    move-object/from16 v6, v17

    move-object/from16 v7, v18

    const/4 v9, 0x1

    const/4 v10, 0x2

    goto/16 :goto_66

    .end local v10    # "type":I
    .end local v17    # "appIdleFile":Landroid/util/AtomicFile;
    .end local v18    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6    # "appIdleFile":Landroid/util/AtomicFile;
    .restart local v7    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v8    # "type":I
    :cond_1a6
    move-object/from16 v17, v6

    move-object/from16 v18, v7

    move v10, v8

    .line 808
    .end local v6    # "appIdleFile":Landroid/util/AtomicFile;
    .end local v7    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v8    # "type":I
    .end local v11    # "version":I
    goto :goto_1c4

    :catchall_1ac
    move-exception v0

    goto :goto_1c9

    .line 805
    :catch_1ae
    move-exception v0

    .line 806
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1af
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1c3
    .catchall {:try_start_1af .. :try_end_1c3} :catchall_1ac

    .line 808
    nop

    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1c4
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 809
    nop

    .line 810
    return-void

    .line 808
    :goto_1c9
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 809
    throw v0
.end method

.method private readBucketExpiryTimes(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;)V
    .registers 8
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "appUsageHistory"    # Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 814
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 815
    .local v0, "depth":I
    :cond_4
    :goto_4
    invoke-static {p1, v0}, Lcom/android/internal/util/jobs/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 816
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "item"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 817
    const-string v1, "bucket"

    const/4 v2, -0x1

    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/usage/AppIdleHistory;->getIntValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v1

    .line 818
    .local v1, "bucket":I
    if-ne v1, v2, :cond_27

    .line 819
    const-string v2, "AppIdleHistory"

    const-string v3, "Error reading the buckets expiry times"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    goto :goto_4

    .line 822
    :cond_27
    const-wide/16 v2, 0x0

    const-string v4, "expiry"

    invoke-direct {p0, p1, v4, v2, v3}, Lcom/android/server/usage/AppIdleHistory;->getLongValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v2

    .line 823
    .local v2, "expiryTimeMs":J
    invoke-direct {p0, p2, v1, v2, v3}, Lcom/android/server/usage/AppIdleHistory;->insertBucketExpiryTime(Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;IJ)V

    .line 824
    .end local v1    # "bucket":I
    .end local v2    # "expiryTimeMs":J
    goto :goto_4

    .line 826
    :cond_33
    return-void
.end method

.method private readScreenOnTime()V
    .registers 5

    .line 241
    invoke-virtual {p0}, Lcom/android/server/usage/AppIdleHistory;->getScreenOnTimeFile()Ljava/io/File;

    move-result-object v0

    .line 242
    .local v0, "screenOnTimeFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 244
    :try_start_a
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 245
    .local v1, "reader":Ljava/io/BufferedReader;
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/usage/AppIdleHistory;->mScreenOnDuration:J

    .line 246
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/usage/AppIdleHistory;->mElapsedDuration:J

    .line 247
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_2b} :catch_2c
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_2b} :catch_2c

    .end local v1    # "reader":Ljava/io/BufferedReader;
    goto :goto_2d

    .line 248
    :catch_2c
    move-exception v1

    .line 249
    :goto_2d
    goto :goto_31

    .line 251
    :cond_2e
    invoke-direct {p0}, Lcom/android/server/usage/AppIdleHistory;->writeScreenOnTime()V

    .line 253
    :goto_31
    return-void
.end method

.method private removeElapsedExpiryTimes(Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;J)V
    .registers 7
    .param p1, "appUsageHistory"    # Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    .param p2, "elapsedTimeMs"    # J

    .line 343
    iget-object v0, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketExpiryTimesMs:Landroid/util/SparseLongArray;

    if-nez v0, :cond_5

    .line 344
    return-void

    .line 346
    :cond_5
    iget-object v0, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketExpiryTimesMs:Landroid/util/SparseLongArray;

    invoke-virtual {v0}, Landroid/util/SparseLongArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_d
    if-ltz v0, :cond_21

    .line 347
    iget-object v1, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketExpiryTimesMs:Landroid/util/SparseLongArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v1

    cmp-long v1, v1, p2

    if-gez v1, :cond_1e

    .line 348
    iget-object v1, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketExpiryTimesMs:Landroid/util/SparseLongArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseLongArray;->removeAt(I)V

    .line 346
    :cond_1e
    add-int/lit8 v0, v0, -0x1

    goto :goto_d

    .line 351
    .end local v0    # "i":I
    :cond_21
    return-void
.end method

.method private writeScreenOnTime()V
    .registers 7

    .line 256
    const-string v0, "\n"

    new-instance v1, Landroid/util/AtomicFile;

    invoke-virtual {p0}, Lcom/android/server/usage/AppIdleHistory;->getScreenOnTimeFile()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 257
    .local v1, "screenOnTimeFile":Landroid/util/AtomicFile;
    const/4 v2, 0x0

    .line 259
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_c
    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3

    move-object v2, v3

    .line 260
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, p0, Lcom/android/server/usage/AppIdleHistory;->mScreenOnDuration:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/server/usage/AppIdleHistory;->mElapsedDuration:J

    .line 261
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 260
    invoke-virtual {v2, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 262
    invoke-virtual {v1, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_40} :catch_41

    .line 265
    goto :goto_45

    .line 263
    :catch_41
    move-exception v0

    .line 264
    .local v0, "ioe":Ljava/io/IOException;
    invoke-virtual {v1, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 266
    .end local v0    # "ioe":Ljava/io/IOException;
    :goto_45
    return-void
.end method


# virtual methods
.method clearLastUsedTimestamps(Ljava/lang/String;I)V
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 692
    invoke-direct {p0, p2}, Lcom/android/server/usage/AppIdleHistory;->getUserHistory(I)Landroid/util/ArrayMap;

    move-result-object v6

    .line 693
    .local v6, "userHistory":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;>;"
    nop

    .line 694
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 693
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, v6

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/usage/AppIdleHistory;->getPackageHistory(Landroid/util/ArrayMap;Ljava/lang/String;JZ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object v0

    .line 695
    .local v0, "appUsageHistory":Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    if-eqz v0, :cond_1c

    .line 696
    const-wide/32 v1, -0x80000000

    iput-wide v1, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedByUserElapsedTime:J

    .line 697
    iput-wide v1, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedElapsedTime:J

    .line 698
    iput-wide v1, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedScreenTime:J

    .line 700
    :cond_1c
    return-void
.end method

.method public clearUsage(Ljava/lang/String;I)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 604
    invoke-direct {p0, p2}, Lcom/android/server/usage/AppIdleHistory;->getUserHistory(I)Landroid/util/ArrayMap;

    move-result-object v0

    .line 605
    .local v0, "userHistory":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;>;"
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 606
    return-void
.end method

.method public dumpUsers(Landroid/util/IndentingPrintWriter;[ILjava/util/List;)V
    .registers 7
    .param p1, "idpw"    # Landroid/util/IndentingPrintWriter;
    .param p2, "userIds"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/IndentingPrintWriter;",
            "[I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 942
    .local p3, "pkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    array-length v0, p2

    .line 943
    .local v0, "numUsers":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v0, :cond_f

    .line 944
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 945
    aget v2, p2, v1

    invoke-direct {p0, p1, v2, p3}, Lcom/android/server/usage/AppIdleHistory;->dumpUser(Landroid/util/IndentingPrintWriter;ILjava/util/List;)V

    .line 943
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 947
    .end local v1    # "i":I
    :cond_f
    return-void
.end method

.method public getAppStandbyBucket(Ljava/lang/String;IJ)I
    .registers 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "elapsedRealtime"    # J

    .line 558
    invoke-direct {p0, p2}, Lcom/android/server/usage/AppIdleHistory;->getUserHistory(I)Landroid/util/ArrayMap;

    move-result-object v6

    .line 559
    .local v6, "userHistory":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;>;"
    nop

    .line 560
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, v6

    move-object v2, p1

    move-wide v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/usage/AppIdleHistory;->getPackageHistory(Landroid/util/ArrayMap;Ljava/lang/String;JZ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object v0

    .line 561
    .local v0, "appUsageHistory":Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    if-nez v0, :cond_13

    const/16 v1, 0x32

    goto :goto_15

    :cond_13
    iget v1, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    :goto_15
    return v1
.end method

.method public getAppStandbyBuckets(IZ)Ljava/util/ArrayList;
    .registers 10
    .param p1, "userId"    # I
    .param p2, "appIdleEnabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/ArrayList<",
            "Landroid/app/usage/AppStandbyInfo;",
            ">;"
        }
    .end annotation

    .line 565
    invoke-direct {p0, p1}, Lcom/android/server/usage/AppIdleHistory;->getUserHistory(I)Landroid/util/ArrayMap;

    move-result-object v0

    .line 566
    .local v0, "userHistory":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;>;"
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 567
    .local v1, "size":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 568
    .local v2, "buckets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/usage/AppStandbyInfo;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_e
    if-ge v3, v1, :cond_2e

    .line 569
    new-instance v4, Landroid/app/usage/AppStandbyInfo;

    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 570
    if-eqz p2, :cond_23

    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    iget v6, v6, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    goto :goto_25

    :cond_23
    const/16 v6, 0xa

    :goto_25
    invoke-direct {v4, v5, v6}, Landroid/app/usage/AppStandbyInfo;-><init>(Ljava/lang/String;I)V

    .line 569
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 568
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 572
    .end local v3    # "i":I
    :cond_2e
    return-object v2
.end method

.method public getAppStandbyReason(Ljava/lang/String;IJ)I
    .registers 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "elapsedRealtime"    # J

    .line 576
    invoke-direct {p0, p2}, Lcom/android/server/usage/AppIdleHistory;->getUserHistory(I)Landroid/util/ArrayMap;

    move-result-object v6

    .line 577
    .local v6, "userHistory":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;>;"
    nop

    .line 578
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, v6

    move-object v2, p1

    move-wide v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/usage/AppIdleHistory;->getPackageHistory(Landroid/util/ArrayMap;Ljava/lang/String;JZ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object v0

    .line 579
    .local v0, "appUsageHistory":Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    if-eqz v0, :cond_13

    iget v1, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    return v1
.end method

.method public getAppUsageHistory(Ljava/lang/String;IJ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    .registers 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "elapsedRealtime"    # J

    .line 421
    invoke-direct {p0, p2}, Lcom/android/server/usage/AppIdleHistory;->getUserHistory(I)Landroid/util/ArrayMap;

    move-result-object v6

    .line 422
    .local v6, "userHistory":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;>;"
    nop

    .line 423
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, v6

    move-object v2, p1

    move-wide v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/usage/AppIdleHistory;->getPackageHistory(Landroid/util/ArrayMap;Ljava/lang/String;JZ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object v0

    .line 424
    .local v0, "appUsageHistory":Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    return-object v0
.end method

.method getBucketExpiryTimeMs(Ljava/lang/String;IIJ)J
    .registers 13
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "bucket"    # I
    .param p4, "elapsedRealtimeMs"    # J

    .line 676
    invoke-direct {p0, p2}, Lcom/android/server/usage/AppIdleHistory;->getUserHistory(I)Landroid/util/ArrayMap;

    move-result-object v6

    .line 677
    .local v6, "userHistory":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;>;"
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, v6

    move-object v2, p1

    move-wide v3, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/usage/AppIdleHistory;->getPackageHistory(Landroid/util/ArrayMap;Ljava/lang/String;JZ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object v0

    .line 679
    .local v0, "appUsageHistory":Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1d

    iget-object v3, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketExpiryTimesMs:Landroid/util/SparseLongArray;

    if-nez v3, :cond_16

    goto :goto_1d

    .line 682
    :cond_16
    iget-object v3, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketExpiryTimesMs:Landroid/util/SparseLongArray;

    invoke-virtual {v3, p3, v1, v2}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide v1

    return-wide v1

    .line 680
    :cond_1d
    :goto_1d
    return-wide v1
.end method

.method public getElapsedTime(J)J
    .registers 7
    .param p1, "elapsedRealtime"    # J

    .line 583
    iget-wide v0, p0, Lcom/android/server/usage/AppIdleHistory;->mElapsedSnapshot:J

    sub-long v0, p1, v0

    iget-wide v2, p0, Lcom/android/server/usage/AppIdleHistory;->mElapsedDuration:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getEstimatedLaunchTime(Ljava/lang/String;IJ)J
    .registers 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "nowElapsed"    # J

    .line 515
    invoke-direct {p0, p2}, Lcom/android/server/usage/AppIdleHistory;->getUserHistory(I)Landroid/util/ArrayMap;

    move-result-object v6

    .line 516
    .local v6, "userHistory":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;>;"
    nop

    .line 517
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, v6

    move-object v2, p1

    move-wide v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/usage/AppIdleHistory;->getPackageHistory(Landroid/util/ArrayMap;Ljava/lang/String;JZ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object v0

    .line 519
    .local v0, "appUsageHistory":Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    if-eqz v0, :cond_1e

    iget-wide v1, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->nextEstimatedLaunchTime:J

    .line 520
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gez v1, :cond_1b

    goto :goto_1e

    .line 523
    :cond_1b
    iget-wide v1, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->nextEstimatedLaunchTime:J

    return-wide v1

    .line 521
    :cond_1e
    :goto_1e
    const-wide v1, 0x7fffffffffffffffL

    return-wide v1
.end method

.method public getScreenOnTime(J)J
    .registers 7
    .param p1, "elapsedRealtime"    # J

    .line 228
    iget-wide v0, p0, Lcom/android/server/usage/AppIdleHistory;->mScreenOnDuration:J

    .line 229
    .local v0, "screenOnTime":J
    iget-boolean v2, p0, Lcom/android/server/usage/AppIdleHistory;->mScreenOn:Z

    if-eqz v2, :cond_b

    .line 230
    iget-wide v2, p0, Lcom/android/server/usage/AppIdleHistory;->mScreenOnSnapshot:J

    sub-long v2, p1, v2

    add-long/2addr v0, v2

    .line 232
    :cond_b
    return-wide v0
.end method

.method getScreenOnTimeFile()Ljava/io/File;
    .registers 4

    .line 237
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/usage/AppIdleHistory;->mStorageDir:Ljava/io/File;

    const-string/jumbo v2, "screen_on_time"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method getThresholdIndex(Ljava/lang/String;IJ[J[J)I
    .registers 16
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "elapsedRealtime"    # J
    .param p5, "screenTimeThresholds"    # [J
    .param p6, "elapsedTimeThresholds"    # [J

    .line 633
    invoke-direct {p0, p2}, Lcom/android/server/usage/AppIdleHistory;->getUserHistory(I)Landroid/util/ArrayMap;

    move-result-object v6

    .line 634
    .local v6, "userHistory":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;>;"
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, v6

    move-object v2, p1

    move-wide v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/usage/AppIdleHistory;->getPackageHistory(Landroid/util/ArrayMap;Ljava/lang/String;JZ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object v0

    .line 637
    .local v0, "appUsageHistory":Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    if-eqz v0, :cond_43

    iget-wide v1, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedElapsedTime:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-ltz v1, :cond_43

    iget-wide v1, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedScreenTime:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_1e

    goto :goto_43

    .line 642
    :cond_1e
    invoke-virtual {p0, p3, p4}, Lcom/android/server/usage/AppIdleHistory;->getScreenOnTime(J)J

    move-result-wide v1

    iget-wide v3, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedScreenTime:J

    sub-long/2addr v1, v3

    .line 643
    .local v1, "screenOnDelta":J
    invoke-virtual {p0, p3, p4}, Lcom/android/server/usage/AppIdleHistory;->getElapsedTime(J)J

    move-result-wide v3

    iget-wide v7, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedElapsedTime:J

    sub-long/2addr v3, v7

    .line 650
    .local v3, "elapsedDelta":J
    array-length v5, p5

    add-int/lit8 v5, v5, -0x1

    .local v5, "i":I
    :goto_2f
    if-ltz v5, :cond_41

    .line 651
    aget-wide v7, p5, v5

    cmp-long v7, v1, v7

    if-ltz v7, :cond_3e

    aget-wide v7, p6, v5

    cmp-long v7, v3, v7

    if-ltz v7, :cond_3e

    .line 653
    return v5

    .line 650
    :cond_3e
    add-int/lit8 v5, v5, -0x1

    goto :goto_2f

    .line 656
    .end local v5    # "i":I
    :cond_41
    const/4 v5, 0x0

    return v5

    .line 639
    .end local v1    # "screenOnDelta":J
    .end local v3    # "elapsedDelta":J
    :cond_43
    :goto_43
    const/4 v1, -0x1

    return v1
.end method

.method public getTimeSinceLastJobRun(Ljava/lang/String;IJ)J
    .registers 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "elapsedRealtime"    # J

    .line 536
    invoke-direct {p0, p2}, Lcom/android/server/usage/AppIdleHistory;->getUserHistory(I)Landroid/util/ArrayMap;

    move-result-object v6

    .line 537
    .local v6, "userHistory":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;>;"
    nop

    .line 538
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, v6

    move-object v2, p1

    move-wide v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/usage/AppIdleHistory;->getPackageHistory(Landroid/util/ArrayMap;Ljava/lang/String;JZ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object v0

    .line 540
    .local v0, "appUsageHistory":Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    if-eqz v0, :cond_21

    iget-wide v1, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastJobRunTime:J

    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v1, v1, v3

    if-nez v1, :cond_19

    goto :goto_21

    .line 543
    :cond_19
    invoke-virtual {p0, p3, p4}, Lcom/android/server/usage/AppIdleHistory;->getElapsedTime(J)J

    move-result-wide v1

    iget-wide v3, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastJobRunTime:J

    sub-long/2addr v1, v3

    return-wide v1

    .line 541
    :cond_21
    :goto_21
    const-wide v1, 0x7fffffffffffffffL

    return-wide v1
.end method

.method public getTimeSinceLastUsedByUser(Ljava/lang/String;IJ)J
    .registers 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "elapsedRealtime"    # J

    .line 547
    invoke-direct {p0, p2}, Lcom/android/server/usage/AppIdleHistory;->getUserHistory(I)Landroid/util/ArrayMap;

    move-result-object v6

    .line 548
    .local v6, "userHistory":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;>;"
    nop

    .line 549
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, v6

    move-object v2, p1

    move-wide v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/usage/AppIdleHistory;->getPackageHistory(Landroid/util/ArrayMap;Ljava/lang/String;JZ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object v0

    .line 550
    .local v0, "appUsageHistory":Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    if-eqz v0, :cond_29

    iget-wide v1, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedByUserElapsedTime:J

    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v1, v1, v3

    if-eqz v1, :cond_29

    iget-wide v1, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedByUserElapsedTime:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_21

    goto :goto_29

    .line 554
    :cond_21
    invoke-virtual {p0, p3, p4}, Lcom/android/server/usage/AppIdleHistory;->getElapsedTime(J)J

    move-result-wide v1

    iget-wide v3, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedByUserElapsedTime:J

    sub-long/2addr v1, v3

    return-wide v1

    .line 552
    :cond_29
    :goto_29
    const-wide v1, 0x7fffffffffffffffL

    return-wide v1
.end method

.method getUserFile(I)Ljava/io/File;
    .registers 7
    .param p1, "userId"    # I

    .line 687
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/usage/AppIdleHistory;->mStorageDir:Ljava/io/File;

    const-string/jumbo v4, "users"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 688
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v2, "app_idle_stats.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 687
    return-object v0
.end method

.method public isIdle(Ljava/lang/String;IJ)Z
    .registers 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "elapsedRealtime"    # J

    .line 413
    invoke-direct {p0, p2}, Lcom/android/server/usage/AppIdleHistory;->getUserHistory(I)Landroid/util/ArrayMap;

    move-result-object v6

    .line 414
    .local v6, "userHistory":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;>;"
    nop

    .line 415
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, v6

    move-object v2, p1

    move-wide v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/usage/AppIdleHistory;->getPackageHistory(Landroid/util/ArrayMap;Ljava/lang/String;JZ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object v0

    .line 416
    .local v0, "appUsageHistory":Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    iget v1, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    const/16 v2, 0x28

    if-lt v1, v2, :cond_16

    const/4 v1, 0x1

    goto :goto_17

    :cond_16
    const/4 v1, 0x0

    :goto_17
    return v1
.end method

.method noteRestrictionAttempt(Ljava/lang/String;IJI)V
    .registers 13
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "elapsedRealtime"    # J
    .param p5, "reason"    # I

    .line 502
    invoke-direct {p0, p2}, Lcom/android/server/usage/AppIdleHistory;->getUserHistory(I)Landroid/util/ArrayMap;

    move-result-object v6

    .line 503
    .local v6, "userHistory":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;>;"
    nop

    .line 504
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, v6

    move-object v2, p1

    move-wide v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/usage/AppIdleHistory;->getPackageHistory(Landroid/util/ArrayMap;Ljava/lang/String;JZ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object v0

    .line 505
    .local v0, "appUsageHistory":Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    invoke-virtual {p0, p3, p4}, Lcom/android/server/usage/AppIdleHistory;->getElapsedTime(J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastRestrictAttemptElapsedTime:J

    .line 506
    iput p5, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastRestrictReason:I

    .line 507
    return-void
.end method

.method public onUserRemoved(I)V
    .registers 3
    .param p1, "userId"    # I

    .line 409
    iget-object v0, p0, Lcom/android/server/usage/AppIdleHistory;->mIdleHistory:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 410
    return-void
.end method

.method reportUsage(Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;Ljava/lang/String;IIIJJ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    .registers 25
    .param p1, "appUsageHistory"    # Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "newBucket"    # I
    .param p5, "usageReason"    # I
    .param p6, "nowElapsedRealtimeMs"    # J
    .param p8, "expiryElapsedRealtimeMs"    # J

    .line 298
    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    move-wide/from16 v3, p6

    move-wide/from16 v5, p8

    move/from16 v7, p5

    or-int/lit16 v8, v7, 0x300

    .line 299
    .local v8, "bucketingReason":I
    invoke-static {v8}, Lcom/android/server/usage/AppStandbyController;->isUserUsage(I)Z

    move-result v9

    .line 301
    .local v9, "isUserUsage":Z
    iget v10, v1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    const/16 v11, 0x2d

    if-ne v10, v11, :cond_28

    if-nez v9, :cond_28

    iget v10, v1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I

    const v11, 0xff00

    and-int/2addr v10, v11

    const/16 v11, 0x200

    if-eq v10, v11, :cond_28

    .line 305
    const/16 v2, 0x2d

    .line 306
    .end local p4    # "newBucket":I
    .local v2, "newBucket":I
    iget v8, v1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I

    goto :goto_51

    .line 309
    .end local v2    # "newBucket":I
    .restart local p4    # "newBucket":I
    :cond_28
    cmp-long v10, v5, v3

    if-lez v10, :cond_51

    .line 311
    invoke-virtual {p0, v5, v6}, Lcom/android/server/usage/AppIdleHistory;->getElapsedTime(J)J

    move-result-wide v10

    .line 312
    .local v10, "expiryTimeMs":J
    iget-object v12, v1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketExpiryTimesMs:Landroid/util/SparseLongArray;

    if-nez v12, :cond_3b

    .line 313
    new-instance v12, Landroid/util/SparseLongArray;

    invoke-direct {v12}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v12, v1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketExpiryTimesMs:Landroid/util/SparseLongArray;

    .line 315
    :cond_3b
    iget-object v12, v1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketExpiryTimesMs:Landroid/util/SparseLongArray;

    invoke-virtual {v12, v2}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v12

    .line 316
    .local v12, "currentExpiryTimeMs":J
    iget-object v14, v1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketExpiryTimesMs:Landroid/util/SparseLongArray;

    .line 317
    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    .line 316
    invoke-virtual {v14, v2, v5, v6}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 318
    invoke-virtual {p0, v3, v4}, Lcom/android/server/usage/AppIdleHistory;->getElapsedTime(J)J

    move-result-wide v5

    invoke-direct {p0, v1, v5, v6}, Lcom/android/server/usage/AppIdleHistory;->removeElapsedExpiryTimes(Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;J)V

    .line 322
    .end local v10    # "expiryTimeMs":J
    .end local v12    # "currentExpiryTimeMs":J
    .end local p4    # "newBucket":I
    .restart local v2    # "newBucket":I
    :cond_51
    :goto_51
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-eqz v5, :cond_6c

    .line 323
    iget-wide v5, v0, Lcom/android/server/usage/AppIdleHistory;->mElapsedDuration:J

    iget-wide v10, v0, Lcom/android/server/usage/AppIdleHistory;->mElapsedSnapshot:J

    sub-long v10, v3, v10

    add-long/2addr v5, v10

    iput-wide v5, v1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedElapsedTime:J

    .line 325
    if-eqz v9, :cond_66

    .line 326
    iget-wide v5, v1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedElapsedTime:J

    iput-wide v5, v1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedByUserElapsedTime:J

    .line 328
    :cond_66
    invoke-virtual {p0, v3, v4}, Lcom/android/server/usage/AppIdleHistory;->getScreenOnTime(J)J

    move-result-wide v5

    iput-wide v5, v1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedScreenTime:J

    .line 331
    :cond_6c
    iget v5, v1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    if-lt v5, v2, :cond_85

    .line 332
    iget v5, v1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    if-le v5, v2, :cond_7e

    .line 333
    iput v2, v1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    .line 334
    move-object/from16 v5, p2

    move/from16 v6, p3

    invoke-direct {p0, v5, v6, v2, v8}, Lcom/android/server/usage/AppIdleHistory;->logAppStandbyBucketChanged(Ljava/lang/String;III)V

    goto :goto_82

    .line 332
    :cond_7e
    move-object/from16 v5, p2

    move/from16 v6, p3

    .line 336
    :goto_82
    iput v8, v1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I

    goto :goto_89

    .line 331
    :cond_85
    move-object/from16 v5, p2

    move/from16 v6, p3

    .line 339
    :goto_89
    return-object v1
.end method

.method public reportUsage(Ljava/lang/String;IIIJJ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    .registers 23
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "newBucket"    # I
    .param p4, "usageReason"    # I
    .param p5, "nowElapsedRealtimeMs"    # J
    .param p7, "expiryElapsedRealtimeMs"    # J

    .line 372
    move-object v10, p0

    move/from16 v11, p2

    invoke-direct {p0, v11}, Lcom/android/server/usage/AppIdleHistory;->getUserHistory(I)Landroid/util/ArrayMap;

    move-result-object v12

    .line 373
    .local v12, "userHistory":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;>;"
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, v12

    move-object v2, p1

    move-wide/from16 v3, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/usage/AppIdleHistory;->getPackageHistory(Landroid/util/ArrayMap;Ljava/lang/String;JZ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object v13

    .line 375
    .local v13, "history":Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    move-object v1, v13

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/usage/AppIdleHistory;->reportUsage(Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;Ljava/lang/String;IIIJJ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object v0

    return-object v0
.end method

.method public setAppStandbyBucket(Ljava/lang/String;IJII)V
    .registers 15
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "elapsedRealtime"    # J
    .param p5, "bucket"    # I
    .param p6, "reason"    # I

    .line 429
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/usage/AppIdleHistory;->setAppStandbyBucket(Ljava/lang/String;IJIIZ)V

    .line 430
    return-void
.end method

.method public setAppStandbyBucket(Ljava/lang/String;IJIIZ)V
    .registers 15
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "elapsedRealtime"    # J
    .param p5, "bucket"    # I
    .param p6, "reason"    # I
    .param p7, "resetExpiryTimes"    # Z

    .line 434
    invoke-direct {p0, p2}, Lcom/android/server/usage/AppIdleHistory;->getUserHistory(I)Landroid/util/ArrayMap;

    move-result-object v6

    .line 435
    .local v6, "userHistory":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;>;"
    nop

    .line 436
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, v6

    move-object v2, p1

    move-wide v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/usage/AppIdleHistory;->getPackageHistory(Landroid/util/ArrayMap;Ljava/lang/String;JZ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object v0

    .line 437
    .local v0, "appUsageHistory":Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    iget v1, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    if-eq v1, p5, :cond_14

    const/4 v1, 0x1

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    .line 438
    .local v1, "changed":Z
    :goto_15
    iput p5, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    .line 439
    iput p6, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I

    .line 441
    invoke-virtual {p0, p3, p4}, Lcom/android/server/usage/AppIdleHistory;->getElapsedTime(J)J

    move-result-wide v2

    .line 443
    .local v2, "elapsed":J
    const v4, 0xff00

    and-int/2addr v4, p6

    const/16 v5, 0x500

    if-ne v4, v5, :cond_29

    .line 444
    iput-wide v2, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastPredictedTime:J

    .line 445
    iput p5, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastPredictedBucket:I

    .line 447
    :cond_29
    if-eqz p7, :cond_34

    iget-object v4, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketExpiryTimesMs:Landroid/util/SparseLongArray;

    if-eqz v4, :cond_34

    .line 448
    iget-object v4, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketExpiryTimesMs:Landroid/util/SparseLongArray;

    invoke-virtual {v4}, Landroid/util/SparseLongArray;->clear()V

    .line 450
    :cond_34
    if-eqz v1, :cond_39

    .line 451
    invoke-direct {p0, p1, p2, p5, p6}, Lcom/android/server/usage/AppIdleHistory;->logAppStandbyBucketChanged(Ljava/lang/String;III)V

    .line 453
    :cond_39
    return-void
.end method

.method public setEstimatedLaunchTime(Ljava/lang/String;IJJ)V
    .registers 14
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "nowElapsed"    # J
    .param p5, "launchTime"    # J

    .line 471
    invoke-direct {p0, p2}, Lcom/android/server/usage/AppIdleHistory;->getUserHistory(I)Landroid/util/ArrayMap;

    move-result-object v6

    .line 472
    .local v6, "userHistory":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;>;"
    nop

    .line 473
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, v6

    move-object v2, p1

    move-wide v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/usage/AppIdleHistory;->getPackageHistory(Landroid/util/ArrayMap;Ljava/lang/String;JZ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object v0

    .line 474
    .local v0, "appUsageHistory":Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    iput-wide p5, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->nextEstimatedLaunchTime:J

    .line 475
    return-void
.end method

.method public setIdle(Ljava/lang/String;IZJ)I
    .registers 16
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "idle"    # Z
    .param p4, "elapsedRealtime"    # J

    .line 590
    if-eqz p3, :cond_7

    .line 591
    const/16 v0, 0x28

    .line 592
    .local v0, "newBucket":I
    const/16 v1, 0x400

    .local v1, "reason":I
    goto :goto_b

    .line 594
    .end local v0    # "newBucket":I
    .end local v1    # "reason":I
    :cond_7
    const/16 v0, 0xa

    .line 596
    .restart local v0    # "newBucket":I
    const/16 v1, 0x303

    .line 598
    .restart local v1    # "reason":I
    :goto_b
    const/4 v9, 0x0

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-wide v5, p4

    move v7, v0

    move v8, v1

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/usage/AppIdleHistory;->setAppStandbyBucket(Ljava/lang/String;IJIIZ)V

    .line 600
    return v0
.end method

.method public setLastJobRunTime(Ljava/lang/String;IJ)V
    .registers 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "elapsedRealtime"    # J

    .line 485
    invoke-direct {p0, p2}, Lcom/android/server/usage/AppIdleHistory;->getUserHistory(I)Landroid/util/ArrayMap;

    move-result-object v6

    .line 486
    .local v6, "userHistory":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;>;"
    nop

    .line 487
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, v6

    move-object v2, p1

    move-wide v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/usage/AppIdleHistory;->getPackageHistory(Landroid/util/ArrayMap;Ljava/lang/String;JZ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object v0

    .line 488
    .local v0, "appUsageHistory":Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    invoke-virtual {p0, p3, p4}, Lcom/android/server/usage/AppIdleHistory;->getElapsedTime(J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastJobRunTime:J

    .line 489
    return-void
.end method

.method shouldInformListeners(Ljava/lang/String;IJI)Z
    .registers 13
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "elapsedRealtime"    # J
    .param p5, "bucket"    # I

    .line 610
    invoke-direct {p0, p2}, Lcom/android/server/usage/AppIdleHistory;->getUserHistory(I)Landroid/util/ArrayMap;

    move-result-object v6

    .line 611
    .local v6, "userHistory":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;>;"
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, v6

    move-object v2, p1

    move-wide v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/usage/AppIdleHistory;->getPackageHistory(Landroid/util/ArrayMap;Ljava/lang/String;JZ)Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    move-result-object v0

    .line 613
    .local v0, "appUsageHistory":Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    iget v1, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastInformedBucket:I

    if-eq v1, p5, :cond_15

    .line 614
    iput p5, v0, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastInformedBucket:I

    .line 615
    const/4 v1, 0x1

    return v1

    .line 617
    :cond_15
    const/4 v1, 0x0

    return v1
.end method

.method public updateDisplay(ZJ)V
    .registers 8
    .param p1, "screenOn"    # Z
    .param p2, "elapsedRealtime"    # J

    .line 212
    iget-boolean v0, p0, Lcom/android/server/usage/AppIdleHistory;->mScreenOn:Z

    if-ne p1, v0, :cond_5

    return-void

    .line 214
    :cond_5
    iput-boolean p1, p0, Lcom/android/server/usage/AppIdleHistory;->mScreenOn:Z

    .line 215
    if-eqz p1, :cond_c

    .line 216
    iput-wide p2, p0, Lcom/android/server/usage/AppIdleHistory;->mScreenOnSnapshot:J

    goto :goto_20

    .line 218
    :cond_c
    iget-wide v0, p0, Lcom/android/server/usage/AppIdleHistory;->mScreenOnDuration:J

    iget-wide v2, p0, Lcom/android/server/usage/AppIdleHistory;->mScreenOnSnapshot:J

    sub-long v2, p2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/usage/AppIdleHistory;->mScreenOnDuration:J

    .line 219
    iget-wide v0, p0, Lcom/android/server/usage/AppIdleHistory;->mElapsedDuration:J

    iget-wide v2, p0, Lcom/android/server/usage/AppIdleHistory;->mElapsedSnapshot:J

    sub-long v2, p2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/usage/AppIdleHistory;->mElapsedDuration:J

    .line 220
    iput-wide p2, p0, Lcom/android/server/usage/AppIdleHistory;->mElapsedSnapshot:J

    .line 225
    :goto_20
    return-void
.end method

.method public updateLastPrediction(Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;JI)V
    .registers 5
    .param p1, "app"    # Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    .param p2, "elapsedTimeAdjusted"    # J
    .param p4, "bucket"    # I

    .line 462
    iput-wide p2, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastPredictedTime:J

    .line 463
    iput p4, p1, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastPredictedBucket:I

    .line 464
    return-void
.end method

.method public userFileExists(I)Z
    .registers 3
    .param p1, "userId"    # I

    .line 708
    invoke-virtual {p0, p1}, Lcom/android/server/usage/AppIdleHistory;->getUserFile(I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public writeAppIdleDurations()V
    .registers 7

    .line 272
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 274
    .local v0, "elapsedRealtime":J
    iget-wide v2, p0, Lcom/android/server/usage/AppIdleHistory;->mElapsedDuration:J

    iget-wide v4, p0, Lcom/android/server/usage/AppIdleHistory;->mElapsedSnapshot:J

    sub-long v4, v0, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/usage/AppIdleHistory;->mElapsedDuration:J

    .line 275
    iput-wide v0, p0, Lcom/android/server/usage/AppIdleHistory;->mElapsedSnapshot:J

    .line 276
    invoke-direct {p0}, Lcom/android/server/usage/AppIdleHistory;->writeScreenOnTime()V

    .line 277
    return-void
.end method

.method public writeAppIdleTimes(IJ)V
    .registers 28
    .param p1, "userId"    # I
    .param p2, "elapsedRealtimeMs"    # J

    .line 859
    const-string v0, "item"

    const-string v1, "expiryTimes"

    const-string/jumbo v2, "package"

    const-string/jumbo v3, "packages"

    const-string v4, "AppIdleHistory"

    const/4 v5, 0x0

    .line 860
    .local v5, "fos":Ljava/io/FileOutputStream;
    new-instance v6, Landroid/util/AtomicFile;

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/usage/AppIdleHistory;->getUserFile(I)Ljava/io/File;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 862
    .local v6, "appIdleFile":Landroid/util/AtomicFile;
    :try_start_16
    invoke-virtual {v6}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v7

    move-object v5, v7

    .line 863
    new-instance v7, Ljava/io/BufferedOutputStream;

    invoke-direct {v7, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 865
    .local v7, "bos":Ljava/io/BufferedOutputStream;
    new-instance v8, Lcom/android/internal/util/jobs/FastXmlSerializer;

    invoke-direct {v8}, Lcom/android/internal/util/jobs/FastXmlSerializer;-><init>()V

    .line 866
    .local v8, "xml":Lcom/android/internal/util/jobs/FastXmlSerializer;
    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v9}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v7, v9}, Lcom/android/internal/util/jobs/FastXmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 867
    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v8, v11, v10}, Lcom/android/internal/util/jobs/FastXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 868
    const-string v10, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-virtual {v8, v10, v9}, Lcom/android/internal/util/jobs/FastXmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 870
    invoke-virtual {v8, v11, v3}, Lcom/android/internal/util/jobs/FastXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 871
    const-string/jumbo v10, "version"

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v11, v10, v9}, Lcom/android/internal/util/jobs/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 873
    move-object/from16 v9, p0

    move-wide/from16 v12, p2

    invoke-virtual {v9, v12, v13}, Lcom/android/server/usage/AppIdleHistory;->getElapsedTime(J)J

    move-result-wide v14

    .line 874
    .local v14, "elapsedTimeMs":J
    invoke-direct/range {p0 .. p1}, Lcom/android/server/usage/AppIdleHistory;->getUserHistory(I)Landroid/util/ArrayMap;

    move-result-object v10

    .line 875
    .local v10, "userHistory":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;>;"
    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    move-result v16

    move/from16 v17, v16

    .line 876
    .local v17, "N":I
    const/16 v16, 0x0

    move/from16 v11, v16

    .local v11, "i":I
    :goto_5f
    move-object/from16 v16, v7

    move/from16 v7, v17

    .end local v17    # "N":I
    .local v7, "N":I
    .local v16, "bos":Ljava/io/BufferedOutputStream;
    if-ge v11, v7, :cond_18f

    .line 877
    invoke-virtual {v10, v11}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    move-object/from16 v18, v17

    .line 879
    .local v18, "packageName":Ljava/lang/String;
    move/from16 v17, v7

    move-object/from16 v7, v18

    .end local v18    # "packageName":Ljava/lang/String;
    .local v7, "packageName":Ljava/lang/String;
    .restart local v17    # "N":I
    if-nez v7, :cond_7c

    .line 880
    const-string v9, "Skipping App Idle write for unexpected null package"

    invoke-static {v4, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    move-object/from16 v18, v10

    goto/16 :goto_183

    .line 883
    :cond_7c
    invoke-virtual {v10, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;

    .line 884
    .local v9, "history":Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    move-object/from16 v18, v10

    const/4 v10, 0x0

    .end local v10    # "userHistory":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;>;"
    .local v18, "userHistory":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;>;"
    invoke-virtual {v8, v10, v2}, Lcom/android/internal/util/jobs/FastXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 885
    const-string/jumbo v10, "name"

    const/4 v12, 0x0

    invoke-virtual {v8, v12, v10, v7}, Lcom/android/internal/util/jobs/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 886
    const-string v10, "elapsedIdleTime"

    iget-wide v12, v9, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedElapsedTime:J

    .line 887
    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    .line 886
    const/4 v13, 0x0

    invoke-virtual {v8, v13, v10, v12}, Lcom/android/internal/util/jobs/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 888
    const-string v10, "lastUsedByUserElapsedTime"

    iget-wide v12, v9, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedByUserElapsedTime:J

    .line 889
    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    .line 888
    const/4 v13, 0x0

    invoke-virtual {v8, v13, v10, v12}, Lcom/android/internal/util/jobs/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 890
    const-string/jumbo v10, "screenIdleTime"

    iget-wide v12, v9, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastUsedScreenTime:J

    .line 891
    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    .line 890
    const/4 v13, 0x0

    invoke-virtual {v8, v13, v10, v12}, Lcom/android/internal/util/jobs/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 892
    const-string v10, "lastPredictedTime"

    iget-wide v12, v9, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastPredictedTime:J

    .line 893
    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    .line 892
    const/4 v13, 0x0

    invoke-virtual {v8, v13, v10, v12}, Lcom/android/internal/util/jobs/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 894
    const-string v10, "appLimitBucket"

    iget v12, v9, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->currentBucket:I

    .line 895
    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    .line 894
    const/4 v13, 0x0

    invoke-virtual {v8, v13, v10, v12}, Lcom/android/internal/util/jobs/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 896
    const-string v10, "bucketReason"

    iget v12, v9, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketingReason:I

    .line 897
    invoke-static {v12}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v12

    .line 896
    const/4 v13, 0x0

    invoke-virtual {v8, v13, v10, v12}, Lcom/android/internal/util/jobs/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 898
    iget-wide v12, v9, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastJobRunTime:J

    const-wide/high16 v19, -0x8000000000000000L

    cmp-long v10, v12, v19

    if-eqz v10, :cond_ec

    .line 899
    const-string v10, "lastJobRunTime"

    iget-wide v12, v9, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastJobRunTime:J

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v8, v13, v10, v12}, Lcom/android/internal/util/jobs/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 902
    :cond_ec
    iget-wide v12, v9, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastRestrictAttemptElapsedTime:J

    const-wide/16 v19, 0x0

    cmp-long v10, v12, v19

    if-lez v10, :cond_100

    .line 903
    const-string v10, "lastRestrictionAttemptElapsedTime"

    iget-wide v12, v9, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastRestrictAttemptElapsedTime:J

    .line 904
    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    .line 903
    const/4 v13, 0x0

    invoke-virtual {v8, v13, v10, v12}, Lcom/android/internal/util/jobs/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 906
    :cond_100
    const-string v10, "lastRestrictionAttemptReason"

    iget v12, v9, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->lastRestrictReason:I

    .line 907
    invoke-static {v12}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v12

    .line 906
    const/4 v13, 0x0

    invoke-virtual {v8, v13, v10, v12}, Lcom/android/internal/util/jobs/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 908
    iget-wide v12, v9, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->nextEstimatedLaunchTime:J

    cmp-long v10, v12, v19

    if-lez v10, :cond_11f

    .line 909
    const-string/jumbo v10, "nextEstimatedAppLaunchTime"

    iget-wide v12, v9, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->nextEstimatedLaunchTime:J

    .line 910
    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    .line 909
    const/4 v13, 0x0

    invoke-virtual {v8, v13, v10, v12}, Lcom/android/internal/util/jobs/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 912
    :cond_11f
    iget-object v10, v9, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketExpiryTimesMs:Landroid/util/SparseLongArray;

    if-eqz v10, :cond_17b

    .line 913
    const/4 v10, 0x0

    invoke-virtual {v8, v10, v1}, Lcom/android/internal/util/jobs/FastXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 914
    iget-object v10, v9, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketExpiryTimesMs:Landroid/util/SparseLongArray;

    invoke-virtual {v10}, Landroid/util/SparseLongArray;->size()I

    move-result v10

    .line 915
    .local v10, "size":I
    const/4 v12, 0x0

    .local v12, "j":I
    :goto_12e
    if-ge v12, v10, :cond_170

    .line 916
    iget-object v13, v9, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketExpiryTimesMs:Landroid/util/SparseLongArray;

    invoke-virtual {v13, v12}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v19

    .line 918
    .local v19, "expiryTimeMs":J
    cmp-long v13, v19, v14

    if-gez v13, :cond_141

    .line 919
    move-object/from16 v21, v7

    move-object/from16 v22, v9

    move/from16 v23, v10

    goto :goto_167

    .line 921
    :cond_141
    iget-object v13, v9, Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;->bucketExpiryTimesMs:Landroid/util/SparseLongArray;

    invoke-virtual {v13, v12}, Landroid/util/SparseLongArray;->keyAt(I)I

    move-result v13

    .line 922
    .local v13, "bucket":I
    move-object/from16 v21, v7

    const/4 v7, 0x0

    .end local v7    # "packageName":Ljava/lang/String;
    .local v21, "packageName":Ljava/lang/String;
    invoke-virtual {v8, v7, v0}, Lcom/android/internal/util/jobs/FastXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 923
    const-string v7, "bucket"

    move-object/from16 v22, v9

    .end local v9    # "history":Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    .local v22, "history":Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    move/from16 v23, v10

    const/4 v10, 0x0

    .end local v10    # "size":I
    .local v23, "size":I
    invoke-virtual {v8, v10, v7, v9}, Lcom/android/internal/util/jobs/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 924
    const-string v7, "expiry"

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v10, v7, v9}, Lcom/android/internal/util/jobs/FastXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 925
    invoke-virtual {v8, v10, v0}, Lcom/android/internal/util/jobs/FastXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 915
    .end local v13    # "bucket":I
    .end local v19    # "expiryTimeMs":J
    :goto_167
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v7, v21

    move-object/from16 v9, v22

    move/from16 v10, v23

    goto :goto_12e

    .end local v21    # "packageName":Ljava/lang/String;
    .end local v22    # "history":Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    .end local v23    # "size":I
    .restart local v7    # "packageName":Ljava/lang/String;
    .restart local v9    # "history":Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    .restart local v10    # "size":I
    :cond_170
    move-object/from16 v21, v7

    move-object/from16 v22, v9

    move/from16 v23, v10

    .line 927
    .end local v7    # "packageName":Ljava/lang/String;
    .end local v9    # "history":Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    .end local v10    # "size":I
    .end local v12    # "j":I
    .restart local v21    # "packageName":Ljava/lang/String;
    .restart local v22    # "history":Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    .restart local v23    # "size":I
    const/4 v7, 0x0

    invoke-virtual {v8, v7, v1}, Lcom/android/internal/util/jobs/FastXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_17f

    .line 912
    .end local v21    # "packageName":Ljava/lang/String;
    .end local v22    # "history":Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    .end local v23    # "size":I
    .restart local v7    # "packageName":Ljava/lang/String;
    .restart local v9    # "history":Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    :cond_17b
    move-object/from16 v21, v7

    move-object/from16 v22, v9

    .line 929
    .end local v7    # "packageName":Ljava/lang/String;
    .end local v9    # "history":Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    .restart local v21    # "packageName":Ljava/lang/String;
    .restart local v22    # "history":Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    :goto_17f
    const/4 v7, 0x0

    invoke-virtual {v8, v7, v2}, Lcom/android/internal/util/jobs/FastXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 876
    .end local v21    # "packageName":Ljava/lang/String;
    .end local v22    # "history":Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;
    :goto_183
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v9, p0

    move-wide/from16 v12, p2

    move-object/from16 v7, v16

    move-object/from16 v10, v18

    goto/16 :goto_5f

    .end local v17    # "N":I
    .end local v18    # "userHistory":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;>;"
    .local v7, "N":I
    .local v10, "userHistory":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;>;"
    :cond_18f
    move/from16 v17, v7

    move-object/from16 v18, v10

    .line 932
    .end local v7    # "N":I
    .end local v10    # "userHistory":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;>;"
    .end local v11    # "i":I
    .restart local v17    # "N":I
    .restart local v18    # "userHistory":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;>;"
    const/4 v0, 0x0

    invoke-virtual {v8, v0, v3}, Lcom/android/internal/util/jobs/FastXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 933
    invoke-virtual {v8}, Lcom/android/internal/util/jobs/FastXmlSerializer;->endDocument()V

    .line 934
    invoke-virtual {v6, v5}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_19d
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_19d} :catch_1a0

    .line 938
    .end local v8    # "xml":Lcom/android/internal/util/jobs/FastXmlSerializer;
    .end local v14    # "elapsedTimeMs":J
    .end local v16    # "bos":Ljava/io/BufferedOutputStream;
    .end local v17    # "N":I
    .end local v18    # "userHistory":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/usage/AppIdleHistory$AppUsageHistory;>;"
    move/from16 v2, p1

    goto :goto_1bc

    .line 935
    :catch_1a0
    move-exception v0

    .line 936
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v6, v5}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 937
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error writing app idle file for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 939
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1bc
    return-void
.end method

.method public writeAppIdleTimes(J)V
    .registers 6
    .param p1, "elapsedRealtimeMs"    # J

    .line 852
    iget-object v0, p0, Lcom/android/server/usage/AppIdleHistory;->mIdleHistory:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 853
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_15

    .line 854
    iget-object v2, p0, Lcom/android/server/usage/AppIdleHistory;->mIdleHistory:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p0, v2, p1, p2}, Lcom/android/server/usage/AppIdleHistory;->writeAppIdleTimes(IJ)V

    .line 853
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 856
    .end local v1    # "i":I
    :cond_15
    return-void
.end method
