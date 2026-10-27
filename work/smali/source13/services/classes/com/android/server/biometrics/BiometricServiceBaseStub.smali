.class public interface abstract Lcom/android/server/biometrics/BiometricServiceBaseStub;
.super Ljava/lang/Object;
.source "BiometricServiceBaseStub.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "BiometricServiceBaseStub"


# direct methods
.method public static getInstance()Lcom/android/server/biometrics/BiometricServiceBaseStub;
    .registers 1

    .line 15
    const-class v0, Lcom/android/server/biometrics/BiometricServiceBaseStub;

    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/BiometricServiceBaseStub;

    return-object v0
.end method


# virtual methods
.method public abstract fodCallBack(Landroid/content/Context;IILcom/android/server/biometrics/sensors/BaseClientMonitor;)I
.end method

.method public abstract fodCallBack(Landroid/content/Context;IILjava/lang/String;Lcom/android/server/biometrics/sensors/BaseClientMonitor;)I
.end method

.method public abstract getFingerprintUnlockType(Landroid/content/Context;)I
.end method

.method public getIsFod()Z
    .registers 2

    .line 35
    const/4 v0, 0x0

    return v0
.end method

.method public abstract getIsPowerfp()Z
.end method

.method public init()V
    .registers 3

    .line 19
    const-string v0, "BiometricServiceBaseStub"

    const-string v1, "Init BiometricServiceBaseStub"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    return-void
.end method

.method public abstract isFingerprintClient(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)Z
.end method

.method public abstract isIndia()I
.end method

.method public abstract registerSideFpUnlockTypeChangedObserver(Landroid/os/Handler;Landroid/content/Context;)V
.end method

.method public abstract setCurrentLockoutMode(I)V
.end method
