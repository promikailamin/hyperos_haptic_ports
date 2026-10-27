.class public abstract Landroid/app/admin/IDevicePolicyManager$Stub;
.super Landroid/os/Binder;
.source "IDevicePolicyManager.java"

# interfaces
.implements Landroid/app/admin/IDevicePolicyManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/admin/IDevicePolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.app.admin.IDevicePolicyManager"

.field static final blacklist TRANSACTION_acknowledgeDeviceCompliant:I = 0x168

.field static final blacklist TRANSACTION_acknowledgeNewUserDisclaimer:I = 0xac

.field static final greylist-max-o TRANSACTION_addCrossProfileIntentFilter:I = 0x90

.field static final greylist-max-o TRANSACTION_addCrossProfileWidgetProvider:I = 0xde

.field static final greylist-max-o TRANSACTION_addOverrideApn:I = 0x145

.field static final greylist-max-o TRANSACTION_addPersistentPreferredActivity:I = 0x7d

.field static final greylist-max-o TRANSACTION_approveCaCert:I = 0x6a

.field static final greylist-max-o TRANSACTION_bindDeviceAdminServiceAsUser:I = 0x12d

.field static final blacklist TRANSACTION_calculateHasIncompatibleAccounts:I = 0x19a

.field static final blacklist TRANSACTION_canAdminGrantSensorsPermissions:I = 0x179

.field static final blacklist TRANSACTION_canProfileOwnerResetPasswordWhenLocked:I = 0x16a

.field static final blacklist TRANSACTION_canUsbDataSignalingBeDisabled:I = 0x17c

.field static final blacklist TRANSACTION_checkDeviceIdentifierAccess:I = 0x61

.field static final blacklist TRANSACTION_checkProvisioningPrecondition:I = 0xfe

.field static final greylist-max-o TRANSACTION_choosePrivateKeyAlias:I = 0x71

.field static final greylist-max-o TRANSACTION_clearApplicationUserData:I = 0x139

.field static final greylist-max-o TRANSACTION_clearCrossProfileIntentFilters:I = 0x91

.field static final greylist-max-o TRANSACTION_clearDeviceOwner:I = 0x54

.field static final blacklist TRANSACTION_clearMultiUserDeviceManagement:I = 0x46

.field static final blacklist TRANSACTION_clearOrganizationIdForUser:I = 0x10c

.field static final greylist-max-o TRANSACTION_clearPackagePersistentPreferredActivities:I = 0x7e

.field static final greylist-max-o TRANSACTION_clearProfileOwner:I = 0x5e

.field static final greylist-max-o TRANSACTION_clearResetPasswordToken:I = 0x134

.field static final greylist-max-o TRANSACTION_clearSystemUpdatePolicyFreezePeriodRecord:I = 0xf2

.field static final greylist-max-o TRANSACTION_createAdminSupportIntent:I = 0x9d

.field static final greylist-max-o TRANSACTION_createAndManageUser:I = 0xa3

.field static final blacklist TRANSACTION_createAndProvisionManagedProfile:I = 0x16f

.field static final blacklist TRANSACTION_createManagedProfile:I = 0x170

.field static final greylist-max-o TRANSACTION_enableSystemApp:I = 0xae

.field static final greylist-max-o TRANSACTION_enableSystemAppWithIntent:I = 0xaf

.field static final greylist-max-o TRANSACTION_enforceCanManageCaCerts:I = 0x69

.field static final blacklist TRANSACTION_finalizeCreateManagedProfile:I = 0x171

.field static final blacklist TRANSACTION_finalizeWorkProfileProvisioning:I = 0x174

.field static final blacklist TRANSACTION_forceNetworkLogs:I = 0x11d

.field static final greylist-max-o TRANSACTION_forceRemoveActiveAdmin:I = 0x45

.field static final greylist-max-o TRANSACTION_forceSecurityLogs:I = 0x11e

.field static final blacklist TRANSACTION_forceSetMaxPolicyStorageLimit:I = 0x19f

.field static final greylist-max-o TRANSACTION_forceUpdateUserSetupComplete:I = 0x127

.field static final greylist-max-o TRANSACTION_generateKeyPair:I = 0x6f

.field static final greylist-max-o TRANSACTION_getAccountTypesWithManagementDisabled:I = 0xb2

.field static final greylist-max-o TRANSACTION_getAccountTypesWithManagementDisabledAsUser:I = 0xb3

.field static final greylist-max-o TRANSACTION_getActiveAdmins:I = 0x41

.field static final greylist-max-o TRANSACTION_getAffiliationIds:I = 0x116

.field static final blacklist TRANSACTION_getAggregatedPasswordComplexityForUser:I = 0x1d

.field static final blacklist TRANSACTION_getAllCrossProfilePackages:I = 0x157

.field static final blacklist TRANSACTION_getAlwaysOnVpnLockdownAllowlist:I = 0x7c

.field static final greylist-max-o TRANSACTION_getAlwaysOnVpnPackage:I = 0x78

.field static final blacklist TRANSACTION_getAlwaysOnVpnPackageForUser:I = 0x79

.field static final blacklist TRANSACTION_getAppFunctionsPolicy:I = 0x1a4

.field static final blacklist TRANSACTION_getApplicationExemptions:I = 0x18f

.field static final greylist-max-o TRANSACTION_getApplicationRestrictions:I = 0x82

.field static final blacklist TRANSACTION_getApplicationRestrictionsBySystem:I = 0x86

.field static final greylist-max-o TRANSACTION_getApplicationRestrictionsManagingPackage:I = 0x84

.field static final blacklist TRANSACTION_getAutoTimeEnabled:I = 0xe5

.field static final blacklist TRANSACTION_getAutoTimePolicy:I = 0xe7

.field static final greylist-max-o TRANSACTION_getAutoTimeRequired:I = 0xe3

.field static final blacklist TRANSACTION_getAutoTimeZoneEnabled:I = 0xe9

.field static final blacklist TRANSACTION_getAutoTimeZonePolicy:I = 0xeb

.field static final greylist-max-o TRANSACTION_getBindDeviceAdminTargetUsers:I = 0x12e

.field static final greylist-max-o TRANSACTION_getBluetoothContactSharingDisabled:I = 0xda

.field static final greylist-max-o TRANSACTION_getBluetoothContactSharingDisabledForUser:I = 0xdb

.field static final greylist-max-o TRANSACTION_getCameraDisabled:I = 0x36

.field static final greylist-max-o TRANSACTION_getCertInstallerPackage:I = 0x76

.field static final blacklist TRANSACTION_getContentProtectionPolicy:I = 0x19c

.field static final blacklist TRANSACTION_getCredentialManagerPolicy:I = 0xd5

.field static final blacklist TRANSACTION_getCrossProfileCalendarPackages:I = 0x152

.field static final blacklist TRANSACTION_getCrossProfileCalendarPackagesForUser:I = 0x154

.field static final greylist-max-o TRANSACTION_getCrossProfileCallerIdDisabled:I = 0xcb

.field static final greylist-max-o TRANSACTION_getCrossProfileCallerIdDisabledForUser:I = 0xcc

.field static final greylist-max-o TRANSACTION_getCrossProfileContactsSearchDisabled:I = 0xce

.field static final greylist-max-o TRANSACTION_getCrossProfileContactsSearchDisabledForUser:I = 0xcf

.field static final blacklist TRANSACTION_getCrossProfilePackages:I = 0x156

.field static final greylist-max-o TRANSACTION_getCrossProfileWidgetProviders:I = 0xe1

.field static final greylist-max-o TRANSACTION_getCurrentFailedPasswordAttempts:I = 0x1f

.field static final blacklist TRANSACTION_getDefaultCrossProfilePackages:I = 0x158

.field static final greylist-max-o TRANSACTION_getDelegatePackages:I = 0x74

.field static final greylist-max-o TRANSACTION_getDelegatedScopes:I = 0x73

.field static final greylist-max-o TRANSACTION_getDeviceOwnerComponent:I = 0x50

.field static final blacklist TRANSACTION_getDeviceOwnerComponentOnUser:I = 0x51

.field static final greylist-max-o TRANSACTION_getDeviceOwnerLockScreenInfo:I = 0x63

.field static final greylist-max-o TRANSACTION_getDeviceOwnerName:I = 0x53

.field static final greylist-max-o TRANSACTION_getDeviceOwnerOrganizationName:I = 0x111

.field static final blacklist TRANSACTION_getDeviceOwnerType:I = 0x177

.field static final greylist-max-o TRANSACTION_getDeviceOwnerUserId:I = 0x55

.field static final blacklist TRANSACTION_getDevicePolicyState:I = 0x196

.field static final greylist-max-o TRANSACTION_getDisallowedSystemApps:I = 0x13c

.field static final greylist-max-o TRANSACTION_getDoNotAskCredentialsOnBoot:I = 0xf6

.field static final blacklist TRANSACTION_getDrawable:I = 0x185

.field static final greylist-max-o TRANSACTION_getEndUserSessionMessage:I = 0x142

.field static final blacklist TRANSACTION_getEnforcingAdmin:I = 0x9f

.field static final blacklist TRANSACTION_getEnforcingAdminAndUserDetails:I = 0x9e

.field static final blacklist TRANSACTION_getEnforcingAdminsForPolicy:I = 0xa0

.field static final blacklist TRANSACTION_getEnrollmentSpecificId:I = 0x16d

.field static final blacklist TRANSACTION_getFactoryResetProtectionPolicy:I = 0x2b

.field static final blacklist TRANSACTION_getFinancedDeviceKioskRoleHolder:I = 0x199

.field static final greylist-max-o TRANSACTION_getForceEphemeralUsers:I = 0xed

.field static final blacklist TRANSACTION_getGlobalPrivateDnsHost:I = 0x14e

.field static final blacklist TRANSACTION_getGlobalPrivateDnsMode:I = 0x14d

.field static final greylist-max-o TRANSACTION_getGlobalProxyAdmin:I = 0x2f

.field static final blacklist TRANSACTION_getHeadlessDeviceOwnerMode:I = 0x1a2

.field static final greylist-max-o TRANSACTION_getKeepUninstalledPackages:I = 0x100

.field static final blacklist TRANSACTION_getKeyPairGrants:I = 0x15d

.field static final greylist-max-o TRANSACTION_getKeyguardDisabledFeatures:I = 0x3e

.field static final greylist-max-o TRANSACTION_getLastBugReportRequestTime:I = 0x131

.field static final greylist-max-o TRANSACTION_getLastNetworkLogRetrievalTime:I = 0x132

.field static final greylist-max-o TRANSACTION_getLastSecurityLogRetrievalTime:I = 0x130

.field static final greylist-max-o TRANSACTION_getLockTaskFeatures:I = 0xbc

.field static final greylist-max-o TRANSACTION_getLockTaskPackages:I = 0xb9

.field static final blacklist TRANSACTION_getLogoutUserId:I = 0xaa

.field static final greylist-max-o TRANSACTION_getLongSupportMessage:I = 0x107

.field static final greylist-max-o TRANSACTION_getLongSupportMessageForUser:I = 0x109

.field static final blacklist TRANSACTION_getManagedProfileCallerIdAccessPolicy:I = 0xd2

.field static final blacklist TRANSACTION_getManagedProfileContactsAccessPolicy:I = 0xd7

.field static final blacklist TRANSACTION_getManagedProfileMaximumTimeOff:I = 0x166

.field static final blacklist TRANSACTION_getManagedSubscriptionsPolicy:I = 0x194

.field static final blacklist TRANSACTION_getMaxPolicyStorageLimit:I = 0x1a0

.field static final greylist-max-o TRANSACTION_getMaximumFailedPasswordsForWipe:I = 0x22

.field static final greylist-max-o TRANSACTION_getMaximumTimeToLock:I = 0x25

.field static final greylist-max-o TRANSACTION_getMeteredDataDisabledPackages:I = 0x144

.field static final blacklist TRANSACTION_getMinimumRequiredWifiSecurityLevel:I = 0x17e

.field static final blacklist TRANSACTION_getMtePolicy:I = 0x192

.field static final blacklist TRANSACTION_getNearbyAppStreamingPolicy:I = 0x3c

.field static final blacklist TRANSACTION_getNearbyNotificationStreamingPolicy:I = 0x3a

.field static final greylist-max-o TRANSACTION_getOrganizationColor:I = 0x10d

.field static final greylist-max-o TRANSACTION_getOrganizationColorForUser:I = 0x10e

.field static final greylist-max-o TRANSACTION_getOrganizationName:I = 0x110

.field static final greylist-max-o TRANSACTION_getOrganizationNameForUser:I = 0x112

.field static final greylist-max-o TRANSACTION_getOverrideApns:I = 0x148

.field static final greylist-max-o TRANSACTION_getOwnerInstalledCaCerts:I = 0x138

.field static final blacklist TRANSACTION_getPasswordComplexity:I = 0x1a

.field static final greylist-max-o TRANSACTION_getPasswordExpiration:I = 0x16

.field static final greylist-max-o TRANSACTION_getPasswordExpirationTimeout:I = 0x15

.field static final greylist-max-o TRANSACTION_getPasswordHistoryLength:I = 0x13

.field static final greylist-max-o TRANSACTION_getPasswordMinimumLength:I = 0x4

.field static final greylist-max-o TRANSACTION_getPasswordMinimumLetters:I = 0xa

.field static final greylist-max-o TRANSACTION_getPasswordMinimumLowerCase:I = 0x8

.field static final blacklist TRANSACTION_getPasswordMinimumMetrics:I = 0x11

.field static final greylist-max-o TRANSACTION_getPasswordMinimumNonLetter:I = 0x10

.field static final greylist-max-o TRANSACTION_getPasswordMinimumNumeric:I = 0xc

.field static final greylist-max-o TRANSACTION_getPasswordMinimumSymbols:I = 0xe

.field static final greylist-max-o TRANSACTION_getPasswordMinimumUpperCase:I = 0x6

.field static final greylist-max-o TRANSACTION_getPasswordQuality:I = 0x2

.field static final greylist-max-o TRANSACTION_getPendingSystemUpdate:I = 0xf8

.field static final greylist-max-o TRANSACTION_getPermissionGrantState:I = 0xfc

.field static final greylist-max-o TRANSACTION_getPermissionPolicy:I = 0xfa

.field static final greylist-max-o TRANSACTION_getPermittedAccessibilityServices:I = 0x93

.field static final greylist-max-o TRANSACTION_getPermittedAccessibilityServicesForUser:I = 0x94

.field static final greylist-max-o TRANSACTION_getPermittedCrossProfileNotificationListeners:I = 0x9b

.field static final greylist-max-o TRANSACTION_getPermittedInputMethods:I = 0x97

.field static final blacklist TRANSACTION_getPermittedInputMethodsAsUser:I = 0x98

.field static final blacklist TRANSACTION_getPersonalAppsSuspendedReasons:I = 0x164

.field static final blacklist TRANSACTION_getPolicyManagedProfiles:I = 0x18d

.field static final blacklist TRANSACTION_getPolicySizeForAdmin:I = 0x1a1

.field static final blacklist TRANSACTION_getPreferentialNetworkServiceConfigs:I = 0xb7

.field static final blacklist TRANSACTION_getProfileOwnerAsUser:I = 0x58

.field static final greylist-max-o TRANSACTION_getProfileOwnerName:I = 0x5b

.field static final blacklist TRANSACTION_getProfileOwnerOrDeviceOwnerSupervisionComponent:I = 0x59

.field static final greylist-max-o TRANSACTION_getProfileWithMinimumFailedPasswordsForWipe:I = 0x20

.field static final greylist-max-o TRANSACTION_getRemoveWarning:I = 0x43

.field static final blacklist TRANSACTION_getRequiredPasswordComplexity:I = 0x1c

.field static final greylist-max-o TRANSACTION_getRequiredStrongAuthTimeout:I = 0x27

.field static final greylist-max-o TRANSACTION_getRestrictionsProvider:I = 0x89

.field static final greylist-max-o TRANSACTION_getScreenCaptureDisabled:I = 0x38

.field static final greylist-max-o TRANSACTION_getSecondaryUsers:I = 0xab

.field static final greylist-max-o TRANSACTION_getShortSupportMessage:I = 0x105

.field static final greylist-max-o TRANSACTION_getShortSupportMessageForUser:I = 0x108

.field static final greylist-max-o TRANSACTION_getStartUserSessionMessage:I = 0x141

.field static final greylist-max-o TRANSACTION_getStorageEncryption:I = 0x32

.field static final greylist-max-o TRANSACTION_getStorageEncryptionStatus:I = 0x33

.field static final blacklist TRANSACTION_getString:I = 0x18a

.field static final blacklist TRANSACTION_getSubscriptionIds:I = 0x19d

.field static final greylist-max-o TRANSACTION_getSystemUpdatePolicy:I = 0xf1

.field static final greylist-max-o TRANSACTION_getTransferOwnershipBundle:I = 0x13e

.field static final greylist-max-o TRANSACTION_getTrustAgentConfiguration:I = 0xdd

.field static final blacklist TRANSACTION_getUserControlDisabledPackages:I = 0x161

.field static final greylist-max-o TRANSACTION_getUserProvisioningState:I = 0x113

.field static final greylist-max-o TRANSACTION_getUserRestrictions:I = 0x8e

.field static final blacklist TRANSACTION_getUserRestrictionsGlobally:I = 0x8f

.field static final greylist-max-o TRANSACTION_getWifiMacAddress:I = 0x102

.field static final blacklist TRANSACTION_getWifiSsidPolicy:I = 0x180

.field static final greylist-max-o TRANSACTION_hasDeviceOwner:I = 0x52

.field static final greylist-max-o TRANSACTION_hasGrantedPolicy:I = 0x47

.field static final blacklist TRANSACTION_hasKeyPair:I = 0x6e

.field static final blacklist TRANSACTION_hasLockdownAdminConfiguredNetworks:I = 0xc1

.field static final blacklist TRANSACTION_hasManagedProfileCallerIdAccess:I = 0xd3

.field static final blacklist TRANSACTION_hasManagedProfileContactsAccess:I = 0xd8

.field static final greylist-max-o TRANSACTION_hasUserSetupCompleted:I = 0x5f

.field static final greylist-max-o TRANSACTION_installCaCert:I = 0x67

.field static final greylist-max-o TRANSACTION_installExistingPackage:I = 0xb0

.field static final greylist-max-o TRANSACTION_installKeyPair:I = 0x6c

.field static final blacklist TRANSACTION_installUpdateFromFile:I = 0x150

.field static final greylist-max-o TRANSACTION_isAccessibilityServicePermittedByAdmin:I = 0x95

.field static final greylist-max-o TRANSACTION_isActivePasswordSufficient:I = 0x17

.field static final blacklist TRANSACTION_isActivePasswordSufficientForDeviceRequirement:I = 0x18

.field static final greylist-max-o TRANSACTION_isAdminActive:I = 0x40

.field static final greylist-max-o TRANSACTION_isAffiliatedUser:I = 0x118

.field static final blacklist TRANSACTION_isAlwaysOnVpnLockdownEnabled:I = 0x7a

.field static final blacklist TRANSACTION_isAlwaysOnVpnLockdownEnabledForUser:I = 0x7b

.field static final greylist-max-o TRANSACTION_isApplicationHidden:I = 0xa2

.field static final blacklist TRANSACTION_isAuditLogEnabled:I = 0x120

.field static final greylist-max-o TRANSACTION_isBackupServiceEnabled:I = 0x129

.field static final greylist-max-o TRANSACTION_isCaCertApproved:I = 0x6b

.field static final greylist-max-o TRANSACTION_isCallerApplicationRestrictionsManagingPackage:I = 0x87

.field static final blacklist TRANSACTION_isCallingUserAffiliated:I = 0x117

.field static final blacklist TRANSACTION_isCommonCriteriaModeEnabled:I = 0x163

.field static final blacklist TRANSACTION_isComplianceAcknowledgementRequired:I = 0x169

.field static final greylist-max-o TRANSACTION_isCurrentInputMethodSetByOwner:I = 0x137

.field static final blacklist TRANSACTION_isDeviceFinanced:I = 0x198

.field static final blacklist TRANSACTION_isDeviceManaged:I = 0x56

.field static final blacklist TRANSACTION_isDevicePotentiallyStolen:I = 0x181

.field static final greylist-max-o TRANSACTION_isDeviceProvisioned:I = 0x124

.field static final greylist-max-o TRANSACTION_isDeviceProvisioningConfigApplied:I = 0x125

.field static final blacklist TRANSACTION_isDpcDownloaded:I = 0x186

.field static final greylist-max-o TRANSACTION_isEphemeralUser:I = 0x12f

.field static final blacklist TRANSACTION_isFactoryResetProtectionPolicySupported:I = 0x2c

.field static final greylist-max-o TRANSACTION_isInputMethodPermittedByAdmin:I = 0x99

.field static final blacklist TRANSACTION_isKeyPairGrantedToWifiAuth:I = 0x15f

.field static final greylist-max-o TRANSACTION_isLockTaskPermitted:I = 0xba

.field static final greylist-max-o TRANSACTION_isLogoutEnabled:I = 0x13b

.field static final blacklist TRANSACTION_isManagedKiosk:I = 0x159

.field static final greylist-max-o TRANSACTION_isManagedProfile:I = 0x101

.field static final greylist-max-o TRANSACTION_isMasterVolumeMuted:I = 0xc6

.field static final greylist-max-o TRANSACTION_isMeteredDataDisabledPackageForUser:I = 0x14b

.field static final greylist-max-o TRANSACTION_isNetworkLoggingEnabled:I = 0x12b

.field static final blacklist TRANSACTION_isNewUserDisclaimerAcknowledged:I = 0xad

.field static final greylist-max-o TRANSACTION_isNotificationListenerServicePermitted:I = 0x9c

.field static final blacklist TRANSACTION_isOrganizationOwnedDeviceWithManagedProfile:I = 0x60

.field static final greylist-max-o TRANSACTION_isOverrideApnEnabled:I = 0x14a

.field static final blacklist TRANSACTION_isPackageAllowedToAccessCalendarForUser:I = 0x153

.field static final greylist-max-o TRANSACTION_isPackageSuspended:I = 0x65

.field static final blacklist TRANSACTION_isPasswordSufficientAfterProfileUnification:I = 0x19

.field static final greylist-max-o TRANSACTION_isProvisioningAllowed:I = 0xfd

.field static final greylist-max-o TRANSACTION_isRemovingAdmin:I = 0xee

.field static final greylist-max-o TRANSACTION_isResetPasswordTokenActive:I = 0x135

.field static final blacklist TRANSACTION_isSafeOperation:I = 0x16c

.field static final blacklist TRANSACTION_isSecondaryLockscreenEnabled:I = 0xb5

.field static final greylist-max-o TRANSACTION_isSecurityLoggingEnabled:I = 0x11a

.field static final blacklist TRANSACTION_isStatusBarDisabled:I = 0xf5

.field static final blacklist TRANSACTION_isSubscriptionEnterpriseManaged:I = 0x195

.field static final blacklist TRANSACTION_isSupervisionComponent:I = 0x5a

.field static final blacklist TRANSACTION_isUnattendedManagedKiosk:I = 0x15a

.field static final greylist-max-o TRANSACTION_isUninstallBlocked:I = 0xc9

.field static final greylist-max-o TRANSACTION_isUninstallInQueue:I = 0x122

.field static final blacklist TRANSACTION_isUsbDataSignalingEnabled:I = 0x17b

.field static final greylist-max-o TRANSACTION_isUsingUnifiedPassword:I = 0x1e

.field static final blacklist TRANSACTION_listForegroundAffiliatedUsers:I = 0x182

.field static final blacklist TRANSACTION_listPolicyExemptApps:I = 0x66

.field static final greylist-max-o TRANSACTION_lockNow:I = 0x28

.field static final greylist-max-o TRANSACTION_logoutUser:I = 0xa8

.field static final blacklist TRANSACTION_logoutUserInternal:I = 0xa9

.field static final greylist-max-o TRANSACTION_notifyLockTaskModeChanged:I = 0xc7

.field static final greylist-max-o TRANSACTION_notifyPendingSystemUpdate:I = 0xf7

.field static final greylist TRANSACTION_packageHasActiveAdmins:I = 0x42

.field static final blacklist TRANSACTION_provisionFullyManagedDevice:I = 0x172

.field static final blacklist TRANSACTION_provisionMultiUserDevice:I = 0x173

.field static final greylist-max-o TRANSACTION_reboot:I = 0x103

.field static final greylist TRANSACTION_removeActiveAdmin:I = 0x44

.field static final greylist-max-o TRANSACTION_removeCrossProfileWidgetProvider:I = 0xe0

.field static final greylist-max-o TRANSACTION_removeKeyPair:I = 0x6d

.field static final blacklist TRANSACTION_removeManagedProfile:I = 0x175

.field static final greylist-max-o TRANSACTION_removeOverrideApn:I = 0x147

.field static final greylist-max-o TRANSACTION_removeUser:I = 0xa4

.field static final blacklist TRANSACTION_reportFailedBiometricAttempt:I = 0x4b

.field static final greylist-max-o TRANSACTION_reportFailedPasswordAttempt:I = 0x49

.field static final greylist-max-o TRANSACTION_reportKeyguardDismissed:I = 0x4d

.field static final greylist-max-o TRANSACTION_reportKeyguardSecured:I = 0x4e

.field static final greylist-max-o TRANSACTION_reportPasswordChanged:I = 0x48

.field static final blacklist TRANSACTION_reportSuccessfulBiometricAttempt:I = 0x4c

.field static final greylist-max-o TRANSACTION_reportSuccessfulPasswordAttempt:I = 0x4a

.field static final greylist-max-o TRANSACTION_requestBugreport:I = 0x34

.field static final blacklist TRANSACTION_resetDefaultCrossProfileIntentFilters:I = 0x178

.field static final blacklist TRANSACTION_resetDrawables:I = 0x184

.field static final greylist-max-o TRANSACTION_resetPassword:I = 0x23

.field static final greylist-max-o TRANSACTION_resetPasswordWithToken:I = 0x136

.field static final blacklist TRANSACTION_resetShouldAllowBypassingDevicePolicyManagementRoleQualificationState:I = 0x18b

.field static final blacklist TRANSACTION_resetStrings:I = 0x189

.field static final greylist-max-o TRANSACTION_retrieveNetworkLogs:I = 0x12c

.field static final greylist-max-o TRANSACTION_retrievePreRebootSecurityLogs:I = 0x11c

.field static final greylist-max-o TRANSACTION_retrieveSecurityLogs:I = 0x11b

.field static final blacklist TRANSACTION_sendLostModeLocationUpdate:I = 0x2d

.field static final greylist-max-o TRANSACTION_setAccountManagementDisabled:I = 0xb1

.field static final greylist-max-o TRANSACTION_setActiveAdmin:I = 0x3f

.field static final greylist-max-o TRANSACTION_setAffiliationIds:I = 0x115

.field static final greylist-max-o TRANSACTION_setAlwaysOnVpnPackage:I = 0x77

.field static final blacklist TRANSACTION_setAppFunctionsPolicy:I = 0x1a3

.field static final blacklist TRANSACTION_setApplicationExemptions:I = 0x18e

.field static final greylist-max-o TRANSACTION_setApplicationHidden:I = 0xa1

.field static final greylist-max-o TRANSACTION_setApplicationRestrictions:I = 0x81

.field static final blacklist TRANSACTION_setApplicationRestrictionsBySystem:I = 0x85

.field static final greylist-max-o TRANSACTION_setApplicationRestrictionsManagingPackage:I = 0x83

.field static final blacklist TRANSACTION_setAuditLogEnabled:I = 0x11f

.field static final blacklist TRANSACTION_setAuditLogEventsCallback:I = 0x121

.field static final blacklist TRANSACTION_setAutoTimeEnabled:I = 0xe4

.field static final blacklist TRANSACTION_setAutoTimePolicy:I = 0xe6

.field static final greylist-max-o TRANSACTION_setAutoTimeRequired:I = 0xe2

.field static final blacklist TRANSACTION_setAutoTimeZoneEnabled:I = 0xe8

.field static final blacklist TRANSACTION_setAutoTimeZonePolicy:I = 0xea

.field static final greylist-max-o TRANSACTION_setBackupServiceEnabled:I = 0x128

.field static final greylist-max-o TRANSACTION_setBluetoothContactSharingDisabled:I = 0xd9

.field static final greylist-max-o TRANSACTION_setCameraDisabled:I = 0x35

.field static final greylist-max-o TRANSACTION_setCertInstallerPackage:I = 0x75

.field static final blacklist TRANSACTION_setCommonCriteriaModeEnabled:I = 0x162

.field static final blacklist TRANSACTION_setConfiguredNetworksLockdownState:I = 0xc0

.field static final blacklist TRANSACTION_setContentProtectionPolicy:I = 0x19b

.field static final blacklist TRANSACTION_setCredentialManagerPolicy:I = 0xd4

.field static final blacklist TRANSACTION_setCrossProfileCalendarPackages:I = 0x151

.field static final greylist-max-o TRANSACTION_setCrossProfileCallerIdDisabled:I = 0xca

.field static final greylist-max-o TRANSACTION_setCrossProfileContactsSearchDisabled:I = 0xcd

.field static final blacklist TRANSACTION_setCrossProfilePackages:I = 0x155

.field static final blacklist TRANSACTION_setCrossProfileWidgetProviders:I = 0xdf

.field static final blacklist TRANSACTION_setDefaultDialerApplication:I = 0x80

.field static final greylist-max-o TRANSACTION_setDefaultSmsApplication:I = 0x7f

.field static final greylist-max-o TRANSACTION_setDelegatedScopes:I = 0x72

.field static final greylist-max-o TRANSACTION_setDeviceOwner:I = 0x4f

