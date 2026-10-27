.class public Landroid/util/GMSDownscaleStubImpl;
.super Landroid/util/GMSDownscaleStub;
.source "GMSDownscaleStubImpl.java"


# instance fields
.field private final blacklist STATUS_BAR_HEIGHT_FHD:I

.field private final blacklist STATUS_BAR_HEIGHT_WQHD:I

.field public blacklist mPackageName:Ljava/lang/String;

.field private blacklist mStatusBarId:I

.field public blacklist miuiCompatInfo:Landroid/content/res/CompatibilityInfo;

.field public blacklist miuiConfiguration:Landroid/content/res/Configuration;

.field blacklist padImpl:Landroid/util/GMSDownscalePadImpl;

.field private blacklist statusBarHeight:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 25
    invoke-direct {p0}, Landroid/util/GMSDownscaleStub;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Landroid/util/GMSDownscaleStubImpl;->mStatusBarId:I

    .line 28
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    iput-object v1, p0, Landroid/util/GMSDownscaleStubImpl;->miuiConfiguration:Landroid/content/res/Configuration;

    .line 29
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/util/GMSDownscaleStubImpl;->mPackageName:Ljava/lang/String;

    .line 30
    iput v0, p0, Landroid/util/GMSDownscaleStubImpl;->statusBarHeight:I

    .line 31
    new-instance v0, Landroid/util/GMSDownscalePadImpl;

    invoke-direct {v0}, Landroid/util/GMSDownscalePadImpl;-><init>()V

    iput-object v0, p0, Landroid/util/GMSDownscaleStubImpl;->padImpl:Landroid/util/GMSDownscalePadImpl;

    .line 32
    const/16 v0, 0x51

    iput v0, p0, Landroid/util/GMSDownscaleStubImpl;->STATUS_BAR_HEIGHT_FHD:I

    .line 33
    const/16 v0, 0x6c

    iput v0, p0, Landroid/util/GMSDownscaleStubImpl;->STATUS_BAR_HEIGHT_WQHD:I

    return-void
.end method


