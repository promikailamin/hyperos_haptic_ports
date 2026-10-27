.class public Lcom/xiaomi/protocol/IImageReaderParameterSets;
.super Ljava/lang/Object;
.source "IImageReaderParameterSets.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaomi/protocol/IImageReaderParameterSets;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist cameraType:I

.field public blacklist format:I

.field public blacklist height:I

.field public blacklist imageType:I

.field public blacklist isParallel:Z

.field private blacklist mPhysicCameraId:I

.field public blacklist maxImages:I

.field private blacklist shouldHoldImages:Z

.field public blacklist width:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 118
    new-instance v0, Lcom/xiaomi/protocol/IImageReaderParameterSets$1;

    invoke-direct {v0}, Lcom/xiaomi/protocol/IImageReaderParameterSets$1;-><init>()V

    sput-object v0, Lcom/xiaomi/protocol/IImageReaderParameterSets;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(IIIIII)V
    .registers 8
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "format"    # I
    .param p4, "maxImages"    # I
    .param p5, "imageType"    # I
    .param p6, "cameraType"    # I

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/protocol/IImageReaderParameterSets;->shouldHoldImages:Z

    .line 20
    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaomi/protocol/IImageReaderParameterSets;->mPhysicCameraId:I

    .line 25
    iput p1, p0, Lcom/xiaomi/protocol/IImageReaderParameterSets;->width:I

    .line 26
    iput p2, p0, Lcom/xiaomi/protocol/IImageReaderParameterSets;->height:I

    .line 27
    iput p3, p0, Lcom/xiaomi/protocol/IImageReaderParameterSets;->format:I

    .line 28
    iput p4, p0, Lcom/xiaomi/protocol/IImageReaderParameterSets;->maxImages:I

    .line 29
    iput p5, p0, Lcom/xiaomi/protocol/IImageReaderParameterSets;->imageType:I

    .line 30
    iput p6, p0, Lcom/xiaomi/protocol/IImageReaderParameterSets;->cameraType:I

    .line 31
    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/protocol/IImageReaderParameterSets;->shouldHoldImages:Z

    .line 20
    const/4 v1, -0x1

    iput v1, p0, Lcom/xiaomi/protocol/IImageReaderParameterSets;->mPhysicCameraId:I

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/xiaomi/protocol/IImageReaderParameterSets;->width:I

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/xiaomi/protocol/IImageReaderParameterSets;->height:I

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/xiaomi/protocol/IImageReaderParameterSets;->format:I

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/xiaomi/protocol/IImageReaderParameterSets;->maxImages:I

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/xiaomi/protocol/IImageReaderParameterSets;->imageType:I

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_30

    move v1, v0

    goto :goto_31

    :cond_30
    move v1, v2

    :goto_31
    iput-boolean v1, p0, Lcom/xiaomi/protocol/IImageReaderParameterSets;->shouldHoldImages:Z

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_3a

    goto :goto_3b

    :cond_3a
    move v0, v2

    :goto_3b
    iput-boolean v0, p0, Lcom/xiaomi/protocol/IImageReaderParameterSets;->isParallel:Z

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/protocol/IImageReaderParameterSets;->cameraType:I

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaomi/protocol/IImageReaderParameterSets;->mPhysicCameraId:I

    .line 115
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 89
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 72
    instance-of v0, p1, Lcom/xiaomi/protocol/IImageReaderParameterSets;

    if-eqz v0, :cond_3b

    .line 73
    move-object v0, p1

    check-cast v0, Lcom/xiaomi/protocol/IImageReaderParameterSets;

    .line 74
    .local v0, "sets":Lcom/xiaomi/protocol/IImageReaderParameterSets;
    iget v1, p0, Lcom/xiaomi/protocol/IImageReaderParameterSets;->imageType:I

    iget v2, v0, Lcom/xiaomi/protocol/IImageReaderParameterSets;->imageType:I

    if-ne v1, v2, :cond_39

    iget v1, p0, Lcom/xiaomi/protocol/IImageReaderParameterSets;->cameraType:I

    iget v2, v0, Lcom/xiaomi/protocol/IImageReaderParameterSets;->cameraType:I

    if-ne v1, v2, :cond_39

    iget v1, p0, Lcom/xiaomi/protocol/IImageReaderParameterSets;->width:I

    iget v2, v0, Lcom/xiaomi/protocol/IImageReaderParameterSets;->width:I

    if-ne v1, v2, :cond_39

    iget v1, p0, Lcom/xiaomi/protocol/IImageReaderParameterSets;->height:I

    iget v2, v0, Lcom/xiaomi/protocol/IImageReaderParameterSets;->height:I

    if-ne v1, v2, :cond_39

    iget v1, p0, Lcom/xiaomi/protocol/IImageReaderParameterSets;->format:I

    iget v2, v0, Lcom/xiaomi/protocol/IImageReaderParameterSets;->format:I

    if-ne v1, v2, :cond_39

    iget v1, p0, Lcom/xiaomi/protocol/IImageReaderParameterSets;->maxImages:I

    iget v2, v0, Lcom/xiaomi/protocol/IImageReaderParameterSets;->maxImages:I

    if-ne v1, v2, :cond_39

    iget-boolean v1, p0, Lcom/xiaomi/protocol/IImageReaderParameterSets;->shouldHoldImages:Z

    iget-boolean v2, v0, Lcom/xiaomi/protocol/IImageReaderParameterSets;->shouldHoldImages:Z

    if-ne v1, v2, :cond_39

    iget v1, p0, Lcom/xiaomi/protocol/IImageReaderParameterSets;->mPhysicCameraId:I

    iget v2, v0, Lcom/xiaomi/protocol/IImageReaderParameterSets;->mPhysicCameraId:I

    if-ne v1, v2, :cond_39

    const/4 v1, 0x1

    goto :goto_3a

    :cond_39
    const/4 v1, 0x0

    :goto_3a
    return v1

    .line 84
    .end local v0    # "sets":Lcom/xiaomi/protocol/IImageReaderParameterSets;
    :cond_3b
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public blacklist getPhysicCameraId()I
    .registers 2

    .line 51
    iget v0, p0, Lcom/xiaomi/protocol/IImageReaderParameterSets;->mPhysicCameraId:I

    return v0
