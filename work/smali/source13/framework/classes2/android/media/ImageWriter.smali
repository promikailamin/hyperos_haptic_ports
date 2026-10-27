.class public Landroid/media/ImageWriter;
.super Ljava/lang/Object;
.source "ImageWriter.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/ImageWriter$WriterSurfaceImage;,
        Landroid/media/ImageWriter$Builder;,
        Landroid/media/ImageWriter$ListenerHandler;,
        Landroid/media/ImageWriter$OnImageReleasedListener;
    }
.end annotation


# static fields
.field public static final whitelist USAGE_CAMERA_INPUT:J = 0x40000L

.field public static final whitelist USAGE_CAMERA_OUTPUT:J = 0x20000L


# instance fields
.field private blacklist mDataSpace:I

.field private greylist-max-o mDequeuedImages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/Image;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mEstimatedNativeAllocBytes:I

.field private blacklist mHardwareBufferFormat:I

.field private blacklist mHeight:I

.field private greylist-max-o mListener:Landroid/media/ImageWriter$OnImageReleasedListener;

.field private greylist-max-o mListenerHandler:Landroid/media/ImageWriter$ListenerHandler;

.field private final greylist-max-o mListenerLock:Ljava/lang/Object;

.field private final greylist-max-o mMaxImages:I

.field private greylist-max-o mNativeContext:J

.field private blacklist mUsage:J

.field private blacklist mWidth:I

