.class public Lcom/xiaomi/camera/isp/IspBuffer;
.super Ljava/lang/Object;
.source "IspBuffer.java"


# instance fields
.field public blacklist bufferImage:Landroid/media/Image;

.field public blacklist streamId:J

.field public blacklist tuningImage:Landroid/media/Image;


# direct methods
.method public constructor blacklist <init>(JLandroid/media/Image;Landroid/media/Image;)V
    .registers 5
    .param p1, "streamId"    # J
    .param p3, "bufferImage"    # Landroid/media/Image;
    .param p4, "tuningImage"    # Landroid/media/Image;

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-wide p1, p0, Lcom/xiaomi/camera/isp/IspBuffer;->streamId:J

    .line 28
    iput-object p3, p0, Lcom/xiaomi/camera/isp/IspBuffer;->bufferImage:Landroid/media/Image;

    .line 29
    iput-object p4, p0, Lcom/xiaomi/camera/isp/IspBuffer;->tuningImage:Landroid/media/Image;

    .line 30
    return-void
.end method
