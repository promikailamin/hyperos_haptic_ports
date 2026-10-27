.class public abstract Lcom/android/server/security/authenticationpolicy/SecureLockDeviceServiceInternal;
.super Ljava/lang/Object;
.source "SecureLockDeviceServiceInternal.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract disableSecureLockDevice(Landroid/os/UserHandle;Landroid/security/authenticationpolicy/DisableSecureLockDeviceParams;Z)I
.end method

.method public abstract enableSecureLockDevice(Landroid/os/UserHandle;Landroid/security/authenticationpolicy/EnableSecureLockDeviceParams;)I
.end method

.method public abstract getSecureLockDeviceAvailability(Landroid/os/UserHandle;)I
.end method

.method public abstract hasUserCompletedTwoFactorAuthentication(Landroid/os/UserHandle;)Z
.end method

.method public abstract isSecureLockDeviceEnabled()Z
.end method

.method public abstract onStrongBiometricAuthenticationSuccess(Landroid/os/UserHandle;)V
.end method

.method public abstract registerSecureLockDeviceStatusListener(Landroid/os/UserHandle;Landroid/security/authenticationpolicy/ISecureLockDeviceStatusListener;)V
.end method

.method public abstract setSecureLockDeviceTestStatus(Z)V
.end method

.method public abstract unregisterSecureLockDeviceStatusListener(Landroid/security/authenticationpolicy/ISecureLockDeviceStatusListener;)V
.end method
