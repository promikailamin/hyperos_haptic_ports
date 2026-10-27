.class public Landroid/view/animation/DensityUtil;
.super Ljava/lang/Object;
.source "DensityUtil.java"


# static fields
.field private static final blacklist DEFAULT_DPI:I

.field public static final blacklist IS_FOLD:Z

.field public static final blacklist IS_TABLET:Z

.field private static final blacklist STANDARD_DPI:F = 440.0f

.field private static final blacklist STANDARD_PPI:F = 386.0f

.field private static final blacklist STANDARD_SCALE:F = 1.1398964f


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 21
    const-string v0, "persist.sys.muiltdisplay_type"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    move v0, v1

    :goto_d
    sput-boolean v0, Landroid/view/animation/DensityUtil;->IS_FOLD:Z

    .line 22
    const-string v0, "ro.build.characteristics"

    const-string v2, ""

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "tablet"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Landroid/view/animation/DensityUtil;->IS_TABLET:Z

    .line 24
    invoke-static {v1}, Landroid/view/animation/DensityUtil;->getCurrentDisplayDensity(I)I

    move-result v0

    sput v0, Landroid/view/animation/DensityUtil;->DEFAULT_DPI:I

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist calcPadScale(Landroid/content/Context;)F
    .registers 6
    .param p0, "context"    # Landroid/content/Context;

    .line 141
    invoke-static {p0}, Landroid/view/animation/DensityUtil;->getMaxSizeInch(Landroid/content/Context;)F

    move-result v0

    .line 142
    .local v0, "maxsizeInch":F
    const v1, 0x4114cccd    # 9.3f

    div-float v1, v0, v1

    .line 143
    .local v1, "scale":F
    invoke-static {}, Landroid/view/animation/DensityUtil;->isDagu()Z

    move-result v2

    const v3, 0x3f87ae14    # 1.06f

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v2, :cond_1a

    .line 145
    mul-float/2addr v3, v1

    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    return v2

    .line 147
    :cond_1a
    mul-float/2addr v3, v1

    const v2, 0x3f933333    # 1.15f

    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    return v2
.end method

.method private static blacklist calcPhoneScale(Landroid/content/Context;)F
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 131
    invoke-static {p0}, Landroid/view/animation/DensityUtil;->getMinSizeInch(Landroid/content/Context;)F

    move-result v0

    .line 132
    .local v0, "minsizeInch":F
    const v1, 0x402ccccd    # 2.7f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_11

    .line 133
    const v1, 0x40333333    # 2.8f

    div-float v1, v0, v1

    .local v1, "scale":F
    goto :goto_13

    .line 135
    .end local v1    # "scale":F
    :cond_11
    const/high16 v1, 0x3f800000    # 1.0f

    .line 137
    .restart local v1    # "scale":F
    :goto_13
    return v1
.end method

.method private static blacklist getAccessibilityDelta(Landroid/content/Context;)F
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .line 85
    const/high16 v0, 0x3f800000    # 1.0f

    .line 86
    .local v0, "delta":F
    sget v1, Landroid/view/animation/DensityUtil;->DEFAULT_DPI:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1f

    .line 87
    sget v1, Landroid/view/animation/DensityUtil;->DEFAULT_DPI:I

    .line 89
    .local v1, "accessibilityDensity":I
    :try_start_9
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "display_density_forced"

    invoke-static {v2, v3}, Lmiui/util/ExtraSettings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2
    :try_end_13
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_9 .. :try_end_13} :catch_15

    move v1, v2

    .line 91
    goto :goto_16

    .line 90
    :catch_15
    move-exception v2

    .line 92
    :goto_16
    int-to-float v2, v1

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v2, v3

    sget v3, Landroid/view/animation/DensityUtil;->DEFAULT_DPI:I

    int-to-float v3, v3

    div-float v0, v2, v3

    .line 94
    .end local v1    # "accessibilityDensity":I
    :cond_1f
    return v0
.end method

