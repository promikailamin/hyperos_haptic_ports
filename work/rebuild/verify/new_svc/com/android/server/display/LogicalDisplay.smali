.class public final Lcom/android/server/display/LogicalDisplay;
.super Ljava/lang/Object;
.source "LogicalDisplay.java"


# static fields
.field public static final EMPTY_DISPLAY_INFO:Landroid/view/DisplayInfo;


# instance fields
.field public final mBaseDisplayInfo:Landroid/view/DisplayInfo;

.field public mCanHostTasks:Z

.field public mDesiredDisplayModeSpecs:Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;

.field public mDevicePosition:I

.field public mDirty:Z

.field public mDisplayGroupId:I

.field public mDisplayGroupName:Ljava/lang/String;

.field public final mDisplayId:I

.field public mDisplayOffloadSession:Lcom/android/server/display/DisplayOffloadSessionImpl;

.field public mDisplayOffsetX:I

.field public mDisplayOffsetY:I

.field public final mDisplayPosition:Landroid/graphics/Point;

.field public mDisplayScalingDisabled:Z

.field public mFrameRateOverrides:[Landroid/view/DisplayEventReceiver$FrameRateOverride;

.field public mHasContent:Z

.field public final mInfo:Lcom/android/server/display/DisplayInfoProxy;

.field public final mIsAnisotropicModesEnabled:Z

.field public mIsEnabled:Z

.field public mIsInTransition:Z

.field public final mLayerStack:I

.field public mLayoutLimitedRefreshRate:Landroid/view/SurfaceControl$RefreshRateRange;

.field public mLeadDisplayId:I

.field public mOverrideDisplayInfo:Landroid/view/DisplayInfo;

.field public mPendingFrameRateOverrideUids:Landroid/util/ArraySet;

.field public mPowerThrottlingDataId:Ljava/lang/String;

.field public mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

.field public mPrimaryDisplayDeviceInfo:Lcom/android/server/display/DisplayDeviceInfo;

.field public mRequestedColorMode:I

.field public mRequestedMinimalPostProcessing:Z

.field public final mSizeOverrideEnabled:Z

.field public final mSyncedResolutionSwitchEnabled:Z

.field public final mSyntheticModesV2Enabled:Z

.field public final mTempDisplayRect:Landroid/graphics/Rect;

.field public final mTempFrameRateOverride:Landroid/util/SparseArray;

.field public final mTempLayerStackRect:Landroid/graphics/Rect;

.field public mThermalBrightnessThrottlingDataId:Ljava/lang/String;

.field public mThermalRefreshRateThrottling:Landroid/util/SparseArray;

.field public mUserDisabledHdrTypes:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 87
    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    sput-object v0, Lcom/android/server/display/LogicalDisplay;->EMPTY_DISPLAY_INFO:Landroid/view/DisplayInfo;

    return-void
.end method

.method public constructor <init>(IILcom/android/server/display/DisplayDevice;ZZZ)V
    .registers 11

    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    const/4 v1, -0x1

    .line 104
    iput v1, p0, Lcom/android/server/display/LogicalDisplay;->mLeadDisplayId:I

    .line 106
    iput v1, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayGroupId:I

    .line 120
    new-instance v2, Lcom/android/server/display/DisplayInfoProxy;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/server/display/DisplayInfoProxy;-><init>(Landroid/view/DisplayInfo;)V

    iput-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Lcom/android/server/display/DisplayInfoProxy;

    const/4 v2, 0x0

    .line 133
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/android/server/display/LogicalDisplay;->mUserDisabledHdrTypes:[I

    .line 135
    new-instance v3, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;

    invoke-direct {v3}, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;-><init>()V

    iput-object v3, p0, Lcom/android/server/display/LogicalDisplay;->mDesiredDisplayModeSpecs:Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;

    .line 145
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    iput-object v3, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayPosition:Landroid/graphics/Point;

    .line 156
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/server/display/LogicalDisplay;->mTempLayerStackRect:Landroid/graphics/Rect;

    .line 157
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/android/server/display/LogicalDisplay;->mTempDisplayRect:Landroid/graphics/Rect;

    .line 192
    iput v1, p0, Lcom/android/server/display/LogicalDisplay;->mDevicePosition:I

    .line 196
    iput-boolean v2, p0, Lcom/android/server/display/LogicalDisplay;->mDirty:Z

    .line 219
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mThermalRefreshRateThrottling:Landroid/util/SparseArray;

    .line 244
    iput p1, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    .line 245
    iput p2, p0, Lcom/android/server/display/LogicalDisplay;->mLayerStack:I

    .line 246
    iput-object p3, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    .line 247
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/LogicalDisplay;->mPendingFrameRateOverrideUids:Landroid/util/ArraySet;

    .line 248
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/LogicalDisplay;->mTempFrameRateOverride:Landroid/util/SparseArray;

    const/4 p1, 0x1

    .line 249
    iput-boolean p1, p0, Lcom/android/server/display/LogicalDisplay;->mIsEnabled:Z

    .line 250
    iput-boolean v2, p0, Lcom/android/server/display/LogicalDisplay;->mIsInTransition:Z

    .line 251
    const-string p2, "default"

    iput-object p2, p0, Lcom/android/server/display/LogicalDisplay;->mThermalBrightnessThrottlingDataId:Ljava/lang/String;

    .line 252
    iput-object p2, p0, Lcom/android/server/display/LogicalDisplay;->mPowerThrottlingDataId:Ljava/lang/String;

    .line 253
    iput-object p2, v0, Landroid/view/DisplayInfo;->thermalBrightnessThrottlingDataId:Ljava/lang/String;

    .line 254
    iput-boolean p4, p0, Lcom/android/server/display/LogicalDisplay;->mSyncedResolutionSwitchEnabled:Z

    .line 255
    iput-boolean p5, p0, Lcom/android/server/display/LogicalDisplay;->mSyntheticModesV2Enabled:Z

    .line 256
    iput-boolean p6, p0, Lcom/android/server/display/LogicalDisplay;->mSizeOverrideEnabled:Z

    .line 258
    iput-boolean p1, p0, Lcom/android/server/display/LogicalDisplay;->mIsAnisotropicModesEnabled:Z

    return-void
.end method

.method public static getMaskingInsets(Lcom/android/server/display/DisplayDeviceInfo;)Landroid/graphics/Rect;
    .registers 2

    .line 733
    iget v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_f

    .line 734
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceInfo;->displayCutout:Landroid/view/DisplayCutout;

    if-eqz p0, :cond_f

    .line 736
    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getSafeInsets()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0

    .line 738
    :cond_f
    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    return-object p0
.end method


# virtual methods
.method public final calculateBaseDensity(FFII)I
    .registers 8

    const/4 p0, 0x0

    cmpl-float v0, p1, p0

    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    if-lez v0, :cond_1c

    cmpl-float p0, p2, p0

    if-lez p0, :cond_1c

    float-to-double p0, p1

    .line 646
    invoke-static {p0, p1, v1, v2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    float-to-double p2, p2

    .line 647
    invoke-static {p2, p3, v1, v2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p2

    add-double/2addr p0, p2

    div-double/2addr p0, v1

    .line 646
    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    goto :goto_2e

    :cond_1c
    int-to-double p0, p3

    .line 651
    invoke-static {p0, p1, v1, v2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    int-to-double p2, p4

    invoke-static {p2, p3, v1, v2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p2

    add-double/2addr p0, p2

    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    const-wide/high16 p2, 0x4038000000000000L    # 24.0

    div-double/2addr p0, p2

    :goto_2e
    const-wide p2, 0x3fda3468d1a3468eL    # 0.40944881889763785

    mul-double/2addr p0, p2

    const-wide/high16 p2, 0x4064000000000000L    # 160.0

    mul-double/2addr p0, p2

    const-wide/high16 p2, 0x4048000000000000L    # 48.0

    div-double/2addr p0, p2

    const-wide/high16 p2, 0x3fe0000000000000L    # 0.5

    add-double/2addr p0, p2

    double-to-int p0, p0

    const/16 p1, 0x64

    .line 658
    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public canHostTasksLocked()Z
    .registers 1

    .line 1054
    iget-boolean p0, p0, Lcom/android/server/display/LogicalDisplay;->mCanHostTasks:Z

    return p0
.end method

.method public clearPendingFrameRateOverrideUids()V
    .registers 2

    .line 345
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mPendingFrameRateOverrideUids:Landroid/util/ArraySet;

    return-void
.end method

.method public final computeCurrentDisplayInfoLocked()Landroid/view/DisplayInfo;
    .registers 4

    .line 313
    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    .line 314
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget-object p0, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    sget-object v2, Lcom/android/server/wm/utils/DisplayInfoOverrides;->WM_OVERRIDE_FIELDS:Lcom/android/server/wm/utils/DisplayInfoOverrides$DisplayInfoFieldsUpdater;

    invoke-static {v0, v1, p0, v2}, Lcom/android/server/wm/utils/DisplayInfoOverrides;->copyDisplayInfoFields(Landroid/view/DisplayInfo;Landroid/view/DisplayInfo;Landroid/view/DisplayInfo;Lcom/android/server/wm/utils/DisplayInfoOverrides$DisplayInfoFieldsUpdater;)V

    return-object v0
.end method

.method public configureDisplayLocked(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/display/DisplayDevice;Z)V
    .registers 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    if-eqz p3, :cond_a

    const/4 v3, -0x1

    goto :goto_c

    .line 773
    :cond_a
    iget v3, v0, Lcom/android/server/display/LogicalDisplay;->mLayerStack:I

    :goto_c
    iget v4, v0, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    invoke-virtual {v2, v1, v3, v4}, Lcom/android/server/display/DisplayDevice;->setLayerStackLocked(Landroid/view/SurfaceControl$Transaction;II)V

    .line 778
    invoke-virtual {v0}, Lcom/android/server/display/LogicalDisplay;->isEnabledLocked()Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_23

    invoke-virtual {v2}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v3

    iget v3, v3, Lcom/android/server/display/DisplayDeviceInfo;->touch:I

    if-eqz v3, :cond_23

    move v3, v4

    goto :goto_24

    :cond_23
    move v3, v5

    .line 777
    :goto_24
    invoke-virtual {v2, v1, v3}, Lcom/android/server/display/DisplayDevice;->setDisplayFlagsLocked(Landroid/view/SurfaceControl$Transaction;I)V

    .line 783
    iget-object v3, v0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    if-ne v2, v3, :cond_36

    .line 784
    iget-object v3, v0, Lcom/android/server/display/LogicalDisplay;->mDesiredDisplayModeSpecs:Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;

    invoke-virtual {v2, v3}, Lcom/android/server/display/DisplayDevice;->setDesiredDisplayModeSpecsLocked(Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;)V

    .line 785
    iget v3, v0, Lcom/android/server/display/LogicalDisplay;->mRequestedColorMode:I

    invoke-virtual {v2, v3}, Lcom/android/server/display/DisplayDevice;->setRequestedColorModeLocked(I)V

    goto :goto_41

    .line 788
    :cond_36
    new-instance v3, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;

    invoke-direct {v3}, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;-><init>()V

    invoke-virtual {v2, v3}, Lcom/android/server/display/DisplayDevice;->setDesiredDisplayModeSpecsLocked(Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;)V

    .line 790
    invoke-virtual {v2, v5}, Lcom/android/server/display/DisplayDevice;->setRequestedColorModeLocked(I)V

    .line 793
    :goto_41
    iget-boolean v3, v0, Lcom/android/server/display/LogicalDisplay;->mRequestedMinimalPostProcessing:Z

    invoke-virtual {v2, v3}, Lcom/android/server/display/DisplayDevice;->setAutoLowLatencyModeLocked(Z)V

    .line 794
    iget-boolean v3, v0, Lcom/android/server/display/LogicalDisplay;->mRequestedMinimalPostProcessing:Z

    invoke-virtual {v2, v3}, Lcom/android/server/display/DisplayDevice;->setGameContentTypeLocked(Z)V

    .line 797
    invoke-virtual {v0}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v3

    .line 798
    invoke-virtual {v2}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v6

    .line 803
    iget-object v7, v0, Lcom/android/server/display/LogicalDisplay;->mTempLayerStackRect:Landroid/graphics/Rect;

    iget v8, v3, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v9, v3, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-virtual {v7, v5, v5, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 810
    iget v7, v3, Landroid/view/DisplayInfo;->rotation:I

    iget v8, v6, Lcom/android/server/display/DisplayDeviceInfo;->rotation:I

    add-int/2addr v7, v8

    rem-int/lit8 v7, v7, 0x4

    if-eq v7, v4, :cond_68

    const/4 v8, 0x3

    if-ne v7, v8, :cond_69

    :cond_68
    move v5, v4

    :cond_69
    if-eqz v5, :cond_6e

    .line 819
    iget v8, v6, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    goto :goto_70

    :cond_6e
    iget v8, v6, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    :goto_70
    if-eqz v5, :cond_75

    .line 820
    iget v9, v6, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    goto :goto_77

    :cond_75
    iget v9, v6, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    .line 822
    :goto_77
    invoke-static {v6}, Lcom/android/server/display/LogicalDisplay;->getMaskingInsets(Lcom/android/server/display/DisplayDeviceInfo;)Landroid/graphics/Rect;

    move-result-object v10

    .line 823
    invoke-static {v10, v7}, Lcom/android/server/wm/utils/InsetUtils;->rotateInsets(Landroid/graphics/Rect;I)V

    .line 825
    iget v11, v10, Landroid/graphics/Rect;->left:I

    iget v12, v10, Landroid/graphics/Rect;->right:I

    add-int/2addr v11, v12

    sub-int/2addr v8, v11

    .line 826
    iget v11, v10, Landroid/graphics/Rect;->top:I

    iget v12, v10, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v11, v12

    sub-int/2addr v9, v11

    .line 828
    iget v11, v3, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 829
    iget v12, v3, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 831
    iget-boolean v13, v0, Lcom/android/server/display/LogicalDisplay;->mIsAnisotropicModesEnabled:Z

    const/4 v14, 0x2

    if-nez v13, :cond_d1

    iget v13, v6, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    if-ne v13, v14, :cond_d1

    iget v13, v6, Lcom/android/server/display/DisplayDeviceInfo;->xDpi:F

    const/4 v15, 0x0

    cmpl-float v16, v13, v15

    if-lez v16, :cond_d1

    move/from16 p3, v15

    iget v15, v6, Lcom/android/server/display/DisplayDeviceInfo;->yDpi:F

    cmpl-float v16, v15, p3

    if-lez v16, :cond_d1

    const v16, 0x3f833333    # 1.025f

    mul-float v17, v15, v16

    cmpl-float v17, v13, v17

    const-wide/high16 v18, 0x3fe0000000000000L    # 0.5

    if-lez v17, :cond_bb

    div-float/2addr v15, v13

    if-eqz v5, :cond_b8

    int-to-float v5, v11

    mul-float/2addr v5, v15

    float-to-double v4, v5

    goto :goto_ce

    :cond_b8
    int-to-float v4, v12

    mul-float/2addr v4, v15

    goto :goto_c6

    :cond_bb
    mul-float v16, v16, v13

    cmpg-float v4, v16, v15

    if-gez v4, :cond_d1

    div-float/2addr v13, v15

    if-eqz v5, :cond_cb

    int-to-float v4, v12

    mul-float/2addr v4, v13

    :goto_c6
    float-to-double v4, v4

    add-double v4, v4, v18

    double-to-int v12, v4

    goto :goto_d1

    :cond_cb
    int-to-float v4, v11

    mul-float/2addr v4, v13

    float-to-double v4, v4

    :goto_ce
    add-double v4, v4, v18

    double-to-int v11, v4

    .line 855
    :cond_d1
    :goto_d1
    invoke-virtual {v0, v6}, Lcom/android/server/display/LogicalDisplay;->getUserPreferredModeForSizeOverrideLocked(Lcom/android/server/display/DisplayDeviceInfo;)Landroid/view/Display$Mode;

    move-result-object v4

    .line 856
    iget-boolean v5, v0, Lcom/android/server/display/LogicalDisplay;->mIsAnisotropicModesEnabled:Z

    if-eqz v5, :cond_f2

    iget v5, v6, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    if-ne v5, v14, :cond_f2

    if-eqz v4, :cond_f2

    .line 858
    invoke-virtual {v4}, Landroid/view/Display$Mode;->getFlags()I

    move-result v5

    and-int/2addr v5, v14

    if-eqz v5, :cond_f2

    mul-int/2addr v11, v8

    .line 859
    invoke-virtual {v4}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v5

    div-int/2addr v11, v5

    mul-int/2addr v12, v9

    .line 860
    invoke-virtual {v4}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v4

    div-int/2addr v12, v4

    .line 872
    :cond_f2
    iget v3, v3, Landroid/view/DisplayInfo;->flags:I

    const/high16 v4, 0x40000000    # 2.0f

    and-int/2addr v3, v4

    if-nez v3, :cond_10b

    iget-boolean v3, v0, Lcom/android/server/display/LogicalDisplay;->mDisplayScalingDisabled:Z

    if-eqz v3, :cond_fe

    goto :goto_10b

    :cond_fe
    mul-int v3, v8, v12

    mul-int v4, v9, v11

    if-ge v3, v4, :cond_108

    .line 880
    div-int v12, v3, v11

    move v11, v8

    goto :goto_10b

    .line 883
    :cond_108
    div-int v11, v4, v12

    move v12, v9

    :cond_10b
    :goto_10b
    sub-int/2addr v9, v12

    .line 886
    div-int/2addr v9, v14

    sub-int/2addr v8, v11

    .line 887
    div-int/2addr v8, v14

    .line 888
    iget-object v3, v0, Lcom/android/server/display/LogicalDisplay;->mTempDisplayRect:Landroid/graphics/Rect;

    add-int/2addr v11, v8

    add-int/2addr v12, v9

    invoke-virtual {v3, v8, v9, v11, v12}, Landroid/graphics/Rect;->set(IIII)V

    .line 892
    iget-object v3, v0, Lcom/android/server/display/LogicalDisplay;->mTempDisplayRect:Landroid/graphics/Rect;

    iget v4, v10, Landroid/graphics/Rect;->left:I

    iget v5, v10, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Rect;->offset(II)V

    if-nez v7, :cond_12b

    .line 895
    iget-object v3, v0, Lcom/android/server/display/LogicalDisplay;->mTempDisplayRect:Landroid/graphics/Rect;

    iget v4, v0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetX:I

    iget v5, v0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetY:I

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_151

    :cond_12b
    const/4 v3, 0x1

    if-ne v7, v3, :cond_139

    .line 897
    iget-object v3, v0, Lcom/android/server/display/LogicalDisplay;->mTempDisplayRect:Landroid/graphics/Rect;

    iget v4, v0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetY:I

    iget v5, v0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetX:I

    neg-int v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_151

    :cond_139
    if-ne v7, v14, :cond_147

    .line 899
    iget-object v3, v0, Lcom/android/server/display/LogicalDisplay;->mTempDisplayRect:Landroid/graphics/Rect;

    iget v4, v0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetX:I

    neg-int v4, v4

    iget v5, v0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetY:I

    neg-int v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_151

    .line 901
    :cond_147
    iget-object v3, v0, Lcom/android/server/display/LogicalDisplay;->mTempDisplayRect:Landroid/graphics/Rect;

    iget v4, v0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetY:I

    neg-int v4, v4

    iget v5, v0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetX:I

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 904
    :goto_151
    iget-object v3, v0, Lcom/android/server/display/LogicalDisplay;->mDisplayPosition:Landroid/graphics/Point;

    iget-object v4, v0, Lcom/android/server/display/LogicalDisplay;->mTempDisplayRect:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->left:I

    iget v4, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3, v5, v4}, Landroid/graphics/Point;->set(II)V

    .line 906
    iget-boolean v3, v0, Lcom/android/server/display/LogicalDisplay;->mSyncedResolutionSwitchEnabled:Z

    if-nez v3, :cond_165

    iget v3, v6, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_168

    .line 907
    :cond_165
    invoke-virtual {v2, v1}, Lcom/android/server/display/DisplayDevice;->configureDisplaySizeLocked(Landroid/view/SurfaceControl$Transaction;)V

    .line 909
    :cond_168
    iget-object v3, v0, Lcom/android/server/display/LogicalDisplay;->mTempLayerStackRect:Landroid/graphics/Rect;

    iget-object v0, v0, Lcom/android/server/display/LogicalDisplay;->mTempDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v1, v7, v3, v0}, Lcom/android/server/display/DisplayDevice;->setProjectionLocked(Landroid/view/SurfaceControl$Transaction;ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 910
    invoke-virtual {v2, v1}, Lcom/android/server/display/DisplayDevice;->configureSurfaceLocked(Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method public dumpLocked(Ljava/io/PrintWriter;)V
    .registers 6

    .line 1275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mDisplayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mPrimaryDisplayDevice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    const-string v2, ")"

    if-eqz v1, :cond_4c

    .line 1278
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    .line 1277
    invoke-virtual {v3}, Lcom/android/server/display/DisplayDevice;->getNameLocked()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    invoke-virtual {v3}, Lcom/android/server/display/DisplayDevice;->getUniqueId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_4f

    .line 1278
    :cond_4c
    const-string/jumbo v1, "null"

    :goto_4f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1276
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mIsEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/LogicalDisplay;->mIsEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mIsInTransition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/LogicalDisplay;->mIsInTransition:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mLayerStack="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/LogicalDisplay;->mLayerStack:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1282
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/LogicalDisplay;->mDevicePosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1283
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mHasContent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/LogicalDisplay;->mHasContent:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mDesiredDisplayModeSpecs={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mDesiredDisplayModeSpecs:Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1285
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mRequestedColorMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/LogicalDisplay;->mRequestedColorMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1286
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mDisplayOffset=("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mDisplayScalingDisabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayScalingDisabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1288
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mBaseDisplayInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mOverrideDisplayInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1290
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mRequestedMinimalPostProcessing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/LogicalDisplay;->mRequestedMinimalPostProcessing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mFrameRateOverrides="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mFrameRateOverrides:[Landroid/view/DisplayEventReceiver$FrameRateOverride;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1292
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mPendingFrameRateOverrideUids="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mPendingFrameRateOverrideUids:Landroid/util/ArraySet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1293
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mDisplayGroupId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayGroupId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1294
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mDisplayGroupName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayGroupName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1295
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mThermalBrightnessThrottlingDataId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mThermalBrightnessThrottlingDataId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mLeadDisplayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/LogicalDisplay;->mLeadDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mLayoutLimitedRefreshRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mLayoutLimitedRefreshRate:Landroid/view/SurfaceControl$RefreshRateRange;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mThermalRefreshRateThrottling="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mThermalRefreshRateThrottling:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1299
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mPowerThrottlingDataId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mPowerThrottlingDataId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1301
    new-instance v0, Landroid/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p1, v1}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 1302
    const-string p1, "DisplayInfoProxy (mInfo):"

    invoke-virtual {v0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1303
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1304
    iget-object p0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Lcom/android/server/display/DisplayInfoProxy;

    invoke-virtual {p0, v0}, Lcom/android/server/display/DisplayInfoProxy;->dumpLocked(Ljava/io/PrintWriter;)V

    .line 1305
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void
.end method

.method public getDesiredDisplayModeSpecsLocked()Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;
    .registers 1

    .line 948
    iget-object p0, p0, Lcom/android/server/display/LogicalDisplay;->mDesiredDisplayModeSpecs:Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;

    return-object p0
.end method

.method public getDevicePositionLocked()I
    .registers 1

    .line 270
    iget p0, p0, Lcom/android/server/display/LogicalDisplay;->mDevicePosition:I

    return p0
.end method

.method public getDisplayIdLocked()I
    .registers 1

    .line 279
    iget p0, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    return p0
.end method

.method public getDisplayInfoChangeSource()Landroid/view/DisplayInfo$DisplayInfoChangeSource;
    .registers 1

    .line 324
    iget-object p0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Lcom/android/server/display/DisplayInfoProxy;

    invoke-virtual {p0}, Lcom/android/server/display/DisplayInfoProxy;->getDisplayInfoChangeSource()Landroid/view/DisplayInfo$DisplayInfoChangeSource;

    move-result-object p0

    return-object p0
.end method

.method public getDisplayInfoGroupsChangedLocked()I
    .registers 1

    .line 320
    iget-object p0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Lcom/android/server/display/DisplayInfoProxy;

    invoke-virtual {p0}, Lcom/android/server/display/DisplayInfoProxy;->getDisplayInfoGroupsChanged()I

    move-result p0

    return p0
.end method

.method public getDisplayInfoLocked()Landroid/view/DisplayInfo;
    .registers 3

    .line 299
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Lcom/android/server/display/DisplayInfoProxy;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayInfoProxy;->get()Landroid/view/DisplayInfo;

    move-result-object v0

    if-nez v0, :cond_11

    .line 302
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Lcom/android/server/display/DisplayInfoProxy;

    invoke-virtual {p0}, Lcom/android/server/display/LogicalDisplay;->computeCurrentDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayInfoProxy;->set(Landroid/view/DisplayInfo;)V

    .line 304
    :cond_11
    iget-object p0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Lcom/android/server/display/DisplayInfoProxy;

    invoke-virtual {p0}, Lcom/android/server/display/DisplayInfoProxy;->get()Landroid/view/DisplayInfo;

    move-result-object p0

    return-object p0
.end method

.method public getDisplayOffloadSessionLocked()Lcom/android/server/display/DisplayOffloadSessionImpl;
    .registers 1

    .line 1271
    iget-object p0, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffloadSession:Lcom/android/server/display/DisplayOffloadSessionImpl;

    return-object p0
.end method

.method public getDisplayOffsetXLocked()I
    .registers 1

    .line 984
    iget p0, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetX:I

    return p0
.end method

.method public getDisplayOffsetYLocked()I
    .registers 1

    .line 991
    iget p0, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetY:I

    return p0
.end method

.method public getDisplayPosition()Landroid/graphics/Point;
    .registers 2

    .line 749
    new-instance v0, Landroid/graphics/Point;

    iget-object p0, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayPosition:Landroid/graphics/Point;

    invoke-direct {v0, p0}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    return-object v0
.end method

.method public getFrameRateOverrides()[Landroid/view/DisplayEventReceiver$FrameRateOverride;
    .registers 1

    .line 331
    iget-object p0, p0, Lcom/android/server/display/LogicalDisplay;->mFrameRateOverrides:[Landroid/view/DisplayEventReceiver$FrameRateOverride;

    return-object p0
.end method

.method public getInsets()Landroid/graphics/Rect;
    .registers 1

    .line 726
    iget-object p0, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDeviceInfo:Lcom/android/server/display/DisplayDeviceInfo;

    invoke-static {p0}, Lcom/android/server/display/LogicalDisplay;->getMaskingInsets(Lcom/android/server/display/DisplayDeviceInfo;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public getLayoutGroupNameLocked()Ljava/lang/String;
    .registers 1

    .line 1263
    iget-object p0, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayGroupName:Ljava/lang/String;

    return-object p0
.end method

.method public getLeadDisplayIdLocked()I
    .registers 1

    .line 1249
    iget p0, p0, Lcom/android/server/display/LogicalDisplay;->mLeadDisplayId:I

    return p0
.end method

.method public getNonOverrideDisplayInfoLocked(Landroid/view/DisplayInfo;)V
    .registers 2

    .line 352
    iget-object p0, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {p1, p0}, Landroid/view/DisplayInfo;->copyFrom(Landroid/view/DisplayInfo;)V

    return-void
.end method

.method public getPendingFrameRateOverrideUids()Landroid/util/ArraySet;
    .registers 1

    .line 338
    iget-object p0, p0, Lcom/android/server/display/LogicalDisplay;->mPendingFrameRateOverrideUids:Landroid/util/ArraySet;

    return-object p0
.end method

.method public getPowerThrottlingDataIdLocked()Ljava/lang/String;
    .registers 1

    .line 1229
    iget-object p0, p0, Lcom/android/server/display/LogicalDisplay;->mPowerThrottlingDataId:Ljava/lang/String;

    return-object p0
.end method

.method public getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;
    .registers 1

    .line 288
    iget-object p0, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    return-object p0
.end method

.method public getRequestedColorModeLocked()I
    .registers 1

    .line 977
    iget p0, p0, Lcom/android/server/display/LogicalDisplay;->mRequestedColorMode:I

    return p0
.end method

.method public getRequestedMinimalPostProcessingLocked()Z
    .registers 1

    .line 962
    iget-boolean p0, p0, Lcom/android/server/display/LogicalDisplay;->mRequestedMinimalPostProcessing:Z

    return p0
.end method

.method public final getUserPreferredModeForSizeOverrideLocked(Lcom/android/server/display/DisplayDeviceInfo;)Landroid/view/Display$Mode;
    .registers 7

    .line 663
    iget-object p0, p1, Lcom/android/server/display/DisplayDeviceInfo;->supportedModes:[Landroid/view/Display$Mode;

    .line 664
    iget v0, p1, Lcom/android/server/display/DisplayDeviceInfo;->modeId:I

    .line 665
    iget p1, p1, Lcom/android/server/display/DisplayDeviceInfo;->userPreferredModeId:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne p1, v1, :cond_b

    return-object v2

    :cond_b
    if-ne p1, v0, :cond_e

    return-object v2

    .line 676
    :cond_e
    array-length v0, p0

    const/4 v1, 0x0

    :goto_10
    if-ge v1, v0, :cond_1e

    aget-object v3, p0, v1

    .line 677
    invoke-virtual {v3}, Landroid/view/Display$Mode;->getModeId()I

    move-result v4

    if-ne p1, v4, :cond_1b

    goto :goto_1f

    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_1e
    move-object v3, v2

    :goto_1f
    if-eqz v3, :cond_2a

    .line 684
    invoke-virtual {v3}, Landroid/view/Display$Mode;->getFlags()I

    move-result p0

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_2a

    return-object v3

    :cond_2a
    return-object v2
.end method

.method public hasContentLocked()Z
    .registers 1

    .line 924
    iget-boolean p0, p0, Lcom/android/server/display/LogicalDisplay;->mHasContent:Z

    return p0
.end method

.method public isDirtyLocked()Z
    .registers 1

    .line 398
    iget-boolean p0, p0, Lcom/android/server/display/LogicalDisplay;->mDirty:Z

    return p0
.end method

.method public isDisplayScalingDisabled()Z
    .registers 1

    .line 1007
    iget-boolean p0, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayScalingDisabled:Z

    return p0
.end method

.method public isEnabledLocked()Z
    .registers 1

    .line 1170
    iget-boolean p0, p0, Lcom/android/server/display/LogicalDisplay;->mIsEnabled:Z

    return p0
.end method

.method public isInTransitionLocked()Z
    .registers 1

    .line 1191
    iget-boolean p0, p0, Lcom/android/server/display/LogicalDisplay;->mIsInTransition:Z

    return p0
.end method

.method public isValidLocked()Z
    .registers 1

    .line 394
    iget-object p0, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public setCanHostTasksLocked(Z)Z
    .registers 5

    .line 1064
    invoke-virtual {p0, p1}, Lcom/android/server/display/LogicalDisplay;->validateCanHostTasksLocked(Z)Z

    move-result p1

    .line 1065
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget-boolean v0, v0, Landroid/view/DisplayInfo;->canHostTasks:Z

    if-ne v0, p1, :cond_c

    const/4 p0, 0x0

    return p0

    .line 1069
    :cond_c
    invoke-virtual {p0}, Lcom/android/server/display/LogicalDisplay;->getDisplayIdLocked()I

    move-result v0

    .line 1070
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set canHostTasks for display "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LogicalDisplay"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1071
    iput-boolean p1, p0, Lcom/android/server/display/LogicalDisplay;->mCanHostTasks:Z

    .line 1072
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iput-boolean p1, v0, Landroid/view/DisplayInfo;->canHostTasks:Z

    .line 1073
    iget-object p0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Lcom/android/server/display/DisplayInfoProxy;

    sget-object p1, Landroid/view/DisplayInfo$DisplayInfoGroup;->BASIC_PROPERTIES:Landroid/view/DisplayInfo$DisplayInfoGroup;

    invoke-virtual {p1}, Landroid/view/DisplayInfo$DisplayInfoGroup;->getMask()I

    move-result p1

    sget-object v0, Landroid/view/DisplayInfo$DisplayInfoChangeSource;->OTHER:Landroid/view/DisplayInfo$DisplayInfoChangeSource;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/display/DisplayInfoProxy;->set(ILandroid/view/DisplayInfo$DisplayInfoChangeSource;)V

    const/4 p0, 0x1

    return p0
.end method

.method public setDesiredDisplayModeSpecsLocked(Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;)V
    .registers 2

    .line 941
    iput-object p1, p0, Lcom/android/server/display/LogicalDisplay;->mDesiredDisplayModeSpecs:Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;

    return-void
.end method

.method public setDevicePositionLocked(I)V
    .registers 3

    .line 264
    iget v0, p0, Lcom/android/server/display/LogicalDisplay;->mDevicePosition:I

    if-eq v0, p1, :cond_9

    .line 265
    iput p1, p0, Lcom/android/server/display/LogicalDisplay;->mDevicePosition:I

    const/4 p1, 0x1

    .line 266
    iput-boolean p1, p0, Lcom/android/server/display/LogicalDisplay;->mDirty:Z

    :cond_9
    return-void
.end method

.method public setDisplayGroupNameLocked(Ljava/lang/String;)V
    .registers 2

    .line 1256
    iput-object p1, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayGroupName:Ljava/lang/String;

    return-void
.end method

.method public setDisplayInfoOverrideFromWindowManagerLocked(Landroid/view/DisplayInfo;)Z
    .registers 5

    const/4 v0, 0x1

    if-eqz p1, :cond_2d

    .line 364
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    if-nez v1, :cond_18

    .line 365
    new-instance v1, Landroid/view/DisplayInfo;

    invoke-direct {v1, p1}, Landroid/view/DisplayInfo;-><init>(Landroid/view/DisplayInfo;)V

    iput-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    .line 366
    iget-object p0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Lcom/android/server/display/DisplayInfoProxy;

    sget p1, Lcom/android/server/wm/utils/DisplayInfoOverrides;->WM_OVERRIDE_GROUPS:I

    sget-object v1, Landroid/view/DisplayInfo$DisplayInfoChangeSource;->WINDOW_MANAGER:Landroid/view/DisplayInfo$DisplayInfoChangeSource;

    invoke-virtual {p0, p1, v1}, Lcom/android/server/display/DisplayInfoProxy;->set(ILandroid/view/DisplayInfo$DisplayInfoChangeSource;)V

    return v0

    .line 370
    :cond_18
    sget-object v2, Lcom/android/server/wm/utils/DisplayInfoOverrides;->WM_OVERRIDE_GROUPS_ENUMSET:Ljava/util/EnumSet;

    invoke-virtual {p1, v1, v2}, Landroid/view/DisplayInfo;->getBasicChangedGroups(Landroid/view/DisplayInfo;Ljava/util/EnumSet;)I

    move-result v1

    if-eqz v1, :cond_3e

    .line 373
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v2, p1}, Landroid/view/DisplayInfo;->copyFrom(Landroid/view/DisplayInfo;)V

    .line 374
    iget-object p0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Lcom/android/server/display/DisplayInfoProxy;

    sget-object p1, Landroid/view/DisplayInfo$DisplayInfoChangeSource;->WINDOW_MANAGER:Landroid/view/DisplayInfo$DisplayInfoChangeSource;

    invoke-virtual {p0, v1, p1}, Lcom/android/server/display/DisplayInfoProxy;->set(ILandroid/view/DisplayInfo$DisplayInfoChangeSource;)V

    return v0

    .line 377
    :cond_2d
    iget-object p1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    if-eqz p1, :cond_3e

    const/4 p1, 0x0

    .line 378
    iput-object p1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    .line 379
    iget-object p0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Lcom/android/server/display/DisplayInfoProxy;

    sget p1, Lcom/android/server/wm/utils/DisplayInfoOverrides;->WM_OVERRIDE_GROUPS:I

    sget-object v1, Landroid/view/DisplayInfo$DisplayInfoChangeSource;->WINDOW_MANAGER:Landroid/view/DisplayInfo$DisplayInfoChangeSource;

    invoke-virtual {p0, p1, v1}, Lcom/android/server/display/DisplayInfoProxy;->set(ILandroid/view/DisplayInfo$DisplayInfoChangeSource;)V

    return v0

    :cond_3e
    const/4 p0, 0x0

    return p0
.end method

.method public setDisplayOffloadSessionLocked(Lcom/android/server/display/DisplayOffloadSessionImpl;)V
    .registers 2

    .line 1267
    iput-object p1, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffloadSession:Lcom/android/server/display/DisplayOffloadSessionImpl;

    return-void
.end method

.method public setDisplayOffsetsLocked(II)V
    .registers 3

    .line 998
    iput p1, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetX:I

    .line 999
    iput p2, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetY:I

    return-void
.end method

.method public setDisplayScalingDisabledLocked(Z)V
    .registers 2

    .line 1017
    iput-boolean p1, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayScalingDisabled:Z

    return-void
.end method

.method public setEnabledLocked(Z)V
    .registers 3

    .line 1179
    iget-boolean v0, p0, Lcom/android/server/display/LogicalDisplay;->mIsEnabled:Z

    if-eq p1, v0, :cond_9

    const/4 v0, 0x1

    .line 1180
    iput-boolean v0, p0, Lcom/android/server/display/LogicalDisplay;->mDirty:Z

    .line 1181
    iput-boolean p1, p0, Lcom/android/server/display/LogicalDisplay;->mIsEnabled:Z

    :cond_9
    return-void
.end method

.method public setHasContentLocked(Z)V
    .registers 2

    .line 933
    iput-boolean p1, p0, Lcom/android/server/display/LogicalDisplay;->mHasContent:Z

    return-void
.end method

.method public setIsForceSdr(Z)Z
    .registers 6

    .line 1038
    invoke-virtual {p0}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v0

    iget v0, v0, Landroid/view/DisplayInfo;->type:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_13

    const/4 v3, 0x2

    if-eq v0, v3, :cond_13

    const/4 v3, 0x4

    if-ne v0, v3, :cond_11

    goto :goto_13

    :cond_11
    move v0, v1

    goto :goto_14

    :cond_13
    :goto_13
    move v0, v2

    :goto_14
    if-eqz v0, :cond_2c

    .line 1044
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget-boolean v3, v0, Landroid/view/DisplayInfo;->isForceSdr:Z

    if-eq v3, p1, :cond_2c

    .line 1045
    iput-boolean p1, v0, Landroid/view/DisplayInfo;->isForceSdr:Z

    .line 1046
    iget-object p0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Lcom/android/server/display/DisplayInfoProxy;

    sget-object p1, Landroid/view/DisplayInfo$DisplayInfoGroup;->COLOR_AND_BRIGHTNESS:Landroid/view/DisplayInfo$DisplayInfoGroup;

    invoke-virtual {p1}, Landroid/view/DisplayInfo$DisplayInfoGroup;->getMask()I

    move-result p1

    sget-object v0, Landroid/view/DisplayInfo$DisplayInfoChangeSource;->OTHER:Landroid/view/DisplayInfo$DisplayInfoChangeSource;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/display/DisplayInfoProxy;->set(ILandroid/view/DisplayInfo$DisplayInfoChangeSource;)V

    return v2

    :cond_2c
    return v1
.end method

.method public setIsInTransitionLocked(Z)V
    .registers 2

    .line 1199
    iput-boolean p1, p0, Lcom/android/server/display/LogicalDisplay;->mIsInTransition:Z

    return-void
.end method

.method public setLeadDisplayLocked(I)V
    .registers 4

    .line 1243
    iget v0, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    iget v1, p0, Lcom/android/server/display/LogicalDisplay;->mLeadDisplayId:I

    if-eq v0, v1, :cond_a

    if-eq v0, p1, :cond_a

    .line 1244
    iput p1, p0, Lcom/android/server/display/LogicalDisplay;->mLeadDisplayId:I

    :cond_a
    return-void
.end method

.method public setPowerThrottlingDataIdLocked(Ljava/lang/String;)V
    .registers 3

    .line 1218
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mPowerThrottlingDataId:Ljava/lang/String;

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 1219
    iput-object p1, p0, Lcom/android/server/display/LogicalDisplay;->mPowerThrottlingDataId:Ljava/lang/String;

    const/4 p1, 0x1

    .line 1220
    iput-boolean p1, p0, Lcom/android/server/display/LogicalDisplay;->mDirty:Z

    :cond_d
    return-void
.end method

.method public setPrimaryDisplayDeviceLocked(Lcom/android/server/display/DisplayDevice;)Lcom/android/server/display/DisplayDevice;
    .registers 7

    .line 1145
    invoke-virtual {p0}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 1146
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    .line 1147
    iput-object p1, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    const/4 v2, 0x0

    .line 1150
    iput-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDeviceInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 1151
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    sget-object v3, Lcom/android/server/display/LogicalDisplay;->EMPTY_DISPLAY_INFO:Landroid/view/DisplayInfo;

    invoke-virtual {v2, v3}, Landroid/view/DisplayInfo;->copyFrom(Landroid/view/DisplayInfo;)V

    .line 1152
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Lcom/android/server/display/DisplayInfoProxy;

    invoke-virtual {p0}, Lcom/android/server/display/LogicalDisplay;->computeCurrentDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v3

    sget-object v4, Landroid/view/DisplayInfo$DisplayInfoChangeSource;->DISPLAY_SWAP:Landroid/view/DisplayInfo$DisplayInfoChangeSource;

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/server/display/DisplayInfoProxy;->set(Landroid/view/DisplayInfo;Landroid/view/DisplayInfo;Landroid/view/DisplayInfo$DisplayInfoChangeSource;)V

    if-eqz p1, :cond_27

    .line 1158
    iget-boolean p1, p0, Lcom/android/server/display/LogicalDisplay;->mCanHostTasks:Z

    invoke-virtual {p0, p1}, Lcom/android/server/display/LogicalDisplay;->validateCanHostTasksLocked(Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/display/LogicalDisplay;->mCanHostTasks:Z

    :cond_27
    return-object v1
.end method

.method public setRequestedColorModeLocked(I)V
    .registers 2

    .line 955
    iput p1, p0, Lcom/android/server/display/LogicalDisplay;->mRequestedColorMode:I

    return-void
.end method

.method public setRequestedMinimalPostProcessingLocked(Z)V
    .registers 2

    .line 972
    iput-boolean p1, p0, Lcom/android/server/display/LogicalDisplay;->mRequestedMinimalPostProcessing:Z

    return-void
.end method

.method public setThermalBrightnessThrottlingDataIdLocked(Ljava/lang/String;)V
    .registers 3

    .line 1207
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mThermalBrightnessThrottlingDataId:Ljava/lang/String;

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 1208
    iput-object p1, p0, Lcom/android/server/display/LogicalDisplay;->mThermalBrightnessThrottlingDataId:Ljava/lang/String;

    const/4 p1, 0x1

    .line 1209
    iput-boolean p1, p0, Lcom/android/server/display/LogicalDisplay;->mDirty:Z

    :cond_d
    return-void
.end method

.method public setUserDisabledHdrTypes([I)V
    .registers 3

    .line 1021
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mUserDisabledHdrTypes:[I

    if-eq v0, p1, :cond_17

    .line 1022
    iput-object p1, p0, Lcom/android/server/display/LogicalDisplay;->mUserDisabledHdrTypes:[I

    .line 1023
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iput-object p1, v0, Landroid/view/DisplayInfo;->userDisabledHdrTypes:[I

    .line 1024
    iget-object p0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Lcom/android/server/display/DisplayInfoProxy;

    sget-object p1, Landroid/view/DisplayInfo$DisplayInfoGroup;->COLOR_AND_BRIGHTNESS:Landroid/view/DisplayInfo$DisplayInfoGroup;

    invoke-virtual {p1}, Landroid/view/DisplayInfo$DisplayInfoGroup;->getMask()I

    move-result p1

    sget-object v0, Landroid/view/DisplayInfo$DisplayInfoChangeSource;->OTHER:Landroid/view/DisplayInfo$DisplayInfoChangeSource;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/display/DisplayInfoProxy;->set(ILandroid/view/DisplayInfo$DisplayInfoChangeSource;)V

    :cond_17
    return-void
.end method

.method public swapDisplaysLocked(Lcom/android/server/display/LogicalDisplay;)V
    .registers 3

    .line 1133
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    .line 1134
    invoke-virtual {p1, v0}, Lcom/android/server/display/LogicalDisplay;->setPrimaryDisplayDeviceLocked(Lcom/android/server/display/DisplayDevice;)Lcom/android/server/display/DisplayDevice;

    move-result-object p1

    .line 1135
    invoke-virtual {p0, p1}, Lcom/android/server/display/LogicalDisplay;->setPrimaryDisplayDeviceLocked(Lcom/android/server/display/DisplayDevice;)Lcom/android/server/display/DisplayDevice;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1310
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 1311
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, v1}, Lcom/android/server/display/LogicalDisplay;->dumpLocked(Ljava/io/PrintWriter;)V

    .line 1312
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updateDisplayGroupIdLocked(I)V
    .registers 3

    .line 407
    iget v0, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayGroupId:I

    if-eq p1, v0, :cond_9

    .line 408
    iput p1, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayGroupId:I

    const/4 p1, 0x1

    .line 409
    iput-boolean p1, p0, Lcom/android/server/display/LogicalDisplay;->mDirty:Z

    :cond_9
    return-void
.end method

.method public final updateFrameRateOverrides(Lcom/android/server/display/DisplayDeviceInfo;)V
    .registers 10

    .line 692
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mTempFrameRateOverride:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 693
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mFrameRateOverrides:[Landroid/view/DisplayEventReceiver$FrameRateOverride;

    const/4 v1, 0x0

    if-eqz v0, :cond_20

    .line 695
    array-length v2, v0

    move v3, v1

    :goto_c
    if-ge v3, v2, :cond_20

    aget-object v4, v0, v3

    .line 696
    iget-object v5, p0, Lcom/android/server/display/LogicalDisplay;->mTempFrameRateOverride:Landroid/util/SparseArray;

    iget v6, v4, Landroid/view/DisplayEventReceiver$FrameRateOverride;->uid:I

    iget v4, v4, Landroid/view/DisplayEventReceiver$FrameRateOverride;->frameRateHz:F

    .line 697
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    .line 696
    invoke-virtual {v5, v6, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 700
    :cond_20
    iget-object p1, p1, Lcom/android/server/display/DisplayDeviceInfo;->frameRateOverrides:[Landroid/view/DisplayEventReceiver$FrameRateOverride;

    iput-object p1, p0, Lcom/android/server/display/LogicalDisplay;->mFrameRateOverrides:[Landroid/view/DisplayEventReceiver$FrameRateOverride;

    if-eqz p1, :cond_62

    .line 703
    array-length v0, p1

    move v2, v1

    :goto_28
    if-ge v2, v0, :cond_62

    aget-object v3, p1, v2

    .line 704
    iget-object v4, p0, Lcom/android/server/display/LogicalDisplay;->mTempFrameRateOverride:Landroid/util/SparseArray;

    iget v5, v3, Landroid/view/DisplayEventReceiver$FrameRateOverride;->uid:I

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    cmpl-float v5, v4, v6

    if-eqz v5, :cond_52

    .line 705
    iget v5, v3, Landroid/view/DisplayEventReceiver$FrameRateOverride;->frameRateHz:F

    cmpl-float v4, v5, v4

    if-eqz v4, :cond_4a

    goto :goto_52

    .line 709
    :cond_4a
    iget-object v4, p0, Lcom/android/server/display/LogicalDisplay;->mTempFrameRateOverride:Landroid/util/SparseArray;

    iget v3, v3, Landroid/view/DisplayEventReceiver$FrameRateOverride;->uid:I

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->delete(I)V

    goto :goto_5f

    .line 706
    :cond_52
    :goto_52
    iget-object v4, p0, Lcom/android/server/display/LogicalDisplay;->mTempFrameRateOverride:Landroid/util/SparseArray;

    iget v5, v3, Landroid/view/DisplayEventReceiver$FrameRateOverride;->uid:I

    iget v3, v3, Landroid/view/DisplayEventReceiver$FrameRateOverride;->frameRateHz:F

    .line 707
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    .line 706
    invoke-virtual {v4, v5, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_5f
    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    .line 713
    :cond_62
    :goto_62
    iget-object p1, p0, Lcom/android/server/display/LogicalDisplay;->mTempFrameRateOverride:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-ge v1, p1, :cond_7c

    .line 714
    iget-object p1, p0, Lcom/android/server/display/LogicalDisplay;->mPendingFrameRateOverrideUids:Landroid/util/ArraySet;

    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mTempFrameRateOverride:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_62

    :cond_7c
    return-void
.end method

.method public updateLayoutLimitedRefreshRateLocked(Landroid/view/SurfaceControl$RefreshRateRange;)V
    .registers 3

    .line 420
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mLayoutLimitedRefreshRate:Landroid/view/SurfaceControl$RefreshRateRange;

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 421
    iput-object p1, p0, Lcom/android/server/display/LogicalDisplay;->mLayoutLimitedRefreshRate:Landroid/view/SurfaceControl$RefreshRateRange;

    const/4 p1, 0x1

    .line 422
    iput-boolean p1, p0, Lcom/android/server/display/LogicalDisplay;->mDirty:Z

    :cond_d
    return-void
.end method

.method public updateLocked(Lcom/android/server/display/DisplayDeviceRepository;Lcom/android/server/display/mode/SyntheticModeManager;)V
    .registers 20

    move-object/from16 v0, p0

    .line 451
    iget-object v1, v0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    if-nez v1, :cond_7

    goto :goto_2d

    :cond_7
    move-object/from16 v2, p1

    .line 456
    invoke-virtual {v2, v1}, Lcom/android/server/display/DisplayDeviceRepository;->containsLocked(Lcom/android/server/display/DisplayDevice;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_14

    .line 457
    invoke-virtual {v0, v2}, Lcom/android/server/display/LogicalDisplay;->setPrimaryDisplayDeviceLocked(Lcom/android/server/display/DisplayDevice;)Lcom/android/server/display/DisplayDevice;

    return-void

    .line 466
    :cond_14
    iget-object v1, v0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    invoke-virtual {v1}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v1

    .line 467
    iget-object v3, v0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    invoke-virtual {v3}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceConfig()Lcom/android/server/display/DisplayDeviceConfig;

    move-result-object v3

    .line 468
    iget-object v4, v0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDeviceInfo:Lcom/android/server/display/DisplayDeviceInfo;

    invoke-static {v4, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2e

    iget-boolean v4, v0, Lcom/android/server/display/LogicalDisplay;->mDirty:Z

    if-eqz v4, :cond_2d

    goto :goto_2e

    :cond_2d
    :goto_2d
    return-void

    .line 469
    :cond_2e
    :goto_2e
    invoke-virtual {v0}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v4

    .line 471
    iget-object v5, v0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v6, v0, Lcom/android/server/display/LogicalDisplay;->mLayerStack:I

    iput v6, v5, Landroid/view/DisplayInfo;->layerStack:I

    const/4 v6, 0x0

    .line 472
    iput v6, v5, Landroid/view/DisplayInfo;->flags:I

    .line 474
    iput v6, v5, Landroid/view/DisplayInfo;->removeMode:I

    .line 475
    iget v7, v1, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit8 v8, v7, 0x8

    const/4 v9, 0x1

    if-eqz v8, :cond_46

    .line 476
    iput v9, v5, Landroid/view/DisplayInfo;->flags:I

    :cond_46
    and-int/lit8 v8, v7, 0x4

    const/4 v10, 0x2

    if-eqz v8, :cond_50

    .line 479
    iget v8, v5, Landroid/view/DisplayInfo;->flags:I

    or-int/2addr v8, v10

    iput v8, v5, Landroid/view/DisplayInfo;->flags:I

    :cond_50
    and-int/lit8 v8, v7, 0x10

    if-eqz v8, :cond_5c

    .line 482
    iget v8, v5, Landroid/view/DisplayInfo;->flags:I

    or-int/lit8 v8, v8, 0x4

    iput v8, v5, Landroid/view/DisplayInfo;->flags:I

    .line 484
    iput v9, v5, Landroid/view/DisplayInfo;->removeMode:I

    :cond_5c
    and-int/lit16 v8, v7, 0x400

    if-eqz v8, :cond_62

    .line 487
    iput v9, v5, Landroid/view/DisplayInfo;->removeMode:I

    :cond_62
    and-int/lit8 v8, v7, 0x40

    if-eqz v8, :cond_6c

    .line 490
    iget v8, v5, Landroid/view/DisplayInfo;->flags:I

    or-int/lit8 v8, v8, 0x8

    iput v8, v5, Landroid/view/DisplayInfo;->flags:I

    :cond_6c
    and-int/lit16 v8, v7, 0x100

    if-eqz v8, :cond_76

    .line 493
    iget v8, v5, Landroid/view/DisplayInfo;->flags:I

    or-int/lit8 v8, v8, 0x10

    iput v8, v5, Landroid/view/DisplayInfo;->flags:I

    :cond_76
    and-int/lit16 v8, v7, 0x200

    if-eqz v8, :cond_80

    .line 496
    iget v8, v5, Landroid/view/DisplayInfo;->flags:I

    or-int/lit8 v8, v8, 0x20

    iput v8, v5, Landroid/view/DisplayInfo;->flags:I

    :cond_80
    and-int/lit16 v8, v7, 0x1000

    if-eqz v8, :cond_8a

    .line 499
    iget v8, v5, Landroid/view/DisplayInfo;->flags:I

    or-int/lit8 v8, v8, 0x40

    iput v8, v5, Landroid/view/DisplayInfo;->flags:I

    :cond_8a
    and-int/lit16 v8, v7, 0x2000

    if-eqz v8, :cond_94

    .line 502
    iget v8, v5, Landroid/view/DisplayInfo;->flags:I

    or-int/lit16 v8, v8, 0x80

    iput v8, v5, Landroid/view/DisplayInfo;->flags:I

    :cond_94
    and-int/lit16 v8, v7, 0x4000

    if-eqz v8, :cond_9e

    .line 505
    iget v8, v5, Landroid/view/DisplayInfo;->flags:I

    or-int/lit16 v8, v8, 0x100

    iput v8, v5, Landroid/view/DisplayInfo;->flags:I

    :cond_9e
    const v8, 0x8000

    and-int v11, v7, v8

    if-eqz v11, :cond_ab

    .line 508
    iget v11, v5, Landroid/view/DisplayInfo;->flags:I

    or-int/lit16 v11, v11, 0x200

    iput v11, v5, Landroid/view/DisplayInfo;->flags:I

    :cond_ab
    and-int/lit8 v11, v7, 0x2

    if-eqz v11, :cond_b5

    .line 511
    iget v11, v5, Landroid/view/DisplayInfo;->flags:I

    or-int/lit16 v11, v11, 0x4000

    iput v11, v5, Landroid/view/DisplayInfo;->flags:I

    :cond_b5
    const/high16 v11, 0x10000

    and-int/2addr v11, v7

    if-eqz v11, :cond_c0

    .line 514
    iget v11, v5, Landroid/view/DisplayInfo;->flags:I

    or-int/lit16 v11, v11, 0x400

    iput v11, v5, Landroid/view/DisplayInfo;->flags:I

    :cond_c0
    const/high16 v11, 0x20000

    and-int/2addr v11, v7

    if-eqz v11, :cond_cb

    .line 517
    iget v11, v5, Landroid/view/DisplayInfo;->flags:I

    or-int/lit16 v11, v11, 0x800

    iput v11, v5, Landroid/view/DisplayInfo;->flags:I

    :cond_cb
    const/high16 v11, 0x80000

    and-int/2addr v11, v7

    if-eqz v11, :cond_d6

    .line 520
    iget v11, v5, Landroid/view/DisplayInfo;->flags:I

    or-int/lit16 v11, v11, 0x1000

    iput v11, v5, Landroid/view/DisplayInfo;->flags:I

    :cond_d6
    const/high16 v11, 0x100000

    and-int/2addr v7, v11

    if-eqz v7, :cond_e4

    .line 523
    iget v7, v0, Lcom/android/server/display/LogicalDisplay;->mDevicePosition:I

    if-eq v7, v9, :cond_e4

    .line 525
    iget v7, v5, Landroid/view/DisplayInfo;->flags:I

    or-int/2addr v7, v8

    iput v7, v5, Landroid/view/DisplayInfo;->flags:I

    .line 528
    :cond_e4
    iget v5, v1, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    .line 529
    iget v7, v1, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    .line 530
    iget v8, v1, Lcom/android/server/display/DisplayDeviceInfo;->xDpi:F

    .line 531
    iget v11, v1, Lcom/android/server/display/DisplayDeviceInfo;->yDpi:F

    .line 533
    invoke-virtual {v0, v1}, Lcom/android/server/display/LogicalDisplay;->getUserPreferredModeForSizeOverrideLocked(Lcom/android/server/display/DisplayDeviceInfo;)Landroid/view/Display$Mode;

    move-result-object v12

    if-eqz v12, :cond_10a

    .line 534
    iget-boolean v13, v0, Lcom/android/server/display/LogicalDisplay;->mSizeOverrideEnabled:Z

    if-eqz v13, :cond_10a

    .line 535
    invoke-virtual {v12}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v5

    .line 536
    invoke-virtual {v12}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v7

    int-to-float v12, v5

    .line 537
    iget v13, v1, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    int-to-float v13, v13

    div-float/2addr v12, v13

    mul-float/2addr v8, v12

    int-to-float v12, v7

    .line 538
    iget v13, v1, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    int-to-float v13, v13

    div-float/2addr v12, v13

    mul-float/2addr v11, v12

    .line 541
    :cond_10a
    invoke-static {v1}, Lcom/android/server/display/LogicalDisplay;->getMaskingInsets(Lcom/android/server/display/DisplayDeviceInfo;)Landroid/graphics/Rect;

    move-result-object v12

    .line 542
    iget v13, v12, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v13

    iget v13, v12, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v13

    .line 543
    iget v13, v12, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v13

    iget v12, v12, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v12

    .line 545
    iget-boolean v12, v0, Lcom/android/server/display/LogicalDisplay;->mIsAnisotropicModesEnabled:Z

    if-nez v12, :cond_14a

    iget v12, v1, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    if-ne v12, v10, :cond_14a

    const/4 v10, 0x0

    cmpl-float v12, v8, v10

    if-lez v12, :cond_14a

    cmpl-float v10, v11, v10

    if-lez v10, :cond_14a

    const v10, 0x3f833333    # 1.025f

    mul-float v12, v11, v10

    cmpl-float v12, v8, v12

    if-lez v12, :cond_13d

    int-to-float v7, v7

    mul-float/2addr v7, v8

    div-float/2addr v7, v11

    const-wide/high16 v15, 0x3fe0000000000000L    # 0.5

    float-to-double v13, v7

    add-double/2addr v13, v15

    double-to-int v7, v13

    goto :goto_14a

    :cond_13d
    const-wide/high16 v15, 0x3fe0000000000000L    # 0.5

    mul-float/2addr v10, v8

    cmpg-float v10, v10, v11

    if-gez v10, :cond_14a

    int-to-float v5, v5

    mul-float/2addr v5, v11

    div-float/2addr v5, v8

    float-to-double v12, v5

    add-double/2addr v12, v15

    double-to-int v5, v12

    .line 555
    :cond_14a
    :goto_14a
    iget-object v10, v0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v12, v1, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    iput v12, v10, Landroid/view/DisplayInfo;->type:I

    .line 556
    iget-object v12, v1, Lcom/android/server/display/DisplayDeviceInfo;->address:Landroid/view/DisplayAddress;

    iput-object v12, v10, Landroid/view/DisplayInfo;->address:Landroid/view/DisplayAddress;

    .line 557
    iget-object v12, v1, Lcom/android/server/display/DisplayDeviceInfo;->deviceProductInfo:Landroid/hardware/display/DeviceProductInfo;

    iput-object v12, v10, Landroid/view/DisplayInfo;->deviceProductInfo:Landroid/hardware/display/DeviceProductInfo;

    .line 558
    iget-object v12, v1, Lcom/android/server/display/DisplayDeviceInfo;->name:Ljava/lang/String;

    iput-object v12, v10, Landroid/view/DisplayInfo;->name:Ljava/lang/String;

    .line 559
    iget-object v12, v1, Lcom/android/server/display/DisplayDeviceInfo;->uniqueId:Ljava/lang/String;

    iput-object v12, v10, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    .line 560
    iput v5, v10, Landroid/view/DisplayInfo;->appWidth:I

    .line 561
    iput v7, v10, Landroid/view/DisplayInfo;->appHeight:I

    .line 562
    iput v5, v10, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 563
    iput v7, v10, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 564
    iput v6, v10, Landroid/view/DisplayInfo;->rotation:I

    .line 565
    iget v12, v1, Lcom/android/server/display/DisplayDeviceInfo;->modeId:I

    iput v12, v10, Landroid/view/DisplayInfo;->modeId:I

    .line 566
    iget v12, v1, Lcom/android/server/display/DisplayDeviceInfo;->renderFrameRate:F

    iput v12, v10, Landroid/view/DisplayInfo;->renderFrameRate:F

    .line 567
    iget-boolean v12, v1, Lcom/android/server/display/DisplayDeviceInfo;->hasArrSupport:Z

    iput-boolean v12, v10, Landroid/view/DisplayInfo;->hasArrSupport:Z

    .line 568
    iget-object v12, v1, Lcom/android/server/display/DisplayDeviceInfo;->frameRateCategoryRate:Landroid/view/FrameRateCategoryRate;

    iput-object v12, v10, Landroid/view/DisplayInfo;->frameRateCategoryRate:Landroid/view/FrameRateCategoryRate;

    .line 569
    iget-object v12, v1, Lcom/android/server/display/DisplayDeviceInfo;->supportedRefreshRates:[F

    array-length v13, v12

    invoke-static {v12, v13}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v12

    iput-object v12, v10, Landroid/view/DisplayInfo;->supportedRefreshRates:[F

    .line 571
    iget-object v10, v0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v12, v1, Lcom/android/server/display/DisplayDeviceInfo;->defaultModeId:I

    iput v12, v10, Landroid/view/DisplayInfo;->defaultModeId:I

    .line 572
    iget v12, v1, Lcom/android/server/display/DisplayDeviceInfo;->userPreferredModeId:I

    iput v12, v10, Landroid/view/DisplayInfo;->userPreferredModeId:I

    .line 573
    iget-object v12, v1, Lcom/android/server/display/DisplayDeviceInfo;->supportedModes:[Landroid/view/Display$Mode;

    array-length v13, v12

    invoke-static {v12, v13}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Landroid/view/Display$Mode;

    iput-object v12, v10, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    .line 575
    iget-object v10, v0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget-boolean v12, v0, Lcom/android/server/display/LogicalDisplay;->mSyntheticModesV2Enabled:Z

    if-eqz v12, :cond_1a8

    .line 576
    iget-object v3, v1, Lcom/android/server/display/DisplayDeviceInfo;->supportedModes:[Landroid/view/Display$Mode;

    array-length v12, v3

    invoke-static {v3, v12}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/view/Display$Mode;

    goto :goto_1b2

    .line 577
    :cond_1a8
    iget-object v12, v10, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    iget-boolean v13, v10, Landroid/view/DisplayInfo;->hasArrSupport:Z

    move-object/from16 v14, p2

    invoke-virtual {v14, v3, v12, v13}, Lcom/android/server/display/mode/SyntheticModeManager;->createAppSupportedModes(Lcom/android/server/display/DisplayDeviceConfig;[Landroid/view/Display$Mode;Z)[Landroid/view/Display$Mode;

    move-result-object v3

    :goto_1b2
    iput-object v3, v10, Landroid/view/DisplayInfo;->appsSupportedModes:[Landroid/view/Display$Mode;

    .line 579
    iget-object v3, v0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v10, v1, Lcom/android/server/display/DisplayDeviceInfo;->colorMode:I

    iput v10, v3, Landroid/view/DisplayInfo;->colorMode:I

    .line 580
    iget-object v10, v1, Lcom/android/server/display/DisplayDeviceInfo;->supportedColorModes:[I

    array-length v12, v10

    invoke-static {v10, v12}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v10

    iput-object v10, v3, Landroid/view/DisplayInfo;->supportedColorModes:[I

    .line 583
    iget-object v3, v0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v10, v1, Lcom/android/server/display/DisplayDeviceInfo;->hdrCapabilities:Landroid/view/Display$HdrCapabilities;

    iput-object v10, v3, Landroid/view/DisplayInfo;->hdrCapabilities:Landroid/view/Display$HdrCapabilities;

    .line 584
    iget-boolean v10, v1, Lcom/android/server/display/DisplayDeviceInfo;->isForceSdr:Z

    iput-boolean v10, v3, Landroid/view/DisplayInfo;->isForceSdr:Z

    .line 585
    iget-object v10, v0, Lcom/android/server/display/LogicalDisplay;->mUserDisabledHdrTypes:[I

    iput-object v10, v3, Landroid/view/DisplayInfo;->userDisabledHdrTypes:[I

    .line 586
    iget-boolean v10, v1, Lcom/android/server/display/DisplayDeviceInfo;->allmSupported:Z

    if-nez v10, :cond_1dc

    iget-boolean v10, v1, Lcom/android/server/display/DisplayDeviceInfo;->gameContentTypeSupported:Z

    if-eqz v10, :cond_1da

    goto :goto_1dc

    :cond_1da
    move v10, v6

    goto :goto_1dd

    :cond_1dc
    :goto_1dc
    move v10, v9

    :goto_1dd
    iput-boolean v10, v3, Landroid/view/DisplayInfo;->minimalPostProcessingSupported:Z

    .line 588
    iget v10, v1, Lcom/android/server/display/DisplayDeviceInfo;->densityDpi:I

    if-lez v10, :cond_1e4

    goto :goto_1e8

    .line 590
    :cond_1e4
    invoke-virtual {v0, v8, v11, v5, v7}, Lcom/android/server/display/LogicalDisplay;->calculateBaseDensity(FFII)I

    move-result v10

    :goto_1e8
    iput v10, v3, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    .line 592
    iget-object v3, v0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iput v8, v3, Landroid/view/DisplayInfo;->physicalXDpi:F

    .line 593
    iput v11, v3, Landroid/view/DisplayInfo;->physicalYDpi:F

    .line 594
    iget-wide v10, v1, Lcom/android/server/display/DisplayDeviceInfo;->appVsyncOffsetNanos:J

    iput-wide v10, v3, Landroid/view/DisplayInfo;->appVsyncOffsetNanos:J

    .line 595
    iget-wide v10, v1, Lcom/android/server/display/DisplayDeviceInfo;->presentationDeadlineNanos:J

    iput-wide v10, v3, Landroid/view/DisplayInfo;->presentationDeadlineNanos:J

    .line 596
    iget v8, v1, Lcom/android/server/display/DisplayDeviceInfo;->state:I

    iput v8, v3, Landroid/view/DisplayInfo;->state:I

    .line 597
    iget v8, v1, Lcom/android/server/display/DisplayDeviceInfo;->committedState:I

    iput v8, v3, Landroid/view/DisplayInfo;->committedState:I

    .line 598
    iput v5, v3, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    .line 599
    iput v7, v3, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    .line 600
    iput v5, v3, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    .line 601
    iput v7, v3, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    .line 602
    iget v5, v1, Lcom/android/server/display/DisplayDeviceInfo;->ownerUid:I

    iput v5, v3, Landroid/view/DisplayInfo;->ownerUid:I

    .line 603
    iget-object v5, v1, Lcom/android/server/display/DisplayDeviceInfo;->ownerPackageName:Ljava/lang/String;

    iput-object v5, v3, Landroid/view/DisplayInfo;->ownerPackageName:Ljava/lang/String;

    .line 604
    iget v5, v1, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit16 v5, v5, 0x800

    if-eqz v5, :cond_218

    move v5, v9

    goto :goto_219

    :cond_218
    move v5, v6

    :goto_219
    if-eqz v5, :cond_21c

    goto :goto_21e

    .line 606
    :cond_21c
    iget-object v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->displayCutout:Landroid/view/DisplayCutout;

    :goto_21e
    iput-object v2, v3, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    .line 607
    iget v2, v0, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    iput v2, v3, Landroid/view/DisplayInfo;->displayId:I

    .line 608
    iget v2, v0, Lcom/android/server/display/LogicalDisplay;->mDisplayGroupId:I

    iput v2, v3, Landroid/view/DisplayInfo;->displayGroupId:I

    .line 609
    invoke-virtual {v0, v1}, Lcom/android/server/display/LogicalDisplay;->updateFrameRateOverrides(Lcom/android/server/display/DisplayDeviceInfo;)V

    .line 610
    iget-object v2, v0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v1, Lcom/android/server/display/DisplayDeviceInfo;->brightnessMinimum:F

    iput v3, v2, Landroid/view/DisplayInfo;->brightnessMinimum:F

    .line 611
    iget v3, v1, Lcom/android/server/display/DisplayDeviceInfo;->brightnessMaximum:F

    iput v3, v2, Landroid/view/DisplayInfo;->brightnessMaximum:F

    .line 612
    iget v3, v1, Lcom/android/server/display/DisplayDeviceInfo;->brightnessDefault:F

    iput v3, v2, Landroid/view/DisplayInfo;->brightnessDefault:F

    .line 613
    iget v3, v1, Lcom/android/server/display/DisplayDeviceInfo;->brightnessDim:F

    iput v3, v2, Landroid/view/DisplayInfo;->brightnessDim:F

    .line 614
    iget v3, v1, Lcom/android/server/display/DisplayDeviceInfo;->hdrSdrRatio:F

    iput v3, v2, Landroid/view/DisplayInfo;->hdrSdrRatio:F

    .line 615
    iget-object v3, v1, Lcom/android/server/display/DisplayDeviceInfo;->roundedCorners:Landroid/view/RoundedCorners;

    iput-object v3, v2, Landroid/view/DisplayInfo;->roundedCorners:Landroid/view/RoundedCorners;

    .line 616
    iget v3, v1, Lcom/android/server/display/DisplayDeviceInfo;->installOrientation:I

    iput v3, v2, Landroid/view/DisplayInfo;->installOrientation:I

    .line 617
    iget-object v3, v1, Lcom/android/server/display/DisplayDeviceInfo;->displayShape:Landroid/view/DisplayShape;

    iput-object v3, v2, Landroid/view/DisplayInfo;->displayShape:Landroid/view/DisplayShape;

    .line 619
    iget v3, v0, Lcom/android/server/display/LogicalDisplay;->mDevicePosition:I

    if-ne v3, v9, :cond_259

    .line 625
    iget v3, v2, Landroid/view/DisplayInfo;->flags:I

    or-int/lit16 v3, v3, 0x2008

    .line 626
    iput v3, v2, Landroid/view/DisplayInfo;->flags:I

    .line 627
    iput v9, v2, Landroid/view/DisplayInfo;->removeMode:I

    .line 630
    :cond_259
    iget-object v3, v0, Lcom/android/server/display/LogicalDisplay;->mLayoutLimitedRefreshRate:Landroid/view/SurfaceControl$RefreshRateRange;

    iput-object v3, v2, Landroid/view/DisplayInfo;->layoutLimitedRefreshRate:Landroid/view/SurfaceControl$RefreshRateRange;

    .line 631
    iget-object v3, v0, Lcom/android/server/display/LogicalDisplay;->mThermalRefreshRateThrottling:Landroid/util/SparseArray;

    iput-object v3, v2, Landroid/view/DisplayInfo;->thermalRefreshRateThrottling:Landroid/util/SparseArray;

    .line 632
    iget-object v3, v0, Lcom/android/server/display/LogicalDisplay;->mThermalBrightnessThrottlingDataId:Ljava/lang/String;

    iput-object v3, v2, Landroid/view/DisplayInfo;->thermalBrightnessThrottlingDataId:Ljava/lang/String;

    .line 633
    iget-boolean v3, v0, Lcom/android/server/display/LogicalDisplay;->mCanHostTasks:Z

    iput-boolean v3, v2, Landroid/view/DisplayInfo;->canHostTasks:Z

    .line 635
    iput-object v1, v0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDeviceInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 636
    iget-object v1, v0, Lcom/android/server/display/LogicalDisplay;->mInfo:Lcom/android/server/display/DisplayInfoProxy;

    invoke-virtual {v0}, Lcom/android/server/display/LogicalDisplay;->computeCurrentDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v2

    sget-object v3, Landroid/view/DisplayInfo$DisplayInfoChangeSource;->DISPLAY_MANAGER:Landroid/view/DisplayInfo$DisplayInfoChangeSource;

    invoke-virtual {v1, v4, v2, v3}, Lcom/android/server/display/DisplayInfoProxy;->set(Landroid/view/DisplayInfo;Landroid/view/DisplayInfo;Landroid/view/DisplayInfo$DisplayInfoChangeSource;)V

    .line 638
    iput-boolean v6, v0, Lcom/android/server/display/LogicalDisplay;->mDirty:Z

    return-void
.end method

.method public updateThermalRefreshRateThrottling(Landroid/util/SparseArray;)V
    .registers 3

    if-nez p1, :cond_7

    .line 433
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 435
    :cond_7
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mThermalRefreshRateThrottling:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contentEquals(Landroid/util/SparseArray;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 436
    iput-object p1, p0, Lcom/android/server/display/LogicalDisplay;->mThermalRefreshRateThrottling:Landroid/util/SparseArray;

    const/4 p1, 0x1

    .line 437
    iput-boolean p1, p0, Lcom/android/server/display/LogicalDisplay;->mDirty:Z

    :cond_14
    return-void
.end method

.method public final validateCanHostTasksLocked(Z)Z
    .registers 5

    .line 1088
    invoke-virtual {p0}, Lcom/android/server/display/LogicalDisplay;->getDisplayIdLocked()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_8

    return v1

    .line 1093
    :cond_8
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayDevice;->shouldOnlyMirror()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_12

    return v2

    .line 1098
    :cond_12
    invoke-virtual {p0}, Lcom/android/server/display/LogicalDisplay;->getDevicePositionLocked()I

    move-result v0

    if-ne v0, v1, :cond_19

    move v2, v1

    .line 1099
    :cond_19
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    .line 1100
    invoke-virtual {v0}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v0

    iget v0, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_3f

    if-eqz v2, :cond_28

    goto :goto_3f

    .line 1110
    :cond_28
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    .line 1111
    invoke-virtual {v0}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v0

    iget v0, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_35

    return v1

    .line 1120
    :cond_35
    iget-object p0, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    invoke-virtual {p0}, Lcom/android/server/display/DisplayDevice;->shouldAutoMirror()Z

    move-result p0

    if-eqz p0, :cond_3e

    return v1

    :cond_3e
    return p1

    :cond_3f
    :goto_3f
    return v1
.end method
