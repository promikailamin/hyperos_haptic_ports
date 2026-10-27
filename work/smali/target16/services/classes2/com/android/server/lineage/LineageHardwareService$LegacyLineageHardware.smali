.class public Lcom/android/server/lineage/LineageHardwareService$LegacyLineageHardware;
.super Ljava/lang/Object;
.source "LineageHardwareService.java"

# interfaces
.implements Lcom/android/server/lineage/LineageHardwareService$LineageHardwareInterface;


# instance fields
.field public final LEVEL_COLOR_MATRIX_CALIB:I

.field public final LEVEL_COLOR_MATRIX_READING:I

.field public final MATRIX_GRAYSCALE:[F

.field public final MATRIX_NORMAL:[F

.field public final MAX:I

.field public final MIN:I

.field public mAcceleratedTransform:Z

.field public mCurColors:[I

.field public mDTMService:Lcom/android/server/display/color/DisplayTransformManager;

.field public mReadingEnhancementEnabled:Z

.field public mSupportedFeatures:I


# direct methods
.method public constructor <init>(Lcom/android/server/lineage/LineageHardwareService;)V
    .registers 5

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 93
    iput v0, p0, Lcom/android/server/lineage/LineageHardwareService$LegacyLineageHardware;->mSupportedFeatures:I

    .line 95
    iput v0, p0, Lcom/android/server/lineage/LineageHardwareService$LegacyLineageHardware;->MIN:I

    const/16 v0, 0xff

    .line 96
    iput v0, p0, Lcom/android/server/lineage/LineageHardwareService$LegacyLineageHardware;->MAX:I

    const/16 v1, 0x10

    .line 102
    new-array v2, v1, [F

    fill-array-data v2, :array_be

    iput-object v2, p0, Lcom/android/server/lineage/LineageHardwareService$LegacyLineageHardware;->MATRIX_GRAYSCALE:[F

    .line 110
    new-array v1, v1, [F

    fill-array-data v1, :array_e2

    iput-object v1, p0, Lcom/android/server/lineage/LineageHardwareService$LegacyLineageHardware;->MATRIX_NORMAL:[F

    const/16 v1, 0x65

    .line 117
    iput v1, p0, Lcom/android/server/lineage/LineageHardwareService$LegacyLineageHardware;->LEVEL_COLOR_MATRIX_CALIB:I

    const/16 v1, 0xc9

    .line 118
    iput v1, p0, Lcom/android/server/lineage/LineageHardwareService$LegacyLineageHardware;->LEVEL_COLOR_MATRIX_READING:I

    .line 123
    filled-new-array {v0, v0, v0}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/lineage/LineageHardwareService$LegacyLineageHardware;->mCurColors:[I

    .line 127
    invoke-static {p1}, Lcom/android/server/lineage/LineageHardwareService;->-$$Nest$fgetmContext(Lcom/android/server/lineage/LineageHardwareService;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x1110256

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/lineage/LineageHardwareService$LegacyLineageHardware;->mAcceleratedTransform:Z

    .line 129
    invoke-static {}, Lcom/android/internal/lineage/hardware/AdaptiveBacklight;->isSupported()Z

    move-result p1

    if-eqz p1, :cond_47

    .line 130
    iget p1, p0, Lcom/android/server/lineage/LineageHardwareService$LegacyLineageHardware;->mSupportedFeatures:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/server/lineage/LineageHardwareService$LegacyLineageHardware;->mSupportedFeatures:I

    .line 131
    :cond_47
    invoke-static {}, Lcom/android/internal/lineage/hardware/ColorEnhancement;->isSupported()Z

    move-result p1

    if-eqz p1, :cond_53

    .line 132
    iget p1, p0, Lcom/android/server/lineage/LineageHardwareService$LegacyLineageHardware;->mSupportedFeatures:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/android/server/lineage/LineageHardwareService$LegacyLineageHardware;->mSupportedFeatures:I

    .line 133
    :cond_53
    invoke-static {}, Lcom/android/internal/lineage/hardware/DisplayColorCalibration;->isSupported()Z

    move-result p1

    if-eqz p1, :cond_5f

    .line 134
    iget p1, p0, Lcom/android/server/lineage/LineageHardwareService$LegacyLineageHardware;->mSupportedFeatures:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/android/server/lineage/LineageHardwareService$LegacyLineageHardware;->mSupportedFeatures:I

    .line 135
    :cond_5f
    invoke-static {}, Lcom/android/internal/lineage/hardware/ReadingEnhancement;->isSupported()Z

    move-result p1

    if-eqz p1, :cond_6b

    .line 136
    iget p1, p0, Lcom/android/server/lineage/LineageHardwareService$LegacyLineageHardware;->mSupportedFeatures:I

    or-int/lit16 p1, p1, 0x4000

    iput p1, p0, Lcom/android/server/lineage/LineageHardwareService$LegacyLineageHardware;->mSupportedFeatures:I

    .line 137
    :cond_6b
    invoke-static {}, Lcom/android/internal/lineage/hardware/SunlightEnhancement;->isSupported()Z

    move-result p1

    if-eqz p1, :cond_77

    .line 138
    iget p1, p0, Lcom/android/server/lineage/LineageHardwareService$LegacyLineageHardware;->mSupportedFeatures:I

    or-int/lit16 p1, p1, 0x100

    iput p1, p0, Lcom/android/server/lineage/LineageHardwareService$LegacyLineageHardware;->mSupportedFeatures:I

    .line 139
    :cond_77
    invoke-static {}, Lcom/android/internal/lineage/hardware/AutoContrast;->isSupported()Z

    move-result p1

    if-eqz p1, :cond_83

    .line 140
    iget p1, p0, Lcom/android/server/lineage/LineageHardwareService$LegacyLineageHardware;->mSupportedFeatures:I

    or-int/lit16 p1, p1, 0x1000

    iput p1, p0, Lcom/android/server/lineage/LineageHardwareService$LegacyLineageHardware;->mSupportedFeatures:I

    .line 141
    :cond_83
    invoke-static {}, Lcom/android/internal/lineage/hardware/DisplayModeControl;->isSupported()Z

    move-result p1

    if-eqz p1, :cond_8f

    .line 142
    iget p1, p0, Lcom/android/server/lineage/LineageHardwareService$LegacyLineageHardware;->mSupportedFeatures:I

    or-int/lit16 p1, p1, 0x2000

    iput p1, p0, Lcom/android/server/lineage/LineageHardwareService$LegacyLineageHardware;->mSupportedFeatures:I

    .line 143
    :cond_8f
    invoke-static {}, Lcom/android/internal/lineage/hardware/ColorBalance;->isSupported()Z

    move-result p1

    if-eqz p1, :cond_9c

    .line 144
    iget p1, p0, Lcom/android/server/lineage/LineageHardwareService$LegacyLineageHardware;->mSupportedFeatures:I

    const/high16 v0, 0x20000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/android/server/lineage/LineageHardwareService$LegacyLineageHardware;->mSupportedFeatures:I

    .line 145
    :cond_9c
    invoke-static {}, Lcom/android/internal/lineage/hardware/PictureAdjustment;->isSupported()Z

    move-result p1

    if-eqz p1, :cond_a9

    .line 146
    iget p1, p0, Lcom/android/server/lineage/LineageHardwareService$LegacyLineageHardware;->mSupportedFeatures:I

    const/high16 v0, 0x40000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/android/server/lineage/LineageHardwareService$LegacyLineageHardware;->mSupportedFeatures:I

    .line 147
    :cond_a9
    iget-boolean p1, p0, Lcom/android/server/lineage/LineageHardwareService$LegacyLineageHardware;->mAcceleratedTransform:Z

    if-eqz p1, :cond_bd

    .line 148
    const-class p1, Lcom/android/server/display/color/DisplayTransformManager;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/display/color/DisplayTransformManager;

    iput-object p1, p0, Lcom/android/server/lineage/LineageHardwareService$LegacyLineageHardware;->mDTMService:Lcom/android/server/display/color/DisplayTransformManager;

    .line 149
    iget p1, p0, Lcom/android/server/lineage/LineageHardwareService$LegacyLineageHardware;->mSupportedFeatures:I

    or-int/lit16 p1, p1, 0x4004

    .line 150
    iput p1, p0, Lcom/android/server/lineage/LineageHardwareService$LegacyLineageHardware;->mSupportedFeatures:I

    :cond_bd
    return-void

    :array_be
    .array-data 4
        0x3e59b3d0    # 0.2126f
        0x3e59b3d0    # 0.2126f
        0x3e59b3d0    # 0.2126f
        0x0
        0x3f371759    # 0.7152f
        0x3f371759    # 0.7152f
        0x3f371759    # 0.7152f
        0x0
        0x3d93dd98    # 0.0722f
        0x3d93dd98    # 0.0722f
        0x3d93dd98    # 0.0722f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_e2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public get(I)Z
    .registers 4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4c

    const/4 v0, 0x2

    if-eq p1, v0, :cond_47

    const/16 v0, 0x100

    if-eq p1, v0, :cond_42

    const/16 v0, 0x1000

    if-eq p1, v0, :cond_3d

    const/16 v0, 0x4000

    if-eq p1, v0, :cond_31

    .line 173
    invoke-static {}, Lcom/android/server/lineage/LineageHardwareService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "feature "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not a boolean feature"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 167
    :cond_31
    iget-boolean p1, p0, Lcom/android/server/lineage/LineageHardwareService$LegacyLineageHardware;->mAcceleratedTransform:Z

    if-eqz p1, :cond_38

    .line 168
    iget-boolean p0, p0, Lcom/android/server/lineage/LineageHardwareService$LegacyLineageHardware;->mReadingEnhancementEnabled:Z

    return p0

    .line 169
    :cond_38
    invoke-static {}, Lcom/android/internal/lineage/hardware/ReadingEnhancement;->isEnabled()Z

    move-result p0

    return p0

    .line 163
    :cond_3d
    invoke-static {}, Lcom/android/internal/lineage/hardware/AutoContrast;->isEnabled()Z

    move-result p0

    return p0

    .line 171
    :cond_42
    invoke-static {}, Lcom/android/internal/lineage/hardware/SunlightEnhancement;->isEnabled()Z

    move-result p0

    return p0

    .line 165
    :cond_47
    invoke-static {}, Lcom/android/internal/lineage/hardware/ColorEnhancement;->isEnabled()Z

    move-result p0

    return p0

    .line 161
    :cond_4c
    invoke-static {}, Lcom/android/internal/lineage/hardware/AdaptiveBacklight;->isEnabled()Z

    move-result p0

    return p0
.end method

.method public getColorBalance()I
    .registers 1

    .line 306
    invoke-static {}, Lcom/android/internal/lineage/hardware/ColorBalance;->getValue()I

    move-result p0

    return p0
.end method

.method public getColorBalanceMax()I
    .registers 1

    .line 302
    invoke-static {}, Lcom/android/internal/lineage/hardware/ColorBalance;->getMaxValue()I

    move-result p0

    return p0
.end method

.method public getColorBalanceMin()I
    .registers 1

    .line 298
    invoke-static {}, Lcom/android/internal/lineage/hardware/ColorBalance;->getMinValue()I

    move-result p0

    return p0
.end method

.method public getCurrentDisplayMode()Lcom/android/internal/lineage/hardware/DisplayMode;
    .registers 1

    .line 286
    invoke-static {}, Lcom/android/internal/lineage/hardware/DisplayModeControl;->getCurrentMode()Lcom/android/internal/lineage/hardware/DisplayMode;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultDisplayMode()Lcom/android/internal/lineage/hardware/DisplayMode;
    .registers 1

    .line 290
    invoke-static {}, Lcom/android/internal/lineage/hardware/DisplayModeControl;->getDefaultMode()Lcom/android/internal/lineage/hardware/DisplayMode;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultPictureAdjustment()Lcom/android/internal/lineage/hardware/HSIC;
    .registers 1

    .line 315
    invoke-static {}, Lcom/android/internal/lineage/hardware/PictureAdjustment;->getDefaultHSIC()Lcom/android/internal/lineage/hardware/HSIC;

    move-result-object p0

    return-object p0
.end method

.method public getDisplayColorCalibration()[I
    .registers 6

    .line 247
    iget-boolean v0, p0, Lcom/android/server/lineage/LineageHardwareService$LegacyLineageHardware;->mAcceleratedTransform:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/server/lineage/LineageHardwareService$LegacyLineageHardware;->mCurColors:[I

    goto :goto_11

    .line 248
    :cond_7
    invoke-static {}, Lcom/android/internal/lineage/hardware/DisplayColorCalibration;->getCurColors()Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {p0, v0, v1}, Lcom/android/server/lineage/LineageHardwareService$LegacyLineageHardware;->splitStringToInt(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v0

    :goto_11
    if-eqz v0, :cond_3a

    .line 249
    array-length v1, v0

    const/4 v2, 0x3

    if-eq v1, v2, :cond_18

    goto :goto_3a

    :cond_18
    const/4 v1, 0x0

    .line 254
    aget v2, v0, v1

    const/4 v3, 0x1

    .line 255
    aget v3, v0, v3

    const/4 v4, 0x2

    .line 256
    aget v0, v0, v4

    .line 258
    iget-boolean v4, p0, Lcom/android/server/lineage/LineageHardwareService$LegacyLineageHardware;->mAcceleratedTransform:Z

    if-eqz v4, :cond_26

    goto :goto_2a

    :cond_26
    invoke-static {}, Lcom/android/internal/lineage/hardware/DisplayColorCalibration;->getMinValue()I

    move-result v1

    .line 260
    :goto_2a
    iget-boolean p0, p0, Lcom/android/server/lineage/LineageHardwareService$LegacyLineageHardware;->mAcceleratedTransform:Z

    if-eqz p0, :cond_31

    const/16 p0, 0xff

    goto :goto_35

    :cond_31
    invoke-static {}, Lcom/android/internal/lineage/hardware/DisplayColorCalibration;->getMaxValue()I

    move-result p0

    :goto_35
    filled-new-array {v2, v3, v0, v1, p0}, [I

    move-result-object p0

    return-object p0

    .line 250
    :cond_3a
    :goto_3a
    invoke-static {}, Lcom/android/server/lineage/LineageHardwareService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Invalid color calibration string"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public getDisplayModes()[Lcom/android/internal/lineage/hardware/DisplayMode;
    .registers 1

    .line 282
    invoke-static {}, Lcom/android/internal/lineage/hardware/DisplayModeControl;->getAvailableModes()[Lcom/android/internal/lineage/hardware/DisplayMode;

    move-result-object p0

    return-object p0
.end method

.method public getPictureAdjustment()Lcom/android/internal/lineage/hardware/HSIC;
    .registers 1

    .line 313
    invoke-static {}, Lcom/android/internal/lineage/hardware/PictureAdjustment;->getHSIC()Lcom/android/internal/lineage/hardware/HSIC;

    move-result-object p0

    return-object p0
.end method

.method public getPictureAdjustmentRanges()Ljava/util/List;
    .registers 3

    const/4 p0, 0x5

    .line 320
    new-array p0, p0, [Landroid/util/Range;

    const/4 v0, 0x0

    .line 321
    invoke-static {}, Lcom/android/internal/lineage/hardware/PictureAdjustment;->getHueRange()Landroid/util/Range;

    move-result-object v1

    aput-object v1, p0, v0

    const/4 v0, 0x1

    .line 322
    invoke-static {}, Lcom/android/internal/lineage/hardware/PictureAdjustment;->getSaturationRange()Landroid/util/Range;

    move-result-object v1

    aput-object v1, p0, v0

    const/4 v0, 0x2

    .line 323
    invoke-static {}, Lcom/android/internal/lineage/hardware/PictureAdjustment;->getIntensityRange()Landroid/util/Range;

    move-result-object v1

    aput-object v1, p0, v0

    const/4 v0, 0x3

    .line 324
    invoke-static {}, Lcom/android/internal/lineage/hardware/PictureAdjustment;->getContrastRange()Landroid/util/Range;

    move-result-object v1

    aput-object v1, p0, v0

    const/4 v0, 0x4

    .line 325
    invoke-static {}, Lcom/android/internal/lineage/hardware/PictureAdjustment;->getSaturationThresholdRange()Landroid/util/Range;

    move-result-object v1

    aput-object v1, p0, v0

    .line 320
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getSupportedFeatures()I
    .registers 1

    .line 155
    iget p0, p0, Lcom/android/server/lineage/LineageHardwareService$LegacyLineageHardware;->mSupportedFeatures:I

    return p0
.end method

.method public isSunlightEnhancementSelfManaged()Z
    .registers 1

    .line 278
    invoke-static {}, Lcom/android/internal/lineage/hardware/SunlightEnhancement;->isSelfManaged()Z

    move-result p0

    return p0
.end method

.method public requireAdaptiveBacklightForSunlightEnhancement()Z
    .registers 1

    .line 274
    invoke-static {}, Lcom/android/internal/lineage/hardware/SunlightEnhancement;->isAdaptiveBacklightRequired()Z

    move-result p0

    return p0
.end method

.method public final rgbToMatrix([I)[F
    .registers 7

    const/16 p0, 0x10

    .line 230
    new-array p0, p0, [F

    const/4 v0, 0x0

    move v1, v0

    :goto_6
    const/4 v2, 0x3

    if-ge v1, v2, :cond_23

    .line 234
    aget v2, p1, v1

    const/16 v3, 0xff

    if-le v2, v3, :cond_12

    .line 235
    aput v3, p1, v1

    goto :goto_16

    :cond_12
    if-gez v2, :cond_16

    .line 237
    aput v0, p1, v1

    :cond_16
    :goto_16
    mul-int/lit8 v2, v1, 0x5

    .line 239
    aget v3, p1, v1

    int-to-float v3, v3

    const/high16 v4, 0x437f0000    # 255.0f

    div-float/2addr v3, v4

    aput v3, p0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_23
    const/16 p1, 0xf

    const/high16 v0, 0x3f800000    # 1.0f

    .line 242
    aput v0, p0, p1

    return-object p0
.end method

.method public final rgbToString([I)Ljava/lang/String;
    .registers 4

    .line 220
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    .line 221
    aget v0, p1, v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 222
    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    .line 223
    aget v1, p1, v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 224
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x2

    .line 225
    aget p1, p1, v0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 226
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public set(IZ)Z
    .registers 5

    const/4 v0, 0x1

    if-eq p1, v0, :cond_5a

    const/4 v1, 0x2

    if-eq p1, v1, :cond_55

    const/16 v1, 0x100

    if-eq p1, v1, :cond_50

    const/16 v1, 0x1000

    if-eq p1, v1, :cond_4b

    const/16 v1, 0x4000

    if-eq p1, v1, :cond_31

    .line 197
    invoke-static {}, Lcom/android/server/lineage/LineageHardwareService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "feature "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not a boolean feature"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 187
    :cond_31
    iget-boolean p1, p0, Lcom/android/server/lineage/LineageHardwareService$LegacyLineageHardware;->mAcceleratedTransform:Z

    if-eqz p1, :cond_46

    .line 188
    iput-boolean p2, p0, Lcom/android/server/lineage/LineageHardwareService$LegacyLineageHardware;->mReadingEnhancementEnabled:Z

    .line 189
    iget-object p1, p0, Lcom/android/server/lineage/LineageHardwareService$LegacyLineageHardware;->mDTMService:Lcom/android/server/display/color/DisplayTransformManager;

    if-eqz p2, :cond_3e

    .line 190
    iget-object p0, p0, Lcom/android/server/lineage/LineageHardwareService$LegacyLineageHardware;->MATRIX_GRAYSCALE:[F

    goto :goto_40

    :cond_3e
    iget-object p0, p0, Lcom/android/server/lineage/LineageHardwareService$LegacyLineageHardware;->MATRIX_NORMAL:[F

    :goto_40
    const/16 p2, 0xc9

    .line 189
    invoke-virtual {p1, p2, p0}, Lcom/android/server/display/color/DisplayTransformManager;->setColorMatrix(I[F)V

    return v0

    .line 193
    :cond_46
    invoke-static {p2}, Lcom/android/internal/lineage/hardware/ReadingEnhancement;->setEnabled(Z)Z

    move-result p0

    return p0

    .line 183
    :cond_4b
    invoke-static {p2}, Lcom/android/internal/lineage/hardware/AutoContrast;->setEnabled(Z)Z

    move-result p0

    return p0

    .line 195
    :cond_50
    invoke-static {p2}, Lcom/android/internal/lineage/hardware/SunlightEnhancement;->setEnabled(Z)Z

    move-result p0

    return p0

    .line 185
    :cond_55
    invoke-static {p2}, Lcom/android/internal/lineage/hardware/ColorEnhancement;->setEnabled(Z)Z

    move-result p0

    return p0

    .line 181
    :cond_5a
    invoke-static {p2}, Lcom/android/internal/lineage/hardware/AdaptiveBacklight;->setEnabled(Z)Z

    move-result p0

    return p0
.end method

.method public setColorBalance(I)Z
    .registers 2

    .line 310
    invoke-static {p1}, Lcom/android/internal/lineage/hardware/ColorBalance;->setValue(I)Z

    move-result p0

    return p0
.end method

.method public setDisplayColorCalibration([I)Z
    .registers 4

    .line 265
    iget-boolean v0, p0, Lcom/android/server/lineage/LineageHardwareService$LegacyLineageHardware;->mAcceleratedTransform:Z

    if-eqz v0, :cond_13

    .line 266
    iput-object p1, p0, Lcom/android/server/lineage/LineageHardwareService$LegacyLineageHardware;->mCurColors:[I

    .line 267
    iget-object v0, p0, Lcom/android/server/lineage/LineageHardwareService$LegacyLineageHardware;->mDTMService:Lcom/android/server/display/color/DisplayTransformManager;

    const/16 v1, 0x65

    invoke-virtual {p0, p1}, Lcom/android/server/lineage/LineageHardwareService$LegacyLineageHardware;->rgbToMatrix([I)[F

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/android/server/display/color/DisplayTransformManager;->setColorMatrix(I[F)V

    const/4 p0, 0x1

    return p0

    .line 270
    :cond_13
    invoke-virtual {p0, p1}, Lcom/android/server/lineage/LineageHardwareService$LegacyLineageHardware;->rgbToString([I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/lineage/hardware/DisplayColorCalibration;->setColors(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public setDisplayMode(Lcom/android/internal/lineage/hardware/DisplayMode;Z)Z
    .registers 3

    .line 294
    invoke-static {p1, p2}, Lcom/android/internal/lineage/hardware/DisplayModeControl;->setMode(Lcom/android/internal/lineage/hardware/DisplayMode;Z)Z

    move-result p0

    return p0
.end method

.method public setPictureAdjustment(Lcom/android/internal/lineage/hardware/HSIC;)Z
    .registers 2

    .line 317
    invoke-static {p1}, Lcom/android/internal/lineage/hardware/PictureAdjustment;->setHSIC(Lcom/android/internal/lineage/hardware/HSIC;)Z

    move-result p0

    return p0
.end method

.method public final splitStringToInt(Ljava/lang/String;Ljava/lang/String;)[I
    .registers 5

    const/4 p0, 0x0

    if-eqz p1, :cond_1d

    if-nez p2, :cond_6

    goto :goto_1d

    .line 206
    :cond_6
    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 208
    :try_start_a
    array-length p2, p1

    new-array p2, p2, [I

    const/4 v0, 0x0

    .line 209
    :goto_e
    array-length v1, p1

    if-ge v0, v1, :cond_1c

    .line 210
    aget-object v1, p1, v0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    aput v1, p2, v0
    :try_end_19
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_19} :catch_1d

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_1c
    return-object p2

    :catch_1d
    :cond_1d
    :goto_1d
    return-object p0
.end method
