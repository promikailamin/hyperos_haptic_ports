.class Lcom/android/server/biometrics/sensors/fingerprint/aidl/TestHal$1$1;
.super Landroid/hardware/biometrics/common/ICancellationSignal$Stub;
.source "TestHal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/biometrics/sensors/fingerprint/aidl/TestHal$1;->enroll(Landroid/hardware/keymaster/HardwareAuthToken;)Landroid/hardware/biometrics/common/ICancellationSignal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/biometrics/sensors/fingerprint/aidl/TestHal$1;


# direct methods
.method constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/TestHal$1;)V
    .registers 2
    .param p1, "this$1"    # Lcom/android/server/biometrics/sensors/fingerprint/aidl/TestHal$1;

    .line 83
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/TestHal$1$1;->this$1:Lcom/android/server/biometrics/sensors/fingerprint/aidl/TestHal$1;

    invoke-direct {p0}, Landroid/hardware/biometrics/common/ICancellationSignal$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/TestHal$1$1;->this$1:Lcom/android/server/biometrics/sensors/fingerprint/aidl/TestHal$1;

    iget-object v0, v0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/TestHal$1;->val$cb:Landroid/hardware/biometrics/fingerprint/ISessionCallback;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/hardware/biometrics/fingerprint/ISessionCallback;->onError(BI)V

    .line 87
    return-void
.end method

.method public getInterfaceHash()Ljava/lang/String;
    .registers 2

    .line 94
    const-string v0, "a6d4d8e7b26408ab30a3d87cf6b7ffd9e067e4d8"

    return-object v0
.end method

.method public getInterfaceVersion()I
    .registers 2

    .line 90
    const/4 v0, 0x2

    return v0
.end method
