.class public Landroid/media/ImageWriter;
.super Ljava/lang/Object;
.source "ImageWriter.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/ImageWriter$WriterSurfaceImage;,
        Landroid/media/ImageWriter$ListenerHandler;,
        Landroid/media/ImageWriter$OnImageReleasedListener;,
        Landroid/media/ImageWriter$Builder;
    }
.end annotation


# instance fields
.field private final blacklist mCloseLock:Ljava/lang/Object;

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

.field private blacklist mIsWriterValid:Z

.field private greylist-max-o mListener:Landroid/media/ImageWriter$OnImageReleasedListener;

.field private greylist-max-o mListenerHandler:Landroid/media/ImageWriter$ListenerHandler;

.field private final greylist-max-o mListenerLock:Ljava/lang/Object;

.field private final greylist-max-o mMaxImages:I

.field private greylist-max-o mNativeContext:J

.field private blacklist mUsage:J

.field private blacklist mWidth:I

.field private greylist-max-o mWriterFormat:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCloseLock(Landroid/media/ImageWriter;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/media/ImageWriter;->mCloseLock:Ljava/lang/Object;

    return-object p0
.end method

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

.method static bridge synthetic blacklist -$$Nest$fgetmIsWriterValid(Landroid/media/ImageWriter;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/media/ImageWriter;->mIsWriterValid:Z

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

    .line 1325
    const-string v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 1326
    invoke-static {}, Landroid/media/ImageWriter;->nativeClassInit()V

    .line 1327
    return-void
.end method

.method private constructor blacklist <init>(Landroid/view/Surface;IZIII)V
    .registers 18

    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/media/ImageWriter;->mListenerLock:Ljava/lang/Object;

    .line 102
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/media/ImageWriter;->mCloseLock:Ljava/lang/Object;

    .line 103
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/media/ImageWriter;->mIsWriterValid:Z

    .line 109
    const-wide/16 v1, 0x30

    iput-wide v1, p0, Landroid/media/ImageWriter;->mUsage:J

    .line 118
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Landroid/media/ImageWriter;->mDequeuedImages:Ljava/util/List;

    .line 293
    iput p2, p0, Landroid/media/ImageWriter;->mMaxImages:I

    .line 294
    if-nez p3, :cond_2f

    .line 295
    invoke-static {p4}, Landroid/media/PublicFormatUtils;->getHalFormat(I)I

    move-result v1

    iput v1, p0, Landroid/media/ImageWriter;->mHardwareBufferFormat:I

    .line 296
    invoke-static {p4}, Landroid/media/PublicFormatUtils;->getHalDataspace(I)I

    move-result v1

    iput v1, p0, Landroid/media/ImageWriter;->mDataSpace:I

    .line 299
    :cond_2f
    iget v5, p0, Landroid/media/ImageWriter;->mHardwareBufferFormat:I

    iget v6, p0, Landroid/media/ImageWriter;->mDataSpace:I

    iget-wide v9, p0, Landroid/media/ImageWriter;->mUsage:J

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-direct/range {v0 .. v10}, Landroid/media/ImageWriter;->initializeImageWriter(Landroid/view/Surface;IZIIIIIJ)V

    .line 301
    return-void
.end method

.method private constructor blacklist <init>(Landroid/view/Surface;IZIIIIJ)V
    .registers 21

    .line 317
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/media/ImageWriter;->mListenerLock:Ljava/lang/Object;

    .line 102
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/media/ImageWriter;->mCloseLock:Ljava/lang/Object;

    .line 103
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/media/ImageWriter;->mIsWriterValid:Z

    .line 109
    const-wide/16 v2, 0x30

    iput-wide v2, p0, Landroid/media/ImageWriter;->mUsage:J

    .line 118
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v2, p0, Landroid/media/ImageWriter;->mDequeuedImages:Ljava/util/List;

    .line 318
    iput p2, p0, Landroid/media/ImageWriter;->mMaxImages:I

    .line 319
    move-wide/from16 v9, p8

    iput-wide v9, p0, Landroid/media/ImageWriter;->mUsage:J

    .line 323
    if-eqz p3, :cond_2b

    .line 324
    move/from16 v6, p5

    move v4, v1

    goto :goto_36

    .line 326
    :cond_2b
    invoke-static/range {p4 .. p5}, Landroid/media/PublicFormatUtils;->getPublicFormat(II)I

    move-result v1

    .line 327
    iput p4, p0, Landroid/media/ImageWriter;->mHardwareBufferFormat:I

    .line 328
    move/from16 v6, p5

    iput v6, p0, Landroid/media/ImageWriter;->mDataSpace:I

    move v4, v1

    .line 331
    :goto_36
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, p4

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v10}, Landroid/media/ImageWriter;->initializeImageWriter(Landroid/view/Surface;IZIIIIIJ)V

    .line 333
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/view/Surface;IZIIIIJLandroid/media/ImageWriter-IA;)V
    .registers 11

    invoke-direct/range {p0 .. p9}, Landroid/media/ImageWriter;-><init>(Landroid/view/Surface;IZIIIIJ)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/view/Surface;IZIIIJ)V
    .registers 20

    .line 304
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/media/ImageWriter;->mListenerLock:Ljava/lang/Object;

    .line 102
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/media/ImageWriter;->mCloseLock:Ljava/lang/Object;

    .line 103
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/media/ImageWriter;->mIsWriterValid:Z

    .line 109
    const-wide/16 v1, 0x30

    iput-wide v1, p0, Landroid/media/ImageWriter;->mUsage:J

    .line 118
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Landroid/media/ImageWriter;->mDequeuedImages:Ljava/util/List;

    .line 305
    iput p2, p0, Landroid/media/ImageWriter;->mMaxImages:I

    .line 306
    move-wide/from16 v9, p7

    iput-wide v9, p0, Landroid/media/ImageWriter;->mUsage:J

    .line 307
    if-nez p3, :cond_33

    .line 308
    invoke-static {p4}, Landroid/media/PublicFormatUtils;->getHalFormat(I)I

    move-result v1

    iput v1, p0, Landroid/media/ImageWriter;->mHardwareBufferFormat:I

    .line 309
    invoke-static {p4}, Landroid/media/PublicFormatUtils;->getHalDataspace(I)I

    move-result v1

    iput v1, p0, Landroid/media/ImageWriter;->mDataSpace:I

    .line 312
    :cond_33
    iget v5, p0, Landroid/media/ImageWriter;->mHardwareBufferFormat:I

    iget v6, p0, Landroid/media/ImageWriter;->mDataSpace:I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-direct/range {v0 .. v10}, Landroid/media/ImageWriter;->initializeImageWriter(Landroid/view/Surface;IZIIIIIJ)V

    .line 314
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/view/Surface;IZIIIJLandroid/media/ImageWriter-IA;)V
    .registers 10

    invoke-direct/range {p0 .. p8}, Landroid/media/ImageWriter;-><init>(Landroid/view/Surface;IZIIIJ)V

    return-void
