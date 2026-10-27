.class public Lcom/xiaomi/camera/isp/IspStream;
.super Ljava/lang/Object;
.source "IspStream.java"


# instance fields
.field public blacklist format:I

.field public blacklist height:I

.field public blacklist streamId:J

.field public blacklist stride:[I

.field public blacklist width:I


# direct methods
.method public constructor blacklist <init>(JII[II)V
    .registers 7
    .param p1, "streamId"    # J
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "stride"    # [I
    .param p6, "format"    # I

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-wide p1, p0, Lcom/xiaomi/camera/isp/IspStream;->streamId:J

    .line 28
    iput p3, p0, Lcom/xiaomi/camera/isp/IspStream;->width:I

    .line 29
    iput p4, p0, Lcom/xiaomi/camera/isp/IspStream;->height:I

    .line 30
    iput-object p5, p0, Lcom/xiaomi/camera/isp/IspStream;->stride:[I

    .line 31
    iput p6, p0, Lcom/xiaomi/camera/isp/IspStream;->format:I

    .line 32
    return-void
.end method
