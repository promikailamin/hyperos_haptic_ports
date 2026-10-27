.class public final Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;
.super Ljava/lang/Object;
.source "ServiceConfigAccessorImpl.java"

# interfaces
.implements Lcom/android/server/timezonedetector/ServiceConfigAccessor;


# static fields
.field private static final CONFIGURATION_INTERNAL_SERVER_FLAGS_KEYS_TO_WATCH:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_LTZP_EVENT_FILTER_AGE_THRESHOLD:Ljava/time/Duration;

.field private static final DEFAULT_LTZP_INITIALIZATION_TIMEOUT:Ljava/time/Duration;

.field private static final DEFAULT_LTZP_INITIALIZATION_TIMEOUT_FUZZ:Ljava/time/Duration;

.field private static final DEFAULT_LTZP_UNCERTAINTY_DELAY:Ljava/time/Duration;

.field private static final LOCATION_TIME_ZONE_MANAGER_SERVER_FLAGS_KEYS_TO_WATCH:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SLOCK:Ljava/lang/Object;

.field private static sInstance:Lcom/android/server/timezonedetector/ServiceConfigAccessor;


# instance fields
.field private final mConfigurationInternalListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/timezonedetector/ConfigurationChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mCr:Landroid/content/ContentResolver;

.field private final mLocationManager:Landroid/location/LocationManager;

.field private mRecordStateChangesForTests:Z

.field private final mServerFlags:Lcom/android/server/timedetector/ServerFlags;

.field private mTestPrimaryLocationTimeZoneProviderMode:Ljava/lang/String;

.field private mTestPrimaryLocationTimeZoneProviderPackageName:Ljava/lang/String;

.field private mTestSecondaryLocationTimeZoneProviderMode:Ljava/lang/String;

.field private mTestSecondaryLocationTimeZoneProviderPackageName:Ljava/lang/String;

