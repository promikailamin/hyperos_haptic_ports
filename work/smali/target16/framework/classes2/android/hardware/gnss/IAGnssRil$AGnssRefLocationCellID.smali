.class public Landroid/hardware/gnss/IAGnssRil$AGnssRefLocationCellID;
.super Ljava/lang/Object;
.source "IAGnssRil.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/IAGnssRil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AGnssRefLocationCellID"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/gnss/IAGnssRil$AGnssRefLocationCellID;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist arfcn:I

.field public blacklist cid:J

.field public blacklist lac:I

.field public blacklist mcc:I

.field public blacklist mnc:I

.field public blacklist pcid:I

.field public blacklist tac:I

.field public blacklist type:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 355
    new-instance v0, Landroid/hardware/gnss/IAGnssRil$AGnssRefLocationCellID$1;

    invoke-direct {v0}, Landroid/hardware/gnss/IAGnssRil$AGnssRefLocationCellID$1;-><init>()V

    sput-object v0, Landroid/hardware/gnss/IAGnssRil$AGnssRefLocationCellID;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 4

    .line 343
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 346
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/gnss/IAGnssRil$AGnssRefLocationCellID;->mcc:I

    .line 347
    iput v0, p0, Landroid/hardware/gnss/IAGnssRil$AGnssRefLocationCellID;->mnc:I

    .line 348
    iput v0, p0, Landroid/hardware/gnss/IAGnssRil$AGnssRefLocationCellID;->lac:I

    .line 349
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/hardware/gnss/IAGnssRil$AGnssRefLocationCellID;->cid:J

    .line 350
    iput v0, p0, Landroid/hardware/gnss/IAGnssRil$AGnssRefLocationCellID;->tac:I

    .line 351
    iput v0, p0, Landroid/hardware/gnss/IAGnssRil$AGnssRefLocationCellID;->pcid:I

    .line 352
    iput v0, p0, Landroid/hardware/gnss/IAGnssRil$AGnssRefLocationCellID;->arfcn:I

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 415
    nop

    .line 416
    const/4 v0, 0x0

    return v0
.end method

.method public final whitelist getStability()I
    .registers 2

    .line 354
    const/4 v0, 0x1

    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 9

    .line 386
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 387
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 389
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_f9

    .line 390
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_f7

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_25

    .line 407
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1f

    .line 410
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 390
    return-void

    .line 408
    :cond_1f
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 391
    :cond_25
    :try_start_25
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/gnss/IAGnssRil$AGnssRefLocationCellID;->type:I

    .line 392
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_2f
    .catchall {:try_start_25 .. :try_end_2f} :catchall_f7

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_40

    .line 407
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_3a

    .line 410
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 392
    return-void

    .line 408
    :cond_3a
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 393
    :cond_40
    :try_start_40
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/gnss/IAGnssRil$AGnssRefLocationCellID;->mcc:I

    .line 394
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_4a
    .catchall {:try_start_40 .. :try_end_4a} :catchall_f7

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_5b

    .line 407
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_55

    .line 410
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 394
    return-void

    .line 408
    :cond_55
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 395
    :cond_5b
    :try_start_5b
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/gnss/IAGnssRil$AGnssRefLocationCellID;->mnc:I

    .line 396
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_65
    .catchall {:try_start_5b .. :try_end_65} :catchall_f7

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_76

    .line 407
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_70

    .line 410
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 396
    return-void

    .line 408
    :cond_70
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 397
    :cond_76
    :try_start_76
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/gnss/IAGnssRil$AGnssRefLocationCellID;->lac:I

    .line 398
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_80
    .catchall {:try_start_76 .. :try_end_80} :catchall_f7

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_91

    .line 407
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_8b

    .line 410
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 398
    return-void

    .line 408
    :cond_8b
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 399
    :cond_91
    :try_start_91
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/gnss/IAGnssRil$AGnssRefLocationCellID;->cid:J

    .line 400
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_9b
    .catchall {:try_start_91 .. :try_end_9b} :catchall_f7

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_ac

    .line 407
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_a6

    .line 410
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 400
    return-void

    .line 408
    :cond_a6
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 401
    :cond_ac
    :try_start_ac
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/gnss/IAGnssRil$AGnssRefLocationCellID;->tac:I

    .line 402
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_b6
    .catchall {:try_start_ac .. :try_end_b6} :catchall_f7

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_c7

    .line 407
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_c1

    .line 410
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 402
    return-void

    .line 408
    :cond_c1
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 403
    :cond_c7
    :try_start_c7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/gnss/IAGnssRil$AGnssRefLocationCellID;->pcid:I

    .line 404
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_d1
    .catchall {:try_start_c7 .. :try_end_d1} :catchall_f7

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_e2

    .line 407
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_dc

    .line 410
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 404
    return-void

    .line 408
    :cond_dc
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 405
    :cond_e2
    :try_start_e2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/gnss/IAGnssRil$AGnssRefLocationCellID;->arfcn:I
    :try_end_e8
    .catchall {:try_start_e2 .. :try_end_e8} :catchall_f7

    .line 407
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_f1

    .line 410
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 411
    nop

    .line 412
    return-void

    .line 408
    :cond_f1
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 407
    :catchall_f7
    move-exception v2

    goto :goto_101

    .line 389
    :cond_f9
    :try_start_f9
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_101
    .catchall {:try_start_f9 .. :try_end_101} :catchall_f7

    .line 407
    :goto_101
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_10a

    .line 408
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 410
    :cond_10a
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 411
    throw v2
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 369
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p2

    .line 370
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 371
    iget v0, p0, Landroid/hardware/gnss/IAGnssRil$AGnssRefLocationCellID;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 372
    iget v0, p0, Landroid/hardware/gnss/IAGnssRil$AGnssRefLocationCellID;->mcc:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 373
    iget v0, p0, Landroid/hardware/gnss/IAGnssRil$AGnssRefLocationCellID;->mnc:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 374
    iget v0, p0, Landroid/hardware/gnss/IAGnssRil$AGnssRefLocationCellID;->lac:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 375
    iget-wide v0, p0, Landroid/hardware/gnss/IAGnssRil$AGnssRefLocationCellID;->cid:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 376
    iget v0, p0, Landroid/hardware/gnss/IAGnssRil$AGnssRefLocationCellID;->tac:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 377
    iget v0, p0, Landroid/hardware/gnss/IAGnssRil$AGnssRefLocationCellID;->pcid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 378
    iget v0, p0, Landroid/hardware/gnss/IAGnssRil$AGnssRefLocationCellID;->arfcn:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 379
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 380
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 381
    sub-int p2, v0, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 382
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 383
    return-void
.end method
