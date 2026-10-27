.class public Lcom/android/server/location/injector/SystemSettingsHelper;
.super Lcom/android/server/location/injector/SettingsHelper;
.source "SystemSettingsHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/injector/SystemSettingsHelper$PackageTagsListSetting;,
        Lcom/android/server/location/injector/SystemSettingsHelper$DeviceConfigSetting;,
        Lcom/android/server/location/injector/SystemSettingsHelper$StringSetCachedGlobalSetting;,
        Lcom/android/server/location/injector/SystemSettingsHelper$LongGlobalSetting;,
        Lcom/android/server/location/injector/SystemSettingsHelper$BooleanGlobalSetting;,
        Lcom/android/server/location/injector/SystemSettingsHelper$StringListCachedSecureSetting;,
        Lcom/android/server/location/injector/SystemSettingsHelper$IntegerSecureSetting;,
        Lcom/android/server/location/injector/SystemSettingsHelper$ObservingSetting;
    }
.end annotation


# static fields
.field private static final DEFAULT_BACKGROUND_THROTTLE_INTERVAL_MS:J = 0x1b7740L

.field private static final DEFAULT_BACKGROUND_THROTTLE_PROXIMITY_ALERT_INTERVAL_MS:J = 0x1b7740L

.field private static final DEFAULT_COARSE_LOCATION_ACCURACY_M:F = 2000.0f

.field private static final LOCATION_PACKAGE_BLACKLIST:Ljava/lang/String; = "locationPackagePrefixBlacklist"

.field private static final LOCATION_PACKAGE_WHITELIST:Ljava/lang/String; = "locationPackagePrefixWhitelist"


# instance fields
.field private final mAdasPackageAllowlist:Lcom/android/server/location/injector/SystemSettingsHelper$PackageTagsListSetting;

.field private final mBackgroundThrottleIntervalMs:Lcom/android/server/location/injector/SystemSettingsHelper$LongGlobalSetting;

.field private final mBackgroundThrottlePackageWhitelist:Lcom/android/server/location/injector/SystemSettingsHelper$StringSetCachedGlobalSetting;

.field private final mContext:Landroid/content/Context;

.field private final mGnssMeasurementFullTracking:Lcom/android/server/location/injector/SystemSettingsHelper$BooleanGlobalSetting;

.field private final mIgnoreSettingsPackageAllowlist:Lcom/android/server/location/injector/SystemSettingsHelper$PackageTagsListSetting;

.field private final mLocationMode:Lcom/android/server/location/injector/SystemSettingsHelper$IntegerSecureSetting;

.field private final mLocationPackageBlacklist:Lcom/android/server/location/injector/SystemSettingsHelper$StringListCachedSecureSetting;