# virtual methods
.method public blacklist adapterLandscapeForDisplayMetrics(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V
    .registers 5
    .param p1, "configuration"    # Landroid/content/res/Configuration;
    .param p2, "metrics"    # Landroid/util/DisplayMetrics;

    .line 193
    sget-boolean v0, Landroid/util/GMSDownscaleStubImpl;->sIsMiuiWindowDownScale:Z

    if-nez v0, :cond_5

    .line 194
    return-void

    .line 195
    :cond_5
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v0, :cond_a

    .line 196
    return-void

    .line 198
    :cond_a
    if-eqz p1, :cond_21

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_21

    iget-object v0, p0, Landroid/util/GMSDownscaleStubImpl;->miuiConfiguration:Landroid/content/res/Configuration;

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_21

    .line 200
    iget v0, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 201
    .local v0, "temp":I
    iget v1, p2, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 202
    iput v0, p2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 204
    .end local v0    # "temp":I
    :cond_21
    return-void
.end method

.method public blacklist adapterToEmbeddingConfiguration(Landroid/content/res/Configuration;)Z
    .registers 4
    .param p1, "inoutConfig"    # Landroid/content/res/Configuration;

    .line 237
    sget-boolean v0, Landroid/util/GMSDownscaleStubImpl;->sIsMiuiWindowDownScale:Z

    if-eqz v0, :cond_1f

    .line 238
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v0, :cond_f

    .line 239
    iget-object v0, p0, Landroid/util/GMSDownscaleStubImpl;->padImpl:Landroid/util/GMSDownscalePadImpl;

    invoke-virtual {v0, p1}, Landroid/util/GMSDownscalePadImpl;->adapterToEmbeddingConfiguration(Landroid/content/res/Configuration;)Z

    move-result v0

    return v0

    .line 241
    :cond_f
    if-eqz p1, :cond_1f

    iget-object v0, p0, Landroid/util/GMSDownscaleStubImpl;->miuiConfiguration:Landroid/content/res/Configuration;

    if-eqz v0, :cond_1f

    iget v0, p1, Landroid/content/res/Configuration;->densityDpi:I

    iget-object v1, p0, Landroid/util/GMSDownscaleStubImpl;->miuiConfiguration:Landroid/content/res/Configuration;

    iget v1, v1, Landroid/content/res/Configuration;->densityDpi:I

    if-ge v0, v1, :cond_1f

    .line 243
    const/4 v0, 0x1

    return v0

    .line 247
    :cond_1f
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist applyToConfiguration(Landroid/content/res/Configuration;Landroid/view/DisplayAdjustments;Landroid/content/res/Configuration;II)Z
    .registers 13
    .param p1, "mConfiguration"    # Landroid/content/res/Configuration;
    .param p2, "mDisplayAdjustments"    # Landroid/view/DisplayAdjustments;
    .param p3, "mTmpConfig"    # Landroid/content/res/Configuration;
    .param p4, "density"    # I
    .param p5, "widthPixels"    # I

    .line 148
    iget-object v0, p0, Landroid/util/GMSDownscaleStubImpl;->miuiCompatInfo:Landroid/content/res/CompatibilityInfo;

    if-eqz v0, :cond_6b

    sget-boolean v0, Landroid/util/GMSDownscaleStubImpl;->sIsMiuiWindowDownScale:Z

    if-eqz v0, :cond_6b

    iget-object v0, p0, Landroid/util/GMSDownscaleStubImpl;->miuiConfiguration:Landroid/content/res/Configuration;

    if-eqz v0, :cond_6b

    .line 149
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v0, :cond_1c

    .line 150
    iget-object v1, p0, Landroid/util/GMSDownscaleStubImpl;->padImpl:Landroid/util/GMSDownscalePadImpl;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Landroid/util/GMSDownscalePadImpl;->applyToConfiguration(Landroid/content/res/Configuration;Landroid/view/DisplayAdjustments;Landroid/content/res/Configuration;II)Z

    move-result v0

    return v0

    .line 152
    :cond_1c
    iget-object v0, p0, Landroid/util/GMSDownscaleStubImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mTmpConfig.densityDpi = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p3, Landroid/content/res/Configuration;->densityDpi:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", miuiConfiguration.densityDpi = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/util/GMSDownscaleStubImpl;->miuiConfiguration:Landroid/content/res/Configuration;

    iget v2, v2, Landroid/content/res/Configuration;->densityDpi:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget v0, p3, Landroid/content/res/Configuration;->densityDpi:I

    iget-object v1, p0, Landroid/util/GMSDownscaleStubImpl;->miuiConfiguration:Landroid/content/res/Configuration;

    iget v1, v1, Landroid/content/res/Configuration;->densityDpi:I

    if-ne v0, v1, :cond_51

    .line 156
    iget-object v0, p0, Landroid/util/GMSDownscaleStubImpl;->miuiCompatInfo:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {v0, p4, p3}, Landroid/content/res/CompatibilityInfo;->applyToConfiguration(ILandroid/content/res/Configuration;)V

    .line 158
    :cond_51
    iget-object v0, p0, Landroid/util/GMSDownscaleStubImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "applyToConfiguration 163 -------- mTmpConfig = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    const/4 v0, 0x1

    return v0

    .line 161
    :cond_6b
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist applyToDisplayMetricsForDownscale(Landroid/util/DisplayMetrics;)V
    .registers 10
    .param p1, "inoutDm"    # Landroid/util/DisplayMetrics;

    .line 37
    sget-boolean v0, Landroid/util/GMSDownscaleStubImpl;->sIsMiuiWindowDownScale:Z

    if-nez v0, :cond_5

    .line 38
    return-void

    .line 39
    :cond_5
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v0, :cond_f

    .line 40
    iget-object v0, p0, Landroid/util/GMSDownscaleStubImpl;->padImpl:Landroid/util/GMSDownscalePadImpl;

    invoke-virtual {v0, p1}, Landroid/util/GMSDownscalePadImpl;->applyToDisplayMetricsForDownscale(Landroid/util/DisplayMetrics;)V

    .line 41
    return-void

    .line 43
    :cond_f
    iget-object v0, p0, Landroid/util/GMSDownscaleStubImpl;->miuiConfiguration:Landroid/content/res/Configuration;

    .line 44
    .local v0, "configuration":Landroid/content/res/Configuration;
    iget-object v1, p0, Landroid/util/GMSDownscaleStubImpl;->miuiCompatInfo:Landroid/content/res/CompatibilityInfo;

    .line 45
    .local v1, "compatibilityInfo":Landroid/content/res/CompatibilityInfo;
    if-eqz v1, :cond_56

    if-eqz v0, :cond_56

    iget-object v2, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v2

    if-eqz v2, :cond_56

    .line 46
    iget-object v2, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 47
    .local v2, "appBounds":Landroid/graphics/Rect;
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-eqz v3, :cond_56

    .line 48
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 49
    .local v3, "width":I
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v4

    .line 51
    .local v4, "height":I
    iget v5, v1, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    .line 52
    .local v5, "appInvertedScale":F
    sget v6, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    int-to-float v6, v6

    const/high16 v7, 0x43200000    # 160.0f

    div-float/2addr v6, v7

    mul-float/2addr v6, v5

    iput v6, p1, Landroid/util/DisplayMetrics;->density:F

    .line 53
    int-to-float v6, v3

    mul-float/2addr v6, v5

    float-to-int v6, v6

    iput v6, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 54
    int-to-float v6, v4

    mul-float/2addr v6, v5

    float-to-int v6, v6

    iput v6, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 55
    iget v6, p1, Landroid/util/DisplayMetrics;->density:F

    iput v6, p1, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 56
    sget v6, Landroid/util/MiuiDisplayMetrics;->DENSITY_DEVICE:I

    int-to-float v6, v6

    mul-float/2addr v6, v5

    iput v6, p1, Landroid/util/DisplayMetrics;->xdpi:F

    .line 57
    iget v6, p1, Landroid/util/DisplayMetrics;->xdpi:F

    iput v6, p1, Landroid/util/DisplayMetrics;->ydpi:F

    .line 60
    .end local v2    # "appBounds":Landroid/graphics/Rect;
    .end local v3    # "width":I
    .end local v4    # "height":I
    .end local v5    # "appInvertedScale":F
    :cond_56
    return-void
.end method

.method public blacklist applyToPointForDownscale(Landroid/content/res/Configuration;Landroid/graphics/Point;)V
    .registers 10
    .param p1, "configuration"    # Landroid/content/res/Configuration;
    .param p2, "outSize"    # Landroid/graphics/Point;

    .line 64
    iget-object v0, p0, Landroid/util/GMSDownscaleStubImpl;->miuiCompatInfo:Landroid/content/res/CompatibilityInfo;

    if-eqz v0, :cond_6f

    if-nez p2, :cond_7

    goto :goto_6f

    .line 65
    :cond_7
    sget-boolean v0, Landroid/util/GMSDownscaleStubImpl;->sIsMiuiWindowDownScale:Z

    if-eqz v0, :cond_6e

    iget-object v0, p0, Landroid/util/GMSDownscaleStubImpl;->miuiConfiguration:Landroid/content/res/Configuration;

    if-eqz v0, :cond_6e

    .line 66
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v0, :cond_19

    .line 67
    iget-object v0, p0, Landroid/util/GMSDownscaleStubImpl;->padImpl:Landroid/util/GMSDownscalePadImpl;

    invoke-virtual {v0, p1, p2}, Landroid/util/GMSDownscalePadImpl;->applyToPointForDownscale(Landroid/content/res/Configuration;Landroid/graphics/Point;)V

    .line 68
    return-void

    .line 71
    :cond_19
    iget-object v0, p0, Landroid/util/GMSDownscaleStubImpl;->miuiConfiguration:Landroid/content/res/Configuration;

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getMaxBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 73
    .local v0, "maxBounds":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-eqz v1, :cond_56

    .line 74
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 75
    .local v1, "width":I
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 77
    .local v2, "height":I
    iget-object v3, p0, Landroid/util/GMSDownscaleStubImpl;->miuiCompatInfo:Landroid/content/res/CompatibilityInfo;

    iget v3, v3, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    .line 78
    .local v3, "appInvertedScale":F
    const/4 v4, 0x0

    .line 79
    .local v4, "landscape":Z
    if-eqz p1, :cond_44

    iget v5, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_44

    iget-object v5, p0, Landroid/util/GMSDownscaleStubImpl;->miuiConfiguration:Landroid/content/res/Configuration;

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    iget v6, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v5, v6, :cond_44

    .line 81
    const/4 v4, 0x1

    .line 84
    :cond_44
    if-eqz v4, :cond_48

    int-to-float v5, v2

    goto :goto_49

    :cond_48
    int-to-float v5, v1

    :goto_49
    mul-float/2addr v5, v3

    float-to-int v5, v5

    iput v5, p2, Landroid/graphics/Point;->x:I

    .line 85
    if-eqz v4, :cond_51

    int-to-float v5, v1

    goto :goto_52

    :cond_51
    int-to-float v5, v2

    :goto_52
    mul-float/2addr v5, v3

    float-to-int v5, v5

    iput v5, p2, Landroid/graphics/Point;->y:I

    .line 87
    .end local v1    # "width":I
    .end local v2    # "height":I
    .end local v3    # "appInvertedScale":F
    .end local v4    # "landscape":Z
    :cond_56
    iget-object v1, p0, Landroid/util/GMSDownscaleStubImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "applyToPointForDownscale 86 outSize: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    .end local v0    # "maxBounds":Landroid/graphics/Rect;
    :cond_6e
    return-void

    .line 64
    :cond_6f
    :goto_6f
    return-void
.end method

.method public blacklist getCompatInfo()Landroid/content/res/CompatibilityInfo;
    .registers 2

    .line 129
    iget-object v0, p0, Landroid/util/GMSDownscaleStubImpl;->miuiCompatInfo:Landroid/content/res/CompatibilityInfo;

    return-object v0
.end method

.method public blacklist getConfiguration()Landroid/content/res/Configuration;
    .registers 2

    .line 143
    iget-object v0, p0, Landroid/util/GMSDownscaleStubImpl;->miuiConfiguration:Landroid/content/res/Configuration;

    return-object v0
.end method

.method public blacklist getDownscaleDensity(I)I
    .registers 4
    .param p1, "sDefaultDensity"    # I

    .line 174
    const/high16 v0, 0x3f800000    # 1.0f

    .line 175
    .local v0, "applicationInvertedScale":F
    iget-object v1, p0, Landroid/util/GMSDownscaleStubImpl;->miuiCompatInfo:Landroid/content/res/CompatibilityInfo;

    if-eqz v1, :cond_19

    .line 176
    sget-boolean v1, Landroid/util/GMSDownscaleStubImpl;->sIsMiuiWindowDownScale:Z

    if-eqz v1, :cond_e

    .line 177
    iget-object v1, p0, Landroid/util/GMSDownscaleStubImpl;->miuiCompatInfo:Landroid/content/res/CompatibilityInfo;

    iget v0, v1, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    .line 183
    :cond_e
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_18

    .line 184
    int-to-float v1, p1

    mul-float/2addr v1, v0

    float-to-int p1, v1

    .line 185
    return p1

    .line 187
    :cond_18
    return p1

    .line 180
    :cond_19
    const/4 v1, -0x1

    return v1
.end method

.method public blacklist getInsets(Landroid/graphics/Insets;I)Landroid/graphics/Insets;
    .registers 7
    .param p1, "result"    # Landroid/graphics/Insets;
    .param p2, "typeMask"    # I

    .line 266
    sget-boolean v0, Landroid/util/GMSDownscaleStubImpl;->sIsMiuiWindowDownScale:Z

    if-eqz v0, :cond_32

    iget-object v0, p0, Landroid/util/GMSDownscaleStubImpl;->miuiCompatInfo:Landroid/content/res/CompatibilityInfo;

    if-eqz v0, :cond_32

    if-eqz p1, :cond_32

    .line 267
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v0

    and-int/2addr v0, p2

    if-eqz v0, :cond_32

    .line 268
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->inFreeForm()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 269
    iget v0, p1, Landroid/graphics/Insets;->left:I

    iget v1, p1, Landroid/graphics/Insets;->top:I

    int-to-float v1, v1

    iget-object v2, p0, Landroid/util/GMSDownscaleStubImpl;->miuiCompatInfo:Landroid/content/res/CompatibilityInfo;

    iget v2, v2, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    iget v2, p1, Landroid/graphics/Insets;->right:I

    iget v3, p1, Landroid/graphics/Insets;->bottom:I

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v0

    return-object v0

    .line 274
    :cond_32
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getStatusBarHeightForDownscale(ILandroid/content/res/CompatibilityInfo;Landroid/content/res/Resources;)I
    .registers 8
    .param p1, "id"    # I
    .param p2, "compatibilityInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p3, "resources"    # Landroid/content/res/Resources;

    .line 93
    iget-object v0, p0, Landroid/util/GMSDownscaleStubImpl;->miuiCompatInfo:Landroid/content/res/CompatibilityInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_68

    if-nez p3, :cond_8

    goto :goto_68

    .line 94
    :cond_8
    iget v0, p0, Landroid/util/GMSDownscaleStubImpl;->mStatusBarId:I

    if-nez v0, :cond_18

    .line 95
    const-string v0, "status_bar_height"

    const-string v2, "dimen"

    const-string v3, "android"

    invoke-virtual {p3, v0, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/util/GMSDownscaleStubImpl;->mStatusBarId:I

    .line 98
    :cond_18
    iget v0, p0, Landroid/util/GMSDownscaleStubImpl;->mStatusBarId:I

    if-ne p1, v0, :cond_67

    sget-boolean v0, Landroid/util/GMSDownscaleStubImpl;->sIsMiuiWindowDownScale:Z

    if-eqz v0, :cond_67

    .line 99
    iget v0, p0, Landroid/util/GMSDownscaleStubImpl;->statusBarHeight:I

    if-eqz v0, :cond_25

    .line 100
    return v0

    .line 103
    :cond_25
    iget-object v0, p0, Landroid/util/GMSDownscaleStubImpl;->miuiConfiguration:Landroid/content/res/Configuration;

    if-eqz v0, :cond_5c

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    if-eqz v0, :cond_5c

    .line 104
    iget-object v0, p0, Landroid/util/GMSDownscaleStubImpl;->miuiConfiguration:Landroid/content/res/Configuration;

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 105
    .local v0, "maxBounds":Landroid/graphics/Rect;
    if-eqz v0, :cond_4a

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    const/16 v2, 0x5a0

    if-ne v1, v2, :cond_4a

    .line 106
    const/high16 v1, 0x42d80000    # 108.0f

    iget-object v2, p0, Landroid/util/GMSDownscaleStubImpl;->miuiCompatInfo:Landroid/content/res/CompatibilityInfo;

    iget v2, v2, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    mul-float/2addr v2, v1

    float-to-int v1, v2

    iput v1, p0, Landroid/util/GMSDownscaleStubImpl;->statusBarHeight:I

    .line 107
    return v1

    .line 108
    :cond_4a
    if-eqz v0, :cond_5c

    iget v1, v0, Landroid/graphics/Rect;->top:I

    if-eqz v1, :cond_5c

    .line 109
    iget v1, v0, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iget-object v2, p0, Landroid/util/GMSDownscaleStubImpl;->miuiCompatInfo:Landroid/content/res/CompatibilityInfo;

    iget v2, v2, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Landroid/util/GMSDownscaleStubImpl;->statusBarHeight:I

    .line 110
    return v1

    .line 113
    .end local v0    # "maxBounds":Landroid/graphics/Rect;
    :cond_5c
    const/high16 v0, 0x42a20000    # 81.0f

    iget-object v1, p0, Landroid/util/GMSDownscaleStubImpl;->miuiCompatInfo:Landroid/content/res/CompatibilityInfo;

    iget v1, v1, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    mul-float/2addr v1, v0

    float-to-int v0, v1

    iput v0, p0, Landroid/util/GMSDownscaleStubImpl;->statusBarHeight:I

    .line 114
    return v0

    .line 116
    :cond_67
    return v1

    .line 93
    :cond_68
    :goto_68
    return v1
.end method

.method public blacklist handleConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 5
    .param p1, "config"    # Landroid/content/res/Configuration;

    .line 208
    sget-boolean v0, Landroid/util/GMSDownscaleStubImpl;->sIsMiuiWindowDownScale:Z

    if-nez v0, :cond_5

    return-void

    .line 209
    :cond_5
    if-eqz p1, :cond_bf

    iget-object v0, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    if-nez v0, :cond_d

    goto/16 :goto_bf

    .line 210
    :cond_d
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v0, :cond_4e

    iget-object v0, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 211
    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_23

    iget-object v0, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 212
    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4e

    .line 213
    :cond_23
    iget-object v0, p0, Landroid/util/GMSDownscaleStubImpl;->miuiConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 214
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v0, :cond_35

    iget-object v0, p0, Landroid/util/GMSDownscaleStubImpl;->padImpl:Landroid/util/GMSDownscalePadImpl;

    if-eqz v0, :cond_35

    .line 215
    iget-object v1, p0, Landroid/util/GMSDownscaleStubImpl;->miuiConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, v1}, Landroid/util/GMSDownscalePadImpl;->setConfiguration(Landroid/content/res/Configuration;)V

    .line 217
    :cond_35
    iget-object v0, p0, Landroid/util/GMSDownscaleStubImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleConfigurationChanged 220 configuration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    return-void

    .line 220
    :cond_4e
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-nez v0, :cond_7b

    iget-object v0, p0, Landroid/util/GMSDownscaleStubImpl;->miuiConfiguration:Landroid/content/res/Configuration;

    if-eqz v0, :cond_7b

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iget-object v1, p0, Landroid/util/GMSDownscaleStubImpl;->miuiConfiguration:Landroid/content/res/Configuration;

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_7b

    .line 222
    iget-object v0, p0, Landroid/util/GMSDownscaleStubImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleConfigurationChanged 213 configuration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iget-object v0, p0, Landroid/util/GMSDownscaleStubImpl;->miuiConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 225
    :cond_7b
    const/4 v0, 0x0

    const-string v1, "persist.sys.muiltdisplay_type"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_be

    iget-object v0, p0, Landroid/util/GMSDownscaleStubImpl;->miuiConfiguration:Landroid/content/res/Configuration;

    if-eqz v0, :cond_be

    iget-object v0, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 227
    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getMaxBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Landroid/util/GMSDownscaleStubImpl;->miuiConfiguration:Landroid/content/res/Configuration;

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 228
    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getMaxBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-ne v0, v1, :cond_b9

    iget-object v0, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 229
    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getMaxBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget-object v1, p0, Landroid/util/GMSDownscaleStubImpl;->miuiConfiguration:Landroid/content/res/Configuration;

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 230
    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getMaxBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-eq v0, v1, :cond_be

    .line 231
    :cond_b9
    iget-object v0, p0, Landroid/util/GMSDownscaleStubImpl;->miuiConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 233
    :cond_be
    return-void

    .line 209
    :cond_bf
    :goto_bf
    return-void
.end method

.method public blacklist setCompatInfo(Landroid/content/res/CompatibilityInfo;)V
    .registers 3
    .param p1, "compatInfo"    # Landroid/content/res/CompatibilityInfo;

    .line 121
    iput-object p1, p0, Landroid/util/GMSDownscaleStubImpl;->miuiCompatInfo:Landroid/content/res/CompatibilityInfo;

    .line 122
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroid/util/GMSDownscaleStubImpl;->padImpl:Landroid/util/GMSDownscalePadImpl;

    if-eqz v0, :cond_d

    .line 123
    invoke-virtual {v0, p1}, Landroid/util/GMSDownscalePadImpl;->setCompatInfo(Landroid/content/res/CompatibilityInfo;)V

    .line 125
    :cond_d
    return-void
.end method

.method public blacklist setConfiguration(Landroid/content/res/Configuration;)V
    .registers 3
    .param p1, "configuration"    # Landroid/content/res/Configuration;

    .line 135
    iget-object v0, p0, Landroid/util/GMSDownscaleStubImpl;->miuiConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 136
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroid/util/GMSDownscaleStubImpl;->padImpl:Landroid/util/GMSDownscalePadImpl;

    if-eqz v0, :cond_10

    .line 137
    invoke-virtual {v0, p1}, Landroid/util/GMSDownscalePadImpl;->setConfiguration(Landroid/content/res/Configuration;)V

    .line 139
    :cond_10
    return-void
.end method

.method public blacklist setFixedOrientationPortraitAndShowLandScape(Landroid/content/pm/ActivityInfo;)V
    .registers 3
    .param p1, "activityInfo"    # Landroid/content/pm/ActivityInfo;

    .line 252
    if-nez p1, :cond_3

    .line 253
    return-void

    .line 255
    :cond_3
    sget-boolean v0, Landroid/util/GMSDownscaleStubImpl;->sIsMiuiWindowDownScale:Z

    if-eqz v0, :cond_17

    iget-object v0, p0, Landroid/util/GMSDownscaleStubImpl;->miuiConfiguration:Landroid/content/res/Configuration;

    if-nez v0, :cond_c

    goto :goto_17

    .line 258
    :cond_c
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-nez v0, :cond_11

    .line 259
    return-void

    .line 261
    :cond_11
    iget-object v0, p0, Landroid/util/GMSDownscaleStubImpl;->padImpl:Landroid/util/GMSDownscalePadImpl;

    invoke-virtual {v0, p1}, Landroid/util/GMSDownscalePadImpl;->setFixedOrientationPortraitAndShowLandScape(Landroid/content/pm/ActivityInfo;)V

    .line 262
    return-void

    .line 256
    :cond_17
    :goto_17
    return-void
.end method

.method public blacklist setPackageName(Ljava/lang/String;)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 166
    iput-object p1, p0, Landroid/util/GMSDownscaleStubImpl;->mPackageName:Ljava/lang/String;

    .line 167
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroid/util/GMSDownscaleStubImpl;->padImpl:Landroid/util/GMSDownscalePadImpl;

    if-eqz v0, :cond_d

    .line 168
    invoke-virtual {v0, p1}, Landroid/util/GMSDownscalePadImpl;->setPackageName(Ljava/lang/String;)V

    .line 170
    :cond_d
    return-void
.end method