.field private greylist-max-o mWriterFormat:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmDataSpace(Landroid/media/ImageWriter;)I
    .registers 1

    iget p0, p0, Landroid/media/ImageWriter;->mDataSpace:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHeight(Landroid/media/ImageWriter;)I
    .registers 1

    iget p0, p0, Landroid/media/ImageWriter;->mHeight:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmListener(Landroid/media/ImageWriter;)Landroid/media/ImageWriter$OnImageReleasedListener;
    .registers 1

    iget-object p0, p0, Landroid/media/ImageWriter;->mListener:Landroid/media/ImageWriter$OnImageReleasedListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmListenerLock(Landroid/media/ImageWriter;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/media/ImageWriter;->mListenerLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmWidth(Landroid/media/ImageWriter;)I
    .registers 1

    iget p0, p0, Landroid/media/ImageWriter;->mWidth:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mabortImage(Landroid/media/ImageWriter;Landroid/media/Image;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/media/ImageWriter;->abortImage(Landroid/media/Image;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1380
    const-string v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 1381
    invoke-static {}, Landroid/media/ImageWriter;->nativeClassInit()V

    .line 1382
    return-void
.end method

.method private constructor blacklist <init>(Landroid/view/Surface;IZIII)V
    .registers 21
    .param p1, "surface"    # Landroid/view/Surface;
    .param p2, "maxImages"    # I
    .param p3, "useSurfaceImageFormatInfo"    # Z
    .param p4, "imageFormat"    # I
    .param p5, "width"    # I
    .param p6, "height"    # I

    .line 373
    move-object v12, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, v12, Landroid/media/ImageWriter;->mListenerLock:Ljava/lang/Object;

    .line 121
    const-wide/16 v0, 0x30

    iput-wide v0, v12, Landroid/media/ImageWriter;->mUsage:J

    .line 130
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, v12, Landroid/media/ImageWriter;->mDequeuedImages:Ljava/util/List;

    .line 374
    move/from16 v13, p2

    iput v13, v12, Landroid/media/ImageWriter;->mMaxImages:I

    .line 375
    invoke-static/range {p4 .. p4}, Landroid/media/PublicFormatUtils;->getHalFormat(I)I

    move-result v0

    iput v0, v12, Landroid/media/ImageWriter;->mHardwareBufferFormat:I

    .line 376
    invoke-static/range {p4 .. p4}, Landroid/media/PublicFormatUtils;->getHalDataspace(I)I

    move-result v7

    iput v7, v12, Landroid/media/ImageWriter;->mDataSpace:I

    .line 378
    iget v6, v12, Landroid/media/ImageWriter;->mHardwareBufferFormat:I

    iget-wide v10, v12, Landroid/media/ImageWriter;->mUsage:J

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v5, p4

    move/from16 v8, p5

    move/from16 v9, p6

    invoke-direct/range {v0 .. v11}, Landroid/media/ImageWriter;->initializeImageWriter(Landroid/view/Surface;IZZIIIIIJ)V

    .line 380
    return-void
.end method

.method private constructor blacklist <init>(Landroid/view/Surface;IZIIIIJ)V
    .registers 27
    .param p1, "surface"    # Landroid/view/Surface;
    .param p2, "maxImages"    # I
    .param p3, "useSurfaceImageFormatInfo"    # Z
    .param p4, "hardwareBufferFormat"    # I
    .param p5, "dataSpace"    # I
    .param p6, "width"    # I
    .param p7, "height"    # I
    .param p8, "usage"    # J

    .line 394
    move-object/from16 v12, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 113
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, v12, Landroid/media/ImageWriter;->mListenerLock:Ljava/lang/Object;

    .line 121
    const-wide/16 v0, 0x30

    iput-wide v0, v12, Landroid/media/ImageWriter;->mUsage:J

    .line 130
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, v12, Landroid/media/ImageWriter;->mDequeuedImages:Ljava/util/List;

    .line 395
    move/from16 v13, p2

    iput v13, v12, Landroid/media/ImageWriter;->mMaxImages:I

    .line 396
    move-wide/from16 v14, p8

    iput-wide v14, v12, Landroid/media/ImageWriter;->mUsage:J

    .line 400
    if-eqz p3, :cond_35

    .line 401
    const/4 v0, 0x0

    .line 402
    .local v0, "imageFormat":I
    invoke-static {v0}, Landroid/media/PublicFormatUtils;->getHalFormat(I)I

    move-result v1

    iput v1, v12, Landroid/media/ImageWriter;->mHardwareBufferFormat:I

    .line 403
    invoke-static {v0}, Landroid/media/PublicFormatUtils;->getHalDataspace(I)I

    move-result v1

    iput v1, v12, Landroid/media/ImageWriter;->mDataSpace:I

    move/from16 v10, p4

    move/from16 v11, p5

    move/from16 v16, v0

    goto :goto_43

    .line 405
    .end local v0    # "imageFormat":I
    :cond_35
    invoke-static/range {p4 .. p5}, Landroid/media/PublicFormatUtils;->getPublicFormat(II)I

    move-result v0

    .line 406
    .restart local v0    # "imageFormat":I
    move/from16 v10, p4

    iput v10, v12, Landroid/media/ImageWriter;->mHardwareBufferFormat:I

    .line 407
    move/from16 v11, p5

    iput v11, v12, Landroid/media/ImageWriter;->mDataSpace:I

    move/from16 v16, v0

    .line 410
    .end local v0    # "imageFormat":I
    .local v16, "imageFormat":I
    :goto_43
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v5, v16

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move-wide/from16 v10, p8

    invoke-direct/range {v0 .. v11}, Landroid/media/ImageWriter;->initializeImageWriter(Landroid/view/Surface;IZZIIIIIJ)V

    .line 412
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/view/Surface;IZIIIIJLandroid/media/ImageWriter-IA;)V
    .registers 11

    invoke-direct/range {p0 .. p9}, Landroid/media/ImageWriter;-><init>(Landroid/view/Surface;IZIIIIJ)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/view/Surface;IZIIIJ)V
    .registers 25
    .param p1, "surface"    # Landroid/view/Surface;
    .param p2, "maxImages"    # I
    .param p3, "useSurfaceImageFormatInfo"    # Z
    .param p4, "imageFormat"    # I
    .param p5, "width"    # I
    .param p6, "height"    # I
    .param p7, "usage"    # J

    .line 383
    move-object/from16 v12, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 113
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, v12, Landroid/media/ImageWriter;->mListenerLock:Ljava/lang/Object;

    .line 121
    const-wide/16 v0, 0x30

    iput-wide v0, v12, Landroid/media/ImageWriter;->mUsage:J

    .line 130
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, v12, Landroid/media/ImageWriter;->mDequeuedImages:Ljava/util/List;

    .line 384
    move/from16 v13, p2

    iput v13, v12, Landroid/media/ImageWriter;->mMaxImages:I

    .line 385
    move-wide/from16 v14, p7

    iput-wide v14, v12, Landroid/media/ImageWriter;->mUsage:J

    .line 386
    invoke-static/range {p4 .. p4}, Landroid/media/PublicFormatUtils;->getHalFormat(I)I

    move-result v0

    iput v0, v12, Landroid/media/ImageWriter;->mHardwareBufferFormat:I

    .line 387
    invoke-static/range {p4 .. p4}, Landroid/media/PublicFormatUtils;->getHalDataspace(I)I

    move-result v7

    iput v7, v12, Landroid/media/ImageWriter;->mDataSpace:I

    .line 389
    iget v6, v12, Landroid/media/ImageWriter;->mHardwareBufferFormat:I

    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v5, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move-wide/from16 v10, p7

    invoke-direct/range {v0 .. v11}, Landroid/media/ImageWriter;->initializeImageWriter(Landroid/view/Surface;IZZIIIIIJ)V

    .line 391
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/view/Surface;IZIIIJLandroid/media/ImageWriter-IA;)V
    .registers 10

    invoke-direct/range {p0 .. p8}, Landroid/media/ImageWriter;-><init>(Landroid/view/Surface;IZIIIJ)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/view/Surface;IZIIIZ)V
    .registers 22
    .param p1, "surface"    # Landroid/view/Surface;
    .param p2, "maxImages"    # I
    .param p3, "useSurfaceImageFormatInfo"    # Z
    .param p4, "imageFormat"    # I
    .param p5, "width"    # I
    .param p6, "height"    # I
    .param p7, "iscamera"    # Z

    .line 358
    move-object v12, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, v12, Landroid/media/ImageWriter;->mListenerLock:Ljava/lang/Object;

    .line 121
    const-wide/16 v0, 0x30

    iput-wide v0, v12, Landroid/media/ImageWriter;->mUsage:J

    .line 130
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, v12, Landroid/media/ImageWriter;->mDequeuedImages:Ljava/util/List;

    .line 359
    move/from16 v13, p2

    iput v13, v12, Landroid/media/ImageWriter;->mMaxImages:I

    .line 360
    invoke-static/range {p4 .. p4}, Landroid/media/PublicFormatUtils;->getHalFormat(I)I

    move-result v0

    iput v0, v12, Landroid/media/ImageWriter;->mHardwareBufferFormat:I

    .line 361
    invoke-static/range {p4 .. p4}, Landroid/media/PublicFormatUtils;->getHalDataspace(I)I

    move-result v7

    iput v7, v12, Landroid/media/ImageWriter;->mDataSpace:I

    .line 363
    if-eqz p7, :cond_46

    .line 364
    const/4 v4, 0x1

    iget v6, v12, Landroid/media/ImageWriter;->mHardwareBufferFormat:I

    iget-wide v0, v12, Landroid/media/ImageWriter;->mUsage:J

    const-wide/32 v2, 0x40000

    or-long/2addr v0, v2

    const-wide/32 v2, 0x20000

    or-long v10, v0, v2

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v5, p4

    move/from16 v8, p5

    move/from16 v9, p6

    invoke-direct/range {v0 .. v11}, Landroid/media/ImageWriter;->initializeImageWriter(Landroid/view/Surface;IZZIIIIIJ)V

    goto :goto_5a

    .line 367
    :cond_46
    const/4 v4, 0x1

    iget v6, v12, Landroid/media/ImageWriter;->mHardwareBufferFormat:I

    iget-wide v10, v12, Landroid/media/ImageWriter;->mUsage:J

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v5, p4

    move/from16 v8, p5

    move/from16 v9, p6

    invoke-direct/range {v0 .. v11}, Landroid/media/ImageWriter;->initializeImageWriter(Landroid/view/Surface;IZZIIIIIJ)V

    .line 370
    :goto_5a
    return-void