.end method

.method private greylist-max-o abortImage(Landroid/media/Image;)V
    .registers 5

    .line 845
    if-eqz p1, :cond_2b

    .line 849
    iget-object v0, p0, Landroid/media/ImageWriter;->mDequeuedImages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 854
    move-object v0, p1

    check-cast v0, Landroid/media/ImageWriter$WriterSurfaceImage;

    .line 855
    iget-boolean v1, v0, Landroid/media/ImageWriter$WriterSurfaceImage;->mIsImageValid:Z

    if-nez v1, :cond_12

    .line 856
    return-void

    .line 865
    :cond_12
    iget-wide v1, p0, Landroid/media/ImageWriter;->mNativeContext:J

    invoke-direct {p0, v1, v2, p1}, Landroid/media/ImageWriter;->cancelImage(JLandroid/media/Image;)V

    .line 866
    iget-object v1, p0, Landroid/media/ImageWriter;->mDequeuedImages:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 867
    invoke-static {v0}, Landroid/media/ImageWriter$WriterSurfaceImage;->-$$Nest$mclearSurfacePlanes(Landroid/media/ImageWriter$WriterSurfaceImage;)V

    .line 868
    const/4 p1, 0x0

    iput-boolean p1, v0, Landroid/media/ImageWriter$WriterSurfaceImage;->mIsImageValid:Z

    .line 869
    return-void

    .line 850
    :cond_23
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "It is illegal to abort some image that is not dequeued yet"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 846
    :cond_2b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "image shouldn\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private greylist-max-o attachAndQueueInputImage(Landroid/media/Image;)V
    .registers 19

    .line 737
    move-object/from16 v0, p0

    if-eqz p1, :cond_96

    .line 740
    invoke-direct/range {p0 .. p1}, Landroid/media/ImageWriter;->isImageOwnedByMe(Landroid/media/Image;)Z

    move-result v1

    if-nez v1, :cond_8e

    .line 750
    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->isAttachable()Z

    move-result v1

    if-eqz v1, :cond_86

    .line 758
    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getCropRect()Landroid/graphics/Rect;

    move-result-object v1

    .line 759
    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getFormat()I

    move-result v2

    invoke-static {v2}, Landroid/media/PublicFormatUtils;->getHalFormat(I)I

    move-result v4

    .line 760
    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getNativeContext()J

    move-result-wide v2

    const-wide/16 v5, 0x0

    cmp-long v2, v2, v5

    if-eqz v2, :cond_51

    .line 761
    iget-wide v2, v0, Landroid/media/ImageWriter;->mNativeContext:J

    move-wide v6, v2

    move v5, v4

    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getNativeContext()J

    move-result-wide v3

    .line 762
    move-wide v8, v6

    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v6

    move-wide v9, v8

    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getDataSpace()I

    move-result v8

    move-wide v10, v9

    iget v9, v1, Landroid/graphics/Rect;->left:I

    move-wide v11, v10

    iget v10, v1, Landroid/graphics/Rect;->top:I

    move-wide v12, v11

    iget v11, v1, Landroid/graphics/Rect;->right:I

    move-wide v13, v12

    iget v12, v1, Landroid/graphics/Rect;->bottom:I

    .line 763
    move-wide v1, v13

    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getTransform()I

    move-result v13

    .line 764
    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getScalingMode()I

    move-result v14

    .line 761
    invoke-direct/range {v0 .. v14}, Landroid/media/ImageWriter;->nativeAttachAndQueueImage(JJIJIIIIIII)I

    goto :goto_85

    .line 766
    :cond_51
    move v5, v4

    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/GraphicBuffer;->createFromHardwareBuffer(Landroid/hardware/HardwareBuffer;)Landroid/graphics/GraphicBuffer;

    move-result-object v3

    .line 767
    iget-wide v6, v0, Landroid/media/ImageWriter;->mNativeContext:J

    .line 768
    move-wide v7, v6

    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v5

    move-wide v8, v7

    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getDataSpace()I

    move-result v7

    move-wide v9, v8

    iget v8, v1, Landroid/graphics/Rect;->left:I

    move-wide v10, v9

    iget v9, v1, Landroid/graphics/Rect;->top:I

    move-wide v11, v10

    iget v10, v1, Landroid/graphics/Rect;->right:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    .line 769
    move-wide v15, v11

    move v11, v1

    move-wide v1, v15

    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getTransform()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getScalingMode()I

    move-result v13

    .line 767
    invoke-direct/range {v0 .. v13}, Landroid/media/ImageWriter;->nativeAttachAndQueueGraphicBuffer(JLandroid/graphics/GraphicBuffer;IJIIIIIII)I

    .line 770
    invoke-virtual {v3}, Landroid/graphics/GraphicBuffer;->destroy()V

    .line 771
    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->close()V

    .line 773
    :goto_85
    return-void

    .line 751
    :cond_86
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Image was not detached from last owner, or image  is not detachable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 741
    :cond_8e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can not attach an image that is owned ImageWriter already"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 738
    :cond_96
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "image shouldn\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private synchronized native greylist-max-o cancelImage(JLandroid/media/Image;)V
.end method

