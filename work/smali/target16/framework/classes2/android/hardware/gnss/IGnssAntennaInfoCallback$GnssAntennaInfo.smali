.class public Landroid/hardware/gnss/IGnssAntennaInfoCallback$GnssAntennaInfo;
.super Ljava/lang/Object;
.source "IGnssAntennaInfoCallback.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/IGnssAntennaInfoCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GnssAntennaInfo"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/gnss/IGnssAntennaInfoCallback$GnssAntennaInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist carrierFrequencyHz:J

.field public blacklist phaseCenterOffsetCoordinateMillimeters:Landroid/hardware/gnss/IGnssAntennaInfoCallback$Coord;

.field public blacklist phaseCenterVariationCorrectionMillimeters:[Landroid/hardware/gnss/IGnssAntennaInfoCallback$Row;

.field public blacklist phaseCenterVariationCorrectionUncertaintyMillimeters:[Landroid/hardware/gnss/IGnssAntennaInfoCallback$Row;

.field public blacklist signalGainCorrectionDbi:[Landroid/hardware/gnss/IGnssAntennaInfoCallback$Row;

.field public blacklist signalGainCorrectionUncertaintyDbi:[Landroid/hardware/gnss/IGnssAntennaInfoCallback$Row;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 345
    new-instance v0, Landroid/hardware/gnss/IGnssAntennaInfoCallback$GnssAntennaInfo$1;

    invoke-direct {v0}, Landroid/hardware/gnss/IGnssAntennaInfoCallback$GnssAntennaInfo$1;-><init>()V

    sput-object v0, Landroid/hardware/gnss/IGnssAntennaInfoCallback$GnssAntennaInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 335
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 337
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/gnss/IGnssAntennaInfoCallback$GnssAntennaInfo;->carrierFrequencyHz:J

    return-void
.end method

.method private blacklist describeContents(Ljava/lang/Object;)I
    .registers 6

    .line 408
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 409
    :cond_4
    instance-of v1, p1, [Ljava/lang/Object;

    if-eqz v1, :cond_1a

    .line 410
    nop

    .line 411
    check-cast p1, [Ljava/lang/Object;

    array-length v1, p1

    move v2, v0

    :goto_d
    if-ge v0, v1, :cond_19

    aget-object v3, p1, v0

    .line 412
    invoke-direct {p0, v3}, Landroid/hardware/gnss/IGnssAntennaInfoCallback$GnssAntennaInfo;->describeContents(Ljava/lang/Object;)I

    move-result v3

    or-int/2addr v2, v3

    .line 411
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 414
    :cond_19
    return v2

    .line 416
    :cond_1a
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_25

    .line 417
    check-cast p1, Landroid/os/Parcelable;

    invoke-interface {p1}, Landroid/os/Parcelable;->describeContents()I

    move-result p1

    return p1

    .line 419
    :cond_25
    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 3

    .line 399
    nop

    .line 400
    iget-object v0, p0, Landroid/hardware/gnss/IGnssAntennaInfoCallback$GnssAntennaInfo;->phaseCenterOffsetCoordinateMillimeters:Landroid/hardware/gnss/IGnssAntennaInfoCallback$Coord;

    invoke-direct {p0, v0}, Landroid/hardware/gnss/IGnssAntennaInfoCallback$GnssAntennaInfo;->describeContents(Ljava/lang/Object;)I

    move-result v0

    or-int/lit8 v0, v0, 0x0

    .line 401
    iget-object v1, p0, Landroid/hardware/gnss/IGnssAntennaInfoCallback$GnssAntennaInfo;->phaseCenterVariationCorrectionMillimeters:[Landroid/hardware/gnss/IGnssAntennaInfoCallback$Row;

    invoke-direct {p0, v1}, Landroid/hardware/gnss/IGnssAntennaInfoCallback$GnssAntennaInfo;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 402
    iget-object v1, p0, Landroid/hardware/gnss/IGnssAntennaInfoCallback$GnssAntennaInfo;->phaseCenterVariationCorrectionUncertaintyMillimeters:[Landroid/hardware/gnss/IGnssAntennaInfoCallback$Row;

    invoke-direct {p0, v1}, Landroid/hardware/gnss/IGnssAntennaInfoCallback$GnssAntennaInfo;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 403
    iget-object v1, p0, Landroid/hardware/gnss/IGnssAntennaInfoCallback$GnssAntennaInfo;->signalGainCorrectionDbi:[Landroid/hardware/gnss/IGnssAntennaInfoCallback$Row;

    invoke-direct {p0, v1}, Landroid/hardware/gnss/IGnssAntennaInfoCallback$GnssAntennaInfo;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 404
    iget-object v1, p0, Landroid/hardware/gnss/IGnssAntennaInfoCallback$GnssAntennaInfo;->signalGainCorrectionUncertaintyDbi:[Landroid/hardware/gnss/IGnssAntennaInfoCallback$Row;

    invoke-direct {p0, v1}, Landroid/hardware/gnss/IGnssAntennaInfoCallback$GnssAntennaInfo;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 405
    return v0
.end method

.method public final whitelist getStability()I
    .registers 2

    .line 344
    const/4 v0, 0x1

    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 9

    .line 374
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 375
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 377
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_d7

    .line 378
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_d5

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_25

    .line 391
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1f

    .line 394
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 378
    return-void

    .line 392
    :cond_1f
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 379
    :cond_25
    :try_start_25
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/hardware/gnss/IGnssAntennaInfoCallback$GnssAntennaInfo;->carrierFrequencyHz:J

    .line 380
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_2f
    .catchall {:try_start_25 .. :try_end_2f} :catchall_d5

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_40

    .line 391
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_3a

    .line 394
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 380
    return-void

    .line 392
    :cond_3a
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 381
    :cond_40
    :try_start_40
    sget-object v2, Landroid/hardware/gnss/IGnssAntennaInfoCallback$Coord;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/gnss/IGnssAntennaInfoCallback$Coord;

    iput-object v2, p0, Landroid/hardware/gnss/IGnssAntennaInfoCallback$GnssAntennaInfo;->phaseCenterOffsetCoordinateMillimeters:Landroid/hardware/gnss/IGnssAntennaInfoCallback$Coord;

    .line 382
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_4e
    .catchall {:try_start_40 .. :try_end_4e} :catchall_d5

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_5f

    .line 391
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_59

    .line 394
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 382
    return-void

    .line 392
    :cond_59
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 383
    :cond_5f
    :try_start_5f
    sget-object v2, Landroid/hardware/gnss/IGnssAntennaInfoCallback$Row;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/hardware/gnss/IGnssAntennaInfoCallback$Row;

    iput-object v2, p0, Landroid/hardware/gnss/IGnssAntennaInfoCallback$GnssAntennaInfo;->phaseCenterVariationCorrectionMillimeters:[Landroid/hardware/gnss/IGnssAntennaInfoCallback$Row;

    .line 384
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_6d
    .catchall {:try_start_5f .. :try_end_6d} :catchall_d5

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_7e

    .line 391
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_78

    .line 394
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 384
    return-void

    .line 392
    :cond_78
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 385
    :cond_7e
    :try_start_7e
    sget-object v2, Landroid/hardware/gnss/IGnssAntennaInfoCallback$Row;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/hardware/gnss/IGnssAntennaInfoCallback$Row;

    iput-object v2, p0, Landroid/hardware/gnss/IGnssAntennaInfoCallback$GnssAntennaInfo;->phaseCenterVariationCorrectionUncertaintyMillimeters:[Landroid/hardware/gnss/IGnssAntennaInfoCallback$Row;

    .line 386
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_8c
    .catchall {:try_start_7e .. :try_end_8c} :catchall_d5

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_9d

    .line 391
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_97

    .line 394
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 386
    return-void

    .line 392
    :cond_97
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 387
    :cond_9d
    :try_start_9d
    sget-object v2, Landroid/hardware/gnss/IGnssAntennaInfoCallback$Row;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/hardware/gnss/IGnssAntennaInfoCallback$Row;

    iput-object v2, p0, Landroid/hardware/gnss/IGnssAntennaInfoCallback$GnssAntennaInfo;->signalGainCorrectionDbi:[Landroid/hardware/gnss/IGnssAntennaInfoCallback$Row;

    .line 388
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_ab
    .catchall {:try_start_9d .. :try_end_ab} :catchall_d5

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_bc

    .line 391
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_b6

    .line 394
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 388
    return-void

    .line 392
    :cond_b6
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 389
    :cond_bc
    :try_start_bc
    sget-object v2, Landroid/hardware/gnss/IGnssAntennaInfoCallback$Row;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/hardware/gnss/IGnssAntennaInfoCallback$Row;

    iput-object v2, p0, Landroid/hardware/gnss/IGnssAntennaInfoCallback$GnssAntennaInfo;->signalGainCorrectionUncertaintyDbi:[Landroid/hardware/gnss/IGnssAntennaInfoCallback$Row;
    :try_end_c6
    .catchall {:try_start_bc .. :try_end_c6} :catchall_d5

    .line 391
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_cf

    .line 394
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 395
    nop

    .line 396
    return-void

    .line 392
    :cond_cf
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 391
    :catchall_d5
    move-exception v2

    goto :goto_df

    .line 377
    :cond_d7
    :try_start_d7
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_df
    .catchall {:try_start_d7 .. :try_end_df} :catchall_d5

    .line 391
    :goto_df
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_e8

    .line 392
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 394
    :cond_e8
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 395
    throw v2
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    .line 359
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 360
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 361
    iget-wide v1, p0, Landroid/hardware/gnss/IGnssAntennaInfoCallback$GnssAntennaInfo;->carrierFrequencyHz:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 362
    iget-object v1, p0, Landroid/hardware/gnss/IGnssAntennaInfoCallback$GnssAntennaInfo;->phaseCenterOffsetCoordinateMillimeters:Landroid/hardware/gnss/IGnssAntennaInfoCallback$Coord;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 363
    iget-object v1, p0, Landroid/hardware/gnss/IGnssAntennaInfoCallback$GnssAntennaInfo;->phaseCenterVariationCorrectionMillimeters:[Landroid/hardware/gnss/IGnssAntennaInfoCallback$Row;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 364
    iget-object v1, p0, Landroid/hardware/gnss/IGnssAntennaInfoCallback$GnssAntennaInfo;->phaseCenterVariationCorrectionUncertaintyMillimeters:[Landroid/hardware/gnss/IGnssAntennaInfoCallback$Row;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 365
    iget-object v1, p0, Landroid/hardware/gnss/IGnssAntennaInfoCallback$GnssAntennaInfo;->signalGainCorrectionDbi:[Landroid/hardware/gnss/IGnssAntennaInfoCallback$Row;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 366
    iget-object v1, p0, Landroid/hardware/gnss/IGnssAntennaInfoCallback$GnssAntennaInfo;->signalGainCorrectionUncertaintyDbi:[Landroid/hardware/gnss/IGnssAntennaInfoCallback$Row;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 367
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p2

    .line 368
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 369
    sub-int v0, p2, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 370
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 371
    return-void
.end method
