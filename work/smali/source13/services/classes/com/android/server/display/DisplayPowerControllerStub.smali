.class public interface abstract Lcom/android/server/display/DisplayPowerControllerStub;
.super Ljava/lang/Object;
.source "DisplayPowerControllerStub.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/DisplayPowerControllerStub$SunlightStateChangedListener;
    }
.end annotation


# direct methods
.method public static getInstance()Lcom/android/server/display/DisplayPowerControllerStub;
    .registers 1

    .line 17
    const-class v0, Lcom/android/server/display/DisplayPowerControllerStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/DisplayPowerControllerStub;

    return-object v0
.end method


# virtual methods
.method public adjustBackLightRate(F)F
    .registers 2
    .param p1, "inRate"    # F

    .line 81
    return p1
.end method

.method public adjustBrightness(FLcom/android/server/display/DisplayPowerController$BrightnessReason;)F
    .registers 3
    .param p1, "brightness"    # F
    .param p2, "brightnessReason"    # Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    .line 77
    return p1
.end method

.method public adjustBrightnessByTemperature(F)F
    .registers 2
    .param p1, "brightness"    # F

    .line 128
    return p1
.end method

.method public adjustSdrBrightness(FZLcom/android/server/display/DisplayPowerController$BrightnessReason;Z)F
    .registers 5
    .param p1, "brightness"    # F
    .param p2, "useAutoBrightness"    # Z
    .param p3, "brightnessReason"    # Lcom/android/server/display/DisplayPowerController$BrightnessReason;
    .param p4, "appliedAutoBrightness"    # Z

    .line 72
    return p1
.end method

.method public computeFloatRate(FFFLjava/lang/String;)F
    .registers 6
    .param p1, "rate"    # F
    .param p2, "currentValue"    # F
    .param p3, "targetValue"    # F
    .param p4, "rampName"    # Ljava/lang/String;

    .line 61
    const/high16 v0, 0x7fc00000    # Float.NaN

    return v0
.end method

.method public abstract dump(Ljava/io/PrintWriter;)V
.end method

.method public getClampedBrightnessForPeak(F)F
    .registers 2
    .param p1, "brightnessValue"    # F

    .line 140
    return p1
.end method

.method public abstract init(Lcom/android/server/display/DisplayPowerController;Landroid/content/Context;Landroid/os/Looper;IFFLcom/android/server/display/DisplayDeviceConfig;Lcom/android/server/display/LogicalDisplay;)V
.end method

.method public isBrightnessCurveOptimizePolicyDisable()Z
    .registers 2

    .line 136
    const/4 v0, 0x0

    return v0
.end method

.method public isColorInversionEnabled()Z
    .registers 2

    .line 85
    const/4 v0, 0x0

    return v0
.end method

.method public isCurtainAnimationNeeded()Z
    .registers 2

    .line 102
    const/4 v0, 0x0

    return v0
.end method

.method public isGalleryHdrEnable()Z
    .registers 2

    .line 121
    const/4 v0, 0x0

    return v0
.end method

.method public abstract mayBeReportUserDisableSunlightTemporary(F)V
.end method

.method public abstract notifyBrightnessChangeIfNeeded(ZFZZFZFFZF)V
.end method

.method public notifyUpdateBrightnessAnimInfo(FFF)V
    .registers 4
    .param p1, "currentValue"    # F
    .param p2, "animateValue"    # F
    .param p3, "targetValue"    # F

    .line 113
    return-void
.end method

.method public notifyUpdateTempBrightnessTimeStamp(Z)V
    .registers 2
    .param p1, "enable"    # Z

    .line 115
    return-void
.end method

.method public onBootCompleted()V
    .registers 1

    .line 131
    return-void
.end method

.method public onCurtainAnimationFinished()V
    .registers 1

    .line 105
    return-void
.end method

.method public abstract receiveNoticeFromDisplayPowerController(ILandroid/os/Bundle;)V
.end method

.method public abstract sendBrightnessToSurfaceFlingerIfNeeded(FFZ)V
.end method

.method public setAppliedScreenBrightnessOverride(Z)V
    .registers 2
    .param p1, "isApplied"    # Z

    .line 125
    return-void
.end method

.method public setManualDimmingEnabled(ZF)V
    .registers 3
    .param p1, "manualDimingEnable"    # Z
    .param p2, "animateValue"    # F

    .line 111
    return-void
.end method

.method public setRampAnimator(Lcom/android/server/display/RampAnimator$DualRampAnimator;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/display/RampAnimator$DualRampAnimator<",
            "Lcom/android/server/display/DisplayPowerState;",
            ">;)V"
        }
    .end annotation

    .line 49
    .local p1, "rampAnimator":Lcom/android/server/display/RampAnimator$DualRampAnimator;, "Lcom/android/server/display/RampAnimator$DualRampAnimator<Lcom/android/server/display/DisplayPowerState;>;"
    return-void
.end method

.method public abstract setSunlightListener(Lcom/android/server/display/DisplayPowerControllerStub$SunlightStateChangedListener;)V
.end method

.method public shouldDimmingWhenSlideBrightnessBar(Z)Z
    .registers 3
    .param p1, "brightnessIsTemporary"    # Z

    .line 108
    const/4 v0, 0x0

    return v0
.end method

.method public showTouchCoverProtectionRect(Z)V
    .registers 2
    .param p1, "isShow"    # Z

    .line 99
    return-void
.end method

.method public stop()V
    .registers 1

    .line 92
    return-void
.end method

.method public abstract updateAmbientLightSensor(Landroid/hardware/Sensor;)V
.end method

.method public abstract updateAutoBrightnessComponent(Lcom/android/server/display/BrightnessMappingStrategy;Lcom/android/server/display/AutomaticBrightnessControllerStub;Lcom/android/server/display/DisplayDeviceConfig;Lcom/android/server/display/HighBrightnessModeController;)V
.end method

.method public updateBrightnessAnimInfoIfNeeded(Z)V
    .registers 2
    .param p1, "enable"    # Z

    .line 117
    return-void
.end method

.method public abstract updateBrightnessChangeStatus(ZIZZZFFFFI)V
.end method

.method public updateFastRateStatus(F)V
    .registers 2
    .param p1, "brightness"    # F

    .line 54
    return-void
.end method

.method public updateScreenState(F)V
    .registers 2
    .param p1, "brightnessState"    # F

    .line 133
    return-void
.end method
