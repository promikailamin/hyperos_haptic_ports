.class public Landroid/util/MiuiMultiWinClientUtils;
.super Ljava/lang/Object;
.source "MiuiMultiWinClientUtils.java"


# static fields
.field public static final blacklist BOTTOM_SPLIT_DRAG_BAR_TOP_MARGIN:I

.field public static final blacklist DEFAULT_SPLIT_DRAG_BAR_TOP_MARGIN:I

.field public static final blacklist NARROW_SCREEN:I = 0x0

.field public static final blacklist PAD_SCREEN:I = 0x3

.field public static final blacklist PAD_SCREEN_INCH:F = 10.0f

.field public static final blacklist REGULAR_SCREEN:I = 0x1

.field public static final blacklist SCREEN_WIDTH_HEIGHT_RATIO_THRESHOLD_LOW:F = 0.33333334f

.field public static final blacklist SPLIT_DRAG_BAR_HEIGHT_FOLD:I

.field public static final blacklist SPLIT_DRAG_BAR_HEIGHT_PAD:I

.field public static final blacklist SPLIT_DRAG_BAR_WIDTH_FOLD:I

.field public static final blacklist SPLIT_DRAG_BAR_WIDTH_PAD:I

.field public static final blacklist STABLE_DENSITY:F

.field static final blacklist TAG:Ljava/lang/String; = "MiuiMultiWinClientUtils"

.field public static final blacklist VERTICAL_SPLIT_DRAG_BAR_TOP_MARGIN:I

.field public static final blacklist WIDE_SCREEN:I = 0x2

.field public static final blacklist WIDE_SCREEN_INCH:F = 8.0f


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 14
    sget v0, Landroid/util/DisplayMetrics;->DENSITY_DEVICE_STABLE:I

    int-to-float v0, v0

    const/high16 v1, 0x43200000    # 160.0f

    div-float/2addr v0, v1

    sput v0, Landroid/util/MiuiMultiWinClientUtils;->STABLE_DENSITY:F

    .line 18
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 19
    const v1, 0x11070101

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Landroid/util/MiuiMultiWinClientUtils;->DEFAULT_SPLIT_DRAG_BAR_TOP_MARGIN:I

    .line 21
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 22
    const v1, 0x11070102

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Landroid/util/MiuiMultiWinClientUtils;->VERTICAL_SPLIT_DRAG_BAR_TOP_MARGIN:I

    .line 24
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 25
    const v1, 0x1107001a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Landroid/util/MiuiMultiWinClientUtils;->BOTTOM_SPLIT_DRAG_BAR_TOP_MARGIN:I

    .line 27
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 28
    const v1, 0x11070103

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Landroid/util/MiuiMultiWinClientUtils;->SPLIT_DRAG_BAR_WIDTH_FOLD:I

    .line 30
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 31
    const v1, 0x110700fd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Landroid/util/MiuiMultiWinClientUtils;->SPLIT_DRAG_BAR_HEIGHT_FOLD:I

    .line 33
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 34
    const v1, 0x11070104

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Landroid/util/MiuiMultiWinClientUtils;->SPLIT_DRAG_BAR_WIDTH_PAD:I

    .line 36
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 37
    const v1, 0x110700fe

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Landroid/util/MiuiMultiWinClientUtils;->SPLIT_DRAG_BAR_HEIGHT_PAD:I

    .line 35
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist dip2px(Landroid/content/Context;F)I
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dip"    # F

    .line 76
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static blacklist getScreenType(Landroid/content/Context;)I
    .registers 12
    .param p0, "context"    # Landroid/content/Context;

    .line 51
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 52
    .local v0, "outMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Landroid/content/Context;->getDisplayNoVerify()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getDisplayRealMetricsSize(Landroid/util/DisplayMetrics;)V

    .line 53
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 54
    .local v1, "displayWidth":I
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 55
    .local v2, "displayHeight":I
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 56
    .local v3, "shortSide":I
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 58
    .local v4, "longSide":I
    int-to-float v5, v3

    iget v6, v0, Landroid/util/DisplayMetrics;->xdpi:F

    div-float/2addr v5, v6

    float-to-double v5, v5

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    int-to-float v9, v4

    iget v10, v0, Landroid/util/DisplayMetrics;->ydpi:F

    div-float/2addr v9, v10

    float-to-double v9, v9

    .line 59
    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    add-double/2addr v5, v7

    .line 58
    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    .line 60
    .local v5, "screenInch":D
    int-to-float v7, v3

    int-to-float v8, v4

    div-float/2addr v7, v8

    const v8, 0x3eaaaaab

    cmpg-float v7, v7, v8

    if-gtz v7, :cond_3d

    .line 61
    const/4 v7, 0x0

    return v7

    .line 62
    :cond_3d
    const-wide/high16 v7, 0x4024000000000000L    # 10.0

    cmpg-double v9, v5, v7

    if-gez v9, :cond_4b

    const-wide/high16 v9, 0x4020000000000000L    # 8.0

    cmpl-double v9, v5, v9

    if-ltz v9, :cond_4b

    .line 63
    const/4 v7, 0x2

    return v7

    .line 64
    :cond_4b
    cmpl-double v7, v5, v7

    if-ltz v7, :cond_51

    .line 65
    const/4 v7, 0x3

    return v7

    .line 67
    :cond_51
    const/4 v7, 0x1

    return v7
.end method

.method public static varargs blacklist invoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "values"    # [Ljava/lang/Object;

    .line 80
    const/4 v0, 0x0

    .line 82
    .local v0, "method":Ljava/lang/reflect/Method;
    const/4 v1, 0x0

    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 83
    .local v2, "clazz":Ljava/lang/Class;
    const/4 v3, 0x1

    if-nez p2, :cond_19

    .line 84
    invoke-virtual {v2, p1, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    move-object v0, v4

    .line 85
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 86
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 88
    :cond_19
    array-length v4, p2

    new-array v4, v4, [Ljava/lang/Class;

    .line 89
    .local v4, "argsClass":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1d
    array-length v6, p2

    if-ge v5, v6, :cond_4c

    .line 90
    aget-object v6, p2, v5

    instance-of v6, v6, Ljava/lang/Integer;

    if-eqz v6, :cond_2b

    .line 91
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    goto :goto_49

    .line 92
    :cond_2b
    aget-object v6, p2, v5

    instance-of v6, v6, Ljava/lang/Boolean;

    if-eqz v6, :cond_36

    .line 93
    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    goto :goto_49

    .line 94
    :cond_36
    aget-object v6, p2, v5

    instance-of v6, v6, Ljava/lang/Float;

    if-eqz v6, :cond_41

    .line 95
    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    goto :goto_49

    .line 97
    :cond_41
    aget-object v6, p2, v5

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    aput-object v6, v4, v5

    .line 89
    :goto_49
    add-int/lit8 v5, v5, 0x1

    goto :goto_1d

    .line 100
    .end local v5    # "i":I
    :cond_4c
    invoke-virtual {v2, p1, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    move-object v0, v5

    .line 101
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 102
    invoke-virtual {v0, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_58} :catch_59

    return-object v1

    .line 103
    .end local v2    # "clazz":Ljava/lang/Class;
    .end local v4    # "argsClass":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :catch_59
    move-exception v2

    .line 104
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDeclaredMethod:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MiuiMultiWinClientUtils"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    .end local v2    # "e":Ljava/lang/Exception;
    return-object v1
.end method

.method public static blacklist isPadScreen(Landroid/content/Context;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 72
    invoke-static {p0}, Landroid/util/MiuiMultiWinClientUtils;->getScreenType(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method
