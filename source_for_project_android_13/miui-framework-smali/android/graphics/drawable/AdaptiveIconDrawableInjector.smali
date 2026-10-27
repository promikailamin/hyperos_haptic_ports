.class public Landroid/graphics/drawable/AdaptiveIconDrawableInjector;
.super Ljava/lang/Object;
.source "AdaptiveIconDrawableInjector.java"


# static fields
.field private static final blacklist FALLBACK_ICON_MASK:Ljava/lang/String; = "M50,0L100,0 100,100 0,100 0,0z"

.field private static final blacklist FALLBACK_PATH:Landroid/graphics/Path;

.field private static final blacklist FULL_MASK_PAINT:Landroid/graphics/Paint;

.field private static final blacklist MASK_PAINT:Landroid/graphics/Paint;

.field private static final blacklist TAG:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 24
    const-class v0, Landroid/graphics/drawable/AdaptiveIconDrawableInjector;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/graphics/drawable/AdaptiveIconDrawableInjector;->TAG:Ljava/lang/String;

    .line 25
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Landroid/graphics/drawable/AdaptiveIconDrawableInjector;->MASK_PAINT:Landroid/graphics/Paint;

    .line 27
    const-string v0, "M50,0L100,0 100,100 0,100 0,0z"

    invoke-static {v0}, Landroid/util/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object v0

    sput-object v0, Landroid/graphics/drawable/AdaptiveIconDrawableInjector;->FALLBACK_PATH:Landroid/graphics/Path;

    .line 56
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Landroid/graphics/drawable/AdaptiveIconDrawableInjector;->FULL_MASK_PAINT:Landroid/graphics/Paint;

    .line 58
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 59
    const/high16 v1, 0x33000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 60
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 61
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist createPathFromMiui(Landroid/content/res/Resources;)Landroid/graphics/Path;
    .registers 5
    .param p0, "resources"    # Landroid/content/res/Resources;

    .line 31
    const/4 v0, 0x0

    .line 32
    .local v0, "iconMask":Ljava/lang/String;
    invoke-static {}, Landroid/content/res/MiuiResourcesHelper;->isPreloading()Z

    move-result v1

    if-nez v1, :cond_b

    .line 33
    invoke-static {}, Lmiui/content/res/IconCustomizer;->getConfigIconMaskValue()Ljava/lang/String;

    move-result-object v0

    .line 36
    :cond_b
    :try_start_b
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 37
    const v1, 0x104028a

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/util/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object v1

    .local v1, "path":Landroid/graphics/Path;
    goto :goto_21

    .line 39
    .end local v1    # "path":Landroid/graphics/Path;
    :cond_1d
    invoke-static {v0}, Landroid/util/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object v1
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_21} :catch_22

    .line 44
    .restart local v1    # "path":Landroid/graphics/Path;
    :goto_21
    goto :goto_2d

    .line 41
    .end local v1    # "path":Landroid/graphics/Path;
    :catch_22
    move-exception v1

    .line 42
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Landroid/graphics/drawable/AdaptiveIconDrawableInjector;->TAG:Ljava/lang/String;

    const-string v3, "create miui path failed "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 43
    sget-object v2, Landroid/graphics/drawable/AdaptiveIconDrawableInjector;->FALLBACK_PATH:Landroid/graphics/Path;

    move-object v1, v2

    .line 45
    .local v1, "path":Landroid/graphics/Path;
    :goto_2d
    return-object v1
.end method

.method public static blacklist drawMiuiFullStroke(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Rect;)V
    .registers 7
    .param p0, "canvas"    # Landroid/graphics/Canvas;
    .param p1, "strokePath"    # Landroid/graphics/Path;
    .param p2, "bounds"    # Landroid/graphics/Rect;

    .line 64
    if-eqz p1, :cond_21

    .line 65
    const/high16 v0, 0x3f000000    # 0.5f

    .line 66
    .local v0, "delta":F
    iget v1, p2, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    add-float/2addr v1, v0

    iget v2, p2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    add-float/2addr v2, v0

    invoke-virtual {p0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 67
    sget-object v1, Landroid/graphics/drawable/AdaptiveIconDrawableInjector;->FULL_MASK_PAINT:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 68
    neg-float v1, v0

    iget v2, p2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    neg-float v2, v0

    iget v3, p2, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 70
    .end local v0    # "delta":F
    :cond_21
    return-void
.end method

.method public static blacklist drawMiuiStroke(Landroid/graphics/Canvas;Landroid/graphics/Path;)V
    .registers 4
    .param p0, "canvas"    # Landroid/graphics/Canvas;
    .param p1, "path"    # Landroid/graphics/Path;

    .line 49
    if-eqz p1, :cond_17

    invoke-static {}, Landroid/app/MiuiThemeHelper;->isMiuiOptimizationEnabled()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 50
    sget-object v0, Landroid/graphics/drawable/AdaptiveIconDrawableInjector;->MASK_PAINT:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 51
    const/high16 v1, 0x33000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 52
    invoke-virtual {p0, p1, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 54
    :cond_17
    return-void
.end method
