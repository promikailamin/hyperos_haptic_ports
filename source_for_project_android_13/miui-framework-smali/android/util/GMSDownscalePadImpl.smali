.class public Landroid/util/GMSDownscalePadImpl;
.super Ljava/lang/Object;
.source "GMSDownscalePadImpl.java"


# instance fields
.field blacklist TAG:Ljava/lang/String;

.field blacklist isEmbeddingWindow:Z

.field public blacklist mPackageName:Ljava/lang/String;

.field public blacklist miuiCompatInfo:Landroid/content/res/CompatibilityInfo;

.field public blacklist miuiConfiguration:Landroid/content/res/Configuration;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-string v0, "GMSDownscalePadImpl"

    iput-object v0, p0, Landroid/util/GMSDownscalePadImpl;->TAG:Ljava/lang/String;

    .line 22
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/util/GMSDownscalePadImpl;->miuiConfiguration:Landroid/content/res/Configuration;

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/util/GMSDownscalePadImpl;->mPackageName:Ljava/lang/String;

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/util/GMSDownscalePadImpl;->isEmbeddingWindow:Z

    return-void
.end method

.method private blacklist isEmbedded()Z
    .registers 4

    .line 27
    sget-boolean v0, Landroid/util/GMSDownscaleStub;->sIsMiuiWindowDownScale:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 28
    return v1

    .line 30
    :cond_6
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-nez v0, :cond_b

    .line 31
    return v1

    .line 33
    :cond_b
    invoke-static {}, Landroid/app/ActivityThread;->isEmbedded()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_13

    .line 34
    return v2

    .line 36
    :cond_13
    iget-boolean v0, p0, Landroid/util/GMSDownscalePadImpl;->isEmbeddingWindow:Z

    if-eqz v0, :cond_18

    .line 37
    return v2

    .line 39
    :cond_18
    return v1
.end method


