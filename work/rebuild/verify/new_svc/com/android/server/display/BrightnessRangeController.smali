.class public Lcom/android/server/display/BrightnessRangeController;
.super Ljava/lang/Object;
.source "BrightnessRangeController.java"


# instance fields
.field public final mHbmController:Lcom/android/server/display/HighBrightnessModeController;

.field public final mModeChangeCallback:Ljava/lang/Runnable;

.field public final mNormalBrightnessModeController:Lcom/android/server/display/NormalBrightnessModeController;


# direct methods
.method public static synthetic $r8$lambda$GUV7m5sl0wmyNlkXREpePSULFgA(Lcom/android/server/display/BrightnessRangeController;Lcom/android/server/display/DisplayDeviceConfig;)Z
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/display/BrightnessRangeController;->lambda$loadFromConfig$2(Lcom/android/server/display/DisplayDeviceConfig;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$U0nZjfPV0TdCJdzfZtXNehso7Pg(Lcom/android/server/display/BrightnessRangeController;F)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/display/BrightnessRangeController;->lambda$onAmbientLuxChange$1(F)V

    return-void
.end method

.method public static synthetic $r8$lambda$dKtp9_j8KRcoYxWMg8d00hzlVN0(Lcom/android/server/display/BrightnessRangeController;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/display/BrightnessRangeController;->lambda$setAutoBrightnessEnabled$5(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$dbB59hbTRiQQALN7imDybrZ2ZcM(Lcom/android/server/display/BrightnessRangeController;Lcom/android/server/display/HighBrightnessModeMetadata;Lcom/android/server/display/DisplayDeviceInfo;Landroid/os/IBinder;Lcom/android/server/display/DisplayDeviceConfig;)V
    .registers 5

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/display/BrightnessRangeController;->lambda$loadFromConfig$3(Lcom/android/server/display/HighBrightnessModeMetadata;Lcom/android/server/display/DisplayDeviceInfo;Landroid/os/IBinder;Lcom/android/server/display/DisplayDeviceConfig;)V

    return-void
.end method

.method public static synthetic $r8$lambda$p1Nigl72IgjP0-A2CBQzXT9CNbM(Lcom/android/server/display/BrightnessRangeController;F)Z
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/display/BrightnessRangeController;->lambda$onAmbientLuxChange$0(F)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$zpmKQQW2rDvBS46nbBqX3mXvWvI(Lcom/android/server/display/BrightnessRangeController;I)Z
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/display/BrightnessRangeController;->lambda$setAutoBrightnessEnabled$4(I)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/android/server/display/HighBrightnessModeController;Ljava/lang/Runnable;Lcom/android/server/display/DisplayDeviceConfig;)V
    .registers 5

    .line 36
    new-instance v0, Lcom/android/server/display/NormalBrightnessModeController;

    invoke-direct {v0}, Lcom/android/server/display/NormalBrightnessModeController;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/display/BrightnessRangeController;-><init>(Lcom/android/server/display/HighBrightnessModeController;Ljava/lang/Runnable;Lcom/android/server/display/DisplayDeviceConfig;Lcom/android/server/display/NormalBrightnessModeController;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/HighBrightnessModeController;Ljava/lang/Runnable;Lcom/android/server/display/DisplayDeviceConfig;Lcom/android/server/display/NormalBrightnessModeController;)V
    .registers 5

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/android/server/display/BrightnessRangeController;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    .line 45
    iput-object p2, p0, Lcom/android/server/display/BrightnessRangeController;->mModeChangeCallback:Ljava/lang/Runnable;

    .line 46
    iput-object p4, p0, Lcom/android/server/display/BrightnessRangeController;->mNormalBrightnessModeController:Lcom/android/server/display/NormalBrightnessModeController;

    .line 48
    invoke-virtual {p3}, Lcom/android/server/display/DisplayDeviceConfig;->getLuxThrottlingData()Ljava/util/Map;

    move-result-object p0

    .line 47
    invoke-virtual {p4, p0}, Lcom/android/server/display/NormalBrightnessModeController;->resetNbmData(Ljava/util/Map;)Z

    .line 50
    invoke-virtual {p1}, Lcom/android/server/display/HighBrightnessModeController;->disableHdrBoost()V

    return-void
.end method


# virtual methods
.method public final applyChanges(Ljava/util/function/BooleanSupplier;Ljava/lang/Runnable;)V
    .registers 3

    .line 131
    invoke-interface {p1}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    move-result p1

    .line 132
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    if-eqz p1, :cond_e

    .line 136
    iget-object p0, p0, Lcom/android/server/display/BrightnessRangeController;->mModeChangeCallback:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_e
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 3

    .line 54
    const-string v0, "BrightnessRangeController:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lcom/android/server/display/BrightnessRangeController;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    invoke-virtual {v0, p1}, Lcom/android/server/display/HighBrightnessModeController;->dump(Ljava/io/PrintWriter;)V

    .line 56
    iget-object p0, p0, Lcom/android/server/display/BrightnessRangeController;->mNormalBrightnessModeController:Lcom/android/server/display/NormalBrightnessModeController;

    invoke-virtual {p0, p1}, Lcom/android/server/display/NormalBrightnessModeController;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public getCurrentBrightnessMax()F
    .registers 2

    .line 111
    iget-object v0, p0, Lcom/android/server/display/BrightnessRangeController;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    invoke-virtual {v0}, Lcom/android/server/display/HighBrightnessModeController;->deviceSupportsHbm()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/server/display/BrightnessRangeController;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    invoke-virtual {v0}, Lcom/android/server/display/HighBrightnessModeController;->isHbmCurrentlyAllowed()Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_18

    .line 115
    :cond_11
    iget-object p0, p0, Lcom/android/server/display/BrightnessRangeController;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    invoke-virtual {p0}, Lcom/android/server/display/HighBrightnessModeController;->getCurrentBrightnessMax()F

    move-result p0

    return p0

    .line 112
    :cond_18
    :goto_18
    iget-object v0, p0, Lcom/android/server/display/BrightnessRangeController;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    invoke-virtual {v0}, Lcom/android/server/display/HighBrightnessModeController;->getCurrentBrightnessMax()F

    move-result v0

    iget-object p0, p0, Lcom/android/server/display/BrightnessRangeController;->mNormalBrightnessModeController:Lcom/android/server/display/NormalBrightnessModeController;

    .line 113
    invoke-virtual {p0}, Lcom/android/server/display/NormalBrightnessModeController;->getCurrentBrightnessMax()F

    move-result p0

    .line 112
    invoke-static {v0, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0
.end method

.method public getCurrentBrightnessMin()F
    .registers 1

    .line 104
    iget-object p0, p0, Lcom/android/server/display/BrightnessRangeController;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    invoke-virtual {p0}, Lcom/android/server/display/HighBrightnessModeController;->getCurrentBrightnessMin()F

    move-result p0

    return p0
.end method

.method public getHdrBrightnessValue()F
    .registers 1

    .line 123
    iget-object p0, p0, Lcom/android/server/display/BrightnessRangeController;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    invoke-virtual {p0}, Lcom/android/server/display/HighBrightnessModeController;->getHdrBrightnessValue()F

    move-result p0

    return p0
.end method

.method public getHighBrightnessMode()I
    .registers 1

    .line 119
    iget-object p0, p0, Lcom/android/server/display/BrightnessRangeController;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    invoke-virtual {p0}, Lcom/android/server/display/HighBrightnessModeController;->getHighBrightnessMode()I

    move-result p0

    return p0
.end method

.method public getNormalBrightnessMax()F
    .registers 1

    .line 67
    iget-object p0, p0, Lcom/android/server/display/BrightnessRangeController;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    invoke-virtual {p0}, Lcom/android/server/display/HighBrightnessModeController;->getNormalBrightnessMax()F

    move-result p0

    return p0
.end method

.method public getTransitionPoint()F
    .registers 1

    .line 127
    iget-object p0, p0, Lcom/android/server/display/BrightnessRangeController;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    invoke-virtual {p0}, Lcom/android/server/display/HighBrightnessModeController;->getTransitionPoint()F

    move-result p0

    return p0
.end method

.method public final synthetic lambda$loadFromConfig$2(Lcom/android/server/display/DisplayDeviceConfig;)Z
    .registers 2

    .line 73
    iget-object p0, p0, Lcom/android/server/display/BrightnessRangeController;->mNormalBrightnessModeController:Lcom/android/server/display/NormalBrightnessModeController;

    .line 74
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDeviceConfig;->getLuxThrottlingData()Ljava/util/Map;

    move-result-object p1

    .line 73
    invoke-virtual {p0, p1}, Lcom/android/server/display/NormalBrightnessModeController;->resetNbmData(Ljava/util/Map;)Z

    move-result p0

    return p0
.end method

.method public final synthetic lambda$loadFromConfig$3(Lcom/android/server/display/HighBrightnessModeMetadata;Lcom/android/server/display/DisplayDeviceInfo;Landroid/os/IBinder;Lcom/android/server/display/DisplayDeviceConfig;)V
    .registers 13

    .line 76
    iget-object v0, p0, Lcom/android/server/display/BrightnessRangeController;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    invoke-virtual {v0, p1}, Lcom/android/server/display/HighBrightnessModeController;->setHighBrightnessModeMetadata(Lcom/android/server/display/HighBrightnessModeMetadata;)V

    .line 77
    iget-object v1, p0, Lcom/android/server/display/BrightnessRangeController;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    iget v2, p2, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    iget v3, p2, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    iget-object v5, p2, Lcom/android/server/display/DisplayDeviceInfo;->uniqueId:Ljava/lang/String;

    .line 78
    invoke-virtual {p4}, Lcom/android/server/display/DisplayDeviceConfig;->getHighBrightnessModeData()Lcom/android/server/display/config/HighBrightnessModeData;

    move-result-object v6

    .line 79
    new-instance v7, Lcom/android/server/display/BrightnessRangeController$$ExternalSyntheticLambda6;

    invoke-direct {v7, p4}, Lcom/android/server/display/BrightnessRangeController$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/display/DisplayDeviceConfig;)V

    move-object v4, p3

    .line 77
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/display/HighBrightnessModeController;->resetHbmData(IILandroid/os/IBinder;Ljava/lang/String;Lcom/android/server/display/config/HighBrightnessModeData;Lcom/android/server/display/HighBrightnessModeController$HdrBrightnessDeviceConfig;)V

    return-void
.end method

.method public final synthetic lambda$onAmbientLuxChange$0(F)Z
    .registers 2

    .line 61
    iget-object p0, p0, Lcom/android/server/display/BrightnessRangeController;->mNormalBrightnessModeController:Lcom/android/server/display/NormalBrightnessModeController;

    invoke-virtual {p0, p1}, Lcom/android/server/display/NormalBrightnessModeController;->onAmbientLuxChange(F)Z

    move-result p0

    return p0
.end method

.method public final synthetic lambda$onAmbientLuxChange$1(F)V
    .registers 2

    .line 62
    iget-object p0, p0, Lcom/android/server/display/BrightnessRangeController;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    invoke-virtual {p0, p1}, Lcom/android/server/display/HighBrightnessModeController;->onAmbientLuxChange(F)V

    return-void
.end method

.method public final synthetic lambda$setAutoBrightnessEnabled$4(I)Z
    .registers 2

    .line 90
    iget-object p0, p0, Lcom/android/server/display/BrightnessRangeController;->mNormalBrightnessModeController:Lcom/android/server/display/NormalBrightnessModeController;

    invoke-virtual {p0, p1}, Lcom/android/server/display/NormalBrightnessModeController;->setAutoBrightnessState(I)Z

    move-result p0

    return p0
.end method

.method public final synthetic lambda$setAutoBrightnessEnabled$5(I)V
    .registers 2

    .line 91
    iget-object p0, p0, Lcom/android/server/display/BrightnessRangeController;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    invoke-virtual {p0, p1}, Lcom/android/server/display/HighBrightnessModeController;->setAutoBrightnessEnabled(I)V

    return-void
.end method

.method public loadFromConfig(Lcom/android/server/display/HighBrightnessModeMetadata;Landroid/os/IBinder;Lcom/android/server/display/DisplayDeviceInfo;Lcom/android/server/display/DisplayDeviceConfig;)V
    .registers 12

    .line 72
    new-instance v0, Lcom/android/server/display/BrightnessRangeController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p4}, Lcom/android/server/display/BrightnessRangeController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/BrightnessRangeController;Lcom/android/server/display/DisplayDeviceConfig;)V

    new-instance v1, Lcom/android/server/display/BrightnessRangeController$$ExternalSyntheticLambda1;

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move-object v4, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/display/BrightnessRangeController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/display/BrightnessRangeController;Lcom/android/server/display/HighBrightnessModeMetadata;Lcom/android/server/display/DisplayDeviceInfo;Landroid/os/IBinder;Lcom/android/server/display/DisplayDeviceConfig;)V

    invoke-virtual {v2, v0, v1}, Lcom/android/server/display/BrightnessRangeController;->applyChanges(Ljava/util/function/BooleanSupplier;Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAmbientLuxChange(F)V
    .registers 4

    .line 60
    new-instance v0, Lcom/android/server/display/BrightnessRangeController$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lcom/android/server/display/BrightnessRangeController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/display/BrightnessRangeController;F)V

    new-instance v1, Lcom/android/server/display/BrightnessRangeController$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/android/server/display/BrightnessRangeController$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/display/BrightnessRangeController;F)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/display/BrightnessRangeController;->applyChanges(Ljava/util/function/BooleanSupplier;Ljava/lang/Runnable;)V

    return-void
