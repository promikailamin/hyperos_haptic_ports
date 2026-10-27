.class public Lcom/android/server/wm/TaskSnapshotController;
.super Lcom/android/server/wm/AbsAppSnapshotController;
.source "TaskSnapshotController.java"


# instance fields
.field public final mHandler:Landroid/os/Handler;

.field public final mOnlyCacheLowResSnapshot:Z

.field public final mPersistInfoProvider:Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;

.field public final mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

.field public final mTmpTasks:Landroid/util/ArraySet;


# direct methods
.method public static synthetic $r8$lambda$5DoQzHtXyZPPQy6IJRKOKWzaog0(Lcom/android/server/wm/TaskSnapshotController;ILcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/TaskSnapshotController;->lambda$screenTurningOff$5(ILcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$5zvjEpXut30BB8GODhSC9qka6D4(Lcom/android/server/wm/TaskSnapshotController;Lcom/android/server/wm/Task;Landroid/window/TaskSnapshot;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/TaskSnapshotController;->lambda$prepareShutdown$3(Lcom/android/server/wm/Task;Landroid/window/TaskSnapshot;)V

    return-void
.end method

.method public static synthetic $r8$lambda$6q1v0QH4WWJwQbmjLBY6u-z_xMw(Lcom/android/server/wm/TaskSnapshotController;Lcom/android/server/wm/Task;JLcom/android/server/wm/BaseAppSnapshotPersister$LowResSnapshotSupplier;)V
    .registers 5

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/wm/TaskSnapshotController;->lambda$updateLowResToCacheFunction$1(Lcom/android/server/wm/Task;JLcom/android/server/wm/BaseAppSnapshotPersister$LowResSnapshotSupplier;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Fh0SwjFo0K_YCj8gfCmJMbgJjlI(Lcom/android/server/wm/TaskSnapshotController;ILcom/android/server/wm/Task;Landroid/window/TaskSnapshot;)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/TaskSnapshotController;->lambda$getRecordSnapshotSupplier$0(ILcom/android/server/wm/Task;Landroid/window/TaskSnapshot;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MNTdvIk4cOXOuK24C2YX49KvkcY(Lcom/android/server/wm/TaskSnapshotController;ZLcom/android/server/wm/Task;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/TaskSnapshotController;->lambda$snapshotForSleeping$6(ZLcom/android/server/wm/Task;)V

    return-void
.end method

.method public static synthetic $r8$lambda$N_rBg59kQetcUWv8FDEyw95qSls(Lcom/android/server/wm/TaskSnapshotController;Lcom/android/server/wm/Task;JLcom/android/server/wm/BaseAppSnapshotPersister$LowResSnapshotSupplier;)V
    .registers 5

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/wm/TaskSnapshotController;->lambda$updateLowResToCacheFunction$2(Lcom/android/server/wm/Task;JLcom/android/server/wm/BaseAppSnapshotPersister$LowResSnapshotSupplier;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VwWA7PPjC8GHw_ST4xjUeOaGC1s(Lcom/android/server/wm/TaskSnapshotController;Ljava/util/ArrayList;Lcom/android/server/wm/Task;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/TaskSnapshotController;->lambda$prepareShutdown$4(Ljava/util/ArrayList;Lcom/android/server/wm/Task;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/SnapshotPersistQueue;)V
    .registers 5

    .line 72
    invoke-direct {p0, p1}, Lcom/android/server/wm/AbsAppSnapshotController;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    .line 65
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mTmpTasks:Landroid/util/ArraySet;

    .line 66
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mHandler:Landroid/os/Handler;

    .line 73
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 75
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111014d

    .line 76
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 77
    invoke-virtual {p0, v0}, Lcom/android/server/wm/AbsAppSnapshotController;->setSnapshotEnabled(Z)V

    .line 78
    new-instance v0, Lcom/android/server/wm/ActivitySnapshotController$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/android/server/wm/ActivitySnapshotController$$ExternalSyntheticLambda3;-><init>()V

    invoke-static {p1, v0}, Lcom/android/server/wm/TaskSnapshotController;->createPersistInfoProvider(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/BaseAppSnapshotPersister$DirectoryResolver;)Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/TaskSnapshotController;->mPersistInfoProvider:Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;

    .line 81
    new-instance v0, Lcom/android/server/wm/TaskSnapshotPersister;

    .line 84
    invoke-virtual {p0}, Lcom/android/server/wm/AbsAppSnapshotController;->shouldDisableSnapshots()Z

    move-result v1

    invoke-direct {v0, p2, p1, v1}, Lcom/android/server/wm/TaskSnapshotPersister;-><init>(Lcom/android/server/wm/SnapshotPersistQueue;Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;Z)V

    iput-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    .line 85
    new-instance p2, Lcom/android/server/wm/TaskSnapshotCache;

    new-instance v0, Lcom/android/server/wm/AppSnapshotLoader;

    invoke-direct {v0, p1}, Lcom/android/server/wm/AppSnapshotLoader;-><init>(Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;)V

    invoke-direct {p2, v0}, Lcom/android/server/wm/TaskSnapshotCache;-><init>(Lcom/android/server/wm/AppSnapshotLoader;)V

    invoke-virtual {p0, p2}, Lcom/android/server/wm/AbsAppSnapshotController;->initialize(Lcom/android/server/wm/SnapshotCache;)V

    const/4 p1, 0x0

    .line 88
    iput-boolean p1, p0, Lcom/android/server/wm/TaskSnapshotController;->mOnlyCacheLowResSnapshot:Z

    return-void
.end method

.method public static createPersistInfoProvider(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/BaseAppSnapshotPersister$DirectoryResolver;)Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;
    .registers 11

    .line 93
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10500fe

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    .line 95
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x105010c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v1

    const/4 v2, 0x0

    cmpg-float v3, v1, v2

    if-ltz v3, :cond_63

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v4, v3, v1

    if-lez v4, :cond_63

    cmpg-float v4, v0, v2

    if-lez v4, :cond_5b

    cmpg-float v3, v3, v0

    if-ltz v3, :cond_5b

    cmpg-float v3, v0, v1

    if-lez v3, :cond_53

    cmpl-float v3, v1, v2

    if-lez v3, :cond_3b

    div-float v2, v1, v0

    const/4 v0, 0x1

    :goto_38
    move v6, v0

    move v7, v2

    goto :goto_3d

    :cond_3b
    const/4 v0, 0x0

    goto :goto_38

    .line 117
    :goto_3d
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x11102ae

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    .line 119
    new-instance v3, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;

    const-string v5, "snapshots"

    move-object v4, p1

    invoke-direct/range {v3 .. v8}, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;-><init>(Lcom/android/server/wm/BaseAppSnapshotPersister$DirectoryResolver;Ljava/lang/String;ZFZ)V

    return-object v3

    .line 105
    :cond_53
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "High-res scale must be greater than low-res scale"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 102
    :cond_5b
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "High-res scale must be between 0 and 1"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 99
    :cond_63
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Low-res scale must be between 0 and 1"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public clearSnapshotCache()V
    .registers 1

    .line 335
    iget-object p0, p0, Lcom/android/server/wm/AbsAppSnapshotController;->mCache:Lcom/android/server/wm/SnapshotCache;

    check-cast p0, Lcom/android/server/wm/TaskSnapshotCache;

    invoke-virtual {p0}, Lcom/android/server/wm/SnapshotCache;->clearRunningCache()V

    return-void
.end method

.method public final createImeScreenshot(Lcom/android/server/wm/Task;I)Landroid/window/ScreenCaptureInternal$ScreenshotHardwareBuffer;
    .registers 4

    .line 356
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_8

    return-object v0

    .line 362
    :cond_8
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-eqz p0, :cond_4b

    .line 363
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_4b

    .line 364
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getParentFrame()Landroid/graphics/Rect;

    move-result-object p1

    const/4 v0, 0x0

    .line 365
    invoke-virtual {p1, v0, v0}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 366
    new-instance v0, Landroid/window/ScreenCaptureInternal$LayerCaptureArgs$Builder;

    .line 368
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/window/ScreenCaptureInternal$LayerCaptureArgs$Builder;-><init>(Landroid/view/SurfaceControl;)V

    .line 369
    invoke-virtual {v0, p1}, Landroid/window/ScreenCaptureInternal$LayerCaptureArgs$Builder;->setSourceCrop(Landroid/graphics/Rect;)Landroid/window/ScreenCaptureInternal$CaptureArgs$Builder;

    move-result-object p0

    check-cast p0, Landroid/window/ScreenCaptureInternal$LayerCaptureArgs$Builder;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 370
    invoke-virtual {p0, p1}, Landroid/window/ScreenCaptureInternal$LayerCaptureArgs$Builder;->setFrameScale(F)Landroid/window/ScreenCaptureInternal$CaptureArgs$Builder;

    move-result-object p0

    check-cast p0, Landroid/window/ScreenCaptureInternal$LayerCaptureArgs$Builder;

    .line 371
    invoke-virtual {p0, p2}, Landroid/window/ScreenCaptureInternal$LayerCaptureArgs$Builder;->setPixelFormat(I)Landroid/window/ScreenCaptureInternal$CaptureArgs$Builder;

    move-result-object p0

    check-cast p0, Landroid/window/ScreenCaptureInternal$LayerCaptureArgs$Builder;

    const/4 p1, 0x1

    .line 372
    invoke-virtual {p0, p1}, Landroid/window/ScreenCaptureInternal$LayerCaptureArgs$Builder;->setSecureContentPolicy(I)Landroid/window/ScreenCaptureInternal$CaptureArgs$Builder;

    move-result-object p0

    check-cast p0, Landroid/window/ScreenCaptureInternal$LayerCaptureArgs$Builder;

    .line 374
    invoke-virtual {p0}, Landroid/window/ScreenCaptureInternal$LayerCaptureArgs$Builder;->build()Landroid/window/ScreenCaptureInternal$LayerCaptureArgs;

    move-result-object p0

    .line 375
    invoke-static {p0}, Landroid/window/ScreenCaptureInternal;->captureLayers(Landroid/window/ScreenCaptureInternal$LayerCaptureArgs;)Landroid/window/ScreenCaptureInternal$ScreenshotHardwareBuffer;

    move-result-object p0

    return-object p0

    :cond_4b
    return-object v0
.end method

.method public createLowResSnapshot(Landroid/window/TaskSnapshot;)Landroid/window/TaskSnapshot;
    .registers 3

    .line 306
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mPersistInfoProvider:Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;

    invoke-virtual {v0}, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;->enableLowResSnapshots()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 p0, 0x0

    return-object p0

    .line 309
    :cond_a
    iget-object p0, p0, Lcom/android/server/wm/TaskSnapshotController;->mPersistInfoProvider:Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;

    .line 310
    invoke-virtual {p0}, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;->lowResScaleFactor()F

    move-result p0

    .line 309
    invoke-static {p1, p0}, Lcom/android/server/wm/TaskSnapshotConvertUtil;->convertSnapshotToLowRes(Landroid/window/TaskSnapshot;F)Landroid/window/TaskSnapshot;

    move-result-object p0

    return-object p0
.end method

.method public findAppTokenForSnapshot(Lcom/android/server/wm/Task;)Lcom/android/server/wm/ActivityRecord;
    .registers 2

    .line 344
    new-instance p0, Lcom/android/server/wm/TaskSnapshotController$$ExternalSyntheticLambda3;

    invoke-direct {p0}, Lcom/android/server/wm/TaskSnapshotController$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic findAppTokenForSnapshot(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/ActivityRecord;
    .registers 2

    .line 61
    check-cast p1, Lcom/android/server/wm/Task;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskSnapshotController;->findAppTokenForSnapshot(Lcom/android/server/wm/Task;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    return-object p0
.end method

.method public getLetterboxInsets(Lcom/android/server/wm/ActivityRecord;)Landroid/graphics/Rect;
    .registers 2

    .line 410
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getLetterboxInsets()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public getRecordSnapshotSupplier(Lcom/android/server/wm/Task;I)Lcom/android/server/wm/AbsAppSnapshotController$SnapshotSupplier;
    .registers 4

    .line 169
    new-instance v0, Lcom/android/server/wm/TaskSnapshotController$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/server/wm/TaskSnapshotController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/TaskSnapshotController;ILcom/android/server/wm/Task;)V

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/AbsAppSnapshotController;->recordSnapshotInner(Lcom/android/server/wm/WindowContainer;ZLjava/util/function/Consumer;)Lcom/android/server/wm/AbsAppSnapshotController$SnapshotSupplier;

    move-result-object p0

    return-object p0
.end method

.method public getSnapshot(II)Landroid/window/TaskSnapshot;
    .registers 4

    const/4 v0, 0x0

    .line 255
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/TaskSnapshotController;->getSnapshot(III)Landroid/window/TaskSnapshot;

    move-result-object p0

    return-object p0
.end method

.method public getSnapshot(III)Landroid/window/TaskSnapshot;
    .registers 5

    const/4 v0, 0x2

    if-ne p2, v0, :cond_c

    .line 278
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mPersistInfoProvider:Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;

    .line 279
    invoke-virtual {v0}, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;->enableLowResSnapshots()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 p2, 0x1

    .line 282
    :cond_c
    iget-object p0, p0, Lcom/android/server/wm/AbsAppSnapshotController;->mCache:Lcom/android/server/wm/SnapshotCache;

    check-cast p0, Lcom/android/server/wm/TaskSnapshotCache;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/TaskSnapshotCache;->getSnapshot(III)Landroid/window/TaskSnapshot;

    move-result-object p0

    return-object p0
.end method

.method public getSnapshotCaptureTime(I)J
    .registers 4

    .line 320
    iget-object p0, p0, Lcom/android/server/wm/AbsAppSnapshotController;->mCache:Lcom/android/server/wm/SnapshotCache;

    check-cast p0, Lcom/android/server/wm/TaskSnapshotCache;

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/wm/TaskSnapshotCache;->getSnapshot(III)Landroid/window/TaskSnapshot;

    move-result-object p0

    if-eqz p0, :cond_11

    .line 326
    invoke-virtual {p0}, Landroid/window/TaskSnapshot;->getCaptureTime()J

    move-result-wide p0

    return-wide p0

    :cond_11
    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method public getSnapshotFromDisk(IIZI)Landroid/window/TaskSnapshot;
    .registers 6

    .line 292
    iget-object v0, p0, Lcom/android/server/wm/AbsAppSnapshotController;->mCache:Lcom/android/server/wm/SnapshotCache;

    check-cast v0, Lcom/android/server/wm/TaskSnapshotCache;

    if-eqz p3, :cond_10

    iget-object p0, p0, Lcom/android/server/wm/TaskSnapshotController;->mPersistInfoProvider:Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;

    .line 293
    invoke-virtual {p0}, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;->enableLowResSnapshots()Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    .line 292
    :goto_11
    invoke-virtual {v0, p1, p2, p0, p4}, Lcom/android/server/wm/TaskSnapshotCache;->getSnapshotFromDisk(IIZI)Landroid/window/TaskSnapshot;

    move-result-object p0

    return-object p0
.end method

.method public getTaskDescription(Lcom/android/server/wm/Task;)Landroid/app/ActivityManager$TaskDescription;
    .registers 2

    .line 405
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getTaskDescription()Landroid/app/ActivityManager$TaskDescription;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getTaskDescription(Lcom/android/server/wm/WindowContainer;)Landroid/app/ActivityManager$TaskDescription;
    .registers 2

    .line 61
    check-cast p1, Lcom/android/server/wm/Task;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskSnapshotController;->getTaskDescription(Lcom/android/server/wm/Task;)Landroid/app/ActivityManager$TaskDescription;

    move-result-object p0

    return-object p0
.end method

.method public getTopActivity(Lcom/android/server/wm/Task;)Lcom/android/server/wm/ActivityRecord;
    .registers 2

    .line 400
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getTopActivity(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/ActivityRecord;
    .registers 2

    .line 61
    check-cast p1, Lcom/android/server/wm/Task;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskSnapshotController;->getTopActivity(Lcom/android/server/wm/Task;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic lambda$getRecordSnapshotSupplier$0(ILcom/android/server/wm/Task;Landroid/window/TaskSnapshot;)V
    .registers 6

    if-eqz p1, :cond_5

    .line 171
    invoke-virtual {p3, p1}, Landroid/window/TaskSnapshot;->addReference(I)V

    .line 173
    :cond_5
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result p1

    if-nez p1, :cond_25

    .line 174
    iget-boolean p1, p0, Lcom/android/server/wm/TaskSnapshotController;->mOnlyCacheLowResSnapshot:Z

    if-eqz p1, :cond_18

    .line 175
    invoke-virtual {p3}, Landroid/window/TaskSnapshot;->getId()J

    move-result-wide v0

    invoke-virtual {p0, p2, v0, v1}, Lcom/android/server/wm/TaskSnapshotController;->updateLowResToCacheFunction(Lcom/android/server/wm/Task;J)Ljava/util/function/Consumer;

    move-result-object p1

    goto :goto_19

    :cond_18
    const/4 p1, 0x0

    .line 176
    :goto_19
    iget-object p0, p0, Lcom/android/server/wm/TaskSnapshotController;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    iget v0, p2, Lcom/android/server/wm/Task;->mTaskId:I

    iget v1, p2, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {p0, v0, v1, p3, p1}, Lcom/android/server/wm/TaskSnapshotPersister;->persistSnapshotAndConvert(IILandroid/window/TaskSnapshot;Ljava/util/function/Consumer;)V

    .line 178
    invoke-virtual {p2, p3}, Lcom/android/server/wm/Task;->onSnapshotChanged(Landroid/window/TaskSnapshot;)V

    :cond_25
    return-void
.end method

.method public final synthetic lambda$prepareShutdown$3(Lcom/android/server/wm/Task;Landroid/window/TaskSnapshot;)V
    .registers 4

    .line 445
    iget-object p0, p0, Lcom/android/server/wm/TaskSnapshotController;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    iget v0, p1, Lcom/android/server/wm/Task;->mTaskId:I

    iget p1, p1, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/wm/TaskSnapshotPersister;->persistSnapshot(IILandroid/window/TaskSnapshot;)V

    return-void
.end method

.method public final synthetic lambda$prepareShutdown$4(Ljava/util/ArrayList;Lcom/android/server/wm/Task;)V
    .registers 5

    .line 440
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result v0

    if-nez v0, :cond_1e

    const/4 v0, 0x1

    .line 441
    invoke-virtual {p0, p2, v0}, Lcom/android/server/wm/AbsAppSnapshotController;->captureSnapshot(Lcom/android/server/wm/WindowContainer;Z)Lcom/android/server/wm/AbsAppSnapshotController$SnapshotSupplier;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 444
    new-instance v1, Lcom/android/server/wm/TaskSnapshotController$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p2}, Lcom/android/server/wm/TaskSnapshotController$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/wm/TaskSnapshotController;Lcom/android/server/wm/Task;)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/AbsAppSnapshotController$SnapshotSupplier;->setConsumer(Ljava/util/function/Consumer;)V

    .line 446
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1e
    return-void
.end method

.method public final synthetic lambda$screenTurningOff$5(ILcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;)V
    .registers 4

    .line 476
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/AbsAppSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0
    :try_end_8
    .catchall {:try_start_0 .. :try_end_8} :catchall_13

    .line 477
    :try_start_8
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskSnapshotController;->snapshotForSleeping(I)V

    .line 478
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_8 .. :try_end_c} :catchall_15

    :try_start_c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_13

    .line 480
    invoke-interface {p2}, Lcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;->onScreenOff()V

    return-void

    :catchall_13
    move-exception p0

    goto :goto_1b

    :catchall_15
    move-exception p0

    .line 478
    :try_start_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    :try_start_17
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
    :try_end_1b
    .catchall {:try_start_17 .. :try_end_1b} :catchall_13

    .line 480
    :goto_1b
    invoke-interface {p2}, Lcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;->onScreenOff()V

    .line 481
    throw p0
.end method

.method public final synthetic lambda$snapshotForSleeping$6(ZLcom/android/server/wm/Task;)V
    .registers 3

    if-nez p1, :cond_9

    .line 500
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_1a

    .line 506
    :cond_9
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_1a

    invoke-virtual {p2}, Lcom/android/server/wm/Task;->isAnimatingByRecents()Z

    move-result p1

    if-nez p1, :cond_1a

    .line 507
    iget-object p0, p0, Lcom/android/server/wm/TaskSnapshotController;->mTmpTasks:Landroid/util/ArraySet;

    invoke-virtual {p0, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_1a
    :goto_1a
    return-void
.end method

.method public final synthetic lambda$updateLowResToCacheFunction$1(Lcom/android/server/wm/Task;JLcom/android/server/wm/BaseAppSnapshotPersister$LowResSnapshotSupplier;)V
    .registers 11

    .line 187
    iget-object v0, p0, Lcom/android/server/wm/AbsAppSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 188
    :try_start_8
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->isAttached()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_10

    goto :goto_31

    .line 191
    :cond_10
    iget-object v1, p0, Lcom/android/server/wm/AbsAppSnapshotController;->mCache:Lcom/android/server/wm/SnapshotCache;

    check-cast v1, Lcom/android/server/wm/TaskSnapshotCache;

    iget v3, p1, Lcom/android/server/wm/Task;->mTaskId:I

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v4, v5}, Lcom/android/server/wm/TaskSnapshotCache;->getSnapshot(III)Landroid/window/TaskSnapshot;

    move-result-object v1

    if-eqz v1, :cond_31

    .line 193
    invoke-virtual {v1}, Landroid/window/TaskSnapshot;->isLowResolution()Z

    move-result v3

    if-nez v3, :cond_31

    .line 194
    invoke-virtual {v1}, Landroid/window/TaskSnapshot;->getId()J

    move-result-wide v3

    cmp-long p2, v3, p2

    if-eqz p2, :cond_2d

    goto :goto_31

    :cond_2d
    move v2, v5

    goto :goto_31

    :catchall_2f
    move-exception p0

    goto :goto_79

    .line 198
    :cond_31
    :goto_31
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_2f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    if-eqz v2, :cond_3b

    .line 200
    invoke-interface {p4}, Lcom/android/server/wm/BaseAppSnapshotPersister$LowResSnapshotSupplier;->abort()V

    return-void

    :cond_3b
    const-wide/16 p2, 0x20

    .line 204
    :try_start_3d
    const-string v0, "updateLowSnapshotToCache"

    invoke-static {p2, p3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 205
    invoke-interface {p4}, Lcom/android/server/wm/BaseAppSnapshotPersister$LowResSnapshotSupplier;->getLowResSnapshot()Landroid/window/TaskSnapshot;

    move-result-object p4
    :try_end_46
    .catchall {:try_start_3d .. :try_end_46} :catchall_6e

    if-nez p4, :cond_4c

    .line 216
    invoke-static {p2, p3}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    .line 209
    :cond_4c
    :try_start_4c
    iget-object v0, p0, Lcom/android/server/wm/AbsAppSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0
    :try_end_54
    .catchall {:try_start_4c .. :try_end_54} :catchall_6e

    .line 210
    :try_start_54
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->isAttached()Z

    move-result v1

    if-eqz v1, :cond_63

    .line 211
    invoke-virtual {p0, p1, p4}, Lcom/android/server/wm/TaskSnapshotController;->updateCacheWithLowResSnapshotIfNeeded(Lcom/android/server/wm/Task;Landroid/window/TaskSnapshot;)Z

    move-result p0

    if-nez p0, :cond_66

    goto :goto_63

    :catchall_61
    move-exception p0

    goto :goto_70

    .line 212
    :cond_63
    :goto_63
    invoke-virtual {p4}, Landroid/window/TaskSnapshot;->closeBuffer()V

    .line 214
    :cond_66
    monitor-exit v0
    :try_end_67
    .catchall {:try_start_54 .. :try_end_67} :catchall_61

    :try_start_67
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_6a
    .catchall {:try_start_67 .. :try_end_6a} :catchall_6e

    .line 216
    invoke-static {p2, p3}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_6e
    move-exception p0

    goto :goto_75

    .line 214
    :goto_70
    :try_start_70
    monitor-exit v0
    :try_end_71
    .catchall {:try_start_70 .. :try_end_71} :catchall_61

    :try_start_71
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
    :try_end_75
    .catchall {:try_start_71 .. :try_end_75} :catchall_6e

    .line 216
    :goto_75
    invoke-static {p2, p3}, Landroid/os/Trace;->traceEnd(J)V

    .line 217
    throw p0

    .line 198
    :goto_79
    :try_start_79
    monitor-exit v0
    :try_end_7a
    .catchall {:try_start_79 .. :try_end_7a} :catchall_2f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final synthetic lambda$updateLowResToCacheFunction$2(Lcom/android/server/wm/Task;JLcom/android/server/wm/BaseAppSnapshotPersister$LowResSnapshotSupplier;)V
    .registers 12

    .line 185
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/wm/TaskSnapshotController$$ExternalSyntheticLambda8;

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wm/TaskSnapshotController$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/wm/TaskSnapshotController;Lcom/android/server/wm/Task;JLcom/android/server/wm/BaseAppSnapshotPersister$LowResSnapshotSupplier;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public prepareShutdown()V
    .registers 8

    .line 433
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 434
    iget-object v1, p0, Lcom/android/server/wm/AbsAppSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v1

    .line 436
    :try_start_d
    iget-object v2, p0, Lcom/android/server/wm/TaskSnapshotController;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    iget-object v2, v2, Lcom/android/server/wm/BaseAppSnapshotPersister;->mSnapshotPersistQueue:Lcom/android/server/wm/SnapshotPersistQueue;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/server/wm/SnapshotPersistQueue;->setPaused(Z)V

    .line 437
    iget-object v2, p0, Lcom/android/server/wm/TaskSnapshotController;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    iget-object v2, v2, Lcom/android/server/wm/BaseAppSnapshotPersister;->mSnapshotPersistQueue:Lcom/android/server/wm/SnapshotPersistQueue;

    invoke-virtual {v2}, Lcom/android/server/wm/SnapshotPersistQueue;->prepareShutdown()V

    const/4 v2, 0x0

    move v4, v2

    .line 438
    :goto_1e
    iget-object v5, p0, Lcom/android/server/wm/AbsAppSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v5

    if-ge v4, v5, :cond_3f

    .line 439
    iget-object v5, p0, Lcom/android/server/wm/AbsAppSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v5, v4}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/DisplayContent;

    new-instance v6, Lcom/android/server/wm/TaskSnapshotController$$ExternalSyntheticLambda0;

    invoke-direct {v6, p0, v0}, Lcom/android/server/wm/TaskSnapshotController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/TaskSnapshotController;Ljava/util/ArrayList;)V

    invoke-virtual {v5, v6, v3}, Lcom/android/server/wm/DisplayArea;->forAllLeafTasks(Ljava/util/function/Consumer;Z)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1e

    :catchall_3d
    move-exception p0

    goto :goto_70

    .line 451
    :cond_3f
    monitor-exit v1
    :try_end_40
    .catchall {:try_start_d .. :try_end_40} :catchall_3d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 452
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v3

    :goto_48
    if-ltz v1, :cond_56

    .line 453
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/AbsAppSnapshotController$SnapshotSupplier;

    invoke-virtual {v3}, Lcom/android/server/wm/AbsAppSnapshotController$SnapshotSupplier;->handleSnapshot()V

    add-int/lit8 v1, v1, -0x1

    goto :goto_48

    .line 455
    :cond_56
    iget-object v0, p0, Lcom/android/server/wm/AbsAppSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 456
    :try_start_5e
    iget-object p0, p0, Lcom/android/server/wm/TaskSnapshotController;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    iget-object p0, p0, Lcom/android/server/wm/BaseAppSnapshotPersister;->mSnapshotPersistQueue:Lcom/android/server/wm/SnapshotPersistQueue;

    invoke-virtual {p0, v2}, Lcom/android/server/wm/SnapshotPersistQueue;->setPaused(Z)V

    .line 457
    monitor-exit v0
    :try_end_66
    .catchall {:try_start_5e .. :try_end_66} :catchall_6a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_6a
    move-exception p0

    :try_start_6b
    monitor-exit v0
    :try_end_6c
    .catchall {:try_start_6b .. :try_end_6c} :catchall_6a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    .line 451
    :goto_70
    :try_start_70
    monitor-exit v1
    :try_end_71
    .catchall {:try_start_70 .. :try_end_71} :catchall_3d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public recordSnapshot(Lcom/android/server/wm/Task;)V
    .registers 4

    .line 146
    invoke-virtual {p0}, Lcom/android/server/wm/AbsAppSnapshotController;->shouldDisableSnapshots()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_e

    :cond_7
    const/4 v0, 0x0

    .line 149
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/TaskSnapshotController;->getRecordSnapshotSupplier(Lcom/android/server/wm/Task;I)Lcom/android/server/wm/AbsAppSnapshotController$SnapshotSupplier;

    move-result-object v0

    if-nez v0, :cond_f

    :goto_e
    return-void

    .line 153
    :cond_f
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AbsAppSnapshotController;->getSnapshotMode(Lcom/android/server/wm/WindowContainer;)I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_23

    .line 155
    iget-object p0, p0, Lcom/android/server/wm/AbsAppSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    new-instance p1, Lcom/android/server/wm/TaskSnapshotController$$ExternalSyntheticLambda1;

    invoke-direct {p1, v0}, Lcom/android/server/wm/TaskSnapshotController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/AbsAppSnapshotController$SnapshotSupplier;)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 157
    :cond_23
    invoke-virtual {v0}, Lcom/android/server/wm/AbsAppSnapshotController$SnapshotSupplier;->handleSnapshot()V

    return-void
.end method

.method public recordSnapshot(Lcom/android/server/wm/Task;Lcom/android/server/wm/Transition$ChangeInfo;)V
    .registers 3

    .line 137
    iput-object p2, p0, Lcom/android/server/wm/AbsAppSnapshotController;->mCurrentChangeInfo:Lcom/android/server/wm/Transition$ChangeInfo;

    const/4 p2, 0x0

    .line 139
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskSnapshotController;->recordSnapshot(Lcom/android/server/wm/Task;)V
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_9

    .line 141
    iput-object p2, p0, Lcom/android/server/wm/AbsAppSnapshotController;->mCurrentChangeInfo:Lcom/android/server/wm/Transition$ChangeInfo;

    return-void

    :catchall_9
    move-exception p1

    iput-object p2, p0, Lcom/android/server/wm/AbsAppSnapshotController;->mCurrentChangeInfo:Lcom/android/server/wm/Transition$ChangeInfo;

    .line 142
    throw p1
.end method

.method public removeAndDeleteSnapshot(II)V
    .registers 5

    .line 414
    iget-object v0, p0, Lcom/android/server/wm/AbsAppSnapshotController;->mCache:Lcom/android/server/wm/SnapshotCache;

    check-cast v0, Lcom/android/server/wm/TaskSnapshotCache;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/SnapshotCache;->onIdRemoved(Ljava/lang/Integer;)V

    .line 415
    iget-object p0, p0, Lcom/android/server/wm/TaskSnapshotController;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/TaskSnapshotPersister;->removeSnapshot(II)V

    return-void
.end method

.method public removeObsoleteTaskFiles(Landroid/util/ArraySet;[I)V
    .registers 3

    .line 426
    iget-object p0, p0, Lcom/android/server/wm/TaskSnapshotController;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/TaskSnapshotPersister;->removeObsoleteFiles(Landroid/util/ArraySet;[I)V

    return-void
.end method

.method public removeSnapshotCache(I)V
    .registers 2

    .line 419
    iget-object p0, p0, Lcom/android/server/wm/AbsAppSnapshotController;->mCache:Lcom/android/server/wm/SnapshotCache;

    check-cast p0, Lcom/android/server/wm/TaskSnapshotCache;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/SnapshotCache;->removeRunningEntry(Ljava/lang/Integer;)V

    return-void
.end method

.method public screenTurningOff(ILcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;)V
    .registers 5

    .line 468
    invoke-virtual {p0}, Lcom/android/server/wm/AbsAppSnapshotController;->shouldDisableSnapshots()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 469
    invoke-interface {p2}, Lcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;->onScreenOff()V

    return-void

    .line 474
    :cond_a
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/wm/TaskSnapshotController$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/wm/TaskSnapshotController$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/wm/TaskSnapshotController;ILcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public screenshotImeFromAttachedTask(Lcom/android/server/wm/Task;)Landroid/window/ScreenCaptureInternal$ScreenshotHardwareBuffer;
    .registers 3

    .line 389
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AbsAppSnapshotController;->checkIfReadyToScreenshot(Lcom/android/server/wm/WindowContainer;)Landroid/util/Pair;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 392
    :cond_8
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mPersistInfoProvider:Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;

    invoke-virtual {v0}, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;->use16BitFormat()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x4

    goto :goto_13

    :cond_12
    const/4 v0, 0x1

    .line 395
    :goto_13
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/TaskSnapshotController;->createImeScreenshot(Lcom/android/server/wm/Task;I)Landroid/window/ScreenCaptureInternal$ScreenshotHardwareBuffer;

    move-result-object p0

    return-object p0
.end method

.method public snapshotForSleeping(I)V
    .registers 5

    .line 487
    invoke-virtual {p0}, Lcom/android/server/wm/AbsAppSnapshotController;->shouldDisableSnapshots()Z

    move-result v0

    if-nez v0, :cond_3a

    iget-object v0, p0, Lcom/android/server/wm/AbsAppSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v1, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayEnabled:Z

    if-nez v1, :cond_d

    goto :goto_3a

    .line 490
    :cond_d
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-nez v0, :cond_16

    goto :goto_3a

    :cond_16
    const/4 v1, 0x1

    if-nez p1, :cond_27

    .line 496
    iget-object p1, p0, Lcom/android/server/wm/AbsAppSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, p1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget p1, p1, Lcom/android/server/wm/WindowManagerService;->mCurrentUserId:I

    .line 497
    invoke-interface {v2, p1}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardSecure(I)Z

    move-result p1

    if-eqz p1, :cond_27

    move p1, v1

    goto :goto_28

    :cond_27
    const/4 p1, 0x0

    .line 498
    :goto_28
    iget-object v2, p0, Lcom/android/server/wm/TaskSnapshotController;->mTmpTasks:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->clear()V

    .line 499
    new-instance v2, Lcom/android/server/wm/TaskSnapshotController$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0, p1}, Lcom/android/server/wm/TaskSnapshotController$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/wm/TaskSnapshotController;Z)V

    invoke-virtual {v0, v2, v1}, Lcom/android/server/wm/DisplayArea;->forAllLeafTasks(Ljava/util/function/Consumer;Z)V

    .line 510
    iget-object p1, p0, Lcom/android/server/wm/TaskSnapshotController;->mTmpTasks:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskSnapshotController;->snapshotTasks(Landroid/util/ArraySet;)V

    :cond_3a
    :goto_3a
    return-void
.end method

.method public snapshotTasks(Landroid/util/ArraySet;)V
    .registers 4

    .line 124
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_14

    .line 125
    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/Task;

    invoke-virtual {p0, v1}, Lcom/android/server/wm/TaskSnapshotController;->recordSnapshot(Lcom/android/server/wm/Task;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_14
    return-void
.end method

.method public updateCacheWithLowResSnapshotIfNeeded(Lcom/android/server/wm/Task;Landroid/window/TaskSnapshot;)Z
    .registers 7

    .line 230
    iget v0, p1, Lcom/android/server/wm/Task;->mTaskId:I

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/TaskSnapshotController;->getSnapshot(II)Landroid/window/TaskSnapshot;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 232
    invoke-virtual {v0}, Landroid/window/TaskSnapshot;->isLowResolution()Z

    move-result v1

    if-nez v1, :cond_24

    invoke-virtual {v0}, Landroid/window/TaskSnapshot;->getId()J

    move-result-wide v0

    invoke-virtual {p2}, Landroid/window/TaskSnapshot;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_24

    .line 233
    iget-object p0, p0, Lcom/android/server/wm/AbsAppSnapshotController;->mCache:Lcom/android/server/wm/SnapshotCache;

    check-cast p0, Lcom/android/server/wm/TaskSnapshotCache;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/TaskSnapshotCache;->putSnapshot(Lcom/android/server/wm/Task;Landroid/window/TaskSnapshot;)V

    const/4 p0, 0x1

    return p0

    :cond_24
    const/4 p0, 0x0

    return p0
.end method

.method public final updateLowResToCacheFunction(Lcom/android/server/wm/Task;J)Ljava/util/function/Consumer;
    .registers 5

    .line 185
    new-instance v0, Lcom/android/server/wm/TaskSnapshotController$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/wm/TaskSnapshotController$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/wm/TaskSnapshotController;Lcom/android/server/wm/Task;J)V

    return-object v0
.end method

.method public use16BitFormat()Z
    .registers 1

    .line 350
    iget-object p0, p0, Lcom/android/server/wm/TaskSnapshotController;->mPersistInfoProvider:Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;

    invoke-virtual {p0}, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;->use16BitFormat()Z

    move-result p0

    return p0
.end method

.method public waitFlush(J)V
    .registers 3

    .line 461
    iget-object p0, p0, Lcom/android/server/wm/TaskSnapshotController;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    iget-object p0, p0, Lcom/android/server/wm/BaseAppSnapshotPersister;->mSnapshotPersistQueue:Lcom/android/server/wm/SnapshotPersistQueue;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/SnapshotPersistQueue;->waitFlush(J)V

    return-void
.end method
