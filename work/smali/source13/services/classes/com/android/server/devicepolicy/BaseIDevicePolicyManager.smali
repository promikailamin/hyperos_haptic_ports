.class abstract Lcom/android/server/devicepolicy/BaseIDevicePolicyManager;
.super Landroid/app/admin/IDevicePolicyManager$Stub;
.source "BaseIDevicePolicyManager.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 48
    const-class v0, Lcom/android/server/devicepolicy/BaseIDevicePolicyManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/devicepolicy/BaseIDevicePolicyManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 46
    invoke-direct {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public acknowledgeDeviceCompliant()V
    .registers 1

    .line 120
    return-void
.end method

.method public canAdminGrantSensorsPermissionsForUser(I)Z
    .registers 3
    .param p1, "userId"    # I

    .line 164
    const/4 v0, 0x0

    return v0
.end method

.method public canProfileOwnerResetPasswordWhenLocked(I)Z
    .registers 3
    .param p1, "userId"    # I

    .line 128
    const/4 v0, 0x0

    return v0
.end method

.method public clearSystemUpdatePolicyFreezePeriodRecord()V
    .registers 1

    .line 92
    return-void
.end method

.method public createAndProvisionManagedProfile(Landroid/app/admin/ManagedProfileProvisioningParams;Ljava/lang/String;)Landroid/os/UserHandle;
    .registers 4
    .param p1, "provisioningParams"    # Landroid/app/admin/ManagedProfileProvisioningParams;
    .param p2, "callerPackage"    # Ljava/lang/String;

    .line 140
    const/4 v0, 0x0

    return-object v0
.end method

.method public finalizeWorkProfileProvisioning(Landroid/os/UserHandle;Landroid/accounts/Account;)V
    .registers 3
    .param p1, "managedProfileUser"    # Landroid/os/UserHandle;
    .param p2, "migratedAccount"    # Landroid/accounts/Account;

    .line 146
    return-void
.end method

.method public getDeviceOwnerType(Landroid/content/ComponentName;)I
    .registers 3
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 158
    const/4 v0, 0x0

    return v0
.end method

.method public getDrawable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/admin/ParcelableResource;
    .registers 5
    .param p1, "drawableId"    # Ljava/lang/String;
    .param p2, "drawableStyle"    # Ljava/lang/String;
    .param p3, "drawableSource"    # Ljava/lang/String;

    .line 186
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEnrollmentSpecificId(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "callerPackage"    # Ljava/lang/String;

    .line 132
    const-string v0, ""

    return-object v0
.end method

.method public getManagedProfileMaximumTimeOff(Landroid/content/ComponentName;)J
    .registers 4
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 116
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getPersonalAppsSuspendedReasons(Landroid/content/ComponentName;)I
    .registers 3
    .param p1, "admin"    # Landroid/content/ComponentName;

    .line 106
    const/4 v0, 0x0

    return v0
.end method

.method public getPolicyManagedProfiles(Landroid/os/UserHandle;)Ljava/util/List;
    .registers 3
    .param p1, "userHandle"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/List<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation

    .line 207
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getString(Ljava/lang/String;)Landroid/app/admin/ParcelableResource;
    .registers 3
    .param p1, "stringId"    # Ljava/lang/String;

    .line 197
    const/4 v0, 0x0

    return-object v0
.end method

.method abstract handleOnUserUnlocked(I)V
.end method

.method abstract handleStartUser(I)V
.end method

.method abstract handleStopUser(I)V
.end method

.method abstract handleUnlockUser(I)V
.end method

.method public isComplianceAcknowledgementRequired()Z
    .registers 2

    .line 124
    const/4 v0, 0x0

    return v0
.end method

.method public isKeyPairGrantedToWifiAuth(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p1, "callerPackage"    # Ljava/lang/String;
    .param p2, "alias"    # Ljava/lang/String;

    .line 174
    const/4 v0, 0x0

    return v0
.end method

.method public isOrganizationOwnedDeviceWithManagedProfile()Z
    .registers 2

    .line 102
    const/4 v0, 0x0

    return v0
.end method

.method public provisionFullyManagedDevice(Landroid/app/admin/FullyManagedDeviceProvisioningParams;Ljava/lang/String;)V
    .registers 3
    .param p1, "provisioningParams"    # Landroid/app/admin/FullyManagedDeviceProvisioningParams;
    .param p2, "callerPackage"    # Ljava/lang/String;

    .line 150
    return-void
.end method

.method public resetDefaultCrossProfileIntentFilters(I)V
    .registers 2
    .param p1, "userId"    # I

    .line 161
    return-void
.end method

.method public resetDrawables(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 181
    .local p1, "drawableIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method public resetStrings(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 193
    .local p1, "stringIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method public setDeviceOwnerType(Landroid/content/ComponentName;I)V
    .registers 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "deviceOwnerType"    # I

    .line 154
    return-void
.end method

.method public setDevicePolicySafetyChecker(Landroid/app/admin/DevicePolicySafetyChecker;)V
    .registers 5
    .param p1, "safetyChecker"    # Landroid/app/admin/DevicePolicySafetyChecker;

    .line 88
    sget-object v0, Lcom/android/server/devicepolicy/BaseIDevicePolicyManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDevicePolicySafetyChecker() not implemented by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    return-void
.end method

.method public setDrawables(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/admin/DevicePolicyDrawableResource;",
            ">;)V"
        }
    .end annotation

    .line 178
    .local p1, "drawables":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/DevicePolicyDrawableResource;>;"
    return-void
.end method

.method public setKeyGrantForApp(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 7
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "callerPackage"    # Ljava/lang/String;
    .param p3, "alias"    # Ljava/lang/String;
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "hasGrant"    # Z

    .line 96
    const/4 v0, 0x0

    return v0
.end method

.method public setKeyGrantToWifiAuth(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 5
    .param p1, "callerPackage"    # Ljava/lang/String;
    .param p2, "alias"    # Ljava/lang/String;
    .param p3, "hasGrant"    # Z

    .line 169
    const/4 v0, 0x0

    return v0
.end method

.method public setLocationEnabled(Landroid/content/ComponentName;Z)V
    .registers 3
    .param p1, "who"    # Landroid/content/ComponentName;
    .param p2, "locationEnabled"    # Z

    .line 99
    return-void
.end method

.method public setManagedProfileMaximumTimeOff(Landroid/content/ComponentName;J)V
    .registers 4
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "timeoutMs"    # J

    .line 113
    return-void
.end method

.method public setOrganizationIdForUser(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4
    .param p1, "callerPackage"    # Ljava/lang/String;
    .param p2, "enterpriseId"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 136
    return-void
.end method

.method public setPersonalAppsSuspended(Landroid/content/ComponentName;Z)V
    .registers 3
    .param p1, "admin"    # Landroid/content/ComponentName;
    .param p2, "suspended"    # Z

    .line 110
    return-void
.end method

.method public setStrings(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/admin/DevicePolicyStringResource;",
            ">;)V"
        }
    .end annotation

    .line 190
    .local p1, "strings":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/DevicePolicyStringResource;>;"
    return-void
.end method

.method public shouldAllowBypassingDevicePolicyManagementRoleQualification()Z
    .registers 2

    .line 202
    const/4 v0, 0x0

    return v0
.end method

.method abstract systemReady(I)V
.end method
