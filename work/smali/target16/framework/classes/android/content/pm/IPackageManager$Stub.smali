.class public abstract Landroid/content/pm/IPackageManager$Stub;
.super Landroid/os/Binder;
.source "IPackageManager.java"

# interfaces
.implements Landroid/content/pm/IPackageManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/IPackageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/IPackageManager$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.content.pm.IPackageManager"

.field static final blacklist TRANSACTION_activitySupportsIntentAsUser:I = 0xc

.field static final greylist-max-o TRANSACTION_addCrossProfileIntentFilter:I = 0x42

.field static final greylist-max-o TRANSACTION_addPermission:I = 0xbe

.field static final greylist-max-o TRANSACTION_addPermissionAsync:I = 0xbf

.field static final greylist-max-o TRANSACTION_addPersistentPreferredActivity:I = 0x3f

.field static final greylist-max-o TRANSACTION_addPreferredActivity:I = 0x3b

.field static final greylist-max-o TRANSACTION_canForwardTo:I = 0x1d

.field static final blacklist TRANSACTION_canPackageQuery:I = 0xd2

.field static final greylist-max-o TRANSACTION_canRequestPackageInstalls:I = 0x9f

.field static final greylist-max-o TRANSACTION_canonicalToCurrentPackageNames:I = 0x8

.field static final greylist-max-o TRANSACTION_checkPackageStartable:I = 0x1

.field static final greylist-max-o TRANSACTION_checkPermission:I = 0xc1

.field static final greylist-max-o TRANSACTION_checkSignatures:I = 0x11

.field static final greylist-max-o TRANSACTION_checkUidPermission:I = 0xc3

.field static final greylist-max-o TRANSACTION_checkUidSignatures:I = 0x12

.field static final greylist-max-o TRANSACTION_clearApplicationProfileData:I = 0x64

.field static final greylist-max-o TRANSACTION_clearApplicationUserData:I = 0x63

.field static final greylist-max-o TRANSACTION_clearCrossProfileIntentFilters:I = 0x44

.field static final greylist-max-o TRANSACTION_clearPackagePersistentPreferredActivities:I = 0x40

.field static final greylist-max-o TRANSACTION_clearPackagePreferredActivities:I = 0x3d

.field static final blacklist TRANSACTION_clearPersistentPreferredActivity:I = 0x41

.field static final greylist-max-o TRANSACTION_currentToCanonicalPackageNames:I = 0x7

.field static final greylist-max-o TRANSACTION_deleteApplicationCacheFiles:I = 0x61

.field static final greylist-max-o TRANSACTION_deleteApplicationCacheFilesAsUser:I = 0x62

.field static final blacklist TRANSACTION_deleteExistingPackageAsUser:I = 0x35

.field static final greylist-max-o TRANSACTION_deletePackageAsUser:I = 0x33

.field static final greylist-max-o TRANSACTION_deletePackageVersioned:I = 0x34

.field static final greylist-max-o TRANSACTION_deletePreloadsFileCache:I = 0xa0

.field static final greylist-max-o TRANSACTION_enterSafeMode:I = 0x6b

.field static final greylist-max-o TRANSACTION_extendVerificationTimeout:I = 0x7a

.field static final greylist-max-o TRANSACTION_findPersistentPreferredActivity:I = 0x1c

.field static final greylist-max-o TRANSACTION_finishPackageInstall:I = 0x2f

.field static final greylist-max-o TRANSACTION_flushPackageRestrictionsAsUser:I = 0x5d

.field static final greylist-max-o TRANSACTION_freeStorage:I = 0x60

.field static final greylist-max-o TRANSACTION_freeStorageAndNotify:I = 0x5f

.field static final greylist-max-o TRANSACTION_getActivityInfo:I = 0xb

.field static final blacklist TRANSACTION_getAllApexDirectories:I = 0xde

.field static final greylist-max-o TRANSACTION_getAllIntentFilters:I = 0x7f

.field static final greylist-max-o TRANSACTION_getAllPackages:I = 0x13

.field static final blacklist TRANSACTION_getAppMetadataFd:I = 0x25

.field static final blacklist TRANSACTION_getAppMetadataSource:I = 0xd9

.field static final greylist-max-o TRANSACTION_getAppOpPermissionPackages:I = 0xbc

.field static final blacklist TRANSACTION_getAppPredictionServicePackageName:I = 0xaf

.field static final greylist-max-o TRANSACTION_getApplicationEnabledSetting:I = 0x5b

.field static final greylist-max-o TRANSACTION_getApplicationHiddenSettingAsUser:I = 0x85

.field static final greylist-max-r TRANSACTION_getApplicationInfo:I = 0x9

.field static final blacklist TRANSACTION_getArchivedAppIcon:I = 0xd7

.field static final blacklist TRANSACTION_getArchivedPackage:I = 0xd6

.field static final greylist-max-o TRANSACTION_getArtManager:I = 0xa5

.field static final blacklist TRANSACTION_getAttentionServicePackageName:I = 0xac

.field static final greylist-max-o TRANSACTION_getBlockUninstallForUser:I = 0x8a

.field static final greylist-max-o TRANSACTION_getChangedPackages:I = 0x9a

.field static final greylist-max-o TRANSACTION_getComponentEnabledSetting:I = 0x59

.field static final blacklist TRANSACTION_getDeclaredSharedLibraries:I = 0x9e

.field static final greylist-max-o TRANSACTION_getDefaultAppsBackup:I = 0x4f

.field static final blacklist TRANSACTION_getDefaultTextClassifierPackageName:I = 0xaa

.field static final blacklist TRANSACTION_getDomainVerificationAgent:I = 0xda

.field static final blacklist TRANSACTION_getDomainVerificationBackup:I = 0x51

.field static final greylist-max-o TRANSACTION_getFlagsForUid:I = 0x18

.field static final greylist-max-o TRANSACTION_getHarmfulAppWarning:I = 0xa7

.field static final blacklist TRANSACTION_getHoldLockToken:I = 0xcd

.field static final greylist-max-o TRANSACTION_getHomeActivities:I = 0x53

.field static final blacklist TRANSACTION_getIncidentReportApproverPackageName:I = 0xb2

.field static final blacklist TRANSACTION_getInitialNonStoppedSystemPackages:I = 0x6a

.field static final greylist-max-o TRANSACTION_getInstallLocation:I = 0x77

.field static final greylist-max-o TRANSACTION_getInstallReason:I = 0x9c

.field static final blacklist TRANSACTION_getInstallSourceInfo:I = 0x37

.field static final greylist-max-o TRANSACTION_getInstalledApplications:I = 0x27

.field static final blacklist TRANSACTION_getInstalledModules:I = 0xb5

.field static final greylist-max-o TRANSACTION_getInstalledPackages:I = 0x24

.field static final greylist-max-o TRANSACTION_getInstallerPackageName:I = 0x36

.field static final greylist-max-o TRANSACTION_getInstantAppAndroidId:I = 0xa4

.field static final greylist-max-o TRANSACTION_getInstantAppCookie:I = 0x92

.field static final greylist-max-o TRANSACTION_getInstantAppIcon:I = 0x94

.field static final greylist-max-o TRANSACTION_getInstantAppInstallerComponent:I = 0xa3

.field static final greylist-max-o TRANSACTION_getInstantAppResolverComponent:I = 0xa1

.field static final greylist-max-o TRANSACTION_getInstantAppResolverSettingsComponent:I = 0xa2

.field static final greylist-max-o TRANSACTION_getInstantApps:I = 0x91

.field static final blacklist TRANSACTION_getInstrumentationInfoAsUser:I = 0x2d

.field static final greylist-max-o TRANSACTION_getIntentFilterVerifications:I = 0x7e

.field static final greylist-max-o TRANSACTION_getIntentVerificationStatus:I = 0x7c

.field static final greylist-max-o TRANSACTION_getKeySetByAlias:I = 0x8b

.field static final greylist-max-o TRANSACTION_getLastChosenActivity:I = 0x39

.field static final blacklist TRANSACTION_getLaunchIntentSenderForPackage:I = 0xbb

.field static final blacklist TRANSACTION_getMimeGroup:I = 0xc9

.field static final blacklist TRANSACTION_getModuleInfo:I = 0xb6

.field static final greylist-max-o TRANSACTION_getMoveStatus:I = 0x71

.field static final greylist-max-o TRANSACTION_getNameForUid:I = 0x15

.field static final greylist-max-o TRANSACTION_getNamesForUids:I = 0x16

.field static final greylist-max-o TRANSACTION_getPackageGids:I = 0x6

.field static final greylist-max-o TRANSACTION_getPackageInfo:I = 0x3

.field static final greylist-max-o TRANSACTION_getPackageInfoVersioned:I = 0x4

.field static final greylist-max-o TRANSACTION_getPackageInstaller:I = 0x88

.field static final greylist-max-o TRANSACTION_getPackageSizeInfo:I = 0x65

.field static final greylist-max-o TRANSACTION_getPackageUid:I = 0x5

.field static final greylist-max-o TRANSACTION_getPackagesForUid:I = 0x14

.field static final greylist-max-o TRANSACTION_getPackagesHoldingPermissions:I = 0x26

.field static final blacklist TRANSACTION_getPageSizeCompatWarningMessage:I = 0xdd

.field static final greylist-max-o TRANSACTION_getPermissionControllerPackageName:I = 0x8f

.field static final greylist-max-o TRANSACTION_getPermissionGroupInfo:I = 0xbd

.field static final greylist-max-o TRANSACTION_getPersistentApplications:I = 0x28

.field static final greylist-max-o TRANSACTION_getPreferredActivities:I = 0x3e

.field static final greylist-max-o TRANSACTION_getPreferredActivityBackup:I = 0x4d

.field static final greylist-max-o TRANSACTION_getPrivateFlagsForUid:I = 0x19

.field static final blacklist TRANSACTION_getPropertyAsUser:I = 0xcf

.field static final greylist-max-o TRANSACTION_getProviderInfo:I = 0xf

.field static final greylist-max-o TRANSACTION_getReceiverInfo:I = 0xd

.field static final blacklist TRANSACTION_getRotationResolverPackageName:I = 0xad

.field static final blacklist TRANSACTION_getRuntimePermissionsVersion:I = 0xb7

.field static final blacklist TRANSACTION_getSdkSandboxPackageName:I = 0x90

.field static final greylist-max-o TRANSACTION_getServiceInfo:I = 0xe

.field static final greylist-max-o TRANSACTION_getServicesSystemSharedLibraryPackageName:I = 0x98

.field static final blacklist TRANSACTION_getSetupWizardPackageName:I = 0xb1

.field static final greylist-max-o TRANSACTION_getSharedLibraries:I = 0x9d

.field static final greylist-max-o TRANSACTION_getSharedSystemSharedLibraryPackageName:I = 0x99

.field static final greylist-max-o TRANSACTION_getSigningKeySet:I = 0x8c

.field static final blacklist TRANSACTION_getSplashScreenTheme:I = 0xc5

.field static final greylist-max-o TRANSACTION_getSuspendedPackageAppExtras:I = 0x4b

.field static final blacklist TRANSACTION_getSuspendingPackage:I = 0x4c

.field static final greylist-max-o TRANSACTION_getSystemAvailableFeatures:I = 0x68

.field static final blacklist TRANSACTION_getSystemCaptionsServicePackageName:I = 0xb0

.field static final greylist-max-o TRANSACTION_getSystemSharedLibraryNames:I = 0x66

.field static final blacklist TRANSACTION_getSystemSharedLibraryNamesAndPaths:I = 0x67

.field static final greylist-max-o TRANSACTION_getSystemTextClassifierPackageName:I = 0xab

.field static final blacklist TRANSACTION_getTargetSdkVersion:I = 0xa

.field static final greylist-max-o TRANSACTION_getUidForSharedUser:I = 0x17

.field static final blacklist TRANSACTION_getUnsuspendablePackagesForUser:I = 0x47

.field static final blacklist TRANSACTION_getUserMinAspectRatio:I = 0xc7

.field static final greylist-max-o TRANSACTION_getVerifierDeviceIdentity:I = 0x80

.field static final blacklist TRANSACTION_getWellbeingPackageName:I = 0xae

.field static final greylist-max-o TRANSACTION_grantRuntimePermission:I = 0xc2

.field static final greylist-max-o TRANSACTION_hasSigningCertificate:I = 0xa8

.field static final greylist-max-o TRANSACTION_hasSystemFeature:I = 0x69

.field static final greylist-max-o TRANSACTION_hasSystemUidErrors:I = 0x6d

.field static final greylist-max-o TRANSACTION_hasUidSigningCertificate:I = 0xa9

.field static final blacklist TRANSACTION_holdLock:I = 0xce

.field static final greylist-max-o TRANSACTION_installExistingPackageAsUser:I = 0x78

.field static final blacklist TRANSACTION_isAppArchivable:I = 0xd8

.field static final blacklist TRANSACTION_isAutoRevokeWhitelisted:I = 0xca

.field static final blacklist TRANSACTION_isDeviceUpgrading:I = 0x82

.field static final greylist-max-o TRANSACTION_isFirstBoot:I = 0x81

.field static final greylist-max-o TRANSACTION_isInstantApp:I = 0x95

.field static final greylist-max-o TRANSACTION_isPackageAvailable:I = 0x2

.field static final greylist-max-o TRANSACTION_isPackageDeviceAdminOnAnyUser:I = 0x9b

.field static final blacklist TRANSACTION_isPackageQuarantinedForUser:I = 0x49

.field static final greylist-max-o TRANSACTION_isPackageSignedByKeySet:I = 0x8d

.field static final greylist-max-o TRANSACTION_isPackageSignedByKeySetExactly:I = 0x8e

.field static final greylist-max-o TRANSACTION_isPackageStateProtected:I = 0xb3

.field static final blacklist TRANSACTION_isPackageStoppedForUser:I = 0x4a

.field static final greylist-max-o TRANSACTION_isPackageSuspendedForUser:I = 0x48

.field static final blacklist TRANSACTION_isPageSizeCompatEnabled:I = 0xdc

.field static final greylist-max-o TRANSACTION_isProtectedBroadcast:I = 0x10

.field static final greylist-max-o TRANSACTION_isSafeMode:I = 0x6c

.field static final greylist-max-o TRANSACTION_isStorageLow:I = 0x83

.field static final greylist-max-o TRANSACTION_isUidPrivileged:I = 0x1a

.field static final greylist-max-o TRANSACTION_logAppProcessStartIfNeeded:I = 0x5c

.field static final blacklist TRANSACTION_makeProviderVisible:I = 0xcb

.field static final blacklist TRANSACTION_makeUidVisible:I = 0xcc

.field static final greylist-max-o TRANSACTION_movePackage:I = 0x74

.field static final greylist-max-o TRANSACTION_movePrimaryStorage:I = 0x75

.field static final greylist-max-o TRANSACTION_notifyDexLoad:I = 0x6f

.field static final greylist-max-o TRANSACTION_notifyPackageUse:I = 0x6e

.field static final blacklist TRANSACTION_notifyPackagesReplacedReceived:I = 0xb9

.field static final blacklist TRANSACTION_overrideLabelAndIcon:I = 0x55

.field static final greylist-max-o TRANSACTION_queryContentProviders:I = 0x2c

.field static final blacklist TRANSACTION_queryInstrumentationAsUser:I = 0x2e

.field static final greylist-max-o TRANSACTION_queryIntentActivities:I = 0x1e

.field static final greylist-max-o TRANSACTION_queryIntentActivityOptions:I = 0x1f

.field static final greylist-max-o TRANSACTION_queryIntentContentProviders:I = 0x23

.field static final greylist-max-o TRANSACTION_queryIntentReceivers:I = 0x20

.field static final greylist-max-o TRANSACTION_queryIntentServices:I = 0x22

.field static final blacklist TRANSACTION_queryProperty:I = 0xd0

.field static final greylist-max-o TRANSACTION_querySyncProviders:I = 0x2b

.field static final greylist-max-o TRANSACTION_registerDexModule:I = 0x70

.field static final greylist-max-o TRANSACTION_registerMoveCallback:I = 0x72

