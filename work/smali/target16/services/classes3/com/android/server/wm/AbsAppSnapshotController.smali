.class public abstract Lcom/android/server/wm/AbsAppSnapshotController;
.super Ljava/lang/Object;
.source "AbsAppSnapshotController.java"


# static fields
.field static final SNAPSHOT_MODE_APP_THEME:I = 0x1

.field static final SNAPSHOT_MODE_NONE:I = 0x2

.field static final SNAPSHOT_MODE_REAL:I


# instance fields
.field public mCache:Lcom/android/server/wm/SnapshotCache;

.field public mCurrentChangeInfo:Lcom/android/server/wm/Transition$ChangeInfo;

.field public final mHighResSnapshotScale:F

.field public final mIsRunningOnIoT:Z

.field public final mIsRunningOnTv:Z

.field public final mService:Lcom/android/server/wm/WindowManagerService;

.field public mSnapshotEnabled:Z


# direct methods
.method public static synthetic $r8$lambda$7UXAN0FtsMTreoHnnl_9BLBQCL4(Ljava/util/ArrayList;Lcom/android/server/wm/WindowState;)V
    .registers 4

    .line 313
    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-eqz v0, :cond_16

    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mRemoved:Z

    if-nez v0, :cond_16

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_16

    .line 314
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_16
    return-void
.end method

.method public static synthetic $r8$lambda$9lPJ2o9QEm-SsCOn95NbpJpCRPo(Lcom/android/server/wm/AbsAppSnapshotController;Lcom/android/server/wm/WindowContainer;Ljava/util/function/Consumer;Landroid/window/TaskSnapshot;)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/AbsAppSnapshotController;->lambda$recordSnapshotInner$0(Lcom/android/server/wm/WindowContainer;Ljava/util/function/Consumer;Landroid/window/TaskSnapshot;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LmvqnrG97mlu9Qii88N50H03Ktw(Landroid/graphics/RenderNode;IILandroid/window/TaskSnapshot$Builder;)Landroid/window/TaskSnapshot;
    .registers 7

    const-wide/16 v0, 0x20

    .line 539
    :try_start_2
    const-string v2, "drawAppThemeSnapshot_acquire"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 541
    invoke-static {p0, p1, p2}, Landroid/view/ThreadedRenderer;->createHardwareBitmap(Landroid/graphics/RenderNode;II)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_b
    .catchall {:try_start_2 .. :try_end_b} :catchall_2c

    if-nez p0, :cond_12

    .line 550
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    const/4 p0, 0x0

    return-object p0

    .line 546
    :cond_12
    :try_start_12
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/window/TaskSnapshot$Builder;->setSnapshot(Landroid/hardware/HardwareBuffer;)Landroid/window/TaskSnapshot$Builder;

    .line 547
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/window/TaskSnapshot$Builder;->setColorSpace(Landroid/graphics/ColorSpace;)Landroid/window/TaskSnapshot$Builder;

    .line 548
    invoke-virtual {p3}, Landroid/window/TaskSnapshot$Builder;->build()Landroid/window/TaskSnapshot;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/wm/AbsAppSnapshotController;->validateSnapshot(Landroid/window/TaskSnapshot;)Landroid/window/TaskSnapshot;

    move-result-object p0
    :try_end_28
    .catchall {:try_start_12 .. :try_end_28} :catchall_2c

    .line 550
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-object p0

    :catchall_2c
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 551
    throw p0
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .registers 4

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput-object p1, p0, Lcom/android/server/wm/AbsAppSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 117
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.software.leanback"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/AbsAppSnapshotController;->mIsRunningOnTv:Z

    .line 119
    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v0, "android.hardware.type.embedded"

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/wm/AbsAppSnapshotController;->mIsRunningOnIoT:Z

    .line 121
    invoke-virtual {p0}, Lcom/android/server/wm/AbsAppSnapshotController;->initSnapshotScale()F

    move-result p1

    iput p1, p0, Lcom/android/server/wm/AbsAppSnapshotController;->mHighResSnapshotScale:F

    return-void
.end method

.method public static getSystemBarInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/InsetsState;)Landroid/graphics/Rect;
    .registers 5

    .line 557
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v0

    const/4 v1, 0x0

    .line 556
    invoke-virtual {p2, p0, p1, v0, v1}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;IZ)Landroid/graphics/Insets;

    move-result-object p0

    .line 558
    invoke-virtual {p0}, Landroid/graphics/Insets;->toRect()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public static isInvalidHardwareBuffer(Landroid/hardware/HardwareBuffer;)Z
    .registers 3

    const/4 v0, 0x1

    if-eqz p0, :cond_18

    .line 344
    invoke-virtual {p0}, Landroid/hardware/HardwareBuffer;->isClosed()Z

    move-result v1

    if-nez v1, :cond_18

    .line 345
    invoke-virtual {p0}, Landroid/hardware/HardwareBuffer;->getWidth()I

    move-result v1

    if-le v1, v0, :cond_18

    invoke-virtual {p0}, Landroid/hardware/HardwareBuffer;->getHeight()I

    move-result p0

    if-gt p0, v0, :cond_16

    goto :goto_18

    :cond_16
    const/4 p0, 0x0

    return p0

    :cond_18
    :goto_18
    return v0
