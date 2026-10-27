.class public Lcom/android/server/display/DisplayDeviceConfig;
.super Ljava/lang/Object;
.source "DisplayDeviceConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/DisplayDeviceConfig$BrightnessThrottlingData;,
        Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;,
        Lcom/android/server/display/DisplayDeviceConfig$SensorData;
    }
.end annotation


# static fields
.field private static final AMBIENT_LIGHT_LONG_HORIZON_MILLIS:I = 0x2710

.field private static final AMBIENT_LIGHT_SHORT_HORIZON_MILLIS:I = 0x7d0

.field private static final BRIGHTNESS_DEFAULT:F = 0.5f

.field private static final CONFIG_FILE_FORMAT:Ljava/lang/String; = "display_%s.xml"

.field private static final DEBUG:Z = false

.field private static final DEFAULT_CONFIG_FILE:Ljava/lang/String; = "default.xml"

.field private static final DEFAULT_CONFIG_FILE_WITH_UIMODE_FORMAT:Ljava/lang/String; = "default_%s.xml"

.field private static final DISPLAY_CONFIG_DIR:Ljava/lang/String; = "displayconfig"

.field private static final ETC_DIR:Ljava/lang/String; = "etc"

.field private static GALLERY_HDR_FACTOR:Ljava/lang/String; = null

.field static final HDR_PERCENT_OF_SCREEN_REQUIRED_DEFAULT:F = 0.5f

.field public static final HIGH_BRIGHTNESS_MODE_UNSUPPORTED:F = NaNf

.field private static final INTERPOLATION_DEFAULT:I = 0x0

.field private static final INTERPOLATION_LINEAR:I = 0x1

.field private static final INVALID_BRIGHTNESS_IN_CONFIG:F = -2.0f

.field public static final MINIMAL_NIT_TO_ALLOW_GALLERY_HDR:F = 5.0f

.field private static final NITS_INVALID:F = -1.0f

.field private static final NO_SUFFIX_FORMAT:Ljava/lang/String; = "%d"

.field private static final PORT_SUFFIX_FORMAT:Ljava/lang/String; = "port_%d"

.field public static final QUIRK_CAN_SET_BRIGHTNESS_VIA_HWC:Ljava/lang/String; = "canSetBrightnessViaHwc"

.field private static final STABLE_FLAG:J = 0x4000000000000000L

.field private static final STABLE_ID_SUFFIX_FORMAT:Ljava/lang/String; = "id_%d"

.field private static final TAG:Ljava/lang/String; = "DisplayDeviceConfig"


# instance fields
.field private mAmbientHorizonLong:I

.field private mAmbientHorizonShort:I

.field private final mAmbientLightSensor:Lcom/android/server/display/DisplayDeviceConfig$SensorData;

.field private mAmbientLuxBrighteningMinThreshold:F

.field private mAmbientLuxDarkeningMinThreshold:F