.end method

.method private greylist-max-o abortImage(Landroid/media/Image;)V
    .registers 5
    .param p1, "image"    # Landroid/media/Image;

    .line 905
    if-eqz p1, :cond_2b

    .line 909
    iget-object v0, p0, Landroid/media/ImageWriter;->mDequeuedImages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 914
    move-object v0, p1

    check-cast v0, Landroid/media/ImageWriter$WriterSurfaceImage;

    .line 915
    .local v0, "wi":Landroid/media/ImageWriter$WriterSurfaceImage;
    iget-boolean v1, v0, Landroid/media/ImageWriter$WriterSurfaceImage;->mIsImageValid:Z

    if-nez v1, :cond_12

    .line 916
    return-void

    .line 925
    :cond_12
    iget-wide v1, p0, Landroid/media/ImageWriter;->mNativeContext:J

    invoke-direct {p0, v1, v2, p1}, Landroid/media/ImageWriter;->cancelImage(JLandroid/media/Image;)V

    .line 926
    iget-object v1, p0, Landroid/media/ImageWriter;->mDequeuedImages:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 927
    invoke-static {v0}, Landroid/media/ImageWriter$WriterSurfaceImage;->-$$Nest$mclearSurfacePlanes(Landroid/media/ImageWriter$WriterSurfaceImage;)V

    .line 928
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/media/ImageWriter$WriterSurfaceImage;->mIsImageValid:Z

    .line 929
    return-void

    .line 910
    .end local v0    # "wi":Landroid/media/ImageWriter$WriterSurfaceImage;
    :cond_23
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "It is illegal to abort some image that is not dequeued yet"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 906
    :cond_2b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "image shouldn\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o attachAndQueueInputImage(Landroid/media/Image;)V
    .registers 20
    .param p1, "image"    # Landroid/media/Image;

    .line 807
    move-object/from16 v15, p0

    if-eqz p1, :cond_93

    .line 810
    invoke-direct/range {p0 .. p1}, Landroid/media/ImageWriter;->isImageOwnedByMe(Landroid/media/Image;)Z

    move-result v0

    if-nez v0, :cond_8b

    .line 820
    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->isAttachable()Z

    move-result v0

    if-eqz v0, :cond_83

    .line 828
    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getCropRect()Landroid/graphics/Rect;

    move-result-object v14

    .line 829
    .local v14, "crop":Landroid/graphics/Rect;
    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getNativeContext()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4a

    .line 830
    iget-wide v1, v15, Landroid/media/ImageWriter;->mNativeContext:J

    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getNativeContext()J

    move-result-wide v3

    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getFormat()I

    move-result v5

    .line 831
    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v6

    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getDataSpace()I

    move-result v8

    iget v9, v14, Landroid/graphics/Rect;->left:I

    iget v10, v14, Landroid/graphics/Rect;->top:I

    iget v11, v14, Landroid/graphics/Rect;->right:I

    iget v12, v14, Landroid/graphics/Rect;->bottom:I

    .line 832
    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getTransform()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getScalingMode()I

    move-result v16

    .line 830
    move-object/from16 v0, p0

    move-object/from16 v17, v14

    .end local v14    # "crop":Landroid/graphics/Rect;
    .local v17, "crop":Landroid/graphics/Rect;
    move/from16 v14, v16

    invoke-direct/range {v0 .. v14}, Landroid/media/ImageWriter;->nativeAttachAndQueueImage(JJIJIIIIIII)I

    goto :goto_82

    .line 834
    .end local v17    # "crop":Landroid/graphics/Rect;
    .restart local v14    # "crop":Landroid/graphics/Rect;
    :cond_4a
    move-object/from16 v17, v14

    .end local v14    # "crop":Landroid/graphics/Rect;
    .restart local v17    # "crop":Landroid/graphics/Rect;
    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/GraphicBuffer;->createFromHardwareBuffer(Landroid/hardware/HardwareBuffer;)Landroid/graphics/GraphicBuffer;

    move-result-object v14

    .line 835
    .local v14, "gb":Landroid/graphics/GraphicBuffer;
    iget-wide v1, v15, Landroid/media/ImageWriter;->mNativeContext:J

    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getFormat()I

    move-result v4

    .line 836
    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v5

    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getDataSpace()I

    move-result v7

    move-object/from16 v13, v17

    .end local v17    # "crop":Landroid/graphics/Rect;
    .local v13, "crop":Landroid/graphics/Rect;
    iget v8, v13, Landroid/graphics/Rect;->left:I

    iget v9, v13, Landroid/graphics/Rect;->top:I

    iget v10, v13, Landroid/graphics/Rect;->right:I

    iget v11, v13, Landroid/graphics/Rect;->bottom:I

    .line 837
    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getTransform()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getScalingMode()I

    move-result v16

    .line 835
    move-object/from16 v0, p0

    move-object v3, v14

    .end local v13    # "crop":Landroid/graphics/Rect;
    .restart local v17    # "crop":Landroid/graphics/Rect;
    move/from16 v13, v16

    invoke-direct/range {v0 .. v13}, Landroid/media/ImageWriter;->nativeAttachAndQueueGraphicBuffer(JLandroid/graphics/GraphicBuffer;IJIIIIIII)I

    .line 838
    invoke-virtual {v14}, Landroid/graphics/GraphicBuffer;->destroy()V

    .line 839
    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->close()V

    .line 841
    .end local v14    # "gb":Landroid/graphics/GraphicBuffer;
    :goto_82
    return-void

    .line 821
    .end local v17    # "crop":Landroid/graphics/Rect;
    :cond_83
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Image was not detached from last owner, or image  is not detachable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 811
    :cond_8b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can not attach an image that is owned ImageWriter already"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 808
    :cond_93
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "image shouldn\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private synchronized native greylist-max-o cancelImage(JLandroid/media/Image;)V
.end method