.field static final greylist-max-o TRANSACTION_setDeviceOwnerLockScreenInfo:I = 0x62

.field static final blacklist TRANSACTION_setDeviceOwnerType:I = 0x176

.field static final greylist-max-o TRANSACTION_setDeviceProvisioningConfigApplied:I = 0x126

.field static final blacklist TRANSACTION_setDpcDownloaded:I = 0x187

.field static final blacklist TRANSACTION_setDrawables:I = 0x183

.field static final greylist-max-o TRANSACTION_setEndUserSessionMessage:I = 0x140

.field static final blacklist TRANSACTION_setFactoryResetProtectionPolicy:I = 0x2a

.field static final greylist-max-o TRANSACTION_setForceEphemeralUsers:I = 0xec

.field static final blacklist TRANSACTION_setGlobalPrivateDns:I = 0x14c

.field static final greylist-max-o TRANSACTION_setGlobalProxy:I = 0x2e

.field static final greylist-max-o TRANSACTION_setGlobalSetting:I = 0xbd

.field static final greylist-max-o TRANSACTION_setKeepUninstalledPackages:I = 0xff

.field static final blacklist TRANSACTION_setKeyGrantForApp:I = 0x15c

.field static final blacklist TRANSACTION_setKeyGrantToWifiAuth:I = 0x15e

.field static final greylist-max-o TRANSACTION_setKeyPairCertificate:I = 0x70

.field static final greylist-max-o TRANSACTION_setKeyguardDisabled:I = 0xf3

.field static final greylist-max-o TRANSACTION_setKeyguardDisabledFeatures:I = 0x3d

.field static final blacklist TRANSACTION_setLocationEnabled:I = 0xc2

.field static final greylist-max-o TRANSACTION_setLockTaskFeatures:I = 0xbb

.field static final greylist-max-o TRANSACTION_setLockTaskPackages:I = 0xb8

.field static final greylist-max-o TRANSACTION_setLogoutEnabled:I = 0x13a

.field static final greylist-max-o TRANSACTION_setLongSupportMessage:I = 0x106

.field static final blacklist TRANSACTION_setManagedProfileCallerIdAccessPolicy:I = 0xd1

.field static final blacklist TRANSACTION_setManagedProfileContactsAccessPolicy:I = 0xd6

.field static final blacklist TRANSACTION_setManagedProfileMaximumTimeOff:I = 0x167

.field static final blacklist TRANSACTION_setManagedSubscriptionsPolicy:I = 0x193

.field static final greylist-max-o TRANSACTION_setMasterVolumeMuted:I = 0xc5

.field static final blacklist TRANSACTION_setMaxPolicyStorageLimit:I = 0x19e

.field static final greylist-max-o TRANSACTION_setMaximumFailedPasswordsForWipe:I = 0x21

.field static final greylist-max-o TRANSACTION_setMaximumTimeToLock:I = 0x24

.field static final greylist-max-o TRANSACTION_setMeteredDataDisabledPackages:I = 0x143

.field static final blacklist TRANSACTION_setMinimumRequiredWifiSecurityLevel:I = 0x17d

.field static final blacklist TRANSACTION_setMtePolicy:I = 0x190

.field static final blacklist TRANSACTION_setMtePolicyBySystem:I = 0x191

.field static final blacklist TRANSACTION_setNearbyAppStreamingPolicy:I = 0x3b

.field static final blacklist TRANSACTION_setNearbyNotificationStreamingPolicy:I = 0x39

.field static final greylist-max-o TRANSACTION_setNetworkLoggingEnabled:I = 0x12a

.field static final blacklist TRANSACTION_setNextOperationSafety:I = 0x16b

.field static final greylist-max-o TRANSACTION_setOrganizationColor:I = 0x10a

.field static final greylist-max-o TRANSACTION_setOrganizationColorForUser:I = 0x10b

.field static final blacklist TRANSACTION_setOrganizationIdForUser:I = 0x16e

.field static final greylist-max-o TRANSACTION_setOrganizationName:I = 0x10f

.field static final greylist-max-o TRANSACTION_setOverrideApnsEnabled:I = 0x149

.field static final greylist-max-o TRANSACTION_setPackagesSuspended:I = 0x64

.field static final greylist-max-o TRANSACTION_setPasswordExpirationTimeout:I = 0x14

.field static final greylist-max-o TRANSACTION_setPasswordHistoryLength:I = 0x12

.field static final greylist-max-o TRANSACTION_setPasswordMinimumLength:I = 0x3

.field static final greylist-max-o TRANSACTION_setPasswordMinimumLetters:I = 0x9

.field static final greylist-max-o TRANSACTION_setPasswordMinimumLowerCase:I = 0x7

.field static final greylist-max-o TRANSACTION_setPasswordMinimumNonLetter:I = 0xf

.field static final greylist-max-o TRANSACTION_setPasswordMinimumNumeric:I = 0xb

.field static final greylist-max-o TRANSACTION_setPasswordMinimumSymbols:I = 0xd

.field static final greylist-max-o TRANSACTION_setPasswordMinimumUpperCase:I = 0x5

.field static final greylist-max-o TRANSACTION_setPasswordQuality:I = 0x1

.field static final greylist-max-o TRANSACTION_setPermissionGrantState:I = 0xfb

.field static final greylist-max-o TRANSACTION_setPermissionPolicy:I = 0xf9

.field static final greylist-max-o TRANSACTION_setPermittedAccessibilityServices:I = 0x92

.field static final greylist-max-o TRANSACTION_setPermittedCrossProfileNotificationListeners:I = 0x9a

.field static final greylist-max-o TRANSACTION_setPermittedInputMethods:I = 0x96

.field static final blacklist TRANSACTION_setPersonalAppsSuspended:I = 0x165

.field static final blacklist TRANSACTION_setPolicy:I = 0x1a5

.field static final blacklist TRANSACTION_setPreferentialNetworkServiceConfigs:I = 0xb6

.field static final greylist-max-o TRANSACTION_setProfileEnabled:I = 0x5c

.field static final greylist-max-o TRANSACTION_setProfileName:I = 0x5d

.field static final greylist-max-o TRANSACTION_setProfileOwner:I = 0x57

.field static final blacklist TRANSACTION_setProfileOwnerOnOrganizationOwnedDevice:I = 0x14f

.field static final greylist-max-o TRANSACTION_setRecommendedGlobalProxy:I = 0x30

.field static final blacklist TRANSACTION_setRequiredPasswordComplexity:I = 0x1b

.field static final greylist-max-o TRANSACTION_setRequiredStrongAuthTimeout:I = 0x26

.field static final greylist-max-o TRANSACTION_setResetPasswordToken:I = 0x133

.field static final greylist-max-o TRANSACTION_setRestrictionsProvider:I = 0x88

.field static final greylist-max-o TRANSACTION_setScreenCaptureDisabled:I = 0x37

.field static final blacklist TRANSACTION_setSecondaryLockscreenEnabled:I = 0xb4

.field static final greylist-max-o TRANSACTION_setSecureSetting:I = 0xbf

.field static final greylist-max-o TRANSACTION_setSecurityLoggingEnabled:I = 0x119

.field static final greylist-max-o TRANSACTION_setShortSupportMessage:I = 0x104

.field static final greylist-max-o TRANSACTION_setStartUserSessionMessage:I = 0x13f

.field static final greylist-max-o TRANSACTION_setStatusBarDisabled:I = 0xf4

.field static final greylist-max-o TRANSACTION_setStorageEncryption:I = 0x31

.field static final blacklist TRANSACTION_setStrings:I = 0x188

.field static final greylist-max-o TRANSACTION_setSystemSetting:I = 0xbe

.field static final greylist-max-o TRANSACTION_setSystemUpdatePolicy:I = 0xf0

.field static final greylist-max-o TRANSACTION_setTime:I = 0xc3

.field static final greylist-max-o TRANSACTION_setTimeZone:I = 0xc4

.field static final greylist-max-o TRANSACTION_setTrustAgentConfiguration:I = 0xdc

.field static final greylist-max-o TRANSACTION_setUninstallBlocked:I = 0xc8

.field static final blacklist TRANSACTION_setUsbDataSignalingEnabled:I = 0x17a

.field static final blacklist TRANSACTION_setUserControlDisabledPackages:I = 0x160

.field static final greylist-max-o TRANSACTION_setUserIcon:I = 0xef

.field static final greylist-max-o TRANSACTION_setUserProvisioningState:I = 0x114

.field static final greylist-max-o TRANSACTION_setUserRestriction:I = 0x8a

.field static final blacklist TRANSACTION_setUserRestrictionForUser:I = 0x8b

.field static final blacklist TRANSACTION_setUserRestrictionGlobally:I = 0x8c

.field static final blacklist TRANSACTION_setUserRestrictionGloballyFromSystem:I = 0x8d

.field static final blacklist TRANSACTION_setWifiSsidPolicy:I = 0x17f

.field static final blacklist TRANSACTION_shouldAllowBypassingDevicePolicyManagementRoleQualification:I = 0x18c

.field static final greylist-max-o TRANSACTION_startManagedQuickContact:I = 0xd0

.field static final greylist-max-o TRANSACTION_startUserInBackground:I = 0xa6

.field static final blacklist TRANSACTION_startViewCalendarEventInManagedProfile:I = 0x15b

.field static final greylist-max-o TRANSACTION_stopUser:I = 0xa7

.field static final greylist-max-o TRANSACTION_switchUser:I = 0xa5

.field static final greylist-max-o TRANSACTION_transferOwnership:I = 0x13d

.field static final blacklist TRANSACTION_triggerDevicePolicyEngineMigration:I = 0x197

.field static final greylist-max-o TRANSACTION_uninstallCaCerts:I = 0x68

.field static final greylist-max-o TRANSACTION_uninstallPackageWithActiveAdmins:I = 0x123

.field static final greylist-max-o TRANSACTION_updateOverrideApn:I = 0x146