.field private mBacklight:[F

.field private mBacklightMaximum:F

.field private mBacklightMinimum:F

.field private mBacklightToBrightnessSpline:Landroid/util/Spline;

.field private mBacklightToNitsSpline:Landroid/util/Spline;

.field private mBrightness:[F

.field private mBrightnessDefault:F

.field private mBrightnessRampDecreaseMaxMillis:J

.field private mBrightnessRampFastDecrease:F

.field private mBrightnessRampFastIncrease:F

.field private mBrightnessRampIncreaseMaxMillis:J

.field private mBrightnessRampSlowDecrease:F

.field private mBrightnessRampSlowIncrease:F

.field private mBrightnessThrottlingData:Lcom/android/server/display/DisplayDeviceConfig$BrightnessThrottlingData;

.field private mBrightnessToBacklightSpline:Landroid/util/Spline;

.field private final mContext:Landroid/content/Context;

.field private mDensityMapping:Lcom/android/server/display/DensityMapping;

.field private mHbmData:Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

.field private mInterpolationType:I

.field private mIsHighBrightnessModeEnabled:Z

.field private mLoadedFrom:Ljava/lang/String;

.field private mNits:[F

.field private mNitsToBacklightSpline:Landroid/util/Spline;

.field private final mProximitySensor:Lcom/android/server/display/DisplayDeviceConfig$SensorData;

.field private mQuirks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRawBacklight:[F

.field private mRawNits:[F

.field private final mRefreshRateLimitations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/display/DisplayManagerInternal$RefreshRateLimitation;",
            ">;"
        }
    .end annotation
.end field

.field private mScreenBrighteningMinThreshold:F

.field private mScreenDarkeningMinThreshold:F

.field private mSdrToHdrRatioSpline:Landroid/util/Spline;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 287
    const-string/jumbo v0, "persist.sys.gallery_hdr_boost_max_factor"

    const-string v1, "2.25f"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/display/DisplayDeviceConfig;->GALLERY_HDR_FACTOR:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 235
    new-instance v0, Lcom/android/server/display/DisplayDeviceConfig$SensorData;

    invoke-direct {v0}, Lcom/android/server/display/DisplayDeviceConfig$SensorData;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientLightSensor:Lcom/android/server/display/DisplayDeviceConfig$SensorData;

    .line 238
    new-instance v0, Lcom/android/server/display/DisplayDeviceConfig$SensorData;

    invoke-direct {v0}, Lcom/android/server/display/DisplayDeviceConfig$SensorData;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mProximitySensor:Lcom/android/server/display/DisplayDeviceConfig$SensorData;

    .line 240
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRefreshRateLimitations:Ljava/util/List;

    .line 260
    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMinimum:F

    .line 261
    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMaximum:F

    .line 262
    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessDefault:F

    .line 263
    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampFastDecrease:F

    .line 264
    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampFastIncrease:F

    .line 265
    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampSlowDecrease:F

    .line 266
    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampSlowIncrease:F

    .line 267
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampDecreaseMaxMillis:J

    .line 268
    iput-wide v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampIncreaseMaxMillis:J

    .line 269
    const/16 v0, 0x2710

    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientHorizonLong:I

    .line 270
    const/16 v0, 0x7d0

    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientHorizonShort:I

    .line 271
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mScreenBrighteningMinThreshold:F

    .line 272
    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mScreenDarkeningMinThreshold:F

    .line 273
    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientLuxBrighteningMinThreshold:F

    .line 274
    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientLuxDarkeningMinThreshold:F

    .line 280
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mIsHighBrightnessModeEnabled:Z

    .line 283
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mLoadedFrom:Ljava/lang/String;

    .line 295
    iput-object p1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    .line 296
    return-void
.end method

.method private constrainNitsAndBacklightArrays()V
    .registers 13

    .line 1047
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRawBacklight:[F

    const/4 v1, 0x0

    aget v2, v0, v1

    iget v3, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMinimum:F

    cmpl-float v2, v2, v3

    const/4 v4, 0x1

    if-gtz v2, :cond_8f

    array-length v2, v0

    sub-int/2addr v2, v4

    aget v2, v0, v2

    iget v5, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMaximum:F

    cmpg-float v2, v2, v5

    if-ltz v2, :cond_8f

    cmpl-float v2, v3, v5

    if-gtz v2, :cond_8f

    .line 1057
    array-length v2, v0

    new-array v2, v2, [F

    .line 1058
    .local v2, "newNits":[F
    array-length v0, v0

    new-array v0, v0, [F

    .line 1061
    .local v0, "newBacklight":[F
    const/4 v3, 0x0

    .line 1062
    .local v3, "newStart":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_22
    iget-object v6, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRawBacklight:[F

    array-length v7, v6

    sub-int/2addr v7, v4

    if-ge v5, v7, :cond_37

    .line 1063
    add-int/lit8 v7, v5, 0x1

    aget v6, v6, v7

    iget v7, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMinimum:F

    cmpl-float v6, v6, v7

    if-lez v6, :cond_34

    .line 1064
    move v3, v5

    .line 1065
    goto :goto_37

    .line 1062
    :cond_34
    add-int/lit8 v5, v5, 0x1

    goto :goto_22

    .line 1069
    .end local v5    # "i":I
    :cond_37
    :goto_37
    const/4 v5, 0x0

    .line 1070
    .local v5, "isLastValue":Z
    const/4 v6, 0x0

    .line 1071
    .local v6, "newIndex":I
    move v7, v3

    .local v7, "i":I
    :goto_3a
    iget-object v8, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRawBacklight:[F

    array-length v9, v8

    if-ge v7, v9, :cond_7b

    if-nez v5, :cond_7b

    .line 1072
    sub-int v6, v7, v3

    .line 1075
    aget v9, v8, v7

    iget v10, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMaximum:F

    cmpl-float v11, v9, v10

    if-gez v11, :cond_52

    array-length v11, v8

    sub-int/2addr v11, v4

    if-lt v7, v11, :cond_50

    goto :goto_52

    :cond_50
    move v11, v1

    goto :goto_53

    :cond_52
    :goto_52
    move v11, v4

    :goto_53
    move v5, v11

    .line 1078
    if-nez v6, :cond_61

    .line 1079
    iget v8, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMinimum:F

    invoke-static {v9, v8}, Landroid/util/MathUtils;->max(FF)F

    move-result v8

    .line 1080
    .local v8, "newBacklightVal":F
    invoke-direct {p0, v7, v8}, Lcom/android/server/display/DisplayDeviceConfig;->rawBacklightToNits(IF)F

    move-result v9

    .local v9, "newNitsVal":F
    goto :goto_74

    .line 1081
    .end local v8    # "newBacklightVal":F
    .end local v9    # "newNitsVal":F
    :cond_61
    if-eqz v5, :cond_6e

    .line 1082
    invoke-static {v9, v10}, Landroid/util/MathUtils;->min(FF)F

    move-result v8

    .line 1083
    .restart local v8    # "newBacklightVal":F
    add-int/lit8 v9, v7, -0x1

    invoke-direct {p0, v9, v8}, Lcom/android/server/display/DisplayDeviceConfig;->rawBacklightToNits(IF)F

    move-result v9

    .restart local v9    # "newNitsVal":F
    goto :goto_74

    .line 1085
    .end local v8    # "newBacklightVal":F
    .end local v9    # "newNitsVal":F
    :cond_6e
    aget v8, v8, v7

    .line 1086
    .restart local v8    # "newBacklightVal":F
    iget-object v9, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRawNits:[F

    aget v9, v9, v7

    .line 1088
    .restart local v9    # "newNitsVal":F
    :goto_74
    aput v8, v0, v6

    .line 1089
    aput v9, v2, v6

    .line 1071
    .end local v8    # "newBacklightVal":F
    .end local v9    # "newNitsVal":F
    add-int/lit8 v7, v7, 0x1

    goto :goto_3a

    .line 1091
    .end local v7    # "i":I
    :cond_7b
    add-int/lit8 v1, v6, 0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklight:[F

    .line 1092
    add-int/lit8 v1, v6, 0x1

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mNits:[F

    .line 1093
    invoke-direct {p0}, Lcom/android/server/display/DisplayDeviceConfig;->createBacklightConversionSplines()V

    .line 1094
    return-void

    .line 1050
    .end local v0    # "newBacklight":[F
    .end local v2    # "newNits":[F
    .end local v3    # "newStart":I
    .end local v5    # "isLastValue":Z
    .end local v6    # "newIndex":I
    :cond_8f
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Min or max values are invalid; raw min="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRawBacklight:[F

    aget v1, v3, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; raw max="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRawBacklight:[F

    array-length v3, v2

    sub-int/2addr v3, v4

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; backlight min="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMinimum:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; backlight max="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMaximum:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private convertInterpolationType(Ljava/lang/String;)I
    .registers 5
    .param p1, "value"    # Ljava/lang/String;

    .line 1354
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 1355
    return v1

    .line 1358
    :cond_8
    const-string/jumbo v0, "linear"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1359
    const/4 v0, 0x1

    return v0

    .line 1362
    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected Interpolation Type: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "DisplayDeviceConfig"

    invoke-static {v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1363
    return v1
.end method

.method private convertThermalStatus(Lcom/android/server/display/config/ThermalStatus;)I
    .registers 5
    .param p1, "value"    # Lcom/android/server/display/config/ThermalStatus;

    .line 1329
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 1330
    return v0

    .line 1332
    :cond_4
    sget-object v1, Lcom/android/server/display/DisplayDeviceConfig$1;->$SwitchMap$com$android$server$display$config$ThermalStatus:[I

    invoke-virtual {p1}, Lcom/android/server/display/config/ThermalStatus;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_36

    .line 1348
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected Thermal Status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DisplayDeviceConfig"

    invoke-static {v2, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1349
    return v0

    .line 1346
    :pswitch_28
    const/4 v0, 0x6

    return v0

    .line 1344
    :pswitch_2a
    const/4 v0, 0x5

    return v0

    .line 1342
    :pswitch_2c
    const/4 v0, 0x4

    return v0

    .line 1340
    :pswitch_2e
    const/4 v0, 0x3

    return v0

    .line 1338
    :pswitch_30
    const/4 v0, 0x2

    return v0

    .line 1336
    :pswitch_32
    const/4 v0, 0x1

    return v0

    .line 1334
    :pswitch_34
    return v0

    nop

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_34
        :pswitch_32
        :pswitch_30
        :pswitch_2e
        :pswitch_2c
        :pswitch_2a
        :pswitch_28
    .end packed-switch
.end method

.method private copyUninitializedValuesFromSecondaryConfig(Lcom/android/server/display/config/DisplayConfiguration;)V
    .registers 3
    .param p1, "defaultConfig"    # Lcom/android/server/display/config/DisplayConfiguration;

    .line 816
    if-nez p1, :cond_3

    .line 817
    return-void

    .line 820
    :cond_3
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDensityMapping:Lcom/android/server/display/DensityMapping;

    if-nez v0, :cond_a

    .line 821
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayDeviceConfig;->loadDensityMapping(Lcom/android/server/display/config/DisplayConfiguration;)V

    .line 823
    :cond_a
    return-void
.end method

.method public static create(Landroid/content/Context;JZ)Lcom/android/server/display/DisplayDeviceConfig;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "physicalDisplayId"    # J
    .param p3, "isFirstDisplay"    # Z

    .line 312
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/display/DisplayDeviceConfig;->createWithoutDefaultValues(Landroid/content/Context;JZ)Lcom/android/server/display/DisplayDeviceConfig;

    move-result-object v0

    .line 315
    .local v0, "config":Lcom/android/server/display/DisplayDeviceConfig;
    invoke-static {p0}, Lcom/android/server/display/DisplayDeviceConfig;->loadDefaultConfigurationXml(Landroid/content/Context;)Lcom/android/server/display/config/DisplayConfiguration;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/display/DisplayDeviceConfig;->copyUninitializedValuesFromSecondaryConfig(Lcom/android/server/display/config/DisplayConfiguration;)V

    .line 316
    return-object v0
.end method

.method public static create(Landroid/content/Context;Z)Lcom/android/server/display/DisplayDeviceConfig;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "useConfigXml"    # Z

    .line 329
    if-eqz p1, :cond_7

    .line 330
    invoke-static {p0}, Lcom/android/server/display/DisplayDeviceConfig;->getConfigFromGlobalXml(Landroid/content/Context;)Lcom/android/server/display/DisplayDeviceConfig;

    move-result-object v0

    .local v0, "config":Lcom/android/server/display/DisplayDeviceConfig;
    goto :goto_b

    .line 332
    .end local v0    # "config":Lcom/android/server/display/DisplayDeviceConfig;
    :cond_7
    invoke-static {p0}, Lcom/android/server/display/DisplayDeviceConfig;->getConfigFromPmValues(Landroid/content/Context;)Lcom/android/server/display/DisplayDeviceConfig;

    move-result-object v0

    .line 334
    .restart local v0    # "config":Lcom/android/server/display/DisplayDeviceConfig;
    :goto_b
    return-object v0
.end method

.method private createBacklightConversionSplines()V
    .registers 4

    .line 1107
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklight:[F

    array-length v0, v0

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightness:[F

    .line 1108
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_8
    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightness:[F

    array-length v2, v1

    if-ge v0, v2, :cond_16

    .line 1113
    iget-object v2, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklight:[F

    aget v2, v2, v0

    aput v2, v1, v0

    .line 1108
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 1116
    .end local v0    # "i":I
    :cond_16
    iget v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mInterpolationType:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_22

    .line 1117
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklight:[F

    invoke-static {v1, v0}, Landroid/util/Spline;->createLinearSpline([F[F)Landroid/util/Spline;

    move-result-object v0

    goto :goto_28

    .line 1118
    :cond_22
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklight:[F

    invoke-static {v1, v0}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v0

    :goto_28
    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessToBacklightSpline:Landroid/util/Spline;

    .line 1119
    iget v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mInterpolationType:I

    if-ne v0, v2, :cond_37

    .line 1120
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklight:[F

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightness:[F

    invoke-static {v0, v1}, Landroid/util/Spline;->createLinearSpline([F[F)Landroid/util/Spline;

    move-result-object v0

    goto :goto_3f

    .line 1121
    :cond_37
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklight:[F

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightness:[F

    invoke-static {v0, v1}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v0

    :goto_3f
    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightToBrightnessSpline:Landroid/util/Spline;

    .line 1129
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklight:[F

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mNits:[F

    invoke-static {v0, v1}, Landroid/util/Spline;->createLinearSpline([F[F)Landroid/util/Spline;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightToNitsSpline:Landroid/util/Spline;

    .line 1130
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mNits:[F

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklight:[F

    invoke-static {v0, v1}, Landroid/util/Spline;->createLinearSpline([F[F)Landroid/util/Spline;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mNitsToBacklightSpline:Landroid/util/Spline;

    .line 1132
    return-void
.end method

.method private static createWithoutDefaultValues(Landroid/content/Context;JZ)Lcom/android/server/display/DisplayDeviceConfig;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "physicalDisplayId"    # J
    .param p3, "isFirstDisplay"    # Z

    .line 341
    invoke-static {}, Landroid/os/Environment;->getProductDirectory()Ljava/io/File;

    move-result-object v0

    invoke-static {p0, v0, p1, p2}, Lcom/android/server/display/DisplayDeviceConfig;->loadConfigFromDirectory(Landroid/content/Context;Ljava/io/File;J)Lcom/android/server/display/DisplayDeviceConfig;

    move-result-object v0

    .line 343
    .local v0, "config":Lcom/android/server/display/DisplayDeviceConfig;
    if-eqz v0, :cond_b

    .line 344
    return-object v0

    .line 347
    :cond_b
    invoke-static {}, Landroid/os/Environment;->getVendorDirectory()Ljava/io/File;

    move-result-object v1

    invoke-static {p0, v1, p1, p2}, Lcom/android/server/display/DisplayDeviceConfig;->loadConfigFromDirectory(Landroid/content/Context;Ljava/io/File;J)Lcom/android/server/display/DisplayDeviceConfig;

    move-result-object v0

    .line 349
    if-eqz v0, :cond_16

    .line 350
    return-object v0

    .line 356
    :cond_16
    invoke-static {p0, p3}, Lcom/android/server/display/DisplayDeviceConfig;->create(Landroid/content/Context;Z)Lcom/android/server/display/DisplayDeviceConfig;

    move-result-object v1

    return-object v1
.end method

.method private static getConfigFromGlobalXml(Landroid/content/Context;)Lcom/android/server/display/DisplayDeviceConfig;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 739
    new-instance v0, Lcom/android/server/display/DisplayDeviceConfig;

    invoke-direct {v0, p0}, Lcom/android/server/display/DisplayDeviceConfig;-><init>(Landroid/content/Context;)V

    .line 740
    .local v0, "config":Lcom/android/server/display/DisplayDeviceConfig;
    invoke-direct {v0}, Lcom/android/server/display/DisplayDeviceConfig;->initFromGlobalXml()V

    .line 741
    return-object v0
.end method

.method private static getConfigFromPmValues(Landroid/content/Context;)Lcom/android/server/display/DisplayDeviceConfig;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 745
    new-instance v0, Lcom/android/server/display/DisplayDeviceConfig;

    invoke-direct {v0, p0}, Lcom/android/server/display/DisplayDeviceConfig;-><init>(Landroid/content/Context;)V

    .line 746
    .local v0, "config":Lcom/android/server/display/DisplayDeviceConfig;
    invoke-direct {v0}, Lcom/android/server/display/DisplayDeviceConfig;->initFromDefaultValues()V

    .line 747
    return-object v0
.end method

.method private static getConfigFromSuffix(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;J)Lcom/android/server/display/DisplayDeviceConfig;
    .registers 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "baseDirectory"    # Ljava/io/File;
    .param p2, "suffixFormat"    # Ljava/lang/String;
    .param p3, "idNumber"    # J

    .line 727
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, p2, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 728
    .local v0, "suffix":Ljava/lang/String;
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    new-array v3, v1, [Ljava/lang/Object;

    aput-object v0, v3, v4

    const-string v5, "display_%s.xml"

    invoke-static {v2, v5, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 729
    .local v2, "filename":Ljava/lang/String;
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const-string v5, "etc"

    aput-object v5, v3, v4

    const-string v4, "displayconfig"

    aput-object v4, v3, v1

    const/4 v1, 0x2

    aput-object v2, v3, v1

    invoke-static {p1, v3}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 731
    .local v1, "filePath":Ljava/io/File;
    new-instance v3, Lcom/android/server/display/DisplayDeviceConfig;

    invoke-direct {v3, p0}, Lcom/android/server/display/DisplayDeviceConfig;-><init>(Landroid/content/Context;)V

    .line 732
    .local v3, "config":Lcom/android/server/display/DisplayDeviceConfig;
    invoke-direct {v3, v1}, Lcom/android/server/display/DisplayDeviceConfig;->initFromFile(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_3a

    .line 733
    return-object v3

    .line 735
    :cond_3a
    const/4 v4, 0x0

    return-object v4
.end method

.method private static getFirstExistingFile(Ljava/util/Collection;)Ljava/io/File;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/io/File;",
            ">;)",
            "Ljava/io/File;"
        }
    .end annotation

    .line 400
    .local p0, "files":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/io/File;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 401
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 402
    return-object v1

    .line 404
    .end local v1    # "file":Ljava/io/File;
    :cond_1d
    goto :goto_4

    .line 405
    :cond_1e
    const/4 v0, 0x0

    return-object v0
.end method

.method private initFromDefaultValues()V
    .registers 3

    .line 800
    const-string v0, "Static values"

    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mLoadedFrom:Ljava/lang/String;

    .line 801
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMinimum:F

    .line 802
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMaximum:F

    .line 803
    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessDefault:F

    .line 804
    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampFastDecrease:F

    .line 805
    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampFastIncrease:F

    .line 806
    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampSlowDecrease:F

    .line 807
    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampSlowIncrease:F

    .line 808
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampDecreaseMaxMillis:J

    .line 809
    iput-wide v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampIncreaseMaxMillis:J

    .line 810
    invoke-direct {p0}, Lcom/android/server/display/DisplayDeviceConfig;->setSimpleMappingStrategyValues()V

    .line 811
    invoke-direct {p0}, Lcom/android/server/display/DisplayDeviceConfig;->loadAmbientLightSensorFromConfigXml()V

    .line 812
    invoke-direct {p0}, Lcom/android/server/display/DisplayDeviceConfig;->setProxSensorUnspecified()V

    .line 813
    return-void
.end method

.method private initFromFile(Ljava/io/File;)Z
    .registers 6
    .param p1, "configFile"    # Ljava/io/File;

    .line 751
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 753
    return v1

    .line 756
    :cond_8
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    const-string v2, "DisplayDeviceConfig"

    if-nez v0, :cond_2d

    .line 757
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Display configuration is not a file: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", skipping"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    return v1

    .line 761
    :cond_2d
    :try_start_2d
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_37} :catch_75
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_2d .. :try_end_37} :catch_75
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2d .. :try_end_37} :catch_75

    .line 762
    .local v0, "in":Ljava/io/InputStream;
    :try_start_37
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->read(Ljava/io/InputStream;)Lcom/android/server/display/config/DisplayConfiguration;

    move-result-object v1

    .line 763
    .local v1, "config":Lcom/android/server/display/config/DisplayConfiguration;
    if-eqz v1, :cond_62

    .line 764
    invoke-direct {p0, v1}, Lcom/android/server/display/DisplayDeviceConfig;->loadDensityMapping(Lcom/android/server/display/config/DisplayConfiguration;)V

    .line 765
    invoke-direct {p0, v1}, Lcom/android/server/display/DisplayDeviceConfig;->loadBrightnessDefaultFromDdcXml(Lcom/android/server/display/config/DisplayConfiguration;)V

    .line 766
    invoke-direct {p0}, Lcom/android/server/display/DisplayDeviceConfig;->loadBrightnessConstraintsFromConfigXml()V

    .line 767
    invoke-direct {p0, v1}, Lcom/android/server/display/DisplayDeviceConfig;->loadBrightnessMap(Lcom/android/server/display/config/DisplayConfiguration;)V

    .line 768
    invoke-direct {p0, v1}, Lcom/android/server/display/DisplayDeviceConfig;->loadBrightnessThrottlingMap(Lcom/android/server/display/config/DisplayConfiguration;)V

    .line 769
    invoke-direct {p0, v1}, Lcom/android/server/display/DisplayDeviceConfig;->loadHighBrightnessModeData(Lcom/android/server/display/config/DisplayConfiguration;)V

    .line 770
    invoke-direct {p0, v1}, Lcom/android/server/display/DisplayDeviceConfig;->loadQuirks(Lcom/android/server/display/config/DisplayConfiguration;)V

    .line 771
    invoke-direct {p0, v1}, Lcom/android/server/display/DisplayDeviceConfig;->loadBrightnessRamps(Lcom/android/server/display/config/DisplayConfiguration;)V

    .line 772
    invoke-direct {p0, v1}, Lcom/android/server/display/DisplayDeviceConfig;->loadAmbientLightSensorFromDdc(Lcom/android/server/display/config/DisplayConfiguration;)V

    .line 773
    invoke-direct {p0, v1}, Lcom/android/server/display/DisplayDeviceConfig;->loadProxSensorFromDdc(Lcom/android/server/display/config/DisplayConfiguration;)V

    .line 774
    invoke-direct {p0, v1}, Lcom/android/server/display/DisplayDeviceConfig;->loadAmbientHorizonFromDdc(Lcom/android/server/display/config/DisplayConfiguration;)V

    .line 775
    invoke-direct {p0, v1}, Lcom/android/server/display/DisplayDeviceConfig;->loadBrightnessChangeThresholds(Lcom/android/server/display/config/DisplayConfiguration;)V

    goto :goto_67

    .line 777
    :cond_62
    const-string v3, "DisplayDeviceConfig file is null"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_67
    .catchall {:try_start_37 .. :try_end_67} :catchall_6b

    .line 779
    .end local v1    # "config":Lcom/android/server/display/config/DisplayConfiguration;
    :goto_67
    :try_start_67
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_6a
    .catch Ljava/io/IOException; {:try_start_67 .. :try_end_6a} :catch_75
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_67 .. :try_end_6a} :catch_75
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_67 .. :try_end_6a} :catch_75

    .line 782
    .end local v0    # "in":Ljava/io/InputStream;
    goto :goto_8c

    .line 761
    .restart local v0    # "in":Ljava/io/InputStream;
    :catchall_6b
    move-exception v1

    :try_start_6c
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_6f
    .catchall {:try_start_6c .. :try_end_6f} :catchall_70

    goto :goto_74

    :catchall_70
    move-exception v3

    :try_start_71
    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/server/display/DisplayDeviceConfig;
    .end local p1    # "configFile":Ljava/io/File;
    :goto_74
    throw v1
    :try_end_75
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_75} :catch_75
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_71 .. :try_end_75} :catch_75
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_71 .. :try_end_75} :catch_75

    .line 779
    .end local v0    # "in":Ljava/io/InputStream;
    .restart local p0    # "this":Lcom/android/server/display/DisplayDeviceConfig;
    .restart local p1    # "configFile":Ljava/io/File;
    :catch_75
    move-exception v0

    .line 780
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Encountered an error while reading/parsing display config file: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 783
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_8c
    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mLoadedFrom:Ljava/lang/String;

    .line 784
    const/4 v0, 0x1

    return v0
.end method

.method private initFromGlobalXml()V
    .registers 2

    .line 789
    invoke-direct {p0}, Lcom/android/server/display/DisplayDeviceConfig;->loadBrightnessDefaultFromConfigXml()V

    .line 790
    invoke-direct {p0}, Lcom/android/server/display/DisplayDeviceConfig;->loadBrightnessConstraintsFromConfigXml()V

    .line 791
    invoke-direct {p0}, Lcom/android/server/display/DisplayDeviceConfig;->loadBrightnessMapFromConfigXml()V

    .line 792
    invoke-direct {p0}, Lcom/android/server/display/DisplayDeviceConfig;->loadBrightnessRampsFromConfigXml()V

    .line 793
    invoke-direct {p0}, Lcom/android/server/display/DisplayDeviceConfig;->loadAmbientLightSensorFromConfigXml()V

    .line 794
    invoke-direct {p0}, Lcom/android/server/display/DisplayDeviceConfig;->setProxSensorUnspecified()V

    .line 795
    const-string v0, "<config.xml>"

    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mLoadedFrom:Ljava/lang/String;

    .line 796
    return-void
.end method

.method private loadAmbientHorizonFromDdc(Lcom/android/server/display/config/DisplayConfiguration;)V
    .registers 5
    .param p1, "config"    # Lcom/android/server/display/config/DisplayConfiguration;

    .line 1367
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getAmbientLightHorizonLong()Ljava/math/BigInteger;

    move-result-object v0

    .line 1368
    .local v0, "configLongHorizon":Ljava/math/BigInteger;
    if-eqz v0, :cond_c

    .line 1369
    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    iput v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientHorizonLong:I

    .line 1371
    :cond_c
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getAmbientLightHorizonShort()Ljava/math/BigInteger;

    move-result-object v1

    .line 1372
    .local v1, "configShortHorizon":Ljava/math/BigInteger;
    if-eqz v1, :cond_18

    .line 1373
    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    iput v2, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientHorizonShort:I

    .line 1375
    :cond_18
    return-void
.end method

.method private loadAmbientLightSensorFromConfigXml()V
    .registers 4

    .line 1230
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientLightSensor:Lcom/android/server/display/DisplayDeviceConfig$SensorData;

    const-string v1, ""

    iput-object v1, v0, Lcom/android/server/display/DisplayDeviceConfig$SensorData;->name:Ljava/lang/String;

    .line 1231
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientLightSensor:Lcom/android/server/display/DisplayDeviceConfig$SensorData;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x104026f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/display/DisplayDeviceConfig$SensorData;->type:Ljava/lang/String;

    .line 1233
    return-void
.end method

.method private loadAmbientLightSensorFromDdc(Lcom/android/server/display/config/DisplayConfiguration;)V
    .registers 6
    .param p1, "config"    # Lcom/android/server/display/config/DisplayConfiguration;

    .line 1236
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getLightSensor()Lcom/android/server/display/config/SensorDetails;

    move-result-object v0

    .line 1237
    .local v0, "sensorDetails":Lcom/android/server/display/config/SensorDetails;
    if-eqz v0, :cond_35

    .line 1238
    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientLightSensor:Lcom/android/server/display/DisplayDeviceConfig$SensorData;

    invoke-virtual {v0}, Lcom/android/server/display/config/SensorDetails;->getType()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/display/DisplayDeviceConfig$SensorData;->type:Ljava/lang/String;

    .line 1239
    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientLightSensor:Lcom/android/server/display/DisplayDeviceConfig$SensorData;

    invoke-virtual {v0}, Lcom/android/server/display/config/SensorDetails;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/display/DisplayDeviceConfig$SensorData;->name:Ljava/lang/String;

    .line 1240
    invoke-virtual {v0}, Lcom/android/server/display/config/SensorDetails;->getRefreshRate()Lcom/android/server/display/config/RefreshRateRange;

    move-result-object v1

    .line 1241
    .local v1, "rr":Lcom/android/server/display/config/RefreshRateRange;
    if-eqz v1, :cond_34

    .line 1242
    iget-object v2, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientLightSensor:Lcom/android/server/display/DisplayDeviceConfig$SensorData;

    invoke-virtual {v1}, Lcom/android/server/display/config/RefreshRateRange;->getMinimum()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->floatValue()F

    move-result v3

    iput v3, v2, Lcom/android/server/display/DisplayDeviceConfig$SensorData;->minRefreshRate:F

    .line 1243
    iget-object v2, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientLightSensor:Lcom/android/server/display/DisplayDeviceConfig$SensorData;

    invoke-virtual {v1}, Lcom/android/server/display/config/RefreshRateRange;->getMaximum()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->floatValue()F

    move-result v3

    iput v3, v2, Lcom/android/server/display/DisplayDeviceConfig$SensorData;->maxRefreshRate:F

    .line 1245
    .end local v1    # "rr":Lcom/android/server/display/config/RefreshRateRange;
    :cond_34
    goto :goto_38

    .line 1246
    :cond_35
    invoke-direct {p0}, Lcom/android/server/display/DisplayDeviceConfig;->loadAmbientLightSensorFromConfigXml()V

    .line 1248
    :goto_38
    return-void
.end method

.method private loadBrightnessChangeThresholds(Lcom/android/server/display/config/DisplayConfiguration;)V
    .registers 9
    .param p1, "config"    # Lcom/android/server/display/config/DisplayConfiguration;

    .line 1271
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getDisplayBrightnessChangeThresholds()Lcom/android/server/display/config/Thresholds;

    move-result-object v0

    .line 1272
    .local v0, "displayBrightnessThresholds":Lcom/android/server/display/config/Thresholds;
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getAmbientBrightnessChangeThresholds()Lcom/android/server/display/config/Thresholds;

    move-result-object v1

    .line 1274
    .local v1, "ambientBrightnessThresholds":Lcom/android/server/display/config/Thresholds;
    if-eqz v0, :cond_2c

    .line 1275
    nop

    .line 1276
    invoke-virtual {v0}, Lcom/android/server/display/config/Thresholds;->getBrighteningThresholds()Lcom/android/server/display/config/BrightnessThresholds;

    move-result-object v2

    .line 1277
    .local v2, "brighteningScreen":Lcom/android/server/display/config/BrightnessThresholds;
    nop

    .line 1278
    invoke-virtual {v0}, Lcom/android/server/display/config/Thresholds;->getDarkeningThresholds()Lcom/android/server/display/config/BrightnessThresholds;

    move-result-object v3

    .line 1280
    .local v3, "darkeningScreen":Lcom/android/server/display/config/BrightnessThresholds;
    invoke-virtual {v2}, Lcom/android/server/display/config/BrightnessThresholds;->getMinimum()Ljava/math/BigDecimal;

    move-result-object v4

    .line 1281
    .local v4, "screenBrighteningThreshold":Ljava/math/BigDecimal;
    invoke-virtual {v3}, Lcom/android/server/display/config/BrightnessThresholds;->getMinimum()Ljava/math/BigDecimal;

    move-result-object v5

    .line 1283
    .local v5, "screenDarkeningThreshold":Ljava/math/BigDecimal;
    if-eqz v4, :cond_24

    .line 1284
    invoke-virtual {v4}, Ljava/math/BigDecimal;->floatValue()F

    move-result v6

    iput v6, p0, Lcom/android/server/display/DisplayDeviceConfig;->mScreenBrighteningMinThreshold:F

    .line 1286
    :cond_24
    if-eqz v5, :cond_2c

    .line 1287
    invoke-virtual {v5}, Ljava/math/BigDecimal;->floatValue()F

    move-result v6

    iput v6, p0, Lcom/android/server/display/DisplayDeviceConfig;->mScreenDarkeningMinThreshold:F

    .line 1291
    .end local v2    # "brighteningScreen":Lcom/android/server/display/config/BrightnessThresholds;
    .end local v3    # "darkeningScreen":Lcom/android/server/display/config/BrightnessThresholds;
    .end local v4    # "screenBrighteningThreshold":Ljava/math/BigDecimal;
    .end local v5    # "screenDarkeningThreshold":Ljava/math/BigDecimal;
    :cond_2c
    if-eqz v1, :cond_50

    .line 1292
    nop

    .line 1293
    invoke-virtual {v1}, Lcom/android/server/display/config/Thresholds;->getBrighteningThresholds()Lcom/android/server/display/config/BrightnessThresholds;

    move-result-object v2

    .line 1294
    .local v2, "brighteningAmbientLux":Lcom/android/server/display/config/BrightnessThresholds;
    nop

    .line 1295
    invoke-virtual {v1}, Lcom/android/server/display/config/Thresholds;->getDarkeningThresholds()Lcom/android/server/display/config/BrightnessThresholds;

    move-result-object v3

    .line 1297
    .local v3, "darkeningAmbientLux":Lcom/android/server/display/config/BrightnessThresholds;
    invoke-virtual {v2}, Lcom/android/server/display/config/BrightnessThresholds;->getMinimum()Ljava/math/BigDecimal;

    move-result-object v4

    .line 1298
    .local v4, "ambientBrighteningThreshold":Ljava/math/BigDecimal;
    invoke-virtual {v3}, Lcom/android/server/display/config/BrightnessThresholds;->getMinimum()Ljava/math/BigDecimal;

    move-result-object v5

    .line 1300
    .local v5, "ambientDarkeningThreshold":Ljava/math/BigDecimal;
    if-eqz v4, :cond_48

    .line 1301
    invoke-virtual {v4}, Ljava/math/BigDecimal;->floatValue()F

    move-result v6

    iput v6, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientLuxBrighteningMinThreshold:F

    .line 1303
    :cond_48
    if-eqz v5, :cond_50

    .line 1304
    invoke-virtual {v5}, Ljava/math/BigDecimal;->floatValue()F

    move-result v6

    iput v6, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientLuxDarkeningMinThreshold:F

    .line 1307
    .end local v2    # "brighteningAmbientLux":Lcom/android/server/display/config/BrightnessThresholds;
    .end local v3    # "darkeningAmbientLux":Lcom/android/server/display/config/BrightnessThresholds;
    .end local v4    # "ambientBrighteningThreshold":Ljava/math/BigDecimal;
    .end local v5    # "ambientDarkeningThreshold":Ljava/math/BigDecimal;
    :cond_50
    return-void
.end method

.method private loadBrightnessConstraintsFromConfigXml()V
    .registers 5

    .line 876
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10500dd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    .line 878
    .local v0, "min":F
    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10500dc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v1

    .line 880
    .local v1, "max":F
    const/high16 v2, -0x40000000    # -2.0f

    cmpl-float v3, v0, v2

    if-eqz v3, :cond_2a

    cmpl-float v2, v1, v2

    if-nez v2, :cond_25

    goto :goto_2a

    .line 888
    :cond_25
    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMinimum:F

    .line 889
    iput v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMaximum:F

    goto :goto_50

    .line 881
    :cond_2a
    :goto_2a
    iget-object v2, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    .line 882
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e00de

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 881
    invoke-static {v2}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessIntToFloat(I)F

    move-result v2

    iput v2, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMinimum:F

    .line 884
    iget-object v2, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    .line 885
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e00dd

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 884
    invoke-static {v2}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessIntToFloat(I)F

    move-result v2

    iput v2, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMaximum:F

    .line 891
    :goto_50
    return-void
.end method

.method private loadBrightnessDefaultFromConfigXml()V
    .registers 4

    .line 863
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10500d8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    .line 865
    .local v0, "def":F
    const/high16 v1, -0x40000000    # -2.0f

    cmpl-float v1, v0, v1

    if-nez v1, :cond_27

    .line 866
    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    .line 867
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e00dc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 866
    invoke-static {v1}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessIntToFloat(I)F

    move-result v1

    iput v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessDefault:F

    goto :goto_29

    .line 870
    :cond_27
    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessDefault:F

    .line 872
    :goto_29
    return-void
.end method

.method private loadBrightnessDefaultFromDdcXml(Lcom/android/server/display/config/DisplayConfiguration;)V
    .registers 4
    .param p1, "config"    # Lcom/android/server/display/config/DisplayConfiguration;

    .line 850
    if-eqz p1, :cond_12

    .line 851
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getScreenBrightnessDefault()Ljava/math/BigDecimal;

    move-result-object v0

    .line 852
    .local v0, "configBrightnessDefault":Ljava/math/BigDecimal;
    if-eqz v0, :cond_f

    .line 853
    invoke-virtual {v0}, Ljava/math/BigDecimal;->floatValue()F

    move-result v1

    iput v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessDefault:F

    goto :goto_12

    .line 855
    :cond_f
    invoke-direct {p0}, Lcom/android/server/display/DisplayDeviceConfig;->loadBrightnessDefaultFromConfigXml()V

    .line 858
    .end local v0    # "configBrightnessDefault":Ljava/math/BigDecimal;
    :cond_12
    :goto_12
    return-void
.end method

.method private loadBrightnessMap(Lcom/android/server/display/config/DisplayConfiguration;)V
    .registers 14
    .param p1, "config"    # Lcom/android/server/display/config/DisplayConfiguration;

    .line 894
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getScreenBrightnessMap()Lcom/android/server/display/config/NitsMap;

    move-result-object v0

    .line 896
    .local v0, "map":Lcom/android/server/display/config/NitsMap;
    if-nez v0, :cond_a

    .line 897
    invoke-direct {p0}, Lcom/android/server/display/DisplayDeviceConfig;->loadBrightnessMapFromConfigXml()V

    .line 898
    return-void

    .line 902
    :cond_a
    invoke-virtual {v0}, Lcom/android/server/display/config/NitsMap;->getPoint()Ljava/util/List;

    move-result-object v1

    .line 903
    .local v1, "points":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/display/config/Point;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 905
    .local v2, "size":I
    new-array v3, v2, [F

    .line 906
    .local v3, "nits":[F
    new-array v4, v2, [F

    .line 908
    .local v4, "backlight":[F
    invoke-virtual {v0}, Lcom/android/server/display/config/NitsMap;->getInterpolation()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/display/DisplayDeviceConfig;->convertInterpolationType(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/android/server/display/DisplayDeviceConfig;->mInterpolationType:I

    .line 909
    const/4 v5, 0x0

    .line 910
    .local v5, "i":I
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_25
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/display/config/Point;

    .line 911
    .local v7, "point":Lcom/android/server/display/config/Point;
    invoke-virtual {v7}, Lcom/android/server/display/config/Point;->getNits()Ljava/math/BigDecimal;

    move-result-object v8

    invoke-virtual {v8}, Ljava/math/BigDecimal;->floatValue()F

    move-result v8

    aput v8, v3, v5

    .line 912
    invoke-virtual {v7}, Lcom/android/server/display/config/Point;->getValue()Ljava/math/BigDecimal;

    move-result-object v8

    invoke-virtual {v8}, Ljava/math/BigDecimal;->floatValue()F

    move-result v8

    aput v8, v4, v5

    .line 913
    if-lez v5, :cond_ab

    .line 914
    aget v8, v3, v5

    add-int/lit8 v9, v5, -0x1

    aget v9, v3, v9

    cmpg-float v8, v8, v9

    const-string v9, " < "

    const-string v10, "DisplayDeviceConfig"

    if-gez v8, :cond_7b

    .line 915
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "screenBrightnessMap must be non-decreasing, ignoring rest  of configuration. Nits: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v8, v3, v5

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v8, v5, -0x1

    aget v8, v3, v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    return-void

    .line 920
    :cond_7b
    aget v8, v4, v5

    add-int/lit8 v11, v5, -0x1

    aget v11, v4, v11

    cmpg-float v8, v8, v11

    if-gez v8, :cond_ab

    .line 921
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "screenBrightnessMap must be non-decreasing, ignoring rest  of configuration. Value: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v8, v4, v5

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v8, v5, -0x1

    aget v8, v4, v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    return-void

    .line 927
    :cond_ab
    nop

    .end local v7    # "point":Lcom/android/server/display/config/Point;
    add-int/lit8 v5, v5, 0x1

    .line 928
    goto/16 :goto_25

    .line 929
    :cond_b0
    iput-object v3, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRawNits:[F

    .line 930
    iput-object v4, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRawBacklight:[F

    .line 931
    invoke-direct {p0}, Lcom/android/server/display/DisplayDeviceConfig;->constrainNitsAndBacklightArrays()V

    .line 932
    return-void
.end method

.method private loadBrightnessMapFromConfigXml()V
    .registers 7

    .line 1005
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1006
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x10700aa

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/display/BrightnessMappingStrategy;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v1

    .line 1008
    .local v1, "sysNits":[F
    const v2, 0x10700a9

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    .line 1010
    .local v2, "sysBrightness":[I
    array-length v3, v2

    new-array v3, v3, [F

    .line 1012
    .local v3, "sysBrightnessFloat":[F
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1c
    array-length v5, v2

    if-ge v4, v5, :cond_2a

    .line 1013
    aget v5, v2, v4

    invoke-static {v5}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessIntToFloat(I)F

    move-result v5

    aput v5, v3, v4

    .line 1012
    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    .line 1019
    .end local v4    # "i":I
    :cond_2a
    array-length v4, v3

    if-eqz v4, :cond_39

    array-length v4, v1

    if-nez v4, :cond_31

    goto :goto_39

    .line 1024
    :cond_31
    iput-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRawNits:[F

    .line 1025
    iput-object v3, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRawBacklight:[F

    .line 1026
    invoke-direct {p0}, Lcom/android/server/display/DisplayDeviceConfig;->constrainNitsAndBacklightArrays()V

    .line 1027
    return-void

    .line 1020
    :cond_39
    :goto_39
    invoke-direct {p0}, Lcom/android/server/display/DisplayDeviceConfig;->setSimpleMappingStrategyValues()V

    .line 1021
    return-void
.end method

.method private loadBrightnessRamps(Lcom/android/server/display/config/DisplayConfiguration;)V
    .registers 10
    .param p1, "config"    # Lcom/android/server/display/config/DisplayConfiguration;

    .line 1188
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getScreenBrightnessRampFastDecrease()Ljava/math/BigDecimal;

    move-result-object v0

    .line 1189
    .local v0, "fastDownDecimal":Ljava/math/BigDecimal;
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getScreenBrightnessRampFastIncrease()Ljava/math/BigDecimal;

    move-result-object v1

    .line 1190
    .local v1, "fastUpDecimal":Ljava/math/BigDecimal;
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getScreenBrightnessRampSlowDecrease()Ljava/math/BigDecimal;

    move-result-object v2

    .line 1191
    .local v2, "slowDownDecimal":Ljava/math/BigDecimal;
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getScreenBrightnessRampSlowIncrease()Ljava/math/BigDecimal;

    move-result-object v3

    .line 1193
    .local v3, "slowUpDecimal":Ljava/math/BigDecimal;
    if-eqz v0, :cond_31

    if-eqz v1, :cond_31

    if-eqz v2, :cond_31

    if-eqz v3, :cond_31

    .line 1195
    invoke-virtual {v0}, Ljava/math/BigDecimal;->floatValue()F

    move-result v4

    iput v4, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampFastDecrease:F

    .line 1196
    invoke-virtual {v1}, Ljava/math/BigDecimal;->floatValue()F

    move-result v4

    iput v4, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampFastIncrease:F

    .line 1197
    invoke-virtual {v2}, Ljava/math/BigDecimal;->floatValue()F

    move-result v4

    iput v4, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampSlowDecrease:F

    .line 1198
    invoke-virtual {v3}, Ljava/math/BigDecimal;->floatValue()F

    move-result v4

    iput v4, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampSlowIncrease:F

    goto :goto_43

    .line 1200
    :cond_31
    if-nez v0, :cond_39

    if-nez v1, :cond_39

    if-nez v2, :cond_39

    if-eqz v3, :cond_40

    .line 1202
    :cond_39
    const-string v4, "DisplayDeviceConfig"

    const-string v5, "Per display brightness ramp values ignored because not all values are present in display device config"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1205
    :cond_40
    invoke-direct {p0}, Lcom/android/server/display/DisplayDeviceConfig;->loadBrightnessRampsFromConfigXml()V

    .line 1208
    :goto_43
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getScreenBrightnessRampIncreaseMaxMillis()Ljava/math/BigInteger;

    move-result-object v4

    .line 1209
    .local v4, "increaseMax":Ljava/math/BigInteger;
    if-eqz v4, :cond_50

    .line 1210
    invoke-virtual {v4}, Ljava/math/BigInteger;->intValue()I

    move-result v5

    int-to-long v5, v5

    iput-wide v5, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampIncreaseMaxMillis:J

    .line 1212
    :cond_50
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getScreenBrightnessRampDecreaseMaxMillis()Ljava/math/BigInteger;

    move-result-object v5

    .line 1213
    .local v5, "decreaseMax":Ljava/math/BigInteger;
    if-eqz v5, :cond_5d

    .line 1214
    invoke-virtual {v5}, Ljava/math/BigInteger;->intValue()I

    move-result v6

    int-to-long v6, v6

    iput-wide v6, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampDecreaseMaxMillis:J

    .line 1216
    :cond_5d
    return-void
.end method

.method private loadBrightnessRampsFromConfigXml()V
    .registers 3

    .line 1219
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    .line 1220
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e002d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 1219
    invoke-static {v0}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessIntToFloat(I)F

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampFastIncrease:F

    .line 1221
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    .line 1222
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e002e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 1221
    invoke-static {v0}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessIntToFloat(I)F

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampSlowIncrease:F

    .line 1225
    iget v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampFastIncrease:F

    iput v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampFastDecrease:F

    .line 1226
    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampSlowDecrease:F

    .line 1227
    return-void
.end method

.method private loadBrightnessThrottlingMap(Lcom/android/server/display/config/DisplayConfiguration;)V
    .registers 13
    .param p1, "config"    # Lcom/android/server/display/config/DisplayConfiguration;

    .line 969
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getThermalThrottling()Lcom/android/server/display/config/ThermalThrottling;

    move-result-object v0

    .line 970
    .local v0, "throttlingConfig":Lcom/android/server/display/config/ThermalThrottling;
    const-string v1, "DisplayDeviceConfig"

    if-nez v0, :cond_f

    .line 971
    const-string/jumbo v2, "no thermal throttling config found"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    return-void

    .line 975
    :cond_f
    invoke-virtual {v0}, Lcom/android/server/display/config/ThermalThrottling;->getBrightnessThrottlingMap()Lcom/android/server/display/config/BrightnessThrottlingMap;

    move-result-object v2

    .line 976
    .local v2, "map":Lcom/android/server/display/config/BrightnessThrottlingMap;
    if-nez v2, :cond_1c

    .line 977
    const-string/jumbo v3, "no brightness throttling map found"

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    return-void

    .line 981
    :cond_1c
    invoke-virtual {v2}, Lcom/android/server/display/config/BrightnessThrottlingMap;->getBrightnessThrottlingPoint()Ljava/util/List;

    move-result-object v1

    .line 983
    .local v1, "points":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/display/config/BrightnessThrottlingPoint;>;"
    new-instance v3, Ljava/util/ArrayList;

    .line 984
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 986
    .local v3, "throttlingLevels":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/display/DisplayDeviceConfig$BrightnessThrottlingData$ThrottlingLevel;>;"
    const/4 v4, 0x0

    .line 987
    .local v4, "badConfig":Z
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/display/config/BrightnessThrottlingPoint;

    .line 988
    .local v6, "point":Lcom/android/server/display/config/BrightnessThrottlingPoint;
    invoke-virtual {v6}, Lcom/android/server/display/config/BrightnessThrottlingPoint;->getThermalStatus()Lcom/android/server/display/config/ThermalStatus;

    move-result-object v7

    .line 989
    .local v7, "status":Lcom/android/server/display/config/ThermalStatus;
    invoke-direct {p0, v7}, Lcom/android/server/display/DisplayDeviceConfig;->thermalStatusIsValid(Lcom/android/server/display/config/ThermalStatus;)Z

    move-result v8

    if-nez v8, :cond_46

    .line 990
    const/4 v4, 0x1

    .line 991
    goto :goto_5b

    .line 994
    :cond_46
    new-instance v8, Lcom/android/server/display/DisplayDeviceConfig$BrightnessThrottlingData$ThrottlingLevel;

    .line 995
    invoke-direct {p0, v7}, Lcom/android/server/display/DisplayDeviceConfig;->convertThermalStatus(Lcom/android/server/display/config/ThermalStatus;)I

    move-result v9

    invoke-virtual {v6}, Lcom/android/server/display/config/BrightnessThrottlingPoint;->getBrightness()Ljava/math/BigDecimal;

    move-result-object v10

    invoke-virtual {v10}, Ljava/math/BigDecimal;->floatValue()F

    move-result v10

    invoke-direct {v8, v9, v10}, Lcom/android/server/display/DisplayDeviceConfig$BrightnessThrottlingData$ThrottlingLevel;-><init>(IF)V

    .line 994
    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 996
    .end local v6    # "point":Lcom/android/server/display/config/BrightnessThrottlingPoint;
    .end local v7    # "status":Lcom/android/server/display/config/ThermalStatus;
    goto :goto_2e

    .line 998
    :cond_5b
    :goto_5b
    if-nez v4, :cond_63

    .line 999
    invoke-static {v3}, Lcom/android/server/display/DisplayDeviceConfig$BrightnessThrottlingData;->create(Ljava/util/List;)Lcom/android/server/display/DisplayDeviceConfig$BrightnessThrottlingData;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessThrottlingData:Lcom/android/server/display/DisplayDeviceConfig$BrightnessThrottlingData;

    .line 1001
    :cond_63
    return-void
.end method

.method private static loadConfigFromDirectory(Landroid/content/Context;Ljava/io/File;J)Lcom/android/server/display/DisplayDeviceConfig;
    .registers 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "baseDirectory"    # Ljava/io/File;
    .param p2, "physicalDisplayId"    # J

    .line 412
    const-string/jumbo v0, "id_%d"

    invoke-static {p0, p1, v0, p2, p3}, Lcom/android/server/display/DisplayDeviceConfig;->getConfigFromSuffix(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;J)Lcom/android/server/display/DisplayDeviceConfig;

    move-result-object v0

    .line 414
    .local v0, "config":Lcom/android/server/display/DisplayDeviceConfig;
    if-eqz v0, :cond_a

    .line 415
    return-object v0

    .line 419
    :cond_a
    const-wide v1, -0x4000000000000001L    # -1.9999999999999998

    and-long/2addr v1, p2

    .line 420
    .local v1, "withoutStableFlag":J
    const-string v3, "%d"

    invoke-static {p0, p1, v3, v1, v2}, Lcom/android/server/display/DisplayDeviceConfig;->getConfigFromSuffix(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;J)Lcom/android/server/display/DisplayDeviceConfig;

    move-result-object v0

    .line 421
    if-eqz v0, :cond_19

    .line 422
    return-object v0

    .line 426
    :cond_19
    nop

    .line 427
    invoke-static {p2, p3}, Landroid/view/DisplayAddress;->fromPhysicalDisplayId(J)Landroid/view/DisplayAddress$Physical;

    move-result-object v3

    .line 428
    .local v3, "physicalAddress":Landroid/view/DisplayAddress$Physical;
    invoke-virtual {v3}, Landroid/view/DisplayAddress$Physical;->getPort()I

    move-result v4

    .line 429
    .local v4, "port":I
    int-to-long v5, v4

    const-string/jumbo v7, "port_%d"

    invoke-static {p0, p1, v7, v5, v6}, Lcom/android/server/display/DisplayDeviceConfig;->getConfigFromSuffix(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;J)Lcom/android/server/display/DisplayDeviceConfig;

    move-result-object v0

    .line 430
    return-object v0
.end method

.method private static loadDefaultConfigurationXml(Landroid/content/Context;)Lcom/android/server/display/config/DisplayConfiguration;
    .registers 13
    .param p0, "context"    # Landroid/content/Context;

    .line 360
    const-string v0, "DisplayDeviceConfig"

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 361
    .local v1, "defaultXmlLocations":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-static {}, Landroid/os/Environment;->getProductDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "etc"

    const-string v4, "displayconfig"

    const-string v5, "default.xml"

    filled-new-array {v3, v4, v5}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 363
    invoke-static {}, Landroid/os/Environment;->getVendorDirectory()Ljava/io/File;

    move-result-object v2

    filled-new-array {v3, v4, v5}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 367
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 368
    const v6, 0x10e0059

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 369
    .local v2, "uiModeType":I
    invoke-static {v2}, Landroid/content/res/Configuration;->getUiModeTypeString(I)Ljava/lang/String;

    move-result-object v6

    .line 370
    .local v6, "uiModeTypeStr":Ljava/lang/String;
    if-eqz v6, :cond_5d

    .line 371
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v7

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v3, v8, v9

    const/4 v10, 0x1

    aput-object v4, v8, v10

    const/4 v11, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v6, v10, v9

    .line 373
    const-string v9, "default_%s.xml"

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v11

    .line 371
    invoke-static {v7, v8}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 375
    :cond_5d
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v7

    filled-new-array {v3, v4, v5}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 378
    invoke-static {v1}, Lcom/android/server/display/DisplayDeviceConfig;->getFirstExistingFile(Ljava/util/Collection;)Ljava/io/File;

    move-result-object v3

    .line 379
    .local v3, "configFile":Ljava/io/File;
    if-nez v3, :cond_74

    .line 381
    const/4 v0, 0x0

    return-object v0

    .line 384
    :cond_74
    const/4 v4, 0x0

    .line 386
    .local v4, "defaultConfig":Lcom/android/server/display/config/DisplayConfiguration;
    :try_start_75
    new-instance v5, Ljava/io/BufferedInputStream;

    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_7f
    .catch Ljava/io/IOException; {:try_start_75 .. :try_end_7f} :catch_99
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_75 .. :try_end_7f} :catch_99
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_75 .. :try_end_7f} :catch_99

    .line 387
    .local v5, "in":Ljava/io/InputStream;
    :try_start_7f
    invoke-static {v5}, Lcom/android/server/display/config/XmlParser;->read(Ljava/io/InputStream;)Lcom/android/server/display/config/DisplayConfiguration;

    move-result-object v7

    move-object v4, v7

    .line 388
    if-nez v4, :cond_8b

    .line 389
    const-string v7, "Default DisplayDeviceConfig file is null"

    invoke-static {v0, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8b
    .catchall {:try_start_7f .. :try_end_8b} :catchall_8f

    .line 391
    :cond_8b
    :try_start_8b
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_8e
    .catch Ljava/io/IOException; {:try_start_8b .. :try_end_8e} :catch_99
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_8b .. :try_end_8e} :catch_99
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8b .. :try_end_8e} :catch_99

    .line 394
    .end local v5    # "in":Ljava/io/InputStream;
    goto :goto_b0

    .line 386
    .restart local v5    # "in":Ljava/io/InputStream;
    :catchall_8f
    move-exception v7

    :try_start_90
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_93
    .catchall {:try_start_90 .. :try_end_93} :catchall_94

    goto :goto_98

    :catchall_94
    move-exception v8

    :try_start_95
    invoke-virtual {v7, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "defaultXmlLocations":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .end local v2    # "uiModeType":I
    .end local v3    # "configFile":Ljava/io/File;
    .end local v4    # "defaultConfig":Lcom/android/server/display/config/DisplayConfiguration;
    .end local v6    # "uiModeTypeStr":Ljava/lang/String;
    .end local p0    # "context":Landroid/content/Context;
    :goto_98
    throw v7
    :try_end_99
    .catch Ljava/io/IOException; {:try_start_95 .. :try_end_99} :catch_99
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_95 .. :try_end_99} :catch_99
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_95 .. :try_end_99} :catch_99

    .line 391
    .end local v5    # "in":Ljava/io/InputStream;
    .restart local v1    # "defaultXmlLocations":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .restart local v2    # "uiModeType":I
    .restart local v3    # "configFile":Ljava/io/File;
    .restart local v4    # "defaultConfig":Lcom/android/server/display/config/DisplayConfiguration;
    .restart local v6    # "uiModeTypeStr":Ljava/lang/String;
    .restart local p0    # "context":Landroid/content/Context;
    :catch_99
    move-exception v5

    .line 392
    .local v5, "e":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Encountered an error while reading/parsing display config file: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 396
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_b0
    return-object v4
.end method

.method private loadDensityMapping(Lcom/android/server/display/config/DisplayConfiguration;)V
    .registers 10
    .param p1, "config"    # Lcom/android/server/display/config/DisplayConfiguration;

    .line 826
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getDensityMapping()Lcom/android/server/display/config/DensityMapping;

    move-result-object v0

    if-nez v0, :cond_7

    .line 827
    return-void

    .line 830
    :cond_7
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getDensityMapping()Lcom/android/server/display/config/DensityMapping;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/display/config/DensityMapping;->getDensity()Ljava/util/List;

    move-result-object v0

    .line 832
    .local v0, "entriesFromXml":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/display/config/Density;>;"
    nop

    .line 833
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/server/display/DensityMapping$Entry;

    .line 834
    .local v1, "entries":[Lcom/android/server/display/DensityMapping$Entry;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_17
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_45

    .line 835
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/display/config/Density;

    .line 836
    .local v3, "density":Lcom/android/server/display/config/Density;
    new-instance v4, Lcom/android/server/display/DensityMapping$Entry;

    .line 837
    invoke-virtual {v3}, Lcom/android/server/display/config/Density;->getWidth()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->intValue()I

    move-result v5

    .line 838
    invoke-virtual {v3}, Lcom/android/server/display/config/Density;->getHeight()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6}, Ljava/math/BigInteger;->intValue()I

    move-result v6

    .line 839
    invoke-virtual {v3}, Lcom/android/server/display/config/Density;->getDensity()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7}, Ljava/math/BigInteger;->intValue()I

    move-result v7

    invoke-direct {v4, v5, v6, v7}, Lcom/android/server/display/DensityMapping$Entry;-><init>(III)V

    aput-object v4, v1, v2

    .line 834
    .end local v3    # "density":Lcom/android/server/display/config/Density;
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 841
    .end local v2    # "i":I
    :cond_45
    invoke-static {v1}, Lcom/android/server/display/DensityMapping;->createByOwning([Lcom/android/server/display/DensityMapping$Entry;)Lcom/android/server/display/DensityMapping;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDensityMapping:Lcom/android/server/display/DensityMapping;

    .line 842
    return-void
.end method

.method private loadHighBrightnessModeData(Lcom/android/server/display/config/DisplayConfiguration;)V
    .registers 11
    .param p1, "config"    # Lcom/android/server/display/config/DisplayConfiguration;

    .line 1142
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getHighBrightnessMode()Lcom/android/server/display/config/HighBrightnessMode;

    move-result-object v0

    .line 1143
    .local v0, "hbm":Lcom/android/server/display/config/HighBrightnessMode;
    if-eqz v0, :cond_113

    .line 1144
    invoke-virtual {v0}, Lcom/android/server/display/config/HighBrightnessMode;->getEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mIsHighBrightnessModeEnabled:Z

    .line 1145
    new-instance v1, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    invoke-direct {v1}, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;-><init>()V

    iput-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHbmData:Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    .line 1146
    invoke-virtual {v0}, Lcom/android/server/display/config/HighBrightnessMode;->getMinimumLux_all()Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigDecimal;->floatValue()F

    move-result v2

    iput v2, v1, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->minimumLux:F

    .line 1147
    invoke-virtual {v0}, Lcom/android/server/display/config/HighBrightnessMode;->getTransitionPoint_all()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->floatValue()F

    move-result v1

    .line 1148
    .local v1, "transitionPointBacklightScale":F
    iget v2, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMaximum:F

    cmpl-float v2, v1, v2

    if-gez v2, :cond_ea

    .line 1153
    iget-object v2, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHbmData:Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    iget-object v3, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightToBrightnessSpline:Landroid/util/Spline;

    .line 1154
    invoke-virtual {v3, v1}, Landroid/util/Spline;->interpolate(F)F

    move-result v3

    iput v3, v2, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->transitionPoint:F

    .line 1155
    invoke-virtual {v0}, Lcom/android/server/display/config/HighBrightnessMode;->getTiming_all()Lcom/android/server/display/config/HbmTiming;

    move-result-object v2

    .line 1156
    .local v2, "hbmTiming":Lcom/android/server/display/config/HbmTiming;
    iget-object v3, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHbmData:Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    invoke-virtual {v2}, Lcom/android/server/display/config/HbmTiming;->getTimeWindowSecs_all()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    iput-wide v4, v3, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->timeWindowMillis:J

    .line 1157
    iget-object v3, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHbmData:Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    invoke-virtual {v2}, Lcom/android/server/display/config/HbmTiming;->getTimeMaxSecs_all()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v4

    mul-long/2addr v4, v6

    iput-wide v4, v3, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->timeMaxMillis:J

    .line 1158
    iget-object v3, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHbmData:Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    invoke-virtual {v2}, Lcom/android/server/display/config/HbmTiming;->getTimeMinSecs_all()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v4

    mul-long/2addr v4, v6

    iput-wide v4, v3, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->timeMinMillis:J

    .line 1159
    iget-object v3, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHbmData:Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    invoke-virtual {v0}, Lcom/android/server/display/config/HighBrightnessMode;->getThermalStatusLimit_all()Lcom/android/server/display/config/ThermalStatus;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/display/DisplayDeviceConfig;->convertThermalStatus(Lcom/android/server/display/config/ThermalStatus;)I

    move-result v4

    iput v4, v3, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->thermalStatusLimit:I

    .line 1160
    iget-object v3, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHbmData:Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    invoke-virtual {v0}, Lcom/android/server/display/config/HighBrightnessMode;->getAllowInLowPowerMode_all()Z

    move-result v4

    iput-boolean v4, v3, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->allowInLowPowerMode:Z

    .line 1161
    invoke-virtual {v0}, Lcom/android/server/display/config/HighBrightnessMode;->getRefreshRate_all()Lcom/android/server/display/config/RefreshRateRange;

    move-result-object v3

    .line 1162
    .local v3, "rr":Lcom/android/server/display/config/RefreshRateRange;
    if-eqz v3, :cond_97

    .line 1163
    invoke-virtual {v3}, Lcom/android/server/display/config/RefreshRateRange;->getMinimum()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->floatValue()F

    move-result v4

    .line 1164
    .local v4, "min":F
    invoke-virtual {v3}, Lcom/android/server/display/config/RefreshRateRange;->getMaximum()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->floatValue()F

    move-result v5

    .line 1165
    .local v5, "max":F
    iget-object v6, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRefreshRateLimitations:Ljava/util/List;

    new-instance v7, Landroid/hardware/display/DisplayManagerInternal$RefreshRateLimitation;

    const/4 v8, 0x1

    invoke-direct {v7, v8, v4, v5}, Landroid/hardware/display/DisplayManagerInternal$RefreshRateLimitation;-><init>(IFF)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1168
    .end local v4    # "min":F
    .end local v5    # "max":F
    :cond_97
    invoke-virtual {v0}, Lcom/android/server/display/config/HighBrightnessMode;->getMinimumHdrPercentOfScreen_all()Ljava/math/BigDecimal;

    move-result-object v4

    .line 1169
    .local v4, "minHdrPctOfScreen":Ljava/math/BigDecimal;
    const/high16 v5, 0x3f000000    # 0.5f

    if-eqz v4, :cond_df

    .line 1170
    iget-object v6, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHbmData:Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    invoke-virtual {v4}, Ljava/math/BigDecimal;->floatValue()F

    move-result v7

    iput v7, v6, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->minimumHdrPercentOfScreen:F

    .line 1171
    iget-object v6, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHbmData:Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    iget v6, v6, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->minimumHdrPercentOfScreen:F

    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v6, v6, v7

    if-gtz v6, :cond_ba

    iget-object v6, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHbmData:Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    iget v6, v6, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->minimumHdrPercentOfScreen:F

    const/4 v7, 0x0

    cmpg-float v6, v6, v7

    if-gez v6, :cond_e3

    .line 1173
    :cond_ba
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid minimum HDR percent of screen: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHbmData:Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    iget v7, v7, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->minimumHdrPercentOfScreen:F

    .line 1174
    invoke-static {v7}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1173
    const-string v7, "DisplayDeviceConfig"

    invoke-static {v7, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1175
    iget-object v6, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHbmData:Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    iput v5, v6, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->minimumHdrPercentOfScreen:F

    goto :goto_e3

    .line 1178
    :cond_df
    iget-object v6, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHbmData:Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    iput v5, v6, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->minimumHdrPercentOfScreen:F

    .line 1181
    :cond_e3
    :goto_e3
    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayDeviceConfig;->loadSdrHdrRatioMap(Lcom/android/server/display/config/HighBrightnessMode;)Landroid/util/Spline;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/display/DisplayDeviceConfig;->mSdrToHdrRatioSpline:Landroid/util/Spline;

    goto :goto_113

    .line 1149
    .end local v2    # "hbmTiming":Lcom/android/server/display/config/HbmTiming;
    .end local v3    # "rr":Lcom/android/server/display/config/RefreshRateRange;
    .end local v4    # "minHdrPctOfScreen":Ljava/math/BigDecimal;
    :cond_ea
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HBM transition point invalid. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHbmData:Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    iget v4, v4, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->transitionPoint:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not less than "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMaximum:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1183
    .end local v1    # "transitionPointBacklightScale":F
    :cond_113
    :goto_113
    return-void
.end method

.method private loadProxSensorFromDdc(Lcom/android/server/display/config/DisplayConfiguration;)V
    .registers 6
    .param p1, "config"    # Lcom/android/server/display/config/DisplayConfiguration;

    .line 1256
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getProxSensor()Lcom/android/server/display/config/SensorDetails;

    move-result-object v0

    .line 1257
    .local v0, "sensorDetails":Lcom/android/server/display/config/SensorDetails;
    if-eqz v0, :cond_35

    .line 1258
    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mProximitySensor:Lcom/android/server/display/DisplayDeviceConfig$SensorData;

    invoke-virtual {v0}, Lcom/android/server/display/config/SensorDetails;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/display/DisplayDeviceConfig$SensorData;->name:Ljava/lang/String;

    .line 1259
    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mProximitySensor:Lcom/android/server/display/DisplayDeviceConfig$SensorData;

    invoke-virtual {v0}, Lcom/android/server/display/config/SensorDetails;->getType()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/display/DisplayDeviceConfig$SensorData;->type:Ljava/lang/String;

    .line 1260
    invoke-virtual {v0}, Lcom/android/server/display/config/SensorDetails;->getRefreshRate()Lcom/android/server/display/config/RefreshRateRange;

    move-result-object v1

    .line 1261
    .local v1, "rr":Lcom/android/server/display/config/RefreshRateRange;
    if-eqz v1, :cond_34

    .line 1262
    iget-object v2, p0, Lcom/android/server/display/DisplayDeviceConfig;->mProximitySensor:Lcom/android/server/display/DisplayDeviceConfig$SensorData;

    invoke-virtual {v1}, Lcom/android/server/display/config/RefreshRateRange;->getMinimum()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->floatValue()F

    move-result v3

    iput v3, v2, Lcom/android/server/display/DisplayDeviceConfig$SensorData;->minRefreshRate:F

    .line 1263
    iget-object v2, p0, Lcom/android/server/display/DisplayDeviceConfig;->mProximitySensor:Lcom/android/server/display/DisplayDeviceConfig$SensorData;

    invoke-virtual {v1}, Lcom/android/server/display/config/RefreshRateRange;->getMaximum()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->floatValue()F

    move-result v3

    iput v3, v2, Lcom/android/server/display/DisplayDeviceConfig$SensorData;->maxRefreshRate:F

    .line 1265
    .end local v1    # "rr":Lcom/android/server/display/config/RefreshRateRange;
    :cond_34
    goto :goto_38

    .line 1266
    :cond_35
    invoke-direct {p0}, Lcom/android/server/display/DisplayDeviceConfig;->setProxSensorUnspecified()V

    .line 1268
    :goto_38
    return-void
.end method

.method private loadQuirks(Lcom/android/server/display/config/DisplayConfiguration;)V
    .registers 5
    .param p1, "config"    # Lcom/android/server/display/config/DisplayConfiguration;

    .line 1135
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getQuirks()Lcom/android/server/display/config/DisplayQuirks;

    move-result-object v0

    .line 1136
    .local v0, "quirks":Lcom/android/server/display/config/DisplayQuirks;
    if-eqz v0, :cond_11

    .line 1137
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/android/server/display/config/DisplayQuirks;->getQuirk()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mQuirks:Ljava/util/List;

    .line 1139
    :cond_11
    return-void
.end method

.method private loadSdrHdrRatioMap(Lcom/android/server/display/config/HighBrightnessMode;)Landroid/util/Spline;
    .registers 13
    .param p1, "hbmConfig"    # Lcom/android/server/display/config/HighBrightnessMode;

    .line 935
    invoke-virtual {p1}, Lcom/android/server/display/config/HighBrightnessMode;->getSdrHdrRatioMap_all()Lcom/android/server/display/config/SdrHdrRatioMap;

    move-result-object v0

    .line 937
    .local v0, "sdrHdrRatioMap":Lcom/android/server/display/config/SdrHdrRatioMap;
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 938
    return-object v1

    .line 941
    :cond_8
    invoke-virtual {v0}, Lcom/android/server/display/config/SdrHdrRatioMap;->getPoint()Ljava/util/List;

    move-result-object v2

    .line 942
    .local v2, "points":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/display/config/SdrHdrRatioPoint;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 943
    .local v3, "size":I
    if-gtz v3, :cond_13

    .line 944
    return-object v1

    .line 947
    :cond_13
    new-array v4, v3, [F

    .line 948
    .local v4, "nits":[F
    new-array v5, v3, [F

    .line 950
    .local v5, "ratios":[F
    const/4 v6, 0x0

    .line 951
    .local v6, "i":I
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1c
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_76

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/display/config/SdrHdrRatioPoint;

    .line 952
    .local v8, "point":Lcom/android/server/display/config/SdrHdrRatioPoint;
    invoke-virtual {v8}, Lcom/android/server/display/config/SdrHdrRatioPoint;->getSdrNits()Ljava/math/BigDecimal;

    move-result-object v9

    invoke-virtual {v9}, Ljava/math/BigDecimal;->floatValue()F

    move-result v9

    aput v9, v4, v6

    .line 953
    if-lez v6, :cond_68

    .line 954
    aget v9, v4, v6

    add-int/lit8 v10, v6, -0x1

    aget v10, v4, v10

    cmpg-float v9, v9, v10

    if-gez v9, :cond_68

    .line 955
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "sdrHdrRatioMap must be non-decreasing, ignoring rest  of configuration. nits: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget v9, v4, v6

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " < "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int/lit8 v9, v6, -0x1

    aget v9, v4, v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v9, "DisplayDeviceConfig"

    invoke-static {v9, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    return-object v1

    .line 961
    :cond_68
    invoke-virtual {v8}, Lcom/android/server/display/config/SdrHdrRatioPoint;->getHdrRatio()Ljava/math/BigDecimal;

    move-result-object v9

    invoke-virtual {v9}, Ljava/math/BigDecimal;->floatValue()F

    move-result v9

    aput v9, v5, v6

    .line 962
    nop

    .end local v8    # "point":Lcom/android/server/display/config/SdrHdrRatioPoint;
    add-int/lit8 v6, v6, 0x1

    .line 963
    goto :goto_1c

    .line 965
    :cond_76
    invoke-static {v4, v5}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v1

    return-object v1
.end method

.method private rawBacklightToNits(IF)F
    .registers 8
    .param p1, "i"    # I
    .param p2, "backlight"    # F

    .line 1097
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRawBacklight:[F

    aget v1, v0, p1

    add-int/lit8 v2, p1, 0x1

    aget v0, v0, v2

    iget-object v2, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRawNits:[F

    aget v3, v2, p1

    add-int/lit8 v4, p1, 0x1

    aget v2, v2, v4

    invoke-static {v1, v0, v3, v2, p2}, Landroid/util/MathUtils;->map(FFFFF)F

    move-result v0

    return v0
.end method

.method private setProxSensorUnspecified()V
    .registers 3

    .line 1251
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mProximitySensor:Lcom/android/server/display/DisplayDeviceConfig$SensorData;

    const-string v1, ""

    iput-object v1, v0, Lcom/android/server/display/DisplayDeviceConfig$SensorData;->name:Ljava/lang/String;

    .line 1252
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mProximitySensor:Lcom/android/server/display/DisplayDeviceConfig$SensorData;

    iput-object v1, v0, Lcom/android/server/display/DisplayDeviceConfig$SensorData;->type:Ljava/lang/String;

    .line 1253
    return-void
.end method

.method private setSimpleMappingStrategyValues()V
    .registers 3

    .line 1033
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mNits:[F

    .line 1034
    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklight:[F

    .line 1035
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_18

    .line 1036
    .local v0, "simpleMappingStrategyArray":[F
    invoke-static {v0, v0}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessToBacklightSpline:Landroid/util/Spline;

    .line 1038
    invoke-static {v0, v0}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightToBrightnessSpline:Landroid/util/Spline;

    .line 1040
    return-void

    :array_18
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private thermalStatusIsValid(Lcom/android/server/display/config/ThermalStatus;)Z
    .registers 5
    .param p1, "value"    # Lcom/android/server/display/config/ThermalStatus;

    .line 1310
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 1311
    return v0

    .line 1314
    :cond_4
    sget-object v1, Lcom/android/server/display/DisplayDeviceConfig$1;->$SwitchMap$com$android$server$display$config$ThermalStatus:[I

    invoke-virtual {p1}, Lcom/android/server/display/config/ThermalStatus;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_12

    .line 1324
    return v0

    .line 1322
    :pswitch_10
    const/4 v0, 0x1

    return v0

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
    .end packed-switch
.end method


# virtual methods
.method public getAmbientHorizonLong()I
    .registers 2

    .line 616
    iget v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientHorizonLong:I

    return v0
.end method

.method public getAmbientHorizonShort()I
    .registers 2

    .line 620
    iget v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientHorizonShort:I

    return v0
.end method

.method getAmbientLightSensor()Lcom/android/server/display/DisplayDeviceConfig$SensorData;
    .registers 2

    .line 640
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientLightSensor:Lcom/android/server/display/DisplayDeviceConfig$SensorData;

    return-object v0
.end method

.method public getAmbientLuxBrighteningMinThreshold()F
    .registers 2

    .line 632
    iget v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientLuxBrighteningMinThreshold:F

    return v0
.end method

.method public getAmbientLuxDarkeningMinThreshold()F
    .registers 2

    .line 636
    iget v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientLuxDarkeningMinThreshold:F

    return v0
.end method

.method public getBacklight()[F
    .registers 2

    .line 448
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklight:[F

    return-object v0
.end method

.method public getBacklightFromBrightness(F)F
    .registers 3
    .param p1, "brightness"    # F

    .line 459
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessToBacklightSpline:Landroid/util/Spline;

    invoke-virtual {v0, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v0

    return v0
.end method

.method public getBrightness()[F
    .registers 2

    .line 579
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightness:[F

    return-object v0
.end method

.method public getBrightnessDefault()F
    .registers 2

    .line 588
    iget v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessDefault:F

    return v0
.end method

.method public getBrightnessFromNit(F)F
    .registers 5
    .param p1, "nit"    # F

    .line 483
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mNitsToBacklightSpline:Landroid/util/Spline;

    if-nez v0, :cond_f

    .line 484
    const-string v0, "DisplayDeviceConfig"

    const-string/jumbo v1, "requesting nits when no mapping exists."

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    const/high16 v0, -0x40800000    # -1.0f

    return v0

    .line 487
    :cond_f
    invoke-virtual {v0, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v0

    .line 488
    .local v0, "backlight":F
    iget v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMinimum:F

    iget v2, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMaximum:F

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 489
    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightToBrightnessSpline:Landroid/util/Spline;

    invoke-virtual {v1, v0}, Landroid/util/Spline;->interpolate(F)F

    move-result v1

    return v1
.end method

.method public getBrightnessRampDecreaseMaxMillis()J
    .registers 3

    .line 608
    iget-wide v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampDecreaseMaxMillis:J

    return-wide v0
.end method

.method public getBrightnessRampFastDecrease()F
    .registers 2

    .line 592
    iget v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampFastDecrease:F

    return v0
.end method

.method public getBrightnessRampFastIncrease()F
    .registers 2

    .line 596
    iget v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampFastIncrease:F

    return v0
.end method

.method public getBrightnessRampIncreaseMaxMillis()J
    .registers 3

    .line 612
    iget-wide v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampIncreaseMaxMillis:J

    return-wide v0
.end method

.method public getBrightnessRampSlowDecrease()F
    .registers 2

    .line 600
    iget v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampSlowDecrease:F

    return v0
.end method

.method public getBrightnessRampSlowIncrease()F
    .registers 2

    .line 604
    iget v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampSlowIncrease:F

    return v0
.end method

.method public getBrightnessThrottlingData()Lcom/android/server/display/DisplayDeviceConfig$BrightnessThrottlingData;
    .registers 2

    .line 681
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessThrottlingData:Lcom/android/server/display/DisplayDeviceConfig$BrightnessThrottlingData;

    invoke-static {v0}, Lcom/android/server/display/DisplayDeviceConfig$BrightnessThrottlingData;->create(Lcom/android/server/display/DisplayDeviceConfig$BrightnessThrottlingData;)Lcom/android/server/display/DisplayDeviceConfig$BrightnessThrottlingData;

    move-result-object v0

    return-object v0
.end method

.method public getDensityMapping()Lcom/android/server/display/DensityMapping;
    .registers 2

    .line 674
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDensityMapping:Lcom/android/server/display/DensityMapping;

    return-object v0
.end method

.method public getGalleryHdrBrightness(F)F
    .registers 8
    .param p1, "brightness"    # F

    .line 539
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayDeviceConfig;->getBacklightFromBrightness(F)F

    move-result v0

    .line 540
    .local v0, "backlight":F
    invoke-virtual {p0, v0}, Lcom/android/server/display/DisplayDeviceConfig;->getNitsFromBacklight(F)F

    move-result v1

    .line 541
    .local v1, "nits":F
    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v3, v1, v2

    if-nez v3, :cond_f

    .line 542
    return v2

    .line 545
    :cond_f
    sget-object v3, Lcom/android/server/display/DisplayDeviceConfig;->GALLERY_HDR_FACTOR:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    mul-float/2addr v3, v1

    .line 546
    .local v3, "hdrNits":F
    iget-object v4, p0, Lcom/android/server/display/DisplayDeviceConfig;->mNitsToBacklightSpline:Landroid/util/Spline;

    if-nez v4, :cond_1b

    .line 547
    return v2

    .line 549
    :cond_1b
    iget-object v2, p0, Lcom/android/server/display/DisplayDeviceConfig;->mNits:[F

    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    aget v5, v2, v5

    cmpl-float v5, v3, v5

    if-ltz v5, :cond_2b

    .line 550
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    aget v3, v2, v5

    .line 552
    :cond_2b
    const/high16 v2, 0x40a00000    # 5.0f

    cmpg-float v2, v1, v2

    if-gez v2, :cond_32

    .line 553
    move v3, v1

    .line 555
    :cond_32
    invoke-virtual {v4, v3}, Landroid/util/Spline;->interpolate(F)F

    move-result v2

    .line 556
    .local v2, "hdrBacklight":F
    iget v4, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMinimum:F

    iget v5, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMaximum:F

    invoke-static {v5, v2}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 557
    iget-object v4, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightToBrightnessSpline:Landroid/util/Spline;

    invoke-virtual {v4, v2}, Landroid/util/Spline;->interpolate(F)F

    move-result v4

    .line 568
    .local v4, "hdrBrightness":F
    return v4
.end method

.method public getHdrBrightnessFromSdr(F)F
    .registers 9
    .param p1, "brightness"    # F

    .line 499
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mSdrToHdrRatioSpline:Landroid/util/Spline;

    const/high16 v1, -0x40800000    # -1.0f

    if-nez v0, :cond_7

    .line 500
    return v1

    .line 503
    :cond_7
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayDeviceConfig;->getBacklightFromBrightness(F)F

    move-result v0

    .line 504
    .local v0, "backlight":F
    invoke-virtual {p0, v0}, Lcom/android/server/display/DisplayDeviceConfig;->getNitsFromBacklight(F)F

    move-result v2

    .line 505
    .local v2, "nits":F
    cmpl-float v3, v2, v1

    if-nez v3, :cond_14

    .line 506
    return v1

    .line 509
    :cond_14
    iget-object v3, p0, Lcom/android/server/display/DisplayDeviceConfig;->mSdrToHdrRatioSpline:Landroid/util/Spline;

    invoke-virtual {v3, v2}, Landroid/util/Spline;->interpolate(F)F

    move-result v3

    .line 510
    .local v3, "ratio":F
    mul-float v4, v2, v3

    .line 511
    .local v4, "hdrNits":F
    iget-object v5, p0, Lcom/android/server/display/DisplayDeviceConfig;->mNitsToBacklightSpline:Landroid/util/Spline;

    if-nez v5, :cond_21

    .line 512
    return v1

    .line 515
    :cond_21
    invoke-virtual {v5, v4}, Landroid/util/Spline;->interpolate(F)F

    move-result v1

    .line 516
    .local v1, "hdrBacklight":F
    iget v5, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMinimum:F

    iget v6, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMaximum:F

    invoke-static {v6, v1}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 517
    iget-object v5, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightToBrightnessSpline:Landroid/util/Spline;

    invoke-virtual {v5, v1}, Landroid/util/Spline;->interpolate(F)F

    move-result v5

    .line 529
    .local v5, "hdrBrightness":F
    return v5
.end method

.method public getHighBrightnessModeData()Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;
    .registers 3

    .line 660
    iget-boolean v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mIsHighBrightnessModeEnabled:Z

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHbmData:Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    if-nez v0, :cond_9

    goto :goto_14

    .line 664
    :cond_9
    new-instance v0, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    invoke-direct {v0}, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;-><init>()V

    .line 665
    .local v0, "hbmData":Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;
    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHbmData:Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    invoke-virtual {v1, v0}, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->copyTo(Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;)V

    .line 666
    return-object v0

    .line 661
    .end local v0    # "hbmData":Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;
    :cond_14
    :goto_14
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNits()[F
    .registers 2

    .line 439
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mNits:[F

    return-object v0
.end method

.method public getNitsFromBacklight(F)F
    .registers 4
    .param p1, "backlight"    # F

    .line 468
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightToNitsSpline:Landroid/util/Spline;

    if-nez v0, :cond_f

    .line 469
    const-string v0, "DisplayDeviceConfig"

    const-string/jumbo v1, "requesting nits when no mapping exists."

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    const/high16 v0, -0x40800000    # -1.0f

    return v0

    .line 472
    :cond_f
    iget v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMinimum:F

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 473
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightToNitsSpline:Landroid/util/Spline;

    invoke-virtual {v0, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v0

    return v0
.end method

.method getProximitySensor()Lcom/android/server/display/DisplayDeviceConfig$SensorData;
    .registers 2

    .line 644
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mProximitySensor:Lcom/android/server/display/DisplayDeviceConfig$SensorData;

    return-object v0
.end method

.method public getRefreshRateLimitations()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/display/DisplayManagerInternal$RefreshRateLimitation;",
            ">;"
        }
    .end annotation

    .line 670
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRefreshRateLimitations:Ljava/util/List;

    return-object v0
.end method

.method public getScreenBrighteningMinThreshold()F
    .registers 2

    .line 624
    iget v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mScreenBrighteningMinThreshold:F

    return v0
.end method

.method public getScreenDarkeningMinThreshold()F
    .registers 2

    .line 628
    iget v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mScreenDarkeningMinThreshold:F

    return v0
.end method

.method public hasQuirk(Ljava/lang/String;)Z
    .registers 3
    .param p1, "quirkValue"    # Ljava/lang/String;

    .line 653
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mQuirks:Ljava/util/List;

    if-eqz v0, :cond_c

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 686
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DisplayDeviceConfig{mLoadedFrom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mLoadedFrom:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mBacklight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklight:[F

    .line 688
    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mNits="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mNits:[F

    .line 689
    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRawBacklight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRawBacklight:[F

    .line 690
    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRawNits="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRawNits:[F

    .line 691
    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mInterpolationType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mInterpolationType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightness:[F

    .line 693
    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mBrightnessToBacklightSpline="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessToBacklightSpline:Landroid/util/Spline;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mBacklightToBrightnessSpline="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightToBrightnessSpline:Landroid/util/Spline;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mNitsToBacklightSpline="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mNitsToBacklightSpline:Landroid/util/Spline;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mBacklightMinimum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMinimum:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mBacklightMaximum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMaximum:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mBrightnessDefault="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessDefault:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mQuirks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mQuirks:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isHbmEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mIsHighBrightnessModeEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mHbmData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHbmData:Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSdrToHdrRatioSpline="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mSdrToHdrRatioSpline:Landroid/util/Spline;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mBrightnessThrottlingData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessThrottlingData:Lcom/android/server/display/DisplayDeviceConfig$BrightnessThrottlingData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mBrightnessRampFastDecrease="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampFastDecrease:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mBrightnessRampFastIncrease="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampFastIncrease:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mBrightnessRampSlowDecrease="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampSlowDecrease:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mBrightnessRampSlowIncrease="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampSlowIncrease:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mBrightnessRampDecreaseMaxMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampDecreaseMaxMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mBrightnessRampIncreaseMaxMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampIncreaseMaxMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAmbientHorizonLong="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientHorizonLong:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAmbientHorizonShort="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientHorizonShort:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mScreenDarkeningMinThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mScreenDarkeningMinThreshold:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mScreenBrighteningMinThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mScreenBrighteningMinThreshold:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAmbientLuxDarkeningMinThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientLuxDarkeningMinThreshold:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAmbientLuxBrighteningMinThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientLuxBrighteningMinThreshold:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAmbientLightSensor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientLightSensor:Lcom/android/server/display/DisplayDeviceConfig$SensorData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mProximitySensor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mProximitySensor:Lcom/android/server/display/DisplayDeviceConfig$SensorData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRefreshRateLimitations= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRefreshRateLimitations:Ljava/util/List;

    .line 719
    invoke-interface {v1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDensityMapping= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDensityMapping:Lcom/android/server/display/DensityMapping;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 686
    return-object v0
.end method
