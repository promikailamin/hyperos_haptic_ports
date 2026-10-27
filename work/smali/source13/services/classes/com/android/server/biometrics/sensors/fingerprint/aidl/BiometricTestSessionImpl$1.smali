.class Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl$1;
.super Landroid/hardware/fingerprint/IFingerprintServiceReceiver$Stub;
.source "BiometricTestSessionImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;


# direct methods
.method constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;

    .line 66
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl$1;->this$0:Lcom/android/server/biometrics/sensors/fingerprint/aidl/BiometricTestSessionImpl;

    invoke-direct {p0}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onAcquired(II)V
    .registers 3
    .param p1, "acquiredInfo"    # I
    .param p2, "vendorCode"    # I

    .line 75
    return-void
.end method

.method public onAuthenticationFailed()V
    .registers 1

    .line 91
    return-void
.end method

.method public onAuthenticationSucceeded(Landroid/hardware/fingerprint/Fingerprint;IZ)V
    .registers 4
    .param p1, "fp"    # Landroid/hardware/fingerprint/Fingerprint;
    .param p2, "userId"    # I
    .param p3, "isStrongBiometric"    # Z

    .line 81
    return-void
.end method

.method public onChallengeGenerated(IIJ)V
    .registers 5
    .param p1, "sensorId"    # I
    .param p2, "userId"    # I
    .param p3, "challenge"    # J

    .line 106
    return-void
.end method

.method public onEnrollResult(Landroid/hardware/fingerprint/Fingerprint;I)V
    .registers 3
    .param p1, "fp"    # Landroid/hardware/fingerprint/Fingerprint;
    .param p2, "remaining"    # I

    .line 70
    return-void
.end method

.method public onError(II)V
    .registers 3
    .param p1, "error"    # I
    .param p2, "vendorCode"    # I

    .line 96
    return-void
.end method

.method public onFingerprintDetected(IIZ)V
    .registers 4
    .param p1, "sensorId"    # I
    .param p2, "userId"    # I
    .param p3, "isStrongBiometric"    # Z

    .line 86
    return-void
.end method

.method public onRemoved(Landroid/hardware/fingerprint/Fingerprint;I)V
    .registers 3
    .param p1, "fp"    # Landroid/hardware/fingerprint/Fingerprint;
    .param p2, "remaining"    # I

    .line 101
    return-void
.end method

.method public onUdfpsPointerDown(I)V
    .registers 2
    .param p1, "sensorId"    # I

    .line 111
    return-void
.end method

.method public onUdfpsPointerUp(I)V
    .registers 2
    .param p1, "sensorId"    # I

    .line 116
    return-void
.end method
