.class public Landroid/view/animation/MiuiClipAnimation;
.super Landroid/view/animation/Animation;
.source "MiuiClipAnimation.java"


# static fields
.field private static final blacklist NS_APP_RES_AUTO:Ljava/lang/String; = "http://schemas.android.com/apk/res-auto"


# instance fields
.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mCornerRadius:F

.field private blacklist mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private blacklist mFromBottomValue:F

.field private blacklist mFromCornerRadius:F

.field private blacklist mFromLeftValue:F

.field private final blacklist mFromRect:Landroid/graphics/Rect;

.field private blacklist mFromRightValue:F

.field private blacklist mFromTopValue:F

.field private blacklist mIsUseScaleAnimation:Z

.field private blacklist mOriginRect:Landroid/graphics/Rect;

.field private blacklist mScale:F

.field private blacklist mToBottomValue:F

.field private blacklist mToCornerRadius:F

.field private blacklist mToLeftValue:F

.field private final blacklist mToRect:Landroid/graphics/Rect;

.field private blacklist mToRightValue:F

.field private blacklist mToTopValue:F


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 22
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 50
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct/range {p0 .. p2}, Landroid/view/animation/Animation;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, v0, Landroid/view/animation/MiuiClipAnimation;->mFromRect:Landroid/graphics/Rect;

    .line 24
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, v0, Landroid/view/animation/MiuiClipAnimation;->mToRect:Landroid/graphics/Rect;

    .line 25
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, v0, Landroid/view/animation/MiuiClipAnimation;->mOriginRect:Landroid/graphics/Rect;

    .line 28
    const/4 v4, 0x0

    iput v4, v0, Landroid/view/animation/MiuiClipAnimation;->mCornerRadius:F

    .line 30
    iput v4, v0, Landroid/view/animation/MiuiClipAnimation;->mFromLeftValue:F

    .line 31
    iput v4, v0, Landroid/view/animation/MiuiClipAnimation;->mFromTopValue:F

    .line 32
    iput v4, v0, Landroid/view/animation/MiuiClipAnimation;->mFromRightValue:F

    .line 33
    iput v4, v0, Landroid/view/animation/MiuiClipAnimation;->mFromBottomValue:F

    .line 35
    iput v4, v0, Landroid/view/animation/MiuiClipAnimation;->mToLeftValue:F

    .line 36
    iput v4, v0, Landroid/view/animation/MiuiClipAnimation;->mToTopValue:F

    .line 37
    iput v4, v0, Landroid/view/animation/MiuiClipAnimation;->mToRightValue:F

    .line 38
    iput v4, v0, Landroid/view/animation/MiuiClipAnimation;->mToBottomValue:F

    .line 40
    iput v4, v0, Landroid/view/animation/MiuiClipAnimation;->mFromCornerRadius:F

    .line 41
    iput v4, v0, Landroid/view/animation/MiuiClipAnimation;->mToCornerRadius:F

    .line 45
    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, v0, Landroid/view/animation/MiuiClipAnimation;->mScale:F

    .line 46
    const/4 v4, 0x0

    iput-boolean v4, v0, Landroid/view/animation/MiuiClipAnimation;->mIsUseScaleAnimation:Z

    .line 51
    move-object/from16 v5, p1

    iput-object v5, v0, Landroid/view/animation/MiuiClipAnimation;->mContext:Landroid/content/Context;

    .line 53
    const-string v6, "http://schemas.android.com/apk/res-auto"

    const-string v7, "isClipAnimationAutoDpi"

    const/4 v8, 0x1

    invoke-interface {v1, v6, v7, v8}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    .line 54
    .local v7, "isAutoDpi":Z
    iget-object v9, v0, Landroid/view/animation/MiuiClipAnimation;->mContext:Landroid/content/Context;

    invoke-static {v9}, Landroid/view/animation/DensityUtil;->getPPIOfDevice(Landroid/content/Context;)I

    move-result v10

    invoke-static {v9, v10, v7}, Landroid/view/animation/DensityUtil;->getDensity(Landroid/content/Context;IZ)Landroid/util/DisplayMetrics;

    move-result-object v9

    iput-object v9, v0, Landroid/view/animation/MiuiClipAnimation;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 56
    const-string v9, "clipFromLeftValue"

    invoke-interface {v1, v6, v9}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 57
    .local v9, "fromLeftValue":Ljava/lang/String;
    const-string v10, "clipFromTopValue"

    invoke-interface {v1, v6, v10}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 58
    .local v10, "fromTopValue":Ljava/lang/String;
    const-string v11, "clipFromRightValue"

    invoke-interface {v1, v6, v11}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 59
    .local v11, "fromRightValue":Ljava/lang/String;
    const-string v12, "clipFromBottomValue"

    invoke-interface {v1, v6, v12}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 60
    .local v12, "fromBottomValue":Ljava/lang/String;
    const-string v13, "clipToLeftValue"

    invoke-interface {v1, v6, v13}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 61
    .local v13, "toLeftValue":Ljava/lang/String;
    const-string v14, "clipToTopValue"

    invoke-interface {v1, v6, v14}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 62
    .local v14, "toTopValue":Ljava/lang/String;
    const-string v15, "clipToRightValue"

    invoke-interface {v1, v6, v15}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 63
    .local v15, "toRightValue":Ljava/lang/String;
    const-string v4, "clipToBottomValue"

    invoke-interface {v1, v6, v4}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 64
    .local v4, "toBottomValue":Ljava/lang/String;
    const-string v8, "clipFromCornerRadius"

    invoke-interface {v1, v6, v8}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 65
    .local v8, "clipFromCornerRadius":Ljava/lang/String;
    const-string v5, "clipToCornerRadius"

    invoke-interface {v1, v6, v5}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 66
    .local v5, "clipToCornerRadius":Ljava/lang/String;
    if-eqz v9, :cond_194

    if-eqz v10, :cond_194

    if-eqz v11, :cond_194

    if-eqz v12, :cond_194

    if-eqz v13, :cond_194

    if-eqz v14, :cond_194

    if-eqz v15, :cond_194

    if-eqz v4, :cond_194

    .line 73
    iget-object v6, v0, Landroid/view/animation/MiuiClipAnimation;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-virtual {v9, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    move/from16 v17, v7

    .end local v7    # "isAutoDpi":Z
    .local v17, "isAutoDpi":Z
    iget-object v7, v0, Landroid/view/animation/MiuiClipAnimation;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    move-object/from16 v18, v9

    const/4 v9, 0x0

    .end local v9    # "fromLeftValue":Ljava/lang/String;
    .local v18, "fromLeftValue":Ljava/lang/String;
    invoke-virtual {v0, v6, v1, v7, v9}, Landroid/view/animation/MiuiClipAnimation;->getDimensionPixel(Landroid/content/Context;ILandroid/util/DisplayMetrics;Z)I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Landroid/view/animation/MiuiClipAnimation;->mFromLeftValue:F

    .line 74
    iget-object v1, v0, Landroid/view/animation/MiuiClipAnimation;->mContext:Landroid/content/Context;

    const/4 v6, 0x1

    invoke-virtual {v10, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iget-object v6, v0, Landroid/view/animation/MiuiClipAnimation;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1, v7, v6, v9}, Landroid/view/animation/MiuiClipAnimation;->getDimensionPixel(Landroid/content/Context;ILandroid/util/DisplayMetrics;Z)I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Landroid/view/animation/MiuiClipAnimation;->mFromTopValue:F

    .line 75
    iget-object v1, v0, Landroid/view/animation/MiuiClipAnimation;->mContext:Landroid/content/Context;

    const/4 v6, 0x1

    invoke-virtual {v11, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iget-object v6, v0, Landroid/view/animation/MiuiClipAnimation;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1, v7, v6, v9}, Landroid/view/animation/MiuiClipAnimation;->getDimensionPixel(Landroid/content/Context;ILandroid/util/DisplayMetrics;Z)I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Landroid/view/animation/MiuiClipAnimation;->mFromRightValue:F

    .line 76
    iget-object v1, v0, Landroid/view/animation/MiuiClipAnimation;->mContext:Landroid/content/Context;

    const/4 v6, 0x1

    invoke-virtual {v12, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iget-object v6, v0, Landroid/view/animation/MiuiClipAnimation;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1, v7, v6, v9}, Landroid/view/animation/MiuiClipAnimation;->getDimensionPixel(Landroid/content/Context;ILandroid/util/DisplayMetrics;Z)I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Landroid/view/animation/MiuiClipAnimation;->mFromBottomValue:F

    .line 77
    iget-object v1, v0, Landroid/view/animation/MiuiClipAnimation;->mContext:Landroid/content/Context;

    const/4 v6, 0x1

    invoke-virtual {v13, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iget-object v6, v0, Landroid/view/animation/MiuiClipAnimation;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1, v7, v6, v9}, Landroid/view/animation/MiuiClipAnimation;->getDimensionPixel(Landroid/content/Context;ILandroid/util/DisplayMetrics;Z)I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Landroid/view/animation/MiuiClipAnimation;->mToLeftValue:F

    .line 78
    iget-object v1, v0, Landroid/view/animation/MiuiClipAnimation;->mContext:Landroid/content/Context;

    const/4 v6, 0x1

    invoke-virtual {v14, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iget-object v6, v0, Landroid/view/animation/MiuiClipAnimation;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1, v7, v6, v9}, Landroid/view/animation/MiuiClipAnimation;->getDimensionPixel(Landroid/content/Context;ILandroid/util/DisplayMetrics;Z)I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Landroid/view/animation/MiuiClipAnimation;->mToTopValue:F

    .line 79
    iget-object v1, v0, Landroid/view/animation/MiuiClipAnimation;->mContext:Landroid/content/Context;

    const/4 v6, 0x1

    invoke-virtual {v15, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iget-object v6, v0, Landroid/view/animation/MiuiClipAnimation;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1, v7, v6, v9}, Landroid/view/animation/MiuiClipAnimation;->getDimensionPixel(Landroid/content/Context;ILandroid/util/DisplayMetrics;Z)I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Landroid/view/animation/MiuiClipAnimation;->mToRightValue:F

    .line 80
    iget-object v1, v0, Landroid/view/animation/MiuiClipAnimation;->mContext:Landroid/content/Context;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iget-object v7, v0, Landroid/view/animation/MiuiClipAnimation;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1, v6, v7, v9}, Landroid/view/animation/MiuiClipAnimation;->getDimensionPixel(Landroid/content/Context;ILandroid/util/DisplayMetrics;Z)I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Landroid/view/animation/MiuiClipAnimation;->mToBottomValue:F

    .line 82
    if-eqz v8, :cond_171

    if-eqz v5, :cond_171

    .line 83
    iget-object v1, v0, Landroid/view/animation/MiuiClipAnimation;->mContext:Landroid/content/Context;

    const/4 v6, 0x1

    invoke-virtual {v8, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iget-object v9, v0, Landroid/view/animation/MiuiClipAnimation;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    const/4 v6, 0x0

    invoke-virtual {v0, v1, v7, v9, v6}, Landroid/view/animation/MiuiClipAnimation;->getDimensionPixel(Landroid/content/Context;ILandroid/util/DisplayMetrics;Z)I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Landroid/view/animation/MiuiClipAnimation;->mFromCornerRadius:F

    .line 85
    iget-object v1, v0, Landroid/view/animation/MiuiClipAnimation;->mContext:Landroid/content/Context;

    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iget-object v9, v0, Landroid/view/animation/MiuiClipAnimation;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1, v7, v9, v6}, Landroid/view/animation/MiuiClipAnimation;->getDimensionPixel(Landroid/content/Context;ILandroid/util/DisplayMetrics;Z)I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Landroid/view/animation/MiuiClipAnimation;->mToCornerRadius:F

    .line 88
    :cond_171
    iget v1, v0, Landroid/view/animation/MiuiClipAnimation;->mFromCornerRadius:F

    iput v1, v0, Landroid/view/animation/MiuiClipAnimation;->mCornerRadius:F

    .line 90
    iget v1, v0, Landroid/view/animation/MiuiClipAnimation;->mFromLeftValue:F

    float-to-int v1, v1

    iget v6, v0, Landroid/view/animation/MiuiClipAnimation;->mFromTopValue:F

    float-to-int v6, v6

    iget v7, v0, Landroid/view/animation/MiuiClipAnimation;->mFromRightValue:F

    float-to-int v7, v7

    iget v9, v0, Landroid/view/animation/MiuiClipAnimation;->mFromBottomValue:F

    float-to-int v9, v9

    invoke-virtual {v2, v1, v6, v7, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 91
    iget v1, v0, Landroid/view/animation/MiuiClipAnimation;->mToLeftValue:F

    float-to-int v1, v1

    iget v2, v0, Landroid/view/animation/MiuiClipAnimation;->mToTopValue:F

    float-to-int v2, v2

    iget v6, v0, Landroid/view/animation/MiuiClipAnimation;->mToRightValue:F

    float-to-int v6, v6

    iget v7, v0, Landroid/view/animation/MiuiClipAnimation;->mToBottomValue:F

    float-to-int v7, v7

    invoke-virtual {v3, v1, v2, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 92
    return-void

    .line 66
    .end local v17    # "isAutoDpi":Z
    .end local v18    # "fromLeftValue":Ljava/lang/String;
    .restart local v7    # "isAutoDpi":Z
    .restart local v9    # "fromLeftValue":Ljava/lang/String;
    :cond_194
    move/from16 v17, v7

    move-object/from16 v18, v9

    .line 69
    .end local v7    # "isAutoDpi":Z
    .end local v9    # "fromLeftValue":Ljava/lang/String;
    .restart local v17    # "isAutoDpi":Z
    .restart local v18    # "fromLeftValue":Ljava/lang/String;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "fromRect/toRect value can not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor blacklist <init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 9
    .param p1, "fromClip"    # Landroid/graphics/Rect;
    .param p2, "toClip"    # Landroid/graphics/Rect;

    .line 103
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 23
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/animation/MiuiClipAnimation;->mFromRect:Landroid/graphics/Rect;

    .line 24
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/view/animation/MiuiClipAnimation;->mToRect:Landroid/graphics/Rect;

    .line 25
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/view/animation/MiuiClipAnimation;->mOriginRect:Landroid/graphics/Rect;

    .line 28
    const/4 v2, 0x0

    iput v2, p0, Landroid/view/animation/MiuiClipAnimation;->mCornerRadius:F

    .line 30
    iput v2, p0, Landroid/view/animation/MiuiClipAnimation;->mFromLeftValue:F

    .line 31
    iput v2, p0, Landroid/view/animation/MiuiClipAnimation;->mFromTopValue:F

    .line 32
    iput v2, p0, Landroid/view/animation/MiuiClipAnimation;->mFromRightValue:F

    .line 33
    iput v2, p0, Landroid/view/animation/MiuiClipAnimation;->mFromBottomValue:F

    .line 35
    iput v2, p0, Landroid/view/animation/MiuiClipAnimation;->mToLeftValue:F

    .line 36
    iput v2, p0, Landroid/view/animation/MiuiClipAnimation;->mToTopValue:F

    .line 37
    iput v2, p0, Landroid/view/animation/MiuiClipAnimation;->mToRightValue:F

    .line 38
    iput v2, p0, Landroid/view/animation/MiuiClipAnimation;->mToBottomValue:F

    .line 40
    iput v2, p0, Landroid/view/animation/MiuiClipAnimation;->mFromCornerRadius:F

    .line 41
    iput v2, p0, Landroid/view/animation/MiuiClipAnimation;->mToCornerRadius:F

    .line 45
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Landroid/view/animation/MiuiClipAnimation;->mScale:F

    .line 46
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/view/animation/MiuiClipAnimation;->mIsUseScaleAnimation:Z

    .line 104
    if-eqz p1, :cond_9a

    if-eqz p2, :cond_9a

    .line 107
    iget v2, p1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iput v2, p0, Landroid/view/animation/MiuiClipAnimation;->mFromLeftValue:F

    .line 108
    iget v2, p1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iput v2, p0, Landroid/view/animation/MiuiClipAnimation;->mFromTopValue:F

    .line 109
    iget v2, p1, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    iput v2, p0, Landroid/view/animation/MiuiClipAnimation;->mFromRightValue:F

    .line 110
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    iput v2, p0, Landroid/view/animation/MiuiClipAnimation;->mFromBottomValue:F

    .line 112
    iget v2, p2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iput v2, p0, Landroid/view/animation/MiuiClipAnimation;->mToLeftValue:F

    .line 113
    iget v2, p2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iput v2, p0, Landroid/view/animation/MiuiClipAnimation;->mToTopValue:F

    .line 114
    iget v2, p2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    iput v2, p0, Landroid/view/animation/MiuiClipAnimation;->mToRightValue:F

    .line 115
    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    iput v2, p0, Landroid/view/animation/MiuiClipAnimation;->mToBottomValue:F

    .line 117
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-gt v2, v3, :cond_79

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-gt v2, v3, :cond_79

    .line 118
    iput-object p2, p0, Landroid/view/animation/MiuiClipAnimation;->mOriginRect:Landroid/graphics/Rect;

    goto :goto_7b

    .line 120
    :cond_79
    iput-object p1, p0, Landroid/view/animation/MiuiClipAnimation;->mOriginRect:Landroid/graphics/Rect;

    .line 123
    :goto_7b
    iget v2, p0, Landroid/view/animation/MiuiClipAnimation;->mFromLeftValue:F

    float-to-int v2, v2

    iget v3, p0, Landroid/view/animation/MiuiClipAnimation;->mFromTopValue:F

    float-to-int v3, v3

    iget v4, p0, Landroid/view/animation/MiuiClipAnimation;->mFromRightValue:F

    float-to-int v4, v4

    iget v5, p0, Landroid/view/animation/MiuiClipAnimation;->mFromBottomValue:F

    float-to-int v5, v5

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 124
    iget v0, p0, Landroid/view/animation/MiuiClipAnimation;->mToLeftValue:F

    float-to-int v0, v0

    iget v2, p0, Landroid/view/animation/MiuiClipAnimation;->mToTopValue:F

    float-to-int v2, v2

    iget v3, p0, Landroid/view/animation/MiuiClipAnimation;->mToRightValue:F

    float-to-int v3, v3

    iget v4, p0, Landroid/view/animation/MiuiClipAnimation;->mToBottomValue:F

    float-to-int v4, v4

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 125
    return-void

    .line 105
    :cond_9a
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Expected non-null animation clip rects"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor blacklist <init>(Landroid/graphics/Rect;Landroid/graphics/Rect;FFZ)V
    .registers 6
    .param p1, "fromClip"    # Landroid/graphics/Rect;
    .param p2, "toClip"    # Landroid/graphics/Rect;
    .param p3, "fromCornerRadius"    # F
    .param p4, "toCornerRadius"    # F
    .param p5, "isUseScaleAnimation"    # Z

    .line 96
    invoke-direct {p0, p1, p2}, Landroid/view/animation/MiuiClipAnimation;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 97
    iput p3, p0, Landroid/view/animation/MiuiClipAnimation;->mFromCornerRadius:F

    .line 98
    iput p4, p0, Landroid/view/animation/MiuiClipAnimation;->mToCornerRadius:F

    .line 99
    iput p3, p0, Landroid/view/animation/MiuiClipAnimation;->mCornerRadius:F

    .line 100
    iput-boolean p5, p0, Landroid/view/animation/MiuiClipAnimation;->mIsUseScaleAnimation:Z

    .line 101
    return-void
.end method

.method private blacklist getDisplay(Landroid/content/Context;)Landroid/view/Display;
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 165
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 166
    .local v0, "wm":Landroid/view/WindowManager;
    if-eqz v0, :cond_f

    .line 167
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    return-object v1

    .line 169
    :cond_f
    const/4 v1, 0x0

    return-object v1
.end method

.method private blacklist getRealHeight(Landroid/content/Context;)I
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 145
    invoke-direct {p0, p1}, Landroid/view/animation/MiuiClipAnimation;->getDisplay(Landroid/content/Context;)Landroid/view/Display;

    move-result-object v0

    .line 146
    .local v0, "display":Landroid/view/Display;
    if-nez v0, :cond_8

    .line 147
    const/4 v1, 0x0

    return v1

    .line 149
    :cond_8
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 150
    .local v1, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 151
    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    return v2
.end method

.method private blacklist getRealWidth(Landroid/content/Context;)I
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 155
    invoke-direct {p0, p1}, Landroid/view/animation/MiuiClipAnimation;->getDisplay(Landroid/content/Context;)Landroid/view/Display;

    move-result-object v0

    .line 156
    .local v0, "display":Landroid/view/Display;
    if-nez v0, :cond_8

    .line 157
    const/4 v1, 0x0

    return v1

    .line 159
    :cond_8
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 160
    .local v1, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 161
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    return v2
.end method


# virtual methods
.method protected whitelist applyTransformation(FLandroid/view/animation/Transformation;)V
    .registers 15
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .line 175
    iget-object v0, p0, Landroid/view/animation/MiuiClipAnimation;->mFromRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget-object v1, p0, Landroid/view/animation/MiuiClipAnimation;->mToRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroid/view/animation/MiuiClipAnimation;->mFromRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    .line 176
    .local v0, "currentLeft":F
    iget-object v1, p0, Landroid/view/animation/MiuiClipAnimation;->mFromRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iget-object v2, p0, Landroid/view/animation/MiuiClipAnimation;->mToRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Landroid/view/animation/MiuiClipAnimation;->mFromRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    .line 177
    .local v1, "currentTop":F
    iget-object v2, p0, Landroid/view/animation/MiuiClipAnimation;->mFromRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/view/animation/MiuiClipAnimation;->mToRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Landroid/view/animation/MiuiClipAnimation;->mFromRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    .line 178
    .local v2, "currentRight":F
    iget-object v3, p0, Landroid/view/animation/MiuiClipAnimation;->mFromRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    iget-object v4, p0, Landroid/view/animation/MiuiClipAnimation;->mToRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iget-object v5, p0, Landroid/view/animation/MiuiClipAnimation;->mFromRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    mul-float/2addr v4, p1

    add-float/2addr v3, v4

    .line 179
    .local v3, "currentBottom":F
    float-to-int v4, v2

    float-to-int v5, v0

    sub-int/2addr v4, v5

    if-lez v4, :cond_4e

    float-to-int v4, v3

    float-to-int v5, v1

    sub-int/2addr v4, v5

    if-gtz v4, :cond_52

    .line 181
    :cond_4e
    const/4 v4, 0x0

    invoke-virtual {p2, v4}, Landroid/view/animation/Transformation;->setAlpha(F)V

    .line 184
    :cond_52
    iget-boolean v4, p0, Landroid/view/animation/MiuiClipAnimation;->mIsUseScaleAnimation:Z

    if-eqz v4, :cond_aa

    iget-object v4, p0, Landroid/view/animation/MiuiClipAnimation;->mOriginRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    if-lez v4, :cond_aa

    iget-object v4, p0, Landroid/view/animation/MiuiClipAnimation;->mOriginRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-lez v4, :cond_aa

    .line 185
    sub-float v4, v2, v0

    iget-object v5, p0, Landroid/view/animation/MiuiClipAnimation;->mOriginRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    .line 186
    .local v4, "sx":F
    sub-float v5, v3, v1

    iget-object v6, p0, Landroid/view/animation/MiuiClipAnimation;->mOriginRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    .line 187
    .local v5, "sy":F
    move v6, v0

    .line 188
    .local v6, "pivotX":F
    move v7, v1

    .line 192
    .local v7, "pivotY":F
    cmpl-float v8, v4, v5

    if-lez v8, :cond_8c

    .line 193
    move v8, v4

    .line 194
    .local v8, "currentScale":F
    iget-object v9, p0, Landroid/view/animation/MiuiClipAnimation;->mOriginRect:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    .line 195
    .local v9, "clipRight":I
    sub-float v10, v3, v1

    div-float/2addr v10, v8

    float-to-int v10, v10

    .local v10, "clipBottom":I
    goto :goto_97

    .line 197
    .end local v8    # "currentScale":F
    .end local v9    # "clipRight":I
    .end local v10    # "clipBottom":I
    :cond_8c
    move v8, v5

    .line 198
    .restart local v8    # "currentScale":F
    sub-float v9, v2, v0

    div-float/2addr v9, v8

    float-to-int v9, v9

    .line 199
    .restart local v9    # "clipRight":I
    iget-object v10, p0, Landroid/view/animation/MiuiClipAnimation;->mOriginRect:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v10

    .line 201
    .restart local v10    # "clipBottom":I
    :goto_97
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v11

    invoke-virtual {v11, v6, v7}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 202
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v11

    invoke-virtual {v11, v8, v8}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 203
    const/4 v11, 0x0

    invoke-virtual {p2, v11, v11, v9, v10}, Landroid/view/animation/Transformation;->setClipRect(IIII)V

    .line 204
    .end local v4    # "sx":F
    .end local v5    # "sy":F
    .end local v6    # "pivotX":F
    .end local v7    # "pivotY":F
    .end local v8    # "currentScale":F
    .end local v9    # "clipRight":I
    .end local v10    # "clipBottom":I
    goto :goto_b1

    .line 206
    :cond_aa
    float-to-int v4, v0

    float-to-int v5, v1

    float-to-int v6, v2

    float-to-int v7, v3

    invoke-virtual {p2, v4, v5, v6, v7}, Landroid/view/animation/Transformation;->setClipRect(IIII)V

    .line 208
    :goto_b1
    iget v4, p0, Landroid/view/animation/MiuiClipAnimation;->mFromCornerRadius:F

    iget v5, p0, Landroid/view/animation/MiuiClipAnimation;->mToCornerRadius:F

    sub-float/2addr v5, v4

    mul-float/2addr v5, p1

    add-float/2addr v4, v5

    iput v4, p0, Landroid/view/animation/MiuiClipAnimation;->mCornerRadius:F

    .line 209
    return-void
.end method

.method public blacklist getCornerRadius()F
    .registers 2

    .line 251
    iget v0, p0, Landroid/view/animation/MiuiClipAnimation;->mCornerRadius:F

    return v0
.end method

.method public blacklist getDimensionPixel(Landroid/content/Context;ILandroid/util/DisplayMetrics;Z)I
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I
    .param p3, "displayMetrics"    # Landroid/util/DisplayMetrics;
    .param p4, "isWidth"    # Z

    .line 128
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 129
    .local v0, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p2, v0, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 130
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_18

    .line 131
    invoke-virtual {v0, p3}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    return v1

    .line 132
    :cond_18
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_23

    .line 133
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v1

    float-to-int v1, v1

    return v1

    .line 134
    :cond_23
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_4a

    .line 135
    if-eqz p4, :cond_3a

    .line 136
    invoke-direct {p0, p1}, Landroid/view/animation/MiuiClipAnimation;->getRealWidth(Landroid/content/Context;)I

    move-result v1

    int-to-float v1, v1

    invoke-direct {p0, p1}, Landroid/view/animation/MiuiClipAnimation;->getRealWidth(Landroid/content/Context;)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v1

    float-to-int v1, v1

    return v1

    .line 138
    :cond_3a
    invoke-direct {p0, p1}, Landroid/view/animation/MiuiClipAnimation;->getRealHeight(Landroid/content/Context;)I

    move-result v1

    int-to-float v1, v1

    invoke-direct {p0, p1}, Landroid/view/animation/MiuiClipAnimation;->getRealHeight(Landroid/content/Context;)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v1

    float-to-int v1, v1

    return v1

    .line 141
    :cond_4a
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist getFromRect()Landroid/graphics/Rect;
    .registers 2

    .line 255
    iget-object v0, p0, Landroid/view/animation/MiuiClipAnimation;->mFromRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public blacklist getToRect()Landroid/graphics/Rect;
    .registers 2

    .line 259
    iget-object v0, p0, Landroid/view/animation/MiuiClipAnimation;->mToRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public whitelist initialize(IIII)V
    .registers 10
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "parentWidth"    # I
    .param p4, "parentHeight"    # I

    .line 213
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 214
    iget-object v0, p0, Landroid/view/animation/MiuiClipAnimation;->mFromRect:Landroid/graphics/Rect;

    iget v1, p0, Landroid/view/animation/MiuiClipAnimation;->mFromLeftValue:F

    float-to-int v1, v1

    iget v2, p0, Landroid/view/animation/MiuiClipAnimation;->mFromTopValue:F

    float-to-int v2, v2

    iget v3, p0, Landroid/view/animation/MiuiClipAnimation;->mFromRightValue:F

    float-to-int v3, v3

    iget v4, p0, Landroid/view/animation/MiuiClipAnimation;->mFromBottomValue:F

    float-to-int v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 215
    iget-object v0, p0, Landroid/view/animation/MiuiClipAnimation;->mToRect:Landroid/graphics/Rect;

    iget v1, p0, Landroid/view/animation/MiuiClipAnimation;->mToLeftValue:F

    float-to-int v1, v1

    iget v2, p0, Landroid/view/animation/MiuiClipAnimation;->mToTopValue:F

    float-to-int v2, v2

    iget v3, p0, Landroid/view/animation/MiuiClipAnimation;->mToRightValue:F

    float-to-int v3, v3

    iget v4, p0, Landroid/view/animation/MiuiClipAnimation;->mToBottomValue:F

    float-to-int v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 216
    return-void
.end method

.method public blacklist updateValueIfNeed(Landroid/graphics/Rect;FZ)V
    .registers 20
    .param p1, "frame"    # Landroid/graphics/Rect;
    .param p2, "scale"    # F
    .param p3, "freeform"    # Z

    .line 219
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/animation/MiuiClipAnimation;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/animation/MiuiClipAnimation;->getDisplay(Landroid/content/Context;)Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    int-to-float v1, v1

    .line 220
    .local v1, "displayWidth":F
    iget-object v2, v0, Landroid/view/animation/MiuiClipAnimation;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/view/animation/MiuiClipAnimation;->getDisplay(Landroid/content/Context;)Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v2

    int-to-float v2, v2

    .line 222
    .local v2, "displayHeight":F
    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz p3, :cond_1f

    move/from16 v4, p2

    goto :goto_20

    :cond_1f
    move v4, v3

    :goto_20
    iput v4, v0, Landroid/view/animation/MiuiClipAnimation;->mScale:F

    .line 223
    iget-object v4, v0, Landroid/view/animation/MiuiClipAnimation;->mFromRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    div-float/2addr v4, v1

    .line 224
    .local v4, "fromRectLeftProportion":F
    iget-object v5, v0, Landroid/view/animation/MiuiClipAnimation;->mFromRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    div-float/2addr v5, v2

    .line 225
    .local v5, "fromRectTopProportion":F
    iget-object v6, v0, Landroid/view/animation/MiuiClipAnimation;->mToRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    div-float/2addr v6, v1

    .line 226
    .local v6, "toRectLeftProportion":F
    iget-object v7, v0, Landroid/view/animation/MiuiClipAnimation;->mToRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    div-float/2addr v7, v2

    .line 228
    .local v7, "toRectTopProportion":F
    iget-object v8, v0, Landroid/view/animation/MiuiClipAnimation;->mFromRect:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v1

    .line 229
    .local v8, "fromRectWidthProportion":F
    iget-object v9, v0, Landroid/view/animation/MiuiClipAnimation;->mFromRect:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v2

    .line 230
    .local v9, "fromRectHeightProportion":F
    iget-object v10, v0, Landroid/view/animation/MiuiClipAnimation;->mToRect:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v10, v1

    .line 231
    .local v10, "toRectWidthProportion":F
    iget-object v11, v0, Landroid/view/animation/MiuiClipAnimation;->mToRect:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v11, v2

    .line 233
    .local v11, "toRectHeightProportion":F
    iget v12, v0, Landroid/view/animation/MiuiClipAnimation;->mScale:F

    cmpg-float v3, v12, v3

    if-gez v3, :cond_df

    .line 234
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v4

    iput v3, v0, Landroid/view/animation/MiuiClipAnimation;->mFromLeftValue:F

    .line 235
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v5

    iput v3, v0, Landroid/view/animation/MiuiClipAnimation;->mFromTopValue:F

    .line 236
    iget v3, v0, Landroid/view/animation/MiuiClipAnimation;->mFromLeftValue:F

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v12

    int-to-float v12, v12

    iget v13, v0, Landroid/view/animation/MiuiClipAnimation;->mScale:F

    mul-float/2addr v12, v13

    mul-float/2addr v12, v8

    add-float/2addr v3, v12

    iput v3, v0, Landroid/view/animation/MiuiClipAnimation;->mFromRightValue:F

    .line 237
    iget v3, v0, Landroid/view/animation/MiuiClipAnimation;->mFromTopValue:F

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v12

    int-to-float v12, v12

    iget v13, v0, Landroid/view/animation/MiuiClipAnimation;->mScale:F

    mul-float/2addr v12, v13

    mul-float/2addr v12, v9

    add-float/2addr v3, v12

    iput v3, v0, Landroid/view/animation/MiuiClipAnimation;->mFromBottomValue:F

    .line 238
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v6

    iput v3, v0, Landroid/view/animation/MiuiClipAnimation;->mToLeftValue:F

    .line 239
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v7

    iput v3, v0, Landroid/view/animation/MiuiClipAnimation;->mToTopValue:F

    .line 240
    iget v3, v0, Landroid/view/animation/MiuiClipAnimation;->mToLeftValue:F

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v12

    int-to-float v12, v12

    iget v13, v0, Landroid/view/animation/MiuiClipAnimation;->mScale:F

    mul-float/2addr v12, v13

    mul-float/2addr v12, v10

    add-float/2addr v3, v12

    iput v3, v0, Landroid/view/animation/MiuiClipAnimation;->mToRightValue:F

    .line 241
    iget v3, v0, Landroid/view/animation/MiuiClipAnimation;->mToTopValue:F

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v12

    int-to-float v12, v12

    iget v13, v0, Landroid/view/animation/MiuiClipAnimation;->mScale:F

    mul-float/2addr v12, v13

    mul-float/2addr v12, v11

    add-float/2addr v3, v12

    iput v3, v0, Landroid/view/animation/MiuiClipAnimation;->mToBottomValue:F

    .line 243
    iget v3, v0, Landroid/view/animation/MiuiClipAnimation;->mCornerRadius:F

    mul-float/2addr v3, v13

    iput v3, v0, Landroid/view/animation/MiuiClipAnimation;->mCornerRadius:F

    .line 245
    iget-object v3, v0, Landroid/view/animation/MiuiClipAnimation;->mFromRect:Landroid/graphics/Rect;

    iget v12, v0, Landroid/view/animation/MiuiClipAnimation;->mFromLeftValue:F

    float-to-int v12, v12

    iget v13, v0, Landroid/view/animation/MiuiClipAnimation;->mFromTopValue:F

    float-to-int v13, v13

    iget v14, v0, Landroid/view/animation/MiuiClipAnimation;->mFromRightValue:F

    float-to-int v14, v14

    iget v15, v0, Landroid/view/animation/MiuiClipAnimation;->mFromBottomValue:F

    float-to-int v15, v15

    invoke-virtual {v3, v12, v13, v14, v15}, Landroid/graphics/Rect;->set(IIII)V

    .line 246
    iget-object v3, v0, Landroid/view/animation/MiuiClipAnimation;->mToRect:Landroid/graphics/Rect;

    iget v12, v0, Landroid/view/animation/MiuiClipAnimation;->mToLeftValue:F

    float-to-int v12, v12

    iget v13, v0, Landroid/view/animation/MiuiClipAnimation;->mToTopValue:F

    float-to-int v13, v13

    iget v14, v0, Landroid/view/animation/MiuiClipAnimation;->mToRightValue:F

    float-to-int v14, v14

    iget v15, v0, Landroid/view/animation/MiuiClipAnimation;->mToBottomValue:F

    float-to-int v15, v15

    invoke-virtual {v3, v12, v13, v14, v15}, Landroid/graphics/Rect;->set(IIII)V

    .line 248
    :cond_df
    return-void
.end method
