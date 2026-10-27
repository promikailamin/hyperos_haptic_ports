.class public Landroid/widget/FrameLayout;
.super Landroid/view/ViewGroup;
.source "FrameLayout.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/FrameLayout$LayoutParams;
    }
.end annotation


# static fields
.field private static final greylist-max-o DEFAULT_CHILD_GRAVITY:I = 0x800033


# instance fields
.field private greylist mForegroundPaddingBottom:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "padding"
    .end annotation
.end field

.field private greylist mForegroundPaddingLeft:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "padding"
    .end annotation
.end field

.field private greylist mForegroundPaddingRight:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "padding"
    .end annotation
.end field

.field private greylist mForegroundPaddingTop:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "padding"
    .end annotation
.end field

.field private final greylist-max-o mMatchParentChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field greylist mMeasureAllChildren:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "measurement"
    .end annotation
.end field


# direct methods
.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 89
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/FrameLayout;->mMeasureAllChildren:Z

    .line 70
    iput v0, p0, Landroid/widget/FrameLayout;->mForegroundPaddingLeft:I

    .line 74
    iput v0, p0, Landroid/widget/FrameLayout;->mForegroundPaddingTop:I

    .line 78
    iput v0, p0, Landroid/widget/FrameLayout;->mForegroundPaddingRight:I

    .line 82
    iput v0, p0, Landroid/widget/FrameLayout;->mForegroundPaddingBottom:I

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/widget/FrameLayout;->mMatchParentChildren:Ljava/util/ArrayList;

    .line 90
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 93
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 94
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 98
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 99
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 103
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/FrameLayout;->mMeasureAllChildren:Z

    .line 70
    iput v0, p0, Landroid/widget/FrameLayout;->mForegroundPaddingLeft:I

    .line 74
    iput v0, p0, Landroid/widget/FrameLayout;->mForegroundPaddingTop:I

    .line 78
    iput v0, p0, Landroid/widget/FrameLayout;->mForegroundPaddingRight:I

    .line 82
    iput v0, p0, Landroid/widget/FrameLayout;->mForegroundPaddingBottom:I

    .line 86
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Landroid/widget/FrameLayout;->mMatchParentChildren:Ljava/util/ArrayList;

    .line 105
    sget-object v1, Lcom/android/internal/R$styleable;->FrameLayout:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 107
    .local v1, "a":Landroid/content/res/TypedArray;
    sget-object v5, Lcom/android/internal/R$styleable;->FrameLayout:[I

    move-object v3, p0

    move-object v4, p1

    move-object v6, p2

    move-object v7, v1

    move v8, p3

    move v9, p4

    invoke-virtual/range {v3 .. v9}, Landroid/widget/FrameLayout;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 110
    invoke-virtual {v1, v0, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 111
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setMeasureAllChildren(Z)V

    .line 114
    :cond_30
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 115
    return-void
.end method

.method private greylist-max-o getPaddingBottomWithForeground()I
    .registers 3

    .line 178
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isForegroundInsidePadding()Z

    move-result v0

    if-eqz v0, :cond_f

    iget v0, p0, Landroid/widget/FrameLayout;->mPaddingBottom:I

    iget v1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingBottom:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_14

    .line 179
    :cond_f
    iget v0, p0, Landroid/widget/FrameLayout;->mPaddingBottom:I

    iget v1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingBottom:I

    add-int/2addr v0, v1

    .line 178
    :goto_14
    return v0
.end method

.method private greylist-max-o getPaddingTopWithForeground()I
    .registers 3

    .line 173
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isForegroundInsidePadding()Z

    move-result v0

    if-eqz v0, :cond_f

    iget v0, p0, Landroid/widget/FrameLayout;->mPaddingTop:I

    iget v1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingTop:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_14

    .line 174
    :cond_f
    iget v0, p0, Landroid/widget/FrameLayout;->mPaddingTop:I

    iget v1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingTop:I

    add-int/2addr v0, v1

    .line 173
    :goto_14
    return v0
.end method


# virtual methods
.method protected whitelist checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 3
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 417
    instance-of v0, p1, Landroid/widget/FrameLayout$LayoutParams;

    return v0
.end method

.method protected greylist-max-o encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .registers 4
    .param p1, "encoder"    # Landroid/view/ViewHierarchyEncoder;

    .line 440
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    .line 442
    iget-boolean v0, p0, Landroid/widget/FrameLayout;->mMeasureAllChildren:Z

    const-string/jumbo v1, "measurement:measureAllChildren"

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 443
    iget v0, p0, Landroid/widget/FrameLayout;->mForegroundPaddingLeft:I

    const-string/jumbo v1, "padding:foregroundPaddingLeft"

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 444
    iget v0, p0, Landroid/widget/FrameLayout;->mForegroundPaddingTop:I

    const-string/jumbo v1, "padding:foregroundPaddingTop"

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 445
    iget v0, p0, Landroid/widget/FrameLayout;->mForegroundPaddingRight:I

    const-string/jumbo v1, "padding:foregroundPaddingRight"

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 446
    iget v0, p0, Landroid/widget/FrameLayout;->mForegroundPaddingBottom:I

    const-string/jumbo v1, "padding:foregroundPaddingBottom"

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 447
    return-void
.end method

.method protected bridge synthetic whitelist generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .line 62
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected whitelist generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .registers 3

    .line 159
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic whitelist generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .line 62
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected whitelist generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 4
    .param p1, "lp"    # Landroid/view/ViewGroup$LayoutParams;

    .line 422
    sget-boolean v0, Landroid/widget/FrameLayout;->sPreserveMarginParamsInLayoutParamConversion:Z

    if-eqz v0, :cond_1e

    .line 423
    instance-of v0, p1, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v0, :cond_11

    .line 424
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    move-object v1, p1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/widget/FrameLayout$LayoutParams;)V

    return-object v0

    .line 425
    :cond_11
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1e

    .line 426
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    .line 429
    :cond_1e
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public whitelist generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;
    .registers 4
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 407
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public whitelist getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 2

    .line 434
    const-class v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getConsiderGoneChildrenWhenMeasuring()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 391
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasureAllChildren()Z

    move-result v0

    return v0
.end method

.method public whitelist getMeasureAllChildren()Z
    .registers 2

    .line 402
    iget-boolean v0, p0, Landroid/widget/FrameLayout;->mMeasureAllChildren:Z

    return v0
.end method

.method greylist-max-o getPaddingLeftWithForeground()I
    .registers 3

    .line 163
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isForegroundInsidePadding()Z

    move-result v0

    if-eqz v0, :cond_f

    iget v0, p0, Landroid/widget/FrameLayout;->mPaddingLeft:I

    iget v1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingLeft:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_14

    .line 164
    :cond_f
    iget v0, p0, Landroid/widget/FrameLayout;->mPaddingLeft:I

    iget v1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingLeft:I

    add-int/2addr v0, v1

    .line 163
    :goto_14
    return v0
.end method

.method greylist-max-o getPaddingRightWithForeground()I
    .registers 3

    .line 168
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isForegroundInsidePadding()Z

    move-result v0

    if-eqz v0, :cond_f

    iget v0, p0, Landroid/widget/FrameLayout;->mPaddingRight:I

    iget v1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingRight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_14

    .line 169
    :cond_f
    iget v0, p0, Landroid/widget/FrameLayout;->mPaddingRight:I

    iget v1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingRight:I

    add-int/2addr v0, v1

    .line 168
    :goto_14
    return v0
.end method

.method greylist-max-o layoutChildren(IIIIZ)V
    .registers 26
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I
    .param p5, "forceLeftGravity"    # Z

    .line 283
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    .line 285
    .local v1, "count":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingLeftWithForeground()I

    move-result v2

    .line 286
    .local v2, "parentLeft":I
    sub-int v3, p3, p1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingRightWithForeground()I

    move-result v4

    sub-int/2addr v3, v4

    .line 288
    .local v3, "parentRight":I
    invoke-direct/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingTopWithForeground()I

    move-result v4

    .line 289
    .local v4, "parentTop":I
    sub-int v5, p4, p2

    invoke-direct/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingBottomWithForeground()I

    move-result v6

    sub-int/2addr v5, v6

    .line 292
    .local v5, "parentBottom":I
    sget-boolean v6, Landroid/view/ViewRootImpl;->DEBUG_LAYOUT:Z

    const-string v7, "FrameLayout"

    if-eqz v6, :cond_42

    .line 293
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "fl.layoutChildren count="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " this="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    :cond_42
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_43
    if-ge v6, v1, :cond_117

    .line 298
    invoke-virtual {v0, v6}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 300
    .local v8, "child":Landroid/view/View;
    sget-boolean v9, Landroid/view/ViewRootImpl;->DEBUG_LAYOUT:Z

    const/16 v10, 0x8

    if-eqz v9, :cond_78

    .line 301
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "fl.layoutChildren child="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " isGone="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 302
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v11

    if-ne v11, v10, :cond_6c

    const/4 v11, 0x1

    goto :goto_6d

    :cond_6c
    const/4 v11, 0x0

    :goto_6d
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 301
    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    :cond_78
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-eq v9, v10, :cond_103

    .line 306
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/FrameLayout$LayoutParams;

    .line 308
    .local v9, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    .line 309
    .local v10, "width":I
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    .line 314
    .local v11, "height":I
    iget v12, v9, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 315
    .local v12, "gravity":I
    const/4 v13, -0x1

    if-ne v12, v13, :cond_94

    .line 316
    const v12, 0x800033

    .line 319
    :cond_94
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getLayoutDirection()I

    move-result v13

    .line 320
    .local v13, "layoutDirection":I
    invoke-static {v12, v13}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v14

    .line 321
    .local v14, "absoluteGravity":I
    and-int/lit8 v15, v12, 0x70

    .line 323
    .local v15, "verticalGravity":I
    and-int/lit8 v16, v14, 0x7

    sparse-switch v16, :sswitch_data_13a

    move/from16 v17, v1

    move/from16 v16, v3

    .end local v1    # "count":I
    .end local v3    # "parentRight":I
    .local v16, "parentRight":I
    .local v17, "count":I
    goto :goto_cd

    .line 329
    .end local v16    # "parentRight":I
    .end local v17    # "count":I
    .restart local v1    # "count":I
    .restart local v3    # "parentRight":I
    :sswitch_a8
    if-nez p5, :cond_b7

    .line 330
    sub-int v16, v3, v10

    move/from16 v17, v1

    .end local v1    # "count":I
    .restart local v17    # "count":I
    iget v1, v9, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int v16, v16, v1

    .line 331
    .local v16, "childLeft":I
    move/from16 v1, v16

    move/from16 v16, v3

    goto :goto_d0

    .line 329
    .end local v16    # "childLeft":I
    .end local v17    # "count":I
    .restart local v1    # "count":I
    :cond_b7
    move/from16 v17, v1

    .end local v1    # "count":I
    .restart local v17    # "count":I
    move/from16 v16, v3

    goto :goto_cd

    .line 325
    .end local v17    # "count":I
    .restart local v1    # "count":I
    :sswitch_bc
    move/from16 v17, v1

    .end local v1    # "count":I
    .restart local v17    # "count":I
    sub-int v1, v3, v2

    sub-int/2addr v1, v10

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v2

    move/from16 v16, v3

    .end local v3    # "parentRight":I
    .local v16, "parentRight":I
    iget v3, v9, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, v3

    iget v3, v9, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v1, v3

    .line 327
    .local v1, "childLeft":I
    goto :goto_d0

    .line 335
    .end local v1    # "childLeft":I
    :goto_cd
    iget v1, v9, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    .line 338
    .restart local v1    # "childLeft":I
    :goto_d0
    sparse-switch v15, :sswitch_data_144

    .line 350
    move/from16 v18, v2

    .end local v2    # "parentLeft":I
    .local v18, "parentLeft":I
    iget v2, v9, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int v3, v4, v2

    .local v3, "childTop":I
    goto :goto_f9

    .line 347
    .end local v3    # "childTop":I
    .end local v18    # "parentLeft":I
    .restart local v2    # "parentLeft":I
    :sswitch_da
    sub-int v3, v5, v11

    move/from16 v18, v2

    .end local v2    # "parentLeft":I
    .restart local v18    # "parentLeft":I
    iget v2, v9, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v3, v2

    .line 348
    .restart local v3    # "childTop":I
    goto :goto_f9

    .line 340
    .end local v3    # "childTop":I
    .end local v18    # "parentLeft":I
    .restart local v2    # "parentLeft":I
    :sswitch_e2
    move/from16 v18, v2

    .end local v2    # "parentLeft":I
    .restart local v18    # "parentLeft":I
    iget v2, v9, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int v3, v4, v2

    .line 341
    .restart local v3    # "childTop":I
    goto :goto_f9

    .line 343
    .end local v3    # "childTop":I
    .end local v18    # "parentLeft":I
    .restart local v2    # "parentLeft":I
    :sswitch_e9
    move/from16 v18, v2

    .end local v2    # "parentLeft":I
    .restart local v18    # "parentLeft":I
    sub-int v2, v5, v4

    sub-int/2addr v2, v11

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v4

    iget v3, v9, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, v3

    iget v3, v9, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int v3, v2, v3

    .line 345
    .restart local v3    # "childTop":I
    nop

    .line 353
    :goto_f9
    add-int v2, v1, v10

    move/from16 v19, v4

    .end local v4    # "parentTop":I
    .local v19, "parentTop":I
    add-int v4, v3, v11

    invoke-virtual {v8, v1, v3, v2, v4}, Landroid/view/View;->layout(IIII)V

    goto :goto_10b

    .line 305
    .end local v9    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v10    # "width":I
    .end local v11    # "height":I
    .end local v12    # "gravity":I
    .end local v13    # "layoutDirection":I
    .end local v14    # "absoluteGravity":I
    .end local v15    # "verticalGravity":I
    .end local v16    # "parentRight":I
    .end local v17    # "count":I
    .end local v18    # "parentLeft":I
    .end local v19    # "parentTop":I
    .local v1, "count":I
    .restart local v2    # "parentLeft":I
    .local v3, "parentRight":I
    .restart local v4    # "parentTop":I
    :cond_103
    move/from16 v17, v1

    move/from16 v18, v2

    move/from16 v16, v3

    move/from16 v19, v4

    .line 297
    .end local v1    # "count":I
    .end local v2    # "parentLeft":I
    .end local v3    # "parentRight":I
    .end local v4    # "parentTop":I
    .end local v8    # "child":Landroid/view/View;
    .restart local v16    # "parentRight":I
    .restart local v17    # "count":I
    .restart local v18    # "parentLeft":I
    .restart local v19    # "parentTop":I
    :goto_10b
    add-int/lit8 v6, v6, 0x1

    move/from16 v3, v16

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v4, v19

    goto/16 :goto_43

    .end local v16    # "parentRight":I
    .end local v17    # "count":I
    .end local v18    # "parentLeft":I
    .end local v19    # "parentTop":I
    .restart local v1    # "count":I
    .restart local v2    # "parentLeft":I
    .restart local v3    # "parentRight":I
    .restart local v4    # "parentTop":I
    :cond_117
    move/from16 v17, v1

    move/from16 v18, v2

    move/from16 v16, v3

    move/from16 v19, v4

    .line 358
    .end local v1    # "count":I
    .end local v2    # "parentLeft":I
    .end local v3    # "parentRight":I
    .end local v4    # "parentTop":I
    .end local v6    # "i":I
    .restart local v16    # "parentRight":I
    .restart local v17    # "count":I
    .restart local v18    # "parentLeft":I
    .restart local v19    # "parentTop":I
    sget-boolean v1, Landroid/view/ViewRootImpl;->DEBUG_LAYOUT:Z

    if-eqz v1, :cond_139

    .line 359
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fl.layoutChildren done this="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    :cond_139
    return-void

    :sswitch_data_13a
    .sparse-switch
        0x1 -> :sswitch_bc
        0x5 -> :sswitch_a8
    .end sparse-switch

    :sswitch_data_144
    .sparse-switch
        0x10 -> :sswitch_e9
        0x30 -> :sswitch_e2
        0x50 -> :sswitch_da
    .end sparse-switch
.end method

.method protected whitelist onLayout(ZIIII)V
    .registers 14
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 275
    sget-boolean v0, Landroid/view/ViewRootImpl;->DEBUG_LAYOUT:Z

    if-eqz v0, :cond_1c

    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fl.onLayout changed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FrameLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    :cond_1c
    const/4 v7, 0x0

    move-object v2, p0

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v2 .. v7}, Landroid/widget/FrameLayout;->layoutChildren(IIIIZ)V

    .line 280
    return-void
