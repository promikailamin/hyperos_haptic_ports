.class public interface abstract Lcom/android/server/vibrator/VibratorManagerServiceStub;
.super Ljava/lang/Object;
.source "VibratorManagerServiceStub.java"


# direct methods
.method public static getInstance()Lcom/android/server/vibrator/VibratorManagerServiceStub;
    .registers 1

    .line 12
    const-class v0, Lcom/android/server/vibrator/VibratorManagerServiceStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/vibrator/VibratorManagerServiceStub;

    return-object v0
.end method


# virtual methods
.method public calculateVibrateForMiui(Landroid/os/CombinedVibration;Landroid/os/VibrationAttributes;Ljava/lang/String;)Landroid/os/CombinedVibration;
    .registers 4
    .param p1, "effect"    # Landroid/os/CombinedVibration;
    .param p2, "attrs"    # Landroid/os/VibrationAttributes;
    .param p3, "opPkg"    # Ljava/lang/String;

    .line 18
    return-object p1
.end method

.method public cancelDynamicEffectIfItIs(I)Z
    .registers 3
    .param p1, "usageFilter"    # I

    .line 34
    const/4 v0, 0x0

    return v0
.end method

.method public abstract init(Landroid/content/Context;)V
.end method

.method public playDynamicEffectIfItIs(Lcom/android/server/vibrator/Vibration;)Z
    .registers 3
    .param p1, "vib"    # Lcom/android/server/vibrator/Vibration;

    .line 30
    const/4 v0, 0x0

    return v0
.end method

.method public shouldIgnoreForDynamicEffect(Lcom/android/server/vibrator/Vibration;)Z
    .registers 3
    .param p1, "incomingVibration"    # Lcom/android/server/vibrator/Vibration;

    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method public shouldIgnoredVibration(Landroid/os/VibrationAttributes;Ljava/lang/String;)Z
    .registers 4
    .param p1, "attrs"    # Landroid/os/VibrationAttributes;
    .param p2, "opPkg"    # Ljava/lang/String;

    .line 26
    const/4 v0, 0x0

    return v0
.end method

.method public startVibrationLockedInjector(Landroid/os/ExternalVibration;)Ljava/lang/String;
    .registers 3
    .param p1, "vib"    # Landroid/os/ExternalVibration;

    .line 46
    const/4 v0, 0x0

    return-object v0
.end method

.method public startVibrationLockedInjector(Lcom/android/server/vibrator/Vibration;)Ljava/lang/String;
    .registers 3
    .param p1, "vib"    # Lcom/android/server/vibrator/Vibration;

    .line 42
    const/4 v0, 0x0

    return-object v0
.end method

.method public weakenVibrationIfNecessary(JI)J
    .registers 4
    .param p1, "time"    # J
    .param p3, "uid"    # I

    .line 22
    return-wide p1
.end method
