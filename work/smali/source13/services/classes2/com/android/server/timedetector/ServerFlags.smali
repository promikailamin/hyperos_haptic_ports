.class public final Lcom/android/server/timedetector/ServerFlags;
.super Ljava/lang/Object;
.source "ServerFlags.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/timedetector/ServerFlags$DeviceConfigKey;
    }
.end annotation


# static fields
.field public static final KEY_ENHANCED_METRICS_COLLECTION_ENABLED:Ljava/lang/String; = "enhanced_metrics_collection_enabled"

.field public static final KEY_LOCATION_TIME_ZONE_DETECTION_FEATURE_SUPPORTED:Ljava/lang/String; = "location_time_zone_detection_feature_supported"

.field public static final KEY_LOCATION_TIME_ZONE_DETECTION_RUN_IN_BACKGROUND_ENABLED:Ljava/lang/String; = "location_time_zone_detection_run_in_background_enabled"

.field public static final KEY_LOCATION_TIME_ZONE_DETECTION_SETTING_ENABLED_DEFAULT:Ljava/lang/String; = "location_time_zone_detection_setting_enabled_default"

.field public static final KEY_LOCATION_TIME_ZONE_DETECTION_SETTING_ENABLED_OVERRIDE:Ljava/lang/String; = "location_time_zone_detection_setting_enabled_override"

.field public static final KEY_LOCATION_TIME_ZONE_DETECTION_UNCERTAINTY_DELAY_MILLIS:Ljava/lang/String; = "location_time_zone_detection_uncertainty_delay_millis"

.field public static final KEY_LTZP_EVENT_FILTERING_AGE_THRESHOLD_MILLIS:Ljava/lang/String; = "ltzp_event_filtering_age_threshold_millis"

.field public static final KEY_LTZP_INITIALIZATION_TIMEOUT_FUZZ_MILLIS:Ljava/lang/String; = "ltzp_init_timeout_fuzz_millis"

.field public static final KEY_LTZP_INITIALIZATION_TIMEOUT_MILLIS:Ljava/lang/String; = "ltzp_init_timeout_millis"

.field public static final KEY_PRIMARY_LTZP_MODE_OVERRIDE:Ljava/lang/String; = "primary_location_time_zone_provider_mode_override"

.field public static final KEY_SECONDARY_LTZP_MODE_OVERRIDE:Ljava/lang/String; = "secondary_location_time_zone_provider_mode_override"

.field public static final KEY_TIME_DETECTOR_LOWER_BOUND_MILLIS_OVERRIDE:Ljava/lang/String; = "time_detector_lower_bound_millis_override"

.field public static final KEY_TIME_DETECTOR_ORIGIN_PRIORITIES_OVERRIDE:Ljava/lang/String; = "time_detector_origin_priorities_override"

.field public static final KEY_TIME_ZONE_DETECTOR_TELEPHONY_FALLBACK_SUPPORTED:Ljava/lang/String; = "time_zone_detector_telephony_fallback_supported"

.field private static final OPTIONAL_FALSE:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final OPTIONAL_TRUE:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final SLOCK:Ljava/lang/Object;

.field private static sInstance:Lcom/android/server/timedetector/ServerFlags;


