.class public Landroid/app/MiuiSplitUtils;
.super Ljava/lang/Object;
.source "MiuiSplitUtils.java"


# static fields
.field public static final blacklist COLUMN_NUMBER_ONE:I = 0x1

.field public static final blacklist COLUMN_NUMBER_TWO:I = 0x2

.field public static final blacklist EXTRAS_MIUISPLIT_SIZE:Ljava/lang/String; = "extras_miui_split_size"

.field public static final blacklist IS_FOLDABLE_PHONE:Z

.field public static final blacklist SPLIT_LAND_DEFAULT:D = 5.5

.field public static final blacklist SPLIT_PORT_DEFAULT:D = 8.0

.field private static blacklist TAG:Ljava/lang/String; = null

.field private static final blacklist WIDTH_LIMIT_LAND:I = 0x250

.field private static final blacklist WIDTH_LIMIT_PORT:I = 0x215

.field private static blacklist mDeviceSize:D

.field private static blacklist sOldDisplayMode:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 16
    const-string v0, "MiuiSplitUtils"

    sput-object v0, Landroid/app/MiuiSplitUtils;->TAG:Ljava/lang/String;

    .line 25
    const-wide/16 v0, 0x0

    sput-wide v0, Landroid/app/MiuiSplitUtils;->mDeviceSize:D

    .line 26
    const/4 v0, 0x0

    sput v0, Landroid/app/MiuiSplitUtils;->sOldDisplayMode:I

    .line 29
    sget-boolean v0, Lmiui/os/DeviceFeature;->IS_FOLD_DEVICE:Z

    sput-boolean v0, Landroid/app/MiuiSplitUtils;->IS_FOLDABLE_PHONE:Z

    .line 30
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist calculateColumnsNumber(Landroid/app/Activity;IDD)I
    .registers 14
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "appWidth"    # I
    .param p2, "landSplitLimit"    # D
    .param p4, "portSplitLimit"    # D

    .line 33
    invoke-static {p0}, Landroid/app/MiuiSplitUtils;->calculateDeviceSize(Landroid/content/Context;)D

    move-result-wide v0

    .line 34
    .local v0, "sizeInch":D
    invoke-static {p0}, Landroid/app/MiuiSplitUtils;->isScreenPotrait(Landroid/app/Activity;)Z

    move-result v2

    const/4 v3, 0x2

    const-wide v4, 0x3fb999999999999aL    # 0.1

    const-wide/16 v6, 0x0

    if-nez v2, :cond_2d

    .line 35
    cmpl-double v2, p2, v6

    if-lez v2, :cond_49

    cmpl-double v2, v0, p2

    if-gez v2, :cond_24

    sub-double v6, v0, p2

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    cmpg-double v2, v6, v4

    if-gez v2, :cond_49

    :cond_24
    const/high16 v2, 0x44140000    # 592.0f

    .line 36
    invoke-static {p0, v2}, Landroid/app/MiuiSplitUtils;->dip2px(Landroid/content/Context;F)I

    move-result v2

    if-lt p1, v2, :cond_49

    .line 37
    return v3

    .line 39
    :cond_2d
    cmpl-double v2, p4, v6

    if-lez v2, :cond_49

    cmpl-double v2, v0, p4

    if-gez v2, :cond_3f

    sub-double v6, v0, p4

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    cmpg-double v2, v6, v4

    if-gez v2, :cond_49

    :cond_3f
    const v2, 0x44054000    # 533.0f

    .line 40
    invoke-static {p0, v2}, Landroid/app/MiuiSplitUtils;->dip2px(Landroid/content/Context;F)I

    move-result v2

    if-lt p1, v2, :cond_49

    .line 41
    return v3

    .line 43
    :cond_49
    const/4 v2, 0x1

    return v2
.end method