.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method public static synthetic $r8$lambda$bz2U3jm1PvzdgCTo5k1zx9uS1zA(Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->handleConfigurationInternalChangeOnMainThread()V

    return-void
.end method

.method public static synthetic $r8$lambda$umxmze3PxZlugNMp6kHvpkcvYKk(Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->handleConfigurationInternalChangeOnMainThread()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleConfigurationInternalChangeOnMainThread(Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->handleConfigurationInternalChangeOnMainThread()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 11

    .line 60
    const-string v0, "location_time_zone_detection_feature_supported"

    const-string/jumbo v1, "primary_location_time_zone_provider_mode_override"

    const-string/jumbo v2, "secondary_location_time_zone_provider_mode_override"

    const-string v3, "location_time_zone_detection_run_in_background_enabled"

    const-string v4, "enhanced_metrics_collection_enabled"

    const-string v5, "location_time_zone_detection_setting_enabled_default"

    const-string v6, "location_time_zone_detection_setting_enabled_override"

    const-string/jumbo v7, "time_zone_detector_telephony_fallback_supported"

    invoke-static/range {v0 .. v7}, Ljava/util/Set;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->CONFIGURATION_INTERNAL_SERVER_FLAGS_KEYS_TO_WATCH:Ljava/util/Set;

    .line 75
    const-string v1, "location_time_zone_detection_feature_supported"

    const-string v2, "location_time_zone_detection_run_in_background_enabled"

    const-string v3, "location_time_zone_detection_setting_enabled_default"

    const-string v4, "location_time_zone_detection_setting_enabled_override"

    const-string/jumbo v5, "primary_location_time_zone_provider_mode_override"

    const-string/jumbo v6, "secondary_location_time_zone_provider_mode_override"

    const-string v7, "ltzp_init_timeout_millis"

    const-string v8, "ltzp_init_timeout_fuzz_millis"

    const-string v9, "ltzp_event_filtering_age_threshold_millis"

    const-string v10, "location_time_zone_detection_uncertainty_delay_millis"

    invoke-static/range {v1 .. v10}, Ljava/util/Set;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->LOCATION_TIME_ZONE_MANAGER_SERVER_FLAGS_KEYS_TO_WATCH:Ljava/util/Set;

    .line 88
    const-wide/16 v0, 0x5

    invoke-static {v0, v1}, Ljava/time/Duration;->ofMinutes(J)Ljava/time/Duration;

    move-result-object v2

    sput-object v2, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->DEFAULT_LTZP_INITIALIZATION_TIMEOUT:Ljava/time/Duration;

    .line 89
    const-wide/16 v2, 0x1

    invoke-static {v2, v3}, Ljava/time/Duration;->ofMinutes(J)Ljava/time/Duration;

    move-result-object v4

    sput-object v4, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->DEFAULT_LTZP_INITIALIZATION_TIMEOUT_FUZZ:Ljava/time/Duration;

    .line 90
    invoke-static {v0, v1}, Ljava/time/Duration;->ofMinutes(J)Ljava/time/Duration;

    move-result-object v0

    sput-object v0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->DEFAULT_LTZP_UNCERTAINTY_DELAY:Ljava/time/Duration;

    .line 91
    invoke-static {v2, v3}, Ljava/time/Duration;->ofMinutes(J)Ljava/time/Duration;

    move-result-object v0

    sput-object v0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->DEFAULT_LTZP_EVENT_FILTER_AGE_THRESHOLD:Ljava/time/Duration;

    .line 93
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->SLOCK:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mConfigurationInternalListeners:Ljava/util/List;

    .line 157
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mContext:Landroid/content/Context;

    .line 158
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mCr:Landroid/content/ContentResolver;

    .line 159
    const-class v1, Landroid/os/UserManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    iput-object v1, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mUserManager:Landroid/os/UserManager;

    .line 160
    const-class v1, Landroid/location/LocationManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    iput-object v1, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mLocationManager:Landroid/location/LocationManager;

    .line 161
    invoke-static {v0}, Lcom/android/server/timedetector/ServerFlags;->getInstance(Landroid/content/Context;)Lcom/android/server/timedetector/ServerFlags;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mServerFlags:Lcom/android/server/timedetector/ServerFlags;

    .line 168
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 169
    .local v2, "filter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 170
    const-string v3, "android.location.MODE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 171
    new-instance v3, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl$1;

    invoke-direct {v3, p0}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl$1;-><init>(Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;)V

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v2, v4, v4}, Landroid/content/Context;->registerReceiverForAllUsers(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 179
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 180
    .local v3, "contentResolver":Landroid/content/ContentResolver;
    new-instance v4, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl$2;

    invoke-virtual {v0}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-direct {v4, p0, v0}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl$2;-><init>(Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;Landroid/os/Handler;)V

    move-object v0, v4

    .line 186
    .local v0, "contentObserver":Landroid/database/ContentObserver;
    nop

    .line 187
    const-string v4, "auto_time_zone"

    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 186
    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 190
    nop

    .line 191
    const-string v4, "location_time_zone_detection_enabled"

    invoke-static {v4}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 190
    const/4 v6, -0x1

    invoke-virtual {v3, v4, v5, v0, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 195
    new-instance v4, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;)V

    sget-object v5, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->CONFIGURATION_INTERNAL_SERVER_FLAGS_KEYS_TO_WATCH:Ljava/util/Set;

    invoke-virtual {v1, v4, v5}, Lcom/android/server/timedetector/ServerFlags;->addListener(Lcom/android/server/timezonedetector/ConfigurationChangeListener;Ljava/util/Set;)V

    .line 197
    return-void
.end method

.method private atLeastOneProviderIsEnabled()Z
    .registers 3

    .line 391
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->getPrimaryLocationTimeZoneProviderMode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "disabled"

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 392
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->getSecondaryLocationTimeZoneProviderMode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    goto :goto_19

    :cond_17
    const/4 v0, 0x0

    goto :goto_1a

    :cond_19
    :goto_19
    const/4 v0, 0x1

    .line 391
    :goto_1a
    return v0
.end method

.method private getAutoDetectionEnabledSetting()Z
    .registers 4

    .line 329
    iget-object v0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mCr:Landroid/content/ContentResolver;

    const-string v1, "auto_time_zone"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_c

    goto :goto_d

    :cond_c
    const/4 v2, 0x0

    :goto_d
    return v2
.end method

.method private getConfigBoolean(I)Z
    .registers 4
    .param p1, "providerEnabledConfigId"    # I

    .line 601
    iget-object v0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 602
    .local v0, "resources":Landroid/content/res/Resources;
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    return v1
.end method

.method private getGeoDetectionEnabledSetting(I)Z
    .registers 6
    .param p1, "userId"    # I

    .line 336
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->getGeoDetectionSettingEnabledOverride()Ljava/util/Optional;

    move-result-object v0

    .line 337
    .local v0, "override":Ljava/util/Optional;, "Ljava/util/Optional<Ljava/lang/Boolean;>;"
    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 338
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 341
    :cond_15
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->isGeoDetectionEnabledForUsersByDefault()Z

    move-result v1

    .line 342
    .local v1, "geoDetectionEnabledByDefault":Z
    iget-object v2, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mCr:Landroid/content/ContentResolver;

    .line 344
    nop

    .line 342
    const-string v3, "location_time_zone_detection_enabled"

    invoke-static {v2, v3, v1, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eqz v2, :cond_26

    const/4 v2, 0x1

    goto :goto_27

    :cond_26
    const/4 v2, 0x0

    :goto_27
    return v2
.end method

.method private getGeoDetectionRunInBackgroundEnabled()Z
    .registers 5

    .line 413
    const/4 v0, 0x0

    .line 414
    .local v0, "defaultEnabled":Z
    iget-object v1, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mServerFlags:Lcom/android/server/timedetector/ServerFlags;

    const-string v2, "location_time_zone_detection_run_in_background_enabled"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/server/timedetector/ServerFlags;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/timezonedetector/ServiceConfigAccessor;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 201
    sget-object v0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->SLOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 202
    :try_start_3
    sget-object v1, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->sInstance:Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    if-nez v1, :cond_e

    .line 203
    new-instance v1, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;

    invoke-direct {v1, p0}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->sInstance:Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    .line 205
    :cond_e
    sget-object v1, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->sInstance:Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    monitor-exit v0

    return-object v1

    .line 206
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method private getLocationEnabledSetting(I)Z
    .registers 4
    .param p1, "userId"    # I

    .line 320
    iget-object v0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mLocationManager:Landroid/location/LocationManager;

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isLocationEnabledForUser(Landroid/os/UserHandle;)Z

    move-result v0

    return v0
.end method

.method private declared-synchronized getPrimaryLocationTimeZoneProviderModeFromConfig()Ljava/lang/String;
    .registers 4

    monitor-enter p0

    .line 511
    const v0, 0x111013d

    .line 513
    .local v0, "providerEnabledConfigId":I
    :try_start_4
    invoke-direct {p0, v0}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->getConfigBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_10

    sget-boolean v1, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->IS_NOT_SUPPORT_MODEM:Z

    if-nez v1, :cond_10

    const/4 v1, 0x1

    goto :goto_11

    .end local p0    # "this":Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;
    :cond_10
    const/4 v1, 0x0

    .line 514
    .local v1, "isPrimaryLocationTimeZone":Z
    :goto_11
    if-eqz v1, :cond_16

    .line 515
    const-string v2, "enabled"

    goto :goto_18

    :cond_16
    const-string v2, "disabled"
    :try_end_18
    .catchall {:try_start_4 .. :try_end_18} :catchall_1a

    .line 514
    :goto_18
    monitor-exit p0

    return-object v2

    .line 510
    .end local v0    # "providerEnabledConfigId":I
    .end local v1    # "isPrimaryLocationTimeZone":Z
    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized getSecondaryLocationTimeZoneProviderModeFromConfig()Ljava/lang/String;
    .registers 3

    monitor-enter p0

    .line 530
    const v0, 0x1110141

    .line 531
    .local v0, "providerEnabledConfigId":I
    :try_start_4
    invoke-direct {p0, v0}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->getConfigBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 532
    const-string v1, "enabled"

    goto :goto_f

    .end local p0    # "this":Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;
    :cond_d
    const-string v1, "disabled"
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_11

    .line 531
    :goto_f
    monitor-exit p0

    return-object v1

    .line 529
    .end local v0    # "providerEnabledConfigId":I
    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized handleConfigurationInternalChangeOnMainThread()V
    .registers 3

    monitor-enter p0

    .line 210
    :try_start_1
    iget-object v0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mConfigurationInternalListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/timezonedetector/ConfigurationChangeListener;

    .line 211
    .local v1, "changeListener":Lcom/android/server/timezonedetector/ConfigurationChangeListener;
    invoke-interface {v1}, Lcom/android/server/timezonedetector/ConfigurationChangeListener;->onChange()V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_19

    .line 212
    .end local v1    # "changeListener":Lcom/android/server/timezonedetector/ConfigurationChangeListener;
    goto :goto_7

    .line 213
    .end local p0    # "this":Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;
    :cond_17
    monitor-exit p0

    return-void

    .line 209
    :catchall_19
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private isAutoDetectionFeatureSupported()Z
    .registers 2

    .line 363
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->isTelephonyTimeZoneDetectionFeatureSupported()Z

    move-result v0

    if-nez v0, :cond_f

    .line 364
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->isGeoTimeZoneDetectionFeatureSupported()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    .line 363
    :goto_10
    return v0
.end method

.method private isEnhancedMetricsCollectionEnabled()Z
    .registers 5

    .line 424
    const/4 v0, 0x0

    .line 425
    .local v0, "defaultEnabled":Z
    iget-object v1, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mServerFlags:Lcom/android/server/timedetector/ServerFlags;

    const-string v2, "enhanced_metrics_collection_enabled"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/server/timedetector/ServerFlags;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method private isGeoTimeZoneDetectionFeatureSupportedInternal()Z
    .registers 5

    .line 401
    const/4 v0, 0x1

    .line 402
    .local v0, "defaultEnabled":Z
    iget-object v1, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mServerFlags:Lcom/android/server/timedetector/ServerFlags;

    const-string v2, "location_time_zone_detection_feature_supported"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/server/timedetector/ServerFlags;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method private isTelephonyFallbackSupported()Z
    .registers 4

    .line 594
    iget-object v0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mServerFlags:Lcom/android/server/timedetector/ServerFlags;

    .line 596
    const v1, 0x11101c6

    invoke-direct {p0, v1}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->getConfigBoolean(I)Z

    move-result v1

    .line 594
    const-string/jumbo v2, "time_zone_detector_telephony_fallback_supported"

    invoke-virtual {v0, v2, v1}, Lcom/android/server/timedetector/ServerFlags;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private isUserConfigAllowed(I)Z
    .registers 5
    .param p1, "userId"    # I

    .line 324
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    .line 325
    .local v0, "userHandle":Landroid/os/UserHandle;
    iget-object v1, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mUserManager:Landroid/os/UserManager;

    const-string/jumbo v2, "no_config_date_time"

    invoke-virtual {v1, v2, v0}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    return v1
.end method

.method private setAutoDetectionEnabledIfRequired(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .line 314
    invoke-direct {p0}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->getAutoDetectionEnabledSetting()Z

    move-result v0

    if-eq v0, p1, :cond_d

    .line 315
    iget-object v0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mCr:Landroid/content/ContentResolver;

    const-string v1, "auto_time_zone"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 317
    :cond_d
    return-void
.end method

.method private setGeoDetectionEnabledSettingIfRequired(IZ)V
    .registers 5
    .param p1, "userId"    # I
    .param p2, "enabled"    # Z

    .line 349
    invoke-direct {p0, p1}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->getGeoDetectionEnabledSetting(I)Z

    move-result v0

    if-eq v0, p2, :cond_e

    .line 350
    iget-object v0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mCr:Landroid/content/ContentResolver;

    .line 351
    nop

    .line 350
    const-string v1, "location_time_zone_detection_enabled"

    invoke-static {v0, v1, p2, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 353
    :cond_e
    return-void
.end method

.method private storeConfiguration(ILandroid/app/time/TimeZoneConfiguration;)V
    .registers 5
    .param p1, "userId"    # I
    .param p2, "configuration"    # Landroid/app/time/TimeZoneConfiguration;

    .line 267
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    invoke-direct {p0}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->isAutoDetectionFeatureSupported()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 274
    invoke-virtual {p2}, Landroid/app/time/TimeZoneConfiguration;->isAutoDetectionEnabled()Z

    move-result v0

    .line 275
    .local v0, "autoDetectionEnabled":Z
    invoke-direct {p0, v0}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->setAutoDetectionEnabledIfRequired(Z)V

    .line 284
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->getGeoDetectionSettingEnabledOverride()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-nez v1, :cond_27

    .line 285
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->isGeoTimeZoneDetectionFeatureSupported()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 286
    invoke-virtual {p2}, Landroid/app/time/TimeZoneConfiguration;->isGeoDetectionEnabled()Z

    move-result v1

    .line 287
    .local v1, "geoDetectionEnabledSetting":Z
    invoke-direct {p0, p1, v1}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->setGeoDetectionEnabledSettingIfRequired(IZ)V

    .line 290
    .end local v0    # "autoDetectionEnabled":Z
    .end local v1    # "geoDetectionEnabledSetting":Z
    :cond_27
    return-void
.end method


# virtual methods
.method public declared-synchronized addConfigurationInternalChangeListener(Lcom/android/server/timezonedetector/ConfigurationChangeListener;)V
    .registers 4
    .param p1, "listener"    # Lcom/android/server/timezonedetector/ConfigurationChangeListener;

    monitor-enter p0

    .line 218
    :try_start_1
    iget-object v0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mConfigurationInternalListeners:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/timezonedetector/ConfigurationChangeListener;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    .line 219
    monitor-exit p0

    return-void

    .line 217
    .end local p0    # "this":Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;
    .end local p1    # "listener":Lcom/android/server/timezonedetector/ConfigurationChangeListener;
    :catchall_e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public addLocationTimeZoneManagerConfigListener(Lcom/android/server/timezonedetector/ConfigurationChangeListener;)V
    .registers 4
    .param p1, "listener"    # Lcom/android/server/timezonedetector/ConfigurationChangeListener;

    .line 358
    iget-object v0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mServerFlags:Lcom/android/server/timedetector/ServerFlags;

    sget-object v1, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->LOCATION_TIME_ZONE_MANAGER_SERVER_FLAGS_KEYS_TO_WATCH:Ljava/util/Set;

    invoke-virtual {v0, p1, v1}, Lcom/android/server/timedetector/ServerFlags;->addListener(Lcom/android/server/timezonedetector/ConfigurationChangeListener;Ljava/util/Set;)V

    .line 359
    return-void
.end method

.method public declared-synchronized getConfigurationInternal(I)Lcom/android/server/timezonedetector/ConfigurationInternal;
    .registers 4
    .param p1, "userId"    # I

    monitor-enter p0

    .line 295
    :try_start_1
    new-instance v0, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;

    invoke-direct {v0, p1}, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;-><init>(I)V

    .line 297
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->isTelephonyTimeZoneDetectionFeatureSupported()Z

    move-result v1

    .line 296
    invoke-virtual {v0, v1}, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->setTelephonyDetectionFeatureSupported(Z)Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;

    move-result-object v0

    .line 298
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->isGeoTimeZoneDetectionFeatureSupported()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->setGeoDetectionFeatureSupported(Z)Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;

    move-result-object v0

    .line 299
    invoke-direct {p0}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->isTelephonyFallbackSupported()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->setTelephonyFallbackSupported(Z)Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;

    move-result-object v0

    .line 300
    invoke-direct {p0}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->getGeoDetectionRunInBackgroundEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->setGeoDetectionRunInBackgroundEnabled(Z)Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;

    move-result-object v0

    .line 301
    invoke-direct {p0}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->isEnhancedMetricsCollectionEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->setEnhancedMetricsCollectionEnabled(Z)Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;

    move-result-object v0

    .line 302
    invoke-direct {p0}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->getAutoDetectionEnabledSetting()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->setAutoDetectionEnabledSetting(Z)Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;

    move-result-object v0

    .line 303
    invoke-direct {p0, p1}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->isUserConfigAllowed(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->setUserConfigAllowed(Z)Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;

    move-result-object v0

    .line 304
    invoke-direct {p0, p1}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->getLocationEnabledSetting(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->setLocationEnabledSetting(Z)Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;

    move-result-object v0

    .line 305
    invoke-direct {p0, p1}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->getGeoDetectionEnabledSetting(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->setGeoDetectionEnabledSetting(Z)Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;

    move-result-object v0

    .line 306
    invoke-virtual {v0}, Lcom/android/server/timezonedetector/ConfigurationInternal$Builder;->build()Lcom/android/server/timezonedetector/ConfigurationInternal;

    move-result-object v0
    :try_end_52
    .catchall {:try_start_1 .. :try_end_52} :catchall_54

    .line 295
    monitor-exit p0

    return-object v0

    .line 294
    .end local p0    # "this":Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;
    .end local p1    # "userId":I
    :catchall_54
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getCurrentUserConfigurationInternal()Lcom/android/server/timezonedetector/ConfigurationInternal;
    .registers 3

    monitor-enter p0

    .line 230
    :try_start_1
    const-class v0, Landroid/app/ActivityManagerInternal;

    .line 231
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->getCurrentUserId()I

    move-result v0

    .line 232
    .local v0, "currentUserId":I
    invoke-virtual {p0, v0}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->getConfigurationInternal(I)Lcom/android/server/timezonedetector/ConfigurationInternal;

    move-result-object v1
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    monitor-exit p0

    return-object v1

    .line 229
    .end local v0    # "currentUserId":I
    .end local p0    # "this":Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;
    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getGeoDetectionSettingEnabledOverride()Ljava/util/Optional;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 544
    iget-object v0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mServerFlags:Lcom/android/server/timedetector/ServerFlags;

    const-string v1, "location_time_zone_detection_setting_enabled_override"

    invoke-virtual {v0, v1}, Lcom/android/server/timedetector/ServerFlags;->getOptionalBoolean(Ljava/lang/String;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public getLocationTimeZoneProviderEventFilteringAgeThreshold()Ljava/time/Duration;
    .registers 4

    .line 575
    iget-object v0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mServerFlags:Lcom/android/server/timedetector/ServerFlags;

    sget-object v1, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->DEFAULT_LTZP_EVENT_FILTER_AGE_THRESHOLD:Ljava/time/Duration;

    const-string v2, "ltzp_event_filtering_age_threshold_millis"

    invoke-virtual {v0, v2, v1}, Lcom/android/server/timedetector/ServerFlags;->getDurationFromMillis(Ljava/lang/String;Ljava/time/Duration;)Ljava/time/Duration;

    move-result-object v0

    return-object v0
.end method

.method public getLocationTimeZoneProviderInitializationTimeout()Ljava/time/Duration;
    .registers 4

    .line 551
    iget-object v0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mServerFlags:Lcom/android/server/timedetector/ServerFlags;

    sget-object v1, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->DEFAULT_LTZP_INITIALIZATION_TIMEOUT:Ljava/time/Duration;

    const-string v2, "ltzp_init_timeout_millis"

    invoke-virtual {v0, v2, v1}, Lcom/android/server/timedetector/ServerFlags;->getDurationFromMillis(Ljava/lang/String;Ljava/time/Duration;)Ljava/time/Duration;

    move-result-object v0

    return-object v0
.end method

.method public getLocationTimeZoneProviderInitializationTimeoutFuzz()Ljava/time/Duration;
    .registers 4

    .line 559
    iget-object v0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mServerFlags:Lcom/android/server/timedetector/ServerFlags;

    sget-object v1, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->DEFAULT_LTZP_INITIALIZATION_TIMEOUT_FUZZ:Ljava/time/Duration;

    const-string v2, "ltzp_init_timeout_fuzz_millis"

    invoke-virtual {v0, v2, v1}, Lcom/android/server/timedetector/ServerFlags;->getDurationFromMillis(Ljava/lang/String;Ljava/time/Duration;)Ljava/time/Duration;

    move-result-object v0

    return-object v0
.end method

.method public getLocationTimeZoneUncertaintyDelay()Ljava/time/Duration;
    .registers 4

    .line 567
    iget-object v0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mServerFlags:Lcom/android/server/timedetector/ServerFlags;

    sget-object v1, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->DEFAULT_LTZP_UNCERTAINTY_DELAY:Ljava/time/Duration;

    const-string v2, "location_time_zone_detection_uncertainty_delay_millis"

    invoke-virtual {v0, v2, v1}, Lcom/android/server/timedetector/ServerFlags;->getDurationFromMillis(Ljava/lang/String;Ljava/time/Duration;)Ljava/time/Duration;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getPrimaryLocationTimeZoneProviderMode()Ljava/lang/String;
    .registers 3

    monitor-enter p0

    .line 501
    :try_start_1
    iget-object v0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mTestPrimaryLocationTimeZoneProviderMode:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_1c

    if-eqz v0, :cond_7

    .line 503
    monitor-exit p0

    return-object v0

    .line 505
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mServerFlags:Lcom/android/server/timedetector/ServerFlags;

    const-string/jumbo v1, "primary_location_time_zone_provider_mode_override"

    invoke-virtual {v0, v1}, Lcom/android/server/timedetector/ServerFlags;->getOptionalString(Ljava/lang/String;)Ljava/util/Optional;

    move-result-object v0

    .line 506
    invoke-direct {p0}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->getPrimaryLocationTimeZoneProviderModeFromConfig()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_1c

    .line 505
    monitor-exit p0

    return-object v0

    .line 500
    .end local p0    # "this":Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;
    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPrimaryLocationTimeZoneProviderPackageName()Ljava/lang/String;
    .registers 3

    monitor-enter p0

    .line 433
    :try_start_1
    iget-object v0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mTestPrimaryLocationTimeZoneProviderMode:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 435
    iget-object v0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mTestPrimaryLocationTimeZoneProviderPackageName:Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_18

    monitor-exit p0

    return-object v0

    .line 437
    .end local p0    # "this":Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;
    :cond_9
    :try_start_9
    iget-object v0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10402ac

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_16
    .catchall {:try_start_9 .. :try_end_16} :catchall_18

    monitor-exit p0

    return-object v0

    .line 432
    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getRecordStateChangesForTests()Z
    .registers 2

    monitor-enter p0

    .line 495
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mRecordStateChangesForTests:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    .line 495
    .end local p0    # "this":Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSecondaryLocationTimeZoneProviderMode()Ljava/lang/String;
    .registers 3

    monitor-enter p0

    .line 520
    :try_start_1
    iget-object v0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mTestSecondaryLocationTimeZoneProviderMode:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_1c

    if-eqz v0, :cond_7

    .line 522
    monitor-exit p0

    return-object v0

    .line 524
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mServerFlags:Lcom/android/server/timedetector/ServerFlags;

    const-string/jumbo v1, "secondary_location_time_zone_provider_mode_override"

    invoke-virtual {v0, v1}, Lcom/android/server/timedetector/ServerFlags;->getOptionalString(Ljava/lang/String;)Ljava/util/Optional;

    move-result-object v0

    .line 525
    invoke-direct {p0}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->getSecondaryLocationTimeZoneProviderModeFromConfig()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_1c

    .line 524
    monitor-exit p0

    return-object v0

    .line 519
    .end local p0    # "this":Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;
    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSecondaryLocationTimeZoneProviderPackageName()Ljava/lang/String;
    .registers 3

    monitor-enter p0

    .line 462
    :try_start_1
    iget-object v0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mTestSecondaryLocationTimeZoneProviderMode:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 464
    iget-object v0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mTestSecondaryLocationTimeZoneProviderPackageName:Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_18

    monitor-exit p0

    return-object v0

    .line 466
    .end local p0    # "this":Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;
    :cond_9
    :try_start_9
    iget-object v0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10402bc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_16
    .catchall {:try_start_9 .. :try_end_16} :catchall_18

    monitor-exit p0

    return-object v0

    .line 461
    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isGeoDetectionEnabledForUsersByDefault()Z
    .registers 4

    .line 537
    iget-object v0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mServerFlags:Lcom/android/server/timedetector/ServerFlags;

    const-string v1, "location_time_zone_detection_setting_enabled_default"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/timedetector/ServerFlags;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isGeoTimeZoneDetectionFeatureSupported()Z
    .registers 2

    .line 385
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->isGeoTimeZoneDetectionFeatureSupportedInConfig()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 386
    invoke-direct {p0}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->isGeoTimeZoneDetectionFeatureSupportedInternal()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 387
    invoke-direct {p0}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->atLeastOneProviderIsEnabled()Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    .line 385
    :goto_15
    return v0
.end method

.method public isGeoTimeZoneDetectionFeatureSupportedInConfig()Z
    .registers 3

    .line 375
    iget-object v0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110133

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public isTelephonyTimeZoneDetectionFeatureSupported()Z
    .registers 3

    .line 369
    iget-object v0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.telephony"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    sget-boolean v0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->IS_TABLET_SUPPORT_MODEM:Z

    if-eqz v0, :cond_13

    goto :goto_15

    :cond_13
    const/4 v0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 v0, 0x1

    :goto_16
    return v0
.end method

.method public declared-synchronized isTestPrimaryLocationTimeZoneProvider()Z
    .registers 2

    monitor-enter p0

    .line 456
    :try_start_1
    iget-object v0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mTestPrimaryLocationTimeZoneProviderMode:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_a

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    monitor-exit p0

    return v0

    .line 456
    .end local p0    # "this":Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;
    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isTestSecondaryLocationTimeZoneProvider()Z
    .registers 2

    monitor-enter p0

    .line 485
    :try_start_1
    iget-object v0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mTestSecondaryLocationTimeZoneProviderMode:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_a

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    monitor-exit p0

    return v0

    .line 485
    .end local p0    # "this":Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;
    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeConfigurationInternalChangeListener(Lcom/android/server/timezonedetector/ConfigurationChangeListener;)V
    .registers 4
    .param p1, "listener"    # Lcom/android/server/timezonedetector/ConfigurationChangeListener;

    monitor-enter p0

    .line 224
    :try_start_1
    iget-object v0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mConfigurationInternalListeners:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 225
    monitor-exit p0

    return-void

    .line 223
    .end local p0    # "this":Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;
    .end local p1    # "listener":Lcom/android/server/timezonedetector/ConfigurationChangeListener;
    :catchall_c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized resetVolatileTestConfig()V
    .registers 3

    monitor-enter p0

    .line 582
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mTestPrimaryLocationTimeZoneProviderPackageName:Ljava/lang/String;

    .line 583
    iput-object v0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mTestPrimaryLocationTimeZoneProviderMode:Ljava/lang/String;

    .line 584
    iput-object v0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mTestSecondaryLocationTimeZoneProviderPackageName:Ljava/lang/String;

    .line 585
    iput-object v0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mTestSecondaryLocationTimeZoneProviderMode:Ljava/lang/String;

    .line 586
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mRecordStateChangesForTests:Z

    .line 590
    iget-object v0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1b
    .catchall {:try_start_2 .. :try_end_1b} :catchall_1d

    .line 591
    monitor-exit p0

    return-void

    .line 581
    .end local p0    # "this":Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;
    :catchall_1d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setRecordStateChangesForTests(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    monitor-enter p0

    .line 490
    :try_start_1
    iput-boolean p1, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mRecordStateChangesForTests:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 491
    monitor-exit p0

    return-void

    .line 489
    .end local p0    # "this":Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;
    .end local p1    # "enabled":Z
    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setTestPrimaryLocationTimeZoneProviderPackageName(Ljava/lang/String;)V
    .registers 4
    .param p1, "testPrimaryLocationTimeZoneProviderPackageName"    # Ljava/lang/String;

    monitor-enter p0

    .line 444
    :try_start_1
    iput-object p1, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mTestPrimaryLocationTimeZoneProviderPackageName:Ljava/lang/String;

    .line 446
    nop

    .line 447
    if-nez p1, :cond_9

    .line 448
    const-string v0, "disabled"

    goto :goto_b

    .end local p0    # "this":Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;
    :cond_9
    const-string v0, "enabled"

    :goto_b
    iput-object v0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mTestPrimaryLocationTimeZoneProviderMode:Ljava/lang/String;

    .line 451
    iget-object v0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_1d

    .line 452
    monitor-exit p0

    return-void

    .line 443
    .end local p1    # "testPrimaryLocationTimeZoneProviderPackageName":Ljava/lang/String;
    :catchall_1d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setTestSecondaryLocationTimeZoneProviderPackageName(Ljava/lang/String;)V
    .registers 4
    .param p1, "testSecondaryLocationTimeZoneProviderPackageName"    # Ljava/lang/String;

    monitor-enter p0

    .line 473
    :try_start_1
    iput-object p1, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mTestSecondaryLocationTimeZoneProviderPackageName:Ljava/lang/String;

    .line 475
    nop

    .line 476
    if-nez p1, :cond_9

    .line 477
    const-string v0, "disabled"

    goto :goto_b

    .end local p0    # "this":Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;
    :cond_9
    const-string v0, "enabled"

    :goto_b
    iput-object v0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mTestSecondaryLocationTimeZoneProviderMode:Ljava/lang/String;

    .line 480
    iget-object v0, p0, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_1d

    .line 481
    monitor-exit p0

    return-void

    .line 472
    .end local p1    # "testSecondaryLocationTimeZoneProviderPackageName":Ljava/lang/String;
    :catchall_1d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized updateConfiguration(ILandroid/app/time/TimeZoneConfiguration;)Z
    .registers 8
    .param p1, "userId"    # I
    .param p2, "requestedConfiguration"    # Landroid/app/time/TimeZoneConfiguration;

    monitor-enter p0

    .line 238
    :try_start_1
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    nop

    .line 241
    invoke-virtual {p0, p1}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->getConfigurationInternal(I)Lcom/android/server/timezonedetector/ConfigurationInternal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/ConfigurationInternal;->createCapabilitiesAndConfig()Landroid/app/time/TimeZoneCapabilitiesAndConfig;

    move-result-object v0

    .line 242
    .local v0, "capabilitiesAndConfig":Landroid/app/time/TimeZoneCapabilitiesAndConfig;
    invoke-virtual {v0}, Landroid/app/time/TimeZoneCapabilitiesAndConfig;->getCapabilities()Landroid/app/time/TimeZoneCapabilities;

    move-result-object v1

    .line 243
    .local v1, "capabilities":Landroid/app/time/TimeZoneCapabilities;
    invoke-virtual {v0}, Landroid/app/time/TimeZoneCapabilitiesAndConfig;->getConfiguration()Landroid/app/time/TimeZoneConfiguration;

    move-result-object v2

    .line 245
    .local v2, "oldConfiguration":Landroid/app/time/TimeZoneConfiguration;
    nop

    .line 246
    invoke-virtual {v1, v2, p2}, Landroid/app/time/TimeZoneCapabilities;->tryApplyConfigChanges(Landroid/app/time/TimeZoneConfiguration;Landroid/app/time/TimeZoneConfiguration;)Landroid/app/time/TimeZoneConfiguration;

    move-result-object v3
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_25

    .line 247
    .local v3, "newConfiguration":Landroid/app/time/TimeZoneConfiguration;
    if-nez v3, :cond_1f

    .line 249
    const/4 v4, 0x0

    monitor-exit p0

    return v4

    .line 254
    :cond_1f
    :try_start_1f
    invoke-direct {p0, p1, v3}, Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;->storeConfiguration(ILandroid/app/time/TimeZoneConfiguration;)V
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_25

    .line 256
    const/4 v4, 0x1

    monitor-exit p0

    return v4

    .line 237
    .end local v0    # "capabilitiesAndConfig":Landroid/app/time/TimeZoneCapabilitiesAndConfig;
    .end local v1    # "capabilities":Landroid/app/time/TimeZoneCapabilities;
    .end local v2    # "oldConfiguration":Landroid/app/time/TimeZoneConfiguration;
    .end local v3    # "newConfiguration":Landroid/app/time/TimeZoneConfiguration;
    .end local p0    # "this":Lcom/android/server/timezonedetector/ServiceConfigAccessorImpl;
    .end local p1    # "userId":I
    .end local p2    # "requestedConfiguration":Landroid/app/time/TimeZoneConfiguration;
    :catchall_25
    move-exception p1

    monitor-exit p0

    throw p1
.end method