.method private blacklist initializeImageWriter(Landroid/view/Surface;IZIIIIIJ)V
    .registers 23

    .line 255
    if-eqz p1, :cond_64

    const/4 v0, 0x1

    if-lt p2, v0, :cond_64

    .line 262
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move v7, p3

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v5, p7

    move/from16 v6, p8

    move-wide/from16 v10, p9

    invoke-direct/range {v1 .. v11}, Landroid/media/ImageWriter;->nativeInit(Ljava/lang/Object;Landroid/view/Surface;IIIZIIJ)J

    move-result-wide v8

    iput-wide v8, p0, Landroid/media/ImageWriter;->mNativeContext:J

    .line 266
    if-eqz p3, :cond_31

    .line 269
    invoke-static {p1}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceFormat(Landroid/view/Surface;)I

    move-result p2

    iput p2, p0, Landroid/media/ImageWriter;->mHardwareBufferFormat:I

    .line 270
    invoke-static {p1}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceDataspace(Landroid/view/Surface;)I

    move-result p3

    iput p3, p0, Landroid/media/ImageWriter;->mDataSpace:I

    .line 271
    invoke-static {p2, p3}, Landroid/media/PublicFormatUtils;->getPublicFormat(II)I

    move-result p2

    goto :goto_33

    .line 266
    :cond_31
    move/from16 p2, p4

    .line 280
    :goto_33
    invoke-static {p1}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceSize(Landroid/view/Surface;)Landroid/util/Size;

    move-result-object p1

    .line 281
    const/4 p3, -0x1

    move/from16 v5, p7

    if-ne v5, p3, :cond_41

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v2

    move v5, v2

    :cond_41
    iput v5, p0, Landroid/media/ImageWriter;->mWidth:I

    .line 282
    move/from16 v6, p8

    if-ne v6, p3, :cond_4c

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    move v6, p1

    :cond_4c
    iput v6, p0, Landroid/media/ImageWriter;->mHeight:I

    .line 284
    iget p1, p0, Landroid/media/ImageWriter;->mWidth:I

    iget p3, p0, Landroid/media/ImageWriter;->mHeight:I

    invoke-static {p1, p3, p2, v0}, Landroid/media/ImageUtils;->getEstimatedNativeAllocBytes(IIII)I

    move-result p1

    iput p1, p0, Landroid/media/ImageWriter;->mEstimatedNativeAllocBytes:I

    .line 286
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object p1

    iget p2, p0, Landroid/media/ImageWriter;->mEstimatedNativeAllocBytes:I

    invoke-virtual {p1, p2}, Ldalvik/system/VMRuntime;->registerNativeAllocation(I)V

    .line 288
    iput-boolean v0, p0, Landroid/media/ImageWriter;->mIsWriterValid:Z

    .line 289
    return-void

    .line 256
    :cond_64
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal input argument: surface "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", maxImages: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method private greylist-max-o isImageOwnedByMe(Landroid/media/Image;)Z
    .registers 4

    .line 872
    instance-of v0, p1, Landroid/media/ImageWriter$WriterSurfaceImage;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 873
    return v1

    .line 875
    :cond_6
    check-cast p1, Landroid/media/ImageWriter$WriterSurfaceImage;

    .line 876
    invoke-virtual {p1}, Landroid/media/ImageWriter$WriterSurfaceImage;->getOwner()Landroid/media/ImageWriter;

    move-result-object p1

    if-eq p1, p0, :cond_f

    .line 877
    return v1

    .line 880
    :cond_f
    const/4 p1, 0x1

    return p1
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
    .registers 9

    .line 148
    new-instance v0, Landroid/media/ImageWriter;

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object v1, p0

    move v2, p1

    invoke-direct/range {v0 .. v6}, Landroid/media/ImageWriter;-><init>(Landroid/view/Surface;IZIII)V

    return-object v0
