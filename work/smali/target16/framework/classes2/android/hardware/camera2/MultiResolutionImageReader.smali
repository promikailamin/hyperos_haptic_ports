.class public Landroid/hardware/camera2/MultiResolutionImageReader;
.super Ljava/lang/Object;
.source "MultiResolutionImageReader.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "MultiResolutionImageReader"


# instance fields
.field private final blacklist mFormat:I

.field private final blacklist mMaxImages:I

.field private final blacklist mReaders:[Landroid/media/ImageReader;

.field private final blacklist mStreamInfo:[Landroid/hardware/camera2/params/MultiResolutionStreamInfo;


# direct methods
.method public constructor whitelist <init>(Ljava/util/Collection;II)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/hardware/camera2/params/MultiResolutionStreamInfo;",
            ">;II)V"
        }
    .end annotation

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    iput p2, p0, Landroid/hardware/camera2/MultiResolutionImageReader;->mFormat:I

    .line 138
    iput p3, p0, Landroid/hardware/camera2/MultiResolutionImageReader;->mMaxImages:I

    .line 140
    if-eqz p1, :cond_5d

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_5d

    .line 144
    iget v0, p0, Landroid/hardware/camera2/MultiResolutionImageReader;->mMaxImages:I

    if-lt v0, v1, :cond_55

    .line 149
    const/16 v0, 0x11

    if-eq p2, v0, :cond_4d

    .line 154
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    .line 155
    new-array v2, v0, [Landroid/media/ImageReader;

    iput-object v2, p0, Landroid/hardware/camera2/MultiResolutionImageReader;->mReaders:[Landroid/media/ImageReader;

    .line 156
    new-array v0, v0, [Landroid/hardware/camera2/params/MultiResolutionStreamInfo;

    iput-object v0, p0, Landroid/hardware/camera2/MultiResolutionImageReader;->mStreamInfo:[Landroid/hardware/camera2/params/MultiResolutionStreamInfo;

    .line 157
    nop

    .line 158
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_2a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/params/MultiResolutionStreamInfo;

    .line 159
    iget-object v3, p0, Landroid/hardware/camera2/MultiResolutionImageReader;->mReaders:[Landroid/media/ImageReader;

    invoke-virtual {v2}, Landroid/hardware/camera2/params/MultiResolutionStreamInfo;->getWidth()I

    move-result v4

    .line 160
    invoke-virtual {v2}, Landroid/hardware/camera2/params/MultiResolutionStreamInfo;->getHeight()I

    move-result v5

    .line 159
    invoke-static {v4, v5, p2, p3}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v4

    aput-object v4, v3, v0

    .line 161
    iget-object v3, p0, Landroid/hardware/camera2/MultiResolutionImageReader;->mStreamInfo:[Landroid/hardware/camera2/params/MultiResolutionStreamInfo;

    aput-object v2, v3, v0

    .line 162
    add-int/2addr v0, v1

    .line 163
    goto :goto_2a

    .line 164
    :cond_4c
    return-void

    .line 150
    :cond_4d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "NV21 format is not supported"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 145
    :cond_55
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Maximum outstanding image count must be at least 1"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 141
    :cond_5d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The streams info collection must contain at least 2 entries"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor whitelist <init>(Ljava/util/Collection;IIJ)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/hardware/camera2/params/MultiResolutionStreamInfo;",
            ">;IIJ)V"
        }
    .end annotation

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 234
    iput p2, p0, Landroid/hardware/camera2/MultiResolutionImageReader;->mFormat:I

    .line 235
    iput p3, p0, Landroid/hardware/camera2/MultiResolutionImageReader;->mMaxImages:I

    .line 237
    if-eqz p1, :cond_61

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_61

    .line 241
    iget v0, p0, Landroid/hardware/camera2/MultiResolutionImageReader;->mMaxImages:I

    if-lt v0, v1, :cond_59

    .line 246
    const/16 v0, 0x11

    if-eq p2, v0, :cond_51

    .line 251
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    .line 252
    new-array v2, v0, [Landroid/media/ImageReader;

    iput-object v2, p0, Landroid/hardware/camera2/MultiResolutionImageReader;->mReaders:[Landroid/media/ImageReader;

    .line 253
    new-array v0, v0, [Landroid/hardware/camera2/params/MultiResolutionStreamInfo;

    iput-object v0, p0, Landroid/hardware/camera2/MultiResolutionImageReader;->mStreamInfo:[Landroid/hardware/camera2/params/MultiResolutionStreamInfo;

    .line 254
    nop

    .line 255
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_2a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_50

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/params/MultiResolutionStreamInfo;

    .line 256
    iget-object v3, p0, Landroid/hardware/camera2/MultiResolutionImageReader;->mReaders:[Landroid/media/ImageReader;

    invoke-virtual {v2}, Landroid/hardware/camera2/params/MultiResolutionStreamInfo;->getWidth()I

    move-result v4

    .line 257
    invoke-virtual {v2}, Landroid/hardware/camera2/params/MultiResolutionStreamInfo;->getHeight()I

    move-result v5

    .line 256
    move v6, p2

    move v7, p3

    move-wide v8, p4

    invoke-static/range {v4 .. v9}, Landroid/media/ImageReader;->newInstance(IIIIJ)Landroid/media/ImageReader;

    move-result-object p2

    aput-object p2, v3, v0

    .line 258
    iget-object p2, p0, Landroid/hardware/camera2/MultiResolutionImageReader;->mStreamInfo:[Landroid/hardware/camera2/params/MultiResolutionStreamInfo;

    aput-object v2, p2, v0

    .line 259
    add-int/2addr v0, v1

    .line 260
    move p2, v6

    goto :goto_2a

    .line 261
    :cond_50
    return-void

    .line 247
    :cond_51
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "NV21 format is not supported"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 242
    :cond_59
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Maximum outstanding image count must be at least 1"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 238
    :cond_61
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The streams info collection must contain at least 2 entries"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 3

    .line 290
    invoke-virtual {p0}, Landroid/hardware/camera2/MultiResolutionImageReader;->flush()V

    .line 292
    const/4 v0, 0x0

    :goto_4
    iget-object v1, p0, Landroid/hardware/camera2/MultiResolutionImageReader;->mReaders:[Landroid/media/ImageReader;

    array-length v1, v1

    if-ge v0, v1, :cond_13

    .line 293
    iget-object v1, p0, Landroid/hardware/camera2/MultiResolutionImageReader;->mReaders:[Landroid/media/ImageReader;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/media/ImageReader;->close()V

    .line 292
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 295
    :cond_13
    return-void
.end method

.method protected whitelist test-api finalize()V
    .registers 1

    .line 299
    invoke-virtual {p0}, Landroid/hardware/camera2/MultiResolutionImageReader;->close()V

    .line 300
    return-void
.end method

.method public whitelist flush()V
    .registers 2

    .line 310
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/MultiResolutionImageReader;->flushOther(Landroid/media/ImageReader;)V

    .line 311
    return-void
.end method

.method public blacklist flushOther(Landroid/media/ImageReader;)V
    .registers 4

    .line 324
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Landroid/hardware/camera2/MultiResolutionImageReader;->mReaders:[Landroid/media/ImageReader;

    array-length v1, v1

    if-ge v0, v1, :cond_21

    .line 325
    if-eqz p1, :cond_f

    iget-object v1, p0, Landroid/hardware/camera2/MultiResolutionImageReader;->mReaders:[Landroid/media/ImageReader;

    aget-object v1, v1, v0

    if-ne p1, v1, :cond_f

    .line 326
    goto :goto_1a

    .line 330
    :cond_f
    :goto_f
    iget-object v1, p0, Landroid/hardware/camera2/MultiResolutionImageReader;->mReaders:[Landroid/media/ImageReader;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/media/ImageReader;->acquireNextImageNoThrowISE()Landroid/media/Image;

    move-result-object v1

    .line 331
    if-nez v1, :cond_1d

    .line 332
    nop

    .line 324
    :goto_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 334
    :cond_1d
    invoke-virtual {v1}, Landroid/media/Image;->close()V

    .line 336
    goto :goto_f

    .line 338
    :cond_21
    return-void
.end method

.method public blacklist getReaders()[Landroid/media/ImageReader;
    .registers 2

    .line 346
    iget-object v0, p0, Landroid/hardware/camera2/MultiResolutionImageReader;->mReaders:[Landroid/media/ImageReader;

    return-object v0
.end method

.method public whitelist getStreamInfoForImageReader(Landroid/media/ImageReader;)Landroid/hardware/camera2/params/MultiResolutionStreamInfo;
    .registers 4

    .line 436
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Landroid/hardware/camera2/MultiResolutionImageReader;->mReaders:[Landroid/media/ImageReader;

    array-length v1, v1

    if-ge v0, v1, :cond_14

    .line 437
    iget-object v1, p0, Landroid/hardware/camera2/MultiResolutionImageReader;->mReaders:[Landroid/media/ImageReader;

    aget-object v1, v1, v0

    if-ne p1, v1, :cond_11

    .line 438
    iget-object p1, p0, Landroid/hardware/camera2/MultiResolutionImageReader;->mStreamInfo:[Landroid/hardware/camera2/params/MultiResolutionStreamInfo;

    aget-object p1, p1, v0

    return-object p1

    .line 436
    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 442
    :cond_14
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "ImageReader doesn\'t belong to this multi-resolution imagereader"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist getSurface()Landroid/view/Surface;
    .registers 6

    .line 411
    iget-object v0, p0, Landroid/hardware/camera2/MultiResolutionImageReader;->mReaders:[Landroid/media/ImageReader;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/media/ImageReader;->getWidth()I

    move-result v0

    iget-object v2, p0, Landroid/hardware/camera2/MultiResolutionImageReader;->mReaders:[Landroid/media/ImageReader;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/media/ImageReader;->getHeight()I

    move-result v2

    mul-int/2addr v0, v2

    .line 412
    iget-object v2, p0, Landroid/hardware/camera2/MultiResolutionImageReader;->mReaders:[Landroid/media/ImageReader;

    aget-object v1, v2, v1

    invoke-virtual {v1}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v1

    .line 413
    const/4 v2, 0x1

    :goto_1b
    iget-object v3, p0, Landroid/hardware/camera2/MultiResolutionImageReader;->mReaders:[Landroid/media/ImageReader;

    array-length v3, v3

    if-ge v2, v3, :cond_41

    .line 414
    iget-object v3, p0, Landroid/hardware/camera2/MultiResolutionImageReader;->mReaders:[Landroid/media/ImageReader;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Landroid/media/ImageReader;->getWidth()I

    move-result v3

    iget-object v4, p0, Landroid/hardware/camera2/MultiResolutionImageReader;->mReaders:[Landroid/media/ImageReader;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Landroid/media/ImageReader;->getHeight()I

    move-result v4

    mul-int/2addr v3, v4

    .line 415
    if-ge v3, v0, :cond_3e

    .line 416
    nop

    .line 417
    iget-object v0, p0, Landroid/hardware/camera2/MultiResolutionImageReader;->mReaders:[Landroid/media/ImageReader;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v0

    move-object v1, v0

    move v0, v3

    .line 413
    :cond_3e
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 420
    :cond_41
    return-object v1
.end method

.method public blacklist getSurface(Landroid/util/Size;Ljava/lang/String;)Landroid/view/Surface;
    .registers 6

    .line 380
    const-string v0, "configuredSize must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    const-string v0, "physicalCameraId must not be null"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    const/4 v0, 0x0

    :goto_b
    iget-object v1, p0, Landroid/hardware/camera2/MultiResolutionImageReader;->mStreamInfo:[Landroid/hardware/camera2/params/MultiResolutionStreamInfo;

    array-length v1, v1

    if-ge v0, v1, :cond_46

    .line 384
    iget-object v1, p0, Landroid/hardware/camera2/MultiResolutionImageReader;->mStreamInfo:[Landroid/hardware/camera2/params/MultiResolutionStreamInfo;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/hardware/camera2/params/MultiResolutionStreamInfo;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v2

    if-ne v1, v2, :cond_43

    iget-object v1, p0, Landroid/hardware/camera2/MultiResolutionImageReader;->mStreamInfo:[Landroid/hardware/camera2/params/MultiResolutionStreamInfo;

    aget-object v1, v1, v0

    .line 385
    invoke-virtual {v1}, Landroid/hardware/camera2/params/MultiResolutionStreamInfo;->getHeight()I

    move-result v1

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v2

    if-ne v1, v2, :cond_43

    iget-object v1, p0, Landroid/hardware/camera2/MultiResolutionImageReader;->mStreamInfo:[Landroid/hardware/camera2/params/MultiResolutionStreamInfo;

    aget-object v1, v1, v0

    .line 386
    invoke-virtual {v1}, Landroid/hardware/camera2/params/MultiResolutionStreamInfo;->getPhysicalCameraId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_43

    .line 387
    iget-object p1, p0, Landroid/hardware/camera2/MultiResolutionImageReader;->mReaders:[Landroid/media/ImageReader;

    aget-object p1, p1, v0

    invoke-virtual {p1}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object p1

    return-object p1

    .line 383
    :cond_43
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 390
    :cond_46
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "configuredSize and physicalCameraId don\'t match with this MultiResolutionImageReader"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Ljava/util/concurrent/Executor;)V
    .registers 5

    .line 283
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Landroid/hardware/camera2/MultiResolutionImageReader;->mReaders:[Landroid/media/ImageReader;

    array-length v1, v1

    if-ge v0, v1, :cond_10

    .line 284
    iget-object v1, p0, Landroid/hardware/camera2/MultiResolutionImageReader;->mReaders:[Landroid/media/ImageReader;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2}, Landroid/media/ImageReader;->setOnImageAvailableListenerWithExecutor(Landroid/media/ImageReader$OnImageAvailableListener;Ljava/util/concurrent/Executor;)V

    .line 283
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 286
    :cond_10
    return-void
.end method
