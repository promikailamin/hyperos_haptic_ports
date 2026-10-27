.class public Lcom/android/server/wm/EmulatorDisplayOverlay;
.super Ljava/lang/Object;
.source "EmulatorDisplayOverlay.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# instance fields
.field public final mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

.field public final mDisplayId:I

.field public mDrawNeeded:Z

.field public final mEnableScreenBrightnessDim:Z

.field public mLastDH:I

.field public mLastDW:I

.field public final mOverlay:Landroid/graphics/drawable/Drawable;

.field public mRotation:I

.field public mScreenBrightness:F

.field public mScreenSize:Landroid/graphics/Point;

.field public final mSurface:Landroid/view/Surface;

.field public final mSurfaceControl:Landroid/view/SurfaceControl;

.field public mVisible:Z

.field public final mWmService:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;ILandroid/view/SurfaceControl$Transaction;ZZ)V
    .registers 17

    .line 74
    new-instance v8, Landroid/graphics/BLASTBufferQueue;

    const-string v0, "EmulatorDisplayOverlay"

    const/4 v1, 0x1

    invoke-direct {v8, v0, v1}, Landroid/graphics/BLASTBufferQueue;-><init>(Ljava/lang/String;Z)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/server/wm/EmulatorDisplayOverlay;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;ILandroid/view/SurfaceControl$Transaction;ZZLandroid/graphics/BLASTBufferQueue;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;ILandroid/view/SurfaceControl$Transaction;ZZLandroid/graphics/BLASTBufferQueue;)V
    .registers 13

    .line 81
    const-string v0, "EmulatorDisplayOverlay"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    invoke-virtual {p3}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v1

    .line 83
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mScreenSize:Landroid/graphics/Point;

    .line 84
    invoke-virtual {v1, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    const/4 v1, 0x0

    .line 88
    :try_start_14
    invoke-virtual {p3}, Lcom/android/server/wm/DisplayContent;->makeOverlay()Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    .line 89
    invoke-virtual {v2, v0}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    .line 90
    invoke-virtual {v2}, Landroid/view/SurfaceControl$Builder;->setBLASTLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    const/4 v3, -0x3

    .line 91
    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl$Builder;->setFormat(I)Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    .line 92
    invoke-virtual {v2, v0}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    .line 93
    invoke-virtual {v2}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v2
    :try_end_2d
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_14 .. :try_end_2d} :catch_3f

    .line 94
    :try_start_2d
    invoke-virtual {p5, v2, p4}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    const/4 p4, 0x0

    .line 95
    invoke-virtual {p5, v2, p4, p4}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 96
    invoke-virtual {p5, v2}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 98
    invoke-virtual {p3}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result p4

    invoke-static {v2, p5, p4, v0}, Lcom/android/server/wm/InputMonitor;->setTrustedOverlayInputInfo(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;ILjava/lang/String;)V
    :try_end_3e
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_2d .. :try_end_3e} :catch_40

    goto :goto_40

    :catch_3f
    move-object v2, v1

    .line 101
    :catch_40
    :goto_40
    iput-object v2, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 p4, 0x1

    .line 102
    iput-boolean p4, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mDrawNeeded:Z

    if-eqz p6, :cond_4e

    const p5, 0x1080359

    .line 104
    invoke-virtual {p1, p5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 106
    :cond_4e
    iput-object v1, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mOverlay:Landroid/graphics/drawable/Drawable;

    .line 108
    iput-object p8, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mBlastBufferQueue:Landroid/graphics/BLASTBufferQueue;

    .line 109
    iget-object p5, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mScreenSize:Landroid/graphics/Point;

    iget p6, p5, Landroid/graphics/Point;->x:I

    iget p5, p5, Landroid/graphics/Point;->y:I

    invoke-virtual {p8, v2, p6, p5, p4}, Landroid/graphics/BLASTBufferQueue;->update(Landroid/view/SurfaceControl;III)V

    .line 111
    invoke-virtual {p8}, Landroid/graphics/BLASTBufferQueue;->createSurface()Landroid/view/Surface;

    move-result-object p4

    iput-object p4, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mSurface:Landroid/view/Surface;

    .line 113
    iput-object p2, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 114
    invoke-virtual {p3}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result p2

    iput p2, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mDisplayId:I

    .line 115
    iput-boolean p7, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mEnableScreenBrightnessDim:Z

    if-eqz p7, :cond_7f

    .line 118
    invoke-virtual {p0, p2}, Lcom/android/server/wm/EmulatorDisplayOverlay;->updateScreenBrightness(I)Z

    .line 119
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object p3

    const-wide/16 p6, 0x8

    .line 121
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p8

    const/4 p5, 0x0

    move-object p4, p0

    .line 119
    invoke-virtual/range {p3 .. p8}, Landroid/hardware/display/DisplayManagerGlobal;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;JLjava/lang/String;)V

    :cond_7f
    return-void
.end method


# virtual methods
.method public final clampedBrightness(F)F
    .registers 3

    .line 0
    const/4 p0, 0x0

    cmpg-float p0, p1, p0

    const/high16 v0, 0x3f800000    # 1.0f

    if-ltz p0, :cond_d

    cmpl-float p0, p1, v0

    if-lez p0, :cond_c

    goto :goto_d

    :cond_c
    return p1

    :cond_d
    :goto_d
    return v0
.end method

