.class final Lcom/android/server/appop/HistoricalRegistry$Persistence;
.super Ljava/lang/Object;
.source "HistoricalRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/appop/HistoricalRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Persistence"
.end annotation


# static fields
.field private static final ATTR_ACCESS_COUNT:Ljava/lang/String; = "ac"

.field private static final ATTR_ACCESS_DURATION:Ljava/lang/String; = "du"

.field private static final ATTR_BEGIN_TIME:Ljava/lang/String; = "beg"

.field private static final ATTR_END_TIME:Ljava/lang/String; = "end"

.field private static final ATTR_NAME:Ljava/lang/String; = "na"

.field private static final ATTR_OVERFLOW:Ljava/lang/String; = "ov"

.field private static final ATTR_REJECT_COUNT:Ljava/lang/String; = "rc"

.field private static final ATTR_VERSION:Ljava/lang/String; = "ver"

.field private static final CURRENT_VERSION:I = 0x2

.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final TAG_ATTRIBUTION:Ljava/lang/String; = "ftr"

.field private static final TAG_HISTORY:Ljava/lang/String; = "history"

.field private static final TAG_OP:Ljava/lang/String; = "op"

.field private static final TAG_OPS:Ljava/lang/String; = "ops"

.field private static final TAG_PACKAGE:Ljava/lang/String; = "pkg"

.field private static final TAG_STATE:Ljava/lang/String; = "st"

.field private static final TAG_UID:Ljava/lang/String; = "uid"

.field private static final sHistoricalAppOpsDir:Lcom/android/internal/os/AtomicDirectory;


# instance fields
.field private final mBaseSnapshotInterval:J

.field private final mIntervalCompressionMultiplier:J


# direct methods
.method static bridge synthetic -$$Nest$mcollectHistoricalOpsDLocked(Lcom/android/server/appop/HistoricalRegistry$Persistence;Landroid/app/AppOpsManager$HistoricalOps;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;IJJI)V
    .registers 12

    invoke-direct/range {p0 .. p11}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->collectHistoricalOpsDLocked(Landroid/app/AppOpsManager$HistoricalOps;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;IJJI)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smspliceFromBeginning(Landroid/app/AppOpsManager$HistoricalOps;D)Landroid/app/AppOpsManager$HistoricalOps;
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->spliceFromBeginning(Landroid/app/AppOpsManager$HistoricalOps;D)Landroid/app/AppOpsManager$HistoricalOps;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 5

    .line 830
    const-class v0, Lcom/android/server/appop/HistoricalRegistry$Persistence;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/appop/HistoricalRegistry$Persistence;->LOG_TAG:Ljava/lang/String;

    .line 859
    new-instance v0, Lcom/android/internal/os/AtomicDirectory;

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/io/File;

    .line 860
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, "appops"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string/jumbo v3, "history"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/android/internal/os/AtomicDirectory;-><init>(Ljava/io/File;)V

    sput-object v0, Lcom/android/server/appop/HistoricalRegistry$Persistence;->sHistoricalAppOpsDir:Lcom/android/internal/os/AtomicDirectory;

    .line 859
    return-void
.end method

.method constructor <init>(JJ)V
    .registers 5
    .param p1, "baseSnapshotInterval"    # J
    .param p3, "intervalCompressionMultiplier"    # J

    .line 854
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 855
    iput-wide p1, p0, Lcom/android/server/appop/HistoricalRegistry$Persistence;->mBaseSnapshotInterval:J

    .line 856
    iput-wide p3, p0, Lcom/android/server/appop/HistoricalRegistry$Persistence;->mIntervalCompressionMultiplier:J

    .line 857
    return-void
.end method

.method static clearHistoryDLocked()V
    .registers 1

    .line 884
    sget-object v0, Lcom/android/server/appop/HistoricalRegistry$Persistence;->sHistoricalAppOpsDir:Lcom/android/internal/os/AtomicDirectory;

    invoke-virtual {v0}, Lcom/android/internal/os/AtomicDirectory;->delete()V

    .line 885
    return-void
.end method

