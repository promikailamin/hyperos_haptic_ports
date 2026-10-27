.class public final Landroid/hardware/gnss/V1_0/IAGnssRil$AGnssRefLocation;
.super Ljava/lang/Object;
.source "IAGnssRil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/V1_0/IAGnssRil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AGnssRefLocation"
.end annotation


# instance fields
.field public blacklist cellID:Landroid/hardware/gnss/V1_0/IAGnssRil$AGnssRefLocationCellID;

.field public blacklist type:B


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 416
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 417
    const/4 v0, 0x0

    iput-byte v0, p0, Landroid/hardware/gnss/V1_0/IAGnssRil$AGnssRefLocation;->type:B

    .line 418
    new-instance v0, Landroid/hardware/gnss/V1_0/IAGnssRil$AGnssRefLocationCellID;

    invoke-direct {v0}, Landroid/hardware/gnss/V1_0/IAGnssRil$AGnssRefLocationCellID;-><init>()V

    iput-object v0, p0, Landroid/hardware/gnss/V1_0/IAGnssRil$AGnssRefLocation;->cellID:Landroid/hardware/gnss/V1_0/IAGnssRil$AGnssRefLocationCellID;

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
            "Landroid/hardware/gnss/V1_0/IAGnssRil$AGnssRefLocation;",
            ">;"
        }
    .end annotation

    .line 466
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 467
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 470
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 471
    mul-int/lit8 v3, v2, 0x14

    int-to-long v5, v3

    .line 472
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 471
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object p0

    .line 475
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 476
    const/4 v1, 0x0

    :goto_24
    if-ge v1, v2, :cond_37

    .line 477
    new-instance v3, Landroid/hardware/gnss/V1_0/IAGnssRil$AGnssRefLocation;

    invoke-direct {v3}, Landroid/hardware/gnss/V1_0/IAGnssRil$AGnssRefLocation;-><init>()V

    .line 478
    mul-int/lit8 v5, v1, 0x14

    int-to-long v5, v5

    invoke-virtual {v3, v4, p0, v5, v6}, Landroid/hardware/gnss/V1_0/IAGnssRil$AGnssRefLocation;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 479
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 476
    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    .line 483
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
            "Landroid/hardware/gnss/V1_0/IAGnssRil$AGnssRefLocation;",
            ">;)V"
        }
    .end annotation

    .line 500
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 502
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 503
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 504
    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 505
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x14

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 506
    nop

    :goto_1e
    if-ge v4, v1, :cond_2f

    .line 507
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/gnss/V1_0/IAGnssRil$AGnssRefLocation;

    mul-int/lit8 v5, v4, 0x14

    int-to-long v5, v5

    invoke-virtual {v3, v2, v5, v6}, Landroid/hardware/gnss/V1_0/IAGnssRil$AGnssRefLocation;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 506
    add-int/lit8 v4, v4, 0x1

    goto :goto_1e

    .line 509
    :cond_2f
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 512
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 513
    return-void
.end method


# virtual methods
.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 422
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 423
    return v0

    .line 425
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 426
    return v1

    .line 428
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/gnss/V1_0/IAGnssRil$AGnssRefLocation;

    if-eq v2, v3, :cond_11

    .line 429
    return v1

    .line 431
    :cond_11
    check-cast p1, Landroid/hardware/gnss/V1_0/IAGnssRil$AGnssRefLocation;

    .line 432
    iget-byte v2, p0, Landroid/hardware/gnss/V1_0/IAGnssRil$AGnssRefLocation;->type:B

    iget-byte v3, p1, Landroid/hardware/gnss/V1_0/IAGnssRil$AGnssRefLocation;->type:B

    if-eq v2, v3, :cond_1a

    .line 433
    return v1

    .line 435
    :cond_1a
    iget-object v2, p0, Landroid/hardware/gnss/V1_0/IAGnssRil$AGnssRefLocation;->cellID:Landroid/hardware/gnss/V1_0/IAGnssRil$AGnssRefLocationCellID;

    iget-object p1, p1, Landroid/hardware/gnss/V1_0/IAGnssRil$AGnssRefLocation;->cellID:Landroid/hardware/gnss/V1_0/IAGnssRil$AGnssRefLocationCellID;

    invoke-static {v2, p1}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_25

    .line 436
    return v1

    .line 438
    :cond_25
    return v0
.end method

.method public final whitelist test-api hashCode()I
    .registers 3

    .line 443
    iget-byte v0, p0, Landroid/hardware/gnss/V1_0/IAGnssRil$AGnssRefLocation;->type:B

    .line 444
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/gnss/V1_0/IAGnssRil$AGnssRefLocation;->cellID:Landroid/hardware/gnss/V1_0/IAGnssRil$AGnssRefLocationCellID;

    .line 445
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 443
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final blacklist readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .registers 8

    .line 488
    const-wide/16 v0, 0x0

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v0

    iput-byte v0, p0, Landroid/hardware/gnss/V1_0/IAGnssRil$AGnssRefLocation;->type:B

    .line 489
    iget-object v0, p0, Landroid/hardware/gnss/V1_0/IAGnssRil$AGnssRefLocation;->cellID:Landroid/hardware/gnss/V1_0/IAGnssRil$AGnssRefLocationCellID;

    const-wide/16 v1, 0x4

    add-long/2addr p3, v1

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/hardware/gnss/V1_0/IAGnssRil$AGnssRefLocationCellID;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 490
    return-void
.end method

.method public final blacklist readFromParcel(Landroid/os/HwParcel;)V
    .registers 5

    .line 461
    const-wide/16 v0, 0x14

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 462
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/gnss/V1_0/IAGnssRil$AGnssRefLocation;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 463
    return-void
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 450
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 451
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 452
    const-string v1, ".type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    iget-byte v1, p0, Landroid/hardware/gnss/V1_0/IAGnssRil$AGnssRefLocation;->type:B

    invoke-static {v1}, Landroid/hardware/gnss/V1_0/IAGnssRil$AGnssRefLocationType;->toString(B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 454
    const-string v1, ", .cellID = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    iget-object v1, p0, Landroid/hardware/gnss/V1_0/IAGnssRil$AGnssRefLocation;->cellID:Landroid/hardware/gnss/V1_0/IAGnssRil$AGnssRefLocationCellID;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 456
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 457
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final blacklist writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 7

    .line 517
    const-wide/16 v0, 0x0

    add-long/2addr v0, p2

    iget-byte v2, p0, Landroid/hardware/gnss/V1_0/IAGnssRil$AGnssRefLocation;->type:B

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 518
    iget-object v0, p0, Landroid/hardware/gnss/V1_0/IAGnssRil$AGnssRefLocation;->cellID:Landroid/hardware/gnss/V1_0/IAGnssRil$AGnssRefLocationCellID;

    const-wide/16 v1, 0x4

    add-long/2addr p2, v1

    invoke-virtual {v0, p1, p2, p3}, Landroid/hardware/gnss/V1_0/IAGnssRil$AGnssRefLocationCellID;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 519
    return-void
.end method

.method public final blacklist writeToParcel(Landroid/os/HwParcel;)V
    .registers 5

    .line 493
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 494
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/gnss/V1_0/IAGnssRil$AGnssRefLocation;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 495
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 496
    return-void
.end method
