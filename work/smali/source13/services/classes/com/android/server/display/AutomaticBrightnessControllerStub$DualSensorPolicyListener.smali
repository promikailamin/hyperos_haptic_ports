.class public interface abstract Lcom/android/server/display/AutomaticBrightnessControllerStub$DualSensorPolicyListener;
.super Ljava/lang/Object;
.source "AutomaticBrightnessControllerStub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/AutomaticBrightnessControllerStub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DualSensorPolicyListener"
.end annotation


# virtual methods
.method public abstract adjustMainDarkeningDelayTime(J)V
.end method

.method public abstract calculateFastAmbientLux(J)F
.end method

.method public abstract calculateSlowAmbientLux(J)F
.end method

.method public abstract getBrighteningThreshold()F
.end method

.method public abstract getDarkeningThreshold()F
.end method

.method public abstract getMainDarkeningDelayTime()J
.end method

.method public abstract removeUpdateAmbientLuxMessage()V
.end method

.method public abstract sendUpdateAmbientLuxMessage(J)V
.end method

.method public abstract updateAmbientLux(IFZZ)V
.end method

.method public abstract updateNextBrighteningTransition(J)J
.end method

.method public abstract updateNextDarkeningTransition(J)J
.end method

.method public abstract useDaemonSensorPolicyInProgress()Z
.end method