.field static final greylist-max-o TRANSACTION_wipeDataWithReason:I = 0x29


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 1561
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 1562
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 1563
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Landroid/app/admin/IDevicePolicyManager;
    .registers 3

    .line 1570
    if-nez p0, :cond_4

    .line 1571
    const/4 p0, 0x0

    return-object p0

    .line 1573
    :cond_4
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 1574
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_13

    .line 1575
    check-cast v0, Landroid/app/admin/IDevicePolicyManager;

    return-object v0

    .line 1577
    :cond_13
    new-instance v0, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 1586
    packed-switch p0, :pswitch_data_5b2

    .line 3274
    const/4 p0, 0x0

    return-object p0

    .line 3270
    :pswitch_5
    const-string/jumbo p0, "setPolicy"

    return-object p0

    .line 3266
    :pswitch_9
    const-string p0, "getAppFunctionsPolicy"

    return-object p0

    .line 3262
    :pswitch_c
    const-string/jumbo p0, "setAppFunctionsPolicy"

    return-object p0

    .line 3258
    :pswitch_10
    const-string p0, "getHeadlessDeviceOwnerMode"

    return-object p0

    .line 3254
    :pswitch_13
    const-string p0, "getPolicySizeForAdmin"

    return-object p0

    .line 3250
    :pswitch_16
    const-string p0, "getMaxPolicyStorageLimit"

    return-object p0

    .line 3246
    :pswitch_19
    const-string p0, "forceSetMaxPolicyStorageLimit"

    return-object p0

    .line 3242
    :pswitch_1c
    const-string/jumbo p0, "setMaxPolicyStorageLimit"

    return-object p0

    .line 3238
    :pswitch_20
    const-string p0, "getSubscriptionIds"

    return-object p0

    .line 3234
    :pswitch_23
    const-string p0, "getContentProtectionPolicy"

    return-object p0

    .line 3230
    :pswitch_26
    const-string/jumbo p0, "setContentProtectionPolicy"

    return-object p0

    .line 3226
    :pswitch_2a
    const-string p0, "calculateHasIncompatibleAccounts"

    return-object p0

    .line 3222
    :pswitch_2d
    const-string p0, "getFinancedDeviceKioskRoleHolder"

    return-object p0

    .line 3218
    :pswitch_30
    const-string p0, "isDeviceFinanced"

    return-object p0

    .line 3214
    :pswitch_33
    const-string/jumbo p0, "triggerDevicePolicyEngineMigration"

    return-object p0

    .line 3210
    :pswitch_37
    const-string p0, "getDevicePolicyState"

    return-object p0

    .line 3206
    :pswitch_3a
    const-string/jumbo p0, "isSubscriptionEnterpriseManaged"

    return-object p0

    .line 3202
    :pswitch_3e
    const-string p0, "getManagedSubscriptionsPolicy"

    return-object p0

    .line 3198
    :pswitch_41
    const-string/jumbo p0, "setManagedSubscriptionsPolicy"

    return-object p0

    .line 3194
    :pswitch_45
    const-string p0, "getMtePolicy"

    return-object p0

    .line 3190
    :pswitch_48
    const-string/jumbo p0, "setMtePolicyBySystem"

    return-object p0

    .line 3186
    :pswitch_4c
    const-string/jumbo p0, "setMtePolicy"

    return-object p0

    .line 3182
    :pswitch_50
    const-string p0, "getApplicationExemptions"

    return-object p0

    .line 3178
    :pswitch_53
    const-string/jumbo p0, "setApplicationExemptions"

    return-object p0

    .line 3174
    :pswitch_57
    const-string p0, "getPolicyManagedProfiles"

    return-object p0

    .line 3170
    :pswitch_5a
    const-string/jumbo p0, "shouldAllowBypassingDevicePolicyManagementRoleQualification"

    return-object p0

    .line 3166
    :pswitch_5e
    const-string/jumbo p0, "resetShouldAllowBypassingDevicePolicyManagementRoleQualificationState"

    return-object p0

    .line 3162
    :pswitch_62
    const-string p0, "getString"

    return-object p0

    .line 3158
    :pswitch_65
    const-string/jumbo p0, "resetStrings"

    return-object p0

    .line 3154
    :pswitch_69
    const-string/jumbo p0, "setStrings"

    return-object p0

    .line 3150
    :pswitch_6d
    const-string/jumbo p0, "setDpcDownloaded"

    return-object p0

    .line 3146
    :pswitch_71
    const-string p0, "isDpcDownloaded"

    return-object p0

    .line 3142
    :pswitch_74
    const-string p0, "getDrawable"

    return-object p0

    .line 3138
    :pswitch_77
    const-string/jumbo p0, "resetDrawables"

    return-object p0

    .line 3134
    :pswitch_7b
    const-string/jumbo p0, "setDrawables"

    return-object p0

    .line 3130
    :pswitch_7f
    const-string/jumbo p0, "listForegroundAffiliatedUsers"

    return-object p0

    .line 3126
    :pswitch_83
    const-string p0, "isDevicePotentiallyStolen"

    return-object p0

    .line 3122
    :pswitch_86
    const-string p0, "getWifiSsidPolicy"

    return-object p0

    .line 3118
    :pswitch_89
    const-string/jumbo p0, "setWifiSsidPolicy"

    return-object p0

    .line 3114
    :pswitch_8d
    const-string p0, "getMinimumRequiredWifiSecurityLevel"

    return-object p0

    .line 3110
    :pswitch_90
    const-string/jumbo p0, "setMinimumRequiredWifiSecurityLevel"

    return-object p0

    .line 3106
    :pswitch_94
    const-string p0, "canUsbDataSignalingBeDisabled"

    return-object p0

    .line 3102
    :pswitch_97
    const-string/jumbo p0, "isUsbDataSignalingEnabled"

    return-object p0

    .line 3098
    :pswitch_9b
    const-string/jumbo p0, "setUsbDataSignalingEnabled"

    return-object p0

    .line 3094
    :pswitch_9f
    const-string p0, "canAdminGrantSensorsPermissions"

    return-object p0

    .line 3090
    :pswitch_a2
    const-string/jumbo p0, "resetDefaultCrossProfileIntentFilters"

    return-object p0

    .line 3086
    :pswitch_a6
    const-string p0, "getDeviceOwnerType"

    return-object p0

    .line 3082
    :pswitch_a9
    const-string/jumbo p0, "setDeviceOwnerType"

    return-object p0

    .line 3078
    :pswitch_ad
    const-string/jumbo p0, "removeManagedProfile"

    return-object p0

    .line 3074
    :pswitch_b1
    const-string p0, "finalizeWorkProfileProvisioning"

    return-object p0

    .line 3070
    :pswitch_b4
    const-string/jumbo p0, "provisionMultiUserDevice"

    return-object p0

    .line 3066
    :pswitch_b8
    const-string/jumbo p0, "provisionFullyManagedDevice"

    return-object p0

    .line 3062
    :pswitch_bc
    const-string p0, "finalizeCreateManagedProfile"

    return-object p0

    .line 3058
    :pswitch_bf
    const-string p0, "createManagedProfile"

    return-object p0

    .line 3054
    :pswitch_c2
    const-string p0, "createAndProvisionManagedProfile"

    return-object p0

    .line 3050
    :pswitch_c5
    const-string/jumbo p0, "setOrganizationIdForUser"

    return-object p0

    .line 3046
    :pswitch_c9
    const-string p0, "getEnrollmentSpecificId"

    return-object p0

    .line 3042
    :pswitch_cc
    const-string/jumbo p0, "isSafeOperation"

    return-object p0

    .line 3038
    :pswitch_d0
    const-string/jumbo p0, "setNextOperationSafety"

    return-object p0

    .line 3034
    :pswitch_d4
    const-string p0, "canProfileOwnerResetPasswordWhenLocked"

    return-object p0

    .line 3030
    :pswitch_d7
    const-string p0, "isComplianceAcknowledgementRequired"

    return-object p0

    .line 3026
    :pswitch_da
    const-string p0, "acknowledgeDeviceCompliant"

    return-object p0

    .line 3022
    :pswitch_dd
    const-string/jumbo p0, "setManagedProfileMaximumTimeOff"

    return-object p0

    .line 3018
    :pswitch_e1
    const-string p0, "getManagedProfileMaximumTimeOff"

    return-object p0

    .line 3014
    :pswitch_e4
    const-string/jumbo p0, "setPersonalAppsSuspended"

    return-object p0

    .line 3010
    :pswitch_e8
    const-string p0, "getPersonalAppsSuspendedReasons"

    return-object p0

    .line 3006
    :pswitch_eb
    const-string p0, "isCommonCriteriaModeEnabled"

    return-object p0

    .line 3002
    :pswitch_ee
    const-string/jumbo p0, "setCommonCriteriaModeEnabled"

    return-object p0

    .line 2998
    :pswitch_f2
    const-string p0, "getUserControlDisabledPackages"

    return-object p0

    .line 2994
    :pswitch_f5
    const-string/jumbo p0, "setUserControlDisabledPackages"

    return-object p0

    .line 2990
    :pswitch_f9
    const-string p0, "isKeyPairGrantedToWifiAuth"

    return-object p0

    .line 2986
    :pswitch_fc
    const-string/jumbo p0, "setKeyGrantToWifiAuth"

    return-object p0

    .line 2982
    :pswitch_100
    const-string p0, "getKeyPairGrants"

    return-object p0

    .line 2978
    :pswitch_103
    const-string/jumbo p0, "setKeyGrantForApp"

    return-object p0

    .line 2974
    :pswitch_107
    const-string/jumbo p0, "startViewCalendarEventInManagedProfile"

    return-object p0

    .line 2970
    :pswitch_10b
    const-string/jumbo p0, "isUnattendedManagedKiosk"

    return-object p0

    .line 2966
    :pswitch_10f
    const-string p0, "isManagedKiosk"

    return-object p0

    .line 2962
    :pswitch_112
    const-string p0, "getDefaultCrossProfilePackages"

    return-object p0

    .line 2958
    :pswitch_115
    const-string p0, "getAllCrossProfilePackages"

    return-object p0

    .line 2954
    :pswitch_118
    const-string p0, "getCrossProfilePackages"

    return-object p0

    .line 2950
    :pswitch_11b
    const-string/jumbo p0, "setCrossProfilePackages"

    return-object p0

    .line 2946
    :pswitch_11f
    const-string p0, "getCrossProfileCalendarPackagesForUser"

    return-object p0

    .line 2942
    :pswitch_122
    const-string p0, "isPackageAllowedToAccessCalendarForUser"

    return-object p0

    .line 2938
    :pswitch_125
    const-string p0, "getCrossProfileCalendarPackages"

    return-object p0

    .line 2934
    :pswitch_128
    const-string/jumbo p0, "setCrossProfileCalendarPackages"

    return-object p0

    .line 2930
    :pswitch_12c
    const-string p0, "installUpdateFromFile"

    return-object p0

    .line 2926
    :pswitch_12f
    const-string/jumbo p0, "setProfileOwnerOnOrganizationOwnedDevice"

    return-object p0

    .line 2922
    :pswitch_133
    const-string p0, "getGlobalPrivateDnsHost"

    return-object p0

    .line 2918
    :pswitch_136
    const-string p0, "getGlobalPrivateDnsMode"

    return-object p0

    .line 2914
    :pswitch_139
    const-string/jumbo p0, "setGlobalPrivateDns"

    return-object p0

    .line 2910
    :pswitch_13d
    const-string p0, "isMeteredDataDisabledPackageForUser"

    return-object p0

    .line 2906
    :pswitch_140
    const-string p0, "isOverrideApnEnabled"

    return-object p0

    .line 2902
    :pswitch_143
    const-string/jumbo p0, "setOverrideApnsEnabled"

    return-object p0

    .line 2898
    :pswitch_147
    const-string p0, "getOverrideApns"

    return-object p0

    .line 2894
    :pswitch_14a
    const-string/jumbo p0, "removeOverrideApn"

    return-object p0

    .line 2890
    :pswitch_14e
    const-string/jumbo p0, "updateOverrideApn"

    return-object p0

    .line 2886
    :pswitch_152
    const-string p0, "addOverrideApn"

    return-object p0

    .line 2882
    :pswitch_155
    const-string p0, "getMeteredDataDisabledPackages"

    return-object p0

    .line 2878
    :pswitch_158
    const-string/jumbo p0, "setMeteredDataDisabledPackages"

    return-object p0

    .line 2874
    :pswitch_15c
    const-string p0, "getEndUserSessionMessage"

    return-object p0

    .line 2870
    :pswitch_15f
    const-string p0, "getStartUserSessionMessage"

    return-object p0

    .line 2866
    :pswitch_162
    const-string/jumbo p0, "setEndUserSessionMessage"

    return-object p0

    .line 2862
    :pswitch_166
    const-string/jumbo p0, "setStartUserSessionMessage"

    return-object p0

    .line 2858
    :pswitch_16a
    const-string p0, "getTransferOwnershipBundle"

    return-object p0

    .line 2854
    :pswitch_16d
    const-string/jumbo p0, "transferOwnership"

    return-object p0

    .line 2850
    :pswitch_171
    const-string p0, "getDisallowedSystemApps"

    return-object p0

    .line 2846
    :pswitch_174
    const-string p0, "isLogoutEnabled"

    return-object p0

    .line 2842
    :pswitch_177
    const-string/jumbo p0, "setLogoutEnabled"

    return-object p0

    .line 2838
    :pswitch_17b
    const-string p0, "clearApplicationUserData"

    return-object p0

    .line 2834
    :pswitch_17e
    const-string p0, "getOwnerInstalledCaCerts"

    return-object p0

    .line 2830
    :pswitch_181
    const-string p0, "isCurrentInputMethodSetByOwner"

    return-object p0

    .line 2826
    :pswitch_184
    const-string/jumbo p0, "resetPasswordWithToken"

    return-object p0

    .line 2822
    :pswitch_188
    const-string/jumbo p0, "isResetPasswordTokenActive"

    return-object p0

    .line 2818
    :pswitch_18c
    const-string p0, "clearResetPasswordToken"

    return-object p0

    .line 2814
    :pswitch_18f
    const-string/jumbo p0, "setResetPasswordToken"

    return-object p0

    .line 2810
    :pswitch_193
    const-string p0, "getLastNetworkLogRetrievalTime"

    return-object p0

    .line 2806
    :pswitch_196
    const-string p0, "getLastBugReportRequestTime"

    return-object p0

    .line 2802
    :pswitch_199
    const-string p0, "getLastSecurityLogRetrievalTime"

    return-object p0

    .line 2798
    :pswitch_19c
    const-string p0, "isEphemeralUser"

    return-object p0

    .line 2794
    :pswitch_19f
    const-string p0, "getBindDeviceAdminTargetUsers"

    return-object p0

    .line 2790
    :pswitch_1a2
    const-string p0, "bindDeviceAdminServiceAsUser"

    return-object p0

    .line 2786
    :pswitch_1a5
    const-string/jumbo p0, "retrieveNetworkLogs"

    return-object p0

    .line 2782
    :pswitch_1a9
    const-string p0, "isNetworkLoggingEnabled"

    return-object p0

    .line 2778
    :pswitch_1ac
    const-string/jumbo p0, "setNetworkLoggingEnabled"

    return-object p0

    .line 2774
    :pswitch_1b0
    const-string p0, "isBackupServiceEnabled"

    return-object p0

    .line 2770
    :pswitch_1b3
    const-string/jumbo p0, "setBackupServiceEnabled"

    return-object p0

    .line 2766
    :pswitch_1b7
    const-string p0, "forceUpdateUserSetupComplete"

    return-object p0

    .line 2762
    :pswitch_1ba
    const-string/jumbo p0, "setDeviceProvisioningConfigApplied"

    return-object p0

    .line 2758
    :pswitch_1be
    const-string p0, "isDeviceProvisioningConfigApplied"

    return-object p0

    .line 2754
    :pswitch_1c1
    const-string p0, "isDeviceProvisioned"

    return-object p0

    .line 2750
    :pswitch_1c4
    const-string/jumbo p0, "uninstallPackageWithActiveAdmins"

    return-object p0

    .line 2746
    :pswitch_1c8
    const-string/jumbo p0, "isUninstallInQueue"

    return-object p0

    .line 2742
    :pswitch_1cc
    const-string/jumbo p0, "setAuditLogEventsCallback"

    return-object p0

    .line 2738
    :pswitch_1d0
    const-string p0, "isAuditLogEnabled"

    return-object p0

    .line 2734
    :pswitch_1d3
    const-string/jumbo p0, "setAuditLogEnabled"

    return-object p0

    .line 2730
    :pswitch_1d7
    const-string p0, "forceSecurityLogs"

    return-object p0

    .line 2726
    :pswitch_1da
    const-string p0, "forceNetworkLogs"

    return-object p0

    .line 2722
    :pswitch_1dd
    const-string/jumbo p0, "retrievePreRebootSecurityLogs"

    return-object p0

    .line 2718
    :pswitch_1e1
    const-string/jumbo p0, "retrieveSecurityLogs"

    return-object p0

    .line 2714
    :pswitch_1e5
    const-string/jumbo p0, "isSecurityLoggingEnabled"

    return-object p0

    .line 2710
    :pswitch_1e9
    const-string/jumbo p0, "setSecurityLoggingEnabled"

    return-object p0

    .line 2706
    :pswitch_1ed
    const-string p0, "isAffiliatedUser"

    return-object p0

    .line 2702
    :pswitch_1f0
    const-string p0, "isCallingUserAffiliated"

    return-object p0

    .line 2698
    :pswitch_1f3
    const-string p0, "getAffiliationIds"

    return-object p0

    .line 2694
    :pswitch_1f6
    const-string/jumbo p0, "setAffiliationIds"

    return-object p0

    .line 2690
    :pswitch_1fa
    const-string/jumbo p0, "setUserProvisioningState"

    return-object p0

    .line 2686
    :pswitch_1fe
    const-string p0, "getUserProvisioningState"

    return-object p0

    .line 2682
    :pswitch_201
    const-string p0, "getOrganizationNameForUser"

    return-object p0

    .line 2678
    :pswitch_204
    const-string p0, "getDeviceOwnerOrganizationName"

    return-object p0

    .line 2674
    :pswitch_207
    const-string p0, "getOrganizationName"

    return-object p0

    .line 2670
    :pswitch_20a
    const-string/jumbo p0, "setOrganizationName"

    return-object p0

    .line 2666
    :pswitch_20e
    const-string p0, "getOrganizationColorForUser"

    return-object p0

    .line 2662
    :pswitch_211
    const-string p0, "getOrganizationColor"

    return-object p0

    .line 2658
    :pswitch_214
    const-string p0, "clearOrganizationIdForUser"

    return-object p0

    .line 2654
    :pswitch_217
    const-string/jumbo p0, "setOrganizationColorForUser"

    return-object p0

    .line 2650
    :pswitch_21b
    const-string/jumbo p0, "setOrganizationColor"

    return-object p0

    .line 2646
    :pswitch_21f
    const-string p0, "getLongSupportMessageForUser"

    return-object p0

    .line 2642
    :pswitch_222
    const-string p0, "getShortSupportMessageForUser"

    return-object p0

    .line 2638
    :pswitch_225
    const-string p0, "getLongSupportMessage"

    return-object p0

    .line 2634
    :pswitch_228
    const-string/jumbo p0, "setLongSupportMessage"

    return-object p0

    .line 2630
    :pswitch_22c
    const-string p0, "getShortSupportMessage"

    return-object p0

    .line 2626
    :pswitch_22f
    const-string/jumbo p0, "setShortSupportMessage"

    return-object p0

    .line 2622
    :pswitch_233
    const-string/jumbo p0, "reboot"

    return-object p0

    .line 2618
    :pswitch_237
    const-string p0, "getWifiMacAddress"

    return-object p0

    .line 2614
    :pswitch_23a
    const-string p0, "isManagedProfile"

    return-object p0

    .line 2610
    :pswitch_23d
    const-string p0, "getKeepUninstalledPackages"

    return-object p0

    .line 2606
    :pswitch_240
    const-string/jumbo p0, "setKeepUninstalledPackages"

    return-object p0

    .line 2602
    :pswitch_244
    const-string p0, "checkProvisioningPrecondition"

    return-object p0

    .line 2598
    :pswitch_247
    const-string p0, "isProvisioningAllowed"

    return-object p0

    .line 2594
    :pswitch_24a
    const-string p0, "getPermissionGrantState"

    return-object p0

    .line 2590
    :pswitch_24d
    const-string/jumbo p0, "setPermissionGrantState"

    return-object p0

    .line 2586
    :pswitch_251
    const-string p0, "getPermissionPolicy"

    return-object p0

    .line 2582
    :pswitch_254
    const-string/jumbo p0, "setPermissionPolicy"

    return-object p0

    .line 2578
    :pswitch_258
    const-string p0, "getPendingSystemUpdate"

    return-object p0

    .line 2574
    :pswitch_25b
    const-string/jumbo p0, "notifyPendingSystemUpdate"

    return-object p0

    .line 2570
    :pswitch_25f
    const-string p0, "getDoNotAskCredentialsOnBoot"

    return-object p0

    .line 2566
    :pswitch_262
    const-string/jumbo p0, "isStatusBarDisabled"

    return-object p0

    .line 2562
    :pswitch_266
    const-string/jumbo p0, "setStatusBarDisabled"

    return-object p0

    .line 2558
    :pswitch_26a
    const-string/jumbo p0, "setKeyguardDisabled"

    return-object p0

    .line 2554
    :pswitch_26e
    const-string p0, "clearSystemUpdatePolicyFreezePeriodRecord"

    return-object p0

    .line 2550
    :pswitch_271
    const-string p0, "getSystemUpdatePolicy"

    return-object p0

    .line 2546
    :pswitch_274
    const-string/jumbo p0, "setSystemUpdatePolicy"

    return-object p0

    .line 2542
    :pswitch_278
    const-string/jumbo p0, "setUserIcon"

    return-object p0

    .line 2538
    :pswitch_27c
    const-string/jumbo p0, "isRemovingAdmin"

    return-object p0

    .line 2534
    :pswitch_280
    const-string p0, "getForceEphemeralUsers"

    return-object p0

    .line 2530
    :pswitch_283
    const-string/jumbo p0, "setForceEphemeralUsers"

    return-object p0

    .line 2526
    :pswitch_287
    const-string p0, "getAutoTimeZonePolicy"

    return-object p0

    .line 2522
    :pswitch_28a
    const-string/jumbo p0, "setAutoTimeZonePolicy"

    return-object p0

    .line 2518
    :pswitch_28e
    const-string p0, "getAutoTimeZoneEnabled"

    return-object p0

    .line 2514
    :pswitch_291
    const-string/jumbo p0, "setAutoTimeZoneEnabled"

    return-object p0

    .line 2510
    :pswitch_295
    const-string p0, "getAutoTimePolicy"

    return-object p0

    .line 2506
    :pswitch_298
    const-string/jumbo p0, "setAutoTimePolicy"

    return-object p0

    .line 2502
    :pswitch_29c
    const-string p0, "getAutoTimeEnabled"

    return-object p0

    .line 2498
    :pswitch_29f
    const-string/jumbo p0, "setAutoTimeEnabled"

    return-object p0

    .line 2494
    :pswitch_2a3
    const-string p0, "getAutoTimeRequired"

    return-object p0

    .line 2490
    :pswitch_2a6
    const-string/jumbo p0, "setAutoTimeRequired"

    return-object p0

    .line 2486
    :pswitch_2aa
    const-string p0, "getCrossProfileWidgetProviders"

    return-object p0

    .line 2482
    :pswitch_2ad
    const-string/jumbo p0, "removeCrossProfileWidgetProvider"

    return-object p0

    .line 2478
    :pswitch_2b1
    const-string/jumbo p0, "setCrossProfileWidgetProviders"

    return-object p0

    .line 2474
    :pswitch_2b5
    const-string p0, "addCrossProfileWidgetProvider"

    return-object p0

    .line 2470
    :pswitch_2b8
    const-string p0, "getTrustAgentConfiguration"

    return-object p0

    .line 2466
    :pswitch_2bb
    const-string/jumbo p0, "setTrustAgentConfiguration"

    return-object p0

    .line 2462
    :pswitch_2bf
    const-string p0, "getBluetoothContactSharingDisabledForUser"

    return-object p0

    .line 2458
    :pswitch_2c2
    const-string p0, "getBluetoothContactSharingDisabled"

    return-object p0

    .line 2454
    :pswitch_2c5
    const-string/jumbo p0, "setBluetoothContactSharingDisabled"

    return-object p0

    .line 2450
    :pswitch_2c9
    const-string p0, "hasManagedProfileContactsAccess"

    return-object p0

    .line 2446
    :pswitch_2cc
    const-string p0, "getManagedProfileContactsAccessPolicy"

    return-object p0

    .line 2442
    :pswitch_2cf
    const-string/jumbo p0, "setManagedProfileContactsAccessPolicy"

    return-object p0

    .line 2438
    :pswitch_2d3
    const-string p0, "getCredentialManagerPolicy"

    return-object p0

    .line 2434
    :pswitch_2d6
    const-string/jumbo p0, "setCredentialManagerPolicy"

    return-object p0

    .line 2430
    :pswitch_2da
    const-string p0, "hasManagedProfileCallerIdAccess"

    return-object p0

    .line 2426
    :pswitch_2dd
    const-string p0, "getManagedProfileCallerIdAccessPolicy"

    return-object p0

    .line 2422
    :pswitch_2e0
    const-string/jumbo p0, "setManagedProfileCallerIdAccessPolicy"

    return-object p0

    .line 2418
    :pswitch_2e4
    const-string/jumbo p0, "startManagedQuickContact"

    return-object p0

    .line 2414
    :pswitch_2e8
    const-string p0, "getCrossProfileContactsSearchDisabledForUser"

    return-object p0

    .line 2410
    :pswitch_2eb
    const-string p0, "getCrossProfileContactsSearchDisabled"

    return-object p0

    .line 2406
    :pswitch_2ee
    const-string/jumbo p0, "setCrossProfileContactsSearchDisabled"

    return-object p0

    .line 2402
    :pswitch_2f2
    const-string p0, "getCrossProfileCallerIdDisabledForUser"

    return-object p0

    .line 2398
    :pswitch_2f5
    const-string p0, "getCrossProfileCallerIdDisabled"

    return-object p0

    .line 2394
    :pswitch_2f8
    const-string/jumbo p0, "setCrossProfileCallerIdDisabled"

    return-object p0

    .line 2390
    :pswitch_2fc
    const-string/jumbo p0, "isUninstallBlocked"

    return-object p0

    .line 2386
    :pswitch_300
    const-string/jumbo p0, "setUninstallBlocked"

    return-object p0

    .line 2382
    :pswitch_304
    const-string/jumbo p0, "notifyLockTaskModeChanged"

    return-object p0

    .line 2378
    :pswitch_308
    const-string p0, "isMasterVolumeMuted"

    return-object p0

    .line 2374
    :pswitch_30b
    const-string/jumbo p0, "setMasterVolumeMuted"

    return-object p0

    .line 2370
    :pswitch_30f
    const-string/jumbo p0, "setTimeZone"

    return-object p0

    .line 2366
    :pswitch_313
    const-string/jumbo p0, "setTime"

    return-object p0

    .line 2362
    :pswitch_317
    const-string/jumbo p0, "setLocationEnabled"

    return-object p0

    .line 2358
    :pswitch_31b
    const-string p0, "hasLockdownAdminConfiguredNetworks"

    return-object p0

    .line 2354
    :pswitch_31e
    const-string/jumbo p0, "setConfiguredNetworksLockdownState"

    return-object p0

    .line 2350
    :pswitch_322
    const-string/jumbo p0, "setSecureSetting"

    return-object p0

    .line 2346
    :pswitch_326
    const-string/jumbo p0, "setSystemSetting"

    return-object p0

    .line 2342
    :pswitch_32a
    const-string/jumbo p0, "setGlobalSetting"

    return-object p0

    .line 2338
    :pswitch_32e
    const-string p0, "getLockTaskFeatures"

    return-object p0

    .line 2334
    :pswitch_331
    const-string/jumbo p0, "setLockTaskFeatures"

    return-object p0

    .line 2330
    :pswitch_335
    const-string p0, "isLockTaskPermitted"

    return-object p0

    .line 2326
    :pswitch_338
    const-string p0, "getLockTaskPackages"

    return-object p0

    .line 2322
    :pswitch_33b
    const-string/jumbo p0, "setLockTaskPackages"

    return-object p0

    .line 2318
    :pswitch_33f
    const-string p0, "getPreferentialNetworkServiceConfigs"

    return-object p0

    .line 2314
    :pswitch_342
    const-string/jumbo p0, "setPreferentialNetworkServiceConfigs"

    return-object p0

    .line 2310
    :pswitch_346
    const-string/jumbo p0, "isSecondaryLockscreenEnabled"

    return-object p0

    .line 2306
    :pswitch_34a
    const-string/jumbo p0, "setSecondaryLockscreenEnabled"

    return-object p0

    .line 2302
    :pswitch_34e
    const-string p0, "getAccountTypesWithManagementDisabledAsUser"

    return-object p0

    .line 2298
    :pswitch_351
    const-string p0, "getAccountTypesWithManagementDisabled"

    return-object p0

    .line 2294
    :pswitch_354
    const-string/jumbo p0, "setAccountManagementDisabled"

    return-object p0

    .line 2290
    :pswitch_358
    const-string p0, "installExistingPackage"

    return-object p0

    .line 2286
    :pswitch_35b
    const-string p0, "enableSystemAppWithIntent"

    return-object p0

    .line 2282
    :pswitch_35e
    const-string p0, "enableSystemApp"

    return-object p0

    .line 2278
    :pswitch_361
    const-string p0, "isNewUserDisclaimerAcknowledged"

    return-object p0

    .line 2274
    :pswitch_364
    const-string p0, "acknowledgeNewUserDisclaimer"

    return-object p0

    .line 2270
    :pswitch_367
    const-string p0, "getSecondaryUsers"

    return-object p0

    .line 2266
    :pswitch_36a
    const-string p0, "getLogoutUserId"

    return-object p0

    .line 2262
    :pswitch_36d
    const-string/jumbo p0, "logoutUserInternal"

    return-object p0

    .line 2258
    :pswitch_371
    const-string/jumbo p0, "logoutUser"

    return-object p0

    .line 2254
    :pswitch_375
    const-string/jumbo p0, "stopUser"

    return-object p0

    .line 2250
    :pswitch_379
    const-string/jumbo p0, "startUserInBackground"

    return-object p0

    .line 2246
    :pswitch_37d
    const-string/jumbo p0, "switchUser"

    return-object p0

    .line 2242
    :pswitch_381
    const-string/jumbo p0, "removeUser"

    return-object p0

    .line 2238
    :pswitch_385
    const-string p0, "createAndManageUser"

    return-object p0

    .line 2234
    :pswitch_388
    const-string p0, "isApplicationHidden"

    return-object p0

    .line 2230
    :pswitch_38b
    const-string/jumbo p0, "setApplicationHidden"

    return-object p0

    .line 2226
    :pswitch_38f
    const-string p0, "getEnforcingAdminsForPolicy"

    return-object p0

    .line 2222
    :pswitch_392
    const-string p0, "getEnforcingAdmin"

    return-object p0

    .line 2218
    :pswitch_395
    const-string p0, "getEnforcingAdminAndUserDetails"

    return-object p0

    .line 2214
    :pswitch_398
    const-string p0, "createAdminSupportIntent"

    return-object p0

    .line 2210
    :pswitch_39b
    const-string p0, "isNotificationListenerServicePermitted"

    return-object p0

    .line 2206
    :pswitch_39e
    const-string p0, "getPermittedCrossProfileNotificationListeners"

    return-object p0

    .line 2202
    :pswitch_3a1
    const-string/jumbo p0, "setPermittedCrossProfileNotificationListeners"

    return-object p0

    .line 2198
    :pswitch_3a5
    const-string p0, "isInputMethodPermittedByAdmin"

    return-object p0

    .line 2194
    :pswitch_3a8
    const-string p0, "getPermittedInputMethodsAsUser"

    return-object p0

    .line 2190
    :pswitch_3ab
    const-string p0, "getPermittedInputMethods"

    return-object p0

    .line 2186
    :pswitch_3ae
    const-string/jumbo p0, "setPermittedInputMethods"

    return-object p0

    .line 2182
    :pswitch_3b2
    const-string p0, "isAccessibilityServicePermittedByAdmin"

    return-object p0

    .line 2178
    :pswitch_3b5
    const-string p0, "getPermittedAccessibilityServicesForUser"

    return-object p0

    .line 2174
    :pswitch_3b8
    const-string p0, "getPermittedAccessibilityServices"

    return-object p0

    .line 2170
    :pswitch_3bb
    const-string/jumbo p0, "setPermittedAccessibilityServices"

    return-object p0

    .line 2166
    :pswitch_3bf
    const-string p0, "clearCrossProfileIntentFilters"

    return-object p0

    .line 2162
    :pswitch_3c2
    const-string p0, "addCrossProfileIntentFilter"

    return-object p0

    .line 2158
    :pswitch_3c5
    const-string p0, "getUserRestrictionsGlobally"

    return-object p0

    .line 2154
    :pswitch_3c8
    const-string p0, "getUserRestrictions"

    return-object p0

    .line 2150
    :pswitch_3cb
    const-string/jumbo p0, "setUserRestrictionGloballyFromSystem"

    return-object p0

    .line 2146
    :pswitch_3cf
    const-string/jumbo p0, "setUserRestrictionGlobally"

    return-object p0

    .line 2142
    :pswitch_3d3
    const-string/jumbo p0, "setUserRestrictionForUser"

    return-object p0

    .line 2138
    :pswitch_3d7
    const-string/jumbo p0, "setUserRestriction"

    return-object p0

    .line 2134
    :pswitch_3db
    const-string p0, "getRestrictionsProvider"

    return-object p0

    .line 2130
    :pswitch_3de
    const-string/jumbo p0, "setRestrictionsProvider"

    return-object p0

    .line 2126
    :pswitch_3e2
    const-string p0, "isCallerApplicationRestrictionsManagingPackage"

    return-object p0

    .line 2122
    :pswitch_3e5
    const-string p0, "getApplicationRestrictionsBySystem"

    return-object p0

    .line 2118
    :pswitch_3e8
    const-string/jumbo p0, "setApplicationRestrictionsBySystem"

    return-object p0

    .line 2114
    :pswitch_3ec
    const-string p0, "getApplicationRestrictionsManagingPackage"

    return-object p0

    .line 2110
    :pswitch_3ef
    const-string/jumbo p0, "setApplicationRestrictionsManagingPackage"

    return-object p0

    .line 2106
    :pswitch_3f3
    const-string p0, "getApplicationRestrictions"

    return-object p0

    .line 2102
    :pswitch_3f6
    const-string/jumbo p0, "setApplicationRestrictions"

    return-object p0

    .line 2098
    :pswitch_3fa
    const-string/jumbo p0, "setDefaultDialerApplication"

    return-object p0

    .line 2094
    :pswitch_3fe
    const-string/jumbo p0, "setDefaultSmsApplication"

    return-object p0

    .line 2090
    :pswitch_402
    const-string p0, "clearPackagePersistentPreferredActivities"

    return-object p0

    .line 2086
    :pswitch_405
    const-string p0, "addPersistentPreferredActivity"

    return-object p0

    .line 2082
    :pswitch_408
    const-string p0, "getAlwaysOnVpnLockdownAllowlist"

    return-object p0

    .line 2078
    :pswitch_40b
    const-string p0, "isAlwaysOnVpnLockdownEnabledForUser"

    return-object p0

    .line 2074
    :pswitch_40e
    const-string p0, "isAlwaysOnVpnLockdownEnabled"

    return-object p0

    .line 2070
    :pswitch_411
    const-string p0, "getAlwaysOnVpnPackageForUser"

    return-object p0

    .line 2066
    :pswitch_414
    const-string p0, "getAlwaysOnVpnPackage"

    return-object p0

    .line 2062
    :pswitch_417
    const-string/jumbo p0, "setAlwaysOnVpnPackage"

    return-object p0

    .line 2058
    :pswitch_41b
    const-string p0, "getCertInstallerPackage"

    return-object p0

    .line 2054
    :pswitch_41e
    const-string/jumbo p0, "setCertInstallerPackage"

    return-object p0

    .line 2050
    :pswitch_422
    const-string p0, "getDelegatePackages"

    return-object p0

    .line 2046
    :pswitch_425
    const-string p0, "getDelegatedScopes"

    return-object p0

    .line 2042
    :pswitch_428
    const-string/jumbo p0, "setDelegatedScopes"

    return-object p0

    .line 2038
    :pswitch_42c
    const-string p0, "choosePrivateKeyAlias"

    return-object p0

    .line 2034
    :pswitch_42f
    const-string/jumbo p0, "setKeyPairCertificate"

    return-object p0

    .line 2030
    :pswitch_433
    const-string p0, "generateKeyPair"

    return-object p0

    .line 2026
    :pswitch_436
    const-string p0, "hasKeyPair"

    return-object p0

    .line 2022
    :pswitch_439
    const-string/jumbo p0, "removeKeyPair"

    return-object p0

    .line 2018
    :pswitch_43d
    const-string p0, "installKeyPair"

    return-object p0

    .line 2014
    :pswitch_440
    const-string p0, "isCaCertApproved"

    return-object p0

    .line 2010
    :pswitch_443
    const-string p0, "approveCaCert"

    return-object p0

    .line 2006
    :pswitch_446
    const-string p0, "enforceCanManageCaCerts"

    return-object p0

    .line 2002
    :pswitch_449
    const-string/jumbo p0, "uninstallCaCerts"

    return-object p0

    .line 1998
    :pswitch_44d
    const-string p0, "installCaCert"

    return-object p0

    .line 1994
    :pswitch_450
    const-string/jumbo p0, "listPolicyExemptApps"

    return-object p0

    .line 1990
    :pswitch_454
    const-string p0, "isPackageSuspended"

    return-object p0

    .line 1986
    :pswitch_457
    const-string/jumbo p0, "setPackagesSuspended"

    return-object p0

    .line 1982
    :pswitch_45b
    const-string p0, "getDeviceOwnerLockScreenInfo"

    return-object p0

    .line 1978
    :pswitch_45e
    const-string/jumbo p0, "setDeviceOwnerLockScreenInfo"

    return-object p0

    .line 1974
    :pswitch_462
    const-string p0, "checkDeviceIdentifierAccess"

    return-object p0

    .line 1970
    :pswitch_465
    const-string p0, "isOrganizationOwnedDeviceWithManagedProfile"

    return-object p0

    .line 1966
    :pswitch_468
    const-string p0, "hasUserSetupCompleted"

    return-object p0

    .line 1962
    :pswitch_46b
    const-string p0, "clearProfileOwner"

    return-object p0

    .line 1958
    :pswitch_46e
    const-string/jumbo p0, "setProfileName"

    return-object p0

    .line 1954
    :pswitch_472
    const-string/jumbo p0, "setProfileEnabled"

    return-object p0

    .line 1950
    :pswitch_476
    const-string p0, "getProfileOwnerName"

    return-object p0

    .line 1946
    :pswitch_479
    const-string/jumbo p0, "isSupervisionComponent"

    return-object p0

    .line 1942
    :pswitch_47d
    const-string p0, "getProfileOwnerOrDeviceOwnerSupervisionComponent"

    return-object p0

    .line 1938
    :pswitch_480
    const-string p0, "getProfileOwnerAsUser"

    return-object p0

    .line 1934
    :pswitch_483
    const-string/jumbo p0, "setProfileOwner"

    return-object p0

    .line 1930
    :pswitch_487
    const-string p0, "isDeviceManaged"

    return-object p0

    .line 1926
    :pswitch_48a
    const-string p0, "getDeviceOwnerUserId"

    return-object p0

    .line 1922
    :pswitch_48d
    const-string p0, "clearDeviceOwner"

    return-object p0

    .line 1918
    :pswitch_490
    const-string p0, "getDeviceOwnerName"

    return-object p0

    .line 1914
    :pswitch_493
    const-string p0, "hasDeviceOwner"

    return-object p0

    .line 1910
    :pswitch_496
    const-string p0, "getDeviceOwnerComponentOnUser"

    return-object p0

    .line 1906
    :pswitch_499
    const-string p0, "getDeviceOwnerComponent"

    return-object p0

    .line 1902
    :pswitch_49c
    const-string/jumbo p0, "setDeviceOwner"

    return-object p0

    .line 1898
    :pswitch_4a0
    const-string/jumbo p0, "reportKeyguardSecured"

    return-object p0

    .line 1894
    :pswitch_4a4
    const-string/jumbo p0, "reportKeyguardDismissed"

    return-object p0

    .line 1890
    :pswitch_4a8
    const-string/jumbo p0, "reportSuccessfulBiometricAttempt"

    return-object p0

    .line 1886
    :pswitch_4ac
    const-string/jumbo p0, "reportFailedBiometricAttempt"

    return-object p0

    .line 1882
    :pswitch_4b0
    const-string/jumbo p0, "reportSuccessfulPasswordAttempt"

    return-object p0

    .line 1878
    :pswitch_4b4
    const-string/jumbo p0, "reportFailedPasswordAttempt"

    return-object p0

    .line 1874
    :pswitch_4b8
    const-string/jumbo p0, "reportPasswordChanged"

    return-object p0

    .line 1870
    :pswitch_4bc
    const-string p0, "hasGrantedPolicy"

    return-object p0

    .line 1866
    :pswitch_4bf
    const-string p0, "clearMultiUserDeviceManagement"

    return-object p0

    .line 1862
    :pswitch_4c2
    const-string p0, "forceRemoveActiveAdmin"

    return-object p0

    .line 1858
    :pswitch_4c5
    const-string/jumbo p0, "removeActiveAdmin"

    return-object p0

    .line 1854
    :pswitch_4c9
    const-string p0, "getRemoveWarning"

    return-object p0

    .line 1850
    :pswitch_4cc
    const-string/jumbo p0, "packageHasActiveAdmins"

    return-object p0

    .line 1846
    :pswitch_4d0
    const-string p0, "getActiveAdmins"

    return-object p0

    .line 1842
    :pswitch_4d3
    const-string p0, "isAdminActive"

    return-object p0

    .line 1838
    :pswitch_4d6
    const-string/jumbo p0, "setActiveAdmin"

    return-object p0

    .line 1834
    :pswitch_4da
    const-string p0, "getKeyguardDisabledFeatures"

    return-object p0

    .line 1830
    :pswitch_4dd
    const-string/jumbo p0, "setKeyguardDisabledFeatures"

    return-object p0

    .line 1826
    :pswitch_4e1
    const-string p0, "getNearbyAppStreamingPolicy"

    return-object p0

    .line 1822
    :pswitch_4e4
    const-string/jumbo p0, "setNearbyAppStreamingPolicy"

    return-object p0

    .line 1818
    :pswitch_4e8
    const-string p0, "getNearbyNotificationStreamingPolicy"

    return-object p0

    .line 1814
    :pswitch_4eb
    const-string/jumbo p0, "setNearbyNotificationStreamingPolicy"

    return-object p0

    .line 1810
    :pswitch_4ef
    const-string p0, "getScreenCaptureDisabled"

    return-object p0

    .line 1806
    :pswitch_4f2
    const-string/jumbo p0, "setScreenCaptureDisabled"

    return-object p0

    .line 1802
    :pswitch_4f6
    const-string p0, "getCameraDisabled"

    return-object p0

    .line 1798
    :pswitch_4f9
    const-string/jumbo p0, "setCameraDisabled"

    return-object p0

    .line 1794
    :pswitch_4fd
    const-string/jumbo p0, "requestBugreport"

    return-object p0

    .line 1790
    :pswitch_501
    const-string p0, "getStorageEncryptionStatus"

    return-object p0

    .line 1786
    :pswitch_504
    const-string p0, "getStorageEncryption"

    return-object p0

    .line 1782
    :pswitch_507
    const-string/jumbo p0, "setStorageEncryption"

    return-object p0

    .line 1778
    :pswitch_50b
    const-string/jumbo p0, "setRecommendedGlobalProxy"

    return-object p0

    .line 1774
    :pswitch_50f
    const-string p0, "getGlobalProxyAdmin"

    return-object p0

    .line 1770
    :pswitch_512
    const-string/jumbo p0, "setGlobalProxy"

    return-object p0

    .line 1766
    :pswitch_516
    const-string/jumbo p0, "sendLostModeLocationUpdate"

    return-object p0

    .line 1762
    :pswitch_51a
    const-string p0, "isFactoryResetProtectionPolicySupported"

    return-object p0

    .line 1758
    :pswitch_51d
    const-string p0, "getFactoryResetProtectionPolicy"

    return-object p0

    .line 1754
    :pswitch_520
    const-string/jumbo p0, "setFactoryResetProtectionPolicy"

    return-object p0

    .line 1750
    :pswitch_524
    const-string/jumbo p0, "wipeDataWithReason"

    return-object p0

    .line 1746
    :pswitch_528
    const-string/jumbo p0, "lockNow"

    return-object p0

    .line 1742
    :pswitch_52c
    const-string p0, "getRequiredStrongAuthTimeout"

    return-object p0

    .line 1738
    :pswitch_52f
    const-string/jumbo p0, "setRequiredStrongAuthTimeout"

    return-object p0

    .line 1734
    :pswitch_533
    const-string p0, "getMaximumTimeToLock"

    return-object p0

    .line 1730
    :pswitch_536
    const-string/jumbo p0, "setMaximumTimeToLock"

    return-object p0

    .line 1726
    :pswitch_53a
    const-string/jumbo p0, "resetPassword"

    return-object p0

    .line 1722
    :pswitch_53e
    const-string p0, "getMaximumFailedPasswordsForWipe"

    return-object p0

    .line 1718
    :pswitch_541
    const-string/jumbo p0, "setMaximumFailedPasswordsForWipe"

    return-object p0

    .line 1714
    :pswitch_545
    const-string p0, "getProfileWithMinimumFailedPasswordsForWipe"

    return-object p0

    .line 1710
    :pswitch_548
    const-string p0, "getCurrentFailedPasswordAttempts"

    return-object p0

    .line 1706
    :pswitch_54b
    const-string/jumbo p0, "isUsingUnifiedPassword"

    return-object p0

    .line 1702
    :pswitch_54f
    const-string p0, "getAggregatedPasswordComplexityForUser"

    return-object p0

    .line 1698
    :pswitch_552
    const-string p0, "getRequiredPasswordComplexity"

    return-object p0

    .line 1694
    :pswitch_555
    const-string/jumbo p0, "setRequiredPasswordComplexity"

    return-object p0

    .line 1690
    :pswitch_559
    const-string p0, "getPasswordComplexity"

    return-object p0

    .line 1686
    :pswitch_55c
    const-string p0, "isPasswordSufficientAfterProfileUnification"

    return-object p0

    .line 1682
    :pswitch_55f
    const-string p0, "isActivePasswordSufficientForDeviceRequirement"

    return-object p0

    .line 1678
    :pswitch_562
    const-string p0, "isActivePasswordSufficient"

    return-object p0

    .line 1674
    :pswitch_565
    const-string p0, "getPasswordExpiration"

    return-object p0

    .line 1670
    :pswitch_568
    const-string p0, "getPasswordExpirationTimeout"

    return-object p0

    .line 1666
    :pswitch_56b
    const-string/jumbo p0, "setPasswordExpirationTimeout"

    return-object p0

    .line 1662
    :pswitch_56f
    const-string p0, "getPasswordHistoryLength"

    return-object p0

    .line 1658
    :pswitch_572
    const-string/jumbo p0, "setPasswordHistoryLength"

    return-object p0

    .line 1654
    :pswitch_576
    const-string p0, "getPasswordMinimumMetrics"

    return-object p0

    .line 1650
    :pswitch_579
    const-string p0, "getPasswordMinimumNonLetter"

    return-object p0

    .line 1646
    :pswitch_57c
    const-string/jumbo p0, "setPasswordMinimumNonLetter"

    return-object p0

    .line 1642
    :pswitch_580
    const-string p0, "getPasswordMinimumSymbols"

    return-object p0

    .line 1638
    :pswitch_583
    const-string/jumbo p0, "setPasswordMinimumSymbols"

    return-object p0

    .line 1634
    :pswitch_587
    const-string p0, "getPasswordMinimumNumeric"

    return-object p0

    .line 1630
    :pswitch_58a
    const-string/jumbo p0, "setPasswordMinimumNumeric"

    return-object p0

    .line 1626
    :pswitch_58e
    const-string p0, "getPasswordMinimumLetters"

    return-object p0

    .line 1622
    :pswitch_591
    const-string/jumbo p0, "setPasswordMinimumLetters"

    return-object p0

    .line 1618
    :pswitch_595
    const-string p0, "getPasswordMinimumLowerCase"

    return-object p0

    .line 1614
    :pswitch_598
    const-string/jumbo p0, "setPasswordMinimumLowerCase"

    return-object p0

    .line 1610
    :pswitch_59c
    const-string p0, "getPasswordMinimumUpperCase"

    return-object p0

    .line 1606
    :pswitch_59f
    const-string/jumbo p0, "setPasswordMinimumUpperCase"

    return-object p0

    .line 1602
    :pswitch_5a3
    const-string p0, "getPasswordMinimumLength"

    return-object p0

    .line 1598
    :pswitch_5a6
    const-string/jumbo p0, "setPasswordMinimumLength"

    return-object p0

    .line 1594
    :pswitch_5aa
    const-string p0, "getPasswordQuality"

    return-object p0

    .line 1590
    :pswitch_5ad
    const-string/jumbo p0, "setPasswordQuality"

    return-object p0

    nop

    :pswitch_data_5b2
    .packed-switch 0x1
        :pswitch_5ad
        :pswitch_5aa
        :pswitch_5a6
        :pswitch_5a3
        :pswitch_59f
        :pswitch_59c
        :pswitch_598
        :pswitch_595
        :pswitch_591
        :pswitch_58e
        :pswitch_58a
        :pswitch_587
        :pswitch_583
        :pswitch_580
        :pswitch_57c
        :pswitch_579
        :pswitch_576
        :pswitch_572
        :pswitch_56f
        :pswitch_56b
        :pswitch_568
        :pswitch_565
        :pswitch_562
        :pswitch_55f
        :pswitch_55c
        :pswitch_559
        :pswitch_555
        :pswitch_552
        :pswitch_54f
        :pswitch_54b
        :pswitch_548
        :pswitch_545
        :pswitch_541
        :pswitch_53e
        :pswitch_53a
        :pswitch_536
        :pswitch_533
        :pswitch_52f
        :pswitch_52c
        :pswitch_528
        :pswitch_524
        :pswitch_520
        :pswitch_51d
        :pswitch_51a
        :pswitch_516
        :pswitch_512
        :pswitch_50f
        :pswitch_50b
        :pswitch_507
        :pswitch_504
        :pswitch_501
        :pswitch_4fd
        :pswitch_4f9
        :pswitch_4f6
        :pswitch_4f2
        :pswitch_4ef
        :pswitch_4eb
        :pswitch_4e8
        :pswitch_4e4
        :pswitch_4e1
        :pswitch_4dd
        :pswitch_4da
        :pswitch_4d6
        :pswitch_4d3
        :pswitch_4d0
        :pswitch_4cc
        :pswitch_4c9
        :pswitch_4c5
        :pswitch_4c2
        :pswitch_4bf
        :pswitch_4bc
        :pswitch_4b8
        :pswitch_4b4
        :pswitch_4b0
        :pswitch_4ac
        :pswitch_4a8
        :pswitch_4a4
        :pswitch_4a0
        :pswitch_49c
        :pswitch_499
        :pswitch_496
        :pswitch_493
        :pswitch_490
        :pswitch_48d
        :pswitch_48a
        :pswitch_487
        :pswitch_483
        :pswitch_480
        :pswitch_47d
        :pswitch_479
        :pswitch_476
        :pswitch_472
        :pswitch_46e
        :pswitch_46b
        :pswitch_468
        :pswitch_465
        :pswitch_462
        :pswitch_45e
        :pswitch_45b
        :pswitch_457
        :pswitch_454
        :pswitch_450
        :pswitch_44d
        :pswitch_449
        :pswitch_446
        :pswitch_443
        :pswitch_440
        :pswitch_43d
        :pswitch_439
        :pswitch_436
        :pswitch_433
        :pswitch_42f
        :pswitch_42c
        :pswitch_428
        :pswitch_425
        :pswitch_422
        :pswitch_41e
        :pswitch_41b
        :pswitch_417
        :pswitch_414
        :pswitch_411
        :pswitch_40e
        :pswitch_40b
        :pswitch_408
        :pswitch_405
        :pswitch_402
        :pswitch_3fe
        :pswitch_3fa
        :pswitch_3f6
        :pswitch_3f3
        :pswitch_3ef
        :pswitch_3ec
        :pswitch_3e8
        :pswitch_3e5
        :pswitch_3e2
        :pswitch_3de
        :pswitch_3db
        :pswitch_3d7
        :pswitch_3d3
        :pswitch_3cf
        :pswitch_3cb
        :pswitch_3c8
        :pswitch_3c5
        :pswitch_3c2
        :pswitch_3bf
        :pswitch_3bb
        :pswitch_3b8
        :pswitch_3b5
        :pswitch_3b2
        :pswitch_3ae
        :pswitch_3ab
        :pswitch_3a8
        :pswitch_3a5
        :pswitch_3a1
        :pswitch_39e
        :pswitch_39b
        :pswitch_398
        :pswitch_395
        :pswitch_392
        :pswitch_38f
        :pswitch_38b
        :pswitch_388
        :pswitch_385
        :pswitch_381
        :pswitch_37d
        :pswitch_379
        :pswitch_375
        :pswitch_371
        :pswitch_36d
        :pswitch_36a
        :pswitch_367
        :pswitch_364
        :pswitch_361
        :pswitch_35e
        :pswitch_35b
        :pswitch_358
        :pswitch_354
        :pswitch_351
        :pswitch_34e
        :pswitch_34a
        :pswitch_346
        :pswitch_342
        :pswitch_33f
        :pswitch_33b
        :pswitch_338
        :pswitch_335
        :pswitch_331
        :pswitch_32e
        :pswitch_32a
        :pswitch_326
        :pswitch_322
        :pswitch_31e
        :pswitch_31b
        :pswitch_317
        :pswitch_313
        :pswitch_30f
        :pswitch_30b
        :pswitch_308
        :pswitch_304
        :pswitch_300
        :pswitch_2fc
        :pswitch_2f8
        :pswitch_2f5
        :pswitch_2f2
        :pswitch_2ee
        :pswitch_2eb
        :pswitch_2e8
        :pswitch_2e4
        :pswitch_2e0
        :pswitch_2dd
        :pswitch_2da
        :pswitch_2d6
        :pswitch_2d3
        :pswitch_2cf
        :pswitch_2cc
        :pswitch_2c9
        :pswitch_2c5
        :pswitch_2c2
        :pswitch_2bf
        :pswitch_2bb
        :pswitch_2b8
        :pswitch_2b5
        :pswitch_2b1
        :pswitch_2ad
        :pswitch_2aa
        :pswitch_2a6
        :pswitch_2a3
        :pswitch_29f
        :pswitch_29c
        :pswitch_298
        :pswitch_295
        :pswitch_291
        :pswitch_28e
        :pswitch_28a
        :pswitch_287
        :pswitch_283
        :pswitch_280
        :pswitch_27c
        :pswitch_278
        :pswitch_274
        :pswitch_271
        :pswitch_26e
        :pswitch_26a
        :pswitch_266
        :pswitch_262
        :pswitch_25f
        :pswitch_25b
        :pswitch_258
        :pswitch_254
        :pswitch_251
        :pswitch_24d
        :pswitch_24a
        :pswitch_247
        :pswitch_244
        :pswitch_240
        :pswitch_23d
        :pswitch_23a
        :pswitch_237
        :pswitch_233
        :pswitch_22f
        :pswitch_22c
        :pswitch_228
        :pswitch_225
        :pswitch_222
        :pswitch_21f
        :pswitch_21b
        :pswitch_217
        :pswitch_214
        :pswitch_211
        :pswitch_20e
        :pswitch_20a
        :pswitch_207
        :pswitch_204
        :pswitch_201
        :pswitch_1fe
        :pswitch_1fa
        :pswitch_1f6
        :pswitch_1f3
        :pswitch_1f0
        :pswitch_1ed
        :pswitch_1e9
        :pswitch_1e5
        :pswitch_1e1
        :pswitch_1dd
        :pswitch_1da
        :pswitch_1d7
        :pswitch_1d3
        :pswitch_1d0
        :pswitch_1cc
        :pswitch_1c8
        :pswitch_1c4
        :pswitch_1c1
        :pswitch_1be
        :pswitch_1ba
        :pswitch_1b7
        :pswitch_1b3
        :pswitch_1b0
        :pswitch_1ac
        :pswitch_1a9
        :pswitch_1a5
        :pswitch_1a2
        :pswitch_19f
        :pswitch_19c
        :pswitch_199
        :pswitch_196
        :pswitch_193
        :pswitch_18f
        :pswitch_18c
        :pswitch_188
        :pswitch_184
        :pswitch_181
        :pswitch_17e
        :pswitch_17b
        :pswitch_177
        :pswitch_174
        :pswitch_171
        :pswitch_16d
        :pswitch_16a
        :pswitch_166
        :pswitch_162
        :pswitch_15f
        :pswitch_15c
        :pswitch_158
        :pswitch_155
        :pswitch_152
        :pswitch_14e
        :pswitch_14a
        :pswitch_147
        :pswitch_143
        :pswitch_140
        :pswitch_13d
        :pswitch_139
        :pswitch_136
        :pswitch_133
        :pswitch_12f
        :pswitch_12c
        :pswitch_128
        :pswitch_125
        :pswitch_122
        :pswitch_11f
        :pswitch_11b
        :pswitch_118
        :pswitch_115
        :pswitch_112
        :pswitch_10f
        :pswitch_10b
        :pswitch_107
        :pswitch_103
        :pswitch_100
        :pswitch_fc
        :pswitch_f9
        :pswitch_f5
        :pswitch_f2
        :pswitch_ee
        :pswitch_eb
        :pswitch_e8
        :pswitch_e4
        :pswitch_e1
        :pswitch_dd
        :pswitch_da
        :pswitch_d7
        :pswitch_d4
        :pswitch_d0
        :pswitch_cc
        :pswitch_c9
        :pswitch_c5
        :pswitch_c2
        :pswitch_bf
        :pswitch_bc
        :pswitch_b8
        :pswitch_b4
        :pswitch_b1
        :pswitch_ad
        :pswitch_a9
        :pswitch_a6
        :pswitch_a2
        :pswitch_9f
        :pswitch_9b
        :pswitch_97
        :pswitch_94
        :pswitch_90
        :pswitch_8d
        :pswitch_89
        :pswitch_86
        :pswitch_83
        :pswitch_7f
        :pswitch_7b
        :pswitch_77
        :pswitch_74
        :pswitch_71
        :pswitch_6d
        :pswitch_69
        :pswitch_65
        :pswitch_62
        :pswitch_5e
        :pswitch_5a
        :pswitch_57
        :pswitch_53
        :pswitch_50
        :pswitch_4c
        :pswitch_48
        :pswitch_45
        :pswitch_41
        :pswitch_3e
        :pswitch_3a
        :pswitch_37
        :pswitch_33
        :pswitch_30
        :pswitch_2d
        :pswitch_2a
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1c
        :pswitch_19
        :pswitch_16
        :pswitch_13
        :pswitch_10
        :pswitch_c
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method