.end method

.method public static isInvalidHardwareBuffer(Landroid/window/TaskSnapshot;)Z
    .registers 3

    const/4 v0, 0x1

    if-eqz p0, :cond_18

    .line 351
    invoke-virtual {p0}, Landroid/window/TaskSnapshot;->isBufferValid()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 352
    invoke-virtual {p0}, Landroid/window/TaskSnapshot;->getHardwareBufferWidth()I

    move-result v1

    if-le v1, v0, :cond_18

    .line 353
    invoke-virtual {p0}, Landroid/window/TaskSnapshot;->getHardwareBufferHeight()I

    move-result p0

    if-gt p0, v0, :cond_16

    goto :goto_18

    :cond_16
    const/4 p0, 0x0

    return p0

    :cond_18
    :goto_18
    return v0
.end method

.method public static validateSnapshot(Landroid/window/TaskSnapshot;)Landroid/window/TaskSnapshot;
    .registers 6

    .line 255
    invoke-virtual {p0}, Landroid/window/TaskSnapshot;->isBufferValid()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    .line 258
    :cond_8
    invoke-virtual {p0}, Landroid/window/TaskSnapshot;->getHardwareBufferWidth()I

    move-result v0

    .line 259
    invoke-virtual {p0}, Landroid/window/TaskSnapshot;->getHardwareBufferHeight()I

    move-result v2

    .line 260
    const-string v3, "WindowManager"

    if-eqz v0, :cond_3a

    if-nez v2, :cond_17

    goto :goto_3a

    .line 265
    :cond_17
    invoke-virtual {p0}, Landroid/window/TaskSnapshot;->getDensityDpi()I

    move-result v0

    if-gtz v0, :cond_39

    .line 266
    invoke-virtual {p0}, Landroid/window/TaskSnapshot;->closeBuffer()V

    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid snapshot density "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/window/TaskSnapshot;->getDensityDpi()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_39
    return-object p0

    .line 261
    :cond_3a
    :goto_3a
    invoke-virtual {p0}, Landroid/window/TaskSnapshot;->closeBuffer()V

    .line 262
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid snapshot dimensions "

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "x"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method