# virtual methods
.method public blacklist adapterToEmbeddingConfiguration(Landroid/content/res/Configuration;)Z
    .registers 6
    .param p1, "inoutConfig"    # Landroid/content/res/Configuration;

    .line 146
    invoke-direct {p0}, Landroid/util/GMSDownscalePadImpl;->isEmbedded()Z

    move-result v0

    if-eqz v0, :cond_53

    sget-boolean v0, Landroid/util/GMSDownscaleStub;->sIsMiuiWindowDownScale:Z

    if-eqz v0, :cond_53

    if-eqz p1, :cond_53

    iget-object v0, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    if-eqz v0, :cond_53

    iget-object v0, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 148
    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_53

    iget-object v0, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 149
    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getMaxBounds()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_53

    .line 150
    iget-object v0, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 151
    .local v0, "appBounds":Landroid/graphics/Rect;
    iget-object v1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getMaxBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 152
    .local v1, "maxBounds":Landroid/graphics/Rect;
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int/2addr v2, v3

    const/16 v3, 0xa

    if-gt v2, v3, :cond_4b

    .line 153
    iget-object v2, p0, Landroid/util/GMSDownscalePadImpl;->miuiCompatInfo:Landroid/content/res/CompatibilityInfo;

    iget v2, v2, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    .line 154
    .local v2, "invertedRatio":F
    iget-object v3, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/graphics/Rect;->scale(F)V

    .line 155
    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->scale(F)V

    .line 157
    .end local v2    # "invertedRatio":F
    :cond_4b
    iget-object v2, p0, Landroid/util/GMSDownscalePadImpl;->miuiCompatInfo:Landroid/content/res/CompatibilityInfo;

    iget v2, v2, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    iput v2, p1, Landroid/content/res/Configuration;->densityDpi:I

    .line 158
    const/4 v2, 0x1

    return v2

    .line 160
    .end local v0    # "appBounds":Landroid/graphics/Rect;
    .end local v1    # "maxBounds":Landroid/graphics/Rect;
    :cond_53
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist applyToConfiguration(Landroid/content/res/Configuration;Landroid/view/DisplayAdjustments;Landroid/content/res/Configuration;II)Z
    .registers 9
    .param p1, "mConfiguration"    # Landroid/content/res/Configuration;
    .param p2, "mDisplayAdjustments"    # Landroid/view/DisplayAdjustments;
    .param p3, "mTmpConfig"    # Landroid/content/res/Configuration;
    .param p4, "density"    # I
    .param p5, "widthPixels"    # I

    .line 116
    iget-object v0, p0, Landroid/util/GMSDownscalePadImpl;->miuiCompatInfo:Landroid/content/res/CompatibilityInfo;

    if-eqz v0, :cond_67

    sget-boolean v0, Landroid/util/GMSDownscaleStub;->sIsMiuiWindowDownScale:Z

    if-eqz v0, :cond_67

    iget-object v0, p0, Landroid/util/GMSDownscalePadImpl;->miuiConfiguration:Landroid/content/res/Configuration;

    if-eqz v0, :cond_67

    .line 117
    iget-object v0, p0, Landroid/util/GMSDownscalePadImpl;->TAG:Ljava/lang/String;

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

    iget-object v2, p0, Landroid/util/GMSDownscalePadImpl;->miuiConfiguration:Landroid/content/res/Configuration;

    iget v2, v2, Landroid/content/res/Configuration;->densityDpi:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget v0, p3, Landroid/content/res/Configuration;->densityDpi:I

    iget-object v1, p0, Landroid/util/GMSDownscalePadImpl;->miuiConfiguration:Landroid/content/res/Configuration;

    iget v1, v1, Landroid/content/res/Configuration;->densityDpi:I

    if-ne v0, v1, :cond_41

    .line 120
    iget-object v0, p0, Landroid/util/GMSDownscalePadImpl;->miuiCompatInfo:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {v0, p4, p3}, Landroid/content/res/CompatibilityInfo;->applyToConfiguration(ILandroid/content/res/Configuration;)V

    .line 122
    :cond_41
    invoke-direct {p0}, Landroid/util/GMSDownscalePadImpl;->isEmbedded()Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 123
    iget-object v0, p0, Landroid/util/GMSDownscalePadImpl;->miuiCompatInfo:Landroid/content/res/CompatibilityInfo;

    iget v0, v0, Landroid/content/res/CompatibilityInfo;->applicationDensity:I

    iput v0, p3, Landroid/content/res/Configuration;->densityDpi:I

    .line 125
    :cond_4d
    iget-object v0, p0, Landroid/util/GMSDownscalePadImpl;->TAG:Ljava/lang/String;

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

    .line 126
    const/4 v0, 0x1

    return v0

    .line 128
    :cond_67
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist applyToDisplayMetricsForDownscale(Landroid/util/DisplayMetrics;)V
    .registers 11
    .param p1, "inoutDm"    # Landroid/util/DisplayMetrics;

    .line 43
    sget-boolean v0, Landroid/util/GMSDownscaleStub;->sIsMiuiWindowDownScale:Z

    if-nez v0, :cond_5

    .line 44
    return-void

    .line 46
    :cond_5
    iget-object v0, p0, Landroid/util/GMSDownscalePadImpl;->miuiConfiguration:Landroid/content/res/Configuration;

    .line 47
    .local v0, "configuration":Landroid/content/res/Configuration;
    iget-object v1, p0, Landroid/util/GMSDownscalePadImpl;->miuiCompatInfo:Landroid/content/res/CompatibilityInfo;

    .line 48
    .local v1, "compatibilityInfo":Landroid/content/res/CompatibilityInfo;
    if-eqz v1, :cond_68

    if-eqz v0, :cond_68

    iget-object v2, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v2

    if-eqz v2, :cond_68

    .line 49
    iget-object v2, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 50
    .local v2, "appBounds":Landroid/graphics/Rect;
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-eqz v3, :cond_68

    .line 51
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 52
    .local v3, "width":I
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v4

    .line 53
    .local v4, "height":I
    iget-object v5, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v5}, Landroid/app/WindowConfiguration;->getMaxBounds()Landroid/graphics/Rect;

    move-result-object v5

    .line 55
    .local v5, "maxBounds":Landroid/graphics/Rect;
    invoke-direct {p0}, Landroid/util/GMSDownscalePadImpl;->isEmbedded()Z

    move-result v6

    if-eqz v6, :cond_45

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v7

    if-le v6, v7, :cond_45

    .line 56
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v6

    div-int/lit8 v3, v6, 0x2

    .line 59
    :cond_45
    iget v6, v1, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    .line 60
    .local v6, "appInvertedScale":F
    sget v7, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    int-to-float v7, v7

    const/high16 v8, 0x43200000    # 160.0f

    div-float/2addr v7, v8

    mul-float/2addr v7, v6

    iput v7, p1, Landroid/util/DisplayMetrics;->density:F

    .line 61
    int-to-float v7, v3

    mul-float/2addr v7, v6

    float-to-int v7, v7

    iput v7, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 62
    int-to-float v7, v4

    mul-float/2addr v7, v6

    float-to-int v7, v7

    iput v7, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 63
    iget v7, p1, Landroid/util/DisplayMetrics;->density:F

    iput v7, p1, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 64
    sget v7, Landroid/util/MiuiDisplayMetrics;->DENSITY_DEVICE:I

    int-to-float v7, v7

    mul-float/2addr v7, v6

    iput v7, p1, Landroid/util/DisplayMetrics;->xdpi:F

    .line 65
    iget v7, p1, Landroid/util/DisplayMetrics;->xdpi:F

    iput v7, p1, Landroid/util/DisplayMetrics;->ydpi:F

    .line 68
    .end local v2    # "appBounds":Landroid/graphics/Rect;
    .end local v3    # "width":I
    .end local v4    # "height":I
    .end local v5    # "maxBounds":Landroid/graphics/Rect;
    .end local v6    # "appInvertedScale":F
    :cond_68
    return-void
