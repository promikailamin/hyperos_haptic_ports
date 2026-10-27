.class public Lcom/android/server/tare/Scribe;
.super Ljava/lang/Object;
.source "Scribe.java"


# static fields
.field private static final DEBUG:Z

.field private static final MAX_NUM_TRANSACTION_DUMP:I = 0x19

.field private static final MAX_TRANSACTION_AGE_MS:J = 0x5265c00L

.field private static final STATE_FILE_VERSION:I = 0x0

.field private static final TAG:Ljava/lang/String;

.field private static final WRITE_DELAY:J = 0x7530L

.field private static final XML_ATTR_CONSUMPTION_LIMIT:Ljava/lang/String; = "consumptionLimit"

.field private static final XML_ATTR_CTP:Ljava/lang/String; = "ctp"

.field private static final XML_ATTR_CURRENT_BALANCE:Ljava/lang/String; = "currentBalance"

.field private static final XML_ATTR_DELTA:Ljava/lang/String; = "delta"

.field private static final XML_ATTR_END_TIME:Ljava/lang/String; = "endTime"

.field private static final XML_ATTR_EVENT_ID:Ljava/lang/String; = "eventId"

.field private static final XML_ATTR_LAST_RECLAMATION_TIME:Ljava/lang/String; = "lastReclamationTime"

.field private static final XML_ATTR_PACKAGE_NAME:Ljava/lang/String; = "pkgName"

.field private static final XML_ATTR_PR_BATTERY_LEVEL:Ljava/lang/String; = "batteryLevel"

.field private static final XML_ATTR_PR_DISCHARGE:Ljava/lang/String; = "discharge"

.field private static final XML_ATTR_PR_LOSS:Ljava/lang/String; = "loss"

.field private static final XML_ATTR_PR_NEG_REGULATIONS:Ljava/lang/String; = "negRegulations"

.field private static final XML_ATTR_PR_NUM_LOSS:Ljava/lang/String; = "numLoss"

.field private static final XML_ATTR_PR_NUM_NEG_REGULATIONS:Ljava/lang/String; = "numNegRegulations"

.field private static final XML_ATTR_PR_NUM_POS_REGULATIONS:Ljava/lang/String; = "numPosRegulations"

.field private static final XML_ATTR_PR_NUM_PROFIT:Ljava/lang/String; = "numProfits"

.field private static final XML_ATTR_PR_NUM_REWARDS:Ljava/lang/String; = "numRewards"

.field private static final XML_ATTR_PR_POS_REGULATIONS:Ljava/lang/String; = "posRegulations"

.field private static final XML_ATTR_PR_PROFIT:Ljava/lang/String; = "profit"

.field private static final XML_ATTR_PR_REWARDS:Ljava/lang/String; = "rewards"

.field private static final XML_ATTR_REMAINING_CONSUMABLE_CAKES:Ljava/lang/String; = "remainingConsumableCakes"

.field private static final XML_ATTR_START_TIME:Ljava/lang/String; = "startTime"

.field private static final XML_ATTR_TAG:Ljava/lang/String; = "tag"

.field private static final XML_ATTR_USER_ID:Ljava/lang/String; = "userId"

.field private static final XML_ATTR_VERSION:Ljava/lang/String; = "version"

.field private static final XML_TAG_HIGH_LEVEL_STATE:Ljava/lang/String; = "irs-state"

.field private static final XML_TAG_LEDGER:Ljava/lang/String; = "ledger"

.field private static final XML_TAG_PERIOD_REPORT:Ljava/lang/String; = "report"

.field private static final XML_TAG_TARE:Ljava/lang/String; = "tare"

.field private static final XML_TAG_TRANSACTION:Ljava/lang/String; = "transaction"

.field private static final XML_TAG_USER:Ljava/lang/String; = "user"


# instance fields
.field private final mAnalyst:Lcom/android/server/tare/Analyst;

.field private final mCleanRunnable:Ljava/lang/Runnable;

.field private final mIrs:Lcom/android/server/tare/InternalResourceService;

.field private mLastReclamationTime:J

.field private final mLedgers:Landroid/util/SparseArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/tare/Ledger;",
            ">;"
        }
    .end annotation
.end field

.field private mRemainingConsumableCakes:J

.field private mSatiatedConsumptionLimit:J

.field private final mStateFile:Landroid/util/AtomicFile;

