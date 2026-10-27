.class public Lcom/xiaomi/engine/PreProcessData;
.super Ljava/lang/Object;
.source "PreProcessData.java"


# instance fields
.field private blacklist mCameraId:I

.field private blacklist mCaptureRequestMetadataNative:Landroid/os/Parcelable;

.field private blacklist mFormat:I

.field private blacklist mHeight:I

.field private blacklist mWidth:I


# direct methods
.method public constructor blacklist <init>(IIIILandroid/os/Parcelable;)V
    .registers 6
    .param p1, "cameraId"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "format"    # I
    .param p5, "captureRequestMetaDataNative"    # Landroid/os/Parcelable;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput p1, p0, Lcom/xiaomi/engine/PreProcessData;->mCameraId:I

    .line 32
    iput p2, p0, Lcom/xiaomi/engine/PreProcessData;->mWidth:I

    .line 33
    iput p3, p0, Lcom/xiaomi/engine/PreProcessData;->mHeight:I

    .line 34
    iput p4, p0, Lcom/xiaomi/engine/PreProcessData;->mFormat:I

    .line 35
    iput-object p5, p0, Lcom/xiaomi/engine/PreProcessData;->mCaptureRequestMetadataNative:Landroid/os/Parcelable;

    .line 36
    return-void
.end method


# virtual methods
.method public blacklist getCameraId()I
    .registers 2

    .line 39
    iget v0, p0, Lcom/xiaomi/engine/PreProcessData;->mCameraId:I

    return v0
.end method

.method public blacklist getCaptureRequestMetaDataNative()Landroid/os/Parcelable;
    .registers 2

    .line 71
    iget-object v0, p0, Lcom/xiaomi/engine/PreProcessData;->mCaptureRequestMetadataNative:Landroid/os/Parcelable;

    return-object v0
.end method

.method public blacklist getFormat()I
    .registers 2

    .line 63
    iget v0, p0, Lcom/xiaomi/engine/PreProcessData;->mFormat:I

    return v0
.end method

.method public blacklist getHeight()I
    .registers 2

    .line 55
    iget v0, p0, Lcom/xiaomi/engine/PreProcessData;->mHeight:I

    return v0
.end method

.method public blacklist getWidth()I
    .registers 2

    .line 47
    iget v0, p0, Lcom/xiaomi/engine/PreProcessData;->mWidth:I

    return v0
.end method

.method public blacklist setCameraId(I)V
    .registers 2
    .param p1, "cameraId"    # I

    .line 43
    iput p1, p0, Lcom/xiaomi/engine/PreProcessData;->mCameraId:I

    .line 44
    return-void
.end method

.method public blacklist setCaptureRequestMetaDataNative(Landroid/os/Parcelable;)V
    .registers 2
    .param p1, "algorithmMetaData"    # Landroid/os/Parcelable;

    .line 75
    iput-object p1, p0, Lcom/xiaomi/engine/PreProcessData;->mCaptureRequestMetadataNative:Landroid/os/Parcelable;

    .line 76
    return-void
.end method

.method public blacklist setFormat(I)V
    .registers 2
    .param p1, "format"    # I

    .line 67
    iput p1, p0, Lcom/xiaomi/engine/PreProcessData;->mFormat:I

    .line 68
    return-void
.end method

.method public blacklist setHeight(I)V
    .registers 2
    .param p1, "height"    # I

    .line 59
    iput p1, p0, Lcom/xiaomi/engine/PreProcessData;->mHeight:I

    .line 60
    return-void
.end method

.method public blacklist setWidth(I)V
    .registers 2
    .param p1, "width"    # I

    .line 51
    iput p1, p0, Lcom/xiaomi/engine/PreProcessData;->mWidth:I

    .line 52
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PreProcessData{ mCameraId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaomi/engine/PreProcessData;->mCameraId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaomi/engine/PreProcessData;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaomi/engine/PreProcessData;->mHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mFormat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaomi/engine/PreProcessData;->mFormat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCaptureRequestMetadataNative="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/engine/PreProcessData;->mCaptureRequestMetadataNative:Landroid/os/Parcelable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
