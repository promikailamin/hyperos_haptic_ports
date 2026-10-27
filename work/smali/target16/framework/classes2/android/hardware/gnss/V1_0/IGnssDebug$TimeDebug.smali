.class public final Landroid/hardware/gnss/V1_0/IGnssDebug$TimeDebug;
.super Ljava/lang/Object;
.source "IGnssDebug.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/V1_0/IGnssDebug;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TimeDebug"
.end annotation


# instance fields
.field public blacklist frequencyUncertaintyNsPerSec:F

.field public blacklist timeEstimate:J

.field public blacklist timeUncertaintyNs:F


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 484
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 488
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/gnss/V1_0/IGnssDebug$TimeDebug;->timeEstimate:J

    .line 492
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/gnss/V1_0/IGnssDebug$TimeDebug;->timeUncertaintyNs:F

    .line 497
    iput v0, p0, Landroid/hardware/gnss/V1_0/IGnssDebug$TimeDebug;->frequencyUncertaintyNsPerSec:F

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
            "Landroid/hardware/gnss/V1_0/IGnssDebug$TimeDebug;",
            ">;"
        }
    .end annotation

    .line 551
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 552
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 555
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 556
    mul-int/lit8 v3, v2, 0x10

    int-to-long v5, v3

    .line 557
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 556
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object p0

    .line 560
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 561
    const/4 v1, 0x0

    :goto_24
    if-ge v1, v2, :cond_37

    .line 562
    new-instance v3, Landroid/hardware/gnss/V1_0/IGnssDebug$TimeDebug;

    invoke-direct {v3}, Landroid/hardware/gnss/V1_0/IGnssDebug$TimeDebug;-><init>()V

    .line 563
    mul-int/lit8 v5, v1, 0x10

    int-to-long v5, v5

    invoke-virtual {v3, v4, p0, v5, v6}, Landroid/hardware/gnss/V1_0/IGnssDebug$TimeDebug;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 564
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 561
    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    .line 568
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
            "Landroid/hardware/gnss/V1_0/IGnssDebug$TimeDebug;",
            ">;)V"
        }
    .end annotation

    .line 586
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 588
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 589
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 590
    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 591
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x10

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 592
    nop

    :goto_1e
    if-ge v4, v1, :cond_2f

    .line 593
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/gnss/V1_0/IGnssDebug$TimeDebug;

    mul-int/lit8 v5, v4, 0x10

    int-to-long v5, v5

    invoke-virtual {v3, v2, v5, v6}, Landroid/hardware/gnss/V1_0/IGnssDebug$TimeDebug;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 592
    add-int/lit8 v4, v4, 0x1

    goto :goto_1e

    .line 595
    :cond_2f
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 598
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 599
    return-void
.end method


# virtual methods
.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 8

    .line 501
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 502
    return v0

    .line 504
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 505
    return v1

    .line 507
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/gnss/V1_0/IGnssDebug$TimeDebug;

    if-eq v2, v3, :cond_11

    .line 508
    return v1

    .line 510
    :cond_11
    check-cast p1, Landroid/hardware/gnss/V1_0/IGnssDebug$TimeDebug;

    .line 511
    iget-wide v2, p0, Landroid/hardware/gnss/V1_0/IGnssDebug$TimeDebug;->timeEstimate:J

    iget-wide v4, p1, Landroid/hardware/gnss/V1_0/IGnssDebug$TimeDebug;->timeEstimate:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1c

    .line 512
    return v1

    .line 514
    :cond_1c
    iget v2, p0, Landroid/hardware/gnss/V1_0/IGnssDebug$TimeDebug;->timeUncertaintyNs:F

    iget v3, p1, Landroid/hardware/gnss/V1_0/IGnssDebug$TimeDebug;->timeUncertaintyNs:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_25

    .line 515
    return v1

    .line 517
    :cond_25
    iget v2, p0, Landroid/hardware/gnss/V1_0/IGnssDebug$TimeDebug;->frequencyUncertaintyNsPerSec:F

    iget p1, p1, Landroid/hardware/gnss/V1_0/IGnssDebug$TimeDebug;->frequencyUncertaintyNsPerSec:F

    cmpl-float p1, v2, p1

    if-eqz p1, :cond_2e

    .line 518
    return v1

    .line 520
    :cond_2e
    return v0
