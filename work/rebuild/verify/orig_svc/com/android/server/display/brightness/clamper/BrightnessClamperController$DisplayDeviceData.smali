.class public Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;
.super Ljava/lang/Object;
.source "BrightnessClamperController.java"

# interfaces
.implements Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$ThermalData;
.implements Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$PowerData;
.implements Lcom/android/server/display/brightness/clamper/BrightnessWearBedtimeModeModifier$WearBedtimeModeData;
.implements Lcom/android/server/display/brightness/clamper/BrightnessMinModeModifier$MinModeBrightnessData;


# instance fields
.field public final mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

.field public final mDisplayId:I

.field public final mDisplayToken:Landroid/os/IBinder;

.field public final mHeight:I

.field public final mPowerThrottlingDataId:Ljava/lang/String;

.field public final mThermalThrottlingDataId:Ljava/lang/String;

.field public final mUniqueDisplayId:Ljava/lang/String;

.field public final mWidth:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/display/DisplayDeviceConfig;IILandroid/os/IBinder;I)V
    .registers 9

    .line 388
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 389
    iput-object p1, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;->mUniqueDisplayId:Ljava/lang/String;

    .line 390
    iput-object p2, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;->mThermalThrottlingDataId:Ljava/lang/String;

    .line 391
    iput-object p3, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;->mPowerThrottlingDataId:Ljava/lang/String;

    .line 392
    iput-object p4, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 393
    iput p5, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;->mWidth:I

    .line 394
    iput p6, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;->mHeight:I

    .line 395
    iput-object p7, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;->mDisplayToken:Landroid/os/IBinder;

    .line 396
    iput p8, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;->mDisplayId:I

    return-void
.end method


# virtual methods
.method public getAmbientLightSensor()Lcom/android/server/display/config/SensorData;
    .registers 1

    .line 458
    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    invoke-virtual {p0}, Lcom/android/server/display/DisplayDeviceConfig;->getAmbientLightSensor()Lcom/android/server/display/config/SensorData;

    move-result-object p0

    return-object p0
.end method

.method public getBrightnessMinModeCap()F
    .registers 1

    .line 447
    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    invoke-virtual {p0}, Lcom/android/server/display/DisplayDeviceConfig;->getBrightnessCapForMinMode()F

    move-result p0

    return p0
.end method

.method public getBrightnessWearBedtimeModeCap()F
    .registers 1

    .line 442
    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    invoke-virtual {p0}, Lcom/android/server/display/DisplayDeviceConfig;->getBrightnessCapForWearBedtimeMode()F

    move-result p0

    return p0
.end method

.method public getDisplayId()I
    .registers 1

    .line 462
    iget p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;->mDisplayId:I

    return p0
.end method

.method public getPowerThrottlingConfigData()Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingConfigData;
    .registers 1

    .line 437
    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    invoke-virtual {p0}, Lcom/android/server/display/DisplayDeviceConfig;->getPowerThrottlingConfigData()Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingConfigData;

    move-result-object p0

    return-object p0
.end method

.method public getPowerThrottlingData()Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingData;
    .registers 2

    .line 430
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayDeviceConfig;->getPowerThrottlingDataMapByThrottlingId()Ljava/util/Map;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;->mPowerThrottlingDataId:Ljava/lang/String;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingData;

    return-object p0
.end method

.method public getPowerThrottlingDataId()Ljava/lang/String;
    .registers 1

    .line 424
    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;->mPowerThrottlingDataId:Ljava/lang/String;

    return-object p0
.end method

.method public getTempSensor()Lcom/android/server/display/config/SensorData;
    .registers 1

    .line 453
    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    invoke-virtual {p0}, Lcom/android/server/display/DisplayDeviceConfig;->getTempSensor()Lcom/android/server/display/config/SensorData;

    move-result-object p0

    return-object p0
.end method

.method public getThermalBrightnessThrottlingData()Lcom/android/server/display/DisplayDeviceConfig$ThermalBrightnessThrottlingData;
    .registers 2

    .line 414
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;->mThermalThrottlingDataId:Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 417
    :cond_6
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayDeviceConfig;->getThermalBrightnessThrottlingDataMapByThrottlingId()Ljava/util/Map;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;->mThermalThrottlingDataId:Ljava/lang/String;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/display/DisplayDeviceConfig$ThermalBrightnessThrottlingData;

    return-object p0
.end method

.method public getThermalThrottlingDataId()Ljava/lang/String;
    .registers 1

    .line 408
    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;->mThermalThrottlingDataId:Ljava/lang/String;

    return-object p0
.end method

.method public getUniqueDisplayId()Ljava/lang/String;
    .registers 1

    .line 402
    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;->mUniqueDisplayId:Ljava/lang/String;

    return-object p0
.end method
