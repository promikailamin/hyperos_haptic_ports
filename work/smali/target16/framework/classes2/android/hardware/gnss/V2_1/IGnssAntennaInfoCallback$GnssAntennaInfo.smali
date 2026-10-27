.class public final Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$GnssAntennaInfo;
.super Ljava/lang/Object;
.source "IGnssAntennaInfoCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GnssAntennaInfo"
.end annotation


# instance fields
.field public blacklist carrierFrequencyMHz:D

.field public blacklist phaseCenterOffsetCoordinateMillimeters:Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Coord;

.field public blacklist phaseCenterVariationCorrectionMillimeters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Row;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist phaseCenterVariationCorrectionUncertaintyMillimeters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Row;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist signalGainCorrectionDbi:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Row;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist signalGainCorrectionUncertaintyDbi:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Row;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 357
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 361
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$GnssAntennaInfo;->carrierFrequencyMHz:D

    .line 367
    new-instance v0, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Coord;

    invoke-direct {v0}, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Coord;-><init>()V

    iput-object v0, p0, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$GnssAntennaInfo;->phaseCenterOffsetCoordinateMillimeters:Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Coord;

    .line 390
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$GnssAntennaInfo;->phaseCenterVariationCorrectionMillimeters:Ljava/util/ArrayList;

    .line 397
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$GnssAntennaInfo;->phaseCenterVariationCorrectionUncertaintyMillimeters:Ljava/util/ArrayList;

    .line 422
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$GnssAntennaInfo;->signalGainCorrectionDbi:Ljava/util/ArrayList;

    .line 429
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$GnssAntennaInfo;->signalGainCorrectionUncertaintyDbi:Ljava/util/ArrayList;

    return-void
.end method

.method public static final blacklist readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/HwParcel;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$GnssAntennaInfo;",
            ">;"
        }
    .end annotation

    .line 501
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 502
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 505
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 506
    mul-int/lit8 v3, v2, 0x78

    int-to-long v5, v3

    .line 507
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 506
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object p0

    .line 510
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 511
    const/4 v1, 0x0

    :goto_24
    if-ge v1, v2, :cond_37

    .line 512
    new-instance v3, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$GnssAntennaInfo;

    invoke-direct {v3}, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$GnssAntennaInfo;-><init>()V

    .line 513
    mul-int/lit8 v5, v1, 0x78

    int-to-long v5, v5

    invoke-virtual {v3, v4, p0, v5, v6}, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$GnssAntennaInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 514
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 511
    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    .line 518
    :cond_37
    return-object v0
.end method

.method public static final blacklist writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/HwParcel;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$GnssAntennaInfo;",
            ">;)V"
        }
    .end annotation

    .line 587
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 589
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 590
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 591
    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 592
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x78

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 593
    nop

    :goto_1e
    if-ge v4, v1, :cond_2f

    .line 594
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$GnssAntennaInfo;

    mul-int/lit8 v5, v4, 0x78

    int-to-long v5, v5

    invoke-virtual {v3, v2, v5, v6}, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$GnssAntennaInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 593
    add-int/lit8 v4, v4, 0x1

    goto :goto_1e

    .line 596
    :cond_2f
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 599
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 600
    return-void
.end method


