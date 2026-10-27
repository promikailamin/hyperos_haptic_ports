.class public final Lcom/android/server/location/LocationManagerService$SystemInjector;
.super Ljava/lang/Object;
.source "LocationManagerService.java"

# interfaces
.implements Lcom/android/server/location/injector/Injector;


# instance fields
.field public final mAlarmHelper:Lcom/android/server/location/injector/AlarmHelper;

.field public final mAppForegroundHelper:Lcom/android/server/location/injector/SystemAppForegroundHelper;

.field public final mAppOpsHelper:Lcom/android/server/location/injector/SystemAppOpsHelper;

.field public final mContext:Landroid/content/Context;

.field public final mDeviceIdleHelper:Lcom/android/server/location/injector/SystemDeviceIdleHelper;

.field public final mDeviceStationaryHelper:Lcom/android/server/location/injector/SystemDeviceStationaryHelper;

.field public mEmergencyCallHelper:Lcom/android/server/location/injector/SystemEmergencyHelper;

.field public final mLocationPermissionsHelper:Lcom/android/server/location/injector/SystemLocationPermissionsHelper;

.field public final mLocationPowerSaveModeHelper:Lcom/android/server/location/injector/SystemLocationPowerSaveModeHelper;

.field public final mLocationSettings:Lcom/android/server/location/settings/LocationSettings;

.field public final mLocationUsageLogger:Lcom/android/server/location/injector/LocationUsageLogger;

.field public final mPackageResetHelper:Lcom/android/server/location/injector/PackageResetHelper;

.field public final mScreenInteractiveHelper:Lcom/android/server/location/injector/SystemScreenInteractiveHelper;

.field public final mSettingsHelper:Lcom/android/server/location/injector/SystemSettingsHelper;

.field public mSystemReady:Z

.field public final mUserInfoHelper:Lcom/android/server/location/injector/SystemUserInfoHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/location/injector/SystemUserInfoHelper;)V
    .registers 4

    .line 1921
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1922
    iput-object p1, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mContext:Landroid/content/Context;

    .line 1924
    iput-object p2, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mUserInfoHelper:Lcom/android/server/location/injector/SystemUserInfoHelper;

    .line 1925
    new-instance p2, Lcom/android/server/location/settings/LocationSettings;

    invoke-direct {p2, p1}, Lcom/android/server/location/settings/LocationSettings;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mLocationSettings:Lcom/android/server/location/settings/LocationSettings;

    .line 1926
    new-instance p2, Lcom/android/server/location/injector/SystemAlarmHelper;

    invoke-direct {p2, p1}, Lcom/android/server/location/injector/SystemAlarmHelper;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mAlarmHelper:Lcom/android/server/location/injector/AlarmHelper;

    .line 1927
    new-instance p2, Lcom/android/server/location/injector/SystemAppOpsHelper;

    invoke-direct {p2, p1}, Lcom/android/server/location/injector/SystemAppOpsHelper;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mAppOpsHelper:Lcom/android/server/location/injector/SystemAppOpsHelper;

    .line 1928
    new-instance v0, Lcom/android/server/location/injector/SystemLocationPermissionsHelper;

    invoke-direct {v0, p1, p2}, Lcom/android/server/location/injector/SystemLocationPermissionsHelper;-><init>(Landroid/content/Context;Lcom/android/server/location/injector/AppOpsHelper;)V

    iput-object v0, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mLocationPermissionsHelper:Lcom/android/server/location/injector/SystemLocationPermissionsHelper;

    .line 1930
    new-instance p2, Lcom/android/server/location/injector/SystemSettingsHelper;

    invoke-direct {p2, p1}, Lcom/android/server/location/injector/SystemSettingsHelper;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mSettingsHelper:Lcom/android/server/location/injector/SystemSettingsHelper;

    .line 1931
    new-instance p2, Lcom/android/server/location/injector/SystemAppForegroundHelper;

    invoke-direct {p2, p1}, Lcom/android/server/location/injector/SystemAppForegroundHelper;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mAppForegroundHelper:Lcom/android/server/location/injector/SystemAppForegroundHelper;

    .line 1932
    new-instance p2, Lcom/android/server/location/injector/SystemLocationPowerSaveModeHelper;

    invoke-direct {p2, p1}, Lcom/android/server/location/injector/SystemLocationPowerSaveModeHelper;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mLocationPowerSaveModeHelper:Lcom/android/server/location/injector/SystemLocationPowerSaveModeHelper;

    .line 1933
    new-instance p2, Lcom/android/server/location/injector/SystemScreenInteractiveHelper;

    invoke-direct {p2, p1}, Lcom/android/server/location/injector/SystemScreenInteractiveHelper;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mScreenInteractiveHelper:Lcom/android/server/location/injector/SystemScreenInteractiveHelper;

    .line 1934
    new-instance p2, Lcom/android/server/location/injector/SystemDeviceStationaryHelper;

    invoke-direct {p2}, Lcom/android/server/location/injector/SystemDeviceStationaryHelper;-><init>()V

    iput-object p2, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mDeviceStationaryHelper:Lcom/android/server/location/injector/SystemDeviceStationaryHelper;

    .line 1935
    new-instance p2, Lcom/android/server/location/injector/SystemDeviceIdleHelper;

    invoke-direct {p2, p1}, Lcom/android/server/location/injector/SystemDeviceIdleHelper;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mDeviceIdleHelper:Lcom/android/server/location/injector/SystemDeviceIdleHelper;

    .line 1936
    new-instance p2, Lcom/android/server/location/injector/LocationUsageLogger;

    invoke-direct {p2}, Lcom/android/server/location/injector/LocationUsageLogger;-><init>()V

    iput-object p2, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mLocationUsageLogger:Lcom/android/server/location/injector/LocationUsageLogger;

    .line 1937
    new-instance p2, Lcom/android/server/location/injector/SystemPackageResetHelper;

    invoke-direct {p2, p1}, Lcom/android/server/location/injector/SystemPackageResetHelper;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mPackageResetHelper:Lcom/android/server/location/injector/PackageResetHelper;

    return-void
