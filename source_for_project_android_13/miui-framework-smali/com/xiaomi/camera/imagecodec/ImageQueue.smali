.class public Lcom/xiaomi/camera/imagecodec/ImageQueue;
.super Ljava/lang/Object;
.source "ImageQueue.java"


# instance fields
.field private blacklist TAG:Ljava/lang/String;

.field private final blacklist mImageAvailableListener:Landroid/media/ImageReader$OnImageAvailableListener;

.field private final blacklist mImageLock:Ljava/lang/Object;

.field private final blacklist mImageLongSparseArray:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Landroid/media/Image;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mImageReader:Landroid/media/ImageReader;

.field private blacklist mImageWriter:Landroid/media/ImageWriter;

.field private blacklist mMaxAcquireImageCount:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetTAG(Lcom/xiaomi/camera/imagecodec/ImageQueue;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/xiaomi/camera/imagecodec/ImageQueue;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmImageLock(Lcom/xiaomi/camera/imagecodec/ImageQueue;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/xiaomi/camera/imagecodec/ImageQueue;->mImageLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmImageLongSparseArray(Lcom/xiaomi/camera/imagecodec/ImageQueue;)Landroid/util/LongSparseArray;
    .registers 1

    iget-object p0, p0, Lcom/xiaomi/camera/imagecodec/ImageQueue;->mImageLongSparseArray:Landroid/util/LongSparseArray;

    return-object p0
.end method

.method public constructor blacklist <init>(Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;Landroid/os/Handler;Landroid/os/Handler;II)V
    .registers 12
    .param p1, "imageFormat"    # Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;
    .param p2, "readerHandler"    # Landroid/os/Handler;
    .param p3, "writerHandler"    # Landroid/os/Handler;
    .param p4, "maxAcquireImageCount"    # I
    .param p5, "maxDequeueImageCount"    # I

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/camera/imagecodec/ImageQueue;->mImageLock:Ljava/lang/Object;

    .line 23
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/camera/imagecodec/ImageQueue;->mImageLongSparseArray:Landroid/util/LongSparseArray;

    .line 136
    new-instance v0, Lcom/xiaomi/camera/imagecodec/ImageQueue$1;

    invoke-direct {v0, p0}, Lcom/xiaomi/camera/imagecodec/ImageQueue$1;-><init>(Lcom/xiaomi/camera/imagecodec/ImageQueue;)V

    iput-object v0, p0, Lcom/xiaomi/camera/imagecodec/ImageQueue;->mImageAvailableListener:Landroid/media/ImageReader$OnImageAvailableListener;

    .line 46
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    .line 47
    invoke-virtual {p1}, Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;->getWidth()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p1}, Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;->getHeight()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-virtual {p1}, Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;->getFormat()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x2

    aput-object v3, v2, v5

    .line 46
    const-string v3, "BQ_%dx%d_%d"

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/camera/imagecodec/ImageQueue;->TAG:Ljava/lang/String;

    .line 48
    iput p4, p0, Lcom/xiaomi/camera/imagecodec/ImageQueue;->mMaxAcquireImageCount:I

    .line 49
    nop

    .line 50
    invoke-virtual {p1}, Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;->getHeight()I

    move-result v2

    .line 51
    invoke-virtual {p1}, Lcom/xiaomi/camera/imagecodec/ImagePool$ImageFormat;->getFormat()I

    move-result v3

    .line 49
    invoke-static {v1, v2, v3, p4}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/camera/imagecodec/ImageQueue;->mImageReader:Landroid/media/ImageReader;

    .line 52
    sget-object v2, Lcom/xiaomi/camera/imagecodec/ImageReaderHelper$ImageReaderType;->IMAGEPOOL:Lcom/xiaomi/camera/imagecodec/ImageReaderHelper$ImageReaderType;

    invoke-static {v1, v2, v4}, Lcom/xiaomi/camera/imagecodec/ImageReaderHelper;->setImageReaderNameDepends(Landroid/media/ImageReader;Lcom/xiaomi/camera/imagecodec/ImageReaderHelper$ImageReaderType;Z)V

    .line 53
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/ImageQueue;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {v1, v0, p2}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 55
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/ImageQueue;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-static {v0, p5, v4}, Lcom/xiaomi/camera/imagecodec/ImagePool;->makeImageWriter(Landroid/view/Surface;IZ)Landroid/media/ImageWriter;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/camera/imagecodec/ImageQueue;->mImageWriter:Landroid/media/ImageWriter;

    .line 56
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p3}, Landroid/media/ImageWriter;->setOnImageReleasedListener(Landroid/media/ImageWriter$OnImageReleasedListener;Landroid/os/Handler;)V

    .line 57
    return-void
