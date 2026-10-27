.class public Lcom/android/server/display/AutomaticBrightnessControllerStub;
.super Ljava/lang/Object;
.source "AutomaticBrightnessControllerStub.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/AutomaticBrightnessControllerStub$DualSensorPolicyListener;
    }
.end annotation


# static fields
.field static DUAL_SENSOR_LUX_INVALID:I

.field static HANDLE_ASSIST_LUX_EVENT:I

.field static HANDLE_MAIN_LUX_EVENT:I

.field static USE_ASSIST_LIGHT_SENSOR:I

.field static USE_MAIN_LIGHT_SENSOR:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 16
    const/4 v0, 0x1

    sput v0, Lcom/android/server/display/AutomaticBrightnessControllerStub;->HANDLE_MAIN_LUX_EVENT:I

    .line 17
    const/4 v1, 0x2

    sput v1, Lcom/android/server/display/AutomaticBrightnessControllerStub;->HANDLE_ASSIST_LUX_EVENT:I

    .line 19
    const/4 v2, 0x0

    sput v2, Lcom/android/server/display/AutomaticBrightnessControllerStub;->DUAL_SENSOR_LUX_INVALID:I

    .line 20
    sput v0, Lcom/android/server/display/AutomaticBrightnessControllerStub;->USE_MAIN_LIGHT_SENSOR:I

    .line 21
    sput v1, Lcom/android/server/display/AutomaticBrightnessControllerStub;->USE_ASSIST_LIGHT_SENSOR:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/server/display/AutomaticBrightnessControllerStub;
    .registers 1

    .line 26
    const-class v0, Lcom/android/server/display/AutomaticBrightnessControllerStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/AutomaticBrightnessControllerStub;

    return-object v0
.end method


# virtual methods
.method public addUserDataPointByApplication(FFLjava/lang/String;Lcom/android/server/display/BrightnessMappingStrategy;)V
    .registers 5
    .param p1, "lux"    # F
    .param p2, "brightness"    # F
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "mapper"    # Lcom/android/server/display/BrightnessMappingStrategy;

    .line 108
    invoke-virtual {p4, p1, p2}, Lcom/android/server/display/BrightnessMappingStrategy;->addUserDataPoint(FF)V

    .line 109
    return-void
.end method

.method public changeBrightness(FI)I
    .registers 4
    .param p1, "lux"    # F
    .param p2, "brightness"    # I

    .line 64
    const/4 v0, -0x1

    return v0
.end method

.method public checkBrightening(FFF)V
    .registers 4
    .param p1, "lux"    # F
    .param p2, "brightenThreshold"    # F
    .param p3, "darkThreshold"    # F

    .line 50
    return-void
.end method

.method public checkProximityStatus(FZ)Z
    .registers 4
    .param p1, "lux"    # F
    .param p2, "luxValid"    # Z

    .line 43
    const/4 v0, 0x0

    return v0
.end method

.method public computeFloatRate(FFFLjava/lang/String;)F
    .registers 6
    .param p1, "rate"    # F
    .param p2, "currBrightness"    # F
    .param p3, "tgtBrightness"    # F
    .param p4, "rampName"    # Ljava/lang/String;

    .line 73
    const/high16 v0, 0x7fc00000    # Float.NaN

    return v0
.end method

.method public configure(IFIZ)F
    .registers 6
    .param p1, "state"    # I
    .param p2, "screenAutoBrightness"    # F
    .param p3, "displayPolicy"    # I
    .param p4, "screenOffBecauseOfProximity"    # Z

    .line 39
    const/high16 v0, 0x7fc00000    # Float.NaN

    return v0
.end method

.method public dropAmbientLuxIfNeeded()Z
    .registers 2

    .line 182
    const/4 v0, 0x0

    return v0
.end method

.method public dropDecreaseLuxIfNeeded()Z
    .registers 2

    .line 205
    const/4 v0, 0x0

    return v0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 76
    return-void
.end method