.method private static blacklist calculateDeviceSize(Landroid/content/Context;)D
    .registers 8
    .param p0, "context"    # Landroid/content/Context;

    .line 50
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 51
    .local v0, "dm":Landroid/util/DisplayMetrics;
    const-string v1, "window"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 52
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    iget v2, v0, Landroid/util/DisplayMetrics;->xdpi:F

    div-float/2addr v1, v2

    float-to-double v1, v1

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    iget v5, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v5, v5

    iget v6, v0, Landroid/util/DisplayMetrics;->ydpi:F

    div-float/2addr v5, v6

    float-to-double v5, v5

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    add-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v1

    sput-wide v1, Landroid/app/MiuiSplitUtils;->mDeviceSize:D

    .line 53
    return-wide v1
.end method

.method private static blacklist dip2px(Landroid/content/Context;F)I
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dpValue"    # F

    .line 57
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

.method public static blacklist getAppWidth(Landroid/content/Context;)I
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 61
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 62
    .local v0, "configuration":Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v2, v0, Landroid/content/res/Configuration;->densityDpi:I

    mul-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x43200000    # 160.0f

    div-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method private static blacklist isFullState(Landroid/content/Context;)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 66
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 67
    .local v0, "configuration":Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v1, 0xf

    const/4 v2, 0x3

    if-lt v1, v2, :cond_11

    const/4 v1, 0x1

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    return v1
.end method

.method public static blacklist isNeedSplit(Landroid/content/Context;)Z
    .registers 17
    .param p0, "context"    # Landroid/content/Context;

    .line 73
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 74
    return v0

    .line 77
    :cond_4
    sget-boolean v1, Landroid/app/MiuiSplitUtils;->IS_FOLDABLE_PHONE:Z

    if-eqz v1, :cond_f

    invoke-static/range {p0 .. p0}, Landroid/app/MiuiSplitUtils;->isFullState(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 78
    return v0

    .line 81
    :cond_f
    invoke-static/range {p0 .. p0}, Landroid/app/MiuiSplitUtils;->getAppWidth(Landroid/content/Context;)I

    move-result v1

    .line 82
    .local v1, "appWidth":I
    move-object/from16 v8, p0

    check-cast v8, Landroid/app/Activity;

    .line 83
    .local v8, "activity":Landroid/app/Activity;
    invoke-virtual {v8}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "extras_miui_split_size"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getDoubleArrayExtra(Ljava/lang/String;)[D

    move-result-object v9

    .line 84
    .local v9, "splitSize":[D
    const/4 v10, 0x1

    const/4 v11, 0x2

    if-eqz v9, :cond_2f

    array-length v2, v9

    if-lt v2, v11, :cond_2f

    .line 85
    aget-wide v2, v9, v0

    .line 86
    .local v2, "d1":D
    aget-wide v4, v9, v10

    move-wide v12, v2

    move-wide v14, v4

    .local v4, "d2":D
    goto :goto_35

    .line 88
    .end local v2    # "d1":D
    .end local v4    # "d2":D
    :cond_2f
    const-wide/high16 v2, 0x4016000000000000L    # 5.5

    .line 89
    .restart local v2    # "d1":D
    const-wide/high16 v4, 0x4020000000000000L    # 8.0

    move-wide v12, v2

    move-wide v14, v4

    .line 91
    .end local v2    # "d1":D
    .local v12, "d1":D
    .local v14, "d2":D
    :goto_35
    move-object v2, v8

    move v3, v1

    move-wide v4, v12

    move-wide v6, v14

    invoke-static/range {v2 .. v7}, Landroid/app/MiuiSplitUtils;->calculateColumnsNumber(Landroid/app/Activity;IDD)I

    move-result v2

    if-ne v2, v11, :cond_40

    move v0, v10

    :cond_40
    return v0
.end method

.method private static blacklist isScreenPotrait(Landroid/app/Activity;)Z
    .registers 3
    .param p0, "activity"    # Landroid/app/Activity;

    .line 95
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 96
    .local v0, "orientation":I
    if-eqz v0, :cond_14

    const/4 v1, 0x2

    if-ne v0, v1, :cond_12

    goto :goto_14

    :cond_12
    const/4 v1, 0x0

    goto :goto_15

    :cond_14
    :goto_14
    const/4 v1, 0x1

    :goto_15
    return v1
.end method
