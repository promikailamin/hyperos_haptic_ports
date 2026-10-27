.class Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor$YuvCallback;
.super Ljava/lang/Object;
.source "CameraExtensionJpegProcessor.java"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "YuvCallback"
.end annotation


# instance fields
.field private blacklist mImageReader:Landroid/media/ImageReader;

.field private blacklist mImageWriter:Landroid/media/ImageWriter;

.field final synthetic blacklist this$0:Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;


# direct methods
.method public constructor blacklist <init>(Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;Landroid/media/ImageReader;Landroid/media/ImageWriter;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 293
    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor$YuvCallback;->this$0:Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 294
    iput-object p2, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor$YuvCallback;->mImageReader:Landroid/media/ImageReader;

    .line 295
    iput-object p3, p0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor$YuvCallback;->mImageWriter:Landroid/media/ImageWriter;

    .line 296
    return-void
.end method


# virtual methods
.method public whitelist onImageAvailable(Landroid/media/ImageReader;)V
    .registers 28

    .line 300
    move-object/from16 v0, p0

    const-string v1, "CameraExtensionJpeg"

    .line 301
    nop

    .line 303
    const/4 v2, 0x0

    :try_start_6
    iget-object v3, v0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor$YuvCallback;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {v3}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object v3
    :try_end_c
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_c} :catch_101

    .line 304
    :try_start_c
    iget-object v4, v0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor$YuvCallback;->mImageWriter:Landroid/media/ImageWriter;

    invoke-virtual {v4}, Landroid/media/ImageWriter;->dequeueInputImage()Landroid/media/Image;

    move-result-object v4
    :try_end_12
    .catch Ljava/lang/IllegalStateException; {:try_start_c .. :try_end_12} :catch_fe

    .line 314
    nop

    .line 316
    invoke-virtual {v4}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v18

    .line 317
    invoke-virtual/range {v18 .. v18}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 319
    invoke-virtual {v4}, Landroid/media/Image;->getWidth()I

    move-result v19

    .line 321
    invoke-virtual {v3}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v5

    aget-object v5, v5, v6

    .line 322
    invoke-virtual {v3}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v7

    const/4 v8, 0x1

    aget-object v7, v7, v8

    .line 323
    invoke-virtual {v3}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v8

    const/4 v9, 0x2

    aget-object v8, v8, v9

    .line 325
    new-instance v9, Ljava/util/concurrent/ConcurrentLinkedQueue;

    iget-object v10, v0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor$YuvCallback;->this$0:Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;

    invoke-static {v10}, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->-$$Nest$fgetmJpegParameters(Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>(Ljava/util/Collection;)V

    .line 327
    invoke-virtual {v9}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 328
    nop

    .line 329
    :goto_49
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6b

    .line 330
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor$JpegParameters;

    .line 331
    iget-object v12, v11, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor$JpegParameters;->mTimeStamps:Ljava/util/HashSet;

    invoke-virtual {v3}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6a

    .line 332
    nop

    .line 333
    invoke-interface {v10}, Ljava/util/Iterator;->remove()V

    .line 334
    goto :goto_6c

    .line 336
    :cond_6a
    goto :goto_49

    .line 329
    :cond_6b
    move-object v11, v2

    .line 337
    :goto_6c
    if-nez v11, :cond_96

    .line 338
    invoke-virtual {v9}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_85

    .line 339
    const-string v9, "Empty jpeg settings queue! Using default jpeg orientation and quality!"

    invoke-static {v1, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    new-instance v11, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor$JpegParameters;

    invoke-direct {v11, v2}, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor$JpegParameters;-><init>(Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor-IA;)V

    .line 342
    iput v6, v11, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor$JpegParameters;->mRotation:I

    .line 343
    const/16 v2, 0x64

    iput v2, v11, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor$JpegParameters;->mQuality:I

    goto :goto_96

    .line 345
    :cond_85
    const-string v2, "No jpeg settings found with matching timestamp for current processed input!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    const-string v2, "Using values from the top of the queue!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    invoke-virtual {v9}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor$JpegParameters;

    .line 352
    :cond_96
    :goto_96
    nop

    .line 353
    move-object v2, v7

    invoke-virtual {v3}, Landroid/media/Image;->getWidth()I

    move-result v7

    move-object v6, v8

    invoke-virtual {v3}, Landroid/media/Image;->getHeight()I

    move-result v8

    .line 354
    invoke-virtual {v5}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v9

    invoke-virtual {v5}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v10

    invoke-virtual {v5}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v5

    .line 355
    invoke-virtual {v2}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v12

    invoke-virtual {v2}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v13

    invoke-virtual {v2}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v14

    .line 356
    invoke-virtual {v6}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v15

    invoke-virtual {v6}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v16

    invoke-virtual {v6}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v17

    iget v2, v11, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor$JpegParameters;->mQuality:I

    .line 358
    invoke-virtual {v3}, Landroid/media/Image;->getWidth()I

    move-result v23

    invoke-virtual {v3}, Landroid/media/Image;->getHeight()I

    move-result v24

    iget v6, v11, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor$JpegParameters;->mRotation:I

    .line 352
    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v20, v2

    move v11, v5

    move/from16 v25, v6

    invoke-static/range {v7 .. v25}, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->-$$Nest$smcompressJpegFromYUV420pNative(IILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IIIIIII)I

    .line 360
    invoke-virtual {v3}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Landroid/media/Image;->setTimestamp(J)V

    .line 361
    invoke-virtual {v3}, Landroid/media/Image;->close()V

    .line 364
    :try_start_e7
    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor$YuvCallback;->mImageWriter:Landroid/media/ImageWriter;

    invoke-virtual {v0, v4}, Landroid/media/ImageWriter;->queueInputImage(Landroid/media/Image;)V
    :try_end_ec
    .catch Ljava/lang/IllegalStateException; {:try_start_e7 .. :try_end_ec} :catch_f2
    .catchall {:try_start_e7 .. :try_end_ec} :catchall_f0

    .line 368
    :goto_ec
    invoke-virtual {v4}, Landroid/media/Image;->close()V

    .line 369
    goto :goto_f9

    .line 368
    :catchall_f0
    move-exception v0

    goto :goto_fa

    .line 365
    :catch_f2
    move-exception v0

    .line 366
    :try_start_f3
    const-string v0, "Failed to queue encoded result!"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f8
    .catchall {:try_start_f3 .. :try_end_f8} :catchall_f0

    goto :goto_ec

    .line 370
    :goto_f9
    return-void

    .line 368
    :goto_fa
    invoke-virtual {v4}, Landroid/media/Image;->close()V

    .line 369
    throw v0

    .line 305
    :catch_fe
    move-exception v0

    move-object v2, v3

    goto :goto_102

    :catch_101
    move-exception v0

    .line 306
    :goto_102
    if-eqz v2, :cond_107

    .line 307
    invoke-virtual {v2}, Landroid/media/Image;->close()V

    .line 309
    :cond_107
    nop

    .line 312
    const-string v0, "Failed to acquire processed yuv image or jpeg image!"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    return-void
.end method