.method public fillInLuxFromDaemonSensor()Landroid/util/SparseArray;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 124
    new-instance v0, Lcom/android/server/display/AutomaticBrightnessControllerStub$1;

    invoke-direct {v0, p0}, Lcom/android/server/display/AutomaticBrightnessControllerStub$1;-><init>(Lcom/android/server/display/AutomaticBrightnessControllerStub;)V

    return-object v0
.end method

.method public getAmbientLux(IFFZ)F
    .registers 5
    .param p1, "event"    # I
    .param p2, "preLux"    # F
    .param p3, "updateLux"    # F
    .param p4, "needUpdateLux"    # Z

    .line 166
    return p3
.end method

.method public getAutobrightnessByApplicationRate(III)I
    .registers 4
    .param p1, "currentBrightness"    # I
    .param p2, "targetBrightness"    # I
    .param p3, "rate"    # I

    .line 117
    return p3
.end method

.method public getBrightnessByApplication(FLjava/lang/String;ILcom/android/server/display/BrightnessMappingStrategy;F)F
    .registers 6
    .param p1, "lux"    # F
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "category"    # I
    .param p4, "mapper"    # Lcom/android/server/display/BrightnessMappingStrategy;
    .param p5, "value"    # F

    .line 113
    return p5
.end method

.method public getCurrentAmbientLux()F
    .registers 2

    .line 197
    const/high16 v0, 0x7fc00000    # Float.NaN

    return v0
.end method

.method public getCurrentLux(FFF)F
    .registers 5
    .param p1, "lux"    # F
    .param p2, "maxLux"    # F
    .param p3, "minLux"    # F

    .line 47
    const/high16 v0, 0x7fc00000    # Float.NaN

    return v0
.end method

.method public getSecLightSensor()Landroid/hardware/Sensor;
    .registers 2

    .line 35
    const/4 v0, 0x0

    return-object v0
.end method

.method public initialize(Landroid/hardware/SensorManager;Landroid/content/Context;Landroid/os/Handler;Landroid/hardware/Sensor;IIJJIILcom/android/server/display/HysteresisLevels;Lcom/android/server/display/AutomaticBrightnessControllerStub$DualSensorPolicyListener;)V
    .registers 15
    .param p1, "sensorManager"    # Landroid/hardware/SensorManager;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "lightSensor"    # Landroid/hardware/Sensor;
    .param p5, "lightSensorWarmUpTime"    # I
    .param p6, "lightSensorRate"    # I
    .param p7, "brighteningLightDebounceConfig"    # J
    .param p9, "darkeningLightDebounceConfig"    # J
    .param p11, "ambientLightHorizonLong"    # I
    .param p12, "ambientLightHorizonShort"    # I
    .param p13, "ambientBrightnessThresholds"    # Lcom/android/server/display/HysteresisLevels;
    .param p14, "listener"    # Lcom/android/server/display/AutomaticBrightnessControllerStub$DualSensorPolicyListener;

    .line 32
    return-void
.end method

.method public isAutoBrightnessByApplicationAnimationEnable()Z
    .registers 2

    .line 99
    const/4 v0, 0x0

    return v0
.end method

.method public isAutoBrightnessByApplicationRateEnable()Z
    .registers 2

    .line 103
    const/4 v0, 0x0

    return v0
.end method

.method public isDisableResetShortTermModel()Z
    .registers 2

    .line 209
    const/4 v0, 0x0

    return v0
.end method

.method public isMotionStaticRotate()Z
    .registers 2

    .line 85
    const/4 v0, 0x0

    return v0
.end method

.method public isSupportAutobrightnessByApplicationCategory()Z
    .registers 2

    .line 89
    const/4 v0, 0x0

    return v0
.end method

.method public isTurningOn()Z
    .registers 2

    .line 81
    const/4 v0, 0x0

    return v0
.end method

.method public needSuppressDarkening(FFZ)Z
    .registers 5
    .param p1, "preLux"    # F
    .param p2, "updateLux"    # F
    .param p3, "needUpdateLux"    # Z

    .line 201
    const/4 v0, 0x0

    return v0
