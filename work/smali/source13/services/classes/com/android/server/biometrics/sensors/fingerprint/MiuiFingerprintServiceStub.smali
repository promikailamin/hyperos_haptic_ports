.class public interface abstract Lcom/android/server/biometrics/sensors/fingerprint/MiuiFingerprintServiceStub;
.super Ljava/lang/Object;
.source "MiuiFingerprintServiceStub.java"


# direct methods
.method public static getInstance()Lcom/android/server/biometrics/sensors/fingerprint/MiuiFingerprintServiceStub;
    .registers 1

    .line 17
    const-class v0, Lcom/android/server/biometrics/sensors/fingerprint/MiuiFingerprintServiceStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/MiuiFingerprintServiceStub;

    return-object v0
.end method


# virtual methods
.method public extCmd(Landroid/os/IBinder;IIILjava/lang/String;)I
    .registers 7
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "groupId"    # I
    .param p3, "cmd"    # I
    .param p4, "param"    # I
    .param p5, "opPackageName"    # Ljava/lang/String;

    .line 26
    const/4 v0, -0x1

    return v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 6
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I

    .line 21
    const/4 v0, 0x0

    return v0
.end method