.method public final drawIfNeeded()V
    .registers 5

    .line 127
    iget-boolean v0, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mDrawNeeded:Z

    if-eqz v0, :cond_3a

    iget-boolean v0, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mVisible:Z

    if-nez v0, :cond_9

    goto :goto_3a

    :cond_9
    const/4 v0, 0x0

    .line 130
    iput-boolean v0, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mDrawNeeded:Z

    const/4 v1, 0x0

    .line 134
    :try_start_d
    iget-object v2, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mSurface:Landroid/view/Surface;

    invoke-virtual {v2, v1}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v1
    :try_end_13
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_13} :catch_13
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_d .. :try_end_13} :catch_13

    :catch_13
    if-nez v1, :cond_16

    goto :goto_3a

    .line 140
    :cond_16
    invoke-virtual {p0}, Lcom/android/server/wm/EmulatorDisplayOverlay;->getBackgroundColor()I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 142
    iget-object v2, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mScreenSize:Landroid/graphics/Point;

    iget v3, v2, Landroid/graphics/Point;->x:I

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 143
    iget-object v3, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mOverlay:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_35

    .line 144
    invoke-virtual {v3, v0, v0, v2, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 145
    iget-object v0, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 147
    :cond_35
    iget-object p0, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mSurface:Landroid/view/Surface;

    invoke-virtual {p0, v1}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    :cond_3a
    :goto_3a
    return-void
.end method

.method public final getBackgroundColor()I
    .registers 2

    .line 151
    iget-boolean v0, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mEnableScreenBrightnessDim:Z

    if-eqz v0, :cond_9

    .line 152
    invoke-virtual {p0}, Lcom/android/server/wm/EmulatorDisplayOverlay;->getScreenBrightnessDimColor()I

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public final getScreenBrightnessDimColor()I
    .registers 2

    const/high16 v0, 0x3f800000    # 1.0f

    .line 159
    iget p0, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mScreenBrightness:F

    sub-float/2addr v0, p0

    const/high16 p0, 0x437f0000    # 255.0f

    mul-float/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p0

    shl-int/lit8 p0, p0, 0x18

    return p0
.end method

.method public onDisplayAdded(I)V
    .registers 2

    .line 0
    return-void
.end method

.method public onDisplayChanged(I)V
    .registers 4

    .line 202
    iget-object v0, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 203
    :try_start_8
    iget v1, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mDisplayId:I

    if-eq v1, p1, :cond_13

    .line 204
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_11

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_11
    move-exception p0

    goto :goto_24

    .line 206
    :cond_13
    :try_start_13
    invoke-virtual {p0, p1}, Lcom/android/server/wm/EmulatorDisplayOverlay;->updateScreenBrightness(I)Z

    move-result p1

    if-eqz p1, :cond_1f

    const/4 p1, 0x1

    .line 207
    iput-boolean p1, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mDrawNeeded:Z

    .line 208
    invoke-virtual {p0}, Lcom/android/server/wm/EmulatorDisplayOverlay;->drawIfNeeded()V

    .line 210
    :cond_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_13 .. :try_end_20} :catchall_11

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_24
    :try_start_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_11

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public onDisplayRemoved(I)V
    .registers 2

    .line 0
    return-void
.end method

.method public positionSurface(IIILandroid/view/SurfaceControl$Transaction;)V
    .registers 6

    .line 179
    iget p4, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mLastDW:I

    if-ne p4, p1, :cond_d

    iget p4, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mLastDH:I

    if-ne p4, p2, :cond_d

    iget p4, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mRotation:I

    if-ne p4, p3, :cond_d

    return-void

    .line 182
    :cond_d
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "positionSurface: dw="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", dh="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const-string v0, "WindowManager"

    invoke-static {v0, p4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iput p1, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mLastDW:I

    .line 184
    iput p2, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mLastDH:I

    const/4 p1, 0x1

    .line 185
    iput-boolean p1, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mDrawNeeded:Z

    .line 186
    iput p3, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mRotation:I

    .line 187
    invoke-virtual {p0}, Lcom/android/server/wm/EmulatorDisplayOverlay;->drawIfNeeded()V

    return-void
.end method

.method public setVisibility(ZLandroid/view/SurfaceControl$Transaction;)V
    .registers 4

    .line 166
    iget-object v0, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_5

    return-void

    .line 169
    :cond_5
    iput-boolean p1, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mVisible:Z

    .line 170
    invoke-virtual {p0}, Lcom/android/server/wm/EmulatorDisplayOverlay;->drawIfNeeded()V

    if-eqz p1, :cond_12

    .line 172
    iget-object p0, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p2, p0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    return-void

    .line 174
    :cond_12
    iget-object p0, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p2, p0}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    return-void
.end method

.method public final updateScreenBrightness(I)Z
    .registers 4

    .line 214
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->getBrightnessInfo(I)Landroid/hardware/display/BrightnessInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_13

    .line 217
    const-string p0, "WindowManager"

    const-string p1, "Cannot update brightness since BrightnessInfo is null"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 221
    :cond_13
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManagerGlobal;->getBrightnessInfo(I)Landroid/hardware/display/BrightnessInfo;

    move-result-object p1

    iget p1, p1, Landroid/hardware/display/BrightnessInfo;->adjustedBrightness:F

    .line 220
    invoke-virtual {p0, p1}, Lcom/android/server/wm/EmulatorDisplayOverlay;->clampedBrightness(F)F

    move-result p1

    .line 223
    iget v0, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mScreenBrightness:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_28

    return v1

    .line 226
    :cond_28
    iput p1, p0, Lcom/android/server/wm/EmulatorDisplayOverlay;->mScreenBrightness:F

    const/4 p0, 0x1

    return p0
.end method