.end method

.method public onBrightnessChanged(FFLcom/android/server/display/DisplayBrightnessState;)V
    .registers 7

    .line 97
    iget-object v0, p0, Lcom/android/server/display/BrightnessRangeController;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    .line 98
    invoke-virtual {p3}, Lcom/android/server/display/DisplayBrightnessState;->getHdrBrightness()F

    move-result v1

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    .line 97
    :goto_f
    invoke-virtual {v0, v1}, Lcom/android/server/display/HighBrightnessModeController;->onHdrBoostApplied(Z)V

    .line 99
    iget-object p0, p0, Lcom/android/server/display/BrightnessRangeController;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    .line 100
    invoke-virtual {p3}, Lcom/android/server/display/DisplayBrightnessState;->getBrightnessMaxReason()I

    move-result p3

    .line 99
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/display/HighBrightnessModeController;->onBrightnessChanged(FFI)V

    return-void
.end method

.method public setAutoBrightnessEnabled(I)V
    .registers 4

    .line 89
    new-instance v0, Lcom/android/server/display/BrightnessRangeController$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1}, Lcom/android/server/display/BrightnessRangeController$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/display/BrightnessRangeController;I)V

    new-instance v1, Lcom/android/server/display/BrightnessRangeController$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1}, Lcom/android/server/display/BrightnessRangeController$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/display/BrightnessRangeController;I)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/display/BrightnessRangeController;->applyChanges(Ljava/util/function/BooleanSupplier;Ljava/lang/Runnable;)V

    return-void
.end method

.method public stop()V
    .registers 1

    .line 85
    iget-object p0, p0, Lcom/android/server/display/BrightnessRangeController;->mHbmController:Lcom/android/server/display/HighBrightnessModeController;

    invoke-virtual {p0}, Lcom/android/server/display/HighBrightnessModeController;->stop()V

    return-void
.end method