.method private static blacklist getCurrentDisplayDensity(I)I
    .registers 8
    .param p0, "displayId"    # I

    .line 99
    :try_start_0
    const-string v0, "persist.sys.miui_resolution"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, "screenResolution":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3d

    .line 101
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 102
    .local v1, "initalPoint":Landroid/graphics/Point;
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v2

    .line 103
    .local v2, "wm":Landroid/view/IWindowManager;
    const/4 v3, 0x0

    invoke-interface {v2, v3, v1}, Landroid/view/IWindowManager;->getInitialDisplaySize(ILandroid/graphics/Point;)V

    .line 104
    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v3, v4, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 105
    .local v3, "width":I
    invoke-interface {v2, p0}, Landroid/view/IWindowManager;->getInitialDisplayDensity(I)I

    move-result v4

    .line 106
    .local v4, "initialDensity":I
    mul-int v5, v4, v3

    int-to-float v5, v5

    const/high16 v6, 0x3f800000    # 1.0f

    mul-float/2addr v5, v6

    iget v6, v1, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    return v5

    .line 108
    .end local v1    # "initalPoint":Landroid/graphics/Point;
    .end local v2    # "wm":Landroid/view/IWindowManager;
    .end local v3    # "width":I
    .end local v4    # "initialDensity":I
    :cond_3d
    invoke-static {p0}, Landroid/view/animation/DensityUtil;->getDefaultDisplayDensity(I)I

    move-result v1
    :try_end_41
    .catchall {:try_start_0 .. :try_end_41} :catchall_42

    return v1

    .line 110
    .end local v0    # "screenResolution":Ljava/lang/String;
    :catchall_42
    move-exception v0

    .line 111
    .local v0, "exc":Ljava/lang/Throwable;
    const/4 v1, -0x1

    return v1
.end method

.method private static blacklist getDefaultDisplayDensity(I)I
    .registers 3
    .param p0, "displayId"    # I

    .line 117
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    .line 118
    .local v0, "wm":Landroid/view/IWindowManager;
    invoke-interface {v0, p0}, Landroid/view/IWindowManager;->getInitialDisplayDensity(I)I

    move-result v1
    :try_end_8
    .catchall {:try_start_0 .. :try_end_8} :catchall_9

    return v1

    .line 119
    .end local v0    # "wm":Landroid/view/IWindowManager;
    :catchall_9
    move-exception v0

    .line 120
    .local v0, "exc":Ljava/lang/Throwable;
    const/4 v1, -0x1

    return v1
.end method

.method public static blacklist getDensity(Landroid/content/Context;IZ)Landroid/util/DisplayMetrics;
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ppi"    # I
    .param p2, "isAutoDpi"    # Z

    .line 27
    invoke-static {p0}, Landroid/view/animation/DensityUtil;->getDeviceScale(Landroid/content/Context;)F

    move-result v0

    .line 28
    .local v0, "deviceScale":F
    invoke-static {p0}, Landroid/view/animation/DensityUtil;->getAccessibilityDelta(Landroid/content/Context;)F

    move-result v1

    mul-float/2addr v0, v1

    .line 29
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 30
    .local v1, "displayMetrics":Landroid/util/DisplayMetrics;
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 31
    .local v2, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v2, v1}, Landroid/util/DisplayMetrics;->setTo(Landroid/util/DisplayMetrics;)V

    .line 32
    if-eqz p2, :cond_37

    .line 33
    int-to-float v3, p1

    invoke-static {}, Landroid/view/animation/DensityUtil;->getStandardScalescale()F

    move-result v4

    mul-float/2addr v3, v4

    mul-float/2addr v3, v0

    float-to-int v3, v3

    .line 34
    .local v3, "targetDpi":I
    int-to-float v4, v3

    const/high16 v5, 0x3f800000    # 1.0f

    mul-float/2addr v4, v5

    iget v5, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    .line 35
    .local v4, "scale":F
    iput v3, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 36
    iget v5, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v5, v4

    iput v5, v2, Landroid/util/DisplayMetrics;->density:F

    .line 37
    iget v5, v2, Landroid/util/DisplayMetrics;->scaledDensity:F

    mul-float/2addr v5, v4

    iput v5, v2, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 39
    .end local v3    # "targetDpi":I
    .end local v4    # "scale":F
    :cond_37
    return-object v2
.end method