.field static final blacklist TRANSACTION_registerPackageMonitorCallback:I = 0xd4

.field static final blacklist TRANSACTION_relinquishUpdateOwnership:I = 0x31

.field static final blacklist TRANSACTION_removeCrossProfileIntentFilter:I = 0x43

.field static final greylist-max-o TRANSACTION_removePermission:I = 0xc0

.field static final greylist-max-o TRANSACTION_replacePreferredActivity:I = 0x3c

.field static final blacklist TRANSACTION_requestPackageChecksums:I = 0xba

.field static final greylist-max-o TRANSACTION_resetApplicationPreferences:I = 0x38

.field static final greylist-max-o TRANSACTION_resolveContentProvider:I = 0x29

.field static final blacklist TRANSACTION_resolveContentProviderForUid:I = 0x2a

.field static final greylist-max-o TRANSACTION_resolveIntent:I = 0x1b

.field static final greylist-max-o TRANSACTION_resolveService:I = 0x21

.field static final greylist-max-o TRANSACTION_restoreDefaultApps:I = 0x50

.field static final blacklist TRANSACTION_restoreDomainVerification:I = 0x52

.field static final blacklist TRANSACTION_restoreLabelAndIcon:I = 0x56

.field static final greylist-max-o TRANSACTION_restorePreferredActivities:I = 0x4e

.field static final blacklist TRANSACTION_sendDeviceCustomizationReadyBroadcast:I = 0xb4

.field static final greylist-max-o TRANSACTION_setApplicationCategoryHint:I = 0x32

.field static final greylist-max-o TRANSACTION_setApplicationEnabledSetting:I = 0x5a

.field static final greylist-max-o TRANSACTION_setApplicationHiddenSettingAsUser:I = 0x84

.field static final greylist-max-o TRANSACTION_setBlockUninstallForUser:I = 0x89

.field static final greylist-max-o TRANSACTION_setComponentEnabledSetting:I = 0x57

.field static final blacklist TRANSACTION_setComponentEnabledSettings:I = 0x58

.field static final blacklist TRANSACTION_setDistractingPackageRestrictionsAsUser:I = 0x45

.field static final greylist-max-o TRANSACTION_setHarmfulAppWarning:I = 0xa6

.field static final greylist-max-o TRANSACTION_setHomeActivity:I = 0x54

.field static final greylist-max-o TRANSACTION_setInstallLocation:I = 0x76

.field static final greylist-max-o TRANSACTION_setInstallerPackageName:I = 0x30

.field static final greylist-max-o TRANSACTION_setInstantAppCookie:I = 0x93

.field static final blacklist TRANSACTION_setKeepUninstalledPackages:I = 0xd1

.field static final greylist-max-o TRANSACTION_setLastChosenActivity:I = 0x3a

.field static final blacklist TRANSACTION_setMimeGroup:I = 0xc4

.field static final greylist-max-o TRANSACTION_setPackageStoppedState:I = 0x5e

.field static final greylist-max-o TRANSACTION_setPackagesSuspendedAsUser:I = 0x46

.field static final blacklist TRANSACTION_setPageSizeAppCompatFlagsSettingsOverride:I = 0xdb

.field static final greylist-max-o TRANSACTION_setRequiredForSystemUser:I = 0x96

.field static final blacklist TRANSACTION_setRuntimePermissionsVersion:I = 0xb8

.field static final blacklist TRANSACTION_setSplashScreenTheme:I = 0xc6

.field static final blacklist TRANSACTION_setSystemAppHiddenUntilInstalled:I = 0x86

.field static final blacklist TRANSACTION_setSystemAppInstallState:I = 0x87

.field static final greylist-max-o TRANSACTION_setUpdateAvailable:I = 0x97

.field static final blacklist TRANSACTION_setUserMinAspectRatio:I = 0xc8

.field static final greylist-max-o TRANSACTION_unregisterMoveCallback:I = 0x73

.field static final blacklist TRANSACTION_unregisterPackageMonitorCallback:I = 0xd5

.field static final greylist-max-o TRANSACTION_updateIntentVerificationStatus:I = 0x7d

.field static final greylist-max-o TRANSACTION_verifyIntentFilter:I = 0x7b

.field static final greylist-max-o TRANSACTION_verifyPendingInstall:I = 0x79

.field static final blacklist TRANSACTION_waitForHandler:I = 0xd3


