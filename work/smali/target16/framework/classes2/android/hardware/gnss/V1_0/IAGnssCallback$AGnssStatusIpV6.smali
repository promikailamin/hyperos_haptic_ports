.class public final Landroid/hardware/gnss/V1_0/IAGnssCallback$AGnssStatusIpV6;
.super Ljava/lang/Object;
.source "IAGnssCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/V1_0/IAGnssCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AGnssStatusIpV6"
.end annotation


# instance fields
.field public blacklist ipV6Addr:[B

.field public blacklist status:B

.field public blacklist type:B


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 321
    const/4 v0, 0x0

    iput-byte v0, p0, Landroid/hardware/gnss/V1_0/IAGnssCallback$AGnssStatusIpV6;->type:B

    .line 322
    iput-byte v0, p0, Landroid/hardware/gnss/V1_0/IAGnssCallback$AGnssStatusIpV6;->status:B

    .line 326
    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/hardware/gnss/V1_0/IAGnssCallback$AGnssStatusIpV6;->ipV6Addr:[B

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
            "Landroid/hardware/gnss/V1_0/IAGnssCallback$AGnssStatusIpV6;",
            ">;"
        }
    .end annotation

    .line 380
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 381
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 384
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 385
    mul-int/lit8 v3, v2, 0x12

    int-to-long v5, v3

    .line 386
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 385
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object p0

    .line 389
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 390
    const/4 v1, 0x0

    :goto_24
    if-ge v1, v2, :cond_37

    .line 391
    new-instance v3, Landroid/hardware/gnss/V1_0/IAGnssCallback$AGnssStatusIpV6;

    invoke-direct {v3}, Landroid/hardware/gnss/V1_0/IAGnssCallback$AGnssStatusIpV6;-><init>()V

    .line 392
    mul-int/lit8 v5, v1, 0x12

    int-to-long v5, v5

    invoke-virtual {v3, v4, p0, v5, v6}, Landroid/hardware/gnss/V1_0/IAGnssCallback$AGnssStatusIpV6;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 393
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 390
    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    .line 397
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
            "Landroid/hardware/gnss/V1_0/IAGnssCallback$AGnssStatusIpV6;",
            ">;)V"
        }
    .end annotation

    .line 419
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 421
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 422
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 423
    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 424
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x12

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 425
    nop

    :goto_1e
    if-ge v4, v1, :cond_2f

    .line 426
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/gnss/V1_0/IAGnssCallback$AGnssStatusIpV6;

    mul-int/lit8 v5, v4, 0x12

    int-to-long v5, v5

    invoke-virtual {v3, v2, v5, v6}, Landroid/hardware/gnss/V1_0/IAGnssCallback$AGnssStatusIpV6;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 425
    add-int/lit8 v4, v4, 0x1

    goto :goto_1e

    .line 428
    :cond_2f
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 431
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 432
    return-void
.end method


