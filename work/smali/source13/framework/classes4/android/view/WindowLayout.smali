.class public Landroid/view/WindowLayout;
.super Ljava/lang/Object;
.source "WindowLayout.java"


# static fields
.field private static final blacklist DEBUG:Z = false

.field static final blacklist MAX_X:I = 0x186a0

.field static final blacklist MAX_Y:I = 0x186a0

.field static final blacklist MIN_X:I = -0x186a0

.field static final blacklist MIN_Y:I = -0x186a0

.field private static final blacklist TAG:Ljava/lang/String;

.field public static final blacklist UNSPECIFIED_LENGTH:I = -0x1


# instance fields
.field private final blacklist mTempDisplayCutoutSafeExceptMaybeBarsRect:Landroid/graphics/Rect;

.field private final blacklist mTempRect:Landroid/graphics/Rect;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 60
    const-class v0, Landroid/view/WindowLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/view/WindowLayout;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/WindowLayout;->mTempDisplayCutoutSafeExceptMaybeBarsRect:Landroid/graphics/Rect;

    .line 72
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/WindowLayout;->mTempRect:Landroid/graphics/Rect;

    return-void
.end method

.method public static blacklist computeSurfaceSize(Landroid/view/WindowManager$LayoutParams;Landroid/graphics/Rect;IILandroid/graphics/Rect;ZLandroid/graphics/Point;)V
    .registers 12
    .param p0, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p1, "maxBounds"    # Landroid/graphics/Rect;
    .param p2, "requestedWidth"    # I
    .param p3, "requestedHeight"    # I
    .param p4, "winFrame"    # Landroid/graphics/Rect;
    .param p5, "dragResizing"    # Z
    .param p6, "outSurfaceSize"    # Landroid/graphics/Point;

    .line 385
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_9

    .line 387
    move v0, p2

    .line 388
    .local v0, "width":I
    move v1, p3

    .local v1, "height":I
    goto :goto_1c

    .line 393
    .end local v0    # "width":I
    .end local v1    # "height":I
    :cond_9
    if-eqz p5, :cond_14

    .line 396
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 397
    .restart local v0    # "width":I
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    .restart local v1    # "height":I
    goto :goto_1c

    .line 399
    .end local v0    # "width":I
    .end local v1    # "height":I
    :cond_14
    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 400
    .restart local v0    # "width":I
    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 406
    .restart local v1    # "height":I
    :goto_1c
    const/4 v2, 0x1

    if-ge v0, v2, :cond_20

    .line 407
    const/4 v0, 0x1

    .line 409
    :cond_20
    if-ge v1, v2, :cond_23

    .line 410
    const/4 v1, 0x1

    .line 414
    :cond_23
    iget-object v2, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    .line 415
    .local v2, "surfaceInsets":Landroid/graphics/Rect;
    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v4, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    add-int/2addr v0, v3

    .line 416
    iget v3, v2, Landroid/graphics/Rect;->top:I

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v4

    add-int/2addr v1, v3

    .line 418
    invoke-virtual {p6, v0, v1}, Landroid/graphics/Point;->set(II)V

    .line 419
    return-void
.end method

.method private blacklist getScaledFrame(Landroid/graphics/Rect;F)Landroid/graphics/Rect;
    .registers 6
    .param p1, "frame"    # Landroid/graphics/Rect;
    .param p2, "scale"    # F

    .line 372
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 373
    .local v0, "realFrame":Landroid/graphics/Rect;
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 374
    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->scale(F)V

    .line 375
    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 376
    return-object v0
.end method


