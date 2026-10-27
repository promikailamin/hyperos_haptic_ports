.class final Lcom/android/server/wm/DisplayContent$ImeScreenshot;
.super Ljava/lang/Object;
.source "DisplayContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/DisplayContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ImeScreenshot"
.end annotation


# instance fields
.field private mImeSurface:Landroid/view/SurfaceControl;

.field private mImeTarget:Lcom/android/server/wm/WindowState;

.field private mSurfaceBuilder:Landroid/view/SurfaceControl$Builder;


# direct methods
.method constructor <init>(Landroid/view/SurfaceControl$Builder;Lcom/android/server/wm/WindowState;)V
    .registers 3
    .param p1, "surfaceBuilder"    # Landroid/view/SurfaceControl$Builder;
    .param p2, "imeTarget"    # Lcom/android/server/wm/WindowState;

    .line 4567
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4568
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent$ImeScreenshot;->mSurfaceBuilder:Landroid/view/SurfaceControl$Builder;

    .line 4569
    iput-object p2, p0, Lcom/android/server/wm/DisplayContent$ImeScreenshot;->mImeTarget:Lcom/android/server/wm/WindowState;

    .line 4570
    return-void
.end method

.method private createImeSurface(Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl;
    .registers 21
    .param p1, "b"    # Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;
    .param p2, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 4578
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual/range {p1 .. p1}, Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v2

    .line 4579
    .local v2, "buffer":Landroid/hardware/HardwareBuffer;
    sget-boolean v3, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_IME_enabled:Z

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v3, :cond_37

    iget-object v3, v0, Lcom/android/server/wm/DisplayContent$ImeScreenshot;->mImeTarget:Lcom/android/server/wm/WindowState;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .local v3, "protoLogParam0":Ljava/lang/String;
    invoke-virtual {v2}, Landroid/hardware/HardwareBuffer;->getWidth()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    .local v8, "protoLogParam1":Ljava/lang/String;
    invoke-virtual {v2}, Landroid/hardware/HardwareBuffer;->getHeight()I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    .local v9, "protoLogParam2":Ljava/lang/String;
    sget-object v10, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_IME:Lcom/android/internal/protolog/ProtoLogGroup;

    const v11, -0x69eb0858

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    aput-object v3, v12, v6

    aput-object v8, v12, v7

    aput-object v9, v12, v4

    invoke-static {v10, v11, v6, v5, v12}, Lcom/android/internal/protolog/ProtoLogImpl;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 4581
    .end local v3    # "protoLogParam0":Ljava/lang/String;
    .end local v8    # "protoLogParam1":Ljava/lang/String;
    .end local v9    # "protoLogParam2":Ljava/lang/String;
    :cond_37
    iget-object v3, v0, Lcom/android/server/wm/DisplayContent$ImeScreenshot;->mImeTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    .line 4582
    .local v3, "imeWindow":Lcom/android/server/wm/WindowState;
    iget-object v8, v0, Lcom/android/server/wm/DisplayContent$ImeScreenshot;->mImeTarget:Lcom/android/server/wm/WindowState;

    iget-object v8, v8, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 4583
    .local v8, "activity":Lcom/android/server/wm/ActivityRecord;
    iget-object v9, v0, Lcom/android/server/wm/DisplayContent$ImeScreenshot;->mImeTarget:Lcom/android/server/wm/WindowState;

    iget-object v9, v9, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v9, v9, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v9, v7, :cond_50

    .line 4584
    invoke-virtual {v8}, Lcom/android/server/wm/ActivityRecord;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v9

    goto :goto_56

    .line 4585
    :cond_50
    iget-object v9, v0, Lcom/android/server/wm/DisplayContent$ImeScreenshot;->mImeTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {v9}, Lcom/android/server/wm/WindowState;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v9

    :goto_56
    nop

    .line 4586
    .local v9, "imeParent":Landroid/view/SurfaceControl;
    iget-object v10, v0, Lcom/android/server/wm/DisplayContent$ImeScreenshot;->mSurfaceBuilder:Landroid/view/SurfaceControl$Builder;

    .line 4587
    const-string v11, "IME-snapshot-surface"

    invoke-virtual {v10, v11}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v10

    .line 4588
    invoke-virtual {v10}, Landroid/view/SurfaceControl$Builder;->setBLASTLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v10

    .line 4589
    invoke-virtual {v2}, Landroid/hardware/HardwareBuffer;->getFormat()I

    move-result v12

    invoke-virtual {v10, v12}, Landroid/view/SurfaceControl$Builder;->setFormat(I)Landroid/view/SurfaceControl$Builder;

    move-result-object v10

    .line 4596
    invoke-virtual {v10, v9}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v10

    .line 4597
    const-string v12, "DisplayContent.attachAndShowImeScreenshotOnTarget"

    invoke-virtual {v10, v12}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v10

    .line 4598
    invoke-virtual {v10}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v10

    .line 4600
    .local v10, "imeSurface":Landroid/view/SurfaceControl;
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v12

    invoke-static {v10, v1, v12, v11}, Lcom/android/server/wm/InputMonitor;->setTrustedOverlayInputInfo(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;ILjava/lang/String;)V

    .line 4602
    invoke-virtual {v1, v10, v2}, Landroid/view/SurfaceControl$Transaction;->setBuffer(Landroid/view/SurfaceControl;Landroid/hardware/HardwareBuffer;)Landroid/view/SurfaceControl$Transaction;

    .line 4603
    iget-object v11, v8, Lcom/android/server/wm/ActivityRecord;->mSurfaceControl:Landroid/view/SurfaceControl;

    sget-object v12, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v12}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v12

    invoke-virtual {v1, v11, v12}, Landroid/view/SurfaceControl$Transaction;->setColorSpace(Landroid/view/SurfaceControl;Landroid/graphics/ColorSpace;)Landroid/view/SurfaceControl$Transaction;

    .line 4604
    invoke-virtual {v1, v10, v7}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    .line 4606
    new-instance v11, Landroid/graphics/Point;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getFrame()Landroid/graphics/Rect;

    move-result-object v12

    iget v12, v12, Landroid/graphics/Rect;->left:I

    .line 4607
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getFrame()Landroid/graphics/Rect;

    move-result-object v13

    iget v13, v13, Landroid/graphics/Rect;->top:I

    invoke-direct {v11, v12, v13}, Landroid/graphics/Point;-><init>(II)V

    .line 4608
    .local v11, "surfacePosition":Landroid/graphics/Point;
    invoke-virtual {v8}, Lcom/android/server/wm/ActivityRecord;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v12

    if-ne v9, v12, :cond_b2

    .line 4609
    iget v12, v11, Landroid/graphics/Point;->x:I

    int-to-float v12, v12

    iget v13, v11, Landroid/graphics/Point;->y:I

    int-to-float v13, v13

    invoke-virtual {v1, v10, v12, v13}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    goto :goto_e3

    .line 4611
    :cond_b2
    iget-object v12, v0, Lcom/android/server/wm/DisplayContent$ImeScreenshot;->mImeTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {v12}, Lcom/android/server/wm/WindowState;->getFrame()Landroid/graphics/Rect;

    move-result-object v12

    iget v12, v12, Landroid/graphics/Rect;->left:I

    neg-int v12, v12

    iget-object v13, v0, Lcom/android/server/wm/DisplayContent$ImeScreenshot;->mImeTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {v13}, Lcom/android/server/wm/WindowState;->getFrame()Landroid/graphics/Rect;

    move-result-object v13

    iget v13, v13, Landroid/graphics/Rect;->top:I

    neg-int v13, v13

    invoke-virtual {v11, v12, v13}, Landroid/graphics/Point;->offset(II)V

    .line 4612
    iget-object v12, v0, Lcom/android/server/wm/DisplayContent$ImeScreenshot;->mImeTarget:Lcom/android/server/wm/WindowState;

    iget-object v12, v12, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v12, v12, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->left:I

    iget-object v13, v0, Lcom/android/server/wm/DisplayContent$ImeScreenshot;->mImeTarget:Lcom/android/server/wm/WindowState;

    iget-object v13, v13, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v13, v13, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->top:I

    invoke-virtual {v11, v12, v13}, Landroid/graphics/Point;->offset(II)V

    .line 4614
    iget v12, v11, Landroid/graphics/Point;->x:I

    int-to-float v12, v12

    iget v13, v11, Landroid/graphics/Point;->y:I

    int-to-float v13, v13

    invoke-virtual {v1, v10, v12, v13}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 4616
    :goto_e3
    sget-boolean v12, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_IME_enabled:Z

    if-eqz v12, :cond_107

    iget v12, v11, Landroid/graphics/Point;->x:I

    int-to-long v12, v12

    .local v12, "protoLogParam0":J
    iget v14, v11, Landroid/graphics/Point;->y:I

    int-to-long v14, v14

    .local v14, "protoLogParam1":J
    sget-object v5, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_IME:Lcom/android/internal/protolog/ProtoLogGroup;

    const/4 v7, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v4, v6

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/16 v16, 0x1

    aput-object v6, v4, v16

    const/4 v0, 0x0

    const v6, -0x6c24f627

    invoke-static {v5, v6, v7, v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 4618
    .end local v12    # "protoLogParam0":J
    .end local v14    # "protoLogParam1":J
    :cond_107
    return-object v10
.end method

.method private removeImeSurface(Landroid/view/SurfaceControl$Transaction;)V
    .registers 8
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 4622
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$ImeScreenshot;->mImeSurface:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_27

    .line 4623
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_IME_enabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_20

    const/4 v0, 0x6

    invoke-static {v0}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "protoLogParam0":Ljava/lang/String;
    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_IME:Lcom/android/internal/protolog/ProtoLogGroup;

    const v3, -0x7ddb8a9b

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v2, v3, v5, v1, v4}, Lcom/android/internal/protolog/ProtoLogImpl;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 4624
    .end local v0    # "protoLogParam0":Ljava/lang/String;
    :cond_20
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$ImeScreenshot;->mImeSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 4625
    iput-object v1, p0, Lcom/android/server/wm/DisplayContent$ImeScreenshot;->mImeSurface:Landroid/view/SurfaceControl;

    .line 4627
    :cond_27
    return-void