.method private collectHistoricalOpsBaseDLocked(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;IJJI)Ljava/util/LinkedList;
    .registers 29
    .param p1, "filterUid"    # I
    .param p2, "filterPackageName"    # Ljava/lang/String;
    .param p3, "filterAttributionTag"    # Ljava/lang/String;
    .param p4, "filterOpNames"    # [Ljava/lang/String;
    .param p5, "filter"    # I
    .param p6, "filterBeginTimeMillis"    # J
    .param p8, "filterEndTimeMillis"    # J
    .param p10, "filterFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "IJJI)",
            "Ljava/util/LinkedList<",
            "Landroid/app/AppOpsManager$HistoricalOps;",
            ">;"
        }
    .end annotation

    .line 983
    const/4 v1, 0x0

    .line 985
    .local v1, "baseDir":Ljava/io/File;
    :try_start_1
    sget-object v0, Lcom/android/server/appop/HistoricalRegistry$Persistence;->sHistoricalAppOpsDir:Lcom/android/internal/os/AtomicDirectory;

    invoke-virtual {v0}, Lcom/android/internal/os/AtomicDirectory;->startRead()Ljava/io/File;

    move-result-object v3
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_33

    .line 991
    .end local v1    # "baseDir":Ljava/io/File;
    .local v3, "baseDir":Ljava/io/File;
    :try_start_7
    invoke-static {v3}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->getHistoricalFileNames(Ljava/io/File;)Ljava/util/Set;

    move-result-object v17

    .line 992
    .local v17, "historyFiles":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v1, 0x1

    new-array v14, v1, [J

    const/4 v1, 0x0

    const-wide/16 v4, 0x0

    aput-wide v4, v14, v1

    .line 993
    .local v14, "globalContentOffsetMillis":[J
    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v2, p0

    move/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move-wide/from16 v9, p6

    move-wide/from16 v11, p8

    move/from16 v13, p10

    invoke-direct/range {v2 .. v17}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->collectHistoricalOpsRecursiveDLocked(Ljava/io/File;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;IJJI[JLjava/util/LinkedList;ILjava/util/Set;)Ljava/util/LinkedList;

    move-result-object v1

    .line 1000
    .local v1, "ops":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/app/AppOpsManager$HistoricalOps;>;"
    invoke-virtual {v0}, Lcom/android/internal/os/AtomicDirectory;->finishRead()V
    :try_end_2f
    .catchall {:try_start_7 .. :try_end_2f} :catchall_30

    .line 1001
    return-object v1

    .line 1002
    .end local v1    # "ops":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/app/AppOpsManager$HistoricalOps;>;"
    .end local v14    # "globalContentOffsetMillis":[J
    .end local v17    # "historyFiles":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_30
    move-exception v0

    move-object v1, v3

    goto :goto_34

    .end local v3    # "baseDir":Ljava/io/File;
    .local v1, "baseDir":Ljava/io/File;
    :catchall_33
    move-exception v0

    .line 1003
    .local v0, "t":Ljava/lang/Throwable;
    :goto_34
    const-string v2, "Error reading historical app ops. Deleting history."

    invoke-static {v2, v0, v1}, Lcom/android/server/appop/HistoricalRegistry;->-$$Nest$smwtf(Ljava/lang/String;Ljava/lang/Throwable;Ljava/io/File;)V

    .line 1004
    sget-object v2, Lcom/android/server/appop/HistoricalRegistry$Persistence;->sHistoricalAppOpsDir:Lcom/android/internal/os/AtomicDirectory;

    invoke-virtual {v2}, Lcom/android/internal/os/AtomicDirectory;->delete()V

    .line 1006
    .end local v0    # "t":Ljava/lang/Throwable;
    const/4 v0, 0x0

    return-object v0
.end method

.method private collectHistoricalOpsDLocked(Landroid/app/AppOpsManager$HistoricalOps;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;IJJI)V
    .registers 23
    .param p1, "currentOps"    # Landroid/app/AppOpsManager$HistoricalOps;
    .param p2, "filterUid"    # I
    .param p3, "filterPackageName"    # Ljava/lang/String;
    .param p4, "filterAttributionTag"    # Ljava/lang/String;
    .param p5, "filterOpNames"    # [Ljava/lang/String;
    .param p6, "filter"    # I
    .param p7, "filterBeingMillis"    # J
    .param p9, "filterEndMillis"    # J
    .param p11, "filterFlags"    # I

    .line 967
    move-object v0, p0

    move v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object/from16 v4, p5

    move/from16 v5, p6

    move-wide/from16 v6, p7

    move-wide/from16 v8, p9

    move/from16 v10, p11

    invoke-direct/range {v0 .. v10}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->collectHistoricalOpsBaseDLocked(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;IJJI)Ljava/util/LinkedList;

    move-result-object v0

    .line 970
    .local v0, "readOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    if-eqz v0, :cond_2a

    .line 971
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 972
    .local v1, "readCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_19
    if-ge v2, v1, :cond_28

    .line 973
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManager$HistoricalOps;

    .line 974
    .local v3, "readOp":Landroid/app/AppOpsManager$HistoricalOps;
    move-object v4, p1

    invoke-virtual {p1, v3}, Landroid/app/AppOpsManager$HistoricalOps;->merge(Landroid/app/AppOpsManager$HistoricalOps;)V

    .line 972
    .end local v3    # "readOp":Landroid/app/AppOpsManager$HistoricalOps;
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    :cond_28
    move-object v4, p1

    goto :goto_2b

    .line 970
    .end local v1    # "readCount":I
    .end local v2    # "i":I
    :cond_2a
    move-object v4, p1

    .line 977
    :goto_2b
    return-void
.end method

.method private collectHistoricalOpsRecursiveDLocked(Ljava/io/File;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;IJJI[JLjava/util/LinkedList;ILjava/util/Set;)Ljava/util/LinkedList;
    .registers 44
    .param p1, "baseDir"    # Ljava/io/File;
    .param p2, "filterUid"    # I
    .param p3, "filterPackageName"    # Ljava/lang/String;
    .param p4, "filterAttributionTag"    # Ljava/lang/String;
    .param p5, "filterOpNames"    # [Ljava/lang/String;
    .param p6, "filter"    # I
    .param p7, "filterBeginTimeMillis"    # J
    .param p9, "filterEndTimeMillis"    # J
    .param p11, "filterFlags"    # I
    .param p12, "globalContentOffsetMillis"    # [J
    .param p14, "depth"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "IJJI[J",
            "Ljava/util/LinkedList<",
            "Landroid/app/AppOpsManager$HistoricalOps;",
            ">;I",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/LinkedList<",
            "Landroid/app/AppOpsManager$HistoricalOps;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .local p13, "outOps":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/app/AppOpsManager$HistoricalOps;>;"
    .local p15, "historyFiles":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v13, p0

    move/from16 v14, p14

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move/from16 v10, p6

    move/from16 v15, p11

    move-object/from16 v16, p12

    move/from16 v17, p14

    move-object/from16 v18, p15

    .line 1018
    iget-wide v2, v13, Lcom/android/server/appop/HistoricalRegistry$Persistence;->mIntervalCompressionMultiplier:J

    long-to-double v2, v2

    int-to-double v4, v14

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-long v2, v2

    iget-wide v4, v13, Lcom/android/server/appop/HistoricalRegistry$Persistence;->mBaseSnapshotInterval:J

    mul-long v19, v2, v4

    .local v19, "previousIntervalEndMillis":J
    move-wide/from16 v2, v19

    .line 1020
    iget-wide v4, v13, Lcom/android/server/appop/HistoricalRegistry$Persistence;->mIntervalCompressionMultiplier:J

    long-to-double v4, v4

    add-int/lit8 v11, v14, 0x1

    int-to-double v11, v11

    invoke-static {v4, v5, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-long v4, v4

    iget-wide v11, v13, Lcom/android/server/appop/HistoricalRegistry$Persistence;->mBaseSnapshotInterval:J

    mul-long/2addr v11, v4

    .local v11, "currentIntervalEndMillis":J
    move-wide v4, v11

    .line 1023
    move-wide/from16 v21, v11

    .end local v11    # "currentIntervalEndMillis":J
    .local v21, "currentIntervalEndMillis":J
    sub-long v11, p7, v19

    const-wide/16 v13, 0x0

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v23

    move-wide/from16 v13, v21

    .end local v21    # "currentIntervalEndMillis":J
    .end local p7    # "filterBeginTimeMillis":J
    .local v13, "currentIntervalEndMillis":J
    .local v23, "filterBeginTimeMillis":J
    move-wide/from16 v11, v23

    .line 1024
    sub-long v21, p9, v19

    move-wide/from16 v25, v13

    .end local v13    # "currentIntervalEndMillis":J
    .end local p9    # "filterEndTimeMillis":J
    .local v21, "filterEndTimeMillis":J
    .local v25, "currentIntervalEndMillis":J
    move-wide/from16 v13, v21

    .line 1027
    invoke-direct/range {v0 .. v18}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->readHistoricalOpsLocked(Ljava/io/File;JJILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;IJJI[JILjava/util/Set;)Ljava/util/List;

    move-result-object v15

    .line 1033
    .local v15, "readOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    if-eqz v15, :cond_59

    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_59

    .line 1034
    return-object p13

    .line 1038
    :cond_59
    add-int/lit8 v14, p14, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-wide/from16 v7, v23

    move-wide/from16 v9, v21

    move/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v27, v15

    .end local v15    # "readOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    .local v27, "readOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    move-object/from16 v15, p15

    invoke-direct/range {v0 .. v15}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->collectHistoricalOpsRecursiveDLocked(Ljava/io/File;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;IJJI[JLjava/util/LinkedList;ILjava/util/Set;)Ljava/util/LinkedList;

    move-result-object v0

    .line 1044
    .end local p13    # "outOps":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/app/AppOpsManager$HistoricalOps;>;"
    .local v0, "outOps":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/app/AppOpsManager$HistoricalOps;>;"
    if-eqz v0, :cond_95

    .line 1045
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v1

    .line 1046
    .local v1, "opCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_82
    if-ge v2, v1, :cond_92

    .line 1047
    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManager$HistoricalOps;

    .line 1048
    .local v3, "collectedOp":Landroid/app/AppOpsManager$HistoricalOps;
    move-wide/from16 v4, v25

    .end local v25    # "currentIntervalEndMillis":J
    .local v4, "currentIntervalEndMillis":J
    invoke-virtual {v3, v4, v5}, Landroid/app/AppOpsManager$HistoricalOps;->offsetBeginAndEndTime(J)V

    .line 1046
    .end local v3    # "collectedOp":Landroid/app/AppOpsManager$HistoricalOps;
    add-int/lit8 v2, v2, 0x1

    goto :goto_82

    .end local v4    # "currentIntervalEndMillis":J
    .restart local v25    # "currentIntervalEndMillis":J
    :cond_92
    move-wide/from16 v4, v25

    .end local v25    # "currentIntervalEndMillis":J
    .restart local v4    # "currentIntervalEndMillis":J
    goto :goto_97

    .line 1044
    .end local v1    # "opCount":I
    .end local v2    # "i":I
    .end local v4    # "currentIntervalEndMillis":J
    .restart local v25    # "currentIntervalEndMillis":J
    :cond_95
    move-wide/from16 v4, v25

    .line 1052
    .end local v25    # "currentIntervalEndMillis":J
    .restart local v4    # "currentIntervalEndMillis":J
    :goto_97
    move-object/from16 v1, v27

    .end local v27    # "readOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    .local v1, "readOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    if-eqz v1, :cond_b7

    .line 1053
    if-nez v0, :cond_a3

    .line 1054
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    move-object v0, v2

    .line 1057
    :cond_a3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 1058
    .local v2, "opCount":I
    add-int/lit8 v3, v2, -0x1

    .local v3, "i":I
    :goto_a9
    if-ltz v3, :cond_b7

    .line 1059
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AppOpsManager$HistoricalOps;

    invoke-virtual {v0, v6}, Ljava/util/LinkedList;->offerFirst(Ljava/lang/Object;)Z

    .line 1058
    add-int/lit8 v3, v3, -0x1

    goto :goto_a9

    .line 1063
    .end local v2    # "opCount":I
    .end local v3    # "i":I
    :cond_b7
    return-object v0
.end method

.method private computeGlobalIntervalBeginMillis(I)J
    .registers 11
    .param p1, "depth"    # I

    .line 1670
    const-wide/16 v0, 0x0

    .line 1671
    .local v0, "beginTimeMillis":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    add-int/lit8 v3, p1, 0x1

    if-ge v2, v3, :cond_15

    .line 1672
    long-to-double v3, v0

    iget-wide v5, p0, Lcom/android/server/appop/HistoricalRegistry$Persistence;->mIntervalCompressionMultiplier:J

    long-to-double v5, v5

    int-to-double v7, v2

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    add-double/2addr v3, v5

    double-to-long v0, v3

    .line 1671
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1674
    .end local v2    # "i":I
    :cond_15
    iget-wide v2, p0, Lcom/android/server/appop/HistoricalRegistry$Persistence;->mBaseSnapshotInterval:J

    mul-long/2addr v2, v0

    return-wide v2
.end method

.method private static enforceOpsWellFormed(Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$HistoricalOps;",
            ">;)V"
        }
    .end annotation

    .line 1639
    .local p0, "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    if-nez p0, :cond_3

    .line 1640
    return-void

    .line 1643
    :cond_3
    const/4 v0, 0x0

    .line 1644
    .local v0, "current":Landroid/app/AppOpsManager$HistoricalOps;
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    .line 1645
    .local v1, "opsCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    if-ge v2, v1, :cond_b7

    .line 1646
    move-object v3, v0

    .line 1647
    .local v3, "previous":Landroid/app/AppOpsManager$HistoricalOps;
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Landroid/app/AppOpsManager$HistoricalOps;

    .line 1648
    invoke-virtual {v0}, Landroid/app/AppOpsManager$HistoricalOps;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_9a

    .line 1652
    invoke-virtual {v0}, Landroid/app/AppOpsManager$HistoricalOps;->getEndTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0}, Landroid/app/AppOpsManager$HistoricalOps;->getBeginTimeMillis()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-ltz v4, :cond_7d

    .line 1656
    if-eqz v3, :cond_7a

    .line 1657
    invoke-virtual {v3}, Landroid/app/AppOpsManager$HistoricalOps;->getEndTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0}, Landroid/app/AppOpsManager$HistoricalOps;->getBeginTimeMillis()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gtz v4, :cond_5d

    .line 1661
    invoke-virtual {v3}, Landroid/app/AppOpsManager$HistoricalOps;->getBeginTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0}, Landroid/app/AppOpsManager$HistoricalOps;->getBeginTimeMillis()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gtz v4, :cond_40

    goto :goto_7a

    .line 1662
    :cond_40
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Non increasing ops:\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1663
    invoke-static {p0}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->opsToDebugString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1658
    :cond_5d
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Intersecting ops:\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1659
    invoke-static {p0}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->opsToDebugString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1645
    :cond_7a
    :goto_7a
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 1653
    :cond_7d
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Begin after end:\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1654
    invoke-static {p0}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->opsToDebugString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1649
    :cond_9a
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Empty ops:\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1650
    invoke-static {p0}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->opsToDebugString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1667
    .end local v2    # "i":I
    .end local v3    # "previous":Landroid/app/AppOpsManager$HistoricalOps;
    :cond_b7
    return-void
.end method

.method private generateFile(Ljava/io/File;I)Ljava/io/File;
    .registers 8
    .param p1, "baseDir"    # Ljava/io/File;
    .param p2, "depth"    # I

    .line 863
    invoke-direct {p0, p2}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->computeGlobalIntervalBeginMillis(I)J

    move-result-wide v0

    .line 864
    .local v0, "globalBeginMillis":J
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".xml"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v2
.end method

.method private static getHistoricalFileNames(Ljava/io/File;)Ljava/util/Set;
    .registers 7
    .param p0, "historyDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1762
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 1763
    .local v0, "files":[Ljava/io/File;
    if-nez v0, :cond_b

    .line 1764
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    return-object v1

    .line 1766
    :cond_b
    new-instance v1, Landroid/util/ArraySet;

    array-length v2, v0

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(I)V

    .line 1767
    .local v1, "fileNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    array-length v2, v0

    const/4 v3, 0x0

    :goto_13
    if-ge v3, v2, :cond_21

    aget-object v4, v0, v3

    .line 1768
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1767
    .end local v4    # "file":Ljava/io/File;
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 1771
    :cond_21
    return-object v1
.end method

.method private handlePersistHistoricalOpsRecursiveDLocked(Ljava/io/File;Ljava/io/File;Ljava/util/List;Ljava/util/Set;I)V
    .registers 32
    .param p1, "newBaseDir"    # Ljava/io/File;
    .param p2, "oldBaseDir"    # Ljava/io/File;
    .param p5, "depth"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/io/File;",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$HistoricalOps;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1070
    .local p3, "passedOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    .local p4, "oldFileNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move/from16 v1, p5

    iget-wide v6, v4, Lcom/android/server/appop/HistoricalRegistry$Persistence;->mIntervalCompressionMultiplier:J

    long-to-double v6, v6

    int-to-double v8, v1

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-long v6, v6

    iget-wide v8, v4, Lcom/android/server/appop/HistoricalRegistry$Persistence;->mBaseSnapshotInterval:J

    mul-long v13, v6, v8

    .line 1072
    .local v13, "previousIntervalEndMillis":J
    iget-wide v6, v4, Lcom/android/server/appop/HistoricalRegistry$Persistence;->mIntervalCompressionMultiplier:J

    long-to-double v6, v6

    add-int/lit8 v0, v1, 0x1

    int-to-double v8, v0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-long v6, v6

    iget-wide v8, v4, Lcom/android/server/appop/HistoricalRegistry$Persistence;->mBaseSnapshotInterval:J

    mul-long v19, v6, v8

    .line 1075
    .local v19, "currentIntervalEndMillis":J
    if-eqz v2, :cond_150

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_36

    move v7, v1

    move-object v6, v3

    move-object v9, v4

    move-object v8, v5

    move-wide/from16 v21, v13

    goto/16 :goto_156

    .line 1094
    :cond_36
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v0

    .line 1095
    .local v0, "passedOpCount":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_3b
    if-ge v6, v0, :cond_4a

    .line 1096
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/AppOpsManager$HistoricalOps;

    .line 1097
    .local v7, "passedOp":Landroid/app/AppOpsManager$HistoricalOps;
    neg-long v8, v13

    invoke-virtual {v7, v8, v9}, Landroid/app/AppOpsManager$HistoricalOps;->offsetBeginAndEndTime(J)V

    .line 1095
    .end local v7    # "passedOp":Landroid/app/AppOpsManager$HistoricalOps;
    add-int/lit8 v6, v6, 0x1

    goto :goto_3b

    .line 1105
    .end local v6    # "i":I
    :cond_4a
    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-wide/high16 v11, -0x8000000000000000L

    const-wide v15, 0x7fffffffffffffffL

    move-wide/from16 v21, v13

    .end local v13    # "previousIntervalEndMillis":J
    .local v21, "previousIntervalEndMillis":J
    move-wide v13, v15

    const/16 v15, 0x1f

    const/16 v16, 0x0

    const/16 v18, 0x0

    move/from16 v23, v0

    .end local v0    # "passedOpCount":I
    .local v23, "passedOpCount":I
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-wide/from16 v2, v21

    move-wide/from16 v4, v19

    move/from16 v17, p5

    invoke-direct/range {v0 .. v18}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->readHistoricalOpsLocked(Ljava/io/File;JJILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;IJJI[JILjava/util/Set;)Ljava/util/List;

    move-result-object v6

    .line 1117
    .local v6, "existingOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    if-eqz v6, :cond_9b

    .line 1118
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    .line 1119
    .local v0, "existingOpCount":I
    if-lez v0, :cond_98

    .line 1121
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move-object/from16 v7, p3

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager$HistoricalOps;

    .line 1122
    invoke-virtual {v1}, Landroid/app/AppOpsManager$HistoricalOps;->getEndTimeMillis()J

    move-result-wide v1

    .line 1123
    .local v1, "elapsedTimeMillis":J
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_8a
    if-ge v3, v0, :cond_9d

    .line 1124
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AppOpsManager$HistoricalOps;

    .line 1125
    .local v4, "existingOp":Landroid/app/AppOpsManager$HistoricalOps;
    invoke-virtual {v4, v1, v2}, Landroid/app/AppOpsManager$HistoricalOps;->offsetBeginAndEndTime(J)V

    .line 1123
    .end local v4    # "existingOp":Landroid/app/AppOpsManager$HistoricalOps;
    add-int/lit8 v3, v3, 0x1

    goto :goto_8a

    .line 1119
    .end local v1    # "elapsedTimeMillis":J
    .end local v3    # "i":I
    :cond_98
    move-object/from16 v7, p3

    goto :goto_9d

    .line 1117
    .end local v0    # "existingOpCount":I
    :cond_9b
    move-object/from16 v7, p3

    .line 1134
    :cond_9d
    :goto_9d
    move-wide/from16 v8, v21

    .line 1139
    .local v8, "slotDurationMillis":J
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0, v7}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    move-object v10, v0

    .line 1140
    .local v10, "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    if-eqz v6, :cond_aa

    .line 1141
    invoke-interface {v10, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1149
    :cond_aa
    const/4 v0, 0x0

    .line 1150
    .local v0, "persistedOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    const/4 v1, 0x0

    .line 1160
    .local v1, "overflowedOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    const-wide/16 v2, 0x0

    .line 1161
    .local v2, "intervalOverflowMillis":J
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    .line 1162
    .local v11, "opCount":I
    const/4 v4, 0x0

    move-object v12, v0

    move-object v13, v1

    move-wide v14, v2

    .end local v0    # "persistedOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    .end local v1    # "overflowedOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    .end local v2    # "intervalOverflowMillis":J
    .local v4, "i":I
    .local v12, "persistedOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    .local v13, "overflowedOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    .local v14, "intervalOverflowMillis":J
    :goto_b6
    if-ge v4, v11, :cond_11a

    .line 1163
    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager$HistoricalOps;

    .line 1166
    .local v0, "op":Landroid/app/AppOpsManager$HistoricalOps;
    invoke-virtual {v0}, Landroid/app/AppOpsManager$HistoricalOps;->getEndTimeMillis()J

    move-result-wide v1

    cmp-long v1, v1, v19

    if-gtz v1, :cond_c9

    .line 1167
    move-object v1, v0

    .line 1168
    .local v1, "persistedOp":Landroid/app/AppOpsManager$HistoricalOps;
    const/4 v2, 0x0

    .local v2, "overflowedOp":Landroid/app/AppOpsManager$HistoricalOps;
    goto :goto_fd

    .line 1169
    .end local v1    # "persistedOp":Landroid/app/AppOpsManager$HistoricalOps;
    .end local v2    # "overflowedOp":Landroid/app/AppOpsManager$HistoricalOps;
    :cond_c9
    invoke-virtual {v0}, Landroid/app/AppOpsManager$HistoricalOps;->getBeginTimeMillis()J

    move-result-wide v1

    cmp-long v1, v1, v19

    if-gez v1, :cond_fb

    .line 1170
    move-object v1, v0

    .line 1171
    .restart local v1    # "persistedOp":Landroid/app/AppOpsManager$HistoricalOps;
    invoke-virtual {v0}, Landroid/app/AppOpsManager$HistoricalOps;->getEndTimeMillis()J

    move-result-wide v2

    sub-long v2, v2, v19

    .line 1172
    .end local v14    # "intervalOverflowMillis":J
    .local v2, "intervalOverflowMillis":J
    cmp-long v5, v2, v21

    if-lez v5, :cond_f4

    .line 1173
    long-to-double v14, v2

    .line 1174
    move-object v5, v1

    move-wide/from16 v16, v2

    .end local v1    # "persistedOp":Landroid/app/AppOpsManager$HistoricalOps;
    .end local v2    # "intervalOverflowMillis":J
    .local v5, "persistedOp":Landroid/app/AppOpsManager$HistoricalOps;
    .local v16, "intervalOverflowMillis":J
    invoke-virtual {v0}, Landroid/app/AppOpsManager$HistoricalOps;->getDurationMillis()J

    move-result-wide v1

    long-to-double v1, v1

    div-double/2addr v14, v1

    .line 1175
    .local v14, "splitScale":D
    invoke-static {v0, v14, v15}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->spliceFromEnd(Landroid/app/AppOpsManager$HistoricalOps;D)Landroid/app/AppOpsManager$HistoricalOps;

    move-result-object v2

    .line 1176
    .local v2, "overflowedOp":Landroid/app/AppOpsManager$HistoricalOps;
    invoke-virtual {v0}, Landroid/app/AppOpsManager$HistoricalOps;->getEndTimeMillis()J

    move-result-wide v24

    sub-long v24, v24, v19

    .line 1177
    .end local v14    # "splitScale":D
    .end local v16    # "intervalOverflowMillis":J
    .local v24, "intervalOverflowMillis":J
    move-object v1, v5

    move-wide/from16 v14, v24

    goto :goto_fd

    .line 1178
    .end local v5    # "persistedOp":Landroid/app/AppOpsManager$HistoricalOps;
    .end local v24    # "intervalOverflowMillis":J
    .restart local v1    # "persistedOp":Landroid/app/AppOpsManager$HistoricalOps;
    .local v2, "intervalOverflowMillis":J
    :cond_f4
    move-object v5, v1

    move-wide/from16 v16, v2

    .end local v1    # "persistedOp":Landroid/app/AppOpsManager$HistoricalOps;
    .end local v2    # "intervalOverflowMillis":J
    .restart local v5    # "persistedOp":Landroid/app/AppOpsManager$HistoricalOps;
    .restart local v16    # "intervalOverflowMillis":J
    const/4 v2, 0x0

    move-wide/from16 v14, v16

    .local v2, "overflowedOp":Landroid/app/AppOpsManager$HistoricalOps;
    goto :goto_fd

    .line 1181
    .end local v2    # "overflowedOp":Landroid/app/AppOpsManager$HistoricalOps;
    .end local v5    # "persistedOp":Landroid/app/AppOpsManager$HistoricalOps;
    .end local v16    # "intervalOverflowMillis":J
    .local v14, "intervalOverflowMillis":J
    :cond_fb
    const/4 v1, 0x0

    .line 1182
    .restart local v1    # "persistedOp":Landroid/app/AppOpsManager$HistoricalOps;
    move-object v2, v0

    .line 1184
    .restart local v2    # "overflowedOp":Landroid/app/AppOpsManager$HistoricalOps;
    :goto_fd
    if-eqz v1, :cond_10a

    .line 1185
    if-nez v12, :cond_107

    .line 1186
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v12, v3

    .line 1188
    :cond_107
    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1190
    :cond_10a
    if-eqz v2, :cond_117

    .line 1191
    if-nez v13, :cond_114

    .line 1192
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v13, v3

    .line 1194
    :cond_114
    invoke-interface {v13, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1162
    .end local v0    # "op":Landroid/app/AppOpsManager$HistoricalOps;
    .end local v1    # "persistedOp":Landroid/app/AppOpsManager$HistoricalOps;
    .end local v2    # "overflowedOp":Landroid/app/AppOpsManager$HistoricalOps;
    :cond_117
    add-int/lit8 v4, v4, 0x1

    goto :goto_b6

    .line 1203
    .end local v4    # "i":I
    :cond_11a
    move-object/from16 v5, p0

    move-object/from16 v4, p1

    move/from16 v3, p5

    invoke-direct {v5, v4, v3}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->generateFile(Ljava/io/File;I)Ljava/io/File;

    move-result-object v2

    .line 1204
    .local v2, "newFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, p4

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1206
    if-eqz v12, :cond_135

    .line 1207
    invoke-static {v12, v8, v9}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->normalizeSnapshotForSlotDuration(Ljava/util/List;J)V

    .line 1208
    invoke-direct {v5, v12, v14, v15, v2}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->writeHistoricalOpsDLocked(Ljava/util/List;JLjava/io/File;)V

    .line 1216
    :cond_135
    add-int/lit8 v16, v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v17, v6

    move-object v6, v1

    .end local v6    # "existingOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    .local v17, "existingOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    move-object/from16 v1, p1

    move-object/from16 v18, v2

    .end local v2    # "newFile":Ljava/io/File;
    .local v18, "newFile":Ljava/io/File;
    move-object/from16 v2, p2

    move v7, v3

    move-object v3, v13

    move-wide/from16 v24, v8

    move-object v8, v4

    .end local v8    # "slotDurationMillis":J
    .local v24, "slotDurationMillis":J
    move-object/from16 v4, p4

    move-object v9, v5

    move/from16 v5, v16

    invoke-direct/range {v0 .. v5}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->handlePersistHistoricalOpsRecursiveDLocked(Ljava/io/File;Ljava/io/File;Ljava/util/List;Ljava/util/Set;I)V

    .line 1218
    return-void

    .line 1075
    .end local v10    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    .end local v11    # "opCount":I
    .end local v12    # "persistedOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    .end local v14    # "intervalOverflowMillis":J
    .end local v17    # "existingOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    .end local v18    # "newFile":Ljava/io/File;
    .end local v21    # "previousIntervalEndMillis":J
    .end local v23    # "passedOpCount":I
    .end local v24    # "slotDurationMillis":J
    .local v13, "previousIntervalEndMillis":J
    :cond_150
    move v7, v1

    move-object v6, v3

    move-object v9, v4

    move-object v8, v5

    move-wide/from16 v21, v13

    .line 1076
    .end local v13    # "previousIntervalEndMillis":J
    .restart local v21    # "previousIntervalEndMillis":J
    :goto_156
    invoke-interface/range {p4 .. p4}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_18b

    .line 1078
    move-object/from16 v10, p2

    invoke-direct {v9, v10, v7}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->generateFile(Ljava/io/File;I)Ljava/io/File;

    move-result-object v11

    .line 1079
    .local v11, "oldFile":Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17b

    .line 1080
    invoke-direct {v9, v8, v7}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->generateFile(Ljava/io/File;I)Ljava/io/File;

    move-result-object v0

    .line 1081
    .local v0, "newFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v1

    invoke-virtual {v11}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/nio/file/Files;->createLink(Ljava/nio/file/Path;Ljava/nio/file/Path;)Ljava/nio/file/Path;

    .line 1083
    .end local v0    # "newFile":Ljava/io/File;
    :cond_17b
    add-int/lit8 v5, v7, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->handlePersistHistoricalOpsRecursiveDLocked(Ljava/io/File;Ljava/io/File;Ljava/util/List;Ljava/util/Set;I)V

    goto :goto_18d

    .line 1076
    .end local v11    # "oldFile":Ljava/io/File;
    :cond_18b
    move-object/from16 v10, p2

    .line 1086
    :goto_18d
    return-void
.end method

.method private static normalizeSnapshotForSlotDuration(Ljava/util/List;J)V
    .registers 18
    .param p1, "slotDurationMillis"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$HistoricalOps;",
            ">;J)V"
        }
    .end annotation

    .line 1710
    .local p0, "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    move-object v0, p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    .line 1711
    .local v1, "opCount":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "processedIdx":I
    :goto_7
    if-ltz v2, :cond_6a

    .line 1712
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManager$HistoricalOps;

    .line 1713
    .local v3, "processedOp":Landroid/app/AppOpsManager$HistoricalOps;
    invoke-virtual {v3}, Landroid/app/AppOpsManager$HistoricalOps;->getEndTimeMillis()J

    move-result-wide v4

    sub-long v4, v4, p1

    const-wide/16 v6, 0x0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 1715
    .local v4, "slotBeginTimeMillis":J
    add-int/lit8 v8, v2, -0x1

    .local v8, "candidateIdx":I
    :goto_1d
    if-ltz v8, :cond_67

    .line 1716
    invoke-interface {p0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/AppOpsManager$HistoricalOps;

    .line 1717
    .local v9, "candidateOp":Landroid/app/AppOpsManager$HistoricalOps;
    invoke-virtual {v9}, Landroid/app/AppOpsManager$HistoricalOps;->getEndTimeMillis()J

    move-result-wide v10

    .line 1718
    invoke-virtual {v3}, Landroid/app/AppOpsManager$HistoricalOps;->getBeginTimeMillis()J

    move-result-wide v12

    invoke-static {v4, v5, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v12

    sub-long/2addr v10, v12

    .line 1719
    .local v10, "candidateSlotIntersectionMillis":J
    cmp-long v12, v10, v6

    if-gtz v12, :cond_37

    .line 1720
    goto :goto_67

    .line 1722
    :cond_37
    long-to-float v12, v10

    .line 1723
    invoke-virtual {v9}, Landroid/app/AppOpsManager$HistoricalOps;->getDurationMillis()J

    move-result-wide v13

    long-to-float v13, v13

    div-float/2addr v12, v13

    .line 1724
    .local v12, "candidateSplitRatio":F
    const/high16 v13, 0x3f800000    # 1.0f

    invoke-static {v12, v13}, Ljava/lang/Float;->compare(FF)I

    move-result v13

    if-ltz v13, :cond_4f

    .line 1725
    invoke-interface {p0, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1726
    add-int/lit8 v2, v2, -0x1

    .line 1727
    invoke-virtual {v3, v9}, Landroid/app/AppOpsManager$HistoricalOps;->merge(Landroid/app/AppOpsManager$HistoricalOps;)V

    goto :goto_64

    .line 1729
    :cond_4f
    float-to-double v13, v12

    invoke-static {v9, v13, v14}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->spliceFromEnd(Landroid/app/AppOpsManager$HistoricalOps;D)Landroid/app/AppOpsManager$HistoricalOps;

    move-result-object v13

    .line 1731
    .local v13, "endSplice":Landroid/app/AppOpsManager$HistoricalOps;
    if-eqz v13, :cond_59

    .line 1732
    invoke-virtual {v3, v13}, Landroid/app/AppOpsManager$HistoricalOps;->merge(Landroid/app/AppOpsManager$HistoricalOps;)V

    .line 1734
    :cond_59
    invoke-virtual {v9}, Landroid/app/AppOpsManager$HistoricalOps;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_64

    .line 1735
    invoke-interface {p0, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1736
    add-int/lit8 v2, v2, -0x1

    .line 1715
    .end local v9    # "candidateOp":Landroid/app/AppOpsManager$HistoricalOps;
    .end local v10    # "candidateSlotIntersectionMillis":J
    .end local v12    # "candidateSplitRatio":F
    .end local v13    # "endSplice":Landroid/app/AppOpsManager$HistoricalOps;
    :cond_64
    :goto_64
    add-int/lit8 v8, v8, -0x1

    goto :goto_1d

    .line 1711
    .end local v3    # "processedOp":Landroid/app/AppOpsManager$HistoricalOps;
    .end local v8    # "candidateIdx":I
    :cond_67
    :goto_67
    add-int/lit8 v2, v2, -0x1

    goto :goto_7

    .line 1746
    .end local v2    # "processedIdx":I
    .end local v4    # "slotBeginTimeMillis":J
    :cond_6a
    return-void
.end method

.method private static opsToDebugString(Ljava/util/List;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$HistoricalOps;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1749
    .local p0, "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1750
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    .line 1751
    .local v1, "opCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v1, :cond_24

    .line 1752
    const-string v3, "  "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1753
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1754
    add-int/lit8 v3, v1, -0x1

    if-ge v2, v3, :cond_21

    .line 1755
    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1751
    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 1758
    .end local v2    # "i":I
    :cond_24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private readHistoricalAttributionOpsDLocked(Landroid/app/AppOpsManager$HistoricalOps;ILjava/lang/String;Landroid/util/TypedXmlPullParser;Ljava/lang/String;[Ljava/lang/String;IID)Landroid/app/AppOpsManager$HistoricalOps;
    .registers 27
    .param p1, "ops"    # Landroid/app/AppOpsManager$HistoricalOps;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "parser"    # Landroid/util/TypedXmlPullParser;
    .param p5, "filterAttributionTag"    # Ljava/lang/String;
    .param p6, "filterOpNames"    # [Ljava/lang/String;
    .param p7, "filter"    # I
    .param p8, "filterFlags"    # I
    .param p9, "filterScale"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1417
    move-object/from16 v11, p4

    const-string/jumbo v0, "na"

    invoke-static {v11, v0}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1418
    .local v12, "attributionTag":Ljava/lang/String;
    and-int/lit8 v0, p7, 0x4

    if-eqz v0, :cond_1a

    move-object/from16 v13, p5

    invoke-static {v13, v12}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 1420
    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1421
    const/4 v0, 0x0

    return-object v0

    .line 1418
    :cond_1a
    move-object/from16 v13, p5

    .line 1423
    :cond_1c
    invoke-interface/range {p4 .. p4}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v14

    move-object/from16 v15, p1

    .line 1424
    .end local p1    # "ops":Landroid/app/AppOpsManager$HistoricalOps;
    .local v14, "depth":I
    .local v15, "ops":Landroid/app/AppOpsManager$HistoricalOps;
    :cond_22
    :goto_22
    invoke-static {v11, v14}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 1425
    invoke-interface/range {p4 .. p4}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "op"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 1426
    move-object/from16 v0, p0

    move-object v1, v15

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object v4, v12

    move-object/from16 v5, p4

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-wide/from16 v9, p9

    invoke-direct/range {v0 .. v10}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->readHistoricalOpDLocked(Landroid/app/AppOpsManager$HistoricalOps;ILjava/lang/String;Ljava/lang/String;Landroid/util/TypedXmlPullParser;[Ljava/lang/String;IID)Landroid/app/AppOpsManager$HistoricalOps;

    move-result-object v0

    .line 1429
    .local v0, "returnedOps":Landroid/app/AppOpsManager$HistoricalOps;
    if-nez v15, :cond_4f

    .line 1430
    move-object v1, v0

    move-object v15, v1

    .line 1432
    .end local v0    # "returnedOps":Landroid/app/AppOpsManager$HistoricalOps;
    :cond_4f
    goto :goto_22

    .line 1434
    :cond_50
    return-object v15
.end method

.method private readHistoricalOpDLocked(Landroid/app/AppOpsManager$HistoricalOps;ILjava/lang/String;Ljava/lang/String;Landroid/util/TypedXmlPullParser;[Ljava/lang/String;IID)Landroid/app/AppOpsManager$HistoricalOps;
    .registers 26
    .param p1, "ops"    # Landroid/app/AppOpsManager$HistoricalOps;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "attributionTag"    # Ljava/lang/String;
    .param p5, "parser"    # Landroid/util/TypedXmlPullParser;
    .param p6, "filterOpNames"    # [Ljava/lang/String;
    .param p7, "filter"    # I
    .param p8, "filterFlags"    # I
    .param p9, "filterScale"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1443
    move-object/from16 v10, p5

    const/4 v0, 0x0

    const-string/jumbo v1, "na"

    invoke-interface {v10, v0, v1}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    .line 1444
    .local v11, "op":I
    and-int/lit8 v1, p7, 0x8

    if-eqz v1, :cond_1e

    .line 1445
    invoke-static {v11}, Landroid/app/AppOpsManager;->opToPublicName(I)Ljava/lang/String;

    move-result-object v1

    .line 1444
    move-object/from16 v12, p6

    invoke-static {v12, v1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    .line 1446
    invoke-static/range {p5 .. p5}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1447
    return-object v0

    .line 1444
    :cond_1e
    move-object/from16 v12, p6

    .line 1449
    :cond_20
    invoke-interface/range {p5 .. p5}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v13

    move-object/from16 v14, p1

    .line 1450
    .end local p1    # "ops":Landroid/app/AppOpsManager$HistoricalOps;
    .local v13, "depth":I
    .local v14, "ops":Landroid/app/AppOpsManager$HistoricalOps;
    :cond_26
    :goto_26
    invoke-static {v10, v13}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 1451
    invoke-interface/range {p5 .. p5}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "st"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 1452
    move-object v0, p0

    move-object v1, v14

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move v5, v11

    move-object/from16 v6, p5

    move/from16 v7, p8

    move-wide/from16 v8, p9

    invoke-direct/range {v0 .. v9}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->readStateDLocked(Landroid/app/AppOpsManager$HistoricalOps;ILjava/lang/String;Ljava/lang/String;ILandroid/util/TypedXmlPullParser;ID)Landroid/app/AppOpsManager$HistoricalOps;

    move-result-object v0

    .line 1454
    .local v0, "returnedOps":Landroid/app/AppOpsManager$HistoricalOps;
    if-nez v14, :cond_50

    .line 1455
    move-object v1, v0

    move-object v14, v1

    .line 1457
    .end local v0    # "returnedOps":Landroid/app/AppOpsManager$HistoricalOps;
    :cond_50
    goto :goto_26

    .line 1459
    :cond_51
    return-object v14
.end method

.method private readHistoricalOpsLocked(Ljava/io/File;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;IJJI[J)Ljava/util/List;
    .registers 34
    .param p1, "file"    # Ljava/io/File;
    .param p2, "filterUid"    # I
    .param p3, "filterPackageName"    # Ljava/lang/String;
    .param p4, "filterAttributionTag"    # Ljava/lang/String;
    .param p5, "filterOpNames"    # [Ljava/lang/String;
    .param p6, "filter"    # I
    .param p7, "filterBeginTimeMillis"    # J
    .param p9, "filterEndTimeMillis"    # J
    .param p11, "filterFlags"    # I
    .param p12, "cumulativeOverflowMillis"    # [J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "IJJI[J)",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$HistoricalOps;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1264
    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 1265
    .local v2, "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    :try_start_3
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_8} :catch_d3

    move-object v15, v0

    .line 1266
    .local v15, "stream":Ljava/io/FileInputStream;
    :try_start_9
    invoke-static {v15}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Landroid/util/TypedXmlPullParser;

    move-result-object v0

    .line 1267
    .local v0, "parser":Landroid/util/TypedXmlPullParser;
    const-string/jumbo v3, "history"

    invoke-static {v0, v3}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 1271
    const-string/jumbo v3, "ver"

    const/4 v4, 0x0

    invoke-interface {v0, v4, v3}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    move v14, v3

    .line 1272
    .local v14, "version":I
    const/4 v3, 0x2

    if-lt v14, v3, :cond_ac

    .line 1277
    const-string/jumbo v3, "ov"

    const-wide/16 v5, 0x0

    invoke-interface {v0, v4, v3, v5, v6}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v3

    move-wide/from16 v16, v3

    .line 1278
    .local v16, "overflowMillis":J
    invoke-interface {v0}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v3
    :try_end_2e
    .catchall {:try_start_9 .. :try_end_2e} :catchall_c7

    move v13, v3

    move-object/from16 v18, v2

    .line 1279
    .end local v2    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    .local v13, "depth":I
    .local v18, "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    :goto_31
    :try_start_31
    invoke-static {v0, v13}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v2

    if-eqz v2, :cond_91

    .line 1280
    const-string/jumbo v2, "ops"

    invoke-interface {v0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_88

    .line 1281
    move-object/from16 v2, p0

    move-object v3, v0

    move/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move-wide/from16 v9, p7

    move-wide/from16 v11, p9

    move/from16 v19, v13

    .end local v13    # "depth":I
    .local v19, "depth":I
    move/from16 v13, p11

    move/from16 v20, v14

    .end local v14    # "version":I
    .local v20, "version":I
    move-object/from16 v14, p12

    invoke-direct/range {v2 .. v14}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->readeHistoricalOpsDLocked(Landroid/util/TypedXmlPullParser;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;IJJI[J)Landroid/app/AppOpsManager$HistoricalOps;

    move-result-object v2

    .line 1285
    .local v2, "ops":Landroid/app/AppOpsManager$HistoricalOps;
    if-nez v2, :cond_64

    .line 1286
    goto :goto_8c

    .line 1288
    :cond_64
    invoke-virtual {v2}, Landroid/app/AppOpsManager$HistoricalOps;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_6e

    .line 1289
    invoke-static {v0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1290
    goto :goto_8c

    .line 1292
    :cond_6e
    if-nez v18, :cond_78

    .line 1293
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
    :try_end_75
    .catchall {:try_start_31 .. :try_end_75} :catchall_a7

    move-object/from16 v18, v3

    goto :goto_7a

    .line 1292
    :cond_78
    move-object/from16 v3, v18

    .line 1295
    .end local v18    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    .local v3, "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    :goto_7a
    :try_start_7a
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_7d
    .catchall {:try_start_7a .. :try_end_7d} :catchall_84

    .line 1296
    move-object/from16 v18, v3

    move/from16 v13, v19

    move/from16 v14, v20

    .end local v2    # "ops":Landroid/app/AppOpsManager$HistoricalOps;
    goto :goto_31

    .line 1265
    .end local v0    # "parser":Landroid/util/TypedXmlPullParser;
    .end local v16    # "overflowMillis":J
    .end local v19    # "depth":I
    .end local v20    # "version":I
    :catchall_84
    move-exception v0

    move-object v2, v3

    move-object v3, v0

    goto :goto_c9

    .line 1280
    .end local v3    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    .restart local v0    # "parser":Landroid/util/TypedXmlPullParser;
    .restart local v13    # "depth":I
    .restart local v14    # "version":I
    .restart local v16    # "overflowMillis":J
    .restart local v18    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    :cond_88
    move/from16 v19, v13

    move/from16 v20, v14

    .line 1279
    .end local v13    # "depth":I
    .end local v14    # "version":I
    .restart local v19    # "depth":I
    .restart local v20    # "version":I
    :goto_8c
    move/from16 v13, v19

    move/from16 v14, v20

    goto :goto_31

    .line 1298
    .end local v19    # "depth":I
    .end local v20    # "version":I
    .restart local v13    # "depth":I
    .restart local v14    # "version":I
    :cond_91
    move/from16 v19, v13

    move/from16 v20, v14

    .end local v13    # "depth":I
    .end local v14    # "version":I
    .restart local v19    # "depth":I
    .restart local v20    # "version":I
    if-eqz p12, :cond_9e

    .line 1299
    const/4 v2, 0x0

    :try_start_98
    aget-wide v3, p12, v2

    add-long v3, v3, v16

    aput-wide v3, p12, v2
    :try_end_9e
    .catchall {:try_start_98 .. :try_end_9e} :catchall_a7

    .line 1301
    .end local v0    # "parser":Landroid/util/TypedXmlPullParser;
    .end local v16    # "overflowMillis":J
    .end local v19    # "depth":I
    .end local v20    # "version":I
    :cond_9e
    :try_start_9e
    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V
    :try_end_a1
    .catch Ljava/io/FileNotFoundException; {:try_start_9e .. :try_end_a1} :catch_a3

    .line 1304
    .end local v15    # "stream":Ljava/io/FileInputStream;
    nop

    .line 1312
    return-object v18

    .line 1301
    :catch_a3
    move-exception v0

    move-object/from16 v2, v18

    goto :goto_d4

    .line 1265
    .restart local v15    # "stream":Ljava/io/FileInputStream;
    :catchall_a7
    move-exception v0

    move-object v3, v0

    move-object/from16 v2, v18

    goto :goto_c9

    .line 1273
    .end local v18    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    .restart local v0    # "parser":Landroid/util/TypedXmlPullParser;
    .local v2, "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    .restart local v14    # "version":I
    :cond_ac
    move/from16 v20, v14

    .end local v14    # "version":I
    .restart local v20    # "version":I
    :try_start_ae
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Dropping unsupported history version 1 for file:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v2    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    .end local v15    # "stream":Ljava/io/FileInputStream;
    .end local p0    # "this":Lcom/android/server/appop/HistoricalRegistry$Persistence;
    .end local p1    # "file":Ljava/io/File;
    .end local p2    # "filterUid":I
    .end local p3    # "filterPackageName":Ljava/lang/String;
    .end local p4    # "filterAttributionTag":Ljava/lang/String;
    .end local p5    # "filterOpNames":[Ljava/lang/String;
    .end local p6    # "filter":I
    .end local p7    # "filterBeginTimeMillis":J
    .end local p9    # "filterEndTimeMillis":J
    .end local p11    # "filterFlags":I
    .end local p12    # "cumulativeOverflowMillis":[J
    throw v3
    :try_end_c7
    .catchall {:try_start_ae .. :try_end_c7} :catchall_c7

    .line 1265
    .end local v0    # "parser":Landroid/util/TypedXmlPullParser;
    .end local v20    # "version":I
    .restart local v2    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    .restart local v15    # "stream":Ljava/io/FileInputStream;
    .restart local p0    # "this":Lcom/android/server/appop/HistoricalRegistry$Persistence;
    .restart local p1    # "file":Ljava/io/File;
    .restart local p2    # "filterUid":I
    .restart local p3    # "filterPackageName":Ljava/lang/String;
    .restart local p4    # "filterAttributionTag":Ljava/lang/String;
    .restart local p5    # "filterOpNames":[Ljava/lang/String;
    .restart local p6    # "filter":I
    .restart local p7    # "filterBeginTimeMillis":J
    .restart local p9    # "filterEndTimeMillis":J
    .restart local p11    # "filterFlags":I
    .restart local p12    # "cumulativeOverflowMillis":[J
    :catchall_c7
    move-exception v0

    move-object v3, v0

    :goto_c9
    :try_start_c9
    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V
    :try_end_cc
    .catchall {:try_start_c9 .. :try_end_cc} :catchall_cd

    goto :goto_d2

    :catchall_cd
    move-exception v0

    move-object v4, v0

    :try_start_cf
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v2    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    .end local p0    # "this":Lcom/android/server/appop/HistoricalRegistry$Persistence;
    .end local p1    # "file":Ljava/io/File;
    .end local p2    # "filterUid":I
    .end local p3    # "filterPackageName":Ljava/lang/String;
    .end local p4    # "filterAttributionTag":Ljava/lang/String;
    .end local p5    # "filterOpNames":[Ljava/lang/String;
    .end local p6    # "filter":I
    .end local p7    # "filterBeginTimeMillis":J
    .end local p9    # "filterEndTimeMillis":J
    .end local p11    # "filterFlags":I
    .end local p12    # "cumulativeOverflowMillis":[J
    :goto_d2
    throw v3
    :try_end_d3
    .catch Ljava/io/FileNotFoundException; {:try_start_cf .. :try_end_d3} :catch_d3

    .line 1301
    .end local v15    # "stream":Ljava/io/FileInputStream;
    .restart local v2    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    .restart local p0    # "this":Lcom/android/server/appop/HistoricalRegistry$Persistence;
    .restart local p1    # "file":Ljava/io/File;
    .restart local p2    # "filterUid":I
    .restart local p3    # "filterPackageName":Ljava/lang/String;
    .restart local p4    # "filterAttributionTag":Ljava/lang/String;
    .restart local p5    # "filterOpNames":[Ljava/lang/String;
    .restart local p6    # "filter":I
    .restart local p7    # "filterBeginTimeMillis":J
    .restart local p9    # "filterEndTimeMillis":J
    .restart local p11    # "filterFlags":I
    .restart local p12    # "cumulativeOverflowMillis":[J
    :catch_d3
    move-exception v0

    .line 1302
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_d4
    sget-object v3, Lcom/android/server/appop/HistoricalRegistry$Persistence;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No history file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1303
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    return-object v3
.end method

.method private readHistoricalOpsLocked(Ljava/io/File;JJILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;IJJI[JILjava/util/Set;)Ljava/util/List;
    .registers 36
    .param p1, "baseDir"    # Ljava/io/File;
    .param p2, "intervalBeginMillis"    # J
    .param p4, "intervalEndMillis"    # J
    .param p6, "filterUid"    # I
    .param p7, "filterPackageName"    # Ljava/lang/String;
    .param p8, "filterAttributionTag"    # Ljava/lang/String;
    .param p9, "filterOpNames"    # [Ljava/lang/String;
    .param p10, "filter"    # I
    .param p11, "filterBeginTimeMillis"    # J
    .param p13, "filterEndTimeMillis"    # J
    .param p15, "filterFlags"    # I
    .param p16, "cumulativeOverflowMillis"    # [J
    .param p17, "depth"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "JJI",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "IJJI[JI",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$HistoricalOps;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1228
    .local p18, "historyFiles":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v13, p0

    move-object/from16 v14, p18

    move-object/from16 v15, p1

    move/from16 v12, p17

    invoke-direct {v13, v15, v12}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->generateFile(Ljava/io/File;I)Ljava/io/File;

    move-result-object v16

    .line 1229
    .local v16, "file":Ljava/io/File;
    if-eqz v14, :cond_15

    .line 1230
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v14, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1232
    :cond_15
    cmp-long v0, p11, p13

    if-gez v0, :cond_64

    cmp-long v0, p13, p2

    if-gez v0, :cond_1e

    goto :goto_64

    .line 1237
    :cond_1e
    sub-long v0, p4, p2

    iget-wide v2, v13, Lcom/android/server/appop/HistoricalRegistry$Persistence;->mIntervalCompressionMultiplier:J

    div-long/2addr v0, v2

    add-long v0, p4, v0

    .line 1239
    if-eqz p16, :cond_2b

    const/4 v2, 0x0

    aget-wide v2, p16, v2

    goto :goto_2d

    :cond_2b
    const-wide/16 v2, 0x0

    :goto_2d
    add-long/2addr v0, v2

    cmp-long v0, p11, v0

    if-gez v0, :cond_54

    .line 1240
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_39

    goto :goto_54

    .line 1249
    :cond_39
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, p6

    move-object/from16 v3, p7

    move-object/from16 v4, p8

    move-object/from16 v5, p9

    move/from16 v6, p10

    move-wide/from16 v7, p11

    move-wide/from16 v9, p13

    move/from16 v11, p15

    move-object/from16 v12, p16

    invoke-direct/range {v0 .. v12}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->readHistoricalOpsLocked(Ljava/io/File;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;IJJI[J)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1241
    :cond_54
    :goto_54
    if-eqz v14, :cond_5f

    invoke-interface/range {p18 .. p18}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5d

    goto :goto_5f

    .line 1246
    :cond_5d
    const/4 v0, 0x0

    return-object v0

    .line 1243
    :cond_5f
    :goto_5f
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1235
    :cond_64
    :goto_64
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private readHistoricalPackageOpsDLocked(Landroid/app/AppOpsManager$HistoricalOps;ILandroid/util/TypedXmlPullParser;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;IID)Landroid/app/AppOpsManager$HistoricalOps;
    .registers 27
    .param p1, "ops"    # Landroid/app/AppOpsManager$HistoricalOps;
    .param p2, "uid"    # I
    .param p3, "parser"    # Landroid/util/TypedXmlPullParser;
    .param p4, "filterPackageName"    # Ljava/lang/String;
    .param p5, "filterAttributionTag"    # Ljava/lang/String;
    .param p6, "filterOpNames"    # [Ljava/lang/String;
    .param p7, "filter"    # I
    .param p8, "filterFlags"    # I
    .param p9, "filterScale"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1392
    move-object/from16 v11, p3

    const-string/jumbo v0, "na"

    invoke-static {v11, v0}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1393
    .local v12, "packageName":Ljava/lang/String;
    and-int/lit8 v0, p7, 0x2

    if-eqz v0, :cond_1a

    move-object/from16 v13, p4

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 1394
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1395
    const/4 v0, 0x0

    return-object v0

    .line 1393
    :cond_1a
    move-object/from16 v13, p4

    .line 1397
    :cond_1c
    invoke-interface/range {p3 .. p3}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v14

    move-object/from16 v15, p1

    .line 1398
    .end local p1    # "ops":Landroid/app/AppOpsManager$HistoricalOps;
    .local v14, "depth":I
    .local v15, "ops":Landroid/app/AppOpsManager$HistoricalOps;
    :cond_22
    :goto_22
    invoke-static {v11, v14}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 1399
    invoke-interface/range {p3 .. p3}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ftr"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 1400
    move-object/from16 v0, p0

    move-object v1, v15

    move/from16 v2, p2

    move-object v3, v12

    move-object/from16 v4, p3

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-wide/from16 v9, p9

    invoke-direct/range {v0 .. v10}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->readHistoricalAttributionOpsDLocked(Landroid/app/AppOpsManager$HistoricalOps;ILjava/lang/String;Landroid/util/TypedXmlPullParser;Ljava/lang/String;[Ljava/lang/String;IID)Landroid/app/AppOpsManager$HistoricalOps;

    move-result-object v0

    .line 1403
    .local v0, "returnedOps":Landroid/app/AppOpsManager$HistoricalOps;
    if-nez v15, :cond_4e

    .line 1404
    move-object v1, v0

    move-object v15, v1

    .line 1406
    .end local v0    # "returnedOps":Landroid/app/AppOpsManager$HistoricalOps;
    :cond_4e
    goto :goto_22

    .line 1408
    :cond_4f
    return-object v15
.end method

.method private readHistoricalUidOpsDLocked(Landroid/app/AppOpsManager$HistoricalOps;Landroid/util/TypedXmlPullParser;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;IID)Landroid/app/AppOpsManager$HistoricalOps;
    .registers 27
    .param p1, "ops"    # Landroid/app/AppOpsManager$HistoricalOps;
    .param p2, "parser"    # Landroid/util/TypedXmlPullParser;
    .param p3, "filterUid"    # I
    .param p4, "filterPackageName"    # Ljava/lang/String;
    .param p5, "filterAttributionTag"    # Ljava/lang/String;
    .param p6, "filterOpNames"    # [Ljava/lang/String;
    .param p7, "filter"    # I
    .param p8, "filterFlags"    # I
    .param p9, "filterScale"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1367
    move-object/from16 v11, p2

    const/4 v0, 0x0

    const-string/jumbo v1, "na"

    invoke-interface {v11, v0, v1}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    .line 1368
    .local v12, "uid":I
    and-int/lit8 v1, p7, 0x1

    if-eqz v1, :cond_16

    move/from16 v13, p3

    if-eq v13, v12, :cond_18

    .line 1369
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1370
    return-object v0

    .line 1368
    :cond_16
    move/from16 v13, p3

    .line 1372
    :cond_18
    invoke-interface/range {p2 .. p2}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v14

    move-object/from16 v15, p1

    .line 1373
    .end local p1    # "ops":Landroid/app/AppOpsManager$HistoricalOps;
    .local v14, "depth":I
    .local v15, "ops":Landroid/app/AppOpsManager$HistoricalOps;
    :cond_1e
    :goto_1e
    invoke-static {v11, v14}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 1374
    invoke-interface/range {p2 .. p2}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "pkg"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1375
    move-object/from16 v0, p0

    move-object v1, v15

    move v2, v12

    move-object/from16 v3, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-wide/from16 v9, p9

    invoke-direct/range {v0 .. v10}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->readHistoricalPackageOpsDLocked(Landroid/app/AppOpsManager$HistoricalOps;ILandroid/util/TypedXmlPullParser;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;IID)Landroid/app/AppOpsManager$HistoricalOps;

    move-result-object v0

    .line 1378
    .local v0, "returnedOps":Landroid/app/AppOpsManager$HistoricalOps;
    if-nez v15, :cond_4b

    .line 1379
    move-object v1, v0

    move-object v15, v1

    .line 1381
    .end local v0    # "returnedOps":Landroid/app/AppOpsManager$HistoricalOps;
    :cond_4b
    goto :goto_1e

    .line 1383
    :cond_4c
    return-object v15
.end method

.method private readStateDLocked(Landroid/app/AppOpsManager$HistoricalOps;ILjava/lang/String;Ljava/lang/String;ILandroid/util/TypedXmlPullParser;ID)Landroid/app/AppOpsManager$HistoricalOps;
    .registers 34
    .param p1, "ops"    # Landroid/app/AppOpsManager$HistoricalOps;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "attributionTag"    # Ljava/lang/String;
    .param p5, "op"    # I
    .param p6, "parser"    # Landroid/util/TypedXmlPullParser;
    .param p7, "filterFlags"    # I
    .param p8, "filterScale"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1466
    move-object/from16 v0, p6

    const/4 v1, 0x0

    const-string/jumbo v2, "na"

    invoke-interface {v0, v1, v2}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    .line 1467
    .local v2, "key":J
    invoke-static {v2, v3}, Landroid/app/AppOpsManager;->extractFlagsFromKey(J)I

    move-result v4

    and-int v4, v4, p7

    .line 1468
    .local v4, "flags":I
    if-nez v4, :cond_13

    .line 1469
    return-object v1

    .line 1471
    :cond_13
    invoke-static {v2, v3}, Landroid/app/AppOpsManager;->extractUidStateFromKey(J)I

    move-result v14

    .line 1472
    .local v14, "uidState":I
    const-string v5, "ac"

    const-wide/16 v12, 0x0

    invoke-interface {v0, v1, v5, v12, v13}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v5

    .line 1473
    .local v5, "accessCount":J
    cmp-long v7, v5, v12

    if-lez v7, :cond_54

    .line 1474
    invoke-static/range {p8 .. p9}, Ljava/lang/Double;->isNaN(D)Z

    move-result v7

    if-nez v7, :cond_33

    .line 1475
    long-to-double v7, v5

    mul-double v7, v7, p8

    invoke-static {v7, v8}, Landroid/app/AppOpsManager$HistoricalOps;->round(D)D

    move-result-wide v7

    double-to-long v5, v7

    move-wide v15, v5

    goto :goto_34

    .line 1474
    :cond_33
    move-wide v15, v5

    .line 1478
    .end local v5    # "accessCount":J
    .local v15, "accessCount":J
    :goto_34
    if-nez p1, :cond_3e

    .line 1479
    new-instance v5, Landroid/app/AppOpsManager$HistoricalOps;

    invoke-direct {v5, v12, v13, v12, v13}, Landroid/app/AppOpsManager$HistoricalOps;-><init>(JJ)V

    move-object/from16 v17, v5

    .end local p1    # "ops":Landroid/app/AppOpsManager$HistoricalOps;
    .local v5, "ops":Landroid/app/AppOpsManager$HistoricalOps;
    goto :goto_40

    .line 1478
    .end local v5    # "ops":Landroid/app/AppOpsManager$HistoricalOps;
    .restart local p1    # "ops":Landroid/app/AppOpsManager$HistoricalOps;
    :cond_3e
    move-object/from16 v17, p1

    .line 1481
    .end local p1    # "ops":Landroid/app/AppOpsManager$HistoricalOps;
    .local v17, "ops":Landroid/app/AppOpsManager$HistoricalOps;
    :goto_40
    move-object/from16 v5, v17

    move/from16 v6, p5

    move/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move v10, v14

    move v11, v4

    move-wide/from16 v18, v2

    move-wide v2, v12

    .end local v2    # "key":J
    .local v18, "key":J
    move-wide v12, v15

    invoke-virtual/range {v5 .. v13}, Landroid/app/AppOpsManager$HistoricalOps;->increaseAccessCount(IILjava/lang/String;Ljava/lang/String;IIJ)V

    goto :goto_5a

    .line 1473
    .end local v15    # "accessCount":J
    .end local v17    # "ops":Landroid/app/AppOpsManager$HistoricalOps;
    .end local v18    # "key":J
    .restart local v2    # "key":J
    .local v5, "accessCount":J
    .restart local p1    # "ops":Landroid/app/AppOpsManager$HistoricalOps;
    :cond_54
    move-wide/from16 v18, v2

    move-wide v2, v12

    .end local v2    # "key":J
    .restart local v18    # "key":J
    move-object/from16 v17, p1

    move-wide v15, v5

    .line 1484
    .end local v5    # "accessCount":J
    .end local p1    # "ops":Landroid/app/AppOpsManager$HistoricalOps;
    .restart local v15    # "accessCount":J
    .restart local v17    # "ops":Landroid/app/AppOpsManager$HistoricalOps;
    :goto_5a
    const-string/jumbo v5, "rc"

    invoke-interface {v0, v1, v5, v2, v3}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v5

    .line 1485
    .local v5, "rejectCount":J
    cmp-long v7, v5, v2

    if-lez v7, :cond_93

    .line 1486
    invoke-static/range {p8 .. p9}, Ljava/lang/Double;->isNaN(D)Z

    move-result v7

    if-nez v7, :cond_76

    .line 1487
    long-to-double v7, v5

    mul-double v7, v7, p8

    invoke-static {v7, v8}, Landroid/app/AppOpsManager$HistoricalOps;->round(D)D

    move-result-wide v7

    double-to-long v5, v7

    move-wide/from16 v20, v5

    goto :goto_78

    .line 1486
    :cond_76
    move-wide/from16 v20, v5

    .line 1490
    .end local v5    # "rejectCount":J
    .local v20, "rejectCount":J
    :goto_78
    if-nez v17, :cond_81

    .line 1491
    new-instance v5, Landroid/app/AppOpsManager$HistoricalOps;

    invoke-direct {v5, v2, v3, v2, v3}, Landroid/app/AppOpsManager$HistoricalOps;-><init>(JJ)V

    move-object/from16 v17, v5

    .line 1493
    :cond_81
    move-object/from16 v5, v17

    move/from16 v6, p5

    move/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move v10, v14

    move v11, v4

    move-wide/from16 v12, v20

    invoke-virtual/range {v5 .. v13}, Landroid/app/AppOpsManager$HistoricalOps;->increaseRejectCount(IILjava/lang/String;Ljava/lang/String;IIJ)V

    goto :goto_95

    .line 1485
    .end local v20    # "rejectCount":J
    .restart local v5    # "rejectCount":J
    :cond_93
    move-wide/from16 v20, v5

    .line 1496
    .end local v5    # "rejectCount":J
    .restart local v20    # "rejectCount":J
    :goto_95
    const-string v5, "du"

    invoke-interface {v0, v1, v5, v2, v3}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v5

    .line 1497
    .local v5, "accessDuration":J
    cmp-long v1, v5, v2

    if-lez v1, :cond_ce

    .line 1498
    invoke-static/range {p8 .. p9}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-nez v1, :cond_b0

    .line 1499
    long-to-double v7, v5

    mul-double v7, v7, p8

    invoke-static {v7, v8}, Landroid/app/AppOpsManager$HistoricalOps;->round(D)D

    move-result-wide v7

    double-to-long v5, v7

    move-wide/from16 v22, v5

    goto :goto_b2

    .line 1498
    :cond_b0
    move-wide/from16 v22, v5

    .line 1502
    .end local v5    # "accessDuration":J
    .local v22, "accessDuration":J
    :goto_b2
    if-nez v17, :cond_bb

    .line 1503
    new-instance v1, Landroid/app/AppOpsManager$HistoricalOps;

    invoke-direct {v1, v2, v3, v2, v3}, Landroid/app/AppOpsManager$HistoricalOps;-><init>(JJ)V

    move-object/from16 v17, v1

    .line 1505
    :cond_bb
    move-object/from16 v5, v17

    move/from16 v6, p5

    move/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move v10, v14

    move v11, v4

    move-wide/from16 v12, v22

    invoke-virtual/range {v5 .. v13}, Landroid/app/AppOpsManager$HistoricalOps;->increaseAccessDuration(IILjava/lang/String;Ljava/lang/String;IIJ)V

    move-wide/from16 v5, v22

    .line 1508
    .end local v22    # "accessDuration":J
    .restart local v5    # "accessDuration":J
    :cond_ce
    return-object v17
.end method

.method private readeHistoricalOpsDLocked(Landroid/util/TypedXmlPullParser;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;IJJI[J)Landroid/app/AppOpsManager$HistoricalOps;
    .registers 37
    .param p1, "parser"    # Landroid/util/TypedXmlPullParser;
    .param p2, "filterUid"    # I
    .param p3, "filterPackageName"    # Ljava/lang/String;
    .param p4, "filterAttributionTag"    # Ljava/lang/String;
    .param p5, "filterOpNames"    # [Ljava/lang/String;
    .param p6, "filter"    # I
    .param p7, "filterBeginTimeMillis"    # J
    .param p9, "filterEndTimeMillis"    # J
    .param p11, "filterFlags"    # I
    .param p12, "cumulativeOverflowMillis"    # [J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1323
    move-object/from16 v11, p1

    move-wide/from16 v12, p7

    move-wide/from16 v14, p9

    const/4 v0, 0x0

    const-string v1, "beg"

    const-wide/16 v2, 0x0

    invoke-interface {v11, v0, v1, v2, v3}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v4

    .line 1324
    const/4 v1, 0x0

    if-eqz p12, :cond_15

    aget-wide v6, p12, v1

    goto :goto_16

    :cond_15
    move-wide v6, v2

    :goto_16
    add-long v9, v4, v6

    .line 1325
    .local v9, "beginTimeMillis":J
    const-string v4, "end"

    invoke-interface {v11, v0, v4, v2, v3}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v4

    .line 1326
    if-eqz p12, :cond_23

    aget-wide v6, p12, v1

    goto :goto_24

    :cond_23
    move-wide v6, v2

    :goto_24
    add-long v7, v4, v6

    .line 1328
    .local v7, "endTimeMillis":J
    cmp-long v1, v14, v9

    if-gez v1, :cond_2b

    .line 1329
    return-object v0

    .line 1332
    :cond_2b
    cmp-long v0, v12, v7

    if-lez v0, :cond_35

    .line 1333
    new-instance v0, Landroid/app/AppOpsManager$HistoricalOps;

    invoke-direct {v0, v2, v3, v2, v3}, Landroid/app/AppOpsManager$HistoricalOps;-><init>(JJ)V

    return-object v0

    .line 1335
    :cond_35
    invoke-static {v9, v10, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    .line 1336
    .local v5, "filteredBeginTimeMillis":J
    invoke-static {v7, v8, v14, v15}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    .line 1341
    .local v3, "filteredEndTimeMillis":J
    sub-long v0, v3, v5

    long-to-double v0, v0

    move-wide/from16 v16, v3

    .end local v3    # "filteredEndTimeMillis":J
    .local v16, "filteredEndTimeMillis":J
    sub-long v2, v7, v9

    long-to-double v2, v2

    div-double v18, v0, v2

    .line 1343
    .local v18, "filterScale":D
    const/4 v0, 0x0

    .line 1344
    .local v0, "ops":Landroid/app/AppOpsManager$HistoricalOps;
    invoke-interface/range {p1 .. p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v4

    move-object v3, v0

    .line 1345
    .end local v0    # "ops":Landroid/app/AppOpsManager$HistoricalOps;
    .local v3, "ops":Landroid/app/AppOpsManager$HistoricalOps;
    .local v4, "depth":I
    :goto_4d
    invoke-static {v11, v4}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v0

    if-eqz v0, :cond_aa

    .line 1346
    invoke-interface/range {p1 .. p1}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "uid"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_97

    .line 1347
    move-object/from16 v0, p0

    move-object v1, v3

    move-object/from16 v2, p1

    move-object v11, v3

    move-wide/from16 v12, v16

    .end local v3    # "ops":Landroid/app/AppOpsManager$HistoricalOps;
    .end local v16    # "filteredEndTimeMillis":J
    .local v11, "ops":Landroid/app/AppOpsManager$HistoricalOps;
    .local v12, "filteredEndTimeMillis":J
    move/from16 v3, p2

    move/from16 v16, v4

    .end local v4    # "depth":I
    .local v16, "depth":I
    move-object/from16 v4, p3

    move-wide v14, v5

    .end local v5    # "filteredBeginTimeMillis":J
    .local v14, "filteredBeginTimeMillis":J
    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-wide/from16 v20, v7

    .end local v7    # "endTimeMillis":J
    .local v20, "endTimeMillis":J
    move/from16 v7, p6

    move/from16 v8, p11

    move-wide/from16 v22, v9

    .end local v9    # "beginTimeMillis":J
    .local v22, "beginTimeMillis":J
    move-wide/from16 v9, v18

    invoke-direct/range {v0 .. v10}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->readHistoricalUidOpsDLocked(Landroid/app/AppOpsManager$HistoricalOps;Landroid/util/TypedXmlPullParser;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;IID)Landroid/app/AppOpsManager$HistoricalOps;

    move-result-object v0

    .line 1350
    .local v0, "returnedOps":Landroid/app/AppOpsManager$HistoricalOps;
    if-nez v11, :cond_86

    .line 1351
    move-object v1, v0

    move-object v3, v1

    .end local v11    # "ops":Landroid/app/AppOpsManager$HistoricalOps;
    .local v1, "ops":Landroid/app/AppOpsManager$HistoricalOps;
    goto :goto_87

    .line 1350
    .end local v1    # "ops":Landroid/app/AppOpsManager$HistoricalOps;
    .restart local v11    # "ops":Landroid/app/AppOpsManager$HistoricalOps;
    :cond_86
    move-object v3, v11

    .line 1353
    .end local v0    # "returnedOps":Landroid/app/AppOpsManager$HistoricalOps;
    .end local v11    # "ops":Landroid/app/AppOpsManager$HistoricalOps;
    .restart local v3    # "ops":Landroid/app/AppOpsManager$HistoricalOps;
    :goto_87
    move-object/from16 v11, p1

    move-wide v5, v14

    move/from16 v4, v16

    move-wide/from16 v7, v20

    move-wide/from16 v9, v22

    move-wide/from16 v14, p9

    move-wide/from16 v16, v12

    move-wide/from16 v12, p7

    goto :goto_4d

    .line 1346
    .end local v12    # "filteredEndTimeMillis":J
    .end local v14    # "filteredBeginTimeMillis":J
    .end local v20    # "endTimeMillis":J
    .end local v22    # "beginTimeMillis":J
    .restart local v4    # "depth":I
    .restart local v5    # "filteredBeginTimeMillis":J
    .restart local v7    # "endTimeMillis":J
    .restart local v9    # "beginTimeMillis":J
    .local v16, "filteredEndTimeMillis":J
    :cond_97
    move-object v11, v3

    move-wide v14, v5

    move-wide/from16 v20, v7

    move-wide/from16 v22, v9

    move-wide/from16 v12, v16

    move/from16 v16, v4

    .end local v3    # "ops":Landroid/app/AppOpsManager$HistoricalOps;
    .end local v4    # "depth":I
    .end local v5    # "filteredBeginTimeMillis":J
    .end local v7    # "endTimeMillis":J
    .end local v9    # "beginTimeMillis":J
    .restart local v11    # "ops":Landroid/app/AppOpsManager$HistoricalOps;
    .restart local v12    # "filteredEndTimeMillis":J
    .restart local v14    # "filteredBeginTimeMillis":J
    .local v16, "depth":I
    .restart local v20    # "endTimeMillis":J
    .restart local v22    # "beginTimeMillis":J
    move-object/from16 v11, p1

    move-wide/from16 v14, p9

    move-wide/from16 v16, v12

    move-wide/from16 v12, p7

    goto :goto_4d

    .line 1355
    .end local v11    # "ops":Landroid/app/AppOpsManager$HistoricalOps;
    .end local v12    # "filteredEndTimeMillis":J
    .end local v14    # "filteredBeginTimeMillis":J
    .end local v20    # "endTimeMillis":J
    .end local v22    # "beginTimeMillis":J
    .restart local v3    # "ops":Landroid/app/AppOpsManager$HistoricalOps;
    .restart local v4    # "depth":I
    .restart local v5    # "filteredBeginTimeMillis":J
    .restart local v7    # "endTimeMillis":J
    .restart local v9    # "beginTimeMillis":J
    .local v16, "filteredEndTimeMillis":J
    :cond_aa
    move-object v11, v3

    move-wide v14, v5

    move-wide/from16 v20, v7

    move-wide/from16 v22, v9

    move-wide/from16 v12, v16

    move/from16 v16, v4

    .end local v3    # "ops":Landroid/app/AppOpsManager$HistoricalOps;
    .end local v4    # "depth":I
    .end local v5    # "filteredBeginTimeMillis":J
    .end local v7    # "endTimeMillis":J
    .end local v9    # "beginTimeMillis":J
    .restart local v11    # "ops":Landroid/app/AppOpsManager$HistoricalOps;
    .restart local v12    # "filteredEndTimeMillis":J
    .restart local v14    # "filteredBeginTimeMillis":J
    .local v16, "depth":I
    .restart local v20    # "endTimeMillis":J
    .restart local v22    # "beginTimeMillis":J
    if-eqz v11, :cond_b9

    .line 1356
    invoke-virtual {v11, v14, v15, v12, v13}, Landroid/app/AppOpsManager$HistoricalOps;->setBeginAndEndTime(JJ)V

    .line 1358
    :cond_b9
    return-object v11
.end method

.method private static spliceFromBeginning(Landroid/app/AppOpsManager$HistoricalOps;D)Landroid/app/AppOpsManager$HistoricalOps;
    .registers 4
    .param p0, "ops"    # Landroid/app/AppOpsManager$HistoricalOps;
    .param p1, "spliceRatio"    # D

    .line 1695
    invoke-virtual {p0, p1, p2}, Landroid/app/AppOpsManager$HistoricalOps;->spliceFromBeginning(D)Landroid/app/AppOpsManager$HistoricalOps;

    move-result-object v0

    .line 1699
    .local v0, "splice":Landroid/app/AppOpsManager$HistoricalOps;
    return-object v0
.end method

.method private static spliceFromEnd(Landroid/app/AppOpsManager$HistoricalOps;D)Landroid/app/AppOpsManager$HistoricalOps;
    .registers 4
    .param p0, "ops"    # Landroid/app/AppOpsManager$HistoricalOps;
    .param p1, "spliceRatio"    # D

    .line 1682
    invoke-virtual {p0, p1, p2}, Landroid/app/AppOpsManager$HistoricalOps;->spliceFromEnd(D)Landroid/app/AppOpsManager$HistoricalOps;

    move-result-object v0

    .line 1686
    .local v0, "splice":Landroid/app/AppOpsManager$HistoricalOps;
    return-object v0
.end method

.method private writeHistoricalAttributionOpsDLocked(Landroid/app/AppOpsManager$AttributedHistoricalOps;Landroid/util/TypedXmlSerializer;)V
    .registers 8
    .param p1, "attributionOps"    # Landroid/app/AppOpsManager$AttributedHistoricalOps;
    .param p2, "serializer"    # Landroid/util/TypedXmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1586
    const/4 v0, 0x0

    const-string v1, "ftr"

    invoke-interface {p2, v0, v1}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1587
    invoke-virtual {p1}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->getTag()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "na"

    invoke-static {p2, v3, v2}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1588
    invoke-virtual {p1}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->getOpCount()I

    move-result v2

    .line 1589
    .local v2, "opCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_15
    if-ge v3, v2, :cond_21

    .line 1590
    invoke-virtual {p1, v3}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->getOpAt(I)Landroid/app/AppOpsManager$HistoricalOp;

    move-result-object v4

    .line 1591
    .local v4, "op":Landroid/app/AppOpsManager$HistoricalOp;
    invoke-direct {p0, v4, p2}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->writeHistoricalOpDLocked(Landroid/app/AppOpsManager$HistoricalOp;Landroid/util/TypedXmlSerializer;)V

    .line 1589
    .end local v4    # "op":Landroid/app/AppOpsManager$HistoricalOp;
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 1593
    .end local v3    # "i":I
    :cond_21
    invoke-interface {p2, v0, v1}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1594
    return-void
.end method

.method private writeHistoricalOpDLocked(Landroid/app/AppOpsManager$HistoricalOp;Landroid/util/TypedXmlSerializer;)V
    .registers 10
    .param p1, "op"    # Landroid/app/AppOpsManager$HistoricalOp;
    .param p2, "serializer"    # Landroid/util/TypedXmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1598
    invoke-virtual {p1}, Landroid/app/AppOpsManager$HistoricalOp;->collectKeys()Landroid/util/LongSparseArray;

    move-result-object v0

    .line 1599
    .local v0, "keys":Landroid/util/LongSparseArray;
    if-eqz v0, :cond_33

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    if-gtz v1, :cond_d

    goto :goto_33

    .line 1602
    :cond_d
    const/4 v1, 0x0

    const-string/jumbo v2, "op"

    invoke-interface {p2, v1, v2}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1603
    invoke-virtual {p1}, Landroid/app/AppOpsManager$HistoricalOp;->getOpCode()I

    move-result v3

    const-string/jumbo v4, "na"

    invoke-interface {p2, v1, v4, v3}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 1604
    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v3

    .line 1605
    .local v3, "keyCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_23
    if-ge v4, v3, :cond_2f

    .line 1606
    invoke-virtual {v0, v4}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v5

    invoke-direct {p0, p1, v5, v6, p2}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->writeStateOnLocked(Landroid/app/AppOpsManager$HistoricalOp;JLandroid/util/TypedXmlSerializer;)V

    .line 1605
    add-int/lit8 v4, v4, 0x1

    goto :goto_23

    .line 1608
    .end local v4    # "i":I
    :cond_2f
    invoke-interface {p2, v1, v2}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1609
    return-void

    .line 1600
    .end local v3    # "keyCount":I
    :cond_33
    :goto_33
    return-void
.end method

.method private writeHistoricalOpDLocked(Landroid/app/AppOpsManager$HistoricalOps;Landroid/util/TypedXmlSerializer;)V
    .registers 8
    .param p1, "ops"    # Landroid/app/AppOpsManager$HistoricalOps;
    .param p2, "serializer"    # Landroid/util/TypedXmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1548
    const/4 v0, 0x0

    const-string/jumbo v1, "ops"

    invoke-interface {p2, v0, v1}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1549
    invoke-virtual {p1}, Landroid/app/AppOpsManager$HistoricalOps;->getBeginTimeMillis()J

    move-result-wide v2

    const-string v4, "beg"

    invoke-interface {p2, v0, v4, v2, v3}, Landroid/util/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 1550
    invoke-virtual {p1}, Landroid/app/AppOpsManager$HistoricalOps;->getEndTimeMillis()J

    move-result-wide v2

    const-string v4, "end"

    invoke-interface {p2, v0, v4, v2, v3}, Landroid/util/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 1551
    invoke-virtual {p1}, Landroid/app/AppOpsManager$HistoricalOps;->getUidCount()I

    move-result v2

    .line 1552
    .local v2, "uidCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1e
    if-ge v3, v2, :cond_2a

    .line 1553
    invoke-virtual {p1, v3}, Landroid/app/AppOpsManager$HistoricalOps;->getUidOpsAt(I)Landroid/app/AppOpsManager$HistoricalUidOps;

    move-result-object v4

    .line 1554
    .local v4, "uidOp":Landroid/app/AppOpsManager$HistoricalUidOps;
    invoke-direct {p0, v4, p2}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->writeHistoricalUidOpsDLocked(Landroid/app/AppOpsManager$HistoricalUidOps;Landroid/util/TypedXmlSerializer;)V

    .line 1552
    .end local v4    # "uidOp":Landroid/app/AppOpsManager$HistoricalUidOps;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    .line 1556
    .end local v3    # "i":I
    :cond_2a
    invoke-interface {p2, v0, v1}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1557
    return-void
.end method

.method private writeHistoricalOpsDLocked(Ljava/util/List;JLjava/io/File;)V
    .registers 14
    .param p2, "intervalOverflowMillis"    # J
    .param p4, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$HistoricalOps;",
            ">;J",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1513
    .local p1, "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    const-string/jumbo v0, "history"

    sget-object v1, Lcom/android/server/appop/HistoricalRegistry$Persistence;->sHistoricalAppOpsDir:Lcom/android/internal/os/AtomicDirectory;

    invoke-virtual {v1, p4}, Lcom/android/internal/os/AtomicDirectory;->openWrite(Ljava/io/File;)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 1515
    .local v1, "output":Ljava/io/FileOutputStream;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 1518
    .local v2, "startTime":J
    :try_start_d
    invoke-static {v1}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Landroid/util/TypedXmlSerializer;

    move-result-object v4

    .line 1519
    .local v4, "serializer":Landroid/util/TypedXmlSerializer;
    const-string/jumbo v5, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v6, 0x1

    invoke-interface {v4, v5, v6}, Landroid/util/TypedXmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 1521
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v4, v6, v5}, Landroid/util/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1522
    invoke-interface {v4, v6, v0}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1523
    const-string/jumbo v5, "ver"

    const/4 v7, 0x2

    invoke-interface {v4, v6, v5, v7}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 1524
    const-wide/16 v7, 0x0

    cmp-long v5, p2, v7

    if-eqz v5, :cond_36

    .line 1525
    const-string/jumbo v5, "ov"

    invoke-interface {v4, v6, v5, p2, p3}, Landroid/util/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 1527
    :cond_36
    if-eqz p1, :cond_4b

    .line 1528
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    .line 1529
    .local v5, "opsCount":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_3d
    if-ge v7, v5, :cond_4b

    .line 1530
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/AppOpsManager$HistoricalOps;

    .line 1531
    .local v8, "ops":Landroid/app/AppOpsManager$HistoricalOps;
    invoke-direct {p0, v8, v4}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->writeHistoricalOpDLocked(Landroid/app/AppOpsManager$HistoricalOps;Landroid/util/TypedXmlSerializer;)V

    .line 1529
    .end local v8    # "ops":Landroid/app/AppOpsManager$HistoricalOps;
    add-int/lit8 v7, v7, 0x1

    goto :goto_3d

    .line 1534
    .end local v5    # "opsCount":I
    .end local v7    # "i":I
    :cond_4b
    invoke-interface {v4, v6, v0}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1535
    invoke-interface {v4}, Landroid/util/TypedXmlSerializer;->endDocument()V

    .line 1536
    sget-object v0, Lcom/android/server/appop/HistoricalRegistry$Persistence;->sHistoricalAppOpsDir:Lcom/android/internal/os/AtomicDirectory;

    invoke-virtual {v0, v1}, Lcom/android/internal/os/AtomicDirectory;->closeWrite(Ljava/io/FileOutputStream;)V
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_56} :catch_7c

    .line 1540
    .end local v4    # "serializer":Landroid/util/TypedXmlSerializer;
    nop

    .line 1542
    sget-object v0, Lcom/android/server/appop/HistoricalRegistry$Persistence;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "writeHistoricalOpsDLocked "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v2

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ms."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1544
    return-void

    .line 1537
    :catch_7c
    move-exception v0

    .line 1538
    .local v0, "e":Ljava/io/IOException;
    sget-object v4, Lcom/android/server/appop/HistoricalRegistry$Persistence;->sHistoricalAppOpsDir:Lcom/android/internal/os/AtomicDirectory;

    invoke-virtual {v4, v1}, Lcom/android/internal/os/AtomicDirectory;->failWrite(Ljava/io/FileOutputStream;)V

    .line 1539
    throw v0
.end method

.method private writeHistoricalPackageOpsDLocked(Landroid/app/AppOpsManager$HistoricalPackageOps;Landroid/util/TypedXmlSerializer;)V
    .registers 8
    .param p1, "packageOps"    # Landroid/app/AppOpsManager$HistoricalPackageOps;
    .param p2, "serializer"    # Landroid/util/TypedXmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1573
    const/4 v0, 0x0

    const-string/jumbo v1, "pkg"

    invoke-interface {p2, v0, v1}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1574
    invoke-virtual {p1}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "na"

    invoke-interface {p2, v0, v3, v2}, Landroid/util/TypedXmlSerializer;->attributeInterned(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1575
    invoke-virtual {p1}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getAttributedOpsCount()I

    move-result v2

    .line 1576
    .local v2, "numAttributions":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_16
    if-ge v3, v2, :cond_22

    .line 1577
    invoke-virtual {p1, v3}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getAttributedOpsAt(I)Landroid/app/AppOpsManager$AttributedHistoricalOps;

    move-result-object v4

    .line 1578
    .local v4, "op":Landroid/app/AppOpsManager$AttributedHistoricalOps;
    invoke-direct {p0, v4, p2}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->writeHistoricalAttributionOpsDLocked(Landroid/app/AppOpsManager$AttributedHistoricalOps;Landroid/util/TypedXmlSerializer;)V

    .line 1576
    .end local v4    # "op":Landroid/app/AppOpsManager$AttributedHistoricalOps;
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 1580
    .end local v3    # "i":I
    :cond_22
    invoke-interface {p2, v0, v1}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1581
    return-void
.end method

.method private writeHistoricalUidOpsDLocked(Landroid/app/AppOpsManager$HistoricalUidOps;Landroid/util/TypedXmlSerializer;)V
    .registers 8
    .param p1, "uidOps"    # Landroid/app/AppOpsManager$HistoricalUidOps;
    .param p2, "serializer"    # Landroid/util/TypedXmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1561
    const/4 v0, 0x0

    const-string/jumbo v1, "uid"

    invoke-interface {p2, v0, v1}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1562
    invoke-virtual {p1}, Landroid/app/AppOpsManager$HistoricalUidOps;->getUid()I

    move-result v2

    const-string/jumbo v3, "na"

    invoke-interface {p2, v0, v3, v2}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 1563
    invoke-virtual {p1}, Landroid/app/AppOpsManager$HistoricalUidOps;->getPackageCount()I

    move-result v2

    .line 1564
    .local v2, "packageCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_16
    if-ge v3, v2, :cond_22

    .line 1565
    invoke-virtual {p1, v3}, Landroid/app/AppOpsManager$HistoricalUidOps;->getPackageOpsAt(I)Landroid/app/AppOpsManager$HistoricalPackageOps;

    move-result-object v4

    .line 1566
    .local v4, "packageOps":Landroid/app/AppOpsManager$HistoricalPackageOps;
    invoke-direct {p0, v4, p2}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->writeHistoricalPackageOpsDLocked(Landroid/app/AppOpsManager$HistoricalPackageOps;Landroid/util/TypedXmlSerializer;)V

    .line 1564
    .end local v4    # "packageOps":Landroid/app/AppOpsManager$HistoricalPackageOps;
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 1568
    .end local v3    # "i":I
    :cond_22
    invoke-interface {p2, v0, v1}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1569
    return-void
.end method

.method private writeStateOnLocked(Landroid/app/AppOpsManager$HistoricalOp;JLandroid/util/TypedXmlSerializer;)V
    .registers 22
    .param p1, "op"    # Landroid/app/AppOpsManager$HistoricalOp;
    .param p2, "key"    # J
    .param p4, "serializer"    # Landroid/util/TypedXmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1613
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-static/range {p2 .. p3}, Landroid/app/AppOpsManager;->extractUidStateFromKey(J)I

    move-result v2

    .line 1614
    .local v2, "uidState":I
    invoke-static/range {p2 .. p3}, Landroid/app/AppOpsManager;->extractFlagsFromKey(J)I

    move-result v3

    .line 1616
    .local v3, "flags":I
    invoke-virtual {v0, v2, v2, v3}, Landroid/app/AppOpsManager$HistoricalOp;->getAccessCount(III)J

    move-result-wide v4

    .line 1617
    .local v4, "accessCount":J
    invoke-virtual {v0, v2, v2, v3}, Landroid/app/AppOpsManager$HistoricalOp;->getRejectCount(III)J

    move-result-wide v6

    .line 1618
    .local v6, "rejectCount":J
    invoke-virtual {v0, v2, v2, v3}, Landroid/app/AppOpsManager$HistoricalOp;->getAccessDuration(III)J

    move-result-wide v8

    .line 1620
    .local v8, "accessDuration":J
    const-wide/16 v10, 0x0

    cmp-long v12, v4, v10

    if-gtz v12, :cond_27

    cmp-long v12, v6, v10

    if-gtz v12, :cond_27

    cmp-long v12, v8, v10

    if-gtz v12, :cond_27

    .line 1621
    return-void

    .line 1624
    :cond_27
    const/4 v12, 0x0

    const-string/jumbo v13, "st"

    invoke-interface {v1, v12, v13}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1625
    const-string/jumbo v14, "na"

    move-wide/from16 v10, p2

    invoke-interface {v1, v12, v14, v10, v11}, Landroid/util/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 1626
    const-wide/16 v14, 0x0

    cmp-long v16, v4, v14

    if-lez v16, :cond_41

    .line 1627
    const-string v14, "ac"

    invoke-interface {v1, v12, v14, v4, v5}, Landroid/util/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 1629
    :cond_41
    const-wide/16 v14, 0x0

    cmp-long v16, v6, v14

    if-lez v16, :cond_4d

    .line 1630
    const-string/jumbo v14, "rc"

    invoke-interface {v1, v12, v14, v6, v7}, Landroid/util/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 1632
    :cond_4d
    const-wide/16 v14, 0x0

    cmp-long v14, v8, v14

    if-lez v14, :cond_58

    .line 1633
    const-string v14, "du"

    invoke-interface {v1, v12, v14, v8, v9}, Landroid/util/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 1635
    :cond_58
    invoke-interface {v1, v12, v13}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1636
    return-void
.end method


# virtual methods
.method clearHistoryDLocked(ILjava/lang/String;)V
    .registers 6
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 868
    invoke-virtual {p0}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->readHistoryDLocked()Ljava/util/List;

    move-result-object v0

    .line 870
    .local v0, "historicalOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    if-nez v0, :cond_7

    .line 871
    return-void

    .line 874
    :cond_7
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_8
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1a

    .line 875
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AppOpsManager$HistoricalOps;

    invoke-virtual {v2, p1, p2}, Landroid/app/AppOpsManager$HistoricalOps;->clearHistory(ILjava/lang/String;)V

    .line 874
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 878
    .end local v1    # "index":I
    :cond_1a
    invoke-static {}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->clearHistoryDLocked()V

    .line 880
    invoke-virtual {p0, v0}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->persistHistoricalOpsDLocked(Ljava/util/List;)V

    .line 881
    return-void
.end method

.method getLastPersistTimeMillisDLocked()J
    .registers 12

    .line 933
    const/4 v0, 0x0

    .line 935
    .local v0, "baseDir":Ljava/io/File;
    const-wide/16 v1, 0x0

    :try_start_3
    sget-object v3, Lcom/android/server/appop/HistoricalRegistry$Persistence;->sHistoricalAppOpsDir:Lcom/android/internal/os/AtomicDirectory;

    invoke-virtual {v3}, Lcom/android/internal/os/AtomicDirectory;->startRead()Ljava/io/File;

    move-result-object v4

    move-object v0, v4

    .line 936
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    .line 937
    .local v4, "files":[Ljava/io/File;
    if-eqz v4, :cond_45

    array-length v5, v4

    if-lez v5, :cond_45

    .line 938
    const/4 v3, 0x0

    .line 939
    .local v3, "shortestFile":Ljava/io/File;
    array-length v5, v4

    const/4 v6, 0x0

    :goto_16
    if-ge v6, v5, :cond_3d

    aget-object v7, v4, v6

    .line 940
    .local v7, "candidate":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    .line 941
    .local v8, "candidateName":Ljava/lang/String;
    const-string v9, ".xml"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_27

    .line 942
    goto :goto_3a

    .line 944
    :cond_27
    if-nez v3, :cond_2b

    .line 945
    move-object v3, v7

    goto :goto_3a

    .line 946
    :cond_2b
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v9, v10, :cond_3a

    .line 947
    move-object v3, v7

    .line 939
    .end local v7    # "candidate":Ljava/io/File;
    .end local v8    # "candidateName":Ljava/lang/String;
    :cond_3a
    :goto_3a
    add-int/lit8 v6, v6, 0x1

    goto :goto_16

    .line 950
    :cond_3d
    if-nez v3, :cond_40

    .line 951
    return-wide v1

    .line 953
    :cond_40
    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    return-wide v1

    .line 955
    .end local v3    # "shortestFile":Ljava/io/File;
    :cond_45
    invoke-virtual {v3}, Lcom/android/internal/os/AtomicDirectory;->finishRead()V
    :try_end_48
    .catchall {:try_start_3 .. :try_end_48} :catchall_49

    .line 959
    .end local v4    # "files":[Ljava/io/File;
    goto :goto_54

    .line 956
    :catchall_49
    move-exception v3

    .line 957
    .local v3, "e":Ljava/lang/Throwable;
    const-string v4, "Error reading historical app ops. Deleting history."

    invoke-static {v4, v3, v0}, Lcom/android/server/appop/HistoricalRegistry;->-$$Nest$smwtf(Ljava/lang/String;Ljava/lang/Throwable;Ljava/io/File;)V

    .line 958
    sget-object v4, Lcom/android/server/appop/HistoricalRegistry$Persistence;->sHistoricalAppOpsDir:Lcom/android/internal/os/AtomicDirectory;

    invoke-virtual {v4}, Lcom/android/internal/os/AtomicDirectory;->delete()V

    .line 960
    .end local v3    # "e":Ljava/lang/Throwable;
    :goto_54
    return-wide v1
.end method

.method persistHistoricalOpsDLocked(Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$HistoricalOps;",
            ">;)V"
        }
    .end annotation

    .line 893
    .local p1, "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    :try_start_0
    sget-object v0, Lcom/android/server/appop/HistoricalRegistry$Persistence;->sHistoricalAppOpsDir:Lcom/android/internal/os/AtomicDirectory;

    invoke-virtual {v0}, Lcom/android/internal/os/AtomicDirectory;->startWrite()Ljava/io/File;

    move-result-object v2

    .line 894
    .local v2, "newBaseDir":Ljava/io/File;
    invoke-virtual {v0}, Lcom/android/internal/os/AtomicDirectory;->getBackupDirectory()Ljava/io/File;

    move-result-object v3

    .line 900
    .local v3, "oldBaseDir":Ljava/io/File;
    invoke-static {v3}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->getHistoricalFileNames(Ljava/io/File;)Ljava/util/Set;

    move-result-object v5

    .line 901
    .local v5, "oldFileNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v6, 0x0

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->handlePersistHistoricalOpsRecursiveDLocked(Ljava/io/File;Ljava/io/File;Ljava/util/List;Ljava/util/Set;I)V

    .line 906
    invoke-virtual {v0}, Lcom/android/internal/os/AtomicDirectory;->finishWrite()V
    :try_end_17
    .catchall {:try_start_0 .. :try_end_17} :catchall_18

    .line 910
    .end local v2    # "newBaseDir":Ljava/io/File;
    .end local v3    # "oldBaseDir":Ljava/io/File;
    .end local v5    # "oldFileNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    goto :goto_24

    .line 907
    :catchall_18
    move-exception v0

    .line 908
    .local v0, "t":Ljava/lang/Throwable;
    const/4 v1, 0x0

    const-string v2, "Failed to write historical app ops, restoring backup"

    invoke-static {v2, v0, v1}, Lcom/android/server/appop/HistoricalRegistry;->-$$Nest$smwtf(Ljava/lang/String;Ljava/lang/Throwable;Ljava/io/File;)V

    .line 909
    sget-object v1, Lcom/android/server/appop/HistoricalRegistry$Persistence;->sHistoricalAppOpsDir:Lcom/android/internal/os/AtomicDirectory;

    invoke-virtual {v1}, Lcom/android/internal/os/AtomicDirectory;->failWrite()V

    .line 911
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_24
    return-void
.end method

.method readHistoryDLocked()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$HistoricalOps;",
            ">;"
        }
    .end annotation

    .line 921
    invoke-virtual {p0}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->readHistoryRawDLocked()Ljava/util/List;

    move-result-object v0

    .line 923
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    if-eqz v0, :cond_1b

    .line 924
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 925
    .local v1, "opCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    if-ge v2, v1, :cond_1b

    .line 926
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManager$HistoricalOps;

    iget-wide v4, p0, Lcom/android/server/appop/HistoricalRegistry$Persistence;->mBaseSnapshotInterval:J

    invoke-virtual {v3, v4, v5}, Landroid/app/AppOpsManager$HistoricalOps;->offsetBeginAndEndTime(J)V

    .line 925
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 929
    .end local v1    # "opCount":I
    .end local v2    # "i":I
    :cond_1b
    return-object v0
.end method

.method readHistoryRawDLocked()Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$HistoricalOps;",
            ">;"
        }
    .end annotation

    .line 914
    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const-wide v8, 0x7fffffffffffffffL

    const/16 v10, 0x1f

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->collectHistoricalOpsBaseDLocked(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;IJJI)Ljava/util/LinkedList;

    move-result-object v0

    return-object v0
.end method