# virtual methods
.method public blacklist computeFrames(Landroid/view/WindowManager$LayoutParams;Landroid/view/InsetsState;Landroid/graphics/Rect;Landroid/graphics/Rect;IIILandroid/view/InsetsVisibilities;Landroid/graphics/Rect;FLandroid/window/ClientWindowFrames;)V
    .registers 54
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "state"    # Landroid/view/InsetsState;
    .param p3, "displayCutoutSafe"    # Landroid/graphics/Rect;
    .param p4, "windowBounds"    # Landroid/graphics/Rect;
    .param p5, "windowingMode"    # I
    .param p6, "requestedWidth"    # I
    .param p7, "requestedHeight"    # I
    .param p8, "requestedVisibilities"    # Landroid/view/InsetsVisibilities;
    .param p9, "attachedWindowFrame"    # Landroid/graphics/Rect;
    .param p10, "compatScale"    # F
    .param p11, "outFrames"    # Landroid/window/ClientWindowFrames;

    .line 78
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p10

    move-object/from16 v7, p11

    iget v8, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 79
    .local v8, "type":I
    iget v9, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 80
    .local v9, "fl":I
    iget v10, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 81
    .local v10, "pfl":I
    and-int/lit16 v11, v9, 0x100

    const/16 v12, 0x100

    if-ne v11, v12, :cond_1e

    const/4 v11, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v11, 0x0

    .line 82
    .local v11, "layoutInScreen":Z
    :goto_1f
    iget-object v12, v7, Landroid/window/ClientWindowFrames;->displayFrame:Landroid/graphics/Rect;

    .line 83
    .local v12, "outDisplayFrame":Landroid/graphics/Rect;
    iget-object v15, v7, Landroid/window/ClientWindowFrames;->parentFrame:Landroid/graphics/Rect;

    .line 84
    .local v15, "outParentFrame":Landroid/graphics/Rect;
    iget-object v14, v7, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    .line 87
    .local v14, "outFrame":Landroid/graphics/Rect;
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowManager$LayoutParams;->getFitInsetsTypes()I

    move-result v13

    .line 88
    move/from16 v22, v9

    .end local v9    # "fl":I
    .local v22, "fl":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowManager$LayoutParams;->isFitInsetsIgnoringVisibility()Z

    move-result v9

    .line 87
    invoke-virtual {v2, v4, v13, v9}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;IZ)Landroid/graphics/Insets;

    move-result-object v9

    .line 89
    .local v9, "insets":Landroid/graphics/Insets;
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowManager$LayoutParams;->getFitInsetsSides()I

    move-result v13

    .line 90
    .local v13, "sides":I
    and-int/lit8 v18, v13, 0x1

    if-eqz v18, :cond_40

    move-object/from16 v23, v14

    .end local v14    # "outFrame":Landroid/graphics/Rect;
    .local v23, "outFrame":Landroid/graphics/Rect;
    iget v14, v9, Landroid/graphics/Insets;->left:I

    goto :goto_43

    .end local v23    # "outFrame":Landroid/graphics/Rect;
    .restart local v14    # "outFrame":Landroid/graphics/Rect;
    :cond_40
    move-object/from16 v23, v14

    .end local v14    # "outFrame":Landroid/graphics/Rect;
    .restart local v23    # "outFrame":Landroid/graphics/Rect;
    const/4 v14, 0x0

    .line 91
    .local v14, "left":I
    :goto_43
    and-int/lit8 v18, v13, 0x2

    if-eqz v18, :cond_4a

    iget v6, v9, Landroid/graphics/Insets;->top:I

    goto :goto_4b

    :cond_4a
    const/4 v6, 0x0

    .line 92
    .local v6, "top":I
    :goto_4b
    and-int/lit8 v18, v13, 0x4

    if-eqz v18, :cond_54

    move/from16 v24, v8

    .end local v8    # "type":I
    .local v24, "type":I
    iget v8, v9, Landroid/graphics/Insets;->right:I

    goto :goto_57

    .end local v24    # "type":I
    .restart local v8    # "type":I
    :cond_54
    move/from16 v24, v8

    .end local v8    # "type":I
    .restart local v24    # "type":I
    const/4 v8, 0x0

    .line 93
    .local v8, "right":I
    :goto_57
    and-int/lit8 v18, v13, 0x8

    if-eqz v18, :cond_60

    move/from16 v25, v13

    .end local v13    # "sides":I
    .local v25, "sides":I
    iget v13, v9, Landroid/graphics/Insets;->bottom:I

    goto :goto_63

    .end local v25    # "sides":I
    .restart local v13    # "sides":I
    :cond_60
    move/from16 v25, v13

    .end local v13    # "sides":I
    .restart local v25    # "sides":I
    const/4 v13, 0x0

    .line 94
    .local v13, "bottom":I
    :goto_63
    move-object/from16 v26, v9

    .end local v9    # "insets":Landroid/graphics/Insets;
    .local v26, "insets":Landroid/graphics/Insets;
    iget v9, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v9, v14

    move/from16 v27, v14

    .end local v14    # "left":I
    .local v27, "left":I
    iget v14, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v14, v6

    move/from16 v28, v6

    .end local v6    # "top":I
    .local v28, "top":I
    iget v6, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v6, v8

    move/from16 v29, v8

    .end local v8    # "right":I
    .local v29, "right":I
    iget v8, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v13

    invoke-virtual {v12, v9, v14, v6, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 97
    if-nez p9, :cond_95

    .line 98
    invoke-virtual {v15, v12}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 99
    const/high16 v6, 0x40000000    # 2.0f

    and-int/2addr v6, v10

    if-eqz v6, :cond_9e

    .line 100
    const/16 v6, 0x13

    invoke-virtual {v2, v6}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v6

    .line 101
    .local v6, "source":Landroid/view/InsetsSource;
    if-eqz v6, :cond_94

    .line 102
    const/4 v8, 0x0

    invoke-virtual {v6, v15, v8}, Landroid/view/InsetsSource;->calculateInsets(Landroid/graphics/Rect;Z)Landroid/graphics/Insets;

    move-result-object v9

    invoke-virtual {v15, v9}, Landroid/graphics/Rect;->inset(Landroid/graphics/Insets;)V

    .line 105
    .end local v6    # "source":Landroid/view/InsetsSource;
    :cond_94
    goto :goto_9e

    .line 107
    :cond_95
    if-nez v11, :cond_9a

    move-object/from16 v6, p9

    goto :goto_9b

    :cond_9a
    move-object v6, v12

    :goto_9b
    invoke-virtual {v15, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 113
    :cond_9e
    :goto_9e
    invoke-static {}, Landroid/view/WindowLayoutStub;->getInstance()Landroid/view/WindowLayoutStub;

    move-result-object v6

    invoke-interface {v6, v1}, Landroid/view/WindowLayoutStub;->getLayoutInDisplayCutoutMode(Landroid/view/WindowManager$LayoutParams;)I

    move-result v6

    .line 115
    .local v6, "cutoutMode":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/InsetsState;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v8

    .line 116
    .local v8, "cutout":Landroid/view/DisplayCutout;
    iget-object v9, v0, Landroid/view/WindowLayout;->mTempDisplayCutoutSafeExceptMaybeBarsRect:Landroid/graphics/Rect;

    .line 117
    .local v9, "displayCutoutSafeExceptMaybeBars":Landroid/graphics/Rect;
    invoke-virtual {v9, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 118
    const/4 v14, 0x0

    iput-boolean v14, v7, Landroid/window/ClientWindowFrames;->isParentFrameClippedByDisplayCutout:Z

    .line 119
    const/4 v14, 0x3

    const/high16 v18, 0x10000

    const/high16 v19, 0x3f800000    # 1.0f

    if-eq v6, v14, :cond_242

    invoke-virtual {v8}, Landroid/view/DisplayCutout;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_242

    .line 122
    invoke-virtual/range {p2 .. p2}, Landroid/view/InsetsState;->getDisplayFrame()Landroid/graphics/Rect;

    move-result-object v14

    .line 123
    .local v14, "displayFrame":Landroid/graphics/Rect;
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v21

    .line 124
    .local v21, "statusBarSource":Landroid/view/InsetsSource;
    if-eqz v21, :cond_e2

    iget v4, v3, Landroid/graphics/Rect;->top:I

    move-object/from16 v30, v8

    .end local v8    # "cutout":Landroid/view/DisplayCutout;
    .local v30, "cutout":Landroid/view/DisplayCutout;
    iget v8, v14, Landroid/graphics/Rect;->top:I

    if-le v4, v8, :cond_e4

    .line 128
    nop

    .line 129
    invoke-virtual/range {v21 .. v21}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iget v8, v3, Landroid/graphics/Rect;->top:I

    invoke-static {v4, v8}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v9, Landroid/graphics/Rect;->top:I

    goto :goto_e4

    .line 124
    .end local v30    # "cutout":Landroid/view/DisplayCutout;
    .restart local v8    # "cutout":Landroid/view/DisplayCutout;
    :cond_e2
    move-object/from16 v30, v8

    .line 131
    .end local v8    # "cutout":Landroid/view/DisplayCutout;
    .restart local v30    # "cutout":Landroid/view/DisplayCutout;
    :cond_e4
    :goto_e4
    const/4 v8, 0x1

    if-ne v6, v8, :cond_104

    .line 132
    invoke-virtual {v14}, Landroid/graphics/Rect;->width()I

    move-result v8

    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-ge v8, v4, :cond_fb

    .line 133
    const/high16 v4, -0x80000000

    iput v4, v9, Landroid/graphics/Rect;->top:I

    .line 134
    const v8, 0x7fffffff

    iput v8, v9, Landroid/graphics/Rect;->bottom:I

    goto :goto_104

    .line 136
    :cond_fb
    const/high16 v4, -0x80000000

    const v8, 0x7fffffff

    iput v4, v9, Landroid/graphics/Rect;->left:I

    .line 137
    iput v8, v9, Landroid/graphics/Rect;->right:I

    .line 140
    :cond_104
    :goto_104
    iget v4, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int v4, v4, v18

    if-eqz v4, :cond_10c

    const/4 v4, 0x1

    goto :goto_10d

    :cond_10c
    const/4 v4, 0x0

    .line 142
    .local v4, "layoutInsetDecor":Z
    :goto_10d
    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Landroid/view/InsetsState;->getSourceOrDefaultVisibility(I)Z

    move-result v33

    const/4 v8, 0x1

    xor-int/lit8 v16, v33, 0x1

    move/from16 v33, v16

    .line 143
    .local v33, "requestedFullscreen":Z
    invoke-virtual {v2, v8}, Landroid/view/InsetsState;->getSourceOrDefaultVisibility(I)Z

    move-result v16

    xor-int/lit8 v34, v16, 0x1

    move/from16 v8, v34

    .line 144
    .local v8, "requestedHideNavigation":Z
    move/from16 v34, v10

    const/4 v10, 0x5

    .end local v10    # "pfl":I
    .local v34, "pfl":I
    if-ne v5, v10, :cond_133

    if-eqz v11, :cond_133

    if-eqz v4, :cond_133

    if-nez v33, :cond_133

    if-eqz v6, :cond_12f

    const/4 v10, 0x1

    if-ne v6, v10, :cond_133

    .line 151
    :cond_12f
    const/high16 v10, -0x80000000

    iput v10, v9, Landroid/graphics/Rect;->top:I

    .line 153
    :cond_133
    const/4 v10, 0x5

    if-ne v5, v10, :cond_166

    if-eqz v11, :cond_166

    if-eqz v4, :cond_166

    if-nez v8, :cond_166

    if-eqz v6, :cond_145

    const/4 v10, 0x1

    if-ne v6, v10, :cond_142

    goto :goto_145

    :cond_142
    move/from16 v35, v8

    goto :goto_168

    .line 157
    :cond_145
    :goto_145
    invoke-static {}, Landroid/util/MiuiFreeformUtils;->getNavBarPosition()I

    move-result v10

    .line 158
    .local v10, "navigationBarPosition":I
    packed-switch v10, :pswitch_data_3b2

    :pswitch_14c
    move/from16 v35, v8

    .end local v8    # "requestedHideNavigation":Z
    .local v35, "requestedHideNavigation":Z
    goto :goto_168

    .line 160
    .end local v35    # "requestedHideNavigation":Z
    .restart local v8    # "requestedHideNavigation":Z
    :pswitch_14f
    move/from16 v35, v8

    const v8, 0x7fffffff

    .end local v8    # "requestedHideNavigation":Z
    .restart local v35    # "requestedHideNavigation":Z
    iput v8, v9, Landroid/graphics/Rect;->bottom:I

    .line 161
    goto :goto_168

    .line 163
    .end local v35    # "requestedHideNavigation":Z
    .restart local v8    # "requestedHideNavigation":Z
    :pswitch_157
    move/from16 v35, v8

    const v8, 0x7fffffff

    .end local v8    # "requestedHideNavigation":Z
    .restart local v35    # "requestedHideNavigation":Z
    iput v8, v9, Landroid/graphics/Rect;->right:I

    .line 164
    goto :goto_168

    .line 166
    .end local v35    # "requestedHideNavigation":Z
    .restart local v8    # "requestedHideNavigation":Z
    :pswitch_15f
    move/from16 v35, v8

    .end local v8    # "requestedHideNavigation":Z
    .restart local v35    # "requestedHideNavigation":Z
    const/high16 v8, -0x80000000

    iput v8, v9, Landroid/graphics/Rect;->left:I

    goto :goto_168

    .line 153
    .end local v10    # "navigationBarPosition":I
    .end local v35    # "requestedHideNavigation":Z
    .restart local v8    # "requestedHideNavigation":Z
    :cond_166
    move/from16 v35, v8

    .line 171
    .end local v8    # "requestedHideNavigation":Z
    .restart local v35    # "requestedHideNavigation":Z
    :goto_168
    if-eqz v11, :cond_1ae

    if-eqz v4, :cond_1ae

    if-eqz v6, :cond_177

    const/4 v8, 0x1

    if-ne v6, v8, :cond_172

    goto :goto_177

    :cond_172
    move-object/from16 v10, p8

    move/from16 v36, v4

    goto :goto_1b2

    .line 174
    :cond_177
    :goto_177
    nop

    .line 175
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v8

    .line 174
    move-object/from16 v10, p8

    invoke-virtual {v2, v14, v8, v10}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;ILandroid/view/InsetsVisibilities;)Landroid/graphics/Insets;

    move-result-object v8

    .line 176
    .local v8, "systemBarsInsets":Landroid/graphics/Insets;
    move/from16 v36, v4

    .end local v4    # "layoutInsetDecor":Z
    .local v36, "layoutInsetDecor":Z
    iget v4, v8, Landroid/graphics/Insets;->left:I

    if-lez v4, :cond_18d

    .line 177
    const/high16 v4, -0x80000000

    iput v4, v9, Landroid/graphics/Rect;->left:I

    goto :goto_18f

    .line 176
    :cond_18d
    const/high16 v4, -0x80000000

    .line 179
    :goto_18f
    iget v4, v8, Landroid/graphics/Insets;->top:I

    if-lez v4, :cond_197

    .line 180
    const/high16 v4, -0x80000000

    iput v4, v9, Landroid/graphics/Rect;->top:I

    .line 182
    :cond_197
    iget v4, v8, Landroid/graphics/Insets;->right:I

    if-lez v4, :cond_1a1

    .line 183
    const v4, 0x7fffffff

    iput v4, v9, Landroid/graphics/Rect;->right:I

    goto :goto_1a4

    .line 182
    :cond_1a1
    const v4, 0x7fffffff

    .line 185
    :goto_1a4
    iget v4, v8, Landroid/graphics/Insets;->bottom:I

    if-lez v4, :cond_1b2

    .line 186
    const v4, 0x7fffffff

    iput v4, v9, Landroid/graphics/Rect;->bottom:I

    goto :goto_1b2

    .line 171
    .end local v8    # "systemBarsInsets":Landroid/graphics/Insets;
    .end local v36    # "layoutInsetDecor":Z
    .restart local v4    # "layoutInsetDecor":Z
    :cond_1ae
    move-object/from16 v10, p8

    move/from16 v36, v4

    .line 189
    .end local v4    # "layoutInsetDecor":Z
    .restart local v36    # "layoutInsetDecor":Z
    :cond_1b2
    :goto_1b2
    const/16 v4, 0x7db

    move/from16 v8, v24

    .end local v24    # "type":I
    .local v8, "type":I
    if-ne v8, v4, :cond_1cf

    .line 190
    move/from16 v24, v6

    const/4 v4, 0x1

    .end local v6    # "cutoutMode":I
    .local v24, "cutoutMode":I
    invoke-virtual {v2, v4}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v6

    .line 191
    .local v6, "navSource":Landroid/view/InsetsSource;
    if-eqz v6, :cond_1d1

    invoke-virtual {v6, v14, v4}, Landroid/view/InsetsSource;->calculateInsets(Landroid/graphics/Rect;Z)Landroid/graphics/Insets;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Insets;->bottom:I

    if-lez v2, :cond_1d1

    .line 193
    const v2, 0x7fffffff

    iput v2, v9, Landroid/graphics/Rect;->bottom:I

    goto :goto_1d1

    .line 189
    .end local v24    # "cutoutMode":I
    .local v6, "cutoutMode":I
    :cond_1cf
    move/from16 v24, v6

    .line 196
    .end local v6    # "cutoutMode":I
    .restart local v24    # "cutoutMode":I
    :cond_1d1
    :goto_1d1
    if-eqz p9, :cond_1d7

    if-nez v11, :cond_1d7

    const/4 v2, 0x1

    goto :goto_1d8

    :cond_1d7
    const/4 v2, 0x0

    .line 200
    .local v2, "attachedInParent":Z
    :goto_1d8
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowManager$LayoutParams;->isFullscreen()Z

    move-result v4

    if-nez v4, :cond_1e5

    if-eqz v11, :cond_1e5

    const/4 v4, 0x1

    if-eq v8, v4, :cond_1e5

    const/4 v4, 0x1

    goto :goto_1e6

    :cond_1e5
    const/4 v4, 0x0

    .line 208
    .local v4, "floatingInScreenWindow":Z
    :goto_1e6
    if-nez v2, :cond_223

    if-nez v4, :cond_223

    .line 209
    iget-object v6, v0, Landroid/view/WindowLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v15}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 214
    const/4 v6, 0x5

    if-ne v5, v6, :cond_20c

    .line 215
    move/from16 v6, p10

    move/from16 v31, v2

    .end local v2    # "attachedInParent":Z
    .local v31, "attachedInParent":Z
    invoke-direct {v0, v15, v6}, Landroid/view/WindowLayout;->getScaledFrame(Landroid/graphics/Rect;F)Landroid/graphics/Rect;

    move-result-object v2

    .line 216
    .local v2, "realPf":Landroid/graphics/Rect;
    invoke-virtual {v2, v9}, Landroid/graphics/Rect;->intersectUnchecked(Landroid/graphics/Rect;)V

    .line 217
    move/from16 v32, v4

    .end local v4    # "floatingInScreenWindow":Z
    .local v32, "floatingInScreenWindow":Z
    div-float v4, v19, v6

    invoke-direct {v0, v2, v4}, Landroid/view/WindowLayout;->getScaledFrame(Landroid/graphics/Rect;F)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v15, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 218
    const/4 v4, 0x0

    iput-boolean v4, v7, Landroid/window/ClientWindowFrames;->isParentFrameClippedByDisplayCutout:Z

    .line 219
    .end local v2    # "realPf":Landroid/graphics/Rect;
    goto :goto_22a

    .line 220
    .end local v31    # "attachedInParent":Z
    .end local v32    # "floatingInScreenWindow":Z
    .local v2, "attachedInParent":Z
    .restart local v4    # "floatingInScreenWindow":Z
    :cond_20c
    move/from16 v6, p10

    move/from16 v31, v2

    move/from16 v32, v4

    const/4 v4, 0x0

    .end local v2    # "attachedInParent":Z
    .end local v4    # "floatingInScreenWindow":Z
    .restart local v31    # "attachedInParent":Z
    .restart local v32    # "floatingInScreenWindow":Z
    invoke-virtual {v15, v9}, Landroid/graphics/Rect;->intersectUnchecked(Landroid/graphics/Rect;)V

    .line 221
    iget-object v2, v0, Landroid/view/WindowLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v15}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/16 v16, 0x1

    xor-int/lit8 v2, v2, 0x1

    iput-boolean v2, v7, Landroid/window/ClientWindowFrames;->isParentFrameClippedByDisplayCutout:Z

    goto :goto_22a

    .line 208
    .end local v31    # "attachedInParent":Z
    .end local v32    # "floatingInScreenWindow":Z
    .restart local v2    # "attachedInParent":Z
    .restart local v4    # "floatingInScreenWindow":Z
    :cond_223
    move/from16 v6, p10

    move/from16 v31, v2

    move/from16 v32, v4

    const/4 v4, 0x0

    .line 227
    .end local v2    # "attachedInParent":Z
    .end local v4    # "floatingInScreenWindow":Z
    .restart local v31    # "attachedInParent":Z
    .restart local v32    # "floatingInScreenWindow":Z
    :goto_22a
    const/4 v2, 0x5

    if-ne v5, v2, :cond_23e

    .line 228
    invoke-direct {v0, v12, v6}, Landroid/view/WindowLayout;->getScaledFrame(Landroid/graphics/Rect;F)Landroid/graphics/Rect;

    move-result-object v2

    .line 229
    .local v2, "realDf":Landroid/graphics/Rect;
    invoke-virtual {v2, v9}, Landroid/graphics/Rect;->intersectUnchecked(Landroid/graphics/Rect;)V

    .line 230
    div-float v4, v19, v6

    invoke-direct {v0, v2, v4}, Landroid/view/WindowLayout;->getScaledFrame(Landroid/graphics/Rect;F)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v12, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 231
    .end local v2    # "realDf":Landroid/graphics/Rect;
    goto :goto_24e

    .line 232
    :cond_23e
    invoke-virtual {v12, v9}, Landroid/graphics/Rect;->intersectUnchecked(Landroid/graphics/Rect;)V

    goto :goto_24e

    .line 119
    .end local v14    # "displayFrame":Landroid/graphics/Rect;
    .end local v21    # "statusBarSource":Landroid/view/InsetsSource;
    .end local v30    # "cutout":Landroid/view/DisplayCutout;
    .end local v31    # "attachedInParent":Z
    .end local v32    # "floatingInScreenWindow":Z
    .end local v33    # "requestedFullscreen":Z
    .end local v34    # "pfl":I
    .end local v35    # "requestedHideNavigation":Z
    .end local v36    # "layoutInsetDecor":Z
    .restart local v6    # "cutoutMode":I
    .local v8, "cutout":Landroid/view/DisplayCutout;
    .local v10, "pfl":I
    .local v24, "type":I
    :cond_242
    move-object/from16 v30, v8

    move/from16 v34, v10

    move/from16 v8, v24

    move-object/from16 v10, p8

    move/from16 v24, v6

    move/from16 v6, p10

    .line 237
    .end local v6    # "cutoutMode":I
    .end local v10    # "pfl":I
    .local v8, "type":I
    .local v24, "cutoutMode":I
    .restart local v30    # "cutout":Landroid/view/DisplayCutout;
    .restart local v34    # "pfl":I
    :goto_24e
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_256

    const/4 v2, 0x1

    goto :goto_257

    :cond_256
    const/4 v2, 0x0

    .line 238
    .local v2, "noLimits":Z
    :goto_257
    invoke-static/range {p5 .. p5}, Landroid/app/WindowConfiguration;->inMultiWindowMode(I)Z

    move-result v4

    .line 242
    .local v4, "inMultiWindowMode":Z
    if-eqz v2, :cond_271

    const/16 v14, 0x7da

    if-eq v8, v14, :cond_271

    if-nez v4, :cond_271

    .line 243
    const v14, -0x186a0

    iput v14, v12, Landroid/graphics/Rect;->left:I

    .line 244
    iput v14, v12, Landroid/graphics/Rect;->top:I

    .line 245
    const v14, 0x186a0

    iput v14, v12, Landroid/graphics/Rect;->right:I

    .line 246
    iput v14, v12, Landroid/graphics/Rect;->bottom:I

    .line 251
    :cond_271
    cmpl-float v14, v6, v19

    if-eqz v14, :cond_27a

    const/4 v14, 0x5

    if-eq v5, v14, :cond_27a

    const/4 v14, 0x1

    goto :goto_27b

    :cond_27a
    const/4 v14, 0x0

    .line 252
    .local v14, "hasCompatScale":Z
    :goto_27b
    invoke-virtual {v15}, Landroid/graphics/Rect;->width()I

    move-result v5

    .line 253
    .local v5, "pw":I
    invoke-virtual {v15}, Landroid/graphics/Rect;->height()I

    move-result v7

    .line 254
    .local v7, "ph":I
    move/from16 v31, v8

    .end local v8    # "type":I
    .local v31, "type":I
    iget v8, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v8, v8, 0x2000

    if-eqz v8, :cond_28d

    const/4 v8, 0x1

    goto :goto_28e

    :cond_28d
    const/4 v8, 0x0

    .line 256
    .local v8, "extendedByCutout":Z
    :goto_28e
    move/from16 v19, p6

    .line 257
    .local v19, "rw":I
    move/from16 v20, p7

    .line 266
    .local v20, "rh":I
    move-object/from16 v32, v9

    .end local v9    # "displayCutoutSafeExceptMaybeBars":Landroid/graphics/Rect;
    .local v32, "displayCutoutSafeExceptMaybeBars":Landroid/graphics/Rect;
    const/4 v9, -0x1

    move/from16 v10, v19

    .end local v19    # "rw":I
    .local v10, "rw":I
    if-eq v10, v9, :cond_29e

    if-eqz v8, :cond_29c

    goto :goto_29e

    :cond_29c
    move v9, v10

    goto :goto_2a6

    .line 267
    :cond_29e
    :goto_29e
    iget v9, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    if-ltz v9, :cond_2a5

    iget v9, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    goto :goto_2a6

    :cond_2a5
    move v9, v5

    .line 269
    .end local v10    # "rw":I
    .local v9, "rw":I
    :goto_2a6
    move/from16 v33, v11

    move/from16 v10, v20

    const/4 v11, -0x1

    .end local v11    # "layoutInScreen":Z
    .end local v20    # "rh":I
    .local v10, "rh":I
    .local v33, "layoutInScreen":Z
    if-eq v10, v11, :cond_2af

    if-eqz v8, :cond_2bb

    .line 270
    :cond_2af
    iget v11, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    if-ltz v11, :cond_2b6

    iget v11, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_2b7

    :cond_2b6
    move v11, v7

    :goto_2b7
    move/from16 v20, v11

    move/from16 v10, v20

    .line 273
    :cond_2bb
    iget v11, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v11, v11, 0x4000

    const/high16 v20, 0x3f000000    # 0.5f

    if-eqz v11, :cond_2ff

    .line 274
    iget v11, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    if-gez v11, :cond_2c9

    .line 275
    move v11, v5

    .local v11, "w":I
    goto :goto_2d5

    .line 276
    .end local v11    # "w":I
    :cond_2c9
    if-eqz v14, :cond_2d3

    .line 277
    iget v11, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    int-to-float v11, v11

    mul-float/2addr v11, v6

    add-float v11, v11, v20

    float-to-int v11, v11

    .restart local v11    # "w":I
    goto :goto_2d5

    .line 279
    .end local v11    # "w":I
    :cond_2d3
    iget v11, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 281
    .restart local v11    # "w":I
    :goto_2d5
    move/from16 v19, v11

    .end local v11    # "w":I
    .local v19, "w":I
    iget v11, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    if-gez v11, :cond_2e4

    .line 282
    move v11, v7

    move/from16 v36, v9

    move v9, v11

    move/from16 v35, v13

    move/from16 v11, v19

    .local v11, "h":I
    goto :goto_323

    .line 283
    .end local v11    # "h":I
    :cond_2e4
    if-eqz v14, :cond_2f5

    .line 284
    iget v11, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    int-to-float v11, v11

    mul-float/2addr v11, v6

    add-float v11, v11, v20

    float-to-int v11, v11

    move/from16 v36, v9

    move v9, v11

    move/from16 v35, v13

    move/from16 v11, v19

    .restart local v11    # "h":I
    goto :goto_323

    .line 286
    .end local v11    # "h":I
    :cond_2f5
    iget v11, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    move/from16 v36, v9

    move v9, v11

    move/from16 v35, v13

    move/from16 v11, v19

    .restart local v11    # "h":I
    goto :goto_323

    .line 289
    .end local v11    # "h":I
    .end local v19    # "w":I
    :cond_2ff
    iget v11, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    move/from16 v35, v13

    const/4 v13, -0x1

    .end local v13    # "bottom":I
    .local v35, "bottom":I
    if-ne v11, v13, :cond_308

    .line 290
    move v11, v5

    .local v11, "w":I
    goto :goto_311

    .line 291
    .end local v11    # "w":I
    :cond_308
    if-eqz v14, :cond_310

    .line 292
    int-to-float v11, v9

    mul-float/2addr v11, v6

    add-float v11, v11, v20

    float-to-int v11, v11

    .restart local v11    # "w":I
    goto :goto_311

    .line 294
    .end local v11    # "w":I
    :cond_310
    move v11, v9

    .line 296
    .restart local v11    # "w":I
    :goto_311
    iget v13, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    move/from16 v36, v9

    const/4 v9, -0x1

    .end local v9    # "rw":I
    .local v36, "rw":I
    if-ne v13, v9, :cond_31a

    .line 297
    move v9, v7

    .local v9, "h":I
    goto :goto_323

    .line 298
    .end local v9    # "h":I
    :cond_31a
    if-eqz v14, :cond_322

    .line 299
    int-to-float v9, v10

    mul-float/2addr v9, v6

    add-float v9, v9, v20

    float-to-int v9, v9

    .restart local v9    # "h":I
    goto :goto_323

    .line 301
    .end local v9    # "h":I
    :cond_322
    move v9, v10

    .line 305
    .restart local v9    # "h":I
    :goto_323
    if-eqz v14, :cond_330

    .line 306
    iget v13, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v13, v13

    mul-float/2addr v13, v6

    .line 307
    .local v13, "x":F
    move/from16 v37, v10

    .end local v10    # "rh":I
    .local v37, "rh":I
    iget v10, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v10, v10

    mul-float/2addr v10, v6

    .local v10, "y":F
    goto :goto_338

    .line 309
    .end local v13    # "x":F
    .end local v37    # "rh":I
    .local v10, "rh":I
    :cond_330
    move/from16 v37, v10

    .end local v10    # "rh":I
    .restart local v37    # "rh":I
    iget v10, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v13, v10

    .line 310
    .restart local v13    # "x":F
    iget v10, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v10, v10

    .line 313
    .local v10, "y":F
    :goto_338
    if-eqz v4, :cond_348

    iget v6, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int v6, v6, v18

    if-nez v6, :cond_348

    .line 317
    invoke-static {v11, v5}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 318
    invoke-static {v9, v7}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 328
    :cond_348
    if-eqz v4, :cond_356

    iget v6, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v38, v4

    const/4 v4, 0x1

    .end local v4    # "inMultiWindowMode":Z
    .local v38, "inMultiWindowMode":Z
    if-eq v6, v4, :cond_354

    if-nez v2, :cond_354

    goto :goto_359

    :cond_354
    const/4 v4, 0x0

    goto :goto_359

    .end local v38    # "inMultiWindowMode":Z
    .restart local v4    # "inMultiWindowMode":Z
    :cond_356
    move/from16 v38, v4

    const/4 v4, 0x1

    .line 332
    .local v4, "fitToDisplay":Z
    .restart local v38    # "inMultiWindowMode":Z
    :goto_359
    iget v6, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    move/from16 v39, v2

    .end local v2    # "noLimits":Z
    .local v39, "noLimits":Z
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    move/from16 v40, v14

    .end local v14    # "hasCompatScale":Z
    .local v40, "hasCompatScale":Z
    int-to-float v14, v5

    mul-float/2addr v2, v14

    add-float/2addr v2, v13

    float-to-int v2, v2

    iget v14, v1, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    move/from16 v41, v5

    .end local v5    # "pw":I
    .local v41, "pw":I
    int-to-float v5, v7

    mul-float/2addr v14, v5

    add-float/2addr v14, v10

    float-to-int v5, v14

    move-object v14, v15

    .end local v15    # "outParentFrame":Landroid/graphics/Rect;
    .local v14, "outParentFrame":Landroid/graphics/Rect;
    move v15, v6

    move/from16 v16, v11

    move/from16 v17, v9

    move-object/from16 v18, v14

    move/from16 v19, v2

    move/from16 v20, v5

    move-object/from16 v21, v23

    invoke-static/range {v15 .. v21}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;IILandroid/graphics/Rect;)V

    .line 337
    if-eqz v4, :cond_388

    .line 338
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    move-object/from16 v5, v23

    .end local v23    # "outFrame":Landroid/graphics/Rect;
    .local v5, "outFrame":Landroid/graphics/Rect;
    invoke-static {v2, v12, v5}, Landroid/view/Gravity;->applyDisplay(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_38a

    .line 337
    .end local v5    # "outFrame":Landroid/graphics/Rect;
    .restart local v23    # "outFrame":Landroid/graphics/Rect;
    :cond_388
    move-object/from16 v5, v23

    .line 341
    .end local v23    # "outFrame":Landroid/graphics/Rect;
    .restart local v5    # "outFrame":Landroid/graphics/Rect;
    :goto_38a
    if-eqz v8, :cond_3b1

    invoke-virtual {v3, v5}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v2

    if-nez v2, :cond_3b1

    .line 342
    iget-object v2, v0, Landroid/view/WindowLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 345
    const/high16 v2, 0x11000000

    .line 346
    .local v2, "clipFlags":I
    iget v6, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const v15, -0x11000001

    and-int/2addr v6, v15

    iget-object v15, v0, Landroid/view/WindowLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-static {v6, v3, v15}, Landroid/view/Gravity;->applyDisplay(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 349
    iget-object v6, v0, Landroid/view/WindowLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v12}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v6

    if-eqz v6, :cond_3b1

    .line 350
    iget-object v6, v0, Landroid/view/WindowLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 368
    .end local v2    # "clipFlags":I
    :cond_3b1
    return-void

    :pswitch_data_3b2
    .packed-switch 0x1
        :pswitch_15f
        :pswitch_157
        :pswitch_14c
        :pswitch_14f
    .end packed-switch
.end method