.end method

.method public static whitelist newInstance(Landroid/view/Surface;II)Landroid/media/ImageWriter;
    .registers 10

    .line 246
    invoke-static {p2}, Landroid/graphics/ImageFormat;->isPublicFormat(I)Z

    move-result v0

    if-nez v0, :cond_26

    invoke-static {p2}, Landroid/graphics/PixelFormat;->isPublicFormat(I)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_26

    .line 247
    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid format is specified: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 249
    :cond_26
    :goto_26
    new-instance v0, Landroid/media/ImageWriter;

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v3, 0x0

    move-object v1, p0

    move v2, p1

    move v4, p2

    invoke-direct/range {v0 .. v6}, Landroid/media/ImageWriter;-><init>(Landroid/view/Surface;IZIII)V

    return-object v0
.end method

.method public static blacklist newInstance(Landroid/view/Surface;IIII)Landroid/media/ImageWriter;
    .registers 12

    .line 197
    invoke-static {p2}, Landroid/graphics/ImageFormat;->isPublicFormat(I)Z

    move-result v0

    if-nez v0, :cond_26

    invoke-static {p2}, Landroid/graphics/PixelFormat;->isPublicFormat(I)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_26

    .line 198
    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid format is specified: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 200
    :cond_26
    :goto_26
    new-instance v0, Landroid/media/ImageWriter;

    const/4 v3, 0x0

    move-object v1, p0

    move v2, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Landroid/media/ImageWriter;-><init>(Landroid/view/Surface;IZIII)V

    return-object v0
