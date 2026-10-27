.class public interface abstract Lcom/android/server/security/authenticationpolicy/settings/SecureLockDeviceSettingsManager;
.super Ljava/lang/Object;
.source "SecureLockDeviceSettingsManager.java"


# virtual methods
.method public abstract enableSecurityFeatures(I)V
.end method

.method public abstract enableSecurityFeaturesFromBoot(I)V
.end method

.method public abstract getManagedSettings()Ljava/util/Map;
.end method

.method public abstract initSettingsControllerDependencies(Landroid/app/admin/DevicePolicyManager;Landroid/hardware/usb/UsbManager;Landroid/hardware/usb/IUsbManagerInternal;)V
.end method

.method public abstract resetManagedSettings()V
.end method

.method public abstract restoreOriginalSettings(I)V
.end method

.method public abstract setSkipSecurityFeaturesForTest(Z)V
.end method