.method private static blacklist getDeviceScale(Landroid/content/Context;)F
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 66
    invoke-static {}, Landroid/view/animation/SkuScale;->hasSkuScale()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 67
    invoke-static {p0}, Landroid/view/animation/SkuScale;->getSkuScale(Landroid/content/Context;)F

    move-result v0

    .local v0, "scale":F
    goto :goto_2e

    .line 68
    .end local v0    # "scale":F
    :cond_b
    invoke-static {}, Landroid/view/animation/DeviceHelper;->isFoldDevice()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 70
    invoke-static {}, Landroid/view/animation/DensityUtil;->isCetus()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 71
    const/high16 v0, 0x3f800000    # 1.0f

    .restart local v0    # "scale":F
    goto :goto_2e

    .line 74
    .end local v0    # "scale":F
    :cond_1a
    invoke-static {p0}, Landroid/view/animation/DensityUtil;->calcPhoneScale(Landroid/content/Context;)F

    move-result v0

    .restart local v0    # "scale":F
    goto :goto_2e

    .line 76
    .end local v0    # "scale":F
    :cond_1f
    invoke-static {p0}, Landroid/view/animation/DeviceHelper;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 77
    invoke-static {p0}, Landroid/view/animation/DensityUtil;->calcPadScale(Landroid/content/Context;)F

    move-result v0

    .restart local v0    # "scale":F
    goto :goto_2e

    .line 79
    .end local v0    # "scale":F
    :cond_2a
    invoke-static {p0}, Landroid/view/animation/DensityUtil;->calcPhoneScale(Landroid/content/Context;)F

    move-result v0

    .line 81
    .restart local v0    # "scale":F
    :goto_2e
    return v0
.end method

.method private static blacklist getMaxSizeInch(Landroid/content/Context;)F
    .registers 10
    .param p0, "context"    # Landroid/content/Context;

    .line 157
    invoke-static {p0}, Landroid/view/animation/DensityUtil;->getPhysicalSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v0

    .line 158
    .local v0, "point":Landroid/graphics/Point;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 159
    .local v1, "dm":Landroid/util/DisplayMetrics;
    iget v2, v1, Landroid/util/DisplayMetrics;->xdpi:F

    iget v3, v1, Landroid/util/DisplayMetrics;->ydpi:F

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 160
    .local v2, "longDpi":F
    iget v3, v1, Landroid/util/DisplayMetrics;->xdpi:F

    iget v4, v1, Landroid/util/DisplayMetrics;->ydpi:F

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 161
    .local v3, "shortDpi":F
    iget v4, v0, Landroid/graphics/Point;->x:I

    iget v5, v0, Landroid/graphics/Point;->y:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-float v4, v4

    .line 162
    .local v4, "longPoint":F
    iget v5, v0, Landroid/graphics/Point;->x:I

    iget v6, v0, Landroid/graphics/Point;->y:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    int-to-float v5, v5

    .line 163
    .local v5, "shortPoint":F
    div-float v6, v4, v2

    .line 164
    .local v6, "physicalX":F
    div-float v7, v5, v3

    .line 165
    .local v7, "physicalY":F
    invoke-static {v7, v6}, Ljava/lang/Math;->max(FF)F

    move-result v8

    return v8
.end method

.method private static blacklist getMinSizeInch(Landroid/content/Context;)F
    .registers 10
    .param p0, "context"    # Landroid/content/Context;

    .line 169
    invoke-static {p0}, Landroid/view/animation/DensityUtil;->getPhysicalSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v0

    .line 170
    .local v0, "point":Landroid/graphics/Point;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 171
    .local v1, "dm":Landroid/util/DisplayMetrics;
    iget v2, v1, Landroid/util/DisplayMetrics;->xdpi:F

    iget v3, v1, Landroid/util/DisplayMetrics;->ydpi:F

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 172
    .local v2, "longDpi":F
    iget v3, v1, Landroid/util/DisplayMetrics;->xdpi:F

    iget v4, v1, Landroid/util/DisplayMetrics;->ydpi:F

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 173
    .local v3, "shortDpi":F
    iget v4, v0, Landroid/graphics/Point;->x:I

    iget v5, v0, Landroid/graphics/Point;->y:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-float v4, v4

    .line 174
    .local v4, "longPoint":F
    iget v5, v0, Landroid/graphics/Point;->x:I

    iget v6, v0, Landroid/graphics/Point;->y:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    int-to-float v5, v5

    .line 175
    .local v5, "shortPoint":F
    div-float v6, v4, v2

    .line 176
    .local v6, "physicalX":F
    div-float v7, v5, v3

    .line 177
    .local v7, "physicalY":F
    invoke-static {v7, v6}, Ljava/lang/Math;->min(FF)F

    move-result v8

    return v8