# virtual methods
.method public captureSnapshot(Lcom/android/server/wm/WindowContainer;Z)Lcom/android/server/wm/AbsAppSnapshotController$SnapshotSupplier;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/WindowContainer;",
            "Z)",
            "Lcom/android/server/wm/AbsAppSnapshotController$SnapshotSupplier;"
        }
    .end annotation

    .line 167
    new-instance v0, Lcom/android/server/wm/AbsAppSnapshotController$SnapshotSupplier;

    invoke-direct {v0}, Lcom/android/server/wm/AbsAppSnapshotController$SnapshotSupplier;-><init>()V

    .line 168
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AbsAppSnapshotController;->getSnapshotMode(Lcom/android/server/wm/WindowContainer;)I

    move-result v1

    if-eqz v1, :cond_23

    const/4 v2, 0x1

    if-eq v1, v2, :cond_f

    return-object v0

    .line 170
    :cond_f
    const-string v1, "drawAppThemeSnapshot"

    const-wide/16 v2, 0x20

    invoke-static {v2, v3, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    if-eqz p2, :cond_1f

    .line 172
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AbsAppSnapshotController;->drawAppThemeSnapshot(Lcom/android/server/wm/WindowContainer;)Ljava/util/function/Supplier;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/server/wm/AbsAppSnapshotController$SnapshotSupplier;->setSupplier(Ljava/util/function/Supplier;)V

    .line 174
    :cond_1f
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    return-object v0

    .line 177
    :cond_23
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AbsAppSnapshotController;->snapshot(Lcom/android/server/wm/WindowContainer;)Landroid/window/TaskSnapshot;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/server/wm/AbsAppSnapshotController$SnapshotSupplier;->setSnapshot(Landroid/window/TaskSnapshot;)V

    return-object v0
.end method

.method public checkIfReadyToScreenshot(Lcom/android/server/wm/WindowContainer;)Landroid/util/Pair;
    .registers 4

    .line 440
    iget-object v0, p0, Lcom/android/server/wm/AbsAppSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->isScreenOn()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_c

    return-object v1

    .line 446
    :cond_c
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AbsAppSnapshotController;->findAppTokenForSnapshot(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    if-nez p0, :cond_13

    return-object v1

    .line 453
    :cond_13
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-nez v0, :cond_30

    .line 455
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to take screenshot. No main window for "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WindowManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 458
    :cond_30
    invoke-virtual {p0}, Lcom/android/server/wm/WindowToken;->hasFixedRotationTransform()Z

    move-result p1

    if-eqz p1, :cond_37

    return-object v1

    .line 465
    :cond_37
    new-instance p1, Landroid/util/Pair;

    invoke-direct {p1, p0, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method public createSnapshot(Lcom/android/server/wm/WindowContainer;FLandroid/graphics/Rect;Landroid/window/TaskSnapshot$Builder;)Landroid/window/ScreenCaptureInternal$ScreenshotHardwareBuffer;
    .registers 12

    .line 290
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_8

    return-object v0

    .line 296
    :cond_8
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p0, :cond_24

    .line 298
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v3

    if-eqz v3, :cond_24

    .line 299
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->shouldImeAttachedToApp()Z

    move-result v3

    if-nez v3, :cond_24

    move v3, v2

    goto :goto_25

    :cond_24
    move v3, v1

    .line 301
    :goto_25
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBar()Lcom/android/server/wm/WindowState;

    move-result-object v4

    .line 302
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    if-eqz v3, :cond_3f

    .line 304
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3f
    if-eqz v4, :cond_48

    .line 310
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 312
    :cond_48
    new-instance v4, Lcom/android/server/wm/AbsAppSnapshotController$$ExternalSyntheticLambda1;

    invoke-direct {v4, v5}, Lcom/android/server/wm/AbsAppSnapshotController$$ExternalSyntheticLambda1;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {p1, v4, v2}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 318
    instance-of v4, p1, Lcom/android/server/wm/Task;

    if-eqz v4, :cond_5e

    .line 319
    move-object v4, p1

    check-cast v4, Lcom/android/server/wm/Task;

    iget-object v4, v4, Lcom/android/server/wm/Task;->mExcludeLayersFromTaskSnapshot:[Landroid/view/SurfaceControl;

    if-eqz v4, :cond_5e

    .line 321
    invoke-static {v5, v4}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 325
    :cond_5e
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Landroid/view/SurfaceControl;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/view/SurfaceControl;

    if-nez v3, :cond_75

    if-eqz p0, :cond_75

    .line 326
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result p0

    if-eqz p0, :cond_75

    move v1, v2

    :cond_75
    invoke-virtual {p4, v1}, Landroid/window/TaskSnapshot$Builder;->setHasImeSurface(Z)Landroid/window/TaskSnapshot$Builder;

    .line 329
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object p0

    .line 332
    invoke-virtual {p4}, Landroid/window/TaskSnapshot$Builder;->getPixelFormat()I

    move-result p1

    .line 328
    invoke-static {p0, p3, p2, p1, v4}, Landroid/window/ScreenCaptureInternal;->captureLayersExcluding(Landroid/view/SurfaceControl;Landroid/graphics/Rect;FI[Landroid/view/SurfaceControl;)Landroid/window/ScreenCaptureInternal$ScreenshotHardwareBuffer;

    move-result-object p0

    if-nez p0, :cond_88

    move-object p1, v0

    goto :goto_8c

    .line 335
    :cond_88
    invoke-virtual {p0}, Landroid/window/ScreenCaptureInternal$ScreenshotHardwareBuffer;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object p1

    .line 336
    :goto_8c
    invoke-static {p1}, Lcom/android/server/wm/AbsAppSnapshotController;->isInvalidHardwareBuffer(Landroid/hardware/HardwareBuffer;)Z

    move-result p1

    if-eqz p1, :cond_93

    return-object v0

    :cond_93
    return-object p0
.end method

.method public final drawAppThemeSnapshot(Lcom/android/server/wm/WindowContainer;)Ljava/util/function/Supplier;
    .registers 18

    move-object/from16 v0, p0

    .line 473
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wm/AbsAppSnapshotController;->getTopActivity(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return-object v2

    .line 477
    :cond_a
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v3

    if-nez v3, :cond_11

    return-object v2

    .line 481
    :cond_11
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wm/AbsAppSnapshotController;->getTaskDescription(Lcom/android/server/wm/WindowContainer;)Landroid/app/ActivityManager$TaskDescription;

    move-result-object v8

    .line 483
    invoke-virtual {v8}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColor()I

    move-result v4

    const/16 v5, 0xff

    .line 482
    invoke-static {v4, v5}, Lcom/android/internal/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v11

    .line 484
    iget-object v12, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 485
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    .line 486
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getInsetsStateWithVisibilityOverride()Landroid/view/InsetsState;

    move-result-object v5

    .line 487
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getFrame()Landroid/graphics/Rect;

    move-result-object v6

    .line 488
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    .line 487
    invoke-static {v6, v7, v5}, Lcom/android/server/wm/AbsAppSnapshotController;->getSystemBarInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/InsetsState;)Landroid/graphics/Rect;

    move-result-object v13

    .line 489
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v14

    .line 490
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v15

    .line 491
    iget v4, v0, Lcom/android/server/wm/AbsAppSnapshotController;->mHighResSnapshotScale:F

    .line 493
    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x43000000    # 128.0f

    cmpg-float v7, v6, v5

    if-gez v7, :cond_4f

    div-float/2addr v6, v5

    .line 495
    invoke-static {v6, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    :cond_4f
    move v9, v4

    .line 499
    new-instance v4, Landroid/window/SnapshotDrawerUtils$SystemBarBackgroundPainter;

    iget v5, v12, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v6, v12, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iget-object v7, v12, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v7, v7, Landroid/view/InsetsFlags;->appearance:I

    .line 501
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getRequestedVisibleTypes()I

    move-result v10

    invoke-direct/range {v4 .. v10}, Landroid/window/SnapshotDrawerUtils$SystemBarBackgroundPainter;-><init>(IIILandroid/app/ActivityManager$TaskDescription;FI)V

    int-to-float v5, v14

    mul-float/2addr v5, v9

    float-to-int v5, v5

    int-to-float v6, v15

    mul-float/2addr v6, v9

    float-to-int v6, v6

    .line 504
    const-string v7, "SnapshotController"

    invoke-static {v7, v2}, Landroid/graphics/RenderNode;->create(Ljava/lang/String;Landroid/graphics/RenderNode$AnimationHost;)Landroid/graphics/RenderNode;

    move-result-object v7

    const/4 v8, 0x0

    .line 505
    invoke-virtual {v7, v8, v8, v5, v6}, Landroid/graphics/RenderNode;->setLeftTopRightBottom(IIII)Z

    .line 506
    invoke-virtual {v7, v8}, Landroid/graphics/RenderNode;->setClipToBounds(Z)Z

    .line 507
    invoke-virtual {v7, v5, v6}, Landroid/graphics/RenderNode;->start(II)Landroid/graphics/RecordingCanvas;

    move-result-object v9

    .line 508
    invoke-virtual {v9, v11}, Landroid/graphics/RecordingCanvas;->drawColor(I)V

    .line 509
    invoke-virtual {v4, v13}, Landroid/window/SnapshotDrawerUtils$SystemBarBackgroundPainter;->setInsets(Landroid/graphics/Rect;)V

    .line 510
    invoke-virtual {v4, v9, v2}, Landroid/window/SnapshotDrawerUtils$SystemBarBackgroundPainter;->drawDecors(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 511
    invoke-virtual {v7, v9}, Landroid/graphics/RenderNode;->end(Landroid/graphics/RecordingCanvas;)V

    .line 513
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v13}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 514
    invoke-virtual {v0, v1}, Lcom/android/server/wm/AbsAppSnapshotController;->getLetterboxInsets(Lcom/android/server/wm/ActivityRecord;)Landroid/graphics/Rect;

    move-result-object v0

    .line 515
    invoke-static {v2, v0}, Lcom/android/server/wm/utils/InsetUtils;->addInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 517
    new-instance v4, Landroid/window/TaskSnapshot$Builder;

    invoke-direct {v4}, Landroid/window/TaskSnapshot$Builder;-><init>()V

    .line 518
    invoke-virtual {v4, v8}, Landroid/window/TaskSnapshot$Builder;->setIsRealSnapshot(Z)Landroid/window/TaskSnapshot$Builder;

    .line 519
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-virtual {v4, v9, v10}, Landroid/window/TaskSnapshot$Builder;->setId(J)Landroid/window/TaskSnapshot$Builder;

    .line 520
    invoke-virtual {v4, v2}, Landroid/window/TaskSnapshot$Builder;->setContentInsets(Landroid/graphics/Rect;)Landroid/window/TaskSnapshot$Builder;

    .line 521
    invoke-virtual {v4, v0}, Landroid/window/TaskSnapshot$Builder;->setLetterboxInsets(Landroid/graphics/Rect;)Landroid/window/TaskSnapshot$Builder;

    .line 523
    iget-object v0, v1, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {v4, v0}, Landroid/window/TaskSnapshot$Builder;->setTopActivityComponent(Landroid/content/ComponentName;)Landroid/window/TaskSnapshot$Builder;

    .line 526
    invoke-virtual {v4, v8}, Landroid/window/TaskSnapshot$Builder;->setIsTranslucent(Z)Landroid/window/TaskSnapshot$Builder;

    .line 527
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/window/TaskSnapshot$Builder;->setWindowingMode(I)Landroid/window/TaskSnapshot$Builder;

    .line 528
    iget-object v0, v12, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v0, v0, Landroid/view/InsetsFlags;->appearance:I

    invoke-virtual {v4, v0}, Landroid/window/TaskSnapshot$Builder;->setAppearance(I)Landroid/window/TaskSnapshot$Builder;

    .line 529
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    invoke-virtual {v4, v0}, Landroid/window/TaskSnapshot$Builder;->setUiMode(I)Landroid/window/TaskSnapshot$Builder;

    .line 530
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->densityDpi:I

    invoke-virtual {v4, v0}, Landroid/window/TaskSnapshot$Builder;->setDensityDpi(I)Landroid/window/TaskSnapshot$Builder;

    .line 532
    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/window/TaskSnapshot$Builder;->setRotation(I)Landroid/window/TaskSnapshot$Builder;

    .line 533
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v4, v0}, Landroid/window/TaskSnapshot$Builder;->setOrientation(I)Landroid/window/TaskSnapshot$Builder;

    .line 534
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v14, v15}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v4, v0}, Landroid/window/TaskSnapshot$Builder;->setTaskSize(Landroid/graphics/Point;)Landroid/window/TaskSnapshot$Builder;

    .line 535
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    invoke-virtual {v4, v0, v1}, Landroid/window/TaskSnapshot$Builder;->setCaptureTime(J)Landroid/window/TaskSnapshot$Builder;

    .line 537
    new-instance v0, Lcom/android/server/wm/AbsAppSnapshotController$$ExternalSyntheticLambda0;

    invoke-direct {v0, v7, v5, v6, v4}, Lcom/android/server/wm/AbsAppSnapshotController$$ExternalSyntheticLambda0;-><init>(Landroid/graphics/RenderNode;IILandroid/window/TaskSnapshot$Builder;)V

    return-object v0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5

    .line 576
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mHighResSnapshotScale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/AbsAppSnapshotController;->mHighResSnapshotScale:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 577
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mSnapshotEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/AbsAppSnapshotController;->mSnapshotEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 578
    iget-object p0, p0, Lcom/android/server/wm/AbsAppSnapshotController;->mCache:Lcom/android/server/wm/SnapshotCache;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/SnapshotCache;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void
.end method

.method public abstract findAppTokenForSnapshot(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/ActivityRecord;
.end method

.method public abstract getLetterboxInsets(Lcom/android/server/wm/ActivityRecord;)Landroid/graphics/Rect;
.end method

.method public getSnapshotMode(Lcom/android/server/wm/WindowContainer;)I
    .registers 5

    .line 211
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-eq v0, v1, :cond_1f

    const/4 v1, 0x5

    if-ne v0, v1, :cond_c

    goto :goto_1f

    :cond_c
    const/4 v1, 0x0

    if-ne v0, v2, :cond_10

    return v1

    .line 218
    :cond_10
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AbsAppSnapshotController;->getTopActivity(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    if-eqz p0, :cond_1e

    .line 219
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->shouldUseAppThemeSnapshot()Z

    move-result p0

    if-eqz p0, :cond_1e

    const/4 p0, 0x1

    return p0

    :cond_1e
    return v1

    :cond_1f
    :goto_1f
    return v2
.end method

.method public abstract getTaskDescription(Lcom/android/server/wm/WindowContainer;)Landroid/app/ActivityManager$TaskDescription;
.end method

.method public abstract getTopActivity(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/ActivityRecord;
.end method

.method public initSnapshotScale()F
    .registers 2

    .line 125
    iget-object p0, p0, Lcom/android/server/wm/AbsAppSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x10500fe

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 127
    invoke-static {p0, v0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    const v0, 0x3dcccccd    # 0.1f

    invoke-static {p0, v0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method

.method public initialize(Lcom/android/server/wm/SnapshotCache;)V
    .registers 2

    .line 134
    iput-object p1, p0, Lcom/android/server/wm/AbsAppSnapshotController;->mCache:Lcom/android/server/wm/SnapshotCache;

    return-void
.end method

.method public final synthetic lambda$recordSnapshotInner$0(Lcom/android/server/wm/WindowContainer;Ljava/util/function/Consumer;Landroid/window/TaskSnapshot;)V
    .registers 6

    .line 197
    iget-object v0, p0, Lcom/android/server/wm/AbsAppSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 198
    :try_start_8
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isAttached()Z

    move-result v1

    if-nez v1, :cond_15

    .line 199
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_8 .. :try_end_f} :catchall_13

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_13
    move-exception p0

    goto :goto_24

    .line 201
    :cond_15
    :try_start_15
    iget-object p0, p0, Lcom/android/server/wm/AbsAppSnapshotController;->mCache:Lcom/android/server/wm/SnapshotCache;

    invoke-virtual {p0, p1, p3}, Lcom/android/server/wm/SnapshotCache;->putSnapshot(Lcom/android/server/wm/WindowContainer;Landroid/window/TaskSnapshot;)V

    if-eqz p2, :cond_1f

    .line 203
    invoke-interface {p2, p3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 205
    :cond_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_13

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_24
    :try_start_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_13

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public onAppDied(Lcom/android/server/wm/ActivityRecord;)V
    .registers 2

    .line 572
    iget-object p0, p0, Lcom/android/server/wm/AbsAppSnapshotController;->mCache:Lcom/android/server/wm/SnapshotCache;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/SnapshotCache;->onAppDied(Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public onAppRemoved(Lcom/android/server/wm/ActivityRecord;)V
    .registers 2

    .line 565
    iget-object p0, p0, Lcom/android/server/wm/AbsAppSnapshotController;->mCache:Lcom/android/server/wm/SnapshotCache;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/SnapshotCache;->onAppRemoved(Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public prepareTaskSnapshot(Lcom/android/server/wm/WindowContainer;Landroid/window/TaskSnapshot$Builder;)Landroid/graphics/Rect;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/WindowContainer;",
            "Landroid/window/TaskSnapshot$Builder;",
            ")",
            "Landroid/graphics/Rect;"
        }
    .end annotation

    .line 371
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AbsAppSnapshotController;->checkIfReadyToScreenshot(Lcom/android/server/wm/WindowContainer;)Landroid/util/Pair;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 375
    :cond_8
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/wm/ActivityRecord;

    .line 376
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/wm/WindowState;

    .line 377
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getFrame()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 378
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getInsetsStateWithVisibilityOverride()Landroid/view/InsetsState;

    move-result-object v4

    .line 377
    invoke-static {v2, v3, v4}, Lcom/android/server/wm/AbsAppSnapshotController;->getSystemBarInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/InsetsState;)Landroid/graphics/Rect;

    move-result-object v2

    .line 379
    invoke-virtual {p0, v1}, Lcom/android/server/wm/AbsAppSnapshotController;->getLetterboxInsets(Lcom/android/server/wm/ActivityRecord;)Landroid/graphics/Rect;

    move-result-object v3

    .line 380
    invoke-static {v2, v3}, Lcom/android/server/wm/utils/InsetUtils;->addInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    const/4 v4, 0x1

    .line 381
    invoke-virtual {p2, v4}, Landroid/window/TaskSnapshot$Builder;->setIsRealSnapshot(Z)Landroid/window/TaskSnapshot$Builder;

    .line 382
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {p2, v5, v6}, Landroid/window/TaskSnapshot$Builder;->setId(J)Landroid/window/TaskSnapshot$Builder;

    .line 383
    invoke-virtual {p2, v2}, Landroid/window/TaskSnapshot$Builder;->setContentInsets(Landroid/graphics/Rect;)Landroid/window/TaskSnapshot$Builder;

    .line 384
    invoke-virtual {p2, v3}, Landroid/window/TaskSnapshot$Builder;->setLetterboxInsets(Landroid/graphics/Rect;)Landroid/window/TaskSnapshot$Builder;

    .line 385
    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->format:I

    const/4 v3, -0x1

    const/4 v5, 0x0

    if-eq v2, v3, :cond_42

    move v2, v4

    goto :goto_43

    :cond_42
    move v2, v5

    .line 386
    :goto_43
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->hasWallpaper()Z

    move-result v3

    .line 387
    invoke-virtual {p2}, Landroid/window/TaskSnapshot$Builder;->getPixelFormat()I

    move-result v6

    if-nez v6, :cond_61

    .line 389
    invoke-virtual {p0}, Lcom/android/server/wm/AbsAppSnapshotController;->use16BitFormat()Z

    move-result v6

    if-eqz v6, :cond_60

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->fillsParent()Z

    move-result v6

    if-eqz v6, :cond_60

    if-eqz v2, :cond_5d

    if-nez v3, :cond_60

    :cond_5d
    const/4 v3, 0x4

    move v6, v3

    goto :goto_61

    :cond_60
    move v6, v4

    .line 394
    :cond_61
    :goto_61
    invoke-static {v6}, Landroid/graphics/PixelFormat;->formatHasAlpha(I)Z

    move-result v3

    if-eqz v3, :cond_71

    .line 395
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->fillsParent()Z

    move-result v3

    if-eqz v3, :cond_6f

    if-eqz v2, :cond_71

    :cond_6f
    move v2, v4

    goto :goto_72

    :cond_71
    move v2, v5

    .line 396
    :goto_72
    iget-object v3, v1, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {p2, v3}, Landroid/window/TaskSnapshot$Builder;->setTopActivityComponent(Landroid/content/ComponentName;)Landroid/window/TaskSnapshot$Builder;

    .line 397
    invoke-virtual {p2, v6}, Landroid/window/TaskSnapshot$Builder;->setPixelFormat(I)Landroid/window/TaskSnapshot$Builder;

    .line 398
    invoke-virtual {p2, v2}, Landroid/window/TaskSnapshot$Builder;->setIsTranslucent(Z)Landroid/window/TaskSnapshot$Builder;

    .line 399
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/window/TaskSnapshot$Builder;->setWindowingMode(I)Landroid/window/TaskSnapshot$Builder;

    .line 400
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v0, v0, Landroid/view/InsetsFlags;->appearance:I

    invoke-virtual {p2, v0}, Landroid/window/TaskSnapshot$Builder;->setAppearance(I)Landroid/window/TaskSnapshot$Builder;

    .line 401
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    invoke-virtual {p2, v0}, Landroid/window/TaskSnapshot$Builder;->setUiMode(I)Landroid/window/TaskSnapshot$Builder;

    .line 403
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 404
    iget-object v1, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getDisplayRotation()I

    move-result v1

    .line 405
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 406
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 407
    iget-object p0, p0, Lcom/android/server/wm/AbsAppSnapshotController;->mCurrentChangeInfo:Lcom/android/server/wm/Transition$ChangeInfo;

    if-eqz p0, :cond_dd

    .line 408
    iget v6, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mRotation:I

    if-eq v6, v1, :cond_dd

    .line 411
    iget-object p1, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mAbsoluteBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 412
    iget-object p1, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mAbsoluteBounds:Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v3, v1, p1}, Landroid/graphics/Point;->set(II)V

    .line 413
    iget p1, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mRotation:I

    invoke-virtual {p2, p1}, Landroid/window/TaskSnapshot$Builder;->setRotation(I)Landroid/window/TaskSnapshot$Builder;

    .line 415
    iget-object p1, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mAbsoluteBounds:Landroid/graphics/Rect;

    .line 414
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    iget-object p0, p0, Lcom/android/server/wm/Transition$ChangeInfo;->mAbsoluteBounds:Landroid/graphics/Rect;

    .line 415
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p0

    if-lt p1, p0, :cond_d8

    goto :goto_d9

    :cond_d8
    const/4 v4, 0x2

    .line 414
    :goto_d9
    invoke-virtual {p2, v4}, Landroid/window/TaskSnapshot$Builder;->setOrientation(I)Landroid/window/TaskSnapshot$Builder;

    goto :goto_103

    .line 418
    :cond_dd
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    .line 419
    iget-object p1, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 420
    iget-object p1, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    .line 421
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-virtual {v3, v4, p1}, Landroid/graphics/Point;->set(II)V

    .line 422
    invoke-virtual {p2, v1}, Landroid/window/TaskSnapshot$Builder;->setRotation(I)Landroid/window/TaskSnapshot$Builder;

    .line 423
    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p2, p0}, Landroid/window/TaskSnapshot$Builder;->setOrientation(I)Landroid/window/TaskSnapshot$Builder;

    .line 425
    :goto_103
    invoke-virtual {v2, v5, v5}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 426
    invoke-virtual {p2, v3}, Landroid/window/TaskSnapshot$Builder;->setTaskSize(Landroid/graphics/Point;)Landroid/window/TaskSnapshot$Builder;

    .line 427
    iget p0, v0, Landroid/content/res/Configuration;->densityDpi:I

    invoke-virtual {p2, p0}, Landroid/window/TaskSnapshot$Builder;->setDensityDpi(I)Landroid/window/TaskSnapshot$Builder;

    return-object v2
.end method

.method public final recordSnapshotInner(Lcom/android/server/wm/WindowContainer;ZLjava/util/function/Consumer;)Lcom/android/server/wm/AbsAppSnapshotController$SnapshotSupplier;
    .registers 5

    .line 192
    invoke-virtual {p0}, Lcom/android/server/wm/AbsAppSnapshotController;->shouldDisableSnapshots()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 195
    :cond_8
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/AbsAppSnapshotController;->captureSnapshot(Lcom/android/server/wm/WindowContainer;Z)Lcom/android/server/wm/AbsAppSnapshotController$SnapshotSupplier;

    move-result-object p2

    .line 196
    new-instance v0, Lcom/android/server/wm/AbsAppSnapshotController$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1, p3}, Lcom/android/server/wm/AbsAppSnapshotController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/AbsAppSnapshotController;Lcom/android/server/wm/WindowContainer;Ljava/util/function/Consumer;)V

    invoke-virtual {p2, v0}, Lcom/android/server/wm/AbsAppSnapshotController$SnapshotSupplier;->setConsumer(Ljava/util/function/Consumer;)V

    return-object p2
.end method

.method public setSnapshotEnabled(Z)V
    .registers 2

    .line 142
    iput-boolean p1, p0, Lcom/android/server/wm/AbsAppSnapshotController;->mSnapshotEnabled:Z

    return-void
.end method

.method public setSnapshotReleaser(Ljava/util/function/Consumer;)V
    .registers 2

    .line 138
    iget-object p0, p0, Lcom/android/server/wm/AbsAppSnapshotController;->mCache:Lcom/android/server/wm/SnapshotCache;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/SnapshotCache;->setSafeSnapshotReleaser(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public shouldDisableSnapshots()Z
    .registers 2

    .line 146
    iget-boolean v0, p0, Lcom/android/server/wm/AbsAppSnapshotController;->mIsRunningOnTv:Z

    if-nez v0, :cond_f

    iget-boolean v0, p0, Lcom/android/server/wm/AbsAppSnapshotController;->mIsRunningOnIoT:Z

    if-nez v0, :cond_f

    iget-boolean p0, p0, Lcom/android/server/wm/AbsAppSnapshotController;->mSnapshotEnabled:Z

    if-nez p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    return p0

    :cond_f
    :goto_f
    const/4 p0, 0x1

    return p0
.end method

.method public snapshot(Lcom/android/server/wm/WindowContainer;)Landroid/window/TaskSnapshot;
    .registers 3

    .line 227
    iget v0, p0, Lcom/android/server/wm/AbsAppSnapshotController;->mHighResSnapshotScale:F

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/AbsAppSnapshotController;->snapshot(Lcom/android/server/wm/WindowContainer;F)Landroid/window/TaskSnapshot;

    move-result-object p0

    return-object p0
.end method

.method public snapshot(Lcom/android/server/wm/WindowContainer;F)Landroid/window/TaskSnapshot;
    .registers 9

    .line 232
    new-instance v0, Landroid/window/TaskSnapshot$Builder;

    invoke-direct {v0}, Landroid/window/TaskSnapshot$Builder;-><init>()V

    .line 233
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/AbsAppSnapshotController;->prepareTaskSnapshot(Lcom/android/server/wm/WindowContainer;Landroid/window/TaskSnapshot$Builder;)Landroid/graphics/Rect;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_d

    return-object v2

    .line 238
    :cond_d
    const-string v3, "createSnapshot"

    const-wide/16 v4, 0x20

    invoke-static {v4, v5, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 240
    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/android/server/wm/AbsAppSnapshotController;->createSnapshot(Lcom/android/server/wm/WindowContainer;FLandroid/graphics/Rect;Landroid/window/TaskSnapshot$Builder;)Landroid/window/ScreenCaptureInternal$ScreenshotHardwareBuffer;

    move-result-object p0

    .line 241
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    if-nez p0, :cond_1e

    return-object v2

    .line 246
    :cond_1e
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Landroid/window/TaskSnapshot$Builder;->setCaptureTime(J)Landroid/window/TaskSnapshot$Builder;

    .line 247
    invoke-virtual {p0}, Landroid/window/ScreenCaptureInternal$ScreenshotHardwareBuffer;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/window/TaskSnapshot$Builder;->setSnapshot(Landroid/hardware/HardwareBuffer;)Landroid/window/TaskSnapshot$Builder;

    .line 248
    invoke-virtual {p0}, Landroid/window/ScreenCaptureInternal$ScreenshotHardwareBuffer;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/window/TaskSnapshot$Builder;->setColorSpace(Landroid/graphics/ColorSpace;)Landroid/window/TaskSnapshot$Builder;

    .line 249
    invoke-virtual {v0}, Landroid/window/TaskSnapshot$Builder;->build()Landroid/window/TaskSnapshot;

    move-result-object p0

    .line 250
    invoke-static {p0}, Lcom/android/server/wm/AbsAppSnapshotController;->validateSnapshot(Landroid/window/TaskSnapshot;)Landroid/window/TaskSnapshot;

    move-result-object p0

    return-object p0
.end method

.method public abstract use16BitFormat()Z
.end method