.end method

.method private static greylist-max-o postEventFromNative(Ljava/lang/Object;)V
    .registers 2

    .line 809
    check-cast p0, Ljava/lang/ref/WeakReference;

    .line 810
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/ImageWriter;

    .line 811
    if-nez p0, :cond_b

    .line 812
    return-void

    .line 816
    :cond_b
    iget-object v0, p0, Landroid/media/ImageWriter;->mListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 817
    :try_start_e
    iget-object p0, p0, Landroid/media/ImageWriter;->mListenerHandler:Landroid/media/ImageWriter$ListenerHandler;

    .line 818
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_18

    .line 820
    if-eqz p0, :cond_17

    .line 822
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 824
    :cond_17
    return-void

    .line 818
    :catchall_18
    move-exception p0

    :try_start_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw p0
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 5

    .line 680
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroid/media/ImageWriter;->setOnImageReleasedListener(Landroid/media/ImageWriter$OnImageReleasedListener;Landroid/os/Handler;)V

    .line 681
    iget-object v0, p0, Landroid/media/ImageWriter;->mCloseLock:Ljava/lang/Object;

    monitor-enter v0

    .line 682
    :try_start_7
    iget-boolean v1, p0, Landroid/media/ImageWriter;->mIsWriterValid:Z

    if-nez v1, :cond_d

    .line 683
    monitor-exit v0

    return-void

    .line 685
    :cond_d
    iget-object v1, p0, Landroid/media/ImageWriter;->mDequeuedImages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/Image;

    .line 686
    invoke-virtual {v2}, Landroid/media/Image;->close()V

    .line 687
    goto :goto_13

    .line 688
    :cond_23
    iget-object v1, p0, Landroid/media/ImageWriter;->mDequeuedImages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 689
    iget-wide v1, p0, Landroid/media/ImageWriter;->mNativeContext:J

    invoke-direct {p0, v1, v2}, Landroid/media/ImageWriter;->nativeClose(J)V

    .line 690
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/media/ImageWriter;->mNativeContext:J

    .line 692
    iget v1, p0, Landroid/media/ImageWriter;->mEstimatedNativeAllocBytes:I

    const/4 v2, 0x0

    if-lez v1, :cond_41

    .line 693
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v1

    iget v3, p0, Landroid/media/ImageWriter;->mEstimatedNativeAllocBytes:I

    invoke-virtual {v1, v3}, Ldalvik/system/VMRuntime;->registerNativeFree(I)V

    .line 694
    iput v2, p0, Landroid/media/ImageWriter;->mEstimatedNativeAllocBytes:I

    .line 696
    :cond_41
    iput-boolean v2, p0, Landroid/media/ImageWriter;->mIsWriterValid:Z

    .line 697
    monitor-exit v0

    .line 698
    return-void

    .line 697
    :catchall_45
    move-exception v1

    monitor-exit v0
    :try_end_47
    .catchall {:try_start_7 .. :try_end_47} :catchall_45

    throw v1
.end method

