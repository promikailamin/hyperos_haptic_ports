.class Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;
.super Ljava/lang/Object;
.source "DevicePolicyManagerService.java"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mSafetyChecker:Landroid/app/admin/DevicePolicySafetyChecker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 1732
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1733
    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public binderClearCallingIdentity()J
    .registers 3

    .line 1931
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    return-wide v0
.end method

.method public binderGetCallingPid()I
    .registers 1

    .line 1943
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p0

    return p0
.end method

.method public binderGetCallingUid()I
    .registers 1

    .line 1939
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    return p0
.end method

.method public binderGetCallingUserHandle()Landroid/os/UserHandle;
    .registers 1

    .line 1947
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object p0

    return-object p0
.end method

.method public binderIsCallingUidMyUid()Z
    .registers 2

    .line 1951
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    if-ne p0, v0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public binderRestoreCallingIdentity(J)V
    .registers 3

    .line 1935
    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method

.method public final binderWithCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;
    .registers 2

    .line 1959
    invoke-static {p1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public binderWithCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V
    .registers 2

    .line 1955
    invoke-static {p1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public createContextAsUser(Landroid/os/UserHandle;)Landroid/content/Context;
    .registers 4

    .line 1741
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1742
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public getActivityManagerInternal()Landroid/app/ActivityManagerInternal;
    .registers 1

    .line 1864
    const-class p0, Landroid/app/ActivityManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManagerInternal;

    return-object p0
.end method

.method public getActivityTaskManagerInternal()Lcom/android/server/wm/ActivityTaskManagerInternal;
    .registers 1

    .line 1766
    const-class p0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    return-object p0
.end method

.method public getAlarmManager()Landroid/app/AlarmManager;
    .registers 2

    .line 1830
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->mContext:Landroid/content/Context;

    const-class v0, Landroid/app/AlarmManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AlarmManager;

    return-object p0
.end method

.method public getAlarmManagerInternal()Lcom/android/server/AlarmManagerInternal;
    .registers 1

    .line 1834
    const-class p0, Lcom/android/server/AlarmManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/AlarmManagerInternal;

    return-object p0
.end method

.method public getAppOpsManager()Landroid/app/AppOpsManager;
    .registers 2

    .line 1885
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->mContext:Landroid/content/Context;

    const-class v0, Landroid/app/AppOpsManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AppOpsManager;

    return-object p0
.end method

.method public getConnectivityManager()Landroid/net/ConnectivityManager;
    .registers 2

    .line 1838
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->mContext:Landroid/content/Context;

    const-class v0, Landroid/net/ConnectivityManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    return-object p0
.end method

.method public getCrossProfileApps(I)Landroid/content/pm/CrossProfileApps;
    .registers 3

    .line 1893
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object p0

    const-class p1, Landroid/content/pm/CrossProfileApps;

    .line 1894
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/CrossProfileApps;

    return-object p0
.end method

.method public getDeviceManagementResourcesProvider()Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;
    .registers 1

    .line 2123
    new-instance p0, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;

    invoke-direct {p0}, Lcom/android/server/devicepolicy/DeviceManagementResourcesProvider;-><init>()V

    return-object p0
.end method

.method public getIActivityManager()Landroid/app/IActivityManager;
    .registers 1

    .line 1856
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p0

    return-object p0
.end method

.method public getIActivityTaskManager()Landroid/app/IActivityTaskManager;
    .registers 1

    .line 1860
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object p0

    return-object p0
.end method

.method public getIBackupManager()Landroid/app/backup/IBackupManager;
    .registers 1

    .line 1876
    const-string p0, "backup"

    .line 1877
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    .line 1876
    invoke-static {p0}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object p0

    return-object p0
.end method

.method public getIIpConnectivityMetrics()Landroid/net/IIpConnectivityMetrics;
    .registers 1

    .line 1797
    const-string p0, "connmetrics"

    .line 1798
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    .line 1797
    invoke-static {p0}, Landroid/net/IIpConnectivityMetrics$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IIpConnectivityMetrics;

    move-result-object p0

    return-object p0
.end method

.method public getIPackageManager()Landroid/content/pm/IPackageManager;
    .registers 1

    .line 1868
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object p0

    return-object p0
.end method

.method public getIPermissionManager()Landroid/permission/IPermissionManager;
    .registers 1

    .line 1872
    invoke-static {}, Landroid/app/AppGlobals;->getPermissionManager()Landroid/permission/IPermissionManager;

    move-result-object p0

    return-object p0
.end method

.method public getIWindowManager()Landroid/view/IWindowManager;
    .registers 1

    .line 1851
    const-string/jumbo p0, "window"

    .line 1852
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object p0

    return-object p0
.end method

.method public getLocationManager()Landroid/location/LocationManager;
    .registers 2

    .line 1847
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->mContext:Landroid/content/Context;

    const-class v0, Landroid/location/LocationManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/location/LocationManager;

    return-object p0
.end method

.method public getLockSettingsInternal()Lcom/android/server/locksettings/LockSettingsInternal;
    .registers 1

    .line 1889
    const-class p0, Lcom/android/server/locksettings/LockSettingsInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/locksettings/LockSettingsInternal;

    return-object p0
.end method

.method public getMyLooper()Landroid/os/Looper;
    .registers 1

    .line 1918
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p0

    return-object p0
.end method

.method public getNetworkPolicyManagerInternal()Lcom/android/server/net/NetworkPolicyManagerInternal;
    .registers 1

    .line 1789
    const-class p0, Lcom/android/server/net/NetworkPolicyManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/net/NetworkPolicyManagerInternal;

    return-object p0
.end method

.method public getNotificationManager()Landroid/app/NotificationManager;
    .registers 2

    .line 1793
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->mContext:Landroid/content/Context;

    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    return-object p0
.end method

.method public getPackageManager()Landroid/content/pm/PackageManager;
    .registers 1

    .line 1802
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    return-object p0
.end method

.method public getPackageManager(I)Landroid/content/pm/PackageManager;
    .registers 2

    .line 1807
    :try_start_0
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->createContextAsUser(Landroid/os/UserHandle;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0
    :try_end_c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p0

    :catch_d
    move-exception p0

    .line 1809
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;
    .registers 1

    .line 1758
    const-class p0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/PackageManagerInternal;

    return-object p0
.end method

.method public getPackageManagerLocal()Lcom/android/server/pm/PackageManagerLocal;
    .registers 1

    .line 1762
    const-class p0, Lcom/android/server/pm/PackageManagerLocal;

    invoke-static {p0}, Lcom/android/server/LocalManagerRegistry;->getManager(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/PackageManagerLocal;

    return-object p0
.end method

.method public getPersistentDataBlockManagerInternal()Lcom/android/server/pdb/PersistentDataBlockManagerInternal;
    .registers 1

    .line 1881
    const-class p0, Lcom/android/server/pdb/PersistentDataBlockManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pdb/PersistentDataBlockManagerInternal;

    return-object p0
.end method

.method public getPowerManagerInternal()Landroid/os/PowerManagerInternal;
    .registers 1

    .line 1814
    const-class p0, Landroid/os/PowerManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManagerInternal;

    return-object p0
.end method

.method public getResources()Landroid/content/res/Resources;
    .registers 1

    .line 1746
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    return-object p0
.end method

.method public getRoleManager()Landroid/app/role/RoleManager;
    .registers 2

    .line 1822
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->mContext:Landroid/content/Context;

    const-class v0, Landroid/app/role/RoleManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/role/RoleManager;

    return-object p0
.end method

.method public getTelephonyManager()Landroid/telephony/TelephonyManager;
    .registers 2

    .line 1818
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->mContext:Landroid/content/Context;

    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    return-object p0
.end method

.method public getTrustManager()Landroid/app/trust/TrustManager;
    .registers 2

    .line 1826
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "trust"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/trust/TrustManager;

    return-object p0
.end method

.method public getUsageStatsManagerInternal()Landroid/app/usage/UsageStatsManagerInternal;
    .registers 1

    .line 1785
    const-class p0, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/usage/UsageStatsManagerInternal;

    return-object p0
.end method

.method public getUserManager()Landroid/os/UserManager;
    .registers 1

    .line 1750
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p0

    return-object p0
.end method

.method public getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;
    .registers 1

    .line 1754
    const-class p0, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/UserManagerInternal;

    return-object p0
.end method

.method public getVpnManager()Landroid/net/VpnManager;
    .registers 2

    .line 1843
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->mContext:Landroid/content/Context;

    const-class v0, Landroid/net/VpnManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/VpnManager;

    return-object p0
.end method

.method public getWifiManager()Landroid/net/wifi/WifiManager;
    .registers 2

    .line 1922
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->mContext:Landroid/content/Context;

    const-class v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    return-object p0
.end method

.method public hasFeature()Z
    .registers 2

    .line 1737
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "android.software.device_admin"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public hasUserSetupCompleted(Lcom/android/server/devicepolicy/DevicePolicyData;)Z
    .registers 2

    .line 1898
    iget-boolean p0, p1, Lcom/android/server/devicepolicy/DevicePolicyData;->mUserSetupComplete:Z

    return p0
.end method

.method public isAdminInstalledCaCertAutoApproved()Z
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public isBuildDebuggable()Z
    .registers 1

    .line 1902
    sget-boolean p0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    return p0
.end method

.method public isChangeEnabled(JLjava/lang/String;I)Z
    .registers 5

    .line 2115
    invoke-static {p4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p0

    invoke-static {p1, p2, p3, p0}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result p0

    return p0
.end method

.method public keyChainBind()Landroid/security/KeyChain$KeyChainConnection;
    .registers 1

    .line 2091
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/security/KeyChain;->bind(Landroid/content/Context;)Landroid/security/KeyChain$KeyChainConnection;

    move-result-object p0

    return-object p0
.end method

.method public keyChainBindAsUser(Landroid/os/UserHandle;)Landroid/security/KeyChain$KeyChainConnection;
    .registers 2

    .line 2095
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Landroid/security/KeyChain;->bindAsUser(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/security/KeyChain$KeyChainConnection;

    move-result-object p0

    return-object p0
.end method

.method public newEnterpriseSpecificIdCalculator()Lcom/android/server/devicepolicy/EnterpriseSpecificIdCalculator;
    .registers 2

    .line 1910
    new-instance v0, Lcom/android/server/devicepolicy/EnterpriseSpecificIdCalculator;

    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/android/server/devicepolicy/EnterpriseSpecificIdCalculator;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public newLockPatternUtils()Lcom/android/internal/widget/LockPatternUtils;
    .registers 2

    .line 1906
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public newTransferOwnershipMetadataManager()Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager;
    .registers 1

    .line 2103
    new-instance p0, Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager;

    invoke-direct {p0}, Lcom/android/server/devicepolicy/TransferOwnershipMetadataManager;-><init>()V

    return-object p0
.end method

.method public pendingIntentGetActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;
    .registers 7

    .line 2015
    invoke-static/range {p1 .. p6}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public pendingIntentGetBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    .registers 5

    .line 2022
    invoke-static {p1, p2, p3, p4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public postOnSystemServerInitThreadPool(Ljava/lang/Runnable;)V
    .registers 2

    .line 2099
    const-string p0, "DevicePolicyManager"

    invoke-static {p1, p0}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public powerManagerGoToSleep(JII)V
    .registers 6

    .line 1967
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->mContext:Landroid/content/Context;

    const-class v0, Landroid/os/PowerManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/os/PowerManager;->goToSleep(JII)V

    return-void
.end method

.method public powerManagerReboot(Ljava/lang/String;)V
    .registers 3

    .line 1971
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->mContext:Landroid/content/Context;

    const-class v0, Landroid/os/PowerManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    invoke-virtual {p0, p1}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    return-void
.end method

.method public recoverySystemRebootWipeUserData(ZLjava/lang/String;ZZZZ)Z
    .registers 8

    .line 1977
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/devicepolicy/FactoryResetter;->newBuilder(Landroid/content/Context;)Lcom/android/server/devicepolicy/FactoryResetter$Builder;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->mSafetyChecker:Landroid/app/admin/DevicePolicySafetyChecker;

    invoke-virtual {v0, p0}, Lcom/android/server/devicepolicy/FactoryResetter$Builder;->setSafetyChecker(Landroid/app/admin/DevicePolicySafetyChecker;)Lcom/android/server/devicepolicy/FactoryResetter$Builder;

    move-result-object p0

    .line 1978
    invoke-virtual {p0, p2}, Lcom/android/server/devicepolicy/FactoryResetter$Builder;->setReason(Ljava/lang/String;)Lcom/android/server/devicepolicy/FactoryResetter$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/FactoryResetter$Builder;->setShutdown(Z)Lcom/android/server/devicepolicy/FactoryResetter$Builder;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/android/server/devicepolicy/FactoryResetter$Builder;->setForce(Z)Lcom/android/server/devicepolicy/FactoryResetter$Builder;

    move-result-object p0

    invoke-virtual {p0, p4}, Lcom/android/server/devicepolicy/FactoryResetter$Builder;->setWipeEuicc(Z)Lcom/android/server/devicepolicy/FactoryResetter$Builder;

    move-result-object p0

    .line 1979
    invoke-virtual {p0, p5}, Lcom/android/server/devicepolicy/FactoryResetter$Builder;->setWipeAdoptableStorage(Z)Lcom/android/server/devicepolicy/FactoryResetter$Builder;

    move-result-object p0

    .line 1980
    invoke-virtual {p0, p6}, Lcom/android/server/devicepolicy/FactoryResetter$Builder;->setWipeFactoryResetProtection(Z)Lcom/android/server/devicepolicy/FactoryResetter$Builder;

    move-result-object p0

    .line 1981
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/FactoryResetter$Builder;->build()Lcom/android/server/devicepolicy/FactoryResetter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/devicepolicy/FactoryResetter;->factoryReset()Z

    move-result p0

    return p0
.end method

.method public registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V
    .registers 5

    .line 2027
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method public roleManagerGetRoleHoldersAsUser(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;
    .registers 3

    .line 2009
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->getRoleManager()Landroid/app/role/RoleManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/app/role/RoleManager;->getRoleHoldersAsUser(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public runCryptoSelfTest()V
    .registers 1

    .line 2107
    invoke-static {}, Lcom/android/server/devicepolicy/CryptoTestHelper;->runAndLogSelfTest()V

    return-void
.end method

.method public securityLogGetLoggingEnabledProperty()Z
    .registers 1

    .line 2083
    invoke-static {}, Landroid/app/admin/SecurityLog;->getLoggingEnabledProperty()Z

    move-result p0

    return p0
.end method

.method public securityLogIsLoggingEnabled()Z
    .registers 1

    .line 2087
    invoke-static {}, Landroid/app/admin/SecurityLog;->isLoggingEnabled()Z

    move-result p0

    return p0
.end method

.method public securityLogSetLoggingEnabledProperty(Z)V
    .registers 2

    .line 2079
    invoke-static {p1}, Landroid/app/admin/SecurityLog;->setLoggingEnabledProperty(Z)V

    return-void
.end method

.method public setDevicePolicySafetyChecker(Landroid/app/admin/DevicePolicySafetyChecker;)V
    .registers 2

    .line 2119
    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->mSafetyChecker:Landroid/app/admin/DevicePolicySafetyChecker;

    return-void
.end method

.method public settingsGlobalGetInt(Ljava/lang/String;I)I
    .registers 3

    .line 2057
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public settingsGlobalGetString(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 2062
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public settingsGlobalPutInt(Ljava/lang/String;I)V
    .registers 3

    .line 2066
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public settingsGlobalPutString(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 2070
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public settingsGlobalPutStringForUser(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4

    .line 2052
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1, p2, p3}, Landroid/provider/Settings$Global;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    return-void
.end method

.method public settingsSecureGetIntForUser(Ljava/lang/String;II)I
    .registers 4

    .line 2032
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1, p2, p3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method public settingsSecureGetStringForUser(Ljava/lang/String;I)Ljava/lang/String;
    .registers 3

    .line 2037
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public settingsSecurePutIntForUser(Ljava/lang/String;II)V
    .registers 4

    .line 2042
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1, p2, p3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method public settingsSecurePutStringForUser(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4

    .line 2047
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1, p2, p3}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    return-void
.end method

.method public settingsSystemPutStringForUser(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4

    .line 2074
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->mContext:Landroid/content/Context;

    .line 2075
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 2074
    invoke-static {p0, p1, p2, p3}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    return-void
.end method

.method public storageManagerIsFileBasedEncryptionEnabled()Z
    .registers 1

    .line 1914
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncrypted()Z

    move-result p0

    return p0
.end method

.method public systemCurrentTimeMillis()J
    .registers 3

    .line 2111
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public systemPropertiesGet(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 1997
    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public systemPropertiesGetBoolean(Ljava/lang/String;Z)Z
    .registers 3

    .line 1985
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public systemPropertiesGetLong(Ljava/lang/String;J)J
    .registers 4

    .line 1989
    invoke-static {p1, p2, p3}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public systemPropertiesSet(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 2001
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final userHandleGetCallingUserId()I
    .registers 1

    .line 1963
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->binderGetCallingUid()I

    move-result p0

    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p0

    return p0
.end method

.method public userManagerIsHeadlessSystemUserMode()Z
    .registers 1

    .line 2005
    invoke-static {}, Landroid/os/UserManager;->isHeadlessSystemUserMode()Z

    move-result p0

    return p0
.end method