# instance fields
.field private final blacklist mEnforcer:Landroid/os/PermissionEnforcer;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1111
    nop

    .line 1112
    invoke-static {}, Landroid/app/ActivityThread;->currentSystemContext()Landroid/content/Context;

    move-result-object v0

    .line 1111
    invoke-static {v0}, Landroid/os/PermissionEnforcer;->fromContext(Landroid/content/Context;)Landroid/os/PermissionEnforcer;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/pm/IPackageManager$Stub;-><init>(Landroid/os/PermissionEnforcer;)V

    .line 1113
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/PermissionEnforcer;)V
    .registers 3

    .line 1101
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 1102
    const-string v0, "android.content.pm.IPackageManager"

    invoke-virtual {p0, p0, v0}, Landroid/content/pm/IPackageManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 1103
    if-eqz p1, :cond_d

    .line 1106
    iput-object p1, p0, Landroid/content/pm/IPackageManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    .line 1107
    return-void

    .line 1104
    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "enforcer cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;
    .registers 3

    .line 1120
    if-nez p0, :cond_4

    .line 1121
    const/4 p0, 0x0

    return-object p0

    .line 1123
    :cond_4
    const-string v0, "android.content.pm.IPackageManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 1124
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/content/pm/IPackageManager;

    if-eqz v1, :cond_13

    .line 1125
    check-cast v0, Landroid/content/pm/IPackageManager;

    return-object v0

    .line 1127
    :cond_13
    new-instance v0, Landroid/content/pm/IPackageManager$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 1

    .line 1136
    packed-switch p0, :pswitch_data_2e6

    .line 2028
    const/4 p0, 0x0

    return-object p0

    .line 2024
    :pswitch_5
    const-string p0, "getAllApexDirectories"

    return-object p0

    .line 2020
    :pswitch_8
    const-string p0, "getPageSizeCompatWarningMessage"

    return-object p0

    .line 2016
    :pswitch_b
    const-string p0, "isPageSizeCompatEnabled"

    return-object p0

    .line 2012
    :pswitch_e
    const-string/jumbo p0, "setPageSizeAppCompatFlagsSettingsOverride"

    return-object p0

    .line 2008
    :pswitch_12
    const-string p0, "getDomainVerificationAgent"

    return-object p0

    .line 2004
    :pswitch_15
    const-string p0, "getAppMetadataSource"

    return-object p0

    .line 2000
    :pswitch_18
    const-string p0, "isAppArchivable"

    return-object p0

    .line 1996
    :pswitch_1b
    const-string p0, "getArchivedAppIcon"

    return-object p0

    .line 1992
    :pswitch_1e
    const-string p0, "getArchivedPackage"

    return-object p0

    .line 1988
    :pswitch_21
    const-string/jumbo p0, "unregisterPackageMonitorCallback"

    return-object p0

    .line 1984
    :pswitch_25
    const-string/jumbo p0, "registerPackageMonitorCallback"

    return-object p0

    .line 1980
    :pswitch_29
    const-string/jumbo p0, "waitForHandler"

    return-object p0

    .line 1976
    :pswitch_2d
    const-string p0, "canPackageQuery"

    return-object p0

    .line 1972
    :pswitch_30
    const-string/jumbo p0, "setKeepUninstalledPackages"

    return-object p0

    .line 1968
    :pswitch_34
    const-string/jumbo p0, "queryProperty"

    return-object p0

    .line 1964
    :pswitch_38
    const-string p0, "getPropertyAsUser"

    return-object p0

    .line 1960
    :pswitch_3b
    const-string p0, "holdLock"

    return-object p0

    .line 1956
    :pswitch_3e
    const-string p0, "getHoldLockToken"

    return-object p0

    .line 1952
    :pswitch_41
    const-string/jumbo p0, "makeUidVisible"

    return-object p0

    .line 1948
    :pswitch_45
    const-string/jumbo p0, "makeProviderVisible"

    return-object p0

    .line 1944
    :pswitch_49
    const-string p0, "isAutoRevokeWhitelisted"

    return-object p0

    .line 1940
    :pswitch_4c
    const-string p0, "getMimeGroup"

    return-object p0

    .line 1936
    :pswitch_4f
    const-string/jumbo p0, "setUserMinAspectRatio"

    return-object p0

    .line 1932
    :pswitch_53
    const-string p0, "getUserMinAspectRatio"

    return-object p0

    .line 1928
    :pswitch_56
    const-string/jumbo p0, "setSplashScreenTheme"

    return-object p0

    .line 1924
    :pswitch_5a
    const-string p0, "getSplashScreenTheme"

    return-object p0

    .line 1920
    :pswitch_5d
    const-string/jumbo p0, "setMimeGroup"

    return-object p0

    .line 1916
    :pswitch_61
    const-string p0, "checkUidPermission"

    return-object p0

    .line 1912
    :pswitch_64
    const-string p0, "grantRuntimePermission"

    return-object p0

    .line 1908
    :pswitch_67
    const-string p0, "checkPermission"

    return-object p0

    .line 1904
    :pswitch_6a
    const-string/jumbo p0, "removePermission"

    return-object p0

    .line 1900
    :pswitch_6e
    const-string p0, "addPermissionAsync"

    return-object p0

    .line 1896
    :pswitch_71
    const-string p0, "addPermission"

    return-object p0

    .line 1892
    :pswitch_74
    const-string p0, "getPermissionGroupInfo"

    return-object p0

    .line 1888
    :pswitch_77
    const-string p0, "getAppOpPermissionPackages"

    return-object p0

    .line 1884
    :pswitch_7a
    const-string p0, "getLaunchIntentSenderForPackage"

    return-object p0

    .line 1880
    :pswitch_7d
    const-string/jumbo p0, "requestPackageChecksums"

    return-object p0

    .line 1876
    :pswitch_81
    const-string/jumbo p0, "notifyPackagesReplacedReceived"

    return-object p0

    .line 1872
    :pswitch_85
    const-string/jumbo p0, "setRuntimePermissionsVersion"

    return-object p0

    .line 1868
    :pswitch_89
    const-string p0, "getRuntimePermissionsVersion"

    return-object p0

    .line 1864
    :pswitch_8c
    const-string p0, "getModuleInfo"

    return-object p0

    .line 1860
    :pswitch_8f
    const-string p0, "getInstalledModules"

    return-object p0

    .line 1856
    :pswitch_92
    const-string/jumbo p0, "sendDeviceCustomizationReadyBroadcast"

    return-object p0

    .line 1852
    :pswitch_96
    const-string p0, "isPackageStateProtected"

    return-object p0

    .line 1848
    :pswitch_99
    const-string p0, "getIncidentReportApproverPackageName"

    return-object p0

    .line 1844
    :pswitch_9c
    const-string p0, "getSetupWizardPackageName"

    return-object p0

    .line 1840
    :pswitch_9f
    const-string p0, "getSystemCaptionsServicePackageName"

    return-object p0

    .line 1836
    :pswitch_a2
    const-string p0, "getAppPredictionServicePackageName"

    return-object p0

    .line 1832
    :pswitch_a5
    const-string p0, "getWellbeingPackageName"

    return-object p0

    .line 1828
    :pswitch_a8
    const-string p0, "getRotationResolverPackageName"

    return-object p0

    .line 1824
    :pswitch_ab
    const-string p0, "getAttentionServicePackageName"

    return-object p0

    .line 1820
    :pswitch_ae
    const-string p0, "getSystemTextClassifierPackageName"

    return-object p0

    .line 1816
    :pswitch_b1
    const-string p0, "getDefaultTextClassifierPackageName"

    return-object p0

    .line 1812
    :pswitch_b4
    const-string p0, "hasUidSigningCertificate"

    return-object p0

    .line 1808
    :pswitch_b7
    const-string p0, "hasSigningCertificate"

    return-object p0

    .line 1804
    :pswitch_ba
    const-string p0, "getHarmfulAppWarning"

    return-object p0

    .line 1800
    :pswitch_bd
    const-string/jumbo p0, "setHarmfulAppWarning"

    return-object p0

    .line 1796
    :pswitch_c1
    const-string p0, "getArtManager"

    return-object p0

    .line 1792
    :pswitch_c4
    const-string p0, "getInstantAppAndroidId"

    return-object p0

    .line 1788
    :pswitch_c7
    const-string p0, "getInstantAppInstallerComponent"

    return-object p0

    .line 1784
    :pswitch_ca
    const-string p0, "getInstantAppResolverSettingsComponent"

    return-object p0

    .line 1780
    :pswitch_cd
    const-string p0, "getInstantAppResolverComponent"

    return-object p0

    .line 1776
    :pswitch_d0
    const-string p0, "deletePreloadsFileCache"

    return-object p0

    .line 1772
    :pswitch_d3
    const-string p0, "canRequestPackageInstalls"

    return-object p0

    .line 1768
    :pswitch_d6
    const-string p0, "getDeclaredSharedLibraries"

    return-object p0

    .line 1764
    :pswitch_d9
    const-string p0, "getSharedLibraries"

    return-object p0

    .line 1760
    :pswitch_dc
    const-string p0, "getInstallReason"

    return-object p0

    .line 1756
    :pswitch_df
    const-string p0, "isPackageDeviceAdminOnAnyUser"

    return-object p0

    .line 1752
    :pswitch_e2
    const-string p0, "getChangedPackages"

    return-object p0

    .line 1748
    :pswitch_e5
    const-string p0, "getSharedSystemSharedLibraryPackageName"

    return-object p0

    .line 1744
    :pswitch_e8
    const-string p0, "getServicesSystemSharedLibraryPackageName"

    return-object p0

    .line 1740
    :pswitch_eb
    const-string/jumbo p0, "setUpdateAvailable"

    return-object p0

    .line 1736
    :pswitch_ef
    const-string/jumbo p0, "setRequiredForSystemUser"

    return-object p0

    .line 1732
    :pswitch_f3
    const-string p0, "isInstantApp"

    return-object p0

    .line 1728
    :pswitch_f6
    const-string p0, "getInstantAppIcon"

    return-object p0

    .line 1724
    :pswitch_f9
    const-string/jumbo p0, "setInstantAppCookie"

    return-object p0

    .line 1720
    :pswitch_fd
    const-string p0, "getInstantAppCookie"

    return-object p0

    .line 1716
    :pswitch_100
    const-string p0, "getInstantApps"

    return-object p0

    .line 1712
    :pswitch_103
    const-string p0, "getSdkSandboxPackageName"

    return-object p0

    .line 1708
    :pswitch_106
    const-string p0, "getPermissionControllerPackageName"

    return-object p0

    .line 1704
    :pswitch_109
    const-string p0, "isPackageSignedByKeySetExactly"

    return-object p0

    .line 1700
    :pswitch_10c
    const-string p0, "isPackageSignedByKeySet"

    return-object p0

    .line 1696
    :pswitch_10f
    const-string p0, "getSigningKeySet"

    return-object p0

    .line 1692
    :pswitch_112
    const-string p0, "getKeySetByAlias"

    return-object p0

    .line 1688
    :pswitch_115
    const-string p0, "getBlockUninstallForUser"

    return-object p0

    .line 1684
    :pswitch_118
    const-string/jumbo p0, "setBlockUninstallForUser"

    return-object p0

    .line 1680
    :pswitch_11c
    const-string p0, "getPackageInstaller"

    return-object p0

    .line 1676
    :pswitch_11f
    const-string/jumbo p0, "setSystemAppInstallState"

    return-object p0

    .line 1672
    :pswitch_123
    const-string/jumbo p0, "setSystemAppHiddenUntilInstalled"

    return-object p0

    .line 1668
    :pswitch_127
    const-string p0, "getApplicationHiddenSettingAsUser"

    return-object p0

    .line 1664
    :pswitch_12a
    const-string/jumbo p0, "setApplicationHiddenSettingAsUser"

    return-object p0

    .line 1660
    :pswitch_12e
    const-string/jumbo p0, "isStorageLow"

    return-object p0

    .line 1656
    :pswitch_132
    const-string p0, "isDeviceUpgrading"

    return-object p0

    .line 1652
    :pswitch_135
    const-string p0, "isFirstBoot"

    return-object p0

    .line 1648
    :pswitch_138
    const-string p0, "getVerifierDeviceIdentity"

    return-object p0

    .line 1644
    :pswitch_13b
    const-string p0, "getAllIntentFilters"

    return-object p0

    .line 1640
    :pswitch_13e
    const-string p0, "getIntentFilterVerifications"

    return-object p0

    .line 1636
    :pswitch_141
    const-string/jumbo p0, "updateIntentVerificationStatus"

    return-object p0

    .line 1632
    :pswitch_145
    const-string p0, "getIntentVerificationStatus"

    return-object p0

    .line 1628
    :pswitch_148
    const-string/jumbo p0, "verifyIntentFilter"

    return-object p0

    .line 1624
    :pswitch_14c
    const-string p0, "extendVerificationTimeout"

    return-object p0

    .line 1620
    :pswitch_14f
    const-string/jumbo p0, "verifyPendingInstall"

    return-object p0

    .line 1616
    :pswitch_153
    const-string p0, "installExistingPackageAsUser"

    return-object p0

    .line 1612
    :pswitch_156
    const-string p0, "getInstallLocation"

    return-object p0

    .line 1608
    :pswitch_159
    const-string/jumbo p0, "setInstallLocation"

    return-object p0

    .line 1604
    :pswitch_15d
    const-string/jumbo p0, "movePrimaryStorage"

    return-object p0

    .line 1600
    :pswitch_161
    const-string/jumbo p0, "movePackage"

    return-object p0

    .line 1596
    :pswitch_165
    const-string/jumbo p0, "unregisterMoveCallback"

    return-object p0

    .line 1592
    :pswitch_169
    const-string/jumbo p0, "registerMoveCallback"

    return-object p0

    .line 1588
    :pswitch_16d
    const-string p0, "getMoveStatus"

    return-object p0

    .line 1584
    :pswitch_170
    const-string/jumbo p0, "registerDexModule"

    return-object p0

    .line 1580
    :pswitch_174
    const-string/jumbo p0, "notifyDexLoad"

    return-object p0

    .line 1576
    :pswitch_178
    const-string/jumbo p0, "notifyPackageUse"

    return-object p0

    .line 1572
    :pswitch_17c
    const-string p0, "hasSystemUidErrors"

    return-object p0

    .line 1568
    :pswitch_17f
    const-string/jumbo p0, "isSafeMode"

    return-object p0

    .line 1564
    :pswitch_183
    const-string p0, "enterSafeMode"

    return-object p0

    .line 1560
    :pswitch_186
    const-string p0, "getInitialNonStoppedSystemPackages"

    return-object p0

    .line 1556
    :pswitch_189
    const-string p0, "hasSystemFeature"

    return-object p0

    .line 1552
    :pswitch_18c
    const-string p0, "getSystemAvailableFeatures"

    return-object p0

    .line 1548
    :pswitch_18f
    const-string p0, "getSystemSharedLibraryNamesAndPaths"

    return-object p0

    .line 1544
    :pswitch_192
    const-string p0, "getSystemSharedLibraryNames"

    return-object p0

    .line 1540
    :pswitch_195
    const-string p0, "getPackageSizeInfo"

    return-object p0

    .line 1536
    :pswitch_198
    const-string p0, "clearApplicationProfileData"

    return-object p0

    .line 1532
    :pswitch_19b
    const-string p0, "clearApplicationUserData"

    return-object p0

    .line 1528
    :pswitch_19e
    const-string p0, "deleteApplicationCacheFilesAsUser"

    return-object p0

    .line 1524
    :pswitch_1a1
    const-string p0, "deleteApplicationCacheFiles"

    return-object p0

    .line 1520
    :pswitch_1a4
    const-string p0, "freeStorage"

    return-object p0

    .line 1516
    :pswitch_1a7
    const-string p0, "freeStorageAndNotify"

    return-object p0

    .line 1512
    :pswitch_1aa
    const-string/jumbo p0, "setPackageStoppedState"

    return-object p0

    .line 1508
    :pswitch_1ae
    const-string p0, "flushPackageRestrictionsAsUser"

    return-object p0

    .line 1504
    :pswitch_1b1
    const-string/jumbo p0, "logAppProcessStartIfNeeded"

    return-object p0

    .line 1500
    :pswitch_1b5
    const-string p0, "getApplicationEnabledSetting"

    return-object p0

    .line 1496
    :pswitch_1b8
    const-string/jumbo p0, "setApplicationEnabledSetting"

    return-object p0

    .line 1492
    :pswitch_1bc
    const-string p0, "getComponentEnabledSetting"

    return-object p0

    .line 1488
    :pswitch_1bf
    const-string/jumbo p0, "setComponentEnabledSettings"

    return-object p0

    .line 1484
    :pswitch_1c3
    const-string/jumbo p0, "setComponentEnabledSetting"

    return-object p0

    .line 1480
    :pswitch_1c7
    const-string/jumbo p0, "restoreLabelAndIcon"

    return-object p0

    .line 1476
    :pswitch_1cb
    const-string/jumbo p0, "overrideLabelAndIcon"

    return-object p0

    .line 1472
    :pswitch_1cf
    const-string/jumbo p0, "setHomeActivity"

    return-object p0

    .line 1468
    :pswitch_1d3
    const-string p0, "getHomeActivities"

    return-object p0

    .line 1464
    :pswitch_1d6
    const-string/jumbo p0, "restoreDomainVerification"

    return-object p0

    .line 1460
    :pswitch_1da
    const-string p0, "getDomainVerificationBackup"

    return-object p0

    .line 1456
    :pswitch_1dd
    const-string/jumbo p0, "restoreDefaultApps"

    return-object p0

    .line 1452
    :pswitch_1e1
    const-string p0, "getDefaultAppsBackup"

    return-object p0

    .line 1448
    :pswitch_1e4
    const-string/jumbo p0, "restorePreferredActivities"

    return-object p0

    .line 1444
    :pswitch_1e8
    const-string p0, "getPreferredActivityBackup"

    return-object p0

    .line 1440
    :pswitch_1eb
    const-string p0, "getSuspendingPackage"

    return-object p0

    .line 1436
    :pswitch_1ee
    const-string p0, "getSuspendedPackageAppExtras"

    return-object p0

    .line 1432
    :pswitch_1f1
    const-string p0, "isPackageStoppedForUser"

    return-object p0

    .line 1428
    :pswitch_1f4
    const-string p0, "isPackageQuarantinedForUser"

    return-object p0

    .line 1424
    :pswitch_1f7
    const-string p0, "isPackageSuspendedForUser"

    return-object p0

    .line 1420
    :pswitch_1fa
    const-string p0, "getUnsuspendablePackagesForUser"

    return-object p0

    .line 1416
    :pswitch_1fd
    const-string/jumbo p0, "setPackagesSuspendedAsUser"

    return-object p0

    .line 1412
    :pswitch_201
    const-string/jumbo p0, "setDistractingPackageRestrictionsAsUser"

    return-object p0

    .line 1408
    :pswitch_205
    const-string p0, "clearCrossProfileIntentFilters"

    return-object p0

    .line 1404
    :pswitch_208
    const-string/jumbo p0, "removeCrossProfileIntentFilter"

    return-object p0

    .line 1400
    :pswitch_20c
    const-string p0, "addCrossProfileIntentFilter"

    return-object p0

    .line 1396
    :pswitch_20f
    const-string p0, "clearPersistentPreferredActivity"

    return-object p0

    .line 1392
    :pswitch_212
    const-string p0, "clearPackagePersistentPreferredActivities"

    return-object p0

    .line 1388
    :pswitch_215
    const-string p0, "addPersistentPreferredActivity"

    return-object p0

    .line 1384
    :pswitch_218
    const-string p0, "getPreferredActivities"

    return-object p0

    .line 1380
    :pswitch_21b
    const-string p0, "clearPackagePreferredActivities"

    return-object p0

    .line 1376
    :pswitch_21e
    const-string/jumbo p0, "replacePreferredActivity"

    return-object p0

    .line 1372
    :pswitch_222
    const-string p0, "addPreferredActivity"

    return-object p0

    .line 1368
    :pswitch_225
    const-string/jumbo p0, "setLastChosenActivity"

    return-object p0

    .line 1364
    :pswitch_229
    const-string p0, "getLastChosenActivity"

    return-object p0

    .line 1360
    :pswitch_22c
    const-string/jumbo p0, "resetApplicationPreferences"

    return-object p0

    .line 1356
    :pswitch_230
    const-string p0, "getInstallSourceInfo"

    return-object p0

    .line 1352
    :pswitch_233
    const-string p0, "getInstallerPackageName"

    return-object p0

    .line 1348
    :pswitch_236
    const-string p0, "deleteExistingPackageAsUser"

    return-object p0

    .line 1344
    :pswitch_239
    const-string p0, "deletePackageVersioned"

    return-object p0

    .line 1340
    :pswitch_23c
    const-string p0, "deletePackageAsUser"

    return-object p0

    .line 1336
    :pswitch_23f
    const-string/jumbo p0, "setApplicationCategoryHint"

    return-object p0

    .line 1332
    :pswitch_243
    const-string/jumbo p0, "relinquishUpdateOwnership"

    return-object p0

    .line 1328
    :pswitch_247
    const-string/jumbo p0, "setInstallerPackageName"

    return-object p0

    .line 1324
    :pswitch_24b
    const-string p0, "finishPackageInstall"

    return-object p0

    .line 1320
    :pswitch_24e
    const-string/jumbo p0, "queryInstrumentationAsUser"

    return-object p0

    .line 1316
    :pswitch_252
    const-string p0, "getInstrumentationInfoAsUser"

    return-object p0

    .line 1312
    :pswitch_255
    const-string/jumbo p0, "queryContentProviders"

    return-object p0

    .line 1308
    :pswitch_259
    const-string/jumbo p0, "querySyncProviders"

    return-object p0

    .line 1304
    :pswitch_25d
    const-string/jumbo p0, "resolveContentProviderForUid"

    return-object p0

    .line 1300
    :pswitch_261
    const-string/jumbo p0, "resolveContentProvider"

    return-object p0

    .line 1296
    :pswitch_265
    const-string p0, "getPersistentApplications"

    return-object p0

    .line 1292
    :pswitch_268
    const-string p0, "getInstalledApplications"

    return-object p0

    .line 1288
    :pswitch_26b
    const-string p0, "getPackagesHoldingPermissions"

    return-object p0

    .line 1284
    :pswitch_26e
    const-string p0, "getAppMetadataFd"

    return-object p0

    .line 1280
    :pswitch_271
    const-string p0, "getInstalledPackages"

    return-object p0

    .line 1276
    :pswitch_274
    const-string/jumbo p0, "queryIntentContentProviders"

    return-object p0

    .line 1272
    :pswitch_278
    const-string/jumbo p0, "queryIntentServices"

    return-object p0

    .line 1268
    :pswitch_27c
    const-string/jumbo p0, "resolveService"

    return-object p0

    .line 1264
    :pswitch_280
    const-string/jumbo p0, "queryIntentReceivers"

    return-object p0

    .line 1260
    :pswitch_284
    const-string/jumbo p0, "queryIntentActivityOptions"

    return-object p0

    .line 1256
    :pswitch_288
    const-string/jumbo p0, "queryIntentActivities"

    return-object p0

    .line 1252
    :pswitch_28c
    const-string p0, "canForwardTo"

    return-object p0

    .line 1248
    :pswitch_28f
    const-string p0, "findPersistentPreferredActivity"

    return-object p0

    .line 1244
    :pswitch_292
    const-string/jumbo p0, "resolveIntent"

    return-object p0

    .line 1240
    :pswitch_296
    const-string/jumbo p0, "isUidPrivileged"

    return-object p0

    .line 1236
    :pswitch_29a
    const-string p0, "getPrivateFlagsForUid"

    return-object p0

    .line 1232
    :pswitch_29d
    const-string p0, "getFlagsForUid"

    return-object p0

    .line 1228
    :pswitch_2a0
    const-string p0, "getUidForSharedUser"

    return-object p0

    .line 1224
    :pswitch_2a3
    const-string p0, "getNamesForUids"

    return-object p0

    .line 1220
    :pswitch_2a6
    const-string p0, "getNameForUid"

    return-object p0

    .line 1216
    :pswitch_2a9
    const-string p0, "getPackagesForUid"

    return-object p0

    .line 1212
    :pswitch_2ac
    const-string p0, "getAllPackages"

    return-object p0

    .line 1208
    :pswitch_2af
    const-string p0, "checkUidSignatures"

    return-object p0

    .line 1204
    :pswitch_2b2
    const-string p0, "checkSignatures"

    return-object p0

    .line 1200
    :pswitch_2b5
    const-string p0, "isProtectedBroadcast"

    return-object p0

    .line 1196
    :pswitch_2b8
    const-string p0, "getProviderInfo"

    return-object p0

    .line 1192
    :pswitch_2bb
    const-string p0, "getServiceInfo"

    return-object p0

    .line 1188
    :pswitch_2be
    const-string p0, "getReceiverInfo"

    return-object p0

    .line 1184
    :pswitch_2c1
    const-string p0, "activitySupportsIntentAsUser"

    return-object p0

    .line 1180
    :pswitch_2c4
    const-string p0, "getActivityInfo"

    return-object p0

    .line 1176
    :pswitch_2c7
    const-string p0, "getTargetSdkVersion"

    return-object p0

    .line 1172
    :pswitch_2ca
    const-string p0, "getApplicationInfo"

    return-object p0

    .line 1168
    :pswitch_2cd
    const-string p0, "canonicalToCurrentPackageNames"

    return-object p0

    .line 1164
    :pswitch_2d0
    const-string p0, "currentToCanonicalPackageNames"

    return-object p0

    .line 1160
    :pswitch_2d3
    const-string p0, "getPackageGids"

    return-object p0

    .line 1156
    :pswitch_2d6
    const-string p0, "getPackageUid"

    return-object p0

    .line 1152
    :pswitch_2d9
    const-string p0, "getPackageInfoVersioned"

    return-object p0

    .line 1148
    :pswitch_2dc
    const-string p0, "getPackageInfo"

    return-object p0

    .line 1144
    :pswitch_2df
    const-string p0, "isPackageAvailable"

    return-object p0

    .line 1140
    :pswitch_2e2
    const-string p0, "checkPackageStartable"

    return-object p0

    nop

    :pswitch_data_2e6
    .packed-switch 0x1
        :pswitch_2e2
        :pswitch_2df
        :pswitch_2dc
        :pswitch_2d9
        :pswitch_2d6
        :pswitch_2d3
        :pswitch_2d0
        :pswitch_2cd
        :pswitch_2ca
        :pswitch_2c7
        :pswitch_2c4
        :pswitch_2c1
        :pswitch_2be
        :pswitch_2bb
        :pswitch_2b8
        :pswitch_2b5
        :pswitch_2b2
        :pswitch_2af
        :pswitch_2ac
        :pswitch_2a9
        :pswitch_2a6
        :pswitch_2a3
        :pswitch_2a0
        :pswitch_29d
        :pswitch_29a
        :pswitch_296
        :pswitch_292
        :pswitch_28f
        :pswitch_28c
        :pswitch_288
        :pswitch_284
        :pswitch_280
        :pswitch_27c
        :pswitch_278
        :pswitch_274
        :pswitch_271
        :pswitch_26e
        :pswitch_26b
        :pswitch_268
        :pswitch_265
        :pswitch_261
        :pswitch_25d
        :pswitch_259
        :pswitch_255
        :pswitch_252
        :pswitch_24e
        :pswitch_24b
        :pswitch_247
        :pswitch_243
        :pswitch_23f
        :pswitch_23c
        :pswitch_239
        :pswitch_236
        :pswitch_233
        :pswitch_230
        :pswitch_22c
        :pswitch_229
        :pswitch_225
        :pswitch_222
        :pswitch_21e
        :pswitch_21b
        :pswitch_218
        :pswitch_215
        :pswitch_212
        :pswitch_20f
        :pswitch_20c
        :pswitch_208
        :pswitch_205
        :pswitch_201
        :pswitch_1fd
        :pswitch_1fa
        :pswitch_1f7
        :pswitch_1f4
        :pswitch_1f1
        :pswitch_1ee
        :pswitch_1eb
        :pswitch_1e8
        :pswitch_1e4
        :pswitch_1e1
        :pswitch_1dd
        :pswitch_1da
        :pswitch_1d6
        :pswitch_1d3
        :pswitch_1cf
        :pswitch_1cb
        :pswitch_1c7
        :pswitch_1c3
        :pswitch_1bf
        :pswitch_1bc
        :pswitch_1b8
        :pswitch_1b5
        :pswitch_1b1
        :pswitch_1ae
        :pswitch_1aa
        :pswitch_1a7
        :pswitch_1a4
        :pswitch_1a1
        :pswitch_19e
        :pswitch_19b
        :pswitch_198
        :pswitch_195
        :pswitch_192
        :pswitch_18f
        :pswitch_18c
        :pswitch_189
        :pswitch_186
        :pswitch_183
        :pswitch_17f
        :pswitch_17c
        :pswitch_178
        :pswitch_174
        :pswitch_170
        :pswitch_16d
        :pswitch_169
        :pswitch_165
        :pswitch_161
        :pswitch_15d
        :pswitch_159
        :pswitch_156
        :pswitch_153
        :pswitch_14f
        :pswitch_14c
        :pswitch_148
        :pswitch_145
        :pswitch_141
        :pswitch_13e
        :pswitch_13b
        :pswitch_138
        :pswitch_135
        :pswitch_132
        :pswitch_12e
        :pswitch_12a
        :pswitch_127
        :pswitch_123
        :pswitch_11f
        :pswitch_11c
        :pswitch_118
        :pswitch_115
        :pswitch_112
        :pswitch_10f
        :pswitch_10c
        :pswitch_109
        :pswitch_106
        :pswitch_103
        :pswitch_100
        :pswitch_fd
        :pswitch_f9
        :pswitch_f6
        :pswitch_f3
        :pswitch_ef
        :pswitch_eb
        :pswitch_e8
        :pswitch_e5
        :pswitch_e2
        :pswitch_df
        :pswitch_dc
        :pswitch_d9
        :pswitch_d6
        :pswitch_d3
        :pswitch_d0
        :pswitch_cd
        :pswitch_ca
        :pswitch_c7
        :pswitch_c4
        :pswitch_c1
        :pswitch_bd
        :pswitch_ba
        :pswitch_b7
        :pswitch_b4
        :pswitch_b1
        :pswitch_ae
        :pswitch_ab
        :pswitch_a8
        :pswitch_a5
        :pswitch_a2
        :pswitch_9f
        :pswitch_9c
        :pswitch_99
        :pswitch_96
        :pswitch_92
        :pswitch_8f
        :pswitch_8c
        :pswitch_89
        :pswitch_85
        :pswitch_81
        :pswitch_7d
        :pswitch_7a
        :pswitch_77
        :pswitch_74
        :pswitch_71
        :pswitch_6e
        :pswitch_6a
        :pswitch_67
        :pswitch_64
        :pswitch_61
        :pswitch_5d
        :pswitch_5a
        :pswitch_56
        :pswitch_53
        :pswitch_4f
        :pswitch_4c
        :pswitch_49
        :pswitch_45
        :pswitch_41
        :pswitch_3e
        :pswitch_3b
        :pswitch_38
        :pswitch_34
        :pswitch_30
        :pswitch_2d
        :pswitch_29
        :pswitch_25
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
        :pswitch_15
        :pswitch_12
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method static synthetic blacklist lambda$onTransact$0(Landroid/os/Parcel;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 3387
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3388
    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3389
    return-void
.end method

.method static synthetic blacklist lambda$onTransact$1(Landroid/os/Parcel;Ljava/util/Map;I)V
    .registers 3

    .line 3458
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 3460
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0

    .line 3461
    invoke-interface {p1, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3462
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 1131
    return-object p0
.end method

.method protected blacklist clearApplicationUserData_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9112
    iget-object v0, p0, Landroid/content/pm/IPackageManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/content/pm/IPackageManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/content/pm/IPackageManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.CLEAR_APP_USER_DATA"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9113
    return-void
.end method

.method protected blacklist clearCrossProfileIntentFilters_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9069
    iget-object v0, p0, Landroid/content/pm/IPackageManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/content/pm/IPackageManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/content/pm/IPackageManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9070
    return-void
.end method

.method protected blacklist freeStorageAndNotify_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9100
    iget-object v0, p0, Landroid/content/pm/IPackageManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/content/pm/IPackageManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/content/pm/IPackageManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.CLEAR_APP_CACHE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9101
    return-void
.end method

.method protected blacklist freeStorage_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9105
    iget-object v0, p0, Landroid/content/pm/IPackageManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/content/pm/IPackageManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/content/pm/IPackageManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.CLEAR_APP_CACHE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9106
    return-void
.end method

.method protected blacklist getAppMetadataFd_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9030
    iget-object v0, p0, Landroid/content/pm/IPackageManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/content/pm/IPackageManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/content/pm/IPackageManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.GET_APP_METADATA"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9031
    return-void
.end method

.method protected blacklist getAppMetadataSource_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9286
    iget-object v0, p0, Landroid/content/pm/IPackageManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/content/pm/IPackageManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/content/pm/IPackageManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.GET_APP_METADATA"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9287
    return-void
.end method

.method protected blacklist getInstantAppAndroidId_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9221
    iget-object v0, p0, Landroid/content/pm/IPackageManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/content/pm/IPackageManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/content/pm/IPackageManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.ACCESS_INSTANT_APPS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9222
    return-void
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 9296
    const/16 v0, 0xdd

    return v0
.end method

.method protected blacklist getMoveStatus_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9130
    iget-object v0, p0, Landroid/content/pm/IPackageManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/content/pm/IPackageManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/content/pm/IPackageManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9131
    return-void
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 2

    .line 2035
    invoke-static {p1}, Landroid/content/pm/IPackageManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected blacklist getVerifierDeviceIdentity_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9169
    iget-object v0, p0, Landroid/content/pm/IPackageManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/content/pm/IPackageManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/content/pm/IPackageManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.PACKAGE_VERIFICATION_AGENT"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9170
    return-void
.end method

.method protected blacklist makeUidVisible_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9269
    iget-object v0, p0, Landroid/content/pm/IPackageManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/content/pm/IPackageManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/content/pm/IPackageManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MAKE_UID_VISIBLE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9270
    return-void
.end method

.method protected blacklist movePackage_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9145
    iget-object v0, p0, Landroid/content/pm/IPackageManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/content/pm/IPackageManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/content/pm/IPackageManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MOVE_PACKAGE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9146
    return-void
.end method

.method protected blacklist movePrimaryStorage_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9150
    iget-object v0, p0, Landroid/content/pm/IPackageManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/content/pm/IPackageManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/content/pm/IPackageManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MOVE_PACKAGE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9151
    return-void
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2039
    move-object v10, p3

    .line 2040
    const-string v3, "android.content.pm.IPackageManager"

    const/4 v11, 0x1

    if-lt p1, v11, :cond_e

    const v4, 0xffffff

    if-gt p1, v4, :cond_e

    .line 2041
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2043
    :cond_e
    const v4, 0x5f4e5446

    if-ne p1, v4, :cond_17

    .line 2044
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2045
    return v11

    .line 2047
    :cond_17
    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_1454

    .line 4671
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 4664
    :pswitch_20
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub;->getAllApexDirectories()Ljava/util/List;

    move-result-object v0

    .line 4665
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4666
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 4667
    goto/16 :goto_1452

    .line 4655
    :pswitch_2c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4656
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4657
    invoke-virtual {p0, v1}, Landroid/content/pm/IPackageManager$Stub;->getPageSizeCompatWarningMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4658
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4659
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4660
    goto/16 :goto_1452

    .line 4645
    :pswitch_3f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4646
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4647
    invoke-virtual {p0, v1}, Landroid/content/pm/IPackageManager$Stub;->isPageSizeCompatEnabled(Ljava/lang/String;)Z

    move-result v0

    .line 4648
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4649
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4650
    goto/16 :goto_1452

    .line 4634
    :pswitch_52
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4636
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 4637
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4638
    invoke-virtual {p0, v1, v3}, Landroid/content/pm/IPackageManager$Stub;->setPageSizeAppCompatFlagsSettingsOverride(Ljava/lang/String;Z)V

    .line 4639
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4640
    goto/16 :goto_1452

    .line 4624
    :pswitch_65
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4625
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4626
    invoke-virtual {p0, v1}, Landroid/content/pm/IPackageManager$Stub;->getDomainVerificationAgent(I)Landroid/content/ComponentName;

    move-result-object v0

    .line 4627
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4628
    invoke-virtual {p3, v0, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 4629
    goto/16 :goto_1452

    .line 4612
    :pswitch_78
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4614
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 4615
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4616
    invoke-virtual {p0, v1, v3}, Landroid/content/pm/IPackageManager$Stub;->getAppMetadataSource(Ljava/lang/String;I)I

    move-result v0

    .line 4617
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4618
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4619
    goto/16 :goto_1452

    .line 4600
    :pswitch_8f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4602
    sget-object v3, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    .line 4603
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4604
    invoke-virtual {p0, v1, v3}, Landroid/content/pm/IPackageManager$Stub;->isAppArchivable(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    .line 4605
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4606
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4607
    goto/16 :goto_1452

    .line 4586
    :pswitch_aa
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4588
    sget-object v3, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    .line 4590
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 4591
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4592
    invoke-virtual {p0, v1, v3, v4}, Landroid/content/pm/IPackageManager$Stub;->getArchivedAppIcon(Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 4593
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4594
    invoke-virtual {p3, v0, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 4595
    goto/16 :goto_1452

    .line 4574
    :pswitch_c9
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4576
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 4577
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4578
    invoke-virtual {p0, v1, v3}, Landroid/content/pm/IPackageManager$Stub;->getArchivedPackage(Ljava/lang/String;I)Landroid/content/pm/ArchivedPackageParcel;

    move-result-object v0

    .line 4579
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4580
    invoke-virtual {p3, v0, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 4581
    goto/16 :goto_1452

    .line 4565
    :pswitch_e0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;

    move-result-object v1

    .line 4566
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4567
    invoke-virtual {p0, v1}, Landroid/content/pm/IPackageManager$Stub;->unregisterPackageMonitorCallback(Landroid/os/IRemoteCallback;)V

    .line 4568
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4569
    goto/16 :goto_1452

    .line 4554
    :pswitch_f3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;

    move-result-object v1

    .line 4556
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 4557
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4558
    invoke-virtual {p0, v1, v3}, Landroid/content/pm/IPackageManager$Stub;->registerPackageMonitorCallback(Landroid/os/IRemoteCallback;I)V

    .line 4559
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4560
    goto/16 :goto_1452

    .line 4542
    :pswitch_10a
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 4544
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 4545
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4546
    invoke-virtual {p0, v3, v4, v1}, Landroid/content/pm/IPackageManager$Stub;->waitForHandler(JZ)Z

    move-result v0

    .line 4547
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4548
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4549
    goto/16 :goto_1452

    .line 4528
    :pswitch_121
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4530
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    .line 4532
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 4533
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4534
    invoke-virtual {p0, v1, v3, v4}, Landroid/content/pm/IPackageManager$Stub;->canPackageQuery(Ljava/lang/String;[Ljava/lang/String;I)[Z

    move-result-object v0

    .line 4535
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4536
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 4537
    goto/16 :goto_1452

    .line 4519
    :pswitch_13c
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 4520
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4521
    invoke-virtual {p0, v1}, Landroid/content/pm/IPackageManager$Stub;->setKeepUninstalledPackages(Ljava/util/List;)V

    .line 4522
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4523
    goto/16 :goto_1452

    .line 4507
    :pswitch_14b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4509
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 4510
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4511
    invoke-virtual {p0, v1, v3}, Landroid/content/pm/IPackageManager$Stub;->queryProperty(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 4512
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4513
    invoke-virtual {p3, v0, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 4514
    goto/16 :goto_1452

    .line 4491
    :pswitch_162
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4493
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4495
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 4497
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 4498
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4499
    invoke-virtual {p0, v1, v3, v4, v5}, Landroid/content/pm/IPackageManager$Stub;->getPropertyAsUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/PackageManager$Property;

    move-result-object v0

    .line 4500
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4501
    invoke-virtual {p3, v0, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 4502
    goto/16 :goto_1452

    .line 4480
    :pswitch_181
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 4482
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 4483
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4484
    invoke-virtual {p0, v1, v3}, Landroid/content/pm/IPackageManager$Stub;->holdLock(Landroid/os/IBinder;I)V

    .line 4485
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4486
    goto/16 :goto_1452

    .line 4472
    :pswitch_194
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub;->getHoldLockToken()Landroid/os/IBinder;

    move-result-object v0

    .line 4473
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4474
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 4475
    goto/16 :goto_1452

    .line 4462
    :pswitch_1a0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4464
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 4465
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4466
    invoke-virtual {p0, v1, v3}, Landroid/content/pm/IPackageManager$Stub;->makeUidVisible(II)V

    .line 4467
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4468
    goto/16 :goto_1452

    .line 4451
    :pswitch_1b3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4453
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4454
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4455
    invoke-virtual {p0, v1, v3}, Landroid/content/pm/IPackageManager$Stub;->makeProviderVisible(ILjava/lang/String;)V

    .line 4456
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4457
    goto/16 :goto_1452

    .line 4441
    :pswitch_1c6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4442
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4443
    invoke-virtual {p0, v1}, Landroid/content/pm/IPackageManager$Stub;->isAutoRevokeWhitelisted(Ljava/lang/String;)Z

    move-result v0

    .line 4444
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4445
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4446
    goto/16 :goto_1452

    .line 4429
    :pswitch_1d9
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4431
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4432
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4433
    invoke-virtual {p0, v1, v3}, Landroid/content/pm/IPackageManager$Stub;->getMimeGroup(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 4434
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4435
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 4436
    goto/16 :goto_1452

    .line 4416
    :pswitch_1f0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4418
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 4420
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 4421
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4422
    invoke-virtual {p0, v1, v3, v4}, Landroid/content/pm/IPackageManager$Stub;->setUserMinAspectRatio(Ljava/lang/String;II)V

    .line 4423
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4424
    goto/16 :goto_1452

    .line 4404
    :pswitch_207
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4406
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 4407
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4408
    invoke-virtual {p0, v1, v3}, Landroid/content/pm/IPackageManager$Stub;->getUserMinAspectRatio(Ljava/lang/String;I)I

    move-result v0

    .line 4409
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4410
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4411
    goto/16 :goto_1452

    .line 4391
    :pswitch_21e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4393
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4395
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 4396
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4397
    invoke-virtual {p0, v1, v3, v4}, Landroid/content/pm/IPackageManager$Stub;->setSplashScreenTheme(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4398
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4399
    goto/16 :goto_1452

    .line 4379
    :pswitch_235
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4381
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 4382
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4383
    invoke-virtual {p0, v1, v3}, Landroid/content/pm/IPackageManager$Stub;->getSplashScreenTheme(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 4384
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4385
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4386
    goto/16 :goto_1452

    .line 4366
    :pswitch_24c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4368
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4370
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v4

    .line 4371
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4372
    invoke-virtual {p0, v1, v3, v4}, Landroid/content/pm/IPackageManager$Stub;->setMimeGroup(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 4373
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4374
    goto/16 :goto_1452

    .line 4354
    :pswitch_263
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4356
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 4357
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4358
    invoke-virtual {p0, v1, v3}, Landroid/content/pm/IPackageManager$Stub;->checkUidPermission(Ljava/lang/String;I)I

    move-result v0

    .line 4359
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4360
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4361
    goto/16 :goto_1452

    .line 4341
    :pswitch_27a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4343
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4345
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 4346
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4347
    invoke-virtual {p0, v1, v3, v4}, Landroid/content/pm/IPackageManager$Stub;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4348
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4349
    goto/16 :goto_1452

    .line 4327
    :pswitch_291
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4329
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4331
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 4332
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4333
    invoke-virtual {p0, v1, v3, v4}, Landroid/content/pm/IPackageManager$Stub;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 4334
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4335
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4336
    goto/16 :goto_1452

    .line 4318
    :pswitch_2ac
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4319
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4320
    invoke-virtual {p0, v1}, Landroid/content/pm/IPackageManager$Stub;->removePermission(Ljava/lang/String;)V

    .line 4321
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4322
    goto/16 :goto_1452

    .line 4308
    :pswitch_2bb
    sget-object v1, Landroid/content/pm/PermissionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PermissionInfo;

    .line 4309
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4310
    invoke-virtual {p0, v1}, Landroid/content/pm/IPackageManager$Stub;->addPermissionAsync(Landroid/content/pm/PermissionInfo;)Z

    move-result v0

    .line 4311
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4312
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4313
    goto/16 :goto_1452

    .line 4298
    :pswitch_2d2
    sget-object v1, Landroid/content/pm/PermissionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PermissionInfo;

    .line 4299
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4300
    invoke-virtual {p0, v1}, Landroid/content/pm/IPackageManager$Stub;->addPermission(Landroid/content/pm/PermissionInfo;)Z

    move-result v0

    .line 4301
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4302
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4303
    goto/16 :goto_1452

    .line 4286
    :pswitch_2e9
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4288
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 4289
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4290
    invoke-virtual {p0, v1, v3}, Landroid/content/pm/IPackageManager$Stub;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v0

    .line 4291
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4292
    invoke-virtual {p3, v0, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 4293
    goto/16 :goto_1452

    .line 4274
    :pswitch_300
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4276
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 4277
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4278
    invoke-virtual {p0, v1, v3}, Landroid/content/pm/IPackageManager$Stub;->getAppOpPermissionPackages(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 4279
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4280
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 4281
    goto/16 :goto_1452

    .line 4258
    :pswitch_317
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4260
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 4262
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 4264
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 4265
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4266
    invoke-virtual {p0, v1, v3, v4, v5}, Landroid/content/pm/IPackageManager$Stub;->getLaunchIntentSenderForPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/IntentSender;

    move-result-object v0

    .line 4267
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4268
    invoke-virtual {p3, v0, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 4269
    goto/16 :goto_1452

    .line 4236
    :pswitch_336
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4238
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 4240
    move v4, v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 4242
    move v5, v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 4244
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    .line 4245
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v6

    .line 4247
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/content/pm/IOnChecksumsReadyListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IOnChecksumsReadyListener;

    move-result-object v7

    .line 4249
    move v2, v5

    move-object v5, v6

    move-object v6, v7

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 4250
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4251
    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Landroid/content/pm/IPackageManager$Stub;->requestPackageChecksums(Ljava/lang/String;ZIILjava/util/List;Landroid/content/pm/IOnChecksumsReadyListener;I)V

    .line 4252
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4253
    goto/16 :goto_1452

    .line 4227
    :pswitch_36f
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 4228
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4229
    invoke-virtual {p0, v1}, Landroid/content/pm/IPackageManager$Stub;->notifyPackagesReplacedReceived([Ljava/lang/String;)V

    .line 4230
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4231
    goto/16 :goto_1452

    .line 4216
    :pswitch_37e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4218
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4219
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4220
    invoke-virtual {p0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->setRuntimePermissionsVersion(II)V

    .line 4221
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4222
    goto/16 :goto_1452

    .line 4206
    :pswitch_391
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4207
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4208
    invoke-virtual {p0, v1}, Landroid/content/pm/IPackageManager$Stub;->getRuntimePermissionsVersion(I)I

    move-result v0

    .line 4209
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4210
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4211
    goto/16 :goto_1452

    .line 4194
    :pswitch_3a4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4196
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4197
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4198
    invoke-virtual {p0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->getModuleInfo(Ljava/lang/String;I)Landroid/content/pm/ModuleInfo;

    move-result-object v0

    .line 4199
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4200
    invoke-virtual {p3, v0, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 4201
    goto/16 :goto_1452

    .line 4184
    :pswitch_3bb
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4185
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4186
    invoke-virtual {p0, v1}, Landroid/content/pm/IPackageManager$Stub;->getInstalledModules(I)Ljava/util/List;

    move-result-object v0

    .line 4187
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4188
    invoke-virtual {p3, v0, v11}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 4189
    goto/16 :goto_1452

    .line 4177
    :pswitch_3ce
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub;->sendDeviceCustomizationReadyBroadcast()V

    .line 4178
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4179
    goto/16 :goto_1452

    .line 4166
    :pswitch_3d6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4168
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4169
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4170
    invoke-virtual {p0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->isPackageStateProtected(Ljava/lang/String;I)Z

    move-result v0

    .line 4171
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4172
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4173
    goto/16 :goto_1452

    .line 4158
    :pswitch_3ed
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub;->getIncidentReportApproverPackageName()Ljava/lang/String;

    move-result-object v0

    .line 4159
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4160
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4161
    goto/16 :goto_1452

    .line 4151
    :pswitch_3f9
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub;->getSetupWizardPackageName()Ljava/lang/String;

    move-result-object v0

    .line 4152
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4153
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4154
    goto/16 :goto_1452

    .line 4144
    :pswitch_405
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub;->getSystemCaptionsServicePackageName()Ljava/lang/String;

    move-result-object v0

    .line 4145
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4146
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4147
    goto/16 :goto_1452

    .line 4137
    :pswitch_411
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub;->getAppPredictionServicePackageName()Ljava/lang/String;

    move-result-object v0

    .line 4138
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4139
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4140
    goto/16 :goto_1452

    .line 4130
    :pswitch_41d
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub;->getWellbeingPackageName()Ljava/lang/String;

    move-result-object v0

    .line 4131
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4132
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4133
    goto/16 :goto_1452

    .line 4123
    :pswitch_429
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub;->getRotationResolverPackageName()Ljava/lang/String;

    move-result-object v0

    .line 4124
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4125
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4126
    goto/16 :goto_1452

    .line 4116
    :pswitch_435
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub;->getAttentionServicePackageName()Ljava/lang/String;

    move-result-object v0

    .line 4117
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4118
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4119
    goto/16 :goto_1452

    .line 4109
    :pswitch_441
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub;->getSystemTextClassifierPackageName()Ljava/lang/String;

    move-result-object v0

    .line 4110
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4111
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4112
    goto/16 :goto_1452

    .line 4102
    :pswitch_44d
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub;->getDefaultTextClassifierPackageName()Ljava/lang/String;

    move-result-object v0

    .line 4103
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4104
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4105
    goto/16 :goto_1452

    .line 4089
    :pswitch_459
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4091
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 4093
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 4094
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4095
    invoke-virtual {p0, v1, v2, v3}, Landroid/content/pm/IPackageManager$Stub;->hasUidSigningCertificate(I[BI)Z

    move-result v0

    .line 4096
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4097
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4098
    goto/16 :goto_1452

    .line 4075
    :pswitch_474
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4077
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 4079
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 4080
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4081
    invoke-virtual {p0, v1, v2, v3}, Landroid/content/pm/IPackageManager$Stub;->hasSigningCertificate(Ljava/lang/String;[BI)Z

    move-result v0

    .line 4082
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4083
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4084
    goto/16 :goto_1452

    .line 4057
    :pswitch_48f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4059
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4060
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4061
    invoke-virtual {p0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->getHarmfulAppWarning(Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 4062
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4063
    if-eqz v0, :cond_4ab

    .line 4064
    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 4065
    invoke-static {v0, p3, v11}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    goto/16 :goto_1452

    .line 4068
    :cond_4ab
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4070
    goto/16 :goto_1452

    .line 4044
    :pswitch_4b0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4046
    sget-object v2, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    .line 4048
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 4049
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4050
    invoke-virtual {p0, v1, v2, v3}, Landroid/content/pm/IPackageManager$Stub;->setHarmfulAppWarning(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 4051
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4052
    goto/16 :goto_1452

    .line 4036
    :pswitch_4cb
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub;->getArtManager()Landroid/content/pm/dex/IArtManager;

    move-result-object v0

    .line 4037
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4038
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 4039
    goto/16 :goto_1452

    .line 4025
    :pswitch_4d7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 4027
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4028
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 4029
    invoke-virtual {p0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->getInstantAppAndroidId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 4030
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4031
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4032
    goto/16 :goto_1452

    .line 4017
    :pswitch_4ee
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub;->getInstantAppInstallerComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 4018
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4019
    invoke-virtual {p3, v0, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 4020
    goto/16 :goto_1452

    .line 4010
    :pswitch_4fa
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub;->getInstantAppResolverSettingsComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 4011
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4012
    invoke-virtual {p3, v0, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 4013
    goto/16 :goto_1452

    .line 4003
    :pswitch_506
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub;->getInstantAppResolverComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 4004
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 4005
    invoke-virtual {p3, v0, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 4006
    goto/16 :goto_1452

    .line 3997
    :pswitch_512
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub;->deletePreloadsFileCache()V

    .line 3998
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3999
    goto/16 :goto_1452

    .line 3986
    :pswitch_51a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3988
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3989
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3990
    invoke-virtual {p0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->canRequestPackageInstalls(Ljava/lang/String;I)Z

    move-result v0

    .line 3991
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3992
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3993
    goto/16 :goto_1452

    .line 3972
    :pswitch_531
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3974
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 3976
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 3977
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3978
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/content/pm/IPackageManager$Stub;->getDeclaredSharedLibraries(Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 3979
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3980
    invoke-virtual {p3, v0, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3981
    goto/16 :goto_1452

    .line 3958
    :pswitch_54c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3960
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 3962
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 3963
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3964
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/content/pm/IPackageManager$Stub;->getSharedLibraries(Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 3965
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3966
    invoke-virtual {p3, v0, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3967
    goto/16 :goto_1452

    .line 3946
    :pswitch_567
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3948
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3949
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3950
    invoke-virtual {p0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->getInstallReason(Ljava/lang/String;I)I

    move-result v0

    .line 3951
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3952
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3953
    goto/16 :goto_1452

    .line 3936
    :pswitch_57e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3937
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3938
    invoke-virtual {p0, v1}, Landroid/content/pm/IPackageManager$Stub;->isPackageDeviceAdminOnAnyUser(Ljava/lang/String;)Z

    move-result v0

    .line 3939
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3940
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3941
    goto/16 :goto_1452

    .line 3924
    :pswitch_591
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3926
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3927
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3928
    invoke-virtual {p0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->getChangedPackages(II)Landroid/content/pm/ChangedPackages;

    move-result-object v0

    .line 3929
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3930
    invoke-virtual {p3, v0, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3931
    goto/16 :goto_1452

    .line 3916
    :pswitch_5a8
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub;->getSharedSystemSharedLibraryPackageName()Ljava/lang/String;

    move-result-object v0

    .line 3917
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3918
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3919
    goto/16 :goto_1452

    .line 3909
    :pswitch_5b4
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub;->getServicesSystemSharedLibraryPackageName()Ljava/lang/String;

    move-result-object v0

    .line 3910
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3911
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3912
    goto/16 :goto_1452

    .line 3899
    :pswitch_5c0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3901
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 3902
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3903
    invoke-virtual {p0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->setUpdateAvailable(Ljava/lang/String;Z)V

    .line 3904
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3905
    goto/16 :goto_1452

    .line 3887
    :pswitch_5d3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3889
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 3890
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3891
    invoke-virtual {p0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->setRequiredForSystemUser(Ljava/lang/String;Z)Z

    move-result v0

    .line 3892
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3893
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3894
    goto/16 :goto_1452

    .line 3875
    :pswitch_5ea
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3877
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3878
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3879
    invoke-virtual {p0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->isInstantApp(Ljava/lang/String;I)Z

    move-result v0

    .line 3880
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3881
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3882
    goto/16 :goto_1452

    .line 3863
    :pswitch_601
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3865
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3866
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3867
    invoke-virtual {p0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->getInstantAppIcon(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3868
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3869
    invoke-virtual {p3, v0, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3870
    goto/16 :goto_1452

    .line 3849
    :pswitch_618
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3851
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 3853
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3854
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3855
    invoke-virtual {p0, v1, v2, v3}, Landroid/content/pm/IPackageManager$Stub;->setInstantAppCookie(Ljava/lang/String;[BI)Z

    move-result v0

    .line 3856
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3857
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3858
    goto/16 :goto_1452

    .line 3837
    :pswitch_633
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3839
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3840
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3841
    invoke-virtual {p0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->getInstantAppCookie(Ljava/lang/String;I)[B

    move-result-object v0

    .line 3842
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3843
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 3844
    goto/16 :goto_1452

    .line 3827
    :pswitch_64a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3828
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3829
    invoke-virtual {p0, v1}, Landroid/content/pm/IPackageManager$Stub;->getInstantApps(I)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 3830
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3831
    invoke-virtual {p3, v0, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3832
    goto/16 :goto_1452

    .line 3819
    :pswitch_65d
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub;->getSdkSandboxPackageName()Ljava/lang/String;

    move-result-object v0

    .line 3820
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3821
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3822
    goto/16 :goto_1452

    .line 3812
    :pswitch_669
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub;->getPermissionControllerPackageName()Ljava/lang/String;

    move-result-object v0

    .line 3813
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3814
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3815
    goto/16 :goto_1452

    .line 3801
    :pswitch_675
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3803
    sget-object v2, Landroid/content/pm/KeySet;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/KeySet;

    .line 3804
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3805
    invoke-virtual {p0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->isPackageSignedByKeySetExactly(Ljava/lang/String;Landroid/content/pm/KeySet;)Z

    move-result v0

    .line 3806
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3807
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3808
    goto/16 :goto_1452

    .line 3789
    :pswitch_690
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3791
    sget-object v2, Landroid/content/pm/KeySet;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/KeySet;

    .line 3792
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3793
    invoke-virtual {p0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->isPackageSignedByKeySet(Ljava/lang/String;Landroid/content/pm/KeySet;)Z

    move-result v0

    .line 3794
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3795
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3796
    goto/16 :goto_1452

    .line 3779
    :pswitch_6ab
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3780
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3781
    invoke-virtual {p0, v1}, Landroid/content/pm/IPackageManager$Stub;->getSigningKeySet(Ljava/lang/String;)Landroid/content/pm/KeySet;

    move-result-object v0

    .line 3782
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3783
    invoke-virtual {p3, v0, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3784
    goto/16 :goto_1452

    .line 3767
    :pswitch_6be
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3769
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3770
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3771
    invoke-virtual {p0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->getKeySetByAlias(Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/KeySet;

    move-result-object v0

    .line 3772
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3773
    invoke-virtual {p3, v0, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3774
    goto/16 :goto_1452

    .line 3755
    :pswitch_6d5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3757
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3758
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3759
    invoke-virtual {p0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->getBlockUninstallForUser(Ljava/lang/String;I)Z

    move-result v0

    .line 3760
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3761
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3762
    goto/16 :goto_1452

    .line 3741
    :pswitch_6ec
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3743
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 3745
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3746
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3747
    invoke-virtual {p0, v1, v2, v3}, Landroid/content/pm/IPackageManager$Stub;->setBlockUninstallForUser(Ljava/lang/String;ZI)Z

    move-result v0

    .line 3748
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3749
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3750
    goto/16 :goto_1452

    .line 3733
    :pswitch_707
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    move-result-object v0

    .line 3734
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3735
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 3736
    goto/16 :goto_1452

    .line 3720
    :pswitch_713
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3722
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 3724
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3725
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3726
    invoke-virtual {p0, v1, v2, v3}, Landroid/content/pm/IPackageManager$Stub;->setSystemAppInstallState(Ljava/lang/String;ZI)Z

    move-result v0

    .line 3727
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3728
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3729
    goto/16 :goto_1452

    .line 3709
    :pswitch_72e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3711
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 3712
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3713
    invoke-virtual {p0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->setSystemAppHiddenUntilInstalled(Ljava/lang/String;Z)V

    .line 3714
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3715
    goto/16 :goto_1452

    .line 3697
    :pswitch_741
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3699
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3700
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3701
    invoke-virtual {p0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->getApplicationHiddenSettingAsUser(Ljava/lang/String;I)Z

    move-result v0

    .line 3702
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3703
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3704
    goto/16 :goto_1452

    .line 3683
    :pswitch_758
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3685
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 3687
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3688
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3689
    invoke-virtual {p0, v1, v2, v3}, Landroid/content/pm/IPackageManager$Stub;->setApplicationHiddenSettingAsUser(Ljava/lang/String;ZI)Z

    move-result v0

    .line 3690
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3691
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3692
    goto/16 :goto_1452

    .line 3675
    :pswitch_773
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub;->isStorageLow()Z

    move-result v0

    .line 3676
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3677
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3678
    goto/16 :goto_1452

    .line 3668
    :pswitch_77f
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub;->isDeviceUpgrading()Z

    move-result v0

    .line 3669
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3670
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3671
    goto/16 :goto_1452

    .line 3661
    :pswitch_78b
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub;->isFirstBoot()Z

    move-result v0

    .line 3662
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3663
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3664
    goto/16 :goto_1452

    .line 3654
    :pswitch_797
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub;->getVerifierDeviceIdentity()Landroid/content/pm/VerifierDeviceIdentity;

    move-result-object v0

    .line 3655
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3656
    invoke-virtual {p3, v0, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3657
    goto/16 :goto_1452

    .line 3645
    :pswitch_7a3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3646
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3647
    invoke-virtual {p0, v1}, Landroid/content/pm/IPackageManager$Stub;->getAllIntentFilters(Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 3648
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3649
    invoke-virtual {p3, v0, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3650
    goto/16 :goto_1452

    .line 3635
    :pswitch_7b6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3636
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3637
    invoke-virtual {p0, v1}, Landroid/content/pm/IPackageManager$Stub;->getIntentFilterVerifications(Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 3638
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3639
    invoke-virtual {p3, v0, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3640
    goto/16 :goto_1452

    .line 3621
    :pswitch_7c9
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3623
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3625
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3626
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3627
    invoke-virtual {p0, v1, v2, v3}, Landroid/content/pm/IPackageManager$Stub;->updateIntentVerificationStatus(Ljava/lang/String;II)Z

    move-result v0

    .line 3628
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3629
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3630
    goto/16 :goto_1452

    .line 3609
    :pswitch_7e4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3611
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3612
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3613
    invoke-virtual {p0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->getIntentVerificationStatus(Ljava/lang/String;I)I

    move-result v0

    .line 3614
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3615
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3616
    goto/16 :goto_1452

    .line 3596
    :pswitch_7fb
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3598
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3600
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 3601
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3602
    invoke-virtual {p0, v1, v2, v3}, Landroid/content/pm/IPackageManager$Stub;->verifyIntentFilter(IILjava/util/List;)V

    .line 3603
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3604
    goto/16 :goto_1452

    .line 3583
    :pswitch_812
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3585
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3587
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 3588
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3589
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/content/pm/IPackageManager$Stub;->extendVerificationTimeout(IIJ)V

    .line 3590
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3591
    goto/16 :goto_1452

    .line 3572
    :pswitch_829
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3574
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3575
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3576
    invoke-virtual {p0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->verifyPendingInstall(II)V

    .line 3577
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3578
    goto/16 :goto_1452

    .line 3554
    :pswitch_83c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3556
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3558
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3560
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 3562
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v5

    .line 3563
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3564
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/IPackageManager$Stub;->installExistingPackageAsUser(Ljava/lang/String;IIILjava/util/List;)I

    move-result v0

    .line 3565
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3566
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3567
    goto/16 :goto_1452

    .line 3546
    :pswitch_860
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub;->getInstallLocation()I

    move-result v0

    .line 3547
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3548
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3549
    goto/16 :goto_1452

    .line 3537
    :pswitch_86c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3538
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3539
    invoke-virtual {p0, v1}, Landroid/content/pm/IPackageManager$Stub;->setInstallLocation(I)Z

    move-result v0

    .line 3540
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3541
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3542
    goto/16 :goto_1452

    .line 3527
    :pswitch_87f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3528
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3529
    invoke-virtual {p0, v1}, Landroid/content/pm/IPackageManager$Stub;->movePrimaryStorage(Ljava/lang/String;)I

    move-result v0

    .line 3530
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3531
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3532
    goto/16 :goto_1452

    .line 3515
    :pswitch_892
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3517
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3518
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3519
    invoke-virtual {p0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->movePackage(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 3520
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3521
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3522
    goto/16 :goto_1452

    .line 3506
    :pswitch_8a9
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/content/pm/IPackageMoveObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageMoveObserver;

    move-result-object v1

    .line 3507
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3508
    invoke-virtual {p0, v1}, Landroid/content/pm/IPackageManager$Stub;->unregisterMoveCallback(Landroid/content/pm/IPackageMoveObserver;)V

    .line 3509
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3510
    goto/16 :goto_1452

    .line 3497
    :pswitch_8bc
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/content/pm/IPackageMoveObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageMoveObserver;

    move-result-object v1

    .line 3498
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3499
    invoke-virtual {p0, v1}, Landroid/content/pm/IPackageManager$Stub;->registerMoveCallback(Landroid/content/pm/IPackageMoveObserver;)V

    .line 3500
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3501
    goto/16 :goto_1452

    .line 3487
    :pswitch_8cf
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3488
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3489
    invoke-virtual {p0, v1}, Landroid/content/pm/IPackageManager$Stub;->getMoveStatus(I)I

    move-result v0

    .line 3490
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3491
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3492
    goto/16 :goto_1452

    .line 3473
    :pswitch_8e2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3475
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3477
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 3479
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/content/pm/IDexModuleRegisterCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IDexModuleRegisterCallback;

    move-result-object v4

    .line 3480
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3481
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/content/pm/IPackageManager$Stub;->registerDexModule(Ljava/lang/String;Ljava/lang/String;ZLandroid/content/pm/IDexModuleRegisterCallback;)V

    .line 3482
    goto/16 :goto_1452

    .line 3452
    :pswitch_8fe
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3455
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3456
    if-gez v2, :cond_90a

    const/4 v4, 0x0

    goto :goto_90f

    :cond_90a
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 3457
    :goto_90f
    invoke-static {v3, v2}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v2

    new-instance v3, Landroid/content/pm/IPackageManager$Stub$$ExternalSyntheticLambda1;

    invoke-direct {v3, p2, v4}, Landroid/content/pm/IPackageManager$Stub$$ExternalSyntheticLambda1;-><init>(Landroid/os/Parcel;Ljava/util/Map;)V

    invoke-interface {v2, v3}, Ljava/util/stream/IntStream;->forEach(Ljava/util/function/IntConsumer;)V

    .line 3465
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3466
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3467
    invoke-virtual {p0, v1, v4, v2}, Landroid/content/pm/IPackageManager$Stub;->notifyDexLoad(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    .line 3468
    goto/16 :goto_1452

    .line 3442
    :pswitch_927
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3444
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3445
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3446
    invoke-virtual {p0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->notifyPackageUse(Ljava/lang/String;I)V

    .line 3447
    goto/16 :goto_1452

    .line 3434
    :pswitch_937
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub;->hasSystemUidErrors()Z

    move-result v0

    .line 3435
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3436
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3437
    goto/16 :goto_1452

    .line 3427
    :pswitch_943
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub;->isSafeMode()Z

    move-result v0

    .line 3428
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3429
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3430
    goto/16 :goto_1452

    .line 3421
    :pswitch_94f
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub;->enterSafeMode()V

    .line 3422
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3423
    goto/16 :goto_1452

    .line 3414
    :pswitch_957
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub;->getInitialNonStoppedSystemPackages()Ljava/util/List;

    move-result-object v0

    .line 3415
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3416
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 3417
    goto/16 :goto_1452

    .line 3403
    :pswitch_963
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3405
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3406
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3407
    invoke-virtual {p0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result v0

    .line 3408
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3409
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3410
    goto/16 :goto_1452

    .line 3395
    :pswitch_97a
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub;->getSystemAvailableFeatures()Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 3396
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3397
    invoke-virtual {p3, v0, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3398
    goto/16 :goto_1452

    .line 3380
    :pswitch_986
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub;->getSystemSharedLibraryNamesAndPaths()Ljava/util/Map;

    move-result-object v0

    .line 3381
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3382
    if-nez v0, :cond_995

    .line 3383
    const/4 v0, -0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1452

    .line 3385
    :cond_995
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3386
    new-instance v1, Landroid/content/pm/IPackageManager$Stub$$ExternalSyntheticLambda0;

    invoke-direct {v1, p3}, Landroid/content/pm/IPackageManager$Stub$$ExternalSyntheticLambda0;-><init>(Landroid/os/Parcel;)V

    invoke-interface {v0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 3391
    goto/16 :goto_1452

    .line 3373
    :pswitch_9a6
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub;->getSystemSharedLibraryNames()[Ljava/lang/String;

    move-result-object v0

    .line 3374
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3375
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 3376
    goto/16 :goto_1452

    .line 3361
    :pswitch_9b2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3363
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3365
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/content/pm/IPackageStatsObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageStatsObserver;

    move-result-object v3

    .line 3366
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3367
    invoke-virtual {p0, v1, v2, v3}, Landroid/content/pm/IPackageManager$Stub;->getPackageSizeInfo(Ljava/lang/String;ILandroid/content/pm/IPackageStatsObserver;)V

    .line 3368
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3369
    goto/16 :goto_1452

    .line 3352
    :pswitch_9cd
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3353
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3354
    invoke-virtual {p0, v1}, Landroid/content/pm/IPackageManager$Stub;->clearApplicationProfileData(Ljava/lang/String;)V

    .line 3355
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3356
    goto/16 :goto_1452

    .line 3337
    :pswitch_9dc
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3339
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/content/pm/IPackageDataObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageDataObserver;

    move-result-object v2

    .line 3341
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3343
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 3344
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3345
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/content/pm/IPackageManager$Stub;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;IZ)V

    .line 3346
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3347
    goto/16 :goto_1452

    .line 3324
    :pswitch_9fb
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3326
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3328
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/content/pm/IPackageDataObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageDataObserver;

    move-result-object v3

    .line 3329
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3330
    invoke-virtual {p0, v1, v2, v3}, Landroid/content/pm/IPackageManager$Stub;->deleteApplicationCacheFilesAsUser(Ljava/lang/String;ILandroid/content/pm/IPackageDataObserver;)V

    .line 3331
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3332
    goto/16 :goto_1452

    .line 3313
    :pswitch_a16
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3315
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/content/pm/IPackageDataObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageDataObserver;

    move-result-object v2

    .line 3316
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3317
    invoke-virtual {p0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->deleteApplicationCacheFiles(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V

    .line 3318
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3319
    goto/16 :goto_1452

    .line 3298
    :pswitch_a2d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3300
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 3302
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 3304
    sget-object v5, Landroid/content/IntentSender;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/IntentSender;

    .line 3305
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3306
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/IPackageManager$Stub;->freeStorage(Ljava/lang/String;JILandroid/content/IntentSender;)V

    .line 3307
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3308
    goto/16 :goto_1452

    .line 3283
    :pswitch_a4d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3285
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 3287
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 3289
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/IPackageDataObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageDataObserver;

    move-result-object v5

    .line 3290
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3291
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/IPackageManager$Stub;->freeStorageAndNotify(Ljava/lang/String;JILandroid/content/pm/IPackageDataObserver;)V

    .line 3292
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3293
    goto/16 :goto_1452

    .line 3270
    :pswitch_a6d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3272
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 3274
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3275
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3276
    invoke-virtual {p0, v1, v2, v3}, Landroid/content/pm/IPackageManager$Stub;->setPackageStoppedState(Ljava/lang/String;ZI)V

    .line 3277
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3278
    goto/16 :goto_1452

    .line 3261
    :pswitch_a84
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3262
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3263
    invoke-virtual {p0, v1}, Landroid/content/pm/IPackageManager$Stub;->flushPackageRestrictionsAsUser(I)V

    .line 3264
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3265
    goto/16 :goto_1452

    .line 3242
    :pswitch_a93
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3244
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3246
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3248
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 3250
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 3252
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 3253
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3254
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/content/pm/IPackageManager$Stub;->logAppProcessStartIfNeeded(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    .line 3255
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3256
    goto/16 :goto_1452

    .line 3230
    :pswitch_ab7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3232
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3233
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3234
    invoke-virtual {p0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->getApplicationEnabledSetting(Ljava/lang/String;I)I

    move-result v0

    .line 3235
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3236
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3237
    goto/16 :goto_1452

    .line 3213
    :pswitch_ace
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3215
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3217
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3219
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 3221
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 3222
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3223
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/IPackageManager$Stub;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V

    .line 3224
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3225
    goto/16 :goto_1452

    .line 3201
    :pswitch_aee
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 3203
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3204
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3205
    invoke-virtual {p0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->getComponentEnabledSetting(Landroid/content/ComponentName;I)I

    move-result v0

    .line 3206
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3207
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3208
    goto/16 :goto_1452

    .line 3188
    :pswitch_b09
    sget-object v1, Landroid/content/pm/PackageManager$ComponentEnabledSetting;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 3190
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3192
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 3193
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3194
    invoke-virtual {p0, v1, v2, v3}, Landroid/content/pm/IPackageManager$Stub;->setComponentEnabledSettings(Ljava/util/List;ILjava/lang/String;)V

    .line 3195
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3196
    goto/16 :goto_1452

    .line 3171
    :pswitch_b22
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 3173
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3175
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3177
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 3179
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 3180
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3181
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/IPackageManager$Stub;->setComponentEnabledSetting(Landroid/content/ComponentName;IIILjava/lang/String;)V

    .line 3182
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3183
    goto/16 :goto_1452

    .line 3160
    :pswitch_b46
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 3162
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3163
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3164
    invoke-virtual {p0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->restoreLabelAndIcon(Landroid/content/ComponentName;I)V

    .line 3165
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3166
    goto/16 :goto_1452

    .line 3145
    :pswitch_b5d
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 3147
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3149
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 3151
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 3152
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3153
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/content/pm/IPackageManager$Stub;->overrideLabelAndIcon(Landroid/content/ComponentName;Ljava/lang/String;II)V

    .line 3154
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3155
    goto/16 :goto_1452

    .line 3134
    :pswitch_b7c
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 3136
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3137
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3138
    invoke-virtual {p0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->setHomeActivity(Landroid/content/ComponentName;I)V

    .line 3139
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3140
    goto/16 :goto_1452

    .line 3123
    :pswitch_b93
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3124
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3125
    invoke-virtual {p0, v1}, Landroid/content/pm/IPackageManager$Stub;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v0

    .line 3126
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3127
    invoke-virtual {p3, v0, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3128
    invoke-virtual {p3, v1, v11}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 3129
    goto/16 :goto_1452

    .line 3112
    :pswitch_baa
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 3114
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3115
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3116
    invoke-virtual {p0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->restoreDomainVerification([BI)V

    .line 3117
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3118
    goto/16 :goto_1452

    .line 3102
    :pswitch_bbd
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3103
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3104
    invoke-virtual {p0, v1}, Landroid/content/pm/IPackageManager$Stub;->getDomainVerificationBackup(I)[B

    move-result-object v0

    .line 3105
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3106
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 3107
    goto/16 :goto_1452

    .line 3091
    :pswitch_bd0
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 3093
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3094
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3095
    invoke-virtual {p0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->restoreDefaultApps([BI)V

    .line 3096
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3097
    goto/16 :goto_1452

    .line 3081
    :pswitch_be3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3082
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3083
    invoke-virtual {p0, v1}, Landroid/content/pm/IPackageManager$Stub;->getDefaultAppsBackup(I)[B

    move-result-object v0

    .line 3084
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3085
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 3086
    goto/16 :goto_1452

    .line 3070
    :pswitch_bf6
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 3072
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3073
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3074
    invoke-virtual {p0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->restorePreferredActivities([BI)V

    .line 3075
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3076
    goto/16 :goto_1452

    .line 3060
    :pswitch_c09
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3061
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3062
    invoke-virtual {p0, v1}, Landroid/content/pm/IPackageManager$Stub;->getPreferredActivityBackup(I)[B

    move-result-object v0

    .line 3063
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3064
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 3065
    goto/16 :goto_1452

    .line 3048
    :pswitch_c1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3050
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3051
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3052
    invoke-virtual {p0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->getSuspendingPackage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 3053
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3054
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3055
    goto/16 :goto_1452

    .line 3036
    :pswitch_c33
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3038
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3039
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3040
    invoke-virtual {p0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->getSuspendedPackageAppExtras(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v0

    .line 3041
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3042
    invoke-virtual {p3, v0, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3043
    goto/16 :goto_1452

    .line 3024
    :pswitch_c4a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3026
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3027
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3028
    invoke-virtual {p0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->isPackageStoppedForUser(Ljava/lang/String;I)Z

    move-result v0

    .line 3029
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3030
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3031
    goto/16 :goto_1452

    .line 3012
    :pswitch_c61
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3014
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3015
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3016
    invoke-virtual {p0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->isPackageQuarantinedForUser(Ljava/lang/String;I)Z

    move-result v0

    .line 3017
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3018
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3019
    goto/16 :goto_1452

    .line 3000
    :pswitch_c78
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 3002
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3003
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 3004
    invoke-virtual {p0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->isPackageSuspendedForUser(Ljava/lang/String;I)Z

    move-result v0

    .line 3005
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3006
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3007
    goto/16 :goto_1452

    .line 2988
    :pswitch_c8f
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 2990
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2991
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2992
    invoke-virtual {p0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->getUnsuspendablePackagesForUser([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 2993
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2994
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 2995
    goto/16 :goto_1452

    .line 2962
    :pswitch_ca6
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 2964
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 2966
    sget-object v3, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PersistableBundle;

    .line 2968
    sget-object v4, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PersistableBundle;

    .line 2970
    sget-object v5, Landroid/content/pm/SuspendDialogInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/SuspendDialogInfo;

    .line 2972
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 2974
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 2976
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 2978
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 2979
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2980
    move-object v0, p0

    invoke-virtual/range {v0 .. v9}, Landroid/content/pm/IPackageManager$Stub;->setPackagesSuspendedAsUser([Ljava/lang/String;ZLandroid/os/PersistableBundle;Landroid/os/PersistableBundle;Landroid/content/pm/SuspendDialogInfo;ILjava/lang/String;II)[Ljava/lang/String;

    move-result-object v0

    .line 2981
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2982
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 2983
    goto/16 :goto_1452

    .line 2948
    :pswitch_ce6
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 2950
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2952
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2953
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2954
    invoke-virtual {p0, v1, v2, v3}, Landroid/content/pm/IPackageManager$Stub;->setDistractingPackageRestrictionsAsUser([Ljava/lang/String;II)[Ljava/lang/String;

    move-result-object v0

    .line 2955
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2956
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 2957
    goto/16 :goto_1452

    .line 2937
    :pswitch_d01
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2939
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2940
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2941
    invoke-virtual {p0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->clearCrossProfileIntentFilters(ILjava/lang/String;)V

    .line 2942
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2943
    goto/16 :goto_1452

    .line 2919
    :pswitch_d14
    sget-object v1, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/IntentFilter;

    .line 2921
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2923
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2925
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 2927
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 2928
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2929
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/IPackageManager$Stub;->removeCrossProfileIntentFilter(Landroid/content/IntentFilter;Ljava/lang/String;III)Z

    move-result v0

    .line 2930
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2931
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2932
    goto/16 :goto_1452

    .line 2902
    :pswitch_d3c
    sget-object v0, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/IntentFilter;

    .line 2904
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2906
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2908
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 2910
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 2911
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2912
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/IPackageManager$Stub;->addCrossProfileIntentFilter(Landroid/content/IntentFilter;Ljava/lang/String;III)V

    .line 2913
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2914
    goto/16 :goto_1452

    .line 2891
    :pswitch_d61
    sget-object v1, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/IntentFilter;

    .line 2893
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2894
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2895
    invoke-virtual {p0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->clearPersistentPreferredActivity(Landroid/content/IntentFilter;I)V

    .line 2896
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2897
    goto/16 :goto_1452

    .line 2880
    :pswitch_d78
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2882
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2883
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2884
    invoke-virtual {p0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->clearPackagePersistentPreferredActivities(Ljava/lang/String;I)V

    .line 2885
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2886
    goto/16 :goto_1452

    .line 2867
    :pswitch_d8b
    sget-object v1, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/IntentFilter;

    .line 2869
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 2871
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2872
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2873
    invoke-virtual {p0, v1, v2, v3}, Landroid/content/pm/IPackageManager$Stub;->addPersistentPreferredActivity(Landroid/content/IntentFilter;Landroid/content/ComponentName;I)V

    .line 2874
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2875
    goto/16 :goto_1452

    .line 2851
    :pswitch_daa
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2853
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2855
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 2856
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2857
    invoke-virtual {p0, v1, v2, v3}, Landroid/content/pm/IPackageManager$Stub;->getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I

    move-result v0

    .line 2858
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2859
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2860
    invoke-virtual {p3, v1, v11}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 2861
    invoke-virtual {p3, v2, v11}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 2862
    goto/16 :goto_1452

    .line 2842
    :pswitch_dcd
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2843
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2844
    invoke-virtual {p0, v1}, Landroid/content/pm/IPackageManager$Stub;->clearPackagePreferredActivities(Ljava/lang/String;)V

    .line 2845
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2846
    goto/16 :goto_1452

    .line 2825
    :pswitch_ddc
    sget-object v1, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/IntentFilter;

    .line 2827
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2829
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/content/ComponentName;

    .line 2831
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 2833
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 2834
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2835
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/IPackageManager$Stub;->replacePreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;I)V

    .line 2836
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2837
    goto/16 :goto_1452

    .line 2806
    :pswitch_e08
    sget-object v0, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/IntentFilter;

    .line 2808
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2810
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, [Landroid/content/ComponentName;

    .line 2812
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/content/ComponentName;

    .line 2814
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 2816
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v6

    .line 2817
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2818
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/content/pm/IPackageManager$Stub;->addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;IZ)V

    .line 2819
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2820
    goto/16 :goto_1452

    .line 2787
    :pswitch_e3b
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/Intent;

    .line 2789
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2791
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2793
    sget-object v0, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/content/IntentFilter;

    .line 2795
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 2797
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/content/ComponentName;

    .line 2798
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2799
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/content/pm/IPackageManager$Stub;->setLastChosenActivity(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/IntentFilter;ILandroid/content/ComponentName;)V

    .line 2800
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2801
    goto/16 :goto_1452

    .line 2773
    :pswitch_e6e
    sget-object v1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 2775
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2777
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2778
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2779
    invoke-virtual {p0, v1, v2, v3}, Landroid/content/pm/IPackageManager$Stub;->getLastChosenActivity(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 2780
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2781
    invoke-virtual {p3, v0, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2782
    goto/16 :goto_1452

    .line 2764
    :pswitch_e8d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2765
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2766
    invoke-virtual {p0, v1}, Landroid/content/pm/IPackageManager$Stub;->resetApplicationPreferences(I)V

    .line 2767
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2768
    goto/16 :goto_1452

    .line 2752
    :pswitch_e9c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2754
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2755
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2756
    invoke-virtual {p0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->getInstallSourceInfo(Ljava/lang/String;I)Landroid/content/pm/InstallSourceInfo;

    move-result-object v0

    .line 2757
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2758
    invoke-virtual {p3, v0, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2759
    goto/16 :goto_1452

    .line 2742
    :pswitch_eb3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2743
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2744
    invoke-virtual {p0, v1}, Landroid/content/pm/IPackageManager$Stub;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2745
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2746
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2747
    goto/16 :goto_1452

    .line 2729
    :pswitch_ec6
    sget-object v1, Landroid/content/pm/VersionedPackage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/VersionedPackage;

    .line 2731
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/content/pm/IPackageDeleteObserver2$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageDeleteObserver2;

    move-result-object v2

    .line 2733
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2734
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2735
    invoke-virtual {p0, v1, v2, v3}, Landroid/content/pm/IPackageManager$Stub;->deleteExistingPackageAsUser(Landroid/content/pm/VersionedPackage;Landroid/content/pm/IPackageDeleteObserver2;I)V

    .line 2736
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2737
    goto/16 :goto_1452

    .line 2714
    :pswitch_ee5
    sget-object v1, Landroid/content/pm/VersionedPackage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/VersionedPackage;

    .line 2716
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/content/pm/IPackageDeleteObserver2$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageDeleteObserver2;

    move-result-object v2

    .line 2718
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2720
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 2721
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2722
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/content/pm/IPackageManager$Stub;->deletePackageVersioned(Landroid/content/pm/VersionedPackage;Landroid/content/pm/IPackageDeleteObserver2;II)V

    .line 2723
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2724
    goto/16 :goto_1452

    .line 2697
    :pswitch_f08
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2699
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2701
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/content/pm/IPackageDeleteObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageDeleteObserver;

    move-result-object v3

    .line 2703
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 2705
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 2706
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2707
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/IPackageManager$Stub;->deletePackageAsUser(Ljava/lang/String;ILandroid/content/pm/IPackageDeleteObserver;II)V

    .line 2708
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2709
    goto/16 :goto_1452

    .line 2684
    :pswitch_f2c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2686
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2688
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 2689
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2690
    invoke-virtual {p0, v1, v2, v3}, Landroid/content/pm/IPackageManager$Stub;->setApplicationCategoryHint(Ljava/lang/String;ILjava/lang/String;)V

    .line 2691
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2692
    goto/16 :goto_1452

    .line 2675
    :pswitch_f43
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2676
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2677
    invoke-virtual {p0, v1}, Landroid/content/pm/IPackageManager$Stub;->relinquishUpdateOwnership(Ljava/lang/String;)V

    .line 2678
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2679
    goto/16 :goto_1452

    .line 2664
    :pswitch_f52
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2666
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2667
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2668
    invoke-virtual {p0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->setInstallerPackageName(Ljava/lang/String;Ljava/lang/String;)V

    .line 2669
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2670
    goto/16 :goto_1452

    .line 2653
    :pswitch_f65
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2655
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 2656
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2657
    invoke-virtual {p0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->finishPackageInstall(IZ)V

    .line 2658
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2659
    goto/16 :goto_1452

    .line 2639
    :pswitch_f78
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2641
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2643
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2644
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2645
    invoke-virtual {p0, v1, v2, v3}, Landroid/content/pm/IPackageManager$Stub;->queryInstrumentationAsUser(Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 2646
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2647
    invoke-virtual {p3, v0, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2648
    goto/16 :goto_1452

    .line 2625
    :pswitch_f93
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 2627
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2629
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2630
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2631
    invoke-virtual {p0, v1, v2, v3}, Landroid/content/pm/IPackageManager$Stub;->getInstrumentationInfoAsUser(Landroid/content/ComponentName;II)Landroid/content/pm/InstrumentationInfo;

    move-result-object v0

    .line 2632
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2633
    invoke-virtual {p3, v0, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2634
    goto/16 :goto_1452

    .line 2609
    :pswitch_fb2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2611
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2613
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 2615
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 2616
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2617
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/IPackageManager$Stub;->queryContentProviders(Ljava/lang/String;IJLjava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 2618
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2619
    invoke-virtual {p3, v0, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2620
    goto/16 :goto_1452

    .line 2596
    :pswitch_fd2
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 2598
    sget-object v2, Landroid/content/pm/ProviderInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 2599
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2600
    invoke-virtual {p0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->querySyncProviders(Ljava/util/List;Ljava/util/List;)V

    .line 2601
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2602
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 2603
    invoke-virtual {p3, v2, v11}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 2604
    goto/16 :goto_1452

    .line 2580
    :pswitch_fed
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2582
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 2584
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 2586
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 2587
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2588
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/IPackageManager$Stub;->resolveContentProviderForUid(Ljava/lang/String;JII)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    .line 2589
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2590
    invoke-virtual {p3, v0, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2591
    goto/16 :goto_1452

    .line 2566
    :pswitch_100d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2568
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 2570
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 2571
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2572
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/content/pm/IPackageManager$Stub;->resolveContentProvider(Ljava/lang/String;JI)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    .line 2573
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2574
    invoke-virtual {p3, v0, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2575
    goto/16 :goto_1452

    .line 2556
    :pswitch_1028
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2557
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2558
    invoke-virtual {p0, v1}, Landroid/content/pm/IPackageManager$Stub;->getPersistentApplications(I)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 2559
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2560
    invoke-virtual {p3, v0, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2561
    goto/16 :goto_1452

    .line 2544
    :pswitch_103b
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 2546
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2547
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2548
    invoke-virtual {p0, v1, v2, v3}, Landroid/content/pm/IPackageManager$Stub;->getInstalledApplications(JI)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 2549
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2550
    invoke-virtual {p3, v0, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2551
    goto/16 :goto_1452

    .line 2530
    :pswitch_1052
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 2532
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 2534
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 2535
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2536
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/content/pm/IPackageManager$Stub;->getPackagesHoldingPermissions([Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 2537
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2538
    invoke-virtual {p3, v0, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2539
    goto/16 :goto_1452

    .line 2518
    :pswitch_106d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2520
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2521
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2522
    invoke-virtual {p0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->getAppMetadataFd(Ljava/lang/String;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 2523
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2524
    invoke-virtual {p3, v0, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2525
    goto/16 :goto_1452

    .line 2506
    :pswitch_1084
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 2508
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2509
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2510
    invoke-virtual {p0, v1, v2, v3}, Landroid/content/pm/IPackageManager$Stub;->getInstalledPackages(JI)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 2511
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2512
    invoke-virtual {p3, v0, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2513
    goto/16 :goto_1452

    .line 2490
    :pswitch_109b
    sget-object v1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 2492
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2494
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 2496
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 2497
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2498
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/IPackageManager$Stub;->queryIntentContentProviders(Landroid/content/Intent;Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 2499
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2500
    invoke-virtual {p3, v0, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2501
    goto/16 :goto_1452

    .line 2474
    :pswitch_10bf
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/Intent;

    .line 2476
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2478
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 2480
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 2481
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2482
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/IPackageManager$Stub;->queryIntentServices(Landroid/content/Intent;Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 2483
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2484
    invoke-virtual {p3, v0, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2485
    goto/16 :goto_1452

    .line 2458
    :pswitch_10e4
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/Intent;

    .line 2460
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2462
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 2464
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 2465
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2466
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/IPackageManager$Stub;->resolveService(Landroid/content/Intent;Ljava/lang/String;JI)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 2467
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2468
    invoke-virtual {p3, v0, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2469
    goto/16 :goto_1452

    .line 2442
    :pswitch_1109
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/Intent;

    .line 2444
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2446
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 2448
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 2449
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2450
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/IPackageManager$Stub;->queryIntentReceivers(Landroid/content/Intent;Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 2451
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2452
    invoke-virtual {p3, v0, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2453
    goto/16 :goto_1452

    .line 2420
    :pswitch_112e
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/ComponentName;

    .line 2422
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, [Landroid/content/Intent;

    .line 2424
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    .line 2426
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/content/Intent;

    .line 2428
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 2430
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 2432
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 2433
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2434
    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Landroid/content/pm/IPackageManager$Stub;->queryIntentActivityOptions(Landroid/content/ComponentName;[Landroid/content/Intent;[Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 2435
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2436
    invoke-virtual {p3, v0, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2437
    goto/16 :goto_1452

    .line 2404
    :pswitch_1169
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/Intent;

    .line 2406
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2408
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 2410
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 2411
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2412
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/IPackageManager$Stub;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 2413
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2414
    invoke-virtual {p3, v0, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2415
    goto/16 :goto_1452

    .line 2388
    :pswitch_118e
    sget-object v1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 2390
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2392
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2394
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 2395
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2396
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/content/pm/IPackageManager$Stub;->canForwardTo(Landroid/content/Intent;Ljava/lang/String;II)Z

    move-result v0

    .line 2397
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2398
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2399
    goto/16 :goto_1452

    .line 2376
    :pswitch_11b1
    sget-object v1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 2378
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2379
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2380
    invoke-virtual {p0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->findPersistentPreferredActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 2381
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2382
    invoke-virtual {p3, v0, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2383
    goto/16 :goto_1452

    .line 2360
    :pswitch_11cc
    sget-object v1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 2362
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2364
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 2366
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 2367
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2368
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/IPackageManager$Stub;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;JI)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 2369
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2370
    invoke-virtual {p3, v0, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2371
    goto/16 :goto_1452

    .line 2350
    :pswitch_11f0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2351
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2352
    invoke-virtual {p0, v1}, Landroid/content/pm/IPackageManager$Stub;->isUidPrivileged(I)Z

    move-result v0

    .line 2353
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2354
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2355
    goto/16 :goto_1452

    .line 2340
    :pswitch_1203
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2341
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2342
    invoke-virtual {p0, v1}, Landroid/content/pm/IPackageManager$Stub;->getPrivateFlagsForUid(I)I

    move-result v0

    .line 2343
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2344
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2345
    goto/16 :goto_1452

    .line 2330
    :pswitch_1216
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2331
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2332
    invoke-virtual {p0, v1}, Landroid/content/pm/IPackageManager$Stub;->getFlagsForUid(I)I

    move-result v0

    .line 2333
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2334
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2335
    goto/16 :goto_1452

    .line 2320
    :pswitch_1229
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2321
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2322
    invoke-virtual {p0, v1}, Landroid/content/pm/IPackageManager$Stub;->getUidForSharedUser(Ljava/lang/String;)I

    move-result v0

    .line 2323
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2324
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2325
    goto/16 :goto_1452

    .line 2310
    :pswitch_123c
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 2311
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2312
    invoke-virtual {p0, v1}, Landroid/content/pm/IPackageManager$Stub;->getNamesForUids([I)[Ljava/lang/String;

    move-result-object v0

    .line 2313
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2314
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 2315
    goto/16 :goto_1452

    .line 2300
    :pswitch_124f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2301
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2302
    invoke-virtual {p0, v1}, Landroid/content/pm/IPackageManager$Stub;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 2303
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2304
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2305
    goto/16 :goto_1452

    .line 2290
    :pswitch_1262
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2291
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2292
    invoke-virtual {p0, v1}, Landroid/content/pm/IPackageManager$Stub;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 2293
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2294
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 2295
    goto/16 :goto_1452

    .line 2282
    :pswitch_1275
    invoke-virtual {p0}, Landroid/content/pm/IPackageManager$Stub;->getAllPackages()Ljava/util/List;

    move-result-object v0

    .line 2283
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2284
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 2285
    goto/16 :goto_1452

    .line 2271
    :pswitch_1281
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2273
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2274
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2275
    invoke-virtual {p0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->checkUidSignatures(II)I

    move-result v0

    .line 2276
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2277
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2278
    goto/16 :goto_1452

    .line 2257
    :pswitch_1298
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2259
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2261
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2262
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2263
    invoke-virtual {p0, v1, v2, v3}, Landroid/content/pm/IPackageManager$Stub;->checkSignatures(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 2264
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2265
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2266
    goto/16 :goto_1452

    .line 2247
    :pswitch_12b3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2248
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2249
    invoke-virtual {p0, v1}, Landroid/content/pm/IPackageManager$Stub;->isProtectedBroadcast(Ljava/lang/String;)Z

    move-result v0

    .line 2250
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2251
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2252
    goto/16 :goto_1452

    .line 2233
    :pswitch_12c6
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 2235
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 2237
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 2238
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2239
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/content/pm/IPackageManager$Stub;->getProviderInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    .line 2240
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2241
    invoke-virtual {p3, v0, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2242
    goto/16 :goto_1452

    .line 2219
    :pswitch_12e5
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 2221
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 2223
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 2224
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2225
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/content/pm/IPackageManager$Stub;->getServiceInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ServiceInfo;

    move-result-object v0

    .line 2226
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2227
    invoke-virtual {p3, v0, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2228
    goto/16 :goto_1452

    .line 2205
    :pswitch_1304
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 2207
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 2209
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 2210
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2211
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/content/pm/IPackageManager$Stub;->getReceiverInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 2212
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2213
    invoke-virtual {p3, v0, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2214
    goto/16 :goto_1452

    .line 2189
    :pswitch_1323
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 2191
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 2193
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 2195
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 2196
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2197
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/content/pm/IPackageManager$Stub;->activitySupportsIntentAsUser(Landroid/content/ComponentName;Landroid/content/Intent;Ljava/lang/String;I)Z

    move-result v0

    .line 2198
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2199
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2200
    goto/16 :goto_1452

    .line 2175
    :pswitch_134a
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 2177
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 2179
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 2180
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2181
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/content/pm/IPackageManager$Stub;->getActivityInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 2182
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2183
    invoke-virtual {p3, v0, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2184
    goto/16 :goto_1452

    .line 2165
    :pswitch_1369
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2166
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2167
    invoke-virtual {p0, v1}, Landroid/content/pm/IPackageManager$Stub;->getTargetSdkVersion(Ljava/lang/String;)I

    move-result v0

    .line 2168
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2169
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2170
    goto/16 :goto_1452

    .line 2151
    :pswitch_137c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2153
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 2155
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 2156
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2157
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/content/pm/IPackageManager$Stub;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 2158
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2159
    invoke-virtual {p3, v0, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2160
    goto/16 :goto_1452

    .line 2141
    :pswitch_1397
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 2142
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2143
    invoke-virtual {p0, v1}, Landroid/content/pm/IPackageManager$Stub;->canonicalToCurrentPackageNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2144
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2145
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 2146
    goto/16 :goto_1452

    .line 2131
    :pswitch_13aa
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 2132
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2133
    invoke-virtual {p0, v1}, Landroid/content/pm/IPackageManager$Stub;->currentToCanonicalPackageNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2134
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2135
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 2136
    goto/16 :goto_1452

    .line 2117
    :pswitch_13bd
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2119
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 2121
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 2122
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2123
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/content/pm/IPackageManager$Stub;->getPackageGids(Ljava/lang/String;JI)[I

    move-result-object v0

    .line 2124
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2125
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 2126
    goto/16 :goto_1452

    .line 2103
    :pswitch_13d8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2105
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 2107
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 2108
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2109
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/content/pm/IPackageManager$Stub;->getPackageUid(Ljava/lang/String;JI)I

    move-result v0

    .line 2110
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2111
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2112
    goto :goto_1452

    .line 2089
    :pswitch_13f2
    sget-object v1, Landroid/content/pm/VersionedPackage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/VersionedPackage;

    .line 2091
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 2093
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 2094
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2095
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/content/pm/IPackageManager$Stub;->getPackageInfoVersioned(Landroid/content/pm/VersionedPackage;JI)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 2096
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2097
    invoke-virtual {p3, v0, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2098
    goto :goto_1452

    .line 2075
    :pswitch_1410
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2077
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 2079
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 2080
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2081
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/content/pm/IPackageManager$Stub;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 2082
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2083
    invoke-virtual {p3, v0, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2084
    goto :goto_1452

    .line 2063
    :pswitch_142a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2065
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2066
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2067
    invoke-virtual {p0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->isPackageAvailable(Ljava/lang/String;I)Z

    move-result v0

    .line 2068
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2069
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2070
    goto :goto_1452

    .line 2052
    :pswitch_1440
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2054
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2055
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2056
    invoke-virtual {p0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->checkPackageStartable(Ljava/lang/String;I)V

    .line 2057
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2058
    nop

    .line 4674
    :goto_1452
    return v11

    nop

    :pswitch_data_1454
    .packed-switch 0x1
        :pswitch_1440
        :pswitch_142a
        :pswitch_1410
        :pswitch_13f2
        :pswitch_13d8
        :pswitch_13bd
        :pswitch_13aa
        :pswitch_1397
        :pswitch_137c
        :pswitch_1369
        :pswitch_134a
        :pswitch_1323
        :pswitch_1304
        :pswitch_12e5
        :pswitch_12c6
        :pswitch_12b3
        :pswitch_1298
        :pswitch_1281
        :pswitch_1275
        :pswitch_1262
        :pswitch_124f
        :pswitch_123c
        :pswitch_1229
        :pswitch_1216
        :pswitch_1203
        :pswitch_11f0
        :pswitch_11cc
        :pswitch_11b1
        :pswitch_118e
        :pswitch_1169
        :pswitch_112e
        :pswitch_1109
        :pswitch_10e4
        :pswitch_10bf
        :pswitch_109b
        :pswitch_1084
        :pswitch_106d
        :pswitch_1052
        :pswitch_103b
        :pswitch_1028
        :pswitch_100d
        :pswitch_fed
        :pswitch_fd2
        :pswitch_fb2
        :pswitch_f93
        :pswitch_f78
        :pswitch_f65
        :pswitch_f52
        :pswitch_f43
        :pswitch_f2c
        :pswitch_f08
        :pswitch_ee5
        :pswitch_ec6
        :pswitch_eb3
        :pswitch_e9c
        :pswitch_e8d
        :pswitch_e6e
        :pswitch_e3b
        :pswitch_e08
        :pswitch_ddc
        :pswitch_dcd
        :pswitch_daa
        :pswitch_d8b
        :pswitch_d78
        :pswitch_d61
        :pswitch_d3c
        :pswitch_d14
        :pswitch_d01
        :pswitch_ce6
        :pswitch_ca6
        :pswitch_c8f
        :pswitch_c78
        :pswitch_c61
        :pswitch_c4a
        :pswitch_c33
        :pswitch_c1c
        :pswitch_c09
        :pswitch_bf6
        :pswitch_be3
        :pswitch_bd0
        :pswitch_bbd
        :pswitch_baa
        :pswitch_b93
        :pswitch_b7c
        :pswitch_b5d
        :pswitch_b46
        :pswitch_b22
        :pswitch_b09
        :pswitch_aee
        :pswitch_ace
        :pswitch_ab7
        :pswitch_a93
        :pswitch_a84
        :pswitch_a6d
        :pswitch_a4d
        :pswitch_a2d
        :pswitch_a16
        :pswitch_9fb
        :pswitch_9dc
        :pswitch_9cd
        :pswitch_9b2
        :pswitch_9a6
        :pswitch_986
        :pswitch_97a
        :pswitch_963
        :pswitch_957
        :pswitch_94f
        :pswitch_943
        :pswitch_937
        :pswitch_927
        :pswitch_8fe
        :pswitch_8e2
        :pswitch_8cf
        :pswitch_8bc
        :pswitch_8a9
        :pswitch_892
        :pswitch_87f
        :pswitch_86c
        :pswitch_860
        :pswitch_83c
        :pswitch_829
        :pswitch_812
        :pswitch_7fb
        :pswitch_7e4
        :pswitch_7c9
        :pswitch_7b6
        :pswitch_7a3
        :pswitch_797
        :pswitch_78b
        :pswitch_77f
        :pswitch_773
        :pswitch_758
        :pswitch_741
        :pswitch_72e
        :pswitch_713
        :pswitch_707
        :pswitch_6ec
        :pswitch_6d5
        :pswitch_6be
        :pswitch_6ab
        :pswitch_690
        :pswitch_675
        :pswitch_669
        :pswitch_65d
        :pswitch_64a
        :pswitch_633
        :pswitch_618
        :pswitch_601
        :pswitch_5ea
        :pswitch_5d3
        :pswitch_5c0
        :pswitch_5b4
        :pswitch_5a8
        :pswitch_591
        :pswitch_57e
        :pswitch_567
        :pswitch_54c
        :pswitch_531
        :pswitch_51a
        :pswitch_512
        :pswitch_506
        :pswitch_4fa
        :pswitch_4ee
        :pswitch_4d7
        :pswitch_4cb
        :pswitch_4b0
        :pswitch_48f
        :pswitch_474
        :pswitch_459
        :pswitch_44d
        :pswitch_441
        :pswitch_435
        :pswitch_429
        :pswitch_41d
        :pswitch_411
        :pswitch_405
        :pswitch_3f9
        :pswitch_3ed
        :pswitch_3d6
        :pswitch_3ce
        :pswitch_3bb
        :pswitch_3a4
        :pswitch_391
        :pswitch_37e
        :pswitch_36f
        :pswitch_336
        :pswitch_317
        :pswitch_300
        :pswitch_2e9
        :pswitch_2d2
        :pswitch_2bb
        :pswitch_2ac
        :pswitch_291
        :pswitch_27a
        :pswitch_263
        :pswitch_24c
        :pswitch_235
        :pswitch_21e
        :pswitch_207
        :pswitch_1f0
        :pswitch_1d9
        :pswitch_1c6
        :pswitch_1b3
        :pswitch_1a0
        :pswitch_194
        :pswitch_181
        :pswitch_162
        :pswitch_14b
        :pswitch_13c
        :pswitch_121
        :pswitch_10a
        :pswitch_f3
        :pswitch_e0
        :pswitch_c9
        :pswitch_aa
        :pswitch_8f
        :pswitch_78
        :pswitch_65
        :pswitch_52
        :pswitch_3f
        :pswitch_2c
        :pswitch_20
    .end packed-switch
.end method

.method protected blacklist registerMoveCallback_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9135
    iget-object v0, p0, Landroid/content/pm/IPackageManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/content/pm/IPackageManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/content/pm/IPackageManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9136
    return-void
.end method

.method protected blacklist removeCrossProfileIntentFilter_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9064
    iget-object v0, p0, Landroid/content/pm/IPackageManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/content/pm/IPackageManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/content/pm/IPackageManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9065
    return-void
.end method

.method protected blacklist setApplicationHiddenSettingAsUser_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9177
    iget-object v0, p0, Landroid/content/pm/IPackageManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/content/pm/IPackageManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/content/pm/IPackageManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MANAGE_USERS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9178
    return-void
.end method

.method protected blacklist setBlockUninstallForUser_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9186
    iget-object v0, p0, Landroid/content/pm/IPackageManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/content/pm/IPackageManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/content/pm/IPackageManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.DELETE_PACKAGES"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9187
    return-void
.end method

.method protected blacklist setInstallLocation_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9155
    iget-object v0, p0, Landroid/content/pm/IPackageManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/content/pm/IPackageManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/content/pm/IPackageManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9156
    return-void
.end method

.method protected blacklist setUpdateAvailable_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9204
    iget-object v0, p0, Landroid/content/pm/IPackageManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/content/pm/IPackageManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/content/pm/IPackageManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.INSTALL_PACKAGES"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9205
    return-void
.end method

.method protected blacklist setUserMinAspectRatio_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9261
    iget-object v0, p0, Landroid/content/pm/IPackageManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/content/pm/IPackageManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/content/pm/IPackageManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.INSTALL_PACKAGES"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9262
    return-void
.end method

.method protected blacklist unregisterMoveCallback_enforcePermission()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 9140
    iget-object v0, p0, Landroid/content/pm/IPackageManager$Stub;->mEnforcer:Landroid/os/PermissionEnforcer;

    invoke-static {}, Landroid/content/pm/IPackageManager$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/content/pm/IPackageManager$Stub;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.MOUNT_UNMOUNT_FILESYSTEMS"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PermissionEnforcer;->enforcePermission(Ljava/lang/String;II)V

    .line 9141
    return-void
.end method