.method private blacklist initializeImageWriter(Landroid/view/Surface;IZZIIIIIJ)V
    .registers 27
    .param p1, "surface"    # Landroid/view/Surface;
    .param p2, "maxImages"    # I
    .param p3, "useSurfaceImageFormatInfo"    # Z
    .param p4, "useLegacyImageFormat"    # Z
    .param p5, "imageFormat"    # I
    .param p6, "hardwareBufferFormat"    # I
    .param p7, "dataSpace"    # I
    .param p8, "width"    # I
    .param p9, "height"    # I
    .param p10, "usage"    # J

    .line 301
    move-object v11, p0

    move-object/from16 v12, p1

    move/from16 v13, p2

    if-eqz v12, :cond_95

    const/4 v14, 0x1

    if-lt v13, v14, :cond_95

    .line 308
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    move-object v0, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p8

    move/from16 v5, p9

    move/from16 v6, p3

    move/from16 v7, p6

    move/from16 v8, p7

    move-wide/from16 v9, p10

    invoke-direct/range {v0 .. v10}, Landroid/media/ImageWriter;->nativeInit(Ljava/lang/Object;Landroid/view/Surface;IIIZIIJ)J

    move-result-wide v0

    iput-wide v0, v11, Landroid/media/ImageWriter;->mNativeContext:J

    .line 312
    if-eqz p3, :cond_39

    .line 315
    invoke-static/range {p1 .. p1}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceFormat(Landroid/view/Surface;)I

    move-result v0

    .line 316
    .end local p5    # "imageFormat":I
    .local v0, "imageFormat":I
    invoke-static {v0}, Landroid/media/PublicFormatUtils;->getHalFormat(I)I

    move-result v1

    iput v1, v11, Landroid/media/ImageWriter;->mHardwareBufferFormat:I

    .line 317
    invoke-static {v0}, Landroid/media/PublicFormatUtils;->getHalDataspace(I)I

    move-result v1

    iput v1, v11, Landroid/media/ImageWriter;->mDataSpace:I

    goto :goto_3b

    .line 312
    .end local v0    # "imageFormat":I
    .restart local p5    # "imageFormat":I
    :cond_39
    move/from16 v0, p5

    .line 323
    .end local p5    # "imageFormat":I
    .restart local v0    # "imageFormat":I
    :goto_3b
    const/16 v1, 0x21

    if-ne v0, v1, :cond_60

    .line 324
    invoke-static/range {p1 .. p1}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceDataspace(Landroid/view/Surface;)I

    move-result v1

    .line 325
    .local v1, "surfaceDataspace":I
    packed-switch v1, :pswitch_data_bc

    .line 336
    :pswitch_46
    const/16 v0, 0x100

    goto :goto_54

    .line 333
    :pswitch_49
    const v0, 0x48454946

    .line 334
    goto :goto_54

    .line 330
    :pswitch_4d
    const v0, 0x69656963

    .line 331
    goto :goto_54

    .line 327
    :pswitch_51
    const/16 v0, 0x101

    .line 328
    nop

    .line 338
    :goto_54
    invoke-static {v0}, Landroid/media/PublicFormatUtils;->getHalFormat(I)I

    move-result v2

    iput v2, v11, Landroid/media/ImageWriter;->mHardwareBufferFormat:I

    .line 339
    invoke-static {v0}, Landroid/media/PublicFormatUtils;->getHalDataspace(I)I

    move-result v2

    iput v2, v11, Landroid/media/ImageWriter;->mDataSpace:I

    .line 347
    .end local v1    # "surfaceDataspace":I
    :cond_60
    invoke-static/range {p1 .. p1}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceSize(Landroid/view/Surface;)Landroid/util/Size;

    move-result-object v1

    .line 348
    .local v1, "surfSize":Landroid/util/Size;
    const/4 v2, -0x1

    move/from16 v3, p8

    if-ne v3, v2, :cond_6e

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v4

    goto :goto_6f

    :cond_6e
    move v4, v3

    :goto_6f
    iput v4, v11, Landroid/media/ImageWriter;->mWidth:I

    .line 349
    move/from16 v4, p9

    if-ne v4, v2, :cond_7a

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v2

    goto :goto_7b

    :cond_7a
    move v2, v4

    :goto_7b
    iput v2, v11, Landroid/media/ImageWriter;->mHeight:I

    .line 351
    iget v5, v11, Landroid/media/ImageWriter;->mWidth:I

    .line 353
    if-eqz p4, :cond_83

    move v6, v0

    goto :goto_85

    :cond_83
    move/from16 v6, p6

    .line 352
    :goto_85
    invoke-static {v5, v2, v6, v14}, Landroid/media/ImageUtils;->getEstimatedNativeAllocBytes(IIII)I

    move-result v2

    iput v2, v11, Landroid/media/ImageWriter;->mEstimatedNativeAllocBytes:I

    .line 354
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v2

    iget v5, v11, Landroid/media/ImageWriter;->mEstimatedNativeAllocBytes:I

    invoke-virtual {v2, v5}, Ldalvik/system/VMRuntime;->registerNativeAllocation(I)V

    .line 355
    return-void

    .line 301
    .end local v0    # "imageFormat":I
    .end local v1    # "surfSize":Landroid/util/Size;
    .restart local p5    # "imageFormat":I
    :cond_95
    move/from16 v3, p8

    move/from16 v4, p9

    .line 302
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal input argument: surface "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", maxImages: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_bc
    .packed-switch 0x1000
        :pswitch_51
        :pswitch_46
        :pswitch_4d
        :pswitch_49
    .end packed-switch
