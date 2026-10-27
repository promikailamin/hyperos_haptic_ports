.class interface abstract Landroid/hardware/face/BiometricClient$ServiceCallback;
.super Ljava/lang/Object;
.source "BiometricClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/face/BiometricClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "ServiceCallback"
.end annotation


# virtual methods
.method public abstract blacklist onBiometricBundleCallback(IILandroid/os/Bundle;)V
.end method

.method public abstract blacklist onBiometricEventCallback(IIII)V
.end method

.method public abstract blacklist onBiometricEventClassLoader(Landroid/os/Bundle;)V
.end method

.method public abstract blacklist onBiometricServiceConnected()V
.end method

.method public abstract blacklist onBiometricServiceDisconnected()V
.end method
