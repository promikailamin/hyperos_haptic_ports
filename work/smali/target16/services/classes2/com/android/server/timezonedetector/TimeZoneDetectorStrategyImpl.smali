.class public final Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;
.super Ljava/lang/Object;
.source "TimeZoneDetectorStrategyImpl.java"

# interfaces
.implements Lcom/android/server/timezonedetector/TimeZoneDetectorStrategy;


# static fields
.field public static final TELEPHONY_SCORE_HIGH:I = 0x3

.field public static final TELEPHONY_SCORE_HIGHEST:I = 0x4

.field public static final TELEPHONY_SCORE_LOW:I = 0x1

.field public static final TELEPHONY_SCORE_MEDIUM:I = 0x2

.field public static final TELEPHONY_SCORE_NONE:I = 0x0

.field public static final TELEPHONY_SCORE_USAGE_THRESHOLD:I = 0x2


# instance fields
.field public final mChangeTracker:Lcom/android/server/timezonedetector/TimeZoneChangeListener;

.field public mCurrentConfigurationInternal:Lcom/android/server/timezonedetector/ConfigurationInternal;

.field public mDetectorStatus:Landroid/app/time/TimeZoneDetectorStatus;

.field public final mEnvironment:Lcom/android/server/timezonedetector/Environment;

.field public final mLatestLocationAlgorithmEvent:Lcom/android/server/timezonedetector/ReferenceWithHistory;

.field public final mLatestManualSuggestion:Lcom/android/server/timezonedetector/ReferenceWithHistory;

.field public final mServiceConfigAccessor:Lcom/android/server/timezonedetector/ServiceConfigAccessor;

.field public final mStateChangeListeners:Ljava/util/List;

.field public final mTelephonySuggestionsBySlotIndex:Lcom/android/server/timezonedetector/ArrayMapWithHistory;

.field public mTelephonyTimeZoneFallbackEnabled:Landroid/os/TimestampedValue;


# direct methods
.method public static synthetic $r8$lambda$hV1MXuLGe7uQyLHj3fxKJrKy5nM(Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->handleConfigurationInternalMaybeChanged()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/timezonedetector/ServiceConfigAccessor;Lcom/android/server/timezonedetector/Environment;Lcom/android/server/timezonedetector/TimeZoneChangeListener;)V
    .registers 6

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    new-instance v0, Lcom/android/server/timezonedetector/ArrayMapWithHistory;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/android/server/timezonedetector/ArrayMapWithHistory;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mTelephonySuggestionsBySlotIndex:Lcom/android/server/timezonedetector/ArrayMapWithHistory;

    .line 139
    new-instance v0, Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-direct {v0, v1}, Lcom/android/server/timezonedetector/ReferenceWithHistory;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mLatestLocationAlgorithmEvent:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    .line 144
    new-instance v0, Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-direct {v0, v1}, Lcom/android/server/timezonedetector/ReferenceWithHistory;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mLatestManualSuggestion:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    .line 150
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mStateChangeListeners:Ljava/util/List;

    .line 212
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p2, Lcom/android/server/timezonedetector/Environment;

    iput-object p2, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timezonedetector/Environment;

    .line 213
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    iput-object p1, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mServiceConfigAccessor:Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    .line 214
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p3, Lcom/android/server/timezonedetector/TimeZoneChangeListener;

    iput-object p3, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mChangeTracker:Lcom/android/server/timezonedetector/TimeZoneChangeListener;

    .line 217
    new-instance p3, Landroid/os/TimestampedValue;

    .line 218
    invoke-interface {p2}, Lcom/android/server/timezonedetector/Environment;->elapsedRealtimeMillis()J

    move-result-wide v0

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {p3, v0, v1, p2}, Landroid/os/TimestampedValue;-><init>(JLjava/lang/Object;)V

    iput-object p3, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mTelephonyTimeZoneFallbackEnabled:Landroid/os/TimestampedValue;

    .line 220
    monitor-enter p0

    .line 222
    :try_start_44
    new-instance p2, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;)V

    .line 223
    invoke-interface {p1, p2}, Lcom/android/server/timezonedetector/ServiceConfigAccessor;->addConfigurationInternalChangeListener(Lcom/android/server/timezonedetector/StateChangeListener;)V

    .line 227
    const-string p1, "TimeZoneDetectorStrategyImpl:"

    invoke-direct {p0, p1}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->updateCurrentConfigurationInternalIfRequired(Ljava/lang/String;)V

    .line 228
    monitor-exit p0

    return-void

    :catchall_53
    move-exception p1

    monitor-exit p0
    :try_end_55
    .catchall {:try_start_44 .. :try_end_55} :catchall_53

    throw p1
.end method

