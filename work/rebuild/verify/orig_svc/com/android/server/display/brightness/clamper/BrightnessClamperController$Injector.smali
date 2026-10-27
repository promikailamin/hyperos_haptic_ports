.class Lcom/android/server/display/brightness/clamper/BrightnessClamperController$Injector;
.super Ljava/lang/Object;
.source "BrightnessClamperController.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 302
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDeviceConfigParameterProvider()Lcom/android/server/display/feature/DeviceConfigParameterProvider;
    .registers 2

    .line 304
    new-instance p0, Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    sget-object v0, Landroid/provider/DeviceConfigInterface;->REAL:Landroid/provider/DeviceConfigInterface;

    invoke-direct {p0, v0}, Lcom/android/server/display/feature/DeviceConfigParameterProvider;-><init>(Landroid/provider/DeviceConfigInterface;)V

    return-object p0
.end method

.method public getLightSensorController(Landroid/hardware/SensorManager;Landroid/content/Context;Lcom/android/server/display/brightness/clamper/LightSensorController$LightSensorListener;Landroid/os/Handler;)Lcom/android/server/display/brightness/clamper/LightSensorController;
    .registers 5

    .line 345
    new-instance p0, Lcom/android/server/display/brightness/clamper/LightSensorController;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/display/brightness/clamper/LightSensorController;-><init>(Landroid/hardware/SensorManager;Landroid/content/res/Resources;Lcom/android/server/display/brightness/clamper/LightSensorController$LightSensorListener;Landroid/os/Handler;)V

    return-object p0
.end method

.method public getModifiers(Lcom/android/server/display/feature/DisplayManagerFlags;Landroid/content/Context;Lcom/android/server/display/plugin/PluginManager;Landroid/os/Handler;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;F)Ljava/util/List;
    .registers 16

    .line 310
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 311
    new-instance v0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;

    invoke-direct {v0, p4, p5, p6}, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;-><init>(Landroid/os/Handler;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 312
    invoke-virtual {p1}, Lcom/android/server/display/feature/DisplayManagerFlags;->isBrightnessWearBedtimeModeClamperEnabled()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 313
    new-instance v0, Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier;

    invoke-direct {v0, p4, p2, p5, p6}, Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier;-><init>(Landroid/os/Handler;Landroid/content/Context;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier$WearBedtimeModeData;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 317
    :cond_1b
    new-instance v0, Lcom/android/server/display/brightness/clamper/ExternalBrightnessModifier;

    invoke-direct {v0, p4, p5}, Lcom/android/server/display/brightness/clamper/ExternalBrightnessModifier;-><init>(Landroid/os/Handler;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 319
    invoke-virtual {p1}, Lcom/android/server/display/feature/DisplayManagerFlags;->isPowerThrottlingClamperEnabled()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 321
    invoke-virtual {p6}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;->getPowerThrottlingConfigData()Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingConfigData;

    move-result-object v0

    if-eqz v0, :cond_37

    .line 323
    new-instance v0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;

    invoke-direct {v0, p4, p5, p6, p7}, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;-><init>(Landroid/os/Handler;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$PowerData;F)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 328
    :cond_37
    new-instance p7, Lcom/android/server/display/brightness/clamper/DisplayDimModifier;

    iget v0, p6, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;->mDisplayId:I

    invoke-direct {p7, v0, p2}, Lcom/android/server/display/brightness/clamper/DisplayDimModifier;-><init>(ILandroid/content/Context;)V

    invoke-interface {p0, p7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 329
    new-instance p7, Lcom/android/server/display/brightness/clamper/BrightnessLowPowerModeModifier;

    invoke-direct {p7}, Lcom/android/server/display/brightness/clamper/BrightnessLowPowerModeModifier;-><init>()V

    invoke-interface {p0, p7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 330
    invoke-virtual {p1}, Lcom/android/server/display/feature/DisplayManagerFlags;->isEvenDimmerEnabled()Z

    move-result p7

    if-eqz p7, :cond_61

    iget-object p7, p6, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    invoke-virtual {p7}, Lcom/android/server/display/DisplayDeviceConfig;->isEvenDimmerAvailable()Z

    move-result p7

    if-eqz p7, :cond_61

    .line 331
    new-instance p7, Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier;

    iget-object v0, p6, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    invoke-direct {p7, p4, p5, p2, v0}, Lcom/android/server/display/brightness/clamper/BrightnessLowLuxModifier;-><init>(Landroid/os/Handler;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;Landroid/content/Context;Lcom/android/server/display/DisplayDeviceConfig;)V

    invoke-interface {p0, p7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 334
    :cond_61
    new-instance v1, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;

    move-object v4, p1

    move-object v3, p2

    move-object v5, p3

    move-object v2, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/android/server/display/brightness/clamper/HdrBrightnessModifier;-><init>(Landroid/os/Handler;Landroid/content/Context;Lcom/android/server/display/feature/DisplayManagerFlags;Lcom/android/server/display/plugin/PluginManager;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;)V

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 336
    invoke-virtual {v4}, Lcom/android/server/display/feature/DisplayManagerFlags;->isMinmodeCapBrightnessEnabled()Z

    move-result p1

    if-eqz p1, :cond_7d

    .line 337
    new-instance p1, Lcom/android/server/display/brightness/clamper/BrightnessMinModeModifier;

    invoke-direct {p1, v2, v3, v6, v7}, Lcom/android/server/display/brightness/clamper/BrightnessMinModeModifier;-><init>(Landroid/os/Handler;Landroid/content/Context;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;Lcom/android/server/display/brightness/clamper/BrightnessMinModeModifier$MinModeBrightnessData;)V

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7d
    return-object p0
.end method