.end method


# virtual methods
.method public blacklist close()V
    .registers 4

    .line 121
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/ImageQueue;->TAG:Ljava/lang/String;

    const-string v1, "close: E"

    invoke-static {v0, v1}, Lcom/xiaomi/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :try_start_7
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/ImageQueue;->mImageLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_a} :catch_30

    .line 124
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    :try_start_b
    iget-object v2, p0, Lcom/xiaomi/camera/imagecodec/ImageQueue;->mImageLongSparseArray:Landroid/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_21

    .line 125
    iget-object v2, p0, Lcom/xiaomi/camera/imagecodec/ImageQueue;->mImageLongSparseArray:Landroid/util/LongSparseArray;

    invoke-virtual {v2, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/Image;

    invoke-virtual {v2}, Landroid/media/Image;->close()V

    .line 124
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 127
    .end local v1    # "i":I
    :cond_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_b .. :try_end_22} :catchall_2d

    .line 128
    :try_start_22
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/ImageQueue;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    .line 129
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/ImageQueue;->mImageWriter:Landroid/media/ImageWriter;

    invoke-virtual {v0}, Landroid/media/ImageWriter;->close()V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_2c} :catch_30

    .line 132
    goto :goto_38

    .line 127
    :catchall_2d
    move-exception v1

    :try_start_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    .end local p0    # "this":Lcom/xiaomi/camera/imagecodec/ImageQueue;
    :try_start_2f
    throw v1
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_30} :catch_30

    .line 130
    .restart local p0    # "this":Lcom/xiaomi/camera/imagecodec/ImageQueue;
    :catch_30
    move-exception v0

    .line 131
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/ImageQueue;->TAG:Ljava/lang/String;

    const-string v2, "close ImageQueue error"

    invoke-static {v1, v2, v0}, Lcom/xiaomi/engine/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 133
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_38
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/ImageQueue;->TAG:Ljava/lang/String;

    const-string v1, "close: X"

    invoke-static {v0, v1}, Lcom/xiaomi/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    return-void
.end method

.method public blacklist dequeueImage()Landroid/media/Image;
    .registers 7

    .line 103
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/ImageQueue;->mImageLock:Ljava/lang/Object;

    monitor-enter v0

    .line 104
    :try_start_3
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/ImageQueue;->mImageWriter:Landroid/media/ImageWriter;

    invoke-virtual {v1}, Landroid/media/ImageWriter;->dequeueInputImage()Landroid/media/Image;

    move-result-object v1

    .line 105
    .local v1, "image":Landroid/media/Image;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/media/Image;->setTimestamp(J)V

    .line 106
    iget-object v2, p0, Lcom/xiaomi/camera/imagecodec/ImageQueue;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dequeueImage: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " | "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaomi/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    monitor-exit v0

    return-object v1

    .line 108
    .end local v1    # "image":Landroid/media/Image;
    :catchall_38
    move-exception v1

    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_3 .. :try_end_3a} :catchall_38

    throw v1
.end method

.method public blacklist discardFreeBuffers()V
    .registers 3

    .line 116
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/ImageQueue;->TAG:Ljava/lang/String;

    const-string v1, "discardFreeBuffers"

    invoke-static {v0, v1}, Lcom/xiaomi/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/ImageQueue;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->discardFreeBuffers()V

    .line 118
    return-void
.end method

