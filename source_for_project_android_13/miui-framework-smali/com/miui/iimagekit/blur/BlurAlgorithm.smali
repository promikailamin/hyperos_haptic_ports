.class public Lcom/miui/iimagekit/blur/BlurAlgorithm;
.super Lcom/miui/iimagekit/common/MiuiAlgorithmBase;
.source "BlurAlgorithm.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "BlurAlgorithm"


# instance fields
.field private blacklist mBlurMethod:I


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "blurMethod"    # I

    .line 15
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/iimagekit/blur/BlurAlgorithm;-><init>(Landroid/content/Context;IZ)V

    .line 16
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;IZ)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "blurMethod"    # I
    .param p3, "isFourChannel"    # Z

    .line 18
    invoke-direct {p0}, Lcom/miui/iimagekit/common/MiuiAlgorithmBase;-><init>()V

    .line 19
    if-eqz p3, :cond_7

    const/4 v0, 0x2

    goto :goto_8

    :cond_7
    move v0, p2

    :goto_8
    iput v0, p0, Lcom/miui/iimagekit/blur/BlurAlgorithm;->mBlurMethod:I

    .line 20
    return-void
.end method


# virtual methods
.method public blacklist blur(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)I
    .registers 8
    .param p1, "bitmapForBlur"    # Landroid/graphics/Bitmap;
    .param p2, "blurredBitmap"    # Landroid/graphics/Bitmap;
    .param p3, "radius"    # I

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BlurAlgorithm, blur ......, blurMethod:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/miui/iimagekit/blur/BlurAlgorithm;->mBlurMethod:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", radius:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BlurAlgorithm"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/iimagekit/blur/BlurAlgorithm;->checkBlurInputParameter(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)I

    move-result v0

    .line 26
    .local v0, "errResult":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BlurAlgorithm, blur ......, errResult:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    if-nez v0, :cond_b0

    .line 28
    iget v2, p0, Lcom/miui/iimagekit/blur/BlurAlgorithm;->mBlurMethod:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_5f

    .line 29
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BlurAlgorithm, blur calling ShadowBoxBlur......, radius:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    invoke-static {p1, p2, p3}, Lcom/miui/iimagekit/shadow/ShadowBoxBlur;->doBlur(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)V

    goto :goto_c8

    .line 31
    :cond_5f
    const/4 v1, 0x4

    if-ne v2, v1, :cond_7b

    .line 32
    sget-object v1, Lcom/miui/iimagekit/common/MiuiAlgorithmBase$LogLevel;->LOG_INFO:Lcom/miui/iimagekit/common/MiuiAlgorithmBase$LogLevel;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BlurAlgorithm, blur calling CPUFastBlur......, radius:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/iimagekit/blur/BlurAlgorithm;->localLog(Lcom/miui/iimagekit/common/MiuiAlgorithmBase$LogLevel;Ljava/lang/String;)V

    goto :goto_c8

    .line 34
    :cond_7b
    const/4 v1, 0x5

    if-ne v2, v1, :cond_97

    .line 35
    sget-object v1, Lcom/miui/iimagekit/common/MiuiAlgorithmBase$LogLevel;->LOG_INFO:Lcom/miui/iimagekit/common/MiuiAlgorithmBase$LogLevel;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BlurAlgorithm, blur calling CPUGaussianBlur......, radius:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/iimagekit/blur/BlurAlgorithm;->localLog(Lcom/miui/iimagekit/common/MiuiAlgorithmBase$LogLevel;Ljava/lang/String;)V

    goto :goto_c8

    .line 38
    :cond_97
    sget-object v1, Lcom/miui/iimagekit/common/MiuiAlgorithmBase$LogLevel;->LOG_INFO:Lcom/miui/iimagekit/common/MiuiAlgorithmBase$LogLevel;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BlurAlgorithm, blur calling CPUBoxBlur......, radius:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/iimagekit/blur/BlurAlgorithm;->localLog(Lcom/miui/iimagekit/common/MiuiAlgorithmBase$LogLevel;Ljava/lang/String;)V

    goto :goto_c8

    .line 42
    :cond_b0
    sget-object v1, Lcom/miui/iimagekit/common/MiuiAlgorithmBase$LogLevel;->LOG_ERROR:Lcom/miui/iimagekit/common/MiuiAlgorithmBase$LogLevel;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ErrorCode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/iimagekit/blur/BlurAlgorithm;->localLog(Lcom/miui/iimagekit/common/MiuiAlgorithmBase$LogLevel;Ljava/lang/String;)V

    .line 45
    :goto_c8
    return v0
.end method

.method protected blacklist checkBlurInputParameter(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)I
    .registers 8
    .param p1, "bitmapForBlur"    # Landroid/graphics/Bitmap;
    .param p2, "blurredBitmap"    # Landroid/graphics/Bitmap;
    .param p3, "radius"    # I

    .line 49
    sget-boolean v0, Lcom/miui/iimagekit/blur/BlurAlgorithm;->IS_IMAGEKIT_BLUR_PROP:Z

    if-nez v0, :cond_6

    .line 50
    const/4 v0, 0x5

    return v0

    .line 53
    :cond_6
    if-nez p1, :cond_a

    .line 54
    const/4 v0, 0x1

    return v0

    .line 57
    :cond_a
    const/4 v0, 0x2

    if-nez p2, :cond_e

    .line 58
    return v0

    .line 61
    :cond_e
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    const/4 v3, 0x3

    if-ne v1, v2, :cond_3d

    .line 62
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-eq v1, v2, :cond_24

    goto :goto_3d

    .line 66
    :cond_24
    if-le p3, v0, :cond_3b

    const/16 v0, 0x19

    if-le p3, v0, :cond_2b

    goto :goto_3b

    .line 70
    :cond_2b
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-lt v0, v3, :cond_39

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-lt v0, v3, :cond_39

    .line 71
    const/4 v0, 0x0

    return v0

    .line 73
    :cond_39
    const/4 v0, 0x7

    return v0

    .line 67
    :cond_3b
    :goto_3b
    const/4 v0, 0x4

    return v0

    .line 63
    :cond_3d
    :goto_3d
    return v3
.end method
