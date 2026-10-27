.class public Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;
.super Ljava/lang/Object;
.source "PowerStatsCollector.java"

# interfaces
.implements Lcom/android/server/power/stats/PowerStatsUidResolver$Listener;


# instance fields
.field public final mConsumedEnergyRetriever:Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetriever;

.field public mEnergyConsumerIds:[I

.field public final mEnergyConsumerType:I

.field public mFirstCollection:Z

.field public mIsInitialized:Z

.field public mLastConsumedEnergyUws:[J

.field public final mLastConsumerEnergyPerUid:Landroid/util/SparseLongArray;

.field public mLastVoltageMv:I

.field public final mPerUidAttributionSupported:Z

.field public final synthetic this$0:Lcom/android/server/power/stats/PowerStatsCollector;


# direct methods
.method public static synthetic $r8$lambda$fE2HIS54stOPSgrdk0vdo4mgHPs(Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->lambda$onAfterIsolatedUidRemoved$0(I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/power/stats/PowerStatsCollector;Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetriever;I)V
    .registers 4

    .line 416
    iput-object p1, p0, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->this$0:Lcom/android/server/power/stats/PowerStatsCollector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    .line 409
    iput-boolean p1, p0, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->mFirstCollection:Z

    .line 417
    iput-object p2, p0, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->mConsumedEnergyRetriever:Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetriever;

    .line 418
    iput p3, p0, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->mEnergyConsumerType:I

    const/4 p1, 0x0

    .line 419
    iput-boolean p1, p0, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->mPerUidAttributionSupported:Z

    const/4 p1, 0x0

    .line 420
    iput-object p1, p0, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->mLastConsumerEnergyPerUid:Landroid/util/SparseLongArray;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/power/stats/PowerStatsCollector;Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetriever;IZ)V
    .registers 5

    .line 424
    iput-object p1, p0, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->this$0:Lcom/android/server/power/stats/PowerStatsCollector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    .line 409
    iput-boolean p1, p0, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->mFirstCollection:Z

    .line 425
    iput-object p2, p0, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->mConsumedEnergyRetriever:Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetriever;

    const/4 p1, 0x0

    .line 426
    iput p1, p0, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->mEnergyConsumerType:I

    .line 427
    filled-new-array {p3}, [I

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->mEnergyConsumerIds:[I

    .line 428
    iput-boolean p4, p0, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->mPerUidAttributionSupported:Z

    if-eqz p4, :cond_1d

    .line 429
    new-instance p1, Landroid/util/SparseLongArray;

    invoke-direct {p1}, Landroid/util/SparseLongArray;-><init>()V

    goto :goto_1e

    :cond_1d
    const/4 p1, 0x0

    :goto_1e
    iput-object p1, p0, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->mLastConsumerEnergyPerUid:Landroid/util/SparseLongArray;

    return-void
.end method

.method private synthetic lambda$onAfterIsolatedUidRemoved$0(I)V
    .registers 2

    .line 535
    iget-object p0, p0, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->mLastConsumerEnergyPerUid:Landroid/util/SparseLongArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseLongArray;->delete(I)V

    return-void
.end method


# virtual methods
.method public collectConsumedEnergy(Lcom/android/internal/os/PowerStats;Lcom/android/server/power/stats/format/PowerStatsLayout;)Z
    .registers 12

    .line 451
    invoke-virtual {p0}, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->ensureInitialized()V

    .line 453
    iget-object v0, p0, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->mEnergyConsumerIds:[I

    array-length v0, v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    .line 457
    :cond_a
    iget-object v0, p0, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->mConsumedEnergyRetriever:Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetriever;

    invoke-interface {v0}, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetriever;->getVoltageMv()I

    move-result v0

    .line 458
    iget v2, p0, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->mLastVoltageMv:I

    if-eqz v2, :cond_19

    add-int/2addr v2, v0

    div-int/lit8 v2, v2, 0x2

    move v8, v2

    goto :goto_1a

    :cond_19
    move v8, v0

    :goto_1a
    if-gtz v8, :cond_38

    .line 460
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Unexpected battery voltage ("

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " mV) when querying energy consumers"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PowerStatsCollector"

    invoke-static {p1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 465
    :cond_38
    iput v0, p0, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->mLastVoltageMv:I

    .line 467
    iget-object v0, p0, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->mConsumedEnergyRetriever:Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetriever;

    iget-object v2, p0, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->mEnergyConsumerIds:[I

    .line 468
    invoke-interface {v0, v2}, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetriever;->getConsumedEnergy([I)[Landroid/hardware/power/stats/EnergyConsumerResult;

    move-result-object v6

    if-nez v6, :cond_45

    return v1

    :cond_45
    move v7, v1

    .line 473
    :goto_46
    iget-object v0, p0, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->mEnergyConsumerIds:[I

    array-length v0, v0

    if-ge v7, v0, :cond_54

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    .line 474
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->populatePowerStats(Lcom/android/internal/os/PowerStats;Lcom/android/server/power/stats/format/PowerStatsLayout;[Landroid/hardware/power/stats/EnergyConsumerResult;II)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_46

    :cond_54
    move-object v3, p0

    .line 476
    iput-boolean v1, v3, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->mFirstCollection:Z

    const/4 p0, 0x1

    return p0
.end method

.method public final ensureInitialized()V
    .registers 4

    .line 433
    iget-boolean v0, p0, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->mIsInitialized:Z

    if-nez v0, :cond_28

    .line 434
    iget-object v0, p0, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->mEnergyConsumerIds:[I

    if-nez v0, :cond_12

    .line 435
    iget-object v0, p0, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->mConsumedEnergyRetriever:Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetriever;

    iget v1, p0, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->mEnergyConsumerType:I

    invoke-interface {v0, v1}, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetriever;->getEnergyConsumerIds(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->mEnergyConsumerIds:[I

    .line 438
    :cond_12
    iget-object v0, p0, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->mEnergyConsumerIds:[I

    array-length v0, v0

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->mLastConsumedEnergyUws:[J

    const-wide/16 v1, -0x1

    .line 439
    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->fill([JJ)V

    .line 440
    iget-object v0, p0, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->this$0:Lcom/android/server/power/stats/PowerStatsCollector;

    iget-object v0, v0, Lcom/android/server/power/stats/PowerStatsCollector;->mUidResolver:Lcom/android/server/power/stats/PowerStatsUidResolver;

    invoke-virtual {v0, p0}, Lcom/android/server/power/stats/PowerStatsUidResolver;->addListener(Lcom/android/server/power/stats/PowerStatsUidResolver$Listener;)V

    const/4 v0, 0x1

    .line 441
    iput-boolean v0, p0, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->mIsInitialized:Z

    :cond_28
    return-void
.end method

.method public getEnergyConsumerCount()I
    .registers 1

    .line 446
    invoke-virtual {p0}, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->ensureInitialized()V

    .line 447
    iget-object p0, p0, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->mEnergyConsumerIds:[I

    array-length p0, p0

    return p0
.end method

.method public onAfterIsolatedUidRemoved(II)V
    .registers 4

    .line 534
    iget-object p2, p0, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->mLastConsumerEnergyPerUid:Landroid/util/SparseLongArray;

    if-eqz p2, :cond_12

    .line 535
    iget-object p2, p0, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->this$0:Lcom/android/server/power/stats/PowerStatsCollector;

    invoke-static {p2}, Lcom/android/server/power/stats/PowerStatsCollector;->-$$Nest$fgetmHandler(Lcom/android/server/power/stats/PowerStatsCollector;)Landroid/os/Handler;

    move-result-object p2

    new-instance v0, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;I)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_12
    return-void
.end method

.method public onBeforeIsolatedUidRemoved(II)V
    .registers 3

    .line 0
    return-void
.end method

.method public onIsolatedUidAdded(II)V
    .registers 3

    .line 0
    return-void
.end method

.method public final populatePowerStats(Lcom/android/internal/os/PowerStats;Lcom/android/server/power/stats/format/PowerStatsLayout;[Landroid/hardware/power/stats/EnergyConsumerResult;II)V
    .registers 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p4

    move/from16 v4, p5

    .line 483
    aget-object v5, p3, v3

    iget-wide v5, v5, Landroid/hardware/power/stats/EnergyConsumerResult;->energyUWs:J

    .line 484
    iget-object v7, v0, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->mLastConsumedEnergyUws:[J

    aget-wide v8, v7, v3

    const-wide/16 v10, -0x1

    cmp-long v12, v8, v10

    const-wide/16 v13, 0x0

    if-eqz v12, :cond_1d

    sub-long v8, v5, v8

    goto :goto_1e

    :cond_1d
    move-wide v8, v13

    .line 486
    :goto_1e
    aput-wide v5, v7, v3

    cmp-long v5, v8, v13

    if-gez v5, :cond_25

    move-wide v8, v13

    :cond_25
    cmp-long v5, v8, v13

    if-nez v5, :cond_2e

    .line 492
    iget-boolean v5, v0, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->mFirstCollection:Z

    if-nez v5, :cond_2e

    goto :goto_95

    .line 496
    :cond_2e
    iget-object v5, v1, Lcom/android/internal/os/PowerStats;->stats:[J

    .line 497
    invoke-static {v8, v9, v4}, Lcom/android/server/power/stats/PowerStatsCollector;->uJtoUc(JI)J

    move-result-wide v6

    .line 496
    invoke-virtual {v2, v5, v3, v6, v7}, Lcom/android/server/power/stats/format/PowerStatsLayout;->setConsumedEnergy([JIJ)V

    .line 499
    iget-boolean v5, v0, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->mPerUidAttributionSupported:Z

    if-nez v5, :cond_3c

    goto :goto_95

    .line 503
    :cond_3c
    aget-object v5, p3, v3

    iget-object v5, v5, Landroid/hardware/power/stats/EnergyConsumerResult;->attribution:[Landroid/hardware/power/stats/EnergyConsumerAttribution;

    if-nez v5, :cond_43

    goto :goto_95

    .line 508
    :cond_43
    array-length v6, v5

    const/4 v7, 0x0

    :goto_45
    if-ge v7, v6, :cond_95

    aget-object v8, v5, v7

    .line 509
    iget-object v9, v0, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->this$0:Lcom/android/server/power/stats/PowerStatsCollector;

    iget-object v9, v9, Lcom/android/server/power/stats/PowerStatsCollector;->mUidResolver:Lcom/android/server/power/stats/PowerStatsUidResolver;

    iget v12, v8, Landroid/hardware/power/stats/EnergyConsumerAttribution;->uid:I

    invoke-virtual {v9, v12}, Lcom/android/server/power/stats/PowerStatsUidResolver;->mapUid(I)I

    move-result v9

    .line 510
    iget-object v12, v0, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->mLastConsumerEnergyPerUid:Landroid/util/SparseLongArray;

    invoke-virtual {v12, v9, v10, v11}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide v15

    .line 511
    iget-object v12, v0, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyHelper;->mLastConsumerEnergyPerUid:Landroid/util/SparseLongArray;

    move-wide/from16 v17, v10

    iget-wide v10, v8, Landroid/hardware/power/stats/EnergyConsumerAttribution;->energyUWs:J

    invoke-virtual {v12, v9, v10, v11}, Landroid/util/SparseLongArray;->put(IJ)V

    cmp-long v10, v15, v17

    if-nez v10, :cond_67

    goto :goto_90

    .line 515
    :cond_67
    iget-wide v10, v8, Landroid/hardware/power/stats/EnergyConsumerAttribution;->energyUWs:J

    sub-long/2addr v10, v15

    cmp-long v8, v10, v13

    if-gtz v8, :cond_6f

    goto :goto_90

    .line 520
    :cond_6f
    iget-object v8, v1, Lcom/android/internal/os/PowerStats;->uidStats:Landroid/util/SparseArray;

    invoke-virtual {v8, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [J

    if-nez v8, :cond_84

    .line 522
    invoke-virtual {v2}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getUidStatsArrayLength()I

    move-result v8

    new-array v8, v8, [J

    .line 523
    iget-object v12, v1, Lcom/android/internal/os/PowerStats;->uidStats:Landroid/util/SparseArray;

    invoke-virtual {v12, v9, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 527
    :cond_84
    invoke-virtual {v2, v8, v3}, Lcom/android/server/power/stats/format/PowerStatsLayout;->getUidConsumedEnergy([JI)J

    move-result-wide v15

    .line 528
    invoke-static {v10, v11, v4}, Lcom/android/server/power/stats/PowerStatsCollector;->uJtoUc(JI)J

    move-result-wide v9

    add-long/2addr v9, v15

    .line 526
    invoke-virtual {v2, v8, v3, v9, v10}, Lcom/android/server/power/stats/format/PowerStatsLayout;->setUidConsumedEnergy([JIJ)V

    :goto_90
    add-int/lit8 v7, v7, 0x1

    move-wide/from16 v10, v17

    goto :goto_45

    :cond_95
    :goto_95
    return-void
.end method