# virtual methods
.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 8

    .line 433
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 434
    return v0

    .line 436
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 437
    return v1

    .line 439
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$GnssAntennaInfo;

    if-eq v2, v3, :cond_11

    .line 440
    return v1

    .line 442
    :cond_11
    check-cast p1, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$GnssAntennaInfo;

    .line 443
    iget-wide v2, p0, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$GnssAntennaInfo;->carrierFrequencyMHz:D

    iget-wide v4, p1, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$GnssAntennaInfo;->carrierFrequencyMHz:D

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_1c

    .line 444
    return v1

    .line 446
    :cond_1c
    iget-object v2, p0, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$GnssAntennaInfo;->phaseCenterOffsetCoordinateMillimeters:Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Coord;

    iget-object v3, p1, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$GnssAntennaInfo;->phaseCenterOffsetCoordinateMillimeters:Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Coord;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    .line 447
    return v1

    .line 449
    :cond_27
    iget-object v2, p0, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$GnssAntennaInfo;->phaseCenterVariationCorrectionMillimeters:Ljava/util/ArrayList;

    iget-object v3, p1, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$GnssAntennaInfo;->phaseCenterVariationCorrectionMillimeters:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_32

    .line 450
    return v1

    .line 452
    :cond_32
    iget-object v2, p0, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$GnssAntennaInfo;->phaseCenterVariationCorrectionUncertaintyMillimeters:Ljava/util/ArrayList;

    iget-object v3, p1, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$GnssAntennaInfo;->phaseCenterVariationCorrectionUncertaintyMillimeters:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3d

    .line 453
    return v1

    .line 455
    :cond_3d
    iget-object v2, p0, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$GnssAntennaInfo;->signalGainCorrectionDbi:Ljava/util/ArrayList;

    iget-object v3, p1, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$GnssAntennaInfo;->signalGainCorrectionDbi:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_48

    .line 456
    return v1

    .line 458
    :cond_48
    iget-object v2, p0, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$GnssAntennaInfo;->signalGainCorrectionUncertaintyDbi:Ljava/util/ArrayList;

    iget-object p1, p1, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$GnssAntennaInfo;->signalGainCorrectionUncertaintyDbi:Ljava/util/ArrayList;

    invoke-static {v2, p1}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_53

    .line 459
    return v1

    .line 461
    :cond_53
    return v0
.end method

