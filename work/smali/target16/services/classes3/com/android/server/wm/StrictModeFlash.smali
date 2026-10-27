.class public Lcom/android/server/wm/StrictModeFlash;
.super Ljava/lang/Object;
.source "StrictModeFlash.java"


# instance fields
.field public final mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

.field public mDrawNeeded:Z

.field public mLastDH:I

.field public mLastDW:I

.field public final mSurface:Landroid/view/Surface;

.field public final mSurfaceControl:Landroid/view/SurfaceControl;

.field public final mThickness:I


# direct methods
.method public constructor <init>(Lcom/android/server/wm/DisplayContent;Landroid/view/SurfaceControl$Transaction;)V
    .registers 7

    .line 45
    const-string v0, "StrictModeFlash"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v1, 0x14

    .line 43
    iput v1, p0, Lcom/android/server/wm/StrictModeFlash;->mThickness:I

    const/4 v1, 0x0

    .line 48
    :try_start_a
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->makeOverlay()Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    .line 49
    invoke-virtual {v2, v0}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    .line 50
    invoke-virtual {v2}, Landroid/view/SurfaceControl$Builder;->setBLASTLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    const/4 v3, -0x3

    .line 51
    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl$Builder;->setFormat(I)Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    .line 52
    invoke-virtual {v2, v0}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    .line 53
    invoke-virtual {v2}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v1

    const v2, 0xf6950

    .line 56
    invoke-virtual {p2, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    const/4 v2, 0x0

    .line 57
    invoke-virtual {p2, v1, v2, v2}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 58
    invoke-virtual {p2, v1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 60
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result p1

    invoke-static {v1, p2, p1, v0}, Lcom/android/server/wm/InputMonitor;->setTrustedOverlayInputInfo(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;ILjava/lang/String;)V
    :try_end_37
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_a .. :try_end_37} :catch_37

    .line 63
    :catch_37
    iput-object v1, p0, Lcom/android/server/wm/StrictModeFlash;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 p1, 0x1

    .line 64
    iput-boolean p1, p0, Lcom/android/server/wm/StrictModeFlash;->mDrawNeeded:Z

    .line 66
    new-instance p2, Landroid/graphics/BLASTBufferQueue;

    invoke-direct {p2, v0, p1}, Landroid/graphics/BLASTBufferQueue;-><init>(Ljava/lang/String;Z)V

    iput-object p2, p0, Lcom/android/server/wm/StrictModeFlash;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    .line 67
    invoke-virtual {p2, v1, p1, p1, p1}, Landroid/graphics/BLASTBufferQueue;->update(Landroid/view/SurfaceControl;III)V

    .line 69
    invoke-virtual {p2}, Landroid/graphics/BLASTBufferQueue;->createSurface()Landroid/view/Surface;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/StrictModeFlash;->mSurface:Landroid/view/Surface;

    return-void
.end method


# virtual methods
.method public final drawIfNeeded()V
    .registers 8

    .line 73
    iget-boolean v0, p0, Lcom/android/server/wm/StrictModeFlash;->mDrawNeeded:Z

    if-nez v0, :cond_5

    goto :goto_1d

    :cond_5
    const/4 v0, 0x0

    .line 76
    iput-boolean v0, p0, Lcom/android/server/wm/StrictModeFlash;->mDrawNeeded:Z

    .line 77
    iget v1, p0, Lcom/android/server/wm/StrictModeFlash;->mLastDW:I

    .line 78
    iget v2, p0, Lcom/android/server/wm/StrictModeFlash;->mLastDH:I

    .line 79
    iget-object v3, p0, Lcom/android/server/wm/StrictModeFlash;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    iget-object v4, p0, Lcom/android/server/wm/StrictModeFlash;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v1, v2, v5}, Landroid/graphics/BLASTBufferQueue;->update(Landroid/view/SurfaceControl;III)V

    const/4 v3, 0x0

    .line 83
    :try_start_15
    iget-object v4, p0, Lcom/android/server/wm/StrictModeFlash;->mSurface:Landroid/view/Surface;

    invoke-virtual {v4, v3}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v3
    :try_end_1b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_15 .. :try_end_1b} :catch_1b
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_15 .. :try_end_1b} :catch_1b

    :catch_1b
    if-nez v3, :cond_1e

    :goto_1d
    return-void

    .line 91
    :cond_1e
    invoke-virtual {v3}, Landroid/graphics/Canvas;->save()I

    .line 92
    new-instance v4, Landroid/graphics/Rect;

    const/16 v5, 0x14

    invoke-direct {v4, v0, v0, v1, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v3, v4}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    const/high16 v4, -0x10000

    .line 93
    invoke-virtual {v3, v4}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 94
    invoke-virtual {v3}, Landroid/graphics/Canvas;->restore()V

    .line 96
    invoke-virtual {v3}, Landroid/graphics/Canvas;->save()I

    .line 97
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, v0, v0, v5, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v3, v6}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 98
    invoke-virtual {v3, v4}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 99
    invoke-virtual {v3}, Landroid/graphics/Canvas;->restore()V

    .line 101
    invoke-virtual {v3}, Landroid/graphics/Canvas;->save()I

    .line 102
    new-instance v5, Landroid/graphics/Rect;

    add-int/lit8 v6, v1, -0x14

    invoke-direct {v5, v6, v0, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v3, v5}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 103
    invoke-virtual {v3, v4}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 104
    invoke-virtual {v3}, Landroid/graphics/Canvas;->restore()V

    .line 106
    invoke-virtual {v3}, Landroid/graphics/Canvas;->save()I

    .line 107
    new-instance v5, Landroid/graphics/Rect;

    add-int/lit8 v6, v2, -0x14

    invoke-direct {v5, v0, v6, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v3, v5}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 108
    invoke-virtual {v3, v4}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 109
    invoke-virtual {v3}, Landroid/graphics/Canvas;->restore()V

    .line 111
    iget-object p0, p0, Lcom/android/server/wm/StrictModeFlash;->mSurface:Landroid/view/Surface;

    invoke-virtual {p0, v3}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public positionSurface(IILandroid/view/SurfaceControl$Transaction;)V
    .registers 5

    .line 129
    iget v0, p0, Lcom/android/server/wm/StrictModeFlash;->mLastDW:I

    if-ne v0, p1, :cond_9

    iget v0, p0, Lcom/android/server/wm/StrictModeFlash;->mLastDH:I

    if-ne v0, p2, :cond_9

    return-void

    .line 132
    :cond_9
    iput p1, p0, Lcom/android/server/wm/StrictModeFlash;->mLastDW:I

    .line 133
    iput p2, p0, Lcom/android/server/wm/StrictModeFlash;->mLastDH:I

    .line 134
    iget-object v0, p0, Lcom/android/server/wm/StrictModeFlash;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p3, v0, p1, p2}, Landroid/view/SurfaceControl$Transaction;->setBufferSize(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    const/4 p1, 0x1

    .line 135
    iput-boolean p1, p0, Lcom/android/server/wm/StrictModeFlash;->mDrawNeeded:Z

    return-void
.end method

.method public setVisibility(ZLandroid/view/SurfaceControl$Transaction;)V
    .registers 4

    .line 117
    iget-object v0, p0, Lcom/android/server/wm/StrictModeFlash;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_5

    return-void

    .line 120
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/wm/StrictModeFlash;->drawIfNeeded()V

    if-eqz p1, :cond_10

    .line 122
    iget-object p0, p0, Lcom/android/server/wm/StrictModeFlash;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p2, p0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    return-void

    .line 124
    :cond_10
    iget-object p0, p0, Lcom/android/server/wm/StrictModeFlash;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p2, p0}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    return-void
.end method
