.class public Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl$1;
.super Landroid/hardware/face/IFaceServiceReceiver$Stub;
.source "BiometricTestSessionImpl.java"


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/face/aidl/BiometricTestSessionImpl;)V
    .registers 2

    .line 71
    invoke-direct {p0}, Landroid/hardware/face/IFaceServiceReceiver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onAcquired(II)V
    .registers 3

    .line 0
    return-void
.end method

.method public onAuthenticationFailed()V
    .registers 1

    .line 0
    return-void
.end method

.method public onAuthenticationFrame(Landroid/hardware/face/FaceAuthenticationFrame;)V
    .registers 2

    .line 0
    return-void
.end method

.method public onAuthenticationSucceeded(Landroid/hardware/face/Face;IZ)V
    .registers 4

    .line 0
    return-void
.end method

.method public onChallengeGenerated(IIJ)V
    .registers 5

    .line 0
    return-void
.end method

.method public onEnrollResult(Landroid/hardware/face/Face;I)V
    .registers 3

    .line 0
    return-void
.end method

.method public onEnrollmentFrame(Landroid/hardware/face/FaceEnrollFrame;)V
    .registers 2

    .line 0
    return-void
.end method

.method public onError(II)V
    .registers 3

    .line 0
    return-void
.end method

.method public onFaceDetected(IIZ)V
    .registers 4

    .line 0
    return-void
.end method

.method public onFeatureGet(Z[I[Z)V
    .registers 4

    .line 0
    return-void
.end method

.method public onFeatureSet(ZI)V
    .registers 3

    .line 0
    return-void
.end method

.method public onRemoved(Landroid/hardware/face/Face;I)V
    .registers 3

    .line 0
    return-void
.end method
