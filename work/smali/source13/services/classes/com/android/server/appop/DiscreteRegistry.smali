.class final Lcom/android/server/appop/DiscreteRegistry;
.super Ljava/lang/Object;
.source "DiscreteRegistry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;,
        Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;,
        Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;,
        Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;,
        Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;,
        Lcom/android/server/appop/DiscreteRegistry$AttributionChain;
    }
.end annotation


# static fields
.field private static final ATTR_ATTRIBUTION_FLAGS:Ljava/lang/String; = "af"

.field private static final ATTR_CHAIN_ID:Ljava/lang/String; = "ci"

.field private static final ATTR_FLAGS:Ljava/lang/String; = "f"

.field private static final ATTR_LARGEST_CHAIN_ID:Ljava/lang/String; = "lc"

.field private static final ATTR_NOTE_DURATION:Ljava/lang/String; = "nd"

.field private static final ATTR_NOTE_TIME:Ljava/lang/String; = "nt"

.field private static final ATTR_OP_ID:Ljava/lang/String; = "op"

.field private static final ATTR_PACKAGE_NAME:Ljava/lang/String; = "pn"

.field private static final ATTR_TAG:Ljava/lang/String; = "at"

.field private static final ATTR_UID:Ljava/lang/String; = "ui"

.field private static final ATTR_UID_STATE:Ljava/lang/String; = "us"

.field private static final ATTR_VERSION:Ljava/lang/String; = "v"

.field private static final CURRENT_VERSION:I = 0x1

.field private static final DEFAULT_DISCRETE_HISTORY_CUTOFF:J

.field private static final DEFAULT_DISCRETE_HISTORY_QUANTIZATION:J

.field private static final DEFAULT_DISCRETE_OPS:Ljava/lang/String; = "1,0,26,27,100,101,120"

.field static final DISCRETE_HISTORY_FILE_SUFFIX:Ljava/lang/String; = "tl"

.field private static final MAXIMUM_DISCRETE_HISTORY_CUTOFF:J

.field private static final OP_FLAGS_DISCRETE:I = 0xb

.field private static final PROPERTY_DISCRETE_FLAGS:Ljava/lang/String; = "discrete_history_op_flags"

.field private static final PROPERTY_DISCRETE_HISTORY_CUTOFF:Ljava/lang/String; = "discrete_history_cutoff_millis"

.field private static final PROPERTY_DISCRETE_HISTORY_QUANTIZATION:Ljava/lang/String; = "discrete_history_quantization_millis"

.field private static final PROPERTY_DISCRETE_OPS_LIST:Ljava/lang/String; = "discrete_history_ops_cslist"

.field private static final TAG:Ljava/lang/String;

.field private static final TAG_ENTRY:Ljava/lang/String; = "e"

.field private static final TAG_HISTORY:Ljava/lang/String; = "h"

.field private static final TAG_OP:Ljava/lang/String; = "o"

.field private static final TAG_PACKAGE:Ljava/lang/String; = "p"

.field private static final TAG_TAG:Ljava/lang/String; = "a"

.field private static final TAG_UID:Ljava/lang/String; = "u"

.field private static sDiscreteFlags:I

.field private static sDiscreteHistoryCutoff:J

.field private static sDiscreteHistoryQuantization:J

