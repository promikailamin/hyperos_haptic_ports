.class public final Lcom/android/server/timedetector/ServiceConfigAccessorImpl;
.super Ljava/lang/Object;
.source "ServiceConfigAccessorImpl.java"

# interfaces
.implements Lcom/android/server/timedetector/ServiceConfigAccessor;


# static fields
.field public static final DEFAULT_AUTOMATIC_TIME_ORIGIN_PRIORITIES:[I

.field public static final SERVER_FLAGS_KEYS_TO_WATCH:Ljava/util/Set;

.field public static final SLOCK:Ljava/lang/Object;

.field public static sInstance:Lcom/android/server/timedetector/ServiceConfigAccessor;


# instance fields
.field public final mConfigOriginPrioritiesSupplier:Lcom/android/server/timedetector/ServiceConfigAccessorImpl$ConfigOriginPrioritiesSupplier;

.field public final mConfigurationInternalListeners:Ljava/util/List;

.field public final mContext:Landroid/content/Context;

.field public final mCr:Landroid/content/ContentResolver;

.field public final mServerFlags:Lcom/android/server/timedetector/ServerFlags;

.field public final mServerFlagsOriginPrioritiesSupplier:Lcom/android/server/timedetector/ServiceConfigAccessorImpl$ServerFlagsOriginPrioritiesSupplier;

.field public final mSystemClockUpdateThresholdMillis:I

.field public final mUserManager:Landroid/os/UserManager;


# direct methods
.method public static synthetic $r8$lambda$nptVIKX1svyx1Casf3_He0845j0(Lcom/android/server/timedetector/ServiceConfigAccessorImpl;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/timedetector/ServiceConfigAccessorImpl;->handleConfigurationInternalChangeOnMainThread()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleConfigurationInternalChangeOnMainThread(Lcom/android/server/timedetector/ServiceConfigAccessorImpl;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/timedetector/ServiceConfigAccessorImpl;->handleConfigurationInternalChangeOnMainThread()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleUserRestrictionsChangeOnMainThread(Lcom/android/server/timedetector/ServiceConfigAccessorImpl;ILandroid/os/Bundle;Landroid/os/Bundle;)V
    .registers 4

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/timedetector/ServiceConfigAccessorImpl;->handleUserRestrictionsChangeOnMainThread(ILandroid/os/Bundle;Landroid/os/Bundle;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x1

    const/4 v1, 0x3

    .line 84
    filled-new-array {v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/android/server/timedetector/ServiceConfigAccessorImpl;->DEFAULT_AUTOMATIC_TIME_ORIGIN_PRIORITIES:[I

    .line 87
    const-string/jumbo v0, "time_detector_lower_bound_millis_override"

    const-string/jumbo v1, "time_detector_origin_priorities_override"

    invoke-static {v0, v1}, Ljava/util/Set;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/android/server/timedetector/ServiceConfigAccessorImpl;->SERVER_FLAGS_KEYS_TO_WATCH:Ljava/util/Set;

    .line 92
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/timedetector/ServiceConfigAccessorImpl;->SLOCK:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 8

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/timedetector/ServiceConfigAccessorImpl;->mConfigurationInternalListeners:Ljava/util/List;

    .line 118
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    iput-object p1, p0, Lcom/android/server/timedetector/ServiceConfigAccessorImpl;->mContext:Landroid/content/Context;

    .line 119
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/timedetector/ServiceConfigAccessorImpl;->mCr:Landroid/content/ContentResolver;

    .line 120
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/timedetector/ServiceConfigAccessorImpl;->mUserManager:Landroid/os/UserManager;

    .line 121
    invoke-static {p1}, Lcom/android/server/timedetector/ServerFlags;->getInstance(Landroid/content/Context;)Lcom/android/server/timedetector/ServerFlags;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/timedetector/ServiceConfigAccessorImpl;->mServerFlags:Lcom/android/server/timedetector/ServerFlags;

    .line 122
    new-instance v2, Lcom/android/server/timedetector/ServiceConfigAccessorImpl$ConfigOriginPrioritiesSupplier;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v3}, Lcom/android/server/timedetector/ServiceConfigAccessorImpl$ConfigOriginPrioritiesSupplier;-><init>(Landroid/content/Context;Lcom/android/server/timedetector/ServiceConfigAccessorImpl-IA;)V

    iput-object v2, p0, Lcom/android/server/timedetector/ServiceConfigAccessorImpl;->mConfigOriginPrioritiesSupplier:Lcom/android/server/timedetector/ServiceConfigAccessorImpl$ConfigOriginPrioritiesSupplier;

    .line 123
    new-instance v2, Lcom/android/server/timedetector/ServiceConfigAccessorImpl$ServerFlagsOriginPrioritiesSupplier;

    invoke-direct {v2, v1, v3}, Lcom/android/server/timedetector/ServiceConfigAccessorImpl$ServerFlagsOriginPrioritiesSupplier;-><init>(Lcom/android/server/timedetector/ServerFlags;Lcom/android/server/timedetector/ServiceConfigAccessorImpl-IA;)V

    iput-object v2, p0, Lcom/android/server/timedetector/ServiceConfigAccessorImpl;->mServerFlagsOriginPrioritiesSupplier:Lcom/android/server/timedetector/ServiceConfigAccessorImpl$ServerFlagsOriginPrioritiesSupplier;

    .line 125
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x10e016c

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/timedetector/ServiceConfigAccessorImpl;->mSystemClockUpdateThresholdMillis:I

    .line 133
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 134
    const-string v4, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 135
    new-instance v4, Lcom/android/server/timedetector/ServiceConfigAccessorImpl$1;

    invoke-direct {v4, p0}, Lcom/android/server/timedetector/ServiceConfigAccessorImpl$1;-><init>(Lcom/android/server/timedetector/ServiceConfigAccessorImpl;)V

    invoke-virtual {p1, v4, v2, v3, v3}, Landroid/content/Context;->registerReceiverForAllUsers(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 142
    invoke-virtual {p1}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v2

    .line 145
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 146
    new-instance v3, Lcom/android/server/timedetector/ServiceConfigAccessorImpl$2;

    invoke-direct {v3, p0, v2}, Lcom/android/server/timedetector/ServiceConfigAccessorImpl$2;-><init>(Lcom/android/server/timedetector/ServiceConfigAccessorImpl;Landroid/os/Handler;)V

    .line 152
    const-string v4, "auto_time"

    .line 153
    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x1

    .line 152
    invoke-virtual {p1, v4, v5, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 156
    new-instance p1, Lcom/android/server/timedetector/ServiceConfigAccessorImpl$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/server/timedetector/ServiceConfigAccessorImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/timedetector/ServiceConfigAccessorImpl;)V

    sget-object v3, Lcom/android/server/timedetector/ServiceConfigAccessorImpl;->SERVER_FLAGS_KEYS_TO_WATCH:Ljava/util/Set;

    invoke-virtual {v1, p1, v3}, Lcom/android/server/timedetector/ServerFlags;->addListener(Lcom/android/server/timezonedetector/StateChangeListener;Ljava/util/Set;)V

    .line 160
    new-instance p1, Lcom/android/server/timedetector/ServiceConfigAccessorImpl$3;

    invoke-direct {p1, p0, v2}, Lcom/android/server/timedetector/ServiceConfigAccessorImpl$3;-><init>(Lcom/android/server/timedetector/ServiceConfigAccessorImpl;Landroid/os/Handler;)V

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->addUserRestrictionsListener(Landroid/os/IUserRestrictionsListener;)V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/timedetector/ServiceConfigAccessor;
    .registers 3

    .line 176
    sget-object v0, Lcom/android/server/timedetector/ServiceConfigAccessorImpl;->SLOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 177
    :try_start_3
    sget-object v1, Lcom/android/server/timedetector/ServiceConfigAccessorImpl;->sInstance:Lcom/android/server/timedetector/ServiceConfigAccessor;

    if-nez v1, :cond_11

    .line 178
    new-instance v1, Lcom/android/server/timedetector/ServiceConfigAccessorImpl;

    invoke-direct {v1, p0}, Lcom/android/server/timedetector/ServiceConfigAccessorImpl;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/server/timedetector/ServiceConfigAccessorImpl;->sInstance:Lcom/android/server/timedetector/ServiceConfigAccessor;

    goto :goto_11

    :catchall_f
    move-exception p0

    goto :goto_15

    .line 180
    :cond_11
    :goto_11
    sget-object p0, Lcom/android/server/timedetector/ServiceConfigAccessorImpl;->sInstance:Lcom/android/server/timedetector/ServiceConfigAccessor;

    monitor-exit v0

    return-object p0

    .line 181
    :goto_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_f

    throw p0
.end method


# virtual methods
.method public declared-synchronized addConfigurationInternalChangeListener(Lcom/android/server/timezonedetector/StateChangeListener;)V
    .registers 3

    monitor-enter p0

    .line 206
    :try_start_1
    iget-object v0, p0, Lcom/android/server/timedetector/ServiceConfigAccessorImpl;->mConfigurationInternalListeners:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/android/server/timezonedetector/StateChangeListener;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 207
    monitor-exit p0

    return-void

    :catchall_d
    move-exception p1

    :try_start_e
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    throw p1
.end method

.method public final getAutoDetectionEnabledSetting()Z
    .registers 3

    .line 302
    iget-object p0, p0, Lcom/android/server/timedetector/ServiceConfigAccessorImpl;->mCr:Landroid/content/ContentResolver;

    const-string v0, "auto_time"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-lez p0, :cond_c

    return v1

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public final getAutoSuggestionLowerBound()Ljava/time/Instant;
    .registers 2

    .line 334
    iget-object p0, p0, Lcom/android/server/timedetector/ServiceConfigAccessorImpl;->mServerFlags:Lcom/android/server/timedetector/ServerFlags;

    const-string/jumbo v0, "time_detector_lower_bound_millis_override"

    invoke-virtual {p0, v0}, Lcom/android/server/timedetector/ServerFlags;->getOptionalInstant(Ljava/lang/String;)Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Landroid/app/timedetector/TimeDetectorHelper;->INSTANCE:Landroid/app/timedetector/TimeDetectorHelper;

    .line 335
    invoke-virtual {v0}, Landroid/app/timedetector/TimeDetectorHelper;->getAutoSuggestionLowerBoundDefault()Ljava/time/Instant;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/time/Instant;

    return-object p0
.end method

.method public declared-synchronized getConfigurationInternal(I)Lcom/android/server/timedetector/ConfigurationInternal;
    .registers 4

    monitor-enter p0

    .line 270
    :try_start_1
    sget-object v0, Landroid/app/timedetector/TimeDetectorHelper;->INSTANCE:Landroid/app/timedetector/TimeDetectorHelper;

    .line 271
    new-instance v1, Lcom/android/server/timedetector/ConfigurationInternal$Builder;

    invoke-direct {v1, p1}, Lcom/android/server/timedetector/ConfigurationInternal$Builder;-><init>(I)V

    .line 272
    invoke-virtual {p0, p1}, Lcom/android/server/timedetector/ServiceConfigAccessorImpl;->isUserConfigAllowed(I)Z

    move-result p1

    invoke-virtual {v1, p1}, Lcom/android/server/timedetector/ConfigurationInternal$Builder;->setUserConfigAllowed(Z)Lcom/android/server/timedetector/ConfigurationInternal$Builder;

    move-result-object p1

    .line 273
    invoke-virtual {p0}, Lcom/android/server/timedetector/ServiceConfigAccessorImpl;->isAutoDetectionSupported()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/server/timedetector/ConfigurationInternal$Builder;->setAutoDetectionSupported(Z)Lcom/android/server/timedetector/ConfigurationInternal$Builder;

    move-result-object p1

    .line 274
    invoke-virtual {p0}, Lcom/android/server/timedetector/ServiceConfigAccessorImpl;->getAutoDetectionEnabledSetting()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/server/timedetector/ConfigurationInternal$Builder;->setAutoDetectionEnabledSetting(Z)Lcom/android/server/timedetector/ConfigurationInternal$Builder;

    move-result-object p1

    .line 275
    invoke-virtual {p0}, Lcom/android/server/timedetector/ServiceConfigAccessorImpl;->getSystemClockUpdateThresholdMillis()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/server/timedetector/ConfigurationInternal$Builder;->setSystemClockUpdateThresholdMillis(I)Lcom/android/server/timedetector/ConfigurationInternal$Builder;

    move-result-object p1

    .line 277
    invoke-virtual {p0}, Lcom/android/server/timedetector/ServiceConfigAccessorImpl;->getSystemClockConfidenceUpgradeThresholdMillis()I

    move-result v1

    .line 276
    invoke-virtual {p1, v1}, Lcom/android/server/timedetector/ConfigurationInternal$Builder;->setSystemClockConfidenceThresholdMillis(I)Lcom/android/server/timedetector/ConfigurationInternal$Builder;

    move-result-object p1

    .line 278
    invoke-virtual {p0}, Lcom/android/server/timedetector/ServiceConfigAccessorImpl;->getAutoSuggestionLowerBound()Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/server/timedetector/ConfigurationInternal$Builder;->setAutoSuggestionLowerBound(Ljava/time/Instant;)Lcom/android/server/timedetector/ConfigurationInternal$Builder;

    move-result-object p1

    .line 279
    invoke-virtual {v0}, Landroid/app/timedetector/TimeDetectorHelper;->getManualSuggestionLowerBound()Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/server/timedetector/ConfigurationInternal$Builder;->setManualSuggestionLowerBound(Ljava/time/Instant;)Lcom/android/server/timedetector/ConfigurationInternal$Builder;

    move-result-object p1

    .line 280
    invoke-virtual {v0}, Landroid/app/timedetector/TimeDetectorHelper;->getSuggestionUpperBound()Ljava/time/Instant;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/timedetector/ConfigurationInternal$Builder;->setSuggestionUpperBound(Ljava/time/Instant;)Lcom/android/server/timedetector/ConfigurationInternal$Builder;

    move-result-object p1

    .line 281
    invoke-virtual {p0}, Lcom/android/server/timedetector/ServiceConfigAccessorImpl;->getOriginPriorities()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/timedetector/ConfigurationInternal$Builder;->setOriginPriorities([I)Lcom/android/server/timedetector/ConfigurationInternal$Builder;

    move-result-object p1

    .line 282
    invoke-virtual {p1}, Lcom/android/server/timedetector/ConfigurationInternal$Builder;->build()Lcom/android/server/timedetector/ConfigurationInternal;

    move-result-object p1
    :try_end_54
    .catchall {:try_start_1 .. :try_end_54} :catchall_56

    .line 271
    monitor-exit p0

    return-object p1

    :catchall_56
    move-exception p1

    :try_start_57
    monitor-exit p0
    :try_end_58
    .catchall {:try_start_57 .. :try_end_58} :catchall_56

    throw p1
.end method

.method public declared-synchronized getCurrentUserConfigurationInternal()Lcom/android/server/timedetector/ConfigurationInternal;
    .registers 2

    monitor-enter p0

    .line 218
    :try_start_1
    const-class v0, Landroid/app/ActivityManagerInternal;

    .line 219
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->getCurrentUserId()I

    move-result v0

    .line 220
    invoke-virtual {p0, v0}, Lcom/android/server/timedetector/ServiceConfigAccessorImpl;->getConfigurationInternal(I)Lcom/android/server/timedetector/ConfigurationInternal;

    move-result-object v0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    monitor-exit p0

    return-object v0

    :catchall_13
    move-exception v0

    :try_start_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw v0
.end method

.method public final getOriginPriorities()[I
    .registers 2

    .line 340
    iget-object v0, p0, Lcom/android/server/timedetector/ServiceConfigAccessorImpl;->mServerFlagsOriginPrioritiesSupplier:Lcom/android/server/timedetector/ServiceConfigAccessorImpl$ServerFlagsOriginPrioritiesSupplier;

    invoke-virtual {v0}, Lcom/android/server/timedetector/ServiceConfigAccessorImpl$BaseOriginPrioritiesSupplier;->get()[I

    move-result-object v0

    if-eqz v0, :cond_9

    return-object v0

    .line 345
    :cond_9
    iget-object p0, p0, Lcom/android/server/timedetector/ServiceConfigAccessorImpl;->mConfigOriginPrioritiesSupplier:Lcom/android/server/timedetector/ServiceConfigAccessorImpl$ConfigOriginPrioritiesSupplier;

    invoke-virtual {p0}, Lcom/android/server/timedetector/ServiceConfigAccessorImpl$BaseOriginPrioritiesSupplier;->get()[I

    move-result-object p0

    if-eqz p0, :cond_12

    return-object p0

    .line 349
    :cond_12
    sget-object p0, Lcom/android/server/timedetector/ServiceConfigAccessorImpl;->DEFAULT_AUTOMATIC_TIME_ORIGIN_PRIORITIES:[I

    return-object p0
.end method

.method public final getSystemClockConfidenceUpgradeThresholdMillis()I
    .registers 1

    .line 0
    const/16 p0, 0x3e8

    return p0
.end method

.method public final getSystemClockUpdateThresholdMillis()I
    .registers 1

    .line 325
    iget p0, p0, Lcom/android/server/timedetector/ServiceConfigAccessorImpl;->mSystemClockUpdateThresholdMillis:I

    return p0
.end method

.method public final handleConfigurationInternalChangeOnMainThread()V
    .registers 4

    .line 188
    monitor-enter p0

    .line 189
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/timedetector/ServiceConfigAccessorImpl;->mConfigurationInternalListeners:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 190
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_1d

    .line 191
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v1, 0x0

    :goto_e
    if-ge v1, p0, :cond_1c

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Lcom/android/server/timezonedetector/StateChangeListener;

    .line 192
    invoke-interface {v2}, Lcom/android/server/timezonedetector/StateChangeListener;->onChange()V

    goto :goto_e

    :cond_1c
    return-void

    :catchall_1d
    move-exception v0

    .line 190
    :try_start_1e
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw v0
.end method

.method public final handleUserRestrictionsChangeOnMainThread(ILandroid/os/Bundle;Landroid/os/Bundle;)V
    .registers 4

    .line 200
    invoke-virtual {p0}, Lcom/android/server/timedetector/ServiceConfigAccessorImpl;->handleConfigurationInternalChangeOnMainThread()V

    return-void
.end method

.method public final isAutoDetectionSupported()Z
    .registers 8

    .line 307
    invoke-virtual {p0}, Lcom/android/server/timedetector/ServiceConfigAccessorImpl;->getOriginPriorities()[I

    move-result-object v0

    .line 308
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_7
    if-ge v3, v1, :cond_2b

    aget v4, v0, v3

    const/4 v5, 0x3

    const/4 v6, 0x1

    if-eq v4, v5, :cond_2a

    const/4 v5, 0x5

    if-eq v4, v5, :cond_2a

    const/4 v5, 0x4

    if-ne v4, v5, :cond_16

    goto :goto_2a

    :cond_16
    if-ne v4, v6, :cond_27

    .line 314
    iget-object v4, p0, Lcom/android/server/timedetector/ServiceConfigAccessorImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "android.hardware.telephony"

    .line 315
    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_27

    return v6

    :cond_27
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_2a
    :goto_2a
    return v6

    :cond_2b
    return v2
.end method

.method public final isUserConfigAllowed(I)Z
    .registers 3

    .line 297
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    .line 298
    iget-object p0, p0, Lcom/android/server/timedetector/ServiceConfigAccessorImpl;->mUserManager:Landroid/os/UserManager;

    const-string/jumbo v0, "no_config_date_time"

    invoke-virtual {p0, v0, p1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final setAutoDetectionEnabledIfRequired(Z)V
    .registers 3

    .line 291
    invoke-virtual {p0}, Lcom/android/server/timedetector/ServiceConfigAccessorImpl;->getAutoDetectionEnabledSetting()Z

    move-result v0

    if-eq v0, p1, :cond_d

    .line 292
    iget-object p0, p0, Lcom/android/server/timedetector/ServiceConfigAccessorImpl;->mCr:Landroid/content/ContentResolver;

    const-string v0, "auto_time"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_d
    return-void
.end method

.method public final storeConfiguration(ILandroid/app/time/TimeConfiguration;)V
    .registers 3

    .line 255
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    invoke-virtual {p0}, Lcom/android/server/timedetector/ServiceConfigAccessorImpl;->isAutoDetectionSupported()Z

    move-result p1

    if-eqz p1, :cond_10

    .line 262
    invoke-virtual {p2}, Landroid/app/time/TimeConfiguration;->isAutoDetectionEnabled()Z

    move-result p1

    .line 263
    invoke-virtual {p0, p1}, Lcom/android/server/timedetector/ServiceConfigAccessorImpl;->setAutoDetectionEnabledIfRequired(Z)V

    :cond_10
    return-void
.end method

.method public declared-synchronized updateConfiguration(ILandroid/app/time/TimeConfiguration;Z)Z
    .registers 5

    monitor-enter p0

    .line 226
    :try_start_1
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    invoke-virtual {p0, p1}, Lcom/android/server/timedetector/ServiceConfigAccessorImpl;->getConfigurationInternal(I)Lcom/android/server/timedetector/ConfigurationInternal;

    move-result-object v0

    .line 229
    invoke-virtual {v0, p3}, Lcom/android/server/timedetector/ConfigurationInternal;->createCapabilitiesAndConfig(Z)Landroid/app/time/TimeCapabilitiesAndConfig;

    move-result-object p3

    .line 230
    invoke-virtual {p3}, Landroid/app/time/TimeCapabilitiesAndConfig;->getCapabilities()Landroid/app/time/TimeCapabilities;

    move-result-object v0

    .line 231
    invoke-virtual {p3}, Landroid/app/time/TimeCapabilitiesAndConfig;->getConfiguration()Landroid/app/time/TimeConfiguration;

    move-result-object p3

    .line 234
    invoke-virtual {v0, p3, p2}, Landroid/app/time/TimeCapabilities;->tryApplyConfigChanges(Landroid/app/time/TimeConfiguration;Landroid/app/time/TimeConfiguration;)Landroid/app/time/TimeConfiguration;

    move-result-object p2
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_23

    if-nez p2, :cond_1d

    .line 237
    monitor-exit p0

    const/4 p0, 0x0

    return p0

    .line 242
    :cond_1d
    :try_start_1d
    invoke-virtual {p0, p1, p2}, Lcom/android/server/timedetector/ServiceConfigAccessorImpl;->storeConfiguration(ILandroid/app/time/TimeConfiguration;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_23

    .line 244
    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :catchall_23
    move-exception p1

    :try_start_24
    monitor-exit p0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw p1
.end method
