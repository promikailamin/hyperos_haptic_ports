.class public Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;
.super Ljava/lang/Object;
.source "DisplayModeDirector.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayModeDirector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BrightnessObserver"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;
    }
.end annotation


# static fields
.field private static final LIGHT_SENSOR_RATE_MS:I = 0xfa


# instance fields
.field private mAmbientFilter:Lcom/android/server/display/utils/AmbientFilter;

.field private mAmbientLux:F

.field private mBrightness:I

.field private final mContext:Landroid/content/Context;

.field private mDefaultDisplayState:I

.field private final mHandler:Landroid/os/Handler;

.field private mHighAmbientBrightnessThresholds:[I

.field private mHighDisplayBrightnessThresholds:[I

.field private final mInjector:Lcom/android/server/display/DisplayModeDirector$Injector;

.field private mLightSensor:Landroid/hardware/Sensor;

.field private final mLightSensorListener:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;

.field private mLoggingEnabled:Z

.field private mLowAmbientBrightnessThresholds:[I

.field private mLowDisplayBrightnessThresholds:[I

.field private mLowPowerModeEnabled:Z

.field private mRefreshRateChangeable:Z

.field private mRefreshRateInHighZone:I

.field private mRefreshRateInLowZone:I

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mShouldObserveAmbientHighChange:Z

.field private mShouldObserveAmbientLowChange:Z

.field private mShouldObserveDisplayHighChange:Z

.field private mShouldObserveDisplayLowChange:Z

.field final synthetic this$0:Lcom/android/server/display/DisplayModeDirector;


# direct methods
.method static bridge synthetic -$$Nest$fgetmAmbientFilter(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;)Lcom/android/server/display/utils/AmbientFilter;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mAmbientFilter:Lcom/android/server/display/utils/AmbientFilter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAmbientLux(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;)F
    .registers 1

    iget p0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mAmbientLux:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHighAmbientBrightnessThresholds(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;)[I
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mHighAmbientBrightnessThresholds:[I

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLowAmbientBrightnessThresholds(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;)[I
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLowAmbientBrightnessThresholds:[I

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmAmbientLux(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;F)V
    .registers 2

    iput p1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mAmbientLux:F

    return-void
.end method

.method static bridge synthetic -$$Nest$monBrightnessChangedLocked(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->onBrightnessChangedLocked()V

    return-void
.end method

.method constructor <init>(Lcom/android/server/display/DisplayModeDirector;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayModeDirector$Injector;)V
    .registers 9
    .param p1, "this$0"    # Lcom/android/server/display/DisplayModeDirector;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "injector"    # Lcom/android/server/display/DisplayModeDirector$Injector;

    .line 1727
    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1705
    new-instance v0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;-><init>(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener-IA;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLightSensorListener:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;

    .line 1708
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mAmbientLux:F

    .line 1710
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mBrightness:I

    .line 1720
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mDefaultDisplayState:I

    .line 1721
    iput-boolean v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mRefreshRateChangeable:Z

    .line 1722
    iput-boolean v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLowPowerModeEnabled:Z

    .line 1728
    iput-object p2, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mContext:Landroid/content/Context;

    .line 1729
    iput-object p3, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mHandler:Landroid/os/Handler;

    .line 1730
    iput-object p4, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mInjector:Lcom/android/server/display/DisplayModeDirector$Injector;

    .line 1732
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070027

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLowDisplayBrightnessThresholds:[I

    .line 1734
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLowAmbientBrightnessThresholds:[I

    .line 1737
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLowDisplayBrightnessThresholds:[I

    array-length v1, v1

    array-length v0, v0

    const-string v2, ", ambientBrightnessThresholds="

    if-ne v1, v0, :cond_9e

    .line 1746
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070076

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mHighDisplayBrightnessThresholds:[I

    .line 1748
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070075

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mHighAmbientBrightnessThresholds:[I

    .line 1750
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mHighDisplayBrightnessThresholds:[I

    array-length v1, v1

    array-length v0, v0

    if-ne v1, v0, :cond_71

    .line 1759
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0079

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mRefreshRateInHighZone:I

    .line 1761
    return-void

    .line 1752
    :cond_71
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "display high brightness threshold array and ambient brightness threshold array have different length: displayBrightnessThresholds="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mHighDisplayBrightnessThresholds:[I

    .line 1755
    invoke-static {v3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mHighAmbientBrightnessThresholds:[I

    .line 1757
    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1738
    :cond_9e
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "display low brightness threshold array and ambient brightness threshold array have different length: displayBrightnessThresholds="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLowDisplayBrightnessThresholds:[I

    .line 1741
    invoke-static {v3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLowAmbientBrightnessThresholds:[I

    .line 1743
    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getBrightness(I)I
    .registers 4
    .param p1, "displayId"    # I

    .line 2194
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mInjector:Lcom/android/server/display/DisplayModeDirector$Injector;

    invoke-interface {v0, p1}, Lcom/android/server/display/DisplayModeDirector$Injector;->getBrightnessInfo(I)Landroid/hardware/display/BrightnessInfo;

    move-result-object v0

    .line 2195
    .local v0, "info":Landroid/hardware/display/BrightnessInfo;
    if-eqz v0, :cond_f

    .line 2196
    iget v1, v0, Landroid/hardware/display/BrightnessInfo;->adjustedBrightness:F

    invoke-static {v1}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessFloatToInt(F)I

    move-result v1

    return v1

    .line 2199
    :cond_f
    const/4 v1, -0x1

    return v1
.end method

.method private hasValidHighZone()Z
    .registers 2

    .line 2132
    iget v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mRefreshRateInHighZone:I

    if-lez v0, :cond_e

    iget-boolean v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mShouldObserveDisplayHighChange:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mShouldObserveAmbientHighChange:Z

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private hasValidLowZone()Z
    .registers 2

    .line 2127
    iget v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mRefreshRateInLowZone:I

    if-lez v0, :cond_e

    iget-boolean v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mShouldObserveDisplayLowChange:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mShouldObserveAmbientLowChange:Z

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private hasValidThreshold([I)Z
    .registers 6
    .param p1, "a"    # [I

    .line 2039
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_e

    aget v3, p1, v2

    .line 2040
    .local v3, "d":I
    if-ltz v3, :cond_b

    .line 2041
    const/4 v0, 0x1

    return v0

    .line 2039
    .end local v3    # "d":I
    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 2045
    :cond_e
    return v1
.end method

.method private isDeviceActive()Z
    .registers 3

    .line 2190
    iget v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mDefaultDisplayState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method private isInsideHighZone(IF)Z
    .registers 8
    .param p1, "brightness"    # I
    .param p2, "lux"    # F

    .line 2072
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mHighDisplayBrightnessThresholds:[I

    array-length v2, v1

    if-ge v0, v2, :cond_29

    .line 2073
    aget v1, v1, v0

    .line 2074
    .local v1, "disp":I
    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mHighAmbientBrightnessThresholds:[I

    aget v2, v2, v0

    .line 2076
    .local v2, "ambi":I
    const/4 v3, 0x1

    if-ltz v1, :cond_19

    if-ltz v2, :cond_19

    .line 2077
    if-lt p1, v1, :cond_26

    int-to-float v4, v2

    cmpl-float v4, p2, v4

    if-ltz v4, :cond_26

    .line 2078
    return v3

    .line 2080
    :cond_19
    if-ltz v1, :cond_1e

    .line 2081
    if-lt p1, v1, :cond_26

    .line 2082
    return v3

    .line 2084
    :cond_1e
    if-ltz v2, :cond_26

    .line 2085
    int-to-float v4, v2

    cmpl-float v4, p2, v4

    if-ltz v4, :cond_26

    .line 2086
    return v3

    .line 2072
    .end local v1    # "disp":I
    .end local v2    # "ambi":I
    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2091
    .end local v0    # "i":I
    :cond_29
    const/4 v0, 0x0

    return v0
.end method

.method private isInsideLowZone(IF)Z
    .registers 8
    .param p1, "brightness"    # I
    .param p2, "lux"    # F

    .line 2049
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLowDisplayBrightnessThresholds:[I

    array-length v2, v1

    if-ge v0, v2, :cond_29

    .line 2050
    aget v1, v1, v0

    .line 2051
    .local v1, "disp":I
    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLowAmbientBrightnessThresholds:[I

    aget v2, v2, v0

    .line 2053
    .local v2, "ambi":I
    const/4 v3, 0x1

    if-ltz v1, :cond_19

    if-ltz v2, :cond_19

    .line 2054
    if-gt p1, v1, :cond_26

    int-to-float v4, v2

    cmpg-float v4, p2, v4

    if-gtz v4, :cond_26

    .line 2055
    return v3

    .line 2057
    :cond_19
    if-ltz v1, :cond_1e

    .line 2058
    if-gt p1, v1, :cond_26

    .line 2059
    return v3

    .line 2061
    :cond_1e
    if-ltz v2, :cond_26

    .line 2062
    int-to-float v4, v2

    cmpg-float v4, p2, v4

    if-gtz v4, :cond_26

    .line 2063
    return v3

    .line 2049
    .end local v1    # "disp":I
    .end local v2    # "ambi":I
    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2068
    .end local v0    # "i":I
    :cond_29
    const/4 v0, 0x0

    return v0
.end method

.method private onBrightnessChangedLocked()V
    .registers 8

    .line 2094
    const/4 v0, 0x0

    .line 2095
    .local v0, "refreshRateVote":Lcom/android/server/display/DisplayModeDirector$Vote;
    const/4 v1, 0x0

    .line 2097
    .local v1, "refreshRateSwitchingVote":Lcom/android/server/display/DisplayModeDirector$Vote;
    iget v2, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mBrightness:I

    if-gez v2, :cond_7

    .line 2100
    return-void

    .line 2103
    :cond_7
    invoke-direct {p0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->hasValidLowZone()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1b

    iget v2, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mBrightness:I

    iget v5, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mAmbientLux:F

    invoke-direct {p0, v2, v5}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->isInsideLowZone(IF)Z

    move-result v2

    if-eqz v2, :cond_1b

    move v2, v4

    goto :goto_1c

    :cond_1b
    move v2, v3

    .line 2104
    .local v2, "insideLowZone":Z
    :goto_1c
    if-eqz v2, :cond_2a

    .line 2105
    iget v5, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mRefreshRateInLowZone:I

    int-to-float v6, v5

    int-to-float v5, v5

    .line 2106
    invoke-static {v6, v5}, Lcom/android/server/display/DisplayModeDirector$Vote;->forRefreshRates(FF)Lcom/android/server/display/DisplayModeDirector$Vote;

    move-result-object v0

    .line 2107
    invoke-static {}, Lcom/android/server/display/DisplayModeDirector$Vote;->forDisableRefreshRateSwitching()Lcom/android/server/display/DisplayModeDirector$Vote;

    move-result-object v1

    .line 2110
    :cond_2a
    invoke-direct {p0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->hasValidHighZone()Z

    move-result v5

    if-eqz v5, :cond_3c

    iget v5, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mBrightness:I

    iget v6, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mAmbientLux:F

    .line 2111
    invoke-direct {p0, v5, v6}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->isInsideHighZone(IF)Z

    move-result v5

    if-eqz v5, :cond_3c

    move v3, v4

    goto :goto_3d

    :cond_3c
    nop

    .line 2112
    .local v3, "insideHighZone":Z
    :goto_3d
    if-eqz v3, :cond_4b

    .line 2113
    iget v5, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mRefreshRateInHighZone:I

    int-to-float v6, v5

    int-to-float v5, v5

    .line 2114
    invoke-static {v6, v5}, Lcom/android/server/display/DisplayModeDirector$Vote;->forRefreshRates(FF)Lcom/android/server/display/DisplayModeDirector$Vote;

    move-result-object v0

    .line 2115
    invoke-static {}, Lcom/android/server/display/DisplayModeDirector$Vote;->forDisableRefreshRateSwitching()Lcom/android/server/display/DisplayModeDirector$Vote;

    move-result-object v1

    .line 2118
    :cond_4b
    iget-boolean v5, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLoggingEnabled:Z

    if-eqz v5, :cond_7f

    .line 2119
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Display brightness "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mBrightness:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", ambient lux "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mAmbientLux:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", Vote "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "DisplayModeDirector"

    invoke-static {v6, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2122
    :cond_7f
    iget-object v5, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v5, v4, v0}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$mupdateVoteLocked(Lcom/android/server/display/DisplayModeDirector;ILcom/android/server/display/DisplayModeDirector$Vote;)V

    .line 2123
    iget-object v4, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    const/16 v5, 0x9

    invoke-static {v4, v5, v1}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$mupdateVoteLocked(Lcom/android/server/display/DisplayModeDirector;ILcom/android/server/display/DisplayModeDirector$Vote;)V

    .line 2124
    return-void
.end method

.method private restartObserver()V
    .registers 8

    .line 1974
    iget v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mRefreshRateInLowZone:I

    const/4 v1, 0x0

    if-lez v0, :cond_16

    .line 1975
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLowDisplayBrightnessThresholds:[I

    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->hasValidThreshold([I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mShouldObserveDisplayLowChange:Z

    .line 1977
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLowAmbientBrightnessThresholds:[I

    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->hasValidThreshold([I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mShouldObserveAmbientLowChange:Z

    goto :goto_1a

    .line 1980
    :cond_16
    iput-boolean v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mShouldObserveDisplayLowChange:Z

    .line 1981
    iput-boolean v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mShouldObserveAmbientLowChange:Z

    .line 1984
    :goto_1a
    iget v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mRefreshRateInHighZone:I

    if-lez v0, :cond_2f

    .line 1985
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mHighDisplayBrightnessThresholds:[I

    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->hasValidThreshold([I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mShouldObserveDisplayHighChange:Z

    .line 1987
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mHighAmbientBrightnessThresholds:[I

    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->hasValidThreshold([I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mShouldObserveAmbientHighChange:Z

    goto :goto_33

    .line 1990
    :cond_2f
    iput-boolean v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mShouldObserveDisplayHighChange:Z

    .line 1991
    iput-boolean v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mShouldObserveAmbientHighChange:Z

    .line 1994
    :goto_33
    iget-boolean v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mShouldObserveAmbientLowChange:Z

    if-nez v0, :cond_42

    iget-boolean v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mShouldObserveAmbientHighChange:Z

    if-eqz v0, :cond_3c

    goto :goto_42

    .line 2022
    :cond_3c
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mAmbientFilter:Lcom/android/server/display/utils/AmbientFilter;

    .line 2023
    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLightSensor:Landroid/hardware/Sensor;

    goto :goto_95

    .line 1995
    :cond_42
    :goto_42
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1996
    .local v0, "resources":Landroid/content/res/Resources;
    const v1, 0x104026f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1999
    .local v1, "lightSensorType":Ljava/lang/String;
    const/4 v2, 0x0

    .line 2000
    .local v2, "lightSensor":Landroid/hardware/Sensor;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_79

    .line 2001
    iget-object v3, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v3

    .line 2002
    .local v3, "sensors":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_5e
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_79

    .line 2003
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/Sensor;

    .line 2004
    .local v5, "sensor":Landroid/hardware/Sensor;
    invoke-virtual {v5}, Landroid/hardware/Sensor;->getStringType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_76

    .line 2005
    move-object v2, v5

    .line 2006
    goto :goto_79

    .line 2002
    .end local v5    # "sensor":Landroid/hardware/Sensor;
    :cond_76
    add-int/lit8 v4, v4, 0x1

    goto :goto_5e

    .line 2011
    .end local v3    # "sensors":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    .end local v4    # "i":I
    :cond_79
    :goto_79
    if-nez v2, :cond_82

    .line 2012
    iget-object v3, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    .line 2015
    :cond_82
    if-eqz v2, :cond_94

    .line 2016
    iget-object v3, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 2018
    .local v3, "res":Landroid/content/res/Resources;
    const-string v4, "DisplayModeDirector"

    invoke-static {v4, v3}, Lcom/android/server/display/utils/AmbientFilterFactory;->createBrightnessFilter(Ljava/lang/String;Landroid/content/res/Resources;)Lcom/android/server/display/utils/AmbientFilter;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mAmbientFilter:Lcom/android/server/display/utils/AmbientFilter;

    .line 2019
    iput-object v2, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLightSensor:Landroid/hardware/Sensor;

    .line 2021
    .end local v0    # "resources":Landroid/content/res/Resources;
    .end local v1    # "lightSensorType":Ljava/lang/String;
    .end local v2    # "lightSensor":Landroid/hardware/Sensor;
    .end local v3    # "res":Landroid/content/res/Resources;
    :cond_94
    nop

    .line 2026
    :goto_95
    iget-boolean v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mRefreshRateChangeable:Z

    if-eqz v0, :cond_ab

    .line 2027
    invoke-direct {p0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->updateSensorStatus()V

    .line 2028
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v0}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$fgetmLock(Lcom/android/server/display/DisplayModeDirector;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2029
    :try_start_a3
    invoke-direct {p0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->onBrightnessChangedLocked()V

    .line 2030
    monitor-exit v0

    goto :goto_ab

    :catchall_a8
    move-exception v1

    monitor-exit v0
    :try_end_aa
    .catchall {:try_start_a3 .. :try_end_aa} :catchall_a8

    throw v1

    .line 2032
    :cond_ab
    :goto_ab
    return-void
.end method

.method private updateDefaultDisplayState()V
    .registers 3

    .line 2137
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 2138
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    .line 2139
    .local v0, "display":Landroid/view/Display;
    if-nez v0, :cond_12

    .line 2140
    return-void

    .line 2143
    :cond_12
    invoke-virtual {v0}, Landroid/view/Display;->getState()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->setDefaultDisplayState(I)V

    .line 2144
    return-void
.end method

.method private updateSensorStatus()V
    .registers 7

    .line 2160
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_a0

    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLightSensorListener:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;

    if-nez v0, :cond_a

    goto/16 :goto_a0

    .line 2164
    :cond_a
    iget-boolean v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLoggingEnabled:Z

    const-string v1, "DisplayModeDirector"

    if-eqz v0, :cond_5a

    .line 2165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateSensorStatus: mShouldObserveAmbientLowChange = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mShouldObserveAmbientLowChange:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mShouldObserveAmbientHighChange = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mShouldObserveAmbientHighChange:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateSensorStatus: mLowPowerModeEnabled = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLowPowerModeEnabled:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mRefreshRateChangeable = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mRefreshRateChangeable:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2173
    :cond_5a
    iget-boolean v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mShouldObserveAmbientLowChange:Z

    if-nez v0, :cond_62

    iget-boolean v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mShouldObserveAmbientHighChange:Z

    if-eqz v0, :cond_89

    .line 2174
    :cond_62
    invoke-direct {p0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->isDeviceActive()Z

    move-result v0

    if-eqz v0, :cond_89

    iget-boolean v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLowPowerModeEnabled:Z

    if-nez v0, :cond_89

    iget-boolean v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mRefreshRateChangeable:Z

    if-eqz v0, :cond_89

    .line 2175
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLightSensorListener:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;

    iget-object v3, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLightSensor:Landroid/hardware/Sensor;

    const v4, 0x3d090

    iget-object v5, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 2177
    iget-boolean v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLoggingEnabled:Z

    if-eqz v0, :cond_9f

    .line 2178
    const-string/jumbo v0, "updateSensorStatus: registerListener"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9f

    .line 2181
    :cond_89
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLightSensorListener:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->removeCallbacks()V

    .line 2182
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLightSensorListener:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 2183
    iget-boolean v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLoggingEnabled:Z

    if-eqz v0, :cond_9f

    .line 2184
    const-string/jumbo v0, "updateSensorStatus: unregisterListener"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2187
    :cond_9f
    :goto_9f
    return-void

    .line 2161
    :cond_a0
    :goto_a0
    return-void
.end method


# virtual methods
.method public dumpLocked(Ljava/io/PrintWriter;)V
    .registers 9
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 1912
    const-string v0, "  BrightnessObserver"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1913
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mAmbientLux: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mAmbientLux:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1914
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mBrightness: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mBrightness:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1915
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mDefaultDisplayState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mDefaultDisplayState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1916
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mLowPowerModeEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLowPowerModeEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1917
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mRefreshRateChangeable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mRefreshRateChangeable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1918
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mShouldObserveDisplayLowChange: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mShouldObserveDisplayLowChange:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1919
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mShouldObserveAmbientLowChange: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mShouldObserveAmbientLowChange:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1920
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mRefreshRateInLowZone: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mRefreshRateInLowZone:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1922
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLowDisplayBrightnessThresholds:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_ca
    if-ge v3, v1, :cond_e7

    aget v4, v0, v3

    .line 1923
    .local v4, "d":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    mDisplayLowBrightnessThreshold: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1922
    .end local v4    # "d":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_ca

    .line 1926
    :cond_e7
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLowAmbientBrightnessThresholds:[I

    array-length v1, v0

    move v3, v2

    :goto_eb
    if-ge v3, v1, :cond_108

    aget v4, v0, v3

    .line 1927
    .restart local v4    # "d":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    mAmbientLowBrightnessThreshold: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1926
    .end local v4    # "d":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_eb

    .line 1930
    :cond_108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mShouldObserveDisplayHighChange: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mShouldObserveDisplayHighChange:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1931
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mShouldObserveAmbientHighChange: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mShouldObserveAmbientHighChange:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1932
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mRefreshRateInHighZone: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mRefreshRateInHighZone:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1934
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mHighDisplayBrightnessThresholds:[I

    array-length v1, v0

    move v3, v2

    :goto_154
    if-ge v3, v1, :cond_171

    aget v4, v0, v3

    .line 1935
    .restart local v4    # "d":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    mDisplayHighBrightnessThresholds: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1934
    .end local v4    # "d":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_154

    .line 1938
    :cond_171
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mHighAmbientBrightnessThresholds:[I

    array-length v1, v0

    :goto_174
    if-ge v2, v1, :cond_191

    aget v3, v0, v2

    .line 1939
    .local v3, "d":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    mAmbientHighBrightnessThresholds: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1938
    .end local v3    # "d":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_174

    .line 1942
    :cond_191
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLightSensorListener:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;

    invoke-virtual {v0, p1}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->dumpLocked(Ljava/io/PrintWriter;)V

    .line 1944
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mAmbientFilter:Lcom/android/server/display/utils/AmbientFilter;

    if-eqz v0, :cond_1a6

    .line 1945
    new-instance v0, Landroid/util/IndentingPrintWriter;

    const-string v1, "    "

    invoke-direct {v0, p1, v1}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 1946
    .local v0, "ipw":Landroid/util/IndentingPrintWriter;
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mAmbientFilter:Lcom/android/server/display/utils/AmbientFilter;

    invoke-virtual {v1, v0}, Lcom/android/server/display/utils/AmbientFilter;->dump(Ljava/io/PrintWriter;)V

    .line 1948
    .end local v0    # "ipw":Landroid/util/IndentingPrintWriter;
    :cond_1a6
    return-void
.end method

.method getLowAmbientBrightnessThresholds()[I
    .registers 2

    .line 1784
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLowAmbientBrightnessThresholds:[I

    return-object v0
.end method

.method getLowDisplayBrightnessThresholds()[I
    .registers 2

    .line 1776
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLowDisplayBrightnessThresholds:[I

    return-object v0
.end method

.method getRefreshRateInLowZone()I
    .registers 2

    .line 1768
    iget v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mRefreshRateInLowZone:I

    return v0
.end method

.method public observe(Landroid/hardware/SensorManager;)V
    .registers 11
    .param p1, "sensorManager"    # Landroid/hardware/SensorManager;

    .line 1796
    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mSensorManager:Landroid/hardware/SensorManager;

    .line 1797
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1798
    .local v0, "cr":Landroid/content/ContentResolver;
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->getBrightness(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mBrightness:I

    .line 1801
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v1}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$fgetmDeviceConfigDisplaySettings(Lcom/android/server/display/DisplayModeDirector;)Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;

    move-result-object v1

    .line 1802
    invoke-virtual {v1}, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;->getLowDisplayBrightnessThresholds()[I

    move-result-object v1

    .line 1803
    .local v1, "lowDisplayBrightnessThresholds":[I
    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v2}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$fgetmDeviceConfigDisplaySettings(Lcom/android/server/display/DisplayModeDirector;)Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;

    move-result-object v2

    .line 1804
    invoke-virtual {v2}, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;->getLowAmbientBrightnessThresholds()[I

    move-result-object v2

    .line 1806
    .local v2, "lowAmbientBrightnessThresholds":[I
    if-eqz v1, :cond_2f

    if-eqz v2, :cond_2f

    array-length v3, v1

    array-length v4, v2

    if-ne v3, v4, :cond_2f

    .line 1809
    iput-object v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLowDisplayBrightnessThresholds:[I

    .line 1810
    iput-object v2, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLowAmbientBrightnessThresholds:[I

    .line 1814
    :cond_2f
    iget-object v3, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v3}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$fgetmDeviceConfigDisplaySettings(Lcom/android/server/display/DisplayModeDirector;)Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;

    move-result-object v3

    .line 1815
    invoke-virtual {v3}, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;->getHighDisplayBrightnessThresholds()[I

    move-result-object v3

    .line 1816
    .local v3, "highDisplayBrightnessThresholds":[I
    iget-object v4, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v4}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$fgetmDeviceConfigDisplaySettings(Lcom/android/server/display/DisplayModeDirector;)Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;

    move-result-object v4

    .line 1817
    invoke-virtual {v4}, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;->getHighAmbientBrightnessThresholds()[I

    move-result-object v4

    .line 1819
    .local v4, "highAmbientBrightnessThresholds":[I
    if-eqz v3, :cond_4f

    if-eqz v4, :cond_4f

    array-length v5, v3

    array-length v6, v4

    if-ne v5, v6, :cond_4f

    .line 1822
    iput-object v3, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mHighDisplayBrightnessThresholds:[I

    .line 1823
    iput-object v4, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mHighAmbientBrightnessThresholds:[I

    .line 1826
    :cond_4f
    iget-object v5, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v5}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$fgetmDeviceConfigDisplaySettings(Lcom/android/server/display/DisplayModeDirector;)Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;->getRefreshRateInLowZone()I

    move-result v5

    iput v5, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mRefreshRateInLowZone:I

    .line 1827
    iget-object v5, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v5}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$fgetmDeviceConfigDisplaySettings(Lcom/android/server/display/DisplayModeDirector;)Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;->getRefreshRateInHighZone()I

    move-result v5

    iput v5, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mRefreshRateInHighZone:I

    .line 1829
    invoke-direct {p0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->restartObserver()V

    .line 1830
    iget-object v5, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v5}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$fgetmDeviceConfigDisplaySettings(Lcom/android/server/display/DisplayModeDirector;)Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;->startListening()V

    .line 1832
    iget-object v5, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mInjector:Lcom/android/server/display/DisplayModeDirector$Injector;

    iget-object v6, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mHandler:Landroid/os/Handler;

    const-wide/16 v7, 0xc

    invoke-interface {v5, p0, v6, v7, v8}, Lcom/android/server/display/DisplayModeDirector$Injector;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;J)V

    .line 1835
    return-void
.end method

.method public onDeviceConfigHighBrightnessThresholdsChanged([I[I)V
    .registers 5
    .param p1, "displayThresholds"    # [I
    .param p2, "ambientThresholds"    # [I

    .line 1890
    if-eqz p1, :cond_d

    if-eqz p2, :cond_d

    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_d

    .line 1892
    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mHighDisplayBrightnessThresholds:[I

    .line 1893
    iput-object p2, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mHighAmbientBrightnessThresholds:[I

    goto :goto_2b

    .line 1896
    :cond_d
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070076

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mHighDisplayBrightnessThresholds:[I

    .line 1898
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070075

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mHighAmbientBrightnessThresholds:[I

    .line 1901
    :goto_2b
    invoke-direct {p0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->restartObserver()V

    .line 1902
    return-void
.end method

.method public onDeviceConfigLowBrightnessThresholdsChanged([I[I)V
    .registers 5
    .param p1, "displayThresholds"    # [I
    .param p2, "ambientThresholds"    # [I

    .line 1867
    if-eqz p1, :cond_d

    if-eqz p2, :cond_d

    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_d

    .line 1869
    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLowDisplayBrightnessThresholds:[I

    .line 1870
    iput-object p2, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLowAmbientBrightnessThresholds:[I

    goto :goto_2b

    .line 1873
    :cond_d
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070027

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLowDisplayBrightnessThresholds:[I

    .line 1875
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLowAmbientBrightnessThresholds:[I

    .line 1878
    :goto_2b
    invoke-direct {p0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->restartObserver()V

    .line 1879
    return-void
.end method

.method public onDeviceConfigRefreshRateInHighZoneChanged(I)V
    .registers 3
    .param p1, "refreshRate"    # I

    .line 1905
    iget v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mRefreshRateInHighZone:I

    if-eq p1, v0, :cond_9

    .line 1906
    iput p1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mRefreshRateInHighZone:I

    .line 1907
    invoke-direct {p0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->restartObserver()V

    .line 1909
    :cond_9
    return-void
.end method

.method public onDeviceConfigRefreshRateInLowZoneChanged(I)V
    .registers 3
    .param p1, "refreshRate"    # I

    .line 1882
    iget v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mRefreshRateInLowZone:I

    if-eq p1, v0, :cond_9

    .line 1883
    iput p1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mRefreshRateInLowZone:I

    .line 1884
    invoke-direct {p0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->restartObserver()V

    .line 1886
    :cond_9
    return-void
.end method

.method public onDisplayAdded(I)V
    .registers 2
    .param p1, "displayId"    # I

    .line 1951
    return-void
.end method

.method public onDisplayChanged(I)V
    .registers 5
    .param p1, "displayId"    # I

    .line 1958
    if-nez p1, :cond_1e

    .line 1959
    invoke-direct {p0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->updateDefaultDisplayState()V

    .line 1963
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->getBrightness(I)I

    move-result v0

    .line 1964
    .local v0, "brightness":I
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v1}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$fgetmLock(Lcom/android/server/display/DisplayModeDirector;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1965
    :try_start_10
    iget v2, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mBrightness:I

    if-eq v0, v2, :cond_19

    .line 1966
    iput v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mBrightness:I

    .line 1967
    invoke-direct {p0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->onBrightnessChangedLocked()V

    .line 1969
    :cond_19
    monitor-exit v1

    goto :goto_1e

    :catchall_1b
    move-exception v2

    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_10 .. :try_end_1d} :catchall_1b

    throw v2

    .line 1971
    .end local v0    # "brightness":I
    :cond_1e
    :goto_1e
    return-void
.end method

.method public onDisplayRemoved(I)V
    .registers 2
    .param p1, "displayId"    # I

    .line 1954
    return-void
.end method

.method public onLowPowerModeEnabledLocked(Z)V
    .registers 3
    .param p1, "b"    # Z

    .line 1859
    iget-boolean v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLowPowerModeEnabled:Z

    if-eq v0, p1, :cond_9

    .line 1860
    iput-boolean p1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLowPowerModeEnabled:Z

    .line 1861
    invoke-direct {p0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->updateSensorStatus()V

    .line 1863
    :cond_9
    return-void
.end method

.method public onRefreshRateSettingChangedLocked(FF)V
    .registers 7
    .param p1, "min"    # F
    .param p2, "max"    # F

    .line 1846
    sub-float v0, p2, p1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    const/4 v1, 0x1

    if-lez v0, :cond_11

    const/high16 v0, 0x42700000    # 60.0f

    cmpl-float v0, p2, v0

    if-lez v0, :cond_11

    move v0, v1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    .line 1847
    .local v0, "changeable":Z
    :goto_12
    iget-boolean v2, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mRefreshRateChangeable:Z

    if-eq v2, v0, :cond_2a

    .line 1848
    iput-boolean v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mRefreshRateChangeable:Z

    .line 1849
    invoke-direct {p0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->updateSensorStatus()V

    .line 1850
    if-nez v0, :cond_2a

    .line 1852
    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$mupdateVoteLocked(Lcom/android/server/display/DisplayModeDirector;ILcom/android/server/display/DisplayModeDirector$Vote;)V

    .line 1853
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    const/16 v2, 0x9

    invoke-static {v1, v2, v3}, Lcom/android/server/display/DisplayModeDirector;->-$$Nest$mupdateVoteLocked(Lcom/android/server/display/DisplayModeDirector;ILcom/android/server/display/DisplayModeDirector$Vote;)V

    .line 1856
    :cond_2a
    return-void
.end method

.method public registerLightSensor(Landroid/hardware/SensorManager;Landroid/hardware/Sensor;)V
    .registers 6
    .param p1, "sensorManager"    # Landroid/hardware/SensorManager;
    .param p2, "lightSensor"    # Landroid/hardware/Sensor;

    .line 1788
    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mSensorManager:Landroid/hardware/SensorManager;

    .line 1789
    iput-object p2, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLightSensor:Landroid/hardware/Sensor;

    .line 1791
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLightSensorListener:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;

    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mHandler:Landroid/os/Handler;

    const v2, 0x3d090

    invoke-virtual {p1, v0, p2, v2, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 1793
    return-void
.end method

.method public setDefaultDisplayState(I)V
    .registers 4
    .param p1, "state"    # I

    .line 2148
    iget-boolean v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLoggingEnabled:Z

    if-eqz v0, :cond_29

    .line 2149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setDefaultDisplayState: mDefaultDisplayState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mDefaultDisplayState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DisplayModeDirector"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2153
    :cond_29
    iget v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mDefaultDisplayState:I

    if-eq v0, p1, :cond_32

    .line 2154
    iput p1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mDefaultDisplayState:I

    .line 2155
    invoke-direct {p0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->updateSensorStatus()V

    .line 2157
    :cond_32
    return-void
.end method

.method public setLoggingEnabled(Z)V
    .registers 3
    .param p1, "loggingEnabled"    # Z

    .line 1838
    iget-boolean v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLoggingEnabled:Z

    if-ne v0, p1, :cond_5

    .line 1839
    return-void

    .line 1841
    :cond_5
    iput-boolean p1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLoggingEnabled:Z

    .line 1842
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLightSensorListener:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;

    invoke-virtual {v0, p1}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->setLoggingEnabled(Z)V

    .line 1843
    return-void
.end method