.end method

.method private greylist-max-o isImageOwnedByMe(Landroid/media/Image;)Z
    .registers 6
    .param p1, "image"    # Landroid/media/Image;

    .line 932
    instance-of v0, p1, Landroid/media/ImageWriter$WriterSurfaceImage;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 933
    return v1

    .line 935
    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/media/ImageWriter$WriterSurfaceImage;

    .line 936
    .local v0, "wi":Landroid/media/ImageWriter$WriterSurfaceImage;
    invoke-virtual {v0}, Landroid/media/ImageWriter$WriterSurfaceImage;->getOwner()Landroid/media/ImageWriter;

    move-result-object v2

    if-eq v2, p0, :cond_30

    .line 938
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is owned by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/media/ImageWriter$WriterSurfaceImage;->getOwner()Landroid/media/ImageWriter;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ImageWriter"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 939
    return v1

    .line 942
    :cond_30
    const/4 v1, 0x1

    return v1
.end method

.method private synchronized native blacklist nativeAttachAndQueueGraphicBuffer(JLandroid/graphics/GraphicBuffer;IJIIIIIII)I
.end method

.method private synchronized native blacklist nativeAttachAndQueueImage(JJIJIIIIIII)I
.end method

.method private static native greylist-max-o nativeClassInit()V
.end method

.method private synchronized native greylist-max-o nativeClose(J)V
.end method

.method private synchronized native greylist-max-o nativeDequeueInputImage(JLandroid/media/Image;)V
.end method

.method private synchronized native blacklist nativeInit(Ljava/lang/Object;Landroid/view/Surface;IIIZIIJ)J
.end method

.method private synchronized native blacklist nativeQueueInputImage(JLandroid/media/Image;JIIIIIII)V
.end method

