.class Lcom/android/server/wm/TaskSnapshotController;
.super Ljava/lang/Object;
.source "TaskSnapshotController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/TaskSnapshotController$SystemBarBackgroundPainter;
    }
.end annotation


# static fields
.field static final SNAPSHOT_MODE_APP_THEME:I = 0x1

.field static final SNAPSHOT_MODE_NONE:I = 0x2

.field static final SNAPSHOT_MODE_REAL:I = 0x0

.field private static final TAG:Ljava/lang/String; = "WindowManager"


# instance fields
.field private final forceReduceScale:F

.field private final mCache:Lcom/android/server/wm/TaskSnapshotCache;

.field private final mHandler:Landroid/os/Handler;

.field private final mHighResTaskSnapshotScale:F

.field private final mIsRunningOnIoT:Z

.field private final mIsRunningOnTv:Z

.field private final mLoader:Lcom/android/server/wm/TaskSnapshotLoader;

.field private final mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private mSettingKeyguardShown:Z

.field private final mSkipClosingAppSnapshotTasks:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/Task;",
            ">;"
        }
    .end annotation
.end field

.field private mTaskSnapshotEnabled:Z

.field private final mTmpRect:Landroid/graphics/Rect;

.field private final mTmpTasks:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/Task;",
            ">;"
        }
    .end annotation
.end field

.field private final reduceResolution:Z


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .registers 6
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mSkipClosingAppSnapshotTasks:Landroid/util/ArraySet;

    .line 123
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mTmpTasks:Landroid/util/ArraySet;

    .line 124
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mHandler:Landroid/os/Handler;

    .line 129
    const-string/jumbo v0, "persist.tasksnapshot.force_reduce_resolution"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/TaskSnapshotController;->reduceResolution:Z

    .line 130
    const-string/jumbo v2, "persist.tasksnapshot.force_reduce_scale"

    const-string v3, "0.6"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, p0, Lcom/android/server/wm/TaskSnapshotController;->forceReduceScale:F

    .line 132
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/TaskSnapshotController;->mTmpRect:Landroid/graphics/Rect;

    .line 327
    iput-boolean v1, p0, Lcom/android/server/wm/TaskSnapshotController;->mSettingKeyguardShown:Z

    .line 150
    iput-object p1, p0, Lcom/android/server/wm/TaskSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 151
    new-instance v1, Lcom/android/server/wm/TaskSnapshotPersister;

    new-instance v3, Lcom/android/server/wm/TaskSnapshotController$$ExternalSyntheticLambda6;

    invoke-direct {v3}, Lcom/android/server/wm/TaskSnapshotController$$ExternalSyntheticLambda6;-><init>()V

    invoke-direct {v1, p1, v3}, Lcom/android/server/wm/TaskSnapshotPersister;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/TaskSnapshotPersister$DirectoryResolver;)V

    iput-object v1, p0, Lcom/android/server/wm/TaskSnapshotController;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    .line 152
    new-instance v3, Lcom/android/server/wm/TaskSnapshotLoader;

    invoke-direct {v3, v1}, Lcom/android/server/wm/TaskSnapshotLoader;-><init>(Lcom/android/server/wm/TaskSnapshotPersister;)V

    iput-object v3, p0, Lcom/android/server/wm/TaskSnapshotController;->mLoader:Lcom/android/server/wm/TaskSnapshotLoader;

    .line 153
    new-instance v1, Lcom/android/server/wm/TaskSnapshotCache;

    invoke-direct {v1, p1, v3}, Lcom/android/server/wm/TaskSnapshotCache;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/TaskSnapshotLoader;)V

    iput-object v1, p0, Lcom/android/server/wm/TaskSnapshotController;->mCache:Lcom/android/server/wm/TaskSnapshotCache;

    .line 154
    iget-object v1, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v3, "android.software.leanback"

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/wm/TaskSnapshotController;->mIsRunningOnTv:Z

    .line 156
    iget-object v1, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v3, "android.hardware.type.embedded"

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/wm/TaskSnapshotController;->mIsRunningOnIoT:Z

    .line 160
    if-eqz v0, :cond_77

    .line 161
    iput v2, p0, Lcom/android/server/wm/TaskSnapshotController;->mHighResTaskSnapshotScale:F

    goto :goto_86

    .line 163
    :cond_77
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10500bf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    iput v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mHighResTaskSnapshotScale:F

    .line 167
    :goto_86
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 169
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111010e

    .line 170
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mTaskSnapshotEnabled:Z

    .line 171
    return-void
.end method

