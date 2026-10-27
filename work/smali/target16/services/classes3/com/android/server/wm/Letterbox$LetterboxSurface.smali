.class public Lcom/android/server/wm/Letterbox$LetterboxSurface;
.super Ljava/lang/Object;
.source "Letterbox.java"


# instance fields
.field public mColor:Landroid/graphics/Color;

.field public mHasWallpaperBackground:Z

.field public mInputInterceptor:Lcom/android/server/wm/Letterbox$InputInterceptor;

.field public mInputSurface:Landroid/view/SurfaceControl;

.field public final mLayoutFrameGlobal:Landroid/graphics/Rect;

.field public final mLayoutFrameRelative:Landroid/graphics/Rect;

.field public mSurface:Landroid/view/SurfaceControl;

.field public final mSurfaceFrameRelative:Landroid/graphics/Rect;

.field public final mType:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/server/wm/Letterbox;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmInputInterceptor(Lcom/android/server/wm/Letterbox$LetterboxSurface;)Lcom/android/server/wm/Letterbox$InputInterceptor;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mInputInterceptor:Lcom/android/server/wm/Letterbox$InputInterceptor;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLayoutFrameGlobal(Lcom/android/server/wm/Letterbox$LetterboxSurface;)Landroid/graphics/Rect;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mLayoutFrameGlobal:Landroid/graphics/Rect;

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/wm/Letterbox;Ljava/lang/String;)V
    .registers 3

    .line 343
    iput-object p1, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->this$0:Lcom/android/server/wm/Letterbox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 336
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mSurfaceFrameRelative:Landroid/graphics/Rect;

    .line 337
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mLayoutFrameGlobal:Landroid/graphics/Rect;

    .line 338
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mLayoutFrameRelative:Landroid/graphics/Rect;

    .line 344
    iput-object p2, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public applySurfaceChanges(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V
    .registers 5

    .line 411
    invoke-virtual {p0}, Lcom/android/server/wm/Letterbox$LetterboxSurface;->needsApplySurfaceChanges()Z

    move-result v0

    if-nez v0, :cond_8

    goto/16 :goto_83

    .line 415
    :cond_8
    iget-object v0, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mSurfaceFrameRelative:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mLayoutFrameRelative:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 416
    iget-object v0, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mSurfaceFrameRelative:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5f

    .line 417
    iget-object v0, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mSurface:Landroid/view/SurfaceControl;

    if-nez v0, :cond_1e

    .line 418
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Letterbox$LetterboxSurface;->createSurface(Landroid/view/SurfaceControl$Transaction;)V

    .line 427
    :cond_1e
    iget-object v0, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->this$0:Lcom/android/server/wm/Letterbox;

    invoke-static {v0}, Lcom/android/server/wm/Letterbox;->-$$Nest$fgetmAppCompatLetterboxOverrides(Lcom/android/server/wm/Letterbox;)Lcom/android/server/wm/AppCompatLetterboxOverrides;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatLetterboxOverrides;->getLetterboxBackgroundColor()Landroid/graphics/Color;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mColor:Landroid/graphics/Color;

    .line 428
    iget-object v0, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p0}, Lcom/android/server/wm/Letterbox$LetterboxSurface;->getRgbColorArray()[F

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setColor(Landroid/view/SurfaceControl;[F)Landroid/view/SurfaceControl$Transaction;

    .line 429
    iget-object v0, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/Letterbox$LetterboxSurface;->setPositionAndCrop(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    .line 431
    iget-object v0, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->this$0:Lcom/android/server/wm/Letterbox;

    invoke-static {v0}, Lcom/android/server/wm/Letterbox;->-$$Nest$fgetmAppCompatLetterboxOverrides(Lcom/android/server/wm/Letterbox;)Lcom/android/server/wm/AppCompatLetterboxOverrides;

    move-result-object v0

    .line 432
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatLetterboxOverrides;->hasWallpaperBackgroundForLetterbox()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mHasWallpaperBackground:Z

    .line 433
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Letterbox$LetterboxSurface;->updateAlphaAndBlur(Landroid/view/SurfaceControl$Transaction;)V

    .line 435
    iget-object v0, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 437
    iget-object p1, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mInputSurface:Landroid/view/SurfaceControl;

    if-eqz p1, :cond_6d

    .line 438
    invoke-virtual {p0, p2, p1}, Lcom/android/server/wm/Letterbox$LetterboxSurface;->setPositionAndCrop(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    .line 439
    iget-object p1, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mInputSurface:Landroid/view/SurfaceControl;

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Landroid/view/SurfaceControl$Transaction;->setTrustedOverlay(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    .line 440
    iget-object p1, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mInputSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p2, p1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    goto :goto_6d

    .line 444
    :cond_5f
    iget-object v0, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mSurface:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_66

    .line 445
    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 447
    :cond_66
    iget-object p1, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mInputSurface:Landroid/view/SurfaceControl;

    if-eqz p1, :cond_6d

    .line 448
    invoke-virtual {p2, p1}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 453
    :cond_6d
    :goto_6d
    iget-object p1, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mSurface:Landroid/view/SurfaceControl;

    if-eqz p1, :cond_83

    .line 454
    iget-object v0, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mInputInterceptor:Lcom/android/server/wm/Letterbox$InputInterceptor;

    if-eqz v0, :cond_83

    .line 455
    iget-object v1, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mSurfaceFrameRelative:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/Letterbox$InputInterceptor;->updateTouchableRegion(Landroid/graphics/Rect;)V

    .line 456
    iget-object p0, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mInputInterceptor:Lcom/android/server/wm/Letterbox$InputInterceptor;

    invoke-static {p0}, Lcom/android/server/wm/Letterbox$InputInterceptor;->-$$Nest$fgetmWindowHandle(Lcom/android/server/wm/Letterbox$InputInterceptor;)Landroid/view/InputWindowHandle;

    move-result-object p0

    invoke-virtual {p2, p1, p0}, Landroid/view/SurfaceControl$Transaction;->setInputWindowInfo(Landroid/view/SurfaceControl;Landroid/view/InputWindowHandle;)Landroid/view/SurfaceControl$Transaction;

    :cond_83
    :goto_83
    return-void
.end method

.method public attachInput(Lcom/android/server/wm/WindowState;)V
    .registers 6

    .line 378
    iget-object v0, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mInputInterceptor:Lcom/android/server/wm/Letterbox$InputInterceptor;

    if-nez v0, :cond_2a

    iget-object v0, p1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-nez v0, :cond_9

    goto :goto_2a

    .line 383
    :cond_9
    new-instance v0, Lcom/android/server/wm/Letterbox$InputInterceptor;

    iget-object v1, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->this$0:Lcom/android/server/wm/Letterbox;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Letterbox_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/android/server/wm/Letterbox$InputInterceptor;-><init>(Lcom/android/server/wm/Letterbox;Ljava/lang/String;Lcom/android/server/wm/WindowState;)V

    iput-object v0, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mInputInterceptor:Lcom/android/server/wm/Letterbox$InputInterceptor;

    :cond_2a
    :goto_2a
    return-void
.end method

.method public final createSurface(Landroid/view/SurfaceControl$Transaction;)V
    .registers 5

    .line 354
    iget-object v0, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->this$0:Lcom/android/server/wm/Letterbox;

    invoke-static {v0}, Lcom/android/server/wm/Letterbox;->-$$Nest$fgetmSurfaceControlFactory(Lcom/android/server/wm/Letterbox;)Ljava/util/function/Supplier;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl$Builder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Letterbox - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 355
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    const/4 v1, 0x4

    .line 356
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setFlags(I)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 357
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->setColorLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    const-string v1, "LetterboxSurface.createSurface"

    .line 358
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 359
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mSurface:Landroid/view/SurfaceControl;

    const/16 v1, -0x4e20

    .line 361
    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mSurface:Landroid/view/SurfaceControl;

    const/4 v0, 0x1

    .line 362
    invoke-virtual {p1, p0, v0}, Landroid/view/SurfaceControl$Transaction;->setColorSpaceAgnostic(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    return-void
.end method

.method public getHeight()I
    .registers 2

    .line 406
    iget-object p0, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mLayoutFrameGlobal:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    const/4 v0, 0x0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public final getRgbColorArray()[F
    .registers 5

    .line 492
    iget-object v0, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mColor:Landroid/graphics/Color;

    invoke-virtual {v0}, Landroid/graphics/Color;->red()F

    move-result v0

    .line 493
    iget-object v1, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mColor:Landroid/graphics/Color;

    invoke-virtual {v1}, Landroid/graphics/Color;->green()F

    move-result v1

    .line 494
    iget-object p0, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mColor:Landroid/graphics/Color;

    invoke-virtual {p0}, Landroid/graphics/Color;->blue()F

    move-result p0

    const/4 v2, 0x3

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v0, 0x1

    aput v1, v2, v0

    const/4 v0, 0x2

    aput p0, v2, v0

    return-object v2
.end method

.method public getWidth()I
    .registers 2

    .line 402
    iget-object p0, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mLayoutFrameGlobal:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p0

    const/4 v0, 0x0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public layout(IIIILandroid/graphics/Point;)V
    .registers 7

    .line 348
    iget-object v0, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mLayoutFrameGlobal:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 349
    iget-object p1, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mLayoutFrameRelative:Landroid/graphics/Rect;

    iget-object p2, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mLayoutFrameGlobal:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 350
    iget-object p0, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mLayoutFrameRelative:Landroid/graphics/Rect;

    iget p1, p5, Landroid/graphics/Point;->x:I

    neg-int p1, p1

    iget p2, p5, Landroid/graphics/Point;->y:I

    neg-int p2, p2

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Rect;->offset(II)V

    return-void
.end method

.method public needsApplySurfaceChanges()Z
    .registers 3

    .line 499
    iget-object v0, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mSurfaceFrameRelative:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mLayoutFrameRelative:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mSurfaceFrameRelative:Landroid/graphics/Rect;

    .line 503
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_33

    iget-object v0, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->this$0:Lcom/android/server/wm/Letterbox;

    invoke-static {v0}, Lcom/android/server/wm/Letterbox;->-$$Nest$fgetmAppCompatLetterboxOverrides(Lcom/android/server/wm/Letterbox;)Lcom/android/server/wm/AppCompatLetterboxOverrides;

    move-result-object v0

    .line 504
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatLetterboxOverrides;->hasWallpaperBackgroundForLetterbox()Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mHasWallpaperBackground:Z

    if-ne v0, v1, :cond_35

    iget-object v0, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->this$0:Lcom/android/server/wm/Letterbox;

    invoke-static {v0}, Lcom/android/server/wm/Letterbox;->-$$Nest$fgetmAppCompatLetterboxOverrides(Lcom/android/server/wm/Letterbox;)Lcom/android/server/wm/AppCompatLetterboxOverrides;

    move-result-object v0

    .line 506
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatLetterboxOverrides;->getLetterboxBackgroundColor()Landroid/graphics/Color;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mColor:Landroid/graphics/Color;

    invoke-virtual {v0, p0}, Landroid/graphics/Color;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_33

    goto :goto_35

    :cond_33
    const/4 p0, 0x0

    return p0

    :cond_35
    :goto_35
    const/4 p0, 0x1

    return p0
.end method

.method public remove(Landroid/view/SurfaceControl$Transaction;)V
    .registers 4

    .line 387
    iget-object v0, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mInputInterceptor:Lcom/android/server/wm/Letterbox$InputInterceptor;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 388
    invoke-virtual {v0}, Lcom/android/server/wm/Letterbox$InputInterceptor;->dispose()V

    .line 389
    iput-object v1, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mInputInterceptor:Lcom/android/server/wm/Letterbox$InputInterceptor;

    .line 391
    :cond_a
    iget-object v0, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mSurface:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_11

    .line 392
    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 394
    :cond_11
    iget-object v0, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mInputSurface:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_18

    .line 395
    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 397
    :cond_18
    iput-object v1, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mInputSurface:Landroid/view/SurfaceControl;

    .line 398
    iput-object v1, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mSurface:Landroid/view/SurfaceControl;

    return-void
.end method

.method public final setPositionAndCrop(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .registers 5

    .line 462
    iget-object v0, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mSurfaceFrameRelative:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    invoke-virtual {p1, p2, v1, v0}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 463
    iget-object v0, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mSurfaceFrameRelative:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object p0, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mSurfaceFrameRelative:Landroid/graphics/Rect;

    .line 464
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    .line 463
    invoke-virtual {p1, p2, v0, p0}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    return-void
.end method

.method public final updateAlphaAndBlur(Landroid/view/SurfaceControl$Transaction;)V
    .registers 5

    .line 468
    iget-boolean v0, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mHasWallpaperBackground:Z

    const/4 v1, 0x0

    if-nez v0, :cond_12

    .line 470
    iget-object v0, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mSurface:Landroid/view/SurfaceControl;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0, v2}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 472
    iget-object p0, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p1, p0, v1}, Landroid/view/SurfaceControl$Transaction;->setBackgroundBlurRadius(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    return-void

    .line 475
    :cond_12
    iget-object v0, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->this$0:Lcom/android/server/wm/Letterbox;

    invoke-static {v0}, Lcom/android/server/wm/Letterbox;->-$$Nest$fgetmAppCompatLetterboxOverrides(Lcom/android/server/wm/Letterbox;)Lcom/android/server/wm/AppCompatLetterboxOverrides;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatLetterboxOverrides;->getLetterboxWallpaperDarkScrimAlpha()F

    move-result v0

    .line 476
    iget-object v2, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v2, v0}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 479
    iget-object v0, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->this$0:Lcom/android/server/wm/Letterbox;

    invoke-static {v0}, Lcom/android/server/wm/Letterbox;->-$$Nest$fgetmAppCompatLetterboxOverrides(Lcom/android/server/wm/Letterbox;)Lcom/android/server/wm/AppCompatLetterboxOverrides;

    move-result-object v0

    .line 480
    invoke-virtual {v0}, Lcom/android/server/wm/AppCompatLetterboxOverrides;->getLetterboxWallpaperBlurRadiusPx()I

    move-result v0

    if-gtz v0, :cond_33

    .line 483
    iget-object p0, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p1, p0, v1}, Landroid/view/SurfaceControl$Transaction;->setBackgroundBlurRadius(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    return-void

    .line 487
    :cond_33
    iget-object p0, p0, Lcom/android/server/wm/Letterbox$LetterboxSurface;->mSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p1, p0, v0}, Landroid/view/SurfaceControl$Transaction;->setBackgroundBlurRadius(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    return-void
.end method