# virtual methods
.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    .line 330
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 331
    return v0

    .line 333
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 334
    return v1

    .line 336
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/gnss/V1_0/IAGnssCallback$AGnssStatusIpV6;

    if-eq v2, v3, :cond_11

    .line 337
    return v1

    .line 339
    :cond_11
    check-cast p1, Landroid/hardware/gnss/V1_0/IAGnssCallback$AGnssStatusIpV6;

    .line 340
    iget-byte v2, p0, Landroid/hardware/gnss/V1_0/IAGnssCallback$AGnssStatusIpV6;->type:B

    iget-byte v3, p1, Landroid/hardware/gnss/V1_0/IAGnssCallback$AGnssStatusIpV6;->type:B

    if-eq v2, v3, :cond_1a

    .line 341
    return v1

    .line 343
    :cond_1a
    iget-byte v2, p0, Landroid/hardware/gnss/V1_0/IAGnssCallback$AGnssStatusIpV6;->status:B

    iget-byte v3, p1, Landroid/hardware/gnss/V1_0/IAGnssCallback$AGnssStatusIpV6;->status:B

    if-eq v2, v3, :cond_21

    .line 344
    return v1

    .line 346
    :cond_21
    iget-object v2, p0, Landroid/hardware/gnss/V1_0/IAGnssCallback$AGnssStatusIpV6;->ipV6Addr:[B

    iget-object p1, p1, Landroid/hardware/gnss/V1_0/IAGnssCallback$AGnssStatusIpV6;->ipV6Addr:[B

    invoke-static {v2, p1}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2c

    .line 347
    return v1

    .line 349
    :cond_2c
    return v0
.end method

.method public final whitelist test-api hashCode()I
    .registers 4

    .line 354
    iget-byte v0, p0, Landroid/hardware/gnss/V1_0/IAGnssCallback$AGnssStatusIpV6;->type:B

    .line 355
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-byte v1, p0, Landroid/hardware/gnss/V1_0/IAGnssCallback$AGnssStatusIpV6;->status:B

    .line 356
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/gnss/V1_0/IAGnssCallback$AGnssStatusIpV6;->ipV6Addr:[B

    .line 357
    invoke-static {v2}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    .line 354
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final blacklist readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .registers 7

    .line 402
    const-wide/16 v0, 0x0

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt8(J)B

    move-result p1

    iput-byte p1, p0, Landroid/hardware/gnss/V1_0/IAGnssCallback$AGnssStatusIpV6;->type:B

    .line 403
    const-wide/16 v0, 0x1

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt8(J)B

    move-result p1

    iput-byte p1, p0, Landroid/hardware/gnss/V1_0/IAGnssCallback$AGnssStatusIpV6;->status:B

    .line 405
    const-wide/16 v0, 0x2

    add-long/2addr p3, v0

    .line 406
    iget-object p1, p0, Landroid/hardware/gnss/V1_0/IAGnssCallback$AGnssStatusIpV6;->ipV6Addr:[B

    const/16 v0, 0x10

    invoke-virtual {p2, p3, p4, p1, v0}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 407
    nop

    .line 409
    return-void
.end method

.method public final blacklist readFromParcel(Landroid/os/HwParcel;)V
    .registers 5

    .line 375
    const-wide/16 v0, 0x12

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 376
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/gnss/V1_0/IAGnssCallback$AGnssStatusIpV6;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 377
    return-void
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 362
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 363
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    const-string v1, ".type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    iget-byte v1, p0, Landroid/hardware/gnss/V1_0/IAGnssCallback$AGnssStatusIpV6;->type:B

    invoke-static {v1}, Landroid/hardware/gnss/V1_0/IAGnssCallback$AGnssType;->toString(B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    const-string v1, ", .status = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    iget-byte v1, p0, Landroid/hardware/gnss/V1_0/IAGnssCallback$AGnssStatusIpV6;->status:B

    invoke-static {v1}, Landroid/hardware/gnss/V1_0/IAGnssCallback$AGnssStatusValue;->toString(B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    const-string v1, ", .ipV6Addr = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    iget-object v1, p0, Landroid/hardware/gnss/V1_0/IAGnssCallback$AGnssStatusIpV6;->ipV6Addr:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final blacklist writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 7

    .line 436
    const-wide/16 v0, 0x0

    add-long/2addr v0, p2

    iget-byte v2, p0, Landroid/hardware/gnss/V1_0/IAGnssCallback$AGnssStatusIpV6;->type:B

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 437
    const-wide/16 v0, 0x1

    add-long/2addr v0, p2

    iget-byte v2, p0, Landroid/hardware/gnss/V1_0/IAGnssCallback$AGnssStatusIpV6;->status:B

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt8(JB)V

    .line 439
    const-wide/16 v0, 0x2

    add-long/2addr p2, v0

    .line 440
    iget-object v0, p0, Landroid/hardware/gnss/V1_0/IAGnssCallback$AGnssStatusIpV6;->ipV6Addr:[B

    .line 442
    if-eqz v0, :cond_21

    array-length v1, v0

    const/16 v2, 0x10

    if-ne v1, v2, :cond_21

    .line 446
    invoke-virtual {p1, p2, p3, v0}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 447
    nop

    .line 449
    return-void

    .line 443
    :cond_21
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Array element is not of the expected length"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final blacklist writeToParcel(Landroid/os/HwParcel;)V
    .registers 5

    .line 412
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x12

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 413
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/gnss/V1_0/IAGnssCallback$AGnssStatusIpV6;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 414
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 415
    return-void
.end method
