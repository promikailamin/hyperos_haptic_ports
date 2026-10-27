.class public Lcom/android/server/wm/DeferredDisplayUpdater;
.super Ljava/lang/Object;
.source "DeferredDisplayUpdater.java"


# static fields
.field static final DEFERRABLE_FIELDS:Lcom/android/server/wm/utils/DisplayInfoOverrides$DisplayInfoFieldsUpdater;


# instance fields
.field public final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field public mInPhysicalDisplayChangeTransition:Z

.field public mLastDisplayInfo:Landroid/view/DisplayInfo;

.field public mLastWmDisplayInfo:Landroid/view/DisplayInfo;

.field public final mNonOverrideDisplayInfo:Landroid/view/DisplayInfo;

.field public final mOutputDisplayInfo:Landroid/view/DisplayInfo;

.field public mPendingKeyguardDrawing:Z

.field public final mScreenUnblockTimeoutRunnable:Ljava/lang/Runnable;

.field public mScreenUnblocker:Landroid/os/Message;

.field public mShouldWaitForTransitionWhenScreenOn:Z

.field public final mWaitingForKeyguardDrawnConditions:Ljava/util/List;


# direct methods
.method public static synthetic $r8$lambda$--t3mf11gpWn1Uw3-b-B1MpXHHQ(Landroid/view/DisplayInfo;Landroid/view/DisplayInfo;)V
    .registers 3

    .line 69
    iget-object v0, p1, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    iput-object v0, p0, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    .line 70
    iget-object v0, p1, Landroid/view/DisplayInfo;->address:Landroid/view/DisplayAddress;

    iput-object v0, p0, Landroid/view/DisplayInfo;->address:Landroid/view/DisplayAddress;

    .line 71
    iget-boolean v0, p1, Landroid/view/DisplayInfo;->canHostTasks:Z

    iput-boolean v0, p0, Landroid/view/DisplayInfo;->canHostTasks:Z

    .line 74
    sget-object v0, Lcom/android/server/wm/utils/DisplayInfoOverrides;->WM_OVERRIDE_FIELDS:Lcom/android/server/wm/utils/DisplayInfoOverrides$DisplayInfoFieldsUpdater;

    invoke-interface {v0, p0, p1}, Lcom/android/server/wm/utils/DisplayInfoOverrides$DisplayInfoFieldsUpdater;->setFields(Landroid/view/DisplayInfo;Landroid/view/DisplayInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$CHPXMqT23O4nJOObP4bPI3REhts(Lcom/android/server/wm/DeferredDisplayUpdater;Landroid/view/DisplayInfo;Ljava/lang/Runnable;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/DeferredDisplayUpdater;->lambda$updateDisplayInfo$2(Landroid/view/DisplayInfo;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$D0ELwfiuq9oc1hihTzVJZBd7ViI(Lcom/android/server/wm/DeferredDisplayUpdater;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/wm/DeferredDisplayUpdater;->continueScreenUnblocking()V

    return-void
.end method

.method public static synthetic $r8$lambda$EZQ6K2U_Mo4eFXuwvhvw0yaau6c(Lcom/android/server/wm/DeferredDisplayUpdater;ZLcom/android/server/wm/Transition;Ljava/lang/Runnable;Z)V
    .registers 5

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/wm/DeferredDisplayUpdater;->lambda$requestDisplayChangeTransition$3(ZLcom/android/server/wm/Transition;Ljava/lang/Runnable;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$VN74qy4h8i8d2Gvzo67y7zTLuLY(Lcom/android/server/wm/DeferredDisplayUpdater;Lcom/android/server/wm/Transition;Landroid/window/WindowContainerTransaction;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/DeferredDisplayUpdater;->lambda$onDisplayUpdated$4(Lcom/android/server/wm/Transition;Landroid/window/WindowContainerTransaction;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wDFFq-H-LkC1KuXNimg4MoHXCCI(Lcom/android/server/wm/DeferredDisplayUpdater;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/wm/DeferredDisplayUpdater;->lambda$new$1()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 66
    new-instance v0, Lcom/android/server/wm/DeferredDisplayUpdater$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/wm/DeferredDisplayUpdater$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/android/server/wm/DeferredDisplayUpdater;->DEFERRABLE_FIELDS:Lcom/android/server/wm/utils/DisplayInfoOverrides$DisplayInfoFieldsUpdater;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/DisplayContent;)V
    .registers 4

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DeferredDisplayUpdater;->mNonOverrideDisplayInfo:Landroid/view/DisplayInfo;

    .line 105
    new-instance v1, Landroid/view/DisplayInfo;

    invoke-direct {v1}, Landroid/view/DisplayInfo;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DeferredDisplayUpdater;->mOutputDisplayInfo:Landroid/view/DisplayInfo;

    .line 117
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DeferredDisplayUpdater;->mWaitingForKeyguardDrawnConditions:Ljava/util/List;

    .line 123
    new-instance v1, Lcom/android/server/wm/DeferredDisplayUpdater$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/server/wm/DeferredDisplayUpdater$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/DeferredDisplayUpdater;)V

    iput-object v1, p0, Lcom/android/server/wm/DeferredDisplayUpdater;->mScreenUnblockTimeoutRunnable:Ljava/lang/Runnable;

    .line 129
    iput-object p1, p0, Lcom/android/server/wm/DeferredDisplayUpdater;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 130
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/DisplayInfo;->copyFrom(Landroid/view/DisplayInfo;)V

    return-void
.end method

.method public static calculateDisplayInfoDiff(Landroid/view/DisplayInfo;Landroid/view/DisplayInfo;)I
    .registers 8

    .line 464
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    if-eqz p0, :cond_1c4

    if-nez p1, :cond_e

    goto/16 :goto_1c4

    .line 467
    :cond_e
    iget v0, p0, Landroid/view/DisplayInfo;->layerStack:I

    iget v2, p1, Landroid/view/DisplayInfo;->layerStack:I

    if-ne v0, v2, :cond_13a

    iget v0, p0, Landroid/view/DisplayInfo;->flags:I

    iget v2, p1, Landroid/view/DisplayInfo;->flags:I

    if-ne v0, v2, :cond_13a

    iget v0, p0, Landroid/view/DisplayInfo;->type:I

    iget v2, p1, Landroid/view/DisplayInfo;->type:I

    if-ne v0, v2, :cond_13a

    iget v0, p0, Landroid/view/DisplayInfo;->displayId:I

    iget v2, p1, Landroid/view/DisplayInfo;->displayId:I

    if-ne v0, v2, :cond_13a

    iget v0, p0, Landroid/view/DisplayInfo;->displayGroupId:I

    iget v2, p1, Landroid/view/DisplayInfo;->displayGroupId:I

    if-ne v0, v2, :cond_13a

    iget-object v0, p0, Landroid/view/DisplayInfo;->deviceProductInfo:Landroid/hardware/display/DeviceProductInfo;

    iget-object v2, p1, Landroid/view/DisplayInfo;->deviceProductInfo:Landroid/hardware/display/DeviceProductInfo;

    .line 472
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13a

    iget v0, p0, Landroid/view/DisplayInfo;->modeId:I

    iget v2, p1, Landroid/view/DisplayInfo;->modeId:I

    if-ne v0, v2, :cond_13a

    iget v0, p0, Landroid/view/DisplayInfo;->renderFrameRate:F

    iget v2, p1, Landroid/view/DisplayInfo;->renderFrameRate:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_13a

    iget-boolean v0, p0, Landroid/view/DisplayInfo;->hasArrSupport:Z

    iget-boolean v2, p1, Landroid/view/DisplayInfo;->hasArrSupport:Z

    if-ne v0, v2, :cond_13a

    iget-object v0, p0, Landroid/view/DisplayInfo;->frameRateCategoryRate:Landroid/view/FrameRateCategoryRate;

    iget-object v2, p1, Landroid/view/DisplayInfo;->frameRateCategoryRate:Landroid/view/FrameRateCategoryRate;

    .line 476
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13a

    iget-object v0, p0, Landroid/view/DisplayInfo;->supportedRefreshRates:[F

    iget-object v2, p1, Landroid/view/DisplayInfo;->supportedRefreshRates:[F

    .line 477
    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v0

    if-eqz v0, :cond_13a

    iget v0, p0, Landroid/view/DisplayInfo;->defaultModeId:I

    iget v2, p1, Landroid/view/DisplayInfo;->defaultModeId:I

    if-ne v0, v2, :cond_13a

    iget v0, p0, Landroid/view/DisplayInfo;->userPreferredModeId:I

    iget v2, p1, Landroid/view/DisplayInfo;->userPreferredModeId:I

    if-ne v0, v2, :cond_13a

    iget-object v0, p0, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    iget-object v2, p1, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    .line 480
    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13a

    iget-object v0, p0, Landroid/view/DisplayInfo;->appsSupportedModes:[Landroid/view/Display$Mode;

    iget-object v2, p1, Landroid/view/DisplayInfo;->appsSupportedModes:[Landroid/view/Display$Mode;

    .line 481
    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13a

    iget v0, p0, Landroid/view/DisplayInfo;->colorMode:I

    iget v2, p1, Landroid/view/DisplayInfo;->colorMode:I

    if-ne v0, v2, :cond_13a

    iget-object v0, p0, Landroid/view/DisplayInfo;->supportedColorModes:[I

    iget-object v2, p1, Landroid/view/DisplayInfo;->supportedColorModes:[I

    .line 483
    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_13a

    iget-object v0, p0, Landroid/view/DisplayInfo;->hdrCapabilities:Landroid/view/Display$HdrCapabilities;

    iget-object v2, p1, Landroid/view/DisplayInfo;->hdrCapabilities:Landroid/view/Display$HdrCapabilities;

    .line 484
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13a

    iget-object v0, p0, Landroid/view/DisplayInfo;->userDisabledHdrTypes:[I

    iget-object v2, p1, Landroid/view/DisplayInfo;->userDisabledHdrTypes:[I

    .line 485
    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_13a

    iget-boolean v0, p0, Landroid/view/DisplayInfo;->minimalPostProcessingSupported:Z

    iget-boolean v2, p1, Landroid/view/DisplayInfo;->minimalPostProcessingSupported:Z

    if-ne v0, v2, :cond_13a

    iget-wide v2, p0, Landroid/view/DisplayInfo;->appVsyncOffsetNanos:J

    iget-wide v4, p1, Landroid/view/DisplayInfo;->appVsyncOffsetNanos:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_13a

    iget-wide v2, p0, Landroid/view/DisplayInfo;->presentationDeadlineNanos:J

    iget-wide v4, p1, Landroid/view/DisplayInfo;->presentationDeadlineNanos:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_13a

    iget v0, p0, Landroid/view/DisplayInfo;->state:I

    iget v2, p1, Landroid/view/DisplayInfo;->state:I

    if-ne v0, v2, :cond_13a

    iget v0, p0, Landroid/view/DisplayInfo;->committedState:I

    iget v2, p1, Landroid/view/DisplayInfo;->committedState:I

    if-ne v0, v2, :cond_13a

    iget v0, p0, Landroid/view/DisplayInfo;->ownerUid:I

    iget v2, p1, Landroid/view/DisplayInfo;->ownerUid:I

    if-ne v0, v2, :cond_13a

    iget-object v0, p0, Landroid/view/DisplayInfo;->ownerPackageName:Ljava/lang/String;

    iget-object v2, p1, Landroid/view/DisplayInfo;->ownerPackageName:Ljava/lang/String;

    .line 492
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13a

    iget v0, p0, Landroid/view/DisplayInfo;->removeMode:I

    iget v2, p1, Landroid/view/DisplayInfo;->removeMode:I

    if-ne v0, v2, :cond_13a

    .line 494
    invoke-virtual {p0}, Landroid/view/DisplayInfo;->getRefreshRate()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/DisplayInfo;->getRefreshRate()F

    move-result v2

    cmpl-float v0, v0, v2

    if-nez v0, :cond_13a

    iget v0, p0, Landroid/view/DisplayInfo;->brightnessMinimum:F

    iget v2, p1, Landroid/view/DisplayInfo;->brightnessMinimum:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_13a

    iget v0, p0, Landroid/view/DisplayInfo;->brightnessMaximum:F

    iget v2, p1, Landroid/view/DisplayInfo;->brightnessMaximum:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_13a

    iget v0, p0, Landroid/view/DisplayInfo;->brightnessDefault:F

    iget v2, p1, Landroid/view/DisplayInfo;->brightnessDefault:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_13a

    iget v0, p0, Landroid/view/DisplayInfo;->brightnessDim:F

    iget v2, p1, Landroid/view/DisplayInfo;->brightnessDim:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_13a

    iget v0, p0, Landroid/view/DisplayInfo;->installOrientation:I

    iget v2, p1, Landroid/view/DisplayInfo;->installOrientation:I

    if-ne v0, v2, :cond_13a

    iget-boolean v0, p0, Landroid/view/DisplayInfo;->isForceSdr:Z

    iget-boolean v2, p1, Landroid/view/DisplayInfo;->isForceSdr:Z

    if-ne v0, v2, :cond_13a

    iget-object v0, p0, Landroid/view/DisplayInfo;->layoutLimitedRefreshRate:Landroid/view/SurfaceControl$RefreshRateRange;

    iget-object v2, p1, Landroid/view/DisplayInfo;->layoutLimitedRefreshRate:Landroid/view/SurfaceControl$RefreshRateRange;

    .line 501
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13a

    iget v0, p0, Landroid/view/DisplayInfo;->hdrSdrRatio:F

    iget v2, p1, Landroid/view/DisplayInfo;->hdrSdrRatio:F

    .line 502
    invoke-static {v0, v2}, Lcom/android/internal/display/BrightnessSynchronizer;->floatEquals(FF)Z

    move-result v0

    if-eqz v0, :cond_13a

    iget-object v0, p0, Landroid/view/DisplayInfo;->thermalRefreshRateThrottling:Landroid/util/SparseArray;

    iget-object v2, p1, Landroid/view/DisplayInfo;->thermalRefreshRateThrottling:Landroid/util/SparseArray;

    .line 503
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->contentEquals(Landroid/util/SparseArray;)Z

    move-result v0

    if-eqz v0, :cond_13a

    iget-object v0, p0, Landroid/view/DisplayInfo;->thermalBrightnessThrottlingDataId:Ljava/lang/String;

    iget-object v2, p1, Landroid/view/DisplayInfo;->thermalBrightnessThrottlingDataId:Ljava/lang/String;

    .line 505
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13b

    :cond_13a
    const/4 v1, 0x2

    .line 511
    :cond_13b
    iget v0, p0, Landroid/view/DisplayInfo;->appWidth:I

    iget v2, p1, Landroid/view/DisplayInfo;->appWidth:I

    if-ne v0, v2, :cond_1c1

    iget v0, p0, Landroid/view/DisplayInfo;->appHeight:I

    iget v2, p1, Landroid/view/DisplayInfo;->appHeight:I

    if-ne v0, v2, :cond_1c1

    iget v0, p0, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    iget v2, p1, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    if-ne v0, v2, :cond_1c1

    iget v0, p0, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    iget v2, p1, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    if-ne v0, v2, :cond_1c1

    iget v0, p0, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    iget v2, p1, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    if-ne v0, v2, :cond_1c1

    iget v0, p0, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    iget v2, p1, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    if-ne v0, v2, :cond_1c1

    iget v0, p0, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v2, p1, Landroid/view/DisplayInfo;->logicalWidth:I

    if-ne v0, v2, :cond_1c1

    iget v0, p0, Landroid/view/DisplayInfo;->logicalHeight:I

    iget v2, p1, Landroid/view/DisplayInfo;->logicalHeight:I

    if-ne v0, v2, :cond_1c1

    iget v0, p0, Landroid/view/DisplayInfo;->physicalXDpi:F

    iget v2, p1, Landroid/view/DisplayInfo;->physicalXDpi:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_1c1

    iget v0, p0, Landroid/view/DisplayInfo;->physicalYDpi:F

    iget v2, p1, Landroid/view/DisplayInfo;->physicalYDpi:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_1c1

    iget v0, p0, Landroid/view/DisplayInfo;->rotation:I

    iget v2, p1, Landroid/view/DisplayInfo;->rotation:I

    if-ne v0, v2, :cond_1c1

    iget-object v0, p0, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    iget-object v2, p1, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    .line 522
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c1

    iget v0, p0, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    iget v2, p1, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    if-ne v0, v2, :cond_1c1

    iget-object v0, p0, Landroid/view/DisplayInfo;->roundedCorners:Landroid/view/RoundedCorners;

    iget-object v2, p1, Landroid/view/DisplayInfo;->roundedCorners:Landroid/view/RoundedCorners;

    .line 524
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c1

    iget-object v0, p0, Landroid/view/DisplayInfo;->displayShape:Landroid/view/DisplayShape;

    iget-object v2, p1, Landroid/view/DisplayInfo;->displayShape:Landroid/view/DisplayShape;

    .line 525
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c1

    iget-object v0, p0, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    iget-object v2, p1, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    .line 526
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c1

    iget-object v0, p0, Landroid/view/DisplayInfo;->address:Landroid/view/DisplayAddress;

    iget-object v2, p1, Landroid/view/DisplayInfo;->address:Landroid/view/DisplayAddress;

    .line 527
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c1

    iget-boolean p0, p0, Landroid/view/DisplayInfo;->canHostTasks:Z

    iget-boolean p1, p1, Landroid/view/DisplayInfo;->canHostTasks:Z

    if-eq p0, p1, :cond_1c0

    goto :goto_1c1

    :cond_1c0
    return v1

    :cond_1c1
    :goto_1c1
    or-int/lit8 p0, v1, 0x1

    return p0

    :cond_1c4
    :goto_1c4
    const/4 p0, -0x1

    return p0
.end method


# virtual methods
.method public final applyLatestDisplayInfo()V
    .registers 5

    .line 265
    iget-object v0, p0, Lcom/android/server/wm/DeferredDisplayUpdater;->mOutputDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v1, p0, Lcom/android/server/wm/DeferredDisplayUpdater;->mLastDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v2, p0, Lcom/android/server/wm/DeferredDisplayUpdater;->mLastWmDisplayInfo:Landroid/view/DisplayInfo;

    sget-object v3, Lcom/android/server/wm/DeferredDisplayUpdater;->DEFERRABLE_FIELDS:Lcom/android/server/wm/utils/DisplayInfoOverrides$DisplayInfoFieldsUpdater;

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wm/utils/DisplayInfoOverrides;->copyDisplayInfoFields(Landroid/view/DisplayInfo;Landroid/view/DisplayInfo;Landroid/view/DisplayInfo;Lcom/android/server/wm/utils/DisplayInfoOverrides$DisplayInfoFieldsUpdater;)V

    .line 267
    iget-object v0, p0, Lcom/android/server/wm/DeferredDisplayUpdater;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p0, p0, Lcom/android/server/wm/DeferredDisplayUpdater;->mOutputDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/DisplayContent;->onDisplayInfoUpdated(Landroid/view/DisplayInfo;)V

    return-void
.end method

.method public final continueScreenUnblocking()V
    .registers 4

    .line 425
    iget-object v0, p0, Lcom/android/server/wm/DeferredDisplayUpdater;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    const/4 v1, 0x0

    .line 426
    :try_start_b
    iput-boolean v1, p0, Lcom/android/server/wm/DeferredDisplayUpdater;->mInPhysicalDisplayChangeTransition:Z

    .line 427
    iput-boolean v1, p0, Lcom/android/server/wm/DeferredDisplayUpdater;->mShouldWaitForTransitionWhenScreenOn:Z

    .line 428
    iget-object v1, p0, Lcom/android/server/wm/DeferredDisplayUpdater;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v2, p0, Lcom/android/server/wm/DeferredDisplayUpdater;->mScreenUnblockTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 429
    iget-object v1, p0, Lcom/android/server/wm/DeferredDisplayUpdater;->mScreenUnblocker:Landroid/os/Message;

    if-nez v1, :cond_25

    .line 430
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_b .. :try_end_1f} :catchall_23

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_23
    move-exception p0

    goto :goto_43

    .line 432
    :cond_25
    :try_start_25
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    const-wide/16 v1, 0x20

    .line 433
    invoke-static {v1, v2}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 434
    const-string v1, "Screen unblock: wait for transition"

    iget-object v2, p0, Lcom/android/server/wm/DeferredDisplayUpdater;->mScreenUnblocker:Landroid/os/Message;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v1, v2}, Landroid/os/Trace;->endAsyncSection(Ljava/lang/String;I)V

    :cond_3b
    const/4 v1, 0x0

    .line 436
    iput-object v1, p0, Lcom/android/server/wm/DeferredDisplayUpdater;->mScreenUnblocker:Landroid/os/Message;

    .line 437
    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_25 .. :try_end_3f} :catchall_23

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_43
    :try_start_43
    monitor-exit v0
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_23

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final finishDisplayUpdate(Landroid/window/WindowContainerTransaction;Lcom/android/server/wm/Transition;)V
    .registers 3

    if-eqz p1, :cond_b

    .line 335
    iget-object p0, p0, Lcom/android/server/wm/DeferredDisplayUpdater;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowOrganizerController;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    .line 341
    :cond_b
    invoke-virtual {p2}, Lcom/android/server/wm/Transition;->setAllReady()V

    return-void
.end method

.method public final getCurrentDisplayChange(ILandroid/graphics/Rect;)Landroid/window/TransitionRequestInfo$DisplayChange;
    .registers 7

    .line 280
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/DeferredDisplayUpdater;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v2, v1, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    iget v1, v1, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v2, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 282
    iget-object v1, p0, Lcom/android/server/wm/DeferredDisplayUpdater;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getRotation()I

    move-result v1

    .line 284
    new-instance v2, Landroid/window/TransitionRequestInfo$DisplayChange;

    iget-object p0, p0, Lcom/android/server/wm/DeferredDisplayUpdater;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 285
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result p0

    invoke-direct {v2, p0}, Landroid/window/TransitionRequestInfo$DisplayChange;-><init>(I)V

    .line 286
    invoke-virtual {v2, p2}, Landroid/window/TransitionRequestInfo$DisplayChange;->setStartAbsBounds(Landroid/graphics/Rect;)Landroid/window/TransitionRequestInfo$DisplayChange;

    .line 287
    invoke-virtual {v2, v0}, Landroid/window/TransitionRequestInfo$DisplayChange;->setEndAbsBounds(Landroid/graphics/Rect;)Landroid/window/TransitionRequestInfo$DisplayChange;

    .line 288
    invoke-virtual {v2, p1}, Landroid/window/TransitionRequestInfo$DisplayChange;->setStartRotation(I)Landroid/window/TransitionRequestInfo$DisplayChange;

    .line 289
    invoke-virtual {v2, v1}, Landroid/window/TransitionRequestInfo$DisplayChange;->setEndRotation(I)Landroid/window/TransitionRequestInfo$DisplayChange;

    return-object v2
.end method

.method public final getCurrentDisplayInfo()Landroid/view/DisplayInfo;
    .registers 4

    .line 272
    iget-object v0, p0, Lcom/android/server/wm/DeferredDisplayUpdater;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget v0, v0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    iget-object v2, p0, Lcom/android/server/wm/DeferredDisplayUpdater;->mNonOverrideDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v1, v0, v2}, Landroid/hardware/display/DisplayManagerInternal;->getNonOverrideDisplayInfo(ILandroid/view/DisplayInfo;)V

    .line 274
    new-instance v0, Landroid/view/DisplayInfo;

    iget-object p0, p0, Lcom/android/server/wm/DeferredDisplayUpdater;->mNonOverrideDisplayInfo:Landroid/view/DisplayInfo;

    invoke-direct {v0, p0}, Landroid/view/DisplayInfo;-><init>(Landroid/view/DisplayInfo;)V

    return-object v0
.end method

.method public isDisplaySwitching()Z
    .registers 1

    .line 388
    iget-boolean p0, p0, Lcom/android/server/wm/DeferredDisplayUpdater;->mShouldWaitForTransitionWhenScreenOn:Z

    return p0
.end method

.method public final isPhysicalDisplayUpdated(Landroid/view/DisplayInfo;Landroid/view/DisplayInfo;)Z
    .registers 3

    const/4 p0, 0x1

    if-eqz p1, :cond_f

    if-nez p2, :cond_6

    goto :goto_f

    .line 348
    :cond_6
    iget-object p1, p1, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    iget-object p2, p2, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p0, p1

    :cond_f
    :goto_f
    return p0
.end method

.method public final synthetic lambda$new$1()V
    .registers 3

    .line 124
    const-string v0, "DeferredDisplayUpdater"

    const-string v1, "Timeout waiting for the display switch transition to start"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    invoke-virtual {p0}, Lcom/android/server/wm/DeferredDisplayUpdater;->continueScreenUnblocking()V

    return-void
.end method

.method public final synthetic lambda$onDisplayUpdated$4(Lcom/android/server/wm/Transition;Landroid/window/WindowContainerTransaction;)V
    .registers 3

    .line 325
    invoke-virtual {p0, p2, p1}, Lcom/android/server/wm/DeferredDisplayUpdater;->finishDisplayUpdate(Landroid/window/WindowContainerTransaction;Lcom/android/server/wm/Transition;)V

    return-void
.end method

.method public final synthetic lambda$requestDisplayChangeTransition$3(ZLcom/android/server/wm/Transition;Ljava/lang/Runnable;Z)V
    .registers 9

    .line 220
    new-instance p4, Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/server/wm/DeferredDisplayUpdater;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v1, v0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    iget v0, v0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    const/4 v2, 0x0

    invoke-direct {p4, v2, v2, v1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 222
    iget-object v0, p0, Lcom/android/server/wm/DeferredDisplayUpdater;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getRotation()I

    move-result v0

    if-eqz p1, :cond_4d

    .line 224
    iget-object v1, p0, Lcom/android/server/wm/DeferredDisplayUpdater;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 225
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayPolicy;->getNotificationShade()Lcom/android/server/wm/WindowState;

    move-result-object v1

    if-eqz v1, :cond_4d

    .line 226
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_4d

    iget-object v2, p0, Lcom/android/server/wm/DeferredDisplayUpdater;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v3, v2, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mKeyguardController:Lcom/android/server/wm/KeyguardController;

    iget v2, v2, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 227
    invoke-virtual {v3, v2}, Lcom/android/server/wm/KeyguardController;->isKeyguardOrAodShowing(I)Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 229
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " uses blast for display switch"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DeferredDisplayUpdater"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->useBlastForNextSync()V

    .line 234
    :cond_4d
    iget-object v1, p0, Lcom/android/server/wm/DeferredDisplayUpdater;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mChainTracker:Lcom/android/server/wm/ActionChain$Tracker;

    const-string v2, "dispChg"

    invoke-virtual {v1, v2, p2}, Lcom/android/server/wm/ActionChain$Tracker;->start(Ljava/lang/String;Lcom/android/server/wm/Transition;)Lcom/android/server/wm/ActionChain;

    .line 236
    iget-object v1, p0, Lcom/android/server/wm/DeferredDisplayUpdater;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    .line 238
    :try_start_5f
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    if-eqz p1, :cond_6a

    .line 241
    invoke-virtual {p0, p2, v0, p4}, Lcom/android/server/wm/DeferredDisplayUpdater;->onDisplayUpdated(Lcom/android/server/wm/Transition;ILandroid/graphics/Rect;)V

    goto :goto_76

    :catchall_68
    move-exception p1

    goto :goto_87

    .line 244
    :cond_6a
    invoke-virtual {p0, v0, p4}, Lcom/android/server/wm/DeferredDisplayUpdater;->getCurrentDisplayChange(ILandroid/graphics/Rect;)Landroid/window/TransitionRequestInfo$DisplayChange;

    move-result-object p1

    .line 245
    iget-object p3, p0, Lcom/android/server/wm/DeferredDisplayUpdater;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p3, p3, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    const/4 p4, 0x0

    invoke-virtual {p3, p2, p4, p4, p1}, Lcom/android/server/wm/TransitionController;->requestStartTransition(Lcom/android/server/wm/Transition;Lcom/android/server/wm/Task;Landroid/window/RemoteTransition;Landroid/window/TransitionRequestInfo$DisplayChange;)Lcom/android/server/wm/Transition;
    :try_end_76
    .catchall {:try_start_5f .. :try_end_76} :catchall_68

    .line 251
    :goto_76
    iget-object p1, p0, Lcom/android/server/wm/DeferredDisplayUpdater;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p1, p1, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 252
    iget-object p0, p0, Lcom/android/server/wm/DeferredDisplayUpdater;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mChainTracker:Lcom/android/server/wm/ActionChain$Tracker;

    invoke-virtual {p0}, Lcom/android/server/wm/ActionChain$Tracker;->end()V

    return-void

    .line 251
    :goto_87
    iget-object p2, p0, Lcom/android/server/wm/DeferredDisplayUpdater;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p2, p2, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 252
    iget-object p0, p0, Lcom/android/server/wm/DeferredDisplayUpdater;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mChainTracker:Lcom/android/server/wm/ActionChain$Tracker;

    invoke-virtual {p0}, Lcom/android/server/wm/ActionChain$Tracker;->end()V

    .line 253
    throw p1
.end method

.method public final synthetic lambda$updateDisplayInfo$2(Landroid/view/DisplayInfo;Ljava/lang/Runnable;)V
    .registers 8

    .line 182
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_MIN_enabled:[Z

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_24

    iget v0, p1, Landroid/view/DisplayInfo;->logicalWidth:I

    int-to-long v0, v0

    iget v2, p1, Landroid/view/DisplayInfo;->logicalHeight:I

    int-to-long v2, v2

    sget-object v4, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS_MIN:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-wide v1, 0x7a92e92c10c2334fL    # 2.7461642514136956E282

    const/4 v3, 0x5

    invoke-static {v4, v1, v2, v3, v0}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 188
    :cond_24
    iput-object p1, p0, Lcom/android/server/wm/DeferredDisplayUpdater;->mLastWmDisplayInfo:Landroid/view/DisplayInfo;

    .line 189
    invoke-virtual {p0}, Lcom/android/server/wm/DeferredDisplayUpdater;->applyLatestDisplayInfo()V

    .line 190
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public onDisplayContentDisplayPropertiesPostChanged()V
    .registers 2

    .line 356
    iget-boolean v0, p0, Lcom/android/server/wm/DeferredDisplayUpdater;->mInPhysicalDisplayChangeTransition:Z

    if-eqz v0, :cond_5

    return-void

    .line 360
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/DeferredDisplayUpdater;->mScreenUnblocker:Landroid/os/Message;

    if-eqz v0, :cond_f

    .line 361
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    const/4 v0, 0x0

    .line 362
    iput-object v0, p0, Lcom/android/server/wm/DeferredDisplayUpdater;->mScreenUnblocker:Landroid/os/Message;

    :cond_f
    const/4 v0, 0x0

    .line 364
    iput-boolean v0, p0, Lcom/android/server/wm/DeferredDisplayUpdater;->mShouldWaitForTransitionWhenScreenOn:Z

    return-void
.end method

.method public onDisplaySwitching(Z)V
    .registers 2

    .line 372
    iput-boolean p1, p0, Lcom/android/server/wm/DeferredDisplayUpdater;->mShouldWaitForTransitionWhenScreenOn:Z

    .line 373
    iput-boolean p1, p0, Lcom/android/server/wm/DeferredDisplayUpdater;->mPendingKeyguardDrawing:Z

    if-nez p1, :cond_9

    .line 378
    invoke-virtual {p0}, Lcom/android/server/wm/DeferredDisplayUpdater;->onKeyguardDrawn()V

    :cond_9
    return-void
.end method

.method public final onDisplayUpdated(Lcom/android/server/wm/Transition;ILandroid/graphics/Rect;)V
    .registers 8

    .line 303
    iget-object v0, p0, Lcom/android/server/wm/DeferredDisplayUpdater;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getRotation()I

    move-result v0

    .line 306
    invoke-virtual {p0, p2, p3}, Lcom/android/server/wm/DeferredDisplayUpdater;->getCurrentDisplayChange(ILandroid/graphics/Rect;)Landroid/window/TransitionRequestInfo$DisplayChange;

    move-result-object p3

    const/4 v1, 0x1

    .line 307
    invoke-virtual {p3, v1}, Landroid/window/TransitionRequestInfo$DisplayChange;->setPhysicalDisplayChanged(Z)Landroid/window/TransitionRequestInfo$DisplayChange;

    .line 309
    new-instance v1, Lcom/android/server/wm/DeferredDisplayUpdater$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/android/server/wm/DeferredDisplayUpdater$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/wm/DeferredDisplayUpdater;)V

    invoke-virtual {p1, v1}, Lcom/android/server/wm/Transition;->addTransactionPresentedListener(Ljava/lang/Runnable;)V

    .line 310
    iget-object v1, p0, Lcom/android/server/wm/DeferredDisplayUpdater;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, v2, p3}, Lcom/android/server/wm/TransitionController;->requestStartTransition(Lcom/android/server/wm/Transition;Lcom/android/server/wm/Task;Landroid/window/RemoteTransition;Landroid/window/TransitionRequestInfo$DisplayChange;)Lcom/android/server/wm/Transition;

    .line 321
    iget-object p3, p0, Lcom/android/server/wm/DeferredDisplayUpdater;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p3}, Lcom/android/server/wm/DisplayArea;->getDisplayAreaInfo()Landroid/window/DisplayAreaInfo;

    move-result-object p3

    .line 323
    iget-object v1, p0, Lcom/android/server/wm/DeferredDisplayUpdater;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mRemoteDisplayChangeController:Lcom/android/server/wm/RemoteDisplayChangeController;

    new-instance v3, Lcom/android/server/wm/DeferredDisplayUpdater$$ExternalSyntheticLambda5;

    invoke-direct {v3, p0, p1}, Lcom/android/server/wm/DeferredDisplayUpdater$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/wm/DeferredDisplayUpdater;Lcom/android/server/wm/Transition;)V

    .line 324
    invoke-virtual {v1, p2, v0, p3, v3}, Lcom/android/server/wm/RemoteDisplayChangeController;->performRemoteDisplayChange(IILandroid/window/DisplayAreaInfo;Lcom/android/server/wm/RemoteDisplayChangeController$ContinueRemoteDisplayChangeCallback;)Z

    move-result p2

    if-nez p2, :cond_36

    .line 328
    invoke-virtual {p0, v2, p1}, Lcom/android/server/wm/DeferredDisplayUpdater;->finishDisplayUpdate(Landroid/window/WindowContainerTransaction;Lcom/android/server/wm/Transition;)V

    :cond_36
    return-void
.end method

.method public final onKeyguardDrawn()V
    .registers 3

    const/4 v0, 0x0

    .line 412
    iput-boolean v0, p0, Lcom/android/server/wm/DeferredDisplayUpdater;->mPendingKeyguardDrawing:Z

    .line 413
    :goto_3
    iget-object v1, p0, Lcom/android/server/wm/DeferredDisplayUpdater;->mWaitingForKeyguardDrawnConditions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_19

    .line 414
    iget-object v1, p0, Lcom/android/server/wm/DeferredDisplayUpdater;->mWaitingForKeyguardDrawnConditions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/Transition$ReadyCondition;

    invoke-virtual {v1}, Lcom/android/server/wm/Transition$ReadyCondition;->meet()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 416
    :cond_19
    iget-object p0, p0, Lcom/android/server/wm/DeferredDisplayUpdater;->mWaitingForKeyguardDrawnConditions:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public final requestDisplayChangeTransition(ZLjava/lang/Runnable;)V
    .registers 8

    .line 208
    new-instance v0, Lcom/android/server/wm/Transition;

    iget-object v1, p0, Lcom/android/server/wm/DeferredDisplayUpdater;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    iget-object v2, v1, Lcom/android/server/wm/TransitionController;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    const/4 v3, 0x6

    const/high16 v4, 0x20000

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/android/server/wm/Transition;-><init>(IILcom/android/server/wm/TransitionController;Lcom/android/server/wm/BLASTSyncEngine;)V

    .line 213
    iget-object v1, p0, Lcom/android/server/wm/DeferredDisplayUpdater;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->startPowerMode(I)V

    if-eqz p1, :cond_1b

    const/4 v1, 0x1

    .line 216
    iput-boolean v1, p0, Lcom/android/server/wm/DeferredDisplayUpdater;->mInPhysicalDisplayChangeTransition:Z

    .line 219
    :cond_1b
    iget-object v1, p0, Lcom/android/server/wm/DeferredDisplayUpdater;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    new-instance v2, Lcom/android/server/wm/DeferredDisplayUpdater$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, p1, v0, p2}, Lcom/android/server/wm/DeferredDisplayUpdater$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/wm/DeferredDisplayUpdater;ZLcom/android/server/wm/Transition;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v0, v2}, Lcom/android/server/wm/TransitionController;->startCollectOrQueue(Lcom/android/server/wm/Transition;Lcom/android/server/wm/TransitionController$OnStartCollect;)Z

    return-void
.end method

.method public updateDisplayInfo(Ljava/lang/Runnable;)V
    .registers 12

    .line 142
    invoke-virtual {p0}, Lcom/android/server/wm/DeferredDisplayUpdater;->getCurrentDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 144
    iget-object v1, p0, Lcom/android/server/wm/DeferredDisplayUpdater;->mLastDisplayInfo:Landroid/view/DisplayInfo;

    invoke-static {v1, v0}, Lcom/android/server/wm/DeferredDisplayUpdater;->calculateDisplayInfoDiff(Landroid/view/DisplayInfo;Landroid/view/DisplayInfo;)I

    move-result v1

    .line 145
    iget-object v2, p0, Lcom/android/server/wm/DeferredDisplayUpdater;->mLastDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {p0, v2, v0}, Lcom/android/server/wm/DeferredDisplayUpdater;->isPhysicalDisplayUpdated(Landroid/view/DisplayInfo;Landroid/view/DisplayInfo;)Z

    move-result v2

    .line 148
    iput-object v0, p0, Lcom/android/server/wm/DeferredDisplayUpdater;->mLastDisplayInfo:Landroid/view/DisplayInfo;

    const/4 v3, -0x1

    const/4 v4, 0x5

    const/4 v5, 0x1

    if-eq v1, v3, :cond_85

    .line 154
    iget-object v3, p0, Lcom/android/server/wm/DeferredDisplayUpdater;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 155
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getLastHasContent()Z

    move-result v3

    if-eqz v3, :cond_85

    iget-object v3, p0, Lcom/android/server/wm/DeferredDisplayUpdater;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v3, v3, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 156
    invoke-virtual {v3}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    move-result v3

    if-nez v3, :cond_2a

    goto :goto_85

    :cond_2a
    and-int/lit8 v3, v1, 0x2

    if-lez v3, :cond_53

    .line 169
    sget-object v3, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_MIN_enabled:[Z

    aget-boolean v3, v3, v5

    if-eqz v3, :cond_50

    iget v3, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    int-to-long v6, v3

    iget v3, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    int-to-long v8, v3

    sget-object v3, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS_MIN:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    filled-new-array {v6, v7}, [Ljava/lang/Object;

    move-result-object v6

    const-wide v7, -0x1ef6e555996fc930L    # -2.7573599476281914E159

    invoke-static {v3, v7, v8, v4, v6}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 172
    :cond_50
    invoke-virtual {p0}, Lcom/android/server/wm/DeferredDisplayUpdater;->applyLatestDisplayInfo()V

    :cond_53
    and-int/2addr v1, v5

    if-lez v1, :cond_81

    .line 177
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_MIN_enabled:[Z

    aget-boolean v1, v1, v5

    if-eqz v1, :cond_78

    iget v1, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    int-to-long v5, v1

    iget v1, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    int-to-long v7, v1

    sget-object v1, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS_MIN:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    filled-new-array {v3, v5}, [Ljava/lang/Object;

    move-result-object v3

    const-wide v5, -0x5f08404952fac35bL    # -7.255132065554498E-150

    invoke-static {v1, v5, v6, v4, v3}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 181
    :cond_78
    new-instance v1, Lcom/android/server/wm/DeferredDisplayUpdater$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, v0, p1}, Lcom/android/server/wm/DeferredDisplayUpdater$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/DeferredDisplayUpdater;Landroid/view/DisplayInfo;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v2, v1}, Lcom/android/server/wm/DeferredDisplayUpdater;->requestDisplayChangeTransition(ZLjava/lang/Runnable;)V

    return-void

    .line 195
    :cond_81
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    .line 157
    :cond_85
    :goto_85
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_842414855$Cache;->WM_DEBUG_WINDOW_TRANSITIONS_MIN_enabled:[Z

    aget-boolean v1, v1, v5

    if-eqz v1, :cond_a7

    iget v1, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    int-to-long v1, v1

    iget v3, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    int-to-long v5, v3

    sget-object v3, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_WINDOW_TRANSITIONS_MIN:Lcom/android/internal/protolog/WmProtoLogGroups;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-wide v5, -0x671af71b919bc78bL    # -9.442125845787946E-189

    invoke-static {v3, v5, v6, v4, v1}, Lcom/android/internal/protolog/ProtoLogImpl_842414855;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 161
    :cond_a7
    iput-object v0, p0, Lcom/android/server/wm/DeferredDisplayUpdater;->mLastWmDisplayInfo:Landroid/view/DisplayInfo;

    .line 162
    invoke-virtual {p0}, Lcom/android/server/wm/DeferredDisplayUpdater;->applyLatestDisplayInfo()V

    .line 163
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public waitForTransition(Landroid/os/Message;)Z
    .registers 4

    .line 395
    invoke-virtual {p0}, Lcom/android/server/wm/DeferredDisplayUpdater;->onKeyguardDrawn()V

    .line 397
    iget-boolean v0, p0, Lcom/android/server/wm/DeferredDisplayUpdater;->mShouldWaitForTransitionWhenScreenOn:Z

    if-nez v0, :cond_9

    const/4 p0, 0x0

    return p0

    .line 400
    :cond_9
    iput-object p1, p0, Lcom/android/server/wm/DeferredDisplayUpdater;->mScreenUnblocker:Landroid/os/Message;

    const-wide/16 v0, 0x20

    .line 401
    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 402
    const-string v0, "Screen unblock: wait for transition"

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-static {v0, p1}, Landroid/os/Trace;->beginAsyncSection(Ljava/lang/String;I)V

    .line 405
    :cond_1c
    iget-object p1, p0, Lcom/android/server/wm/DeferredDisplayUpdater;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p1, p1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v0, p0, Lcom/android/server/wm/DeferredDisplayUpdater;->mScreenUnblockTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 406
    iget-object p1, p0, Lcom/android/server/wm/DeferredDisplayUpdater;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p1, p1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object p0, p0, Lcom/android/server/wm/DeferredDisplayUpdater;->mScreenUnblockTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 p0, 0x1

    return p0
.end method
