.class public Lcom/android/server/location/provider/LocationProviderManager;
.super Lcom/android/server/location/listeners/ListenerMultiplexer;
.source "LocationProviderManager.java"

# interfaces
.implements Lcom/android/server/location/provider/AbstractLocationProvider$Listener;


# instance fields
.field public final mAdasPackageAllowlistChangedListener:Lcom/android/server/location/injector/SettingsHelper$GlobalSettingChangedListener;

.field public final mAlarmHelper:Lcom/android/server/location/injector/AlarmHelper;

.field public final mAltitudeConverter:Landroid/location/altitude/AltitudeConverter;

.field public final mAppForegroundChangedListener:Lcom/android/server/location/injector/AppForegroundHelper$AppForegroundListener;

.field public final mAppForegroundHelper:Lcom/android/server/location/injector/AppForegroundHelper;

.field public final mAppOpsHelper:Lcom/android/server/location/injector/AppOpsHelper;

.field public final mBackgroundThrottleIntervalChangedListener:Lcom/android/server/location/injector/SettingsHelper$GlobalSettingChangedListener;

.field public final mBackgroundThrottlePackageWhitelistChangedListener:Lcom/android/server/location/injector/SettingsHelper$GlobalSettingChangedListener;

.field public final mContext:Landroid/content/Context;

.field public mDelayedRegister:Landroid/app/AlarmManager$OnAlarmListener;

.field public final mEmergencyHelper:Lcom/android/server/location/injector/EmergencyHelper;

.field public final mEmergencyStateChangedListener:Lcom/android/server/location/injector/EmergencyHelper$EmergencyStateChangedListener;

.field public final mEnabled:Landroid/util/SparseBooleanArray;

.field public final mEnabledListeners:Ljava/util/ArrayList;

.field public final mIgnoreSettingsPackageWhitelistChangedListener:Lcom/android/server/location/injector/SettingsHelper$GlobalSettingChangedListener;

.field public volatile mIsAltitudeConverterIdle:Z

.field public final mLastLocations:Landroid/util/SparseArray;

.field public final mLocationEnabledChangedListener:Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;

.field public final mLocationFudger:Lcom/android/server/location/fudger/LocationFudger;

.field public final mLocationManagerInternal:Landroid/location/LocationManagerInternal;

.field public final mLocationPackageBlacklistChangedListener:Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;

.field public final mLocationPermissionsHelper:Lcom/android/server/location/injector/LocationPermissionsHelper;

.field public final mLocationPermissionsListener:Lcom/android/server/location/injector/LocationPermissionsHelper$LocationPermissionsListener;

.field public final mLocationPowerSaveModeChangedListener:Lcom/android/server/location/injector/LocationPowerSaveModeHelper$LocationPowerSaveModeChangedListener;

.field public final mLocationPowerSaveModeHelper:Lcom/android/server/location/injector/LocationPowerSaveModeHelper;

.field public final mLocationSettings:Lcom/android/server/location/settings/LocationSettings;

.field public final mLocationUsageLogger:Lcom/android/server/location/injector/LocationUsageLogger;

.field public final mLocationUserSettingsListener:Lcom/android/server/location/settings/LocationSettings$LocationUserSettingsListener;

.field public final mName:Ljava/lang/String;

.field public final mPackageResetHelper:Lcom/android/server/location/injector/PackageResetHelper;

.field public final mPackageResetResponder:Lcom/android/server/location/injector/PackageResetHelper$Responder;

.field public final mPassiveManager:Lcom/android/server/location/provider/PassiveLocationProviderManager;

.field public final mProvider:Lcom/android/server/location/provider/MockableLocationProvider;

.field public final mProviderRequestListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final mRequiredPermissions:Ljava/util/Collection;

.field public final mScreenInteractiveChangedListener:Lcom/android/server/location/injector/ScreenInteractiveHelper$ScreenInteractiveChangedListener;

.field public final mScreenInteractiveHelper:Lcom/android/server/location/injector/ScreenInteractiveHelper;

.field public final mSettingsHelper:Lcom/android/server/location/injector/SettingsHelper;

.field public mState:I

.field public mStateChangedListener:Lcom/android/server/location/provider/LocationProviderManager$StateChangedListener;

.field public final mUserChangedListener:Lcom/android/server/location/injector/UserInfoHelper$UserListener;

.field public final mUserHelper:Lcom/android/server/location/injector/UserInfoHelper;