.end method


# virtual methods
.method public getAlarmHelper()Lcom/android/server/location/injector/AlarmHelper;
    .registers 1

    .line 1970
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mAlarmHelper:Lcom/android/server/location/injector/AlarmHelper;

    return-object p0
.end method

.method public getAppForegroundHelper()Lcom/android/server/location/injector/AppForegroundHelper;
    .registers 1

    .line 1990
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mAppForegroundHelper:Lcom/android/server/location/injector/SystemAppForegroundHelper;

    return-object p0
.end method

.method public getAppOpsHelper()Lcom/android/server/location/injector/AppOpsHelper;
    .registers 1

    .line 1975
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mAppOpsHelper:Lcom/android/server/location/injector/SystemAppOpsHelper;

    return-object p0
.end method

.method public declared-synchronized getEmergencyHelper()Lcom/android/server/location/injector/EmergencyHelper;
    .registers 3

    monitor-enter p0

    .line 2015
    :try_start_1
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mEmergencyCallHelper:Lcom/android/server/location/injector/SystemEmergencyHelper;

    if-nez v0, :cond_18

    .line 2016
    new-instance v0, Lcom/android/server/location/injector/SystemEmergencyHelper;

    iget-object v1, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/location/injector/SystemEmergencyHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mEmergencyCallHelper:Lcom/android/server/location/injector/SystemEmergencyHelper;

    .line 2017
    iget-boolean v1, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mSystemReady:Z

    if-eqz v1, :cond_18

    .line 2018
    invoke-virtual {v0}, Lcom/android/server/location/injector/SystemEmergencyHelper;->onSystemReady()V

    goto :goto_18

    :catchall_16
    move-exception v0

    goto :goto_1c

    .line 2022
    :cond_18
    :goto_18
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mEmergencyCallHelper:Lcom/android/server/location/injector/SystemEmergencyHelper;
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_16

    monitor-exit p0

    return-object v0

    :goto_1c
    :try_start_1c
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_16

    throw v0
.end method

.method public getLocationPermissionsHelper()Lcom/android/server/location/injector/LocationPermissionsHelper;
    .registers 1

    .line 1980
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mLocationPermissionsHelper:Lcom/android/server/location/injector/SystemLocationPermissionsHelper;

    return-object p0
.end method

.method public getLocationPowerSaveModeHelper()Lcom/android/server/location/injector/LocationPowerSaveModeHelper;
    .registers 1

    .line 1995
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mLocationPowerSaveModeHelper:Lcom/android/server/location/injector/SystemLocationPowerSaveModeHelper;

    return-object p0
.end method

.method public getLocationSettings()Lcom/android/server/location/settings/LocationSettings;
    .registers 1

    .line 1965
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mLocationSettings:Lcom/android/server/location/settings/LocationSettings;

    return-object p0
.end method