.method public whitelist dequeueInputImage()Landroid/media/Image;
    .registers 4

    .line 434
    iget-object v0, p0, Landroid/media/ImageWriter;->mDequeuedImages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Landroid/media/ImageWriter;->mMaxImages:I

    if-ge v0, v1, :cond_1d

    .line 438
    new-instance v0, Landroid/media/ImageWriter$WriterSurfaceImage;

    invoke-direct {v0, p0}, Landroid/media/ImageWriter$WriterSurfaceImage;-><init>(Landroid/media/ImageWriter;)V

    .line 439
    iget-wide v1, p0, Landroid/media/ImageWriter;->mNativeContext:J

    invoke-direct {p0, v1, v2, v0}, Landroid/media/ImageWriter;->nativeDequeueInputImage(JLandroid/media/Image;)V

    .line 440
    iget-object v1, p0, Landroid/media/ImageWriter;->mDequeuedImages:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 441
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/media/ImageWriter$WriterSurfaceImage;->mIsImageValid:Z

    .line 442
    return-object v0

    .line 435
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

    .line 703
    :try_start_0
    invoke-virtual {p0}, Landroid/media/ImageWriter;->close()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_8

    .line 705
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 706
    nop

    .line 707
    return-void

    .line 705
    :catchall_8
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 706
    throw v0
.end method

.method public whitelist getDataSpace()I
    .registers 2

    .line 598
    iget v0, p0, Landroid/media/ImageWriter;->mDataSpace:I

    return v0
.end method

.method public whitelist getFormat()I
    .registers 2

    .line 560
    iget v0, p0, Landroid/media/ImageWriter;->mWriterFormat:I

    return v0
.end method

.method public whitelist getHardwareBufferFormat()I
    .registers 2

    .line 585
    iget v0, p0, Landroid/media/ImageWriter;->mHardwareBufferFormat:I

    return v0
.end method

.method public whitelist getHeight()I
    .registers 2

    .line 383
    iget v0, p0, Landroid/media/ImageWriter;->mHeight:I

    return v0
.end method

.method public whitelist getMaxImages()I
    .registers 2

    .line 359
    iget v0, p0, Landroid/media/ImageWriter;->mMaxImages:I

    return v0
.end method

.method public whitelist getUsage()J
    .registers 3

    .line 572
    iget-wide v0, p0, Landroid/media/ImageWriter;->mUsage:J

    return-wide v0
.end method

.method public whitelist getWidth()I
    .registers 2

    .line 371
    iget v0, p0, Landroid/media/ImageWriter;->mWidth:I

    return v0
.end method

