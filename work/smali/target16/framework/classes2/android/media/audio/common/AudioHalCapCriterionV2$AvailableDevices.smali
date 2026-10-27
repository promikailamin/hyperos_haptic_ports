.class public Landroid/media/audio/common/AudioHalCapCriterionV2$AvailableDevices;
.super Ljava/lang/Object;
.source "AudioHalCapCriterionV2.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/audio/common/AudioHalCapCriterionV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AvailableDevices"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/audio/common/AudioHalCapCriterionV2$AvailableDevices;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist logic:B

.field public blacklist values:[Landroid/media/audio/common/AudioDeviceDescription;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 404
    new-instance v0, Landroid/media/audio/common/AudioHalCapCriterionV2$AvailableDevices$1;

    invoke-direct {v0}, Landroid/media/audio/common/AudioHalCapCriterionV2$AvailableDevices$1;-><init>()V

    sput-object v0, Landroid/media/audio/common/AudioHalCapCriterionV2$AvailableDevices;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 398
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 401
    const/4 v0, 0x1

    iput-byte v0, p0, Landroid/media/audio/common/AudioHalCapCriterionV2$AvailableDevices;->logic:B

    return-void
.end method

.method private blacklist describeContents(Ljava/lang/Object;)I
    .registers 6

    .line 451
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 452
    :cond_4
    instance-of v1, p1, [Ljava/lang/Object;

    if-eqz v1, :cond_1a

    .line 453
    nop

    .line 454
    check-cast p1, [Ljava/lang/Object;

    array-length v1, p1

    move v2, v0

    :goto_d
    if-ge v0, v1, :cond_19

    aget-object v3, p1, v0

    .line 455
    invoke-direct {p0, v3}, Landroid/media/audio/common/AudioHalCapCriterionV2$AvailableDevices;->describeContents(Ljava/lang/Object;)I

    move-result v3

    or-int/2addr v2, v3

    .line 454
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 457
    :cond_19
    return v2

    .line 459
    :cond_1a
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_25

    .line 460
    check-cast p1, Landroid/os/Parcelable;

    invoke-interface {p1}, Landroid/os/Parcelable;->describeContents()I

    move-result p1

    return p1

    .line 462
    :cond_25
    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 446
    nop

    .line 447
    iget-object v0, p0, Landroid/media/audio/common/AudioHalCapCriterionV2$AvailableDevices;->values:[Landroid/media/audio/common/AudioDeviceDescription;

    invoke-direct {p0, v0}, Landroid/media/audio/common/AudioHalCapCriterionV2$AvailableDevices;->describeContents(Ljava/lang/Object;)I

    move-result v0

    or-int/lit8 v0, v0, 0x0

    .line 448
    return v0
.end method

.method public final whitelist getStability()I
    .registers 2

    .line 403
    const/4 v0, 0x1

    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 8

    .line 429
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 430
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 432
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_5b

    .line 433
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_59

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_25

    .line 438
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1f

    .line 441
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 433
    return-void

    .line 439
    :cond_1f
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 434
    :cond_25
    :try_start_25
    sget-object v2, Landroid/media/audio/common/AudioDeviceDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/media/audio/common/AudioDeviceDescription;

    iput-object v2, p0, Landroid/media/audio/common/AudioHalCapCriterionV2$AvailableDevices;->values:[Landroid/media/audio/common/AudioDeviceDescription;

    .line 435
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_33
    .catchall {:try_start_25 .. :try_end_33} :catchall_59

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_44

    .line 438
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_3e

    .line 441
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 435
    return-void

    .line 439
    :cond_3e
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 436
    :cond_44
    :try_start_44
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    iput-byte v2, p0, Landroid/media/audio/common/AudioHalCapCriterionV2$AvailableDevices;->logic:B
    :try_end_4a
    .catchall {:try_start_44 .. :try_end_4a} :catchall_59

    .line 438
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_53

    .line 441
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 442
    nop

    .line 443
    return-void

    .line 439
    :cond_53
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 438
    :catchall_59
    move-exception v2

    goto :goto_63

    .line 432
    :cond_5b
    :try_start_5b
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_63
    .catchall {:try_start_5b .. :try_end_63} :catchall_59

    .line 438
    :goto_63
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_6c

    .line 439
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 441
    :cond_6c
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 442
    throw v2
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 418
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 419
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 420
    iget-object v1, p0, Landroid/media/audio/common/AudioHalCapCriterionV2$AvailableDevices;->values:[Landroid/media/audio/common/AudioDeviceDescription;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 421
    iget-byte p2, p0, Landroid/media/audio/common/AudioHalCapCriterionV2$AvailableDevices;->logic:B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 422
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p2

    .line 423
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 424
    sub-int v0, p2, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 425
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 426
    return-void
.end method