.method private createImeSnapshot(Lcom/android/server/wm/Task;I)Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;
    .registers 9
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "pixelFormat"    # I

    .line 517
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_24

    .line 518
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_SCREENSHOT:Z

    if-eqz v0, :cond_23

    .line 519
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to take screenshot. No surface control for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "WindowManager"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    :cond_23
    return-object v1

    .line 523
    :cond_24
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    .line 524
    .local v0, "imeWindow":Lcom/android/server/wm/WindowState;
    const/4 v2, 0x0

    .line 525
    .local v2, "imeBuffer":Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;
    if-eqz v0, :cond_45

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isWinVisibleLw()Z

    move-result v3

    if-eqz v3, :cond_45

    .line 526
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getParentFrame()Landroid/graphics/Rect;

    move-result-object v3

    .line 527
    .local v3, "bounds":Landroid/graphics/Rect;
    const/4 v4, 0x0

    invoke-virtual {v3, v4, v4}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 528
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v4

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v4, v3, v5, p2, v1}, Landroid/view/SurfaceControl;->captureLayersExcluding(Landroid/view/SurfaceControl;Landroid/graphics/Rect;FI[Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;

    move-result-object v2

    .line 531
    .end local v3    # "bounds":Landroid/graphics/Rect;
    :cond_45
    return-object v2
.end method

.method private drawAppThemeSnapshot(Lcom/android/server/wm/Task;)Landroid/window/TaskSnapshot;
    .registers 38
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 731
    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/Task;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 732
    .local v1, "topChild":Lcom/android/server/wm/ActivityRecord;
    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 733
    return-object v2

    .line 735
    :cond_a
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v3

    .line 736
    .local v3, "mainWindow":Lcom/android/server/wm/WindowState;
    if-nez v3, :cond_11

    .line 737
    return-object v2

    .line 739
    :cond_11
    nop

    .line 740
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/Task;->getTaskDescription()Landroid/app/ActivityManager$TaskDescription;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColor()I

    move-result v4

    const/16 v5, 0xff

    .line 739
    invoke-static {v4, v5}, Lcom/android/internal/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v4

    .line 741
    .local v4, "color":I
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    .line 742
    .local v5, "attrs":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/Task;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    .line 743
    .local v6, "taskBounds":Landroid/graphics/Rect;
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getInsetsStateWithVisibilityOverride()Landroid/view/InsetsState;

    move-result-object v14

    .line 744
    .local v14, "insetsState":Landroid/view/InsetsState;
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getFrame()Landroid/graphics/Rect;

    move-result-object v7

    invoke-static {v7, v14}, Lcom/android/server/wm/TaskSnapshotController;->getSystemBarInsets(Landroid/graphics/Rect;Landroid/view/InsetsState;)Landroid/graphics/Rect;

    move-result-object v15

    .line 745
    .local v15, "systemBarInsets":Landroid/graphics/Rect;
    new-instance v16, Lcom/android/server/wm/TaskSnapshotController$SystemBarBackgroundPainter;

    iget v8, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v9, v5, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iget-object v7, v5, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v10, v7, Landroid/view/InsetsFlags;->appearance:I

    .line 746
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/Task;->getTaskDescription()Landroid/app/ActivityManager$TaskDescription;

    move-result-object v11

    iget v12, v0, Lcom/android/server/wm/TaskSnapshotController;->mHighResTaskSnapshotScale:F

    move-object/from16 v7, v16

    move-object v13, v14

    invoke-direct/range {v7 .. v13}, Lcom/android/server/wm/TaskSnapshotController$SystemBarBackgroundPainter;-><init>(IIILandroid/app/ActivityManager$TaskDescription;FLandroid/view/InsetsState;)V

    .line 748
    .local v7, "decorPainter":Lcom/android/server/wm/TaskSnapshotController$SystemBarBackgroundPainter;
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v8

    .line 749
    .local v8, "taskWidth":I
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v9

    .line 750
    .local v9, "taskHeight":I
    int-to-float v10, v8

    iget v11, v0, Lcom/android/server/wm/TaskSnapshotController;->mHighResTaskSnapshotScale:F

    mul-float/2addr v10, v11

    float-to-int v10, v10

    .line 751
    .local v10, "width":I
    int-to-float v12, v9

    mul-float/2addr v12, v11

    float-to-int v11, v12

    .line 753
    .local v11, "height":I
    const-string v12, "TaskSnapshotController"

    invoke-static {v12, v2}, Landroid/graphics/RenderNode;->create(Ljava/lang/String;Landroid/graphics/RenderNode$AnimationHost;)Landroid/graphics/RenderNode;

    move-result-object v12

    .line 754
    .local v12, "node":Landroid/graphics/RenderNode;
    const/4 v13, 0x0

    invoke-virtual {v12, v13, v13, v10, v11}, Landroid/graphics/RenderNode;->setLeftTopRightBottom(IIII)Z

    .line 755
    invoke-virtual {v12, v13}, Landroid/graphics/RenderNode;->setClipToBounds(Z)Z

    .line 756
    invoke-virtual {v12, v10, v11}, Landroid/graphics/RenderNode;->start(II)Landroid/graphics/RecordingCanvas;

    move-result-object v13

    .line 759
    .local v13, "c":Landroid/graphics/RecordingCanvas;
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/TaskSnapshotController;->isUnderNightMode()Z

    move-result v16

    if-eqz v16, :cond_7d

    .line 760
    invoke-static {}, Landroid/view/ForceDarkHelperStub;->getInstance()Landroid/view/ForceDarkHelperStub;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/ForceDarkHelperStub;->makeDark(I)I

    move-result v2

    invoke-virtual {v13, v2}, Landroid/graphics/RecordingCanvas;->drawColor(I)V

    goto :goto_80

    .line 762
    :cond_7d
    invoke-virtual {v13, v4}, Landroid/graphics/RecordingCanvas;->drawColor(I)V

    .line 765
    :goto_80
    invoke-virtual {v7, v15}, Lcom/android/server/wm/TaskSnapshotController$SystemBarBackgroundPainter;->setInsets(Landroid/graphics/Rect;)V

    .line 766
    invoke-virtual {v7, v13}, Lcom/android/server/wm/TaskSnapshotController$SystemBarBackgroundPainter;->drawDecors(Landroid/graphics/Canvas;)V

    .line 767
    invoke-virtual {v12, v13}, Landroid/graphics/RenderNode;->end(Landroid/graphics/RecordingCanvas;)V

    .line 768
    invoke-static {v12, v10, v11}, Landroid/view/ThreadedRenderer;->createHardwareBitmap(Landroid/graphics/RenderNode;II)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 769
    .local v2, "hwBitmap":Landroid/graphics/Bitmap;
    if-nez v2, :cond_92

    .line 770
    const/16 v16, 0x0

    return-object v16

    .line 772
    :cond_92
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v15}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .local v0, "contentInsets":Landroid/graphics/Rect;
    move-object/from16 v25, v0

    .line 773
    move/from16 v33, v4

    .end local v4    # "color":I
    .local v33, "color":I
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getLetterboxInsets()Landroid/graphics/Rect;

    move-result-object v4

    .local v4, "letterboxInsets":Landroid/graphics/Rect;
    move-object/from16 v26, v4

    .line 774
    invoke-static {v0, v4}, Lcom/android/server/wm/utils/InsetUtils;->addInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 778
    new-instance v34, Landroid/window/TaskSnapshot;

    move-object/from16 v16, v34

    .line 779
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    move-object/from16 v35, v0

    .end local v0    # "contentInsets":Landroid/graphics/Rect;
    .local v35, "contentInsets":Landroid/graphics/Rect;
    iget-object v0, v1, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    move-object/from16 v19, v0

    .line 780
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v20

    .line 781
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v21

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v22, v0

    .line 782
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v23

    new-instance v0, Landroid/graphics/Point;

    move-object/from16 v24, v0

    invoke-direct {v0, v8, v9}, Landroid/graphics/Point;-><init>(II)V

    const/16 v27, 0x0

    const/16 v28, 0x0

    .line 784
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v29

    .line 785
    invoke-direct/range {p0 .. p1}, Lcom/android/server/wm/TaskSnapshotController;->getAppearance(Lcom/android/server/wm/Task;)I

    move-result v30

    const/16 v31, 0x0

    const/16 v32, 0x0

    invoke-direct/range {v16 .. v32}, Landroid/window/TaskSnapshot;-><init>(JLandroid/content/ComponentName;Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;IILandroid/graphics/Point;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZIIZZ)V

    .line 778
    return-object v34
.end method

.method private findAppTokenForSnapshot(Lcom/android/server/wm/Task;)Lcom/android/server/wm/ActivityRecord;
    .registers 3
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 309
    new-instance v0, Lcom/android/server/wm/TaskSnapshotController$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/android/server/wm/TaskSnapshotController$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {p1, v0}, Lcom/android/server/wm/Task;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method private getAppearance(Lcom/android/server/wm/Task;)I
    .registers 5
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 885
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getTopFullscreenActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 886
    .local v0, "topFullscreenActivity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v0, :cond_b

    .line 887
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTopFullscreenOpaqueWindow()Lcom/android/server/wm/WindowState;

    move-result-object v1

    goto :goto_c

    .line 888
    :cond_b
    const/4 v1, 0x0

    :goto_c
    nop

    .line 889
    .local v1, "topFullscreenOpaqueWindow":Lcom/android/server/wm/WindowState;
    if-eqz v1, :cond_16

    .line 890
    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, v2, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v2, v2, Landroid/view/InsetsFlags;->appearance:I

    return v2

    .line 892
    :cond_16
    const/4 v2, 0x0

    return v2
.end method

.method static getSystemBarInsets(Landroid/graphics/Rect;Landroid/view/InsetsState;)Landroid/graphics/Rect;
    .registers 4
    .param p0, "frame"    # Landroid/graphics/Rect;
    .param p1, "state"    # Landroid/view/InsetsState;

    .line 896
    nop

    .line 897
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v0

    .line 896
    const/4 v1, 0x0

    invoke-virtual {p1, p0, v0, v1}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;IZ)Landroid/graphics/Insets;

    move-result-object v0

    .line 897
    invoke-virtual {v0}, Landroid/graphics/Insets;->toRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 896
    return-object v0
.end method

.method private handleClosingApps(Landroid/util/ArraySet;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;)V"
        }
    .end annotation

    .line 201
    .local p1, "closingApps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/ActivityRecord;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/TaskSnapshotController;->shouldDisableSnapshots()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 202
    return-void

    .line 206
    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mTmpTasks:Landroid/util/ArraySet;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/TaskSnapshotController;->getClosingTasks(Landroid/util/ArraySet;Landroid/util/ArraySet;)V

    .line 207
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mTmpTasks:Landroid/util/ArraySet;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskSnapshotController;->snapshotTasks(Landroid/util/ArraySet;)V

    .line 208
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mSkipClosingAppSnapshotTasks:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 209
    return-void
.end method

