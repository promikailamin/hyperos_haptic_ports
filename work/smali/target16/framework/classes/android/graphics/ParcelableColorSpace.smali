.class public final Landroid/graphics/ParcelableColorSpace;
.super Ljava/lang/Object;
.source "ParcelableColorSpace.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/graphics/ParcelableColorSpace;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mColorSpace:Landroid/graphics/ColorSpace;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 113
    new-instance v0, Landroid/graphics/ParcelableColorSpace$1;

    invoke-direct {v0}, Landroid/graphics/ParcelableColorSpace$1;-><init>()V

    sput-object v0, Landroid/graphics/ParcelableColorSpace;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/graphics/ColorSpace;)V
    .registers 3

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Landroid/graphics/ParcelableColorSpace;->mColorSpace:Landroid/graphics/ColorSpace;

    .line 65
    iget-object p1, p0, Landroid/graphics/ParcelableColorSpace;->mColorSpace:Landroid/graphics/ColorSpace;

    invoke-virtual {p1}, Landroid/graphics/ColorSpace;->getId()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_2f

    .line 66
    iget-object p1, p0, Landroid/graphics/ParcelableColorSpace;->mColorSpace:Landroid/graphics/ColorSpace;

    instance-of p1, p1, Landroid/graphics/ColorSpace$Rgb;

    if-eqz p1, :cond_27

    .line 70
    iget-object p1, p0, Landroid/graphics/ParcelableColorSpace;->mColorSpace:Landroid/graphics/ColorSpace;

    check-cast p1, Landroid/graphics/ColorSpace$Rgb;

    .line 71
    invoke-virtual {p1}, Landroid/graphics/ColorSpace$Rgb;->getTransferParameters()Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    move-result-object p1

    if-eqz p1, :cond_1f

    goto :goto_2f

    .line 72
    :cond_1f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "ColorSpace must use an ICC parametric transfer function to be parcelable"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 67
    :cond_27
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unable to parcel unknown ColorSpaces that are not ColorSpace.Rgb"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 76
    :cond_2f
    :goto_2f
    return-void
.end method

.method public static whitelist isParcelable(Landroid/graphics/ColorSpace;)Z
    .registers 3

    .line 42
    invoke-virtual {p0}, Landroid/graphics/ColorSpace;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_16

    .line 43
    instance-of v0, p0, Landroid/graphics/ColorSpace$Rgb;

    const/4 v1, 0x0

    if-nez v0, :cond_d

    .line 44
    return v1

    .line 46
    :cond_d
    check-cast p0, Landroid/graphics/ColorSpace$Rgb;

    .line 47
    invoke-virtual {p0}, Landroid/graphics/ColorSpace$Rgb;->getTransferParameters()Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    move-result-object p0

    if-nez p0, :cond_16

    .line 48
    return v1

    .line 51
    :cond_16
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 87
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 4

    .line 145
    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    .line 146
    :cond_4
    if-eqz p1, :cond_1c

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_11

    goto :goto_1c

    .line 147
    :cond_11
    check-cast p1, Landroid/graphics/ParcelableColorSpace;

    .line 148
    iget-object v0, p0, Landroid/graphics/ParcelableColorSpace;->mColorSpace:Landroid/graphics/ColorSpace;

    iget-object p1, p1, Landroid/graphics/ParcelableColorSpace;->mColorSpace:Landroid/graphics/ColorSpace;

    invoke-virtual {v0, p1}, Landroid/graphics/ColorSpace;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 146
    :cond_1c
    :goto_1c
    const/4 p1, 0x0

    return p1
.end method

.method public whitelist getColorSpace()Landroid/graphics/ColorSpace;
    .registers 2

    .line 82
    iget-object v0, p0, Landroid/graphics/ParcelableColorSpace;->mColorSpace:Landroid/graphics/ColorSpace;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 153
    iget-object v0, p0, Landroid/graphics/ParcelableColorSpace;->mColorSpace:Landroid/graphics/ColorSpace;

    invoke-virtual {v0}, Landroid/graphics/ColorSpace;->hashCode()I

    move-result v0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 92
    iget-object p2, p0, Landroid/graphics/ParcelableColorSpace;->mColorSpace:Landroid/graphics/ColorSpace;

    invoke-virtual {p2}, Landroid/graphics/ColorSpace;->getId()I

    move-result p2

    .line 93
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 94
    const/4 v0, -0x1

    if-ne p2, v0, :cond_4c

    .line 97
    iget-object p2, p0, Landroid/graphics/ParcelableColorSpace;->mColorSpace:Landroid/graphics/ColorSpace;

    check-cast p2, Landroid/graphics/ColorSpace$Rgb;

    .line 98
    invoke-virtual {p2}, Landroid/graphics/ColorSpace$Rgb;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p2}, Landroid/graphics/ColorSpace$Rgb;->getPrimaries()[F

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 100
    invoke-virtual {p2}, Landroid/graphics/ColorSpace$Rgb;->getWhitePoint()[F

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 101
    invoke-virtual {p2}, Landroid/graphics/ColorSpace$Rgb;->getTransferParameters()Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    move-result-object p2

    .line 102
    iget-wide v0, p2, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->a:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 103
    iget-wide v0, p2, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->b:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 104
    iget-wide v0, p2, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->c:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 105
    iget-wide v0, p2, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->d:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 106
    iget-wide v0, p2, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->e:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 107
    iget-wide v0, p2, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->f:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 108
    iget-wide v0, p2, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->g:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 110
    :cond_4c
    return-void
.end method
