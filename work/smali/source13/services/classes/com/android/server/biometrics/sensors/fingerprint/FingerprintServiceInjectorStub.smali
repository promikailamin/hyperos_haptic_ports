.class public interface abstract Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceInjectorStub;
.super Ljava/lang/Object;
.source "FingerprintServiceInjectorStub.java"


# static fields
.field public static final MISIGHT_FINGERPRINT_TEMPLATELOST_EVENT:I = 0x1


# direct methods
.method public static getInstance()Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceInjectorStub;
    .registers 1

    .line 14
    const-class v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceInjectorStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintServiceInjectorStub;

    return-object v0
.end method


# virtual methods
.method public abstract miSightEventReport(II)V
.end method

.method public abstract recordAcquiredInfo(II)V
.end method

.method public abstract recordActivityVisible()V
.end method

.method public abstract recordFpTypeAndEnrolledCount(Landroid/content/Context;II)V
.end method

.method public abstract reportFingerEvent(Ljava/lang/String;I)V
.end method
