.class public Landroid/view/animation/TranslateWithClipAnimation;
.super Landroid/view/animation/Animation;
.source "TranslateWithClipAnimation.java"


# static fields
.field private static final blacklist NS_APP_RES_AUTO:Ljava/lang/String; = "http://schemas.android.com/apk/res-auto"


# instance fields
.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mCornerRadius:F

.field private blacklist mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private blacklist mFromBottomValue:I

.field private blacklist mFromLeftValue:I

.field private final blacklist mFromRect:Landroid/graphics/Rect;

.field private blacklist mFromRightValue:I

.field private blacklist mFromTopValue:I

.field protected blacklist mFromX:F

.field protected blacklist mFromY:F

.field private blacklist mHeight:F

.field private blacklist mHeightResId:I

.field private blacklist mInterpolator:Landroid/view/animation/Interpolator;

.field private blacklist mScale:F

.field private blacklist mToBottomValue:I

.field private blacklist mToLeftValue:I

.field private final blacklist mToRect:Landroid/graphics/Rect;

.field private blacklist mToRightValue:I

.field private blacklist mToTopValue:I

.field protected blacklist mToX:F

.field protected blacklist mToY:F

.field private blacklist mWidth:F

.field private blacklist mWidthResId:I


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 68
    invoke-direct {p0, p1, p2}, Landroid/view/animation/Animation;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/animation/TranslateWithClipAnimation;->mFromRect:Landroid/graphics/Rect;

    .line 33
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/animation/TranslateWithClipAnimation;->mToRect:Landroid/graphics/Rect;

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/animation/TranslateWithClipAnimation;->mFromX:F

    .line 36
    iput v0, p0, Landroid/view/animation/TranslateWithClipAnimation;->mToX:F

    .line 37
    iput v0, p0, Landroid/view/animation/TranslateWithClipAnimation;->mFromY:F

    .line 38
    iput v0, p0, Landroid/view/animation/TranslateWithClipAnimation;->mToY:F

    .line 55
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Landroid/view/animation/TranslateWithClipAnimation;->mScale:F

    .line 70
    iput-object p1, p0, Landroid/view/animation/TranslateWithClipAnimation;->mContext:Landroid/content/Context;

    .line 72
    const-string v1, "http://schemas.android.com/apk/res-auto"

    const-string v2, "floatingWidth"

    invoke-interface {p2, v1, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 73
    .local v2, "w":Ljava/lang/String;
    const-string v3, "floatingHeight"

    invoke-interface {p2, v1, v3}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 75
    .local v3, "h":Ljava/lang/String;
    const-string v4, "isAutoDpi"

    const/4 v5, 0x1

    invoke-interface {p2, v1, v4, v5}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    .line 76
    .local v4, "isAutoDpi":Z
    iget-object v6, p0, Landroid/view/animation/TranslateWithClipAnimation;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/view/animation/DensityUtil;->getPPIOfDevice(Landroid/content/Context;)I

    move-result v7

    invoke-static {v6, v7, v4}, Landroid/view/animation/DensityUtil;->getDensity(Landroid/content/Context;IZ)Landroid/util/DisplayMetrics;

    move-result-object v6

    iput-object v6, p0, Landroid/view/animation/TranslateWithClipAnimation;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 77
    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Landroid/view/animation/TranslateWithClipAnimation;->mWidthResId:I

    .line 78
    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Landroid/view/animation/TranslateWithClipAnimation;->mHeightResId:I

    .line 79
    iget-object v6, p0, Landroid/view/animation/TranslateWithClipAnimation;->mContext:Landroid/content/Context;

    iget v7, p0, Landroid/view/animation/TranslateWithClipAnimation;->mWidthResId:I

    iget-object v8, p0, Landroid/view/animation/TranslateWithClipAnimation;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {p0, v6, v7, v8, v5}, Landroid/view/animation/TranslateWithClipAnimation;->getDimensionPixel(Landroid/content/Context;ILandroid/util/DisplayMetrics;Z)I

    move-result v6

    int-to-float v6, v6

    iput v6, p0, Landroid/view/animation/TranslateWithClipAnimation;->mWidth:F

    .line 80
    iget-object v6, p0, Landroid/view/animation/TranslateWithClipAnimation;->mContext:Landroid/content/Context;

    iget v7, p0, Landroid/view/animation/TranslateWithClipAnimation;->mHeightResId:I

    iget-object v8, p0, Landroid/view/animation/TranslateWithClipAnimation;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    const/4 v9, 0x0

    invoke-virtual {p0, v6, v7, v8, v9}, Landroid/view/animation/TranslateWithClipAnimation;->getDimensionPixel(Landroid/content/Context;ILandroid/util/DisplayMetrics;Z)I

    move-result v6

    int-to-float v6, v6

    iput v6, p0, Landroid/view/animation/TranslateWithClipAnimation;->mHeight:F

    .line 82
    const-string v6, "interpolatorName"

    invoke-interface {p2, v1, v6}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 83
    .local v6, "interpolatorName":Ljava/lang/String;
    const-string v7, "damping"

    invoke-interface {p2, v1, v7, v0}, Landroid/util/AttributeSet;->getAttributeFloatValue(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v7

    .line 84
    .local v7, "damping":F
    const-string v8, "response"

    invoke-interface {p2, v1, v8, v0}, Landroid/util/AttributeSet;->getAttributeFloatValue(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v0

    .line 86
    .local v0, "response":F
    invoke-direct {p0, v6, v7, v0}, Landroid/view/animation/TranslateWithClipAnimation;->getInterpolatorByName(Ljava/lang/String;FF)Landroid/view/animation/Interpolator;

    move-result-object v8

    iput-object v8, p0, Landroid/view/animation/TranslateWithClipAnimation;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 87
    if-eqz v8, :cond_8d

    .line 88
    invoke-virtual {p0, v8}, Landroid/view/animation/TranslateWithClipAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 90
    :cond_8d
    const-string v8, "roundCornerRadius"

    invoke-interface {p2, v1, v8}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 91
    .local v1, "cr":Ljava/lang/String;
    iget-object v8, p0, Landroid/view/animation/TranslateWithClipAnimation;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iget-object v10, p0, Landroid/view/animation/TranslateWithClipAnimation;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {p0, v8, v5, v10, v9}, Landroid/view/animation/TranslateWithClipAnimation;->getDimensionPixel(Landroid/content/Context;ILandroid/util/DisplayMetrics;Z)I

    move-result v5

    int-to-float v5, v5

    iput v5, p0, Landroid/view/animation/TranslateWithClipAnimation;->mCornerRadius:F

    .line 92
    return-void
.end method

.method public constructor blacklist <init>(Landroid/graphics/Rect;Landroid/graphics/Rect;FFFF)V
    .registers 10
    .param p1, "fromClip"    # Landroid/graphics/Rect;
    .param p2, "toClip"    # Landroid/graphics/Rect;
    .param p3, "fromX"    # F
    .param p4, "toX"    # F
    .param p5, "fromY"    # F
    .param p6, "toY"    # F

    .line 253
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 32
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/animation/TranslateWithClipAnimation;->mFromRect:Landroid/graphics/Rect;

    .line 33
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/view/animation/TranslateWithClipAnimation;->mToRect:Landroid/graphics/Rect;

    .line 35
    const/4 v2, 0x0

    iput v2, p0, Landroid/view/animation/TranslateWithClipAnimation;->mFromX:F

    .line 36
    iput v2, p0, Landroid/view/animation/TranslateWithClipAnimation;->mToX:F

    .line 37
    iput v2, p0, Landroid/view/animation/TranslateWithClipAnimation;->mFromY:F

    .line 38
    iput v2, p0, Landroid/view/animation/TranslateWithClipAnimation;->mToY:F

    .line 55
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Landroid/view/animation/TranslateWithClipAnimation;->mScale:F

    .line 254
    iget v2, p1, Landroid/graphics/Rect;->left:I

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 255
    iget v2, p1, Landroid/graphics/Rect;->top:I

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 256
    iget v2, p1, Landroid/graphics/Rect;->right:I

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 257
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 259
    iget v0, p2, Landroid/graphics/Rect;->left:I

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 260
    iget v0, p2, Landroid/graphics/Rect;->top:I

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 261
    iget v0, p2, Landroid/graphics/Rect;->right:I

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 262
    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 264
    iput p3, p0, Landroid/view/animation/TranslateWithClipAnimation;->mFromX:F

    .line 265
    iput p4, p0, Landroid/view/animation/TranslateWithClipAnimation;->mToX:F

    .line 266
    iput p5, p0, Landroid/view/animation/TranslateWithClipAnimation;->mFromY:F

    .line 267
    iput p6, p0, Landroid/view/animation/TranslateWithClipAnimation;->mToY:F

    .line 268
    return-void
.end method

.method private blacklist getDisplay(Landroid/content/Context;)Landroid/view/Display;
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 169
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 170
    .local v0, "wm":Landroid/view/WindowManager;
    if-eqz v0, :cond_f

    .line 171
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    return-object v1

    .line 173
    :cond_f
    const/4 v1, 0x0

    return-object v1
.end method

.method private blacklist getInterpolatorByName(Ljava/lang/String;FF)Landroid/view/animation/Interpolator;
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "damping"    # F
    .param p3, "reaponse"    # F

    .line 226
    const/4 v0, 0x0

    .line 227
    .local v0, "interpolator":Landroid/view/animation/Interpolator;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9f

    .line 228
    const-string v1, "springInterpolator"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 229
    new-instance v1, Landroid/view/animation/SpringInterpolator;

    invoke-direct {v1, p2, p3}, Landroid/view/animation/SpringInterpolator;-><init>(FF)V

    move-object v0, v1

    goto/16 :goto_9f

    .line 230
    :cond_17
    const-string v1, "linearInterpolator"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 231
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    move-object v0, v1

    goto/16 :goto_9f

    .line 232
    :cond_27
    const-string v1, "accelerateInterpolator"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 233
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    move-object v0, v1

    goto/16 :goto_9f

    .line 234
    :cond_37
    const-string v1, "decelerateInterpolator"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 235
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1, p2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    move-object v0, v1

    goto :goto_9f

    .line 236
    :cond_46
    const-string v1, "accelerateDecelerateInterpolator"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_55

    .line 237
    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    move-object v0, v1

    goto :goto_9f

    .line 238
    :cond_55
    const-string v1, "cycleInterpolator"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_64

    .line 239
    new-instance v1, Landroid/view/animation/CycleInterpolator;

    invoke-direct {v1, p2}, Landroid/view/animation/CycleInterpolator;-><init>(F)V

    move-object v0, v1

    goto :goto_9f

    .line 240
    :cond_64
    const-string v1, "anticipateInterpolator"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_73

    .line 241
    new-instance v1, Landroid/view/animation/AnticipateInterpolator;

    invoke-direct {v1, p2}, Landroid/view/animation/AnticipateInterpolator;-><init>(F)V

    move-object v0, v1

    goto :goto_9f

    .line 242
    :cond_73
    const-string v1, "overshootInterpolator"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_82

    .line 243
    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v1, p2}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    move-object v0, v1

    goto :goto_9f

    .line 244
    :cond_82
    const-string v1, "anticipateOvershootInterpolator"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_91

    .line 245
    new-instance v1, Landroid/view/animation/AnticipateOvershootInterpolator;

    invoke-direct {v1, p2}, Landroid/view/animation/AnticipateOvershootInterpolator;-><init>(F)V

    move-object v0, v1

    goto :goto_9f

    .line 246
    :cond_91
    const-string v1, "bounceInterpolator"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9f

    .line 247
    new-instance v1, Landroid/view/animation/BounceInterpolator;

    invoke-direct {v1}, Landroid/view/animation/BounceInterpolator;-><init>()V

    move-object v0, v1

    .line 250
    :cond_9f
    :goto_9f
    return-object v0
.end method

.method private blacklist getRealHeight(Landroid/content/Context;)I
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 112
    invoke-direct {p0, p1}, Landroid/view/animation/TranslateWithClipAnimation;->getDisplay(Landroid/content/Context;)Landroid/view/Display;

    move-result-object v0

    .line 113
    .local v0, "display":Landroid/view/Display;
    if-nez v0, :cond_8

    .line 114
    const/4 v1, 0x0

    return v1

    .line 116
    :cond_8
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 117
    .local v1, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 118
    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    return v2
.end method

.method private blacklist getRealHeight(Landroid/content/Context;Landroid/graphics/Rect;)I
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "rect"    # Landroid/graphics/Rect;

    .line 153
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 154
    .local v0, "point":Landroid/graphics/Point;
    move-object v1, p2

    .line 155
    .local v1, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    iput v2, v0, Landroid/graphics/Point;->x:I

    .line 156
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v2

    iput v2, v0, Landroid/graphics/Point;->y:I

    .line 157
    iget v2, v0, Landroid/graphics/Point;->y:I

    return v2
.end method

.method private blacklist getRealWidth(Landroid/content/Context;)I
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 122
    invoke-direct {p0, p1}, Landroid/view/animation/TranslateWithClipAnimation;->getDisplay(Landroid/content/Context;)Landroid/view/Display;

    move-result-object v0

    .line 123
    .local v0, "display":Landroid/view/Display;
    if-nez v0, :cond_8

    .line 124
    const/4 v1, 0x0

    return v1

    .line 126
    :cond_8
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 127
    .local v1, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 128
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    return v2
.end method

.method private blacklist getRealWidth(Landroid/content/Context;Landroid/graphics/Rect;)I
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "rect"    # Landroid/graphics/Rect;

    .line 161
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 162
    .local v0, "point":Landroid/graphics/Point;
    move-object v1, p2

    .line 163
    .local v1, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    iput v2, v0, Landroid/graphics/Point;->x:I

    .line 164
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v2

    iput v2, v0, Landroid/graphics/Point;->y:I

    .line 165
    iget v2, v0, Landroid/graphics/Point;->x:I

    return v2
.end method


# virtual methods
.method protected whitelist applyTransformation(FLandroid/view/animation/Transformation;)V
    .registers 13
    .param p1, "interpolatedTime"    # F
    .param p2, "transformation"    # Landroid/view/animation/Transformation;

    .line 272
    iget-object v0, p0, Landroid/view/animation/TranslateWithClipAnimation;->mFromRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget-object v1, p0, Landroid/view/animation/TranslateWithClipAnimation;->mToRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroid/view/animation/TranslateWithClipAnimation;->mFromRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    .line 273
    .local v0, "currentLeft":F
    iget-object v1, p0, Landroid/view/animation/TranslateWithClipAnimation;->mFromRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iget-object v2, p0, Landroid/view/animation/TranslateWithClipAnimation;->mToRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Landroid/view/animation/TranslateWithClipAnimation;->mFromRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    .line 274
    .local v1, "currentTop":F
    iget-object v2, p0, Landroid/view/animation/TranslateWithClipAnimation;->mFromRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/view/animation/TranslateWithClipAnimation;->mToRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Landroid/view/animation/TranslateWithClipAnimation;->mFromRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    .line 275
    .local v2, "currentRight":F
    iget-object v3, p0, Landroid/view/animation/TranslateWithClipAnimation;->mFromRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    iget-object v4, p0, Landroid/view/animation/TranslateWithClipAnimation;->mToRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iget-object v5, p0, Landroid/view/animation/TranslateWithClipAnimation;->mFromRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    mul-float/2addr v4, p1

    add-float/2addr v3, v4

    .line 276
    .local v3, "currentBottom":F
    iget v4, p0, Landroid/view/animation/TranslateWithClipAnimation;->mFromX:F

    .line 277
    .local v4, "dx":F
    iget v5, p0, Landroid/view/animation/TranslateWithClipAnimation;->mFromY:F

    .line 278
    .local v5, "dy":F
    iget v6, p0, Landroid/view/animation/TranslateWithClipAnimation;->mFromX:F

    iget v7, p0, Landroid/view/animation/TranslateWithClipAnimation;->mToX:F

    cmpl-float v8, v6, v7

    if-eqz v8, :cond_54

    .line 279
    sub-float/2addr v7, v6

    mul-float/2addr v7, p1

    add-float v4, v6, v7

    .line 281
    :cond_54
    iget v6, p0, Landroid/view/animation/TranslateWithClipAnimation;->mFromY:F

    iget v7, p0, Landroid/view/animation/TranslateWithClipAnimation;->mToY:F

    cmpl-float v8, v6, v7

    if-eqz v8, :cond_60

    .line 282
    sub-float/2addr v7, v6

    mul-float/2addr v7, p1

    add-float v5, v6, v7

    .line 284
    :cond_60
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 285
    float-to-int v6, v2

    float-to-int v7, v0

    sub-int/2addr v6, v7

    if-gtz v6, :cond_70

    .line 286
    const/4 v6, 0x0

    invoke-virtual {p2, v6}, Landroid/view/animation/Transformation;->setAlpha(F)V

    .line 288
    :cond_70
    float-to-int v6, v0

    float-to-int v7, v1

    float-to-int v8, v2

    float-to-int v9, v3

    invoke-virtual {p2, v6, v7, v8, v9}, Landroid/view/animation/Transformation;->setClipRect(IIII)V

    .line 289
    return-void
.end method

.method public blacklist getCornerRadius()F
    .registers 3

    .line 299
    iget v0, p0, Landroid/view/animation/TranslateWithClipAnimation;->mCornerRadius:F

    iget v1, p0, Landroid/view/animation/TranslateWithClipAnimation;->mScale:F

    mul-float/2addr v0, v1

    return v0
.end method

.method public blacklist getDimensionPixel(Landroid/content/Context;ILandroid/util/DisplayMetrics;Z)I
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I
    .param p3, "displayMetrics"    # Landroid/util/DisplayMetrics;
    .param p4, "isWidth"    # Z

    .line 95
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 96
    .local v0, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p2, v0, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 97
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_18

    .line 98
    invoke-virtual {v0, p3}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    return v1

    .line 99
    :cond_18
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_23

    .line 100
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v1

    float-to-int v1, v1

    return v1

    .line 101
    :cond_23
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_4a

    .line 102
    if-eqz p4, :cond_3a

    .line 103
    invoke-direct {p0, p1}, Landroid/view/animation/TranslateWithClipAnimation;->getRealWidth(Landroid/content/Context;)I

    move-result v1

    int-to-float v1, v1

    invoke-direct {p0, p1}, Landroid/view/animation/TranslateWithClipAnimation;->getRealWidth(Landroid/content/Context;)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v1

    float-to-int v1, v1

    return v1

    .line 105
    :cond_3a
    invoke-direct {p0, p1}, Landroid/view/animation/TranslateWithClipAnimation;->getRealHeight(Landroid/content/Context;)I

    move-result v1

    int-to-float v1, v1

    invoke-direct {p0, p1}, Landroid/view/animation/TranslateWithClipAnimation;->getRealHeight(Landroid/content/Context;)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v1

    float-to-int v1, v1

    return v1

    .line 108
    :cond_4a
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist getDimensionPixel(Landroid/content/Context;ILandroid/util/DisplayMetrics;ZLandroid/graphics/Rect;)I
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I
    .param p3, "displayMetrics"    # Landroid/util/DisplayMetrics;
    .param p4, "isWidth"    # Z
    .param p5, "bounds"    # Landroid/graphics/Rect;

    .line 133
    const/4 v0, 0x0

    if-nez p5, :cond_4

    .line 134
    return v0

    .line 136
    :cond_4
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 137
    .local v1, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, p2, v1, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 138
    iget v2, v1, Landroid/util/TypedValue;->type:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_1c

    .line 139
    invoke-virtual {v1, p3}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    return v0

    .line 140
    :cond_1c
    iget v2, v1, Landroid/util/TypedValue;->type:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_27

    .line 141
    invoke-virtual {v1}, Landroid/util/TypedValue;->getFloat()F

    move-result v0

    float-to-int v0, v0

    return v0

    .line 142
    :cond_27
    iget v2, v1, Landroid/util/TypedValue;->type:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_4e

    .line 143
    if-eqz p4, :cond_3e

    .line 144
    invoke-direct {p0, p1, p5}, Landroid/view/animation/TranslateWithClipAnimation;->getRealWidth(Landroid/content/Context;Landroid/graphics/Rect;)I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p0, p1, p5}, Landroid/view/animation/TranslateWithClipAnimation;->getRealWidth(Landroid/content/Context;Landroid/graphics/Rect;)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v0, v2}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v0

    float-to-int v0, v0

    return v0

    .line 146
    :cond_3e
    invoke-direct {p0, p1, p5}, Landroid/view/animation/TranslateWithClipAnimation;->getRealHeight(Landroid/content/Context;Landroid/graphics/Rect;)I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p0, p1, p5}, Landroid/view/animation/TranslateWithClipAnimation;->getRealHeight(Landroid/content/Context;Landroid/graphics/Rect;)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v0, v2}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v0

    float-to-int v0, v0

    return v0

    .line 149
    :cond_4e
    return v0