.field private static sDiscreteOps:[I


# instance fields
.field private mCachedOps:Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;

.field private mDebugMode:Z

.field private mDiscreteAccessDir:Ljava/io/File;

.field private mDiscreteOps:Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;

.field private final mInMemoryLock:Ljava/lang/Object;

.field private final mOnDiskLock:Ljava/lang/Object;


# direct methods
.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/appop/DiscreteRegistry;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$smdiscretizeDuration(J)J
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/appop/DiscreteRegistry;->discretizeDuration(J)J

    move-result-wide p0

    return-wide p0
.end method

.method static bridge synthetic -$$Nest$smdiscretizeTimeStamp(J)J
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/appop/DiscreteRegistry;->discretizeTimeStamp(J)J

    move-result-wide p0

    return-wide p0
.end method

.method static bridge synthetic -$$Nest$smfilterEventsList(Ljava/util/List;JJIILjava/lang/String;ILjava/lang/String;Landroid/util/ArrayMap;)Ljava/util/List;
    .registers 11

    invoke-static/range {p0 .. p10}, Lcom/android/server/appop/DiscreteRegistry;->filterEventsList(Ljava/util/List;JJIILjava/lang/String;ILjava/lang/String;Landroid/util/ArrayMap;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smstableListMerge(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/appop/DiscreteRegistry;->stableListMerge(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 128
    const-class v0, Lcom/android/server/appop/DiscreteRegistry;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/appop/DiscreteRegistry;->TAG:Ljava/lang/String;

    .line 138
    const-wide/16 v0, 0x7

    invoke-static {v0, v1}, Ljava/time/Duration;->ofDays(J)Ljava/time/Duration;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/appop/DiscreteRegistry;->DEFAULT_DISCRETE_HISTORY_CUTOFF:J

    .line 139
    const-wide/16 v0, 0x1e

    invoke-static {v0, v1}, Ljava/time/Duration;->ofDays(J)Ljava/time/Duration;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/appop/DiscreteRegistry;->MAXIMUM_DISCRETE_HISTORY_CUTOFF:J

    .line 140
    nop

    .line 141
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/time/Duration;->ofMinutes(J)Ljava/time/Duration;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/appop/DiscreteRegistry;->DEFAULT_DISCRETE_HISTORY_QUANTIZATION:J

    .line 140
    return-void
.end method

.method constructor <init>(Ljava/lang/Object;)V
    .registers 7
    .param p1, "inMemoryLock"    # Ljava/lang/Object;

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/appop/DiscreteRegistry;->mOnDiskLock:Ljava/lang/Object;

    .line 188
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/appop/DiscreteRegistry;->mCachedOps:Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;

    .line 191
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/appop/DiscreteRegistry;->mDebugMode:Z

    .line 194
    iput-object p1, p0, Lcom/android/server/appop/DiscreteRegistry;->mInMemoryLock:Ljava/lang/Object;

    .line 195
    monitor-enter v0

    .line 196
    :try_start_13
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/io/File;

    .line 197
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, "appops"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v3, "discrete"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/appop/DiscreteRegistry;->mDiscreteAccessDir:Ljava/io/File;

    .line 199
    invoke-direct {p0}, Lcom/android/server/appop/DiscreteRegistry;->createDiscreteAccessDirLocked()V

    .line 200
    invoke-direct {p0}, Lcom/android/server/appop/DiscreteRegistry;->readLargestChainIdFromDiskLocked()I

    move-result v1

    .line 201
    .local v1, "largestChainId":I
    monitor-enter p1
    :try_end_2f
    .catchall {:try_start_13 .. :try_end_2f} :catchall_3c

    .line 202
    :try_start_2f
    new-instance v2, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;

    invoke-direct {v2, p0, v1}, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;-><init>(Lcom/android/server/appop/DiscreteRegistry;I)V

    iput-object v2, p0, Lcom/android/server/appop/DiscreteRegistry;->mDiscreteOps:Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;

    .line 203
    monitor-exit p1
    :try_end_37
    .catchall {:try_start_2f .. :try_end_37} :catchall_39

    .line 204
    .end local v1    # "largestChainId":I
    :try_start_37
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_3c

    .line 205
    return-void

    .line 203
    .restart local v1    # "largestChainId":I
    :catchall_39
    move-exception v2

    :try_start_3a
    monitor-exit p1
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    .end local p0    # "this":Lcom/android/server/appop/DiscreteRegistry;
    .end local p1    # "inMemoryLock":Ljava/lang/Object;
    :try_start_3b
    throw v2

    .line 204
    .end local v1    # "largestChainId":I
    .restart local p0    # "this":Lcom/android/server/appop/DiscreteRegistry;
    .restart local p1    # "inMemoryLock":Ljava/lang/Object;
    :catchall_3c
    move-exception v1

    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_3c

    throw v1
.end method

.method private clearOnDiskHistoryLocked()V
    .registers 2

    .line 457
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/appop/DiscreteRegistry;->mCachedOps:Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;

    .line 458
    iget-object v0, p0, Lcom/android/server/appop/DiscreteRegistry;->mDiscreteAccessDir:Ljava/io/File;

    invoke-static {v0}, Landroid/os/FileUtils;->deleteContentsAndDir(Ljava/io/File;)Z

    .line 459
    invoke-direct {p0}, Lcom/android/server/appop/DiscreteRegistry;->createDiscreteAccessDir()V

    .line 460
    return-void
.end method

.method private createAttributionChains(Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;Ljava/util/Set;)Landroid/util/ArrayMap;
    .registers 30
    .param p1, "discreteOps"    # Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/appop/DiscreteRegistry$AttributionChain;",
            ">;"
        }
    .end annotation

    .line 342
    .local p2, "attributionExemptPkgs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v0, p1

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 343
    .local v1, "chains":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Lcom/android/server/appop/DiscreteRegistry$AttributionChain;>;"
    iget-object v2, v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->mUids:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 344
    .local v2, "nUids":I
    const/4 v3, 0x0

    .local v3, "uidNum":I
    :goto_e
    if-ge v3, v2, :cond_17e

    .line 345
    iget-object v4, v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->mUids:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;

    iget-object v4, v4, Lcom/android/server/appop/DiscreteRegistry$DiscreteUidOps;->mPackages:Landroid/util/ArrayMap;

    .line 346
    .local v4, "pkgs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;>;"
    iget-object v5, v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->mUids:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 347
    .local v5, "uid":I
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v12

    .line 348
    .local v12, "nPackages":I
    const/4 v6, 0x0

    move v13, v6

    .local v13, "pkgNum":I
    :goto_2c
    if-ge v13, v12, :cond_170

    .line 349
    invoke-virtual {v4, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;

    iget-object v14, v6, Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;->mPackageOps:Landroid/util/ArrayMap;

    .line 350
    .local v14, "ops":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;>;"
    invoke-virtual {v4, v13}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    move-object v15, v6

    check-cast v15, Ljava/lang/String;

    .line 351
    .local v15, "pkg":Ljava/lang/String;
    invoke-virtual {v14}, Landroid/util/ArrayMap;->size()I

    move-result v11

    .line 352
    .local v11, "nOps":I
    const/4 v6, 0x0

    move v10, v6

    .local v10, "opNum":I
    :goto_43
    if-ge v10, v11, :cond_15c

    .line 353
    nop

    .line 354
    invoke-virtual {v14, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;

    iget-object v9, v6, Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;->mAttributedOps:Landroid/util/ArrayMap;

    .line 355
    .local v9, "attrOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;>;>;"
    invoke-virtual {v14, v10}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v16

    .line 356
    .local v16, "op":I
    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    move-result v8

    .line 357
    .local v8, "nAttrOps":I
    const/4 v6, 0x0

    move v7, v6

    .local v7, "attrOpNum":I
    :goto_5e
    if-ge v7, v8, :cond_142

    .line 358
    invoke-virtual {v9, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 359
    .local v6, "opEvents":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;>;"
    invoke-virtual {v9, v7}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 360
    .local v17, "attributionTag":Ljava/lang/String;
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    .line 361
    .local v0, "nOpEvents":I
    const/16 v18, 0x0

    move/from16 v19, v2

    move/from16 v2, v18

    .local v2, "opEventNum":I
    .local v19, "nUids":I
    :goto_76
    if-ge v2, v0, :cond_123

    .line 362
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    move/from16 v20, v0

    .end local v0    # "nOpEvents":I
    .local v20, "nOpEvents":I
    move-object/from16 v0, v18

    check-cast v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;

    .line 363
    .local v0, "event":Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;
    if-eqz v0, :cond_fd

    move-object/from16 v18, v4

    .end local v4    # "pkgs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;>;"
    .local v18, "pkgs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;>;"
    iget v4, v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mAttributionChainId:I

    move-object/from16 v21, v6

    .end local v6    # "opEvents":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;>;"
    .local v21, "opEvents":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;>;"
    const/4 v6, -0x1

    if-eq v4, v6, :cond_ec

    iget v4, v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mAttributionFlags:I

    and-int/lit8 v4, v4, 0x8

    if-nez v4, :cond_a5

    .line 366
    move/from16 v23, v8

    move-object/from16 v24, v9

    move/from16 v25, v10

    move/from16 v26, v11

    move/from16 v22, v12

    move-object/from16 v4, v21

    move-object/from16 v12, p2

    move/from16 v21, v7

    goto/16 :goto_10e

    .line 369
    :cond_a5
    iget v4, v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mAttributionChainId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c4

    .line 370
    iget v4, v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mAttributionChainId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v6, Lcom/android/server/appop/DiscreteRegistry$AttributionChain;

    move/from16 v22, v12

    move-object/from16 v12, p2

    .end local v12    # "nPackages":I
    .local v22, "nPackages":I
    invoke-direct {v6, v12}, Lcom/android/server/appop/DiscreteRegistry$AttributionChain;-><init>(Ljava/util/Set;)V

    invoke-virtual {v1, v4, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c8

    .line 369
    .end local v22    # "nPackages":I
    .restart local v12    # "nPackages":I
    :cond_c4
    move/from16 v22, v12

    move-object/from16 v12, p2

    .line 373
    .end local v12    # "nPackages":I
    .restart local v22    # "nPackages":I
    :goto_c8
    iget v4, v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mAttributionChainId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Lcom/android/server/appop/DiscreteRegistry$AttributionChain;

    .line 374
    move-object/from16 v4, v21

    .end local v21    # "opEvents":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;>;"
    .local v4, "opEvents":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;>;"
    move/from16 v21, v7

    .end local v7    # "attrOpNum":I
    .local v21, "attrOpNum":I
    move-object v7, v15

    move/from16 v23, v8

    .end local v8    # "nAttrOps":I
    .local v23, "nAttrOps":I
    move v8, v5

    move-object/from16 v24, v9

    .end local v9    # "attrOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;>;>;"
    .local v24, "attrOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;>;>;"
    move-object/from16 v9, v17

    move/from16 v25, v10

    .end local v10    # "opNum":I
    .local v25, "opNum":I
    move/from16 v10, v16

    move/from16 v26, v11

    .end local v11    # "nOps":I
    .local v26, "nOps":I
    move-object v11, v0

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/appop/DiscreteRegistry$AttributionChain;->addEvent(Ljava/lang/String;ILjava/lang/String;ILcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;)V

    goto :goto_10e

    .line 363
    .end local v4    # "opEvents":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;>;"
    .end local v22    # "nPackages":I
    .end local v23    # "nAttrOps":I
    .end local v24    # "attrOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;>;>;"
    .end local v25    # "opNum":I
    .end local v26    # "nOps":I
    .restart local v7    # "attrOpNum":I
    .restart local v8    # "nAttrOps":I
    .restart local v9    # "attrOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;>;>;"
    .restart local v10    # "opNum":I
    .restart local v11    # "nOps":I
    .restart local v12    # "nPackages":I
    .local v21, "opEvents":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;>;"
    :cond_ec
    move/from16 v23, v8

    move-object/from16 v24, v9

    move/from16 v25, v10

    move/from16 v26, v11

    move/from16 v22, v12

    move-object/from16 v4, v21

    move-object/from16 v12, p2

    move/from16 v21, v7

    .end local v7    # "attrOpNum":I
    .end local v8    # "nAttrOps":I
    .end local v9    # "attrOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;>;>;"
    .end local v10    # "opNum":I
    .end local v11    # "nOps":I
    .end local v12    # "nPackages":I
    .restart local v4    # "opEvents":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;>;"
    .local v21, "attrOpNum":I
    .restart local v22    # "nPackages":I
    .restart local v23    # "nAttrOps":I
    .restart local v24    # "attrOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;>;>;"
    .restart local v25    # "opNum":I
    .restart local v26    # "nOps":I
    goto :goto_10e

    .end local v18    # "pkgs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;>;"
    .end local v21    # "attrOpNum":I
    .end local v22    # "nPackages":I
    .end local v23    # "nAttrOps":I
    .end local v24    # "attrOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;>;>;"
    .end local v25    # "opNum":I
    .end local v26    # "nOps":I
    .local v4, "pkgs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;>;"
    .restart local v6    # "opEvents":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;>;"
    .restart local v7    # "attrOpNum":I
    .restart local v8    # "nAttrOps":I
    .restart local v9    # "attrOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;>;>;"
    .restart local v10    # "opNum":I
    .restart local v11    # "nOps":I
    .restart local v12    # "nPackages":I
    :cond_fd
    move-object/from16 v18, v4

    move-object v4, v6

    move/from16 v21, v7

    move/from16 v23, v8

    move-object/from16 v24, v9

    move/from16 v25, v10

    move/from16 v26, v11

    move/from16 v22, v12

    move-object/from16 v12, p2

    .line 361
    .end local v0    # "event":Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;
    .end local v6    # "opEvents":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;>;"
    .end local v7    # "attrOpNum":I
    .end local v8    # "nAttrOps":I
    .end local v9    # "attrOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;>;>;"
    .end local v10    # "opNum":I
    .end local v11    # "nOps":I
    .end local v12    # "nPackages":I
    .local v4, "opEvents":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;>;"
    .restart local v18    # "pkgs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;>;"
    .restart local v21    # "attrOpNum":I
    .restart local v22    # "nPackages":I
    .restart local v23    # "nAttrOps":I
    .restart local v24    # "attrOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;>;>;"
    .restart local v25    # "opNum":I
    .restart local v26    # "nOps":I
    :goto_10e
    add-int/lit8 v2, v2, 0x1

    move-object v6, v4

    move-object/from16 v4, v18

    move/from16 v0, v20

    move/from16 v7, v21

    move/from16 v12, v22

    move/from16 v8, v23

    move-object/from16 v9, v24

    move/from16 v10, v25

    move/from16 v11, v26

    goto/16 :goto_76

    .end local v18    # "pkgs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;>;"
    .end local v20    # "nOpEvents":I
    .end local v21    # "attrOpNum":I
    .end local v22    # "nPackages":I
    .end local v23    # "nAttrOps":I
    .end local v24    # "attrOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;>;>;"
    .end local v25    # "opNum":I
    .end local v26    # "nOps":I
    .local v0, "nOpEvents":I
    .local v4, "pkgs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;>;"
    .restart local v6    # "opEvents":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;>;"
    .restart local v7    # "attrOpNum":I
    .restart local v8    # "nAttrOps":I
    .restart local v9    # "attrOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;>;>;"
    .restart local v10    # "opNum":I
    .restart local v11    # "nOps":I
    .restart local v12    # "nPackages":I
    :cond_123
    move/from16 v20, v0

    move-object/from16 v18, v4

    move-object v4, v6

    move/from16 v21, v7

    move/from16 v23, v8

    move-object/from16 v24, v9

    move/from16 v25, v10

    move/from16 v26, v11

    move/from16 v22, v12

    move-object/from16 v12, p2

    .line 357
    .end local v0    # "nOpEvents":I
    .end local v2    # "opEventNum":I
    .end local v4    # "pkgs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;>;"
    .end local v6    # "opEvents":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;>;"
    .end local v7    # "attrOpNum":I
    .end local v8    # "nAttrOps":I
    .end local v9    # "attrOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;>;>;"
    .end local v10    # "opNum":I
    .end local v11    # "nOps":I
    .end local v12    # "nPackages":I
    .end local v17    # "attributionTag":Ljava/lang/String;
    .restart local v18    # "pkgs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;>;"
    .restart local v21    # "attrOpNum":I
    .restart local v22    # "nPackages":I
    .restart local v23    # "nAttrOps":I
    .restart local v24    # "attrOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;>;>;"
    .restart local v25    # "opNum":I
    .restart local v26    # "nOps":I
    add-int/lit8 v7, v21, 0x1

    move-object/from16 v0, p1

    move-object/from16 v4, v18

    move/from16 v2, v19

    move/from16 v12, v22

    .end local v21    # "attrOpNum":I
    .restart local v7    # "attrOpNum":I
    goto/16 :goto_5e

    .end local v18    # "pkgs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;>;"
    .end local v19    # "nUids":I
    .end local v22    # "nPackages":I
    .end local v23    # "nAttrOps":I
    .end local v24    # "attrOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;>;>;"
    .end local v25    # "opNum":I
    .end local v26    # "nOps":I
    .local v2, "nUids":I
    .restart local v4    # "pkgs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;>;"
    .restart local v8    # "nAttrOps":I
    .restart local v9    # "attrOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;>;>;"
    .restart local v10    # "opNum":I
    .restart local v11    # "nOps":I
    .restart local v12    # "nPackages":I
    :cond_142
    move/from16 v19, v2

    move-object/from16 v18, v4

    move/from16 v21, v7

    move/from16 v23, v8

    move-object/from16 v24, v9

    move/from16 v25, v10

    move/from16 v26, v11

    move/from16 v22, v12

    move-object/from16 v12, p2

    .line 352
    .end local v2    # "nUids":I
    .end local v4    # "pkgs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;>;"
    .end local v7    # "attrOpNum":I
    .end local v8    # "nAttrOps":I
    .end local v9    # "attrOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;>;>;"
    .end local v10    # "opNum":I
    .end local v11    # "nOps":I
    .end local v12    # "nPackages":I
    .end local v16    # "op":I
    .restart local v18    # "pkgs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;>;"
    .restart local v19    # "nUids":I
    .restart local v22    # "nPackages":I
    .restart local v25    # "opNum":I
    .restart local v26    # "nOps":I
    add-int/lit8 v10, v25, 0x1

    move-object/from16 v0, p1

    move/from16 v12, v22

    .end local v25    # "opNum":I
    .restart local v10    # "opNum":I
    goto/16 :goto_43

    .end local v18    # "pkgs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;>;"
    .end local v19    # "nUids":I
    .end local v22    # "nPackages":I
    .end local v26    # "nOps":I
    .restart local v2    # "nUids":I
    .restart local v4    # "pkgs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;>;"
    .restart local v11    # "nOps":I
    .restart local v12    # "nPackages":I
    :cond_15c
    move/from16 v19, v2

    move-object/from16 v18, v4

    move/from16 v25, v10

    move/from16 v26, v11

    move/from16 v22, v12

    move-object/from16 v12, p2

    .line 348
    .end local v2    # "nUids":I
    .end local v4    # "pkgs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;>;"
    .end local v10    # "opNum":I
    .end local v11    # "nOps":I
    .end local v12    # "nPackages":I
    .end local v14    # "ops":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Lcom/android/server/appop/DiscreteRegistry$DiscreteOp;>;"
    .end local v15    # "pkg":Ljava/lang/String;
    .restart local v18    # "pkgs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;>;"
    .restart local v19    # "nUids":I
    .restart local v22    # "nPackages":I
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p1

    move/from16 v12, v22

    goto/16 :goto_2c

    .end local v18    # "pkgs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;>;"
    .end local v19    # "nUids":I
    .end local v22    # "nPackages":I
    .restart local v2    # "nUids":I
    .restart local v4    # "pkgs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;>;"
    .restart local v12    # "nPackages":I
    :cond_170
    move/from16 v19, v2

    move-object/from16 v18, v4

    move/from16 v22, v12

    move-object/from16 v12, p2

    .line 344
    .end local v2    # "nUids":I
    .end local v4    # "pkgs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/appop/DiscreteRegistry$DiscretePackageOps;>;"
    .end local v5    # "uid":I
    .end local v12    # "nPackages":I
    .end local v13    # "pkgNum":I
    .restart local v19    # "nUids":I
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p1

    goto/16 :goto_e

    .line 380
    .end local v3    # "uidNum":I
    .end local v19    # "nUids":I
    .restart local v2    # "nUids":I
    :cond_17e
    return-object v1
.end method

.method private createDiscreteAccessDir()V
    .registers 4

    .line 773
    iget-object v0, p0, Lcom/android/server/appop/DiscreteRegistry;->mDiscreteAccessDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_23

    .line 774
    iget-object v0, p0, Lcom/android/server/appop/DiscreteRegistry;->mDiscreteAccessDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_17

    .line 775
    sget-object v0, Lcom/android/server/appop/DiscreteRegistry;->TAG:Ljava/lang/String;

    const-string v1, "Failed to create DiscreteRegistry directory"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    :cond_17
    iget-object v0, p0, Lcom/android/server/appop/DiscreteRegistry;->mDiscreteAccessDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1f9

    const/4 v2, -0x1

    invoke-static {v0, v1, v2, v2}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 780
    :cond_23
    return-void
.end method

.method private createDiscreteAccessDirLocked()V
    .registers 4

    .line 827
    iget-object v0, p0, Lcom/android/server/appop/DiscreteRegistry;->mDiscreteAccessDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_23

    .line 828
    iget-object v0, p0, Lcom/android/server/appop/DiscreteRegistry;->mDiscreteAccessDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_17

    .line 829
    sget-object v0, Lcom/android/server/appop/DiscreteRegistry;->TAG:Ljava/lang/String;

    const-string v1, "Failed to create DiscreteRegistry directory"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    :cond_17
    iget-object v0, p0, Lcom/android/server/appop/DiscreteRegistry;->mDiscreteAccessDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1f9

    const/4 v2, -0x1

    invoke-static {v0, v1, v2, v2}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 834
    :cond_23
    return-void
.end method

.method private deleteOldDiscreteHistoryFilesLocked()V
    .registers 13

    .line 802
    iget-object v0, p0, Lcom/android/server/appop/DiscreteRegistry;->mDiscreteAccessDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 803
    .local v0, "files":[Ljava/io/File;
    if-eqz v0, :cond_95

    array-length v1, v0

    if-lez v1, :cond_95

    .line 804
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_e
    if-ge v3, v1, :cond_95

    aget-object v4, v0, v3

    .line 805
    .local v4, "f":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    .line 806
    .local v5, "fileName":Ljava/lang/String;
    const-string/jumbo v6, "tl"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_20

    .line 807
    goto :goto_91

    .line 810
    :cond_20
    nop

    .line 811
    :try_start_21
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v7, v6

    .line 810
    invoke-virtual {v5, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 812
    .local v6, "timestamp":J
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v8

    sget-wide v9, Lcom/android/server/appop/DiscreteRegistry;->sDiscreteHistoryCutoff:J

    sget-object v11, Ljava/time/temporal/ChronoUnit;->MILLIS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v8, v9, v10, v11}, Ljava/time/Instant;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/Instant;

    move-result-object v8

    .line 813
    invoke-virtual {v8}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v8

    cmp-long v8, v8, v6

    if-lez v8, :cond_65

    .line 814
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 815
    sget-object v8, Lcom/android/server/appop/DiscreteRegistry;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Deleting file "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_65
    .catchall {:try_start_21 .. :try_end_65} :catchall_66

    .line 821
    .end local v6    # "timestamp":J
    :cond_65
    goto :goto_91

    .line 818
    :catchall_66
    move-exception v6

    .line 819
    .local v6, "t":Ljava/lang/Throwable;
    sget-object v7, Lcom/android/server/appop/DiscreteRegistry;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error while cleaning timeline files: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 820
    invoke-virtual {v6}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 819
    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    .end local v4    # "f":Ljava/io/File;
    .end local v5    # "fileName":Ljava/lang/String;
    .end local v6    # "t":Ljava/lang/Throwable;
    :goto_91
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_e

    .line 824
    :cond_95
    return-void
.end method

.method private static discretizeDuration(J)J
    .registers 8
    .param p0, "duration"    # J

    .line 1402
    const-wide/16 v0, -0x1

    cmp-long v2, p0, v0

    if-nez v2, :cond_7

    goto :goto_10

    .line 1403
    :cond_7
    sget-wide v0, Lcom/android/server/appop/DiscreteRegistry;->sDiscreteHistoryQuantization:J

    add-long v2, p0, v0

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    div-long/2addr v2, v0

    mul-long/2addr v0, v2

    .line 1402
    :goto_10
    return-wide v0
.end method

.method private static discretizeTimeStamp(J)J
    .registers 6
    .param p0, "timeStamp"    # J

    .line 1397
    sget-wide v0, Lcom/android/server/appop/DiscreteRegistry;->sDiscreteHistoryQuantization:J

    div-long v2, p0, v0

    mul-long/2addr v2, v0

    return-wide v2
.end method

.method private static filterEventsList(Ljava/util/List;JJIILjava/lang/String;ILjava/lang/String;Landroid/util/ArrayMap;)Ljava/util/List;
    .registers 24
    .param p1, "beginTimeMillis"    # J
    .param p3, "endTimeMillis"    # J
    .param p5, "flagsFilter"    # I
    .param p6, "currentUid"    # I
    .param p7, "currentPackageName"    # Ljava/lang/String;
    .param p8, "currentOp"    # I
    .param p9, "currentAttrTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;",
            ">;JJII",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/appop/DiscreteRegistry$AttributionChain;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;",
            ">;"
        }
    .end annotation

    .line 1366
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;>;"
    .local p10, "attributionChains":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Lcom/android/server/appop/DiscreteRegistry$AttributionChain;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 1367
    .local v0, "n":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1368
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v0, :cond_5b

    .line 1369
    move-object v3, p0

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;

    .line 1370
    .local v4, "event":Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;
    iget v5, v4, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mAttributionChainId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v11, p10

    invoke-virtual {v11, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v12, v5

    check-cast v12, Lcom/android/server/appop/DiscreteRegistry$AttributionChain;

    .line 1372
    .local v12, "chain":Lcom/android/server/appop/DiscreteRegistry$AttributionChain;
    if-eqz v12, :cond_40

    move-object v5, v12

    move-object/from16 v6, p7

    move/from16 v7, p6

    move-object/from16 v8, p9

    move/from16 v9, p8

    move-object v10, v4

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/appop/DiscreteRegistry$AttributionChain;->isStart(Ljava/lang/String;ILjava/lang/String;ILcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;)Z

    move-result v5

    if-nez v5, :cond_40

    .line 1373
    invoke-virtual {v12}, Lcom/android/server/appop/DiscreteRegistry$AttributionChain;->isComplete()Z

    move-result v5

    if-eqz v5, :cond_40

    iget v5, v4, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mAttributionChainId:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_40

    .line 1375
    goto :goto_58

    .line 1377
    :cond_40
    iget v5, v4, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mOpFlag:I

    and-int v5, v5, p5

    if-eqz v5, :cond_58

    iget-wide v5, v4, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mNoteTime:J

    iget-wide v7, v4, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mNoteDuration:J

    add-long/2addr v5, v7

    cmp-long v5, v5, p1

    if-lez v5, :cond_58

    iget-wide v5, v4, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mNoteTime:J

    cmp-long v5, v5, p3

    if-gez v5, :cond_58

    .line 1380
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1368
    .end local v4    # "event":Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;
    .end local v12    # "chain":Lcom/android/server/appop/DiscreteRegistry$AttributionChain;
    :cond_58
    :goto_58
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_5b
    move-object v3, p0

    move-object/from16 v11, p10

    .line 1383
    .end local v2    # "i":I
    return-object v1
.end method

.method private getAllDiscreteOps()Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;
    .registers 6

    .line 463
    new-instance v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;-><init>(Lcom/android/server/appop/DiscreteRegistry;I)V

    .line 465
    .local v0, "discreteOps":Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;
    iget-object v2, p0, Lcom/android/server/appop/DiscreteRegistry;->mOnDiskLock:Ljava/lang/Object;

    monitor-enter v2

    .line 466
    :try_start_9
    iget-object v3, p0, Lcom/android/server/appop/DiscreteRegistry;->mInMemoryLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_2a

    .line 467
    :try_start_c
    iget-object v4, p0, Lcom/android/server/appop/DiscreteRegistry;->mDiscreteOps:Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;

    invoke-virtual {v0, v4}, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->merge(Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;)V

    .line 468
    monitor-exit v3
    :try_end_12
    .catchall {:try_start_c .. :try_end_12} :catchall_27

    .line 469
    :try_start_12
    iget-object v3, p0, Lcom/android/server/appop/DiscreteRegistry;->mCachedOps:Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;

    if-nez v3, :cond_20

    .line 470
    new-instance v3, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;

    invoke-direct {v3, p0, v1}, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;-><init>(Lcom/android/server/appop/DiscreteRegistry;I)V

    iput-object v3, p0, Lcom/android/server/appop/DiscreteRegistry;->mCachedOps:Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;

    .line 471
    invoke-direct {p0, v3}, Lcom/android/server/appop/DiscreteRegistry;->readDiscreteOpsFromDisk(Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;)V

    .line 473
    :cond_20
    iget-object v1, p0, Lcom/android/server/appop/DiscreteRegistry;->mCachedOps:Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;

    invoke-virtual {v0, v1}, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->merge(Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;)V

    .line 474
    monitor-exit v2
    :try_end_26
    .catchall {:try_start_12 .. :try_end_26} :catchall_2a

    return-object v0

    .line 468
    :catchall_27
    move-exception v1

    :try_start_28
    monitor-exit v3
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    .end local v0    # "discreteOps":Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;
    .end local p0    # "this":Lcom/android/server/appop/DiscreteRegistry;
    :try_start_29
    throw v1

    .line 475
    .restart local v0    # "discreteOps":Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;
    .restart local p0    # "this":Lcom/android/server/appop/DiscreteRegistry;
    :catchall_2a
    move-exception v1

    monitor-exit v2
    :try_end_2c
    .catchall {:try_start_29 .. :try_end_2c} :catchall_2a

    throw v1
.end method

.method private static isDiscreteOp(II)Z
    .registers 4
    .param p0, "op"    # I
    .param p1, "flags"    # I

    .line 1387
    sget-object v0, Lcom/android/server/appop/DiscreteRegistry;->sDiscreteOps:[I

    invoke-static {v0, p0}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 1388
    return v1

    .line 1390
    :cond_a
    sget v0, Lcom/android/server/appop/DiscreteRegistry;->sDiscreteFlags:I

    and-int/2addr v0, p1

    if-nez v0, :cond_10

    .line 1391
    return v1

    .line 1393
    :cond_10
    const/4 v0, 0x1

    return v0
.end method

.method private static parseOpsList(Ljava/lang/String;)[I
    .registers 8
    .param p0, "opsList"    # Ljava/lang/String;

    .line 1323
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1324
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .local v0, "strArr":[Ljava/lang/String;
    goto :goto_10

    .line 1326
    .end local v0    # "strArr":[Ljava/lang/String;
    :cond_a
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1328
    .restart local v0    # "strArr":[Ljava/lang/String;
    :goto_10
    array-length v1, v0

    .line 1329
    .local v1, "nOps":I
    new-array v2, v1, [I

    .line 1331
    .local v2, "result":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_14
    if-ge v3, v1, :cond_45

    .line 1332
    :try_start_16
    aget-object v4, v0, v3

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v2, v3
    :try_end_1e
    .catch Ljava/lang/NumberFormatException; {:try_start_16 .. :try_end_1e} :catch_21

    .line 1331
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 1334
    .end local v3    # "i":I
    :catch_21
    move-exception v3

    .line 1335
    .local v3, "e":Ljava/lang/NumberFormatException;
    sget-object v4, Lcom/android/server/appop/DiscreteRegistry;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to parse Discrete ops list: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1336
    const-string v4, "1,0,26,27,100,101,120"

    invoke-static {v4}, Lcom/android/server/appop/DiscreteRegistry;->parseOpsList(Ljava/lang/String;)[I

    move-result-object v4

    return-object v4

    .line 1337
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    :cond_45
    nop

    .line 1338
    return-object v2
.end method

.method private persistDiscreteOpsLocked(Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;)V
    .registers 10
    .param p1, "discreteOps"    # Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;

    .line 783
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v0

    .line 784
    .local v0, "currentTimeStamp":J
    new-instance v2, Landroid/util/AtomicFile;

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/android/server/appop/DiscreteRegistry;->mDiscreteAccessDir:Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "tl"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 786
    .local v2, "file":Landroid/util/AtomicFile;
    const/4 v3, 0x0

    .line 788
    .local v3, "stream":Ljava/io/FileOutputStream;
    :try_start_29
    invoke-virtual {v2}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v4

    move-object v3, v4

    .line 789
    invoke-static {p1, v3}, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->-$$Nest$mwriteToStream(Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;Ljava/io/FileOutputStream;)V

    .line 790
    invoke-virtual {v2, v3}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_34
    .catchall {:try_start_29 .. :try_end_34} :catchall_35

    .line 798
    goto :goto_69

    .line 791
    :catchall_35
    move-exception v4

    .line 792
    .local v4, "t":Ljava/lang/Throwable;
    sget-object v5, Lcom/android/server/appop/DiscreteRegistry;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error writing timeline state: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 793
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 794
    invoke-virtual {v4}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 792
    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    if-eqz v3, :cond_69

    .line 796
    invoke-virtual {v2, v3}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 799
    .end local v4    # "t":Ljava/lang/Throwable;
    :cond_69
    :goto_69
    return-void
.end method

.method private readDiscreteOpsFromDisk(Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;)V
    .registers 14
    .param p1, "discreteOps"    # Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;

    .line 384
    iget-object v0, p0, Lcom/android/server/appop/DiscreteRegistry;->mOnDiskLock:Ljava/lang/Object;

    monitor-enter v0

    .line 385
    :try_start_3
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v1

    sget-wide v2, Lcom/android/server/appop/DiscreteRegistry;->sDiscreteHistoryCutoff:J

    sget-object v4, Ljava/time/temporal/ChronoUnit;->MILLIS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/time/Instant;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/Instant;

    move-result-object v1

    .line 386
    invoke-virtual {v1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v1

    .line 388
    .local v1, "beginTimeMillis":J
    iget-object v3, p0, Lcom/android/server/appop/DiscreteRegistry;->mDiscreteAccessDir:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 389
    .local v3, "files":[Ljava/io/File;
    if-eqz v3, :cond_57

    array-length v4, v3

    if-lez v4, :cond_57

    .line 390
    array-length v4, v3

    const/4 v5, 0x0

    move v6, v5

    :goto_21
    if-ge v6, v4, :cond_57

    aget-object v7, v3, v6

    .line 391
    .local v7, "f":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    .line 392
    .local v8, "fileName":Ljava/lang/String;
    const-string/jumbo v9, "tl"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_33

    .line 393
    goto :goto_54

    .line 395
    :cond_33
    nop

    .line 396
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    const-string/jumbo v10, "tl"

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    sub-int/2addr v9, v10

    .line 395
    invoke-virtual {v8, v5, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    .line 397
    .local v9, "timestamp":J
    cmp-long v11, v9, v1

    if-gez v11, :cond_51

    .line 398
    goto :goto_54

    .line 400
    :cond_51
    invoke-static {p1, v7, v1, v2}, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->-$$Nest$mreadFromFile(Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;Ljava/io/File;J)V

    .line 390
    .end local v7    # "f":Ljava/io/File;
    .end local v8    # "fileName":Ljava/lang/String;
    .end local v9    # "timestamp":J
    :goto_54
    add-int/lit8 v6, v6, 0x1

    goto :goto_21

    .line 403
    .end local v1    # "beginTimeMillis":J
    .end local v3    # "files":[Ljava/io/File;
    :cond_57
    monitor-exit v0

    .line 404
    return-void

    .line 403
    :catchall_59
    move-exception v1

    monitor-exit v0
    :try_end_5b
    .catchall {:try_start_3 .. :try_end_5b} :catchall_59

    throw v1
.end method

.method private readLargestChainIdFromDiskLocked()I
    .registers 13

    .line 296
    iget-object v0, p0, Lcom/android/server/appop/DiscreteRegistry;->mDiscreteAccessDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 297
    .local v0, "files":[Ljava/io/File;
    const/4 v1, 0x0

    if-eqz v0, :cond_6e

    array-length v2, v0

    if-lez v2, :cond_6e

    .line 298
    const/4 v2, 0x0

    .line 299
    .local v2, "latestFile":Ljava/io/File;
    const-wide/16 v3, 0x0

    .line 300
    .local v3, "latestFileTimestamp":J
    array-length v5, v0

    move v6, v1

    :goto_11
    if-ge v6, v5, :cond_42

    aget-object v7, v0, v6

    .line 301
    .local v7, "f":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    .line 302
    .local v8, "fileName":Ljava/lang/String;
    const-string/jumbo v9, "tl"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_23

    .line 303
    goto :goto_3f

    .line 305
    :cond_23
    nop

    .line 306
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    sub-int/2addr v10, v9

    .line 305
    invoke-virtual {v8, v1, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    .line 307
    .local v9, "timestamp":J
    cmp-long v11, v3, v9

    if-gez v11, :cond_3f

    .line 308
    move-object v2, v7

    .line 309
    move-wide v3, v9

    .line 300
    .end local v7    # "f":Ljava/io/File;
    .end local v8    # "fileName":Ljava/lang/String;
    .end local v9    # "timestamp":J
    :cond_3f
    :goto_3f
    add-int/lit8 v6, v6, 0x1

    goto :goto_11

    .line 312
    :cond_42
    if-nez v2, :cond_45

    .line 313
    return v1

    .line 317
    :cond_45
    :try_start_45
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_4a
    .catch Ljava/io/FileNotFoundException; {:try_start_45 .. :try_end_4a} :catch_6c

    .line 320
    .local v5, "stream":Ljava/io/FileInputStream;
    nop

    .line 322
    :try_start_4b
    invoke-static {v5}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Landroid/util/TypedXmlPullParser;

    move-result-object v6

    .line 323
    .local v6, "parser":Landroid/util/TypedXmlPullParser;
    const-string/jumbo v7, "h"

    invoke-static {v6, v7}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 325
    const/4 v7, 0x0

    const-string/jumbo v8, "lc"

    invoke-interface {v6, v7, v8, v1}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1
    :try_end_5d
    .catchall {:try_start_4b .. :try_end_5d} :catchall_64

    .line 326
    .local v1, "largestChainId":I
    nop

    .line 331
    :try_start_5e
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_61
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_61} :catch_62

    .line 333
    goto :goto_63

    .line 332
    :catch_62
    move-exception v7

    .line 326
    :goto_63
    return v1

    .line 327
    .end local v1    # "largestChainId":I
    .end local v6    # "parser":Landroid/util/TypedXmlPullParser;
    :catchall_64
    move-exception v6

    .line 328
    .local v6, "t":Ljava/lang/Throwable;
    nop

    .line 331
    :try_start_66
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_69
    .catch Ljava/io/IOException; {:try_start_66 .. :try_end_69} :catch_6a

    .line 333
    goto :goto_6b

    .line 332
    :catch_6a
    move-exception v7

    .line 328
    :goto_6b
    return v1

    .line 318
    .end local v5    # "stream":Ljava/io/FileInputStream;
    .end local v6    # "t":Ljava/lang/Throwable;
    :catch_6c
    move-exception v5

    .line 319
    .local v5, "e":Ljava/io/FileNotFoundException;
    return v1

    .line 336
    .end local v2    # "latestFile":Ljava/io/File;
    .end local v3    # "latestFileTimestamp":J
    .end local v5    # "e":Ljava/io/FileNotFoundException;
    :cond_6e
    return v1
.end method

.method private setDiscreteHistoryParameters(Landroid/provider/DeviceConfig$Properties;)V
    .registers 6
    .param p1, "p"    # Landroid/provider/DeviceConfig$Properties;

    .line 216
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object v0

    const-string v1, "discrete_history_cutoff_millis"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 217
    sget-wide v2, Lcom/android/server/appop/DiscreteRegistry;->DEFAULT_DISCRETE_HISTORY_CUTOFF:J

    invoke-virtual {p1, v1, v2, v3}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/appop/DiscreteRegistry;->sDiscreteHistoryCutoff:J

    .line 219
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-nez v0, :cond_2b

    iget-boolean v0, p0, Lcom/android/server/appop/DiscreteRegistry;->mDebugMode:Z

    if-nez v0, :cond_2b

    .line 220
    sget-wide v0, Lcom/android/server/appop/DiscreteRegistry;->MAXIMUM_DISCRETE_HISTORY_CUTOFF:J

    sget-wide v2, Lcom/android/server/appop/DiscreteRegistry;->sDiscreteHistoryCutoff:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->min(JJ)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/appop/DiscreteRegistry;->sDiscreteHistoryCutoff:J

    goto :goto_2b

    .line 224
    :cond_27
    sget-wide v0, Lcom/android/server/appop/DiscreteRegistry;->DEFAULT_DISCRETE_HISTORY_CUTOFF:J

    sput-wide v0, Lcom/android/server/appop/DiscreteRegistry;->sDiscreteHistoryCutoff:J

    .line 226
    :cond_2b
    :goto_2b
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object v0

    const-string v1, "discrete_history_quantization_millis"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 227
    sget-wide v2, Lcom/android/server/appop/DiscreteRegistry;->DEFAULT_DISCRETE_HISTORY_QUANTIZATION:J

    invoke-virtual {p1, v1, v2, v3}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/appop/DiscreteRegistry;->sDiscreteHistoryQuantization:J

    .line 229
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-nez v0, :cond_54

    iget-boolean v0, p0, Lcom/android/server/appop/DiscreteRegistry;->mDebugMode:Z

    if-nez v0, :cond_54

    .line 230
    sget-wide v0, Lcom/android/server/appop/DiscreteRegistry;->sDiscreteHistoryQuantization:J

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/appop/DiscreteRegistry;->sDiscreteHistoryQuantization:J

    goto :goto_54

    .line 234
    :cond_50
    sget-wide v0, Lcom/android/server/appop/DiscreteRegistry;->DEFAULT_DISCRETE_HISTORY_QUANTIZATION:J

    sput-wide v0, Lcom/android/server/appop/DiscreteRegistry;->sDiscreteHistoryQuantization:J

    .line 236
    :cond_54
    :goto_54
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object v0

    const-string v1, "discrete_history_op_flags"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/16 v2, 0xb

    if-eqz v0, :cond_69

    .line 237
    invoke-virtual {p1, v1, v2}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/android/server/appop/DiscreteRegistry;->sDiscreteFlags:I

    goto :goto_6a

    :cond_69
    nop

    :goto_6a
    sput v2, Lcom/android/server/appop/DiscreteRegistry;->sDiscreteFlags:I

    .line 238
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object v0

    const-string v1, "discrete_history_ops_cslist"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "1,0,26,27,100,101,120"

    if-eqz v0, :cond_83

    .line 239
    invoke-virtual {p1, v1, v2}, Landroid/provider/DeviceConfig$Properties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 238
    invoke-static {v0}, Lcom/android/server/appop/DiscreteRegistry;->parseOpsList(Ljava/lang/String;)[I

    move-result-object v0

    goto :goto_87

    .line 239
    :cond_83
    invoke-static {v2}, Lcom/android/server/appop/DiscreteRegistry;->parseOpsList(Ljava/lang/String;)[I

    move-result-object v0

    :goto_87
    sput-object v0, Lcom/android/server/appop/DiscreteRegistry;->sDiscreteOps:[I

    .line 241
    return-void
.end method

.method private static stableListMerge(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;",
            ">;"
        }
    .end annotation

    .line 1343
    .local p0, "a":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;>;"
    .local p1, "b":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 1344
    .local v0, "nA":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 1345
    .local v1, "nB":I
    const/4 v2, 0x0

    .line 1346
    .local v2, "i":I
    const/4 v3, 0x0

    .line 1347
    .local v3, "k":I
    new-instance v4, Ljava/util/ArrayList;

    add-int v5, v0, v1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 1348
    .local v4, "result":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;>;"
    :goto_11
    if-lt v2, v0, :cond_17

    if-ge v3, v1, :cond_16

    goto :goto_17

    .line 1359
    :cond_16
    return-object v4

    .line 1349
    :cond_17
    :goto_17
    if-ne v2, v0, :cond_26

    .line 1350
    add-int/lit8 v5, v3, 0x1

    .end local v3    # "k":I
    .local v5, "k":I
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v3, v5

    goto :goto_11

    .line 1351
    .end local v5    # "k":I
    .restart local v3    # "k":I
    :cond_26
    if-ne v3, v1, :cond_35

    .line 1352
    add-int/lit8 v5, v2, 0x1

    .end local v2    # "i":I
    .local v5, "i":I
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v2, v5

    goto :goto_11

    .line 1353
    .end local v5    # "i":I
    .restart local v2    # "i":I
    :cond_35
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;

    iget-wide v5, v5, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mNoteTime:J

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;

    iget-wide v7, v7, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;->mNoteTime:J

    cmp-long v5, v5, v7

    if-gez v5, :cond_56

    .line 1354
    add-int/lit8 v5, v2, 0x1

    .end local v2    # "i":I
    .restart local v5    # "i":I
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v2, v5

    goto :goto_11

    .line 1356
    .end local v5    # "i":I
    .restart local v2    # "i":I
    :cond_56
    add-int/lit8 v5, v3, 0x1

    .end local v3    # "k":I
    .local v5, "k":I
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appop/DiscreteRegistry$DiscreteOpEvent;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v3, v5

    goto :goto_11
.end method


# virtual methods
.method addFilteredDiscreteOpsToHistoricalOps(Landroid/app/AppOpsManager$HistoricalOps;JJIILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/util/Set;)V
    .registers 31
    .param p1, "result"    # Landroid/app/AppOpsManager$HistoricalOps;
    .param p2, "beginTimeMillis"    # J
    .param p4, "endTimeMillis"    # J
    .param p6, "filter"    # I
    .param p7, "uidFilter"    # I
    .param p8, "packageNameFilter"    # Ljava/lang/String;
    .param p9, "opNamesFilter"    # [Ljava/lang/String;
    .param p10, "attributionTagFilter"    # Ljava/lang/String;
    .param p11, "flagsFilter"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/AppOpsManager$HistoricalOps;",
            "JJII",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 281
    .local p12, "attributionExemptPkgs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v0, p12

    if-eqz v0, :cond_6

    const/4 v1, 0x1

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    .line 282
    .local v1, "assembleChains":Z
    :goto_7
    invoke-direct/range {p0 .. p0}, Lcom/android/server/appop/DiscreteRegistry;->getAllDiscreteOps()Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;

    move-result-object v14

    .line 283
    .local v14, "discreteOps":Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 284
    .local v2, "attributionChains":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Lcom/android/server/appop/DiscreteRegistry$AttributionChain;>;"
    if-eqz v1, :cond_1a

    .line 285
    move-object/from16 v15, p0

    invoke-direct {v15, v14, v0}, Lcom/android/server/appop/DiscreteRegistry;->createAttributionChains(Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;Ljava/util/Set;)Landroid/util/ArrayMap;

    move-result-object v2

    move-object v12, v2

    goto :goto_1d

    .line 284
    :cond_1a
    move-object/from16 v15, p0

    move-object v12, v2

    .line 287
    .end local v2    # "attributionChains":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Lcom/android/server/appop/DiscreteRegistry$AttributionChain;>;"
    .local v12, "attributionChains":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Lcom/android/server/appop/DiscreteRegistry$AttributionChain;>;"
    :goto_1d
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v2

    sget-wide v3, Lcom/android/server/appop/DiscreteRegistry;->sDiscreteHistoryCutoff:J

    sget-object v5, Ljava/time/temporal/ChronoUnit;->MILLIS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v2, v3, v4, v5}, Ljava/time/Instant;->minus(JLjava/time/temporal/TemporalUnit;)Ljava/time/Instant;

    move-result-object v2

    .line 288
    invoke-virtual {v2}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v2

    .line 287
    move-wide/from16 v4, p2

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v16

    .line 289
    .end local p2    # "beginTimeMillis":J
    .local v16, "beginTimeMillis":J
    move-object v2, v14

    move-wide/from16 v3, v16

    move-wide/from16 v5, p4

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 p2, v12

    .end local v12    # "attributionChains":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Lcom/android/server/appop/DiscreteRegistry$AttributionChain;>;"
    .local p2, "attributionChains":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Lcom/android/server/appop/DiscreteRegistry$AttributionChain;>;"
    move/from16 v12, p11

    move-object/from16 v13, p2

    invoke-static/range {v2 .. v13}, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->-$$Nest$mfilter(Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;JJIILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILandroid/util/ArrayMap;)V

    .line 291
    move-object/from16 v2, p1

    move-object/from16 v3, p2

    .end local p2    # "attributionChains":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Lcom/android/server/appop/DiscreteRegistry$AttributionChain;>;"
    .local v3, "attributionChains":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Lcom/android/server/appop/DiscreteRegistry$AttributionChain;>;"
    invoke-static {v14, v2, v3}, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->-$$Nest$mapplyToHistoricalOps(Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;Landroid/app/AppOpsManager$HistoricalOps;Landroid/util/ArrayMap;)V

    .line 292
    return-void
.end method

.method clearHistory()V
    .registers 5

    .line 407
    iget-object v0, p0, Lcom/android/server/appop/DiscreteRegistry;->mOnDiskLock:Ljava/lang/Object;

    monitor-enter v0

    .line 408
    :try_start_3
    iget-object v1, p0, Lcom/android/server/appop/DiscreteRegistry;->mInMemoryLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_17

    .line 409
    :try_start_6
    new-instance v2, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;-><init>(Lcom/android/server/appop/DiscreteRegistry;I)V

    iput-object v2, p0, Lcom/android/server/appop/DiscreteRegistry;->mDiscreteOps:Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;

    .line 410
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_14

    .line 411
    :try_start_f
    invoke-direct {p0}, Lcom/android/server/appop/DiscreteRegistry;->clearOnDiskHistoryLocked()V

    .line 412
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_f .. :try_end_13} :catchall_17

    .line 413
    return-void

    .line 410
    :catchall_14
    move-exception v2

    :try_start_15
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    .end local p0    # "this":Lcom/android/server/appop/DiscreteRegistry;
    :try_start_16
    throw v2

    .line 412
    .restart local p0    # "this":Lcom/android/server/appop/DiscreteRegistry;
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_17

    throw v1
.end method

.method clearHistory(ILjava/lang/String;)V
    .registers 6
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 416
    iget-object v0, p0, Lcom/android/server/appop/DiscreteRegistry;->mOnDiskLock:Ljava/lang/Object;

    monitor-enter v0

    .line 418
    :try_start_3
    iget-object v1, p0, Lcom/android/server/appop/DiscreteRegistry;->mInMemoryLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_19

    .line 419
    :try_start_6
    invoke-direct {p0}, Lcom/android/server/appop/DiscreteRegistry;->getAllDiscreteOps()Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;

    move-result-object v2

    .line 420
    .local v2, "discreteOps":Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;
    invoke-virtual {p0}, Lcom/android/server/appop/DiscreteRegistry;->clearHistory()V

    .line 421
    monitor-exit v1
    :try_end_e
    .catchall {:try_start_6 .. :try_end_e} :catchall_16

    .line 422
    :try_start_e
    invoke-static {v2, p1, p2}, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->-$$Nest$mclearHistory(Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;ILjava/lang/String;)V

    .line 423
    invoke-direct {p0, v2}, Lcom/android/server/appop/DiscreteRegistry;->persistDiscreteOpsLocked(Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;)V

    .line 424
    .end local v2    # "discreteOps":Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_19

    .line 425
    return-void

    .line 421
    :catchall_16
    move-exception v2

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    .end local p0    # "this":Lcom/android/server/appop/DiscreteRegistry;
    .end local p1    # "uid":I
    .end local p2    # "packageName":Ljava/lang/String;
    :try_start_18
    throw v2

    .line 424
    .restart local p0    # "this":Lcom/android/server/appop/DiscreteRegistry;
    .restart local p1    # "uid":I
    .restart local p2    # "packageName":Ljava/lang/String;
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method dump(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;IILjava/text/SimpleDateFormat;Ljava/util/Date;Ljava/lang/String;I)V
    .registers 31
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "uidFilter"    # I
    .param p3, "packageNameFilter"    # Ljava/lang/String;
    .param p4, "attributionTagFilter"    # Ljava/lang/String;
    .param p5, "filter"    # I
    .param p6, "dumpOp"    # I
    .param p7, "sdf"    # Ljava/text/SimpleDateFormat;
    .param p8, "date"    # Ljava/util/Date;
    .param p9, "prefix"    # Ljava/lang/String;
    .param p10, "nDiscreteOps"    # I

    .line 444
    move-object/from16 v6, p1

    invoke-direct/range {p0 .. p0}, Lcom/android/server/appop/DiscreteRegistry;->getAllDiscreteOps()Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;

    move-result-object v19

    .line 445
    .local v19, "discreteOps":Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;
    const/4 v0, -0x1

    move/from16 v5, p6

    if-ne v5, v0, :cond_e

    const/4 v0, 0x0

    move-object v15, v0

    goto :goto_19

    .line 446
    :cond_e
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static/range {p6 .. p6}, Landroid/app/AppOpsManager;->opToPublicName(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    move-object v15, v0

    :goto_19
    nop

    .line 447
    .local v15, "opNamesFilter":[Ljava/lang/String;
    const-wide/16 v8, 0x0

    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v10

    const/16 v17, 0x1f

    new-instance v18, Landroid/util/ArrayMap;

    invoke-direct/range {v18 .. v18}, Landroid/util/ArrayMap;-><init>()V

    move-object/from16 v7, v19

    move/from16 v12, p5

    move/from16 v13, p2

    move-object/from16 v14, p3

    move-object/from16 v16, p4

    invoke-static/range {v7 .. v18}, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->-$$Nest$mfilter(Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;JJIILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILandroid/util/ArrayMap;)V

    .line 449
    move-object/from16 v7, p9

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 450
    const-string v0, "Largest chain id: "

    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 451
    move-object/from16 v8, p0

    iget-object v0, v8, Lcom/android/server/appop/DiscreteRegistry;->mDiscreteOps:Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;

    iget v0, v0, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->mLargestChainId:I

    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 452
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 453
    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move-object/from16 v2, p7

    move-object/from16 v3, p8

    move-object/from16 v4, p9

    move/from16 v5, p10

    invoke-static/range {v0 .. v5}, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->-$$Nest$mdump(Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;Ljava/io/PrintWriter;Ljava/text/SimpleDateFormat;Ljava/util/Date;Ljava/lang/String;I)V

    .line 454
    return-void
.end method

.method synthetic lambda$systemReady$0$com-android-server-appop-DiscreteRegistry(Landroid/provider/DeviceConfig$Properties;)V
    .registers 2
    .param p1, "p"    # Landroid/provider/DeviceConfig$Properties;

    .line 210
    invoke-direct {p0, p1}, Lcom/android/server/appop/DiscreteRegistry;->setDiscreteHistoryParameters(Landroid/provider/DeviceConfig$Properties;)V

    .line 211
    return-void
.end method

.method offsetHistory(J)V
    .registers 6
    .param p1, "offset"    # J

    .line 428
    iget-object v0, p0, Lcom/android/server/appop/DiscreteRegistry;->mOnDiskLock:Ljava/lang/Object;

    monitor-enter v0

    .line 430
    :try_start_3
    iget-object v1, p0, Lcom/android/server/appop/DiscreteRegistry;->mInMemoryLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_19

    .line 431
    :try_start_6
    invoke-direct {p0}, Lcom/android/server/appop/DiscreteRegistry;->getAllDiscreteOps()Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;

    move-result-object v2

    .line 432
    .local v2, "discreteOps":Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;
    invoke-virtual {p0}, Lcom/android/server/appop/DiscreteRegistry;->clearHistory()V

    .line 433
    monitor-exit v1
    :try_end_e
    .catchall {:try_start_6 .. :try_end_e} :catchall_16

    .line 434
    :try_start_e
    invoke-static {v2, p1, p2}, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->-$$Nest$moffsetHistory(Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;J)V

    .line 435
    invoke-direct {p0, v2}, Lcom/android/server/appop/DiscreteRegistry;->persistDiscreteOpsLocked(Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;)V

    .line 436
    .end local v2    # "discreteOps":Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_19

    .line 437
    return-void

    .line 433
    :catchall_16
    move-exception v2

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    .end local p0    # "this":Lcom/android/server/appop/DiscreteRegistry;
    .end local p1    # "offset":J
    :try_start_18
    throw v2

    .line 436
    .restart local p0    # "this":Lcom/android/server/appop/DiscreteRegistry;
    .restart local p1    # "offset":J
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method recordDiscreteAccess(ILjava/lang/String;ILjava/lang/String;IIJJII)V
    .registers 30
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "op"    # I
    .param p4, "attributionTag"    # Ljava/lang/String;
    .param p5, "flags"    # I
    .param p6, "uidState"    # I
    .param p7, "accessTime"    # J
    .param p9, "accessDuration"    # J
    .param p11, "attributionFlags"    # I
    .param p12, "attributionChainId"    # I

    .line 247
    move-object/from16 v1, p0

    move/from16 v15, p3

    move/from16 v14, p5

    invoke-static {v15, v14}, Lcom/android/server/appop/DiscreteRegistry;->isDiscreteOp(II)Z

    move-result v0

    if-nez v0, :cond_d

    .line 248
    return-void

    .line 250
    :cond_d
    iget-object v13, v1, Lcom/android/server/appop/DiscreteRegistry;->mInMemoryLock:Ljava/lang/Object;

    monitor-enter v13

    .line 251
    :try_start_10
    iget-object v2, v1, Lcom/android/server/appop/DiscreteRegistry;->mDiscreteOps:Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;
    :try_end_12
    .catchall {:try_start_10 .. :try_end_12} :catchall_2f

    move/from16 v3, p3

    move/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move-wide/from16 v9, p7

    move-wide/from16 v11, p9

    move-object/from16 v16, v13

    move/from16 v13, p11

    move/from16 v14, p12

    :try_start_28
    invoke-virtual/range {v2 .. v14}, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->addDiscreteAccess(IILjava/lang/String;Ljava/lang/String;IIJJII)V

    .line 253
    monitor-exit v16

    .line 254
    return-void

    .line 253
    :catchall_2d
    move-exception v0

    goto :goto_32

    :catchall_2f
    move-exception v0

    move-object/from16 v16, v13

    :goto_32
    monitor-exit v16
    :try_end_33
    .catchall {:try_start_28 .. :try_end_33} :catchall_2d

    throw v0
.end method

.method setDebugMode(Z)V
    .registers 2
    .param p1, "debugMode"    # Z

    .line 1407
    iput-boolean p1, p0, Lcom/android/server/appop/DiscreteRegistry;->mDebugMode:Z

    .line 1408
    return-void
.end method

.method systemReady()V
    .registers 4

    .line 208
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/server/appop/DiscreteRegistry$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/appop/DiscreteRegistry$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/appop/DiscreteRegistry;)V

    const-string/jumbo v2, "privacy"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 212
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {v2, v0}, Landroid/provider/DeviceConfig;->getProperties(Ljava/lang/String;[Ljava/lang/String;)Landroid/provider/DeviceConfig$Properties;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/appop/DiscreteRegistry;->setDiscreteHistoryParameters(Landroid/provider/DeviceConfig$Properties;)V

    .line 213
    return-void
.end method

.method writeAndClearAccessHistory()V
    .registers 6

    .line 257
    iget-object v0, p0, Lcom/android/server/appop/DiscreteRegistry;->mOnDiskLock:Ljava/lang/Object;

    monitor-enter v0

    .line 258
    :try_start_3
    iget-object v1, p0, Lcom/android/server/appop/DiscreteRegistry;->mDiscreteAccessDir:Ljava/io/File;

    if-nez v1, :cond_10

    .line 259
    sget-object v1, Lcom/android/server/appop/DiscreteRegistry;->TAG:Ljava/lang/String;

    const-string v2, "State not saved - persistence not initialized."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    monitor-exit v0

    return-void

    .line 263
    :cond_10
    iget-object v1, p0, Lcom/android/server/appop/DiscreteRegistry;->mInMemoryLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_33

    .line 264
    :try_start_13
    iget-object v2, p0, Lcom/android/server/appop/DiscreteRegistry;->mDiscreteOps:Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;

    .line 265
    .local v2, "discreteOps":Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;
    new-instance v3, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;

    iget v4, v2, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->mChainIdOffset:I

    invoke-direct {v3, p0, v4}, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;-><init>(Lcom/android/server/appop/DiscreteRegistry;I)V

    iput-object v3, p0, Lcom/android/server/appop/DiscreteRegistry;->mDiscreteOps:Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;

    .line 266
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/appop/DiscreteRegistry;->mCachedOps:Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;

    .line 267
    monitor-exit v1
    :try_end_22
    .catchall {:try_start_13 .. :try_end_22} :catchall_30

    .line 268
    :try_start_22
    invoke-direct {p0}, Lcom/android/server/appop/DiscreteRegistry;->deleteOldDiscreteHistoryFilesLocked()V

    .line 269
    invoke-virtual {v2}, Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2e

    .line 270
    invoke-direct {p0, v2}, Lcom/android/server/appop/DiscreteRegistry;->persistDiscreteOpsLocked(Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;)V

    .line 272
    .end local v2    # "discreteOps":Lcom/android/server/appop/DiscreteRegistry$DiscreteOps;
    :cond_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_22 .. :try_end_2f} :catchall_33

    .line 273
    return-void

    .line 267
    :catchall_30
    move-exception v2

    :try_start_31
    monitor-exit v1
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    .end local p0    # "this":Lcom/android/server/appop/DiscreteRegistry;
    :try_start_32
    throw v2

    .line 272
    .restart local p0    # "this":Lcom/android/server/appop/DiscreteRegistry;
    :catchall_33
    move-exception v1

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_33

    throw v1
.end method