.end method

.method public blacklist applyToPointForDownscale(Landroid/content/res/Configuration;Landroid/graphics/Point;)V
    .registers 10
    .param p1, "configuration"    # Landroid/content/res/Configuration;
    .param p2, "outSize"    # Landroid/graphics/Point;

    .line 71
    iget-object v0, p0, Landroid/util/GMSDownscalePadImpl;->miuiCompatInfo:Landroid/content/res/CompatibilityInfo;

    if-eqz v0, :cond_9e

    if-nez p2, :cond_8

    goto/16 :goto_9e

    .line 72
    :cond_8
    sget-boolean v0, Landroid/util/GMSDownscaleStub;->sIsMiuiWindowDownScale:Z

    if-eqz v0, :cond_9d

    iget-object v0, p0, Landroid/util/GMSDownscalePadImpl;->miuiConfiguration:Landroid/content/res/Configuration;

    if-eqz v0, :cond_9d

    .line 73
    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 74
    .local v0, "appBounds":Landroid/graphics/Rect;
    if-eqz p1, :cond_30

    .line 75
    iget-object v1, p0, Landroid/util/GMSDownscalePadImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "applyToPointForDownscale 67 miuiConfiguration: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :cond_30
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-eqz v1, :cond_9d

    .line 78
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 79
    .local v1, "width":I
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 80
    .local v2, "height":I
    if-eqz p1, :cond_86

    .line 81
    iget-object v3, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getMaxBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 82
    .local v3, "maxBounds":Landroid/graphics/Rect;
    iget-object v4, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v4}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v4

    .line 84
    .local v4, "newAppBounds":Landroid/graphics/Rect;
    iget-boolean v5, p0, Landroid/util/GMSDownscalePadImpl;->isEmbeddingWindow:Z

    if-nez v5, :cond_70

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    const/16 v6, 0xa

    if-ge v5, v6, :cond_70

    .line 85
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v6

    if-le v5, v6, :cond_70

    .line 86
    const/4 v5, 0x1

    iput-boolean v5, p0, Landroid/util/GMSDownscalePadImpl;->isEmbeddingWindow:Z

    .line 89
    :cond_70
    invoke-direct {p0}, Landroid/util/GMSDownscalePadImpl;->isEmbedded()Z

    move-result v5

    if-eqz v5, :cond_86

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v6

    if-le v5, v6, :cond_86

    .line 90
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v5

    div-int/lit8 v1, v5, 0x2

    .line 94
    .end local v3    # "maxBounds":Landroid/graphics/Rect;
    .end local v4    # "newAppBounds":Landroid/graphics/Rect;
    :cond_86
    iget-object v3, p0, Landroid/util/GMSDownscalePadImpl;->miuiCompatInfo:Landroid/content/res/CompatibilityInfo;

    iget v3, v3, Landroid/content/res/CompatibilityInfo;->applicationInvertedScale:F

    .line 95
    .local v3, "appInvertedScale":F
    const/4 v4, 0x0

    .line 97
    .local v4, "landscape":Z
    if-eqz v4, :cond_8f

    int-to-float v5, v2

    goto :goto_90

    :cond_8f
    int-to-float v5, v1

    :goto_90
    mul-float/2addr v5, v3

    float-to-int v5, v5

    iput v5, p2, Landroid/graphics/Point;->x:I

    .line 98
    if-eqz v4, :cond_98

    int-to-float v5, v1

    goto :goto_99

    :cond_98
    int-to-float v5, v2

    :goto_99
    mul-float/2addr v5, v3

    float-to-int v5, v5

    iput v5, p2, Landroid/graphics/Point;->y:I

    .line 102
    .end local v0    # "appBounds":Landroid/graphics/Rect;
    .end local v1    # "width":I
    .end local v2    # "height":I
    .end local v3    # "appInvertedScale":F
    .end local v4    # "landscape":Z
    :cond_9d
    return-void

    .line 71
    :cond_9e
    :goto_9e
    return-void