.method private blacklist onTransact$addCrossProfileIntentFilter$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15389
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 15391
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 15393
    sget-object v2, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/IntentFilter;

    .line 15395
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 15396
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15397
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->addCrossProfileIntentFilter(Landroid/content/ComponentName;Ljava/lang/String;Landroid/content/IntentFilter;I)V

    .line 15398
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15399
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$addCrossProfileWidgetProvider$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15865
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 15867
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 15869
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 15870
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15871
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->addCrossProfileWidgetProvider(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    .line 15872
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15873
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 15874
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$addPersistentPreferredActivity$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15206
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 15208
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 15210
    sget-object v2, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/IntentFilter;

    .line 15212
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 15213
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15214
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->addPersistentPreferredActivity(Landroid/content/ComponentName;Ljava/lang/String;Landroid/content/IntentFilter;Landroid/content/ComponentName;)V

    .line 15215
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15216
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$approveCaCert$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15050
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 15052
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 15054
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 15055
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15056
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->approveCaCert(Ljava/lang/String;IZ)Z

    move-result p1

    .line 15057
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15058
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 15059
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$bindDeviceAdminServiceAsUser$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16152
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/content/ComponentName;

    .line 16154
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IApplicationThread$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v3

    .line 16156
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 16158
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/content/Intent;

    .line 16160
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IServiceConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IServiceConnection;

    move-result-object v6

    .line 16162
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    .line 16164
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 16165
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16166
    move-object v1, p0

    invoke-virtual/range {v1 .. v9}, Landroid/app/admin/IDevicePolicyManager$Stub;->bindDeviceAdminServiceAsUser(Landroid/content/ComponentName;Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/content/Intent;Landroid/app/IServiceConnection;JI)Z

    move-result p1

    .line 16167
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16168
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 16169
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$checkDeviceIdentifierAccess$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14970
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 14972
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 14974
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 14975
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14976
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->checkDeviceIdentifierAccess(Ljava/lang/String;II)Z

    move-result p1

    .line 14977
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 14978
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 14979
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$choosePrivateKeyAlias$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15150
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 15152
    sget-object v1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 15154
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 15156
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 15157
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15158
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->choosePrivateKeyAlias(ILandroid/net/Uri;Ljava/lang/String;Landroid/os/IBinder;)V

    .line 15159
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15160
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$clearApplicationUserData$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16218
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 16220
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 16222
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/content/pm/IPackageDataObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageDataObserver;

    move-result-object v2

    .line 16223
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16224
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->clearApplicationUserData(Landroid/content/ComponentName;Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V

    .line 16225
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16226
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$clearPackagePersistentPreferredActivities$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15222
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 15224
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 15226
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 15227
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15228
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->clearPackagePersistentPreferredActivities(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V

    .line 15229
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15230
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$createAndManageUser$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15517
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/content/ComponentName;

    .line 15519
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 15521
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/content/ComponentName;

    .line 15523
    sget-object v0, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/os/PersistableBundle;

    .line 15525
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 15526
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15527
    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->createAndManageUser(Landroid/content/ComponentName;Ljava/lang/String;Landroid/content/ComponentName;Landroid/os/PersistableBundle;I)Landroid/os/UserHandle;

    move-result-object p1

    .line 15528
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15529
    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 15530
    return v0
.end method

.method private blacklist onTransact$enableSystemApp$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15546
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 15548
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 15550
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 15551
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15552
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->enableSystemApp(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V

    .line 15553
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15554
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$enableSystemAppWithIntent$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15560
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 15562
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 15564
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 15565
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15566
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->enableSystemAppWithIntent(Landroid/content/ComponentName;Ljava/lang/String;Landroid/content/Intent;)I

    move-result p1

    .line 15567
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15568
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 15569
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$finalizeWorkProfileProvisioning$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16489
    sget-object v0, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    .line 16491
    sget-object v1, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/Account;

    .line 16492
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16493
    invoke-virtual {p0, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->finalizeWorkProfileProvisioning(Landroid/os/UserHandle;Landroid/accounts/Account;)V

    .line 16494
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16495
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$forceSetMaxPolicyStorageLimit$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16686
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 16688
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 16689
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16690
    invoke-virtual {p0, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->forceSetMaxPolicyStorageLimit(Ljava/lang/String;I)V

    .line 16691
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16692
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$generateKeyPair$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15107
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/content/ComponentName;

    .line 15109
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 15111
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 15113
    sget-object v0, Landroid/security/keystore/ParcelableKeyGenParameterSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/security/keystore/ParcelableKeyGenParameterSpec;

    .line 15115
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 15117
    new-instance v7, Landroid/security/keymaster/KeymasterCertificateChain;

    invoke-direct {v7}, Landroid/security/keymaster/KeymasterCertificateChain;-><init>()V

    .line 15118
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15119
    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->generateKeyPair(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Landroid/security/keystore/ParcelableKeyGenParameterSpec;ILandroid/security/keymaster/KeymasterCertificateChain;)Z

    move-result p1

    .line 15120
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15121
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 15122
    const/4 p1, 0x1

    invoke-virtual {p2, v7, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 15123
    return p1
.end method

.method private blacklist onTransact$getAccountTypesWithManagementDisabledAsUser$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15609
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 15611
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 15613
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 15614
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15615
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAccountTypesWithManagementDisabledAsUser(ILjava/lang/String;Z)[Ljava/lang/String;

    move-result-object p1

    .line 15616
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15617
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 15618
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$getAppFunctionsPolicy$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16725
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 16727
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 16728
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16729
    invoke-virtual {p0, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAppFunctionsPolicy(Ljava/lang/String;I)I

    move-result p1

    .line 16730
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16731
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 16732
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$getApplicationRestrictions$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15271
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 15273
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 15275
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 15277
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 15278
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15279
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->getApplicationRestrictions(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object p1

    .line 15280
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15281
    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 15282
    return v0
.end method

.method private blacklist onTransact$getApplicationRestrictionsBySystem$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15306
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 15308
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 15310
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 15311
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15312
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getApplicationRestrictionsBySystem(Ljava/lang/String;Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object p1

    .line 15313
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15314
    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 15315
    return v0
.end method

.method private blacklist onTransact$getCameraDisabled$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14797
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 14799
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 14801
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 14803
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 14804
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14805
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->getCameraDisabled(Landroid/content/ComponentName;Ljava/lang/String;IZ)Z

    move-result p1

    .line 14806
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 14807
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 14808
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$getContentProtectionPolicy$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16658
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 16660
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 16662
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 16663
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16664
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getContentProtectionPolicy(Landroid/content/ComponentName;Ljava/lang/String;I)I

    move-result p1

    .line 16665
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16666
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 16667
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$getCurrentFailedPasswordAttempts$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14601
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 14603
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 14605
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 14606
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14607
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getCurrentFailedPasswordAttempts(Ljava/lang/String;IZ)I

    move-result p1

    .line 14608
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 14609
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 14610
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$getDisallowedSystemApps$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16234
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 16236
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 16238
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 16239
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16240
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getDisallowedSystemApps(Landroid/content/ComponentName;ILjava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 16241
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16242
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 16243
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$getDrawable$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16561
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 16563
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 16565
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 16566
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16567
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getDrawable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/admin/ParcelableResource;

    move-result-object p1

    .line 16568
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16569
    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 16570
    return v0
.end method

.method private blacklist onTransact$getKeyguardDisabledFeatures$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14865
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 14867
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 14869
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 14870
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14871
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;IZ)I

    move-result p1

    .line 14872
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 14873
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 14874
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$getMaximumFailedPasswordsForWipe$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14633
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 14635
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 14637
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 14638
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14639
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;IZ)I

    move-result p1

    .line 14640
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 14641
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 14642
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$getMaximumTimeToLock$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14665
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 14667
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 14669
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 14670
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14671
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getMaximumTimeToLock(Landroid/content/ComponentName;IZ)J

    move-result-wide v0

    .line 14672
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 14673
    invoke-virtual {p2, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 14674
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$getPasswordExpiration$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14551
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 14553
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 14555
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 14556
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14557
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordExpiration(Landroid/content/ComponentName;IZ)J

    move-result-wide v0

    .line 14558
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 14559
    invoke-virtual {p2, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 14560
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$getPasswordExpirationTimeout$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14536
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 14538
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 14540
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 14541
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14542
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordExpirationTimeout(Landroid/content/ComponentName;IZ)J

    move-result-wide v0

    .line 14543
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 14544
    invoke-virtual {p2, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 14545
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$getPasswordHistoryLength$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14505
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 14507
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 14509
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 14510
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14511
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordHistoryLength(Landroid/content/ComponentName;IZ)I

    move-result p1

    .line 14512
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 14513
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 14514
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$getPasswordMinimumLength$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14301
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 14303
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 14305
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 14306
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14307
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordMinimumLength(Landroid/content/ComponentName;IZ)I

    move-result p1

    .line 14308
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 14309
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 14310
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$getPasswordMinimumLetters$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14388
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 14390
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 14392
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 14393
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14394
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordMinimumLetters(Landroid/content/ComponentName;IZ)I

    move-result p1

    .line 14395
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 14396
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 14397
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$getPasswordMinimumLowerCase$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14359
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 14361
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 14363
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 14364
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14365
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordMinimumLowerCase(Landroid/content/ComponentName;IZ)I

    move-result p1

    .line 14366
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 14367
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 14368
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$getPasswordMinimumNonLetter$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14475
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 14477
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 14479
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 14480
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14481
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordMinimumNonLetter(Landroid/content/ComponentName;IZ)I

    move-result p1

    .line 14482
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 14483
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 14484
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$getPasswordMinimumNumeric$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14417
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 14419
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 14421
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 14422
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14423
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordMinimumNumeric(Landroid/content/ComponentName;IZ)I

    move-result p1

    .line 14424
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 14425
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 14426
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$getPasswordMinimumSymbols$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14446
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 14448
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 14450
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 14451
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14452
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordMinimumSymbols(Landroid/content/ComponentName;IZ)I

    move-result p1

    .line 14453
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 14454
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 14455
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$getPasswordMinimumUpperCase$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14330
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 14332
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 14334
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 14335
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14336
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordMinimumUpperCase(Landroid/content/ComponentName;IZ)I

    move-result p1

    .line 14337
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 14338
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 14339
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$getPasswordQuality$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14272
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 14274
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 14276
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 14277
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14278
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordQuality(Landroid/content/ComponentName;IZ)I

    move-result p1

    .line 14279
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 14280
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 14281
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$getPermissionGrantState$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16008
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 16010
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 16012
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 16014
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 16015
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16016
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPermissionGrantState(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 16017
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16018
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 16019
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$getPermittedInputMethods$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15441
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 15443
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 15445
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 15446
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15447
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPermittedInputMethods(Landroid/content/ComponentName;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p1

    .line 15448
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15449
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 15450
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$getPolicySizeForAdmin$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16699
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 16701
    sget-object v1, Landroid/app/admin/EnforcingAdmin;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/EnforcingAdmin;

    .line 16702
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16703
    invoke-virtual {p0, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPolicySizeForAdmin(Ljava/lang/String;Landroid/app/admin/EnforcingAdmin;)I

    move-result p1

    .line 16704
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16705
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 16706
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$getRemoveWarning$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14899
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 14901
    sget-object v1, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/RemoteCallback;

    .line 14903
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 14904
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14905
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getRemoveWarning(Landroid/content/ComponentName;Landroid/os/RemoteCallback;I)V

    .line 14906
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 14907
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$getRequiredStrongAuthTimeout$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14696
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 14698
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 14700
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 14701
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14702
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getRequiredStrongAuthTimeout(Landroid/content/ComponentName;IZ)J

    move-result-wide v0

    .line 14703
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 14704
    invoke-virtual {p2, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 14705
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$getScreenCaptureDisabled$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14830
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 14832
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 14834
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 14835
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14836
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getScreenCaptureDisabled(Landroid/content/ComponentName;IZ)Z

    move-result p1

    .line 14837
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 14838
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 14839
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$getTrustAgentConfiguration$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15848
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 15850
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 15852
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 15854
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 15855
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15856
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->getTrustAgentConfiguration(Landroid/content/ComponentName;Landroid/content/ComponentName;IZ)Ljava/util/List;

    move-result-object p1

    .line 15857
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15858
    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 15859
    return v0
.end method

.method private blacklist onTransact$getUserRestrictions$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15373
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 15375
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 15377
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 15378
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15379
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->getUserRestrictions(Landroid/content/ComponentName;Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object p1

    .line 15380
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15381
    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 15382
    return v0
.end method

.method private blacklist onTransact$hasGrantedPolicy$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14916
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 14918
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 14920
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 14921
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14922
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->hasGrantedPolicy(Landroid/content/ComponentName;II)Z

    move-result p1

    .line 14923
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 14924
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 14925
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$installCaCert$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15020
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 15022
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 15024
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 15025
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15026
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->installCaCert(Landroid/content/ComponentName;Ljava/lang/String;[B)Z

    move-result p1

    .line 15027
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15028
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 15029
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$installExistingPackage$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15575
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 15577
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 15579
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 15580
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15581
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->installExistingPackage(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    .line 15582
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15583
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 15584
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$installKeyPair$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15066
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/content/ComponentName;

    .line 15068
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 15070
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 15072
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .line 15074
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    .line 15076
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 15078
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v8

    .line 15080
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v9

    .line 15081
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15082
    move-object v1, p0

    invoke-virtual/range {v1 .. v9}, Landroid/app/admin/IDevicePolicyManager$Stub;->installKeyPair(Landroid/content/ComponentName;Ljava/lang/String;[B[B[BLjava/lang/String;ZZ)Z

    move-result p1

    .line 15083
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15084
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 15085
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$installUpdateFromFile$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16336
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 16338
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 16340
    sget-object v2, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelFileDescriptor;

    .line 16342
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/admin/StartInstallingUpdateCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/admin/StartInstallingUpdateCallback;

    move-result-object v3

    .line 16343
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16344
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->installUpdateFromFile(Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/app/admin/StartInstallingUpdateCallback;)V

    .line 16345
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16346
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$isAccessibilityServicePermittedByAdmin$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15409
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 15411
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 15413
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 15414
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15415
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->isAccessibilityServicePermittedByAdmin(Landroid/content/ComponentName;Ljava/lang/String;I)Z

    move-result p1

    .line 15416
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15417
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 15418
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$isActivePasswordSufficient$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14566
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 14568
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 14570
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 14571
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14572
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->isActivePasswordSufficient(Ljava/lang/String;IZ)Z

    move-result p1

    .line 14573
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 14574
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 14575
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$isApplicationHidden$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15500
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 15502
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 15504
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 15506
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 15507
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15508
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->isApplicationHidden(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    .line 15509
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15510
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 15511
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$isInputMethodPermittedByAdmin$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15457
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 15459
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 15461
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 15463
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 15464
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15465
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->isInputMethodPermittedByAdmin(Landroid/content/ComponentName;Ljava/lang/String;IZ)Z

    move-result p1

    .line 15466
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15467
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 15468
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$isMeteredDataDisabledPackageForUser$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16290
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 16292
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 16294
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 16295
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16296
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->isMeteredDataDisabledPackageForUser(Landroid/content/ComponentName;Ljava/lang/String;I)Z

    move-result p1

    .line 16297
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16298
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 16299
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$isPackageSuspended$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15004
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 15006
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 15008
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 15009
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15010
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->isPackageSuspended(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    .line 15011
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15012
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 15013
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$isSubscriptionEnterpriseManaged$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16626
    sget-object v0, Landroid/telephony/SubscriptionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionInfo;

    .line 16628
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 16629
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16630
    invoke-virtual {p0, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->isSubscriptionEnterpriseManaged(Landroid/telephony/SubscriptionInfo;Ljava/lang/String;)Z

    move-result p1

    .line 16631
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16632
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 16633
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$lockNow$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14711
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 14713
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 14715
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 14716
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14717
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->lockNow(ILjava/lang/String;Z)V

    .line 14718
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 14719
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$notifyLockTaskModeChanged$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15764
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 15766
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 15768
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 15769
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15770
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->notifyLockTaskModeChanged(ZLjava/lang/String;I)V

    .line 15771
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15772
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$provisionMultiUserDevice$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16477
    sget-object v0, Landroid/app/admin/MultiUserDeviceProvisioningParamsTransport;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/MultiUserDeviceProvisioningParamsTransport;

    .line 16479
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 16480
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16481
    invoke-virtual {p0, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->provisionMultiUserDevice(Landroid/app/admin/MultiUserDeviceProvisioningParamsTransport;Ljava/lang/String;)V

    .line 16482
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16483
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$removeCrossProfileWidgetProvider$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15881
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 15883
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 15885
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 15886
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15887
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->removeCrossProfileWidgetProvider(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    .line 15888
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15889
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 15890
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$removeKeyPair$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15091
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 15093
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 15095
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 15096
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15097
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->removeKeyPair(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    .line 15098
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15099
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 15100
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$resetPasswordWithToken$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16197
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/content/ComponentName;

    .line 16199
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 16201
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 16203
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .line 16205
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 16206
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16207
    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->resetPasswordWithToken(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;[BI)Z

    move-result p1

    .line 16208
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16209
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 16210
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$retrieveNetworkLogs$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16137
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 16139
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 16141
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 16142
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16143
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->retrieveNetworkLogs(Landroid/content/ComponentName;Ljava/lang/String;J)Ljava/util/List;

    move-result-object p1

    .line 16144
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16145
    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 16146
    return v0
.end method

.method private blacklist onTransact$setAccountManagementDisabled$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15590
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/content/ComponentName;

    .line 15592
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 15594
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 15596
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 15598
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v6

    .line 15599
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15600
    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAccountManagementDisabled(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 15601
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15602
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$setActiveAdmin$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14880
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 14882
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 14884
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 14886
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 14887
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14888
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setActiveAdmin(Landroid/content/ComponentName;ZILjava/lang/String;)V

    .line 14889
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 14890
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$setAlwaysOnVpnPackage$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15184
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 15186
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 15188
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 15190
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 15191
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15192
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAlwaysOnVpnPackage(Landroid/content/ComponentName;Ljava/lang/String;ZLjava/util/List;)Z

    move-result p1

    .line 15193
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15194
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 15195
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$setAppFunctionsPolicy$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16713
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 16715
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 16716
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16717
    invoke-virtual {p0, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAppFunctionsPolicy(Ljava/lang/String;I)V

    .line 16718
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16719
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$setApplicationExemptions$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16584
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 16586
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 16588
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 16589
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16590
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setApplicationExemptions(Ljava/lang/String;Ljava/lang/String;[I)V

    .line 16591
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16592
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$setApplicationHidden$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15481
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/content/ComponentName;

    .line 15483
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 15485
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 15487
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 15489
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v6

    .line 15490
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15491
    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->setApplicationHidden(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;ZZ)Z

    move-result p1

    .line 15492
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15493
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 15494
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$setApplicationRestrictions$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15253
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/content/ComponentName;

    .line 15255
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 15257
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 15259
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/os/Bundle;

    .line 15261
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v6

    .line 15262
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15263
    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->setApplicationRestrictions(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)V

    .line 15264
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15265
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$setApplicationRestrictionsBySystem$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15290
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 15292
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 15294
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 15296
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 15297
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15298
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setApplicationRestrictionsBySystem(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 15299
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15300
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$setAutoTimeEnabled$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15899
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 15901
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 15903
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 15904
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15905
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAutoTimeEnabled(Landroid/content/ComponentName;Ljava/lang/String;Z)V

    .line 15906
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15907
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$setAutoTimeZoneEnabled$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15916
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 15918
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 15920
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 15921
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15922
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAutoTimeZoneEnabled(Landroid/content/ComponentName;Ljava/lang/String;Z)V

    .line 15923
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15924
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$setCameraDisabled$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14781
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 14783
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 14785
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 14787
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 14788
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14789
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setCameraDisabled(Landroid/content/ComponentName;Ljava/lang/String;ZZ)V

    .line 14790
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 14791
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$setCommonCriteriaModeEnabled$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16434
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 16436
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 16438
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 16439
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16440
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setCommonCriteriaModeEnabled(Landroid/content/ComponentName;Ljava/lang/String;Z)V

    .line 16441
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16442
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$setConfiguredNetworksLockdownState$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15716
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 15718
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 15720
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 15721
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15722
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setConfiguredNetworksLockdownState(Landroid/content/ComponentName;Ljava/lang/String;Z)V

    .line 15723
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15724
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$setContentProtectionPolicy$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16644
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 16646
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 16648
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 16649
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16650
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setContentProtectionPolicy(Landroid/content/ComponentName;Ljava/lang/String;I)V

    .line 16651
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16652
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$setDefaultSmsApplication$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15236
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 15238
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 15240
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 15242
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 15243
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15244
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setDefaultSmsApplication(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 15245
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15246
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$setDelegatedScopes$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15166
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 15168
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 15170
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 15171
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15172
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setDelegatedScopes(Landroid/content/ComponentName;Ljava/lang/String;Ljava/util/List;)V

    .line 15173
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15174
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$setDeviceOwner$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14938
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 14940
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 14942
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 14943
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14944
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setDeviceOwner(Landroid/content/ComponentName;IZ)Z

    move-result p1

    .line 14945
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 14946
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 14947
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$setDeviceOwnerType$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16502
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 16504
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 16505
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16506
    invoke-virtual {p0, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setDeviceOwnerType(Landroid/content/ComponentName;I)V

    .line 16507
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16508
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$setFactoryResetProtectionPolicy$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14743
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 14745
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 14747
    sget-object v2, Landroid/app/admin/FactoryResetProtectionPolicy;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/FactoryResetProtectionPolicy;

    .line 14748
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14749
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setFactoryResetProtectionPolicy(Landroid/content/ComponentName;Ljava/lang/String;Landroid/app/admin/FactoryResetProtectionPolicy;)V

    .line 14750
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 14751
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$setGlobalPrivateDns$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16305
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 16307
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 16309
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 16310
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16311
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setGlobalPrivateDns(Landroid/content/ComponentName;ILjava/lang/String;)I

    move-result p1

    .line 16312
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16313
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 16314
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$setGlobalProxy$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14760
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 14762
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 14764
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 14765
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14766
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setGlobalProxy(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p1

    .line 14767
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 14768
    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 14769
    return v0
.end method

.method private blacklist onTransact$setGlobalSetting$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15672
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 15674
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 15676
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 15677
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15678
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setGlobalSetting(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V

    .line 15679
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15680
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$setKeepUninstalledPackages$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16027
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 16029
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 16031
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 16032
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16033
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setKeepUninstalledPackages(Landroid/content/ComponentName;Ljava/lang/String;Ljava/util/List;)V

    .line 16034
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16035
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$setKeyGrantForApp$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16383
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/content/ComponentName;

    .line 16385
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 16387
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 16389
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 16391
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v6

    .line 16392
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16393
    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->setKeyGrantForApp(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    .line 16394
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16395
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 16396
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$setKeyGrantToWifiAuth$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16403
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 16405
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 16407
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 16408
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16409
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setKeyGrantToWifiAuth(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    .line 16410
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16411
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 16412
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$setKeyPairCertificate$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15129
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/content/ComponentName;

    .line 15131
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 15133
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 15135
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .line 15137
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    .line 15139
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v7

    .line 15140
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15141
    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->setKeyPairCertificate(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;[B[BZ)Z

    move-result p1

    .line 15142
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15143
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 15144
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$setKeyguardDisabledFeatures$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14849
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 14851
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 14853
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 14855
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 14856
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14857
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setKeyguardDisabledFeatures(Landroid/content/ComponentName;Ljava/lang/String;IZ)V

    .line 14858
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 14859
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$setLockTaskFeatures$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15657
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 15659
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 15661
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 15662
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15663
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setLockTaskFeatures(Landroid/content/ComponentName;Ljava/lang/String;I)V

    .line 15664
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15665
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$setLockTaskPackages$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15641
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 15643
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 15645
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 15646
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15647
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setLockTaskPackages(Landroid/content/ComponentName;Ljava/lang/String;[Ljava/lang/String;)V

    .line 15648
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15649
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$setMaxPolicyStorageLimit$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16674
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 16676
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 16677
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16678
    invoke-virtual {p0, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setMaxPolicyStorageLimit(Ljava/lang/String;I)V

    .line 16679
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16680
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$setMaximumFailedPasswordsForWipe$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14617
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 14619
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 14621
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 14623
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 14624
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14625
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;Ljava/lang/String;IZ)V

    .line 14626
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 14627
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$setMaximumTimeToLock$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14649
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/content/ComponentName;

    .line 14651
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 14653
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 14655
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v6

    .line 14656
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14657
    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->setMaximumTimeToLock(Landroid/content/ComponentName;Ljava/lang/String;JZ)V

    .line 14658
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 14659
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$setMinimumRequiredWifiSecurityLevel$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16531
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 16533
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 16534
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16535
    invoke-virtual {p0, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setMinimumRequiredWifiSecurityLevel(Ljava/lang/String;I)V

    .line 16536
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16537
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$setMtePolicy$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16599
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 16601
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 16602
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16603
    invoke-virtual {p0, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setMtePolicy(ILjava/lang/String;)V

    .line 16604
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16605
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$setMtePolicyBySystem$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16611
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 16613
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 16614
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16615
    invoke-virtual {p0, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setMtePolicyBySystem(Ljava/lang/String;I)V

    .line 16616
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16617
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$setNetworkLoggingEnabled$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16122
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 16124
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 16126
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 16127
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16128
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setNetworkLoggingEnabled(Landroid/content/ComponentName;Ljava/lang/String;Z)V

    .line 16129
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16130
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$setOrganizationIdForUser$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16459
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 16461
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 16463
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 16464
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16465
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setOrganizationIdForUser(Ljava/lang/String;Ljava/lang/String;I)V

    .line 16466
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16467
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$setOrganizationName$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16069
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 16071
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 16073
    sget-object v2, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    .line 16074
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16075
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setOrganizationName(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 16076
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16077
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$setPackagesSuspended$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14987
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 14989
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 14991
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 14993
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 14994
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14995
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPackagesSuspended(Landroid/content/ComponentName;Ljava/lang/String;[Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object p1

    .line 14996
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 14997
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 14998
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$setPasswordExpirationTimeout$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14520
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/content/ComponentName;

    .line 14522
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 14524
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 14526
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v6

    .line 14527
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14528
    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordExpirationTimeout(Landroid/content/ComponentName;Ljava/lang/String;JZ)V

    .line 14529
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 14530
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$setPasswordHistoryLength$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14491
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 14493
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 14495
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 14496
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14497
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordHistoryLength(Landroid/content/ComponentName;IZ)V

    .line 14498
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 14499
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$setPasswordMinimumLength$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14287
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 14289
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 14291
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 14292
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14293
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordMinimumLength(Landroid/content/ComponentName;IZ)V

    .line 14294
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 14295
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$setPasswordMinimumLetters$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14374
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 14376
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 14378
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 14379
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14380
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordMinimumLetters(Landroid/content/ComponentName;IZ)V

    .line 14381
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 14382
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$setPasswordMinimumLowerCase$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14345
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 14347
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 14349
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 14350
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14351
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordMinimumLowerCase(Landroid/content/ComponentName;IZ)V

    .line 14352
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 14353
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$setPasswordMinimumNonLetter$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14461
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 14463
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 14465
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 14466
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14467
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordMinimumNonLetter(Landroid/content/ComponentName;IZ)V

    .line 14468
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 14469
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$setPasswordMinimumNumeric$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14403
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 14405
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 14407
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 14408
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14409
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordMinimumNumeric(Landroid/content/ComponentName;IZ)V

    .line 14410
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 14411
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$setPasswordMinimumSymbols$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14432
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 14434
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 14436
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 14437
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14438
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordMinimumSymbols(Landroid/content/ComponentName;IZ)V

    .line 14439
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 14440
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$setPasswordMinimumUpperCase$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14316
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 14318
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 14320
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 14321
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14322
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordMinimumUpperCase(Landroid/content/ComponentName;IZ)V

    .line 14323
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 14324
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$setPasswordQuality$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14258
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 14260
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 14262
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 14263
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14264
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordQuality(Landroid/content/ComponentName;IZ)V

    .line 14265
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 14266
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$setPermissionGrantState$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15988
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/content/ComponentName;

    .line 15990
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 15992
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 15994
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 15996
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 15998
    sget-object v0, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/os/RemoteCallback;

    .line 15999
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16000
    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPermissionGrantState(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/RemoteCallback;)V

    .line 16001
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16002
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$setPermissionPolicy$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15973
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 15975
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 15977
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 15978
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15979
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPermissionPolicy(Landroid/content/ComponentName;Ljava/lang/String;I)V

    .line 15980
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15981
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$setPermittedInputMethods$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15424
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 15426
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 15428
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 15430
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 15431
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15432
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPermittedInputMethods(Landroid/content/ComponentName;Ljava/lang/String;Ljava/util/List;Z)Z

    move-result p1

    .line 15433
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15434
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 15435
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$setPolicy$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16738
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 16740
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 16742
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 16744
    sget-object v3, Landroid/app/admin/PolicyValueTransport;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/PolicyValueTransport;

    .line 16745
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16746
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPolicy(Ljava/lang/String;Ljava/lang/String;ILandroid/app/admin/PolicyValueTransport;)V

    .line 16747
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16748
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$setProfileOwnerOnOrganizationOwnedDevice$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16322
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 16324
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 16326
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 16327
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16328
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setProfileOwnerOnOrganizationOwnedDevice(Landroid/content/ComponentName;IZ)V

    .line 16329
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16330
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$setRequiredPasswordComplexity$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14584
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 14586
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 14588
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 14589
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14590
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setRequiredPasswordComplexity(Ljava/lang/String;IZ)V

    .line 14591
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 14592
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$setRequiredStrongAuthTimeout$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14680
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/content/ComponentName;

    .line 14682
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 14684
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 14686
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v6

    .line 14687
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14688
    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->setRequiredStrongAuthTimeout(Landroid/content/ComponentName;Ljava/lang/String;JZ)V

    .line 14689
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 14690
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$setResetPasswordToken$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16180
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 16182
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 16184
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 16185
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16186
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setResetPasswordToken(Landroid/content/ComponentName;Ljava/lang/String;[B)Z

    move-result p1

    .line 16187
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16188
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 16189
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$setScreenCaptureDisabled$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14814
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 14816
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 14818
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 14820
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 14821
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14822
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setScreenCaptureDisabled(Landroid/content/ComponentName;Ljava/lang/String;ZZ)V

    .line 14823
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 14824
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$setSecondaryLockscreenEnabled$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15624
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 15626
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 15628
    sget-object v2, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PersistableBundle;

    .line 15629
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15630
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setSecondaryLockscreenEnabled(Landroid/content/ComponentName;ZLandroid/os/PersistableBundle;)V

    .line 15631
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15632
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$setSecureSetting$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15702
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 15704
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 15706
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 15707
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15708
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setSecureSetting(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)V

    .line 15709
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15710
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$setSecurityLoggingEnabled$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16092
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 16094
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 16096
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 16097
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16098
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setSecurityLoggingEnabled(Landroid/content/ComponentName;Ljava/lang/String;Z)V

    .line 16099
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16100
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$setShortSupportMessage$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16045
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 16047
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 16049
    sget-object v2, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    .line 16050
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16051
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setShortSupportMessage(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 16052
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16053
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$setStatusBarDisabled$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15954
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 15956
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 15958
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 15959
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15960
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setStatusBarDisabled(Landroid/content/ComponentName;Ljava/lang/String;Z)Z

    move-result p1

    .line 15961
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15962
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 15963
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$setSystemSetting$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15686
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 15688
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 15690
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 15692
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 15693
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15694
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setSystemSetting(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 15695
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15696
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$setSystemUpdatePolicy$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15937
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 15939
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 15941
    sget-object v2, Landroid/app/admin/SystemUpdatePolicy;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/SystemUpdatePolicy;

    .line 15942
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15943
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setSystemUpdatePolicy(Landroid/content/ComponentName;Ljava/lang/String;Landroid/app/admin/SystemUpdatePolicy;)V

    .line 15944
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15945
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$setTime$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15732
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 15734
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 15736
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 15737
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15738
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setTime(Landroid/content/ComponentName;Ljava/lang/String;J)Z

    move-result p1

    .line 15739
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15740
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 15741
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$setTimeZone$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15747
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 15749
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 15751
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 15752
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15753
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setTimeZone(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    .line 15754
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15755
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 15756
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$setTrustAgentConfiguration$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15830
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/content/ComponentName;

    .line 15832
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 15834
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/content/ComponentName;

    .line 15836
    sget-object v0, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/os/PersistableBundle;

    .line 15838
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v6

    .line 15839
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15840
    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->setTrustAgentConfiguration(Landroid/content/ComponentName;Ljava/lang/String;Landroid/content/ComponentName;Landroid/os/PersistableBundle;Z)V

    .line 15841
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15842
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$setUninstallBlocked$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15778
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 15780
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 15782
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 15784
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 15785
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15786
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setUninstallBlocked(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 15787
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15788
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$setUsbDataSignalingEnabled$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16517
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 16519
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 16520
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16521
    invoke-virtual {p0, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setUsbDataSignalingEnabled(Ljava/lang/String;Z)V

    .line 16522
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16523
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$setUserControlDisabledPackages$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16419
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 16421
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 16423
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 16424
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16425
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setUserControlDisabledPackages(Landroid/content/ComponentName;Ljava/lang/String;Ljava/util/List;)V

    .line 16426
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16427
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$setUserRestriction$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15324
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/content/ComponentName;

    .line 15326
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 15328
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 15330
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 15332
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v6

    .line 15333
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15334
    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->setUserRestriction(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 15335
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15336
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$setUserRestrictionForUser$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15342
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 15344
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 15346
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 15348
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 15349
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15350
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setUserRestrictionForUser(Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 15351
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15352
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$setUserRestrictionGloballyFromSystem$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15359
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 15361
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 15363
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 15364
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15365
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setUserRestrictionGloballyFromSystem(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 15366
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15367
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$setWifiSsidPolicy$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16544
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 16546
    sget-object v1, Landroid/app/admin/WifiSsidPolicy;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/WifiSsidPolicy;

    .line 16547
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16548
    invoke-virtual {p0, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setWifiSsidPolicy(Ljava/lang/String;Landroid/app/admin/WifiSsidPolicy;)V

    .line 16549
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16550
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$startManagedQuickContact$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15801
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 15803
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 15805
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 15807
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    .line 15809
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/content/Intent;

    .line 15810
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15811
    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/app/admin/IDevicePolicyManager$Stub;->startManagedQuickContact(Ljava/lang/String;JZJLandroid/content/Intent;)V

    .line 15812
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15813
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$startViewCalendarEventInManagedProfile$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16362
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 16364
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 16366
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 16368
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 16370
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v8

    .line 16372
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 16373
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16374
    move-object v0, p0

    invoke-virtual/range {v0 .. v9}, Landroid/app/admin/IDevicePolicyManager$Stub;->startViewCalendarEventInManagedProfile(Ljava/lang/String;JJJZI)Z

    move-result p1

    .line 16375
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16376
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 16377
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$transferOwnership$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16249
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 16251
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 16253
    sget-object v2, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PersistableBundle;

    .line 16254
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16255
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->transferOwnership(Landroid/content/ComponentName;Landroid/content/ComponentName;Landroid/os/PersistableBundle;)V

    .line 16256
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16257
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$uninstallCaCerts$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15035
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 15037
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 15039
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 15040
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 15041
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->uninstallCaCerts(Landroid/content/ComponentName;Ljava/lang/String;[Ljava/lang/String;)V

    .line 15042
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 15043
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$updateOverrideApn$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16271
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 16273
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 16275
    sget-object v2, Landroid/telephony/data/ApnSetting;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/data/ApnSetting;

    .line 16276
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 16277
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->updateOverrideApn(Landroid/content/ComponentName;ILandroid/telephony/data/ApnSetting;)Z

    move-result p1

    .line 16278
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 16279
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 16280
    const/4 p1, 0x1

    return p1
.end method

.method private blacklist onTransact$wipeDataWithReason$(Landroid/os/Parcel;Landroid/os/Parcel;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14725
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 14727
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 14729
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 14731
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 14733
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 14734
    invoke-virtual {p1}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 14735
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/app/admin/IDevicePolicyManager$Stub;->wipeDataWithReason(Ljava/lang/String;ILjava/lang/String;ZZ)V

    .line 14736
    invoke-virtual {p2}, Landroid/os/Parcel;->writeNoException()V

    .line 14737
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 1581
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 16753
    const/16 v0, 0x1a4

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 3281
    invoke-static {p1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3285
    nop

    .line 3286
    const-string v0, "android.app.admin.IDevicePolicyManager"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_e

    const v2, 0xffffff

    if-gt p1, v2, :cond_e

    .line 3287
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3289
    :cond_e
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_17

    .line 3290
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3291
    return v1

    .line 3293
    :cond_17
    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_1910

    .line 6677
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 6673
    :pswitch_20
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setPolicy$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 6669
    :pswitch_25
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$getAppFunctionsPolicy$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 6665
    :pswitch_2a
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setAppFunctionsPolicy$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 6656
    :pswitch_2f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 6657
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6658
    invoke-virtual {p0, p1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getHeadlessDeviceOwnerMode(Ljava/lang/String;)I

    move-result p1

    .line 6659
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6660
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6661
    goto/16 :goto_18bf

    .line 6651
    :pswitch_42
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$getPolicySizeForAdmin$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 6642
    :pswitch_47
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 6643
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6644
    invoke-virtual {p0, p1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getMaxPolicyStorageLimit(Ljava/lang/String;)I

    move-result p1

    .line 6645
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6646
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6647
    goto/16 :goto_18bf

    .line 6637
    :pswitch_5a
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$forceSetMaxPolicyStorageLimit$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 6633
    :pswitch_5f
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setMaxPolicyStorageLimit$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 6624
    :pswitch_64
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 6625
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6626
    invoke-virtual {p0, p1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getSubscriptionIds(Ljava/lang/String;)[I

    move-result-object p1

    .line 6627
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6628
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 6629
    goto/16 :goto_18bf

    .line 6619
    :pswitch_77
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$getContentProtectionPolicy$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 6615
    :pswitch_7c
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setContentProtectionPolicy$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 6609
    :pswitch_81
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->calculateHasIncompatibleAccounts()V

    .line 6610
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6611
    goto/16 :goto_18bf

    .line 6600
    :pswitch_89
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 6601
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6602
    invoke-virtual {p0, p1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getFinancedDeviceKioskRoleHolder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 6603
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6604
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6605
    goto/16 :goto_18bf

    .line 6590
    :pswitch_9c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 6591
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6592
    invoke-virtual {p0, p1}, Landroid/app/admin/IDevicePolicyManager$Stub;->isDeviceFinanced(Ljava/lang/String;)Z

    move-result p1

    .line 6593
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6594
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6595
    goto/16 :goto_18bf

    .line 6580
    :pswitch_af
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 6581
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6582
    invoke-virtual {p0, p1}, Landroid/app/admin/IDevicePolicyManager$Stub;->triggerDevicePolicyEngineMigration(Z)Z

    move-result p1

    .line 6583
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6584
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6585
    goto/16 :goto_18bf

    .line 6572
    :pswitch_c2
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getDevicePolicyState()Landroid/app/admin/DevicePolicyState;

    move-result-object p1

    .line 6573
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6574
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 6575
    goto/16 :goto_18bf

    .line 6568
    :pswitch_ce
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$isSubscriptionEnterpriseManaged$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 6561
    :pswitch_d3
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getManagedSubscriptionsPolicy()Landroid/app/admin/ManagedSubscriptionsPolicy;

    move-result-object p1

    .line 6562
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6563
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 6564
    goto/16 :goto_18bf

    .line 6553
    :pswitch_df
    sget-object p1, Landroid/app/admin/ManagedSubscriptionsPolicy;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/admin/ManagedSubscriptionsPolicy;

    .line 6554
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6555
    invoke-virtual {p0, p1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setManagedSubscriptionsPolicy(Landroid/app/admin/ManagedSubscriptionsPolicy;)V

    .line 6556
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6557
    goto/16 :goto_18bf

    .line 6543
    :pswitch_f2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 6544
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6545
    invoke-virtual {p0, p1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getMtePolicy(Ljava/lang/String;)I

    move-result p1

    .line 6546
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6547
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6548
    goto/16 :goto_18bf

    .line 6538
    :pswitch_105
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setMtePolicyBySystem$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 6534
    :pswitch_10a
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setMtePolicy$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 6525
    :pswitch_10f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 6526
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6527
    invoke-virtual {p0, p1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getApplicationExemptions(Ljava/lang/String;)[I

    move-result-object p1

    .line 6528
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6529
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 6530
    goto/16 :goto_18bf

    .line 6520
    :pswitch_122
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setApplicationExemptions$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 6511
    :pswitch_127
    sget-object p1, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserHandle;

    .line 6512
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6513
    invoke-virtual {p0, p1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPolicyManagedProfiles(Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p1

    .line 6514
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6515
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 6516
    goto/16 :goto_18bf

    .line 6503
    :pswitch_13e
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->shouldAllowBypassingDevicePolicyManagementRoleQualification()Z

    move-result p1

    .line 6504
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6505
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6506
    goto/16 :goto_18bf

    .line 6497
    :pswitch_14a
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->resetShouldAllowBypassingDevicePolicyManagementRoleQualificationState()V

    .line 6498
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6499
    goto/16 :goto_18bf

    .line 6488
    :pswitch_152
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 6489
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6490
    invoke-virtual {p0, p1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getString(Ljava/lang/String;)Landroid/app/admin/ParcelableResource;

    move-result-object p1

    .line 6491
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6492
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 6493
    goto/16 :goto_18bf

    .line 6479
    :pswitch_165
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object p1

    .line 6480
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6481
    invoke-virtual {p0, p1}, Landroid/app/admin/IDevicePolicyManager$Stub;->resetStrings(Ljava/util/List;)V

    .line 6482
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6483
    goto/16 :goto_18bf

    .line 6470
    :pswitch_174
    sget-object p1, Landroid/app/admin/DevicePolicyStringResource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    .line 6471
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6472
    invoke-virtual {p0, p1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setStrings(Ljava/util/List;)V

    .line 6473
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6474
    goto/16 :goto_18bf

    .line 6461
    :pswitch_185
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 6462
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6463
    invoke-virtual {p0, p1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setDpcDownloaded(Z)V

    .line 6464
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6465
    goto/16 :goto_18bf

    .line 6453
    :pswitch_194
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->isDpcDownloaded()Z

    move-result p1

    .line 6454
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6455
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6456
    goto/16 :goto_18bf

    .line 6449
    :pswitch_1a0
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$getDrawable$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 6441
    :pswitch_1a5
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object p1

    .line 6442
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6443
    invoke-virtual {p0, p1}, Landroid/app/admin/IDevicePolicyManager$Stub;->resetDrawables(Ljava/util/List;)V

    .line 6444
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6445
    goto/16 :goto_18bf

    .line 6432
    :pswitch_1b4
    sget-object p1, Landroid/app/admin/DevicePolicyDrawableResource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    .line 6433
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6434
    invoke-virtual {p0, p1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setDrawables(Ljava/util/List;)V

    .line 6435
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6436
    goto/16 :goto_18bf

    .line 6424
    :pswitch_1c5
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->listForegroundAffiliatedUsers()Ljava/util/List;

    move-result-object p1

    .line 6425
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6426
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 6427
    goto/16 :goto_18bf

    .line 6415
    :pswitch_1d1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 6416
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6417
    invoke-virtual {p0, p1}, Landroid/app/admin/IDevicePolicyManager$Stub;->isDevicePotentiallyStolen(Ljava/lang/String;)Z

    move-result p1

    .line 6418
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6419
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6420
    goto/16 :goto_18bf

    .line 6405
    :pswitch_1e4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 6406
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6407
    invoke-virtual {p0, p1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getWifiSsidPolicy(Ljava/lang/String;)Landroid/app/admin/WifiSsidPolicy;

    move-result-object p1

    .line 6408
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6409
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 6410
    goto/16 :goto_18bf

    .line 6400
    :pswitch_1f7
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setWifiSsidPolicy$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 6393
    :pswitch_1fc
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getMinimumRequiredWifiSecurityLevel()I

    move-result p1

    .line 6394
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6395
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6396
    goto/16 :goto_18bf

    .line 6389
    :pswitch_208
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setMinimumRequiredWifiSecurityLevel$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 6382
    :pswitch_20d
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->canUsbDataSignalingBeDisabled()Z

    move-result p1

    .line 6383
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6384
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6385
    goto/16 :goto_18bf

    .line 6373
    :pswitch_219
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 6374
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6375
    invoke-virtual {p0, p1}, Landroid/app/admin/IDevicePolicyManager$Stub;->isUsbDataSignalingEnabled(Ljava/lang/String;)Z

    move-result p1

    .line 6376
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6377
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6378
    goto/16 :goto_18bf

    .line 6368
    :pswitch_22c
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setUsbDataSignalingEnabled$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 6361
    :pswitch_231
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->canAdminGrantSensorsPermissions()Z

    move-result p1

    .line 6362
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6363
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6364
    goto/16 :goto_18bf

    .line 6353
    :pswitch_23d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 6354
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6355
    invoke-virtual {p0, p1}, Landroid/app/admin/IDevicePolicyManager$Stub;->resetDefaultCrossProfileIntentFilters(I)V

    .line 6356
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6357
    goto/16 :goto_18bf

    .line 6343
    :pswitch_24c
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    .line 6344
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6345
    invoke-virtual {p0, p1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getDeviceOwnerType(Landroid/content/ComponentName;)I

    move-result p1

    .line 6346
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6347
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6348
    goto/16 :goto_18bf

    .line 6338
    :pswitch_263
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setDeviceOwnerType$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 6329
    :pswitch_268
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 6330
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6331
    invoke-virtual {p0, p1}, Landroid/app/admin/IDevicePolicyManager$Stub;->removeManagedProfile(I)Z

    move-result p1

    .line 6332
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6333
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6334
    goto/16 :goto_18bf

    .line 6324
    :pswitch_27b
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$finalizeWorkProfileProvisioning$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 6320
    :pswitch_280
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$provisionMultiUserDevice$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 6310
    :pswitch_285
    sget-object p1, Landroid/app/admin/FullyManagedDeviceProvisioningParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/admin/FullyManagedDeviceProvisioningParams;

    .line 6312
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 6313
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6314
    invoke-virtual {p0, p1, p4}, Landroid/app/admin/IDevicePolicyManager$Stub;->provisionFullyManagedDevice(Landroid/app/admin/FullyManagedDeviceProvisioningParams;Ljava/lang/String;)V

    .line 6315
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6316
    goto/16 :goto_18bf

    .line 6299
    :pswitch_29c
    sget-object p1, Landroid/app/admin/ManagedProfileProvisioningParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/admin/ManagedProfileProvisioningParams;

    .line 6301
    sget-object p4, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/os/UserHandle;

    .line 6302
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6303
    invoke-virtual {p0, p1, p4}, Landroid/app/admin/IDevicePolicyManager$Stub;->finalizeCreateManagedProfile(Landroid/app/admin/ManagedProfileProvisioningParams;Landroid/os/UserHandle;)V

    .line 6304
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6305
    goto/16 :goto_18bf

    .line 6287
    :pswitch_2b7
    sget-object p1, Landroid/app/admin/ManagedProfileProvisioningParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/admin/ManagedProfileProvisioningParams;

    .line 6289
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 6290
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6291
    invoke-virtual {p0, p1, p4}, Landroid/app/admin/IDevicePolicyManager$Stub;->createManagedProfile(Landroid/app/admin/ManagedProfileProvisioningParams;Ljava/lang/String;)Landroid/os/UserHandle;

    move-result-object p1

    .line 6292
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6293
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 6294
    goto/16 :goto_18bf

    .line 6275
    :pswitch_2d2
    sget-object p1, Landroid/app/admin/ManagedProfileProvisioningParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/admin/ManagedProfileProvisioningParams;

    .line 6277
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 6278
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6279
    invoke-virtual {p0, p1, p4}, Landroid/app/admin/IDevicePolicyManager$Stub;->createAndProvisionManagedProfile(Landroid/app/admin/ManagedProfileProvisioningParams;Ljava/lang/String;)Landroid/os/UserHandle;

    move-result-object p1

    .line 6280
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6281
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 6282
    goto/16 :goto_18bf

    .line 6270
    :pswitch_2ed
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setOrganizationIdForUser$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 6261
    :pswitch_2f2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 6262
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6263
    invoke-virtual {p0, p1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getEnrollmentSpecificId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 6264
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6265
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6266
    goto/16 :goto_18bf

    .line 6251
    :pswitch_305
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 6252
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6253
    invoke-virtual {p0, p1}, Landroid/app/admin/IDevicePolicyManager$Stub;->isSafeOperation(I)Z

    move-result p1

    .line 6254
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6255
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6256
    goto/16 :goto_18bf

    .line 6240
    :pswitch_318
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 6242
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 6243
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6244
    invoke-virtual {p0, p1, p4}, Landroid/app/admin/IDevicePolicyManager$Stub;->setNextOperationSafety(II)V

    .line 6245
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6246
    goto/16 :goto_18bf

    .line 6230
    :pswitch_32b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 6231
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6232
    invoke-virtual {p0, p1}, Landroid/app/admin/IDevicePolicyManager$Stub;->canProfileOwnerResetPasswordWhenLocked(I)Z

    move-result p1

    .line 6233
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6234
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6235
    goto/16 :goto_18bf

    .line 6222
    :pswitch_33e
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->isComplianceAcknowledgementRequired()Z

    move-result p1

    .line 6223
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6224
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6225
    goto/16 :goto_18bf

    .line 6216
    :pswitch_34a
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->acknowledgeDeviceCompliant()V

    .line 6217
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6218
    goto/16 :goto_18bf

    .line 6206
    :pswitch_352
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    .line 6208
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 6209
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6210
    invoke-virtual {p0, p1, v2, v3}, Landroid/app/admin/IDevicePolicyManager$Stub;->setManagedProfileMaximumTimeOff(Landroid/content/ComponentName;J)V

    .line 6211
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6212
    goto/16 :goto_18bf

    .line 6196
    :pswitch_369
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    .line 6197
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6198
    invoke-virtual {p0, p1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getManagedProfileMaximumTimeOff(Landroid/content/ComponentName;)J

    move-result-wide p1

    .line 6199
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6200
    invoke-virtual {p3, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 6201
    goto/16 :goto_18bf

    .line 6185
    :pswitch_380
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    .line 6187
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p4

    .line 6188
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6189
    invoke-virtual {p0, p1, p4}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPersonalAppsSuspended(Landroid/content/ComponentName;Z)V

    .line 6190
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6191
    goto/16 :goto_18bf

    .line 6175
    :pswitch_397
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    .line 6176
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6177
    invoke-virtual {p0, p1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPersonalAppsSuspendedReasons(Landroid/content/ComponentName;)I

    move-result p1

    .line 6178
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6179
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6180
    goto/16 :goto_18bf

    .line 6165
    :pswitch_3ae
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    .line 6166
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6167
    invoke-virtual {p0, p1}, Landroid/app/admin/IDevicePolicyManager$Stub;->isCommonCriteriaModeEnabled(Landroid/content/ComponentName;)Z

    move-result p1

    .line 6168
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6169
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6170
    goto/16 :goto_18bf

    .line 6160
    :pswitch_3c5
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setCommonCriteriaModeEnabled$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 6149
    :pswitch_3ca
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    .line 6151
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 6152
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6153
    invoke-virtual {p0, p1, p4}, Landroid/app/admin/IDevicePolicyManager$Stub;->getUserControlDisabledPackages(Landroid/content/ComponentName;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 6154
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6155
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 6156
    goto/16 :goto_18bf

    .line 6144
    :pswitch_3e5
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setUserControlDisabledPackages$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 6133
    :pswitch_3ea
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 6135
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 6136
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6137
    invoke-virtual {p0, p1, p4}, Landroid/app/admin/IDevicePolicyManager$Stub;->isKeyPairGrantedToWifiAuth(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    .line 6138
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6139
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6140
    goto/16 :goto_18bf

    .line 6128
    :pswitch_401
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setKeyGrantToWifiAuth$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 6117
    :pswitch_406
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 6119
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 6120
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6121
    invoke-virtual {p0, p1, p4}, Landroid/app/admin/IDevicePolicyManager$Stub;->getKeyPairGrants(Ljava/lang/String;Ljava/lang/String;)Landroid/app/admin/ParcelableGranteeMap;

    move-result-object p1

    .line 6122
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6123
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 6124
    goto/16 :goto_18bf

    .line 6112
    :pswitch_41d
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setKeyGrantForApp$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 6108
    :pswitch_422
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$startViewCalendarEventInManagedProfile$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 6101
    :pswitch_427
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->isUnattendedManagedKiosk()Z

    move-result p1

    .line 6102
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6103
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6104
    goto/16 :goto_18bf

    .line 6094
    :pswitch_433
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->isManagedKiosk()Z

    move-result p1

    .line 6095
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6096
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6097
    goto/16 :goto_18bf

    .line 6087
    :pswitch_43f
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getDefaultCrossProfilePackages()Ljava/util/List;

    move-result-object p1

    .line 6088
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6089
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 6090
    goto/16 :goto_18bf

    .line 6078
    :pswitch_44b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 6079
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6080
    invoke-virtual {p0, p1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAllCrossProfilePackages(I)Ljava/util/List;

    move-result-object p1

    .line 6081
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6082
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 6083
    goto/16 :goto_18bf

    .line 6068
    :pswitch_45e
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    .line 6069
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6070
    invoke-virtual {p0, p1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getCrossProfilePackages(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object p1

    .line 6071
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6072
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 6073
    goto/16 :goto_18bf

    .line 6057
    :pswitch_475
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    .line 6059
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object p4

    .line 6060
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6061
    invoke-virtual {p0, p1, p4}, Landroid/app/admin/IDevicePolicyManager$Stub;->setCrossProfilePackages(Landroid/content/ComponentName;Ljava/util/List;)V

    .line 6062
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6063
    goto/16 :goto_18bf

    .line 6047
    :pswitch_48c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 6048
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6049
    invoke-virtual {p0, p1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getCrossProfileCalendarPackagesForUser(I)Ljava/util/List;

    move-result-object p1

    .line 6050
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6051
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 6052
    goto/16 :goto_18bf

    .line 6035
    :pswitch_49f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 6037
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 6038
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6039
    invoke-virtual {p0, p1, p4}, Landroid/app/admin/IDevicePolicyManager$Stub;->isPackageAllowedToAccessCalendarForUser(Ljava/lang/String;I)Z

    move-result p1

    .line 6040
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6041
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6042
    goto/16 :goto_18bf

    .line 6025
    :pswitch_4b6
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    .line 6026
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6027
    invoke-virtual {p0, p1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getCrossProfileCalendarPackages(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object p1

    .line 6028
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6029
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 6030
    goto/16 :goto_18bf

    .line 6014
    :pswitch_4cd
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    .line 6016
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object p4

    .line 6017
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 6018
    invoke-virtual {p0, p1, p4}, Landroid/app/admin/IDevicePolicyManager$Stub;->setCrossProfileCalendarPackages(Landroid/content/ComponentName;Ljava/util/List;)V

    .line 6019
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6020
    goto/16 :goto_18bf

    .line 6009
    :pswitch_4e4
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$installUpdateFromFile$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 6005
    :pswitch_4e9
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setProfileOwnerOnOrganizationOwnedDevice$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 5996
    :pswitch_4ee
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    .line 5997
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5998
    invoke-virtual {p0, p1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getGlobalPrivateDnsHost(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object p1

    .line 5999
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 6000
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6001
    goto/16 :goto_18bf

    .line 5986
    :pswitch_505
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    .line 5987
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5988
    invoke-virtual {p0, p1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getGlobalPrivateDnsMode(Landroid/content/ComponentName;)I

    move-result p1

    .line 5989
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5990
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5991
    goto/16 :goto_18bf

    .line 5981
    :pswitch_51c
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setGlobalPrivateDns$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 5977
    :pswitch_521
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$isMeteredDataDisabledPackageForUser$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 5968
    :pswitch_526
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    .line 5969
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5970
    invoke-virtual {p0, p1}, Landroid/app/admin/IDevicePolicyManager$Stub;->isOverrideApnEnabled(Landroid/content/ComponentName;)Z

    move-result p1

    .line 5971
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5972
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5973
    goto/16 :goto_18bf

    .line 5957
    :pswitch_53d
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    .line 5959
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p4

    .line 5960
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5961
    invoke-virtual {p0, p1, p4}, Landroid/app/admin/IDevicePolicyManager$Stub;->setOverrideApnsEnabled(Landroid/content/ComponentName;Z)V

    .line 5962
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5963
    goto/16 :goto_18bf

    .line 5947
    :pswitch_554
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    .line 5948
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5949
    invoke-virtual {p0, p1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getOverrideApns(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object p1

    .line 5950
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5951
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 5952
    goto/16 :goto_18bf

    .line 5935
    :pswitch_56b
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    .line 5937
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 5938
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5939
    invoke-virtual {p0, p1, p4}, Landroid/app/admin/IDevicePolicyManager$Stub;->removeOverrideApn(Landroid/content/ComponentName;I)Z

    move-result p1

    .line 5940
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5941
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5942
    goto/16 :goto_18bf

    .line 5930
    :pswitch_586
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$updateOverrideApn$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 5919
    :pswitch_58b
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    .line 5921
    sget-object p4, Landroid/telephony/data/ApnSetting;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/telephony/data/ApnSetting;

    .line 5922
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5923
    invoke-virtual {p0, p1, p4}, Landroid/app/admin/IDevicePolicyManager$Stub;->addOverrideApn(Landroid/content/ComponentName;Landroid/telephony/data/ApnSetting;)I

    move-result p1

    .line 5924
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5925
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5926
    goto/16 :goto_18bf

    .line 5909
    :pswitch_5aa
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    .line 5910
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5911
    invoke-virtual {p0, p1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getMeteredDataDisabledPackages(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object p1

    .line 5912
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5913
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 5914
    goto/16 :goto_18bf

    .line 5897
    :pswitch_5c1
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    .line 5899
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object p4

    .line 5900
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5901
    invoke-virtual {p0, p1, p4}, Landroid/app/admin/IDevicePolicyManager$Stub;->setMeteredDataDisabledPackages(Landroid/content/ComponentName;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 5902
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5903
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 5904
    goto/16 :goto_18bf

    .line 5881
    :pswitch_5dc
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    .line 5882
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5883
    invoke-virtual {p0, p1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getEndUserSessionMessage(Landroid/content/ComponentName;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 5884
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5885
    if-eqz p1, :cond_5f8

    .line 5886
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5887
    invoke-static {p1, p3, v1}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    goto/16 :goto_18bf

    .line 5890
    :cond_5f8
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5892
    goto/16 :goto_18bf

    .line 5865
    :pswitch_5fd
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    .line 5866
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5867
    invoke-virtual {p0, p1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getStartUserSessionMessage(Landroid/content/ComponentName;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 5868
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5869
    if-eqz p1, :cond_619

    .line 5870
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5871
    invoke-static {p1, p3, v1}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    goto/16 :goto_18bf

    .line 5874
    :cond_619
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5876
    goto/16 :goto_18bf

    .line 5854
    :pswitch_61e
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    .line 5856
    sget-object p4, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/CharSequence;

    .line 5857
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5858
    invoke-virtual {p0, p1, p4}, Landroid/app/admin/IDevicePolicyManager$Stub;->setEndUserSessionMessage(Landroid/content/ComponentName;Ljava/lang/CharSequence;)V

    .line 5859
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5860
    goto/16 :goto_18bf

    .line 5843
    :pswitch_639
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    .line 5845
    sget-object p4, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/CharSequence;

    .line 5846
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5847
    invoke-virtual {p0, p1, p4}, Landroid/app/admin/IDevicePolicyManager$Stub;->setStartUserSessionMessage(Landroid/content/ComponentName;Ljava/lang/CharSequence;)V

    .line 5848
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5849
    goto/16 :goto_18bf

    .line 5835
    :pswitch_654
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getTransferOwnershipBundle()Landroid/os/PersistableBundle;

    move-result-object p1

    .line 5836
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5837
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 5838
    goto/16 :goto_18bf

    .line 5831
    :pswitch_660
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$transferOwnership$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 5827
    :pswitch_665
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$getDisallowedSystemApps$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 5820
    :pswitch_66a
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->isLogoutEnabled()Z

    move-result p1

    .line 5821
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5822
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5823
    goto/16 :goto_18bf

    .line 5810
    :pswitch_676
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    .line 5812
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p4

    .line 5813
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5814
    invoke-virtual {p0, p1, p4}, Landroid/app/admin/IDevicePolicyManager$Stub;->setLogoutEnabled(Landroid/content/ComponentName;Z)V

    .line 5815
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5816
    goto/16 :goto_18bf

    .line 5805
    :pswitch_68d
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$clearApplicationUserData$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 5796
    :pswitch_692
    sget-object p1, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserHandle;

    .line 5797
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5798
    invoke-virtual {p0, p1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getOwnerInstalledCaCerts(Landroid/os/UserHandle;)Landroid/content/pm/StringParceledListSlice;

    move-result-object p1

    .line 5799
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5800
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 5801
    goto/16 :goto_18bf

    .line 5788
    :pswitch_6a9
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->isCurrentInputMethodSetByOwner()Z

    move-result p1

    .line 5789
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5790
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5791
    goto/16 :goto_18bf

    .line 5784
    :pswitch_6b5
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$resetPasswordWithToken$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 5773
    :pswitch_6ba
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    .line 5775
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 5776
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5777
    invoke-virtual {p0, p1, p4}, Landroid/app/admin/IDevicePolicyManager$Stub;->isResetPasswordTokenActive(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result p1

    .line 5778
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5779
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5780
    goto/16 :goto_18bf

    .line 5761
    :pswitch_6d5
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    .line 5763
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 5764
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5765
    invoke-virtual {p0, p1, p4}, Landroid/app/admin/IDevicePolicyManager$Stub;->clearResetPasswordToken(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result p1

    .line 5766
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5767
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5768
    goto/16 :goto_18bf

    .line 5756
    :pswitch_6f0
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setResetPasswordToken$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 5749
    :pswitch_6f5
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getLastNetworkLogRetrievalTime()J

    move-result-wide p1

    .line 5750
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5751
    invoke-virtual {p3, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 5752
    goto/16 :goto_18bf

    .line 5742
    :pswitch_701
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getLastBugReportRequestTime()J

    move-result-wide p1

    .line 5743
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5744
    invoke-virtual {p3, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 5745
    goto/16 :goto_18bf

    .line 5735
    :pswitch_70d
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getLastSecurityLogRetrievalTime()J

    move-result-wide p1

    .line 5736
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5737
    invoke-virtual {p3, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 5738
    goto/16 :goto_18bf

    .line 5726
    :pswitch_719
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    .line 5727
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5728
    invoke-virtual {p0, p1}, Landroid/app/admin/IDevicePolicyManager$Stub;->isEphemeralUser(Landroid/content/ComponentName;)Z

    move-result p1

    .line 5729
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5730
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5731
    goto/16 :goto_18bf

    .line 5716
    :pswitch_730
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    .line 5717
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5718
    invoke-virtual {p0, p1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getBindDeviceAdminTargetUsers(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object p1

    .line 5719
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5720
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 5721
    goto/16 :goto_18bf

    .line 5711
    :pswitch_747
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$bindDeviceAdminServiceAsUser$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 5707
    :pswitch_74c
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$retrieveNetworkLogs$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 5696
    :pswitch_751
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    .line 5698
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 5699
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5700
    invoke-virtual {p0, p1, p4}, Landroid/app/admin/IDevicePolicyManager$Stub;->isNetworkLoggingEnabled(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result p1

    .line 5701
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5702
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5703
    goto/16 :goto_18bf

    .line 5691
    :pswitch_76c
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setNetworkLoggingEnabled$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 5682
    :pswitch_771
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    .line 5683
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5684
    invoke-virtual {p0, p1}, Landroid/app/admin/IDevicePolicyManager$Stub;->isBackupServiceEnabled(Landroid/content/ComponentName;)Z

    move-result p1

    .line 5685
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5686
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5687
    goto/16 :goto_18bf

    .line 5671
    :pswitch_788
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    .line 5673
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p4

    .line 5674
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5675
    invoke-virtual {p0, p1, p4}, Landroid/app/admin/IDevicePolicyManager$Stub;->setBackupServiceEnabled(Landroid/content/ComponentName;Z)V

    .line 5676
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5677
    goto/16 :goto_18bf

    .line 5662
    :pswitch_79f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 5663
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5664
    invoke-virtual {p0, p1}, Landroid/app/admin/IDevicePolicyManager$Stub;->forceUpdateUserSetupComplete(I)V

    .line 5665
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5666
    goto/16 :goto_18bf

    .line 5655
    :pswitch_7ae
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->setDeviceProvisioningConfigApplied()V

    .line 5656
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5657
    goto/16 :goto_18bf

    .line 5648
    :pswitch_7b6
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->isDeviceProvisioningConfigApplied()Z

    move-result p1

    .line 5649
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5650
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5651
    goto/16 :goto_18bf

    .line 5641
    :pswitch_7c2
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->isDeviceProvisioned()Z

    move-result p1

    .line 5642
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5643
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5644
    goto/16 :goto_18bf

    .line 5633
    :pswitch_7ce
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 5634
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5635
    invoke-virtual {p0, p1}, Landroid/app/admin/IDevicePolicyManager$Stub;->uninstallPackageWithActiveAdmins(Ljava/lang/String;)V

    .line 5636
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5637
    goto/16 :goto_18bf

    .line 5623
    :pswitch_7dd
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 5624
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5625
    invoke-virtual {p0, p1}, Landroid/app/admin/IDevicePolicyManager$Stub;->isUninstallInQueue(Ljava/lang/String;)Z

    move-result p1

    .line 5626
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5627
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5628
    goto/16 :goto_18bf

    .line 5612
    :pswitch_7f0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 5614
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static {p4}, Landroid/app/admin/IAuditLogEventsCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/admin/IAuditLogEventsCallback;

    move-result-object p4

    .line 5615
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5616
    invoke-virtual {p0, p1, p4}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAuditLogEventsCallback(Ljava/lang/String;Landroid/app/admin/IAuditLogEventsCallback;)V

    .line 5617
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5618
    goto/16 :goto_18bf

    .line 5602
    :pswitch_807
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 5603
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5604
    invoke-virtual {p0, p1}, Landroid/app/admin/IDevicePolicyManager$Stub;->isAuditLogEnabled(Ljava/lang/String;)Z

    move-result p1

    .line 5605
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5606
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5607
    goto/16 :goto_18bf

    .line 5591
    :pswitch_81a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 5593
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p4

    .line 5594
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5595
    invoke-virtual {p0, p1, p4}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAuditLogEnabled(Ljava/lang/String;Z)V

    .line 5596
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5597
    goto/16 :goto_18bf

    .line 5583
    :pswitch_82d
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->forceSecurityLogs()J

    move-result-wide p1

    .line 5584
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5585
    invoke-virtual {p3, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 5586
    goto/16 :goto_18bf

    .line 5576
    :pswitch_839
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->forceNetworkLogs()J

    move-result-wide p1

    .line 5577
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5578
    invoke-virtual {p3, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 5579
    goto/16 :goto_18bf

    .line 5565
    :pswitch_845
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    .line 5567
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 5568
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5569
    invoke-virtual {p0, p1, p4}, Landroid/app/admin/IDevicePolicyManager$Stub;->retrievePreRebootSecurityLogs(Landroid/content/ComponentName;Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object p1

    .line 5570
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5571
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 5572
    goto/16 :goto_18bf

    .line 5553
    :pswitch_860
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    .line 5555
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 5556
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5557
    invoke-virtual {p0, p1, p4}, Landroid/app/admin/IDevicePolicyManager$Stub;->retrieveSecurityLogs(Landroid/content/ComponentName;Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object p1

    .line 5558
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5559
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 5560
    goto/16 :goto_18bf

    .line 5541
    :pswitch_87b
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    .line 5543
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 5544
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5545
    invoke-virtual {p0, p1, p4}, Landroid/app/admin/IDevicePolicyManager$Stub;->isSecurityLoggingEnabled(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result p1

    .line 5546
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5547
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5548
    goto/16 :goto_18bf

    .line 5536
    :pswitch_896
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setSecurityLoggingEnabled$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 5527
    :pswitch_89b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 5528
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5529
    invoke-virtual {p0, p1}, Landroid/app/admin/IDevicePolicyManager$Stub;->isAffiliatedUser(I)Z

    move-result p1

    .line 5530
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5531
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5532
    goto/16 :goto_18bf

    .line 5519
    :pswitch_8ae
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->isCallingUserAffiliated()Z

    move-result p1

    .line 5520
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5521
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5522
    goto/16 :goto_18bf

    .line 5510
    :pswitch_8ba
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    .line 5511
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5512
    invoke-virtual {p0, p1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAffiliationIds(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object p1

    .line 5513
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5514
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 5515
    goto/16 :goto_18bf

    .line 5499
    :pswitch_8d1
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    .line 5501
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object p4

    .line 5502
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5503
    invoke-virtual {p0, p1, p4}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAffiliationIds(Landroid/content/ComponentName;Ljava/util/List;)V

    .line 5504
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5505
    goto/16 :goto_18bf

    .line 5488
    :pswitch_8e8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 5490
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 5491
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5492
    invoke-virtual {p0, p1, p4}, Landroid/app/admin/IDevicePolicyManager$Stub;->setUserProvisioningState(II)V

    .line 5493
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5494
    goto/16 :goto_18bf

    .line 5478
    :pswitch_8fb
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 5479
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5480
    invoke-virtual {p0, p1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getUserProvisioningState(I)I

    move-result p1

    .line 5481
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5482
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5483
    goto/16 :goto_18bf

    .line 5462
    :pswitch_90e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 5463
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5464
    invoke-virtual {p0, p1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getOrganizationNameForUser(I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 5465
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5466
    if-eqz p1, :cond_926

    .line 5467
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5468
    invoke-static {p1, p3, v1}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    goto/16 :goto_18bf

    .line 5471
    :cond_926
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5473
    goto/16 :goto_18bf

    .line 5448
    :pswitch_92b
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getDeviceOwnerOrganizationName()Ljava/lang/CharSequence;

    move-result-object p1

    .line 5449
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5450
    if-eqz p1, :cond_93c

    .line 5451
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5452
    invoke-static {p1, p3, v1}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    goto/16 :goto_18bf

    .line 5455
    :cond_93c
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5457
    goto/16 :goto_18bf

    .line 5431
    :pswitch_941
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    .line 5433
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 5434
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5435
    invoke-virtual {p0, p1, p4}, Landroid/app/admin/IDevicePolicyManager$Stub;->getOrganizationName(Landroid/content/ComponentName;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 5436
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5437
    if-eqz p1, :cond_961

    .line 5438
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5439
    invoke-static {p1, p3, v1}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    goto/16 :goto_18bf

    .line 5442
    :cond_961
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5444
    goto/16 :goto_18bf

    .line 5426
    :pswitch_966
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setOrganizationName$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 5417
    :pswitch_96b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 5418
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5419
    invoke-virtual {p0, p1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getOrganizationColorForUser(I)I

    move-result p1

    .line 5420
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5421
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5422
    goto/16 :goto_18bf

    .line 5407
    :pswitch_97e
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    .line 5408
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5409
    invoke-virtual {p0, p1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getOrganizationColor(Landroid/content/ComponentName;)I

    move-result p1

    .line 5410
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5411
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5412
    goto/16 :goto_18bf

    .line 5398
    :pswitch_995
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 5399
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5400
    invoke-virtual {p0, p1}, Landroid/app/admin/IDevicePolicyManager$Stub;->clearOrganizationIdForUser(I)V

    .line 5401
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5402
    goto/16 :goto_18bf

    .line 5387
    :pswitch_9a4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 5389
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 5390
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5391
    invoke-virtual {p0, p1, p4}, Landroid/app/admin/IDevicePolicyManager$Stub;->setOrganizationColorForUser(II)V

    .line 5392
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5393
    goto/16 :goto_18bf

    .line 5376
    :pswitch_9b7
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    .line 5378
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 5379
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5380
    invoke-virtual {p0, p1, p4}, Landroid/app/admin/IDevicePolicyManager$Stub;->setOrganizationColor(Landroid/content/ComponentName;I)V

    .line 5381
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5382
    goto/16 :goto_18bf

    .line 5358
    :pswitch_9ce
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    .line 5360
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 5361
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5362
    invoke-virtual {p0, p1, p4}, Landroid/app/admin/IDevicePolicyManager$Stub;->getLongSupportMessageForUser(Landroid/content/ComponentName;I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 5363
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5364
    if-eqz p1, :cond_9ee

    .line 5365
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5366
    invoke-static {p1, p3, v1}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    goto/16 :goto_18bf

    .line 5369
    :cond_9ee
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5371
    goto/16 :goto_18bf

    .line 5340
    :pswitch_9f3
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    .line 5342
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 5343
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5344
    invoke-virtual {p0, p1, p4}, Landroid/app/admin/IDevicePolicyManager$Stub;->getShortSupportMessageForUser(Landroid/content/ComponentName;I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 5345
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5346
    if-eqz p1, :cond_a13

    .line 5347
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5348
    invoke-static {p1, p3, v1}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    goto/16 :goto_18bf

    .line 5351
    :cond_a13
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5353
    goto/16 :goto_18bf

    .line 5324
    :pswitch_a18
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    .line 5325
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5326
    invoke-virtual {p0, p1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getLongSupportMessage(Landroid/content/ComponentName;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 5327
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5328
    if-eqz p1, :cond_a34

    .line 5329
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5330
    invoke-static {p1, p3, v1}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    goto/16 :goto_18bf

    .line 5333
    :cond_a34
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5335
    goto/16 :goto_18bf

    .line 5313
    :pswitch_a39
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    .line 5315
    sget-object p4, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/CharSequence;

    .line 5316
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5317
    invoke-virtual {p0, p1, p4}, Landroid/app/admin/IDevicePolicyManager$Stub;->setLongSupportMessage(Landroid/content/ComponentName;Ljava/lang/CharSequence;)V

    .line 5318
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5319
    goto/16 :goto_18bf

    .line 5295
    :pswitch_a54
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    .line 5297
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 5298
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5299
    invoke-virtual {p0, p1, p4}, Landroid/app/admin/IDevicePolicyManager$Stub;->getShortSupportMessage(Landroid/content/ComponentName;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 5300
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5301
    if-eqz p1, :cond_a74

    .line 5302
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5303
    invoke-static {p1, p3, v1}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    goto/16 :goto_18bf

    .line 5306
    :cond_a74
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5308
    goto/16 :goto_18bf

    .line 5290
    :pswitch_a79
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setShortSupportMessage$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 5282
    :pswitch_a7e
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    .line 5283
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5284
    invoke-virtual {p0, p1}, Landroid/app/admin/IDevicePolicyManager$Stub;->reboot(Landroid/content/ComponentName;)V

    .line 5285
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5286
    goto/16 :goto_18bf

    .line 5270
    :pswitch_a91
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    .line 5272
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 5273
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5274
    invoke-virtual {p0, p1, p4}, Landroid/app/admin/IDevicePolicyManager$Stub;->getWifiMacAddress(Landroid/content/ComponentName;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 5275
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5276
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5277
    goto/16 :goto_18bf

    .line 5260
    :pswitch_aac
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    .line 5261
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5262
    invoke-virtual {p0, p1}, Landroid/app/admin/IDevicePolicyManager$Stub;->isManagedProfile(Landroid/content/ComponentName;)Z

    move-result p1

    .line 5263
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5264
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5265
    goto/16 :goto_18bf

    .line 5248
    :pswitch_ac3
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    .line 5250
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 5251
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5252
    invoke-virtual {p0, p1, p4}, Landroid/app/admin/IDevicePolicyManager$Stub;->getKeepUninstalledPackages(Landroid/content/ComponentName;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 5253
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5254
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 5255
    goto/16 :goto_18bf

    .line 5243
    :pswitch_ade
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setKeepUninstalledPackages$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 5232
    :pswitch_ae3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 5234
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 5235
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5236
    invoke-virtual {p0, p1, p4}, Landroid/app/admin/IDevicePolicyManager$Stub;->checkProvisioningPrecondition(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 5237
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5238
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5239
    goto/16 :goto_18bf

    .line 5220
    :pswitch_afa
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 5222
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 5223
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5224
    invoke-virtual {p0, p1, p4}, Landroid/app/admin/IDevicePolicyManager$Stub;->isProvisioningAllowed(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    .line 5225
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5226
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5227
    goto/16 :goto_18bf

    .line 5215
    :pswitch_b11
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$getPermissionGrantState$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 5211
    :pswitch_b16
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setPermissionGrantState$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 5202
    :pswitch_b1b
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    .line 5203
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5204
    invoke-virtual {p0, p1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPermissionPolicy(Landroid/content/ComponentName;)I

    move-result p1

    .line 5205
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5206
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5207
    goto/16 :goto_18bf

    .line 5197
    :pswitch_b32
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setPermissionPolicy$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 5186
    :pswitch_b37
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    .line 5188
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 5189
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5190
    invoke-virtual {p0, p1, p4}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPendingSystemUpdate(Landroid/content/ComponentName;Ljava/lang/String;)Landroid/app/admin/SystemUpdateInfo;

    move-result-object p1

    .line 5191
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5192
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 5193
    goto/16 :goto_18bf

    .line 5177
    :pswitch_b52
    sget-object p1, Landroid/app/admin/SystemUpdateInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/admin/SystemUpdateInfo;

    .line 5178
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5179
    invoke-virtual {p0, p1}, Landroid/app/admin/IDevicePolicyManager$Stub;->notifyPendingSystemUpdate(Landroid/app/admin/SystemUpdateInfo;)V

    .line 5180
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5181
    goto/16 :goto_18bf

    .line 5169
    :pswitch_b65
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getDoNotAskCredentialsOnBoot()Z

    move-result p1

    .line 5170
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5171
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5172
    goto/16 :goto_18bf

    .line 5160
    :pswitch_b71
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 5161
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5162
    invoke-virtual {p0, p1}, Landroid/app/admin/IDevicePolicyManager$Stub;->isStatusBarDisabled(Ljava/lang/String;)Z

    move-result p1

    .line 5163
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5164
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5165
    goto/16 :goto_18bf

    .line 5155
    :pswitch_b84
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setStatusBarDisabled$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 5144
    :pswitch_b89
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    .line 5146
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p4

    .line 5147
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5148
    invoke-virtual {p0, p1, p4}, Landroid/app/admin/IDevicePolicyManager$Stub;->setKeyguardDisabled(Landroid/content/ComponentName;Z)Z

    move-result p1

    .line 5149
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5150
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5151
    goto/16 :goto_18bf

    .line 5137
    :pswitch_ba4
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->clearSystemUpdatePolicyFreezePeriodRecord()V

    .line 5138
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5139
    goto/16 :goto_18bf

    .line 5130
    :pswitch_bac
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getSystemUpdatePolicy()Landroid/app/admin/SystemUpdatePolicy;

    move-result-object p1

    .line 5131
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5132
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 5133
    goto/16 :goto_18bf

    .line 5126
    :pswitch_bb8
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setSystemUpdatePolicy$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 5116
    :pswitch_bbd
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    .line 5118
    sget-object p4, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/graphics/Bitmap;

    .line 5119
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5120
    invoke-virtual {p0, p1, p4}, Landroid/app/admin/IDevicePolicyManager$Stub;->setUserIcon(Landroid/content/ComponentName;Landroid/graphics/Bitmap;)V

    .line 5121
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5122
    goto/16 :goto_18bf

    .line 5104
    :pswitch_bd8
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    .line 5106
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 5107
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5108
    invoke-virtual {p0, p1, p4}, Landroid/app/admin/IDevicePolicyManager$Stub;->isRemovingAdmin(Landroid/content/ComponentName;I)Z

    move-result p1

    .line 5109
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5110
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5111
    goto/16 :goto_18bf

    .line 5094
    :pswitch_bf3
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    .line 5095
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5096
    invoke-virtual {p0, p1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getForceEphemeralUsers(Landroid/content/ComponentName;)Z

    move-result p1

    .line 5097
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5098
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5099
    goto/16 :goto_18bf

    .line 5083
    :pswitch_c0a
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    .line 5085
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p4

    .line 5086
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5087
    invoke-virtual {p0, p1, p4}, Landroid/app/admin/IDevicePolicyManager$Stub;->setForceEphemeralUsers(Landroid/content/ComponentName;Z)V

    .line 5088
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5089
    goto/16 :goto_18bf

    .line 5073
    :pswitch_c21
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 5074
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5075
    invoke-virtual {p0, p1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAutoTimeZonePolicy(Ljava/lang/String;)I

    move-result p1

    .line 5076
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5077
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5078
    goto/16 :goto_18bf

    .line 5062
    :pswitch_c34
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 5064
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 5065
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5066
    invoke-virtual {p0, p1, p4}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAutoTimeZonePolicy(Ljava/lang/String;I)V

    .line 5067
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5068
    goto/16 :goto_18bf

    .line 5050
    :pswitch_c47
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    .line 5052
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 5053
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5054
    invoke-virtual {p0, p1, p4}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAutoTimeZoneEnabled(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result p1

    .line 5055
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5056
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5057
    goto/16 :goto_18bf

    .line 5045
    :pswitch_c62
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setAutoTimeZoneEnabled$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 5036
    :pswitch_c67
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 5037
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5038
    invoke-virtual {p0, p1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAutoTimePolicy(Ljava/lang/String;)I

    move-result p1

    .line 5039
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5040
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5041
    goto/16 :goto_18bf

    .line 5025
    :pswitch_c7a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 5027
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 5028
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5029
    invoke-virtual {p0, p1, p4}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAutoTimePolicy(Ljava/lang/String;I)V

    .line 5030
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5031
    goto/16 :goto_18bf

    .line 5013
    :pswitch_c8d
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    .line 5015
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 5016
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 5017
    invoke-virtual {p0, p1, p4}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAutoTimeEnabled(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result p1

    .line 5018
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5019
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5020
    goto/16 :goto_18bf

    .line 5008
    :pswitch_ca8
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setAutoTimeEnabled$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 5001
    :pswitch_cad
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAutoTimeRequired()Z

    move-result p1

    .line 5002
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 5003
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5004
    goto/16 :goto_18bf

    .line 4991
    :pswitch_cb9
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    .line 4993
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p4

    .line 4994
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4995
    invoke-virtual {p0, p1, p4}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAutoTimeRequired(Landroid/content/ComponentName;Z)V

    .line 4996
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4997
    goto/16 :goto_18bf

    .line 4979
    :pswitch_cd0
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    .line 4981
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 4982
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4983
    invoke-virtual {p0, p1, p4}, Landroid/app/admin/IDevicePolicyManager$Stub;->getCrossProfileWidgetProviders(Landroid/content/ComponentName;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 4984
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4985
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 4986
    goto/16 :goto_18bf

    .line 4974
    :pswitch_ceb
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$removeCrossProfileWidgetProvider$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 4964
    :pswitch_cf0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 4966
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object p4

    .line 4967
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4968
    invoke-virtual {p0, p1, p4}, Landroid/app/admin/IDevicePolicyManager$Stub;->setCrossProfileWidgetProviders(Ljava/lang/String;Ljava/util/List;)V

    .line 4969
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4970
    goto/16 :goto_18bf

    .line 4959
    :pswitch_d03
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$addCrossProfileWidgetProvider$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 4955
    :pswitch_d08
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$getTrustAgentConfiguration$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 4951
    :pswitch_d0d
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setTrustAgentConfiguration$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 4942
    :pswitch_d12
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 4943
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4944
    invoke-virtual {p0, p1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getBluetoothContactSharingDisabledForUser(I)Z

    move-result p1

    .line 4945
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4946
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4947
    goto/16 :goto_18bf

    .line 4932
    :pswitch_d25
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    .line 4933
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4934
    invoke-virtual {p0, p1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getBluetoothContactSharingDisabled(Landroid/content/ComponentName;)Z

    move-result p1

    .line 4935
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4936
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4937
    goto/16 :goto_18bf

    .line 4921
    :pswitch_d3c
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    .line 4923
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p4

    .line 4924
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4925
    invoke-virtual {p0, p1, p4}, Landroid/app/admin/IDevicePolicyManager$Stub;->setBluetoothContactSharingDisabled(Landroid/content/ComponentName;Z)V

    .line 4926
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4927
    goto/16 :goto_18bf

    .line 4909
    :pswitch_d53
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 4911
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 4912
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4913
    invoke-virtual {p0, p1, p4}, Landroid/app/admin/IDevicePolicyManager$Stub;->hasManagedProfileContactsAccess(ILjava/lang/String;)Z

    move-result p1

    .line 4914
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4915
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4916
    goto/16 :goto_18bf

    .line 4901
    :pswitch_d6a
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getManagedProfileContactsAccessPolicy()Landroid/app/admin/PackagePolicy;

    move-result-object p1

    .line 4902
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4903
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 4904
    goto/16 :goto_18bf

    .line 4893
    :pswitch_d76
    sget-object p1, Landroid/app/admin/PackagePolicy;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/admin/PackagePolicy;

    .line 4894
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4895
    invoke-virtual {p0, p1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setManagedProfileContactsAccessPolicy(Landroid/app/admin/PackagePolicy;)V

    .line 4896
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4897
    goto/16 :goto_18bf

    .line 4883
    :pswitch_d89
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 4884
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4885
    invoke-virtual {p0, p1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getCredentialManagerPolicy(I)Landroid/app/admin/PackagePolicy;

    move-result-object p1

    .line 4886
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4887
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 4888
    goto/16 :goto_18bf

    .line 4874
    :pswitch_d9c
    sget-object p1, Landroid/app/admin/PackagePolicy;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/admin/PackagePolicy;

    .line 4875
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4876
    invoke-virtual {p0, p1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setCredentialManagerPolicy(Landroid/app/admin/PackagePolicy;)V

    .line 4877
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4878
    goto/16 :goto_18bf

    .line 4862
    :pswitch_daf
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 4864
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 4865
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4866
    invoke-virtual {p0, p1, p4}, Landroid/app/admin/IDevicePolicyManager$Stub;->hasManagedProfileCallerIdAccess(ILjava/lang/String;)Z

    move-result p1

    .line 4867
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4868
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4869
    goto/16 :goto_18bf

    .line 4854
    :pswitch_dc6
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getManagedProfileCallerIdAccessPolicy()Landroid/app/admin/PackagePolicy;

    move-result-object p1

    .line 4855
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4856
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 4857
    goto/16 :goto_18bf

    .line 4846
    :pswitch_dd2
    sget-object p1, Landroid/app/admin/PackagePolicy;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/admin/PackagePolicy;

    .line 4847
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4848
    invoke-virtual {p0, p1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setManagedProfileCallerIdAccessPolicy(Landroid/app/admin/PackagePolicy;)V

    .line 4849
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4850
    goto/16 :goto_18bf

    .line 4841
    :pswitch_de5
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$startManagedQuickContact$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 4832
    :pswitch_dea
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 4833
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4834
    invoke-virtual {p0, p1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getCrossProfileContactsSearchDisabledForUser(I)Z

    move-result p1

    .line 4835
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4836
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4837
    goto/16 :goto_18bf

    .line 4822
    :pswitch_dfd
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    .line 4823
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4824
    invoke-virtual {p0, p1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getCrossProfileContactsSearchDisabled(Landroid/content/ComponentName;)Z

    move-result p1

    .line 4825
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4826
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4827
    goto/16 :goto_18bf

    .line 4811
    :pswitch_e14
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    .line 4813
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p4

    .line 4814
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4815
    invoke-virtual {p0, p1, p4}, Landroid/app/admin/IDevicePolicyManager$Stub;->setCrossProfileContactsSearchDisabled(Landroid/content/ComponentName;Z)V

    .line 4816
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4817
    goto/16 :goto_18bf

    .line 4801
    :pswitch_e2b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 4802
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4803
    invoke-virtual {p0, p1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getCrossProfileCallerIdDisabledForUser(I)Z

    move-result p1

    .line 4804
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4805
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4806
    goto/16 :goto_18bf

    .line 4791
    :pswitch_e3e
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    .line 4792
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4793
    invoke-virtual {p0, p1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getCrossProfileCallerIdDisabled(Landroid/content/ComponentName;)Z

    move-result p1

    .line 4794
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4795
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4796
    goto/16 :goto_18bf

    .line 4780
    :pswitch_e55
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    .line 4782
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p4

    .line 4783
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4784
    invoke-virtual {p0, p1, p4}, Landroid/app/admin/IDevicePolicyManager$Stub;->setCrossProfileCallerIdDisabled(Landroid/content/ComponentName;Z)V

    .line 4785
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4786
    goto/16 :goto_18bf

    .line 4770
    :pswitch_e6c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 4771
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4772
    invoke-virtual {p0, p1}, Landroid/app/admin/IDevicePolicyManager$Stub;->isUninstallBlocked(Ljava/lang/String;)Z

    move-result p1

    .line 4773
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4774
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4775
    goto/16 :goto_18bf

    .line 4765
    :pswitch_e7f
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setUninstallBlocked$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 4761
    :pswitch_e84
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$notifyLockTaskModeChanged$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 4752
    :pswitch_e89
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    .line 4753
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4754
    invoke-virtual {p0, p1}, Landroid/app/admin/IDevicePolicyManager$Stub;->isMasterVolumeMuted(Landroid/content/ComponentName;)Z

    move-result p1

    .line 4755
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4756
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4757
    goto/16 :goto_18bf

    .line 4741
    :pswitch_ea0
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    .line 4743
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p4

    .line 4744
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4745
    invoke-virtual {p0, p1, p4}, Landroid/app/admin/IDevicePolicyManager$Stub;->setMasterVolumeMuted(Landroid/content/ComponentName;Z)V

    .line 4746
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4747
    goto/16 :goto_18bf

    .line 4736
    :pswitch_eb7
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setTimeZone$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 4732
    :pswitch_ebc
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setTime$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 4722
    :pswitch_ec1
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    .line 4724
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p4

    .line 4725
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4726
    invoke-virtual {p0, p1, p4}, Landroid/app/admin/IDevicePolicyManager$Stub;->setLocationEnabled(Landroid/content/ComponentName;Z)V

    .line 4727
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4728
    goto/16 :goto_18bf

    .line 4712
    :pswitch_ed8
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    .line 4713
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4714
    invoke-virtual {p0, p1}, Landroid/app/admin/IDevicePolicyManager$Stub;->hasLockdownAdminConfiguredNetworks(Landroid/content/ComponentName;)Z

    move-result p1

    .line 4715
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4716
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4717
    goto/16 :goto_18bf

    .line 4707
    :pswitch_eef
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setConfiguredNetworksLockdownState$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 4703
    :pswitch_ef4
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setSecureSetting$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 4699
    :pswitch_ef9
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setSystemSetting$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 4695
    :pswitch_efe
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setGlobalSetting$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 4684
    :pswitch_f03
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    .line 4686
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 4687
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4688
    invoke-virtual {p0, p1, p4}, Landroid/app/admin/IDevicePolicyManager$Stub;->getLockTaskFeatures(Landroid/content/ComponentName;Ljava/lang/String;)I

    move-result p1

    .line 4689
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4690
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4691
    goto/16 :goto_18bf

    .line 4679
    :pswitch_f1e
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setLockTaskFeatures$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 4670
    :pswitch_f23
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 4671
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4672
    invoke-virtual {p0, p1}, Landroid/app/admin/IDevicePolicyManager$Stub;->isLockTaskPermitted(Ljava/lang/String;)Z

    move-result p1

    .line 4673
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4674
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4675
    goto/16 :goto_18bf

    .line 4658
    :pswitch_f36
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    .line 4660
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 4661
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4662
    invoke-virtual {p0, p1, p4}, Landroid/app/admin/IDevicePolicyManager$Stub;->getLockTaskPackages(Landroid/content/ComponentName;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 4663
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4664
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 4665
    goto/16 :goto_18bf

    .line 4653
    :pswitch_f51
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setLockTaskPackages$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 4646
    :pswitch_f56
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPreferentialNetworkServiceConfigs()Ljava/util/List;

    move-result-object p1

    .line 4647
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4648
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 4649
    goto/16 :goto_18bf

    .line 4638
    :pswitch_f62
    sget-object p1, Landroid/app/admin/PreferentialNetworkServiceConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    .line 4639
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4640
    invoke-virtual {p0, p1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPreferentialNetworkServiceConfigs(Ljava/util/List;)V

    .line 4641
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4642
    goto/16 :goto_18bf

    .line 4628
    :pswitch_f73
    sget-object p1, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserHandle;

    .line 4629
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4630
    invoke-virtual {p0, p1}, Landroid/app/admin/IDevicePolicyManager$Stub;->isSecondaryLockscreenEnabled(Landroid/os/UserHandle;)Z

    move-result p1

    .line 4631
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4632
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4633
    goto/16 :goto_18bf

    .line 4623
    :pswitch_f8a
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setSecondaryLockscreenEnabled$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 4619
    :pswitch_f8f
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$getAccountTypesWithManagementDisabledAsUser$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 4610
    :pswitch_f94
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 4611
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4612
    invoke-virtual {p0, p1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAccountTypesWithManagementDisabled(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 4613
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4614
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 4615
    goto/16 :goto_18bf

    .line 4605
    :pswitch_fa7
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setAccountManagementDisabled$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 4601
    :pswitch_fac
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$installExistingPackage$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 4597
    :pswitch_fb1
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$enableSystemAppWithIntent$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 4593
    :pswitch_fb6
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$enableSystemApp$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 4584
    :pswitch_fbb
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 4585
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4586
    invoke-virtual {p0, p1}, Landroid/app/admin/IDevicePolicyManager$Stub;->isNewUserDisclaimerAcknowledged(I)Z

    move-result p1

    .line 4587
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4588
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4589
    goto/16 :goto_18bf

    .line 4575
    :pswitch_fce
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 4576
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4577
    invoke-virtual {p0, p1}, Landroid/app/admin/IDevicePolicyManager$Stub;->acknowledgeNewUserDisclaimer(I)V

    .line 4578
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4579
    goto/16 :goto_18bf

    .line 4565
    :pswitch_fdd
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    .line 4566
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4567
    invoke-virtual {p0, p1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getSecondaryUsers(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object p1

    .line 4568
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4569
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 4570
    goto/16 :goto_18bf

    .line 4557
    :pswitch_ff4
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getLogoutUserId()I

    move-result p1

    .line 4558
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4559
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4560
    goto/16 :goto_18bf

    .line 4550
    :pswitch_1000
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->logoutUserInternal()I

    move-result p1

    .line 4551
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4552
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4553
    goto/16 :goto_18bf

    .line 4541
    :pswitch_100c
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    .line 4542
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4543
    invoke-virtual {p0, p1}, Landroid/app/admin/IDevicePolicyManager$Stub;->logoutUser(Landroid/content/ComponentName;)I

    move-result p1

    .line 4544
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4545
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4546
    goto/16 :goto_18bf

    .line 4529
    :pswitch_1023
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    .line 4531
    sget-object p4, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/os/UserHandle;

    .line 4532
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4533
    invoke-virtual {p0, p1, p4}, Landroid/app/admin/IDevicePolicyManager$Stub;->stopUser(Landroid/content/ComponentName;Landroid/os/UserHandle;)I

    move-result p1

    .line 4534
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4535
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4536
    goto/16 :goto_18bf

    .line 4517
    :pswitch_1042
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    .line 4519
    sget-object p4, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/os/UserHandle;

    .line 4520
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4521
    invoke-virtual {p0, p1, p4}, Landroid/app/admin/IDevicePolicyManager$Stub;->startUserInBackground(Landroid/content/ComponentName;Landroid/os/UserHandle;)I

    move-result p1

    .line 4522
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4523
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4524
    goto/16 :goto_18bf

    .line 4505
    :pswitch_1061
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    .line 4507
    sget-object p4, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/os/UserHandle;

    .line 4508
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4509
    invoke-virtual {p0, p1, p4}, Landroid/app/admin/IDevicePolicyManager$Stub;->switchUser(Landroid/content/ComponentName;Landroid/os/UserHandle;)Z

    move-result p1

    .line 4510
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4511
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4512
    goto/16 :goto_18bf

    .line 4493
    :pswitch_1080
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    .line 4495
    sget-object p4, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/os/UserHandle;

    .line 4496
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4497
    invoke-virtual {p0, p1, p4}, Landroid/app/admin/IDevicePolicyManager$Stub;->removeUser(Landroid/content/ComponentName;Landroid/os/UserHandle;)Z

    move-result p1

    .line 4498
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4499
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4500
    goto/16 :goto_18bf

    .line 4488
    :pswitch_109f
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$createAndManageUser$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 4484
    :pswitch_10a4
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$isApplicationHidden$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 4480
    :pswitch_10a9
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setApplicationHidden$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 4469
    :pswitch_10ae
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 4471
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 4472
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4473
    invoke-virtual {p0, p1, p4}, Landroid/app/admin/IDevicePolicyManager$Stub;->getEnforcingAdminsForPolicy(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p1

    .line 4474
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4475
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 4476
    goto/16 :goto_18bf

    .line 4457
    :pswitch_10c5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 4459
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 4460
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4461
    invoke-virtual {p0, p1, p4}, Landroid/app/admin/IDevicePolicyManager$Stub;->getEnforcingAdmin(ILjava/lang/String;)Landroid/app/admin/EnforcingAdmin;

    move-result-object p1

    .line 4462
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4463
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 4464
    goto/16 :goto_18bf

    .line 4445
    :pswitch_10dc
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 4447
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 4448
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4449
    invoke-virtual {p0, p1, p4}, Landroid/app/admin/IDevicePolicyManager$Stub;->getEnforcingAdminAndUserDetails(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 4450
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4451
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 4452
    goto/16 :goto_18bf

    .line 4435
    :pswitch_10f3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 4436
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4437
    invoke-virtual {p0, p1}, Landroid/app/admin/IDevicePolicyManager$Stub;->createAdminSupportIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 4438
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4439
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 4440
    goto/16 :goto_18bf

    .line 4423
    :pswitch_1106
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 4425
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 4426
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4427
    invoke-virtual {p0, p1, p4}, Landroid/app/admin/IDevicePolicyManager$Stub;->isNotificationListenerServicePermitted(Ljava/lang/String;I)Z

    move-result p1

    .line 4428
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4429
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4430
    goto/16 :goto_18bf

    .line 4413
    :pswitch_111d
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    .line 4414
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4415
    invoke-virtual {p0, p1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPermittedCrossProfileNotificationListeners(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object p1

    .line 4416
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4417
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 4418
    goto/16 :goto_18bf

    .line 4401
    :pswitch_1134
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    .line 4403
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object p4

    .line 4404
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4405
    invoke-virtual {p0, p1, p4}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPermittedCrossProfileNotificationListeners(Landroid/content/ComponentName;Ljava/util/List;)Z

    move-result p1

    .line 4406
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4407
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4408
    goto/16 :goto_18bf

    .line 4396
    :pswitch_114f
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$isInputMethodPermittedByAdmin$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 4387
    :pswitch_1154
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 4388
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4389
    invoke-virtual {p0, p1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPermittedInputMethodsAsUser(I)Ljava/util/List;

    move-result-object p1

    .line 4390
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4391
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 4392
    goto/16 :goto_18bf

    .line 4382
    :pswitch_1167
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$getPermittedInputMethods$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 4378
    :pswitch_116c
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setPermittedInputMethods$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 4374
    :pswitch_1171
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$isAccessibilityServicePermittedByAdmin$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 4365
    :pswitch_1176
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 4366
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4367
    invoke-virtual {p0, p1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPermittedAccessibilityServicesForUser(I)Ljava/util/List;

    move-result-object p1

    .line 4368
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4369
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 4370
    goto/16 :goto_18bf

    .line 4355
    :pswitch_1189
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    .line 4356
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4357
    invoke-virtual {p0, p1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPermittedAccessibilityServices(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object p1

    .line 4358
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4359
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 4360
    goto/16 :goto_18bf

    .line 4343
    :pswitch_11a0
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    .line 4345
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object p4

    .line 4346
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4347
    invoke-virtual {p0, p1, p4}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPermittedAccessibilityServices(Landroid/content/ComponentName;Ljava/util/List;)Z

    move-result p1

    .line 4348
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4349
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4350
    goto/16 :goto_18bf

    .line 4332
    :pswitch_11bb
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    .line 4334
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 4335
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4336
    invoke-virtual {p0, p1, p4}, Landroid/app/admin/IDevicePolicyManager$Stub;->clearCrossProfileIntentFilters(Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 4337
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4338
    goto/16 :goto_18bf

    .line 4327
    :pswitch_11d2
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$addCrossProfileIntentFilter$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 4318
    :pswitch_11d7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 4319
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4320
    invoke-virtual {p0, p1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getUserRestrictionsGlobally(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 4321
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4322
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 4323
    goto/16 :goto_18bf

    .line 4313
    :pswitch_11ea
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$getUserRestrictions$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 4309
    :pswitch_11ef
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setUserRestrictionGloballyFromSystem$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 4299
    :pswitch_11f4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 4301
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 4302
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4303
    invoke-virtual {p0, p1, p4}, Landroid/app/admin/IDevicePolicyManager$Stub;->setUserRestrictionGlobally(Ljava/lang/String;Ljava/lang/String;)V

    .line 4304
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4305
    goto/16 :goto_18bf

    .line 4294
    :pswitch_1207
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setUserRestrictionForUser$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 4290
    :pswitch_120c
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setUserRestriction$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 4281
    :pswitch_1211
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 4282
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4283
    invoke-virtual {p0, p1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getRestrictionsProvider(I)Landroid/content/ComponentName;

    move-result-object p1

    .line 4284
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4285
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 4286
    goto/16 :goto_18bf

    .line 4270
    :pswitch_1224
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    .line 4272
    sget-object p4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/content/ComponentName;

    .line 4273
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4274
    invoke-virtual {p0, p1, p4}, Landroid/app/admin/IDevicePolicyManager$Stub;->setRestrictionsProvider(Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 4275
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4276
    goto/16 :goto_18bf

    .line 4260
    :pswitch_123f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 4261
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4262
    invoke-virtual {p0, p1}, Landroid/app/admin/IDevicePolicyManager$Stub;->isCallerApplicationRestrictionsManagingPackage(Ljava/lang/String;)Z

    move-result p1

    .line 4263
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4264
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4265
    goto/16 :goto_18bf

    .line 4255
    :pswitch_1252
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$getApplicationRestrictionsBySystem$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 4251
    :pswitch_1257
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setApplicationRestrictionsBySystem$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 4242
    :pswitch_125c
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    .line 4243
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4244
    invoke-virtual {p0, p1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getApplicationRestrictionsManagingPackage(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object p1

    .line 4245
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4246
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4247
    goto/16 :goto_18bf

    .line 4230
    :pswitch_1273
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    .line 4232
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 4233
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4234
    invoke-virtual {p0, p1, p4}, Landroid/app/admin/IDevicePolicyManager$Stub;->setApplicationRestrictionsManagingPackage(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result p1

    .line 4235
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4236
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4237
    goto/16 :goto_18bf

    .line 4225
    :pswitch_128e
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$getApplicationRestrictions$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 4221
    :pswitch_1293
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setApplicationRestrictions$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 4213
    :pswitch_1298
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 4214
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4215
    invoke-virtual {p0, p1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setDefaultDialerApplication(Ljava/lang/String;)V

    .line 4216
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4217
    goto/16 :goto_18bf

    .line 4208
    :pswitch_12a7
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setDefaultSmsApplication$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 4204
    :pswitch_12ac
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$clearPackagePersistentPreferredActivities$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 4200
    :pswitch_12b1
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$addPersistentPreferredActivity$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 4191
    :pswitch_12b6
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    .line 4192
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4193
    invoke-virtual {p0, p1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAlwaysOnVpnLockdownAllowlist(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object p1

    .line 4194
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4195
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 4196
    goto/16 :goto_18bf

    .line 4181
    :pswitch_12cd
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 4182
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4183
    invoke-virtual {p0, p1}, Landroid/app/admin/IDevicePolicyManager$Stub;->isAlwaysOnVpnLockdownEnabledForUser(I)Z

    move-result p1

    .line 4184
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4185
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4186
    goto/16 :goto_18bf

    .line 4171
    :pswitch_12e0
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    .line 4172
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4173
    invoke-virtual {p0, p1}, Landroid/app/admin/IDevicePolicyManager$Stub;->isAlwaysOnVpnLockdownEnabled(Landroid/content/ComponentName;)Z

    move-result p1

    .line 4174
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4175
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4176
    goto/16 :goto_18bf

    .line 4161
    :pswitch_12f7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 4162
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4163
    invoke-virtual {p0, p1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAlwaysOnVpnPackageForUser(I)Ljava/lang/String;

    move-result-object p1

    .line 4164
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4165
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4166
    goto/16 :goto_18bf

    .line 4151
    :pswitch_130a
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    .line 4152
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4153
    invoke-virtual {p0, p1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAlwaysOnVpnPackage(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object p1

    .line 4154
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4155
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4156
    goto/16 :goto_18bf

    .line 4146
    :pswitch_1321
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setAlwaysOnVpnPackage$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 4137
    :pswitch_1326
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    .line 4138
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4139
    invoke-virtual {p0, p1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getCertInstallerPackage(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object p1

    .line 4140
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4141
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4142
    goto/16 :goto_18bf

    .line 4126
    :pswitch_133d
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    .line 4128
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 4129
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4130
    invoke-virtual {p0, p1, p4}, Landroid/app/admin/IDevicePolicyManager$Stub;->setCertInstallerPackage(Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 4131
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4132
    goto/16 :goto_18bf

    .line 4114
    :pswitch_1354
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    .line 4116
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 4117
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4118
    invoke-virtual {p0, p1, p4}, Landroid/app/admin/IDevicePolicyManager$Stub;->getDelegatePackages(Landroid/content/ComponentName;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 4119
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4120
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 4121
    goto/16 :goto_18bf

    .line 4102
    :pswitch_136f
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    .line 4104
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 4105
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4106
    invoke-virtual {p0, p1, p4}, Landroid/app/admin/IDevicePolicyManager$Stub;->getDelegatedScopes(Landroid/content/ComponentName;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 4107
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4108
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 4109
    goto/16 :goto_18bf

    .line 4097
    :pswitch_138a
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setDelegatedScopes$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 4093
    :pswitch_138f
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$choosePrivateKeyAlias$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 4089
    :pswitch_1394
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setKeyPairCertificate$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 4085
    :pswitch_1399
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$generateKeyPair$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 4074
    :pswitch_139e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 4076
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 4077
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4078
    invoke-virtual {p0, p1, p4}, Landroid/app/admin/IDevicePolicyManager$Stub;->hasKeyPair(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    .line 4079
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4080
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4081
    goto/16 :goto_18bf

    .line 4069
    :pswitch_13b5
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$removeKeyPair$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 4065
    :pswitch_13ba
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$installKeyPair$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 4054
    :pswitch_13bf
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 4056
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 4057
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4058
    invoke-virtual {p0, p1, p4}, Landroid/app/admin/IDevicePolicyManager$Stub;->isCaCertApproved(Ljava/lang/String;I)Z

    move-result p1

    .line 4059
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4060
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4061
    goto/16 :goto_18bf

    .line 4049
    :pswitch_13d6
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$approveCaCert$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 4039
    :pswitch_13db
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    .line 4041
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 4042
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4043
    invoke-virtual {p0, p1, p4}, Landroid/app/admin/IDevicePolicyManager$Stub;->enforceCanManageCaCerts(Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 4044
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4045
    goto/16 :goto_18bf

    .line 4034
    :pswitch_13f2
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$uninstallCaCerts$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 4030
    :pswitch_13f7
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$installCaCert$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 4023
    :pswitch_13fc
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->listPolicyExemptApps()Ljava/util/List;

    move-result-object p1

    .line 4024
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4025
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 4026
    goto/16 :goto_18bf

    .line 4019
    :pswitch_1408
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$isPackageSuspended$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 4015
    :pswitch_140d
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setPackagesSuspended$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 4002
    :pswitch_1412
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getDeviceOwnerLockScreenInfo()Ljava/lang/CharSequence;

    move-result-object p1

    .line 4003
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4004
    if-eqz p1, :cond_1423

    .line 4005
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4006
    invoke-static {p1, p3, v1}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    goto/16 :goto_18bf

    .line 4009
    :cond_1423
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4011
    goto/16 :goto_18bf

    .line 3992
    :pswitch_1428
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    .line 3994
    sget-object p4, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/CharSequence;

    .line 3995
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3996
    invoke-virtual {p0, p1, p4}, Landroid/app/admin/IDevicePolicyManager$Stub;->setDeviceOwnerLockScreenInfo(Landroid/content/ComponentName;Ljava/lang/CharSequence;)V

    .line 3997
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3998
    goto/16 :goto_18bf

    .line 3987
    :pswitch_1443
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$checkDeviceIdentifierAccess$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 3980
    :pswitch_1448
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->isOrganizationOwnedDeviceWithManagedProfile()Z

    move-result p1

    .line 3981
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3982
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3983
    goto/16 :goto_18bf

    .line 3973
    :pswitch_1454
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->hasUserSetupCompleted()Z

    move-result p1

    .line 3974
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3975
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3976
    goto/16 :goto_18bf

    .line 3965
    :pswitch_1460
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    .line 3966
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3967
    invoke-virtual {p0, p1}, Landroid/app/admin/IDevicePolicyManager$Stub;->clearProfileOwner(Landroid/content/ComponentName;)V

    .line 3968
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3969
    goto/16 :goto_18bf

    .line 3954
    :pswitch_1473
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    .line 3956
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 3957
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3958
    invoke-virtual {p0, p1, p4}, Landroid/app/admin/IDevicePolicyManager$Stub;->setProfileName(Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 3959
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3960
    goto/16 :goto_18bf

    .line 3945
    :pswitch_148a
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    .line 3946
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3947
    invoke-virtual {p0, p1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setProfileEnabled(Landroid/content/ComponentName;)V

    .line 3948
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3949
    goto/16 :goto_18bf

    .line 3935
    :pswitch_149d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 3936
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3937
    invoke-virtual {p0, p1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getProfileOwnerName(I)Ljava/lang/String;

    move-result-object p1

    .line 3938
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3939
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3940
    goto/16 :goto_18bf

    .line 3925
    :pswitch_14b0
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    .line 3926
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3927
    invoke-virtual {p0, p1}, Landroid/app/admin/IDevicePolicyManager$Stub;->isSupervisionComponent(Landroid/content/ComponentName;)Z

    move-result p1

    .line 3928
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3929
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3930
    goto/16 :goto_18bf

    .line 3915
    :pswitch_14c7
    sget-object p1, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserHandle;

    .line 3916
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3917
    invoke-virtual {p0, p1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getProfileOwnerOrDeviceOwnerSupervisionComponent(Landroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object p1

    .line 3918
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3919
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3920
    goto/16 :goto_18bf

    .line 3905
    :pswitch_14de
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 3906
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3907
    invoke-virtual {p0, p1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getProfileOwnerAsUser(I)Landroid/content/ComponentName;

    move-result-object p1

    .line 3908
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3909
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3910
    goto/16 :goto_18bf

    .line 3893
    :pswitch_14f1
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    .line 3895
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 3896
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3897
    invoke-virtual {p0, p1, p4}, Landroid/app/admin/IDevicePolicyManager$Stub;->setProfileOwner(Landroid/content/ComponentName;I)Z

    move-result p1

    .line 3898
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3899
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3900
    goto/16 :goto_18bf

    .line 3885
    :pswitch_150c
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->isDeviceManaged()Z

    move-result p1

    .line 3886
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3887
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3888
    goto/16 :goto_18bf

    .line 3878
    :pswitch_1518
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getDeviceOwnerUserId()I

    move-result p1

    .line 3879
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3880
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3881
    goto/16 :goto_18bf

    .line 3870
    :pswitch_1524
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3871
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3872
    invoke-virtual {p0, p1}, Landroid/app/admin/IDevicePolicyManager$Stub;->clearDeviceOwner(Ljava/lang/String;)V

    .line 3873
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3874
    goto/16 :goto_18bf

    .line 3862
    :pswitch_1533
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getDeviceOwnerName()Ljava/lang/String;

    move-result-object p1

    .line 3863
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3864
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3865
    goto/16 :goto_18bf

    .line 3855
    :pswitch_153f
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->hasDeviceOwner()Z

    move-result p1

    .line 3856
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3857
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3858
    goto/16 :goto_18bf

    .line 3846
    :pswitch_154b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 3847
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3848
    invoke-virtual {p0, p1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getDeviceOwnerComponentOnUser(I)Landroid/content/ComponentName;

    move-result-object p1

    .line 3849
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3850
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3851
    goto/16 :goto_18bf

    .line 3836
    :pswitch_155e
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 3837
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3838
    invoke-virtual {p0, p1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getDeviceOwnerComponent(Z)Landroid/content/ComponentName;

    move-result-object p1

    .line 3839
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3840
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3841
    goto/16 :goto_18bf

    .line 3831
    :pswitch_1571
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setDeviceOwner$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 3823
    :pswitch_1576
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 3824
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3825
    invoke-virtual {p0, p1}, Landroid/app/admin/IDevicePolicyManager$Stub;->reportKeyguardSecured(I)V

    .line 3826
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3827
    goto/16 :goto_18bf

    .line 3814
    :pswitch_1585
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 3815
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3816
    invoke-virtual {p0, p1}, Landroid/app/admin/IDevicePolicyManager$Stub;->reportKeyguardDismissed(I)V

    .line 3817
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3818
    goto/16 :goto_18bf

    .line 3805
    :pswitch_1594
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 3806
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3807
    invoke-virtual {p0, p1}, Landroid/app/admin/IDevicePolicyManager$Stub;->reportSuccessfulBiometricAttempt(I)V

    .line 3808
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3809
    goto/16 :goto_18bf

    .line 3796
    :pswitch_15a3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 3797
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3798
    invoke-virtual {p0, p1}, Landroid/app/admin/IDevicePolicyManager$Stub;->reportFailedBiometricAttempt(I)V

    .line 3799
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3800
    goto/16 :goto_18bf

    .line 3787
    :pswitch_15b2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 3788
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3789
    invoke-virtual {p0, p1}, Landroid/app/admin/IDevicePolicyManager$Stub;->reportSuccessfulPasswordAttempt(I)V

    .line 3790
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3791
    goto/16 :goto_18bf

    .line 3776
    :pswitch_15c1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 3778
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p4

    .line 3779
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3780
    invoke-virtual {p0, p1, p4}, Landroid/app/admin/IDevicePolicyManager$Stub;->reportFailedPasswordAttempt(IZ)V

    .line 3781
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3782
    goto/16 :goto_18bf

    .line 3765
    :pswitch_15d4
    sget-object p1, Landroid/app/admin/PasswordMetrics;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/admin/PasswordMetrics;

    .line 3767
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 3768
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3769
    invoke-virtual {p0, p1, p4}, Landroid/app/admin/IDevicePolicyManager$Stub;->reportPasswordChanged(Landroid/app/admin/PasswordMetrics;I)V

    .line 3770
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3771
    goto/16 :goto_18bf

    .line 3760
    :pswitch_15eb
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$hasGrantedPolicy$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 3752
    :pswitch_15f0
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    .line 3753
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3754
    invoke-virtual {p0, p1}, Landroid/app/admin/IDevicePolicyManager$Stub;->clearMultiUserDeviceManagement(Landroid/content/ComponentName;)V

    .line 3755
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3756
    goto/16 :goto_18bf

    .line 3741
    :pswitch_1603
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    .line 3743
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 3744
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3745
    invoke-virtual {p0, p1, p4}, Landroid/app/admin/IDevicePolicyManager$Stub;->forceRemoveActiveAdmin(Landroid/content/ComponentName;I)V

    .line 3746
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3747
    goto/16 :goto_18bf

    .line 3730
    :pswitch_161a
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    .line 3732
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 3733
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3734
    invoke-virtual {p0, p1, p4}, Landroid/app/admin/IDevicePolicyManager$Stub;->removeActiveAdmin(Landroid/content/ComponentName;I)V

    .line 3735
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3736
    goto/16 :goto_18bf

    .line 3725
    :pswitch_1631
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$getRemoveWarning$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 3714
    :pswitch_1636
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3716
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 3717
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3718
    invoke-virtual {p0, p1, p4}, Landroid/app/admin/IDevicePolicyManager$Stub;->packageHasActiveAdmins(Ljava/lang/String;I)Z

    move-result p1

    .line 3719
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3720
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3721
    goto/16 :goto_18bf

    .line 3704
    :pswitch_164d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 3705
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3706
    invoke-virtual {p0, p1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getActiveAdmins(I)Ljava/util/List;

    move-result-object p1

    .line 3707
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3708
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 3709
    goto/16 :goto_18bf

    .line 3692
    :pswitch_1660
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    .line 3694
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 3695
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3696
    invoke-virtual {p0, p1, p4}, Landroid/app/admin/IDevicePolicyManager$Stub;->isAdminActive(Landroid/content/ComponentName;I)Z

    move-result p1

    .line 3697
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3698
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3699
    goto/16 :goto_18bf

    .line 3687
    :pswitch_167b
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setActiveAdmin$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 3683
    :pswitch_1680
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$getKeyguardDisabledFeatures$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 3679
    :pswitch_1685
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setKeyguardDisabledFeatures$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 3670
    :pswitch_168a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 3671
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3672
    invoke-virtual {p0, p1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getNearbyAppStreamingPolicy(I)I

    move-result p1

    .line 3673
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3674
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3675
    goto/16 :goto_18bf

    .line 3661
    :pswitch_169d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 3662
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3663
    invoke-virtual {p0, p1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setNearbyAppStreamingPolicy(I)V

    .line 3664
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3665
    goto/16 :goto_18bf

    .line 3651
    :pswitch_16ac
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 3652
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3653
    invoke-virtual {p0, p1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getNearbyNotificationStreamingPolicy(I)I

    move-result p1

    .line 3654
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3655
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3656
    goto/16 :goto_18bf

    .line 3642
    :pswitch_16bf
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 3643
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3644
    invoke-virtual {p0, p1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setNearbyNotificationStreamingPolicy(I)V

    .line 3645
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3646
    goto/16 :goto_18bf

    .line 3637
    :pswitch_16ce
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$getScreenCaptureDisabled$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 3633
    :pswitch_16d3
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setScreenCaptureDisabled$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 3629
    :pswitch_16d8
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$getCameraDisabled$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 3625
    :pswitch_16dd
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setCameraDisabled$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 3616
    :pswitch_16e2
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    .line 3617
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3618
    invoke-virtual {p0, p1}, Landroid/app/admin/IDevicePolicyManager$Stub;->requestBugreport(Landroid/content/ComponentName;)Z

    move-result p1

    .line 3619
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3620
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3621
    goto/16 :goto_18bf

    .line 3604
    :pswitch_16f9
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3606
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 3607
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3608
    invoke-virtual {p0, p1, p4}, Landroid/app/admin/IDevicePolicyManager$Stub;->getStorageEncryptionStatus(Ljava/lang/String;I)I

    move-result p1

    .line 3609
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3610
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3611
    goto/16 :goto_18bf

    .line 3592
    :pswitch_1710
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    .line 3594
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 3595
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3596
    invoke-virtual {p0, p1, p4}, Landroid/app/admin/IDevicePolicyManager$Stub;->getStorageEncryption(Landroid/content/ComponentName;I)Z

    move-result p1

    .line 3597
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3598
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3599
    goto/16 :goto_18bf

    .line 3580
    :pswitch_172b
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    .line 3582
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p4

    .line 3583
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3584
    invoke-virtual {p0, p1, p4}, Landroid/app/admin/IDevicePolicyManager$Stub;->setStorageEncryption(Landroid/content/ComponentName;Z)I

    move-result p1

    .line 3585
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3586
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3587
    goto/16 :goto_18bf

    .line 3569
    :pswitch_1746
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    .line 3571
    sget-object p4, Landroid/net/ProxyInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/net/ProxyInfo;

    .line 3572
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3573
    invoke-virtual {p0, p1, p4}, Landroid/app/admin/IDevicePolicyManager$Stub;->setRecommendedGlobalProxy(Landroid/content/ComponentName;Landroid/net/ProxyInfo;)V

    .line 3574
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3575
    goto/16 :goto_18bf

    .line 3559
    :pswitch_1761
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 3560
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3561
    invoke-virtual {p0, p1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getGlobalProxyAdmin(I)Landroid/content/ComponentName;

    move-result-object p1

    .line 3562
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3563
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3564
    goto/16 :goto_18bf

    .line 3554
    :pswitch_1774
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setGlobalProxy$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 3546
    :pswitch_1779
    sget-object p1, Lcom/android/internal/infra/AndroidFuture;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/infra/AndroidFuture;

    .line 3547
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3548
    invoke-virtual {p0, p1}, Landroid/app/admin/IDevicePolicyManager$Stub;->sendLostModeLocationUpdate(Lcom/android/internal/infra/AndroidFuture;)V

    .line 3549
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3550
    goto/16 :goto_18bf

    .line 3538
    :pswitch_178c
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->isFactoryResetProtectionPolicySupported()Z

    move-result p1

    .line 3539
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3540
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3541
    goto/16 :goto_18bf

    .line 3529
    :pswitch_1798
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    .line 3530
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3531
    invoke-virtual {p0, p1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getFactoryResetProtectionPolicy(Landroid/content/ComponentName;)Landroid/app/admin/FactoryResetProtectionPolicy;

    move-result-object p1

    .line 3532
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3533
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3534
    goto/16 :goto_18bf

    .line 3524
    :pswitch_17af
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setFactoryResetProtectionPolicy$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 3520
    :pswitch_17b4
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$wipeDataWithReason$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 3516
    :pswitch_17b9
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$lockNow$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 3512
    :pswitch_17be
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$getRequiredStrongAuthTimeout$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 3508
    :pswitch_17c3
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setRequiredStrongAuthTimeout$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 3504
    :pswitch_17c8
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$getMaximumTimeToLock$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 3500
    :pswitch_17cd
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setMaximumTimeToLock$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 3489
    :pswitch_17d2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3491
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 3492
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3493
    invoke-virtual {p0, p1, p4}, Landroid/app/admin/IDevicePolicyManager$Stub;->resetPassword(Ljava/lang/String;I)Z

    move-result p1

    .line 3494
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3495
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3496
    goto/16 :goto_18bf

    .line 3484
    :pswitch_17e9
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$getMaximumFailedPasswordsForWipe$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 3480
    :pswitch_17ee
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setMaximumFailedPasswordsForWipe$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 3469
    :pswitch_17f3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 3471
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p4

    .line 3472
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3473
    invoke-virtual {p0, p1, p4}, Landroid/app/admin/IDevicePolicyManager$Stub;->getProfileWithMinimumFailedPasswordsForWipe(IZ)I

    move-result p1

    .line 3474
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3475
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3476
    goto/16 :goto_18bf

    .line 3464
    :pswitch_180a
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$getCurrentFailedPasswordAttempts$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 3455
    :pswitch_180f
    sget-object p1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    .line 3456
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3457
    invoke-virtual {p0, p1}, Landroid/app/admin/IDevicePolicyManager$Stub;->isUsingUnifiedPassword(Landroid/content/ComponentName;)Z

    move-result p1

    .line 3458
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3459
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3460
    goto/16 :goto_18bf

    .line 3443
    :pswitch_1826
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 3445
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p4

    .line 3446
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3447
    invoke-virtual {p0, p1, p4}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAggregatedPasswordComplexityForUser(IZ)I

    move-result p1

    .line 3448
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3449
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3450
    goto/16 :goto_18bf

    .line 3431
    :pswitch_183d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 3433
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p4

    .line 3434
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3435
    invoke-virtual {p0, p1, p4}, Landroid/app/admin/IDevicePolicyManager$Stub;->getRequiredPasswordComplexity(Ljava/lang/String;Z)I

    move-result p1

    .line 3436
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3437
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3438
    goto :goto_18bf

    .line 3426
    :pswitch_1853
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setRequiredPasswordComplexity$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 3417
    :pswitch_1858
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 3418
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3419
    invoke-virtual {p0, p1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordComplexity(Z)I

    move-result p1

    .line 3420
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3421
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3422
    goto :goto_18bf

    .line 3405
    :pswitch_186a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 3407
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 3408
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3409
    invoke-virtual {p0, p1, p4}, Landroid/app/admin/IDevicePolicyManager$Stub;->isPasswordSufficientAfterProfileUnification(II)Z

    move-result p1

    .line 3410
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3411
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3412
    goto :goto_18bf

    .line 3397
    :pswitch_1880
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->isActivePasswordSufficientForDeviceRequirement()Z

    move-result p1

    .line 3398
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3399
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3400
    goto :goto_18bf

    .line 3393
    :pswitch_188b
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$isActivePasswordSufficient$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 3389
    :pswitch_1890
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$getPasswordExpiration$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 3385
    :pswitch_1895
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$getPasswordExpirationTimeout$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 3381
    :pswitch_189a
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setPasswordExpirationTimeout$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 3377
    :pswitch_189f
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$getPasswordHistoryLength$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 3373
    :pswitch_18a4
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setPasswordHistoryLength$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 3362
    :pswitch_18a9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 3364
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p4

    .line 3365
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3366
    invoke-virtual {p0, p1, p4}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordMinimumMetrics(IZ)Landroid/app/admin/PasswordMetrics;

    move-result-object p1

    .line 3367
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3368
    invoke-virtual {p3, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3369
    nop

    .line 6680
    :goto_18bf
    return v1

    .line 3357
    :pswitch_18c0
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$getPasswordMinimumNonLetter$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 3353
    :pswitch_18c5
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setPasswordMinimumNonLetter$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 3349
    :pswitch_18ca
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$getPasswordMinimumSymbols$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 3345
    :pswitch_18cf
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setPasswordMinimumSymbols$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 3341
    :pswitch_18d4
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$getPasswordMinimumNumeric$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 3337
    :pswitch_18d9
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setPasswordMinimumNumeric$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 3333
    :pswitch_18de
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$getPasswordMinimumLetters$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 3329
    :pswitch_18e3
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setPasswordMinimumLetters$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 3325
    :pswitch_18e8
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$getPasswordMinimumLowerCase$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 3321
    :pswitch_18ed
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setPasswordMinimumLowerCase$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 3317
    :pswitch_18f2
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$getPasswordMinimumUpperCase$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 3313
    :pswitch_18f7
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setPasswordMinimumUpperCase$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 3309
    :pswitch_18fc
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$getPasswordMinimumLength$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 3305
    :pswitch_1901
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setPasswordMinimumLength$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 3301
    :pswitch_1906
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$getPasswordQuality$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    .line 3297
    :pswitch_190b
    invoke-direct {p0, p2, p3}, Landroid/app/admin/IDevicePolicyManager$Stub;->onTransact$setPasswordQuality$(Landroid/os/Parcel;Landroid/os/Parcel;)Z

    move-result p1

    return p1

    :pswitch_data_1910
    .packed-switch 0x1
        :pswitch_190b
        :pswitch_1906
        :pswitch_1901
        :pswitch_18fc
        :pswitch_18f7
        :pswitch_18f2
        :pswitch_18ed
        :pswitch_18e8
        :pswitch_18e3
        :pswitch_18de
        :pswitch_18d9
        :pswitch_18d4
        :pswitch_18cf
        :pswitch_18ca
        :pswitch_18c5
        :pswitch_18c0
        :pswitch_18a9
        :pswitch_18a4
        :pswitch_189f
        :pswitch_189a
        :pswitch_1895
        :pswitch_1890
        :pswitch_188b
        :pswitch_1880
        :pswitch_186a
        :pswitch_1858
        :pswitch_1853
        :pswitch_183d
        :pswitch_1826
        :pswitch_180f
        :pswitch_180a
        :pswitch_17f3
        :pswitch_17ee
        :pswitch_17e9
        :pswitch_17d2
        :pswitch_17cd
        :pswitch_17c8
        :pswitch_17c3
        :pswitch_17be
        :pswitch_17b9
        :pswitch_17b4
        :pswitch_17af
        :pswitch_1798
        :pswitch_178c
        :pswitch_1779
        :pswitch_1774
        :pswitch_1761
        :pswitch_1746
        :pswitch_172b
        :pswitch_1710
        :pswitch_16f9
        :pswitch_16e2
        :pswitch_16dd
        :pswitch_16d8
        :pswitch_16d3
        :pswitch_16ce
        :pswitch_16bf
        :pswitch_16ac
        :pswitch_169d
        :pswitch_168a
        :pswitch_1685
        :pswitch_1680
        :pswitch_167b
        :pswitch_1660
        :pswitch_164d
        :pswitch_1636
        :pswitch_1631
        :pswitch_161a
        :pswitch_1603
        :pswitch_15f0
        :pswitch_15eb
        :pswitch_15d4
        :pswitch_15c1
        :pswitch_15b2
        :pswitch_15a3
        :pswitch_1594
        :pswitch_1585
        :pswitch_1576
        :pswitch_1571
        :pswitch_155e
        :pswitch_154b
        :pswitch_153f
        :pswitch_1533
        :pswitch_1524
        :pswitch_1518
        :pswitch_150c
        :pswitch_14f1
        :pswitch_14de
        :pswitch_14c7
        :pswitch_14b0
        :pswitch_149d
        :pswitch_148a
        :pswitch_1473
        :pswitch_1460
        :pswitch_1454
        :pswitch_1448
        :pswitch_1443
        :pswitch_1428
        :pswitch_1412
        :pswitch_140d
        :pswitch_1408
        :pswitch_13fc
        :pswitch_13f7
        :pswitch_13f2
        :pswitch_13db
        :pswitch_13d6
        :pswitch_13bf
        :pswitch_13ba
        :pswitch_13b5
        :pswitch_139e
        :pswitch_1399
        :pswitch_1394
        :pswitch_138f
        :pswitch_138a
        :pswitch_136f
        :pswitch_1354
        :pswitch_133d
        :pswitch_1326
        :pswitch_1321
        :pswitch_130a
        :pswitch_12f7
        :pswitch_12e0
        :pswitch_12cd
        :pswitch_12b6
        :pswitch_12b1
        :pswitch_12ac
        :pswitch_12a7
        :pswitch_1298
        :pswitch_1293
        :pswitch_128e
        :pswitch_1273
        :pswitch_125c
        :pswitch_1257
        :pswitch_1252
        :pswitch_123f
        :pswitch_1224
        :pswitch_1211
        :pswitch_120c
        :pswitch_1207
        :pswitch_11f4
        :pswitch_11ef
        :pswitch_11ea
        :pswitch_11d7
        :pswitch_11d2
        :pswitch_11bb
        :pswitch_11a0
        :pswitch_1189
        :pswitch_1176
        :pswitch_1171
        :pswitch_116c
        :pswitch_1167
        :pswitch_1154
        :pswitch_114f
        :pswitch_1134
        :pswitch_111d
        :pswitch_1106
        :pswitch_10f3
        :pswitch_10dc
        :pswitch_10c5
        :pswitch_10ae
        :pswitch_10a9
        :pswitch_10a4
        :pswitch_109f
        :pswitch_1080
        :pswitch_1061
        :pswitch_1042
        :pswitch_1023
        :pswitch_100c
        :pswitch_1000
        :pswitch_ff4
        :pswitch_fdd
        :pswitch_fce
        :pswitch_fbb
        :pswitch_fb6
        :pswitch_fb1
        :pswitch_fac
        :pswitch_fa7
        :pswitch_f94
        :pswitch_f8f
        :pswitch_f8a
        :pswitch_f73
        :pswitch_f62
        :pswitch_f56
        :pswitch_f51
        :pswitch_f36
        :pswitch_f23
        :pswitch_f1e
        :pswitch_f03
        :pswitch_efe
        :pswitch_ef9
        :pswitch_ef4
        :pswitch_eef
        :pswitch_ed8
        :pswitch_ec1
        :pswitch_ebc
        :pswitch_eb7
        :pswitch_ea0
        :pswitch_e89
        :pswitch_e84
        :pswitch_e7f
        :pswitch_e6c
        :pswitch_e55
        :pswitch_e3e
        :pswitch_e2b
        :pswitch_e14
        :pswitch_dfd
        :pswitch_dea
        :pswitch_de5
        :pswitch_dd2
        :pswitch_dc6
        :pswitch_daf
        :pswitch_d9c
        :pswitch_d89
        :pswitch_d76
        :pswitch_d6a
        :pswitch_d53
        :pswitch_d3c
        :pswitch_d25
        :pswitch_d12
        :pswitch_d0d
        :pswitch_d08
        :pswitch_d03
        :pswitch_cf0
        :pswitch_ceb
        :pswitch_cd0
        :pswitch_cb9
        :pswitch_cad
        :pswitch_ca8
        :pswitch_c8d
        :pswitch_c7a
        :pswitch_c67
        :pswitch_c62
        :pswitch_c47
        :pswitch_c34
        :pswitch_c21
        :pswitch_c0a
        :pswitch_bf3
        :pswitch_bd8
        :pswitch_bbd
        :pswitch_bb8
        :pswitch_bac
        :pswitch_ba4
        :pswitch_b89
        :pswitch_b84
        :pswitch_b71
        :pswitch_b65
        :pswitch_b52
        :pswitch_b37
        :pswitch_b32
        :pswitch_b1b
        :pswitch_b16
        :pswitch_b11
        :pswitch_afa
        :pswitch_ae3
        :pswitch_ade
        :pswitch_ac3
        :pswitch_aac
        :pswitch_a91
        :pswitch_a7e
        :pswitch_a79
        :pswitch_a54
        :pswitch_a39
        :pswitch_a18
        :pswitch_9f3
        :pswitch_9ce
        :pswitch_9b7
        :pswitch_9a4
        :pswitch_995
        :pswitch_97e
        :pswitch_96b
        :pswitch_966
        :pswitch_941
        :pswitch_92b
        :pswitch_90e
        :pswitch_8fb
        :pswitch_8e8
        :pswitch_8d1
        :pswitch_8ba
        :pswitch_8ae
        :pswitch_89b
        :pswitch_896
        :pswitch_87b
        :pswitch_860
        :pswitch_845
        :pswitch_839
        :pswitch_82d
        :pswitch_81a
        :pswitch_807
        :pswitch_7f0
        :pswitch_7dd
        :pswitch_7ce
        :pswitch_7c2
        :pswitch_7b6
        :pswitch_7ae
        :pswitch_79f
        :pswitch_788
        :pswitch_771
        :pswitch_76c
        :pswitch_751
        :pswitch_74c
        :pswitch_747
        :pswitch_730
        :pswitch_719
        :pswitch_70d
        :pswitch_701
        :pswitch_6f5
        :pswitch_6f0
        :pswitch_6d5
        :pswitch_6ba
        :pswitch_6b5
        :pswitch_6a9
        :pswitch_692
        :pswitch_68d
        :pswitch_676
        :pswitch_66a
        :pswitch_665
        :pswitch_660
        :pswitch_654
        :pswitch_639
        :pswitch_61e
        :pswitch_5fd
        :pswitch_5dc
        :pswitch_5c1
        :pswitch_5aa
        :pswitch_58b
        :pswitch_586
        :pswitch_56b
        :pswitch_554
        :pswitch_53d
        :pswitch_526
        :pswitch_521
        :pswitch_51c
        :pswitch_505
        :pswitch_4ee
        :pswitch_4e9
        :pswitch_4e4
        :pswitch_4cd
        :pswitch_4b6
        :pswitch_49f
        :pswitch_48c
        :pswitch_475
        :pswitch_45e
        :pswitch_44b
        :pswitch_43f
        :pswitch_433
        :pswitch_427
        :pswitch_422
        :pswitch_41d
        :pswitch_406
        :pswitch_401
        :pswitch_3ea
        :pswitch_3e5
        :pswitch_3ca
        :pswitch_3c5
        :pswitch_3ae
        :pswitch_397
        :pswitch_380
        :pswitch_369
        :pswitch_352
        :pswitch_34a
        :pswitch_33e
        :pswitch_32b
        :pswitch_318
        :pswitch_305
        :pswitch_2f2
        :pswitch_2ed
        :pswitch_2d2
        :pswitch_2b7
        :pswitch_29c
        :pswitch_285
        :pswitch_280
        :pswitch_27b
        :pswitch_268
        :pswitch_263
        :pswitch_24c
        :pswitch_23d
        :pswitch_231
        :pswitch_22c
        :pswitch_219
        :pswitch_20d
        :pswitch_208
        :pswitch_1fc
        :pswitch_1f7
        :pswitch_1e4
        :pswitch_1d1
        :pswitch_1c5
        :pswitch_1b4
        :pswitch_1a5
        :pswitch_1a0
        :pswitch_194
        :pswitch_185
        :pswitch_174
        :pswitch_165
        :pswitch_152
        :pswitch_14a
        :pswitch_13e
        :pswitch_127
        :pswitch_122
        :pswitch_10f
        :pswitch_10a
        :pswitch_105
        :pswitch_f2
        :pswitch_df
        :pswitch_d3
        :pswitch_ce
        :pswitch_c2
        :pswitch_af
        :pswitch_9c
        :pswitch_89
        :pswitch_81
        :pswitch_7c
        :pswitch_77
        :pswitch_64
        :pswitch_5f
        :pswitch_5a
        :pswitch_47
        :pswitch_42
        :pswitch_2f
        :pswitch_2a
        :pswitch_25
        :pswitch_20
    .end packed-switch
.end method