.end method

.method public static blacklist getPPIOfDevice(Landroid/content/Context;)I
    .registers 21
    .param p0, "context"    # Landroid/content/Context;

    .line 48
    invoke-static/range {p0 .. p0}, Landroid/view/animation/DensityUtil;->getPhysicalSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v0

    .line 49
    .local v0, "point":Landroid/graphics/Point;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 50
    .local v1, "dm":Landroid/util/DisplayMetrics;
    iget v2, v1, Landroid/util/DisplayMetrics;->xdpi:F

    iget v3, v1, Landroid/util/DisplayMetrics;->ydpi:F

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 51
    .local v2, "longDpi":F
    iget v3, v1, Landroid/util/DisplayMetrics;->xdpi:F

    iget v4, v1, Landroid/util/DisplayMetrics;->ydpi:F

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 52
    .local v3, "shortDpi":F
    iget v4, v0, Landroid/graphics/Point;->x:I

    iget v5, v0, Landroid/graphics/Point;->y:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-float v4, v4

    .line 53
    .local v4, "longPoint":F
    iget v5, v0, Landroid/graphics/Point;->x:I

    iget v6, v0, Landroid/graphics/Point;->y:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    int-to-float v5, v5

    .line 54
    .local v5, "shortPoint":F
    div-float v6, v4, v2

    .line 55
    .local v6, "physicalX":F
    div-float v7, v5, v3

    .line 57
    .local v7, "physicalY":F
    float-to-double v8, v6

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    .line 58
    .local v8, "x":D
    float-to-double v12, v7

    invoke-static {v12, v13, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    .line 59
    .local v12, "y":D
    add-double v14, v8, v12

    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v14

    .line 61
    .local v14, "screenInches":D
    move-object/from16 v16, v0

    move-object/from16 v17, v1

    .end local v0    # "point":Landroid/graphics/Point;
    .end local v1    # "dm":Landroid/util/DisplayMetrics;
    .local v16, "point":Landroid/graphics/Point;
    .local v17, "dm":Landroid/util/DisplayMetrics;
    float-to-double v0, v4

    invoke-static {v0, v1, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    move/from16 v18, v2

    move/from16 v19, v3

    .end local v2    # "longDpi":F
    .end local v3    # "shortDpi":F
    .local v18, "longDpi":F
    .local v19, "shortDpi":F
    float-to-double v2, v5

    invoke-static {v2, v3, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    div-double/2addr v0, v14

    double-to-int v0, v0

    return v0
.end method

.method private static blacklist getPhysicalSize(Landroid/content/Context;)Landroid/graphics/Point;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 181
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 182
    .local v0, "point":Landroid/graphics/Point;
    invoke-static {p0}, Landroid/view/animation/DensityUtil;->getWindowManager(Landroid/content/Context;)Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 183
    return-object v0
.end method

.method public static blacklist getStandardScalescale()F
    .registers 1

    .line 44
    const v0, 0x3f91e820

    return v0
.end method

.method private static blacklist getWindowManager(Landroid/content/Context;)Landroid/view/WindowManager;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 187
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    return-object v0
.end method

.method private static blacklist isCetus()Z
    .registers 2

    .line 125
    const-string v0, "ro.product.device"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, "deviceName":Ljava/lang/String;
    const-string v1, "cetus"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    return v1
.end method

.method private static blacklist isDagu()Z
    .registers 2

    .line 152
    const-string v0, "ro.product.device"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 153
    .local v0, "deviceName":Ljava/lang/String;
    const-string v1, "dagu"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    return v1
.end method