.method public whitelist queueInputImage(Landroid/media/Image;)V
    .registers 18

    .line 497
    move-object/from16 v0, p0

    move-object/from16 v3, p1

    if-eqz v3, :cond_80

    .line 501
    invoke-direct/range {p0 .. p1}, Landroid/media/ImageWriter;->isImageOwnedByMe(Landroid/media/Image;)Z

    move-result v13

    .line 502
    if-eqz v13, :cond_1c

    move-object v1, v3

    check-cast v1, Landroid/media/ImageWriter$WriterSurfaceImage;

    iget-boolean v1, v1, Landroid/media/ImageWriter$WriterSurfaceImage;->mIsImageValid:Z

    if-eqz v1, :cond_14

    goto :goto_1c

    .line 503
    :cond_14
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Image from ImageWriter is invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 508
    :cond_1c
    :goto_1c
    if-nez v13, :cond_46

    .line 509
    invoke-virtual {v3}, Landroid/media/Image;->getOwner()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Landroid/media/ImageReader;

    if-eqz v1, :cond_30

    .line 510
    invoke-virtual {v3}, Landroid/media/Image;->getOwner()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/ImageReader;

    .line 512
    invoke-virtual {v1, v3}, Landroid/media/ImageReader;->detachImage(Landroid/media/Image;)V

    goto :goto_36

    .line 513
    :cond_30
    invoke-virtual {v3}, Landroid/media/Image;->getOwner()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_3e

    :goto_36
    nop

    .line 519
    invoke-direct/range {p0 .. p1}, Landroid/media/ImageWriter;->attachAndQueueInputImage(Landroid/media/Image;)V

    .line 523
    invoke-virtual {v3}, Landroid/media/Image;->close()V

    .line 524
    return-void

    .line 514
    :cond_3e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only images from ImageReader can be queued to ImageWriter, other image source is not supported yet!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 527
    :cond_46
    invoke-virtual {v3}, Landroid/media/Image;->getCropRect()Landroid/graphics/Rect;

    move-result-object v1

    .line 528
    iget-wide v4, v0, Landroid/media/ImageWriter;->mNativeContext:J

    move-wide v6, v4

    invoke-virtual {v3}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v4

    move-wide v7, v6

    invoke-virtual {v3}, Landroid/media/Image;->getDataSpace()I

    move-result v6

    move-wide v8, v7

    iget v7, v1, Landroid/graphics/Rect;->left:I

    move-wide v9, v8

    iget v8, v1, Landroid/graphics/Rect;->top:I

    move-wide v10, v9

    iget v9, v1, Landroid/graphics/Rect;->right:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    .line 529
    move-wide v14, v10

    move v10, v1

    move-wide v1, v14

    invoke-virtual {v3}, Landroid/media/Image;->getTransform()I

    move-result v11

    .line 530
    invoke-virtual {v3}, Landroid/media/Image;->getScalingMode()I

    move-result v12

    .line 528
    invoke-direct/range {v0 .. v12}, Landroid/media/ImageWriter;->nativeQueueInputImage(JLandroid/media/Image;JIIIIIII)V

    .line 539
    if-eqz v13, :cond_7f

    .line 540
    iget-object v0, v0, Landroid/media/ImageWriter;->mDequeuedImages:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 542
    move-object v0, v3

    check-cast v0, Landroid/media/ImageWriter$WriterSurfaceImage;

    .line 543
    invoke-static {v0}, Landroid/media/ImageWriter$WriterSurfaceImage;->-$$Nest$mclearSurfacePlanes(Landroid/media/ImageWriter$WriterSurfaceImage;)V

    .line 544
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/media/ImageWriter$WriterSurfaceImage;->mIsImageValid:Z

    .line 546
    :cond_7f
    return-void

    .line 498
    :cond_80
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "image shouldn\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setOnImageReleasedListener(Landroid/media/ImageWriter$OnImageReleasedListener;Landroid/os/Handler;)V
    .registers 5

    .line 648
    iget-object v0, p0, Landroid/media/ImageWriter;->mListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 649
    if-eqz p1, :cond_30

    .line 650
    if-eqz p2, :cond_c

    :try_start_7
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    goto :goto_10

    :cond_c
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p2

    .line 651
    :goto_10
    if-eqz p2, :cond_28

    .line 655
    iget-object v1, p0, Landroid/media/ImageWriter;->mListenerHandler:Landroid/media/ImageWriter$ListenerHandler;

    if-eqz v1, :cond_1e

    iget-object v1, p0, Landroid/media/ImageWriter;->mListenerHandler:Landroid/media/ImageWriter$ListenerHandler;

    invoke-virtual {v1}, Landroid/media/ImageWriter$ListenerHandler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v1, p2, :cond_25

    .line 656
    :cond_1e
    new-instance v1, Landroid/media/ImageWriter$ListenerHandler;

    invoke-direct {v1, p0, p2}, Landroid/media/ImageWriter$ListenerHandler;-><init>(Landroid/media/ImageWriter;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/media/ImageWriter;->mListenerHandler:Landroid/media/ImageWriter$ListenerHandler;

    .line 658
    :cond_25
    iput-object p1, p0, Landroid/media/ImageWriter;->mListener:Landroid/media/ImageWriter$OnImageReleasedListener;

    .line 659
    goto :goto_35

    .line 652
    :cond_28
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "handler is null but the current thread is not a looper"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 660
    :cond_30
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/media/ImageWriter;->mListener:Landroid/media/ImageWriter$OnImageReleasedListener;

    .line 661
    iput-object p1, p0, Landroid/media/ImageWriter;->mListenerHandler:Landroid/media/ImageWriter$ListenerHandler;

    .line 663
    :goto_35
    monitor-exit v0

    .line 664
    return-void

    .line 663
    :catchall_37
    move-exception p1

    monitor-exit v0
    :try_end_39
    .catchall {:try_start_7 .. :try_end_39} :catchall_37

    throw p1
.end method