.end method

.method protected whitelist onMeasure(II)V
    .registers 22
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 184
    move-object/from16 v6, p0

    move/from16 v7, p1

    move/from16 v8, p2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v9

    .line 186
    .local v9, "count":I
    nop

    .line 187
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/4 v11, 0x1

    const/high16 v12, 0x40000000    # 2.0f

    if-ne v0, v12, :cond_1d

    .line 188
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-eq v0, v12, :cond_1b

    goto :goto_1d

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1e

    :cond_1d
    :goto_1d
    move v0, v11

    :goto_1e
    move v13, v0

    .line 189
    .local v13, "measureMatchParentChildren":Z
    iget-object v0, v6, Landroid/widget/FrameLayout;->mMatchParentChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 191
    const/4 v0, 0x0

    .line 192
    .local v0, "maxHeight":I
    const/4 v1, 0x0

    .line 193
    .local v1, "maxWidth":I
    const/4 v2, 0x0

    .line 195
    .local v2, "childState":I
    const/4 v3, 0x0

    move v14, v0

    move v15, v1

    move v5, v2

    move v4, v3

    .end local v0    # "maxHeight":I
    .end local v1    # "maxWidth":I
    .end local v2    # "childState":I
    .local v4, "i":I
    .local v5, "childState":I
    .local v14, "maxHeight":I
    .local v15, "maxWidth":I
    :goto_2c
    const/4 v3, -0x1

    if-ge v4, v9, :cond_a3

    .line 196
    invoke-virtual {v6, v4}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 197
    .local v2, "child":Landroid/view/View;
    iget-boolean v0, v6, Landroid/widget/FrameLayout;->mMeasureAllChildren:Z

    if-nez v0, :cond_43

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_40

    goto :goto_43

    :cond_40
    move/from16 v16, v4

    goto :goto_9e

    .line 198
    :cond_43
    :goto_43
    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object v1, v2

    move-object/from16 v18, v2

    .end local v2    # "child":Landroid/view/View;
    .local v18, "child":Landroid/view/View;
    move/from16 v2, p1

    move v12, v3

    move/from16 v3, v16

    move/from16 v16, v4

    .end local v4    # "i":I
    .local v16, "i":I
    move/from16 v4, p2

    move v10, v5

    .end local v5    # "childState":I
    .local v10, "childState":I
    move/from16 v5, v17

    invoke-virtual/range {v0 .. v5}, Landroid/widget/FrameLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 199
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 200
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    nop

    .line 201
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    .line 200
    invoke-static {v15, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 202
    .end local v15    # "maxWidth":I
    .restart local v1    # "maxWidth":I
    nop

    .line 203
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v2, v3

    .line 202
    invoke-static {v14, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 204
    .end local v14    # "maxHeight":I
    .local v2, "maxHeight":I
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredState()I

    move-result v3

    invoke-static {v10, v3}, Landroid/widget/FrameLayout;->combineMeasuredStates(II)I

    move-result v3

    .line 205
    .end local v10    # "childState":I
    .local v3, "childState":I
    if-eqz v13, :cond_99

    .line 206
    iget v4, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    if-eq v4, v12, :cond_91

    iget v4, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-ne v4, v12, :cond_9b

    .line 208
    :cond_91
    iget-object v4, v6, Landroid/widget/FrameLayout;->mMatchParentChildren:Ljava/util/ArrayList;

    move-object/from16 v5, v18

    .end local v18    # "child":Landroid/view/View;
    .local v5, "child":Landroid/view/View;
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9b

    .line 205
    .end local v5    # "child":Landroid/view/View;
    .restart local v18    # "child":Landroid/view/View;
    :cond_99
    move-object/from16 v5, v18

    .line 195
    .end local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v18    # "child":Landroid/view/View;
    :cond_9b
    :goto_9b
    move v15, v1

    move v14, v2

    move v5, v3

    .end local v1    # "maxWidth":I
    .end local v2    # "maxHeight":I
    .end local v3    # "childState":I
    .local v5, "childState":I
    .restart local v14    # "maxHeight":I
    .restart local v15    # "maxWidth":I
    :goto_9e
    add-int/lit8 v4, v16, 0x1

    const/high16 v12, 0x40000000    # 2.0f

    .end local v16    # "i":I
    .restart local v4    # "i":I
    goto :goto_2c

    :cond_a3
    move v12, v3

    move/from16 v16, v4

    move v10, v5

    .line 215
    .end local v4    # "i":I
    .end local v5    # "childState":I
    .restart local v10    # "childState":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingLeftWithForeground()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingRightWithForeground()I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v15, v0

    .line 216
    invoke-direct/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingTopWithForeground()I

    move-result v0

    invoke-direct/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingBottomWithForeground()I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v14, v0

    .line 219
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-static {v14, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 220
    .end local v14    # "maxHeight":I
    .local v0, "maxHeight":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getSuggestedMinimumWidth()I

    move-result v1

    invoke-static {v15, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 223
    .end local v15    # "maxWidth":I
    .restart local v1    # "maxWidth":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 224
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_e1

    .line 225
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 226
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 229
    :cond_e1
    invoke-static {v1, v7, v10}, Landroid/widget/FrameLayout;->resolveSizeAndState(III)I

    move-result v3

    shl-int/lit8 v4, v10, 0x10

    .line 230
    invoke-static {v0, v8, v4}, Landroid/widget/FrameLayout;->resolveSizeAndState(III)I

    move-result v4

    .line 229
    invoke-virtual {v6, v3, v4}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    .line 233
    iget-object v3, v6, Landroid/widget/FrameLayout;->mMatchParentChildren:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 234
    .end local v9    # "count":I
    .local v3, "count":I
    if-le v3, v11, :cond_186

    .line 235
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_f7
    if-ge v4, v3, :cond_186

    .line 236
    iget-object v5, v6, Landroid/widget/FrameLayout;->mMatchParentChildren:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 237
    .local v5, "child":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 240
    .local v9, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v11, v9, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    if-ne v11, v12, :cond_12b

    .line 241
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v11

    .line 242
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingLeftWithForeground()I

    move-result v14

    sub-int/2addr v11, v14

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingRightWithForeground()I

    move-result v14

    sub-int/2addr v11, v14

    iget v14, v9, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v11, v14

    iget v14, v9, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr v11, v14

    .line 241
    const/4 v14, 0x0

    invoke-static {v14, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 244
    .local v11, "width":I
    const/high16 v14, 0x40000000    # 2.0f

    invoke-static {v11, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    .line 246
    .local v11, "childWidthMeasureSpec":I
    goto :goto_141

    .line 247
    .end local v11    # "childWidthMeasureSpec":I
    :cond_12b
    nop

    .line 248
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingLeftWithForeground()I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingRightWithForeground()I

    move-result v14

    add-int/2addr v11, v14

    iget v14, v9, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v11, v14

    iget v14, v9, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v11, v14

    iget v14, v9, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 247
    invoke-static {v7, v11, v14}, Landroid/widget/FrameLayout;->getChildMeasureSpec(III)I

    move-result v11

    .line 254
    .restart local v11    # "childWidthMeasureSpec":I
    :goto_141
    iget v14, v9, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    if-ne v14, v12, :cond_165

    .line 255
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v14

    .line 256
    invoke-direct/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingTopWithForeground()I

    move-result v15

    sub-int/2addr v14, v15

    invoke-direct/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingBottomWithForeground()I

    move-result v15

    sub-int/2addr v14, v15

    iget v15, v9, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v14, v15

    iget v15, v9, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v14, v15

    .line 255
    const/4 v15, 0x0

    invoke-static {v15, v14}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 258
    .local v14, "height":I
    const/high16 v12, 0x40000000    # 2.0f

    invoke-static {v14, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    .line 260
    .local v14, "childHeightMeasureSpec":I
    goto :goto_17e

    .line 261
    .end local v14    # "childHeightMeasureSpec":I
    :cond_165
    const/high16 v12, 0x40000000    # 2.0f

    const/4 v15, 0x0

    .line 262
    invoke-direct/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingTopWithForeground()I

    move-result v14

    invoke-direct/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingBottomWithForeground()I

    move-result v17

    add-int v14, v14, v17

    iget v12, v9, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v14, v12

    iget v12, v9, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v14, v12

    iget v12, v9, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 261
    invoke-static {v8, v14, v12}, Landroid/widget/FrameLayout;->getChildMeasureSpec(III)I

    move-result v14

    .line 267
    .restart local v14    # "childHeightMeasureSpec":I
    :goto_17e
    invoke-virtual {v5, v11, v14}, Landroid/view/View;->measure(II)V

    .line 235
    .end local v5    # "child":Landroid/view/View;
    .end local v9    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v11    # "childWidthMeasureSpec":I
    .end local v14    # "childHeightMeasureSpec":I
    add-int/lit8 v4, v4, 0x1

    const/4 v12, -0x1

    goto/16 :goto_f7

    .line 270
    .end local v4    # "i":I
    :cond_186
    return-void
.end method

.method public whitelist setForegroundGravity(I)V
    .registers 5
    .param p1, "foregroundGravity"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 128
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getForegroundGravity()I

    move-result v0

    if-eq v0, p1, :cond_3f

    .line 129
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setForegroundGravity(I)V

    .line 132
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 133
    .local v0, "foreground":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getForegroundGravity()I

    move-result v1

    const/16 v2, 0x77

    if-ne v1, v2, :cond_33

    if-eqz v0, :cond_33

    .line 134
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 135
    .local v1, "padding":Landroid/graphics/Rect;
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 136
    iget v2, v1, Landroid/graphics/Rect;->left:I

    iput v2, p0, Landroid/widget/FrameLayout;->mForegroundPaddingLeft:I

    .line 137
    iget v2, v1, Landroid/graphics/Rect;->top:I

    iput v2, p0, Landroid/widget/FrameLayout;->mForegroundPaddingTop:I

    .line 138
    iget v2, v1, Landroid/graphics/Rect;->right:I

    iput v2, p0, Landroid/widget/FrameLayout;->mForegroundPaddingRight:I

    .line 139
    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    iput v2, p0, Landroid/widget/FrameLayout;->mForegroundPaddingBottom:I

    .line 141
    .end local v1    # "padding":Landroid/graphics/Rect;
    :cond_32
    goto :goto_3c

    .line 142
    :cond_33
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingLeft:I

    .line 143
    iput v1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingTop:I

    .line 144
    iput v1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingRight:I

    .line 145
    iput v1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingBottom:I

    .line 148
    :goto_3c
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 150
    .end local v0    # "foreground":Landroid/graphics/drawable/Drawable;
    :cond_3f
    return-void
.end method

.method public whitelist setMeasureAllChildren(Z)V
    .registers 2
    .param p1, "measureAll"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 375
    iput-boolean p1, p0, Landroid/widget/FrameLayout;->mMeasureAllChildren:Z

    .line 376
    return-void
.end method

.method public whitelist shouldDelayChildPressedState()Z
    .registers 2

    .line 412
    const/4 v0, 0x0

    return v0
.end method