.end method

.method public blacklist isShouldHoldImages()Z
    .registers 2

    .line 40
    iget-boolean v0, p0, Lcom/xiaomi/protocol/IImageReaderParameterSets;->shouldHoldImages:Z

    return v0
.end method

.method public blacklist setPhysicCameraId(I)V
    .registers 2
    .param p1, "id"    # I

    .line 55
    iput p1, p0, Lcom/xiaomi/protocol/IImageReaderParameterSets;->mPhysicCameraId:I

    .line 56
    return-void
.end method

.method public blacklist setShouldHoldImages(Z)V
    .registers 2
    .param p1, "shouldHoldImages"    # Z

    .line 47
    iput-boolean p1, p0, Lcom/xiaomi/protocol/IImageReaderParameterSets;->shouldHoldImages:Z

    .line 48
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 60
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/xiaomi/protocol/IImageReaderParameterSets;->width:I

    .line 61
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Lcom/xiaomi/protocol/IImageReaderParameterSets;->height:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget v2, p0, Lcom/xiaomi/protocol/IImageReaderParameterSets;->format:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget v2, p0, Lcom/xiaomi/protocol/IImageReaderParameterSets;->maxImages:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    iget v2, p0, Lcom/xiaomi/protocol/IImageReaderParameterSets;->imageType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    iget v2, p0, Lcom/xiaomi/protocol/IImageReaderParameterSets;->cameraType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v1, v3

    iget-boolean v2, p0, Lcom/xiaomi/protocol/IImageReaderParameterSets;->shouldHoldImages:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x6

    aput-object v2, v1, v3

    iget v2, p0, Lcom/xiaomi/protocol/IImageReaderParameterSets;->mPhysicCameraId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x7

    aput-object v2, v1, v3

    .line 60
    const-string v2, "IImageReaderParameterSets[ %d, %d, %d, %d, %s, %s, %s, %d]"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 94
    iget v0, p0, Lcom/xiaomi/protocol/IImageReaderParameterSets;->width:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 95
    iget v0, p0, Lcom/xiaomi/protocol/IImageReaderParameterSets;->height:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 96
    iget v0, p0, Lcom/xiaomi/protocol/IImageReaderParameterSets;->format:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 97
    iget v0, p0, Lcom/xiaomi/protocol/IImageReaderParameterSets;->maxImages:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    iget v0, p0, Lcom/xiaomi/protocol/IImageReaderParameterSets;->imageType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 99
    iget-boolean v0, p0, Lcom/xiaomi/protocol/IImageReaderParameterSets;->shouldHoldImages:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 100
    iget-boolean v0, p0, Lcom/xiaomi/protocol/IImageReaderParameterSets;->isParallel:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 101
    iget v0, p0, Lcom/xiaomi/protocol/IImageReaderParameterSets;->cameraType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 102
    iget v0, p0, Lcom/xiaomi/protocol/IImageReaderParameterSets;->mPhysicCameraId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 103
    return-void
.end method
