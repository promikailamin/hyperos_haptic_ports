.class public final Lcom/android/server/wm/DisplayContent$ImeScreenshot;
.super Ljava/lang/Object;
.source "DisplayContent.java"


# instance fields
.field public final mImeTarget:Lcom/android/server/wm/WindowState;

.field public mSurface:Landroid/view/SurfaceControl;

.field public final mSurfaceBuilder:Landroid/view/SurfaceControl$Builder;

.field public mSurfacePosition:Landroid/graphics/Point;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowState;Landroid/view/SurfaceControl$Builder;)V
    .registers 3

    .line 4562
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4563
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent$ImeScreenshot;->mImeTarget:Lcom/android/server/wm/WindowState;

    .line 4564
    iput-object p2, p0, Lcom/android/server/wm/DisplayContent$ImeScreenshot;->mSurfaceBuilder:Landroid/view/SurfaceControl$Builder;

    return-void
.end method


# virtual methods
.method public attachAndShow(Landroid/view/SurfaceControl$Transaction;)V
    .registers 9

    .line 4642
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$ImeScreenshot;->mImeTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 4644
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent$ImeScreenshot;->mImeTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    .line 4646
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent$ImeScreenshot;->mSurface:Landroid/view/SurfaceControl;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_37

    .line 4647
    invoke-virtual {v2}, Landroid/view/SurfaceControl;->getWidth()I

    move-result v2

    iget-object v5, v0, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->getFrame()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    if-ne v2, v5, :cond_37

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent$ImeScreenshot;->mSurface:Landroid/view/SurfaceControl;

    .line 4648
    invoke-virtual {v2}, Landroid/view/SurfaceControl;->getHeight()I

    move-result v2

    iget-object v5, v0, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->getFrame()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-eq v2, v5, :cond_35

    goto :goto_37

    :cond_35
    move v2, v4

    goto :goto_38

    :cond_37
    :goto_37
    move v2, v3

    :goto_38
    if-eqz v1, :cond_57

    .line 4651
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHomeOrRecents()Z

    move-result v5

    if-nez v5, :cond_57

    if-eqz v2, :cond_4b

    .line 4655
    iget-object v2, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/TaskSnapshotController;->screenshotImeFromAttachedTask(Lcom/android/server/wm/Task;)Landroid/window/ScreenCaptureInternal$ScreenshotHardwareBuffer;

    move-result-object v1

    goto :goto_4c

    :cond_4b
    const/4 v1, 0x0

    :goto_4c
    if-eqz v1, :cond_57

    .line 4659
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent$ImeScreenshot;->removeSurface(Landroid/view/SurfaceControl$Transaction;)V

    .line 4660
    invoke-virtual {p0, v1, p1}, Lcom/android/server/wm/DisplayContent$ImeScreenshot;->createSurface(Landroid/window/ScreenCaptureInternal$ScreenshotHardwareBuffer;Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent$ImeScreenshot;->mSurface:Landroid/view/SurfaceControl;

    .line 4663
    :cond_57
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent$ImeScreenshot;->mSurface:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_62

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v1

    if-eqz v1, :cond_62

    goto :goto_63

    :cond_62
    move v3, v4

    :goto_63
    if-eqz v3, :cond_ba

    .line 4667
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getInsetsStateController()Lcom/android/server/wm/InsetsStateController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/InsetsStateController;->getImeSourceProvider()Lcom/android/server/wm/ImeInsetsSourceProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ImeInsetsSourceProvider;->isImeShowing()Z

    move-result v0

    if-eqz v0, :cond_ba

    .line 4668
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_IME_enabled:[Z

    const/4 v1, 0x2

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_97

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$ImeScreenshot;->mImeTarget:Lcom/android/server/wm/WindowState;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_IME:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v5, -0x389819db7051cecfL    # -9.927254290874658E35

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v5, v6, v4, v0}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 4670
    :cond_97
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$ImeScreenshot;->mSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 4671
    sget-boolean p1, Landroid/view/inputmethod/ImeTracker;->DEBUG_IME_VISIBILITY:Z

    if-eqz p1, :cond_bf

    .line 4672
    iget-object p1, p0, Lcom/android/server/wm/DisplayContent$ImeScreenshot;->mImeTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4673
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent$ImeScreenshot;->mSurfacePosition:Landroid/graphics/Point;

    invoke-virtual {p0}, Landroid/graphics/Point;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p1, v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    const/16 p1, 0x7d04

    .line 4672
    invoke-static {p1, p0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    return-void

    :cond_ba
    if-nez v3, :cond_bf

    .line 4676
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent$ImeScreenshot;->removeSurface(Landroid/view/SurfaceControl$Transaction;)V

    :cond_bf
    return-void
.end method

.method public final createSurface(Landroid/window/ScreenCaptureInternal$ScreenshotHardwareBuffer;Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl;
    .registers 11

    .line 4581
    invoke-virtual {p1}, Landroid/window/ScreenCaptureInternal$ScreenshotHardwareBuffer;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object p1

    .line 4582
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_IME_enabled:[Z

    const/4 v1, 0x2

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$ImeScreenshot;->mImeTarget:Lcom/android/server/wm/WindowState;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/hardware/HardwareBuffer;->getWidth()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/hardware/HardwareBuffer;->getHeight()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_IME:Lcom/android/internal/protolog/WmProtoLogGroups;

    const/4 v5, 0x0

    filled-new-array {v0, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    const-wide v2, 0x33a7c7721d903921L    # 7.398880466805016E-60

    invoke-static {v4, v2, v3, v5, v0}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 4584
    :cond_30
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$ImeScreenshot;->mImeTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    .line 4585
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent$ImeScreenshot;->mImeTarget:Lcom/android/server/wm/WindowState;

    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 4586
    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_48

    .line 4587
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v2

    goto :goto_4c

    .line 4588
    :cond_48
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v2

    .line 4589
    :goto_4c
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent$ImeScreenshot;->mSurfaceBuilder:Landroid/view/SurfaceControl$Builder;

    .line 4590
    const-string v6, "IME-screenshot-surface"

    invoke-virtual {v4, v6}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v4

    .line 4591
    invoke-virtual {v4}, Landroid/view/SurfaceControl$Builder;->setBLASTLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v4

    .line 4592
    invoke-virtual {p1}, Landroid/hardware/HardwareBuffer;->getFormat()I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/view/SurfaceControl$Builder;->setFormat(I)Landroid/view/SurfaceControl$Builder;

    move-result-object v4

    .line 4599
    invoke-virtual {v4, v2}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v4

    const-string v7, "DisplayContent.attachAndShowImeScreenshotOnTarget"

    .line 4600
    invoke-virtual {v4, v7}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v4

    .line 4601
    invoke-virtual {v4}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v4

    .line 4603
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v7

    invoke-static {v4, p2, v7, v6}, Lcom/android/server/wm/InputMonitor;->setTrustedOverlayInputInfo(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;ILjava/lang/String;)V

    .line 4605
    invoke-virtual {p2, v4, p1}, Landroid/view/SurfaceControl$Transaction;->setBuffer(Landroid/view/SurfaceControl;Landroid/hardware/HardwareBuffer;)Landroid/view/SurfaceControl$Transaction;

    .line 4606
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object p1

    sget-object v6, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v6}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v6

    invoke-virtual {p2, p1, v6}, Landroid/view/SurfaceControl$Transaction;->setColorSpace(Landroid/view/SurfaceControl;Landroid/graphics/ColorSpace;)Landroid/view/SurfaceControl$Transaction;

    .line 4607
    invoke-virtual {p2, v4, v5}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 4609
    new-instance p1, Landroid/graphics/Point;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getFrame()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->left:I

    .line 4610
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getFrame()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-direct {p1, v5, v0}, Landroid/graphics/Point;-><init>(II)V

    .line 4611
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    if-eq v2, v0, :cond_c1

    .line 4612
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$ImeScreenshot;->mImeTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getFrame()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    neg-int v0, v0

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent$ImeScreenshot;->mImeTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getFrame()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    neg-int v2, v2

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Point;->offset(II)V

    .line 4613
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$ImeScreenshot;->mImeTarget:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Point;->offset(II)V

    .line 4616
    :cond_c1
    iget v0, p1, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget v2, p1, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    invoke-virtual {p2, v4, v0, v2}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 4617
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent$ImeScreenshot;->mSurfacePosition:Landroid/graphics/Point;

    .line 4618
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_IME_enabled:[Z

    aget-boolean p0, p0, v1

    if-eqz p0, :cond_ef

    iget p0, p1, Landroid/graphics/Point;->x:I

    int-to-long v0, p0

    iget p0, p1, Landroid/graphics/Point;->y:I

    int-to-long p0, p0

    sget-object p2, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_IME:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-wide v0, -0x284806b737cbca0dL    # -3.689900424339524E114

    const/4 p1, 0x5

    invoke-static {p2, v0, v1, p1, p0}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    :cond_ef
    return-object v4
.end method

.method public getImeTarget()Lcom/android/server/wm/WindowState;
    .registers 1

    .line 4569
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent$ImeScreenshot;->mImeTarget:Lcom/android/server/wm/WindowState;

    return-object p0
.end method

.method public getSurface()Landroid/view/SurfaceControl;
    .registers 1

    .line 4575
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent$ImeScreenshot;->mSurface:Landroid/view/SurfaceControl;

    return-object p0
.end method

.method public removeSurface(Landroid/view/SurfaceControl$Transaction;)V
    .registers 7

    .line 4624
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$ImeScreenshot;->mSurface:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_2d

    .line 4625
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_IME_enabled:[Z

    const/4 v1, 0x2

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_23

    const/4 v0, 0x6

    invoke-static {v0}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_IME:Lcom/android/internal/protolog/WmProtoLogGroups;

    const/4 v2, 0x0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-wide v3, 0x659a2e3305263639L    # 2.7159062822245125E181

    invoke-static {v1, v3, v4, v2, v0}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 4627
    :cond_23
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$ImeScreenshot;->mSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    const/4 p1, 0x0

    .line 4628
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent$ImeScreenshot;->mSurface:Landroid/view/SurfaceControl;

    .line 4629
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent$ImeScreenshot;->mSurfacePosition:Landroid/graphics/Point;

    .line 4631
    :cond_2d
    sget-boolean p1, Landroid/view/inputmethod/ImeTracker;->DEBUG_IME_VISIBILITY:Z

    if-eqz p1, :cond_3c

    .line 4632
    iget-object p0, p0, Lcom/android/server/wm/DisplayContent$ImeScreenshot;->mImeTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x7d05

    invoke-static {p1, p0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    :cond_3c
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 4682
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImeScreenshot{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " imeTarget: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent$ImeScreenshot;->mImeTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " surface: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent$ImeScreenshot;->mSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " surfacePosition: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent$ImeScreenshot;->mSurfacePosition:Landroid/graphics/Point;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