.end method

.method public final whitelist test-api hashCode()I
    .registers 4

    .line 525
    iget-wide v0, p0, Landroid/hardware/gnss/V1_0/IGnssDebug$TimeDebug;->timeEstimate:J

    .line 526
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/hardware/gnss/V1_0/IGnssDebug$TimeDebug;->timeUncertaintyNs:F

    .line 527
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Landroid/hardware/gnss/V1_0/IGnssDebug$TimeDebug;->frequencyUncertaintyNsPerSec:F

    .line 528
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v2}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    .line 525
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final blacklist readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .registers 7

    .line 573
    const-wide/16 v0, 0x0

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt64(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/gnss/V1_0/IGnssDebug$TimeDebug;->timeEstimate:J

    .line 574
    const-wide/16 v0, 0x8

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getFloat(J)F

    move-result p1

    iput p1, p0, Landroid/hardware/gnss/V1_0/IGnssDebug$TimeDebug;->timeUncertaintyNs:F

    .line 575
    const-wide/16 v0, 0xc

    add-long/2addr p3, v0

    invoke-virtual {p2, p3, p4}, Landroid/os/HwBlob;->getFloat(J)F

    move-result p1

    iput p1, p0, Landroid/hardware/gnss/V1_0/IGnssDebug$TimeDebug;->frequencyUncertaintyNsPerSec:F

    .line 576
    return-void
.end method

.method public final blacklist readFromParcel(Landroid/os/HwParcel;)V
    .registers 5

    .line 546
    const-wide/16 v0, 0x10

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 547
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/gnss/V1_0/IGnssDebug$TimeDebug;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 548
    return-void
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 533
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 534
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 535
    const-string v1, ".timeEstimate = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 536
    iget-wide v1, p0, Landroid/hardware/gnss/V1_0/IGnssDebug$TimeDebug;->timeEstimate:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 537
    const-string v1, ", .timeUncertaintyNs = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 538
    iget v1, p0, Landroid/hardware/gnss/V1_0/IGnssDebug$TimeDebug;->timeUncertaintyNs:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 539
    const-string v1, ", .frequencyUncertaintyNsPerSec = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 540
    iget v1, p0, Landroid/hardware/gnss/V1_0/IGnssDebug$TimeDebug;->frequencyUncertaintyNsPerSec:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 541
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 542
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final blacklist writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 8

    .line 603
    const-wide/16 v0, 0x0

    add-long/2addr v0, p2

    iget-wide v2, p0, Landroid/hardware/gnss/V1_0/IGnssDebug$TimeDebug;->timeEstimate:J

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/os/HwBlob;->putInt64(JJ)V

    .line 604
    const-wide/16 v0, 0x8

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/gnss/V1_0/IGnssDebug$TimeDebug;->timeUncertaintyNs:F

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putFloat(JF)V

    .line 605
    const-wide/16 v0, 0xc

    add-long/2addr p2, v0

    iget v0, p0, Landroid/hardware/gnss/V1_0/IGnssDebug$TimeDebug;->frequencyUncertaintyNsPerSec:F

    invoke-virtual {p1, p2, p3, v0}, Landroid/os/HwBlob;->putFloat(JF)V

    .line 606
    return-void
.end method

.method public final blacklist writeToParcel(Landroid/os/HwParcel;)V
    .registers 5

    .line 579
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 580
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/gnss/V1_0/IGnssDebug$TimeDebug;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 581
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 582
    return-void
.end method