.end method


# virtual methods
.method attachAndShow(Landroid/view/SurfaceControl$Transaction;)V
    .registers 14
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 4630
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$ImeScreenshot;->mImeTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 4632
    .local v0, "dc":Lcom/android/server/wm/DisplayContent;
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent$ImeScreenshot;->mImeTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    .line 4634
    .local v1, "task":Lcom/android/server/wm/Task;
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent$ImeScreenshot;->mImeSurface:Landroid/view/SurfaceControl;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_37

    .line 4635
    invoke-virtual {v2}, Landroid/view/SurfaceControl;->getWidth()I

    move-result v2

    iget-object v5, v0, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->getFrame()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    if-ne v2, v5, :cond_37

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent$ImeScreenshot;->mImeSurface:Landroid/view/SurfaceControl;

    .line 4636
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

    .line 4637
    .local v2, "renewImeSurface":Z
    :goto_38
    const/4 v5, 0x0

    if-eqz v1, :cond_59

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->isActivityTypeHomeOrRecents()Z

    move-result v6

    if-nez v6, :cond_59

    .line 4638
    if-eqz v2, :cond_4c

    .line 4639
    iget-object v6, v0, Lcom/android/server/wm/DisplayContent;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    invoke-virtual {v6, v1}, Lcom/android/server/wm/TaskSnapshotController;->snapshotImeFromAttachedTask(Lcom/android/server/wm/Task;)Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;

    move-result-object v6

    goto :goto_4d

    .line 4640
    :cond_4c
    move-object v6, v5

    :goto_4d
    nop

    .line 4641
    .local v6, "imeBuffer":Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;
    if-eqz v6, :cond_59

    .line 4643
    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayContent$ImeScreenshot;->removeImeSurface(Landroid/view/SurfaceControl$Transaction;)V

    .line 4644
    invoke-direct {p0, v6, p1}, Lcom/android/server/wm/DisplayContent$ImeScreenshot;->createImeSurface(Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/wm/DisplayContent$ImeScreenshot;->mImeSurface:Landroid/view/SurfaceControl;

    .line 4647
    .end local v6    # "imeBuffer":Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;
    :cond_59
    iget-object v6, p0, Lcom/android/server/wm/DisplayContent$ImeScreenshot;->mImeSurface:Landroid/view/SurfaceControl;

    if-eqz v6, :cond_65

    invoke-virtual {v6}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v6

    if-eqz v6, :cond_65

    move v6, v3

    goto :goto_66

    :cond_65
    move v6, v4

    .line 4651
    .local v6, "isValidSnapshot":Z
    :goto_66
    if-eqz v6, :cond_9e

    .line 4652
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getInsetsStateController()Lcom/android/server/wm/InsetsStateController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/wm/InsetsStateController;->getImeSourceProvider()Lcom/android/server/wm/ImeInsetsSourceProvider;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/wm/ImeInsetsSourceProvider;->isImeShowing()Z

    move-result v7

    if-eqz v7, :cond_9e

    .line 4653
    sget-boolean v7, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_IME_enabled:Z

    if-eqz v7, :cond_98

    iget-object v7, p0, Lcom/android/server/wm/DisplayContent$ImeScreenshot;->mImeTarget:Lcom/android/server/wm/WindowState;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .local v7, "protoLogParam0":Ljava/lang/String;
    const/4 v8, 0x6

    invoke-static {v8}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .local v8, "protoLogParam1":Ljava/lang/String;
    sget-object v9, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_IME:Lcom/android/internal/protolog/ProtoLogGroup;

    const v10, -0x3713470

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    aput-object v7, v11, v4

    aput-object v8, v11, v3

    invoke-static {v9, v10, v4, v5, v11}, Lcom/android/internal/protolog/ProtoLogImpl;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 4655
    .end local v7    # "protoLogParam0":Ljava/lang/String;
    .end local v8    # "protoLogParam1":Ljava/lang/String;
    :cond_98
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent$ImeScreenshot;->mImeSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v3}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    goto :goto_a3

    .line 4656
    :cond_9e
    if-nez v6, :cond_a3

    .line 4657
    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayContent$ImeScreenshot;->removeImeSurface(Landroid/view/SurfaceControl$Transaction;)V

    .line 4659
    :cond_a3
    :goto_a3
    return-void
.end method

.method detach(Landroid/view/SurfaceControl$Transaction;)V
    .registers 2
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 4662
    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayContent$ImeScreenshot;->removeImeSurface(Landroid/view/SurfaceControl$Transaction;)V

    .line 4663
    return-void
.end method

.method getImeTarget()Lcom/android/server/wm/WindowState;
    .registers 2

    .line 4573
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent$ImeScreenshot;->mImeTarget:Lcom/android/server/wm/WindowState;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 4667
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 4668
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "ImeScreenshot{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4669
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4670
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " imeTarget="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent$ImeScreenshot;->mImeTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4671
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " surface="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent$ImeScreenshot;->mImeSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4672
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4673
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