.method private isAnimatingByRecents(Lcom/android/server/wm/Task;)Z
    .registers 3
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 901
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isAnimatingByRecents()Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 902
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTransitionController()Lcom/android/server/wm/TransitionController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/TransitionController;->inRecentsTransition(Lcom/android/server/wm/WindowContainer;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_17

    :cond_15
    const/4 v0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 v0, 0x1

    .line 901
    :goto_18
    return v0
.end method

.method static isInvalidHardwareBuffer(Landroid/hardware/HardwareBuffer;)Z
    .registers 3
    .param p0, "buffer"    # Landroid/hardware/HardwareBuffer;

    .line 622
    const/4 v0, 0x1

    if-eqz p0, :cond_18

    invoke-virtual {p0}, Landroid/hardware/HardwareBuffer;->isClosed()Z

    move-result v1

    if-nez v1, :cond_18

    .line 623
    invoke-virtual {p0}, Landroid/hardware/HardwareBuffer;->getWidth()I

    move-result v1

    if-le v1, v0, :cond_18

    invoke-virtual {p0}, Landroid/hardware/HardwareBuffer;->getHeight()I

    move-result v1

    if-gt v1, v0, :cond_16

    goto :goto_18

    :cond_16
    const/4 v0, 0x0

    goto :goto_19

    :cond_18
    :goto_18
    nop

    .line 622
    :goto_19
    return v0
.end method

.method private isUnderNightMode()Z
    .registers 3

    .line 790
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    const/16 v1, 0x20

    if-ne v0, v1, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    return v0
.end method

.method static synthetic lambda$findAppTokenForSnapshot$0(Lcom/android/server/wm/WindowState;)Z
    .registers 3
    .param p0, "ws"    # Lcom/android/server/wm/WindowState;

    .line 317
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateAnimator;->getShown()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mLastAlpha:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_17

    const/4 v0, 0x1

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    :goto_18
    return v0
.end method

.method static synthetic lambda$findAppTokenForSnapshot$1(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 3
    .param p0, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 310
    if-eqz p0, :cond_1a

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isSurfaceShowing()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-nez v0, :cond_f

    goto :goto_1a

    .line 313
    :cond_f
    new-instance v0, Lcom/android/server/wm/TaskSnapshotController$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/server/wm/TaskSnapshotController$$ExternalSyntheticLambda2;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/ActivityRecord;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v0

    return v0

    .line 311
    :cond_1a
    :goto_1a
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$isInFloatWindowAnimation$2(Lcom/android/server/wm/WindowState;)Z
    .registers 3
    .param p0, "ws"    # Lcom/android/server/wm/WindowState;

    .line 427
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->inFreeformSmallWinMode()Z

    move-result v0

    if-eqz v0, :cond_13

    iget v0, p0, Lcom/android/server/wm/WindowState;->shouldHideAfterAnimation:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    return v0
.end method

.method static synthetic lambda$isInFloatWindowAnimation$3(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 3
    .param p0, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 423
    if-eqz p0, :cond_14

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isSurfaceShowing()Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_14

    .line 426
    :cond_9
    new-instance v0, Lcom/android/server/wm/TaskSnapshotController$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/android/server/wm/TaskSnapshotController$$ExternalSyntheticLambda5;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/ActivityRecord;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v0

    return v0

    .line 424
    :cond_14
    :goto_14
    const/4 v0, 0x0

    return v0
.end method

.method private snapshotTasks(Landroid/util/ArraySet;Z)V
    .registers 5
    .param p2, "allowSnapshotHome"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/Task;",
            ">;Z)V"
        }
    .end annotation

    .line 280
    .local p1, "tasks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/Task;>;"
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_6
    if-ltz v0, :cond_14

    .line 281
    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/Task;

    invoke-virtual {p0, v1, p2}, Lcom/android/server/wm/TaskSnapshotController;->recordTaskSnapshot(Lcom/android/server/wm/Task;Z)V

    .line 280
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 283
    .end local v0    # "i":I
    :cond_14
    return-void
.end method


# virtual methods
.method addSkipClosingAppSnapshotTasks(Ljava/util/Set;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/android/server/wm/Task;",
            ">;)V"
        }
    .end annotation

    .line 218
    .local p1, "tasks":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/wm/Task;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/TaskSnapshotController;->shouldDisableSnapshots()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 219
    return-void

    .line 221
    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mSkipClosingAppSnapshotTasks:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 222
    return-void
.end method

.method captureTaskSnapshot(Lcom/android/server/wm/Task;Z)Landroid/window/TaskSnapshot;
    .registers 4
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "snapshotHome"    # Z

    .line 237
    if-eqz p2, :cond_7

    .line 238
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskSnapshotController;->snapshotTask(Lcom/android/server/wm/Task;)Landroid/window/TaskSnapshot;

    move-result-object v0

    .local v0, "snapshot":Landroid/window/TaskSnapshot;
    goto :goto_1c

    .line 240
    .end local v0    # "snapshot":Landroid/window/TaskSnapshot;
    :cond_7
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskSnapshotController;->getSnapshotMode(Lcom/android/server/wm/Task;)I

    move-result v0

    packed-switch v0, :pswitch_data_1e

    .line 250
    const/4 v0, 0x0

    .restart local v0    # "snapshot":Landroid/window/TaskSnapshot;
    goto :goto_1c

    .line 242
    .end local v0    # "snapshot":Landroid/window/TaskSnapshot;
    :pswitch_10
    const/4 v0, 0x0

    return-object v0

    .line 244
    :pswitch_12
    invoke-direct {p0, p1}, Lcom/android/server/wm/TaskSnapshotController;->drawAppThemeSnapshot(Lcom/android/server/wm/Task;)Landroid/window/TaskSnapshot;

    move-result-object v0

    .line 245
    .restart local v0    # "snapshot":Landroid/window/TaskSnapshot;
    goto :goto_1c

    .line 247
    .end local v0    # "snapshot":Landroid/window/TaskSnapshot;
    :pswitch_17
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskSnapshotController;->snapshotTask(Lcom/android/server/wm/Task;)Landroid/window/TaskSnapshot;

    move-result-object v0

    .line 248
    .restart local v0    # "snapshot":Landroid/window/TaskSnapshot;
    nop

    .line 254
    :goto_1c
    return-object v0

    nop

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_17
        :pswitch_12
        :pswitch_10
    .end packed-switch
.end method

.method checkIfReadyToSnapshot(Lcom/android/server/wm/Task;)Landroid/util/Pair;
    .registers 8
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/Task;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/android/server/wm/ActivityRecord;",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation

    .line 444
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->isScreenOn()Z

    move-result v0

    const-string v1, "WindowManager"

    const/4 v2, 0x0

    if-nez v0, :cond_17

    .line 445
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_SCREENSHOT:Z

    if-eqz v0, :cond_16

    .line 446
    const-string v0, "Attempted to take screenshot while display was off."

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    :cond_16
    return-object v2

    .line 450
    :cond_17
    invoke-direct {p0, p1}, Lcom/android/server/wm/TaskSnapshotController;->findAppTokenForSnapshot(Lcom/android/server/wm/Task;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 451
    .local v0, "activity":Lcom/android/server/wm/ActivityRecord;
    if-nez v0, :cond_38

    .line 452
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_SCREENSHOT:Z

    if-eqz v3, :cond_37

    .line 453
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to take screenshot. No visible windows for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    :cond_37
    return-object v2

    .line 457
    :cond_38
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->hasCommittedReparentToAnimationLeash()Z

    move-result v3

    if-eqz v3, :cond_59

    .line 458
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_SCREENSHOT:Z

    if-eqz v3, :cond_58

    .line 459
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to take screenshot. App is animating "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    :cond_58
    return-object v2

    .line 464
    :cond_59
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v3

    .line 465
    .local v3, "mainWindow":Lcom/android/server/wm/WindowState;
    if-nez v3, :cond_76

    .line 466
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to take screenshot. No main window for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    return-object v2

    .line 469
    :cond_76
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->hasFixedRotationTransform()Z

    move-result v4

    if-eqz v4, :cond_97

    .line 470
    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_SCREENSHOT:Z

    if-eqz v4, :cond_96

    .line 471
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Skip taking screenshot. App has fixed rotation "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    :cond_96
    return-object v2

    .line 478
    :cond_97
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isKeyguardLocked()Z

    move-result v4

    if-eqz v4, :cond_ad

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->isSleeping()Z

    move-result v4

    if-eqz v4, :cond_ad

    .line 479
    const-string v4, "Skip taking screenshot as locked"

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    return-object v2

    .line 484
    :cond_ad
    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, v0, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method

.method public clearSnapshotCache()V
    .registers 2

    .line 300
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mCache:Lcom/android/server/wm/TaskSnapshotCache;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskSnapshotCache;->clearRunningCache()V

    .line 301
    return-void
.end method

.method createTaskSnapshot(Lcom/android/server/wm/Task;FILandroid/graphics/Point;Landroid/window/TaskSnapshot$Builder;)Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;
    .registers 24
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "scaleFraction"    # F
    .param p3, "pixelFormat"    # I
    .param p4, "outTaskSize"    # Landroid/graphics/Point;
    .param p5, "builder"    # Landroid/window/TaskSnapshot$Builder;

    .line 554
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/Task;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v3, :cond_2a

    .line 555
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_SCREENSHOT:Z

    if-eqz v3, :cond_29

    .line 556
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to take screenshot. No surface control for "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "WindowManager"

    invoke-static {v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    :cond_29
    return-object v4

    .line 560
    :cond_2a
    iget-object v3, v0, Lcom/android/server/wm/TaskSnapshotController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v3}, Lcom/android/server/wm/Task;->getBounds(Landroid/graphics/Rect;)V

    .line 563
    iget-object v3, v0, Lcom/android/server/wm/TaskSnapshotController;->mTmpRect:Landroid/graphics/Rect;

    .line 564
    .local v3, "taskBounds":Landroid/graphics/Rect;
    iget-object v5, v0, Lcom/android/server/wm/TaskSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mMiuiFreeFormManagerService:Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/Task;->getRootTaskId()I

    move-result v6

    invoke-interface {v5, v6}, Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;->getMiuiFreeFormActivityStack(I)Lcom/android/server/wm/MiuiFreeFormActivityStackStub;

    move-result-object v5

    .line 565
    .local v5, "mffas":Lcom/android/server/wm/MiuiFreeFormActivityStackStub;
    if-nez v5, :cond_44

    const/high16 v6, 0x3f800000    # 1.0f

    goto :goto_48

    :cond_44
    invoke-virtual {v5}, Lcom/android/server/wm/MiuiFreeFormActivityStackStub;->getFreeFormScale()F

    move-result v6

    .line 566
    .local v6, "scale":F
    :goto_48
    if-eqz v5, :cond_67

    .line 567
    iget-object v7, v0, Lcom/android/server/wm/TaskSnapshotController;->mTmpRect:Landroid/graphics/Rect;

    iget v8, v3, Landroid/graphics/Rect;->left:I

    iget v9, v3, Landroid/graphics/Rect;->top:I

    iget v10, v3, Landroid/graphics/Rect;->left:I

    .line 568
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v11, v6

    float-to-int v11, v11

    add-int/2addr v10, v11

    iget v11, v3, Landroid/graphics/Rect;->top:I

    .line 569
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v12

    int-to-float v12, v12

    mul-float/2addr v12, v6

    float-to-int v12, v12

    add-int/2addr v11, v12

    .line 567
    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    .line 572
    :cond_67
    iget-object v7, v0, Lcom/android/server/wm/TaskSnapshotController;->mTmpRect:Landroid/graphics/Rect;

    const/4 v8, 0x0

    invoke-virtual {v7, v8, v8}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 575
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v7

    iget-object v7, v7, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    .line 577
    .local v7, "imeWindow":Lcom/android/server/wm/WindowState;
    const/4 v9, 0x1

    if-eqz v7, :cond_8e

    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v10

    if-eqz v10, :cond_8e

    .line 580
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/server/wm/DisplayContent;->shouldImeAttachedToApp()Z

    move-result v10

    if-eqz v10, :cond_8c

    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->isSecureLocked()Z

    move-result v10

    if-eqz v10, :cond_8e

    :cond_8c
    move v10, v9

    goto :goto_8f

    :cond_8e
    move v10, v8

    .line 582
    .local v10, "excludeIme":Z
    :goto_8f
    nop

    .line 583
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBar()Lcom/android/server/wm/WindowState;

    move-result-object v11

    .line 587
    .local v11, "navWindow":Lcom/android/server/wm/WindowState;
    if-eqz v11, :cond_a0

    move v12, v9

    goto :goto_a1

    :cond_a0
    move v12, v8

    .line 588
    .local v12, "excludeNavBar":Z
    :goto_a1
    if-eqz v10, :cond_b5

    if-eqz v12, :cond_b5

    .line 589
    const/4 v13, 0x2

    new-array v13, v13, [Landroid/view/SurfaceControl;

    .line 590
    .local v13, "excludeLayers":[Landroid/view/SurfaceControl;
    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v14

    aput-object v14, v13, v8

    .line 591
    invoke-virtual {v11}, Lcom/android/server/wm/WindowState;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v14

    aput-object v14, v13, v9

    goto :goto_cd

    .line 592
    .end local v13    # "excludeLayers":[Landroid/view/SurfaceControl;
    :cond_b5
    if-nez v10, :cond_bd

    if-eqz v12, :cond_ba

    goto :goto_bd

    .line 597
    :cond_ba
    new-array v13, v8, [Landroid/view/SurfaceControl;

    .restart local v13    # "excludeLayers":[Landroid/view/SurfaceControl;
    goto :goto_cd

    .line 593
    .end local v13    # "excludeLayers":[Landroid/view/SurfaceControl;
    :cond_bd
    :goto_bd
    new-array v13, v9, [Landroid/view/SurfaceControl;

    .line 594
    .restart local v13    # "excludeLayers":[Landroid/view/SurfaceControl;
    nop

    .line 595
    if-eqz v10, :cond_c7

    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v14

    goto :goto_cb

    :cond_c7
    invoke-virtual {v11}, Lcom/android/server/wm/WindowState;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v14

    :goto_cb
    aput-object v14, v13, v8

    .line 599
    :goto_cd
    if-nez v10, :cond_d8

    if-eqz v7, :cond_d8

    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v14

    if-eqz v14, :cond_d8

    move v8, v9

    :cond_d8
    move-object/from16 v9, p5

    invoke-virtual {v9, v8}, Landroid/window/TaskSnapshot$Builder;->setHasImeSurface(Z)Landroid/window/TaskSnapshot$Builder;

    .line 601
    nop

    .line 603
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/Task;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v8

    iget-object v14, v0, Lcom/android/server/wm/TaskSnapshotController;->mTmpRect:Landroid/graphics/Rect;

    .line 602
    move/from16 v15, p2

    move/from16 v4, p3

    invoke-static {v8, v14, v15, v4, v13}, Landroid/view/SurfaceControl;->captureLayersExcluding(Landroid/view/SurfaceControl;Landroid/graphics/Rect;FI[Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;

    move-result-object v8

    .line 605
    .local v8, "screenshotBuffer":Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;
    if-eqz v2, :cond_102

    .line 609
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/Task;->getBounds()Landroid/graphics/Rect;

    move-result-object v14

    invoke-virtual {v14}, Landroid/graphics/Rect;->width()I

    move-result v14

    iput v14, v2, Landroid/graphics/Point;->x:I

    .line 610
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/Task;->getBounds()Landroid/graphics/Rect;

    move-result-object v14

    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    move-result v14

    iput v14, v2, Landroid/graphics/Point;->y:I

    .line 613
    :cond_102
    if-nez v8, :cond_106

    const/4 v14, 0x0

    goto :goto_10a

    .line 614
    :cond_106
    invoke-virtual {v8}, Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v14

    :goto_10a
    nop

    .line 615
    .local v14, "buffer":Landroid/hardware/HardwareBuffer;
    invoke-static {v14}, Lcom/android/server/wm/TaskSnapshotController;->isInvalidHardwareBuffer(Landroid/hardware/HardwareBuffer;)Z

    move-result v17

    if-eqz v17, :cond_114

    .line 616
    const/16 v16, 0x0

    return-object v16

    .line 618
    :cond_114
    return-object v8
.end method

.method createTaskSnapshot(Lcom/android/server/wm/Task;Landroid/window/TaskSnapshot$Builder;)Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;
    .registers 11
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "builder"    # Landroid/window/TaskSnapshot$Builder;

    .line 490
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 492
    .local v0, "taskSize":Landroid/graphics/Point;
    iget v1, p0, Lcom/android/server/wm/TaskSnapshotController;->mHighResTaskSnapshotScale:F

    .line 493
    .local v1, "highResTaskSnapshotScale":F
    invoke-virtual {p2}, Landroid/window/TaskSnapshot$Builder;->isQs()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 494
    const/high16 v1, 0x3f800000    # 1.0f

    move v7, v1

    goto :goto_12

    .line 493
    :cond_11
    move v7, v1

    .line 497
    .end local v1    # "highResTaskSnapshotScale":F
    .local v7, "highResTaskSnapshotScale":F
    :goto_12
    nop

    .line 500
    invoke-virtual {p2}, Landroid/window/TaskSnapshot$Builder;->getPixelFormat()I

    move-result v4

    .line 497
    move-object v1, p0

    move-object v2, p1

    move v3, v7

    move-object v5, v0

    move-object v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/TaskSnapshotController;->createTaskSnapshot(Lcom/android/server/wm/Task;FILandroid/graphics/Point;Landroid/window/TaskSnapshot$Builder;)Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;

    move-result-object v1

    .line 501
    .local v1, "taskSnapshot":Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;
    invoke-virtual {p2, v0}, Landroid/window/TaskSnapshot$Builder;->setTaskSize(Landroid/graphics/Point;)Landroid/window/TaskSnapshot$Builder;

    .line 503
    if-eqz p1, :cond_49

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->inFreeformSmallWinMode()Z

    move-result v2

    if-eqz v2, :cond_49

    .line 504
    iget-object v2, p0, Lcom/android/server/wm/TaskSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mMiuiFreeFormManagerService:Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getRootTaskId()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;->getMiuiFreeFormActivityStack(I)Lcom/android/server/wm/MiuiFreeFormActivityStackStub;

    move-result-object v2

    .line 505
    .local v2, "mffas":Lcom/android/server/wm/MiuiFreeFormActivityStackStub;
    if-eqz v2, :cond_49

    .line 506
    invoke-virtual {v2}, Lcom/android/server/wm/MiuiFreeFormActivityStackStub;->getFreeFormScale()F

    move-result v3

    invoke-virtual {p2, v3}, Landroid/window/TaskSnapshot$Builder;->setFreeformScale(F)Landroid/window/TaskSnapshot$Builder;

    .line 507
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/window/TaskSnapshot$Builder;->setFreeformTaskBounds(Landroid/graphics/Rect;)Landroid/window/TaskSnapshot$Builder;

    .line 511
    .end local v2    # "mffas":Lcom/android/server/wm/MiuiFreeFormActivityStackStub;
    :cond_49
    return-object v1
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 906
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mHighResTaskSnapshotScale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/TaskSnapshotController;->mHighResTaskSnapshotScale:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 907
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "mTaskSnapshotEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/wm/TaskSnapshotController;->mTaskSnapshotEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 908
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mCache:Lcom/android/server/wm/TaskSnapshotCache;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/TaskSnapshotCache;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 909
    return-void
.end method

.method getClosingTasks(Landroid/util/ArraySet;Landroid/util/ArraySet;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/Task;",
            ">;)V"
        }
    .end annotation

    .line 694
    .local p1, "closingApps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/ActivityRecord;>;"
    .local p2, "outClosingTasks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/Task;>;"
    invoke-virtual {p2}, Landroid/util/ArraySet;->clear()V

    .line 695
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_9
    if-ltz v0, :cond_37

    .line 696
    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityRecord;

    .line 697
    .local v1, "activity":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    .line 698
    .local v2, "task":Lcom/android/server/wm/Task;
    if-nez v2, :cond_18

    goto :goto_34

    .line 703
    :cond_18
    invoke-direct {p0, v2}, Lcom/android/server/wm/TaskSnapshotController;->isAnimatingByRecents(Lcom/android/server/wm/Task;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 704
    iget-object v3, p0, Lcom/android/server/wm/TaskSnapshotController;->mSkipClosingAppSnapshotTasks:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 708
    :cond_23
    invoke-virtual {v2}, Lcom/android/server/wm/Task;->isVisible()Z

    move-result v3

    if-nez v3, :cond_34

    iget-object v3, p0, Lcom/android/server/wm/TaskSnapshotController;->mSkipClosingAppSnapshotTasks:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_34

    .line 709
    invoke-virtual {p2, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 695
    .end local v1    # "activity":Lcom/android/server/wm/ActivityRecord;
    .end local v2    # "task":Lcom/android/server/wm/Task;
    :cond_34
    :goto_34
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    .line 712
    .end local v0    # "i":I
    :cond_37
    return-void
.end method

.method getSnapshot(IIZZ)Landroid/window/TaskSnapshot;
    .registers 7
    .param p1, "taskId"    # I
    .param p2, "userId"    # I
    .param p3, "restoreFromDisk"    # Z
    .param p4, "isLowResolution"    # Z

    .line 292
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mCache:Lcom/android/server/wm/TaskSnapshotCache;

    if-eqz p4, :cond_e

    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotController;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    .line 293
    invoke-virtual {v1}, Lcom/android/server/wm/TaskSnapshotPersister;->enableLowResSnapshots()Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    .line 292
    :goto_f
    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/android/server/wm/TaskSnapshotCache;->getSnapshot(IIZZ)Landroid/window/TaskSnapshot;

    move-result-object v0

    return-object v0
.end method

.method getSnapshotMode(Lcom/android/server/wm/Task;)I
    .registers 4
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 716
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 717
    .local v0, "topChild":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isActivityTypeStandardOrUndefined()Z

    move-result v1

    if-nez v1, :cond_12

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isActivityTypeAssistant()Z

    move-result v1

    if-nez v1, :cond_12

    .line 718
    const/4 v1, 0x2

    return v1

    .line 719
    :cond_12
    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->shouldUseAppThemeSnapshot()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 720
    const/4 v1, 0x1

    return v1

    .line 722
    :cond_1c
    const/4 v1, 0x0

    return v1
.end method

.method handleSnapshotTaskByFreeform(Lcom/android/server/wm/Task;)V
    .registers 4
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 628
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleSnapshotTaskByFreeform: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    invoke-virtual {p0}, Lcom/android/server/wm/TaskSnapshotController;->shouldDisableSnapshots()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 630
    return-void

    .line 633
    :cond_1f
    if-eqz p1, :cond_36

    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mSkipClosingAppSnapshotTasks:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_36

    .line 634
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/server/wm/Task;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskSnapshotController;->snapshotTasks(Landroid/util/ArraySet;)V

    .line 636
    :cond_36
    return-void
.end method

.method isInFloatWindowAnimation(Lcom/android/server/wm/Task;)Z
    .registers 5
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 421
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 422
    new-instance v1, Lcom/android/server/wm/TaskSnapshotController$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lcom/android/server/wm/TaskSnapshotController$$ExternalSyntheticLambda4;-><init>()V

    invoke-virtual {p1, v1}, Lcom/android/server/wm/Task;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 430
    .local v1, "activityRecord":Lcom/android/server/wm/ActivityRecord;
    if-eqz v1, :cond_15

    const/4 v2, 0x1

    goto :goto_16

    :cond_15
    const/4 v2, 0x0

    :goto_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_1b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 431
    .end local v1    # "activityRecord":Lcom/android/server/wm/ActivityRecord;
    :catchall_1b
    move-exception v1

    :try_start_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method synthetic lambda$screenTurningOff$4$com-android-server-wm-TaskSnapshotController(ILcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;)V
    .registers 5
    .param p1, "displayId"    # I
    .param p2, "listener"    # Lcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;

    .line 846
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_1a

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 847
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskSnapshotController;->snapshotForSleeping(I)V

    .line 848
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_14

    :try_start_c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_1a

    .line 850
    invoke-interface {p2}, Lcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;->onScreenOff()V

    .line 851
    nop

    .line 852
    return-void

    .line 848
    :catchall_14
    move-exception v1

    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    :try_start_16
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local p0    # "this":Lcom/android/server/wm/TaskSnapshotController;
    .end local p1    # "displayId":I
    .end local p2    # "listener":Lcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;
    throw v1
    :try_end_1a
    .catchall {:try_start_16 .. :try_end_1a} :catchall_1a

    .line 850
    .restart local p0    # "this":Lcom/android/server/wm/TaskSnapshotController;
    .restart local p1    # "displayId":I
    .restart local p2    # "listener":Lcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;
    :catchall_1a
    move-exception v0

    invoke-interface {p2}, Lcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;->onScreenOff()V

    .line 851
    throw v0
.end method

.method synthetic lambda$snapshotForSleeping$5$com-android-server-wm-TaskSnapshotController(Lcom/android/server/wm/Task;)V
    .registers 3
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 869
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-direct {p0, p1}, Lcom/android/server/wm/TaskSnapshotController;->isAnimatingByRecents(Lcom/android/server/wm/Task;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 870
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mTmpTasks:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 872
    :cond_11
    return-void
.end method

.method notifyAppResumed(Lcom/android/server/wm/ActivityRecord;Z)V
    .registers 4
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "visible"    # Z

    .line 192
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/TaskSnapshotController;->notifyAppResumed(Lcom/android/server/wm/ActivityRecord;ZZ)V

    .line 193
    return-void
.end method

.method notifyAppResumed(Lcom/android/server/wm/ActivityRecord;ZZ)V
    .registers 11
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "visible"    # Z
    .param p3, "forceUpdate"    # Z

    .line 196
    invoke-static {}, Lcom/android/server/wm/TaskSnapshotControllerInjectorStub;->get()Lcom/android/server/wm/TaskSnapshotControllerInjectorStub;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wm/TaskSnapshotController;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    iget-object v3, p0, Lcom/android/server/wm/TaskSnapshotController;->mHandler:Landroid/os/Handler;

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/TaskSnapshotControllerInjectorStub;->doSnapshotQS(Lcom/android/server/wm/TaskSnapshotController;Lcom/android/server/wm/TaskSnapshotPersister;Landroid/os/Handler;Lcom/android/server/wm/ActivityRecord;ZZ)V

    .line 197
    return-void
.end method

.method notifyAppVisibilityChanged(Lcom/android/server/wm/ActivityRecord;Z)V
    .registers 5
    .param p1, "appWindowToken"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "visible"    # Z

    .line 185
    if-nez p2, :cond_f

    .line 186
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/server/wm/ActivityRecord;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wm/TaskSnapshotController;->handleClosingApps(Landroid/util/ArraySet;)V

    .line 188
    :cond_f
    return-void
.end method

.method notifyTaskRemovedFromRecents(II)V
    .registers 4
    .param p1, "taskId"    # I
    .param p2, "userId"    # I

    .line 810
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mCache:Lcom/android/server/wm/TaskSnapshotCache;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/TaskSnapshotCache;->onTaskRemoved(I)V

    .line 811
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/TaskSnapshotPersister;->onTaskRemovedFromRecents(II)V

    .line 812
    return-void
.end method

.method onAppDied(Lcom/android/server/wm/ActivityRecord;)V
    .registers 3
    .param p1, "activity"    # Lcom/android/server/wm/ActivityRecord;

    .line 806
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mCache:Lcom/android/server/wm/TaskSnapshotCache;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/TaskSnapshotCache;->onAppDied(Lcom/android/server/wm/ActivityRecord;)V

    .line 807
    return-void
.end method

.method onAppRemoved(Lcom/android/server/wm/ActivityRecord;)V
    .registers 3
    .param p1, "activity"    # Lcom/android/server/wm/ActivityRecord;

    .line 799
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mCache:Lcom/android/server/wm/TaskSnapshotCache;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/TaskSnapshotCache;->onAppRemoved(Lcom/android/server/wm/ActivityRecord;)V

    .line 800
    return-void
.end method

.method onTransitionStarting(Lcom/android/server/wm/DisplayContent;)V
    .registers 3
    .param p1, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    .line 178
    iget-object v0, p1, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-direct {p0, v0}, Lcom/android/server/wm/TaskSnapshotController;->handleClosingApps(Landroid/util/ArraySet;)V

    .line 179
    return-void
.end method

.method prepareTaskSnapshot(Lcom/android/server/wm/Task;ILandroid/window/TaskSnapshot$Builder;)Z
    .registers 20
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "pixelFormat"    # I
    .param p3, "builder"    # Landroid/window/TaskSnapshot$Builder;

    .line 346
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wm/TaskSnapshotController;->checkIfReadyToSnapshot(Lcom/android/server/wm/Task;)Landroid/util/Pair;

    move-result-object v3

    .line 347
    .local v3, "result":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/WindowState;>;"
    const/4 v4, 0x0

    if-nez v3, :cond_e

    .line 348
    return v4

    .line 351
    :cond_e
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wm/TaskSnapshotController;->isInFloatWindowAnimation(Lcom/android/server/wm/Task;)Z

    move-result v5

    const-string v6, "WindowManager"

    if-eqz v5, :cond_2d

    .line 352
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " prepareTaskSnapshot: isInFloatWindowAnimation not take snapshot, task= "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    return v4

    .line 356
    :cond_2d
    iget-object v5, v0, Lcom/android/server/wm/TaskSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mMiuiFreeFormManagerService:Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/Task;->getRootTaskId()I

    move-result v7

    invoke-interface {v5, v7}, Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;->getMiuiFreeFormActivityStack(I)Lcom/android/server/wm/MiuiFreeFormActivityStackStub;

    move-result-object v5

    .line 357
    .local v5, "mffas":Lcom/android/server/wm/MiuiFreeFormActivityStackStub;
    if-eqz v5, :cond_5a

    invoke-virtual {v5}, Lcom/android/server/wm/MiuiFreeFormActivityStackStub;->inPinMode()Z

    move-result v7

    if-eqz v7, :cond_5a

    .line 358
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " prepareTaskSnapshot: task in pin not take snapshot, task= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    return v4

    .line 362
    :cond_5a
    iget-object v7, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Lcom/android/server/wm/ActivityRecord;

    .line 363
    .local v7, "activity":Lcom/android/server/wm/ActivityRecord;
    iget-object v8, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Lcom/android/server/wm/WindowState;

    .line 364
    .local v8, "mainWindow":Lcom/android/server/wm/WindowState;
    invoke-virtual {v8}, Lcom/android/server/wm/WindowState;->getFrame()Landroid/graphics/Rect;

    move-result-object v9

    .line 365
    invoke-virtual {v8}, Lcom/android/server/wm/WindowState;->getInsetsStateWithVisibilityOverride()Landroid/view/InsetsState;

    move-result-object v10

    .line 364
    invoke-static {v9, v10}, Lcom/android/server/wm/TaskSnapshotController;->getSystemBarInsets(Landroid/graphics/Rect;Landroid/view/InsetsState;)Landroid/graphics/Rect;

    move-result-object v9

    .line 366
    .local v9, "contentInsets":Landroid/graphics/Rect;
    invoke-virtual {v7}, Lcom/android/server/wm/ActivityRecord;->getLetterboxInsets()Landroid/graphics/Rect;

    move-result-object v10

    .line 369
    .local v10, "letterboxInsets":Landroid/graphics/Rect;
    invoke-static {}, Lcom/android/server/wm/TaskSnapshotControllerInjectorStub;->get()Lcom/android/server/wm/TaskSnapshotControllerInjectorStub;

    move-result-object v11

    invoke-virtual {v11, v7, v10}, Lcom/android/server/wm/TaskSnapshotControllerInjectorStub;->adaptLetterboxInsets(Lcom/android/server/wm/ActivityRecord;Landroid/graphics/Rect;)V

    .line 371
    invoke-static {v9, v10}, Lcom/android/server/wm/utils/InsetUtils;->addInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 373
    const/4 v11, 0x1

    invoke-virtual {v2, v11}, Landroid/window/TaskSnapshot$Builder;->setIsRealSnapshot(Z)Landroid/window/TaskSnapshot$Builder;

    .line 374
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-virtual {v2, v12, v13}, Landroid/window/TaskSnapshot$Builder;->setId(J)Landroid/window/TaskSnapshot$Builder;

    .line 375
    invoke-virtual {v2, v9}, Landroid/window/TaskSnapshot$Builder;->setContentInsets(Landroid/graphics/Rect;)Landroid/window/TaskSnapshot$Builder;

    .line 376
    invoke-virtual {v2, v10}, Landroid/window/TaskSnapshot$Builder;->setLetterboxInsets(Landroid/graphics/Rect;)Landroid/window/TaskSnapshot$Builder;

    .line 378
    invoke-virtual {v8}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v12

    iget v12, v12, Landroid/view/WindowManager$LayoutParams;->format:I

    const/4 v13, -0x1

    if-eq v12, v13, :cond_98

    move v12, v11

    goto :goto_99

    :cond_98
    move v12, v4

    .line 379
    .local v12, "isWindowTranslucent":Z
    :goto_99
    invoke-virtual {v8}, Lcom/android/server/wm/WindowState;->hasWallpaper()Z

    move-result v13

    .line 381
    .local v13, "isShowWallpaper":Z
    if-nez p2, :cond_b6

    .line 383
    iget-object v14, v0, Lcom/android/server/wm/TaskSnapshotController;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    .line 382
    invoke-virtual {v14}, Lcom/android/server/wm/TaskSnapshotPersister;->use16BitFormat()Z

    move-result v14

    if-eqz v14, :cond_b3

    invoke-virtual {v7}, Lcom/android/server/wm/ActivityRecord;->fillsParent()Z

    move-result v14

    if-eqz v14, :cond_b3

    if-eqz v12, :cond_b1

    if-nez v13, :cond_b3

    .line 384
    :cond_b1
    const/4 v14, 0x4

    goto :goto_b4

    .line 385
    :cond_b3
    move v14, v11

    :goto_b4
    nop

    .end local p2    # "pixelFormat":I
    .local v14, "pixelFormat":I
    goto :goto_b8

    .line 381
    .end local v14    # "pixelFormat":I
    .restart local p2    # "pixelFormat":I
    :cond_b6
    move/from16 v14, p2

    .line 388
    .end local p2    # "pixelFormat":I
    .restart local v14    # "pixelFormat":I
    :goto_b8
    invoke-static {v14}, Landroid/graphics/PixelFormat;->formatHasAlpha(I)Z

    move-result v15

    if-eqz v15, :cond_c8

    .line 389
    invoke-virtual {v7}, Lcom/android/server/wm/ActivityRecord;->fillsParent()Z

    move-result v15

    if-eqz v15, :cond_c6

    if-eqz v12, :cond_c8

    :cond_c6
    move v4, v11

    goto :goto_c9

    :cond_c8
    nop

    .line 391
    .local v4, "isTranslucent":Z
    :goto_c9
    iget-object v15, v7, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {v2, v15}, Landroid/window/TaskSnapshot$Builder;->setTopActivityComponent(Landroid/content/ComponentName;)Landroid/window/TaskSnapshot$Builder;

    .line 392
    invoke-virtual {v2, v14}, Landroid/window/TaskSnapshot$Builder;->setPixelFormat(I)Landroid/window/TaskSnapshot$Builder;

    .line 393
    invoke-virtual {v2, v4}, Landroid/window/TaskSnapshot$Builder;->setIsTranslucent(Z)Landroid/window/TaskSnapshot$Builder;

    .line 394
    invoke-virtual {v7}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/server/wm/Task;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v15

    iget v15, v15, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v2, v15}, Landroid/window/TaskSnapshot$Builder;->setOrientation(I)Landroid/window/TaskSnapshot$Builder;

    .line 397
    sget-boolean v15, Landroid/os/Build;->IS_MIUI:Z

    if-eqz v15, :cond_fc

    invoke-virtual {v7}, Lcom/android/server/wm/ActivityRecord;->inSplitScreenWindowingMode()Z

    move-result v15

    if-eqz v15, :cond_fc

    .line 398
    invoke-virtual {v7}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/server/wm/DisplayContent;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v15

    iget v15, v15, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v2, v15}, Landroid/window/TaskSnapshot$Builder;->setOrientation(I)Landroid/window/TaskSnapshot$Builder;

    .line 402
    :cond_fc
    invoke-virtual {v7}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/server/wm/DisplayContent;->getRotation()I

    move-result v15

    invoke-virtual {v2, v15}, Landroid/window/TaskSnapshot$Builder;->setRotation(I)Landroid/window/TaskSnapshot$Builder;

    .line 406
    iget-boolean v15, v0, Lcom/android/server/wm/TaskSnapshotController;->mSettingKeyguardShown:Z

    if-eqz v15, :cond_13f

    .line 407
    invoke-virtual {v7}, Lcom/android/server/wm/ActivityRecord;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v15

    iget-object v15, v15, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v15}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v15

    if-ne v15, v11, :cond_13f

    .line 408
    invoke-virtual {v7}, Lcom/android/server/wm/ActivityRecord;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v15

    iget-object v15, v15, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v15}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v15

    .line 409
    .local v15, "rotation":I
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "prepareTaskSnapshot use activity\'s rotation: "

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    invoke-virtual {v2, v15}, Landroid/window/TaskSnapshot$Builder;->setRotation(I)Landroid/window/TaskSnapshot$Builder;

    .line 414
    .end local v15    # "rotation":I
    :cond_13f
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/window/TaskSnapshot$Builder;->setWindowingMode(I)Landroid/window/TaskSnapshot$Builder;

    .line 415
    invoke-direct/range {p0 .. p1}, Lcom/android/server/wm/TaskSnapshotController;->getAppearance(Lcom/android/server/wm/Task;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/window/TaskSnapshot$Builder;->setAppearance(I)Landroid/window/TaskSnapshot$Builder;

    .line 416
    const/4 v0, 0x1

    return v0
.end method

.method recordTaskSnapshot(Lcom/android/server/wm/Task;Z)V
    .registers 9
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "allowSnapshotHome"    # Z

    .line 258
    if-eqz p2, :cond_a

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isActivityTypeHome()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    .line 259
    .local v0, "snapshotHome":Z
    :goto_b
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/TaskSnapshotController;->captureTaskSnapshot(Lcom/android/server/wm/Task;Z)Landroid/window/TaskSnapshot;

    move-result-object v1

    .line 260
    .local v1, "snapshot":Landroid/window/TaskSnapshot;
    if-nez v1, :cond_12

    .line 261
    return-void

    .line 264
    :cond_12
    invoke-virtual {v1}, Landroid/window/TaskSnapshot;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v2

    .line 265
    .local v2, "buffer":Landroid/hardware/HardwareBuffer;
    invoke-virtual {v2}, Landroid/hardware/HardwareBuffer;->getWidth()I

    move-result v3

    if-eqz v3, :cond_37

    invoke-virtual {v2}, Landroid/hardware/HardwareBuffer;->getHeight()I

    move-result v3

    if-nez v3, :cond_23

    goto :goto_37

    .line 270
    :cond_23
    iget-object v3, p0, Lcom/android/server/wm/TaskSnapshotController;->mCache:Lcom/android/server/wm/TaskSnapshotCache;

    invoke-virtual {v3, p1, v1}, Lcom/android/server/wm/TaskSnapshotCache;->putSnapshot(Lcom/android/server/wm/Task;Landroid/window/TaskSnapshot;)V

    .line 272
    if-nez v0, :cond_65

    .line 273
    iget-object v3, p0, Lcom/android/server/wm/TaskSnapshotController;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    iget v4, p1, Lcom/android/server/wm/Task;->mTaskId:I

    iget v5, p1, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {v3, v4, v5, v1}, Lcom/android/server/wm/TaskSnapshotPersister;->persistSnapshot(IILandroid/window/TaskSnapshot;)V

    .line 274
    invoke-virtual {p1, v1}, Lcom/android/server/wm/Task;->onSnapshotChanged(Landroid/window/TaskSnapshot;)V

    goto :goto_65

    .line 266
    :cond_37
    :goto_37
    invoke-virtual {v2}, Landroid/hardware/HardwareBuffer;->close()V

    .line 267
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid task snapshot dimensions "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/hardware/HardwareBuffer;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 268
    invoke-virtual {v2}, Landroid/hardware/HardwareBuffer;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 267
    const-string v4, "WindowManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    :cond_65
    :goto_65
    return-void
.end method

.method removeObsoleteTaskFiles(Landroid/util/ArraySet;[I)V
    .registers 4
    .param p2, "runningUserIds"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;[I)V"
        }
    .end annotation

    .line 822
    .local p1, "persistentTaskIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/TaskSnapshotPersister;->removeObsoleteFiles(Landroid/util/ArraySet;[I)V

    .line 823
    return-void
.end method

.method removeSnapshotCache(I)V
    .registers 3
    .param p1, "taskId"    # I

    .line 815
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mCache:Lcom/android/server/wm/TaskSnapshotCache;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/TaskSnapshotCache;->removeRunningEntry(I)V

    .line 816
    return-void
.end method

.method screenTurningOff(ILcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;)V
    .registers 5
    .param p1, "displayId"    # I
    .param p2, "listener"    # Lcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;

    .line 838
    invoke-virtual {p0}, Lcom/android/server/wm/TaskSnapshotController;->shouldDisableSnapshots()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 839
    invoke-interface {p2}, Lcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;->onScreenOff()V

    .line 840
    return-void

    .line 844
    :cond_a
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/wm/TaskSnapshotController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/wm/TaskSnapshotController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/TaskSnapshotController;ILcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 853
    return-void
.end method

.method setPersisterPaused(Z)V
    .registers 3
    .param p1, "paused"    # Z

    .line 831
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/TaskSnapshotPersister;->setPaused(Z)V

    .line 832
    return-void
.end method

.method setTaskSnapshotEnabled(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .line 682
    iput-boolean p1, p0, Lcom/android/server/wm/TaskSnapshotController;->mTaskSnapshotEnabled:Z

    .line 683
    return-void
.end method

.method settingKeyguardShown(Z)V
    .registers 2
    .param p1, "state"    # Z

    .line 329
    iput-boolean p1, p0, Lcom/android/server/wm/TaskSnapshotController;->mSettingKeyguardShown:Z

    .line 330
    return-void
.end method

.method shouldDisableSnapshots()Z
    .registers 2

    .line 686
    iget-boolean v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mIsRunningOnTv:Z

    if-nez v0, :cond_f

    iget-boolean v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mIsRunningOnIoT:Z

    if-nez v0, :cond_f

    iget-boolean v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mTaskSnapshotEnabled:Z

    if-nez v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method snapshotForSleeping(I)V
    .registers 5
    .param p1, "displayId"    # I

    .line 857
    invoke-virtual {p0}, Lcom/android/server/wm/TaskSnapshotController;->shouldDisableSnapshots()Z

    move-result v0

    if-nez v0, :cond_3e

    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayEnabled:Z

    if-nez v0, :cond_d

    goto :goto_3e

    .line 860
    :cond_d
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 861
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-nez v0, :cond_18

    .line 862
    return-void

    .line 864
    :cond_18
    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotController;->mTmpTasks:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    .line 865
    new-instance v1, Lcom/android/server/wm/TaskSnapshotController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/wm/TaskSnapshotController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/TaskSnapshotController;)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayContent;->forAllTasks(Ljava/util/function/Consumer;)V

    .line 875
    if-nez p1, :cond_37

    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget-object v2, p0, Lcom/android/server/wm/TaskSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v2, v2, Lcom/android/server/wm/WindowManagerService;->mCurrentUserId:I

    .line 876
    invoke-interface {v1, v2}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardSecure(I)Z

    move-result v1

    if-eqz v1, :cond_37

    const/4 v1, 0x1

    goto :goto_38

    :cond_37
    const/4 v1, 0x0

    .line 877
    .local v1, "allowSnapshotHome":Z
    :goto_38
    iget-object v2, p0, Lcom/android/server/wm/TaskSnapshotController;->mTmpTasks:Landroid/util/ArraySet;

    invoke-direct {p0, v2, v1}, Lcom/android/server/wm/TaskSnapshotController;->snapshotTasks(Landroid/util/ArraySet;Z)V

    .line 878
    return-void

    .line 858
    .end local v0    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v1    # "allowSnapshotHome":Z
    :cond_3e
    :goto_3e
    return-void
.end method

.method snapshotImeFromAttachedTask(Lcom/android/server/wm/Task;)Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;
    .registers 4
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 542
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskSnapshotController;->checkIfReadyToSnapshot(Lcom/android/server/wm/Task;)Landroid/util/Pair;

    move-result-object v0

    if-nez v0, :cond_8

    .line 543
    const/4 v0, 0x0

    return-object v0

    .line 545
    :cond_8
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskSnapshotPersister;->use16BitFormat()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 546
    const/4 v0, 0x4

    goto :goto_13

    .line 547
    :cond_12
    const/4 v0, 0x1

    :goto_13
    nop

    .line 548
    .local v0, "pixelFormat":I
    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/TaskSnapshotController;->createImeSnapshot(Lcom/android/server/wm/Task;I)Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;

    move-result-object v1

    return-object v1
.end method

.method snapshotTask(Lcom/android/server/wm/Task;)Landroid/window/TaskSnapshot;
    .registers 3
    .param p1, "task"    # Lcom/android/server/wm/Task;

    .line 641
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/TaskSnapshotController;->snapshotTask(Lcom/android/server/wm/Task;I)Landroid/window/TaskSnapshot;

    move-result-object v0

    return-object v0
.end method

.method snapshotTask(Lcom/android/server/wm/Task;I)Landroid/window/TaskSnapshot;
    .registers 4
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "pixelFormat"    # I

    .line 654
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/TaskSnapshotController;->snapshotTask(Lcom/android/server/wm/Task;IZ)Landroid/window/TaskSnapshot;

    move-result-object v0

    return-object v0
.end method

.method snapshotTask(Lcom/android/server/wm/Task;IZ)Landroid/window/TaskSnapshot;
    .registers 7
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "pixelFormat"    # I
    .param p3, "isQs"    # Z

    .line 660
    new-instance v0, Landroid/window/TaskSnapshot$Builder;

    invoke-direct {v0}, Landroid/window/TaskSnapshot$Builder;-><init>()V

    .line 662
    .local v0, "builder":Landroid/window/TaskSnapshot$Builder;
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/TaskSnapshotController;->prepareTaskSnapshot(Lcom/android/server/wm/Task;ILandroid/window/TaskSnapshot$Builder;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_d

    .line 664
    return-object v2

    .line 667
    :cond_d
    invoke-virtual {v0, p3}, Landroid/window/TaskSnapshot$Builder;->setIsQs(Z)V

    .line 669
    nop

    .line 670
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/TaskSnapshotController;->createTaskSnapshot(Lcom/android/server/wm/Task;Landroid/window/TaskSnapshot$Builder;)Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;

    move-result-object v1

    .line 672
    .local v1, "screenshotBuffer":Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;
    if-nez v1, :cond_18

    .line 674
    return-object v2

    .line 676
    :cond_18
    invoke-virtual {v1}, Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/window/TaskSnapshot$Builder;->setSnapshot(Landroid/hardware/HardwareBuffer;)Landroid/window/TaskSnapshot$Builder;

    .line 677
    invoke-virtual {v1}, Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/window/TaskSnapshot$Builder;->setColorSpace(Landroid/graphics/ColorSpace;)Landroid/window/TaskSnapshot$Builder;

    .line 678
    invoke-virtual {v0}, Landroid/window/TaskSnapshot$Builder;->build()Landroid/window/TaskSnapshot;

    move-result-object v2

    return-object v2
.end method

.method snapshotTask(Lcom/android/server/wm/Task;Z)Landroid/window/TaskSnapshot;
    .registers 4
    .param p1, "task"    # Lcom/android/server/wm/Task;
    .param p2, "isQs"    # Z

    .line 647
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/wm/TaskSnapshotController;->snapshotTask(Lcom/android/server/wm/Task;IZ)Landroid/window/TaskSnapshot;

    move-result-object v0

    return-object v0
.end method

.method snapshotTasks(Landroid/util/ArraySet;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/Task;",
            ">;)V"
        }
    .end annotation

    .line 225
    .local p1, "tasks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/Task;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/TaskSnapshotController;->snapshotTasks(Landroid/util/ArraySet;Z)V

    .line 226
    return-void
.end method

.method systemReady()V
    .registers 2

    .line 174
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskSnapshotPersister;->start()V

    .line 175
    return-void
.end method
