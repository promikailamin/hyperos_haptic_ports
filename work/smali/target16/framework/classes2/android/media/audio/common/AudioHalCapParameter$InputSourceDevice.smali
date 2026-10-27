.class public Landroid/media/audio/common/AudioHalCapParameter$InputSourceDevice;
.super Ljava/lang/Object;
.source "AudioHalCapParameter.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/audio/common/AudioHalCapParameter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InputSourceDevice"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/audio/common/AudioHalCapParameter$InputSourceDevice;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist device:Landroid/media/audio/common/AudioDeviceDescription;

.field public blacklist inputSource:I

.field public blacklist isSelected:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 281
    new-instance v0, Landroid/media/audio/common/AudioHalCapParameter$InputSourceDevice$1;

    invoke-direct {v0}, Landroid/media/audio/common/AudioHalCapParameter$InputSourceDevice$1;-><init>()V

    sput-object v0, Landroid/media/audio/common/AudioHalCapParameter$InputSourceDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 274
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 277
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/audio/common/AudioHalCapParameter$InputSourceDevice;->inputSource:I

    .line 278
    iput-boolean v0, p0, Landroid/media/audio/common/AudioHalCapParameter$InputSourceDevice;->isSelected:Z

    return-void
.end method

.method private blacklist describeContents(Ljava/lang/Object;)I
    .registers 4

    .line 331
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 332
    :cond_4
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_f

    .line 333
    check-cast p1, Landroid/os/Parcelable;

    invoke-interface {p1}, Landroid/os/Parcelable;->describeContents()I

    move-result p1

    return p1

    .line 335
    :cond_f
    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 326
    nop

    .line 327
    iget-object v0, p0, Landroid/media/audio/common/AudioHalCapParameter$InputSourceDevice;->device:Landroid/media/audio/common/AudioDeviceDescription;

    invoke-direct {p0, v0}, Landroid/media/audio/common/AudioHalCapParameter$InputSourceDevice;->describeContents(Ljava/lang/Object;)I

    move-result v0

    or-int/lit8 v0, v0, 0x0

    .line 328
    return v0
.end method

.method public final whitelist getStability()I
    .registers 2

    .line 280
    const/4 v0, 0x1

    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 8

    .line 307
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 308
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 310
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_76

    .line 311
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_74

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_25

    .line 318
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1f

    .line 321
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 311
    return-void

    .line 319
    :cond_1f
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 312
    :cond_25
    :try_start_25
    sget-object v2, Landroid/media/audio/common/AudioDeviceDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/audio/common/AudioDeviceDescription;

    iput-object v2, p0, Landroid/media/audio/common/AudioHalCapParameter$InputSourceDevice;->device:Landroid/media/audio/common/AudioDeviceDescription;

    .line 313
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_33
    .catchall {:try_start_25 .. :try_end_33} :catchall_74

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_44

    .line 318
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_3e

    .line 321
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 313
    return-void

    .line 319
    :cond_3e
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 314
    :cond_44
    :try_start_44
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/media/audio/common/AudioHalCapParameter$InputSourceDevice;->inputSource:I

    .line 315
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_4e
    .catchall {:try_start_44 .. :try_end_4e} :catchall_74

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_5f

    .line 318
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_59

    .line 321
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 315
    return-void

    .line 319
    :cond_59
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 316
    :cond_5f
    :try_start_5f
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/media/audio/common/AudioHalCapParameter$InputSourceDevice;->isSelected:Z
    :try_end_65
    .catchall {:try_start_5f .. :try_end_65} :catchall_74

    .line 318
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_6e

    .line 321
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 322
    nop

    .line 323
    return-void

    .line 319
    :cond_6e
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 318
    :catchall_74
    move-exception v2

    goto :goto_7e

    .line 310
    :cond_76
    :try_start_76
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_7e
    .catchall {:try_start_76 .. :try_end_7e} :catchall_74

    .line 318
    :goto_7e
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_87

    .line 319
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 321
    :cond_87
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 322
    throw v2
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 295
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 296
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 297
    iget-object v1, p0, Landroid/media/audio/common/AudioHalCapParameter$InputSourceDevice;->device:Landroid/media/audio/common/AudioDeviceDescription;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 298
    iget p2, p0, Landroid/media/audio/common/AudioHalCapParameter$InputSourceDevice;->inputSource:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 299
    iget-boolean p2, p0, Landroid/media/audio/common/AudioHalCapParameter$InputSourceDevice;->isSelected:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 300
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p2

    .line 301
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 302
    sub-int v0, p2, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 303
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 304
    return-void
.end method