.method public final whitelist test-api hashCode()I
    .registers 8

    .line 466
    iget-wide v0, p0, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$GnssAntennaInfo;->carrierFrequencyMHz:D

    .line 467
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v0, p0, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$GnssAntennaInfo;->phaseCenterOffsetCoordinateMillimeters:Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Coord;

    .line 468
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v0, p0, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$GnssAntennaInfo;->phaseCenterVariationCorrectionMillimeters:Ljava/util/ArrayList;

    .line 469
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v0, p0, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$GnssAntennaInfo;->phaseCenterVariationCorrectionUncertaintyMillimeters:Ljava/util/ArrayList;

    .line 470
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v0, p0, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$GnssAntennaInfo;->signalGainCorrectionDbi:Ljava/util/ArrayList;

    .line 471
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v0, p0, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$GnssAntennaInfo;->signalGainCorrectionUncertaintyDbi:Ljava/util/ArrayList;

    .line 472
    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    move-result-object v0

    .line 466
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final blacklist readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .registers 23

    .line 523
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v9, p2

    const-wide/16 v10, 0x0

    add-long v2, p3, v10

    invoke-virtual {v9, v2, v3}, Landroid/os/HwBlob;->getDouble(J)D

    move-result-wide v2

    iput-wide v2, v0, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$GnssAntennaInfo;->carrierFrequencyMHz:D

    .line 524
    iget-object v2, v0, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$GnssAntennaInfo;->phaseCenterOffsetCoordinateMillimeters:Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Coord;

    const-wide/16 v12, 0x8

    add-long v3, p3, v12

    invoke-virtual {v2, v1, v9, v3, v4}, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Coord;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 526
    const-wide/16 v2, 0x38

    add-long v2, p3, v2

    add-long v4, v2, v12

    invoke-virtual {v9, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v14

    .line 527
    mul-int/lit8 v4, v14, 0x10

    int-to-long v4, v4

    .line 528
    move-wide v6, v2

    move-wide v2, v4

    invoke-virtual {v9}, Landroid/os/HwBlob;->handle()J

    move-result-wide v4

    add-long/2addr v6, v10

    .line 527
    const/4 v8, 0x1

    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v2

    .line 531
    iget-object v3, v0, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$GnssAntennaInfo;->phaseCenterVariationCorrectionMillimeters:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 532
    const/4 v15, 0x0

    move v3, v15

    :goto_39
    if-ge v3, v14, :cond_4e

    .line 533
    new-instance v4, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Row;

    invoke-direct {v4}, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Row;-><init>()V

    .line 534
    mul-int/lit8 v5, v3, 0x10

    int-to-long v5, v5

    invoke-virtual {v4, v1, v2, v5, v6}, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Row;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 535
    iget-object v5, v0, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$GnssAntennaInfo;->phaseCenterVariationCorrectionMillimeters:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 532
    add-int/lit8 v3, v3, 0x1

    goto :goto_39

    .line 539
    :cond_4e
    const-wide/16 v2, 0x48

    add-long v2, p3, v2

    add-long v4, v2, v12

    invoke-virtual {v9, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v14

    .line 540
    mul-int/lit8 v4, v14, 0x10

    int-to-long v4, v4

    .line 541
    move-wide v6, v2

    move-wide v2, v4

    invoke-virtual {v9}, Landroid/os/HwBlob;->handle()J

    move-result-wide v4

    add-long/2addr v6, v10

    .line 540
    const/4 v8, 0x1

    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v2

    .line 544
    iget-object v3, v0, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$GnssAntennaInfo;->phaseCenterVariationCorrectionUncertaintyMillimeters:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 545
    move v3, v15

    :goto_6d
    if-ge v3, v14, :cond_82

    .line 546
    new-instance v4, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Row;

    invoke-direct {v4}, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Row;-><init>()V

    .line 547
    mul-int/lit8 v5, v3, 0x10

    int-to-long v5, v5

    invoke-virtual {v4, v1, v2, v5, v6}, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Row;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 548
    iget-object v5, v0, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$GnssAntennaInfo;->phaseCenterVariationCorrectionUncertaintyMillimeters:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 545
    add-int/lit8 v3, v3, 0x1

    goto :goto_6d

    .line 552
    :cond_82
    const-wide/16 v2, 0x58

    add-long v2, p3, v2

    add-long v4, v2, v12

    invoke-virtual {v9, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v14

    .line 553
    mul-int/lit8 v4, v14, 0x10

    int-to-long v4, v4

    .line 554
    move-wide v6, v2

    move-wide v2, v4

    invoke-virtual {v9}, Landroid/os/HwBlob;->handle()J

    move-result-wide v4

    add-long/2addr v6, v10

    .line 553
    const/4 v8, 0x1

    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v2

    .line 557
    iget-object v3, v0, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$GnssAntennaInfo;->signalGainCorrectionDbi:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 558
    move v3, v15

    :goto_a1
    if-ge v3, v14, :cond_b6

    .line 559
    new-instance v4, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Row;

    invoke-direct {v4}, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Row;-><init>()V

    .line 560
    mul-int/lit8 v5, v3, 0x10

    int-to-long v5, v5

    invoke-virtual {v4, v1, v2, v5, v6}, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Row;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 561
    iget-object v5, v0, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$GnssAntennaInfo;->signalGainCorrectionDbi:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 558
    add-int/lit8 v3, v3, 0x1

    goto :goto_a1

    .line 565
    :cond_b6
    const-wide/16 v2, 0x68

    add-long v2, p3, v2

    add-long/2addr v12, v2

    invoke-virtual {v9, v12, v13}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v12

    .line 566
    mul-int/lit8 v4, v12, 0x10

    int-to-long v4, v4

    .line 567
    invoke-virtual {v9}, Landroid/os/HwBlob;->handle()J

    move-result-wide v6

    add-long/2addr v2, v10

    .line 566
    const/4 v8, 0x1

    move-wide/from16 v16, v6

    move-wide v6, v2

    move-wide v2, v4

    move-wide/from16 v4, v16

    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v2

    .line 570
    iget-object v3, v0, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$GnssAntennaInfo;->signalGainCorrectionUncertaintyDbi:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 571
    nop

    :goto_d8
    if-ge v15, v12, :cond_ed

    .line 572
    new-instance v3, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Row;

    invoke-direct {v3}, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Row;-><init>()V

    .line 573
    mul-int/lit8 v4, v15, 0x10

    int-to-long v4, v4

    invoke-virtual {v3, v1, v2, v4, v5}, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Row;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 574
    iget-object v4, v0, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$GnssAntennaInfo;->signalGainCorrectionUncertaintyDbi:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 571
    add-int/lit8 v15, v15, 0x1

    goto :goto_d8

    .line 577
    :cond_ed
    return-void
.end method

.method public final blacklist readFromParcel(Landroid/os/HwParcel;)V
    .registers 5

    .line 496
    const-wide/16 v0, 0x78

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 497
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$GnssAntennaInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 498
    return-void
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 477
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 478
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 479
    const-string v1, ".carrierFrequencyMHz = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 480
    iget-wide v1, p0, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$GnssAntennaInfo;->carrierFrequencyMHz:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 481
    const-string v1, ", .phaseCenterOffsetCoordinateMillimeters = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 482
    iget-object v1, p0, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$GnssAntennaInfo;->phaseCenterOffsetCoordinateMillimeters:Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Coord;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 483
    const-string v1, ", .phaseCenterVariationCorrectionMillimeters = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 484
    iget-object v1, p0, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$GnssAntennaInfo;->phaseCenterVariationCorrectionMillimeters:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 485
    const-string v1, ", .phaseCenterVariationCorrectionUncertaintyMillimeters = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 486
    iget-object v1, p0, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$GnssAntennaInfo;->phaseCenterVariationCorrectionUncertaintyMillimeters:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 487
    const-string v1, ", .signalGainCorrectionDbi = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 488
    iget-object v1, p0, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$GnssAntennaInfo;->signalGainCorrectionDbi:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 489
    const-string v1, ", .signalGainCorrectionUncertaintyDbi = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    iget-object v1, p0, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$GnssAntennaInfo;->signalGainCorrectionUncertaintyDbi:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 491
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 492
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final blacklist writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 22

    .line 604
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-wide/16 v2, 0x0

    add-long v4, p2, v2

    iget-wide v6, v0, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$GnssAntennaInfo;->carrierFrequencyMHz:D

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/os/HwBlob;->putDouble(JD)V

    .line 605
    iget-object v4, v0, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$GnssAntennaInfo;->phaseCenterOffsetCoordinateMillimeters:Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Coord;

    const-wide/16 v5, 0x8

    add-long v7, p2, v5

    invoke-virtual {v4, v1, v7, v8}, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Coord;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 607
    iget-object v4, v0, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$GnssAntennaInfo;->phaseCenterVariationCorrectionMillimeters:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 608
    const-wide/16 v7, 0x38

    add-long v7, p2, v7

    add-long v9, v7, v5

    invoke-virtual {v1, v9, v10, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 609
    const-wide/16 v9, 0xc

    add-long v11, v7, v9

    const/4 v13, 0x0

    invoke-virtual {v1, v11, v12, v13}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 610
    new-instance v11, Landroid/os/HwBlob;

    mul-int/lit8 v12, v4, 0x10

    invoke-direct {v11, v12}, Landroid/os/HwBlob;-><init>(I)V

    .line 611
    move v12, v13

    :goto_35
    if-ge v12, v4, :cond_4c

    .line 612
    iget-object v14, v0, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$GnssAntennaInfo;->phaseCenterVariationCorrectionMillimeters:Ljava/util/ArrayList;

    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Row;

    mul-int/lit8 v15, v12, 0x10

    move-wide/from16 v16, v2

    int-to-long v2, v15

    invoke-virtual {v14, v11, v2, v3}, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Row;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 611
    add-int/lit8 v12, v12, 0x1

    move-wide/from16 v2, v16

    goto :goto_35

    .line 614
    :cond_4c
    move-wide/from16 v16, v2

    add-long v7, v7, v16

    invoke-virtual {v1, v7, v8, v11}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 617
    iget-object v2, v0, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$GnssAntennaInfo;->phaseCenterVariationCorrectionUncertaintyMillimeters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 618
    const-wide/16 v3, 0x48

    add-long v3, p2, v3

    add-long v7, v3, v5

    invoke-virtual {v1, v7, v8, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 619
    add-long v7, v3, v9

    invoke-virtual {v1, v7, v8, v13}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 620
    new-instance v7, Landroid/os/HwBlob;

    mul-int/lit8 v8, v2, 0x10

    invoke-direct {v7, v8}, Landroid/os/HwBlob;-><init>(I)V

    .line 621
    move v8, v13

    :goto_6f
    if-ge v8, v2, :cond_82

    .line 622
    iget-object v11, v0, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$GnssAntennaInfo;->phaseCenterVariationCorrectionUncertaintyMillimeters:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Row;

    mul-int/lit8 v12, v8, 0x10

    int-to-long v14, v12

    invoke-virtual {v11, v7, v14, v15}, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Row;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 621
    add-int/lit8 v8, v8, 0x1

    goto :goto_6f

    .line 624
    :cond_82
    add-long v3, v3, v16

    invoke-virtual {v1, v3, v4, v7}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 627
    iget-object v2, v0, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$GnssAntennaInfo;->signalGainCorrectionDbi:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 628
    const-wide/16 v3, 0x58

    add-long v3, p2, v3

    add-long v7, v3, v5

    invoke-virtual {v1, v7, v8, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 629
    add-long v7, v3, v9

    invoke-virtual {v1, v7, v8, v13}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 630
    new-instance v7, Landroid/os/HwBlob;

    mul-int/lit8 v8, v2, 0x10

    invoke-direct {v7, v8}, Landroid/os/HwBlob;-><init>(I)V

    .line 631
    move v8, v13

    :goto_a3
    if-ge v8, v2, :cond_b6

    .line 632
    iget-object v11, v0, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$GnssAntennaInfo;->signalGainCorrectionDbi:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Row;

    mul-int/lit8 v12, v8, 0x10

    int-to-long v14, v12

    invoke-virtual {v11, v7, v14, v15}, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Row;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 631
    add-int/lit8 v8, v8, 0x1

    goto :goto_a3

    .line 634
    :cond_b6
    add-long v3, v3, v16

    invoke-virtual {v1, v3, v4, v7}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 637
    iget-object v2, v0, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$GnssAntennaInfo;->signalGainCorrectionUncertaintyDbi:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 638
    const-wide/16 v3, 0x68

    add-long v3, p2, v3

    add-long/2addr v5, v3

    invoke-virtual {v1, v5, v6, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 639
    add-long/2addr v9, v3

    invoke-virtual {v1, v9, v10, v13}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 640
    new-instance v5, Landroid/os/HwBlob;

    mul-int/lit8 v6, v2, 0x10

    invoke-direct {v5, v6}, Landroid/os/HwBlob;-><init>(I)V

    .line 641
    nop

    :goto_d5
    if-ge v13, v2, :cond_e8

    .line 642
    iget-object v6, v0, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$GnssAntennaInfo;->signalGainCorrectionUncertaintyDbi:Ljava/util/ArrayList;

    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Row;

    mul-int/lit8 v7, v13, 0x10

    int-to-long v7, v7

    invoke-virtual {v6, v5, v7, v8}, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$Row;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 641
    add-int/lit8 v13, v13, 0x1

    goto :goto_d5

    .line 644
    :cond_e8
    add-long v3, v3, v16

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 646
    return-void
.end method

.method public final blacklist writeToParcel(Landroid/os/HwParcel;)V
    .registers 5

    .line 580
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x78

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 581
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/gnss/V2_1/IGnssAntennaInfoCallback$GnssAntennaInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 582
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 583
    return-void
.end method