.method public static create(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/timezonedetector/ServiceConfigAccessor;)Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;
    .registers 4

    .line 199
    new-instance v0, Lcom/android/server/timezonedetector/EnvironmentImpl;

    invoke-direct {v0, p1}, Lcom/android/server/timezonedetector/EnvironmentImpl;-><init>(Landroid/os/Handler;)V

    .line 201
    invoke-static {p1, p0, p2, v0}, Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;->create(Landroid/os/Handler;Landroid/content/Context;Lcom/android/server/timezonedetector/ServiceConfigAccessor;Lcom/android/server/timezonedetector/Environment;)Lcom/android/server/timezonedetector/NotifyingTimeZoneChangeListener;

    move-result-object p0

    .line 203
    new-instance p1, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;

    invoke-direct {p1, p2, v0, p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;-><init>(Lcom/android/server/timezonedetector/ServiceConfigAccessor;Lcom/android/server/timezonedetector/Environment;Lcom/android/server/timezonedetector/TimeZoneChangeListener;)V

    return-object p1
.end method

.method public static createLocationAlgorithmStatus(Lcom/android/server/timezonedetector/ConfigurationInternal;Lcom/android/server/timezonedetector/LocationAlgorithmEvent;)Landroid/app/time/LocationTimeZoneAlgorithmStatus;
    .registers 2

    if-eqz p1, :cond_7

    .line 1071
    invoke-virtual {p1}, Lcom/android/server/timezonedetector/LocationAlgorithmEvent;->getAlgorithmStatus()Landroid/app/time/LocationTimeZoneAlgorithmStatus;

    move-result-object p0

    return-object p0

    .line 1072
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/ConfigurationInternal;->isGeoDetectionSupported()Z

    move-result p1

    if-nez p1, :cond_10

    .line 1073
    sget-object p0, Landroid/app/time/LocationTimeZoneAlgorithmStatus;->NOT_SUPPORTED:Landroid/app/time/LocationTimeZoneAlgorithmStatus;

    return-object p0

    .line 1074
    :cond_10
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/ConfigurationInternal;->isGeoDetectionExecutionEnabled()Z

    move-result p0

    if-eqz p0, :cond_19

    .line 1075
    sget-object p0, Landroid/app/time/LocationTimeZoneAlgorithmStatus;->RUNNING_NOT_REPORTED:Landroid/app/time/LocationTimeZoneAlgorithmStatus;

    return-object p0

    .line 1077
    :cond_19
    sget-object p0, Landroid/app/time/LocationTimeZoneAlgorithmStatus;->NOT_RUNNING:Landroid/app/time/LocationTimeZoneAlgorithmStatus;

    return-object p0
.end method

.method public static createTelephonyAlgorithmStatus(Lcom/android/server/timezonedetector/ConfigurationInternal;)Landroid/app/time/TelephonyTimeZoneAlgorithmStatus;
    .registers 2

    .line 1086
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/ConfigurationInternal;->isTelephonyDetectionSupported()Z

    move-result p0

    if-nez p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x3

    .line 1092
    :goto_9
    new-instance v0, Landroid/app/time/TelephonyTimeZoneAlgorithmStatus;

    invoke-direct {v0, p0}, Landroid/app/time/TelephonyTimeZoneAlgorithmStatus;-><init>(I)V

    return-object v0
.end method

.method public static createTimeZoneDetectorStatus(Lcom/android/server/timezonedetector/ConfigurationInternal;Lcom/android/server/timezonedetector/LocationAlgorithmEvent;)Landroid/app/time/TimeZoneDetectorStatus;
    .registers 4

    .line 1046
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/ConfigurationInternal;->isAutoDetectionSupported()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_11

    .line 1048
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/ConfigurationInternal;->getAutoDetectionEnabledBehavior()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x3

    goto :goto_11

    :cond_10
    const/4 v0, 0x2

    .line 1055
    :goto_11
    invoke-static {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->createTelephonyAlgorithmStatus(Lcom/android/server/timezonedetector/ConfigurationInternal;)Landroid/app/time/TelephonyTimeZoneAlgorithmStatus;

    move-result-object v1

    .line 1058
    invoke-static {p0, p1}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->createLocationAlgorithmStatus(Lcom/android/server/timezonedetector/ConfigurationInternal;Lcom/android/server/timezonedetector/LocationAlgorithmEvent;)Landroid/app/time/LocationTimeZoneAlgorithmStatus;

    move-result-object p0

    .line 1061
    new-instance p1, Landroid/app/time/TimeZoneDetectorStatus;

    invoke-direct {p1, v0, v1, p0}, Landroid/app/time/TimeZoneDetectorStatus;-><init>(ILandroid/app/time/TelephonyTimeZoneAlgorithmStatus;Landroid/app/time/LocationTimeZoneAlgorithmStatus;)V

    return-object p1
.end method

.method public static formatDebugString(Landroid/os/TimestampedValue;)Ljava/lang/String;
    .registers 4

    .line 1037
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/os/TimestampedValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " @ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/TimestampedValue;->getReferenceTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private declared-synchronized handleConfigurationInternalMaybeChanged()V
    .registers 2

    monitor-enter p0

    .line 920
    :try_start_1
    const-string v0, "handleConfigurationInternalMaybeChanged:"

    .line 921
    invoke-direct {p0, v0}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->updateCurrentConfigurationInternalIfRequired(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 922
    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    :try_start_9
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_8

    throw v0
.end method

.method private notifyStateChangeListenersAsynchronously()V
    .registers 5

    .line 314
    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mStateChangeListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/timezonedetector/StateChangeListener;

    .line 316
    iget-object v2, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timezonedetector/Environment;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/server/timedetector/TimeDetectorStrategyImpl$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/timezonedetector/StateChangeListener;)V

    invoke-interface {v2, v3}, Lcom/android/server/timezonedetector/Environment;->runAsync(Ljava/lang/Runnable;)V

    goto :goto_6

    :cond_20
    return-void
.end method

.method public static scoreTelephonySuggestion(Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;)I
    .registers 5

    .line 571
    invoke-virtual {p0}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->getZoneId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 573
    :cond_8
    invoke-virtual {p0}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->getMatchType()I

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x4

    if-eq v0, v1, :cond_35

    .line 574
    invoke-virtual {p0}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->getMatchType()I

    move-result v0

    if-ne v0, v2, :cond_17

    goto :goto_35

    .line 577
    :cond_17
    invoke-virtual {p0}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->getQuality()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-ne v0, v2, :cond_20

    return v1

    .line 579
    :cond_20
    invoke-virtual {p0}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->getQuality()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_28

    return v3

    .line 582
    :cond_28
    invoke-virtual {p0}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->getQuality()I

    move-result p0

    if-ne p0, v1, :cond_2f

    return v2

    .line 586
    :cond_2f
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_35
    :goto_35
    return v2
.end method

.method private updateCurrentConfigurationInternalIfRequired(Ljava/lang/String;)V
    .registers 5

    .line 282
    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mServiceConfigAccessor:Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    .line 283
    invoke-interface {v0}, Lcom/android/server/timezonedetector/ServiceConfigAccessor;->getCurrentUserConfigurationInternal()Lcom/android/server/timezonedetector/ConfigurationInternal;

    move-result-object v0

    .line 285
    iget-object v1, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mCurrentConfigurationInternal:Lcom/android/server/timezonedetector/ConfigurationInternal;

    .line 289
    invoke-virtual {v0, v1}, Lcom/android/server/timezonedetector/ConfigurationInternal;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3f

    .line 290
    iput-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mCurrentConfigurationInternal:Lcom/android/server/timezonedetector/ConfigurationInternal;

    .line 292
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " [oldConfiguration="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", newConfiguration="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 298
    invoke-virtual {p0, p1}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->logTimeZoneDebugInfo(Ljava/lang/String;)V

    .line 301
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->updateDetectorStatus()Z

    .line 304
    invoke-direct {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->notifyStateChangeListenersAsynchronously()V

    .line 308
    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mCurrentConfigurationInternal:Lcom/android/server/timezonedetector/ConfigurationInternal;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->doAutoTimeZoneDetection(Lcom/android/server/timezonedetector/ConfigurationInternal;Ljava/lang/String;)V

    :cond_3f
    return-void
.end method


# virtual methods
.method public declared-synchronized addChangeListener(Lcom/android/server/timezonedetector/StateChangeListener;)V
    .registers 3

    monitor-enter p0

    .line 322
    :try_start_1
    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mStateChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 323
    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    :try_start_9
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_8

    throw p1
.end method

.method public declared-synchronized confirmTimeZone(Ljava/lang/String;)Z
    .registers 7

    monitor-enter p0

    .line 327
    :try_start_1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timezonedetector/Environment;

    invoke-interface {v0}, Lcom/android/server/timezonedetector/Environment;->getDeviceTimeZone()Ljava/lang/String;

    move-result-object v0

    .line 330
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_34

    if-nez v1, :cond_13

    .line 331
    monitor-exit p0

    const/4 p0, 0x0

    return p0

    .line 334
    :cond_13
    :try_start_13
    iget-object v1, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timezonedetector/Environment;

    invoke-interface {v1}, Lcom/android/server/timezonedetector/Environment;->getDeviceTimeZoneConfidence()I

    move-result v1

    const/16 v2, 0x64

    if-ge v1, v2, :cond_36

    .line 335
    iget-object v1, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timezonedetector/Environment;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "confirmTimeZone: timeZoneId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v0, v2, p1}, Lcom/android/server/timezonedetector/Environment;->setDeviceTimeZoneAndConfidence(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_33
    .catchall {:try_start_13 .. :try_end_33} :catchall_34

    goto :goto_36

    :catchall_34
    move-exception p1

    goto :goto_39

    .line 340
    :cond_36
    :goto_36
    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :goto_39
    :try_start_39
    monitor-exit p0
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_34

    throw p1
.end method

.method public final disableTelephonyFallbackIfNeeded()V
    .registers 5

    .line 711
    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mLatestLocationAlgorithmEvent:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/timezonedetector/LocationAlgorithmEvent;

    if-nez v0, :cond_b

    goto :goto_58

    .line 716
    :cond_b
    invoke-virtual {v0}, Lcom/android/server/timezonedetector/LocationAlgorithmEvent;->getSuggestion()Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;

    move-result-object v0

    if-eqz v0, :cond_58

    .line 717
    invoke-virtual {v0}, Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;->getZoneIds()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_58

    .line 718
    iget-object v1, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mTelephonyTimeZoneFallbackEnabled:Landroid/os/TimestampedValue;

    invoke-virtual {v1}, Landroid/os/TimestampedValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_58

    .line 726
    invoke-virtual {v0}, Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;->getEffectiveFromElapsedMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mTelephonyTimeZoneFallbackEnabled:Landroid/os/TimestampedValue;

    .line 727
    invoke-virtual {v2}, Landroid/os/TimestampedValue;->getReferenceTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_58

    .line 730
    new-instance v0, Landroid/os/TimestampedValue;

    iget-object v1, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timezonedetector/Environment;

    .line 732
    invoke-interface {v1}, Lcom/android/server/timezonedetector/Environment;->elapsedRealtimeMillis()J

    move-result-wide v1

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v0, v1, v2, v3}, Landroid/os/TimestampedValue;-><init>(JLjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mTelephonyTimeZoneFallbackEnabled:Landroid/os/TimestampedValue;

    .line 734
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "disableTelephonyFallbackIfNeeded: mTelephonyTimeZoneFallbackEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mTelephonyTimeZoneFallbackEnabled:Landroid/os/TimestampedValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 738
    invoke-virtual {p0, v0}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->logTimeZoneDebugInfo(Ljava/lang/String;)V

    :cond_58
    :goto_58
    return-void
.end method

.method public final doAutoTimeZoneDetection(Lcom/android/server/timezonedetector/ConfigurationInternal;Ljava/lang/String;)V
    .registers 7

    .line 597
    invoke-virtual {p1}, Lcom/android/server/timezonedetector/ConfigurationInternal;->getDetectionMode()I

    move-result v0

    .line 598
    const-string v1, "Unknown detection mode: "

    const-string/jumbo v2, "time_zone_detector"

    if-eqz v0, :cond_5a

    const/4 v3, 0x1

    if-eq v0, v3, :cond_59

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2b

    const/4 p1, 0x3

    if-eq v0, p1, :cond_27

    .line 648
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 639
    :cond_27
    invoke-virtual {p0, p2}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->doTelephonyTimeZoneDetection(Ljava/lang/String;)V

    return-void

    .line 604
    :cond_2b
    invoke-virtual {p0, p2}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->doGeolocationTimeZoneDetection(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_59

    .line 608
    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mTelephonyTimeZoneFallbackEnabled:Landroid/os/TimestampedValue;

    .line 609
    invoke-virtual {v0}, Landroid/os/TimestampedValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_59

    .line 610
    invoke-virtual {p1}, Lcom/android/server/timezonedetector/ConfigurationInternal;->isTelephonyFallbackSupported()Z

    move-result p1

    if-eqz p1, :cond_59

    .line 634
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", telephony fallback mode"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->doTelephonyTimeZoneDetection(Ljava/lang/String;)V

    :cond_59
    return-void

    .line 644
    :cond_5a
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", is location off?"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final doGeolocationTimeZoneDetection(Ljava/lang/String;)Z
    .registers 7

    .line 663
    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mLatestLocationAlgorithmEvent:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/timezonedetector/LocationAlgorithmEvent;

    const/4 v1, 0x0

    if-eqz v0, :cond_3e

    .line 665
    invoke-virtual {v0}, Lcom/android/server/timezonedetector/LocationAlgorithmEvent;->getSuggestion()Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;

    move-result-object v2

    if-nez v2, :cond_12

    goto :goto_3e

    .line 669
    :cond_12
    invoke-virtual {v0}, Lcom/android/server/timezonedetector/LocationAlgorithmEvent;->getSuggestion()Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;

    move-result-object v0

    .line 670
    invoke-virtual {v0}, Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;->getZoneIds()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1d

    return v1

    .line 676
    :cond_1d
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_25

    return v3

    .line 688
    :cond_25
    iget-object v2, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timezonedetector/Environment;

    invoke-interface {v2}, Lcom/android/server/timezonedetector/Environment;->getDeviceTimeZone()Ljava/lang/String;

    move-result-object v2

    .line 689
    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_32

    goto :goto_39

    .line 697
    :cond_32
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    :goto_39
    const/4 v0, 0x3

    .line 699
    invoke-virtual {p0, v2, v0, v1, p1}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->setDeviceTimeZoneIfRequired(Ljava/lang/String;IILjava/lang/String;)V

    return v3

    :cond_3e
    :goto_3e
    return v1
.end method

.method public final doTelephonyTimeZoneDetection(Ljava/lang/String;)V
    .registers 8

    .line 759
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->findBestTelephonySuggestion()Lcom/android/server/timezonedetector/QualifiedTelephonyTimeZoneSuggestion;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 775
    :cond_7
    invoke-virtual {v0}, Lcom/android/server/timezonedetector/QualifiedTelephonyTimeZoneSuggestion;->score()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_53

    .line 791
    invoke-virtual {v0}, Lcom/android/server/timezonedetector/QualifiedTelephonyTimeZoneSuggestion;->suggestion()Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->getZoneId()Ljava/lang/String;

    move-result-object v1

    .line 792
    const-string v3, ", detectionReason="

    if-nez v1, :cond_38

    .line 793
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Empty zone suggestion scored higher than expected. This is an error: bestTelephonySuggestion="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "time_zone_detector"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 803
    :cond_38
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Found good suggestion: bestTelephonySuggestion="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 809
    invoke-virtual {p0, v1, v2, v0, p1}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->setDeviceTimeZoneIfRequired(Ljava/lang/String;IILjava/lang/String;)V

    :cond_53
    return-void
.end method

.method public declared-synchronized dump(Landroid/util/IndentingPrintWriter;[Ljava/lang/String;)V
    .registers 5

    monitor-enter p0

    .line 947
    :try_start_1
    const-string p2, "TimeZoneDetectorStrategy:"

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 949
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 950
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mCurrentConfigurationInternal="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mCurrentConfigurationInternal:Lcom/android/server/timezonedetector/ConfigurationInternal;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 951
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mDetectorStatus="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mDetectorStatus:Landroid/app/time/TimeZoneDetectorStatus;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 953
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[Capabilities="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mCurrentConfigurationInternal:Lcom/android/server/timezonedetector/ConfigurationInternal;

    const/4 v1, 0x0

    .line 955
    invoke-virtual {v0, v1}, Lcom/android/server/timezonedetector/ConfigurationInternal;->asCapabilities(Z)Landroid/app/time/TimeZoneCapabilities;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 953
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 957
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mEnvironment.getDeviceTimeZone()="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timezonedetector/Environment;

    invoke-interface {v0}, Lcom/android/server/timezonedetector/Environment;->getDeviceTimeZone()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 958
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mEnvironment.getDeviceTimeZoneConfidence()="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timezonedetector/Environment;

    .line 960
    invoke-interface {v0}, Lcom/android/server/timezonedetector/Environment;->getDeviceTimeZoneConfidence()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 958
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 962
    const-string p2, "Misc state:"

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 963
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 964
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mTelephonyTimeZoneFallbackEnabled="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mTelephonyTimeZoneFallbackEnabled:Landroid/os/TimestampedValue;

    .line 966
    invoke-static {v0}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->formatDebugString(Landroid/os/TimestampedValue;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 964
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 967
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 969
    const-string p2, "Time zone debug log:"

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 970
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 971
    iget-object p2, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timezonedetector/Environment;

    invoke-interface {p2, p1}, Lcom/android/server/timezonedetector/Environment;->dumpDebugLog(Ljava/io/PrintWriter;)V

    .line 972
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 974
    const-string p2, "Manual suggestion history:"

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 975
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 976
    iget-object p2, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mLatestManualSuggestion:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-virtual {p2, p1}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 977
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 979
    const-string p2, "Location algorithm event history:"

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 980
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 981
    iget-object p2, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mLatestLocationAlgorithmEvent:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-virtual {p2, p1}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 982
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 984
    const-string p2, "Telephony suggestion history:"

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 985
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 986
    iget-object p2, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mTelephonySuggestionsBySlotIndex:Lcom/android/server/timezonedetector/ArrayMapWithHistory;

    invoke-virtual {p2, p1}, Lcom/android/server/timezonedetector/ArrayMapWithHistory;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 987
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 990
    const-string p2, "Time zone change tracker:"

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 991
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 992
    iget-object p2, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mChangeTracker:Lcom/android/server/timezonedetector/TimeZoneChangeListener;

    invoke-interface {p2, p1}, Lcom/android/server/timezonedetector/TimeZoneChangeListener;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 993
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 996
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;
    :try_end_101
    .catchall {:try_start_1 .. :try_end_101} :catchall_103

    .line 997
    monitor-exit p0

    return-void

    :catchall_103
    move-exception p1

    :try_start_104
    monitor-exit p0
    :try_end_105
    .catchall {:try_start_104 .. :try_end_105} :catchall_103

    throw p1
.end method

.method public declared-synchronized enableTelephonyTimeZoneFallback(Ljava/lang/String;)V
    .registers 7

    monitor-enter p0

    .line 490
    :try_start_1
    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mTelephonyTimeZoneFallbackEnabled:Landroid/os/TimestampedValue;

    invoke-virtual {v0}, Landroid/os/TimestampedValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_55

    .line 491
    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mCurrentConfigurationInternal:Lcom/android/server/timezonedetector/ConfigurationInternal;

    .line 493
    new-instance v1, Landroid/os/TimestampedValue;

    iget-object v2, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timezonedetector/Environment;

    .line 494
    invoke-interface {v2}, Lcom/android/server/timezonedetector/Environment;->elapsedRealtimeMillis()J

    move-result-wide v2

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v1, v2, v3, v4}, Landroid/os/TimestampedValue;-><init>(JLjava/lang/Object;)V

    iput-object v1, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mTelephonyTimeZoneFallbackEnabled:Landroid/os/TimestampedValue;

    .line 496
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableTelephonyTimeZoneFallback:  reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", currentUserConfig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mTelephonyTimeZoneFallbackEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mTelephonyTimeZoneFallbackEnabled:Landroid/os/TimestampedValue;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 504
    invoke-virtual {p0, v1}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->logTimeZoneDebugInfo(Ljava/lang/String;)V

    .line 524
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->disableTelephonyFallbackIfNeeded()V

    .line 526
    invoke-virtual {v0}, Lcom/android/server/timezonedetector/ConfigurationInternal;->isTelephonyFallbackSupported()Z

    move-result v1

    if-eqz v1, :cond_55

    .line 527
    invoke-virtual {p0, v0, p1}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->doAutoTimeZoneDetection(Lcom/android/server/timezonedetector/ConfigurationInternal;Ljava/lang/String;)V
    :try_end_52
    .catchall {:try_start_1 .. :try_end_52} :catchall_53

    goto :goto_55

    :catchall_53
    move-exception p1

    goto :goto_57

    .line 530
    :cond_55
    :goto_55
    monitor-exit p0

    return-void

    :goto_57
    :try_start_57
    monitor-exit p0
    :try_end_58
    .catchall {:try_start_57 .. :try_end_58} :catchall_53

    throw p1
.end method

.method public final findBestTelephonySuggestion()Lcom/android/server/timezonedetector/QualifiedTelephonyTimeZoneSuggestion;
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 884
    :goto_2
    iget-object v2, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mTelephonySuggestionsBySlotIndex:Lcom/android/server/timezonedetector/ArrayMapWithHistory;

    invoke-virtual {v2}, Lcom/android/server/timezonedetector/ArrayMapWithHistory;->size()I

    move-result v2

    if-ge v1, v2, :cond_43

    .line 885
    iget-object v2, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mTelephonySuggestionsBySlotIndex:Lcom/android/server/timezonedetector/ArrayMapWithHistory;

    .line 886
    invoke-virtual {v2, v1}, Lcom/android/server/timezonedetector/ArrayMapWithHistory;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/timezonedetector/QualifiedTelephonyTimeZoneSuggestion;

    if-nez v2, :cond_15

    goto :goto_40

    :cond_15
    if-nez v0, :cond_18

    goto :goto_3f

    .line 894
    :cond_18
    invoke-virtual {v2}, Lcom/android/server/timezonedetector/QualifiedTelephonyTimeZoneSuggestion;->score()I

    move-result v3

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/QualifiedTelephonyTimeZoneSuggestion;->score()I

    move-result v4

    if-le v3, v4, :cond_23

    goto :goto_3f

    .line 896
    :cond_23
    invoke-virtual {v2}, Lcom/android/server/timezonedetector/QualifiedTelephonyTimeZoneSuggestion;->score()I

    move-result v3

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/QualifiedTelephonyTimeZoneSuggestion;->score()I

    move-result v4

    if-ne v3, v4, :cond_40

    .line 898
    invoke-virtual {v2}, Lcom/android/server/timezonedetector/QualifiedTelephonyTimeZoneSuggestion;->suggestion()Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->getSlotIndex()I

    move-result v3

    .line 899
    invoke-virtual {v0}, Lcom/android/server/timezonedetector/QualifiedTelephonyTimeZoneSuggestion;->suggestion()Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->getSlotIndex()I

    move-result v4

    if-ge v3, v4, :cond_40

    :goto_3f
    move-object v0, v2

    :cond_40
    :goto_40
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_43
    return-object v0
.end method

.method public declared-synchronized findBestTelephonySuggestionForTests()Lcom/android/server/timezonedetector/QualifiedTelephonyTimeZoneSuggestion;
    .registers 2

    monitor-enter p0

    .line 915
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->findBestTelephonySuggestion()Lcom/android/server/timezonedetector/QualifiedTelephonyTimeZoneSuggestion;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_7

    monitor-exit p0

    return-object v0

    :catchall_7
    move-exception v0

    :try_start_8
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_8 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public declared-synchronized generateMetricsState()Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;
    .registers 8

    monitor-enter p0

    .line 538
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->findBestTelephonySuggestion()Lcom/android/server/timezonedetector/QualifiedTelephonyTimeZoneSuggestion;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    :goto_8
    move-object v5, v0

    goto :goto_f

    .line 542
    :cond_a
    invoke-virtual {v0}, Lcom/android/server/timezonedetector/QualifiedTelephonyTimeZoneSuggestion;->suggestion()Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;

    move-result-object v0

    goto :goto_8

    .line 544
    :goto_f
    new-instance v1, Lcom/android/server/timezonedetector/OrdinalGenerator;

    new-instance v0, Lcom/android/server/timezonedetector/TimeZoneCanonicalizer;

    invoke-direct {v0}, Lcom/android/server/timezonedetector/TimeZoneCanonicalizer;-><init>()V

    invoke-direct {v1, v0}, Lcom/android/server/timezonedetector/OrdinalGenerator;-><init>(Ljava/util/function/Function;)V

    .line 546
    iget-object v2, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mCurrentConfigurationInternal:Lcom/android/server/timezonedetector/ConfigurationInternal;

    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timezonedetector/Environment;

    .line 549
    invoke-interface {v0}, Lcom/android/server/timezonedetector/Environment;->getDeviceTimeZone()Ljava/lang/String;

    move-result-object v3

    .line 550
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->getLatestManualSuggestion()Landroid/app/timezonedetector/ManualTimeZoneSuggestion;

    move-result-object v4

    .line 552
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->getLatestLocationAlgorithmEvent()Lcom/android/server/timezonedetector/LocationAlgorithmEvent;

    move-result-object v6

    .line 546
    invoke-static/range {v1 .. v6}, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->create(Lcom/android/server/timezonedetector/OrdinalGenerator;Lcom/android/server/timezonedetector/ConfigurationInternal;Ljava/lang/String;Landroid/app/timezonedetector/ManualTimeZoneSuggestion;Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;Lcom/android/server/timezonedetector/LocationAlgorithmEvent;)Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;

    move-result-object v0
    :try_end_2d
    .catchall {:try_start_1 .. :try_end_2d} :catchall_2f

    monitor-exit p0

    return-object v0

    :catchall_2f
    move-exception v0

    :try_start_30
    monitor-exit p0
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    throw v0
.end method

.method public declared-synchronized getCachedCapabilitiesAndConfigForTests()Lcom/android/server/timezonedetector/ConfigurationInternal;
    .registers 2

    monitor-enter p0

    .line 1028
    :try_start_1
    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mCurrentConfigurationInternal:Lcom/android/server/timezonedetector/ConfigurationInternal;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public declared-synchronized getCachedDetectorStatusForTests()Landroid/app/time/TimeZoneDetectorStatus;
    .registers 2

    monitor-enter p0

    .line 1033
    :try_start_1
    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mDetectorStatus:Landroid/app/time/TimeZoneDetectorStatus;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public declared-synchronized getCapabilitiesAndConfig(IZ)Landroid/app/time/TimeZoneCapabilitiesAndConfig;
    .registers 5

    monitor-enter p0

    .line 235
    :try_start_1
    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mCurrentConfigurationInternal:Lcom/android/server/timezonedetector/ConfigurationInternal;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/ConfigurationInternal;->getUserId()I

    move-result v0

    if-ne v0, p1, :cond_e

    .line 237
    iget-object p1, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mCurrentConfigurationInternal:Lcom/android/server/timezonedetector/ConfigurationInternal;

    goto :goto_14

    :catchall_c
    move-exception p1

    goto :goto_25

    .line 243
    :cond_e
    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mServiceConfigAccessor:Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    invoke-interface {v0, p1}, Lcom/android/server/timezonedetector/ServiceConfigAccessor;->getConfigurationInternal(I)Lcom/android/server/timezonedetector/ConfigurationInternal;

    move-result-object p1

    .line 245
    :goto_14
    new-instance v0, Landroid/app/time/TimeZoneCapabilitiesAndConfig;

    iget-object v1, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mDetectorStatus:Landroid/app/time/TimeZoneDetectorStatus;

    .line 247
    invoke-virtual {p1, p2}, Lcom/android/server/timezonedetector/ConfigurationInternal;->asCapabilities(Z)Landroid/app/time/TimeZoneCapabilities;

    move-result-object p2

    .line 248
    invoke-virtual {p1}, Lcom/android/server/timezonedetector/ConfigurationInternal;->asConfiguration()Landroid/app/time/TimeZoneConfiguration;

    move-result-object p1

    invoke-direct {v0, v1, p2, p1}, Landroid/app/time/TimeZoneCapabilitiesAndConfig;-><init>(Landroid/app/time/TimeZoneDetectorStatus;Landroid/app/time/TimeZoneCapabilities;Landroid/app/time/TimeZoneConfiguration;)V
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_c

    .line 245
    monitor-exit p0

    return-object v0

    :goto_25
    :try_start_25
    monitor-exit p0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_c

    throw p1
.end method

.method public declared-synchronized getLatestLocationAlgorithmEvent()Lcom/android/server/timezonedetector/LocationAlgorithmEvent;
    .registers 2

    monitor-enter p0

    .line 1018
    :try_start_1
    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mLatestLocationAlgorithmEvent:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/timezonedetector/LocationAlgorithmEvent;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-object v0

    :catchall_b
    move-exception v0

    :try_start_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw v0
.end method

.method public declared-synchronized getLatestManualSuggestion()Landroid/app/timezonedetector/ManualTimeZoneSuggestion;
    .registers 2

    monitor-enter p0

    .line 1003
    :try_start_1
    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mLatestManualSuggestion:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/timezonedetector/ManualTimeZoneSuggestion;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-object v0

    :catchall_b
    move-exception v0

    :try_start_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw v0
.end method

.method public declared-synchronized getLatestTelephonySuggestion(I)Lcom/android/server/timezonedetector/QualifiedTelephonyTimeZoneSuggestion;
    .registers 3

    monitor-enter p0

    .line 1011
    :try_start_1
    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mTelephonySuggestionsBySlotIndex:Lcom/android/server/timezonedetector/ArrayMapWithHistory;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/server/timezonedetector/ArrayMapWithHistory;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/timezonedetector/QualifiedTelephonyTimeZoneSuggestion;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-object p1

    :catchall_f
    move-exception p1

    :try_start_10
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    throw p1
.end method

.method public declared-synchronized getTimeZoneState()Landroid/app/time/TimeZoneState;
    .registers 4

    monitor-enter p0

    .line 345
    :try_start_1
    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timezonedetector/Environment;

    .line 346
    invoke-interface {v0}, Lcom/android/server/timezonedetector/Environment;->getDeviceTimeZoneConfidence()I

    move-result v0

    const/16 v1, 0x64

    if-ge v0, v1, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    .line 347
    :goto_e
    new-instance v1, Landroid/app/time/TimeZoneState;

    iget-object v2, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timezonedetector/Environment;

    invoke-interface {v2}, Lcom/android/server/timezonedetector/Environment;->getDeviceTimeZone()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/app/time/TimeZoneState;-><init>(Ljava/lang/String;Z)V
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1b

    monitor-exit p0

    return-object v1

    :catchall_1b
    move-exception v0

    :try_start_1c
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw v0
.end method

.method public declared-synchronized handleLocationAlgorithmEvent(Lcom/android/server/timezonedetector/LocationAlgorithmEvent;)V
    .registers 5

    monitor-enter p0

    .line 365
    :try_start_1
    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mCurrentConfigurationInternal:Lcom/android/server/timezonedetector/ConfigurationInternal;

    .line 375
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    iget-object v1, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mLatestLocationAlgorithmEvent:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-virtual {v1, p1}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->set(Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->updateDetectorStatus()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 390
    invoke-direct {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->notifyStateChangeListenersAsynchronously()V

    goto :goto_17

    :catchall_15
    move-exception p1

    goto :goto_4f

    .line 394
    :cond_17
    :goto_17
    invoke-virtual {p1}, Lcom/android/server/timezonedetector/LocationAlgorithmEvent;->getAlgorithmStatus()Landroid/app/time/LocationTimeZoneAlgorithmStatus;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/time/LocationTimeZoneAlgorithmStatus;->couldEnableTelephonyFallback()Z

    move-result v1

    if-eqz v1, :cond_36

    .line 397
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleLocationAlgorithmEvent(), event="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->enableTelephonyTimeZoneFallback(Ljava/lang/String;)V

    goto :goto_39

    .line 400
    :cond_36
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->disableTelephonyFallbackIfNeeded()V

    .line 405
    :goto_39
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "New location algorithm event received. event="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 406
    invoke-virtual {p0, v0, p1}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->doAutoTimeZoneDetection(Lcom/android/server/timezonedetector/ConfigurationInternal;Ljava/lang/String;)V
    :try_end_4d
    .catchall {:try_start_1 .. :try_end_4d} :catchall_15

    .line 407
    monitor-exit p0

    return-void

    :goto_4f
    :try_start_4f
    monitor-exit p0
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_15

    throw p1
.end method

.method public isGeoTimeZoneDetectionSupported()Z
    .registers 2

    .line 564
    monitor-enter p0

    .line 565
    :try_start_1
    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mCurrentConfigurationInternal:Lcom/android/server/timezonedetector/ConfigurationInternal;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/ConfigurationInternal;->isGeoDetectionSupported()Z

    move-result v0

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    .line 566
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_9

    throw v0
.end method

.method public declared-synchronized isTelephonyFallbackEnabledForTests()Z
    .registers 2

    monitor-enter p0

    .line 1023
    :try_start_1
    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mTelephonyTimeZoneFallbackEnabled:Landroid/os/TimestampedValue;

    invoke-virtual {v0}, Landroid/os/TimestampedValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return v0

    :catchall_f
    move-exception v0

    :try_start_10
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public isTelephonyTimeZoneDetectionSupported()Z
    .registers 2

    .line 557
    monitor-enter p0

    .line 558
    :try_start_1
    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mCurrentConfigurationInternal:Lcom/android/server/timezonedetector/ConfigurationInternal;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/ConfigurationInternal;->isTelephonyDetectionSupported()Z

    move-result v0

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    .line 559
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_9

    throw v0
.end method

.method public final logTimeZoneDebugInfo(Ljava/lang/String;)V
    .registers 2

    .line 747
    iget-object p0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timezonedetector/Environment;

    invoke-interface {p0, p1}, Lcom/android/server/timezonedetector/Environment;->addDebugLogEntry(Ljava/lang/String;)V

    return-void
.end method

.method public final setDeviceTimeZoneIfRequired(Ljava/lang/String;IILjava/lang/String;)V
    .registers 18

    .line 818
    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timezonedetector/Environment;

    invoke-interface {v0}, Lcom/android/server/timezonedetector/Environment;->getDeviceTimeZone()Ljava/lang/String;

    move-result-object v8

    .line 822
    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timezonedetector/Environment;

    invoke-interface {v0}, Lcom/android/server/timezonedetector/Environment;->getDeviceTimeZoneConfidence()I

    move-result v10

    .line 826
    invoke-virtual {p1, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v11, 0x64

    if-eqz v0, :cond_17

    if-gt v11, v10, :cond_17

    return-void

    .line 844
    :cond_17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Set device time zone or higher confidence: newZoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", cause="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v12, p4

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", newConfidence="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 855
    iget-object v1, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timezonedetector/Environment;

    invoke-interface {v1, p1, v11, v0}, Lcom/android/server/timezonedetector/Environment;->setDeviceTimeZoneAndConfidence(Ljava/lang/String;ILjava/lang/String;)V

    .line 860
    new-instance v1, Lcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;

    .line 862
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 863
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object v9, p1

    move v6, p2

    move/from16 v7, p3

    invoke-direct/range {v1 .. v12}, Lcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;-><init>(JJIILjava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    .line 871
    iget-object p0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mChangeTracker:Lcom/android/server/timezonedetector/TimeZoneChangeListener;

    invoke-interface {p0, v1}, Lcom/android/server/timezonedetector/TimeZoneChangeListener;->process(Lcom/android/server/timezonedetector/TimeZoneChangeListener$TimeZoneChangeEvent;)V

    return-void
.end method

.method public setTimeZoneState(Landroid/app/time/TimeZoneState;)V
    .registers 4

    .line 352
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    invoke-virtual {p1}, Landroid/app/time/TimeZoneState;->getUserShouldConfirmId()Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x0

    goto :goto_d

    :cond_b
    const/16 v0, 0x64

    .line 359
    :goto_d
    iget-object p0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timezonedetector/Environment;

    .line 360
    invoke-virtual {p1}, Landroid/app/time/TimeZoneState;->getId()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "setTimeZoneState()"

    .line 359
    invoke-interface {p0, p1, v0, v1}, Lcom/android/server/timezonedetector/Environment;->setDeviceTimeZoneAndConfidence(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public declared-synchronized suggestManualTimeZone(ILandroid/app/timezonedetector/ManualTimeZoneSuggestion;Z)Z
    .registers 9

    monitor-enter p0

    .line 415
    :try_start_1
    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mCurrentConfigurationInternal:Lcom/android/server/timezonedetector/ConfigurationInternal;

    .line 416
    invoke-virtual {v0}, Lcom/android/server/timezonedetector/ConfigurationInternal;->getUserId()I

    move-result v1

    const/4 v2, 0x0

    if-eq v1, p1, :cond_2d

    .line 417
    const-string/jumbo p3, "time_zone_detector"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Manual suggestion received but user != current user, userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " suggestion="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_2b

    .line 425
    monitor-exit p0

    return v2

    :catchall_2b
    move-exception p1

    goto :goto_85

    .line 428
    :cond_2d
    :try_start_2d
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    invoke-virtual {p2}, Landroid/app/timezonedetector/ManualTimeZoneSuggestion;->getZoneId()Ljava/lang/String;

    move-result-object v1

    .line 431
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Manual time suggestion received: suggestion="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 434
    invoke-virtual {v0, p3}, Lcom/android/server/timezonedetector/ConfigurationInternal;->asCapabilities(Z)Landroid/app/time/TimeZoneCapabilities;

    move-result-object p3

    .line 435
    invoke-virtual {p3}, Landroid/app/time/TimeZoneCapabilities;->getSetManualTimeZoneCapability()I

    move-result v0

    const/16 v4, 0x28

    if-eq v0, v4, :cond_7a

    .line 436
    const-string/jumbo p1, "time_zone_detector"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "User does not have the capability needed to set the time zone manually: capabilities="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, ", timeZoneId="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", cause="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_78
    .catchall {:try_start_2d .. :try_end_78} :catchall_2b

    .line 445
    monitor-exit p0

    return v2

    .line 452
    :cond_7a
    :try_start_7a
    iget-object p3, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mLatestManualSuggestion:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-virtual {p3, p2}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->set(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p2, 0x1

    .line 454
    invoke-virtual {p0, v1, p2, p1, v3}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->setDeviceTimeZoneIfRequired(Ljava/lang/String;IILjava/lang/String;)V
    :try_end_83
    .catchall {:try_start_7a .. :try_end_83} :catchall_2b

    .line 455
    monitor-exit p0

    return p2

    :goto_85
    :try_start_85
    monitor-exit p0
    :try_end_86
    .catchall {:try_start_85 .. :try_end_86} :catchall_2b

    throw p1
.end method

.method public declared-synchronized suggestTelephonyTimeZone(Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;)V
    .registers 6

    monitor-enter p0

    .line 462
    :try_start_1
    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mCurrentConfigurationInternal:Lcom/android/server/timezonedetector/ConfigurationInternal;

    .line 471
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    invoke-static {p1}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->scoreTelephonySuggestion(Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;)I

    move-result v1

    .line 475
    new-instance v2, Lcom/android/server/timezonedetector/QualifiedTelephonyTimeZoneSuggestion;

    invoke-direct {v2, p1, v1}, Lcom/android/server/timezonedetector/QualifiedTelephonyTimeZoneSuggestion;-><init>(Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;I)V

    .line 479
    iget-object v1, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mTelephonySuggestionsBySlotIndex:Lcom/android/server/timezonedetector/ArrayMapWithHistory;

    invoke-virtual {p1}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->getSlotIndex()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Lcom/android/server/timezonedetector/ArrayMapWithHistory;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 483
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "New telephony time zone suggested. suggestion="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 484
    invoke-virtual {p0, v0, p1}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->doAutoTimeZoneDetection(Lcom/android/server/timezonedetector/ConfigurationInternal;Ljava/lang/String;)V
    :try_end_30
    .catchall {:try_start_1 .. :try_end_30} :catchall_32

    .line 485
    monitor-exit p0

    return-void

    :catchall_32
    move-exception p1

    :try_start_33
    monitor-exit p0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    throw p1
.end method

.method public declared-synchronized updateConfiguration(ILandroid/app/time/TimeZoneConfiguration;Z)Z
    .registers 7

    monitor-enter p0

    .line 258
    :try_start_1
    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mServiceConfigAccessor:Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    .line 259
    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/timezonedetector/ServiceConfigAccessor;->updateConfiguration(ILandroid/app/time/TimeZoneConfiguration;Z)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 267
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateConfiguration: userId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", configuration="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", bypassUserPolicyChecks="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 275
    invoke-direct {p0, p1}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->updateCurrentConfigurationInternalIfRequired(Ljava/lang/String;)V
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_2f

    goto :goto_31

    :catchall_2f
    move-exception p1

    goto :goto_33

    .line 277
    :cond_31
    :goto_31
    monitor-exit p0

    return v0

    :goto_33
    :try_start_33
    monitor-exit p0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_2f

    throw p1
.end method

.method public final updateDetectorStatus()Z
    .registers 4

    .line 932
    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mCurrentConfigurationInternal:Lcom/android/server/timezonedetector/ConfigurationInternal;

    iget-object v1, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mLatestLocationAlgorithmEvent:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    .line 934
    invoke-virtual {v1}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/timezonedetector/LocationAlgorithmEvent;

    .line 933
    invoke-static {v0, v1}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->createTimeZoneDetectorStatus(Lcom/android/server/timezonedetector/ConfigurationInternal;Lcom/android/server/timezonedetector/LocationAlgorithmEvent;)Landroid/app/time/TimeZoneDetectorStatus;

    move-result-object v0

    .line 936
    iget-object v1, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mDetectorStatus:Landroid/app/time/TimeZoneDetectorStatus;

    .line 937
    invoke-virtual {v0, v1}, Landroid/app/time/TimeZoneDetectorStatus;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v2, v1, 0x1

    if-nez v1, :cond_1a

    .line 939
    iput-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mDetectorStatus:Landroid/app/time/TimeZoneDetectorStatus;

    :cond_1a
    return v2
.end method