.field private final mLocationPackageWhitelist:Lcom/android/server/location/injector/SystemSettingsHelper$StringListCachedSecureSetting;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .line 89
    invoke-direct {p0}, Lcom/android/server/location/injector/SettingsHelper;-><init>()V

    .line 90
    iput-object p1, p0, Lcom/android/server/location/injector/SystemSettingsHelper;->mContext:Landroid/content/Context;

    .line 92
    invoke-static {}, Lcom/android/server/location/gnss/operators/GnssForTelcelCustomStub;->getInstance()Lcom/android/server/location/gnss/operators/GnssForTelcelCustomStub;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/location/gnss/operators/GnssForTelcelCustomStub;->init(Landroid/content/Context;)V

    .line 94
    new-instance v0, Lcom/android/server/location/injector/SystemSettingsHelper$IntegerSecureSetting;

    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const-string/jumbo v2, "location_mode"

    invoke-direct {v0, p1, v2, v1}, Lcom/android/server/location/injector/SystemSettingsHelper$IntegerSecureSetting;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/location/injector/SystemSettingsHelper;->mLocationMode:Lcom/android/server/location/injector/SystemSettingsHelper$IntegerSecureSetting;

    .line 95
    new-instance v0, Lcom/android/server/location/injector/SystemSettingsHelper$LongGlobalSetting;

    .line 96
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const-string/jumbo v2, "location_background_throttle_interval_ms"

    invoke-direct {v0, p1, v2, v1}, Lcom/android/server/location/injector/SystemSettingsHelper$LongGlobalSetting;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/location/injector/SystemSettingsHelper;->mBackgroundThrottleIntervalMs:Lcom/android/server/location/injector/SystemSettingsHelper$LongGlobalSetting;

    .line 97
    new-instance v0, Lcom/android/server/location/injector/SystemSettingsHelper$BooleanGlobalSetting;

    .line 98
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const-string v2, "enable_gnss_raw_meas_full_tracking"

    invoke-direct {v0, p1, v2, v1}, Lcom/android/server/location/injector/SystemSettingsHelper$BooleanGlobalSetting;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/location/injector/SystemSettingsHelper;->mGnssMeasurementFullTracking:Lcom/android/server/location/injector/SystemSettingsHelper$BooleanGlobalSetting;

    .line 99
    new-instance v0, Lcom/android/server/location/injector/SystemSettingsHelper$StringListCachedSecureSetting;

    .line 100
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const-string/jumbo v2, "locationPackagePrefixBlacklist"

    invoke-direct {v0, p1, v2, v1}, Lcom/android/server/location/injector/SystemSettingsHelper$StringListCachedSecureSetting;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/location/injector/SystemSettingsHelper;->mLocationPackageBlacklist:Lcom/android/server/location/injector/SystemSettingsHelper$StringListCachedSecureSetting;

    .line 101
    new-instance v0, Lcom/android/server/location/injector/SystemSettingsHelper$StringListCachedSecureSetting;

    .line 102
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const-string/jumbo v2, "locationPackagePrefixWhitelist"

    invoke-direct {v0, p1, v2, v1}, Lcom/android/server/location/injector/SystemSettingsHelper$StringListCachedSecureSetting;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/location/injector/SystemSettingsHelper;->mLocationPackageWhitelist:Lcom/android/server/location/injector/SystemSettingsHelper$StringListCachedSecureSetting;

    .line 103
    new-instance v0, Lcom/android/server/location/injector/SystemSettingsHelper$StringSetCachedGlobalSetting;

    new-instance v1, Lcom/android/server/location/injector/SystemSettingsHelper$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/location/injector/SystemSettingsHelper$$ExternalSyntheticLambda0;-><init>()V

    .line 106
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const-string/jumbo v3, "location_background_throttle_package_whitelist"

    invoke-direct {v0, p1, v3, v1, v2}, Lcom/android/server/location/injector/SystemSettingsHelper$StringSetCachedGlobalSetting;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/function/Supplier;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/location/injector/SystemSettingsHelper;->mBackgroundThrottlePackageWhitelist:Lcom/android/server/location/injector/SystemSettingsHelper$StringSetCachedGlobalSetting;

    .line 107
    new-instance v0, Lcom/android/server/location/injector/SystemSettingsHelper$PackageTagsListSetting;

    new-instance v1, Lcom/android/server/location/injector/SystemSettingsHelper$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/server/location/injector/SystemSettingsHelper$$ExternalSyntheticLambda1;-><init>()V

    const-string v2, "adas_settings_allowlist"

    invoke-direct {v0, v2, v1}, Lcom/android/server/location/injector/SystemSettingsHelper$PackageTagsListSetting;-><init>(Ljava/lang/String;Ljava/util/function/Supplier;)V

    iput-object v0, p0, Lcom/android/server/location/injector/SystemSettingsHelper;->mAdasPackageAllowlist:Lcom/android/server/location/injector/SystemSettingsHelper$PackageTagsListSetting;

    .line 110
    new-instance v0, Lcom/android/server/location/injector/SystemSettingsHelper$PackageTagsListSetting;

    new-instance v1, Lcom/android/server/location/injector/SystemSettingsHelper$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/android/server/location/injector/SystemSettingsHelper$$ExternalSyntheticLambda2;-><init>()V

    const-string/jumbo v2, "ignore_settings_allowlist"

    invoke-direct {v0, v2, v1}, Lcom/android/server/location/injector/SystemSettingsHelper$PackageTagsListSetting;-><init>(Ljava/lang/String;Ljava/util/function/Supplier;)V

    iput-object v0, p0, Lcom/android/server/location/injector/SystemSettingsHelper;->mIgnoreSettingsPackageAllowlist:Lcom/android/server/location/injector/SystemSettingsHelper$PackageTagsListSetting;

    .line 113
    return-void
.end method

