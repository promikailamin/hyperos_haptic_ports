.class Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$TestableBiometricScheduler;
.super Lcom/android/server/biometrics/sensors/BiometricScheduler;
.source "Fingerprint21UdfpsMock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TestableBiometricScheduler"
.end annotation


# instance fields
.field private mFingerprint21:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/os/Handler;Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;)V
    .registers 5
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "gestureAvailabilityDispatcher"    # Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;

    .line 142
    const/4 v0, 0x3

    invoke-direct {p0, p1, v0, p3}, Lcom/android/server/biometrics/sensors/BiometricScheduler;-><init>(Ljava/lang/String;ILcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;)V

    .line 143
    return-void
.end method


# virtual methods
.method init(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;)V
    .registers 2
    .param p1, "fingerprint21"    # Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;

    .line 146
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$TestableBiometricScheduler;->mFingerprint21:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;

    .line 147
    return-void
.end method