.field private final mWriteRunnable:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$0gtn6R3Vmum7PweFgnG2JMPIuTU(Lcom/android/server/tare/Scribe;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/tare/Scribe;->cleanupLedgers()V

    return-void
.end method

.method public static synthetic $r8$lambda$yJ_5syXNQUTlPkQFbHqUe0XRNs4(Lcom/android/server/tare/Scribe;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/tare/Scribe;->writeState()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TARE-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/server/tare/Scribe;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/tare/Scribe;->TAG:Ljava/lang/String;

    .line 58
    sget-boolean v1, Lcom/android/server/tare/InternalResourceService;->DEBUG:Z

    if-nez v1, :cond_29

    const/4 v1, 0x3

    .line 59
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_27

    goto :goto_29

    :cond_27
    const/4 v0, 0x0

    goto :goto_2a

    :cond_29
    :goto_29
    const/4 v0, 0x1

    :goto_2a
    sput-boolean v0, Lcom/android/server/tare/Scribe;->DEBUG:Z

    .line 58
    return-void
.end method

.method constructor <init>(Lcom/android/server/tare/InternalResourceService;Lcom/android/server/tare/Analyst;)V
    .registers 4
    .param p1, "irs"    # Lcom/android/server/tare/InternalResourceService;
    .param p2, "analyst"    # Lcom/android/server/tare/Analyst;

    .line 125
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/tare/Scribe;-><init>(Lcom/android/server/tare/InternalResourceService;Lcom/android/server/tare/Analyst;Ljava/io/File;)V

    .line 126
    return-void
.end method

.method constructor <init>(Lcom/android/server/tare/InternalResourceService;Lcom/android/server/tare/Analyst;Ljava/io/File;)V
    .registers 9
    .param p1, "irs"    # Lcom/android/server/tare/InternalResourceService;
    .param p2, "analyst"    # Lcom/android/server/tare/Analyst;
    .param p3, "dataDir"    # Ljava/io/File;

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    new-instance v0, Landroid/util/SparseArrayMap;

    invoke-direct {v0}, Landroid/util/SparseArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/tare/Scribe;->mLedgers:Landroid/util/SparseArrayMap;

    .line 121
    new-instance v0, Lcom/android/server/tare/Scribe$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/tare/Scribe$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/tare/Scribe;)V

    iput-object v0, p0, Lcom/android/server/tare/Scribe;->mCleanRunnable:Ljava/lang/Runnable;

    .line 122
    new-instance v0, Lcom/android/server/tare/Scribe$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/server/tare/Scribe$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/tare/Scribe;)V

    iput-object v0, p0, Lcom/android/server/tare/Scribe;->mWriteRunnable:Ljava/lang/Runnable;

    .line 130
    iput-object p1, p0, Lcom/android/server/tare/Scribe;->mIrs:Lcom/android/server/tare/InternalResourceService;

    .line 131
    iput-object p2, p0, Lcom/android/server/tare/Scribe;->mAnalyst:Lcom/android/server/tare/Analyst;

    .line 133
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "tare"

    invoke-direct {v0, p3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 135
    .local v0, "tareDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 136
    new-instance v2, Landroid/util/AtomicFile;

    new-instance v3, Ljava/io/File;

    const-string/jumbo v4, "state.xml"

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v2, v3, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/tare/Scribe;->mStateFile:Landroid/util/AtomicFile;

    .line 137
    return-void
.end method

.method private cleanupLedgers()V
    .registers 12

    .line 340
    iget-object v0, p0, Lcom/android/server/tare/Scribe;->mIrs:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {v0}, Lcom/android/server/tare/InternalResourceService;->getLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 341
    :try_start_7
    invoke-static {}, Lcom/android/server/tare/TareHandlerThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/tare/Scribe;->mCleanRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 342
    const-wide v1, 0x7fffffffffffffffL

    .line 343
    .local v1, "earliestEndTime":J
    iget-object v3, p0, Lcom/android/server/tare/Scribe;->mLedgers:Landroid/util/SparseArrayMap;

    invoke-virtual {v3}, Landroid/util/SparseArrayMap;->numMaps()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "uIdx":I
    :goto_1d
    if-ltz v3, :cond_58

    .line 344
    iget-object v4, p0, Lcom/android/server/tare/Scribe;->mLedgers:Landroid/util/SparseArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/SparseArrayMap;->keyAt(I)I

    move-result v4

    .line 346
    .local v4, "userId":I
    iget-object v5, p0, Lcom/android/server/tare/Scribe;->mLedgers:Landroid/util/SparseArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/SparseArrayMap;->numElementsForKey(I)I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    .local v5, "pIdx":I
    :goto_2d
    if-ltz v5, :cond_55

    .line 347
    iget-object v6, p0, Lcom/android/server/tare/Scribe;->mLedgers:Landroid/util/SparseArrayMap;

    invoke-virtual {v6, v3, v5}, Landroid/util/SparseArrayMap;->keyAt(II)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 348
    .local v6, "pkgName":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/tare/Scribe;->mLedgers:Landroid/util/SparseArrayMap;

    invoke-virtual {v7, v4, v6}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/tare/Ledger;

    .line 349
    .local v7, "ledger":Lcom/android/server/tare/Ledger;
    const-wide/32 v8, 0x5265c00

    invoke-virtual {v7, v8, v9}, Lcom/android/server/tare/Ledger;->removeOldTransactions(J)V

    .line 350
    invoke-virtual {v7}, Lcom/android/server/tare/Ledger;->getEarliestTransaction()Lcom/android/server/tare/Ledger$Transaction;

    move-result-object v8

    .line 351
    .local v8, "transaction":Lcom/android/server/tare/Ledger$Transaction;
    if-eqz v8, :cond_52

    .line 352
    iget-wide v9, v8, Lcom/android/server/tare/Ledger$Transaction;->endTimeMs:J

    invoke-static {v1, v2, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    move-wide v1, v9

    .line 346
    .end local v6    # "pkgName":Ljava/lang/String;
    .end local v7    # "ledger":Lcom/android/server/tare/Ledger;
    .end local v8    # "transaction":Lcom/android/server/tare/Ledger$Transaction;
    :cond_52
    add-int/lit8 v5, v5, -0x1

    goto :goto_2d

    .line 343
    .end local v4    # "userId":I
    .end local v5    # "pIdx":I
    :cond_55
    add-int/lit8 v3, v3, -0x1

    goto :goto_1d

    .line 356
    .end local v3    # "uIdx":I
    :cond_58
    invoke-direct {p0, v1, v2}, Lcom/android/server/tare/Scribe;->scheduleCleanup(J)V

    .line 357
    .end local v1    # "earliestEndTime":J
    monitor-exit v0

    .line 358
    return-void

    .line 357
    :catchall_5d
    move-exception v1

    monitor-exit v0
    :try_end_5f
    .catchall {:try_start_7 .. :try_end_5f} :catchall_5d

    throw v1
.end method

.method private static readLedgerFromXml(Landroid/util/TypedXmlPullParser;Landroid/util/ArraySet;J)Landroid/util/Pair;
    .registers 36
    .param p0, "parser"    # Landroid/util/TypedXmlPullParser;
    .param p2, "endTimeCutoff"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/TypedXmlPullParser;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;J)",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Lcom/android/server/tare/Ledger;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 372
    .local p1, "validPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 374
    .local v1, "transactions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/tare/Ledger$Transaction;>;"
    const/4 v2, 0x0

    const-string/jumbo v3, "pkgName"

    invoke-interface {v0, v2, v3}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 375
    .local v3, "pkgName":Ljava/lang/String;
    const-string v4, "currentBalance"

    invoke-interface {v0, v2, v4}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v4

    .line 377
    .local v4, "curBalance":J
    move-object/from16 v6, p1

    invoke-virtual {v6, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v7

    .line 378
    .local v7, "isInstalled":Z
    if-nez v7, :cond_3b

    .line 381
    sget-object v8, Lcom/android/server/tare/Scribe;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid pkg "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is saved to disk"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    :cond_3b
    invoke-interface/range {p0 .. p0}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v8

    .local v8, "eventType":I
    :goto_3f
    const/4 v9, 0x1

    if-eq v8, v9, :cond_f2

    .line 386
    invoke-interface/range {p0 .. p0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    .line 387
    .local v9, "tagName":Ljava/lang/String;
    const/4 v10, 0x3

    if-ne v8, v10, :cond_53

    .line 388
    const-string v10, "ledger"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c9

    .line 390
    goto/16 :goto_f2

    .line 394
    :cond_53
    const/4 v10, 0x2

    if-ne v8, v10, :cond_cf

    const-string/jumbo v10, "transaction"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_61

    goto/16 :goto_cf

    .line 399
    :cond_61
    if-nez v7, :cond_64

    .line 400
    goto :goto_c9

    .line 402
    :cond_64
    sget-boolean v10, Lcom/android/server/tare/Scribe;->DEBUG:Z

    if-eqz v10, :cond_80

    .line 403
    sget-object v11, Lcom/android/server/tare/Scribe;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Starting ledger tag: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    :cond_80
    const-string/jumbo v11, "tag"

    invoke-interface {v0, v2, v11}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 406
    .local v11, "tag":Ljava/lang/String;
    const-string/jumbo v12, "startTime"

    invoke-interface {v0, v2, v12}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v23

    .line 407
    .local v23, "startTime":J
    const-string v12, "endTime"

    invoke-interface {v0, v2, v12}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v25

    .line 408
    .local v25, "endTime":J
    const-string v12, "eventId"

    invoke-interface {v0, v2, v12}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v27

    .line 409
    .local v27, "eventId":I
    const-string v12, "delta"

    invoke-interface {v0, v2, v12}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v28

    .line 410
    .local v28, "delta":J
    const-string v12, "ctp"

    invoke-interface {v0, v2, v12}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v30

    .line 411
    .local v30, "ctp":J
    cmp-long v12, v25, p2

    if-gtz v12, :cond_b4

    .line 412
    if-eqz v10, :cond_c9

    .line 413
    sget-object v10, Lcom/android/server/tare/Scribe;->TAG:Ljava/lang/String;

    const-string v12, "Skipping event because it\'s too old."

    invoke-static {v10, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c9

    .line 417
    :cond_b4
    new-instance v10, Lcom/android/server/tare/Ledger$Transaction;

    move-object v12, v10

    move-wide/from16 v13, v23

    move-wide/from16 v15, v25

    move/from16 v17, v27

    move-object/from16 v18, v11

    move-wide/from16 v19, v28

    move-wide/from16 v21, v30

    invoke-direct/range {v12 .. v22}, Lcom/android/server/tare/Ledger$Transaction;-><init>(JJILjava/lang/String;JJ)V

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 385
    .end local v9    # "tagName":Ljava/lang/String;
    .end local v11    # "tag":Ljava/lang/String;
    .end local v23    # "startTime":J
    .end local v25    # "endTime":J
    .end local v27    # "eventId":I
    .end local v28    # "delta":J
    .end local v30    # "ctp":J
    :cond_c9
    :goto_c9
    invoke-interface/range {p0 .. p0}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v8

    goto/16 :goto_3f

    .line 396
    .restart local v9    # "tagName":Ljava/lang/String;
    :cond_cf
    :goto_cf
    sget-object v10, Lcom/android/server/tare/Scribe;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unexpected event: ("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ") "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    return-object v2

    .line 420
    .end local v8    # "eventType":I
    .end local v9    # "tagName":Ljava/lang/String;
    :cond_f2
    :goto_f2
    if-nez v7, :cond_f5

    .line 421
    return-object v2

    .line 423
    :cond_f5
    new-instance v2, Lcom/android/server/tare/Ledger;

    invoke-direct {v2, v4, v5, v1}, Lcom/android/server/tare/Ledger;-><init>(JLjava/util/List;)V

    invoke-static {v3, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    return-object v2
.end method

.method private static readReportFromXml(Landroid/util/TypedXmlPullParser;)Lcom/android/server/tare/Analyst$Report;
    .registers 5
    .param p0, "parser"    # Landroid/util/TypedXmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 489
    new-instance v0, Lcom/android/server/tare/Analyst$Report;

    invoke-direct {v0}, Lcom/android/server/tare/Analyst$Report;-><init>()V

    .line 491
    .local v0, "report":Lcom/android/server/tare/Analyst$Report;
    const/4 v1, 0x0

    const-string v2, "discharge"

    invoke-interface {p0, v1, v2}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/tare/Analyst$Report;->cumulativeBatteryDischarge:I

    .line 492
    const-string v2, "batteryLevel"

    invoke-interface {p0, v1, v2}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/tare/Analyst$Report;->currentBatteryLevel:I

    .line 493
    const-string/jumbo v2, "profit"

    invoke-interface {p0, v1, v2}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/server/tare/Analyst$Report;->cumulativeProfit:J

    .line 494
    const-string/jumbo v2, "numProfits"

    invoke-interface {p0, v1, v2}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/tare/Analyst$Report;->numProfitableActions:I

    .line 495
    const-string v2, "loss"

    invoke-interface {p0, v1, v2}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/server/tare/Analyst$Report;->cumulativeLoss:J

    .line 496
    const-string/jumbo v2, "numLoss"

    invoke-interface {p0, v1, v2}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/tare/Analyst$Report;->numUnprofitableActions:I

    .line 497
    const-string/jumbo v2, "rewards"

    invoke-interface {p0, v1, v2}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/server/tare/Analyst$Report;->cumulativeRewards:J

    .line 498
    const-string/jumbo v2, "numRewards"

    invoke-interface {p0, v1, v2}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/tare/Analyst$Report;->numRewards:I

    .line 499
    nop

    .line 500
    const-string/jumbo v2, "posRegulations"

    invoke-interface {p0, v1, v2}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/server/tare/Analyst$Report;->cumulativePositiveRegulations:J

    .line 501
    nop

    .line 502
    const-string/jumbo v2, "numPosRegulations"

    invoke-interface {p0, v1, v2}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/tare/Analyst$Report;->numPositiveRegulations:I

    .line 503
    nop

    .line 504
    const-string/jumbo v2, "negRegulations"

    invoke-interface {p0, v1, v2}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/server/tare/Analyst$Report;->cumulativeNegativeRegulations:J

    .line 505
    nop

    .line 506
    const-string/jumbo v2, "numNegRegulations"

    invoke-interface {p0, v1, v2}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/server/tare/Analyst$Report;->numNegativeRegulations:I

    .line 508
    return-object v0
.end method

.method private readUserFromXmlLocked(Landroid/util/TypedXmlPullParser;Landroid/util/SparseArray;J)J
    .registers 16
    .param p1, "parser"    # Landroid/util/TypedXmlPullParser;
    .param p3, "endTimeCutoff"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/TypedXmlPullParser;",
            "Landroid/util/SparseArray<",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;J)J"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 435
    .local p2, "installedPackagesPerUser":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    const/4 v0, 0x0

    const-string/jumbo v1, "userId"

    invoke-interface {p1, v0, v1}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 436
    .local v0, "curUser":I
    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    .line 437
    .local v1, "installedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-nez v1, :cond_30

    .line 438
    sget-object v2, Lcom/android/server/tare/Scribe;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is saved to disk"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    const/16 v0, -0x2710

    .line 443
    :cond_30
    const-wide v2, 0x7fffffffffffffffL

    .line 445
    .local v2, "earliestEndTime":J
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v4

    .local v4, "eventType":I
    :goto_39
    const/4 v5, 0x1

    if-eq v4, v5, :cond_9b

    .line 447
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 448
    .local v5, "tagName":Ljava/lang/String;
    const/4 v6, 0x3

    if-ne v4, v6, :cond_4d

    .line 449
    const-string/jumbo v6, "user"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_96

    .line 451
    goto :goto_9b

    .line 455
    :cond_4d
    const-string v6, "ledger"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7e

    .line 456
    const/16 v6, -0x2710

    if-ne v0, v6, :cond_5a

    .line 457
    goto :goto_96

    .line 459
    :cond_5a
    nop

    .line 460
    invoke-static {p1, v1, p3, p4}, Lcom/android/server/tare/Scribe;->readLedgerFromXml(Landroid/util/TypedXmlPullParser;Landroid/util/ArraySet;J)Landroid/util/Pair;

    move-result-object v6

    .line 461
    .local v6, "ledgerData":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Lcom/android/server/tare/Ledger;>;"
    if-nez v6, :cond_62

    .line 462
    goto :goto_96

    .line 464
    :cond_62
    iget-object v7, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Lcom/android/server/tare/Ledger;

    .line 465
    .local v7, "ledger":Lcom/android/server/tare/Ledger;
    if-eqz v7, :cond_7d

    .line 466
    iget-object v8, p0, Lcom/android/server/tare/Scribe;->mLedgers:Landroid/util/SparseArrayMap;

    iget-object v9, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v8, v0, v9, v7}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 467
    invoke-virtual {v7}, Lcom/android/server/tare/Ledger;->getEarliestTransaction()Lcom/android/server/tare/Ledger$Transaction;

    move-result-object v8

    .line 468
    .local v8, "transaction":Lcom/android/server/tare/Ledger$Transaction;
    if-eqz v8, :cond_7d

    .line 469
    iget-wide v9, v8, Lcom/android/server/tare/Ledger$Transaction;->endTimeMs:J

    invoke-static {v2, v3, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 472
    .end local v6    # "ledgerData":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Lcom/android/server/tare/Ledger;>;"
    .end local v7    # "ledger":Lcom/android/server/tare/Ledger;
    .end local v8    # "transaction":Lcom/android/server/tare/Ledger$Transaction;
    :cond_7d
    goto :goto_96

    .line 473
    :cond_7e
    sget-object v6, Lcom/android/server/tare/Scribe;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown tag: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    .end local v5    # "tagName":Ljava/lang/String;
    :cond_96
    :goto_96
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v4

    goto :goto_39

    .line 477
    .end local v4    # "eventType":I
    :cond_9b
    :goto_9b
    return-wide v2
.end method

.method private scheduleCleanup(J)V
    .registers 9
    .param p1, "earliestEndTime"    # J

    .line 512
    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, p1, v0

    if-nez v0, :cond_a

    .line 513
    return-void

    .line 518
    :cond_a
    const-wide/32 v0, 0x36ee80

    const-wide/32 v2, 0x5265c00

    add-long/2addr v2, p1

    .line 519
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 518
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 520
    .local v0, "delayMs":J
    invoke-static {}, Lcom/android/server/tare/TareHandlerThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/tare/Scribe;->mCleanRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 521
    return-void
.end method

.method private static writeReport(Landroid/util/TypedXmlSerializer;Lcom/android/server/tare/Analyst$Report;)V
    .registers 7
    .param p0, "out"    # Landroid/util/TypedXmlSerializer;
    .param p1, "report"    # Lcom/android/server/tare/Analyst$Report;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 621
    const/4 v0, 0x0

    const-string/jumbo v1, "report"

    invoke-interface {p0, v0, v1}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 622
    iget v2, p1, Lcom/android/server/tare/Analyst$Report;->cumulativeBatteryDischarge:I

    const-string v3, "discharge"

    invoke-interface {p0, v0, v3, v2}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 623
    iget v2, p1, Lcom/android/server/tare/Analyst$Report;->currentBatteryLevel:I

    const-string v3, "batteryLevel"

    invoke-interface {p0, v0, v3, v2}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 624
    iget-wide v2, p1, Lcom/android/server/tare/Analyst$Report;->cumulativeProfit:J

    const-string/jumbo v4, "profit"

    invoke-interface {p0, v0, v4, v2, v3}, Landroid/util/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 625
    iget v2, p1, Lcom/android/server/tare/Analyst$Report;->numProfitableActions:I

    const-string/jumbo v3, "numProfits"

    invoke-interface {p0, v0, v3, v2}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 626
    iget-wide v2, p1, Lcom/android/server/tare/Analyst$Report;->cumulativeLoss:J

    const-string v4, "loss"

    invoke-interface {p0, v0, v4, v2, v3}, Landroid/util/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 627
    iget v2, p1, Lcom/android/server/tare/Analyst$Report;->numUnprofitableActions:I

    const-string/jumbo v3, "numLoss"

    invoke-interface {p0, v0, v3, v2}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 628
    iget-wide v2, p1, Lcom/android/server/tare/Analyst$Report;->cumulativeRewards:J

    const-string/jumbo v4, "rewards"

    invoke-interface {p0, v0, v4, v2, v3}, Landroid/util/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 629
    iget v2, p1, Lcom/android/server/tare/Analyst$Report;->numRewards:I

    const-string/jumbo v3, "numRewards"

    invoke-interface {p0, v0, v3, v2}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 630
    iget-wide v2, p1, Lcom/android/server/tare/Analyst$Report;->cumulativePositiveRegulations:J

    const-string/jumbo v4, "posRegulations"

    invoke-interface {p0, v0, v4, v2, v3}, Landroid/util/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 631
    iget v2, p1, Lcom/android/server/tare/Analyst$Report;->numPositiveRegulations:I

    const-string/jumbo v3, "numPosRegulations"

    invoke-interface {p0, v0, v3, v2}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 632
    iget-wide v2, p1, Lcom/android/server/tare/Analyst$Report;->cumulativeNegativeRegulations:J

    const-string/jumbo v4, "negRegulations"

    invoke-interface {p0, v0, v4, v2, v3}, Landroid/util/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 633
    iget v2, p1, Lcom/android/server/tare/Analyst$Report;->numNegativeRegulations:I

    const-string/jumbo v3, "numNegRegulations"

    invoke-interface {p0, v0, v3, v2}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 634
    invoke-interface {p0, v0, v1}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 635
    return-void
.end method

.method private writeState()V
    .registers 11

    .line 524
    iget-object v0, p0, Lcom/android/server/tare/Scribe;->mIrs:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {v0}, Lcom/android/server/tare/InternalResourceService;->getLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 525
    :try_start_7
    invoke-static {}, Lcom/android/server/tare/TareHandlerThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/tare/Scribe;->mWriteRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 528
    invoke-static {}, Lcom/android/server/tare/TareHandlerThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/tare/Scribe;->mCleanRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 529
    iget-object v1, p0, Lcom/android/server/tare/Scribe;->mIrs:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {v1}, Lcom/android/server/tare/InternalResourceService;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_23

    .line 532
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_7 .. :try_end_22} :catchall_ca

    return-void

    .line 534
    :cond_23
    const-wide v1, 0x7fffffffffffffffL

    .line 535
    .local v1, "earliestStoredEndTime":J
    :try_start_28
    iget-object v3, p0, Lcom/android/server/tare/Scribe;->mStateFile:Landroid/util/AtomicFile;

    invoke-virtual {v3}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2e} :catch_bd
    .catchall {:try_start_28 .. :try_end_2e} :catchall_ca

    .line 536
    .local v3, "fos":Ljava/io/FileOutputStream;
    :try_start_2e
    invoke-static {v3}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Landroid/util/TypedXmlSerializer;

    move-result-object v4

    .line 537
    .local v4, "out":Landroid/util/TypedXmlSerializer;
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v4, v7, v6}, Landroid/util/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 539
    const-string/jumbo v6, "tare"

    invoke-interface {v4, v7, v6}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 540
    const-string/jumbo v6, "version"

    const/4 v8, 0x0

    invoke-interface {v4, v7, v6, v8}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 542
    const-string v6, "irs-state"

    invoke-interface {v4, v7, v6}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 543
    const-string v6, "lastReclamationTime"

    iget-wide v8, p0, Lcom/android/server/tare/Scribe;->mLastReclamationTime:J

    invoke-interface {v4, v7, v6, v8, v9}, Landroid/util/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 544
    const-string v6, "consumptionLimit"

    iget-wide v8, p0, Lcom/android/server/tare/Scribe;->mSatiatedConsumptionLimit:J

    invoke-interface {v4, v7, v6, v8, v9}, Landroid/util/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 545
    const-string/jumbo v6, "remainingConsumableCakes"

    iget-wide v8, p0, Lcom/android/server/tare/Scribe;->mRemainingConsumableCakes:J

    invoke-interface {v4, v7, v6, v8, v9}, Landroid/util/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 547
    const-string v6, "irs-state"

    invoke-interface {v4, v7, v6}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 549
    iget-object v6, p0, Lcom/android/server/tare/Scribe;->mLedgers:Landroid/util/SparseArrayMap;

    invoke-virtual {v6}, Landroid/util/SparseArrayMap;->numMaps()I

    move-result v6

    sub-int/2addr v6, v5

    .local v6, "uIdx":I
    :goto_6f
    if-ltz v6, :cond_84

    .line 550
    iget-object v5, p0, Lcom/android/server/tare/Scribe;->mLedgers:Landroid/util/SparseArrayMap;

    invoke-virtual {v5, v6}, Landroid/util/SparseArrayMap;->keyAt(I)I

    move-result v5

    .line 551
    .local v5, "userId":I
    nop

    .line 552
    invoke-direct {p0, v4, v5}, Lcom/android/server/tare/Scribe;->writeUserLocked(Landroid/util/TypedXmlSerializer;I)J

    move-result-wide v8

    .line 551
    invoke-static {v1, v2, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    move-wide v1, v8

    .line 549
    .end local v5    # "userId":I
    add-int/lit8 v6, v6, -0x1

    goto :goto_6f

    .line 555
    .end local v6    # "uIdx":I
    :cond_84
    iget-object v5, p0, Lcom/android/server/tare/Scribe;->mAnalyst:Lcom/android/server/tare/Analyst;

    invoke-virtual {v5}, Lcom/android/server/tare/Analyst;->getReports()Ljava/util/List;

    move-result-object v5

    .line 556
    .local v5, "reports":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/tare/Analyst$Report;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    .local v8, "size":I
    :goto_8f
    if-ge v6, v8, :cond_9d

    .line 557
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/tare/Analyst$Report;

    invoke-static {v4, v9}, Lcom/android/server/tare/Scribe;->writeReport(Landroid/util/TypedXmlSerializer;Lcom/android/server/tare/Analyst$Report;)V

    .line 556
    add-int/lit8 v6, v6, 0x1

    goto :goto_8f

    .line 560
    .end local v6    # "i":I
    .end local v8    # "size":I
    :cond_9d
    const-string/jumbo v6, "tare"

    invoke-interface {v4, v7, v6}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 562
    invoke-interface {v4}, Landroid/util/TypedXmlSerializer;->endDocument()V

    .line 563
    iget-object v6, p0, Lcom/android/server/tare/Scribe;->mStateFile:Landroid/util/AtomicFile;

    invoke-virtual {v6, v3}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_ab
    .catchall {:try_start_2e .. :try_end_ab} :catchall_b1

    .line 564
    .end local v4    # "out":Landroid/util/TypedXmlSerializer;
    .end local v5    # "reports":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/tare/Analyst$Report;>;"
    if-eqz v3, :cond_b0

    :try_start_ad
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_b0
    .catch Ljava/io/IOException; {:try_start_ad .. :try_end_b0} :catch_bd
    .catchall {:try_start_ad .. :try_end_b0} :catchall_ca

    .line 566
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    :cond_b0
    goto :goto_c5

    .line 535
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :catchall_b1
    move-exception v4

    if-eqz v3, :cond_bc

    :try_start_b4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_b7
    .catchall {:try_start_b4 .. :try_end_b7} :catchall_b8

    goto :goto_bc

    :catchall_b8
    move-exception v5

    :try_start_b9
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "earliestStoredEndTime":J
    .end local p0    # "this":Lcom/android/server/tare/Scribe;
    :cond_bc
    :goto_bc
    throw v4
    :try_end_bd
    .catch Ljava/io/IOException; {:try_start_b9 .. :try_end_bd} :catch_bd
    .catchall {:try_start_b9 .. :try_end_bd} :catchall_ca

    .line 564
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "earliestStoredEndTime":J
    .restart local p0    # "this":Lcom/android/server/tare/Scribe;
    :catch_bd
    move-exception v3

    .line 565
    .local v3, "e":Ljava/io/IOException;
    :try_start_be
    sget-object v4, Lcom/android/server/tare/Scribe;->TAG:Ljava/lang/String;

    const-string v5, "Error writing state to disk"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 567
    .end local v3    # "e":Ljava/io/IOException;
    :goto_c5
    invoke-direct {p0, v1, v2}, Lcom/android/server/tare/Scribe;->scheduleCleanup(J)V

    .line 568
    .end local v1    # "earliestStoredEndTime":J
    monitor-exit v0

    .line 569
    return-void

    .line 568
    :catchall_ca
    move-exception v1

    monitor-exit v0
    :try_end_cc
    .catchall {:try_start_be .. :try_end_cc} :catchall_ca

    throw v1
.end method

.method private static writeTransaction(Landroid/util/TypedXmlSerializer;Lcom/android/server/tare/Ledger$Transaction;)V
    .registers 7
    .param p0, "out"    # Landroid/util/TypedXmlSerializer;
    .param p1, "transaction"    # Lcom/android/server/tare/Ledger$Transaction;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 607
    const/4 v0, 0x0

    const-string/jumbo v1, "transaction"

    invoke-interface {p0, v0, v1}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 608
    iget-wide v2, p1, Lcom/android/server/tare/Ledger$Transaction;->startTimeMs:J

    const-string/jumbo v4, "startTime"

    invoke-interface {p0, v0, v4, v2, v3}, Landroid/util/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 609
    iget-wide v2, p1, Lcom/android/server/tare/Ledger$Transaction;->endTimeMs:J

    const-string v4, "endTime"

    invoke-interface {p0, v0, v4, v2, v3}, Landroid/util/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 610
    iget v2, p1, Lcom/android/server/tare/Ledger$Transaction;->eventId:I

    const-string v3, "eventId"

    invoke-interface {p0, v0, v3, v2}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 611
    iget-object v2, p1, Lcom/android/server/tare/Ledger$Transaction;->tag:Ljava/lang/String;

    if-eqz v2, :cond_29

    .line 612
    iget-object v2, p1, Lcom/android/server/tare/Ledger$Transaction;->tag:Ljava/lang/String;

    const-string/jumbo v3, "tag"

    invoke-interface {p0, v0, v3, v2}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 614
    :cond_29
    iget-wide v2, p1, Lcom/android/server/tare/Ledger$Transaction;->delta:J

    const-string v4, "delta"

    invoke-interface {p0, v0, v4, v2, v3}, Landroid/util/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 615
    iget-wide v2, p1, Lcom/android/server/tare/Ledger$Transaction;->ctp:J

    const-string v4, "ctp"

    invoke-interface {p0, v0, v4, v2, v3}, Landroid/util/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 616
    invoke-interface {p0, v0, v1}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 617
    return-void
.end method

.method private writeUserLocked(Landroid/util/TypedXmlSerializer;I)J
    .registers 19
    .param p1, "out"    # Landroid/util/TypedXmlSerializer;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 574
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    iget-object v3, v0, Lcom/android/server/tare/Scribe;->mLedgers:Landroid/util/SparseArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/SparseArrayMap;->indexOfKey(I)I

    move-result v3

    .line 575
    .local v3, "uIdx":I
    const-wide v4, 0x7fffffffffffffffL

    .line 577
    .local v4, "earliestStoredEndTime":J
    const/4 v6, 0x0

    const-string/jumbo v7, "user"

    invoke-interface {v1, v6, v7}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 578
    const-string/jumbo v8, "userId"

    invoke-interface {v1, v6, v8, v2}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 579
    iget-object v8, v0, Lcom/android/server/tare/Scribe;->mLedgers:Landroid/util/SparseArrayMap;

    invoke-virtual {v8, v2}, Landroid/util/SparseArrayMap;->numElementsForKey(I)I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    .local v8, "pIdx":I
    :goto_26
    if-ltz v8, :cond_7f

    .line 580
    iget-object v9, v0, Lcom/android/server/tare/Scribe;->mLedgers:Landroid/util/SparseArrayMap;

    invoke-virtual {v9, v3, v8}, Landroid/util/SparseArrayMap;->keyAt(II)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 581
    .local v9, "pkgName":Ljava/lang/String;
    iget-object v10, v0, Lcom/android/server/tare/Scribe;->mLedgers:Landroid/util/SparseArrayMap;

    invoke-virtual {v10, v2, v9}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/tare/Ledger;

    .line 583
    .local v10, "ledger":Lcom/android/server/tare/Ledger;
    const-wide/32 v11, 0x5265c00

    invoke-virtual {v10, v11, v12}, Lcom/android/server/tare/Ledger;->removeOldTransactions(J)V

    .line 585
    const-string v11, "ledger"

    invoke-interface {v1, v6, v11}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 586
    const-string/jumbo v12, "pkgName"

    invoke-interface {v1, v6, v12, v9}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 587
    nop

    .line 588
    invoke-virtual {v10}, Lcom/android/server/tare/Ledger;->getCurrentBalance()J

    move-result-wide v12

    .line 587
    const-string v14, "currentBalance"

    invoke-interface {v1, v6, v14, v12, v13}, Landroid/util/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 590
    invoke-virtual {v10}, Lcom/android/server/tare/Ledger;->getTransactions()Ljava/util/List;

    move-result-object v12

    .line 591
    .local v12, "transactions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/tare/Ledger$Transaction;>;"
    const/4 v13, 0x0

    .local v13, "t":I
    :goto_58
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v14

    if-ge v13, v14, :cond_77

    .line 592
    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/tare/Ledger$Transaction;

    .line 593
    .local v14, "transaction":Lcom/android/server/tare/Ledger$Transaction;
    if-nez v13, :cond_6e

    .line 594
    move-object v15, v7

    iget-wide v6, v14, Lcom/android/server/tare/Ledger$Transaction;->endTimeMs:J

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    goto :goto_6f

    .line 593
    :cond_6e
    move-object v15, v7

    .line 596
    :goto_6f
    invoke-static {v1, v14}, Lcom/android/server/tare/Scribe;->writeTransaction(Landroid/util/TypedXmlSerializer;Lcom/android/server/tare/Ledger$Transaction;)V

    .line 591
    .end local v14    # "transaction":Lcom/android/server/tare/Ledger$Transaction;
    add-int/lit8 v13, v13, 0x1

    move-object v7, v15

    const/4 v6, 0x0

    goto :goto_58

    :cond_77
    move-object v15, v7

    .line 598
    .end local v13    # "t":I
    const/4 v6, 0x0

    invoke-interface {v1, v6, v11}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 579
    .end local v9    # "pkgName":Ljava/lang/String;
    .end local v10    # "ledger":Lcom/android/server/tare/Ledger;
    .end local v12    # "transactions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/tare/Ledger$Transaction;>;"
    add-int/lit8 v8, v8, -0x1

    goto :goto_26

    :cond_7f
    move-object v15, v7

    .line 600
    .end local v8    # "pIdx":I
    invoke-interface {v1, v6, v7}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 602
    return-wide v4
.end method


# virtual methods
.method adjustRemainingConsumableCakesLocked(J)V
    .registers 5
    .param p1, "delta"    # J

    .line 141
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_e

    .line 143
    iget-wide v0, p0, Lcom/android/server/tare/Scribe;->mRemainingConsumableCakes:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/server/tare/Scribe;->mRemainingConsumableCakes:J

    .line 144
    invoke-virtual {p0}, Lcom/android/server/tare/Scribe;->postWrite()V

    .line 146
    :cond_e
    return-void
.end method

.method discardLedgerLocked(ILjava/lang/String;)V
    .registers 4
    .param p1, "userId"    # I
    .param p2, "pkgName"    # Ljava/lang/String;

    .line 150
    iget-object v0, p0, Lcom/android/server/tare/Scribe;->mLedgers:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArrayMap;->delete(ILjava/lang/Object;)Ljava/lang/Object;

    .line 151
    invoke-virtual {p0}, Lcom/android/server/tare/Scribe;->postWrite()V

    .line 152
    return-void
.end method

.method dumpLocked(Landroid/util/IndentingPrintWriter;Z)V
    .registers 5
    .param p1, "pw"    # Landroid/util/IndentingPrintWriter;
    .param p2, "dumpAll"    # Z

    .line 639
    const-string v0, "Ledgers:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 640
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 641
    iget-object v0, p0, Lcom/android/server/tare/Scribe;->mLedgers:Landroid/util/SparseArrayMap;

    new-instance v1, Lcom/android/server/tare/Scribe$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/tare/Scribe$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/tare/Scribe;Landroid/util/IndentingPrintWriter;Z)V

    invoke-virtual {v0, v1}, Landroid/util/SparseArrayMap;->forEach(Landroid/util/SparseArrayMap$TriConsumer;)V

    .line 651
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 652
    return-void
.end method

.method getCakesInCirculationForLoggingLocked()J
    .registers 7

    .line 187
    const-wide/16 v0, 0x0

    .line 188
    .local v0, "sum":J
    iget-object v2, p0, Lcom/android/server/tare/Scribe;->mLedgers:Landroid/util/SparseArrayMap;

    invoke-virtual {v2}, Landroid/util/SparseArrayMap;->numMaps()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "uIdx":I
    :goto_a
    if-ltz v2, :cond_29

    .line 189
    iget-object v3, p0, Lcom/android/server/tare/Scribe;->mLedgers:Landroid/util/SparseArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/SparseArrayMap;->numElementsForKeyAt(I)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "pIdx":I
    :goto_14
    if-ltz v3, :cond_26

    .line 190
    iget-object v4, p0, Lcom/android/server/tare/Scribe;->mLedgers:Landroid/util/SparseArrayMap;

    invoke-virtual {v4, v2, v3}, Landroid/util/SparseArrayMap;->valueAt(II)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/tare/Ledger;

    invoke-virtual {v4}, Lcom/android/server/tare/Ledger;->getCurrentBalance()J

    move-result-wide v4

    add-long/2addr v0, v4

    .line 189
    add-int/lit8 v3, v3, -0x1

    goto :goto_14

    .line 188
    .end local v3    # "pIdx":I
    :cond_26
    add-int/lit8 v2, v2, -0x1

    goto :goto_a

    .line 193
    .end local v2    # "uIdx":I
    :cond_29
    return-wide v0
.end method

.method getLastReclamationTimeLocked()J
    .registers 3

    .line 161
    iget-wide v0, p0, Lcom/android/server/tare/Scribe;->mLastReclamationTime:J

    return-wide v0
.end method

.method getLedgerLocked(ILjava/lang/String;)Lcom/android/server/tare/Ledger;
    .registers 5
    .param p1, "userId"    # I
    .param p2, "pkgName"    # Ljava/lang/String;

    .line 167
    iget-object v0, p0, Lcom/android/server/tare/Scribe;->mLedgers:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/tare/Ledger;

    .line 168
    .local v0, "ledger":Lcom/android/server/tare/Ledger;
    if-nez v0, :cond_15

    .line 169
    new-instance v1, Lcom/android/server/tare/Ledger;

    invoke-direct {v1}, Lcom/android/server/tare/Ledger;-><init>()V

    move-object v0, v1

    .line 170
    iget-object v1, p0, Lcom/android/server/tare/Scribe;->mLedgers:Landroid/util/SparseArrayMap;

    invoke-virtual {v1, p1, p2, v0}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 172
    :cond_15
    return-object v0
.end method

.method getLedgersLocked()Landroid/util/SparseArrayMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/tare/Ledger;",
            ">;"
        }
    .end annotation

    .line 178
    iget-object v0, p0, Lcom/android/server/tare/Scribe;->mLedgers:Landroid/util/SparseArrayMap;

    return-object v0
