.class public Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;
.super Ljava/lang/Object;
.source "ImagePool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/camera/imagecodec/ImagePool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImageFormat"
.end annotation


# instance fields
.field private blacklist mFormat:I

.field private blacklist mHeight:I

.field private blacklist mWidth:I


# direct methods
.method public constructor blacklist <init>(III)V
    .registers 4
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "format"    # I

    .line 520
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 521
    iput p1, p0, Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;->mWidth:I

    .line 522
    iput p2, p0, Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;->mHeight:I

    .line 523
    iput p3, p0, Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;->mFormat:I

    .line 524
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 547
    instance-of v0, p1, Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;

    if-eqz v0, :cond_23

    .line 548
    move-object v0, p1

    check-cast v0, Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;

    .line 549
    .local v0, "imageFormat":Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;
    iget v1, p0, Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;->mWidth:I

    invoke-virtual {v0}, Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;->getWidth()I

    move-result v2

    if-ne v1, v2, :cond_21

    iget v1, p0, Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;->mHeight:I

    .line 550
    invoke-virtual {v0}, Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;->getHeight()I

    move-result v2

    if-ne v1, v2, :cond_21

    iget v1, p0, Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;->mFormat:I

    .line 551
    invoke-virtual {v0}, Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;->getFormat()I

    move-result v2

    if-ne v1, v2, :cond_21

    const/4 v1, 0x1

    goto :goto_22

    :cond_21
    const/4 v1, 0x0

    .line 549
    :goto_22
    return v1

    .line 553
    .end local v0    # "imageFormat":Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;
    :cond_23
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public blacklist getFormat()I
    .registers 2

    .line 535
    iget v0, p0, Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;->mFormat:I

    return v0
.end method

.method public blacklist getHeight()I
    .registers 2

    .line 531
    iget v0, p0, Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;->mHeight:I

    return v0
.end method

.method public blacklist getWidth()I
    .registers 2

    .line 527
    iget v0, p0, Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;->mWidth:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 540
    iget v0, p0, Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;->mWidth:I

    shl-int/lit8 v1, v0, 0x8

    ushr-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v1

    .line 541
    .local v0, "widthHash":I
    iget v1, p0, Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;->mHeight:I

    shl-int/lit8 v2, v1, 0x10

    ushr-int/lit8 v1, v1, 0x10

    or-int/2addr v1, v2

    .line 542
    .local v1, "heightHash":I
    iget v2, p0, Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;->mFormat:I

    xor-int/2addr v2, v0

    xor-int/2addr v2, v1

    return v2
.end method