.method public static whitelist newInstance(Landroid/view/Surface;I)Landroid/media/ImageWriter;
    .registers 10
    .param p0, "surface"    # Landroid/view/Surface;
    .param p1, "maxImages"    # I

    .line 194
    new-instance v7, Landroid/media/ImageWriter;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    move-object v0, v7

    move-object v1, p0

    move v2, p1

    invoke-direct/range {v0 .. v6}, Landroid/media/ImageWriter;-><init>(Landroid/view/Surface;IZIII)V

    return-object v7
.end method

.method public static whitelist newInstance(Landroid/view/Surface;II)Landroid/media/ImageWriter;
    .registers 12
    .param p0, "surface"    # Landroid/view/Surface;
    .param p1, "maxImages"    # I
    .param p2, "format"    # I

    .line 292
    invoke-static {p2}, Landroid/graphics/ImageFormat;->isPublicFormat(I)Z

    move-result v0

    if-nez v0, :cond_26

    invoke-static {p2}, Landroid/graphics/PixelFormat;->isPublicFormat(I)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_26

    .line 293
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid format is specified: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 295
    :cond_26
    :goto_26
    new-instance v0, Landroid/media/ImageWriter;

    const/4 v5, 0x0

    const/4 v7, -0x1

    const/4 v8, -0x1

    move-object v2, v0

    move-object v3, p0

    move v4, p1

    move v6, p2

    invoke-direct/range {v2 .. v8}, Landroid/media/ImageWriter;-><init>(Landroid/view/Surface;IZIII)V

    return-object v0
.end method

.method public static blacklist newInstance(Landroid/view/Surface;IIII)Landroid/media/ImageWriter;
    .registers 14
    .param p0, "surface"    # Landroid/view/Surface;
    .param p1, "maxImages"    # I
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .line 243
    invoke-static {p2}, Landroid/graphics/ImageFormat;->isPublicFormat(I)Z

    move-result v0

    if-nez v0, :cond_26

    invoke-static {p2}, Landroid/graphics/PixelFormat;->isPublicFormat(I)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_26

    .line 244
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid format is specified: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 246
    :cond_26
    :goto_26
    new-instance v0, Landroid/media/ImageWriter;

    const/4 v5, 0x0

    move-object v2, v0

    move-object v3, p0

    move v4, p1

    move v6, p2

    move v7, p3

    move v8, p4

    invoke-direct/range {v2 .. v8}, Landroid/media/ImageWriter;-><init>(Landroid/view/Surface;IZIII)V

    return-object v0
.end method

.method public static whitelist newInstance(Landroid/view/Surface;IZ)Landroid/media/ImageWriter;
    .registers 12
    .param p0, "surface"    # Landroid/view/Surface;
    .param p1, "maxImages"    # I
    .param p2, "iscamera"    # Z

    .line 162
    new-instance v8, Landroid/media/ImageWriter;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    move-object v0, v8

    move-object v1, p0

    move v2, p1

    move v7, p2

    invoke-direct/range {v0 .. v7}, Landroid/media/ImageWriter;-><init>(Landroid/view/Surface;IZIIIZ)V

    return-object v8
.end method

.method private static greylist-max-o postEventFromNative(Ljava/lang/Object;)V
    .registers 5
    .param p0, "selfRef"    # Ljava/lang/Object;

    .line 871
    move-object v0, p0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 872
    .local v0, "weakSelf":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/media/ImageWriter;>;"
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/ImageWriter;

    .line 873
    .local v1, "iw":Landroid/media/ImageWriter;
    if-nez v1, :cond_c

    .line 874
    return-void

    .line 878
    :cond_c
    iget-object v2, v1, Landroid/media/ImageWriter;->mListenerLock:Ljava/lang/Object;

    monitor-enter v2

    .line 879
    :try_start_f
    iget-object v3, v1, Landroid/media/ImageWriter;->mListenerHandler:Landroid/media/ImageWriter$ListenerHandler;

    .line 880
    .local v3, "handler":Landroid/os/Handler;
    monitor-exit v2
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_19

    .line 881
    if-eqz v3, :cond_18

    .line 882
    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 884
    :cond_18
    return-void

    .line 880
    .end local v3    # "handler":Landroid/os/Handler;
    :catchall_19
    move-exception v3

    :try_start_1a
    monitor-exit v2
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw v3
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 3

    .line 756
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroid/media/ImageWriter;->setOnImageReleasedListener(Landroid/media/ImageWriter$OnImageReleasedListener;Landroid/os/Handler;)V

    .line 757
    iget-object v0, p0, Landroid/media/ImageWriter;->mDequeuedImages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/Image;

    .line 758
    .local v1, "image":Landroid/media/Image;
    invoke-virtual {v1}, Landroid/media/Image;->close()V

    .line 759
    .end local v1    # "image":Landroid/media/Image;
    goto :goto_a

    .line 760
    :cond_1a
    iget-object v0, p0, Landroid/media/ImageWriter;->mDequeuedImages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 761
    iget-wide v0, p0, Landroid/media/ImageWriter;->mNativeContext:J

    invoke-direct {p0, v0, v1}, Landroid/media/ImageWriter;->nativeClose(J)V

    .line 762
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/media/ImageWriter;->mNativeContext:J

    .line 764
    iget v0, p0, Landroid/media/ImageWriter;->mEstimatedNativeAllocBytes:I

    if-lez v0, :cond_38

    .line 765
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    iget v1, p0, Landroid/media/ImageWriter;->mEstimatedNativeAllocBytes:I

    invoke-virtual {v0, v1}, Ldalvik/system/VMRuntime;->registerNativeFree(I)V

    .line 766
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/ImageWriter;->mEstimatedNativeAllocBytes:I

    .line 768
    :cond_38
    return-void