# direct methods
.method public static synthetic $r8$lambda$2Txn4JahnVziiUFlJ2Tn6uMF8_E(Lcom/android/server/location/provider/LocationProviderManager;[Landroid/location/LocationManagerInternal$ProviderEnabledListener;IZ)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/location/provider/LocationProviderManager;->lambda$onEnabledChanged$24([Landroid/location/LocationManagerInternal$ProviderEnabledListener;IZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$4-7vwc_tJVKubMEcDj4sg40DgA4(ILcom/android/server/location/provider/LocationProviderManager$Registration;)Z
    .registers 2

    .line 2109
    invoke-virtual {p1, p0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->flush(I)V

    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$5WFz9G7WRD7zxHjQZ5ArYZQ75o4(Ljava/lang/Object;)Z
    .registers 1

    .line 1625
    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic $r8$lambda$5iQjh8EE3FPrmivvlPb3c2PMFpA(Lcom/android/server/location/provider/LocationProviderManager;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager;->onBackgroundThrottlePackageWhitelistChanged()V

    return-void
.end method

.method public static synthetic $r8$lambda$5rrgdzP52tsrXynxMC2VZ2PWSAQ(Lcom/android/server/location/provider/LocationProviderManager$Registration;)Z
    .registers 1

    .line 2558
    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic $r8$lambda$7dtSysLGgcVrXhe4MUTzi03qUaU(Lcom/android/server/location/provider/LocationProviderManager;ILcom/android/server/location/settings/LocationUserSettings;Lcom/android/server/location/settings/LocationUserSettings;)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/location/provider/LocationProviderManager;->onLocationUserSettingsChanged(ILcom/android/server/location/settings/LocationUserSettings;Lcom/android/server/location/settings/LocationUserSettings;)V

    return-void
.end method

.method public static synthetic $r8$lambda$CTd8XSiu-KphL-X6BLhPB_iKLso(Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration;)V
    .registers 2

    .line 2016
    invoke-virtual {p0}, Lcom/android/server/location/listeners/ListenerRegistration;->isActive()Z

    move-result v0

    if-nez v0, :cond_9

    .line 2018
    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration;->deliverNull()V

    :cond_9
    return-void
.end method

.method public static synthetic $r8$lambda$CnyPsHPQYoQq9cFaLShFwMlFS0A(ILcom/android/server/location/provider/LocationProviderManager$Registration;)Z
    .registers 2

    .line 2094
    invoke-virtual {p1, p0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->flush(I)V

    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$HEQXt7xTXtBq9FmubEAXdOzM_T0(Ljava/lang/String;Lcom/android/server/location/provider/LocationProviderManager$Registration;)Z
    .registers 2

    .line 2602
    invoke-virtual {p1, p0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->onLocationPermissionsChanged(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$HFhVDVSzXfq7fVahOAynE-qwUT0(Lcom/android/server/location/provider/LocationProviderManager;Lcom/android/server/location/provider/LocationProviderManager$StateChangedListener;Lcom/android/server/location/provider/AbstractLocationProvider$State;Lcom/android/server/location/provider/AbstractLocationProvider$State;)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/location/provider/LocationProviderManager;->lambda$onStateChanged$20(Lcom/android/server/location/provider/LocationProviderManager$StateChangedListener;Lcom/android/server/location/provider/AbstractLocationProvider$State;Lcom/android/server/location/provider/AbstractLocationProvider$State;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HllFcUsIlD-TqWBv22xcVFG-cUM(Lcom/android/server/location/provider/LocationProviderManager$Registration;)Z
    .registers 1

    .line 2581
    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic $r8$lambda$KMa2YG-tkFl_o3CaNPrML-VP51o(ILcom/android/server/location/provider/LocationProviderManager$Registration;)Z
    .registers 2

    .line 2534
    invoke-virtual {p1, p0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->onAdasGnssLocationEnabledChanged(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$L2loaW_YIGuxUq693vGSDrpYkNo(Lcom/android/server/location/provider/LocationProviderManager;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager;->onAdasAllowlistChanged()V

    return-void
.end method

.method public static synthetic $r8$lambda$Ogb0dgpiU2TFckJSwOP6u4xLmTU(Lcom/android/server/location/provider/LocationProviderManager;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager;->onEmergencyStateChanged()V

    return-void
.end method

.method public static synthetic $r8$lambda$SV4I7wUQU5xIY1BbVvCL9SwSy9U(ILcom/android/server/location/provider/LocationProviderManager$Registration;)Z
    .registers 2

    .line 2518
    invoke-virtual {p1}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/location/util/identity/CallerIdentity;->getUserId()I

    move-result p1

    if-ne p1, p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$TkAhbdNUsCCUziTe8aGu6Brc-XA(Lcom/android/server/location/provider/LocationProviderManager;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager;->onIgnoreSettingsWhitelistChanged()V

    return-void
.end method

.method public static synthetic $r8$lambda$UwaoFDDWsSF9fseHy_nG1YkTvtY(Lcom/android/server/location/provider/LocationProviderManager;Landroid/location/Location;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/location/provider/LocationProviderManager;->lambda$processReportedLocation$22(Landroid/location/Location;)V

    return-void
.end method

.method public static synthetic $r8$lambda$VA2NoQLrf4H7Sj5kG3Vzk4HHyi4(IZLcom/android/server/location/provider/LocationProviderManager$Registration;)Z
    .registers 3

    .line 2585
    invoke-virtual {p2, p0, p1}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->onForegroundChanged(IZ)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$VwFP57pdaHi7KZNl8UYXKlc9QV0(Lcom/android/server/location/provider/LocationProviderManager;Z)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/location/provider/LocationProviderManager;->onScreenInteractiveChanged(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZXN_h6DDTo8Q9vBhqWUlQSLwz7I(Lcom/android/server/location/provider/LocationProviderManager;II)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/provider/LocationProviderManager;->onUserChanged(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$a3Z8nDABZyLkK2LFh8YIMBZZX6E(Lcom/android/server/location/provider/LocationProviderManager;IZ)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/provider/LocationProviderManager;->onAppForegroundChanged(IZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$aBFEV3wFX3ivmCvDsz7trSjEq5I(Lcom/android/server/location/provider/LocationProviderManager;I)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/location/provider/LocationProviderManager;->onLocationPowerSaveModeChanged(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$eXeGsBMR0F6K_EqEIBw61OEiEAk(Lcom/android/server/location/provider/LocationProviderManager;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager;->onBackgroundThrottleIntervalChanged()V

    return-void
.end method

.method public static synthetic $r8$lambda$efhTuuSPb0J5TCwwXp5NUXaM59k()V
    .registers 0

    .line 0
    return-void
.end method

.method public static synthetic $r8$lambda$f_ftJLLok4YXekq-L2Xg6qZGeVI(Landroid/location/LocationResult;Lcom/android/server/location/provider/LocationProviderManager$Registration;)Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;
    .registers 2

    .line 2683
    invoke-virtual {p1, p0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->acceptLocationChange(Landroid/location/LocationResult;)Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$fe-5yd51TCb2DvHhVONKKh_WwBE(Ljava/lang/RuntimeException;)V
    .registers 2

    .line 2034
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public static synthetic $r8$lambda$g6Fribzg1JWWpgEvLcreQ2iGA-w(Lcom/android/server/location/provider/LocationProviderManager;Landroid/location/Location;)Landroid/location/Location;
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/location/provider/LocationProviderManager;->lambda$processReportedLocation$23(Landroid/location/Location;)Landroid/location/Location;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$hP-gCVXU4zkKYtzNoLdlV_AR0Bc(Lcom/android/server/location/provider/LocationProviderManager;Landroid/location/ILocationCallback;Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration;)V
    .registers 3

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/provider/LocationProviderManager;->lambda$getCurrentLocation$3(Landroid/location/ILocationCallback;Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hZRiCnTV5TywYMZ2jlcrR7xk8rM(Lcom/android/server/location/provider/LocationProviderManager;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/location/provider/LocationProviderManager;->onLocationPackageBlacklistChanged(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$j45zXBewELbvnru-zIXSRoJJFCs(Lcom/android/server/location/provider/LocationProviderManager;Landroid/location/provider/ProviderRequest;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/location/provider/LocationProviderManager;->lambda$setProviderRequest$8(Landroid/location/provider/ProviderRequest;)V

    return-void
.end method

.method public static synthetic $r8$lambda$n2FEOEZV3q_xd96qulK3KUNgkTI()V
    .registers 0

    .line 0
    return-void
.end method

.method public static synthetic $r8$lambda$nvoWyrmBRhgFXaH72tnC0xWRYwk(ILcom/android/server/location/provider/LocationProviderManager$Registration;)Z
    .registers 2

    .line 2597
    invoke-virtual {p1}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/location/util/identity/CallerIdentity;->getUserId()I

    move-result p1

    if-ne p1, p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$rj5ozk4l4ppn7OnDDWbU-9Y2RD4(ZLcom/android/server/location/provider/LocationProviderManager$Registration;)Z
    .registers 2

    .line 2568
    invoke-virtual {p1, p0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->onBypassLocationPermissionsChanged(Z)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$s7zfJ20dT0o5lIiJkQuv7CrrAPU(Ljava/lang/String;Lcom/android/server/location/provider/LocationProviderManager$Registration;)Z
    .registers 3

    .line 2612
    invoke-virtual {p1}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/util/identity/CallerIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2c

    .line 2614
    sget-boolean p0, Lcom/android/server/location/LocationManagerService;->D:Z

    if-eqz p0, :cond_29

    .line 2615
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "package reset remove registration "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "LocationManagerService"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2617
    :cond_29
    invoke-virtual {p1}, Lcom/android/server/location/listeners/RemovableListenerRegistration;->remove()V

    :cond_2c
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$sVxlyQVInrORO8WR9z1p0lPyhmk(Lcom/android/server/location/provider/LocationProviderManager;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/location/provider/LocationProviderManager;->onLocationEnabledChanged(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$u6BVPVBwVe16SuTOb6m-UuDZKEM(ILcom/android/server/location/provider/LocationProviderManager$Registration;)Z
    .registers 2

    .line 2606
    invoke-virtual {p1, p0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->onLocationPermissionsChanged(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$uNlR-vO2aZC65G2-hm6M6-T66Hw(ILcom/android/server/location/provider/LocationProviderManager$Registration;)Z
    .registers 2

    .line 2843
    invoke-virtual {p1}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/location/util/identity/CallerIdentity;->getUserId()I

    move-result p1

    if-ne p1, p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$uiQlh7BLxHiup4IgPrbRWg_IhaE(Ljava/lang/String;Lcom/android/server/location/provider/LocationProviderManager$Registration;)Z
    .registers 2

    .line 2627
    invoke-virtual {p1}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/location/util/identity/CallerIdentity;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDelayedRegister(Lcom/android/server/location/provider/LocationProviderManager;)Landroid/app/AlarmManager$OnAlarmListener;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mDelayedRegister:Landroid/app/AlarmManager$OnAlarmListener;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmDelayedRegister(Lcom/android/server/location/provider/LocationProviderManager;Landroid/app/AlarmManager$OnAlarmListener;)V
    .registers 2

    .line 0
    iput-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mDelayedRegister:Landroid/app/AlarmManager$OnAlarmListener;

    return-void
.end method

.method public static bridge synthetic -$$Nest$misResetableForPackage(Lcom/android/server/location/provider/LocationProviderManager;Ljava/lang/String;)Z
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/location/provider/LocationProviderManager;->isResetableForPackage(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$monLocationPermissionsChanged(Lcom/android/server/location/provider/LocationProviderManager;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/location/provider/LocationProviderManager;->onLocationPermissionsChanged(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monLocationPermissionsChanged(Lcom/android/server/location/provider/LocationProviderManager;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/location/provider/LocationProviderManager;->onLocationPermissionsChanged(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monPackageReset(Lcom/android/server/location/provider/LocationProviderManager;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/location/provider/LocationProviderManager;->onPackageReset(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/location/injector/Injector;Ljava/lang/String;Lcom/android/server/location/provider/PassiveLocationProviderManager;)V
    .registers 11

    .line 1543
    sget-object v5, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/location/provider/LocationProviderManager;-><init>(Landroid/content/Context;Lcom/android/server/location/injector/Injector;Ljava/lang/String;Lcom/android/server/location/provider/PassiveLocationProviderManager;Ljava/util/Collection;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/location/injector/Injector;Ljava/lang/String;Lcom/android/server/location/provider/PassiveLocationProviderManager;Ljava/util/Collection;)V
    .registers 7

    .line 1563
    invoke-direct {p0}, Lcom/android/server/location/listeners/ListenerMultiplexer;-><init>()V

    .line 1480
    new-instance v0, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/location/provider/LocationProviderManager;)V

    iput-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mUserChangedListener:Lcom/android/server/location/injector/UserInfoHelper$UserListener;

    .line 1481
    new-instance v0, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/location/provider/LocationProviderManager;)V

    iput-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationUserSettingsListener:Lcom/android/server/location/settings/LocationSettings$LocationUserSettingsListener;

    .line 1483
    new-instance v0, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/location/provider/LocationProviderManager;)V

    iput-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationEnabledChangedListener:Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;

    .line 1485
    new-instance v0, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/location/provider/LocationProviderManager;)V

    iput-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mBackgroundThrottlePackageWhitelistChangedListener:Lcom/android/server/location/injector/SettingsHelper$GlobalSettingChangedListener;

    .line 1487
    new-instance v0, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/location/provider/LocationProviderManager;)V

    iput-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationPackageBlacklistChangedListener:Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;

    .line 1489
    new-instance v0, Lcom/android/server/location/provider/LocationProviderManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/location/provider/LocationProviderManager$1;-><init>(Lcom/android/server/location/provider/LocationProviderManager;)V

    iput-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationPermissionsListener:Lcom/android/server/location/injector/LocationPermissionsHelper$LocationPermissionsListener;

    .line 1501
    new-instance v0, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/location/provider/LocationProviderManager;)V

    iput-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mAppForegroundChangedListener:Lcom/android/server/location/injector/AppForegroundHelper$AppForegroundListener;

    .line 1503
    new-instance v0, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/location/provider/LocationProviderManager;)V

    iput-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mBackgroundThrottleIntervalChangedListener:Lcom/android/server/location/injector/SettingsHelper$GlobalSettingChangedListener;

    .line 1505
    new-instance v0, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/location/provider/LocationProviderManager;)V

    iput-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mAdasPackageAllowlistChangedListener:Lcom/android/server/location/injector/SettingsHelper$GlobalSettingChangedListener;

    .line 1507
    new-instance v0, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/location/provider/LocationProviderManager;)V

    iput-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mIgnoreSettingsPackageWhitelistChangedListener:Lcom/android/server/location/injector/SettingsHelper$GlobalSettingChangedListener;

    .line 1509
    new-instance v0, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/location/provider/LocationProviderManager;)V

    iput-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationPowerSaveModeChangedListener:Lcom/android/server/location/injector/LocationPowerSaveModeHelper$LocationPowerSaveModeChangedListener;

    .line 1511
    new-instance v0, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/location/provider/LocationProviderManager;)V

    iput-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mScreenInteractiveChangedListener:Lcom/android/server/location/injector/ScreenInteractiveHelper$ScreenInteractiveChangedListener;

    .line 1513
    new-instance v0, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/location/provider/LocationProviderManager;)V

    iput-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mEmergencyStateChangedListener:Lcom/android/server/location/injector/EmergencyHelper$EmergencyStateChangedListener;

    .line 1515
    new-instance v0, Lcom/android/server/location/provider/LocationProviderManager$2;

    invoke-direct {v0, p0}, Lcom/android/server/location/provider/LocationProviderManager$2;-><init>(Lcom/android/server/location/provider/LocationProviderManager;)V

    iput-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mPackageResetResponder:Lcom/android/server/location/injector/PackageResetHelper$Responder;

    .line 1538
    new-instance v0, Landroid/location/altitude/AltitudeConverter;

    invoke-direct {v0}, Landroid/location/altitude/AltitudeConverter;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mAltitudeConverter:Landroid/location/altitude/AltitudeConverter;

    const/4 v0, 0x1

    .line 1539
    iput-boolean v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mIsAltitudeConverterIdle:Z

    .line 1564
    iput-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mContext:Landroid/content/Context;

    .line 1565
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    .line 1566
    iput-object p4, p0, Lcom/android/server/location/provider/LocationProviderManager;->mPassiveManager:Lcom/android/server/location/provider/PassiveLocationProviderManager;

    const/4 p1, 0x2

    .line 1567
    iput p1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mState:I

    .line 1568
    new-instance p3, Landroid/util/SparseBooleanArray;

    invoke-direct {p3, p1}, Landroid/util/SparseBooleanArray;-><init>(I)V

    iput-object p3, p0, Lcom/android/server/location/provider/LocationProviderManager;->mEnabled:Landroid/util/SparseBooleanArray;

    .line 1569
    new-instance p3, Landroid/util/SparseArray;

    invoke-direct {p3, p1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object p3, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLastLocations:Landroid/util/SparseArray;

    .line 1570
    iput-object p5, p0, Lcom/android/server/location/provider/LocationProviderManager;->mRequiredPermissions:Ljava/util/Collection;

    .line 1572
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mEnabledListeners:Ljava/util/ArrayList;

    .line 1573
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mProviderRequestListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 1575
    const-class p1, Landroid/location/LocationManagerInternal;

    .line 1576
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/LocationManagerInternal;

    .line 1575
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object p3, p1

    check-cast p3, Landroid/location/LocationManagerInternal;

    iput-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationManagerInternal:Landroid/location/LocationManagerInternal;

    .line 1577
    invoke-interface {p2}, Lcom/android/server/location/injector/Injector;->getLocationSettings()Lcom/android/server/location/settings/LocationSettings;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationSettings:Lcom/android/server/location/settings/LocationSettings;

    .line 1578
    invoke-interface {p2}, Lcom/android/server/location/injector/Injector;->getSettingsHelper()Lcom/android/server/location/injector/SettingsHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mSettingsHelper:Lcom/android/server/location/injector/SettingsHelper;

    .line 1579
    invoke-interface {p2}, Lcom/android/server/location/injector/Injector;->getUserInfoHelper()Lcom/android/server/location/injector/UserInfoHelper;

    move-result-object p3

    iput-object p3, p0, Lcom/android/server/location/provider/LocationProviderManager;->mUserHelper:Lcom/android/server/location/injector/UserInfoHelper;

    .line 1580
    invoke-interface {p2}, Lcom/android/server/location/injector/Injector;->getAlarmHelper()Lcom/android/server/location/injector/AlarmHelper;

    move-result-object p3

    iput-object p3, p0, Lcom/android/server/location/provider/LocationProviderManager;->mAlarmHelper:Lcom/android/server/location/injector/AlarmHelper;

    .line 1581
    invoke-interface {p2}, Lcom/android/server/location/injector/Injector;->getAppOpsHelper()Lcom/android/server/location/injector/AppOpsHelper;

    move-result-object p3

    iput-object p3, p0, Lcom/android/server/location/provider/LocationProviderManager;->mAppOpsHelper:Lcom/android/server/location/injector/AppOpsHelper;

    .line 1582
    invoke-interface {p2}, Lcom/android/server/location/injector/Injector;->getLocationPermissionsHelper()Lcom/android/server/location/injector/LocationPermissionsHelper;

    move-result-object p3

    iput-object p3, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationPermissionsHelper:Lcom/android/server/location/injector/LocationPermissionsHelper;

    .line 1583
    invoke-interface {p2}, Lcom/android/server/location/injector/Injector;->getAppForegroundHelper()Lcom/android/server/location/injector/AppForegroundHelper;

    move-result-object p3

    iput-object p3, p0, Lcom/android/server/location/provider/LocationProviderManager;->mAppForegroundHelper:Lcom/android/server/location/injector/AppForegroundHelper;

    .line 1584
    invoke-interface {p2}, Lcom/android/server/location/injector/Injector;->getLocationPowerSaveModeHelper()Lcom/android/server/location/injector/LocationPowerSaveModeHelper;

    move-result-object p3

    iput-object p3, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationPowerSaveModeHelper:Lcom/android/server/location/injector/LocationPowerSaveModeHelper;

    .line 1585
    invoke-interface {p2}, Lcom/android/server/location/injector/Injector;->getScreenInteractiveHelper()Lcom/android/server/location/injector/ScreenInteractiveHelper;

    move-result-object p3

    iput-object p3, p0, Lcom/android/server/location/provider/LocationProviderManager;->mScreenInteractiveHelper:Lcom/android/server/location/injector/ScreenInteractiveHelper;

    .line 1586
    invoke-interface {p2}, Lcom/android/server/location/injector/Injector;->getLocationUsageLogger()Lcom/android/server/location/injector/LocationUsageLogger;

    move-result-object p3

    iput-object p3, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationUsageLogger:Lcom/android/server/location/injector/LocationUsageLogger;

    .line 1587
    new-instance p3, Lcom/android/server/location/fudger/LocationFudger;

    invoke-virtual {p1}, Lcom/android/server/location/injector/SettingsHelper;->getCoarseLocationAccuracyM()F

    move-result p1

    invoke-direct {p3, p1}, Lcom/android/server/location/fudger/LocationFudger;-><init>(F)V

    iput-object p3, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationFudger:Lcom/android/server/location/fudger/LocationFudger;

    .line 1588
    invoke-interface {p2}, Lcom/android/server/location/injector/Injector;->getEmergencyHelper()Lcom/android/server/location/injector/EmergencyHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mEmergencyHelper:Lcom/android/server/location/injector/EmergencyHelper;

    .line 1589
    invoke-interface {p2}, Lcom/android/server/location/injector/Injector;->getPackageResetHelper()Lcom/android/server/location/injector/PackageResetHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mPackageResetHelper:Lcom/android/server/location/injector/PackageResetHelper;

    .line 1591
    new-instance p1, Lcom/android/server/location/provider/MockableLocationProvider;

    iget-object p2, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mMultiplexerLock:Ljava/lang/Object;

    invoke-direct {p1, p2}, Lcom/android/server/location/provider/MockableLocationProvider;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mProvider:Lcom/android/server/location/provider/MockableLocationProvider;

    .line 1594
    invoke-virtual {p1}, Lcom/android/server/location/provider/AbstractLocationProvider;->getController()Lcom/android/server/location/provider/LocationProviderController;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/android/server/location/provider/LocationProviderController;->setListener(Lcom/android/server/location/provider/AbstractLocationProvider$Listener;)Lcom/android/server/location/provider/AbstractLocationProvider$State;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/server/location/provider/LocationProviderManager;)Ljava/lang/Object;
    .registers 1

    .line 150
    iget-object p0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mMultiplexerLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/server/location/provider/LocationProviderManager;)Ljava/lang/Object;
    .registers 1

    .line 150
    iget-object p0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mMultiplexerLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$1000(Lcom/android/server/location/provider/LocationProviderManager;)Ljava/lang/Object;
    .registers 1

    .line 150
    iget-object p0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mMultiplexerLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$1100(Lcom/android/server/location/provider/LocationProviderManager;)Ljava/lang/Object;
    .registers 1

    .line 150
    iget-object p0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mMultiplexerLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$1200(Lcom/android/server/location/provider/LocationProviderManager;)Ljava/lang/Object;
    .registers 1

    .line 150
    iget-object p0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mMultiplexerLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$1300(Lcom/android/server/location/provider/LocationProviderManager;)Ljava/lang/Object;
    .registers 1

    .line 150
    iget-object p0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mMultiplexerLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$1400(Lcom/android/server/location/provider/LocationProviderManager;)V
    .registers 1

    .line 150
    invoke-virtual {p0}, Lcom/android/server/location/listeners/ListenerMultiplexer;->updateService()V

    return-void
.end method

.method public static synthetic access$1500(Lcom/android/server/location/provider/LocationProviderManager;)Ljava/lang/Object;
    .registers 1

    .line 150
    iget-object p0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mMultiplexerLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$1600(Lcom/android/server/location/provider/LocationProviderManager;)Ljava/lang/Object;
    .registers 1

    .line 150
    iget-object p0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mMultiplexerLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$1700(Lcom/android/server/location/provider/LocationProviderManager;)Ljava/lang/Object;
    .registers 1

    .line 150
    iget-object p0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mMultiplexerLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/server/location/provider/LocationProviderManager;)Ljava/lang/Object;
    .registers 1

    .line 150
    iget-object p0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mMultiplexerLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/server/location/provider/LocationProviderManager;)Ljava/lang/Object;
    .registers 1

    .line 150
    iget-object p0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mMultiplexerLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/android/server/location/provider/LocationProviderManager;)Ljava/lang/Object;
    .registers 1

    .line 150
    iget-object p0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mMultiplexerLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/android/server/location/provider/LocationProviderManager;)Ljava/lang/Object;
    .registers 1

    .line 150
    iget-object p0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mMultiplexerLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/android/server/location/provider/LocationProviderManager;)Ljava/lang/Object;
    .registers 1

    .line 150
    iget-object p0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mMultiplexerLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$700(Lcom/android/server/location/provider/LocationProviderManager;)Ljava/lang/Object;
    .registers 1

    .line 150
    iget-object p0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mMultiplexerLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$800(Lcom/android/server/location/provider/LocationProviderManager;)Ljava/lang/Object;
    .registers 1

    .line 150
    iget-object p0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mMultiplexerLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$900(Lcom/android/server/location/provider/LocationProviderManager;)Ljava/lang/Object;
    .registers 1

    .line 150
    iget-object p0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mMultiplexerLock:Ljava/lang/Object;

    return-object p0
.end method

.method private onLocationEnabledChanged(I)V
    .registers 5

    .line 2539
    iget-object v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mMultiplexerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2540
    :try_start_3
    iget v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_c

    .line 2541
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    goto :goto_11

    .line 2544
    :cond_c
    invoke-virtual {p0, p1}, Lcom/android/server/location/provider/LocationProviderManager;->onEnabledChanged(I)V

    .line 2545
    monitor-exit v0

    return-void

    :goto_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_a

    throw p0
.end method

.method private onLocationPackageBlacklistChanged(I)V
    .registers 3

    .line 2597
    new-instance v0, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda29;

    invoke-direct {v0, p1}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda29;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/server/location/listeners/ListenerMultiplexer;->updateRegistrations(Ljava/util/function/Predicate;)V

    return-void
.end method

.method private onLocationPermissionsChanged(I)V
    .registers 3

    .line 2606
    new-instance v0, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda36;

    invoke-direct {v0, p1}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda36;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/server/location/listeners/ListenerMultiplexer;->updateRegistrations(Ljava/util/function/Predicate;)V

    return-void
.end method

.method private onLocationPermissionsChanged(Ljava/lang/String;)V
    .registers 3

    .line 2601
    new-instance v0, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda37;

    invoke-direct {v0, p1}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda37;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/server/location/listeners/ListenerMultiplexer;->updateRegistrations(Ljava/util/function/Predicate;)V

    return-void
.end method

.method private onUserChanged(II)V
    .registers 6

    .line 2506
    iget-object v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mMultiplexerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2507
    :try_start_3
    iget v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_c

    .line 2508
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    goto :goto_2a

    :cond_c
    const/4 v1, 0x1

    if-eq p2, v1, :cond_20

    if-eq p2, v2, :cond_1c

    const/4 v1, 0x3

    if-eq p2, v1, :cond_18

    const/4 v1, 0x4

    if-eq p2, v1, :cond_20

    goto :goto_28

    .line 2524
    :cond_18
    invoke-virtual {p0, p1}, Lcom/android/server/location/provider/LocationProviderManager;->onUserStopped(I)V

    goto :goto_28

    .line 2521
    :cond_1c
    invoke-virtual {p0, p1}, Lcom/android/server/location/provider/LocationProviderManager;->onUserStarted(I)V

    goto :goto_28

    .line 2517
    :cond_20
    new-instance p2, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda23;

    invoke-direct {p2, p1}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda23;-><init>(I)V

    invoke-virtual {p0, p2}, Lcom/android/server/location/listeners/ListenerMultiplexer;->updateRegistrations(Ljava/util/function/Predicate;)V

    .line 2527
    :goto_28
    monitor-exit v0

    return-void

    :goto_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_a

    throw p0
.end method


# virtual methods
.method public addEnabledListener(Landroid/location/LocationManagerInternal$ProviderEnabledListener;)V
    .registers 5

    .line 1732
    iget-object v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mMultiplexerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1733
    :try_start_3
    iget v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 1734
    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mEnabledListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1735
    monitor-exit v0

    return-void

    :catchall_15
    move-exception p0

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public addProviderRequestListener(Landroid/location/provider/IProviderRequestListener;)V
    .registers 2

    .line 1747
    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mProviderRequestListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final calculateLastLocationRequest(Landroid/location/LastLocationRequest;Landroid/location/util/identity/CallerIdentity;)Landroid/location/LastLocationRequest;
    .registers 9

    .line 1877
    new-instance v0, Landroid/location/LastLocationRequest$Builder;

    invoke-direct {v0, p1}, Landroid/location/LastLocationRequest$Builder;-><init>(Landroid/location/LastLocationRequest;)V

    .line 1879
    invoke-virtual {p1}, Landroid/location/LastLocationRequest;->isLocationSettingsIgnored()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2d

    .line 1882
    iget-object v3, p0, Lcom/android/server/location/provider/LocationProviderManager;->mSettingsHelper:Lcom/android/server/location/injector/SettingsHelper;

    invoke-virtual {v3}, Lcom/android/server/location/injector/SettingsHelper;->getIgnoreSettingsAllowlist()Landroid/os/PackageTagsList;

    move-result-object v3

    .line 1883
    invoke-virtual {p2}, Landroid/location/util/identity/CallerIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/location/util/identity/CallerIdentity;->getAttributionTag()Ljava/lang/String;

    move-result-object v5

    .line 1882
    invoke-virtual {v3, v4, v5}, Landroid/os/PackageTagsList;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2a

    iget-object v3, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationManagerInternal:Landroid/location/LocationManagerInternal;

    const/4 v4, 0x0

    .line 1884
    invoke-virtual {v3, v4, p2}, Landroid/location/LocationManagerInternal;->isProvider(Ljava/lang/String;Landroid/location/util/identity/CallerIdentity;)Z

    move-result v3

    if-nez v3, :cond_2a

    move v1, v2

    .line 1888
    :cond_2a
    invoke-virtual {v0, v1}, Landroid/location/LastLocationRequest$Builder;->setLocationSettingsIgnored(Z)Landroid/location/LastLocationRequest$Builder;

    .line 1891
    :cond_2d
    invoke-virtual {p1}, Landroid/location/LastLocationRequest;->isAdasGnssBypass()Z

    move-result p1

    if-eqz p1, :cond_7c

    .line 1894
    const-string v1, "gps"

    iget-object v3, p0, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_45

    .line 1895
    const-string p0, "LocationManagerService"

    const-string p1, "adas gnss bypass request received in non-gps provider"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_79

    .line 1897
    :cond_45
    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mUserHelper:Lcom/android/server/location/injector/UserInfoHelper;

    invoke-virtual {p2}, Landroid/location/util/identity/CallerIdentity;->getUserId()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/server/location/injector/UserInfoHelper;->isCurrentUserId(I)Z

    move-result v1

    if-nez v1, :cond_52

    goto :goto_79

    .line 1899
    :cond_52
    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationSettings:Lcom/android/server/location/settings/LocationSettings;

    .line 1900
    invoke-virtual {p2}, Landroid/location/util/identity/CallerIdentity;->getUserId()I

    move-result v3

    .line 1899
    invoke-virtual {v1, v3}, Lcom/android/server/location/settings/LocationSettings;->getUserSettings(I)Lcom/android/server/location/settings/LocationUserSettings;

    move-result-object v1

    .line 1900
    invoke-virtual {v1}, Lcom/android/server/location/settings/LocationUserSettings;->isAdasGnssLocationEnabled()Z

    move-result v1

    if-nez v1, :cond_63

    goto :goto_79

    .line 1902
    :cond_63
    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mSettingsHelper:Lcom/android/server/location/injector/SettingsHelper;

    invoke-virtual {p0}, Lcom/android/server/location/injector/SettingsHelper;->getAdasAllowlist()Landroid/os/PackageTagsList;

    move-result-object p0

    .line 1903
    invoke-virtual {p2}, Landroid/location/util/identity/CallerIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/location/util/identity/CallerIdentity;->getAttributionTag()Ljava/lang/String;

    move-result-object p2

    .line 1902
    invoke-virtual {p0, v1, p2}, Landroid/os/PackageTagsList;->contains(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_78

    goto :goto_79

    :cond_78
    move v2, p1

    .line 1907
    :goto_79
    invoke-virtual {v0, v2}, Landroid/location/LastLocationRequest$Builder;->setAdasGnssBypass(Z)Landroid/location/LastLocationRequest$Builder;

    .line 1910
    :cond_7c
    invoke-virtual {v0}, Landroid/location/LastLocationRequest$Builder;->build()Landroid/location/LastLocationRequest;

    move-result-object p0

    return-object p0
.end method

.method public calculateRequestDelayMillis(JLjava/util/Collection;)J
    .registers 15

    .line 2470
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_4
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_55

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/provider/LocationProviderManager$Registration;

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-nez v3, :cond_17

    goto :goto_55

    .line 2475
    :cond_17
    invoke-virtual {v0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getRequest()Landroid/location/LocationRequest;

    move-result-object v3

    .line 2476
    invoke-virtual {v0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getLastDeliveredLocation()Landroid/location/Location;

    move-result-object v4

    if-nez v4, :cond_3e

    .line 2478
    invoke-virtual {v3}, Landroid/location/LocationRequest;->isLocationSettingsIgnored()Z

    move-result v5

    if-nez v5, :cond_3e

    .line 2483
    invoke-virtual {v0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/location/util/identity/CallerIdentity;->getUserId()I

    move-result v6

    .line 2484
    invoke-virtual {v0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getPermissionLevel()I

    move-result v7

    const/4 v8, 0x0

    .line 2486
    invoke-virtual {v3}, Landroid/location/LocationRequest;->getIntervalMillis()J

    move-result-wide v9

    move-object v5, p0

    .line 2482
    invoke-virtual/range {v5 .. v10}, Lcom/android/server/location/provider/LocationProviderManager;->getLastLocationUnsafe(IIZJ)Landroid/location/Location;

    move-result-object v4

    goto :goto_3f

    :cond_3e
    move-object v5, p0

    :goto_3f
    if-nez v4, :cond_42

    goto :goto_4f

    .line 2496
    :cond_42
    invoke-virtual {v3}, Landroid/location/LocationRequest;->getIntervalMillis()J

    move-result-wide v6

    invoke-virtual {v4}, Landroid/location/Location;->getElapsedRealtimeAgeMillis()J

    move-result-wide v3

    sub-long/2addr v6, v3

    .line 2495
    invoke-static {v1, v2, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 2499
    :goto_4f
    invoke-static {p1, p2, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    move-object p0, v5

    goto :goto_4

    :cond_55
    :goto_55
    return-wide p1
.end method

.method public dump(Ljava/io/FileDescriptor;Landroid/util/IndentingPrintWriter;[Ljava/lang/String;)V
    .registers 15

    .line 2874
    iget-object v1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mMultiplexerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2875
    :try_start_3
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2876
    const-string v0, " provider"

    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2877
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mProvider:Lcom/android/server/location/provider/MockableLocationProvider;

    invoke-virtual {v0}, Lcom/android/server/location/provider/MockableLocationProvider;->isMock()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 2878
    const-string v0, " [mock]"

    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1e

    :catchall_1b
    move-exception v0

    move-object p0, v0

    goto :goto_7f

    .line 2880
    :cond_1e
    :goto_1e
    const-string v0, ":"

    invoke-virtual {p2, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2881
    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2883
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/location/listeners/ListenerMultiplexer;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2885
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mUserHelper:Lcom/android/server/location/injector/UserInfoHelper;

    invoke-virtual {v0}, Lcom/android/server/location/injector/UserInfoHelper;->getRunningUserIds()[I

    move-result-object v0

    .line 2886
    array-length v2, v0

    const/4 v3, 0x0

    :goto_31
    if-ge v3, v2, :cond_74

    aget v5, v0, v3

    .line 2887
    array-length v4, v0

    const/4 v10, 0x1

    if-eq v4, v10, :cond_4a

    .line 2888
    const-string/jumbo v4, "user "

    invoke-virtual {p2, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2889
    invoke-virtual {p2, v5}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 2890
    const-string v4, ":"

    invoke-virtual {p2, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2891
    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2893
    :cond_4a
    const-string v4, "last location="

    invoke-virtual {p2, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const/4 v7, 0x0

    const-wide v8, 0x7fffffffffffffffL

    const/4 v6, 0x2

    move-object v4, p0

    .line 2894
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/location/provider/LocationProviderManager;->getLastLocationUnsafe(IIZJ)Landroid/location/Location;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 2895
    const-string p0, "enabled="

    invoke-virtual {p2, p0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2896
    invoke-virtual {v4, v5}, Lcom/android/server/location/provider/LocationProviderManager;->isEnabled(I)Z

    move-result p0

    invoke-virtual {p2, p0}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 2897
    array-length p0, v0

    if-eq p0, v10, :cond_70

    .line 2898
    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    :cond_70
    add-int/lit8 v3, v3, 0x1

    move-object p0, v4

    goto :goto_31

    :cond_74
    move-object v4, p0

    .line 2901
    monitor-exit v1
    :try_end_76
    .catchall {:try_start_3 .. :try_end_76} :catchall_1b

    .line 2903
    iget-object p0, v4, Lcom/android/server/location/provider/LocationProviderManager;->mProvider:Lcom/android/server/location/provider/MockableLocationProvider;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/location/provider/MockableLocationProvider;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2905
    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void

    .line 2901
    :goto_7f
    :try_start_7f
    monitor-exit v1
    :try_end_80
    .catchall {:try_start_7f .. :try_end_80} :catchall_1b

    throw p0
.end method

.method public flush(Landroid/app/PendingIntent;I)V
    .registers 6

    .line 2106
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2108
    :try_start_4
    new-instance v2, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda20;

    invoke-direct {v2, p2}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda20;-><init>(I)V

    invoke-virtual {p0, p1, v2}, Lcom/android/server/location/listeners/ListenerMultiplexer;->updateRegistration(Ljava/lang/Object;Ljava/util/function/Predicate;)Z

    move-result p0
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_1c

    if-eqz p0, :cond_13

    .line 2117
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 2113
    :cond_13
    :try_start_13
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "unregistered pending intent cannot be flushed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1c
    .catchall {:try_start_13 .. :try_end_1c} :catchall_1c

    :catchall_1c
    move-exception p0

    .line 2117
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2118
    throw p0
.end method

.method public flush(Landroid/location/ILocationListener;I)V
    .registers 6

    .line 2091
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2093
    :try_start_4
    invoke-interface {p1}, Landroid/location/ILocationListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    new-instance v2, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda21;

    invoke-direct {v2, p2}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda21;-><init>(I)V

    invoke-virtual {p0, p1, v2}, Lcom/android/server/location/listeners/ListenerMultiplexer;->updateRegistration(Ljava/lang/Object;Ljava/util/function/Predicate;)Z

    move-result p0
    :try_end_11
    .catchall {:try_start_4 .. :try_end_11} :catchall_20

    if-eqz p0, :cond_17

    .line 2101
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 2098
    :cond_17
    :try_start_17
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "unregistered listener cannot be flushed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_20
    .catchall {:try_start_17 .. :try_end_20} :catchall_20

    :catchall_20
    move-exception p0

    .line 2101
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2102
    throw p0
.end method

.method public getCurrentLocation(Landroid/location/LocationRequest;Landroid/location/util/identity/CallerIdentity;ILandroid/location/ILocationCallback;)Landroid/os/ICancellationSignal;
    .registers 11

    .line 2003
    invoke-virtual {p1}, Landroid/location/LocationRequest;->getDurationMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x7530

    cmp-long v0, v0, v2

    if-lez v0, :cond_17

    .line 2004
    new-instance v0, Landroid/location/LocationRequest$Builder;

    invoke-direct {v0, p1}, Landroid/location/LocationRequest$Builder;-><init>(Landroid/location/LocationRequest;)V

    .line 2005
    invoke-virtual {v0, v2, v3}, Landroid/location/LocationRequest$Builder;->setDurationMillis(J)Landroid/location/LocationRequest$Builder;

    move-result-object p1

    .line 2006
    invoke-virtual {p1}, Landroid/location/LocationRequest$Builder;->build()Landroid/location/LocationRequest;

    move-result-object p1

    :cond_17
    move-object v2, p1

    .line 2009
    new-instance v0, Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration;

    new-instance v4, Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationTransport;

    invoke-direct {v4, p4}, Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationTransport;-><init>(Landroid/location/ILocationCallback;)V

    move-object v1, p0

    move-object v3, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration;-><init>(Lcom/android/server/location/provider/LocationProviderManager;Landroid/location/LocationRequest;Landroid/location/util/identity/CallerIdentity;Lcom/android/server/location/provider/LocationProviderManager$LocationTransport;I)V

    .line 2015
    invoke-interface {p4}, Landroid/location/ILocationCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    new-instance p1, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda15;

    invoke-direct {p1, v0}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda15;-><init>(Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration;)V

    invoke-virtual {v1, p0, v0, p1}, Lcom/android/server/location/provider/LocationProviderManager;->registerAndHandleIdentity(Ljava/lang/Object;Lcom/android/server/location/provider/LocationProviderManager$Registration;Ljava/lang/Runnable;)V

    .line 2022
    invoke-static {}, Landroid/os/CancellationSignal;->createTransport()Landroid/os/ICancellationSignal;

    move-result-object p0

    .line 2023
    invoke-static {p0}, Landroid/os/CancellationSignal;->fromTransport(Landroid/os/ICancellationSignal;)Landroid/os/CancellationSignal;

    move-result-object p1

    new-instance p2, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda16;

    invoke-direct {p2, v1, p4, v0}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda16;-><init>(Lcom/android/server/location/provider/LocationProviderManager;Landroid/location/ILocationCallback;Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration;)V

    .line 2024
    invoke-virtual {p1, p2}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    return-object p0
.end method

.method public getLastLocation(Landroid/location/LastLocationRequest;Landroid/location/util/identity/CallerIdentity;I)Landroid/location/Location;
    .registers 12

    .line 1835
    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/provider/LocationProviderManager;->calculateLastLocationRequest(Landroid/location/LastLocationRequest;Landroid/location/util/identity/CallerIdentity;)Landroid/location/LastLocationRequest;

    move-result-object p1

    .line 1837
    invoke-virtual {p1}, Landroid/location/LastLocationRequest;->isBypass()Z

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/android/server/location/provider/LocationProviderManager;->isActive(ZLandroid/location/util/identity/CallerIdentity;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_10

    return-object v1

    .line 1843
    :cond_10
    invoke-virtual {p2}, Landroid/location/util/identity/CallerIdentity;->getUserId()I

    move-result v3

    .line 1845
    invoke-virtual {p1}, Landroid/location/LastLocationRequest;->isBypass()Z

    move-result v5

    const-wide v6, 0x7fffffffffffffffL

    move-object v2, p0

    move v4, p3

    .line 1842
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/location/provider/LocationProviderManager;->getLastLocationUnsafe(IIZJ)Landroid/location/Location;

    move-result-object p0

    .line 1841
    invoke-virtual {v2, p0, v4}, Lcom/android/server/location/provider/LocationProviderManager;->getPermittedLocation(Landroid/location/Location;I)Landroid/location/Location;

    move-result-object p0

    if-eqz p0, :cond_6d

    .line 1852
    iget-object p1, v2, Lcom/android/server/location/provider/LocationProviderManager;->mLocationPermissionsHelper:Lcom/android/server/location/injector/LocationPermissionsHelper;

    .line 1853
    invoke-virtual {p1, v4, p2}, Lcom/android/server/location/injector/LocationPermissionsHelper;->hasLocationPermissions(ILandroid/location/util/identity/CallerIdentity;)Z

    move-result p1

    if-nez p1, :cond_50

    iget-object p1, v2, Lcom/android/server/location/provider/LocationProviderManager;->mEmergencyHelper:Lcom/android/server/location/injector/EmergencyHelper;

    const-wide/16 v5, 0x0

    .line 1855
    invoke-virtual {p1, v5, v6}, Lcom/android/server/location/injector/EmergencyHelper;->isInEmergency(J)Z

    move-result p1

    if-eqz p1, :cond_50

    iget-object p1, v2, Lcom/android/server/location/provider/LocationProviderManager;->mContext:Landroid/content/Context;

    .line 1857
    invoke-virtual {p2}, Landroid/location/util/identity/CallerIdentity;->getPid()I

    move-result p3

    invoke-virtual {p2}, Landroid/location/util/identity/CallerIdentity;->getUid()I

    move-result v0

    .line 1856
    const-string v3, "android.permission.LOCATION_BYPASS"

    invoke-virtual {p1, v3, p3, v0}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p1

    if-nez p1, :cond_50

    const/16 p1, 0x93

    goto :goto_54

    .line 1860
    :cond_50
    invoke-static {v4}, Lcom/android/server/location/LocationPermissions;->asAppOp(I)I

    move-result p1

    .line 1861
    :goto_54
    iget-object p3, v2, Lcom/android/server/location/provider/LocationProviderManager;->mAppOpsHelper:Lcom/android/server/location/injector/AppOpsHelper;

    invoke-virtual {p3, p1, p2}, Lcom/android/server/location/injector/AppOpsHelper;->noteOpNoThrow(ILandroid/location/util/identity/CallerIdentity;)Z

    move-result p1

    if-nez p1, :cond_5d

    return-object v1

    .line 1867
    :cond_5d
    invoke-virtual {p2}, Landroid/location/util/identity/CallerIdentity;->getPid()I

    move-result p1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p2

    if-ne p1, p2, :cond_6d

    .line 1868
    new-instance p1, Landroid/location/Location;

    invoke-direct {p1, p0}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    return-object p1

    :cond_6d
    return-object p0
.end method

.method public getLastLocationUnsafe(IIZJ)Landroid/location/Location;
    .registers 15

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-ne p1, v0, :cond_31

    .line 1925
    iget-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mUserHelper:Lcom/android/server/location/injector/UserInfoHelper;

    invoke-virtual {p1}, Lcom/android/server/location/injector/UserInfoHelper;->getRunningUserIds()[I

    move-result-object p1

    .line 1926
    :goto_b
    array-length v0, p1

    if-ge v1, v0, :cond_30

    .line 1927
    aget v4, p1, v1

    move-object v3, p0

    move v5, p2

    move v6, p3

    move-wide v7, p4

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/location/provider/LocationProviderManager;->getLastLocationUnsafe(IIZJ)Landroid/location/Location;

    move-result-object p0

    if-eqz v2, :cond_28

    if-eqz p0, :cond_29

    .line 1929
    invoke-virtual {p0}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide p2

    .line 1930
    invoke-virtual {v2}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide p4

    cmp-long p2, p2, p4

    if-lez p2, :cond_29

    :cond_28
    move-object v2, p0

    :cond_29
    add-int/lit8 v1, v1, 0x1

    move-object p0, v3

    move p2, v5

    move p3, v6

    move-wide p4, v7

    goto :goto_b

    :cond_30
    return-object v2

    :cond_31
    move-object v3, p0

    move v5, p2

    move v6, p3

    move-wide v7, p4

    const/4 p0, -0x2

    if-ne p1, p0, :cond_43

    .line 1936
    iget-object p0, v3, Lcom/android/server/location/provider/LocationProviderManager;->mUserHelper:Lcom/android/server/location/injector/UserInfoHelper;

    invoke-virtual {p0}, Lcom/android/server/location/injector/UserInfoHelper;->getCurrentUserId()I

    move-result v4

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/location/provider/LocationProviderManager;->getLastLocationUnsafe(IIZJ)Landroid/location/Location;

    move-result-object p0

    return-object p0

    :cond_43
    const/4 p0, 0x1

    if-ltz p1, :cond_48

    move p2, p0

    goto :goto_49

    :cond_48
    move p2, v1

    .line 1940
    :goto_49
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 1943
    iget-object p2, v3, Lcom/android/server/location/listeners/ListenerMultiplexer;->mMultiplexerLock:Ljava/lang/Object;

    monitor-enter p2

    .line 1944
    :try_start_4f
    iget p3, v3, Lcom/android/server/location/provider/LocationProviderManager;->mState:I

    const/4 p4, 0x2

    if-eq p3, p4, :cond_55

    move v1, p0

    :cond_55
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 1945
    iget-object p0, v3, Lcom/android/server/location/provider/LocationProviderManager;->mLastLocations:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/location/provider/LocationProviderManager$LastLocation;

    if-nez p0, :cond_64

    move-object p0, v2

    goto :goto_68

    .line 1949
    :cond_64
    invoke-virtual {p0, v5, v6}, Lcom/android/server/location/provider/LocationProviderManager$LastLocation;->get(IZ)Landroid/location/Location;

    move-result-object p0

    .line 1951
    :goto_68
    monitor-exit p2
    :try_end_69
    .catchall {:try_start_4f .. :try_end_69} :catchall_76

    if-nez p0, :cond_6c

    return-object v2

    .line 1957
    :cond_6c
    invoke-virtual {p0}, Landroid/location/Location;->getElapsedRealtimeAgeMillis()J

    move-result-wide p1

    cmp-long p1, p1, v7

    if-lez p1, :cond_75

    return-object v2

    :cond_75
    return-object p0

    :catchall_76
    move-exception v0

    move-object p0, v0

    .line 1951
    :try_start_78
    monitor-exit p2
    :try_end_79
    .catchall {:try_start_78 .. :try_end_79} :catchall_76

    throw p0
.end method

.method public getName()Ljava/lang/String;
    .registers 1

    .line 1648
    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public getPermittedLocation(Landroid/location/Location;I)Landroid/location/Location;
    .registers 4

    const/4 v0, 0x1

    if-eq p2, v0, :cond_d

    const/4 p0, 0x2

    if-ne p2, p0, :cond_7

    return-object p1

    .line 2855
    :cond_7
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_d
    if-eqz p1, :cond_16

    .line 2852
    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationFudger:Lcom/android/server/location/fudger/LocationFudger;

    invoke-virtual {p0, p1}, Lcom/android/server/location/fudger/LocationFudger;->createCoarse(Landroid/location/Location;)Landroid/location/Location;

    move-result-object p0

    return-object p0

    :cond_16
    const/4 p0, 0x0

    return-object p0
.end method

.method public getPermittedLocationResult(Landroid/location/LocationResult;I)Landroid/location/LocationResult;
    .registers 4

    const/4 v0, 0x1

    if-eq p2, v0, :cond_d

    const/4 p0, 0x2

    if-ne p2, p0, :cond_7

    return-object p1

    .line 2869
    :cond_7
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_d
    if-eqz p1, :cond_16

    .line 2865
    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationFudger:Lcom/android/server/location/fudger/LocationFudger;

    invoke-virtual {p0, p1}, Lcom/android/server/location/fudger/LocationFudger;->createCoarse(Landroid/location/LocationResult;)Landroid/location/LocationResult;

    move-result-object p0

    return-object p0

    :cond_16
    const/4 p0, 0x0

    return-object p0
.end method

.method public getProperties()Landroid/location/provider/ProviderProperties;
    .registers 1

    .line 1660
    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mProvider:Lcom/android/server/location/provider/MockableLocationProvider;

    invoke-virtual {p0}, Lcom/android/server/location/provider/AbstractLocationProvider;->getState()Lcom/android/server/location/provider/AbstractLocationProvider$State;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/location/provider/AbstractLocationProvider$State;->properties:Landroid/location/provider/ProviderProperties;

    return-object p0
.end method

.method public getProviderIdentity()Landroid/location/util/identity/CallerIdentity;
    .registers 1

    .line 1656
    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mProvider:Lcom/android/server/location/provider/MockableLocationProvider;

    invoke-virtual {p0}, Lcom/android/server/location/provider/AbstractLocationProvider;->getState()Lcom/android/server/location/provider/AbstractLocationProvider$State;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/location/provider/AbstractLocationProvider$State;->identity:Landroid/location/util/identity/CallerIdentity;

    return-object p0
.end method

.method public getServiceState()Ljava/lang/String;
    .registers 1

    .line 2910
    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mProvider:Lcom/android/server/location/provider/MockableLocationProvider;

    invoke-virtual {p0}, Lcom/android/server/location/provider/MockableLocationProvider;->getCurrentRequest()Landroid/location/provider/ProviderRequest;

    move-result-object p0

    invoke-virtual {p0}, Landroid/location/provider/ProviderRequest;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getState()Lcom/android/server/location/provider/AbstractLocationProvider$State;
    .registers 1

    .line 1652
    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mProvider:Lcom/android/server/location/provider/MockableLocationProvider;

    invoke-virtual {p0}, Lcom/android/server/location/provider/AbstractLocationProvider;->getState()Lcom/android/server/location/provider/AbstractLocationProvider$State;

    move-result-object p0

    return-object p0
.end method

.method public hasProvider()Z
    .registers 1

    .line 1664
    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mProvider:Lcom/android/server/location/provider/MockableLocationProvider;

    invoke-virtual {p0}, Lcom/android/server/location/provider/MockableLocationProvider;->getProvider()Lcom/android/server/location/provider/AbstractLocationProvider;

    move-result-object p0

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public injectLastLocation(Landroid/location/Location;I)V
    .registers 11

    .line 1965
    iget-object v1, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mMultiplexerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1966
    :try_start_3
    iget v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mState:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    const/4 v5, 0x0

    const-wide v6, 0x7fffffffffffffffL

    const/4 v4, 0x2

    move-object v2, p0

    move v3, p2

    .line 1967
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/location/provider/LocationProviderManager;->getLastLocationUnsafe(IIZJ)Landroid/location/Location;

    move-result-object p0

    if-nez p0, :cond_24

    .line 1968
    invoke-virtual {v2, p1, v3}, Lcom/android/server/location/provider/LocationProviderManager;->setLastLocation(Landroid/location/Location;I)V

    goto :goto_24

    :catchall_21
    move-exception v0

    move-object p0, v0

    goto :goto_26

    .line 1970
    :cond_24
    :goto_24
    monitor-exit v1

    return-void

    :goto_26
    monitor-exit v1
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_21

    throw p0
.end method

.method public bridge synthetic isActive(Lcom/android/server/location/listeners/ListenerRegistration;)Z
    .registers 2

    .line 150
    check-cast p1, Lcom/android/server/location/provider/LocationProviderManager$Registration;

    invoke-virtual {p0, p1}, Lcom/android/server/location/provider/LocationProviderManager;->isActive(Lcom/android/server/location/provider/LocationProviderManager$Registration;)Z

    move-result p0

    return p0
.end method

.method public isActive(Lcom/android/server/location/provider/LocationProviderManager$Registration;)Z
    .registers 6

    .line 2334
    invoke-virtual {p1}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->isPermitted()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 2338
    :cond_8
    invoke-virtual {p1}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getRequest()Landroid/location/LocationRequest;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/LocationRequest;->isBypass()Z

    move-result v0

    .line 2339
    invoke-virtual {p1}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/android/server/location/provider/LocationProviderManager;->isActive(ZLandroid/location/util/identity/CallerIdentity;)Z

    move-result v2

    if-nez v2, :cond_1b

    return v1

    :cond_1b
    const/4 v2, 0x1

    if-nez v0, :cond_4b

    .line 2344
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationPowerSaveModeHelper:Lcom/android/server/location/injector/LocationPowerSaveModeHelper;

    invoke-virtual {v0}, Lcom/android/server/location/injector/LocationPowerSaveModeHelper;->getLocationPowerSaveMode()I

    move-result v0

    if-eq v0, v2, :cond_37

    const/4 v3, 0x2

    if-eq v0, v3, :cond_42

    const/4 v3, 0x3

    if-eq v0, v3, :cond_30

    const/4 p1, 0x4

    if-eq v0, p1, :cond_42

    goto :goto_4b

    .line 2346
    :cond_30
    invoke-virtual {p1}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->isForeground()Z

    move-result p0

    if-nez p0, :cond_4b

    return v1

    .line 2351
    :cond_37
    const-string p1, "gps"

    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_42

    goto :goto_4b

    .line 2358
    :cond_42
    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mScreenInteractiveHelper:Lcom/android/server/location/injector/ScreenInteractiveHelper;

    invoke-virtual {p0}, Lcom/android/server/location/injector/ScreenInteractiveHelper;->isInteractive()Z

    move-result p0

    if-nez p0, :cond_4b

    return v1

    :cond_4b
    :goto_4b
    return v2
.end method

.method public final isActive(ZLandroid/location/util/identity/CallerIdentity;)Z
    .registers 5

    .line 2373
    invoke-virtual {p2}, Landroid/location/util/identity/CallerIdentity;->isSystemServer()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_16

    if-nez p1, :cond_41

    .line 2375
    iget-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mUserHelper:Lcom/android/server/location/injector/UserInfoHelper;

    invoke-virtual {p1}, Lcom/android/server/location/injector/UserInfoHelper;->getCurrentUserId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/location/provider/LocationProviderManager;->isEnabled(I)Z

    move-result p0

    if-nez p0, :cond_41

    return v1

    :cond_16
    if-nez p1, :cond_30

    .line 2381
    invoke-virtual {p2}, Landroid/location/util/identity/CallerIdentity;->getUserId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/location/provider/LocationProviderManager;->isEnabled(I)Z

    move-result p1

    if-nez p1, :cond_23

    return v1

    .line 2384
    :cond_23
    iget-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mUserHelper:Lcom/android/server/location/injector/UserInfoHelper;

    invoke-virtual {p2}, Landroid/location/util/identity/CallerIdentity;->getUserId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/server/location/injector/UserInfoHelper;->isVisibleUserId(I)Z

    move-result p1

    if-nez p1, :cond_30

    return v1

    .line 2388
    :cond_30
    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mSettingsHelper:Lcom/android/server/location/injector/SettingsHelper;

    invoke-virtual {p2}, Landroid/location/util/identity/CallerIdentity;->getUserId()I

    move-result p1

    .line 2389
    invoke-virtual {p2}, Landroid/location/util/identity/CallerIdentity;->getPackageName()Ljava/lang/String;

    move-result-object p2

    .line 2388
    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/injector/SettingsHelper;->isLocationPackageBlacklisted(ILjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_41

    return v1

    :cond_41
    const/4 p0, 0x1

    return p0
.end method

.method public isEnabled(I)Z
    .registers 6

    const/16 v0, -0x2710

    const/4 v1, 0x0

    if-ne p1, v0, :cond_6

    return v1

    :cond_6
    const/4 v0, -0x2

    if-ne p1, v0, :cond_14

    .line 1671
    iget-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mUserHelper:Lcom/android/server/location/injector/UserInfoHelper;

    invoke-virtual {p1}, Lcom/android/server/location/injector/UserInfoHelper;->getCurrentUserId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/location/provider/LocationProviderManager;->isEnabled(I)Z

    move-result p0

    return p0

    :cond_14
    if-ltz p1, :cond_17

    const/4 v1, 0x1

    .line 1674
    :cond_17
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 1676
    iget-object v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mMultiplexerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1677
    :try_start_1d
    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v1

    if-gez v1, :cond_51

    .line 1681
    const-string v1, "LocationManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " provider saw user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " unexpectedly"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1682
    invoke-virtual {p0, p1}, Lcom/android/server/location/provider/LocationProviderManager;->onEnabledChanged(I)V

    .line 1683
    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v1

    goto :goto_51

    :catchall_4f
    move-exception p0

    goto :goto_59

    .line 1686
    :cond_51
    :goto_51
    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result p0

    monitor-exit v0

    return p0

    .line 1687
    :goto_59
    monitor-exit v0
    :try_end_5a
    .catchall {:try_start_1d .. :try_end_5a} :catchall_4f

    throw p0
.end method

.method public final isResetableForPackage(Ljava/lang/String;)Z
    .registers 3

    .line 2626
    new-instance v0, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda35;

    invoke-direct {v0, p1}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda35;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/server/location/listeners/ListenerMultiplexer;->findRegistration(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public isVisibleToCaller()Z
    .registers 5

    .line 1713
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    const/4 v2, 0x1

    if-ne v0, v1, :cond_a

    return v2

    .line 1719
    :cond_a
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mProvider:Lcom/android/server/location/provider/MockableLocationProvider;

    invoke-virtual {v0}, Lcom/android/server/location/provider/MockableLocationProvider;->isMock()Z

    move-result v0

    if-eqz v0, :cond_13

    return v2

    .line 1723
    :cond_13
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mRequiredPermissions:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1724
    iget-object v3, p0, Lcom/android/server/location/provider/LocationProviderManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_19

    const/4 p0, 0x0

    return p0

    :cond_2f
    return v2
.end method

.method public final synthetic lambda$getCurrentLocation$3(Landroid/location/ILocationCallback;Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration;)V
    .registers 5

    .line 2026
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2028
    :try_start_4
    invoke-interface {p1}, Landroid/location/ILocationCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/listeners/ListenerMultiplexer;->removeRegistration(Ljava/lang/Object;Lcom/android/server/location/listeners/ListenerRegistration;)V
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_b} :catch_11
    .catchall {:try_start_4 .. :try_end_b} :catchall_f

    .line 2038
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_f
    move-exception p0

    goto :goto_1f

    :catch_11
    move-exception p0

    .line 2033
    :try_start_12
    invoke-static {}, Lcom/android/server/FgThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance p2, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda27;

    invoke-direct {p2, p0}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda27;-><init>(Ljava/lang/RuntimeException;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2036
    throw p0
    :try_end_1f
    .catchall {:try_start_12 .. :try_end_1f} :catchall_f

    .line 2038
    :goto_1f
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2039
    throw p0
.end method

.method public final synthetic lambda$onEnabledChanged$24([Landroid/location/LocationManagerInternal$ProviderEnabledListener;IZ)V
    .registers 7

    const/4 v0, 0x0

    .line 2835
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_e

    .line 2836
    aget-object v1, p1, v0

    iget-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    invoke-interface {v1, v2, p2, p3}, Landroid/location/LocationManagerInternal$ProviderEnabledListener;->onProviderEnabledChanged(Ljava/lang/String;IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_e
    return-void
.end method

.method public final synthetic lambda$onStateChanged$20(Lcom/android/server/location/provider/LocationProviderManager$StateChangedListener;Lcom/android/server/location/provider/AbstractLocationProvider$State;Lcom/android/server/location/provider/AbstractLocationProvider$State;)V
    .registers 4

    .line 2645
    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    invoke-interface {p1, p0, p2, p3}, Lcom/android/server/location/provider/LocationProviderManager$StateChangedListener;->onStateChanged(Ljava/lang/String;Lcom/android/server/location/provider/AbstractLocationProvider$State;Lcom/android/server/location/provider/AbstractLocationProvider$State;)V

    return-void
.end method

.method public final synthetic lambda$processReportedLocation$22(Landroid/location/Location;)V
    .registers 4

    .line 2720
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mAltitudeConverter:Landroid/location/altitude/AltitudeConverter;

    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Landroid/location/altitude/AltitudeConverter;->addMslAltitudeToLocation(Landroid/content/Context;Landroid/location/Location;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_7} :catch_8

    goto :goto_20

    :catch_8
    move-exception p1

    .line 2723
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "not loading MSL altitude assets: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LocationManagerService"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_20
    const/4 p1, 0x1

    .line 2725
    iput-boolean p1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mIsAltitudeConverterIdle:Z

    return-void
.end method

.method public final synthetic lambda$processReportedLocation$23(Landroid/location/Location;)Landroid/location/Location;
    .registers 5

    .line 2706
    invoke-virtual {p1}, Landroid/location/Location;->hasMslAltitude()Z

    move-result v0

    if-nez v0, :cond_46

    invoke-virtual {p1}, Landroid/location/Location;->hasAltitude()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 2708
    :try_start_c
    new-instance v0, Landroid/location/Location;

    invoke-direct {v0, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    .line 2709
    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mAltitudeConverter:Landroid/location/altitude/AltitudeConverter;

    invoke-virtual {v1, v0}, Landroid/location/altitude/AltitudeConverter;->tryAddMslAltitudeToLocation(Landroid/location/Location;)Z

    move-result v1

    if-eqz v1, :cond_1a

    return-object v0

    .line 2713
    :cond_1a
    iget-boolean v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mIsAltitudeConverterIdle:Z

    if-eqz v1, :cond_46

    const/4 v1, 0x0

    .line 2714
    iput-boolean v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mIsAltitudeConverterIdle:Z

    .line 2715
    invoke-static {}, Lcom/android/server/IoThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda33;

    invoke-direct {v2, p0, v0}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda33;-><init>(Lcom/android/server/location/provider/LocationProviderManager;Landroid/location/Location;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_2d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_2d} :catch_2e

    return-object p1

    :catch_2e
    move-exception p0

    .line 2729
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "not adding MSL altitude to location: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "LocationManagerService"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_46
    return-object p1
.end method

.method public final synthetic lambda$setProviderRequest$8(Landroid/location/provider/ProviderRequest;)V
    .registers 5

    .line 2321
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mProviderRequestListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/provider/IProviderRequestListener;

    .line 2323
    :try_start_12
    iget-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Landroid/location/provider/IProviderRequestListener;->onProviderRequestChanged(Ljava/lang/String;Landroid/location/provider/ProviderRequest;)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_17} :catch_18

    goto :goto_6

    .line 2325
    :catch_18
    iget-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager;->mProviderRequestListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_1e
    return-void
.end method

.method public mergeRegistrations(Ljava/util/Collection;)Landroid/location/provider/ProviderRequest;
    .registers 15

    .line 2407
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-wide v0, 0x7fffffffffffffffL

    const/16 v2, 0x68

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-wide v6, v0

    move-wide v8, v6

    move v5, v4

    move v4, v3

    :goto_11
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_52

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/location/provider/LocationProviderManager$Registration;

    .line 2408
    invoke-virtual {v10}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getRequest()Landroid/location/LocationRequest;

    move-result-object v10

    .line 2412
    invoke-virtual {v10}, Landroid/location/LocationRequest;->getIntervalMillis()J

    move-result-wide v11

    cmp-long v11, v11, v0

    if-nez v11, :cond_2a

    goto :goto_11

    .line 2416
    :cond_2a
    invoke-virtual {v10}, Landroid/location/LocationRequest;->getIntervalMillis()J

    move-result-wide v11

    invoke-static {v11, v12, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    .line 2417
    invoke-virtual {v10}, Landroid/location/LocationRequest;->getQuality()I

    move-result v11

    invoke-static {v11, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 2418
    invoke-virtual {v10}, Landroid/location/LocationRequest;->getMaxUpdateDelayMillis()J

    move-result-wide v11

    invoke-static {v11, v12, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    .line 2419
    invoke-virtual {v10}, Landroid/location/LocationRequest;->isAdasGnssBypass()Z

    move-result v11

    or-int/2addr v3, v11

    .line 2420
    invoke-virtual {v10}, Landroid/location/LocationRequest;->isLocationSettingsIgnored()Z

    move-result v11

    or-int/2addr v4, v11

    .line 2421
    invoke-virtual {v10}, Landroid/location/LocationRequest;->isLowPower()Z

    move-result v10

    and-int/2addr v5, v10

    goto :goto_11

    :cond_52
    cmp-long p0, v6, v0

    if-nez p0, :cond_59

    .line 2425
    sget-object p0, Landroid/location/provider/ProviderRequest;->EMPTY_REQUEST:Landroid/location/provider/ProviderRequest;

    return-object p0

    :cond_59
    const-wide/16 v0, 0x2

    .line 2428
    div-long v10, v8, v0

    cmp-long p0, v10, v6

    if-gez p0, :cond_63

    const-wide/16 v8, 0x0

    :cond_63
    const-wide/16 v10, 0x3e8

    .line 2439
    :try_start_65
    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->addExact(JJ)J

    move-result-wide v10

    div-long/2addr v10, v0

    const/4 p0, 0x3

    invoke-static {v10, v11, p0}, Ljava/lang/Math;->multiplyExact(JI)J

    move-result-wide v0
    :try_end_6f
    .catch Ljava/lang/ArithmeticException; {:try_start_65 .. :try_end_6f} :catch_70

    goto :goto_75

    :catch_70
    const-wide v0, 0x7ffffffffffffffeL

    .line 2446
    :goto_75
    new-instance p0, Landroid/os/WorkSource;

    invoke-direct {p0}, Landroid/os/WorkSource;-><init>()V

    .line 2447
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_7e
    :goto_7e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_a2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/location/provider/LocationProviderManager$Registration;

    .line 2448
    invoke-virtual {v10}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getRequest()Landroid/location/LocationRequest;

    move-result-object v11

    invoke-virtual {v11}, Landroid/location/LocationRequest;->getIntervalMillis()J

    move-result-wide v11

    cmp-long v11, v11, v0

    if-gtz v11, :cond_7e

    .line 2449
    invoke-virtual {v10}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getRequest()Landroid/location/LocationRequest;

    move-result-object v10

    invoke-virtual {v10}, Landroid/location/LocationRequest;->getWorkSource()Landroid/os/WorkSource;

    move-result-object v10

    invoke-virtual {p0, v10}, Landroid/os/WorkSource;->add(Landroid/os/WorkSource;)Z

    goto :goto_7e

    .line 2453
    :cond_a2
    new-instance p1, Landroid/location/provider/ProviderRequest$Builder;

    invoke-direct {p1}, Landroid/location/provider/ProviderRequest$Builder;-><init>()V

    .line 2454
    invoke-virtual {p1, v6, v7}, Landroid/location/provider/ProviderRequest$Builder;->setIntervalMillis(J)Landroid/location/provider/ProviderRequest$Builder;

    move-result-object p1

    .line 2455
    invoke-virtual {p1, v2}, Landroid/location/provider/ProviderRequest$Builder;->setQuality(I)Landroid/location/provider/ProviderRequest$Builder;

    move-result-object p1

    .line 2456
    invoke-virtual {p1, v8, v9}, Landroid/location/provider/ProviderRequest$Builder;->setMaxUpdateDelayMillis(J)Landroid/location/provider/ProviderRequest$Builder;

    move-result-object p1

    .line 2457
    invoke-virtual {p1, v3}, Landroid/location/provider/ProviderRequest$Builder;->setAdasGnssBypass(Z)Landroid/location/provider/ProviderRequest$Builder;

    move-result-object p1

    .line 2458
    invoke-virtual {p1, v4}, Landroid/location/provider/ProviderRequest$Builder;->setLocationSettingsIgnored(Z)Landroid/location/provider/ProviderRequest$Builder;

    move-result-object p1

    .line 2459
    invoke-virtual {p1, v5}, Landroid/location/provider/ProviderRequest$Builder;->setLowPower(Z)Landroid/location/provider/ProviderRequest$Builder;

    move-result-object p1

    .line 2460
    invoke-virtual {p1, p0}, Landroid/location/provider/ProviderRequest$Builder;->setWorkSource(Landroid/os/WorkSource;)Landroid/location/provider/ProviderRequest$Builder;

    move-result-object p0

    .line 2461
    invoke-virtual {p0}, Landroid/location/provider/ProviderRequest$Builder;->build()Landroid/location/provider/ProviderRequest;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic mergeRegistrations(Ljava/util/Collection;)Ljava/lang/Object;
    .registers 2

    .line 150
    invoke-virtual {p0, p1}, Lcom/android/server/location/provider/LocationProviderManager;->mergeRegistrations(Ljava/util/Collection;)Landroid/location/provider/ProviderRequest;

    move-result-object p0

    return-object p0
.end method

.method public final onAdasAllowlistChanged()V
    .registers 2

    .line 2589
    new-instance v0, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda25;

    invoke-direct {v0}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda25;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/location/listeners/ListenerMultiplexer;->updateRegistrations(Ljava/util/function/Predicate;)V

    return-void
.end method

.method public final onAppForegroundChanged(IZ)V
    .registers 4

    .line 2585
    new-instance v0, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda34;

    invoke-direct {v0, p1, p2}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda34;-><init>(IZ)V

    invoke-virtual {p0, v0}, Lcom/android/server/location/listeners/ListenerMultiplexer;->updateRegistrations(Ljava/util/function/Predicate;)V

    return-void
.end method

.method public final onBackgroundThrottleIntervalChanged()V
    .registers 2

    .line 2576
    new-instance v0, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda25;

    invoke-direct {v0}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda25;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/location/listeners/ListenerMultiplexer;->updateRegistrations(Ljava/util/function/Predicate;)V

    return-void
.end method

.method public final onBackgroundThrottlePackageWhitelistChanged()V
    .registers 2

    .line 2572
    new-instance v0, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda25;

    invoke-direct {v0}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda25;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/location/listeners/ListenerMultiplexer;->updateRegistrations(Ljava/util/function/Predicate;)V

    return-void
.end method

.method public final onEmergencyStateChanged()V
    .registers 4

    .line 2566
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mEmergencyHelper:Lcom/android/server/location/injector/EmergencyHelper;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/location/injector/EmergencyHelper;->isInEmergency(J)Z

    move-result v0

    .line 2567
    new-instance v1, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda30;

    invoke-direct {v1, v0}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda30;-><init>(Z)V

    invoke-virtual {p0, v1}, Lcom/android/server/location/listeners/ListenerMultiplexer;->updateRegistrations(Ljava/util/function/Predicate;)V

    return-void
.end method

.method public final onEnabledChanged(I)V
    .registers 7

    const/16 v0, -0x2710

    if-ne p1, v0, :cond_5

    goto :goto_57

    :cond_5
    const/4 v0, -0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1a

    .line 2780
    iget-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mUserHelper:Lcom/android/server/location/injector/UserInfoHelper;

    invoke-virtual {p1}, Lcom/android/server/location/injector/UserInfoHelper;->getRunningUserIds()[I

    move-result-object p1

    .line 2781
    :goto_f
    array-length v0, p1

    if-ge v1, v0, :cond_57

    .line 2782
    aget v0, p1, v1

    invoke-virtual {p0, v0}, Lcom/android/server/location/provider/LocationProviderManager;->onEnabledChanged(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_1a
    const/4 v0, 0x1

    if-ltz p1, :cond_1f

    move v2, v0

    goto :goto_20

    :cond_1f
    move v2, v1

    .line 2787
    :goto_20
    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 2789
    iget v2, p0, Lcom/android/server/location/provider/LocationProviderManager;->mState:I

    if-nez v2, :cond_3a

    iget-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager;->mProvider:Lcom/android/server/location/provider/MockableLocationProvider;

    .line 2790
    invoke-virtual {v2}, Lcom/android/server/location/provider/AbstractLocationProvider;->getState()Lcom/android/server/location/provider/AbstractLocationProvider$State;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/server/location/provider/AbstractLocationProvider$State;->allowed:Z

    if-eqz v2, :cond_3a

    iget-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager;->mSettingsHelper:Lcom/android/server/location/injector/SettingsHelper;

    .line 2791
    invoke-virtual {v2, p1}, Lcom/android/server/location/injector/SettingsHelper;->isLocationEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_3a

    goto :goto_3b

    :cond_3a
    move v0, v1

    .line 2793
    :goto_3b
    iget-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager;->mEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v2

    if-gez v2, :cond_45

    const/4 v2, 0x0

    goto :goto_4f

    .line 2794
    :cond_45
    iget-object v3, p0, Lcom/android/server/location/provider/LocationProviderManager;->mEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    :goto_4f
    if-eqz v2, :cond_58

    .line 2795
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-ne v3, v0, :cond_58

    :cond_57
    :goto_57
    return-void

    .line 2799
    :cond_58
    iget-object v3, p0, Lcom/android/server/location/provider/LocationProviderManager;->mEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p1, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    if-nez v2, :cond_61

    if-eqz v0, :cond_94

    .line 2803
    :cond_61
    sget-boolean v3, Lcom/android/server/location/LocationManagerService;->D:Z

    if-eqz v3, :cond_8d

    .line 2804
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[u"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " provider enabled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "LocationManagerService"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2806
    :cond_8d
    sget-object v3, Lcom/android/server/location/eventlog/LocationEventLog;->EVENT_LOG:Lcom/android/server/location/eventlog/LocationEventLog;

    iget-object v4, p0, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4, p1, v0}, Lcom/android/server/location/eventlog/LocationEventLog;->logProviderEnabled(Ljava/lang/String;IZ)V

    :cond_94
    if-nez v0, :cond_a3

    .line 2811
    iget-object v3, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLastLocations:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/location/provider/LocationProviderManager$LastLocation;

    if-eqz v3, :cond_a3

    .line 2813
    invoke-virtual {v3}, Lcom/android/server/location/provider/LocationProviderManager$LastLocation;->clearLocations()V

    :cond_a3
    if-eqz v2, :cond_f8

    .line 2820
    const-string/jumbo v2, "passive"

    iget-object v3, p0, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_da

    .line 2821
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.location.PROVIDERS_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "android.location.extra.PROVIDER_NAME"

    iget-object v4, p0, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    .line 2822
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "android.location.extra.PROVIDER_ENABLED"

    .line 2823
    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v2

    const/high16 v3, 0x40000000    # 2.0f

    .line 2824
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    const/high16 v3, 0x10000000

    .line 2825
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    .line 2826
    iget-object v3, p0, Lcom/android/server/location/provider/LocationProviderManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2831
    :cond_da
    iget-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager;->mEnabledListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_f8

    .line 2832
    iget-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager;->mEnabledListeners:Ljava/util/ArrayList;

    new-array v1, v1, [Landroid/location/LocationManagerInternal$ProviderEnabledListener;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/location/LocationManagerInternal$ProviderEnabledListener;

    .line 2834
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda17;

    invoke-direct {v3, p0, v1, p1, v0}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda17;-><init>(Lcom/android/server/location/provider/LocationProviderManager;[Landroid/location/LocationManagerInternal$ProviderEnabledListener;IZ)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2843
    :cond_f8
    new-instance v0, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda18;

    invoke-direct {v0, p1}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda18;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/server/location/listeners/ListenerMultiplexer;->updateRegistrations(Ljava/util/function/Predicate;)V

    return-void
.end method

.method public final onIgnoreSettingsWhitelistChanged()V
    .registers 2

    .line 2593
    new-instance v0, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda25;

    invoke-direct {v0}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda25;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/location/listeners/ListenerMultiplexer;->updateRegistrations(Ljava/util/function/Predicate;)V

    return-void
.end method

.method public final onLocationPowerSaveModeChanged(I)V
    .registers 2

    .line 2581
    new-instance p1, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda24;

    invoke-direct {p1}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda24;-><init>()V

    invoke-virtual {p0, p1}, Lcom/android/server/location/listeners/ListenerMultiplexer;->updateRegistrations(Ljava/util/function/Predicate;)V

    return-void
.end method

.method public final onLocationUserSettingsChanged(ILcom/android/server/location/settings/LocationUserSettings;Lcom/android/server/location/settings/LocationUserSettings;)V
    .registers 4

    .line 2532
    invoke-virtual {p2}, Lcom/android/server/location/settings/LocationUserSettings;->isAdasGnssLocationEnabled()Z

    move-result p2

    invoke-virtual {p3}, Lcom/android/server/location/settings/LocationUserSettings;->isAdasGnssLocationEnabled()Z

    move-result p3

    if-eq p2, p3, :cond_12

    .line 2533
    new-instance p2, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda38;

    invoke-direct {p2, p1}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda38;-><init>(I)V

    invoke-virtual {p0, p2}, Lcom/android/server/location/listeners/ListenerMultiplexer;->updateRegistrations(Ljava/util/function/Predicate;)V

    :cond_12
    return-void
.end method

.method public final onPackageReset(Ljava/lang/String;)V
    .registers 3

    .line 2610
    new-instance v0, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda39;

    invoke-direct {v0, p1}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda39;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/server/location/listeners/ListenerMultiplexer;->updateRegistrations(Ljava/util/function/Predicate;)V

    return-void
.end method

.method public onRegister()V
    .registers 3

    .line 2148
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mSettingsHelper:Lcom/android/server/location/injector/SettingsHelper;

    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mBackgroundThrottleIntervalChangedListener:Lcom/android/server/location/injector/SettingsHelper$GlobalSettingChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/server/location/injector/SettingsHelper;->addOnBackgroundThrottleIntervalChangedListener(Lcom/android/server/location/injector/SettingsHelper$GlobalSettingChangedListener;)V

    .line 2150
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mSettingsHelper:Lcom/android/server/location/injector/SettingsHelper;

    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mBackgroundThrottlePackageWhitelistChangedListener:Lcom/android/server/location/injector/SettingsHelper$GlobalSettingChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/server/location/injector/SettingsHelper;->addOnBackgroundThrottlePackageWhitelistChangedListener(Lcom/android/server/location/injector/SettingsHelper$GlobalSettingChangedListener;)V

    .line 2152
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mSettingsHelper:Lcom/android/server/location/injector/SettingsHelper;

    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationPackageBlacklistChangedListener:Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/server/location/injector/SettingsHelper;->addOnLocationPackageBlacklistChangedListener(Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;)V

    .line 2154
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mSettingsHelper:Lcom/android/server/location/injector/SettingsHelper;

    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mAdasPackageAllowlistChangedListener:Lcom/android/server/location/injector/SettingsHelper$GlobalSettingChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/server/location/injector/SettingsHelper;->addAdasAllowlistChangedListener(Lcom/android/server/location/injector/SettingsHelper$GlobalSettingChangedListener;)V

    .line 2156
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mSettingsHelper:Lcom/android/server/location/injector/SettingsHelper;

    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mIgnoreSettingsPackageWhitelistChangedListener:Lcom/android/server/location/injector/SettingsHelper$GlobalSettingChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/server/location/injector/SettingsHelper;->addIgnoreSettingsAllowlistChangedListener(Lcom/android/server/location/injector/SettingsHelper$GlobalSettingChangedListener;)V

    .line 2158
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationPermissionsHelper:Lcom/android/server/location/injector/LocationPermissionsHelper;

    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationPermissionsListener:Lcom/android/server/location/injector/LocationPermissionsHelper$LocationPermissionsListener;

    invoke-virtual {v0, v1}, Lcom/android/server/location/injector/LocationPermissionsHelper;->addListener(Lcom/android/server/location/injector/LocationPermissionsHelper$LocationPermissionsListener;)V

    .line 2159
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mAppForegroundHelper:Lcom/android/server/location/injector/AppForegroundHelper;

    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mAppForegroundChangedListener:Lcom/android/server/location/injector/AppForegroundHelper$AppForegroundListener;

    invoke-virtual {v0, v1}, Lcom/android/server/location/injector/AppForegroundHelper;->addListener(Lcom/android/server/location/injector/AppForegroundHelper$AppForegroundListener;)V

    .line 2160
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationPowerSaveModeHelper:Lcom/android/server/location/injector/LocationPowerSaveModeHelper;

    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationPowerSaveModeChangedListener:Lcom/android/server/location/injector/LocationPowerSaveModeHelper$LocationPowerSaveModeChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/server/location/injector/LocationPowerSaveModeHelper;->addListener(Lcom/android/server/location/injector/LocationPowerSaveModeHelper$LocationPowerSaveModeChangedListener;)V

    .line 2161
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mScreenInteractiveHelper:Lcom/android/server/location/injector/ScreenInteractiveHelper;

    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mScreenInteractiveChangedListener:Lcom/android/server/location/injector/ScreenInteractiveHelper$ScreenInteractiveChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/server/location/injector/ScreenInteractiveHelper;->addListener(Lcom/android/server/location/injector/ScreenInteractiveHelper$ScreenInteractiveChangedListener;)V

    .line 2163
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mEmergencyHelper:Lcom/android/server/location/injector/EmergencyHelper;

    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mEmergencyStateChangedListener:Lcom/android/server/location/injector/EmergencyHelper$EmergencyStateChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/server/location/injector/EmergencyHelper;->addOnEmergencyStateChangedListener(Lcom/android/server/location/injector/EmergencyHelper$EmergencyStateChangedListener;)V

    .line 2165
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mPackageResetHelper:Lcom/android/server/location/injector/PackageResetHelper;

    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mPackageResetResponder:Lcom/android/server/location/injector/PackageResetHelper$Responder;

    invoke-virtual {v0, p0}, Lcom/android/server/location/injector/PackageResetHelper;->register(Lcom/android/server/location/injector/PackageResetHelper$Responder;)V

    return-void
.end method

.method public bridge synthetic onRegistrationAdded(Ljava/lang/Object;Lcom/android/server/location/listeners/ListenerRegistration;)V
    .registers 3

    .line 150
    check-cast p2, Lcom/android/server/location/provider/LocationProviderManager$Registration;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/provider/LocationProviderManager;->onRegistrationAdded(Ljava/lang/Object;Lcom/android/server/location/provider/LocationProviderManager$Registration;)V

    return-void
.end method

.method public onRegistrationAdded(Ljava/lang/Object;Lcom/android/server/location/provider/LocationProviderManager$Registration;)V
    .registers 14

    .line 2193
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationUsageLogger:Lcom/android/server/location/injector/LocationUsageLogger;

    .line 2196
    invoke-virtual {p2}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/location/util/identity/CallerIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 2197
    invoke-virtual {p2}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/location/util/identity/CallerIdentity;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    .line 2199
    invoke-virtual {p2}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getRequest()Landroid/location/LocationRequest;

    move-result-object v6

    instance-of v7, p1, Landroid/app/PendingIntent;

    instance-of v8, p1, Landroid/os/IBinder;

    const/4 v9, 0x0

    .line 2202
    invoke-virtual {p2}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->isForeground()Z

    move-result v10

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 2193
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/location/injector/LocationUsageLogger;->logLocationApiUsage(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/location/LocationRequest;ZZLandroid/location/Geofence;Z)V

    return-void
.end method

.method public bridge synthetic onRegistrationRemoved(Ljava/lang/Object;Lcom/android/server/location/listeners/ListenerRegistration;)V
    .registers 3

    .line 150
    check-cast p2, Lcom/android/server/location/provider/LocationProviderManager$Registration;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/provider/LocationProviderManager;->onRegistrationRemoved(Ljava/lang/Object;Lcom/android/server/location/provider/LocationProviderManager$Registration;)V

    return-void
.end method

.method public onRegistrationRemoved(Ljava/lang/Object;Lcom/android/server/location/provider/LocationProviderManager$Registration;)V
    .registers 14

    .line 2220
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationUsageLogger:Lcom/android/server/location/injector/LocationUsageLogger;

    .line 2223
    invoke-virtual {p2}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/location/util/identity/CallerIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 2224
    invoke-virtual {p2}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/location/util/identity/CallerIdentity;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    .line 2226
    invoke-virtual {p2}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getRequest()Landroid/location/LocationRequest;

    move-result-object v6

    instance-of v7, p1, Landroid/app/PendingIntent;

    instance-of v8, p1, Landroid/os/IBinder;

    const/4 v9, 0x0

    .line 2229
    invoke-virtual {p2}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->isForeground()Z

    move-result v10

    const/4 v1, 0x1

    const/4 v2, 0x1

    .line 2220
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/location/injector/LocationUsageLogger;->logLocationApiUsage(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/location/LocationRequest;ZZLandroid/location/Geofence;Z)V

    return-void
.end method

.method public bridge synthetic onRegistrationReplaced(Ljava/lang/Object;Lcom/android/server/location/listeners/ListenerRegistration;Ljava/lang/Object;Lcom/android/server/location/listeners/ListenerRegistration;)V
    .registers 5

    .line 150
    check-cast p2, Lcom/android/server/location/provider/LocationProviderManager$Registration;

    check-cast p4, Lcom/android/server/location/provider/LocationProviderManager$Registration;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/location/provider/LocationProviderManager;->onRegistrationReplaced(Ljava/lang/Object;Lcom/android/server/location/provider/LocationProviderManager$Registration;Ljava/lang/Object;Lcom/android/server/location/provider/LocationProviderManager$Registration;)V

    return-void
.end method

.method public onRegistrationReplaced(Ljava/lang/Object;Lcom/android/server/location/provider/LocationProviderManager$Registration;Ljava/lang/Object;Lcom/android/server/location/provider/LocationProviderManager$Registration;)V
    .registers 6

    .line 2213
    invoke-virtual {p2}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getLastDeliveredLocation()Landroid/location/Location;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->setLastDeliveredLocation(Landroid/location/Location;)V

    .line 2214
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/location/listeners/ListenerMultiplexer;->onRegistrationReplaced(Ljava/lang/Object;Lcom/android/server/location/listeners/ListenerRegistration;Ljava/lang/Object;Lcom/android/server/location/listeners/ListenerRegistration;)V

    return-void
.end method

.method public onReportLocation(Landroid/location/LocationResult;)V
    .registers 10

    .line 2653
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mPassiveManager:Lcom/android/server/location/provider/PassiveLocationProviderManager;

    if-eqz v0, :cond_17

    .line 2654
    invoke-virtual {p0, p1}, Lcom/android/server/location/provider/LocationProviderManager;->processReportedLocation(Landroid/location/LocationResult;)Landroid/location/LocationResult;

    move-result-object v0

    if-nez v0, :cond_b

    goto :goto_73

    .line 2660
    :cond_b
    sget-object v1, Lcom/android/server/location/eventlog/LocationEventLog;->EVENT_LOG:Lcom/android/server/location/eventlog/LocationEventLog;

    iget-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/location/LocationResult;->size()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/location/eventlog/LocationEventLog;->logProviderReceivedLocations(Ljava/lang/String;I)V

    goto :goto_18

    :cond_17
    move-object v0, p1

    .line 2669
    :goto_18
    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mPassiveManager:Lcom/android/server/location/provider/PassiveLocationProviderManager;

    if-eqz v1, :cond_5b

    const/4 v5, 0x1

    const-wide v6, 0x7fffffffffffffffL

    const/4 v3, -0x2

    const/4 v4, 0x2

    move-object v2, p0

    .line 2670
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/location/provider/LocationProviderManager;->getLastLocationUnsafe(IIZJ)Landroid/location/Location;

    move-result-object p0

    if-eqz p0, :cond_5c

    const/4 v1, 0x0

    .line 2672
    invoke-virtual {p1, v1}, Landroid/location/LocationResult;->get(I)Landroid/location/Location;

    move-result-object p1

    invoke-virtual {p1}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v3

    .line 2673
    invoke-virtual {p0}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide p0

    cmp-long p0, v3, p0

    if-gez p0, :cond_5c

    .line 2674
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "non-monotonic location received from "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v2, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " provider"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LocationManagerService"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5c

    :cond_5b
    move-object v2, p0

    .line 2679
    :cond_5c
    :goto_5c
    invoke-virtual {v0}, Landroid/location/LocationResult;->getLastLocation()Landroid/location/Location;

    move-result-object p0

    const/4 p1, -0x1

    invoke-virtual {v2, p0, p1}, Lcom/android/server/location/provider/LocationProviderManager;->setLastLocation(Landroid/location/Location;I)V

    .line 2682
    new-instance p0, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda13;

    invoke-direct {p0, v0}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda13;-><init>(Landroid/location/LocationResult;)V

    invoke-virtual {v2, p0}, Lcom/android/server/location/listeners/ListenerMultiplexer;->deliverToListeners(Ljava/util/function/Function;)V

    .line 2687
    iget-object p0, v2, Lcom/android/server/location/provider/LocationProviderManager;->mPassiveManager:Lcom/android/server/location/provider/PassiveLocationProviderManager;

    if-eqz p0, :cond_73

    .line 2688
    invoke-virtual {p0, v0}, Lcom/android/server/location/provider/PassiveLocationProviderManager;->updateLocation(Landroid/location/LocationResult;)V

    :cond_73
    :goto_73
    return-void
.end method

.method public final onScreenInteractiveChanged(Z)V
    .registers 3

    .line 2549
    iget-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationPowerSaveModeHelper:Lcom/android/server/location/injector/LocationPowerSaveModeHelper;

    invoke-virtual {p1}, Lcom/android/server/location/injector/LocationPowerSaveModeHelper;->getLocationPowerSaveMode()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_10

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1b

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1b

    goto :goto_1a

    .line 2551
    :cond_10
    const-string p1, "gps"

    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1b

    :goto_1a
    return-void

    .line 2558
    :cond_1b
    new-instance p1, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda28;

    invoke-direct {p1}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda28;-><init>()V

    invoke-virtual {p0, p1}, Lcom/android/server/location/listeners/ListenerMultiplexer;->updateRegistrations(Ljava/util/function/Predicate;)V

    return-void
.end method

.method public onStateChanged(Lcom/android/server/location/provider/AbstractLocationProvider$State;Lcom/android/server/location/provider/AbstractLocationProvider$State;)V
    .registers 6

    .line 2634
    iget-boolean v0, p1, Lcom/android/server/location/provider/AbstractLocationProvider$State;->allowed:Z

    iget-boolean v1, p2, Lcom/android/server/location/provider/AbstractLocationProvider$State;->allowed:Z

    if-eq v0, v1, :cond_a

    const/4 v0, -0x1

    .line 2635
    invoke-virtual {p0, v0}, Lcom/android/server/location/provider/LocationProviderManager;->onEnabledChanged(I)V

    .line 2638
    :cond_a
    iget-object v0, p1, Lcom/android/server/location/provider/AbstractLocationProvider$State;->properties:Landroid/location/provider/ProviderProperties;

    iget-object v1, p2, Lcom/android/server/location/provider/AbstractLocationProvider$State;->properties:Landroid/location/provider/ProviderProperties;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 2639
    new-instance v0, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda31;

    invoke-direct {v0}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda31;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/location/listeners/ListenerMultiplexer;->updateRegistrations(Ljava/util/function/Predicate;)V

    .line 2642
    :cond_1c
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mStateChangedListener:Lcom/android/server/location/provider/LocationProviderManager$StateChangedListener;

    if-eqz v0, :cond_2c

    .line 2644
    invoke-static {}, Lcom/android/server/FgThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda32;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda32;-><init>(Lcom/android/server/location/provider/LocationProviderManager;Lcom/android/server/location/provider/LocationProviderManager$StateChangedListener;Lcom/android/server/location/provider/AbstractLocationProvider$State;Lcom/android/server/location/provider/AbstractLocationProvider$State;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_2c
    return-void
.end method

.method public onUnregister()V
    .registers 3

    .line 2171
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mSettingsHelper:Lcom/android/server/location/injector/SettingsHelper;

    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mBackgroundThrottleIntervalChangedListener:Lcom/android/server/location/injector/SettingsHelper$GlobalSettingChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/server/location/injector/SettingsHelper;->removeOnBackgroundThrottleIntervalChangedListener(Lcom/android/server/location/injector/SettingsHelper$GlobalSettingChangedListener;)V

    .line 2173
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mSettingsHelper:Lcom/android/server/location/injector/SettingsHelper;

    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mBackgroundThrottlePackageWhitelistChangedListener:Lcom/android/server/location/injector/SettingsHelper$GlobalSettingChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/server/location/injector/SettingsHelper;->removeOnBackgroundThrottlePackageWhitelistChangedListener(Lcom/android/server/location/injector/SettingsHelper$GlobalSettingChangedListener;)V

    .line 2175
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mSettingsHelper:Lcom/android/server/location/injector/SettingsHelper;

    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationPackageBlacklistChangedListener:Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/server/location/injector/SettingsHelper;->removeOnLocationPackageBlacklistChangedListener(Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;)V

    .line 2177
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mSettingsHelper:Lcom/android/server/location/injector/SettingsHelper;

    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mAdasPackageAllowlistChangedListener:Lcom/android/server/location/injector/SettingsHelper$GlobalSettingChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/server/location/injector/SettingsHelper;->removeAdasAllowlistChangedListener(Lcom/android/server/location/injector/SettingsHelper$GlobalSettingChangedListener;)V

    .line 2178
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mSettingsHelper:Lcom/android/server/location/injector/SettingsHelper;

    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mIgnoreSettingsPackageWhitelistChangedListener:Lcom/android/server/location/injector/SettingsHelper$GlobalSettingChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/server/location/injector/SettingsHelper;->removeIgnoreSettingsAllowlistChangedListener(Lcom/android/server/location/injector/SettingsHelper$GlobalSettingChangedListener;)V

    .line 2180
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationPermissionsHelper:Lcom/android/server/location/injector/LocationPermissionsHelper;

    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationPermissionsListener:Lcom/android/server/location/injector/LocationPermissionsHelper$LocationPermissionsListener;

    invoke-virtual {v0, v1}, Lcom/android/server/location/injector/LocationPermissionsHelper;->removeListener(Lcom/android/server/location/injector/LocationPermissionsHelper$LocationPermissionsListener;)V

    .line 2181
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mAppForegroundHelper:Lcom/android/server/location/injector/AppForegroundHelper;

    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mAppForegroundChangedListener:Lcom/android/server/location/injector/AppForegroundHelper$AppForegroundListener;

    invoke-virtual {v0, v1}, Lcom/android/server/location/injector/AppForegroundHelper;->removeListener(Lcom/android/server/location/injector/AppForegroundHelper$AppForegroundListener;)V

    .line 2182
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationPowerSaveModeHelper:Lcom/android/server/location/injector/LocationPowerSaveModeHelper;

    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationPowerSaveModeChangedListener:Lcom/android/server/location/injector/LocationPowerSaveModeHelper$LocationPowerSaveModeChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/server/location/injector/LocationPowerSaveModeHelper;->removeListener(Lcom/android/server/location/injector/LocationPowerSaveModeHelper$LocationPowerSaveModeChangedListener;)V

    .line 2183
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mScreenInteractiveHelper:Lcom/android/server/location/injector/ScreenInteractiveHelper;

    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mScreenInteractiveChangedListener:Lcom/android/server/location/injector/ScreenInteractiveHelper$ScreenInteractiveChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/server/location/injector/ScreenInteractiveHelper;->removeListener(Lcom/android/server/location/injector/ScreenInteractiveHelper$ScreenInteractiveChangedListener;)V

    .line 2185
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mEmergencyHelper:Lcom/android/server/location/injector/EmergencyHelper;

    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mEmergencyStateChangedListener:Lcom/android/server/location/injector/EmergencyHelper$EmergencyStateChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/server/location/injector/EmergencyHelper;->removeOnEmergencyStateChangedListener(Lcom/android/server/location/injector/EmergencyHelper$EmergencyStateChangedListener;)V

    .line 2187
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mPackageResetHelper:Lcom/android/server/location/injector/PackageResetHelper;

    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mPackageResetResponder:Lcom/android/server/location/injector/PackageResetHelper$Responder;

    invoke-virtual {v0, p0}, Lcom/android/server/location/injector/PackageResetHelper;->unregister(Lcom/android/server/location/injector/PackageResetHelper$Responder;)V

    return-void
.end method

.method public final onUserStarted(I)V
    .registers 3

    const/16 v0, -0x2710

    if-ne p1, v0, :cond_5

    return-void

    :cond_5
    const/4 v0, -0x1

    if-ne p1, v0, :cond_11

    .line 2746
    iget-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->clear()V

    .line 2747
    invoke-virtual {p0, v0}, Lcom/android/server/location/provider/LocationProviderManager;->onEnabledChanged(I)V

    return-void

    :cond_11
    if-ltz p1, :cond_15

    const/4 v0, 0x1

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    .line 2749
    :goto_16
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 2752
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 2753
    invoke-virtual {p0, p1}, Lcom/android/server/location/provider/LocationProviderManager;->onEnabledChanged(I)V

    return-void
.end method

.method public final onUserStopped(I)V
    .registers 3

    const/16 v0, -0x2710

    if-ne p1, v0, :cond_5

    return-void

    :cond_5
    const/4 v0, -0x1

    if-ne p1, v0, :cond_13

    .line 2764
    iget-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->clear()V

    .line 2765
    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLastLocations:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    return-void

    :cond_13
    if-ltz p1, :cond_17

    const/4 v0, 0x1

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    .line 2767
    :goto_18
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 2768
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 2769
    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLastLocations:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method public final processReportedLocation(Landroid/location/LocationResult;)Landroid/location/LocationResult;
    .registers 5

    .line 2696
    :try_start_0
    invoke-virtual {p1}, Landroid/location/LocationResult;->validate()Landroid/location/LocationResult;
    :try_end_3
    .catch Landroid/location/LocationResult$BadLocationException; {:try_start_0 .. :try_end_3} :catch_19

    .line 2703
    const-string v0, "enable_location_provider_manager_msl"

    const/4 v1, 0x1

    const-string v2, "location"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 2705
    new-instance v0, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda26;

    invoke-direct {v0, p0}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda26;-><init>(Lcom/android/server/location/provider/LocationProviderManager;)V

    invoke-virtual {p1, v0}, Landroid/location/LocationResult;->map(Ljava/util/function/Function;)Landroid/location/LocationResult;

    move-result-object p0

    return-object p0

    :cond_18
    return-object p1

    :catch_19
    move-exception p0

    .line 2698
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Dropping invalid locations: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LocationManagerService"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public final registerAndHandleIdentity(Ljava/lang/Object;Lcom/android/server/location/provider/LocationProviderManager$Registration;Ljava/lang/Runnable;)V
    .registers 7

    .line 2076
    invoke-virtual {p2}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->updateIsInEmergency()V

    .line 2078
    iget-object v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mMultiplexerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2079
    :try_start_6
    iget v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_d

    const/4 v1, 0x1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 2080
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_20

    .line 2082
    :try_start_15
    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/listeners/ListenerMultiplexer;->putRegistration(Ljava/lang/Object;Lcom/android/server/location/listeners/ListenerRegistration;)V

    .line 2083
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V
    :try_end_1b
    .catchall {:try_start_15 .. :try_end_1b} :catchall_22

    .line 2085
    :try_start_1b
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2087
    monitor-exit v0

    return-void

    :catchall_20
    move-exception p0

    goto :goto_27

    :catchall_22
    move-exception p0

    .line 2085
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2086
    throw p0

    .line 2087
    :goto_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_1b .. :try_end_28} :catchall_20

    throw p0
.end method

.method public registerLocationRequest(Landroid/location/LocationRequest;Landroid/location/util/identity/CallerIdentity;ILandroid/app/PendingIntent;)V
    .registers 11

    .line 2066
    new-instance v0, Lcom/android/server/location/provider/LocationProviderManager$LocationPendingIntentRegistration;

    new-instance v4, Lcom/android/server/location/provider/LocationProviderManager$LocationPendingIntentTransport;

    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mContext:Landroid/content/Context;

    invoke-direct {v4, v1, p4}, Lcom/android/server/location/provider/LocationProviderManager$LocationPendingIntentTransport;-><init>(Landroid/content/Context;Landroid/app/PendingIntent;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/location/provider/LocationProviderManager$LocationPendingIntentRegistration;-><init>(Lcom/android/server/location/provider/LocationProviderManager;Landroid/location/LocationRequest;Landroid/location/util/identity/CallerIdentity;Lcom/android/server/location/provider/LocationProviderManager$LocationPendingIntentTransport;I)V

    .line 2071
    new-instance p0, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda22;

    invoke-direct {p0}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda22;-><init>()V

    invoke-virtual {v1, p4, v0, p0}, Lcom/android/server/location/provider/LocationProviderManager;->registerAndHandleIdentity(Ljava/lang/Object;Lcom/android/server/location/provider/LocationProviderManager$Registration;Ljava/lang/Runnable;)V

    return-void
.end method

.method public registerLocationRequest(Landroid/location/LocationRequest;Landroid/location/util/identity/CallerIdentity;ILandroid/location/ILocationListener;)V
    .registers 11

    .line 2056
    new-instance v0, Lcom/android/server/location/provider/LocationProviderManager$LocationListenerRegistration;

    new-instance v4, Lcom/android/server/location/provider/LocationProviderManager$LocationListenerTransport;

    invoke-direct {v4, p4}, Lcom/android/server/location/provider/LocationProviderManager$LocationListenerTransport;-><init>(Landroid/location/ILocationListener;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/location/provider/LocationProviderManager$LocationListenerRegistration;-><init>(Lcom/android/server/location/provider/LocationProviderManager;Landroid/location/LocationRequest;Landroid/location/util/identity/CallerIdentity;Lcom/android/server/location/provider/LocationProviderManager$LocationListenerTransport;I)V

    .line 2061
    invoke-interface {p4}, Landroid/location/ILocationListener;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    new-instance p1, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda19;

    invoke-direct {p1}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda19;-><init>()V

    invoke-virtual {v1, p0, v0, p1}, Lcom/android/server/location/provider/LocationProviderManager;->registerAndHandleIdentity(Ljava/lang/Object;Lcom/android/server/location/provider/LocationProviderManager$Registration;Ljava/lang/Runnable;)V

    return-void
.end method

.method public registerWithService(Landroid/location/provider/ProviderRequest;Ljava/util/Collection;)Z
    .registers 4

    .line 2236
    invoke-virtual {p1}, Landroid/location/provider/ProviderRequest;->isActive()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x1

    return p0

    .line 2241
    :cond_8
    sget-object v0, Landroid/location/provider/ProviderRequest;->EMPTY_REQUEST:Landroid/location/provider/ProviderRequest;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/location/provider/LocationProviderManager;->reregisterWithService(Landroid/location/provider/ProviderRequest;Landroid/location/provider/ProviderRequest;Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic registerWithService(Ljava/lang/Object;Ljava/util/Collection;)Z
    .registers 3

    .line 150
    check-cast p1, Landroid/location/provider/ProviderRequest;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/provider/LocationProviderManager;->registerWithService(Landroid/location/provider/ProviderRequest;Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method public removeEnabledListener(Landroid/location/LocationManagerInternal$ProviderEnabledListener;)V
    .registers 5

    .line 1739
    iget-object v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mMultiplexerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1740
    :try_start_3
    iget v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 1741
    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mEnabledListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1742
    monitor-exit v0

    return-void

    :catchall_15
    move-exception p0

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public removeProviderRequestListener(Landroid/location/provider/IProviderRequestListener;)V
    .registers 2

    .line 1752
    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mProviderRequestListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public reregisterWithService(Landroid/location/provider/ProviderRequest;Landroid/location/provider/ProviderRequest;Ljava/util/Collection;)Z
    .registers 11

    .line 2252
    invoke-virtual {p1}, Landroid/location/provider/ProviderRequest;->isBypass()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_10

    invoke-virtual {p2}, Landroid/location/provider/ProviderRequest;->isBypass()Z

    move-result v0

    if-eqz v0, :cond_10

    :goto_e
    move-wide v3, v1

    goto :goto_25

    .line 2254
    :cond_10
    invoke-virtual {p2}, Landroid/location/provider/ProviderRequest;->getIntervalMillis()J

    move-result-wide v3

    invoke-virtual {p1}, Landroid/location/provider/ProviderRequest;->getIntervalMillis()J

    move-result-wide v5

    cmp-long p1, v3, v5

    if-lez p1, :cond_1d

    goto :goto_e

    .line 2261
    :cond_1d
    invoke-virtual {p2}, Landroid/location/provider/ProviderRequest;->getIntervalMillis()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4, p3}, Lcom/android/server/location/provider/LocationProviderManager;->calculateRequestDelayMillis(JLjava/util/Collection;)J

    move-result-wide v3

    :goto_25
    cmp-long p1, v3, v1

    const/4 p3, 0x1

    if-ltz p1, :cond_34

    .line 2265
    invoke-virtual {p2}, Landroid/location/provider/ProviderRequest;->getIntervalMillis()J

    move-result-wide v0

    cmp-long p1, v3, v0

    if-gtz p1, :cond_34

    move p1, p3

    goto :goto_35

    :cond_34
    const/4 p1, 0x0

    :goto_35
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    const-wide/16 v0, 0x7530

    cmp-long p1, v3, v0

    if-gez p1, :cond_42

    .line 2268
    invoke-virtual {p0, p2}, Lcom/android/server/location/provider/LocationProviderManager;->setProviderRequest(Landroid/location/provider/ProviderRequest;)V

    goto :goto_85

    .line 2270
    :cond_42
    sget-boolean p1, Lcom/android/server/location/LocationManagerService;->D:Z

    if-eqz p1, :cond_6d

    .line 2271
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " provider delaying request update "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " by "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2272
    invoke-static {v3, v4}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2271
    const-string v0, "LocationManagerService"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2275
    :cond_6d
    iget-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mDelayedRegister:Landroid/app/AlarmManager$OnAlarmListener;

    const/4 v0, 0x0

    if-eqz p1, :cond_79

    .line 2276
    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mAlarmHelper:Lcom/android/server/location/injector/AlarmHelper;

    invoke-virtual {v1, p1}, Lcom/android/server/location/injector/AlarmHelper;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 2277
    iput-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mDelayedRegister:Landroid/app/AlarmManager$OnAlarmListener;

    .line 2280
    :cond_79
    new-instance p1, Lcom/android/server/location/provider/LocationProviderManager$3;

    invoke-direct {p1, p0, p2}, Lcom/android/server/location/provider/LocationProviderManager$3;-><init>(Lcom/android/server/location/provider/LocationProviderManager;Landroid/location/provider/ProviderRequest;)V

    iput-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mDelayedRegister:Landroid/app/AlarmManager$OnAlarmListener;

    .line 2295
    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mAlarmHelper:Lcom/android/server/location/injector/AlarmHelper;

    invoke-virtual {p0, v3, v4, p1, v0}, Lcom/android/server/location/injector/AlarmHelper;->setDelayedAlarm(JLandroid/app/AlarmManager$OnAlarmListener;Landroid/os/WorkSource;)V

    :goto_85
    return p3
.end method

.method public bridge synthetic reregisterWithService(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Collection;)Z
    .registers 4

    .line 150
    check-cast p1, Landroid/location/provider/ProviderRequest;

    check-cast p2, Landroid/location/provider/ProviderRequest;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/location/provider/LocationProviderManager;->reregisterWithService(Landroid/location/provider/ProviderRequest;Landroid/location/provider/ProviderRequest;Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method public sendExtraCommand(IILjava/lang/String;Landroid/os/Bundle;)V
    .registers 7

    .line 2046
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2048
    :try_start_4
    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mProvider:Lcom/android/server/location/provider/MockableLocationProvider;

    invoke-virtual {p0}, Lcom/android/server/location/provider/AbstractLocationProvider;->getController()Lcom/android/server/location/provider/LocationProviderController;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/server/location/provider/LocationProviderController;->sendExtraCommand(IILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_11

    .line 2050
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_11
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2051
    throw p0
.end method

.method public final setLastLocation(Landroid/location/Location;I)V
    .registers 6

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-ne p2, v0, :cond_16

    .line 1975
    iget-object p2, p0, Lcom/android/server/location/provider/LocationProviderManager;->mUserHelper:Lcom/android/server/location/injector/UserInfoHelper;

    invoke-virtual {p2}, Lcom/android/server/location/injector/UserInfoHelper;->getRunningUserIds()[I

    move-result-object p2

    .line 1976
    :goto_a
    array-length v0, p2

    if-ge v1, v0, :cond_15

    .line 1977
    aget v0, p2, v1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/location/provider/LocationProviderManager;->setLastLocation(Landroid/location/Location;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_15
    return-void

    :cond_16
    const/4 v0, -0x2

    if-ne p2, v0, :cond_23

    .line 1981
    iget-object p2, p0, Lcom/android/server/location/provider/LocationProviderManager;->mUserHelper:Lcom/android/server/location/injector/UserInfoHelper;

    invoke-virtual {p2}, Lcom/android/server/location/injector/UserInfoHelper;->getCurrentUserId()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/provider/LocationProviderManager;->setLastLocation(Landroid/location/Location;I)V

    return-void

    :cond_23
    if-ltz p2, :cond_26

    const/4 v1, 0x1

    .line 1985
    :cond_26
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 1987
    iget-object v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mMultiplexerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1988
    :try_start_2c
    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLastLocations:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/provider/LocationProviderManager$LastLocation;

    if-nez v1, :cond_43

    .line 1990
    new-instance v1, Lcom/android/server/location/provider/LocationProviderManager$LastLocation;

    invoke-direct {v1}, Lcom/android/server/location/provider/LocationProviderManager$LastLocation;-><init>()V

    .line 1991
    iget-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLastLocations:Landroid/util/SparseArray;

    invoke-virtual {v2, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_43

    :catchall_41
    move-exception p0

    goto :goto_51

    .line 1994
    :cond_43
    :goto_43
    invoke-virtual {p0, p2}, Lcom/android/server/location/provider/LocationProviderManager;->isEnabled(I)Z

    move-result p0

    if-eqz p0, :cond_4c

    .line 1995
    invoke-virtual {v1, p1}, Lcom/android/server/location/provider/LocationProviderManager$LastLocation;->set(Landroid/location/Location;)V

    .line 1997
    :cond_4c
    invoke-virtual {v1, p1}, Lcom/android/server/location/provider/LocationProviderManager$LastLocation;->setBypass(Landroid/location/Location;)V

    .line 1998
    monitor-exit v0

    return-void

    :goto_51
    monitor-exit v0
    :try_end_52
    .catchall {:try_start_2c .. :try_end_52} :catchall_41

    throw p0
.end method

.method public setLocationFudgerCache(Lcom/android/server/location/fudger/LocationFudgerCache;)V
    .registers 2

    .line 1699
    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationFudger:Lcom/android/server/location/fudger/LocationFudger;

    invoke-virtual {p0, p1}, Lcom/android/server/location/fudger/LocationFudger;->setLocationFudgerCache(Lcom/android/server/location/fudger/LocationFudgerCache;)V

    return-void
.end method

.method public setMockProvider(Lcom/android/server/location/provider/MockLocationProvider;)V
    .registers 7

    .line 1769
    iget-object v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mMultiplexerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1770
    :try_start_3
    iget v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mState:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v2, :cond_c

    move v1, v4

    goto :goto_d

    :cond_c
    move v1, v3

    :goto_d
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 1772
    sget-object v1, Lcom/android/server/location/eventlog/LocationEventLog;->EVENT_LOG:Lcom/android/server/location/eventlog/LocationEventLog;

    iget-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    if-eqz p1, :cond_17

    goto :goto_18

    :cond_17
    move v4, v3

    :goto_18
    invoke-virtual {v1, v2, v4}, Lcom/android/server/location/eventlog/LocationEventLog;->logProviderMocked(Ljava/lang/String;Z)V

    .line 1774
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_3f

    .line 1776
    :try_start_1f
    iget-object v4, p0, Lcom/android/server/location/provider/LocationProviderManager;->mProvider:Lcom/android/server/location/provider/MockableLocationProvider;

    invoke-virtual {v4, p1}, Lcom/android/server/location/provider/MockableLocationProvider;->setMockProvider(Lcom/android/server/location/provider/MockLocationProvider;)V
    :try_end_24
    .catchall {:try_start_1f .. :try_end_24} :catchall_48

    .line 1778
    :try_start_24
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-nez p1, :cond_46

    .line 1785
    iget-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLastLocations:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    :goto_2f
    if-ge v3, p1, :cond_41

    .line 1787
    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLastLocations:Landroid/util/SparseArray;

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/provider/LocationProviderManager$LastLocation;

    invoke-virtual {v1}, Lcom/android/server/location/provider/LocationProviderManager$LastLocation;->clearMock()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2f

    :catchall_3f
    move-exception p0

    goto :goto_4d

    .line 1790
    :cond_41
    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationFudger:Lcom/android/server/location/fudger/LocationFudger;

    invoke-virtual {p0}, Lcom/android/server/location/fudger/LocationFudger;->resetOffsets()V

    .line 1792
    :cond_46
    monitor-exit v0

    return-void

    :catchall_48
    move-exception p0

    .line 1778
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1779
    throw p0

    .line 1792
    :goto_4d
    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_24 .. :try_end_4e} :catchall_3f

    throw p0
.end method

.method public setMockProviderAllowed(Z)V
    .registers 5

    .line 1796
    iget-object v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mMultiplexerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1797
    :try_start_3
    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mProvider:Lcom/android/server/location/provider/MockableLocationProvider;

    invoke-virtual {v1}, Lcom/android/server/location/provider/MockableLocationProvider;->isMock()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 1801
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_19

    .line 1803
    :try_start_f
    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mProvider:Lcom/android/server/location/provider/MockableLocationProvider;

    invoke-virtual {p0, p1}, Lcom/android/server/location/provider/MockableLocationProvider;->setMockProviderAllowed(Z)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_1b

    .line 1805
    :try_start_14
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1807
    monitor-exit v0

    return-void

    :catchall_19
    move-exception p0

    goto :goto_39

    :catchall_1b
    move-exception p0

    .line 1805
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1806
    throw p0

    .line 1798
    :cond_20
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " provider is not a test provider"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1807
    :goto_39
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_14 .. :try_end_3a} :catchall_19

    throw p0
.end method

.method public setMockProviderLocation(Landroid/location/Location;)V
    .registers 8

    .line 1811
    iget-object v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mMultiplexerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1812
    :try_start_3
    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mProvider:Lcom/android/server/location/provider/MockableLocationProvider;

    invoke-virtual {v1}, Lcom/android/server/location/provider/MockableLocationProvider;->isMock()Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 1816
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v1

    .line 1817
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4a

    iget-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4a

    .line 1820
    const-string v2, "33091107"

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "!="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v2, v3, v1}, [Ljava/lang/Object;

    move-result-object v1

    const v2, 0x534e4554

    invoke-static {v2, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    goto :goto_4a

    :catchall_48
    move-exception p0

    goto :goto_76

    .line 1824
    :cond_4a
    :goto_4a
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_4e
    .catchall {:try_start_3 .. :try_end_4e} :catchall_48

    .line 1826
    :try_start_4e
    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mProvider:Lcom/android/server/location/provider/MockableLocationProvider;

    invoke-virtual {p0, p1}, Lcom/android/server/location/provider/MockableLocationProvider;->setMockProviderLocation(Landroid/location/Location;)V
    :try_end_53
    .catchall {:try_start_4e .. :try_end_53} :catchall_58

    .line 1828
    :try_start_53
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1830
    monitor-exit v0

    return-void

    :catchall_58
    move-exception p0

    .line 1828
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1829
    throw p0

    .line 1813
    :cond_5d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " provider is not a test provider"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1830
    :goto_76
    monitor-exit v0
    :try_end_77
    .catchall {:try_start_53 .. :try_end_77} :catchall_48

    throw p0
.end method

.method public setProviderRequest(Landroid/location/provider/ProviderRequest;)V
    .registers 4

    .line 2309
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mDelayedRegister:Landroid/app/AlarmManager$OnAlarmListener;

    if-eqz v0, :cond_c

    .line 2310
    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mAlarmHelper:Lcom/android/server/location/injector/AlarmHelper;

    invoke-virtual {v1, v0}, Lcom/android/server/location/injector/AlarmHelper;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    const/4 v0, 0x0

    .line 2311
    iput-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mDelayedRegister:Landroid/app/AlarmManager$OnAlarmListener;

    .line 2314
    :cond_c
    sget-object v0, Lcom/android/server/location/eventlog/LocationEventLog;->EVENT_LOG:Lcom/android/server/location/eventlog/LocationEventLog;

    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/location/eventlog/LocationEventLog;->logProviderUpdateRequest(Ljava/lang/String;Landroid/location/provider/ProviderRequest;)V

    .line 2315
    sget-boolean v0, Lcom/android/server/location/LocationManagerService;->D:Z

    if-eqz v0, :cond_32

    .line 2316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " provider request changed to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LocationManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2318
    :cond_32
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mProvider:Lcom/android/server/location/provider/MockableLocationProvider;

    invoke-virtual {v0}, Lcom/android/server/location/provider/AbstractLocationProvider;->getController()Lcom/android/server/location/provider/LocationProviderController;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/location/provider/LocationProviderController;->setRequest(Landroid/location/provider/ProviderRequest;)V

    .line 2320
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0, p1}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda14;-><init>(Lcom/android/server/location/provider/LocationProviderManager;Landroid/location/provider/ProviderRequest;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setRealProvider(Lcom/android/server/location/provider/AbstractLocationProvider;)V
    .registers 5

    .line 1756
    iget-object v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mMultiplexerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1757
    :try_start_3
    iget v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 1759
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_1c

    .line 1761
    :try_start_12
    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager;->mProvider:Lcom/android/server/location/provider/MockableLocationProvider;

    invoke-virtual {p0, p1}, Lcom/android/server/location/provider/MockableLocationProvider;->setRealProvider(Lcom/android/server/location/provider/AbstractLocationProvider;)V
    :try_end_17
    .catchall {:try_start_12 .. :try_end_17} :catchall_1e

    .line 1763
    :try_start_17
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1765
    monitor-exit v0

    return-void

    :catchall_1c
    move-exception p0

    goto :goto_23

    :catchall_1e
    move-exception p0

    .line 1763
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1764
    throw p0

    .line 1765
    :goto_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_17 .. :try_end_24} :catchall_1c

    throw p0
.end method

.method public startManager(Lcom/android/server/location/provider/LocationProviderManager$StateChangedListener;)V
    .registers 6

    .line 1598
    iget-object v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mMultiplexerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1599
    :try_start_3
    iget v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mState:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_b

    const/4 v1, 0x1

    goto :goto_c

    :cond_b
    move v1, v3

    :goto_c
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 1600
    iput v3, p0, Lcom/android/server/location/provider/LocationProviderManager;->mState:I

    .line 1601
    iput-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mStateChangedListener:Lcom/android/server/location/provider/LocationProviderManager$StateChangedListener;

    .line 1603
    iget-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mUserHelper:Lcom/android/server/location/injector/UserInfoHelper;

    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mUserChangedListener:Lcom/android/server/location/injector/UserInfoHelper$UserListener;

    invoke-virtual {p1, v1}, Lcom/android/server/location/injector/UserInfoHelper;->addListener(Lcom/android/server/location/injector/UserInfoHelper$UserListener;)V

    .line 1604
    iget-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationSettings:Lcom/android/server/location/settings/LocationSettings;

    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationUserSettingsListener:Lcom/android/server/location/settings/LocationSettings$LocationUserSettingsListener;

    invoke-virtual {p1, v1}, Lcom/android/server/location/settings/LocationSettings;->registerLocationUserSettingsListener(Lcom/android/server/location/settings/LocationSettings$LocationUserSettingsListener;)V

    .line 1605
    iget-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mSettingsHelper:Lcom/android/server/location/injector/SettingsHelper;

    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationEnabledChangedListener:Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;

    invoke-virtual {p1, v1}, Lcom/android/server/location/injector/SettingsHelper;->addOnLocationEnabledChangedListener(Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;)V

    .line 1607
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_3e

    .line 1609
    :try_start_2c
    iget-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mProvider:Lcom/android/server/location/provider/MockableLocationProvider;

    invoke-virtual {p1}, Lcom/android/server/location/provider/AbstractLocationProvider;->getController()Lcom/android/server/location/provider/LocationProviderController;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/server/location/provider/LocationProviderController;->start()V

    const/4 p1, -0x1

    .line 1610
    invoke-virtual {p0, p1}, Lcom/android/server/location/provider/LocationProviderManager;->onUserStarted(I)V
    :try_end_39
    .catchall {:try_start_2c .. :try_end_39} :catchall_40

    .line 1612
    :try_start_39
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1614
    monitor-exit v0

    return-void

    :catchall_3e
    move-exception p0

    goto :goto_45

    :catchall_40
    move-exception p0

    .line 1612
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1613
    throw p0

    .line 1614
    :goto_45
    monitor-exit v0
    :try_end_46
    .catchall {:try_start_39 .. :try_end_46} :catchall_3e

    throw p0
.end method

.method public stopManager()V
    .registers 5

    .line 1618
    iget-object v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mMultiplexerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1619
    :try_start_3
    iget v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mState:I

    const/4 v2, 0x1

    if-nez v1, :cond_a

    move v1, v2

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 1620
    iput v2, p0, Lcom/android/server/location/provider/LocationProviderManager;->mState:I

    .line 1622
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_61

    const/4 v3, -0x1

    .line 1624
    :try_start_15
    invoke-virtual {p0, v3}, Lcom/android/server/location/provider/LocationProviderManager;->onEnabledChanged(I)V

    .line 1625
    new-instance v3, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda12;

    invoke-direct {v3}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda12;-><init>()V

    invoke-virtual {p0, v3}, Lcom/android/server/location/listeners/ListenerMultiplexer;->removeRegistrationIf(Ljava/util/function/Predicate;)V

    .line 1626
    iget-object v3, p0, Lcom/android/server/location/provider/LocationProviderManager;->mProvider:Lcom/android/server/location/provider/MockableLocationProvider;

    invoke-virtual {v3}, Lcom/android/server/location/provider/AbstractLocationProvider;->getController()Lcom/android/server/location/provider/LocationProviderController;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/server/location/provider/LocationProviderController;->stop()V
    :try_end_29
    .catchall {:try_start_15 .. :try_end_29} :catchall_63

    .line 1628
    :try_start_29
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1631
    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mUserHelper:Lcom/android/server/location/injector/UserInfoHelper;

    iget-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager;->mUserChangedListener:Lcom/android/server/location/injector/UserInfoHelper$UserListener;

    invoke-virtual {v1, v2}, Lcom/android/server/location/injector/UserInfoHelper;->removeListener(Lcom/android/server/location/injector/UserInfoHelper$UserListener;)V

    .line 1632
    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationSettings:Lcom/android/server/location/settings/LocationSettings;

    iget-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationUserSettingsListener:Lcom/android/server/location/settings/LocationSettings$LocationUserSettingsListener;

    invoke-virtual {v1, v2}, Lcom/android/server/location/settings/LocationSettings;->unregisterLocationUserSettingsListener(Lcom/android/server/location/settings/LocationSettings$LocationUserSettingsListener;)V

    .line 1633
    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mSettingsHelper:Lcom/android/server/location/injector/SettingsHelper;

    iget-object v2, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLocationEnabledChangedListener:Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;

    invoke-virtual {v1, v2}, Lcom/android/server/location/injector/SettingsHelper;->removeOnLocationEnabledChangedListener(Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;)V

    .line 1637
    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mEnabledListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 1638
    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mProviderRequestListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 1640
    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1641
    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mLastLocations:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    const/4 v1, 0x0

    .line 1642
    iput-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mStateChangedListener:Lcom/android/server/location/provider/LocationProviderManager$StateChangedListener;

    const/4 v1, 0x2

    .line 1643
    iput v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mState:I

    .line 1644
    monitor-exit v0

    return-void

    :catchall_61
    move-exception p0

    goto :goto_68

    :catchall_63
    move-exception p0

    .line 1628
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1629
    throw p0

    .line 1644
    :goto_68
    monitor-exit v0
    :try_end_69
    .catchall {:try_start_29 .. :try_end_69} :catchall_61

    throw p0
.end method

.method public unregisterLocationRequest(Landroid/app/PendingIntent;)V
    .registers 5

    .line 2134
    iget-object v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mMultiplexerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2135
    :try_start_3
    iget v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 2136
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_1a

    .line 2138
    :try_start_12
    invoke-virtual {p0, p1}, Lcom/android/server/location/listeners/ListenerMultiplexer;->removeRegistration(Ljava/lang/Object;)V
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_1c

    .line 2140
    :try_start_15
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2142
    monitor-exit v0

    return-void

    :catchall_1a
    move-exception p0

    goto :goto_21

    :catchall_1c
    move-exception p0

    .line 2140
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2141
    throw p0

    .line 2142
    :goto_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_15 .. :try_end_22} :catchall_1a

    throw p0
.end method

.method public unregisterLocationRequest(Landroid/location/ILocationListener;)V
    .registers 5

    .line 2122
    iget-object v0, p0, Lcom/android/server/location/listeners/ListenerMultiplexer;->mMultiplexerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2123
    :try_start_3
    iget v1, p0, Lcom/android/server/location/provider/LocationProviderManager;->mState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 2124
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_1e

    .line 2126
    :try_start_12
    invoke-interface {p1}, Landroid/location/ILocationListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/location/listeners/ListenerMultiplexer;->removeRegistration(Ljava/lang/Object;)V
    :try_end_19
    .catchall {:try_start_12 .. :try_end_19} :catchall_20

    .line 2128
    :try_start_19
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2130
    monitor-exit v0

    return-void

    :catchall_1e
    move-exception p0

    goto :goto_25

    :catchall_20
    move-exception p0

    .line 2128
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2129
    throw p0

    .line 2130
    :goto_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_19 .. :try_end_26} :catchall_1e

    throw p0
.end method

.method public unregisterWithService()V
    .registers 2

    .line 2304
    sget-object v0, Landroid/location/provider/ProviderRequest;->EMPTY_REQUEST:Landroid/location/provider/ProviderRequest;

    invoke-virtual {p0, v0}, Lcom/android/server/location/provider/LocationProviderManager;->setProviderRequest(Landroid/location/provider/ProviderRequest;)V

    return-void
.end method
