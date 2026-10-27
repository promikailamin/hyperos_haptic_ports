.class public final Landroid/hardware/radio/RadioAlert$Coordinate;
.super Ljava/lang/Object;
.source "RadioAlert.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/RadioAlert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Coordinate"
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/radio/RadioAlert$Coordinate;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mLatitude:D

.field private final blacklist mLongitude:D


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 434
    new-instance v0, Landroid/hardware/radio/RadioAlert$Coordinate$1;

    invoke-direct {v0}, Landroid/hardware/radio/RadioAlert$Coordinate$1;-><init>()V

    sput-object v0, Landroid/hardware/radio/RadioAlert$Coordinate;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(DD)V
    .registers 7

    .line 417
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 418
    const-wide v0, -0x3fa9800000000000L    # -90.0

    cmpg-double v0, p1, v0

    if-ltz v0, :cond_34

    const-wide v0, 0x4056800000000000L    # 90.0

    cmpl-double v0, p1, v0

    if-gtz v0, :cond_34

    .line 421
    const-wide v0, -0x3f99800000000000L    # -180.0

    cmpg-double v0, p3, v0

    if-ltz v0, :cond_2c

    const-wide v0, 0x4066800000000000L    # 180.0

    cmpl-double v0, p3, v0

    if-gtz v0, :cond_2c

    .line 425
    iput-wide p1, p0, Landroid/hardware/radio/RadioAlert$Coordinate;->mLatitude:D

    .line 426
    iput-wide p3, p0, Landroid/hardware/radio/RadioAlert$Coordinate;->mLongitude:D

    .line 427
    return-void

    .line 422
    :cond_2c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Longitude value should be between -180 and 180"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 419
    :cond_34
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Latitude value should be between -90 and 90"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4

    .line 429
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 430
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/radio/RadioAlert$Coordinate;->mLatitude:D

    .line 431
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/radio/RadioAlert$Coordinate;->mLongitude:D

    .line 432
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/radio/RadioAlert-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/radio/RadioAlert$Coordinate;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 468
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9

    .line 490
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 491
    return v0

    .line 493
    :cond_4
    instance-of v1, p1, Landroid/hardware/radio/RadioAlert$Coordinate;

    const/4 v2, 0x0

    if-eqz v1, :cond_1e

    check-cast p1, Landroid/hardware/radio/RadioAlert$Coordinate;

    .line 496
    iget-wide v3, p0, Landroid/hardware/radio/RadioAlert$Coordinate;->mLatitude:D

    iget-wide v5, p1, Landroid/hardware/radio/RadioAlert$Coordinate;->mLatitude:D

    cmpl-double v1, v3, v5

    if-nez v1, :cond_1c

    iget-wide v3, p0, Landroid/hardware/radio/RadioAlert$Coordinate;->mLongitude:D

    iget-wide v5, p1, Landroid/hardware/radio/RadioAlert$Coordinate;->mLongitude:D

    cmpl-double p1, v3, v5

    if-nez p1, :cond_1c

    goto :goto_1d

    :cond_1c
    move v0, v2

    :goto_1d
    return v0

    .line 494
    :cond_1e
    return v2
.end method

.method public whitelist getLatitude()D
    .registers 3

    .line 453
    iget-wide v0, p0, Landroid/hardware/radio/RadioAlert$Coordinate;->mLatitude:D

    return-wide v0
.end method

.method public whitelist getLongitude()D
    .registers 3

    .line 463
    iget-wide v0, p0, Landroid/hardware/radio/RadioAlert$Coordinate;->mLongitude:D

    return-wide v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 485
    iget-wide v0, p0, Landroid/hardware/radio/RadioAlert$Coordinate;->mLatitude:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iget-wide v1, p0, Landroid/hardware/radio/RadioAlert$Coordinate;->mLongitude:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 480
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Coordinate [latitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/hardware/radio/RadioAlert$Coordinate;->mLatitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", longitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/hardware/radio/RadioAlert$Coordinate;->mLongitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 473
    iget-wide v0, p0, Landroid/hardware/radio/RadioAlert$Coordinate;->mLatitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 474
    iget-wide v0, p0, Landroid/hardware/radio/RadioAlert$Coordinate;->mLongitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 475
    return-void
.end method