.end method

.method public whitelist dequeueInputImage()Landroid/media/Image;
    .registers 4

    .line 513
    iget-object v0, p0, Landroid/media/ImageWriter;->mDequeuedImages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Landroid/media/ImageWriter;->mMaxImages:I

    if-ge v0, v1, :cond_1d

    .line 516
    new-instance v0, Landroid/media/ImageWriter$WriterSurfaceImage;

    invoke-direct {v0, p0}, Landroid/media/ImageWriter$WriterSurfaceImage;-><init>(Landroid/media/ImageWriter;)V

    .line 517
    .local v0, "newImage":Landroid/media/ImageWriter$WriterSurfaceImage;
    iget-wide v1, p0, Landroid/media/ImageWriter;->mNativeContext:J

    invoke-direct {p0, v1, v2, v0}, Landroid/media/ImageWriter;->nativeDequeueInputImage(JLandroid/media/Image;)V

    .line 518
    iget-object v1, p0, Landroid/media/ImageWriter;->mDequeuedImages:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 519
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/media/ImageWriter$WriterSurfaceImage;->mIsImageValid:Z

    .line 520
    return-object v0

    .line 514
    .end local v0    # "newImage":Landroid/media/ImageWriter$WriterSurfaceImage;
    :cond_1d
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Already dequeued max number of Images "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/ImageWriter;->mMaxImages:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist test-api finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 773
    :try_start_0
    invoke-virtual {p0}, Landroid/media/ImageWriter;->close()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_8

    .line 775
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 776
    nop

    .line 777
    return-void

    .line 775
    :catchall_8
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 776
    throw v0
.end method

.method public whitelist getDataSpace()I
    .registers 2

    .line 674
    iget v0, p0, Landroid/media/ImageWriter;->mDataSpace:I

    return v0
.end method

.method public whitelist getFormat()I
    .registers 2

    .line 636
    iget v0, p0, Landroid/media/ImageWriter;->mWriterFormat:I

    return v0
.end method

.method public whitelist getHardwareBufferFormat()I
    .registers 2

    .line 661
    iget v0, p0, Landroid/media/ImageWriter;->mHardwareBufferFormat:I

    return v0
.end method

.method public whitelist getHeight()I
    .registers 2

    .line 462
    iget v0, p0, Landroid/media/ImageWriter;->mHeight:I

    return v0
.end method

.method public whitelist getMaxImages()I
    .registers 2

    .line 438
    iget v0, p0, Landroid/media/ImageWriter;->mMaxImages:I

    return v0
.end method

.method public whitelist getUsage()J
    .registers 3

    .line 648
    iget-wide v0, p0, Landroid/media/ImageWriter;->mUsage:J

    return-wide v0
.end method

.method public whitelist getWidth()I
    .registers 2

    .line 450
    iget v0, p0, Landroid/media/ImageWriter;->mWidth:I

    return v0
.end method