.end method

.method public notifyUnregisterDaemonSensor()V
    .registers 1

    .line 191
    return-void
.end method

.method public resetGalleryHdrRate()V
    .registers 1

    .line 188
    return-void
.end method

.method public setAmbientLuxWhenInvalid(IF)V
    .registers 3
    .param p1, "event"    # I
    .param p2, "lux"    # F

    .line 194
    return-void
.end method

.method public setAutoBrightnessByApplicationAnimationEnable(Z)V
    .registers 2
    .param p1, "enable"    # Z

    .line 96
    return-void
.end method

.method public setAutoBrightnessByApplicationRateEnable(Z)V
    .registers 2
    .param p1, "enable"    # Z

    .line 93
    return-void
.end method

.method public setManualDimmingEnabled(ZF)V
    .registers 3
    .param p1, "manualDimmingEnable"    # Z
    .param p2, "animateValue"    # F

    .line 185
    return-void
.end method

.method public setUpBrightnessMapper(Lcom/android/server/display/BrightnessMappingStrategy;)V
    .registers 2
    .param p1, "mapper"    # Lcom/android/server/display/BrightnessMappingStrategy;

    .line 135
    return-void
.end method

.method public setUpDisplayDeviceConfig(Lcom/android/server/display/DisplayDeviceConfig;)V
    .registers 2
    .param p1, "deviceConfig"    # Lcom/android/server/display/DisplayDeviceConfig;

    .line 138
    return-void
.end method

.method public setUpLogicalDisplay(Lcom/android/server/display/LogicalDisplay;)V
    .registers 2
    .param p1, "logicalDisplay"    # Lcom/android/server/display/LogicalDisplay;

    .line 141
    return-void
.end method

.method public shouldSkipBrighteningTransition(JFFF)Z
    .registers 7
    .param p1, "sensorEnableTime"    # J
    .param p3, "currentLux"    # F
    .param p4, "ambientLux"    # F
    .param p5, "brighteningThreshold"    # F

    .line 60
    const/4 v0, 0x0

    return v0
.end method

.method public showTouchCoverProtectionRect(Z)V
    .registers 2
    .param p1, "isShow"    # Z

    .line 144
    return-void
.end method

.method public stop()V
    .registers 1

    .line 132
    return-void
.end method

.method public supportDualSensorPolicy()Z
    .registers 2

    .line 162
    const/4 v0, 0x0

    return v0
.end method

.method public switchLightSensor(Landroid/hardware/Sensor;)Landroid/hardware/Sensor;
    .registers 2
    .param p1, "sensor"    # Landroid/hardware/Sensor;

    .line 213
    return-object p1
.end method

.method public updateBrightnessUsingMainLightSensor()Z
    .registers 2

    .line 174
    const/4 v0, 0x0

    return v0
.end method

.method public updateDarkeningDebounce(FFF)J
    .registers 6
    .param p1, "lux"    # F
    .param p2, "maxLux"    # F
    .param p3, "minLux"    # F

    .line 53
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public updateDisplayState(I)V
    .registers 2
    .param p1, "displayState"    # I

    .line 78
    return-void
.end method

.method public updateDualSensorPolicy(JI)Z
    .registers 5
    .param p1, "time"    # J
    .param p3, "event"    # I

    .line 178
    const/4 v0, 0x0

    return v0
.end method

.method public updateFastRateStatus(F)V
    .registers 2
    .param p1, "brightness"    # F

    .line 56
    return-void
.end method

.method public updateMainLightSensorAmbientThreshold(I)Z
    .registers 3
    .param p1, "event"    # I

    .line 170
    const/4 v0, 0x0

    return v0
.end method

.method public updateSlowChangeStatus(ZZZFF)V
    .registers 6
    .param p1, "slowChange"    # Z
    .param p2, "appliedDimming"    # Z
    .param p3, "appliedLowPower"    # Z
    .param p4, "startBrightness"    # F
    .param p5, "startSdrBrightness"    # F

    .line 70
    return-void
.end method