.end method

.method public blacklist getHeight()F
    .registers 2

    .line 303
    iget v0, p0, Landroid/view/animation/TranslateWithClipAnimation;->mHeight:F

    return v0
.end method

.method public blacklist getWidth()F
    .registers 2

    .line 307
    iget v0, p0, Landroid/view/animation/TranslateWithClipAnimation;->mWidth:F

    return v0
.end method

.method public whitelist initialize(IIII)V
    .registers 10
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "parentWidth"    # I
    .param p4, "parentHeight"    # I

    .line 293
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 294
    iget-object v0, p0, Landroid/view/animation/TranslateWithClipAnimation;->mFromRect:Landroid/graphics/Rect;

    iget v1, p0, Landroid/view/animation/TranslateWithClipAnimation;->mFromLeftValue:I

    iget v2, p0, Landroid/view/animation/TranslateWithClipAnimation;->mFromTopValue:I

    iget v3, p0, Landroid/view/animation/TranslateWithClipAnimation;->mFromRightValue:I

    iget v4, p0, Landroid/view/animation/TranslateWithClipAnimation;->mFromBottomValue:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 295
    iget-object v0, p0, Landroid/view/animation/TranslateWithClipAnimation;->mToRect:Landroid/graphics/Rect;

    iget v1, p0, Landroid/view/animation/TranslateWithClipAnimation;->mToLeftValue:I

    iget v2, p0, Landroid/view/animation/TranslateWithClipAnimation;->mToTopValue:I

    iget v3, p0, Landroid/view/animation/TranslateWithClipAnimation;->mToRightValue:I

    iget v4, p0, Landroid/view/animation/TranslateWithClipAnimation;->mToBottomValue:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 296
    return-void
