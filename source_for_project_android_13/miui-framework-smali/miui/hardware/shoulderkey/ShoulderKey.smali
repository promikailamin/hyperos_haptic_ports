.class public Lmiui/hardware/shoulderkey/ShoulderKey;
.super Ljava/lang/Object;
.source "ShoulderKey.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lmiui/hardware/shoulderkey/ShoulderKey;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field blacklist mExtra:Landroid/os/Bundle;

.field private blacklist mKeycode:I

.field private blacklist mProductId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 56
    new-instance v0, Lmiui/hardware/shoulderkey/ShoulderKey$1;

    invoke-direct {v0}, Lmiui/hardware/shoulderkey/ShoulderKey$1;-><init>()V

    sput-object v0, Lmiui/hardware/shoulderkey/ShoulderKey;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(II)V
    .registers 4
    .param p1, "productId"    # I
    .param p2, "keycode"    # I

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput p1, p0, Lmiui/hardware/shoulderkey/ShoulderKey;->mProductId:I

    .line 23
    iput p2, p0, Lmiui/hardware/shoulderkey/ShoulderKey;->mKeycode:I

    .line 24
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lmiui/hardware/shoulderkey/ShoulderKey;->mExtra:Landroid/os/Bundle;

    .line 25
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmiui/hardware/shoulderkey/ShoulderKey;->mProductId:I

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmiui/hardware/shoulderkey/ShoulderKey;->mKeycode:I

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lmiui/hardware/shoulderkey/ShoulderKey;->mExtra:Landroid/os/Bundle;

    .line 19
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist equals(II)Z
    .registers 4
    .param p1, "productId"    # I
    .param p2, "keycode"    # I

    .line 44
    iget v0, p0, Lmiui/hardware/shoulderkey/ShoulderKey;->mProductId:I

    if-ne v0, p1, :cond_a

    iget v0, p0, Lmiui/hardware/shoulderkey/ShoulderKey;->mKeycode:I

    if-ne v0, p2, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public blacklist getExtra()Landroid/os/Bundle;
    .registers 2

    .line 36
    iget-object v0, p0, Lmiui/hardware/shoulderkey/ShoulderKey;->mExtra:Landroid/os/Bundle;

    return-object v0
.end method

.method public blacklist getKeycode()I
    .registers 2

    .line 32
    iget v0, p0, Lmiui/hardware/shoulderkey/ShoulderKey;->mKeycode:I

    return v0
.end method

.method public blacklist getProductId()I
    .registers 2

    .line 28
    iget v0, p0, Lmiui/hardware/shoulderkey/ShoulderKey;->mProductId:I

    return v0
.end method

.method public blacklist setExtra(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "extra"    # Landroid/os/Bundle;

    .line 40
    iput-object p1, p0, Lmiui/hardware/shoulderkey/ShoulderKey;->mExtra:Landroid/os/Bundle;

    .line 41
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ShoulderKey{productId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lmiui/hardware/shoulderkey/ShoulderKey;->mProductId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", keycode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lmiui/hardware/shoulderkey/ShoulderKey;->mKeycode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mExtra="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmiui/hardware/shoulderkey/ShoulderKey;->mExtra:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flag"    # I

    .line 75
    iget v0, p0, Lmiui/hardware/shoulderkey/ShoulderKey;->mProductId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 76
    iget v0, p0, Lmiui/hardware/shoulderkey/ShoulderKey;->mKeycode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 77
    iget-object v0, p0, Lmiui/hardware/shoulderkey/ShoulderKey;->mExtra:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 78
    return-void
.end method