.method static synthetic lambda$new$0()Landroid/util/ArraySet;
    .registers 1

    .line 105
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/SystemConfig;->getAllowUnthrottledLocation()Landroid/util/ArraySet;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$new$1()Landroid/util/ArrayMap;
    .registers 1

    .line 109
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/SystemConfig;->getAllowAdasLocationSettings()Landroid/util/ArrayMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$new$2()Landroid/util/ArrayMap;
    .registers 1

    .line 112
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/SystemConfig;->getAllowIgnoreLocationSettings()Landroid/util/ArrayMap;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addAdasAllowlistChangedListener(Lcom/android/server/location/injector/SettingsHelper$GlobalSettingChangedListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/android/server/location/injector/SettingsHelper$GlobalSettingChangedListener;

    .line 257
    iget-object v0, p0, Lcom/android/server/location/injector/SystemSettingsHelper;->mAdasPackageAllowlist:Lcom/android/server/location/injector/SystemSettingsHelper$PackageTagsListSetting;

    invoke-virtual {v0, p1}, Lcom/android/server/location/injector/SystemSettingsHelper$PackageTagsListSetting;->addListener(Lcom/android/server/location/injector/SettingsHelper$GlobalSettingChangedListener;)V

    .line 258
    return-void
.end method

.method public addIgnoreSettingsAllowlistChangedListener(Lcom/android/server/location/injector/SettingsHelper$GlobalSettingChangedListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/android/server/location/injector/SettingsHelper$GlobalSettingChangedListener;

    .line 273
    iget-object v0, p0, Lcom/android/server/location/injector/SystemSettingsHelper;->mIgnoreSettingsPackageAllowlist:Lcom/android/server/location/injector/SystemSettingsHelper$PackageTagsListSetting;

    invoke-virtual {v0, p1}, Lcom/android/server/location/injector/SystemSettingsHelper$PackageTagsListSetting;->addListener(Lcom/android/server/location/injector/SettingsHelper$GlobalSettingChangedListener;)V

    .line 274
    return-void
.end method

.method public addOnBackgroundThrottleIntervalChangedListener(Lcom/android/server/location/injector/SettingsHelper$GlobalSettingChangedListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/android/server/location/injector/SettingsHelper$GlobalSettingChangedListener;

    .line 170
    iget-object v0, p0, Lcom/android/server/location/injector/SystemSettingsHelper;->mBackgroundThrottleIntervalMs:Lcom/android/server/location/injector/SystemSettingsHelper$LongGlobalSetting;

    invoke-virtual {v0, p1}, Lcom/android/server/location/injector/SystemSettingsHelper$LongGlobalSetting;->addListener(Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;)V

    .line 171
    return-void
.end method

.method public addOnBackgroundThrottlePackageWhitelistChangedListener(Lcom/android/server/location/injector/SettingsHelper$GlobalSettingChangedListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/android/server/location/injector/SettingsHelper$GlobalSettingChangedListener;

    .line 224
    iget-object v0, p0, Lcom/android/server/location/injector/SystemSettingsHelper;->mBackgroundThrottlePackageWhitelist:Lcom/android/server/location/injector/SystemSettingsHelper$StringSetCachedGlobalSetting;

    invoke-virtual {v0, p1}, Lcom/android/server/location/injector/SystemSettingsHelper$StringSetCachedGlobalSetting;->addListener(Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;)V

    .line 225
    return-void
.end method

.method public addOnGnssMeasurementsFullTrackingEnabledChangedListener(Lcom/android/server/location/injector/SettingsHelper$GlobalSettingChangedListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/android/server/location/injector/SettingsHelper$GlobalSettingChangedListener;

    .line 241
    iget-object v0, p0, Lcom/android/server/location/injector/SystemSettingsHelper;->mGnssMeasurementFullTracking:Lcom/android/server/location/injector/SystemSettingsHelper$BooleanGlobalSetting;

    invoke-virtual {v0, p1}, Lcom/android/server/location/injector/SystemSettingsHelper$BooleanGlobalSetting;->addListener(Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;)V

    .line 242
    return-void
.end method

.method public addOnLocationEnabledChangedListener(Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;

    .line 154
    iget-object v0, p0, Lcom/android/server/location/injector/SystemSettingsHelper;->mLocationMode:Lcom/android/server/location/injector/SystemSettingsHelper$IntegerSecureSetting;

    invoke-virtual {v0, p1}, Lcom/android/server/location/injector/SystemSettingsHelper$IntegerSecureSetting;->addListener(Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;)V

    .line 155
    return-void
.end method

.method public addOnLocationPackageBlacklistChangedListener(Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;

    .line 205
    iget-object v0, p0, Lcom/android/server/location/injector/SystemSettingsHelper;->mLocationPackageBlacklist:Lcom/android/server/location/injector/SystemSettingsHelper$StringListCachedSecureSetting;

    invoke-virtual {v0, p1}, Lcom/android/server/location/injector/SystemSettingsHelper$StringListCachedSecureSetting;->addListener(Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;)V

    .line 206
    iget-object v0, p0, Lcom/android/server/location/injector/SystemSettingsHelper;->mLocationPackageWhitelist:Lcom/android/server/location/injector/SystemSettingsHelper$StringListCachedSecureSetting;

    invoke-virtual {v0, p1}, Lcom/android/server/location/injector/SystemSettingsHelper$StringListCachedSecureSetting;->addListener(Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;)V

    .line 207
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Landroid/util/IndentingPrintWriter;[Ljava/lang/String;)V
    .registers 14
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "ipw"    # Landroid/util/IndentingPrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 313
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->getRunningUserIds()[I

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_14f

    .line 316
    .local v0, "userIds":[I
    nop

    .line 318
    const-string v1, "Location Setting: "

    invoke-virtual {p2, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 319
    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 320
    array-length v1, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-le v1, v2, :cond_36

    .line 321
    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->println()V

    .line 322
    array-length v1, v0

    move v4, v3

    :goto_1b
    if-ge v4, v1, :cond_3f

    aget v5, v0, v4

    .line 323
    .local v5, "userId":I
    const-string v6, "[u"

    invoke-virtual {p2, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 324
    invoke-virtual {p2, v5}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 325
    const-string v6, "] "

    invoke-virtual {p2, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 326
    invoke-virtual {p0, v5}, Lcom/android/server/location/injector/SystemSettingsHelper;->isLocationEnabled(I)Z

    move-result v6

    invoke-virtual {p2, v6}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 322
    .end local v5    # "userId":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_1b

    .line 329
    :cond_36
    aget v1, v0, v3

    invoke-virtual {p0, v1}, Lcom/android/server/location/injector/SystemSettingsHelper;->isLocationEnabled(I)Z

    move-result v1

    invoke-virtual {p2, v1}, Landroid/util/IndentingPrintWriter;->println(Z)V

    .line 331
    :cond_3f
    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 333
    const-string v1, "Location Allow/Deny Packages:"

    invoke-virtual {p2, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 334
    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 335
    array-length v1, v0

    const-string v4, "[allow] "

    const-string v5, "[deny] "

    if-le v1, v2, :cond_ae

    .line 336
    array-length v1, v0

    :goto_52
    if-ge v3, v1, :cond_ec

    aget v2, v0, v3

    .line 337
    .local v2, "userId":I
    iget-object v6, p0, Lcom/android/server/location/injector/SystemSettingsHelper;->mLocationPackageBlacklist:Lcom/android/server/location/injector/SystemSettingsHelper$StringListCachedSecureSetting;

    invoke-virtual {v6, v2}, Lcom/android/server/location/injector/SystemSettingsHelper$StringListCachedSecureSetting;->getValueForUser(I)Ljava/util/List;

    move-result-object v6

    .line 339
    .local v6, "locationPackageBlacklist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_63

    .line 340
    goto :goto_ab

    .line 343
    :cond_63
    const-string/jumbo v7, "user "

    invoke-virtual {p2, v7}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 344
    invoke-virtual {p2, v2}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 345
    const-string v7, ":"

    invoke-virtual {p2, v7}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 346
    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 348
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_78
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 349
    .local v8, "packageName":Ljava/lang/String;
    invoke-virtual {p2, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 350
    invoke-virtual {p2, v8}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 351
    .end local v8    # "packageName":Ljava/lang/String;
    goto :goto_78

    .line 353
    :cond_8b
    iget-object v7, p0, Lcom/android/server/location/injector/SystemSettingsHelper;->mLocationPackageWhitelist:Lcom/android/server/location/injector/SystemSettingsHelper$StringListCachedSecureSetting;

    invoke-virtual {v7, v2}, Lcom/android/server/location/injector/SystemSettingsHelper$StringListCachedSecureSetting;->getValueForUser(I)Ljava/util/List;

    move-result-object v7

    .line 355
    .local v7, "locationPackageWhitelist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_95
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 356
    .local v9, "packageName":Ljava/lang/String;
    invoke-virtual {p2, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 357
    invoke-virtual {p2, v9}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 358
    .end local v9    # "packageName":Ljava/lang/String;
    goto :goto_95

    .line 360
    :cond_a8
    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 336
    .end local v2    # "userId":I
    .end local v6    # "locationPackageBlacklist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "locationPackageWhitelist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_ab
    add-int/lit8 v3, v3, 0x1

    goto :goto_52

    .line 363
    :cond_ae
    iget-object v1, p0, Lcom/android/server/location/injector/SystemSettingsHelper;->mLocationPackageBlacklist:Lcom/android/server/location/injector/SystemSettingsHelper$StringListCachedSecureSetting;

    aget v2, v0, v3

    invoke-virtual {v1, v2}, Lcom/android/server/location/injector/SystemSettingsHelper$StringListCachedSecureSetting;->getValueForUser(I)Ljava/util/List;

    move-result-object v1

    .line 365
    .local v1, "locationPackageBlacklist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_ba
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_cd

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 366
    .local v6, "packageName":Ljava/lang/String;
    invoke-virtual {p2, v5}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 367
    invoke-virtual {p2, v6}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 368
    .end local v6    # "packageName":Ljava/lang/String;
    goto :goto_ba

    .line 370
    :cond_cd
    iget-object v2, p0, Lcom/android/server/location/injector/SystemSettingsHelper;->mLocationPackageWhitelist:Lcom/android/server/location/injector/SystemSettingsHelper$StringListCachedSecureSetting;

    aget v3, v0, v3

    invoke-virtual {v2, v3}, Lcom/android/server/location/injector/SystemSettingsHelper$StringListCachedSecureSetting;->getValueForUser(I)Ljava/util/List;

    move-result-object v2

    .line 372
    .local v2, "locationPackageWhitelist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_d9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_ec

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 373
    .local v5, "packageName":Ljava/lang/String;
    invoke-virtual {p2, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 374
    invoke-virtual {p2, v5}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 375
    .end local v5    # "packageName":Ljava/lang/String;
    goto :goto_d9

    .line 377
    .end local v1    # "locationPackageBlacklist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "locationPackageWhitelist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_ec
    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 379
    iget-object v1, p0, Lcom/android/server/location/injector/SystemSettingsHelper;->mBackgroundThrottlePackageWhitelist:Lcom/android/server/location/injector/SystemSettingsHelper$StringSetCachedGlobalSetting;

    .line 380
    invoke-virtual {v1}, Lcom/android/server/location/injector/SystemSettingsHelper$StringSetCachedGlobalSetting;->getValue()Ljava/util/Set;

    move-result-object v1

    .line 381
    .local v1, "backgroundThrottlePackageWhitelist":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_11a

    .line 382
    const-string v2, "Throttling Allow Packages:"

    invoke-virtual {p2, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 383
    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 384
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_107
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_117

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 385
    .local v3, "packageName":Ljava/lang/String;
    invoke-virtual {p2, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 386
    .end local v3    # "packageName":Ljava/lang/String;
    goto :goto_107

    .line 387
    :cond_117
    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 390
    :cond_11a
    iget-object v2, p0, Lcom/android/server/location/injector/SystemSettingsHelper;->mIgnoreSettingsPackageAllowlist:Lcom/android/server/location/injector/SystemSettingsHelper$PackageTagsListSetting;

    invoke-virtual {v2}, Lcom/android/server/location/injector/SystemSettingsHelper$PackageTagsListSetting;->getValue()Landroid/os/PackageTagsList;

    move-result-object v2

    .line 391
    .local v2, "ignoreSettingsAllowlist":Landroid/os/PackageTagsList;
    invoke-virtual {v2}, Landroid/os/PackageTagsList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_134

    .line 392
    const-string v3, "Emergency Bypass Allow Packages:"

    invoke-virtual {p2, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 393
    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 394
    invoke-virtual {v2, p2}, Landroid/os/PackageTagsList;->dump(Ljava/io/PrintWriter;)V

    .line 395
    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 398
    :cond_134
    iget-object v3, p0, Lcom/android/server/location/injector/SystemSettingsHelper;->mAdasPackageAllowlist:Lcom/android/server/location/injector/SystemSettingsHelper$PackageTagsListSetting;

    invoke-virtual {v3}, Lcom/android/server/location/injector/SystemSettingsHelper$PackageTagsListSetting;->getValue()Landroid/os/PackageTagsList;

    move-result-object v3

    .line 399
    .local v3, "adasPackageAllowlist":Landroid/os/PackageTagsList;
    invoke-virtual {v3}, Landroid/os/PackageTagsList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_14e

    .line 400
    const-string v4, "ADAS Bypass Allow Packages:"

    invoke-virtual {p2, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 401
    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 402
    invoke-virtual {v3, p2}, Landroid/os/PackageTagsList;->dump(Ljava/io/PrintWriter;)V

    .line 403
    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 405
    :cond_14e
    return-void

    .line 314
    .end local v0    # "userIds":[I
    .end local v1    # "backgroundThrottlePackageWhitelist":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v2    # "ignoreSettingsAllowlist":Landroid/os/PackageTagsList;
    .end local v3    # "adasPackageAllowlist":Landroid/os/PackageTagsList;
    :catch_14f
    move-exception v0

    .line 315
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getAdasAllowlist()Landroid/os/PackageTagsList;
    .registers 2

    .line 252
    iget-object v0, p0, Lcom/android/server/location/injector/SystemSettingsHelper;->mAdasPackageAllowlist:Lcom/android/server/location/injector/SystemSettingsHelper$PackageTagsListSetting;

    invoke-virtual {v0}, Lcom/android/server/location/injector/SystemSettingsHelper$PackageTagsListSetting;->getValue()Landroid/os/PackageTagsList;

    move-result-object v0

    return-object v0
.end method

.method public getBackgroundThrottleIntervalMs()J
    .registers 4

    .line 164
    iget-object v0, p0, Lcom/android/server/location/injector/SystemSettingsHelper;->mBackgroundThrottleIntervalMs:Lcom/android/server/location/injector/SystemSettingsHelper$LongGlobalSetting;

    const-wide/32 v1, 0x1b7740

    invoke-virtual {v0, v1, v2}, Lcom/android/server/location/injector/SystemSettingsHelper$LongGlobalSetting;->getValue(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getBackgroundThrottlePackageWhitelist()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 218
    iget-object v0, p0, Lcom/android/server/location/injector/SystemSettingsHelper;->mBackgroundThrottlePackageWhitelist:Lcom/android/server/location/injector/SystemSettingsHelper$StringSetCachedGlobalSetting;

    invoke-virtual {v0}, Lcom/android/server/location/injector/SystemSettingsHelper$StringSetCachedGlobalSetting;->getValue()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getBackgroundThrottleProximityAlertIntervalMs()J
    .registers 7

    .line 284
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 286
    .local v0, "identity":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/location/injector/SystemSettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "location_background_throttle_proximity_alert_interval_ms"

    const-wide/32 v4, 0x1b7740

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_18

    .line 290
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 286
    return-wide v2

    .line 290
    :catchall_18
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 291
    throw v2
.end method

.method public getCoarseLocationAccuracyM()F
    .registers 7

    .line 296
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 297
    .local v0, "identity":J
    iget-object v2, p0, Lcom/android/server/location/injector/SystemSettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 299
    .local v2, "cr":Landroid/content/ContentResolver;
    :try_start_a
    const-string/jumbo v3, "locationCoarseAccuracy"

    const/high16 v4, 0x44fa0000    # 2000.0f

    .line 303
    invoke-virtual {v2}, Landroid/content/ContentResolver;->getUserId()I

    move-result v5

    .line 299
    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$Secure;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v3
    :try_end_17
    .catchall {:try_start_a .. :try_end_17} :catchall_1b

    .line 305
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 299
    return v3

    .line 305
    :catchall_1b
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 306
    throw v3
.end method

.method public getIgnoreSettingsAllowlist()Landroid/os/PackageTagsList;
    .registers 2

    .line 267
    iget-object v0, p0, Lcom/android/server/location/injector/SystemSettingsHelper;->mIgnoreSettingsPackageAllowlist:Lcom/android/server/location/injector/SystemSettingsHelper$PackageTagsListSetting;

    invoke-virtual {v0}, Lcom/android/server/location/injector/SystemSettingsHelper$PackageTagsListSetting;->getValue()Landroid/os/PackageTagsList;

    move-result-object v0

    return-object v0
.end method

.method public isGnssMeasurementsFullTrackingEnabled()Z
    .registers 3

    .line 235
    iget-object v0, p0, Lcom/android/server/location/injector/SystemSettingsHelper;->mGnssMeasurementFullTracking:Lcom/android/server/location/injector/SystemSettingsHelper$BooleanGlobalSetting;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/location/injector/SystemSettingsHelper$BooleanGlobalSetting;->getValue(Z)Z

    move-result v0

    return v0
.end method

.method public isLocationEnabled(I)Z
    .registers 5
    .param p1, "userId"    # I

    .line 128
    invoke-static {}, Lcom/android/server/location/gnss/operators/GnssForTelcelCustomStub;->getInstance()Lcom/android/server/location/gnss/operators/GnssForTelcelCustomStub;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/location/gnss/operators/GnssForTelcelCustomStub;->isCmtHasPermission()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_f

    .line 129
    invoke-virtual {p0, v1, p1}, Lcom/android/server/location/injector/SystemSettingsHelper;->setLocationEnabled(ZI)V

    .line 130
    return v1

    .line 133
    :cond_f
    iget-object v0, p0, Lcom/android/server/location/injector/SystemSettingsHelper;->mLocationMode:Lcom/android/server/location/injector/SystemSettingsHelper$IntegerSecureSetting;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, p1}, Lcom/android/server/location/injector/SystemSettingsHelper$IntegerSecureSetting;->getValueForUser(II)I

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_1a

    :cond_19
    move v1, v2

    :goto_1a
    return v1
.end method

.method public isLocationPackageBlacklisted(ILjava/lang/String;)Z
    .registers 9
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 181
    iget-object v0, p0, Lcom/android/server/location/injector/SystemSettingsHelper;->mLocationPackageBlacklist:Lcom/android/server/location/injector/SystemSettingsHelper$StringListCachedSecureSetting;

    invoke-virtual {v0, p1}, Lcom/android/server/location/injector/SystemSettingsHelper$StringListCachedSecureSetting;->getValueForUser(I)Ljava/util/List;

    move-result-object v0

    .line 182
    .local v0, "locationPackageBlacklist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_e

    .line 183
    return v2

    .line 186
    :cond_e
    iget-object v1, p0, Lcom/android/server/location/injector/SystemSettingsHelper;->mLocationPackageWhitelist:Lcom/android/server/location/injector/SystemSettingsHelper$StringListCachedSecureSetting;

    invoke-virtual {v1, p1}, Lcom/android/server/location/injector/SystemSettingsHelper$StringListCachedSecureSetting;->getValueForUser(I)Ljava/util/List;

    move-result-object v1

    .line 187
    .local v1, "locationPackageWhitelist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_18
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 188
    .local v4, "locationWhitelistPackage":Ljava/lang/String;
    invoke-virtual {p2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 189
    return v2

    .line 191
    .end local v4    # "locationWhitelistPackage":Ljava/lang/String;
    :cond_2b
    goto :goto_18

    .line 193
    :cond_2c
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_30
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_45

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 194
    .local v4, "locationBlacklistPackage":Ljava/lang/String;
    invoke-virtual {p2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_44

    .line 195
    const/4 v2, 0x1

    return v2

    .line 197
    .end local v4    # "locationBlacklistPackage":Ljava/lang/String;
    :cond_44
    goto :goto_30

    .line 199
    :cond_45
    return v2
.end method

.method public onSystemReady()V
    .registers 2

    .line 117
    iget-object v0, p0, Lcom/android/server/location/injector/SystemSettingsHelper;->mLocationMode:Lcom/android/server/location/injector/SystemSettingsHelper$IntegerSecureSetting;

    invoke-virtual {v0}, Lcom/android/server/location/injector/SystemSettingsHelper$IntegerSecureSetting;->register()V

    .line 118
    iget-object v0, p0, Lcom/android/server/location/injector/SystemSettingsHelper;->mBackgroundThrottleIntervalMs:Lcom/android/server/location/injector/SystemSettingsHelper$LongGlobalSetting;

    invoke-virtual {v0}, Lcom/android/server/location/injector/SystemSettingsHelper$LongGlobalSetting;->register()V

    .line 119
    iget-object v0, p0, Lcom/android/server/location/injector/SystemSettingsHelper;->mLocationPackageBlacklist:Lcom/android/server/location/injector/SystemSettingsHelper$StringListCachedSecureSetting;

    invoke-virtual {v0}, Lcom/android/server/location/injector/SystemSettingsHelper$StringListCachedSecureSetting;->register()V

    .line 120
    iget-object v0, p0, Lcom/android/server/location/injector/SystemSettingsHelper;->mLocationPackageWhitelist:Lcom/android/server/location/injector/SystemSettingsHelper$StringListCachedSecureSetting;

    invoke-virtual {v0}, Lcom/android/server/location/injector/SystemSettingsHelper$StringListCachedSecureSetting;->register()V

    .line 121
    iget-object v0, p0, Lcom/android/server/location/injector/SystemSettingsHelper;->mBackgroundThrottlePackageWhitelist:Lcom/android/server/location/injector/SystemSettingsHelper$StringSetCachedGlobalSetting;

    invoke-virtual {v0}, Lcom/android/server/location/injector/SystemSettingsHelper$StringSetCachedGlobalSetting;->register()V

    .line 122
    iget-object v0, p0, Lcom/android/server/location/injector/SystemSettingsHelper;->mIgnoreSettingsPackageAllowlist:Lcom/android/server/location/injector/SystemSettingsHelper$PackageTagsListSetting;

    invoke-virtual {v0}, Lcom/android/server/location/injector/SystemSettingsHelper$PackageTagsListSetting;->register()V

    .line 123
    return-void
.end method

.method public removeAdasAllowlistChangedListener(Lcom/android/server/location/injector/SettingsHelper$GlobalSettingChangedListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/android/server/location/injector/SettingsHelper$GlobalSettingChangedListener;

    .line 262
    iget-object v0, p0, Lcom/android/server/location/injector/SystemSettingsHelper;->mAdasPackageAllowlist:Lcom/android/server/location/injector/SystemSettingsHelper$PackageTagsListSetting;

    invoke-virtual {v0, p1}, Lcom/android/server/location/injector/SystemSettingsHelper$PackageTagsListSetting;->removeListener(Lcom/android/server/location/injector/SettingsHelper$GlobalSettingChangedListener;)V

    .line 263
    return-void
.end method

.method public removeIgnoreSettingsAllowlistChangedListener(Lcom/android/server/location/injector/SettingsHelper$GlobalSettingChangedListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/android/server/location/injector/SettingsHelper$GlobalSettingChangedListener;

    .line 279
    iget-object v0, p0, Lcom/android/server/location/injector/SystemSettingsHelper;->mIgnoreSettingsPackageAllowlist:Lcom/android/server/location/injector/SystemSettingsHelper$PackageTagsListSetting;

    invoke-virtual {v0, p1}, Lcom/android/server/location/injector/SystemSettingsHelper$PackageTagsListSetting;->removeListener(Lcom/android/server/location/injector/SettingsHelper$GlobalSettingChangedListener;)V

    .line 280
    return-void
.end method

.method public removeOnBackgroundThrottleIntervalChangedListener(Lcom/android/server/location/injector/SettingsHelper$GlobalSettingChangedListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/android/server/location/injector/SettingsHelper$GlobalSettingChangedListener;

    .line 176
    iget-object v0, p0, Lcom/android/server/location/injector/SystemSettingsHelper;->mBackgroundThrottleIntervalMs:Lcom/android/server/location/injector/SystemSettingsHelper$LongGlobalSetting;

    invoke-virtual {v0, p1}, Lcom/android/server/location/injector/SystemSettingsHelper$LongGlobalSetting;->removeListener(Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;)V

    .line 177
    return-void
.end method

.method public removeOnBackgroundThrottlePackageWhitelistChangedListener(Lcom/android/server/location/injector/SettingsHelper$GlobalSettingChangedListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/android/server/location/injector/SettingsHelper$GlobalSettingChangedListener;

    .line 230
    iget-object v0, p0, Lcom/android/server/location/injector/SystemSettingsHelper;->mBackgroundThrottlePackageWhitelist:Lcom/android/server/location/injector/SystemSettingsHelper$StringSetCachedGlobalSetting;

    invoke-virtual {v0, p1}, Lcom/android/server/location/injector/SystemSettingsHelper$StringSetCachedGlobalSetting;->removeListener(Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;)V

    .line 231
    return-void
.end method

.method public removeOnGnssMeasurementsFullTrackingEnabledChangedListener(Lcom/android/server/location/injector/SettingsHelper$GlobalSettingChangedListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/android/server/location/injector/SettingsHelper$GlobalSettingChangedListener;

    .line 247
    iget-object v0, p0, Lcom/android/server/location/injector/SystemSettingsHelper;->mGnssMeasurementFullTracking:Lcom/android/server/location/injector/SystemSettingsHelper$BooleanGlobalSetting;

    invoke-virtual {v0, p1}, Lcom/android/server/location/injector/SystemSettingsHelper$BooleanGlobalSetting;->removeListener(Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;)V

    .line 248
    return-void
.end method

.method public removeOnLocationEnabledChangedListener(Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;

    .line 159
    iget-object v0, p0, Lcom/android/server/location/injector/SystemSettingsHelper;->mLocationMode:Lcom/android/server/location/injector/SystemSettingsHelper$IntegerSecureSetting;

    invoke-virtual {v0, p1}, Lcom/android/server/location/injector/SystemSettingsHelper$IntegerSecureSetting;->removeListener(Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;)V

    .line 160
    return-void
.end method

.method public removeOnLocationPackageBlacklistChangedListener(Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;

    .line 212
    iget-object v0, p0, Lcom/android/server/location/injector/SystemSettingsHelper;->mLocationPackageBlacklist:Lcom/android/server/location/injector/SystemSettingsHelper$StringListCachedSecureSetting;

    invoke-virtual {v0, p1}, Lcom/android/server/location/injector/SystemSettingsHelper$StringListCachedSecureSetting;->removeListener(Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;)V

    .line 213
    iget-object v0, p0, Lcom/android/server/location/injector/SystemSettingsHelper;->mLocationPackageWhitelist:Lcom/android/server/location/injector/SystemSettingsHelper$StringListCachedSecureSetting;

    invoke-virtual {v0, p1}, Lcom/android/server/location/injector/SystemSettingsHelper$StringListCachedSecureSetting;->removeListener(Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;)V

    .line 214
    return-void
.end method

.method public setLocationEnabled(ZI)V
    .registers 8
    .param p1, "enabled"    # Z
    .param p2, "userId"    # I

    .line 138
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 140
    .local v0, "identity":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/location/injector/SystemSettingsHelper;->mContext:Landroid/content/Context;

    .line 141
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "location_mode"

    .line 143
    if-eqz p1, :cond_11

    .line 144
    const/4 v4, 0x3

    goto :goto_12

    .line 145
    :cond_11
    const/4 v4, 0x0

    .line 140
    :goto_12
    invoke-static {v2, v3, v4, p2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_1a

    .line 148
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 149
    nop

    .line 150
    return-void

    .line 148
    :catchall_1a
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 149
    throw v2
.end method
