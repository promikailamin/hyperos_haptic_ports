.class public interface abstract Lcom/android/server/vibrator/HalVibrator;
.super Ljava/lang/Object;
.source "HalVibrator.java"


# virtual methods
.method public abstract dump(Landroid/util/IndentingPrintWriter;)V
.end method

.method public abstract getCurrentAmplitude()F
.end method

.method public abstract getInfo()Landroid/os/VibratorInfo;
.end method

.method public abstract init(Lcom/android/server/vibrator/HalVibrator$Callbacks;)V
.end method

.method public abstract isVibrating()Z
.end method

.method public abstract off()Z
.end method

.method public abstract on(JJJ)J
.end method

.method public abstract on(JJLandroid/os/VibrationEffect$VendorEffect;)J
.end method

.method public abstract on(JJLandroid/os/vibrator/PrebakedSegment;)J
.end method

.method public abstract on(JJ[Landroid/os/vibrator/PrimitiveSegment;)J
.end method

.method public abstract on(JJ[Landroid/os/vibrator/PwlePoint;)J
.end method

.method public abstract on(JJ[Landroid/os/vibrator/RampSegment;)J
.end method

.method public abstract onSystemReady()V
.end method

.method public abstract registerVibratorStateListener(Landroid/os/IVibratorStateListener;)Z
.end method

.method public abstract setAlwaysOn(ILandroid/os/vibrator/PrebakedSegment;)Z
.end method

.method public abstract setAmplitude(F)Z
.end method

.method public abstract setExternalControl(Z)Z
.end method

.method public abstract unregisterVibratorStateListener(Landroid/os/IVibratorStateListener;)Z
.end method
