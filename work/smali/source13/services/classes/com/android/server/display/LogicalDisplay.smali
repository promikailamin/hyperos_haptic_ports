.class final Lcom/android/server/display/LogicalDisplay;
.super Ljava/lang/Object;
.source "LogicalDisplay.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/LogicalDisplay$DisplayPhase;
    }
.end annotation


# static fields
.field private static final BLANK_LAYER_STACK:I = -0x1

.field static final DISPLAY_PHASE_DISABLED:I = -0x1

.field static final DISPLAY_PHASE_ENABLED:I = 0x1

.field static final DISPLAY_PHASE_LAYOUT_TRANSITION:I = 0x0

.field private static final EMPTY_DISPLAY_INFO:Landroid/view/DisplayInfo;

.field private static final TAG:Ljava/lang/String; = "LogicalDisplay"


# instance fields
.field private final mBaseDisplayInfo:Landroid/view/DisplayInfo;

.field private mDesiredDisplayModeSpecs:Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;

.field private mDisplayGroupId:I

.field private final mDisplayId:I

.field private mDisplayOffsetX:I

.field private mDisplayOffsetY:I

.field private final mDisplayPosition:Landroid/graphics/Point;

.field private mDisplayScalingDisabled:Z

.field private mFrameRateOverrides:[Landroid/view/DisplayEventReceiver$FrameRateOverride;

.field private mHasContent:Z

.field private final mInfo:Lcom/android/server/display/DisplayInfoProxy;

.field private final mIsFoldable:Z

.field private final mLayerStack:I

.field private mOverrideDisplayInfo:Landroid/view/DisplayInfo;

.field private mPendingFrameRateOverrideUids:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPhase:I

.field private mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

.field private mPrimaryDisplayDeviceInfo:Lcom/android/server/display/DisplayDeviceInfo;

.field private mRequestedColorMode:I

.field private mRequestedMinimalPostProcessing:Z

.field private final mTempDisplayRect:Landroid/graphics/Rect;

.field private final mTempFrameRateOverride:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final mTempLayerStackRect:Landroid/graphics/Rect;

.field private mUserDisabledHdrTypes:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 105
    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    sput-object v0, Lcom/android/server/display/LogicalDisplay;->EMPTY_DISPLAY_INFO:Landroid/view/DisplayInfo;

    return-void
.end method

.method public constructor <init>(IILcom/android/server/display/DisplayDevice;)V
    .registers 8
    .param p1, "displayId"    # I
    .param p2, "layerStack"    # I
    .param p3, "primaryDisplayDevice"    # Lcom/android/server/display/DisplayDevice;

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    .line 111
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayGroupId:I

    .line 125
    new-instance v0, Lcom/android/server/display/DisplayInfoProxy;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/display/DisplayInfoProxy;-><init>(Landroid/view/DisplayInfo;)V

    iput-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Lcom/android/server/display/DisplayInfoProxy;

    .line 138
    const/4 v0, 0x0

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mUserDisabledHdrTypes:[I

    .line 140
    new-instance v1, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;

    invoke-direct {v1}, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;-><init>()V

    iput-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mDesiredDisplayModeSpecs:Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;

    .line 150
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayPosition:Landroid/graphics/Point;

    .line 161
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mTempLayerStackRect:Landroid/graphics/Rect;

    .line 162
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mTempDisplayRect:Landroid/graphics/Rect;

    .line 169
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/display/LogicalDisplay;->mPhase:I

    .line 188
    const-string/jumbo v2, "persist.sys.muiltdisplay_type"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_44

    move v0, v1

    :cond_44
    iput-boolean v0, p0, Lcom/android/server/display/LogicalDisplay;->mIsFoldable:Z

    .line 191
    iput p1, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    .line 192
    iput p2, p0, Lcom/android/server/display/LogicalDisplay;->mLayerStack:I

    .line 193
    iput-object p3, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    .line 194
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mPendingFrameRateOverrideUids:Landroid/util/ArraySet;

    .line 195
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mTempFrameRateOverride:Landroid/util/SparseArray;

    .line 196
    return-void
.end method

.method private static getMaskingInsets(Lcom/android/server/display/DisplayDeviceInfo;)Landroid/graphics/Rect;
    .registers 3
    .param p0, "deviceInfo"    # Lcom/android/server/display/DisplayDeviceInfo;

    .line 527
    iget v0, p0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    .line 528
    .local v0, "maskCutout":Z
    :goto_9
    if-eqz v0, :cond_16

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->displayCutout:Landroid/view/DisplayCutout;

    if-eqz v1, :cond_16

    .line 530
    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->displayCutout:Landroid/view/DisplayCutout;

    invoke-virtual {v1}, Landroid/view/DisplayCutout;->getSafeInsets()Landroid/graphics/Rect;

    move-result-object v1

    return-object v1

    .line 532
    :cond_16
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    return-object v1
.end method

.method private updateFrameRateOverrides(Lcom/android/server/display/DisplayDeviceInfo;)V
    .registers 10
    .param p1, "deviceInfo"    # Lcom/android/server/display/DisplayDeviceInfo;

    .line 486
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mTempFrameRateOverride:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 487
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mFrameRateOverrides:[Landroid/view/DisplayEventReceiver$FrameRateOverride;

    const/4 v1, 0x0

    if-eqz v0, :cond_20

    .line 489
    array-length v2, v0

    move v3, v1

    :goto_c
    if-ge v3, v2, :cond_20

    aget-object v4, v0, v3

    .line 490
    .local v4, "frameRateOverride":Landroid/view/DisplayEventReceiver$FrameRateOverride;
    iget-object v5, p0, Lcom/android/server/display/LogicalDisplay;->mTempFrameRateOverride:Landroid/util/SparseArray;

    iget v6, v4, Landroid/view/DisplayEventReceiver$FrameRateOverride;->uid:I

    iget v7, v4, Landroid/view/DisplayEventReceiver$FrameRateOverride;->frameRateHz:F

    .line 491
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    .line 490
    invoke-virtual {v5, v6, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 489
    .end local v4    # "frameRateOverride":Landroid/view/DisplayEventReceiver$FrameRateOverride;
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 494
    :cond_20
    iget-object v0, p1, Lcom/android/server/display/DisplayDeviceInfo;->frameRateOverrides:[Landroid/view/DisplayEventReceiver$FrameRateOverride;

    iput-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mFrameRateOverrides:[Landroid/view/DisplayEventReceiver$FrameRateOverride;

    .line 495
    if-eqz v0, :cond_61

    .line 497
    array-length v2, v0

    :goto_27
    if-ge v1, v2, :cond_61

    aget-object v3, v0, v1

    .line 498
    .local v3, "frameRateOverride":Landroid/view/DisplayEventReceiver$FrameRateOverride;
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

    .line 499
    .local v4, "refreshRate":F
    cmpl-float v5, v4, v6

    if-eqz v5, :cond_51

    iget v5, v3, Landroid/view/DisplayEventReceiver$FrameRateOverride;->frameRateHz:F

    cmpl-float v5, v5, v4

    if-eqz v5, :cond_49

    goto :goto_51

    .line 503
    :cond_49
    iget-object v5, p0, Lcom/android/server/display/LogicalDisplay;->mTempFrameRateOverride:Landroid/util/SparseArray;

    iget v6, v3, Landroid/view/DisplayEventReceiver$FrameRateOverride;->uid:I

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->delete(I)V

    goto :goto_5e

    .line 500
    :cond_51
    :goto_51
    iget-object v5, p0, Lcom/android/server/display/LogicalDisplay;->mTempFrameRateOverride:Landroid/util/SparseArray;

    iget v6, v3, Landroid/view/DisplayEventReceiver$FrameRateOverride;->uid:I

    iget v7, v3, Landroid/view/DisplayEventReceiver$FrameRateOverride;->frameRateHz:F

    .line 501
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    .line 500
    invoke-virtual {v5, v6, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 497
    .end local v3    # "frameRateOverride":Landroid/view/DisplayEventReceiver$FrameRateOverride;
    .end local v4    # "refreshRate":F
    :goto_5e
    add-int/lit8 v1, v1, 0x1

    goto :goto_27

    .line 507
    :cond_61
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_62
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mTempFrameRateOverride:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_7c

    .line 508
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mPendingFrameRateOverrideUids:Landroid/util/ArraySet;

    iget-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mTempFrameRateOverride:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 507
    add-int/lit8 v0, v0, 0x1

    goto :goto_62

    .line 510
    .end local v0    # "i":I
    :cond_7c
    return-void
.end method


# virtual methods
.method public clearPendingFrameRateOverrideUids()V
    .registers 2

    .line 266
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mPendingFrameRateOverrideUids:Landroid/util/ArraySet;

    .line 267
    return-void
.end method

.method public configureDisplayLocked(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/display/DisplayDevice;Z)V
    .registers 21
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "device"    # Lcom/android/server/display/DisplayDevice;
    .param p3, "isBlanked"    # Z

    .line 567
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    if-eqz p3, :cond_a

    const/4 v3, -0x1

    goto :goto_c

    :cond_a
    iget v3, v0, Lcom/android/server/display/LogicalDisplay;->mLayerStack:I

    :goto_c
    invoke-virtual {v2, v1, v3}, Lcom/android/server/display/DisplayDevice;->setLayerStackLocked(Landroid/view/SurfaceControl$Transaction;I)V

    .line 570
    nop

    .line 571
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v3

    iget v3, v3, Lcom/android/server/display/DisplayDeviceInfo;->touch:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_1c

    .line 572
    move v3, v4

    goto :goto_1d

    :cond_1c
    move v3, v5

    .line 570
    :goto_1d
    invoke-virtual {v2, v1, v3}, Lcom/android/server/display/DisplayDevice;->setDisplayFlagsLocked(Landroid/view/SurfaceControl$Transaction;I)V

    .line 575
    iget-object v3, v0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    if-ne v2, v3, :cond_2f

    .line 576
    iget-object v3, v0, Lcom/android/server/display/LogicalDisplay;->mDesiredDisplayModeSpecs:Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;

    invoke-virtual {v2, v3}, Lcom/android/server/display/DisplayDevice;->setDesiredDisplayModeSpecsLocked(Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;)V

    .line 577
    iget v3, v0, Lcom/android/server/display/LogicalDisplay;->mRequestedColorMode:I

    invoke-virtual {v2, v3}, Lcom/android/server/display/DisplayDevice;->setRequestedColorModeLocked(I)V

    goto :goto_3a

    .line 580
    :cond_2f
    new-instance v3, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;

    invoke-direct {v3}, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;-><init>()V

    invoke-virtual {v2, v3}, Lcom/android/server/display/DisplayDevice;->setDesiredDisplayModeSpecsLocked(Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;)V

    .line 582
    invoke-virtual {v2, v5}, Lcom/android/server/display/DisplayDevice;->setRequestedColorModeLocked(I)V

    .line 585
    :goto_3a
    iget-boolean v3, v0, Lcom/android/server/display/LogicalDisplay;->mRequestedMinimalPostProcessing:Z

    invoke-virtual {v2, v3}, Lcom/android/server/display/DisplayDevice;->setAutoLowLatencyModeLocked(Z)V

    .line 586
    iget-boolean v3, v0, Lcom/android/server/display/LogicalDisplay;->mRequestedMinimalPostProcessing:Z

    invoke-virtual {v2, v3}, Lcom/android/server/display/DisplayDevice;->setGameContentTypeLocked(Z)V

    .line 589
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v3

    .line 590
    .local v3, "displayInfo":Landroid/view/DisplayInfo;
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v6

    .line 595
    .local v6, "displayDeviceInfo":Lcom/android/server/display/DisplayDeviceInfo;
    iget-object v7, v0, Lcom/android/server/display/LogicalDisplay;->mTempLayerStackRect:Landroid/graphics/Rect;

    iget v8, v3, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v9, v3, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-virtual {v7, v5, v5, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 600
    const/4 v7, 0x0

    .line 601
    .local v7, "orientation":I
    iget v8, v6, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    const/4 v9, 0x2

    and-int/2addr v8, v9

    if-eqz v8, :cond_5e

    .line 602
    iget v7, v3, Landroid/view/DisplayInfo;->rotation:I

    .line 606
    :cond_5e
    iget v8, v6, Lcom/android/server/display/DisplayDeviceInfo;->rotation:I

    add-int/2addr v8, v7

    rem-int/lit8 v8, v8, 0x4

    .line 613
    .end local v7    # "orientation":I
    .local v8, "orientation":I
    if-eq v8, v4, :cond_68

    const/4 v7, 0x3

    if-ne v8, v7, :cond_69

    :cond_68
    move v5, v4

    .line 615
    .local v5, "rotated":Z
    :cond_69
    if-eqz v5, :cond_6e

    iget v7, v6, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    goto :goto_70

    :cond_6e
    iget v7, v6, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    .line 616
    .local v7, "physWidth":I
    :goto_70
    if-eqz v5, :cond_75

    iget v10, v6, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    goto :goto_77

    :cond_75
    iget v10, v6, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    .line 618
    .local v10, "physHeight":I
    :goto_77
    invoke-static {v6}, Lcom/android/server/display/LogicalDisplay;->getMaskingInsets(Lcom/android/server/display/DisplayDeviceInfo;)Landroid/graphics/Rect;

    move-result-object v11

    .line 619
    .local v11, "maskingInsets":Landroid/graphics/Rect;
    invoke-static {v11, v8}, Lcom/android/server/wm/utils/InsetUtils;->rotateInsets(Landroid/graphics/Rect;I)V

    .line 621
    iget v12, v11, Landroid/graphics/Rect;->left:I

    iget v13, v11, Landroid/graphics/Rect;->right:I

    add-int/2addr v12, v13

    sub-int/2addr v7, v12

    .line 622
    iget v12, v11, Landroid/graphics/Rect;->top:I

    iget v13, v11, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v12, v13

    sub-int/2addr v10, v12

    .line 632
    iget v12, v3, Landroid/view/DisplayInfo;->flags:I

    const/high16 v13, 0x40000000    # 2.0f

    and-int/2addr v12, v13

    if-nez v12, :cond_ae

    iget-boolean v12, v0, Lcom/android/server/display/LogicalDisplay;->mDisplayScalingDisabled:Z

    if-eqz v12, :cond_96

    goto :goto_ae

    .line 635
    :cond_96
    iget v12, v3, Landroid/view/DisplayInfo;->logicalHeight:I

    mul-int/2addr v12, v7

    iget v13, v3, Landroid/view/DisplayInfo;->logicalWidth:I

    mul-int/2addr v13, v10

    if-ge v12, v13, :cond_a6

    .line 638
    move v12, v7

    .line 639
    .local v12, "displayRectWidth":I
    iget v13, v3, Landroid/view/DisplayInfo;->logicalHeight:I

    mul-int/2addr v13, v7

    iget v14, v3, Landroid/view/DisplayInfo;->logicalWidth:I

    div-int/2addr v13, v14

    .local v13, "displayRectHeight":I
    goto :goto_b2

    .line 642
    .end local v12    # "displayRectWidth":I
    .end local v13    # "displayRectHeight":I
    :cond_a6
    iget v12, v3, Landroid/view/DisplayInfo;->logicalWidth:I

    mul-int/2addr v12, v10

    iget v13, v3, Landroid/view/DisplayInfo;->logicalHeight:I

    div-int/2addr v12, v13

    .line 643
    .restart local v12    # "displayRectWidth":I
    move v13, v10

    .restart local v13    # "displayRectHeight":I
    goto :goto_b2

    .line 633
    .end local v12    # "displayRectWidth":I
    .end local v13    # "displayRectHeight":I
    :cond_ae
    :goto_ae
    iget v12, v3, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 634
    .restart local v12    # "displayRectWidth":I
    iget v13, v3, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 645
    .restart local v13    # "displayRectHeight":I
    :goto_b2
    sub-int v14, v10, v13

    div-int/2addr v14, v9

    .line 646
    .local v14, "displayRectTop":I
    sub-int v15, v7, v12

    div-int/2addr v15, v9

    .line 647
    .local v15, "displayRectLeft":I
    iget-object v9, v0, Lcom/android/server/display/LogicalDisplay;->mTempDisplayRect:Landroid/graphics/Rect;

    add-int v4, v15, v12

    move-object/from16 v16, v3

    .end local v3    # "displayInfo":Landroid/view/DisplayInfo;
    .local v16, "displayInfo":Landroid/view/DisplayInfo;
    add-int v3, v14, v13

    invoke-virtual {v9, v15, v14, v4, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 651
    iget-object v3, v0, Lcom/android/server/display/LogicalDisplay;->mTempDisplayRect:Landroid/graphics/Rect;

    iget v4, v11, Landroid/graphics/Rect;->left:I

    iget v9, v11, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3, v4, v9}, Landroid/graphics/Rect;->offset(II)V

    .line 653
    if-nez v8, :cond_d8

    .line 654
    iget-object v3, v0, Lcom/android/server/display/LogicalDisplay;->mTempDisplayRect:Landroid/graphics/Rect;

    iget v4, v0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetX:I

    iget v9, v0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetY:I

    invoke-virtual {v3, v4, v9}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_ff

    .line 655
    :cond_d8
    const/4 v3, 0x1

    if-ne v8, v3, :cond_e6

    .line 656
    iget-object v3, v0, Lcom/android/server/display/LogicalDisplay;->mTempDisplayRect:Landroid/graphics/Rect;

    iget v4, v0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetY:I

    iget v9, v0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetX:I

    neg-int v9, v9

    invoke-virtual {v3, v4, v9}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_ff

    .line 657
    :cond_e6
    const/4 v3, 0x2

    if-ne v8, v3, :cond_f5

    .line 658
    iget-object v3, v0, Lcom/android/server/display/LogicalDisplay;->mTempDisplayRect:Landroid/graphics/Rect;

    iget v4, v0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetX:I

    neg-int v4, v4

    iget v9, v0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetY:I

    neg-int v9, v9

    invoke-virtual {v3, v4, v9}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_ff

    .line 660
    :cond_f5
    iget-object v3, v0, Lcom/android/server/display/LogicalDisplay;->mTempDisplayRect:Landroid/graphics/Rect;

    iget v4, v0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetY:I

    neg-int v4, v4

    iget v9, v0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetX:I

    invoke-virtual {v3, v4, v9}, Landroid/graphics/Rect;->offset(II)V

    .line 663
    :goto_ff
    iget-object v3, v0, Lcom/android/server/display/LogicalDisplay;->mDisplayPosition:Landroid/graphics/Point;

    iget-object v4, v0, Lcom/android/server/display/LogicalDisplay;->mTempDisplayRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v9, v0, Lcom/android/server/display/LogicalDisplay;->mTempDisplayRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3, v4, v9}, Landroid/graphics/Point;->set(II)V

    .line 664
    iget-object v3, v0, Lcom/android/server/display/LogicalDisplay;->mTempLayerStackRect:Landroid/graphics/Rect;

    iget-object v4, v0, Lcom/android/server/display/LogicalDisplay;->mTempDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v1, v8, v3, v4}, Lcom/android/server/display/DisplayDevice;->setProjectionLocked(Landroid/view/SurfaceControl$Transaction;ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 665
    return-void
.end method

.method public dumpLocked(Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 836
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mDisplayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 837
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mPhase="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/LogicalDisplay;->mPhase:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 838
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mLayerStack="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/LogicalDisplay;->mLayerStack:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 839
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mHasContent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/LogicalDisplay;->mHasContent:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 840
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mDesiredDisplayModeSpecs={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mDesiredDisplayModeSpecs:Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 841
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mRequestedColorMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/LogicalDisplay;->mRequestedColorMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 842
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mDisplayOffset=("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 843
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mDisplayScalingDisabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayScalingDisabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 844
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mPrimaryDisplayDevice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    if-eqz v1, :cond_f6

    .line 845
    invoke-virtual {v1}, Lcom/android/server/display/DisplayDevice;->getNameLocked()Ljava/lang/String;

    move-result-object v1

    goto :goto_f9

    :cond_f6
    const-string/jumbo v1, "null"

    :goto_f9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 844
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 846
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mBaseDisplayInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 847
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mOverrideDisplayInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 848
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mRequestedMinimalPostProcessing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/LogicalDisplay;->mRequestedMinimalPostProcessing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 849
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mFrameRateOverrides="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mFrameRateOverrides:[Landroid/view/DisplayEventReceiver$FrameRateOverride;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 850
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mPendingFrameRateOverrideUids="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mPendingFrameRateOverrideUids:Landroid/util/ArraySet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 851
    return-void
.end method

.method public getDesiredDisplayModeSpecsLocked()Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;
    .registers 2

    .line 702
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mDesiredDisplayModeSpecs:Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;

    return-object v0
.end method

.method public getDisplayIdLocked()I
    .registers 2

    .line 204
    iget v0, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    return v0
.end method

.method public getDisplayInfoLocked()Landroid/view/DisplayInfo;
    .registers 3

    .line 224
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Lcom/android/server/display/DisplayInfoProxy;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayInfoProxy;->get()Landroid/view/DisplayInfo;

    move-result-object v0

    if-nez v0, :cond_6d

    .line 225
    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    .line 226
    .local v0, "info":Landroid/view/DisplayInfo;
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, v1}, Landroid/view/DisplayInfo;->copyFrom(Landroid/view/DisplayInfo;)V

    .line 227
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    if-eqz v1, :cond_68

    .line 228
    iget v1, v1, Landroid/view/DisplayInfo;->appWidth:I

    iput v1, v0, Landroid/view/DisplayInfo;->appWidth:I

    .line 229
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->appHeight:I

    iput v1, v0, Landroid/view/DisplayInfo;->appHeight:I

    .line 230
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    iput v1, v0, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    .line 231
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    iput v1, v0, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    .line 232
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    iput v1, v0, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    .line 233
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    iput v1, v0, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    .line 234
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    iput v1, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 235
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    iput v1, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 236
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->physicalXDpi:F

    iput v1, v0, Landroid/view/DisplayInfo;->physicalXDpi:F

    .line 237
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->physicalYDpi:F

    iput v1, v0, Landroid/view/DisplayInfo;->physicalYDpi:F

    .line 238
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->rotation:I

    iput v1, v0, Landroid/view/DisplayInfo;->rotation:I

    .line 239
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v1, v1, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    iput-object v1, v0, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    .line 240
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    iput v1, v0, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    .line 241
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v1, v1, Landroid/view/DisplayInfo;->roundedCorners:Landroid/view/RoundedCorners;

    iput-object v1, v0, Landroid/view/DisplayInfo;->roundedCorners:Landroid/view/RoundedCorners;

    .line 243
    :cond_68
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Lcom/android/server/display/DisplayInfoProxy;

    invoke-virtual {v1, v0}, Lcom/android/server/display/DisplayInfoProxy;->set(Landroid/view/DisplayInfo;)V

    .line 245
    .end local v0    # "info":Landroid/view/DisplayInfo;
    :cond_6d
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Lcom/android/server/display/DisplayInfoProxy;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayInfoProxy;->get()Landroid/view/DisplayInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayOffsetXLocked()I
    .registers 2

    .line 738
    iget v0, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetX:I

    return v0
.end method

.method public getDisplayOffsetYLocked()I
    .registers 2

    .line 745
    iget v0, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetY:I

    return v0
.end method

.method getDisplayPosition()Landroid/graphics/Point;
    .registers 3

    .line 543
    new-instance v0, Landroid/graphics/Point;

    iget-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayPosition:Landroid/graphics/Point;

    invoke-direct {v0, v1}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    return-object v0
.end method

.method public getFrameRateOverrides()[Landroid/view/DisplayEventReceiver$FrameRateOverride;
    .registers 2

    .line 252
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mFrameRateOverrides:[Landroid/view/DisplayEventReceiver$FrameRateOverride;

    return-object v0
.end method

.method public getInsets()Landroid/graphics/Rect;
    .registers 2

    .line 520
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDeviceInfo:Lcom/android/server/display/DisplayDeviceInfo;

    invoke-static {v0}, Lcom/android/server/display/LogicalDisplay;->getMaskingInsets(Lcom/android/server/display/DisplayDeviceInfo;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method getNonOverrideDisplayInfoLocked(Landroid/view/DisplayInfo;)V
    .registers 3
    .param p1, "outInfo"    # Landroid/view/DisplayInfo;

    .line 273
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {p1, v0}, Landroid/view/DisplayInfo;->copyFrom(Landroid/view/DisplayInfo;)V

    .line 274
    return-void
.end method

.method public getPendingFrameRateOverrideUids()Landroid/util/ArraySet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 259
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mPendingFrameRateOverrideUids:Landroid/util/ArraySet;

    return-object v0
.end method

.method public getPhase()I
    .registers 2

    .line 822
    iget v0, p0, Lcom/android/server/display/LogicalDisplay;->mPhase:I

    return v0
.end method

.method public getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;
    .registers 2

    .line 213
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    return-object v0
.end method

.method public getRequestedColorModeLocked()I
    .registers 2

    .line 731
    iget v0, p0, Lcom/android/server/display/LogicalDisplay;->mRequestedColorMode:I

    return v0
.end method

.method public getRequestedMinimalPostProcessingLocked()Z
    .registers 2

    .line 716
    iget-boolean v0, p0, Lcom/android/server/display/LogicalDisplay;->mRequestedMinimalPostProcessing:Z

    return v0
.end method

.method public hasContentLocked()Z
    .registers 2

    .line 678
    iget-boolean v0, p0, Lcom/android/server/display/LogicalDisplay;->mHasContent:Z

    return v0
.end method

.method public isDisplayScalingDisabled()Z
    .registers 2

    .line 761
    iget-boolean v0, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayScalingDisabled:Z

    return v0
.end method

.method public isEnabled()Z
    .registers 3

    .line 832
    iget v0, p0, Lcom/android/server/display/LogicalDisplay;->mPhase:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_9

    if-nez v0, :cond_8

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :cond_9
    :goto_9
    return v1
.end method

.method public isValidLocked()Z
    .registers 2

    .line 311
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public setDesiredDisplayModeSpecsLocked(Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;)V
    .registers 2
    .param p1, "specs"    # Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;

    .line 695
    iput-object p1, p0, Lcom/android/server/display/LogicalDisplay;->mDesiredDisplayModeSpecs:Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;

    .line 696
    return-void
.end method

.method public setDisplayInfoOverrideFromWindowManagerLocked(Landroid/view/DisplayInfo;)Z
    .registers 5
    .param p1, "info"    # Landroid/view/DisplayInfo;

    .line 284
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_26

    .line 285
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    if-nez v2, :cond_15

    .line 286
    new-instance v2, Landroid/view/DisplayInfo;

    invoke-direct {v2, p1}, Landroid/view/DisplayInfo;-><init>(Landroid/view/DisplayInfo;)V

    iput-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    .line 287
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Lcom/android/server/display/DisplayInfoProxy;

    invoke-virtual {v2, v1}, Lcom/android/server/display/DisplayInfoProxy;->set(Landroid/view/DisplayInfo;)V

    .line 288
    return v0

    .line 289
    :cond_15
    invoke-virtual {v2, p1}, Landroid/view/DisplayInfo;->equals(Landroid/view/DisplayInfo;)Z

    move-result v2

    if-nez v2, :cond_32

    .line 290
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v2, p1}, Landroid/view/DisplayInfo;->copyFrom(Landroid/view/DisplayInfo;)V

    .line 291
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Lcom/android/server/display/DisplayInfoProxy;

    invoke-virtual {v2, v1}, Lcom/android/server/display/DisplayInfoProxy;->set(Landroid/view/DisplayInfo;)V

    .line 292
    return v0

    .line 294
    :cond_26
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    if-eqz v2, :cond_32

    .line 295
    iput-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mOverrideDisplayInfo:Landroid/view/DisplayInfo;

    .line 296
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Lcom/android/server/display/DisplayInfoProxy;

    invoke-virtual {v2, v1}, Lcom/android/server/display/DisplayInfoProxy;->set(Landroid/view/DisplayInfo;)V

    .line 297
    return v0

    .line 299
    :cond_32
    const/4 v0, 0x0

    return v0
.end method

.method public setDisplayOffsetsLocked(II)V
    .registers 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 752
    iput p1, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetX:I

    .line 753
    iput p2, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayOffsetY:I

    .line 754
    return-void
.end method

.method public setDisplayScalingDisabledLocked(Z)V
    .registers 2
    .param p1, "disableScaling"    # Z

    .line 771
    iput-boolean p1, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayScalingDisabled:Z

    .line 772
    return-void
.end method

.method public setHasContentLocked(Z)V
    .registers 2
    .param p1, "hasContent"    # Z

    .line 687
    iput-boolean p1, p0, Lcom/android/server/display/LogicalDisplay;->mHasContent:Z

    .line 688
    return-void
.end method

.method public setPhase(I)V
    .registers 2
    .param p1, "phase"    # I

    .line 813
    iput p1, p0, Lcom/android/server/display/LogicalDisplay;->mPhase:I

    .line 814
    return-void
.end method

.method public setPrimaryDisplayDeviceLocked(Lcom/android/server/display/DisplayDevice;)Lcom/android/server/display/DisplayDevice;
    .registers 6
    .param p1, "device"    # Lcom/android/server/display/DisplayDevice;

    .line 801
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    .line 802
    .local v0, "old":Lcom/android/server/display/DisplayDevice;
    iput-object p1, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    .line 805
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDeviceInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 806
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    sget-object v3, Lcom/android/server/display/LogicalDisplay;->EMPTY_DISPLAY_INFO:Landroid/view/DisplayInfo;

    invoke-virtual {v2, v3}, Landroid/view/DisplayInfo;->copyFrom(Landroid/view/DisplayInfo;)V

    .line 807
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Lcom/android/server/display/DisplayInfoProxy;

    invoke-virtual {v2, v1}, Lcom/android/server/display/DisplayInfoProxy;->set(Landroid/view/DisplayInfo;)V

    .line 809
    return-object v0
.end method

.method public setRequestedColorModeLocked(I)V
    .registers 2
    .param p1, "colorMode"    # I

    .line 709
    iput p1, p0, Lcom/android/server/display/LogicalDisplay;->mRequestedColorMode:I

    .line 710
    return-void
.end method

.method public setRequestedMinimalPostProcessingLocked(Z)V
    .registers 2
    .param p1, "on"    # Z

    .line 726
    iput-boolean p1, p0, Lcom/android/server/display/LogicalDisplay;->mRequestedMinimalPostProcessing:Z

    .line 727
    return-void
.end method

.method public setUserDisabledHdrTypes([I)V
    .registers 4
    .param p1, "userDisabledHdrTypes"    # [I

    .line 775
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mUserDisabledHdrTypes:[I

    if-eq v0, p1, :cond_10

    .line 776
    iput-object p1, p0, Lcom/android/server/display/LogicalDisplay;->mUserDisabledHdrTypes:[I

    .line 777
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iput-object p1, v0, Landroid/view/DisplayInfo;->userDisabledHdrTypes:[I

    .line 778
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Lcom/android/server/display/DisplayInfoProxy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayInfoProxy;->set(Landroid/view/DisplayInfo;)V

    .line 780
    :cond_10
    return-void
.end method

.method public swapDisplaysLocked(Lcom/android/server/display/LogicalDisplay;)V
    .registers 3
    .param p1, "targetDisplay"    # Lcom/android/server/display/LogicalDisplay;

    .line 789
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    .line 790
    invoke-virtual {p1, v0}, Lcom/android/server/display/LogicalDisplay;->setPrimaryDisplayDeviceLocked(Lcom/android/server/display/DisplayDevice;)Lcom/android/server/display/DisplayDevice;

    move-result-object v0

    .line 791
    .local v0, "oldTargetDevice":Lcom/android/server/display/DisplayDevice;
    invoke-virtual {p0, v0}, Lcom/android/server/display/LogicalDisplay;->setPrimaryDisplayDeviceLocked(Lcom/android/server/display/DisplayDevice;)Lcom/android/server/display/DisplayDevice;

    .line 792
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 855
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 856
    .local v0, "sw":Ljava/io/StringWriter;
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, v1}, Lcom/android/server/display/LogicalDisplay;->dumpLocked(Ljava/io/PrintWriter;)V

    .line 857
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public updateDisplayGroupIdLocked(I)V
    .registers 4
    .param p1, "groupId"    # I

    .line 320
    iget v0, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayGroupId:I

    if-eq p1, v0, :cond_10

    .line 321
    iput p1, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayGroupId:I

    .line 322
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iput p1, v0, Landroid/view/DisplayInfo;->displayGroupId:I

    .line 323
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Lcom/android/server/display/DisplayInfoProxy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayInfoProxy;->set(Landroid/view/DisplayInfo;)V

    .line 325
    :cond_10
    return-void
.end method

.method public updateLocked(Lcom/android/server/display/DisplayDeviceRepository;)V
    .registers 15
    .param p1, "deviceRepo"    # Lcom/android/server/display/DisplayDeviceRepository;

    .line 336
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    if-nez v0, :cond_5

    .line 337
    return-void

    .line 341
    :cond_5
    invoke-virtual {p1, v0}, Lcom/android/server/display/DisplayDeviceRepository;->containsLocked(Lcom/android/server/display/DisplayDevice;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_10

    .line 342
    invoke-virtual {p0, v1}, Lcom/android/server/display/LogicalDisplay;->setPrimaryDisplayDeviceLocked(Lcom/android/server/display/DisplayDevice;)Lcom/android/server/display/DisplayDevice;

    .line 343
    return-void

    .line 351
    :cond_10
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v0

    .line 352
    .local v0, "deviceInfo":Lcom/android/server/display/DisplayDeviceInfo;
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDeviceInfo:Lcom/android/server/display/DisplayDeviceInfo;

    invoke-static {v2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_24f

    .line 353
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, p0, Lcom/android/server/display/LogicalDisplay;->mLayerStack:I

    iput v3, v2, Landroid/view/DisplayInfo;->layerStack:I

    .line 354
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    const/4 v3, 0x0

    iput v3, v2, Landroid/view/DisplayInfo;->flags:I

    .line 355
    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit8 v2, v2, 0x8

    const/4 v4, 0x1

    if-eqz v2, :cond_37

    .line 356
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v5, v2, Landroid/view/DisplayInfo;->flags:I

    or-int/2addr v5, v4

    iput v5, v2, Landroid/view/DisplayInfo;->flags:I

    .line 358
    :cond_37
    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_45

    .line 359
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v5, v2, Landroid/view/DisplayInfo;->flags:I

    or-int/lit8 v5, v5, 0x2

    iput v5, v2, Landroid/view/DisplayInfo;->flags:I

    .line 361
    :cond_45
    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_57

    .line 362
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v5, v2, Landroid/view/DisplayInfo;->flags:I

    or-int/lit8 v5, v5, 0x4

    iput v5, v2, Landroid/view/DisplayInfo;->flags:I

    .line 364
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iput v4, v2, Landroid/view/DisplayInfo;->removeMode:I

    .line 366
    :cond_57
    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit16 v2, v2, 0x400

    if-eqz v2, :cond_61

    .line 367
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iput v4, v2, Landroid/view/DisplayInfo;->removeMode:I

    .line 369
    :cond_61
    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_70

    .line 370
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v5, v2, Landroid/view/DisplayInfo;->flags:I

    or-int/lit8 v5, v5, 0x8

    iput v5, v2, Landroid/view/DisplayInfo;->flags:I

    goto :goto_84

    .line 372
    :cond_70
    iget-boolean v2, p0, Lcom/android/server/display/LogicalDisplay;->mIsFoldable:Z

    if-eqz v2, :cond_84

    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    if-ne v2, v4, :cond_84

    iget v2, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    if-eqz v2, :cond_84

    .line 373
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v5, v2, Landroid/view/DisplayInfo;->flags:I

    or-int/lit8 v5, v5, 0x8

    iput v5, v2, Landroid/view/DisplayInfo;->flags:I

    .line 376
    :cond_84
    :goto_84
    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit16 v2, v2, 0x100

    if-eqz v2, :cond_92

    .line 377
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v5, v2, Landroid/view/DisplayInfo;->flags:I

    or-int/lit8 v5, v5, 0x10

    iput v5, v2, Landroid/view/DisplayInfo;->flags:I

    .line 379
    :cond_92
    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_a0

    .line 380
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v5, v2, Landroid/view/DisplayInfo;->flags:I

    or-int/lit8 v5, v5, 0x20

    iput v5, v2, Landroid/view/DisplayInfo;->flags:I

    .line 382
    :cond_a0
    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit16 v2, v2, 0x1000

    if-eqz v2, :cond_ae

    .line 383
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v5, v2, Landroid/view/DisplayInfo;->flags:I

    or-int/lit8 v5, v5, 0x40

    iput v5, v2, Landroid/view/DisplayInfo;->flags:I

    .line 385
    :cond_ae
    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit16 v2, v2, 0x2000

    if-eqz v2, :cond_bc

    .line 386
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v5, v2, Landroid/view/DisplayInfo;->flags:I

    or-int/lit16 v5, v5, 0x80

    iput v5, v2, Landroid/view/DisplayInfo;->flags:I

    .line 388
    :cond_bc
    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit16 v2, v2, 0x4000

    if-eqz v2, :cond_ca

    .line 389
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v5, v2, Landroid/view/DisplayInfo;->flags:I

    or-int/lit16 v5, v5, 0x100

    iput v5, v2, Landroid/view/DisplayInfo;->flags:I

    .line 391
    :cond_ca
    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    const v5, 0x8000

    and-int/2addr v2, v5

    if-eqz v2, :cond_da

    .line 392
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v5, v2, Landroid/view/DisplayInfo;->flags:I

    or-int/lit16 v5, v5, 0x200

    iput v5, v2, Landroid/view/DisplayInfo;->flags:I

    .line 394
    :cond_da
    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    const/high16 v5, 0x10000

    and-int/2addr v2, v5

    if-eqz v2, :cond_e9

    .line 395
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v5, v2, Landroid/view/DisplayInfo;->flags:I

    or-int/lit16 v5, v5, 0x400

    iput v5, v2, Landroid/view/DisplayInfo;->flags:I

    .line 398
    :cond_e9
    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    const/high16 v5, -0x80000000

    and-int/2addr v2, v5

    if-eqz v2, :cond_f7

    .line 399
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v6, v2, Landroid/view/DisplayInfo;->flags:I

    or-int/2addr v5, v6

    iput v5, v2, Landroid/view/DisplayInfo;->flags:I

    .line 402
    :cond_f7
    invoke-static {v0}, Lcom/android/server/display/LogicalDisplay;->getMaskingInsets(Lcom/android/server/display/DisplayDeviceInfo;)Landroid/graphics/Rect;

    move-result-object v2

    .line 406
    .local v2, "maskingInsets":Landroid/graphics/Rect;
    iget v5, v0, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    .line 407
    .local v5, "deviceInfoWidth":I
    iget v6, v0, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    .line 408
    .local v6, "deviceInfoHeight":I
    iget v7, v0, Lcom/android/server/display/DisplayDeviceInfo;->densityDpi:I

    .line 409
    .local v7, "maskedDensity":I
    invoke-static {}, Lcom/android/server/wm/WindowManagerServiceStub;->get()Lcom/android/server/wm/WindowManagerServiceStub;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/server/wm/WindowManagerServiceStub;->isSupportSetActiveModeSwitchResolution()Z

    move-result v8

    if-eqz v8, :cond_129

    iget v8, v0, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    if-ne v8, v4, :cond_129

    .line 411
    invoke-static {}, Lcom/android/server/wm/WindowManagerServiceStub;->get()Lcom/android/server/wm/WindowManagerServiceStub;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/server/wm/WindowManagerServiceStub;->getUserSetResolution()[I

    move-result-object v8

    .line 412
    .local v8, "screenResolution":[I
    if-eqz v8, :cond_11d

    .line 413
    aget v5, v8, v3

    .line 414
    aget v6, v8, v4

    .line 416
    :cond_11d
    invoke-static {}, Lcom/android/server/wm/WindowManagerServiceStub;->get()Lcom/android/server/wm/WindowManagerServiceStub;

    move-result-object v9

    invoke-interface {v9}, Lcom/android/server/wm/WindowManagerServiceStub;->getDefaultDensity()I

    move-result v9

    .line 417
    .local v9, "density":I
    const/4 v10, -0x1

    if-eq v9, v10, :cond_129

    .line 418
    move v7, v9

    .line 422
    .end local v8    # "screenResolution":[I
    .end local v9    # "density":I
    :cond_129
    sget-object v8, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v9, "cetus"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_142

    iget v8, v0, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    if-ne v8, v4, :cond_142

    iget v8, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    const/high16 v9, 0x20000

    and-int/2addr v8, v9

    if-nez v8, :cond_142

    .line 425
    const/16 v5, 0x370

    .line 426
    const/16 v6, 0xa50

    .line 428
    :cond_142
    iget v8, v2, Landroid/graphics/Rect;->left:I

    sub-int v8, v5, v8

    iget v9, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v9

    .line 429
    .local v8, "maskedWidth":I
    iget v9, v2, Landroid/graphics/Rect;->top:I

    sub-int v9, v6, v9

    iget v10, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v9, v10

    .line 433
    .local v9, "maskedHeight":I
    iget-object v10, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v11, v0, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    iput v11, v10, Landroid/view/DisplayInfo;->type:I

    .line 434
    iget-object v10, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v11, v0, Lcom/android/server/display/DisplayDeviceInfo;->address:Landroid/view/DisplayAddress;

    iput-object v11, v10, Landroid/view/DisplayInfo;->address:Landroid/view/DisplayAddress;

    .line 435
    iget-object v10, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v11, v0, Lcom/android/server/display/DisplayDeviceInfo;->deviceProductInfo:Landroid/hardware/display/DeviceProductInfo;

    iput-object v11, v10, Landroid/view/DisplayInfo;->deviceProductInfo:Landroid/hardware/display/DeviceProductInfo;

    .line 436
    iget-object v10, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v11, v0, Lcom/android/server/display/DisplayDeviceInfo;->name:Ljava/lang/String;

    iput-object v11, v10, Landroid/view/DisplayInfo;->name:Ljava/lang/String;

    .line 437
    iget-object v10, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v11, v0, Lcom/android/server/display/DisplayDeviceInfo;->uniqueId:Ljava/lang/String;

    iput-object v11, v10, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    .line 438
    iget-object v10, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iput v8, v10, Landroid/view/DisplayInfo;->appWidth:I

    .line 439
    iget-object v10, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iput v9, v10, Landroid/view/DisplayInfo;->appHeight:I

    .line 440
    iget-object v10, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iput v8, v10, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 441
    iget-object v10, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iput v9, v10, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 442
    iget-object v10, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iput v3, v10, Landroid/view/DisplayInfo;->rotation:I

    .line 443
    iget-object v10, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v11, v0, Lcom/android/server/display/DisplayDeviceInfo;->modeId:I

    iput v11, v10, Landroid/view/DisplayInfo;->modeId:I

    .line 444
    iget-object v10, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v11, v0, Lcom/android/server/display/DisplayDeviceInfo;->defaultModeId:I

    iput v11, v10, Landroid/view/DisplayInfo;->defaultModeId:I

    .line 445
    iget-object v10, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v11, v0, Lcom/android/server/display/DisplayDeviceInfo;->supportedModes:[Landroid/view/Display$Mode;

    iget-object v12, v0, Lcom/android/server/display/DisplayDeviceInfo;->supportedModes:[Landroid/view/Display$Mode;

    array-length v12, v12

    invoke-static {v11, v12}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Landroid/view/Display$Mode;

    iput-object v11, v10, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    .line 447
    iget-object v10, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v11, v0, Lcom/android/server/display/DisplayDeviceInfo;->colorMode:I

    iput v11, v10, Landroid/view/DisplayInfo;->colorMode:I

    .line 448
    iget-object v10, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v11, v0, Lcom/android/server/display/DisplayDeviceInfo;->supportedColorModes:[I

    iget-object v12, v0, Lcom/android/server/display/DisplayDeviceInfo;->supportedColorModes:[I

    array-length v12, v12

    invoke-static {v11, v12}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v11

    iput-object v11, v10, Landroid/view/DisplayInfo;->supportedColorModes:[I

    .line 451
    iget-object v10, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v11, v0, Lcom/android/server/display/DisplayDeviceInfo;->hdrCapabilities:Landroid/view/Display$HdrCapabilities;

    iput-object v11, v10, Landroid/view/DisplayInfo;->hdrCapabilities:Landroid/view/Display$HdrCapabilities;

    .line 452
    iget-object v10, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v11, p0, Lcom/android/server/display/LogicalDisplay;->mUserDisabledHdrTypes:[I

    iput-object v11, v10, Landroid/view/DisplayInfo;->userDisabledHdrTypes:[I

    .line 453
    iget-object v10, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget-boolean v11, v0, Lcom/android/server/display/DisplayDeviceInfo;->allmSupported:Z

    if-nez v11, :cond_1c9

    iget-boolean v11, v0, Lcom/android/server/display/DisplayDeviceInfo;->gameContentTypeSupported:Z

    if-eqz v11, :cond_1c7

    goto :goto_1c9

    :cond_1c7
    move v11, v3

    goto :goto_1ca

    :cond_1c9
    :goto_1c9
    move v11, v4

    :goto_1ca
    iput-boolean v11, v10, Landroid/view/DisplayInfo;->minimalPostProcessingSupported:Z

    .line 457
    iget-object v10, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iput v7, v10, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    .line 458
    iget-object v10, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v11, v0, Lcom/android/server/display/DisplayDeviceInfo;->xDpi:F

    iput v11, v10, Landroid/view/DisplayInfo;->physicalXDpi:F

    .line 459
    iget-object v10, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v11, v0, Lcom/android/server/display/DisplayDeviceInfo;->yDpi:F

    iput v11, v10, Landroid/view/DisplayInfo;->physicalYDpi:F

    .line 460
    iget-object v10, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget-wide v11, v0, Lcom/android/server/display/DisplayDeviceInfo;->appVsyncOffsetNanos:J

    iput-wide v11, v10, Landroid/view/DisplayInfo;->appVsyncOffsetNanos:J

    .line 461
    iget-object v10, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget-wide v11, v0, Lcom/android/server/display/DisplayDeviceInfo;->presentationDeadlineNanos:J

    iput-wide v11, v10, Landroid/view/DisplayInfo;->presentationDeadlineNanos:J

    .line 462
    iget-object v10, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v11, v0, Lcom/android/server/display/DisplayDeviceInfo;->state:I

    iput v11, v10, Landroid/view/DisplayInfo;->state:I

    .line 463
    iget-object v10, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iput v8, v10, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    .line 464
    iget-object v10, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iput v9, v10, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    .line 465
    iget-object v10, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iput v8, v10, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    .line 466
    iget-object v10, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iput v9, v10, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    .line 467
    iget-object v10, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v11, v0, Lcom/android/server/display/DisplayDeviceInfo;->ownerUid:I

    iput v11, v10, Landroid/view/DisplayInfo;->ownerUid:I

    .line 468
    iget-object v10, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v11, v0, Lcom/android/server/display/DisplayDeviceInfo;->ownerPackageName:Ljava/lang/String;

    iput-object v11, v10, Landroid/view/DisplayInfo;->ownerPackageName:Ljava/lang/String;

    .line 469
    iget v10, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit16 v10, v10, 0x800

    if-eqz v10, :cond_211

    move v3, v4

    .line 471
    .local v3, "maskCutout":Z
    :cond_211
    iget-object v4, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    if-eqz v3, :cond_217

    move-object v10, v1

    goto :goto_219

    :cond_217
    iget-object v10, v0, Lcom/android/server/display/DisplayDeviceInfo;->displayCutout:Landroid/view/DisplayCutout;

    :goto_219
    iput-object v10, v4, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    .line 472
    iget-object v4, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v10, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayId:I

    iput v10, v4, Landroid/view/DisplayInfo;->displayId:I

    .line 473
    iget-object v4, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v10, p0, Lcom/android/server/display/LogicalDisplay;->mDisplayGroupId:I

    iput v10, v4, Landroid/view/DisplayInfo;->displayGroupId:I

    .line 474
    invoke-direct {p0, v0}, Lcom/android/server/display/LogicalDisplay;->updateFrameRateOverrides(Lcom/android/server/display/DisplayDeviceInfo;)V

    .line 475
    iget-object v4, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v10, v0, Lcom/android/server/display/DisplayDeviceInfo;->brightnessMinimum:F

    iput v10, v4, Landroid/view/DisplayInfo;->brightnessMinimum:F

    .line 476
    iget-object v4, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v10, v0, Lcom/android/server/display/DisplayDeviceInfo;->brightnessMaximum:F

    iput v10, v4, Landroid/view/DisplayInfo;->brightnessMaximum:F

    .line 477
    iget-object v4, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v10, v0, Lcom/android/server/display/DisplayDeviceInfo;->brightnessDefault:F

    iput v10, v4, Landroid/view/DisplayInfo;->brightnessDefault:F

    .line 478
    iget-object v4, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v10, v0, Lcom/android/server/display/DisplayDeviceInfo;->roundedCorners:Landroid/view/RoundedCorners;

    iput-object v10, v4, Landroid/view/DisplayInfo;->roundedCorners:Landroid/view/RoundedCorners;

    .line 479
    iget-object v4, p0, Lcom/android/server/display/LogicalDisplay;->mBaseDisplayInfo:Landroid/view/DisplayInfo;

    iget v10, v0, Lcom/android/server/display/DisplayDeviceInfo;->installOrientation:I

    iput v10, v4, Landroid/view/DisplayInfo;->installOrientation:I

    .line 480
    iput-object v0, p0, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDeviceInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 481
    iget-object v4, p0, Lcom/android/server/display/LogicalDisplay;->mInfo:Lcom/android/server/display/DisplayInfoProxy;

    invoke-virtual {v4, v1}, Lcom/android/server/display/DisplayInfoProxy;->set(Landroid/view/DisplayInfo;)V

    .line 483
    .end local v2    # "maskingInsets":Landroid/graphics/Rect;
    .end local v3    # "maskCutout":Z
    .end local v5    # "deviceInfoWidth":I
    .end local v6    # "deviceInfoHeight":I
    .end local v7    # "maskedDensity":I
    .end local v8    # "maskedWidth":I
    .end local v9    # "maskedHeight":I
    :cond_24f
    return-void
.end method
