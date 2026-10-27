.class public Lcom/xiaomi/camera/imagecodec/OutputConfiguration;
.super Ljava/lang/Object;
.source "OutputConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaomi/camera/imagecodec/OutputConfiguration;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mFormat:I

.field private blacklist mHeight:I

.field private blacklist mWidth:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 82
    new-instance v0, Lcom/xiaomi/camera/imagecodec/OutputConfiguration$1;

    invoke-direct {v0}, Lcom/xiaomi/camera/imagecodec/OutputConfiguration$1;-><init>()V

    sput-object v0, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(III)V
    .registers 4
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "format"    # I

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput p1, p0, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;->mWidth:I

    .line 24
    iput p2, p0, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;->mHeight:I

    .line 25
    iput p3, p0, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;->mFormat:I

    .line 26
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;->mWidth:I

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;->mHeight:I

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;->mFormat:I

    .line 32
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 78
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 48
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 49
    return v0

    .line 51
    :cond_4
    instance-of v1, p1, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 52
    return v2

    .line 54
    :cond_a
    move-object v1, p1

    check-cast v1, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;

    .line 55
    .local v1, "that":Lcom/xiaomi/camera/imagecodec/OutputConfiguration;
    iget v3, p0, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;->mWidth:I

    iget v4, v1, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;->mWidth:I

    if-ne v3, v4, :cond_20

    iget v3, p0, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;->mHeight:I

    iget v4, v1, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;->mHeight:I

    if-ne v3, v4, :cond_20

    iget v3, p0, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;->mFormat:I

    iget v4, v1, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;->mFormat:I

    if-ne v3, v4, :cond_20

    goto :goto_21

    :cond_20
    move v0, v2

    :goto_21
    return v0
.end method

.method public blacklist getFormat()I
    .registers 2

    .line 43
    iget v0, p0, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;->mFormat:I

    return v0
.end method

.method public blacklist getHeight()I
    .registers 2

    .line 39
    iget v0, p0, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;->mHeight:I

    return v0
.end method

.method public blacklist getWidth()I
    .registers 2

    .line 35
    iget v0, p0, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;->mWidth:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 60
    const/4 v0, 0x3

    new-array v0, v0, [I

    iget v1, p0, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;->mWidth:I

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p0, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;->mHeight:I

    const/4 v2, 0x1

    aput v1, v0, v2

    iget v1, p0, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;->mFormat:I

    const/4 v2, 0x2

    aput v1, v0, v2

    invoke-static {v0}, Lcom/xiaomi/camera/imagecodec/HashCodeHelpers;->hashCode([I)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 65
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;->mWidth:I

    .line 66
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;->mHeight:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget v2, p0, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;->mFormat:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 65
    const-string v2, "OutputConfiguration(w:%d, h:%d, format:%d)"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 71
    iget v0, p0, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;->mWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 72
    iget v0, p0, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;->mHeight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 73
    iget v0, p0, Lcom/xiaomi/camera/imagecodec/OutputConfiguration;->mFormat:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 74
    return-void
.end method