.method public whitelist queueInputImage(Landroid/media/Image;)V
    .registers 20
    .param p1, "image"    # Landroid/media/Image;

    .line 575
    move-object/from16 v13, p0

    move-object/from16 v14, p1

    if-eqz v14, :cond_80

    .line 578
    invoke-direct/range {p0 .. p1}, Landroid/media/ImageWriter;->isImageOwnedByMe(Landroid/media/Image;)Z

    move-result v15

    .line 579
    .local v15, "ownedByMe":Z
    if-eqz v15, :cond_1c

    move-object v0, v14

    check-cast v0, Landroid/media/ImageWriter$WriterSurfaceImage;

    iget-boolean v0, v0, Landroid/media/ImageWriter$WriterSurfaceImage;->mIsImageValid:Z

    if-eqz v0, :cond_14

    goto :goto_1c

    .line 580
    :cond_14
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Image from ImageWriter is invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 585
    :cond_1c
    :goto_1c
    if-nez v15, :cond_46

    .line 586
    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getOwner()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Landroid/media/ImageReader;

    if-eqz v0, :cond_30

    .line 587
    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getOwner()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/ImageReader;

    .line 589
    .local v0, "prevOwner":Landroid/media/ImageReader;
    invoke-virtual {v0, v14}, Landroid/media/ImageReader;->detachImage(Landroid/media/Image;)V

    .end local v0    # "prevOwner":Landroid/media/ImageReader;
    goto :goto_36

    .line 590
    :cond_30
    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getOwner()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3e

    :goto_36
    nop

    .line 595
    invoke-direct/range {p0 .. p1}, Landroid/media/ImageWriter;->attachAndQueueInputImage(Landroid/media/Image;)V

    .line 599
    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->close()V

    .line 600
    return-void

    .line 591
    :cond_3e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only images from ImageReader can be queued to ImageWriter, other image source is not supported yet!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 603
    :cond_46
    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getCropRect()Landroid/graphics/Rect;

    move-result-object v12

    .line 604
    .local v12, "crop":Landroid/graphics/Rect;
    iget-wide v1, v13, Landroid/media/ImageWriter;->mNativeContext:J

    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v4

    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getDataSpace()I

    move-result v6

    iget v7, v12, Landroid/graphics/Rect;->left:I

    iget v8, v12, Landroid/graphics/Rect;->top:I

    iget v9, v12, Landroid/graphics/Rect;->right:I

    iget v10, v12, Landroid/graphics/Rect;->bottom:I

    .line 605
    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getTransform()I

    move-result v11

    .line 606
    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getScalingMode()I

    move-result v16

    .line 604
    move-object/from16 v0, p0

    move-object/from16 v3, p1

    move-object/from16 v17, v12

    .end local v12    # "crop":Landroid/graphics/Rect;
    .local v17, "crop":Landroid/graphics/Rect;
    move/from16 v12, v16

    invoke-direct/range {v0 .. v12}, Landroid/media/ImageWriter;->nativeQueueInputImage(JLandroid/media/Image;JIIIIIII)V

    .line 615
    if-eqz v15, :cond_7f

    .line 616
    iget-object v0, v13, Landroid/media/ImageWriter;->mDequeuedImages:Ljava/util/List;

    invoke-interface {v0, v14}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 618
    move-object v0, v14

    check-cast v0, Landroid/media/ImageWriter$WriterSurfaceImage;

    .line 619
    .local v0, "wi":Landroid/media/ImageWriter$WriterSurfaceImage;
    invoke-static {v0}, Landroid/media/ImageWriter$WriterSurfaceImage;->-$$Nest$mclearSurfacePlanes(Landroid/media/ImageWriter$WriterSurfaceImage;)V

    .line 620
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/media/ImageWriter$WriterSurfaceImage;->mIsImageValid:Z

    .line 622
    .end local v0    # "wi":Landroid/media/ImageWriter$WriterSurfaceImage;
    :cond_7f
    return-void

    .line 576
    .end local v15    # "ownedByMe":Z
    .end local v17    # "crop":Landroid/graphics/Rect;
    :cond_80
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "image shouldn\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setOnImageReleasedListener(Landroid/media/ImageWriter$OnImageReleasedListener;Landroid/os/Handler;)V
    .registers 7
    .param p1, "listener"    # Landroid/media/ImageWriter$OnImageReleasedListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 724
    iget-object v0, p0, Landroid/media/ImageWriter;->mListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 725
    if-eqz p1, :cond_2e

    .line 726
    if-eqz p2, :cond_c

    :try_start_7
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    goto :goto_10

    :cond_c
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    .line 727
    .local v1, "looper":Landroid/os/Looper;
    :goto_10
    if-eqz v1, :cond_26

    .line 731
    iget-object v2, p0, Landroid/media/ImageWriter;->mListenerHandler:Landroid/media/ImageWriter$ListenerHandler;

    if-eqz v2, :cond_1c

    invoke-virtual {v2}, Landroid/media/ImageWriter$ListenerHandler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v2, v1, :cond_23

    .line 732
    :cond_1c
    new-instance v2, Landroid/media/ImageWriter$ListenerHandler;

    invoke-direct {v2, p0, v1}, Landroid/media/ImageWriter$ListenerHandler;-><init>(Landroid/media/ImageWriter;Landroid/os/Looper;)V

    iput-object v2, p0, Landroid/media/ImageWriter;->mListenerHandler:Landroid/media/ImageWriter$ListenerHandler;

    .line 734
    :cond_23
    iput-object p1, p0, Landroid/media/ImageWriter;->mListener:Landroid/media/ImageWriter$OnImageReleasedListener;

    .line 735
    .end local v1    # "looper":Landroid/os/Looper;
    goto :goto_33

    .line 728
    .restart local v1    # "looper":Landroid/os/Looper;
    :cond_26
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "handler is null but the current thread is not a looper"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/media/ImageWriter;
    .end local p1    # "listener":Landroid/media/ImageWriter$OnImageReleasedListener;
    .end local p2    # "handler":Landroid/os/Handler;
    throw v2

    .line 736
    .end local v1    # "looper":Landroid/os/Looper;
    .restart local p0    # "this":Landroid/media/ImageWriter;
    .restart local p1    # "listener":Landroid/media/ImageWriter$OnImageReleasedListener;
    .restart local p2    # "handler":Landroid/os/Handler;
    :cond_2e
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/ImageWriter;->mListener:Landroid/media/ImageWriter$OnImageReleasedListener;

    .line 737
    iput-object v1, p0, Landroid/media/ImageWriter;->mListenerHandler:Landroid/media/ImageWriter$ListenerHandler;

    .line 739
    :goto_33
    monitor-exit v0

    .line 740
    return-void

    .line 739
    :catchall_35
    move-exception v1

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_7 .. :try_end_37} :catchall_35

    throw v1
.end method