.end method

.method public blacklist handleConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 5
    .param p1, "config"    # Landroid/content/res/Configuration;

    .line 136
    sget-boolean v0, Landroid/util/GMSDownscaleStub;->sIsMiuiWindowDownScale:Z

    if-eqz v0, :cond_3d

    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v0, :cond_3d

    if-eqz p1, :cond_3d

    iget-object v0, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    if-eqz v0, :cond_3d

    iget-object v0, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 138
    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_20

    iget-object v0, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 139
    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3d

    .line 140
    :cond_20
    iget-object v0, p0, Landroid/util/GMSDownscalePadImpl;->miuiConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 141
    iget-object v0, p0, Landroid/util/GMSDownscalePadImpl;->TAG:Ljava/lang/String;

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

    .line 143
    :cond_3d
    return-void
.end method

.method public blacklist setCompatInfo(Landroid/content/res/CompatibilityInfo;)V
    .registers 2
    .param p1, "compatInfo"    # Landroid/content/res/CompatibilityInfo;

    .line 105
    iput-object p1, p0, Landroid/util/GMSDownscalePadImpl;->miuiCompatInfo:Landroid/content/res/CompatibilityInfo;

    .line 106
    return-void
.end method

.method public blacklist setConfiguration(Landroid/content/res/Configuration;)V
    .registers 3
    .param p1, "configuration"    # Landroid/content/res/Configuration;

    .line 110
    iget-object v0, p0, Landroid/util/GMSDownscalePadImpl;->miuiConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 111
    return-void
.end method

.method public blacklist setFixedOrientationPortraitAndShowLandScape(Landroid/content/pm/ActivityInfo;)V
    .registers 9
    .param p1, "activityInfo"    # Landroid/content/pm/ActivityInfo;

    .line 164
    if-nez p1, :cond_3

    .line 165
    return-void

    .line 167
    :cond_3
    sget-boolean v0, Landroid/util/GMSDownscaleStub;->sIsMiuiWindowDownScale:Z

    if-eqz v0, :cond_75

    iget-object v0, p0, Landroid/util/GMSDownscalePadImpl;->miuiConfiguration:Landroid/content/res/Configuration;

    if-nez v0, :cond_c

    goto :goto_75

    .line 170
    :cond_c
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-nez v0, :cond_11

    .line 171
    return-void

    .line 173
    :cond_11
    invoke-static {}, Landroid/app/ActivityThread;->isEmbedded()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 174
    return-void

    .line 176
    :cond_18
    iget-boolean v0, p0, Landroid/util/GMSDownscalePadImpl;->isEmbeddingWindow:Z

    if-eqz v0, :cond_1d

    .line 177
    return-void

    .line 181
    :cond_1d
    :try_start_1d
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 182
    .local v0, "activityInfoClz":Ljava/lang/Class;
    const-string v1, "isFixedOrientationPortrait"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 183
    .local v1, "isFixedOrientationPortraitMethod":Ljava/lang/reflect/Method;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 184
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 185
    .local v2, "isFixedOrientationPortrait":Z
    if-eqz v2, :cond_52

    .line 186
    iget-object v4, p0, Landroid/util/GMSDownscalePadImpl;->miuiConfiguration:Landroid/content/res/Configuration;

    iget-object v4, v4, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v4}, Landroid/app/WindowConfiguration;->getMaxBounds()Landroid/graphics/Rect;

    move-result-object v4

    .line 187
    .local v4, "maxBounds":Landroid/graphics/Rect;
    if-eqz v4, :cond_52

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v6

    if-le v5, v6, :cond_52

    .line 188
    iput-boolean v3, p0, Landroid/util/GMSDownscalePadImpl;->isEmbeddingWindow:Z
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_52} :catch_53

    .line 193
    .end local v0    # "activityInfoClz":Ljava/lang/Class;
    .end local v1    # "isFixedOrientationPortraitMethod":Ljava/lang/reflect/Method;
    .end local v2    # "isFixedOrientationPortrait":Z
    .end local v4    # "maxBounds":Landroid/graphics/Rect;
    :cond_52
    goto :goto_74

    .line 191
    :catch_53
    move-exception v0

    .line 192
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Landroid/util/GMSDownscalePadImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setFixedOrientationPortraitAndShowLandScape 59: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_74
    return-void

    .line 168
    :cond_75
    :goto_75
    return-void
.end method

.method public blacklist setPackageName(Ljava/lang/String;)V
    .registers 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 132
    iput-object p1, p0, Landroid/util/GMSDownscalePadImpl;->mPackageName:Ljava/lang/String;

    .line 133
    return-void
.end method
