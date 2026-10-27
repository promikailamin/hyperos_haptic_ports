.class public Landroid/hardware/gnss/IGnssDebug$SatelliteData;
.super Ljava/lang/Object;
.source "IGnssDebug.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/IGnssDebug;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SatelliteData"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/gnss/IGnssDebug$SatelliteData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist constellation:I

.field public blacklist ephemerisAgeSeconds:F

.field public blacklist ephemerisHealth:I

.field public blacklist ephemerisSource:I

.field public blacklist ephemerisType:I

.field public blacklist serverPredictionAgeSeconds:F

.field public blacklist serverPredictionIsAvailable:Z

.field public blacklist svid:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 386
    new-instance v0, Landroid/hardware/gnss/IGnssDebug$SatelliteData$1;

    invoke-direct {v0}, Landroid/hardware/gnss/IGnssDebug$SatelliteData$1;-><init>()V

    sput-object v0, Landroid/hardware/gnss/IGnssDebug$SatelliteData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 374
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 376
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/gnss/IGnssDebug$SatelliteData;->svid:I

    .line 381
    const/4 v1, 0x0

    iput v1, p0, Landroid/hardware/gnss/IGnssDebug$SatelliteData;->ephemerisAgeSeconds:F

    .line 382
    iput-boolean v0, p0, Landroid/hardware/gnss/IGnssDebug$SatelliteData;->serverPredictionIsAvailable:Z

    .line 383
    iput v1, p0, Landroid/hardware/gnss/IGnssDebug$SatelliteData;->serverPredictionAgeSeconds:F

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 446
    nop

    .line 447
    const/4 v0, 0x0

    return v0
.end method

.method public final whitelist getStability()I
    .registers 2

    .line 385
    const/4 v0, 0x1

    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 8

    .line 417
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 418
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 420
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_f9

    .line 421
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_f7

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_25

    .line 438
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1f

    .line 441
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 421
    return-void

    .line 439
    :cond_1f
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 422
    :cond_25
    :try_start_25
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/gnss/IGnssDebug$SatelliteData;->svid:I

    .line 423
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_2f
    .catchall {:try_start_25 .. :try_end_2f} :catchall_f7

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_40

    .line 438
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_3a

    .line 441
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 423
    return-void

    .line 439
    :cond_3a
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 424
    :cond_40
    :try_start_40
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/gnss/IGnssDebug$SatelliteData;->constellation:I

    .line 425
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_4a
    .catchall {:try_start_40 .. :try_end_4a} :catchall_f7

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_5b

    .line 438
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_55

    .line 441
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 425
    return-void

    .line 439
    :cond_55
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 426
    :cond_5b
    :try_start_5b
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/gnss/IGnssDebug$SatelliteData;->ephemerisType:I

    .line 427
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_65
    .catchall {:try_start_5b .. :try_end_65} :catchall_f7

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_76

    .line 438
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_70

    .line 441
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 427
    return-void

    .line 439
    :cond_70
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 428
    :cond_76
    :try_start_76
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/gnss/IGnssDebug$SatelliteData;->ephemerisSource:I

    .line 429
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_80
    .catchall {:try_start_76 .. :try_end_80} :catchall_f7

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_91

    .line 438
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_8b

    .line 441
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 429
    return-void

    .line 439
    :cond_8b
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 430
    :cond_91
    :try_start_91
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/gnss/IGnssDebug$SatelliteData;->ephemerisHealth:I

    .line 431
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_9b
    .catchall {:try_start_91 .. :try_end_9b} :catchall_f7

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_ac

    .line 438
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_a6

    .line 441
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 431
    return-void

    .line 439
    :cond_a6
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 432
    :cond_ac
    :try_start_ac
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Landroid/hardware/gnss/IGnssDebug$SatelliteData;->ephemerisAgeSeconds:F

    .line 433
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_b6
    .catchall {:try_start_ac .. :try_end_b6} :catchall_f7

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_c7

    .line 438
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_c1

    .line 441
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 433
    return-void

    .line 439
    :cond_c1
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 434
    :cond_c7
    :try_start_c7
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/hardware/gnss/IGnssDebug$SatelliteData;->serverPredictionIsAvailable:Z

    .line 435
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_d1
    .catchall {:try_start_c7 .. :try_end_d1} :catchall_f7

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_e2

    .line 438
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_dc

    .line 441
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 435
    return-void

    .line 439
    :cond_dc
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 436
    :cond_e2
    :try_start_e2
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Landroid/hardware/gnss/IGnssDebug$SatelliteData;->serverPredictionAgeSeconds:F
    :try_end_e8
    .catchall {:try_start_e2 .. :try_end_e8} :catchall_f7

    .line 438
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_f1

    .line 441
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 442
    nop

    .line 443
    return-void

    .line 439
    :cond_f1
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 438
    :catchall_f7
    move-exception v2

    goto :goto_101

    .line 420
    :cond_f9
    :try_start_f9
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_101
    .catchall {:try_start_f9 .. :try_end_101} :catchall_f7

    .line 438
    :goto_101
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_10a

    .line 439
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 441
    :cond_10a
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 442
    throw v2
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 400
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p2

    .line 401
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 402
    iget v0, p0, Landroid/hardware/gnss/IGnssDebug$SatelliteData;->svid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 403
    iget v0, p0, Landroid/hardware/gnss/IGnssDebug$SatelliteData;->constellation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 404
    iget v0, p0, Landroid/hardware/gnss/IGnssDebug$SatelliteData;->ephemerisType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 405
    iget v0, p0, Landroid/hardware/gnss/IGnssDebug$SatelliteData;->ephemerisSource:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 406
    iget v0, p0, Landroid/hardware/gnss/IGnssDebug$SatelliteData;->ephemerisHealth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 407
    iget v0, p0, Landroid/hardware/gnss/IGnssDebug$SatelliteData;->ephemerisAgeSeconds:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 408
    iget-boolean v0, p0, Landroid/hardware/gnss/IGnssDebug$SatelliteData;->serverPredictionIsAvailable:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 409
    iget v0, p0, Landroid/hardware/gnss/IGnssDebug$SatelliteData;->serverPredictionAgeSeconds:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 410
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 411
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 412
    sub-int p2, v0, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 413
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 414
    return-void
.end method
