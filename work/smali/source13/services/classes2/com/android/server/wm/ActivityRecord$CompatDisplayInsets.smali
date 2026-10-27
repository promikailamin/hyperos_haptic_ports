.class Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;
.super Ljava/lang/Object;
.source "ActivityRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/ActivityRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CompatDisplayInsets"
.end annotation


# instance fields
.field private final mHeight:I

.field final mIsFloating:Z

.field final mIsInFixedOrientationLetterbox:Z

.field final mNonDecorInsets:[Landroid/graphics/Rect;

.field final mOriginalRotation:I

.field final mStableInsets:[Landroid/graphics/Rect;

.field private final mWidth:I


# direct methods
.method constructor <init>(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/ActivityRecord;Landroid/graphics/Rect;)V
    .registers 20
    .param p1, "display"    # Lcom/android/server/wm/DisplayContent;
    .param p2, "container"    # Lcom/android/server/wm/ActivityRecord;
    .param p3, "fixedOrientationBounds"    # Landroid/graphics/Rect;

    .line 11466
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 11456
    const/4 v2, 0x4

    new-array v3, v2, [Landroid/graphics/Rect;

    iput-object v3, v0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mNonDecorInsets:[Landroid/graphics/Rect;

    .line 11462
    new-array v3, v2, [Landroid/graphics/Rect;

    iput-object v3, v0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mStableInsets:[Landroid/graphics/Rect;

    .line 11467
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/DisplayContent;->getRotation()I

    move-result v3

    iput v3, v0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mOriginalRotation:I

    .line 11468
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/ActivityRecord;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->tasksAreFloating()Z

    move-result v3

    iput-boolean v3, v0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mIsFloating:Z

    .line 11469
    const/4 v4, 0x0

    if-eqz v3, :cond_4d

    .line 11470
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/ActivityRecord;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 11471
    .local v3, "containerBounds":Landroid/graphics/Rect;
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v5

    iput v5, v0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mWidth:I

    .line 11472
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v5

    iput v5, v0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mHeight:I

    .line 11475
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 11476
    .local v5, "emptyRect":Landroid/graphics/Rect;
    const/4 v6, 0x0

    .local v6, "rotation":I
    :goto_3d
    if-ge v6, v2, :cond_4a

    .line 11477
    iget-object v7, v0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mNonDecorInsets:[Landroid/graphics/Rect;

    aput-object v5, v7, v6

    .line 11478
    iget-object v7, v0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mStableInsets:[Landroid/graphics/Rect;

    aput-object v5, v7, v6

    .line 11476
    add-int/lit8 v6, v6, 0x1

    goto :goto_3d

    .line 11480
    .end local v6    # "rotation":I
    :cond_4a
    iput-boolean v4, v0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mIsInFixedOrientationLetterbox:Z

    .line 11481
    return-void

    .line 11484
    .end local v3    # "containerBounds":Landroid/graphics/Rect;
    .end local v5    # "emptyRect":Landroid/graphics/Rect;
    :cond_4d
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v3

    .line 11486
    .local v3, "task":Lcom/android/server/wm/Task;
    const/4 v5, 0x1

    if-eqz p3, :cond_56

    move v6, v5

    goto :goto_57

    :cond_56
    move v6, v4

    :goto_57
    iput-boolean v6, v0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mIsInFixedOrientationLetterbox:Z

    .line 11494
    if-eqz v6, :cond_5e

    .line 11495
    move-object/from16 v6, p3

    goto :goto_69

    .line 11496
    :cond_5e
    if-eqz v3, :cond_65

    invoke-virtual {v3}, Lcom/android/server/wm/Task;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    goto :goto_69

    :cond_65
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/DisplayContent;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    :goto_69
    nop

    .line 11497
    .local v6, "filledContainerBounds":Landroid/graphics/Rect;
    if-eqz v3, :cond_77

    .line 11498
    invoke-virtual {v3}, Lcom/android/server/wm/Task;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget-object v7, v7, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v7}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v7

    goto :goto_81

    .line 11499
    :cond_77
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/DisplayContent;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget-object v7, v7, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v7}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v7

    :goto_81
    nop

    .line 11500
    .local v7, "filledContainerRotation":I
    invoke-static {v6, v7}, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->getRotationZeroDimensions(Landroid/graphics/Rect;I)Landroid/graphics/Point;

    move-result-object v8

    .line 11502
    .local v8, "dimensions":Landroid/graphics/Point;
    iget v9, v8, Landroid/graphics/Point;->x:I

    iput v9, v0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mWidth:I

    .line 11503
    iget v9, v8, Landroid/graphics/Point;->y:I

    iput v9, v0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mHeight:I

    .line 11507
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/DisplayContent;->getBounds()Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9a

    const/4 v9, 0x0

    goto :goto_9f

    :cond_9a
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    .line 11508
    .local v9, "unfilledContainerBounds":Landroid/graphics/Rect;
    :goto_9f
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v10

    .line 11509
    .local v10, "policy":Lcom/android/server/wm/DisplayPolicy;
    const/4 v11, 0x0

    .local v11, "rotation":I
    :goto_a4
    if-ge v11, v2, :cond_10c

    .line 11510
    iget-object v12, v0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mNonDecorInsets:[Landroid/graphics/Rect;

    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    aput-object v13, v12, v11

    .line 11511
    iget-object v12, v0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mStableInsets:[Landroid/graphics/Rect;

    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    aput-object v13, v12, v11

    .line 11512
    if-eq v11, v5, :cond_c0

    const/4 v12, 0x3

    if-ne v11, v12, :cond_be

    goto :goto_c0

    :cond_be
    move v12, v4

    goto :goto_c1

    :cond_c0
    :goto_c0
    move v12, v5

    .line 11513
    .local v12, "rotated":Z
    :goto_c1
    if-eqz v12, :cond_c6

    iget v13, v1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    goto :goto_c8

    :cond_c6
    iget v13, v1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    .line 11514
    .local v13, "dw":I
    :goto_c8
    if-eqz v12, :cond_cd

    iget v14, v1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    goto :goto_cf

    :cond_cd
    iget v14, v1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    .line 11515
    .local v14, "dh":I
    :goto_cf
    invoke-virtual {v1, v11}, Lcom/android/server/wm/DisplayContent;->calculateDisplayCutoutForRotation(I)Lcom/android/server/wm/utils/WmDisplayCutout;

    move-result-object v15

    .line 11516
    invoke-virtual {v15}, Lcom/android/server/wm/utils/WmDisplayCutout;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v15

    .line 11517
    .local v15, "cutout":Landroid/view/DisplayCutout;
    iget-object v2, v0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mNonDecorInsets:[Landroid/graphics/Rect;

    aget-object v2, v2, v11

    invoke-virtual {v10, v11, v15, v2}, Lcom/android/server/wm/DisplayPolicy;->getNonDecorInsetsLw(ILandroid/view/DisplayCutout;Landroid/graphics/Rect;)V

    .line 11518
    iget-object v2, v0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mStableInsets:[Landroid/graphics/Rect;

    aget-object v2, v2, v11

    iget-object v4, v0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mNonDecorInsets:[Landroid/graphics/Rect;

    aget-object v4, v4, v11

    invoke-virtual {v2, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 11519
    iget-object v2, v0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mStableInsets:[Landroid/graphics/Rect;

    aget-object v2, v2, v11

    invoke-virtual {v10, v2, v11}, Lcom/android/server/wm/DisplayPolicy;->convertNonDecorInsetsToStableInsets(Landroid/graphics/Rect;I)V

    .line 11521
    if-nez v9, :cond_f3

    .line 11522
    goto :goto_107

    .line 11527
    :cond_f3
    invoke-virtual {v9, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 11528
    invoke-virtual {v1, v7, v11, v9}, Lcom/android/server/wm/DisplayContent;->rotateBounds(IILandroid/graphics/Rect;)V

    .line 11532
    iget-object v2, v0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mNonDecorInsets:[Landroid/graphics/Rect;

    aget-object v2, v2, v11

    invoke-static {v9, v13, v14, v2}, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->updateInsetsForBounds(Landroid/graphics/Rect;IILandroid/graphics/Rect;)V

    .line 11533
    iget-object v2, v0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mStableInsets:[Landroid/graphics/Rect;

    aget-object v2, v2, v11

    invoke-static {v9, v13, v14, v2}, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->updateInsetsForBounds(Landroid/graphics/Rect;IILandroid/graphics/Rect;)V

    .line 11509
    .end local v12    # "rotated":Z
    .end local v13    # "dw":I
    .end local v14    # "dh":I
    .end local v15    # "cutout":Landroid/view/DisplayCutout;
    :goto_107
    add-int/lit8 v11, v11, 0x1

    const/4 v2, 0x4

    const/4 v4, 0x0

    goto :goto_a4

    .line 11535
    .end local v11    # "rotation":I
    :cond_10c
    return-void
.end method

.method private static getRotationZeroDimensions(Landroid/graphics/Rect;I)Landroid/graphics/Point;
    .registers 6
    .param p0, "bounds"    # Landroid/graphics/Rect;
    .param p1, "rotation"    # I

    .line 11543
    const/4 v0, 0x1

    if-eq p1, v0, :cond_8

    const/4 v1, 0x3

    if-ne p1, v1, :cond_7

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    .line 11544
    .local v0, "rotated":Z
    :cond_8
    :goto_8
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 11545
    .local v1, "width":I
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 11546
    .local v2, "height":I
    new-instance v3, Landroid/graphics/Point;

    if-eqz v0, :cond_18

    invoke-direct {v3, v2, v1}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_1b

    :cond_18
    invoke-direct {v3, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    :goto_1b
    return-object v3
.end method

.method private static updateInsetsForBounds(Landroid/graphics/Rect;IILandroid/graphics/Rect;)V
    .registers 7
    .param p0, "bounds"    # Landroid/graphics/Rect;
    .param p1, "displayWidth"    # I
    .param p2, "displayHeight"    # I
    .param p3, "inset"    # Landroid/graphics/Rect;

    .line 11555
    iget v0, p3, Landroid/graphics/Rect;->left:I

    iget v1, p0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p3, Landroid/graphics/Rect;->left:I

    .line 11556
    iget v0, p3, Landroid/graphics/Rect;->top:I

    iget v2, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p3, Landroid/graphics/Rect;->top:I

    .line 11557
    iget v0, p0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, p1

    iget v2, p3, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p3, Landroid/graphics/Rect;->right:I

    .line 11558
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, p2

    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p3, Landroid/graphics/Rect;->bottom:I

    .line 11559
    return-void
.end method


# virtual methods
.method getBoundsByRotation(Landroid/graphics/Rect;I)V
    .registers 7
    .param p1, "outBounds"    # Landroid/graphics/Rect;
    .param p2, "rotation"    # I

    .line 11562
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p2, v0, :cond_9

    const/4 v2, 0x3

    if-ne p2, v2, :cond_8

    goto :goto_9

    :cond_8
    move v0, v1

    .line 11563
    .local v0, "rotated":Z
    :cond_9
    :goto_9
    if-eqz v0, :cond_e

    iget v2, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mHeight:I

    goto :goto_10

    :cond_e
    iget v2, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mWidth:I

    .line 11564
    .local v2, "dw":I
    :goto_10
    if-eqz v0, :cond_15

    iget v3, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mWidth:I

    goto :goto_17

    :cond_15
    iget v3, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mHeight:I

    .line 11565
    .local v3, "dh":I
    :goto_17
    invoke-virtual {p1, v1, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 11566
    return-void
.end method

.method getContainerBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;IIZZ)V
    .registers 13
    .param p1, "outAppBounds"    # Landroid/graphics/Rect;
    .param p2, "outBounds"    # Landroid/graphics/Rect;
    .param p3, "rotation"    # I
    .param p4, "orientation"    # I
    .param p5, "orientationRequested"    # Z
    .param p6, "isFixedToUserRotation"    # Z

    .line 11579
    invoke-virtual {p0, p2, p4}, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->getFrameByOrientation(Landroid/graphics/Rect;I)V

    .line 11580
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mIsFloating:Z

    if-eqz v0, :cond_b

    .line 11581
    invoke-virtual {p1, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 11582
    return-void

    .line 11585
    :cond_b
    invoke-virtual {p0, p1, p3}, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->getBoundsByRotation(Landroid/graphics/Rect;I)V

    .line 11586
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 11587
    .local v0, "dW":I
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 11588
    .local v1, "dH":I
    nop

    .line 11589
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-le v2, v3, :cond_25

    move v2, v4

    goto :goto_26

    :cond_25
    move v2, v5

    :goto_26
    if-le v0, v1, :cond_2a

    move v3, v4

    goto :goto_2b

    :cond_2a
    move v3, v5

    :goto_2b
    if-eq v2, v3, :cond_2e

    goto :goto_2f

    :cond_2e
    move v4, v5

    :goto_2f
    move v2, v4

    .line 11591
    .local v2, "isOrientationMismatched":Z
    if-eqz v2, :cond_5b

    if-eqz p6, :cond_5b

    if-eqz p5, :cond_5b

    .line 11594
    const/4 v3, 0x2

    if-ne p4, v3, :cond_44

    .line 11595
    int-to-float v3, v0

    int-to-float v4, v0

    mul-float/2addr v3, v4

    int-to-float v4, v1

    div-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p2, Landroid/graphics/Rect;->bottom:I

    .line 11596
    iput v0, p2, Landroid/graphics/Rect;->right:I

    goto :goto_4e

    .line 11598
    :cond_44
    iput v1, p2, Landroid/graphics/Rect;->bottom:I

    .line 11599
    int-to-float v3, v1

    int-to-float v4, v1

    mul-float/2addr v3, v4

    int-to-float v4, v0

    div-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p2, Landroid/graphics/Rect;->right:I

    .line 11601
    :goto_4e
    iget v3, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mWidth:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/server/wm/ActivityRecord;->-$$Nest$smgetHorizontalCenterOffset(II)I

    move-result v3

    invoke-virtual {p2, v3, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 11603
    :cond_5b
    invoke-virtual {p1, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 11605
    if-eqz v2, :cond_73

    .line 11609
    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mNonDecorInsets:[Landroid/graphics/Rect;

    aget-object v3, v3, p3

    .line 11610
    .local v3, "insets":Landroid/graphics/Rect;
    iget v4, v3, Landroid/graphics/Rect;->left:I

    iget v5, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2, v4, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 11611
    iget v4, v3, Landroid/graphics/Rect;->left:I

    iget v5, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Rect;->offset(II)V

    .end local v3    # "insets":Landroid/graphics/Rect;
    goto :goto_7e

    .line 11612
    :cond_73
    const/4 v3, -0x1

    if-eq p3, v3, :cond_7e

    .line 11614
    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mNonDecorInsets:[Landroid/graphics/Rect;

    aget-object v3, v3, p3

    invoke-static {p1, p2, v3}, Lcom/android/server/wm/TaskFragment;->intersectWithInsetsIfFits(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_7f

    .line 11612
    :cond_7e
    :goto_7e
    nop

    .line 11617
    :goto_7f
    return-void
.end method

.method getFrameByOrientation(Landroid/graphics/Rect;I)V
    .registers 9
    .param p1, "outBounds"    # Landroid/graphics/Rect;
    .param p2, "orientation"    # I

    .line 11569
    iget v0, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mWidth:I

    iget v1, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 11570
    .local v0, "longSide":I
    iget v1, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mWidth:I

    iget v2, p0, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mHeight:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 11571
    .local v1, "shortSide":I
    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne p2, v3, :cond_16

    const/4 v3, 0x1

    goto :goto_17

    :cond_16
    move v3, v2

    .line 11572
    .local v3, "isLandscape":Z
    :goto_17
    if-eqz v3, :cond_1b

    move v4, v0

    goto :goto_1c

    :cond_1b
    move v4, v1

    .line 11573
    :goto_1c
    if-eqz v3, :cond_20

    move v5, v1

    goto :goto_21

    :cond_20
    move v5, v0

    .line 11572
    :goto_21
    invoke-virtual {p1, v2, v2, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 11574
    return-void
.end method
