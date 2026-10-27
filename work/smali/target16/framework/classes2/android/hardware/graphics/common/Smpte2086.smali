.class public Landroid/hardware/graphics/common/Smpte2086;
.super Ljava/lang/Object;
.source "Smpte2086.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/graphics/common/Smpte2086;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist maxLuminance:F

.field public blacklist minLuminance:F

.field public blacklist primaryBlue:Landroid/hardware/graphics/common/XyColor;

.field public blacklist primaryGreen:Landroid/hardware/graphics/common/XyColor;

.field public blacklist primaryRed:Landroid/hardware/graphics/common/XyColor;

.field public blacklist whitePoint:Landroid/hardware/graphics/common/XyColor;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 21
    new-instance v0, Landroid/hardware/graphics/common/Smpte2086$1;

    invoke-direct {v0}, Landroid/hardware/graphics/common/Smpte2086$1;-><init>()V

    sput-object v0, Landroid/hardware/graphics/common/Smpte2086;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/graphics/common/Smpte2086;->maxLuminance:F

    .line 18
    iput v0, p0, Landroid/hardware/graphics/common/Smpte2086;->minLuminance:F

    return-void
.end method

.method private blacklist describeContents(Ljava/lang/Object;)I
    .registers 4

    .line 83
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 84
    :cond_4
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_f

    .line 85
    check-cast p1, Landroid/os/Parcelable;

    invoke-interface {p1}, Landroid/os/Parcelable;->describeContents()I

    move-result p1

    return p1

    .line 87
    :cond_f
    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 3

    .line 75
    nop

    .line 76
    iget-object v0, p0, Landroid/hardware/graphics/common/Smpte2086;->primaryRed:Landroid/hardware/graphics/common/XyColor;

    invoke-direct {p0, v0}, Landroid/hardware/graphics/common/Smpte2086;->describeContents(Ljava/lang/Object;)I

    move-result v0

    or-int/lit8 v0, v0, 0x0

    .line 77
    iget-object v1, p0, Landroid/hardware/graphics/common/Smpte2086;->primaryGreen:Landroid/hardware/graphics/common/XyColor;

    invoke-direct {p0, v1}, Landroid/hardware/graphics/common/Smpte2086;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 78
    iget-object v1, p0, Landroid/hardware/graphics/common/Smpte2086;->primaryBlue:Landroid/hardware/graphics/common/XyColor;

    invoke-direct {p0, v1}, Landroid/hardware/graphics/common/Smpte2086;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 79
    iget-object v1, p0, Landroid/hardware/graphics/common/Smpte2086;->whitePoint:Landroid/hardware/graphics/common/XyColor;

    invoke-direct {p0, v1}, Landroid/hardware/graphics/common/Smpte2086;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 80
    return v0
.end method

.method public final whitelist getStability()I
    .registers 2

    .line 20
    const/4 v0, 0x1

    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 8

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 53
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_d3

    .line 54
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_d1

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_25

    .line 67
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1f

    .line 70
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 54
    return-void

    .line 68
    :cond_1f
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 55
    :cond_25
    :try_start_25
    sget-object v2, Landroid/hardware/graphics/common/XyColor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/graphics/common/XyColor;

    iput-object v2, p0, Landroid/hardware/graphics/common/Smpte2086;->primaryRed:Landroid/hardware/graphics/common/XyColor;

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_33
    .catchall {:try_start_25 .. :try_end_33} :catchall_d1

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_44

    .line 67
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_3e

    .line 70
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 56
    return-void

    .line 68
    :cond_3e
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 57
    :cond_44
    :try_start_44
    sget-object v2, Landroid/hardware/graphics/common/XyColor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/graphics/common/XyColor;

    iput-object v2, p0, Landroid/hardware/graphics/common/Smpte2086;->primaryGreen:Landroid/hardware/graphics/common/XyColor;

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_52
    .catchall {:try_start_44 .. :try_end_52} :catchall_d1

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_63

    .line 67
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_5d

    .line 70
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 58
    return-void

    .line 68
    :cond_5d
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 59
    :cond_63
    :try_start_63
    sget-object v2, Landroid/hardware/graphics/common/XyColor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/graphics/common/XyColor;

    iput-object v2, p0, Landroid/hardware/graphics/common/Smpte2086;->primaryBlue:Landroid/hardware/graphics/common/XyColor;

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_71
    .catchall {:try_start_63 .. :try_end_71} :catchall_d1

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_82

    .line 67
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_7c

    .line 70
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 60
    return-void

    .line 68
    :cond_7c
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 61
    :cond_82
    :try_start_82
    sget-object v2, Landroid/hardware/graphics/common/XyColor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/graphics/common/XyColor;

    iput-object v2, p0, Landroid/hardware/graphics/common/Smpte2086;->whitePoint:Landroid/hardware/graphics/common/XyColor;

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_90
    .catchall {:try_start_82 .. :try_end_90} :catchall_d1

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_a1

    .line 67
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_9b

    .line 70
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 62
    return-void

    .line 68
    :cond_9b
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 63
    :cond_a1
    :try_start_a1
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Landroid/hardware/graphics/common/Smpte2086;->maxLuminance:F

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_ab
    .catchall {:try_start_a1 .. :try_end_ab} :catchall_d1

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_bc

    .line 67
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_b6

    .line 70
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 64
    return-void

    .line 68
    :cond_b6
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 65
    :cond_bc
    :try_start_bc
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, p0, Landroid/hardware/graphics/common/Smpte2086;->minLuminance:F
    :try_end_c2
    .catchall {:try_start_bc .. :try_end_c2} :catchall_d1

    .line 67
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_cb

    .line 70
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 71
    nop

    .line 72
    return-void

    .line 68
    :cond_cb
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 67
    :catchall_d1
    move-exception v2

    goto :goto_db

    .line 53
    :cond_d3
    :try_start_d3
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_db
    .catchall {:try_start_d3 .. :try_end_db} :catchall_d1

    .line 67
    :goto_db
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_e4

    .line 68
    new-instance p1, Landroid/os/BadParcelableException;

    invoke-direct {p1, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 70
    :cond_e4
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 71
    throw v2
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 36
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 37
    iget-object v1, p0, Landroid/hardware/graphics/common/Smpte2086;->primaryRed:Landroid/hardware/graphics/common/XyColor;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 38
    iget-object v1, p0, Landroid/hardware/graphics/common/Smpte2086;->primaryGreen:Landroid/hardware/graphics/common/XyColor;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 39
    iget-object v1, p0, Landroid/hardware/graphics/common/Smpte2086;->primaryBlue:Landroid/hardware/graphics/common/XyColor;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 40
    iget-object v1, p0, Landroid/hardware/graphics/common/Smpte2086;->whitePoint:Landroid/hardware/graphics/common/XyColor;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 41
    iget p2, p0, Landroid/hardware/graphics/common/Smpte2086;->maxLuminance:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 42
    iget p2, p0, Landroid/hardware/graphics/common/Smpte2086;->minLuminance:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p2

    .line 44
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 45
    sub-int v0, p2, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 46
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 47
    return-void
.end method