.method public blacklist getImage(J)Landroid/media/Image;
    .registers 6
    .param p1, "timestamp"    # J

    .line 93
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/ImageQueue;->mImageLock:Ljava/lang/Object;

    monitor-enter v0

    .line 94
    :try_start_3
    iget-object v1, p0, Lcom/xiaomi/camera/imagecodec/ImageQueue;->mImageLongSparseArray:Landroid/util/LongSparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/Image;

    .line 95
    .local v1, "image":Landroid/media/Image;
    if-eqz v1, :cond_12

    .line 96
    iget-object v2, p0, Lcom/xiaomi/camera/imagecodec/ImageQueue;->mImageLongSparseArray:Landroid/util/LongSparseArray;

    invoke-virtual {v2, p1, p2}, Landroid/util/LongSparseArray;->remove(J)V

    .line 98
    :cond_12
    monitor-exit v0

    return-object v1

    .line 99
    .end local v1    # "image":Landroid/media/Image;
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public blacklist getMaxAcquireImageCount()I
    .registers 2

    .line 112
    iget v0, p0, Lcom/xiaomi/camera/imagecodec/ImageQueue;->mMaxAcquireImageCount:I

    return v0
.end method

.method public blacklist queueImage(Landroid/media/Image;)V
    .registers 8
    .param p1, "image"    # Landroid/media/Image;

    .line 69
    iget-object v0, p0, Lcom/xiaomi/camera/imagecodec/ImageQueue;->mImageLock:Ljava/lang/Object;

    monitor-enter v0

    .line 70
    :try_start_3
    invoke-virtual {p1}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v1

    .line 71
    .local v1, "timestamp":J
    iget-object v3, p0, Lcom/xiaomi/camera/imagecodec/ImageQueue;->mImageLongSparseArray:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_4c

    .line 75
    iget-object v3, p0, Lcom/xiaomi/camera/imagecodec/ImageQueue;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "queueImage: start. image: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " | "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaomi/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget-object v3, p0, Lcom/xiaomi/camera/imagecodec/ImageQueue;->mImageWriter:Landroid/media/ImageWriter;

    invoke-virtual {v3, p1}, Landroid/media/ImageWriter;->queueInputImage(Landroid/media/Image;)V
    :try_end_36
    .catchall {:try_start_3 .. :try_end_36} :catchall_65

    .line 79
    :try_start_36
    iget-object v3, p0, Lcom/xiaomi/camera/imagecodec/ImageQueue;->mImageLock:Ljava/lang/Object;

    const-wide/16 v4, 0x3a98

    invoke-virtual {v3, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_3d
    .catch Ljava/lang/InterruptedException; {:try_start_36 .. :try_end_3d} :catch_3e
    .catchall {:try_start_36 .. :try_end_3d} :catchall_65

    .line 82
    goto :goto_42

    .line 80
    :catch_3e
    move-exception v3

    .line 81
    .local v3, "e":Ljava/lang/InterruptedException;
    :try_start_3f
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 83
    .end local v3    # "e":Ljava/lang/InterruptedException;
    :goto_42
    iget-object v3, p0, Lcom/xiaomi/camera/imagecodec/ImageQueue;->TAG:Ljava/lang/String;

    const-string v4, "queueImage: end"

    invoke-static {v3, v4}, Lcom/xiaomi/engine/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    nop

    .end local v1    # "timestamp":J
    monitor-exit v0

    .line 85
    return-void

    .line 72
    .restart local v1    # "timestamp":J
    :cond_4c
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Image has existed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/xiaomi/camera/imagecodec/ImageQueue;
    .end local p1    # "image":Landroid/media/Image;
    throw v3

    .line 84
    .end local v1    # "timestamp":J
    .restart local p0    # "this":Lcom/xiaomi/camera/imagecodec/ImageQueue;
    .restart local p1    # "image":Landroid/media/Image;
    :catchall_65
    move-exception v1

    monitor-exit v0
    :try_end_67
    .catchall {:try_start_3f .. :try_end_67} :catchall_65

    throw v1
.end method
