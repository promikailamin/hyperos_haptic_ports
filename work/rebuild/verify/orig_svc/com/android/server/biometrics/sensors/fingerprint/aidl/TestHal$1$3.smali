.class public Lcom/android/server/biometrics/sensors/fingerprint/aidl/TestHal$1$3;
.super Landroid/hardware/biometrics/common/ICancellationSignal$Stub;
.source "TestHal.java"


# instance fields
.field public final synthetic this$1:Lcom/android/server/biometrics/sensors/fingerprint/aidl/TestHal$1;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/aidl/TestHal$1;)V
    .registers 2

    .line 121
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/TestHal$1$3;->this$1:Lcom/android/server/biometrics/sensors/fingerprint/aidl/TestHal$1;

    invoke-direct {p0}, Landroid/hardware/biometrics/common/ICancellationSignal$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 3

    .line 124
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/TestHal$1$3;->this$1:Lcom/android/server/biometrics/sensors/fingerprint/aidl/TestHal$1;

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/aidl/TestHal$1;->val$cb:Landroid/hardware/biometrics/fingerprint/ISessionCallback;

    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/hardware/biometrics/fingerprint/ISessionCallback;->onError(BI)V

    return-void
.end method

.method public getInterfaceHash()Ljava/lang/String;
    .registers 1

    .line 132
    const-string p0, "8a6cd86630181a4df6f20056259ec200ffe39209"

    return-object p0
.end method

.method public getInterfaceVersion()I
    .registers 1

    .line 0
    const/4 p0, 0x4

    return p0
.end method