.method public getLocationUsageLogger()Lcom/android/server/location/injector/LocationUsageLogger;
    .registers 1

    .line 2027
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mLocationUsageLogger:Lcom/android/server/location/injector/LocationUsageLogger;

    return-object p0
.end method

.method public getPackageResetHelper()Lcom/android/server/location/injector/PackageResetHelper;
    .registers 1

    .line 2032
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mPackageResetHelper:Lcom/android/server/location/injector/PackageResetHelper;

    return-object p0
.end method

.method public getScreenInteractiveHelper()Lcom/android/server/location/injector/ScreenInteractiveHelper;
    .registers 1

    .line 2000
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mScreenInteractiveHelper:Lcom/android/server/location/injector/SystemScreenInteractiveHelper;

    return-object p0
.end method

.method public getSettingsHelper()Lcom/android/server/location/injector/SettingsHelper;
    .registers 1

    .line 1985
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mSettingsHelper:Lcom/android/server/location/injector/SystemSettingsHelper;

    return-object p0
.end method

.method public getUserInfoHelper()Lcom/android/server/location/injector/UserInfoHelper;
    .registers 1

    .line 1960
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mUserInfoHelper:Lcom/android/server/location/injector/SystemUserInfoHelper;

    return-object p0
.end method

.method public declared-synchronized onSystemReady()V
    .registers 2

    monitor-enter p0

    .line 1941
    :try_start_1
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mUserInfoHelper:Lcom/android/server/location/injector/SystemUserInfoHelper;

    invoke-virtual {v0}, Lcom/android/server/location/injector/SystemUserInfoHelper;->onSystemReady()V

    .line 1942
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mAppOpsHelper:Lcom/android/server/location/injector/SystemAppOpsHelper;

    invoke-virtual {v0}, Lcom/android/server/location/injector/SystemAppOpsHelper;->onSystemReady()V

    .line 1943
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mLocationPermissionsHelper:Lcom/android/server/location/injector/SystemLocationPermissionsHelper;

    invoke-virtual {v0}, Lcom/android/server/location/injector/SystemLocationPermissionsHelper;->onSystemReady()V

    .line 1944
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mSettingsHelper:Lcom/android/server/location/injector/SystemSettingsHelper;

    invoke-virtual {v0}, Lcom/android/server/location/injector/SystemSettingsHelper;->onSystemReady()V

    .line 1945
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mAppForegroundHelper:Lcom/android/server/location/injector/SystemAppForegroundHelper;

    invoke-virtual {v0}, Lcom/android/server/location/injector/SystemAppForegroundHelper;->onSystemReady()V

    .line 1946
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mLocationPowerSaveModeHelper:Lcom/android/server/location/injector/SystemLocationPowerSaveModeHelper;

    invoke-virtual {v0}, Lcom/android/server/location/injector/SystemLocationPowerSaveModeHelper;->onSystemReady()V

    .line 1947
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mScreenInteractiveHelper:Lcom/android/server/location/injector/SystemScreenInteractiveHelper;

    invoke-virtual {v0}, Lcom/android/server/location/injector/SystemScreenInteractiveHelper;->onSystemReady()V

    .line 1948
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mDeviceStationaryHelper:Lcom/android/server/location/injector/SystemDeviceStationaryHelper;

    invoke-virtual {v0}, Lcom/android/server/location/injector/SystemDeviceStationaryHelper;->onSystemReady()V

    .line 1949
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mDeviceIdleHelper:Lcom/android/server/location/injector/SystemDeviceIdleHelper;

    invoke-virtual {v0}, Lcom/android/server/location/injector/SystemDeviceIdleHelper;->onSystemReady()V

    .line 1951
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mEmergencyCallHelper:Lcom/android/server/location/injector/SystemEmergencyHelper;

    if-eqz v0, :cond_38

    .line 1952
    invoke-virtual {v0}, Lcom/android/server/location/injector/SystemEmergencyHelper;->onSystemReady()V

    goto :goto_38

    :catchall_36
    move-exception v0

    goto :goto_3d

    :cond_38
    :goto_38
    const/4 v0, 0x1

    .line 1955
    iput-boolean v0, p0, Lcom/android/server/location/LocationManagerService$SystemInjector;->mSystemReady:Z
    :try_end_3b
    .catchall {:try_start_1 .. :try_end_3b} :catchall_36

    .line 1956
    monitor-exit p0

    return-void

    :goto_3d
    :try_start_3d
    monitor-exit p0
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_36

    throw v0
.end method
