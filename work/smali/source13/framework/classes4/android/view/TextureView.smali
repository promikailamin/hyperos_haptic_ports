.class public Landroid/view/TextureView;
.super Landroid/view/View;
.source "TextureView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/TextureView$SurfaceTextureListener;
    }
.end annotation


# static fields
.field private static final greylist-max-o LOG_TAG:Ljava/lang/String; = "TextureView"


# instance fields
.field private greylist-max-o mCanvas:Landroid/graphics/Canvas;

.field private greylist-max-o mHadSurface:Z

.field private greylist mLayer:Landroid/graphics/TextureLayer;

.field private greylist-max-o mListener:Landroid/view/TextureView$SurfaceTextureListener;

.field private final greylist-max-o mLock:[Ljava/lang/Object;

.field private final greylist-max-o mMatrix:Landroid/graphics/Matrix;

.field private greylist-max-o mMatrixChanged:Z

.field private greylist-max-r mNativeWindow:J

.field private final greylist-max-o mNativeWindowLock:[Ljava/lang/Object;

.field private greylist-max-r mOpaque:Z

.field private greylist-max-o mSaveCount:I

.field private greylist mSurface:Landroid/graphics/SurfaceTexture;

.field private greylist-max-o mUpdateLayer:Z

.field private final greylist mUpdateListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

.field private greylist-max-r mUpdateSurface:Z


# direct methods
.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 208
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 183
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/TextureView;->mOpaque:Z

    .line 186
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/view/TextureView;->mMatrix:Landroid/graphics/Matrix;

    .line 189
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    iput-object v1, p0, Landroid/view/TextureView;->mLock:[Ljava/lang/Object;

    .line 197
    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Landroid/view/TextureView;->mNativeWindowLock:[Ljava/lang/Object;

    .line 874
    new-instance v0, Landroid/view/TextureView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroid/view/TextureView$$ExternalSyntheticLambda0;-><init>(Landroid/view/TextureView;)V

    iput-object v0, p0, Landroid/view/TextureView;->mUpdateListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    .line 209
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 218
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 183
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/TextureView;->mOpaque:Z

    .line 186
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/view/TextureView;->mMatrix:Landroid/graphics/Matrix;

    .line 189
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    iput-object v1, p0, Landroid/view/TextureView;->mLock:[Ljava/lang/Object;

    .line 197
    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Landroid/view/TextureView;->mNativeWindowLock:[Ljava/lang/Object;

    .line 874
    new-instance v0, Landroid/view/TextureView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroid/view/TextureView$$ExternalSyntheticLambda0;-><init>(Landroid/view/TextureView;)V

    iput-object v0, p0, Landroid/view/TextureView;->mUpdateListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    .line 219
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 231
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 183
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/TextureView;->mOpaque:Z

    .line 186
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/view/TextureView;->mMatrix:Landroid/graphics/Matrix;

    .line 189
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    iput-object v1, p0, Landroid/view/TextureView;->mLock:[Ljava/lang/Object;

    .line 197
    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Landroid/view/TextureView;->mNativeWindowLock:[Ljava/lang/Object;

    .line 874
    new-instance v0, Landroid/view/TextureView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroid/view/TextureView$$ExternalSyntheticLambda0;-><init>(Landroid/view/TextureView;)V

    iput-object v0, p0, Landroid/view/TextureView;->mUpdateListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    .line 232
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 249
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 183
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/TextureView;->mOpaque:Z

    .line 186
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/view/TextureView;->mMatrix:Landroid/graphics/Matrix;

    .line 189
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    iput-object v1, p0, Landroid/view/TextureView;->mLock:[Ljava/lang/Object;

    .line 197
    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Landroid/view/TextureView;->mNativeWindowLock:[Ljava/lang/Object;

    .line 874
    new-instance v0, Landroid/view/TextureView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroid/view/TextureView$$ExternalSyntheticLambda0;-><init>(Landroid/view/TextureView;)V

    iput-object v0, p0, Landroid/view/TextureView;->mUpdateListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    .line 250
    return-void
.end method

.method private greylist-max-o applyTransformMatrix()V
    .registers 3

    .line 593
    iget-boolean v0, p0, Landroid/view/TextureView;->mMatrixChanged:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroid/view/TextureView;->mLayer:Landroid/graphics/TextureLayer;

    if-eqz v0, :cond_10

    .line 594
    iget-object v1, p0, Landroid/view/TextureView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/TextureLayer;->setTransform(Landroid/graphics/Matrix;)V

    .line 595
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/TextureView;->mMatrixChanged:Z

    .line 597
    :cond_10
    return-void
.end method

.method private greylist-max-o applyUpdate()V
    .registers 5

    .line 528
    iget-object v0, p0, Landroid/view/TextureView;->mLayer:Landroid/graphics/TextureLayer;

    if-nez v0, :cond_5

    .line 529
    return-void

    .line 532
    :cond_5
    iget-object v0, p0, Landroid/view/TextureView;->mLock:[Ljava/lang/Object;

    monitor-enter v0

    .line 533
    :try_start_8
    iget-boolean v1, p0, Landroid/view/TextureView;->mUpdateLayer:Z

    if-eqz v1, :cond_2e

    .line 534
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/view/TextureView;->mUpdateLayer:Z

    .line 538
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_8 .. :try_end_10} :catchall_30

    .line 540
    iget-object v0, p0, Landroid/view/TextureView;->mLayer:Landroid/graphics/TextureLayer;

    invoke-virtual {p0}, Landroid/view/TextureView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/TextureView;->getHeight()I

    move-result v2

    iget-boolean v3, p0, Landroid/view/TextureView;->mOpaque:Z

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/TextureLayer;->prepare(IIZ)Z

    .line 541
    iget-object v0, p0, Landroid/view/TextureView;->mLayer:Landroid/graphics/TextureLayer;

    invoke-virtual {v0}, Landroid/graphics/TextureLayer;->updateSurfaceTexture()V

    .line 543
    iget-object v0, p0, Landroid/view/TextureView;->mListener:Landroid/view/TextureView$SurfaceTextureListener;

    if-eqz v0, :cond_2d

    .line 544
    iget-object v1, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    invoke-interface {v0, v1}, Landroid/view/TextureView$SurfaceTextureListener;->onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V

    .line 546
    :cond_2d
    return-void

    .line 536
    :cond_2e
    :try_start_2e
    monitor-exit v0

    return-void

    .line 538
    :catchall_30
    move-exception v1

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_2e .. :try_end_32} :catchall_30

    throw v1
.end method

.method private greylist-max-r destroyHardwareLayer()V
    .registers 2

    .line 312
    iget-object v0, p0, Landroid/view/TextureView;->mLayer:Landroid/graphics/TextureLayer;

    if-eqz v0, :cond_12

    .line 313
    invoke-virtual {v0}, Landroid/graphics/TextureLayer;->detachSurfaceTexture()V

    .line 314
    iget-object v0, p0, Landroid/view/TextureView;->mLayer:Landroid/graphics/TextureLayer;

    invoke-virtual {v0}, Landroid/graphics/TextureLayer;->close()V

    .line 315
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/TextureView;->mLayer:Landroid/graphics/TextureLayer;

    .line 316
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/TextureView;->mMatrixChanged:Z

    .line 318
    :cond_12
    return-void
.end method

.method private native greylist-max-r nCreateNativeWindow(Landroid/graphics/SurfaceTexture;)V
.end method

.method private native greylist-max-r nDestroyNativeWindow()V
.end method

.method private static native greylist-max-o nLockCanvas(JLandroid/graphics/Canvas;Landroid/graphics/Rect;)Z
.end method

.method private static native greylist-max-o nUnlockCanvasAndPost(JLandroid/graphics/Canvas;)V
.end method

.method private greylist-max-o releaseSurfaceTexture()V
    .registers 4

    .line 321
    iget-object v0, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_25

    .line 322
    const/4 v1, 0x1

    .line 324
    .local v1, "shouldRelease":Z
    iget-object v2, p0, Landroid/view/TextureView;->mListener:Landroid/view/TextureView$SurfaceTextureListener;

    if-eqz v2, :cond_d

    .line 325
    invoke-interface {v2, v0}, Landroid/view/TextureView$SurfaceTextureListener;->onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z

    move-result v1

    .line 328
    :cond_d
    iget-object v0, p0, Landroid/view/TextureView;->mNativeWindowLock:[Ljava/lang/Object;

    monitor-enter v0

    .line 329
    :try_start_10
    invoke-direct {p0}, Landroid/view/TextureView;->nDestroyNativeWindow()V

    .line 330
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_22

    .line 332
    if-eqz v1, :cond_1b

    .line 333
    iget-object v0, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 335
    :cond_1b
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    .line 336
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/TextureView;->mHadSurface:Z

    goto :goto_25

    .line 330
    :catchall_22
    move-exception v2

    :try_start_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw v2

    .line 338
    .end local v1    # "shouldRelease":Z
    :cond_25
    :goto_25
    return-void
.end method

.method private greylist-max-o updateLayer()V
    .registers 3

    .line 515
    iget-object v0, p0, Landroid/view/TextureView;->mLock:[Ljava/lang/Object;

    monitor-enter v0

    .line 516
    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Landroid/view/TextureView;->mUpdateLayer:Z

    .line 517
    monitor-exit v0

    .line 518
    return-void

    .line 517
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw v1
.end method

.method private greylist-max-o updateLayerAndInvalidate()V
    .registers 3

    .line 521
    iget-object v0, p0, Landroid/view/TextureView;->mLock:[Ljava/lang/Object;

    monitor-enter v0

    .line 522
    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Landroid/view/TextureView;->mUpdateLayer:Z

    .line 523
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_b

    .line 524
    invoke-virtual {p0}, Landroid/view/TextureView;->invalidate()V

    .line 525
    return-void

    .line 523
    :catchall_b
    move-exception v1

    :try_start_c
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw v1
.end method


# virtual methods
.method public whitelist buildLayer()V
    .registers 1

    .line 379
    return-void
.end method

.method protected greylist destroyHardwareResources()V
    .registers 1

    .line 306
    invoke-super {p0}, Landroid/view/View;->destroyHardwareResources()V

    .line 307
    invoke-direct {p0}, Landroid/view/TextureView;->destroyHardwareLayer()V

    .line 308
    return-void
.end method

.method public final whitelist draw(Landroid/graphics/Canvas;)V
    .registers 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 406
    iget v0, p0, Landroid/view/TextureView;->mPrivateFlags:I

    const v1, -0x200001

    and-int/2addr v0, v1

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Landroid/view/TextureView;->mPrivateFlags:I

    .line 412
    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 413
    move-object v0, p1

    check-cast v0, Landroid/graphics/RecordingCanvas;

    .line 415
    .local v0, "recordingCanvas":Landroid/graphics/RecordingCanvas;
    invoke-virtual {p0}, Landroid/view/TextureView;->getTextureLayer()Landroid/graphics/TextureLayer;

    move-result-object v1

    .line 416
    .local v1, "layer":Landroid/graphics/TextureLayer;
    if-eqz v1, :cond_29

    .line 417
    invoke-direct {p0}, Landroid/view/TextureView;->applyUpdate()V

    .line 418
    invoke-direct {p0}, Landroid/view/TextureView;->applyTransformMatrix()V

    .line 420
    iget-object v2, p0, Landroid/view/TextureView;->mLayer:Landroid/graphics/TextureLayer;

    iget-object v3, p0, Landroid/view/TextureView;->mLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v3}, Landroid/graphics/TextureLayer;->setLayerPaint(Landroid/graphics/Paint;)V

    .line 421
    invoke-virtual {v0, v1}, Landroid/graphics/RecordingCanvas;->drawTextureLayer(Landroid/graphics/TextureLayer;)V

    .line 424
    .end local v0    # "recordingCanvas":Landroid/graphics/RecordingCanvas;
    .end local v1    # "layer":Landroid/graphics/TextureLayer;
    :cond_29
    return-void
.end method

.method public whitelist getBitmap()Landroid/graphics/Bitmap;
    .registers 3

    .line 620
    invoke-virtual {p0}, Landroid/view/TextureView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/TextureView;->getHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/view/TextureView;->getBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getBitmap(II)Landroid/graphics/Bitmap;
    .registers 5
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 647
    invoke-virtual {p0}, Landroid/view/TextureView;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_1d

    if-lez p1, :cond_1d

    if-lez p2, :cond_1d

    .line 648
    invoke-virtual {p0}, Landroid/view/TextureView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, p1, p2, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/TextureView;->getBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 651
    :cond_1d
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 678
    if-eqz p1, :cond_20

    invoke-virtual {p0}, Landroid/view/TextureView;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 679
    invoke-direct {p0}, Landroid/view/TextureView;->applyUpdate()V

    .line 680
    invoke-direct {p0}, Landroid/view/TextureView;->applyTransformMatrix()V

    .line 686
    iget-object v0, p0, Landroid/view/TextureView;->mLayer:Landroid/graphics/TextureLayer;

    if-nez v0, :cond_19

    iget-boolean v0, p0, Landroid/view/TextureView;->mUpdateSurface:Z

    if-eqz v0, :cond_19

    .line 687
    invoke-virtual {p0}, Landroid/view/TextureView;->getTextureLayer()Landroid/graphics/TextureLayer;

    .line 690
    :cond_19
    iget-object v0, p0, Landroid/view/TextureView;->mLayer:Landroid/graphics/TextureLayer;

    if-eqz v0, :cond_20

    .line 691
    invoke-virtual {v0, p1}, Landroid/graphics/TextureLayer;->copyInto(Landroid/graphics/Bitmap;)Z

    .line 694
    :cond_20
    return-object p1
.end method

.method public whitelist getLayerType()I
    .registers 2

    .line 371
    const/4 v0, 0x2

    return v0
.end method

.method public whitelist getSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .registers 2

    .line 802
    iget-object v0, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method public whitelist getSurfaceTextureListener()Landroid/view/TextureView$SurfaceTextureListener;
    .registers 2

    .line 860
    iget-object v0, p0, Landroid/view/TextureView;->mListener:Landroid/view/TextureView$SurfaceTextureListener;

    return-object v0
.end method

.method blacklist getTextureLayer()Landroid/graphics/TextureLayer;
    .registers 8

    .line 449
    iget-object v0, p0, Landroid/view/TextureView;->mLayer:Landroid/graphics/TextureLayer;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_6a

    .line 450
    iget-object v0, p0, Landroid/view/TextureView;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_68

    iget-object v0, p0, Landroid/view/TextureView;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    if-nez v0, :cond_11

    goto :goto_68

    .line 454
    :cond_11
    iget-object v0, p0, Landroid/view/TextureView;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    invoke-virtual {v0}, Landroid/view/ThreadedRenderer;->createTextureLayer()Landroid/graphics/TextureLayer;

    move-result-object v0

    iput-object v0, p0, Landroid/view/TextureView;->mLayer:Landroid/graphics/TextureLayer;

    .line 455
    iget-object v0, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_21

    move v0, v1

    goto :goto_22

    :cond_21
    move v0, v2

    .line 456
    .local v0, "createNewSurface":Z
    :goto_22
    if-eqz v0, :cond_3b

    .line 458
    new-instance v3, Landroid/graphics/SurfaceTexture;

    invoke-direct {v3, v2}, Landroid/graphics/SurfaceTexture;-><init>(Z)V

    iput-object v3, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    .line 459
    invoke-direct {p0, v3}, Landroid/view/TextureView;->nCreateNativeWindow(Landroid/graphics/SurfaceTexture;)V

    .line 462
    iget-object v3, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p0}, Landroid/view/TextureView;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/TextureView;->getHeight()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 464
    :cond_3b
    iget-object v3, p0, Landroid/view/TextureView;->mLayer:Landroid/graphics/TextureLayer;

    iget-object v4, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v3, v4}, Landroid/graphics/TextureLayer;->setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V

    .line 469
    iget-object v3, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    iget-object v4, p0, Landroid/view/TextureView;->mUpdateListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    iget-object v5, p0, Landroid/view/TextureView;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v5, v5, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4, v5}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;Landroid/os/Handler;)V

    .line 471
    iget-object v3, p0, Landroid/view/TextureView;->mListener:Landroid/view/TextureView$SurfaceTextureListener;

    if-eqz v3, :cond_60

    if-eqz v0, :cond_60

    .line 472
    iget-object v4, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p0}, Landroid/view/TextureView;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Landroid/view/TextureView;->getHeight()I

    move-result v6

    invoke-interface {v3, v4, v5, v6}, Landroid/view/TextureView$SurfaceTextureListener;->onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V

    .line 474
    :cond_60
    iget-object v3, p0, Landroid/view/TextureView;->mLayer:Landroid/graphics/TextureLayer;

    iget-object v4, p0, Landroid/view/TextureView;->mLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v4}, Landroid/graphics/TextureLayer;->setLayerPaint(Landroid/graphics/Paint;)V

    goto :goto_6a

    .line 451
    .end local v0    # "createNewSurface":Z
    :cond_68
    :goto_68
    const/4 v0, 0x0

    return-object v0

    .line 477
    :cond_6a
    :goto_6a
    iget-boolean v0, p0, Landroid/view/TextureView;->mUpdateSurface:Z

    if-eqz v0, :cond_89

    .line 481
    iput-boolean v2, p0, Landroid/view/TextureView;->mUpdateSurface:Z

    .line 485
    invoke-direct {p0}, Landroid/view/TextureView;->updateLayer()V

    .line 486
    iput-boolean v1, p0, Landroid/view/TextureView;->mMatrixChanged:Z

    .line 488
    iget-object v0, p0, Landroid/view/TextureView;->mLayer:Landroid/graphics/TextureLayer;

    iget-object v1, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1}, Landroid/graphics/TextureLayer;->setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V

    .line 489
    iget-object v0, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p0}, Landroid/view/TextureView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/TextureView;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 492
    :cond_89
    iget-object v0, p0, Landroid/view/TextureView;->mLayer:Landroid/graphics/TextureLayer;

    return-object v0
.end method

.method public whitelist getTransform(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;
    .registers 3
    .param p1, "transform"    # Landroid/graphics/Matrix;

    .line 583
    if-nez p1, :cond_8

    .line 584
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    move-object p1, v0

    .line 587
    :cond_8
    iget-object v0, p0, Landroid/view/TextureView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 589
    return-object p1
.end method

.method public whitelist isAvailable()Z
    .registers 2

    .line 703
    iget-object v0, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public whitelist isOpaque()Z
    .registers 2

    .line 257
    iget-boolean v0, p0, Landroid/view/TextureView;->mOpaque:Z

    return v0
.end method

.method synthetic blacklist lambda$new$0$android-view-TextureView(Landroid/graphics/SurfaceTexture;)V
    .registers 2
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .line 877
    invoke-direct {p0}, Landroid/view/TextureView;->updateLayer()V

    .line 878
    invoke-virtual {p0}, Landroid/view/TextureView;->invalidate()V

    .line 879
    return-void
.end method

.method public whitelist lockCanvas()Landroid/graphics/Canvas;
    .registers 2

    .line 731
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/TextureView;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v0

    return-object v0
.end method

.method public whitelist lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;
    .registers 7
    .param p1, "dirty"    # Landroid/graphics/Rect;

    .line 756
    invoke-virtual {p0}, Landroid/view/TextureView;->isAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    .line 758
    :cond_8
    iget-object v0, p0, Landroid/view/TextureView;->mCanvas:Landroid/graphics/Canvas;

    if-nez v0, :cond_13

    .line 759
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Landroid/view/TextureView;->mCanvas:Landroid/graphics/Canvas;

    .line 762
    :cond_13
    iget-object v0, p0, Landroid/view/TextureView;->mNativeWindowLock:[Ljava/lang/Object;

    monitor-enter v0

    .line 763
    :try_start_16
    iget-wide v2, p0, Landroid/view/TextureView;->mNativeWindow:J

    iget-object v4, p0, Landroid/view/TextureView;->mCanvas:Landroid/graphics/Canvas;

    invoke-static {v2, v3, v4, p1}, Landroid/view/TextureView;->nLockCanvas(JLandroid/graphics/Canvas;Landroid/graphics/Rect;)Z

    move-result v2

    if-nez v2, :cond_22

    .line 764
    monitor-exit v0

    return-object v1

    .line 766
    :cond_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_16 .. :try_end_23} :catchall_2e

    .line 767
    iget-object v0, p0, Landroid/view/TextureView;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    move-result v0

    iput v0, p0, Landroid/view/TextureView;->mSaveCount:I

    .line 769
    iget-object v0, p0, Landroid/view/TextureView;->mCanvas:Landroid/graphics/Canvas;

    return-object v0

    .line 766
    :catchall_2e
    move-exception v1

    :try_start_2f
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    throw v1
.end method

.method protected whitelist onAttachedToWindow()V
    .registers 3

    .line 278
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 280
    invoke-virtual {p0}, Landroid/view/TextureView;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_10

    .line 281
    const-string v0, "TextureView"

    const-string v1, "A TextureView or a subclass can only be used with hardware acceleration enabled."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    :cond_10
    iget-boolean v0, p0, Landroid/view/TextureView;->mHadSurface:Z

    if-eqz v0, :cond_1b

    .line 286
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/TextureView;->invalidate(Z)V

    .line 287
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/TextureView;->mHadSurface:Z

    .line 289
    :cond_1b
    return-void
.end method

.method protected greylist-max-r onDetachedFromWindowInternal()V
    .registers 1

    .line 295
    invoke-direct {p0}, Landroid/view/TextureView;->destroyHardwareLayer()V

    .line 296
    invoke-direct {p0}, Landroid/view/TextureView;->releaseSurfaceTexture()V

    .line 297
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindowInternal()V

    .line 298
    return-void
.end method

.method protected final whitelist onDraw(Landroid/graphics/Canvas;)V
    .registers 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 434
    return-void
.end method

.method protected whitelist onSizeChanged(IIII)V
    .registers 9
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 438
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 439
    iget-object v0, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_26

    .line 440
    invoke-virtual {p0}, Landroid/view/TextureView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/TextureView;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 441
    invoke-direct {p0}, Landroid/view/TextureView;->updateLayer()V

    .line 442
    iget-object v0, p0, Landroid/view/TextureView;->mListener:Landroid/view/TextureView$SurfaceTextureListener;

    if-eqz v0, :cond_26

    .line 443
    iget-object v1, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    invoke-virtual {p0}, Landroid/view/TextureView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/TextureView;->getHeight()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Landroid/view/TextureView$SurfaceTextureListener;->onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V

    .line 446
    :cond_26
    return-void
.end method

.method protected whitelist onVisibilityChanged(Landroid/view/View;I)V
    .registers 6
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .line 497
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    .line 499
    iget-object v0, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_1e

    .line 503
    if-nez p2, :cond_1a

    .line 504
    iget-object v1, p0, Landroid/view/TextureView;->mLayer:Landroid/graphics/TextureLayer;

    if-eqz v1, :cond_16

    .line 505
    iget-object v1, p0, Landroid/view/TextureView;->mUpdateListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    iget-object v2, p0, Landroid/view/TextureView;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;Landroid/os/Handler;)V

    .line 507
    :cond_16
    invoke-direct {p0}, Landroid/view/TextureView;->updateLayerAndInvalidate()V

    goto :goto_1e

    .line 509
    :cond_1a
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 512
    :cond_1e
    :goto_1e
    return-void
.end method

.method public whitelist setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .line 391
    if-eqz p1, :cond_f

    sget-boolean v0, Landroid/view/TextureView;->sTextureViewIgnoresDrawableSetters:Z

    if-eqz v0, :cond_7

    goto :goto_f

    .line 392
    :cond_7
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "TextureView doesn\'t support displaying a background drawable"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 395
    :cond_f
    :goto_f
    return-void
.end method

.method public whitelist setForeground(Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .param p1, "foreground"    # Landroid/graphics/drawable/Drawable;

    .line 383
    if-eqz p1, :cond_f

    sget-boolean v0, Landroid/view/TextureView;->sTextureViewIgnoresDrawableSetters:Z

    if-eqz v0, :cond_7

    goto :goto_f

    .line 384
    :cond_7
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "TextureView doesn\'t support displaying a foreground drawable"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 387
    :cond_f
    :goto_f
    return-void
.end method

.method public whitelist setLayerPaint(Landroid/graphics/Paint;)V
    .registers 3
    .param p1, "paint"    # Landroid/graphics/Paint;

    .line 360
    iget-object v0, p0, Landroid/view/TextureView;->mLayerPaint:Landroid/graphics/Paint;

    if-eq p1, v0, :cond_9

    .line 361
    iput-object p1, p0, Landroid/view/TextureView;->mLayerPaint:Landroid/graphics/Paint;

    .line 362
    invoke-virtual {p0}, Landroid/view/TextureView;->invalidate()V

    .line 364
    :cond_9
    return-void
.end method

.method public whitelist setLayerType(ILandroid/graphics/Paint;)V
    .registers 3
    .param p1, "layerType"    # I
    .param p2, "paint"    # Landroid/graphics/Paint;

    .line 355
    invoke-virtual {p0, p2}, Landroid/view/TextureView;->setLayerPaint(Landroid/graphics/Paint;)V

    .line 356
    return-void
.end method

.method public whitelist setOpaque(Z)V
    .registers 3
    .param p1, "opaque"    # Z

    .line 268
    iget-boolean v0, p0, Landroid/view/TextureView;->mOpaque:Z

    if-eq p1, v0, :cond_d

    .line 269
    iput-boolean p1, p0, Landroid/view/TextureView;->mOpaque:Z

    .line 270
    iget-object v0, p0, Landroid/view/TextureView;->mLayer:Landroid/graphics/TextureLayer;

    if-eqz v0, :cond_d

    .line 271
    invoke-direct {p0}, Landroid/view/TextureView;->updateLayerAndInvalidate()V

    .line 274
    :cond_d
    return-void
.end method

.method public whitelist setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V
    .registers 5
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .line 821
    if-eqz p1, :cond_49

    .line 824
    iget-object v0, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    if-eq p1, v0, :cond_41

    .line 828
    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->isReleased()Z

    move-result v0

    if-nez v0, :cond_39

    .line 832
    iget-object v0, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_18

    .line 833
    invoke-direct {p0}, Landroid/view/TextureView;->nDestroyNativeWindow()V

    .line 834
    iget-object v0, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 836
    :cond_18
    iput-object p1, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    .line 837
    invoke-direct {p0, p1}, Landroid/view/TextureView;->nCreateNativeWindow(Landroid/graphics/SurfaceTexture;)V

    .line 845
    iget v0, p0, Landroid/view/TextureView;->mViewFlags:I

    and-int/lit8 v0, v0, 0xc

    if-nez v0, :cond_32

    iget-object v0, p0, Landroid/view/TextureView;->mLayer:Landroid/graphics/TextureLayer;

    if-eqz v0, :cond_32

    .line 846
    iget-object v0, p0, Landroid/view/TextureView;->mSurface:Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Landroid/view/TextureView;->mUpdateListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    iget-object v2, p0, Landroid/view/TextureView;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;Landroid/os/Handler;)V

    .line 848
    :cond_32
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/TextureView;->mUpdateSurface:Z

    .line 849
    invoke-virtual {p0}, Landroid/view/TextureView;->invalidateParentIfNeeded()V

    .line 850
    return-void

    .line 829
    :cond_39
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot setSurfaceTexture to a released SurfaceTexture"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 825
    :cond_41
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Trying to setSurfaceTexture to the same SurfaceTexture that\'s already set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 822
    :cond_49
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "surfaceTexture must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/view/TextureView$SurfaceTextureListener;

    .line 871
    iput-object p1, p0, Landroid/view/TextureView;->mListener:Landroid/view/TextureView$SurfaceTextureListener;

    .line 872
    return-void
.end method

.method public whitelist setTransform(Landroid/graphics/Matrix;)V
    .registers 3
    .param p1, "transform"    # Landroid/graphics/Matrix;

    .line 566
    iget-object v0, p0, Landroid/view/TextureView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 567
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/TextureView;->mMatrixChanged:Z

    .line 568
    invoke-virtual {p0}, Landroid/view/TextureView;->invalidateParentIfNeeded()V

    .line 569
    return-void
.end method

.method public whitelist unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    .registers 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 784
    iget-object v0, p0, Landroid/view/TextureView;->mCanvas:Landroid/graphics/Canvas;

    if-eqz v0, :cond_1d

    if-ne p1, v0, :cond_1d

    .line 785
    iget v0, p0, Landroid/view/TextureView;->mSaveCount:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 786
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/TextureView;->mSaveCount:I

    .line 788
    iget-object v0, p0, Landroid/view/TextureView;->mNativeWindowLock:[Ljava/lang/Object;

    monitor-enter v0

    .line 789
    :try_start_11
    iget-wide v1, p0, Landroid/view/TextureView;->mNativeWindow:J

    iget-object v3, p0, Landroid/view/TextureView;->mCanvas:Landroid/graphics/Canvas;

    invoke-static {v1, v2, v3}, Landroid/view/TextureView;->nUnlockCanvasAndPost(JLandroid/graphics/Canvas;)V

    .line 790
    monitor-exit v0

    goto :goto_1d

    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_11 .. :try_end_1c} :catchall_1a

    throw v1

    .line 792
    :cond_1d
    :goto_1d
    return-void
.end method
