.class public Lcom/xiaomi/engine/FrameData;
.super Ljava/lang/Object;
.source "FrameData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/engine/FrameData$FrameStatusCallback;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private blacklist mBufferImage:Landroid/media/Image;

.field private blacklist mCaptureRequestMetadataNative:Landroid/os/Parcelable;

.field private blacklist mCaptureResultMetadataNative:Landroid/os/Parcelable;

.field private blacklist mFrameNumber:J

.field private blacklist mFrameStatusCallback:Lcom/xiaomi/engine/FrameData$FrameStatusCallback;

.field private blacklist mImageFlag:I

.field private blacklist mPhysicalResultMetadataNative:Landroid/os/Parcelable;

.field private blacklist mSequenceId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 20
    const-class v0, Lcom/xiaomi/engine/FrameData;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/engine/FrameData;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(IIJLandroid/os/Parcelable;Landroid/media/Image;)V
    .registers 7
    .param p1, "imageFlag"    # I
    .param p2, "sequenceId"    # I
    .param p3, "frameNumber"    # J
    .param p5, "captureResultMetaDataNative"    # Landroid/os/Parcelable;
    .param p6, "buffer"    # Landroid/media/Image;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput p1, p0, Lcom/xiaomi/engine/FrameData;->mImageFlag:I

    .line 50
    iput p2, p0, Lcom/xiaomi/engine/FrameData;->mSequenceId:I

    .line 51
    iput-wide p3, p0, Lcom/xiaomi/engine/FrameData;->mFrameNumber:J

    .line 52
    iput-object p5, p0, Lcom/xiaomi/engine/FrameData;->mCaptureResultMetadataNative:Landroid/os/Parcelable;

    .line 53
    iput-object p6, p0, Lcom/xiaomi/engine/FrameData;->mBufferImage:Landroid/media/Image;

    .line 54
    return-void
.end method

.method public constructor blacklist <init>(IIJLandroid/os/Parcelable;Landroid/os/Parcelable;Landroid/media/Image;)V
    .registers 8
    .param p1, "imageFlag"    # I
    .param p2, "sequenceId"    # I
    .param p3, "frameNumber"    # J
    .param p5, "captureResultMetaDataNative"    # Landroid/os/Parcelable;
    .param p6, "captureRequestMetaDataNative"    # Landroid/os/Parcelable;
    .param p7, "buffer"    # Landroid/media/Image;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput p1, p0, Lcom/xiaomi/engine/FrameData;->mImageFlag:I

    .line 66
    iput p2, p0, Lcom/xiaomi/engine/FrameData;->mSequenceId:I

    .line 67
    iput-wide p3, p0, Lcom/xiaomi/engine/FrameData;->mFrameNumber:J

    .line 68
    iput-object p5, p0, Lcom/xiaomi/engine/FrameData;->mCaptureResultMetadataNative:Landroid/os/Parcelable;

    .line 69
    iput-object p6, p0, Lcom/xiaomi/engine/FrameData;->mCaptureRequestMetadataNative:Landroid/os/Parcelable;

    .line 70
    iput-object p7, p0, Lcom/xiaomi/engine/FrameData;->mBufferImage:Landroid/media/Image;

    .line 71
    return-void
.end method


# virtual methods
.method public blacklist getBufferImage()Landroid/media/Image;
    .registers 2

    .line 129
    iget-object v0, p0, Lcom/xiaomi/engine/FrameData;->mBufferImage:Landroid/media/Image;

    return-object v0
.end method

.method public blacklist getCaptureRequestMetaDataNative()Landroid/os/Parcelable;
    .registers 2

    .line 121
    iget-object v0, p0, Lcom/xiaomi/engine/FrameData;->mCaptureRequestMetadataNative:Landroid/os/Parcelable;

    return-object v0
.end method

.method public blacklist getCaptureResultMetaDataNative()Landroid/os/Parcelable;
    .registers 2

    .line 113
    iget-object v0, p0, Lcom/xiaomi/engine/FrameData;->mCaptureResultMetadataNative:Landroid/os/Parcelable;

    return-object v0
.end method

.method public blacklist getFrameCallback()Lcom/xiaomi/engine/FrameData$FrameStatusCallback;
    .registers 2

    .line 137
    iget-object v0, p0, Lcom/xiaomi/engine/FrameData;->mFrameStatusCallback:Lcom/xiaomi/engine/FrameData$FrameStatusCallback;

    return-object v0
.end method

.method public blacklist getFrameNumber()J
    .registers 3

    .line 97
    iget-wide v0, p0, Lcom/xiaomi/engine/FrameData;->mFrameNumber:J

    return-wide v0
.end method

.method public blacklist getImageFlag()I
    .registers 2

    .line 89
    iget v0, p0, Lcom/xiaomi/engine/FrameData;->mImageFlag:I

    return v0
.end method