.end method

.method public blacklist updateValueIfNeed(ZLandroid/graphics/Rect;FZLandroid/graphics/Rect;)V
    .registers 15
    .param p1, "enter"    # Z
    .param p2, "frame"    # Landroid/graphics/Rect;
    .param p3, "scale"    # F
    .param p4, "freeform"    # Z
    .param p5, "bounds"    # Landroid/graphics/Rect;

    .line 178
    if-eqz p4, :cond_5

    const/16 v0, 0x16

    goto :goto_6

    :cond_5
    const/4 v0, 0x0

    .line 179
    .local v0, "topOffset":I
    :goto_6
    if-eqz p4, :cond_61

    .line 180
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-le v1, v2, :cond_42

    iget-object v1, p0, Landroid/view/animation/TranslateWithClipAnimation;->mContext:Landroid/content/Context;

    .line 181
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_42

    .line 182
    iget-object v4, p0, Landroid/view/animation/TranslateWithClipAnimation;->mContext:Landroid/content/Context;

    iget v5, p0, Landroid/view/animation/TranslateWithClipAnimation;->mWidthResId:I

    iget-object v6, p0, Landroid/view/animation/TranslateWithClipAnimation;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    const/4 v7, 0x1

    move-object v3, p0

    move-object v8, p5

    invoke-virtual/range {v3 .. v8}, Landroid/view/animation/TranslateWithClipAnimation;->getDimensionPixel(Landroid/content/Context;ILandroid/util/DisplayMetrics;ZLandroid/graphics/Rect;)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Landroid/view/animation/TranslateWithClipAnimation;->mWidth:F

    .line 183
    iget-object v3, p0, Landroid/view/animation/TranslateWithClipAnimation;->mContext:Landroid/content/Context;

    iget v4, p0, Landroid/view/animation/TranslateWithClipAnimation;->mHeightResId:I

    iget-object v5, p0, Landroid/view/animation/TranslateWithClipAnimation;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    const/4 v6, 0x0

    move-object v2, p0

    move-object v7, p5

    invoke-virtual/range {v2 .. v7}, Landroid/view/animation/TranslateWithClipAnimation;->getDimensionPixel(Landroid/content/Context;ILandroid/util/DisplayMetrics;ZLandroid/graphics/Rect;)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Landroid/view/animation/TranslateWithClipAnimation;->mHeight:F

    goto :goto_61

    .line 184
    :cond_42
    iget-object v1, p0, Landroid/view/animation/TranslateWithClipAnimation;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_61

    .line 185
    iget-object v4, p0, Landroid/view/animation/TranslateWithClipAnimation;->mContext:Landroid/content/Context;

    iget v5, p0, Landroid/view/animation/TranslateWithClipAnimation;->mHeightResId:I

    iget-object v6, p0, Landroid/view/animation/TranslateWithClipAnimation;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    const/4 v7, 0x0

    move-object v3, p0

    move-object v8, p5

    invoke-virtual/range {v3 .. v8}, Landroid/view/animation/TranslateWithClipAnimation;->getDimensionPixel(Landroid/content/Context;ILandroid/util/DisplayMetrics;ZLandroid/graphics/Rect;)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Landroid/view/animation/TranslateWithClipAnimation;->mHeight:F

    .line 188
    :cond_61
    :goto_61
    if-eqz p4, :cond_65

    move v1, p3

    goto :goto_67

    :cond_65
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_67
    iput v1, p0, Landroid/view/animation/TranslateWithClipAnimation;->mScale:F

    .line 189
    const/4 v1, 0x0

    const/high16 v2, 0x40000000    # 2.0f

    if-eqz p1, :cond_b8

    .line 190
    iget v3, p0, Landroid/view/animation/TranslateWithClipAnimation;->mWidth:F

    iget v4, p0, Landroid/view/animation/TranslateWithClipAnimation;->mCornerRadius:F

    mul-float/2addr v4, v2

    sub-float/2addr v3, v4

    mul-float/2addr v3, p3

    iput v3, p0, Landroid/view/animation/TranslateWithClipAnimation;->mFromX:F

    .line 191
    iput v1, p0, Landroid/view/animation/TranslateWithClipAnimation;->mToX:F

    .line 192
    iput v1, p0, Landroid/view/animation/TranslateWithClipAnimation;->mFromY:F

    .line 193
    iput v1, p0, Landroid/view/animation/TranslateWithClipAnimation;->mToY:F

    .line 195
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    iget v3, p0, Landroid/view/animation/TranslateWithClipAnimation;->mWidth:F

    sub-float/2addr v1, v3

    mul-float/2addr v1, p3

    div-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Landroid/view/animation/TranslateWithClipAnimation;->mFromLeftValue:I

    .line 196
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    iget v3, p0, Landroid/view/animation/TranslateWithClipAnimation;->mHeight:F

    sub-float/2addr v1, v3

    mul-float/2addr v1, p3

    div-float/2addr v1, v2

    float-to-int v1, v1

    sub-int/2addr v1, v0

    iput v1, p0, Landroid/view/animation/TranslateWithClipAnimation;->mFromTopValue:I

    .line 197
    iget v4, p0, Landroid/view/animation/TranslateWithClipAnimation;->mFromLeftValue:I

    int-to-float v5, v4

    iget v6, p0, Landroid/view/animation/TranslateWithClipAnimation;->mCornerRadius:F

    mul-float/2addr v6, v2

    mul-float/2addr v6, p3

    add-float/2addr v5, v6

    float-to-int v2, v5

    iput v2, p0, Landroid/view/animation/TranslateWithClipAnimation;->mFromRightValue:I

    .line 198
    int-to-float v2, v1

    mul-float/2addr v3, p3

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Landroid/view/animation/TranslateWithClipAnimation;->mFromBottomValue:I

    .line 200
    iput v4, p0, Landroid/view/animation/TranslateWithClipAnimation;->mToLeftValue:I

    .line 201
    iput v1, p0, Landroid/view/animation/TranslateWithClipAnimation;->mToTopValue:I

    .line 202
    int-to-float v1, v4

    iget v3, p0, Landroid/view/animation/TranslateWithClipAnimation;->mWidth:F

    mul-float/2addr v3, p3

    add-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, p0, Landroid/view/animation/TranslateWithClipAnimation;->mToRightValue:I

    .line 203
    iput v2, p0, Landroid/view/animation/TranslateWithClipAnimation;->mToBottomValue:I

    goto :goto_101

    .line 205
    :cond_b8
    iput v1, p0, Landroid/view/animation/TranslateWithClipAnimation;->mFromX:F

    .line 206
    iget v3, p0, Landroid/view/animation/TranslateWithClipAnimation;->mWidth:F

    iget v4, p0, Landroid/view/animation/TranslateWithClipAnimation;->mCornerRadius:F

    mul-float/2addr v4, v2

    sub-float/2addr v3, v4

    mul-float/2addr v3, p3

    iput v3, p0, Landroid/view/animation/TranslateWithClipAnimation;->mToX:F

    .line 207
    iput v1, p0, Landroid/view/animation/TranslateWithClipAnimation;->mFromY:F

    .line 208
    iput v1, p0, Landroid/view/animation/TranslateWithClipAnimation;->mToY:F

    .line 210
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    iget v3, p0, Landroid/view/animation/TranslateWithClipAnimation;->mWidth:F

    sub-float/2addr v1, v3

    mul-float/2addr v1, p3

    div-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Landroid/view/animation/TranslateWithClipAnimation;->mToLeftValue:I

    .line 211
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    iget v3, p0, Landroid/view/animation/TranslateWithClipAnimation;->mHeight:F

    sub-float/2addr v1, v3

    mul-float/2addr v1, p3

    div-float/2addr v1, v2

    float-to-int v1, v1

    sub-int/2addr v1, v0

    iput v1, p0, Landroid/view/animation/TranslateWithClipAnimation;->mToTopValue:I

    .line 212
    iget v4, p0, Landroid/view/animation/TranslateWithClipAnimation;->mToLeftValue:I

    int-to-float v5, v4

    iget v6, p0, Landroid/view/animation/TranslateWithClipAnimation;->mCornerRadius:F

    mul-float/2addr v6, v2

    mul-float/2addr v6, p3

    add-float/2addr v5, v6

    float-to-int v2, v5

    iput v2, p0, Landroid/view/animation/TranslateWithClipAnimation;->mToRightValue:I

    .line 213
    int-to-float v2, v1

    mul-float/2addr v3, p3

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Landroid/view/animation/TranslateWithClipAnimation;->mToBottomValue:I

    .line 215
    iput v4, p0, Landroid/view/animation/TranslateWithClipAnimation;->mFromLeftValue:I

    .line 216
    iput v1, p0, Landroid/view/animation/TranslateWithClipAnimation;->mFromTopValue:I

    .line 217
    int-to-float v1, v4

    iget v3, p0, Landroid/view/animation/TranslateWithClipAnimation;->mWidth:F

    mul-float/2addr v3, p3

    add-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, p0, Landroid/view/animation/TranslateWithClipAnimation;->mFromRightValue:I

    .line 218
    iput v2, p0, Landroid/view/animation/TranslateWithClipAnimation;->mFromBottomValue:I

    .line 220
    :goto_101
    iget-object v1, p0, Landroid/view/animation/TranslateWithClipAnimation;->mFromRect:Landroid/graphics/Rect;

    iget v2, p0, Landroid/view/animation/TranslateWithClipAnimation;->mFromLeftValue:I

    iget v3, p0, Landroid/view/animation/TranslateWithClipAnimation;->mFromTopValue:I

    iget v4, p0, Landroid/view/animation/TranslateWithClipAnimation;->mFromRightValue:I

    iget v5, p0, Landroid/view/animation/TranslateWithClipAnimation;->mFromBottomValue:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 221
    iget-object v1, p0, Landroid/view/animation/TranslateWithClipAnimation;->mToRect:Landroid/graphics/Rect;

    iget v2, p0, Landroid/view/animation/TranslateWithClipAnimation;->mToLeftValue:I

    iget v3, p0, Landroid/view/animation/TranslateWithClipAnimation;->mToTopValue:I

    iget v4, p0, Landroid/view/animation/TranslateWithClipAnimation;->mToRightValue:I

    iget v5, p0, Landroid/view/animation/TranslateWithClipAnimation;->mToBottomValue:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 222
    return-void
.end method
