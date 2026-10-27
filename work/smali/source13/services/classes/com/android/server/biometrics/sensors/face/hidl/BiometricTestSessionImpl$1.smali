.class Lcom/android/server/biometrics/sensors/face/hidl/BiometricTestSessionImpl$1;
.super Landroid/hardware/face/IFaceServiceReceiver$Stub;
.source "BiometricTestSessionImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/sensors/face/hidl/BiometricTestSessionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/biometrics/sensors/face/hidl/BiometricTestSessionImpl;


# direct methods
.method constructor <init>(Lcom/android/server/biometrics/sensors/face/hidl/BiometricTestSessionImpl;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/biometrics/sensors/face/hidl/BiometricTestSessionImpl;

    .line 56
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/face/hidl/BiometricTestSessionImpl$1;->this$0:Lcom/android/server/biometrics/sensors/face/hidl/BiometricTestSessionImpl;

    invoke-direct {p0}, Landroid/hardware/face/IFaceServiceReceiver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onAcquired(II)V
    .registers 3
    .param p1, "acquiredInfo"    # I
    .param p2, "vendorCode"    # I

    .line 65
    return-void
.end method

.method public onAuthenticationFailed()V
    .registers 1

    .line 80
    return-void
.end method

.method public onAuthenticationFrame(Landroid/hardware/face/FaceAuthenticationFrame;)V
    .registers 2
    .param p1, "frame"    # Landroid/hardware/face/FaceAuthenticationFrame;

    .line 110
    return-void
.end method

.method public onAuthenticationSucceeded(Landroid/hardware/face/Face;IZ)V
    .registers 4
    .param p1, "face"    # Landroid/hardware/face/Face;
    .param p2, "userId"    # I
    .param p3, "isStrongBiometric"    # Z

    .line 70
    return-void
.end method

.method public onChallengeGenerated(IIJ)V
    .registers 5
    .param p1, "sensorId"    # I
    .param p2, "userId"    # I
    .param p3, "challenge"    # J

    .line 105
    return-void
.end method

.method public onEnrollResult(Landroid/hardware/face/Face;I)V
    .registers 3
    .param p1, "face"    # Landroid/hardware/face/Face;
    .param p2, "remaining"    # I

    .line 60
    return-void
.end method

.method public onEnrollmentFrame(Landroid/hardware/face/FaceEnrollFrame;)V
    .registers 2
    .param p1, "frame"    # Landroid/hardware/face/FaceEnrollFrame;

    .line 115
    return-void
.end method

.method public onError(II)V
    .registers 3
    .param p1, "error"    # I
    .param p2, "vendorCode"    # I

    .line 85
    return-void
.end method

.method public onFaceDetected(IIZ)V
    .registers 4
    .param p1, "sensorId"    # I
    .param p2, "userId"    # I
    .param p3, "isStrongBiometric"    # Z

    .line 75
    return-void
.end method

.method public onFeatureGet(Z[I[Z)V
    .registers 4
    .param p1, "success"    # Z
    .param p2, "features"    # [I
    .param p3, "featureState"    # [Z

    .line 100
    return-void
.end method

.method public onFeatureSet(ZI)V
    .registers 3
    .param p1, "success"    # Z
    .param p2, "feature"    # I

    .line 95
    return-void
.end method

.method public onRemoved(Landroid/hardware/face/Face;I)V
    .registers 3
    .param p1, "face"    # Landroid/hardware/face/Face;
    .param p2, "remaining"    # I

    .line 90
    return-void
.end method