.method public blacklist getPhysicalResultMetadata()Landroid/os/Parcelable;
    .registers 2

    .line 149
    iget-object v0, p0, Lcom/xiaomi/engine/FrameData;->mPhysicalResultMetadataNative:Landroid/os/Parcelable;

    return-object v0
.end method

.method public blacklist getSequenceId()I
    .registers 2

    .line 105
    iget v0, p0, Lcom/xiaomi/engine/FrameData;->mSequenceId:I

    return v0
.end method

.method public blacklist release()V
    .registers 4

    .line 77
    iget-object v0, p0, Lcom/xiaomi/engine/FrameData;->mBufferImage:Landroid/media/Image;

    if-eqz v0, :cond_2c

    .line 78
    sget-object v0, Lcom/xiaomi/engine/FrameData;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "release: close Image: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/engine/FrameData;->mBufferImage:Landroid/media/Image;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iget-object v0, p0, Lcom/xiaomi/engine/FrameData;->mBufferImage:Landroid/media/Image;

    invoke-virtual {v0}, Landroid/media/Image;->close()V

    .line 80
    iget-object v0, p0, Lcom/xiaomi/engine/FrameData;->mFrameStatusCallback:Lcom/xiaomi/engine/FrameData$FrameStatusCallback;

    if-eqz v0, :cond_2c

    .line 81
    iget-object v1, p0, Lcom/xiaomi/engine/FrameData;->mBufferImage:Landroid/media/Image;

    invoke-interface {v0, v1}, Lcom/xiaomi/engine/FrameData$FrameStatusCallback;->onFrameImageClosed(Landroid/media/Image;)V

    .line 85
    :cond_2c
    return-void
.end method

.method public blacklist setBufferImage(Landroid/media/Image;)V
    .registers 2
    .param p1, "buffer"    # Landroid/media/Image;

    .line 133
    iput-object p1, p0, Lcom/xiaomi/engine/FrameData;->mBufferImage:Landroid/media/Image;

    .line 134
    return-void
.end method

.method public blacklist setCaptureRequestMetaDataNative(Landroid/os/Parcelable;)V
    .registers 2
    .param p1, "algorithmMetaData"    # Landroid/os/Parcelable;

    .line 125
    iput-object p1, p0, Lcom/xiaomi/engine/FrameData;->mCaptureRequestMetadataNative:Landroid/os/Parcelable;

    .line 126
    return-void
.end method

.method public blacklist setCaptureResultMetaDataNative(Landroid/os/Parcelable;)V
    .registers 2
    .param p1, "algorithmMetaData"    # Landroid/os/Parcelable;

    .line 117
    iput-object p1, p0, Lcom/xiaomi/engine/FrameData;->mCaptureResultMetadataNative:Landroid/os/Parcelable;

    .line 118
    return-void
.end method

.method public blacklist setFrameCallback(Lcom/xiaomi/engine/FrameData$FrameStatusCallback;)V
    .registers 2
    .param p1, "frameStatusCallback"    # Lcom/xiaomi/engine/FrameData$FrameStatusCallback;

    .line 141
    iput-object p1, p0, Lcom/xiaomi/engine/FrameData;->mFrameStatusCallback:Lcom/xiaomi/engine/FrameData$FrameStatusCallback;

    .line 142
    return-void
.end method

.method public blacklist setFrameNumber(J)V
    .registers 3
    .param p1, "frameNumber"    # J

    .line 101
    iput-wide p1, p0, Lcom/xiaomi/engine/FrameData;->mFrameNumber:J

    .line 102
    return-void
.end method

.method public blacklist setImageFlag(I)V
    .registers 2
    .param p1, "streamIndex"    # I

    .line 93
    iput p1, p0, Lcom/xiaomi/engine/FrameData;->mImageFlag:I

    .line 94
    return-void
.end method

.method public blacklist setPhysicalResultMetadata(Landroid/os/Parcelable;)V
    .registers 2
    .param p1, "meta"    # Landroid/os/Parcelable;

    .line 145
    iput-object p1, p0, Lcom/xiaomi/engine/FrameData;->mPhysicalResultMetadataNative:Landroid/os/Parcelable;

    .line 146
    return-void
.end method

.method public blacklist setSequenceId(I)V
    .registers 2
    .param p1, "sequenceId"    # I

    .line 109
    iput p1, p0, Lcom/xiaomi/engine/FrameData;->mSequenceId:I

    .line 110
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FrameData{ mImageFlag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xiaomi/engine/FrameData;->mImageFlag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mFrameNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/xiaomi/engine/FrameData;->mFrameNumber:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCaptureResultMetadataNative="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/engine/FrameData;->mCaptureResultMetadataNative:Landroid/os/Parcelable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCaptureRequestMetadataNative="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/engine/FrameData;->mCaptureRequestMetadataNative:Landroid/os/Parcelable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mBufferImage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/engine/FrameData;->mBufferImage:Landroid/media/Image;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
