.class public Landroid/view/animation/MiuiRoundAnimation;
.super Landroid/view/animation/Animation;
.source "MiuiRoundAnimation.java"


# static fields
.field private static final blacklist NS_APP_RES_AUTO:Ljava/lang/String; = "http://schemas.android.com/apk/res-auto"


# instance fields
.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mCornerRadius:F

.field private blacklist mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private blacklist mFromCornerRadius:F

.field private blacklist mToCornerRadius:F


# direct methods
.method public constructor blacklist <init>(FF)V
    .registers 4
    .param p1, "fromCornerRadius"    # F
    .param p2, "toCornerRadius"    # F

    .line 49
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/animation/MiuiRoundAnimation;->mFromCornerRadius:F

    .line 24
    iput v0, p0, Landroid/view/animation/MiuiRoundAnimation;->mToCornerRadius:F

    .line 25
    iput v0, p0, Landroid/view/animation/MiuiRoundAnimation;->mCornerRadius:F

    .line 50
    iput p1, p0, Landroid/view/animation/MiuiRoundAnimation;->mFromCornerRadius:F

    .line 51
    iput p2, p0, Landroid/view/animation/MiuiRoundAnimation;->mToCornerRadius:F

    .line 52
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 30
    invoke-direct {p0, p1, p2}, Landroid/view/animation/Animation;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/animation/MiuiRoundAnimation;->mFromCornerRadius:F

    .line 24
    iput v0, p0, Landroid/view/animation/MiuiRoundAnimation;->mToCornerRadius:F

    .line 25
    iput v0, p0, Landroid/view/animation/MiuiRoundAnimation;->mCornerRadius:F

    .line 31
    iput-object p1, p0, Landroid/view/animation/MiuiRoundAnimation;->mContext:Landroid/content/Context;

    .line 33
    const-string v0, "http://schemas.android.com/apk/res-auto"

    const-string v1, "isRoundAnimationAutoDpi"

    const/4 v2, 0x1

    invoke-interface {p2, v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    .line 34
    .local v1, "isAutoDpi":Z
    iget-object v3, p0, Landroid/view/animation/MiuiRoundAnimation;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/animation/DensityUtil;->getPPIOfDevice(Landroid/content/Context;)I

    move-result v4

    invoke-static {v3, v4, v1}, Landroid/view/animation/DensityUtil;->getDensity(Landroid/content/Context;IZ)Landroid/util/DisplayMetrics;

    move-result-object v3

    iput-object v3, p0, Landroid/view/animation/MiuiRoundAnimation;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 36
    const-string v3, "fromCornerRadius"

    invoke-interface {p2, v0, v3}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 37
    .local v3, "fromCornerRadius":Ljava/lang/String;
    const-string v4, "toCornerRadius"

    invoke-interface {p2, v0, v4}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 38
    .local v0, "toCornerRadius":Ljava/lang/String;
    if-eqz v3, :cond_5d

    if-eqz v0, :cond_5d

    .line 42
    iget-object v4, p0, Landroid/view/animation/MiuiRoundAnimation;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iget-object v6, p0, Landroid/view/animation/MiuiRoundAnimation;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    const/4 v7, 0x0

    invoke-virtual {p0, v4, v5, v6, v7}, Landroid/view/animation/MiuiRoundAnimation;->getDimensionPixel(Landroid/content/Context;ILandroid/util/DisplayMetrics;Z)I

    move-result v4

    int-to-float v4, v4

    iput v4, p0, Landroid/view/animation/MiuiRoundAnimation;->mFromCornerRadius:F

    .line 44
    iget-object v4, p0, Landroid/view/animation/MiuiRoundAnimation;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iget-object v5, p0, Landroid/view/animation/MiuiRoundAnimation;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {p0, v4, v2, v5, v7}, Landroid/view/animation/MiuiRoundAnimation;->getDimensionPixel(Landroid/content/Context;ILandroid/util/DisplayMetrics;Z)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Landroid/view/animation/MiuiRoundAnimation;->mToCornerRadius:F

    .line 46
    iget v2, p0, Landroid/view/animation/MiuiRoundAnimation;->mFromCornerRadius:F

    iput v2, p0, Landroid/view/animation/MiuiRoundAnimation;->mCornerRadius:F

    .line 47
    return-void

    .line 39
    :cond_5d
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v4, "fromCornerRadius/toCornerRadius value can not be null."

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private blacklist getDisplay(Landroid/content/Context;)Landroid/view/Display;
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 92
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 93
    .local v0, "wm":Landroid/view/WindowManager;
    if-eqz v0, :cond_f

    .line 94
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    return-object v1

    .line 96
    :cond_f
    const/4 v1, 0x0

    return-object v1
.end method

.method private blacklist getRealHeight(Landroid/content/Context;)I
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 72
    invoke-direct {p0, p1}, Landroid/view/animation/MiuiRoundAnimation;->getDisplay(Landroid/content/Context;)Landroid/view/Display;

    move-result-object v0

    .line 73
    .local v0, "display":Landroid/view/Display;
    if-nez v0, :cond_8

    .line 74
    const/4 v1, 0x0

    return v1

    .line 76
    :cond_8
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 77
    .local v1, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 78
    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    return v2
.end method

.method private blacklist getRealWidth(Landroid/content/Context;)I
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 82
    invoke-direct {p0, p1}, Landroid/view/animation/MiuiRoundAnimation;->getDisplay(Landroid/content/Context;)Landroid/view/Display;

    move-result-object v0

    .line 83
    .local v0, "display":Landroid/view/Display;
    if-nez v0, :cond_8

    .line 84
    const/4 v1, 0x0

    return v1

    .line 86
    :cond_8
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 87
    .local v1, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 88
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    return v2
.end method


# virtual methods
.method protected whitelist applyTransformation(FLandroid/view/animation/Transformation;)V
    .registers 5
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .line 102
    iget v0, p0, Landroid/view/animation/MiuiRoundAnimation;->mFromCornerRadius:F

    iget v1, p0, Landroid/view/animation/MiuiRoundAnimation;->mToCornerRadius:F

    sub-float/2addr v1, v0

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    iput v0, p0, Landroid/view/animation/MiuiRoundAnimation;->mCornerRadius:F

    .line 103
    return-void
.end method

.method public blacklist getCornerRadius()F
    .registers 2

    .line 111
    iget v0, p0, Landroid/view/animation/MiuiRoundAnimation;->mCornerRadius:F

    return v0
.end method

.method public blacklist getDimensionPixel(Landroid/content/Context;ILandroid/util/DisplayMetrics;Z)I
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I
    .param p3, "displayMetrics"    # Landroid/util/DisplayMetrics;
    .param p4, "isWidth"    # Z

    .line 55
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 56
    .local v0, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p2, v0, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 57
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_18

    .line 58
    invoke-virtual {v0, p3}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    return v1

    .line 59
    :cond_18
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_23

    .line 60
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v1

    float-to-int v1, v1

    return v1

    .line 61
    :cond_23
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_4a

    .line 62
    if-eqz p4, :cond_3a

    .line 63
    invoke-direct {p0, p1}, Landroid/view/animation/MiuiRoundAnimation;->getRealWidth(Landroid/content/Context;)I

    move-result v1

    int-to-float v1, v1

    invoke-direct {p0, p1}, Landroid/view/animation/MiuiRoundAnimation;->getRealWidth(Landroid/content/Context;)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v1

    float-to-int v1, v1

    return v1

    .line 65
    :cond_3a
    invoke-direct {p0, p1}, Landroid/view/animation/MiuiRoundAnimation;->getRealHeight(Landroid/content/Context;)I

    move-result v1

    int-to-float v1, v1

    invoke-direct {p0, p1}, Landroid/view/animation/MiuiRoundAnimation;->getRealHeight(Landroid/content/Context;)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v1

    float-to-int v1, v1

    return v1

    .line 68
    :cond_4a
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist initialize(IIII)V
    .registers 5
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "parentWidth"    # I
    .param p4, "parentHeight"    # I

    .line 107
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 108
    return-void
.end method