# instance fields
.field private final mListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/android/server/timezonedetector/ConfigurationChangeListener;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$6XJt9MGapm8VhYC1XARTcmuAVLY(Lcom/android/server/timedetector/ServerFlags;Landroid/provider/DeviceConfig$Properties;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/timedetector/ServerFlags;->handlePropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 50
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    sput-object v0, Lcom/android/server/timedetector/ServerFlags;->OPTIONAL_TRUE:Ljava/util/Optional;

    .line 51
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    sput-object v0, Lcom/android/server/timedetector/ServerFlags;->OPTIONAL_FALSE:Ljava/util/Optional;

    .line 191
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/timedetector/ServerFlags;->SLOCK:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/timedetector/ServerFlags;->mListeners:Landroid/util/ArrayMap;

    .line 198
    nop

    .line 200
    invoke-virtual {p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/android/server/timedetector/ServerFlags$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/timedetector/ServerFlags$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/timedetector/ServerFlags;)V

    .line 198
    const-string/jumbo v2, "system_time"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 202
    return-void
.end method

.method private static containsAny(Ljava/util/Set;Ljava/lang/Iterable;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 237
    .local p0, "haystack":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p1, "needles":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 238
    .local v1, "needle":Ljava/lang/String;
    invoke-interface {p0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 239
    const/4 v0, 0x1

    return v0

    .line 241
    .end local v1    # "needle":Ljava/lang/String;
    :cond_18
    goto :goto_4

    .line 242
    :cond_19
    const/4 v0, 0x0

    return v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/timedetector/ServerFlags;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 206
    sget-object v0, Lcom/android/server/timedetector/ServerFlags;->SLOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 207
    :try_start_3
    sget-object v1, Lcom/android/server/timedetector/ServerFlags;->sInstance:Lcom/android/server/timedetector/ServerFlags;

    if-nez v1, :cond_e

    .line 208
    new-instance v1, Lcom/android/server/timedetector/ServerFlags;

    invoke-direct {v1, p0}, Lcom/android/server/timedetector/ServerFlags;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/server/timedetector/ServerFlags;->sInstance:Lcom/android/server/timedetector/ServerFlags;

    .line 210
    :cond_e
    sget-object v1, Lcom/android/server/timedetector/ServerFlags;->sInstance:Lcom/android/server/timedetector/ServerFlags;

    monitor-exit v0

    return-object v1

    .line 211
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method private handlePropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .registers 8
    .param p1, "properties"    # Landroid/provider/DeviceConfig$Properties;

    .line 215
    iget-object v0, p0, Lcom/android/server/timedetector/ServerFlags;->mListeners:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 217
    :try_start_3
    iget-object v1, p0, Lcom/android/server/timedetector/ServerFlags;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 226
    .local v2, "listenerEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/timezonedetector/ConfigurationChangeListener;Ljava/util/HashSet<Ljava/lang/String;>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashSet;

    .line 227
    .local v3, "monitoredKeys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object v4

    .line 228
    .local v4, "modifiedKeys":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-static {v3, v4}, Lcom/android/server/timedetector/ServerFlags;->containsAny(Ljava/util/Set;Ljava/lang/Iterable;)Z

    move-result v5

    if-eqz v5, :cond_32

    .line 229
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/timezonedetector/ConfigurationChangeListener;

    invoke-interface {v5}, Lcom/android/server/timezonedetector/ConfigurationChangeListener;->onChange()V

    .line 231
    .end local v2    # "listenerEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/timezonedetector/ConfigurationChangeListener;Ljava/util/HashSet<Ljava/lang/String;>;>;"
    .end local v3    # "monitoredKeys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v4    # "modifiedKeys":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    :cond_32
    goto :goto_d

    .line 232
    :cond_33
    monitor-exit v0

    .line 233
    return-void

    .line 232
    :catchall_35
    move-exception v1

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_3 .. :try_end_37} :catchall_35

    throw v1
.end method

.method private static parseOptionalBoolean(Ljava/lang/String;)Ljava/util/Optional;
    .registers 2
    .param p0, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Optional<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 319
    if-nez p0, :cond_7

    .line 320
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    return-object v0

    .line 322
    :cond_7
    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    sget-object v0, Lcom/android/server/timedetector/ServerFlags;->OPTIONAL_TRUE:Ljava/util/Optional;

    goto :goto_12

    :cond_10
    sget-object v0, Lcom/android/server/timedetector/ServerFlags;->OPTIONAL_FALSE:Ljava/util/Optional;

    :goto_12
    return-object v0
.end method


# virtual methods
.method public addListener(Lcom/android/server/timezonedetector/ConfigurationChangeListener;Ljava/util/Set;)V
    .registers 6
    .param p1, "listener"    # Lcom/android/server/timezonedetector/ConfigurationChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/timezonedetector/ConfigurationChangeListener;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 254
    .local p2, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 260
    .local v0, "keysCopy":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/timedetector/ServerFlags;->mListeners:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 261
    :try_start_e
    iget-object v2, p0, Lcom/android/server/timedetector/ServerFlags;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    monitor-exit v1

    .line 263
    return-void

    .line 262
    :catchall_15
    move-exception v2

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_e .. :try_end_17} :catchall_15

    throw v2
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .line 331
    const-string/jumbo v0, "system_time"

    invoke-static {v0, p1, p2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getDurationFromMillis(Ljava/lang/String;Ljava/time/Duration;)Ljava/time/Duration;
    .registers 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/time/Duration;

    .line 341
    const-string/jumbo v0, "system_time"

    const-wide/16 v1, -0x1

    invoke-static {v0, p1, v1, v2}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    .line 342
    .local v0, "deviceConfigValue":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_10

    .line 343
    return-object p2

    .line 345
    :cond_10
    invoke-static {v0, v1}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v2

    return-object v2
.end method

.method public getOptionalBoolean(Ljava/lang/String;)Ljava/util/Optional;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Optional<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 313
    const-string/jumbo v0, "system_time"

    invoke-static {v0, p1}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 314
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/timedetector/ServerFlags;->parseOptionalBoolean(Ljava/lang/String;)Ljava/util/Optional;

    move-result-object v1

    return-object v1
.end method

.method public getOptionalInstant(Ljava/lang/String;)Ljava/util/Optional;
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Optional<",
            "Ljava/time/Instant;",
            ">;"
        }
    .end annotation

    .line 294
    const-string/jumbo v0, "system_time"

    invoke-static {v0, p1}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 295
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_e

    .line 296
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v1

    return-object v1

    .line 300
    :cond_e
    :try_start_e
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 301
    .local v1, "millis":J
    invoke-static {v1, v2}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v3
    :try_end_1a
    .catch Ljava/time/DateTimeException; {:try_start_e .. :try_end_1a} :catch_1b
    .catch Ljava/lang/NumberFormatException; {:try_start_e .. :try_end_1a} :catch_1b

    return-object v3

    .line 302
    .end local v1    # "millis":J
    :catch_1b
    move-exception v1

    .line 303
    .local v1, "e":Ljava/lang/RuntimeException;
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v2

    return-object v2
.end method

.method public getOptionalString(Ljava/lang/String;)Ljava/util/Optional;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 271
    const-string/jumbo v0, "system_time"

    invoke-static {v0, p1}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 272
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    return-object v1
.end method

.method public getOptionalStringArray(Ljava/lang/String;)Ljava/util/Optional;
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Optional<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 281
    invoke-virtual {p0, p1}, Lcom/android/server/timedetector/ServerFlags;->getOptionalString(Ljava/lang/String;)Ljava/util/Optional;

    move-result-object v0

    .line 282
    .local v0, "string":Ljava/util/Optional;, "Ljava/util/Optional<Ljava/lang/String;>;"
    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-nez v1, :cond_f

    .line 283
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v1

    return-object v1

    .line 285
    :cond_f
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    return-object v1
.end method