.end method

.method getRemainingConsumableCakesLocked()J
    .registers 3

    .line 199
    iget-wide v0, p0, Lcom/android/server/tare/Scribe;->mRemainingConsumableCakes:J

    return-wide v0
.end method

.method getSatiatedConsumptionLimitLocked()J
    .registers 3

    .line 156
    iget-wide v0, p0, Lcom/android/server/tare/Scribe;->mSatiatedConsumptionLimit:J

    return-wide v0
.end method

.method synthetic lambda$dumpLocked$0$com-android-server-tare-Scribe(Landroid/util/IndentingPrintWriter;ZILjava/lang/String;Lcom/android/server/tare/Ledger;)V
    .registers 7
    .param p1, "pw"    # Landroid/util/IndentingPrintWriter;
    .param p2, "dumpAll"    # Z
    .param p3, "userId"    # I
    .param p4, "pkgName"    # Ljava/lang/String;
    .param p5, "ledger"    # Lcom/android/server/tare/Ledger;

    .line 642
    invoke-static {p3, p4}, Lcom/android/server/tare/TareUtils;->appToString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 643
    iget-object v0, p0, Lcom/android/server/tare/Scribe;->mIrs:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {v0, p3, p4}, Lcom/android/server/tare/InternalResourceService;->isSystem(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 644
    const-string v0, " (system)"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 646
    :cond_14
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 647
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 648
    if-eqz p2, :cond_20

    const v0, 0x7fffffff

    goto :goto_22

    :cond_20
    const/16 v0, 0x19

    :goto_22
    invoke-virtual {p5, p1, v0}, Lcom/android/server/tare/Ledger;->dump(Landroid/util/IndentingPrintWriter;I)V

    .line 649
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 650
    return-void
.end method

.method loadFromDiskLocked()V
    .registers 20

    .line 204
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/server/tare/Scribe;->mLedgers:Landroid/util/SparseArrayMap;

    invoke-virtual {v0}, Landroid/util/SparseArrayMap;->clear()V

    .line 205
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/tare/Scribe;->recordExists()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 206
    iget-object v0, v1, Lcom/android/server/tare/Scribe;->mIrs:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {v0}, Lcom/android/server/tare/InternalResourceService;->getInitialSatiatedConsumptionLimitLocked()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/tare/Scribe;->mSatiatedConsumptionLimit:J

    .line 207
    iget-object v0, v1, Lcom/android/server/tare/Scribe;->mIrs:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {v0}, Lcom/android/server/tare/InternalResourceService;->getConsumptionLimitLocked()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/tare/Scribe;->mRemainingConsumableCakes:J

    .line 208
    return-void

    .line 210
    :cond_1e
    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lcom/android/server/tare/Scribe;->mSatiatedConsumptionLimit:J

    .line 211
    iput-wide v2, v1, Lcom/android/server/tare/Scribe;->mRemainingConsumableCakes:J

    .line 213
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    move-object v2, v0

    .line 214
    .local v2, "installedPackagesPerUser":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    iget-object v0, v1, Lcom/android/server/tare/Scribe;->mIrs:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {v0}, Lcom/android/server/tare/InternalResourceService;->getInstalledPackages()Ljava/util/List;

    move-result-object v3

    .line 215
    .local v3, "installedPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_31
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_62

    .line 216
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageInfo;

    .line 217
    .local v4, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v5, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v5, :cond_5f

    .line 218
    iget-object v5, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    .line 219
    .local v5, "userId":I
    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/ArraySet;

    .line 220
    .local v6, "pkgsForUser":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    if-nez v6, :cond_5a

    .line 221
    new-instance v7, Landroid/util/ArraySet;

    invoke-direct {v7}, Landroid/util/ArraySet;-><init>()V

    move-object v6, v7

    .line 222
    invoke-virtual {v2, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 224
    :cond_5a
    iget-object v7, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 215
    .end local v4    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v5    # "userId":I
    .end local v6    # "pkgsForUser":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_5f
    add-int/lit8 v0, v0, 0x1

    goto :goto_31

    .line 228
    .end local v0    # "i":I
    :cond_62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v0

    .line 229
    .local v4, "reports":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/tare/Analyst$Report;>;"
    :try_start_68
    iget-object v0, v1, Lcom/android/server/tare/Scribe;->mStateFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v0
    :try_end_6e
    .catch Ljava/io/IOException; {:try_start_68 .. :try_end_6e} :catch_1de
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_68 .. :try_end_6e} :catch_1de

    move-object v5, v0

    .line 230
    .local v5, "fis":Ljava/io/FileInputStream;
    :try_start_6f
    invoke-static {v5}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Landroid/util/TypedXmlPullParser;

    move-result-object v0

    .line 232
    .local v0, "parser":Landroid/util/TypedXmlPullParser;
    invoke-interface {v0}, Landroid/util/TypedXmlPullParser;->getEventType()I

    move-result v6
    :try_end_77
    .catchall {:try_start_6f .. :try_end_77} :catchall_1ca

    .line 233
    .local v6, "eventType":I
    :goto_77
    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eq v6, v7, :cond_83

    if-eq v6, v8, :cond_83

    .line 235
    :try_start_7d
    invoke-interface {v0}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v7

    move v6, v7

    goto :goto_77

    .line 237
    :cond_83
    if-ne v6, v8, :cond_a6

    .line 238
    sget-boolean v7, Lcom/android/server/tare/Scribe;->DEBUG:Z

    if-eqz v7, :cond_90

    .line 239
    sget-object v7, Lcom/android/server/tare/Scribe;->TAG:Ljava/lang/String;

    const-string v8, "No persisted state."

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_90
    .catchall {:try_start_7d .. :try_end_90} :catchall_9e

    .line 292
    :cond_90
    if-eqz v5, :cond_9d

    :try_start_92
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_95
    .catch Ljava/io/IOException; {:try_start_92 .. :try_end_95} :catch_96
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_92 .. :try_end_95} :catch_96

    goto :goto_9d

    .end local v0    # "parser":Landroid/util/TypedXmlPullParser;
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .end local v6    # "eventType":I
    :catch_96
    move-exception v0

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    goto/16 :goto_1e3

    .line 241
    .restart local v0    # "parser":Landroid/util/TypedXmlPullParser;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "eventType":I
    :cond_9d
    :goto_9d
    return-void

    .line 229
    .end local v0    # "parser":Landroid/util/TypedXmlPullParser;
    .end local v6    # "eventType":I
    :catchall_9e
    move-exception v0

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move-object v2, v0

    goto/16 :goto_1d0

    .line 244
    .restart local v0    # "parser":Landroid/util/TypedXmlPullParser;
    .restart local v6    # "eventType":I
    :cond_a6
    :try_start_a6
    invoke-interface {v0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    .line 245
    .local v9, "tagName":Ljava/lang/String;
    const-string/jumbo v10, "tare"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10
    :try_end_b1
    .catchall {:try_start_a6 .. :try_end_b1} :catchall_1ca

    const/4 v11, 0x0

    if-eqz v10, :cond_e3

    .line 246
    :try_start_b4
    const-string/jumbo v10, "version"

    invoke-interface {v0, v11, v10}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    .line 247
    .local v10, "version":I
    if-ltz v10, :cond_bf

    if-lez v10, :cond_e3

    .line 248
    :cond_bf
    sget-object v7, Lcom/android/server/tare/Scribe;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Invalid version number ("

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, "), aborting file read"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_dd
    .catchall {:try_start_b4 .. :try_end_dd} :catchall_9e

    .line 292
    if-eqz v5, :cond_e2

    :try_start_df
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_e2
    .catch Ljava/io/IOException; {:try_start_df .. :try_end_e2} :catch_96
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_df .. :try_end_e2} :catch_96

    .line 249
    :cond_e2
    return-void

    .line 253
    .end local v10    # "version":I
    :cond_e3
    :try_start_e3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    const-wide/32 v14, 0x5265c00

    sub-long/2addr v12, v14

    .line 254
    .local v12, "endTimeCutoff":J
    const-wide v14, 0x7fffffffffffffffL

    .line 255
    .local v14, "earliestEndTime":J
    invoke-interface {v0}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v10

    move v6, v10

    :goto_f5
    if-eq v6, v8, :cond_1b5

    .line 257
    if-eq v6, v7, :cond_ff

    .line 258
    move-object/from16 v17, v2

    move-object/from16 v18, v3

    goto/16 :goto_1a8

    .line 260
    :cond_ff
    invoke-interface {v0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    move-object v9, v10

    .line 261
    if-nez v9, :cond_10d

    .line 262
    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move-object v10, v9

    goto/16 :goto_1a7

    .line 265
    :cond_10d
    const/4 v10, -0x1

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v16
    :try_end_112
    .catchall {:try_start_e3 .. :try_end_112} :catchall_1ca

    sparse-switch v16, :sswitch_data_1ec

    :cond_115
    goto :goto_135

    :sswitch_116
    :try_start_116
    const-string v7, "irs-state"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_115

    const/4 v10, 0x0

    goto :goto_135

    :sswitch_120
    const-string/jumbo v7, "user"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_115

    move v10, v8

    goto :goto_135

    :sswitch_12b
    const-string/jumbo v7, "report"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_132
    .catchall {:try_start_116 .. :try_end_132} :catchall_9e

    if-eqz v7, :cond_115

    const/4 v10, 0x2

    :goto_135
    packed-switch v10, :pswitch_data_1fa

    .line 286
    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move-object v10, v9

    .end local v2    # "installedPackagesPerUser":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .end local v3    # "installedPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v9    # "tagName":Ljava/lang/String;
    .local v10, "tagName":Ljava/lang/String;
    .local v17, "installedPackagesPerUser":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .local v18, "installedPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :try_start_13d
    sget-object v2, Lcom/android/server/tare/Scribe;->TAG:Ljava/lang/String;
    :try_end_13f
    .catchall {:try_start_13d .. :try_end_13f} :catchall_1c7

    goto :goto_191

    .line 283
    .end local v10    # "tagName":Ljava/lang/String;
    .end local v17    # "installedPackagesPerUser":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .end local v18    # "installedPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .restart local v2    # "installedPackagesPerUser":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .restart local v3    # "installedPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .restart local v9    # "tagName":Ljava/lang/String;
    :pswitch_140
    :try_start_140
    invoke-static {v0}, Lcom/android/server/tare/Scribe;->readReportFromXml(Landroid/util/TypedXmlPullParser;)Lcom/android/server/tare/Analyst$Report;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 284
    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move-object v10, v9

    goto :goto_1a7

    .line 278
    :pswitch_14d
    nop

    .line 279
    move-object v10, v9

    .end local v9    # "tagName":Ljava/lang/String;
    .restart local v10    # "tagName":Ljava/lang/String;
    invoke-direct {v1, v0, v2, v12, v13}, Lcom/android/server/tare/Scribe;->readUserFromXmlLocked(Landroid/util/TypedXmlPullParser;Landroid/util/SparseArray;J)J

    move-result-wide v8

    .line 278
    invoke-static {v14, v15, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8
    :try_end_157
    .catchall {:try_start_140 .. :try_end_157} :catchall_9e

    .line 281
    .end local v14    # "earliestEndTime":J
    .local v8, "earliestEndTime":J
    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move-wide v14, v8

    move-object v9, v10

    goto :goto_1a8

    .line 267
    .end local v8    # "earliestEndTime":J
    .end local v10    # "tagName":Ljava/lang/String;
    .restart local v9    # "tagName":Ljava/lang/String;
    .restart local v14    # "earliestEndTime":J
    :pswitch_15e
    move-object v10, v9

    .end local v9    # "tagName":Ljava/lang/String;
    .restart local v10    # "tagName":Ljava/lang/String;
    :try_start_15f
    const-string v8, "lastReclamationTime"

    .line 268
    invoke-interface {v0, v11, v8}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v1, Lcom/android/server/tare/Scribe;->mLastReclamationTime:J

    .line 269
    const-string v8, "consumptionLimit"

    iget-object v9, v1, Lcom/android/server/tare/Scribe;->mIrs:Lcom/android/server/tare/InternalResourceService;

    .line 271
    move-object/from16 v17, v8

    invoke-virtual {v9}, Lcom/android/server/tare/InternalResourceService;->getInitialSatiatedConsumptionLimitLocked()J

    move-result-wide v7

    .line 270
    move-object/from16 v9, v17

    invoke-interface {v0, v11, v9, v7, v8}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v7

    iput-wide v7, v1, Lcom/android/server/tare/Scribe;->mSatiatedConsumptionLimit:J

    .line 272
    iget-object v7, v1, Lcom/android/server/tare/Scribe;->mIrs:Lcom/android/server/tare/InternalResourceService;

    invoke-virtual {v7}, Lcom/android/server/tare/InternalResourceService;->getConsumptionLimitLocked()J

    move-result-wide v7

    .line 273
    .local v7, "consumptionLimit":J
    const-string/jumbo v9, "remainingConsumableCakes"
    :try_end_182
    .catchall {:try_start_15f .. :try_end_182} :catchall_1ca

    .line 274
    move-object/from16 v17, v2

    move-object/from16 v18, v3

    .end local v2    # "installedPackagesPerUser":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .end local v3    # "installedPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .restart local v17    # "installedPackagesPerUser":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .restart local v18    # "installedPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :try_start_186
    invoke-interface {v0, v11, v9, v7, v8}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v2

    .line 273
    invoke-static {v7, v8, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/tare/Scribe;->mRemainingConsumableCakes:J

    .line 276
    goto :goto_1a7

    .line 286
    .end local v7    # "consumptionLimit":J
    :goto_191
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected tag: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    .end local v10    # "tagName":Ljava/lang/String;
    .end local v17    # "installedPackagesPerUser":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .end local v18    # "installedPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .restart local v2    # "installedPackagesPerUser":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .restart local v3    # "installedPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .restart local v9    # "tagName":Ljava/lang/String;
    :goto_1a7
    move-object v9, v10

    .end local v2    # "installedPackagesPerUser":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .end local v3    # "installedPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .restart local v17    # "installedPackagesPerUser":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .restart local v18    # "installedPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :goto_1a8
    invoke-interface {v0}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v2

    move v6, v2

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    const/4 v7, 0x2

    const/4 v8, 0x1

    goto/16 :goto_f5

    .line 290
    .end local v17    # "installedPackagesPerUser":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .end local v18    # "installedPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .restart local v2    # "installedPackagesPerUser":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .restart local v3    # "installedPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :cond_1b5
    move-object/from16 v17, v2

    move-object/from16 v18, v3

    .end local v2    # "installedPackagesPerUser":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .end local v3    # "installedPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .restart local v17    # "installedPackagesPerUser":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .restart local v18    # "installedPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    iget-object v2, v1, Lcom/android/server/tare/Scribe;->mAnalyst:Lcom/android/server/tare/Analyst;

    invoke-virtual {v2, v4}, Lcom/android/server/tare/Analyst;->loadReports(Ljava/util/List;)V

    .line 291
    invoke-direct {v1, v14, v15}, Lcom/android/server/tare/Scribe;->scheduleCleanup(J)V
    :try_end_1c1
    .catchall {:try_start_186 .. :try_end_1c1} :catchall_1c7

    .line 292
    .end local v0    # "parser":Landroid/util/TypedXmlPullParser;
    .end local v6    # "eventType":I
    .end local v9    # "tagName":Ljava/lang/String;
    .end local v12    # "endTimeCutoff":J
    .end local v14    # "earliestEndTime":J
    if-eqz v5, :cond_1c6

    :try_start_1c3
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_1c6
    .catch Ljava/io/IOException; {:try_start_1c3 .. :try_end_1c6} :catch_1dc
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1c3 .. :try_end_1c6} :catch_1dc

    .line 294
    .end local v5    # "fis":Ljava/io/FileInputStream;
    :cond_1c6
    goto :goto_1ea

    .line 229
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    :catchall_1c7
    move-exception v0

    move-object v2, v0

    goto :goto_1d0

    .end local v17    # "installedPackagesPerUser":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .end local v18    # "installedPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .restart local v2    # "installedPackagesPerUser":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .restart local v3    # "installedPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :catchall_1ca
    move-exception v0

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move-object v2, v0

    .end local v2    # "installedPackagesPerUser":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .end local v3    # "installedPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .restart local v17    # "installedPackagesPerUser":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .restart local v18    # "installedPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :goto_1d0
    if-eqz v5, :cond_1db

    :try_start_1d2
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_1d5
    .catchall {:try_start_1d2 .. :try_end_1d5} :catchall_1d6

    goto :goto_1db

    :catchall_1d6
    move-exception v0

    move-object v3, v0

    :try_start_1d8
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v4    # "reports":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/tare/Analyst$Report;>;"
    .end local v17    # "installedPackagesPerUser":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .end local v18    # "installedPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local p0    # "this":Lcom/android/server/tare/Scribe;
    :cond_1db
    :goto_1db
    throw v2
    :try_end_1dc
    .catch Ljava/io/IOException; {:try_start_1d8 .. :try_end_1dc} :catch_1dc
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1d8 .. :try_end_1dc} :catch_1dc

    .line 292
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "reports":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/tare/Analyst$Report;>;"
    .restart local v17    # "installedPackagesPerUser":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .restart local v18    # "installedPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .restart local p0    # "this":Lcom/android/server/tare/Scribe;
    :catch_1dc
    move-exception v0

    goto :goto_1e3

    .end local v17    # "installedPackagesPerUser":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .end local v18    # "installedPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .restart local v2    # "installedPackagesPerUser":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .restart local v3    # "installedPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :catch_1de
    move-exception v0

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    .line 293
    .end local v2    # "installedPackagesPerUser":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .end local v3    # "installedPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .local v0, "e":Ljava/lang/Exception;
    .restart local v17    # "installedPackagesPerUser":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/ArraySet<Ljava/lang/String;>;>;"
    .restart local v18    # "installedPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :goto_1e3
    sget-object v2, Lcom/android/server/tare/Scribe;->TAG:Ljava/lang/String;

    const-string v3, "Error reading state from disk"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 295
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1ea
    return-void

    nop

    :sswitch_data_1ec
    .sparse-switch
        -0x37b3aacc -> :sswitch_12b
        0x36ebcb -> :sswitch_120
        0x2918f96e -> :sswitch_116
    .end sparse-switch

    :pswitch_data_1fa
    .packed-switch 0x0
        :pswitch_15e
        :pswitch_14d
        :pswitch_140
    .end packed-switch
.end method

.method postWrite()V
    .registers 5

    .line 299
    invoke-static {}, Lcom/android/server/tare/TareHandlerThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/tare/Scribe;->mWriteRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 300
    return-void
.end method

.method recordExists()Z
    .registers 2

    .line 303
    iget-object v0, p0, Lcom/android/server/tare/Scribe;->mStateFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->exists()Z

    move-result v0

    return v0
.end method

.method setConsumptionLimitLocked(J)V
    .registers 8
    .param p1, "limit"    # J

    .line 308
    iget-wide v0, p0, Lcom/android/server/tare/Scribe;->mRemainingConsumableCakes:J

    cmp-long v2, v0, p1

    if-lez v2, :cond_9

    .line 309
    iput-wide p1, p0, Lcom/android/server/tare/Scribe;->mRemainingConsumableCakes:J

    goto :goto_14

    .line 310
    :cond_9
    iget-wide v2, p0, Lcom/android/server/tare/Scribe;->mSatiatedConsumptionLimit:J

    cmp-long v4, p1, v2

    if-lez v4, :cond_14

    .line 311
    sub-long/2addr v2, v0

    .line 312
    .local v2, "diff":J
    sub-long v0, p1, v2

    iput-wide v0, p0, Lcom/android/server/tare/Scribe;->mRemainingConsumableCakes:J

    .line 314
    .end local v2    # "diff":J
    :cond_14
    :goto_14
    iput-wide p1, p0, Lcom/android/server/tare/Scribe;->mSatiatedConsumptionLimit:J

    .line 315
    invoke-virtual {p0}, Lcom/android/server/tare/Scribe;->postWrite()V

    .line 316
    return-void
.end method

.method setLastReclamationTimeLocked(J)V
    .registers 3
    .param p1, "time"    # J

    .line 320
    iput-wide p1, p0, Lcom/android/server/tare/Scribe;->mLastReclamationTime:J

    .line 321
    invoke-virtual {p0}, Lcom/android/server/tare/Scribe;->postWrite()V

    .line 322
    return-void
.end method

.method tearDownLocked()V
    .registers 3

    .line 326
    invoke-static {}, Lcom/android/server/tare/TareHandlerThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/tare/Scribe;->mCleanRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 327
    invoke-static {}, Lcom/android/server/tare/TareHandlerThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/tare/Scribe;->mWriteRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 328
    iget-object v0, p0, Lcom/android/server/tare/Scribe;->mLedgers:Landroid/util/SparseArrayMap;

    invoke-virtual {v0}, Landroid/util/SparseArrayMap;->clear()V

    .line 329
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/tare/Scribe;->mRemainingConsumableCakes:J

    .line 330
    iput-wide v0, p0, Lcom/android/server/tare/Scribe;->mSatiatedConsumptionLimit:J

    .line 331
    iput-wide v0, p0, Lcom/android/server/tare/Scribe;->mLastReclamationTime:J

    .line 332
    return-void
.end method

.method writeImmediatelyForTesting()V
    .registers 2

    .line 336
    iget-object v0, p0, Lcom/android/server/tare/Scribe;->mWriteRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 337
    return-void
.end method
