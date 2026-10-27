.class public final Lcom/android/server/timedetector/TimeDetectorStrategyImpl;
.super Ljava/lang/Object;
.source "TimeDetectorStrategyImpl.java"

# interfaces
.implements Lcom/android/server/timedetector/TimeDetectorStrategy;


# static fields
.field static final MAX_SUGGESTION_TIME_AGE_MILLIS:J = 0x5265c00L

.field static final TELEPHONY_BUCKET_SIZE_MILLIS:I = 0x36ee80


# instance fields
.field public mCurrentConfigurationInternal:Lcom/android/server/timedetector/ConfigurationInternal;

.field public final mEnvironment:Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;

.field public mLastAutoSystemClockTimeSet:Landroid/app/time/UnixEpochTime;

.field public final mLastExternalSuggestion:Lcom/android/server/timezonedetector/ReferenceWithHistory;

.field public final mLastGnssSuggestion:Lcom/android/server/timezonedetector/ReferenceWithHistory;

.field public final mLastNetworkSuggestion:Lcom/android/server/timezonedetector/ReferenceWithHistory;

.field public final mNetworkTimeUpdateListeners:Landroid/util/ArraySet;

.field public final mServiceConfigAccessor:Lcom/android/server/timedetector/ServiceConfigAccessor;

.field public final mStateChangeListeners:Ljava/util/List;

.field public final mSuggestionBySlotIndex:Lcom/android/server/timezonedetector/ArrayMapWithHistory;


# direct methods
.method public static synthetic $r8$lambda$Ev1hBuSMiy0SsdTUkkpw6YwrYmA(Lcom/android/server/timedetector/TimeDetectorStrategyImpl;)V
    .registers 1

    .line 0
    invoke-virtual {p0}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->handleConfigurationInternalMaybeChanged()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;Lcom/android/server/timedetector/ServiceConfigAccessor;)V
    .registers 5

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mStateChangeListeners:Ljava/util/List;

    .line 122
    new-instance v0, Lcom/android/server/timezonedetector/ArrayMapWithHistory;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/android/server/timezonedetector/ArrayMapWithHistory;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mSuggestionBySlotIndex:Lcom/android/server/timezonedetector/ArrayMapWithHistory;

    .line 126
    new-instance v0, Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-direct {v0, v1}, Lcom/android/server/timezonedetector/ReferenceWithHistory;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mLastNetworkSuggestion:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    .line 130
    new-instance v0, Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-direct {v0, v1}, Lcom/android/server/timezonedetector/ReferenceWithHistory;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mLastGnssSuggestion:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    .line 134
    new-instance v0, Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-direct {v0, v1}, Lcom/android/server/timezonedetector/ReferenceWithHistory;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mLastExternalSuggestion:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    .line 138
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mNetworkTimeUpdateListeners:Landroid/util/ArraySet;

    .line 203
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;

    iput-object p1, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;

    .line 204
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p2, Lcom/android/server/timedetector/ServiceConfigAccessor;

    iput-object p2, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mServiceConfigAccessor:Lcom/android/server/timedetector/ServiceConfigAccessor;

    .line 206
    monitor-enter p0

    .line 208
    :try_start_3e
    new-instance p1, Lcom/android/server/timedetector/TimeDetectorStrategyImpl$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/timedetector/TimeDetectorStrategyImpl;)V

    .line 209
    invoke-interface {p2, p1}, Lcom/android/server/timedetector/ServiceConfigAccessor;->addConfigurationInternalChangeListener(Lcom/android/server/timezonedetector/StateChangeListener;)V

    .line 212
    const-string p1, "TimeDetectorStrategyImpl:"

    invoke-virtual {p0, p1}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->updateCurrentConfigurationInternalIfRequired(Ljava/lang/String;)V

    .line 213
    monitor-exit p0

    return-void

    :catchall_4d
    move-exception p1

    monitor-exit p0
    :try_end_4f
    .catchall {:try_start_3e .. :try_end_4f} :catchall_4d

    throw p1
.end method

.method public static create(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/timedetector/ServiceConfigAccessor;)Lcom/android/server/timedetector/TimeDetectorStrategy;
    .registers 4

    .line 196
    new-instance v0, Lcom/android/server/timedetector/EnvironmentImpl;

    invoke-direct {v0, p0, p1}, Lcom/android/server/timedetector/EnvironmentImpl;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 197
    new-instance p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;

    invoke-direct {p0, v0, p2}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;-><init>(Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;Lcom/android/server/timedetector/ServiceConfigAccessor;)V

    return-object p0
.end method

.method public static isOriginAutomatic(I)Z
    .registers 2

    .line 0
    const/4 v0, 0x2

    if-eq p0, v0, :cond_5

    const/4 p0, 0x1

    return p0

    :cond_5
    const/4 p0, 0x0

    return p0
.end method

.method public static scoreTelephonySuggestion(JLandroid/app/timedetector/TelephonyTimeSuggestion;)I
    .registers 6

    .line 862
    invoke-virtual {p2}, Landroid/app/timedetector/TelephonyTimeSuggestion;->getUnixEpochTime()Landroid/app/time/UnixEpochTime;

    move-result-object v0

    .line 863
    invoke-static {p0, p1, v0}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->validateSuggestionUnixEpochTime(JLandroid/app/time/UnixEpochTime;)Z

    move-result v1

    const/4 v2, -0x1

    if-nez v1, :cond_2b

    .line 864
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Existing suggestion found to be invalid elapsedRealtimeMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ", suggestion="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "time_detector"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 872
    :cond_2b
    invoke-virtual {v0}, Landroid/app/time/UnixEpochTime;->getElapsedRealtimeMillis()J

    move-result-wide v0

    sub-long/2addr p0, v0

    const-wide/32 v0, 0x36ee80

    .line 875
    div-long/2addr p0, v0

    long-to-int p0, p0

    const/16 p1, 0x18

    if-lt p0, p1, :cond_3a

    return v2

    :cond_3a
    sub-int/2addr p1, p0

    return p1
.end method

.method public static validateSuggestionUnixEpochTime(JLandroid/app/time/UnixEpochTime;)Z
    .registers 6

    .line 1216
    invoke-virtual {p2}, Landroid/app/time/UnixEpochTime;->getElapsedRealtimeMillis()J

    move-result-wide v0

    cmp-long p2, v0, p0

    const/4 v2, 0x0

    if-lez p2, :cond_a

    return v2

    :cond_a
    sub-long/2addr p0, v0

    const-wide/32 v0, 0x5265c00

    cmp-long p0, p0, v0

    if-gtz p0, :cond_14

    const/4 p0, 0x1

    return p0

    :cond_14
    return v2
.end method


# virtual methods
.method public declared-synchronized addChangeListener(Lcom/android/server/timezonedetector/StateChangeListener;)V
    .registers 3

    monitor-enter p0

    .line 445
    :try_start_1
    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mStateChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 446
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

.method public final addDebugLogEntry(Ljava/lang/String;)V
    .registers 2

    .line 563
    iget-object p0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;

    invoke-interface {p0, p1}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;->addDebugLogEntry(Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized clearLatestNetworkSuggestion()V
    .registers 3

    monitor-enter p0

    .line 360
    :try_start_1
    invoke-static {}, Lcom/android/internal/os/ApplicationSharedMemory;->getInstance()Lcom/android/internal/os/ApplicationSharedMemory;

    move-result-object v0

    .line 361
    invoke-virtual {v0}, Lcom/android/internal/os/ApplicationSharedMemory;->clearLatestNetworkTimeUnixEpochMillisAtZeroElapsedRealtimeMillis()V

    .line 362
    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mLastNetworkSuggestion:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->set(Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    invoke-virtual {p0}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->notifyNetworkTimeUpdateListenersAsynchronously()V

    .line 366
    const-string v0, "Network time cleared"

    .line 367
    invoke-virtual {p0, v0}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->doAutoTimeDetection(Ljava/lang/String;)V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_18

    .line 368
    monitor-exit p0

    return-void

    :catchall_18
    move-exception v0

    :try_start_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method public declared-synchronized confirmTime(Landroid/app/time/UnixEpochTime;)Z
    .registers 11

    monitor-enter p0

    .line 400
    :try_start_1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;

    invoke-interface {v0}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;->acquireWakeLock()V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_74

    .line 407
    :try_start_9
    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;

    invoke-interface {v0}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;->elapsedRealtimeMillis()J

    move-result-wide v3

    .line 408
    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;

    invoke-interface {v0}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;->systemClockMillis()J

    move-result-wide v5
    :try_end_15
    .catchall {:try_start_9 .. :try_end_15} :catchall_6b

    move-object v1, p0

    move-object v2, p1

    .line 409
    :try_start_17
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->isTimeWithinConfidenceThreshold(Landroid/app/time/UnixEpochTime;JJ)Z

    move-result p0

    if-eqz p0, :cond_61

    .line 413
    iget-object p1, v1, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;

    invoke-interface {p1}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;->systemClockConfidence()I

    move-result p1

    const/16 v0, 0x64

    if-ge p1, v0, :cond_61

    .line 416
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Confirm system clock time. confirmationTime="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " newTimeConfidence="

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " currentElapsedRealtimeMillis="

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " currentSystemClockMillis="

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " (old) currentTimeConfidence="

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 426
    iget-object v2, v1, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;

    invoke-interface {v2, v0, p1}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;->setSystemClockConfidence(ILjava/lang/String;)V
    :try_end_5d
    .catchall {:try_start_17 .. :try_end_5d} :catchall_5e

    goto :goto_61

    :catchall_5e
    move-exception v0

    :goto_5f
    move-object p0, v0

    goto :goto_6e

    .line 431
    :cond_61
    :goto_61
    :try_start_61
    iget-object p1, v1, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;

    invoke-interface {p1}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;->releaseWakeLock()V
    :try_end_66
    .catchall {:try_start_61 .. :try_end_66} :catchall_68

    .line 429
    monitor-exit v1

    return p0

    :catchall_68
    move-exception v0

    :goto_69
    move-object p0, v0

    goto :goto_77

    :catchall_6b
    move-exception v0

    move-object v1, p0

    goto :goto_5f

    .line 431
    :goto_6e
    :try_start_6e
    iget-object p1, v1, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;

    invoke-interface {p1}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;->releaseWakeLock()V

    .line 432
    throw p0

    :catchall_74
    move-exception v0

    move-object v1, p0

    goto :goto_69

    :goto_77
    monitor-exit v1
    :try_end_78
    .catchall {:try_start_6e .. :try_end_78} :catchall_68

    throw p0
.end method

.method public final doAutoTimeDetection(Ljava/lang/String;)V
    .registers 11

    .line 719
    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mCurrentConfigurationInternal:Lcom/android/server/timedetector/ConfigurationInternal;

    invoke-virtual {v0}, Lcom/android/server/timedetector/ConfigurationInternal;->getAutoOriginPriorities()[I

    move-result-object v0

    .line 720
    array-length v1, v0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_e3

    aget v3, v0, v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 723
    const-string v6, ", detectionReason="

    if-ne v3, v4, :cond_35

    .line 724
    invoke-virtual {p0}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->findBestTelephonySuggestion()Landroid/app/timedetector/TelephonyTimeSuggestion;

    move-result-object v4

    if-eqz v4, :cond_cc

    .line 726
    invoke-virtual {v4}, Landroid/app/timedetector/TelephonyTimeSuggestion;->getUnixEpochTime()Landroid/app/time/UnixEpochTime;

    move-result-object v5

    .line 727
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Found good telephony suggestion., bestTelephonySuggestion="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_cd

    :cond_35
    const/4 v4, 0x3

    if-ne v3, v4, :cond_5a

    .line 732
    invoke-virtual {p0}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->findLatestValidNetworkSuggestion()Lcom/android/server/timedetector/NetworkTimeSuggestion;

    move-result-object v4

    if-eqz v4, :cond_cc

    .line 734
    invoke-virtual {v4}, Lcom/android/server/timedetector/NetworkTimeSuggestion;->getUnixEpochTime()Landroid/app/time/UnixEpochTime;

    move-result-object v5

    .line 735
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Found good network suggestion., networkSuggestion="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_cd

    :cond_5a
    const/4 v4, 0x4

    if-ne v3, v4, :cond_7f

    .line 740
    invoke-virtual {p0}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->findLatestValidGnssSuggestion()Lcom/android/server/timedetector/GnssTimeSuggestion;

    move-result-object v4

    if-eqz v4, :cond_cc

    .line 742
    invoke-virtual {v4}, Lcom/android/server/timedetector/GnssTimeSuggestion;->getUnixEpochTime()Landroid/app/time/UnixEpochTime;

    move-result-object v5

    .line 743
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Found good gnss suggestion., gnssSuggestion="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_cd

    :cond_7f
    const/4 v4, 0x5

    if-ne v3, v4, :cond_a4

    .line 748
    invoke-virtual {p0}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->findLatestValidExternalSuggestion()Landroid/app/time/ExternalTimeSuggestion;

    move-result-object v4

    if-eqz v4, :cond_cc

    .line 750
    invoke-virtual {v4}, Landroid/app/time/ExternalTimeSuggestion;->getUnixEpochTime()Landroid/app/time/UnixEpochTime;

    move-result-object v5

    .line 751
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Found good external suggestion., externalSuggestion="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_cd

    .line 756
    :cond_a4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown or unsupported origin="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " in "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 757
    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": Skipping"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 756
    const-string/jumbo v6, "time_detector"

    invoke-static {v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_cc
    move-object v4, v5

    :goto_cd
    if-eqz v5, :cond_df

    .line 763
    iget-object p1, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mCurrentConfigurationInternal:Lcom/android/server/timedetector/ConfigurationInternal;

    invoke-virtual {p1}, Lcom/android/server/timedetector/ConfigurationInternal;->getAutoDetectionEnabledBehavior()Z

    move-result p1

    if-eqz p1, :cond_db

    .line 764
    invoke-virtual {p0, v3, v5, v4}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->setSystemClockAndConfidenceIfRequired(ILandroid/app/time/UnixEpochTime;Ljava/lang/String;)Z

    return-void

    .line 769
    :cond_db
    invoke-virtual {p0, v5, v4}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->upgradeSystemClockConfidenceIfRequired(Landroid/app/time/UnixEpochTime;Ljava/lang/String;)V

    return-void

    :cond_df
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_8

    :cond_e3
    return-void
.end method

.method public declared-synchronized dump(Landroid/util/IndentingPrintWriter;[Ljava/lang/String;)V
    .registers 5

    monitor-enter p0

    .line 568
    :try_start_1
    const-string p2, "TimeDetectorStrategy:"

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 569
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 571
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mLastAutoSystemClockTimeSet="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mLastAutoSystemClockTimeSet:Landroid/app/time/UnixEpochTime;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 572
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mCurrentConfigurationInternal="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mCurrentConfigurationInternal:Lcom/android/server/timedetector/ConfigurationInternal;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 574
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[Capabilities="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mCurrentConfigurationInternal:Lcom/android/server/timedetector/ConfigurationInternal;

    const/4 v1, 0x0

    .line 575
    invoke-virtual {v0, v1}, Lcom/android/server/timedetector/ConfigurationInternal;->createCapabilitiesAndConfig(Z)Landroid/app/time/TimeCapabilitiesAndConfig;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 574
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 578
    const-string p2, "mEnvironment:"

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 579
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 580
    iget-object p2, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;

    invoke-interface {p2, p1}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;->dumpDebugLog(Landroid/util/IndentingPrintWriter;)V

    .line 581
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 583
    const-string p2, "Time change log:"

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 584
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 585
    invoke-static {p1}, Lcom/android/server/SystemClockTime;->dump(Ljava/io/PrintWriter;)V

    .line 586
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 588
    const-string p2, "Telephony suggestion history:"

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 589
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 590
    iget-object p2, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mSuggestionBySlotIndex:Lcom/android/server/timezonedetector/ArrayMapWithHistory;

    invoke-virtual {p2, p1}, Lcom/android/server/timezonedetector/ArrayMapWithHistory;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 591
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 593
    const-string p2, "Network suggestion history:"

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 594
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 595
    iget-object p2, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mLastNetworkSuggestion:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-virtual {p2, p1}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 596
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 598
    const-string p2, "Gnss suggestion history:"

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 599
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 600
    iget-object p2, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mLastGnssSuggestion:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-virtual {p2, p1}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 601
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 603
    const-string p2, "External suggestion history:"

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 604
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 605
    iget-object p2, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mLastExternalSuggestion:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-virtual {p2, p1}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 606
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 608
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;
    :try_end_b6
    .catchall {:try_start_1 .. :try_end_b6} :catchall_b8

    .line 609
    monitor-exit p0

    return-void

    :catchall_b8
    move-exception p1

    :try_start_b9
    monitor-exit p0
    :try_end_ba
    .catchall {:try_start_b9 .. :try_end_ba} :catchall_b8

    throw p1
.end method

.method public final findBestTelephonySuggestion()Landroid/app/timedetector/TelephonyTimeSuggestion;
    .registers 11

    .line 785
    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;

    invoke-interface {v0}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;->elapsedRealtimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    move v5, v3

    .line 819
    :goto_a
    iget-object v6, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mSuggestionBySlotIndex:Lcom/android/server/timezonedetector/ArrayMapWithHistory;

    invoke-virtual {v6}, Lcom/android/server/timezonedetector/ArrayMapWithHistory;->size()I

    move-result v6

    if-ge v4, v6, :cond_76

    .line 820
    iget-object v6, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mSuggestionBySlotIndex:Lcom/android/server/timezonedetector/ArrayMapWithHistory;

    invoke-virtual {v6, v4}, Lcom/android/server/timezonedetector/ArrayMapWithHistory;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 821
    iget-object v7, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mSuggestionBySlotIndex:Lcom/android/server/timezonedetector/ArrayMapWithHistory;

    invoke-virtual {v7, v4}, Lcom/android/server/timezonedetector/ArrayMapWithHistory;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/timedetector/TelephonyTimeSuggestion;

    .line 822
    const-string/jumbo v8, "time_detector"

    if-nez v7, :cond_3c

    .line 824
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Latest suggestion unexpectedly null for slotIndex. slotIndex="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_73

    .line 827
    :cond_3c
    invoke-virtual {v7}, Landroid/app/timedetector/TelephonyTimeSuggestion;->getUnixEpochTime()Landroid/app/time/UnixEpochTime;

    move-result-object v6

    if-nez v6, :cond_57

    .line 829
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Latest suggestion unexpectedly empty.  candidateSuggestion="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_73

    .line 835
    :cond_57
    invoke-static {v0, v1, v7}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->scoreTelephonySuggestion(JLandroid/app/timedetector/TelephonyTimeSuggestion;)I

    move-result v6

    if-ne v6, v3, :cond_5e

    goto :goto_73

    :cond_5e
    if-eqz v2, :cond_71

    if-ge v5, v6, :cond_63

    goto :goto_71

    :cond_63
    if-ne v5, v6, :cond_73

    .line 847
    invoke-virtual {v7}, Landroid/app/timedetector/TelephonyTimeSuggestion;->getSlotIndex()I

    move-result v6

    .line 848
    invoke-virtual {v2}, Landroid/app/timedetector/TelephonyTimeSuggestion;->getSlotIndex()I

    move-result v8

    if-ge v6, v8, :cond_73

    :goto_6f
    move-object v2, v7

    goto :goto_73

    :cond_71
    :goto_71
    move v5, v6

    goto :goto_6f

    :cond_73
    :goto_73
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_76
    return-object v2
.end method

.method public declared-synchronized findBestTelephonySuggestionForTests()Landroid/app/timedetector/TelephonyTimeSuggestion;
    .registers 2

    monitor-enter p0

    .line 1154
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->findBestTelephonySuggestion()Landroid/app/timedetector/TelephonyTimeSuggestion;

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

.method public final findLatestValidExternalSuggestion()Landroid/app/time/ExternalTimeSuggestion;
    .registers 6

    .line 928
    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mLastExternalSuggestion:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/time/ExternalTimeSuggestion;

    const/4 v1, 0x0

    if-nez v0, :cond_c

    return-object v1

    .line 934
    :cond_c
    invoke-virtual {v0}, Landroid/app/time/ExternalTimeSuggestion;->getUnixEpochTime()Landroid/app/time/UnixEpochTime;

    move-result-object v2

    .line 935
    iget-object p0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;

    invoke-interface {p0}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;->elapsedRealtimeMillis()J

    move-result-wide v3

    .line 936
    invoke-static {v3, v4, v2}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->validateSuggestionUnixEpochTime(JLandroid/app/time/UnixEpochTime;)Z

    move-result p0

    if-nez p0, :cond_1d

    return-object v1

    :cond_1d
    return-object v0
.end method

.method public declared-synchronized findLatestValidExternalSuggestionForTests()Landroid/app/time/ExternalTimeSuggestion;
    .registers 2

    monitor-enter p0

    .line 1184
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->findLatestValidExternalSuggestion()Landroid/app/time/ExternalTimeSuggestion;

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

.method public final findLatestValidGnssSuggestion()Lcom/android/server/timedetector/GnssTimeSuggestion;
    .registers 6

    .line 908
    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mLastGnssSuggestion:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/timedetector/GnssTimeSuggestion;

    const/4 v1, 0x0

    if-nez v0, :cond_c

    return-object v1

    .line 914
    :cond_c
    invoke-virtual {v0}, Lcom/android/server/timedetector/GnssTimeSuggestion;->getUnixEpochTime()Landroid/app/time/UnixEpochTime;

    move-result-object v2

    .line 915
    iget-object p0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;

    invoke-interface {p0}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;->elapsedRealtimeMillis()J

    move-result-wide v3

    .line 916
    invoke-static {v3, v4, v2}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->validateSuggestionUnixEpochTime(JLandroid/app/time/UnixEpochTime;)Z

    move-result p0

    if-nez p0, :cond_1d

    return-object v1

    :cond_1d
    return-object v0
.end method

.method public declared-synchronized findLatestValidGnssSuggestionForTests()Lcom/android/server/timedetector/GnssTimeSuggestion;
    .registers 2

    monitor-enter p0

    .line 1174
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->findLatestValidGnssSuggestion()Lcom/android/server/timedetector/GnssTimeSuggestion;

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

.method public final findLatestValidNetworkSuggestion()Lcom/android/server/timedetector/NetworkTimeSuggestion;
    .registers 6

    .line 888
    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mLastNetworkSuggestion:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/timedetector/NetworkTimeSuggestion;

    const/4 v1, 0x0

    if-nez v0, :cond_c

    return-object v1

    .line 894
    :cond_c
    invoke-virtual {v0}, Lcom/android/server/timedetector/NetworkTimeSuggestion;->getUnixEpochTime()Landroid/app/time/UnixEpochTime;

    move-result-object v2

    .line 895
    iget-object p0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;

    invoke-interface {p0}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;->elapsedRealtimeMillis()J

    move-result-wide v3

    .line 896
    invoke-static {v3, v4, v2}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->validateSuggestionUnixEpochTime(JLandroid/app/time/UnixEpochTime;)Z

    move-result p0

    if-nez p0, :cond_1d

    return-object v1

    :cond_1d
    return-object v0
.end method

.method public declared-synchronized findLatestValidNetworkSuggestionForTests()Lcom/android/server/timedetector/NetworkTimeSuggestion;
    .registers 2

    monitor-enter p0

    .line 1164
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->findLatestValidNetworkSuggestion()Lcom/android/server/timedetector/NetworkTimeSuggestion;

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

.method public declared-synchronized getCachedCapabilitiesAndConfigForTests()Lcom/android/server/timedetector/ConfigurationInternal;
    .registers 2

    monitor-enter p0

    .line 613
    :try_start_1
    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mCurrentConfigurationInternal:Lcom/android/server/timedetector/ConfigurationInternal;
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

.method public declared-synchronized getCapabilitiesAndConfig(IZ)Landroid/app/time/TimeCapabilitiesAndConfig;
    .registers 4

    monitor-enter p0

    .line 452
    :try_start_1
    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mCurrentConfigurationInternal:Lcom/android/server/timedetector/ConfigurationInternal;

    invoke-virtual {v0}, Lcom/android/server/timedetector/ConfigurationInternal;->getUserId()I

    move-result v0

    if-ne v0, p1, :cond_e

    .line 454
    iget-object p1, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mCurrentConfigurationInternal:Lcom/android/server/timedetector/ConfigurationInternal;

    goto :goto_14

    :catchall_c
    move-exception p1

    goto :goto_1a

    .line 460
    :cond_e
    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mServiceConfigAccessor:Lcom/android/server/timedetector/ServiceConfigAccessor;

    invoke-interface {v0, p1}, Lcom/android/server/timedetector/ServiceConfigAccessor;->getConfigurationInternal(I)Lcom/android/server/timedetector/ConfigurationInternal;

    move-result-object p1

    .line 462
    :goto_14
    invoke-virtual {p1, p2}, Lcom/android/server/timedetector/ConfigurationInternal;->createCapabilitiesAndConfig(Z)Landroid/app/time/TimeCapabilitiesAndConfig;

    move-result-object p1
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_c

    monitor-exit p0

    return-object p1

    :goto_1a
    :try_start_1a
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_c

    throw p1
.end method

.method public declared-synchronized getLatestExternalSuggestion()Landroid/app/time/ExternalTimeSuggestion;
    .registers 2

    monitor-enter p0

    .line 1210
    :try_start_1
    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mLastExternalSuggestion:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/time/ExternalTimeSuggestion;
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

.method public declared-synchronized getLatestGnssSuggestion()Lcom/android/server/timedetector/GnssTimeSuggestion;
    .registers 2

    monitor-enter p0

    .line 1201
    :try_start_1
    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mLastGnssSuggestion:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/timedetector/GnssTimeSuggestion;
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

.method public declared-synchronized getLatestNetworkSuggestion()Lcom/android/server/timedetector/NetworkTimeSuggestion;
    .registers 2

    monitor-enter p0

    .line 355
    :try_start_1
    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mLastNetworkSuggestion:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/timedetector/NetworkTimeSuggestion;
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

.method public declared-synchronized getLatestTelephonySuggestion(I)Landroid/app/timedetector/TelephonyTimeSuggestion;
    .registers 3

    monitor-enter p0

    .line 1192
    :try_start_1
    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mSuggestionBySlotIndex:Lcom/android/server/timezonedetector/ArrayMapWithHistory;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/server/timezonedetector/ArrayMapWithHistory;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/timedetector/TelephonyTimeSuggestion;
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

.method public declared-synchronized getTimeState()Landroid/app/time/TimeState;
    .registers 7

    monitor-enter p0

    .line 373
    :try_start_1
    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;

    invoke-interface {v0}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;->systemClockConfidence()I

    move-result v0

    const/16 v1, 0x64

    if-ge v0, v1, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    .line 374
    :goto_e
    new-instance v1, Landroid/app/time/UnixEpochTime;

    iget-object v2, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;

    .line 375
    invoke-interface {v2}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;->elapsedRealtimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;

    invoke-interface {v4}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;->systemClockMillis()J

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/app/time/UnixEpochTime;-><init>(JJ)V

    .line 376
    new-instance v2, Landroid/app/time/TimeState;

    invoke-direct {v2, v1, v0}, Landroid/app/time/TimeState;-><init>(Landroid/app/time/UnixEpochTime;Z)V
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_26

    monitor-exit p0

    return-object v2

    :catchall_26
    move-exception v0

    :try_start_27
    monitor-exit p0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    throw v0
.end method

.method public final declared-synchronized handleConfigurationInternalMaybeChanged()V
    .registers 2

    monitor-enter p0

    .line 517
    :try_start_1
    const-string v0, "handleConfigurationInternalMaybeChanged:"

    .line 518
    invoke-virtual {p0, v0}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->updateCurrentConfigurationInternalIfRequired(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 519
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

.method public final isTimeWithinConfidenceThreshold(Landroid/app/time/UnixEpochTime;JJ)Z
    .registers 6

    .line 1039
    invoke-virtual {p1, p2, p3}, Landroid/app/time/UnixEpochTime;->at(J)Landroid/app/time/UnixEpochTime;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/time/UnixEpochTime;->getUnixEpochTimeMillis()J

    move-result-wide p1

    sub-long/2addr p1, p4

    .line 1041
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(J)J

    move-result-wide p1

    .line 1042
    iget-object p0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mCurrentConfigurationInternal:Lcom/android/server/timedetector/ConfigurationInternal;

    .line 1043
    invoke-virtual {p0}, Lcom/android/server/timedetector/ConfigurationInternal;->getSystemClockConfidenceThresholdMillis()I

    move-result p0

    int-to-long p3, p0

    cmp-long p0, p1, p3

    if-gtz p0, :cond_1a

    const/4 p0, 0x1

    return p0

    :cond_1a
    const/4 p0, 0x0

    return p0
.end method

.method public final notifyNetworkTimeUpdateListenersAsynchronously()V
    .registers 5

    .line 340
    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mNetworkTimeUpdateListeners:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/timezonedetector/StateChangeListener;

    .line 342
    iget-object v2, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/server/timedetector/TimeDetectorStrategyImpl$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/timezonedetector/StateChangeListener;)V

    invoke-interface {v2, v3}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;->runAsync(Ljava/lang/Runnable;)V

    goto :goto_6

    :cond_20
    return-void
.end method

.method public final notifyStateChangeListenersAsynchronously()V
    .registers 5

    .line 437
    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mStateChangeListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/timezonedetector/StateChangeListener;

    .line 439
    iget-object v2, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/server/timedetector/TimeDetectorStrategyImpl$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/timezonedetector/StateChangeListener;)V

    invoke-interface {v2, v3}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;->runAsync(Ljava/lang/Runnable;)V

    goto :goto_6

    :cond_20
    return-void
.end method

.method public final setSystemClockAndConfidenceIfRequired(ILandroid/app/time/UnixEpochTime;Ljava/lang/String;)Z
    .registers 6

    .line 951
    invoke-static {p1}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->isOriginAutomatic(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    .line 953
    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mCurrentConfigurationInternal:Lcom/android/server/timedetector/ConfigurationInternal;

    invoke-virtual {v0}, Lcom/android/server/timedetector/ConfigurationInternal;->getAutoDetectionEnabledBehavior()Z

    move-result v0

    if-nez v0, :cond_19

    return v1

    .line 964
    :cond_10
    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mCurrentConfigurationInternal:Lcom/android/server/timedetector/ConfigurationInternal;

    invoke-virtual {v0}, Lcom/android/server/timedetector/ConfigurationInternal;->getAutoDetectionEnabledBehavior()Z

    move-result v0

    if-eqz v0, :cond_19

    return v1

    .line 975
    :cond_19
    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;

    invoke-interface {v0}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;->acquireWakeLock()V

    const/16 v0, 0x64

    .line 977
    :try_start_20
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->setSystemClockAndConfidenceUnderWakeLock(ILandroid/app/time/UnixEpochTime;ILjava/lang/String;)Z

    move-result p1
    :try_end_24
    .catchall {:try_start_20 .. :try_end_24} :catchall_2a

    .line 979
    iget-object p0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;

    invoke-interface {p0}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;->releaseWakeLock()V

    return p1

    :catchall_2a
    move-exception p1

    iget-object p0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;

    invoke-interface {p0}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;->releaseWakeLock()V

    .line 980
    throw p1
.end method

.method public final setSystemClockAndConfidenceUnderWakeLock(ILandroid/app/time/UnixEpochTime;ILjava/lang/String;)Z
    .registers 27

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p4

    .line 1052
    iget-object v4, v0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;

    invoke-interface {v4}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;->elapsedRealtimeMillis()J

    move-result-wide v4

    .line 1053
    invoke-static/range {p1 .. p1}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->isOriginAutomatic(I)Z

    move-result v6

    .line 1054
    iget-object v7, v0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;

    invoke-interface {v7}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;->systemClockMillis()J

    move-result-wide v7

    .line 1055
    const-string v9, " cause="

    const-string v10, " elapsedRealtimeMillis="

    if-eqz v6, :cond_6d

    .line 1058
    iget-object v6, v0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mLastAutoSystemClockTimeSet:Landroid/app/time/UnixEpochTime;

    if-eqz v6, :cond_6d

    .line 1059
    invoke-virtual {v6, v4, v5}, Landroid/app/time/UnixEpochTime;->at(J)Landroid/app/time/UnixEpochTime;

    move-result-object v6

    .line 1060
    invoke-virtual {v6}, Landroid/app/time/UnixEpochTime;->getUnixEpochTimeMillis()J

    move-result-wide v11

    sub-long v13, v11, v7

    .line 1062
    invoke-static {v13, v14}, Ljava/lang/Math;->abs(J)J

    move-result-wide v13

    const-wide/16 v15, 0x7d0

    cmp-long v6, v13, v15

    if-lez v6, :cond_6d

    .line 1064
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "System clock has not tracked elapsed real time clock. A clock may be inaccurate or something unexpectedly set the system clock. origin="

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1068
    invoke-static/range {p1 .. p1}, Lcom/android/server/timedetector/TimeDetectorStrategy;->originToString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v13, " expectedTimeMillis="

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, " actualTimeMillis="

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1064
    const-string/jumbo v11, "time_detector"

    invoke-static {v11, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1081
    :cond_6d
    invoke-virtual {v1, v4, v5}, Landroid/app/time/UnixEpochTime;->at(J)Landroid/app/time/UnixEpochTime;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/time/UnixEpochTime;->getUnixEpochTimeMillis()J

    move-result-wide v11

    sub-long v13, v11, v7

    .line 1082
    invoke-static {v13, v14}, Ljava/lang/Math;->abs(J)J

    move-result-wide v13

    .line 1083
    iget-object v6, v0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mCurrentConfigurationInternal:Lcom/android/server/timedetector/ConfigurationInternal;

    .line 1084
    invoke-virtual {v6}, Lcom/android/server/timedetector/ConfigurationInternal;->getSystemClockUpdateThresholdMillis()I

    move-result v6

    move-wide v15, v13

    int-to-long v13, v6

    cmp-long v6, v15, v13

    const/4 v13, 0x0

    if-ltz v6, :cond_8a

    const/4 v6, 0x1

    goto :goto_8b

    :cond_8a
    move v6, v13

    .line 1087
    :goto_8b
    iget-object v15, v0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;

    invoke-interface {v15}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;->systemClockConfidence()I

    move-result v15

    if-eq v2, v15, :cond_94

    const/4 v13, 0x1

    :cond_94
    const/16 v16, 0x1

    .line 1090
    const-string v14, " currentTimeConfidence="

    move/from16 v17, v6

    const-string v6, " newSystemClockMillis="

    move/from16 v18, v13

    const-string v13, " (old) actualSystemClockMillis="

    const-string v0, " newTimeConfidence="

    move/from16 v19, v15

    const-string v15, " newTime="

    if-eqz v17, :cond_105

    move-object/from16 v17, v14

    .line 1091
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v20, v11

    const-string v11, "Set system clock & confidence. origin="

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1092
    invoke-static/range {p1 .. p1}, Lcom/android/server/timedetector/TimeDetectorStrategy;->originToString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v11, v20

    invoke-virtual {v14, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v14, p0

    .line 1100
    iget-object v3, v14, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;

    invoke-interface {v3, v11, v12, v2, v0}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;->setSystemClock(JILjava/lang/String;)V

    .line 1107
    invoke-static/range {p1 .. p1}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->isOriginAutomatic(I)Z

    move-result v0

    if-eqz v0, :cond_101

    .line 1108
    iput-object v1, v14, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mLastAutoSystemClockTimeSet:Landroid/app/time/UnixEpochTime;

    goto :goto_157

    :cond_101
    const/4 v0, 0x0

    .line 1110
    iput-object v0, v14, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mLastAutoSystemClockTimeSet:Landroid/app/time/UnixEpochTime;

    goto :goto_157

    :cond_105
    if-eqz v18, :cond_157

    move-object/from16 v17, v14

    .line 1117
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v20, v11

    const-string v11, "Set system clock confidence. origin="

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1118
    invoke-static/range {p1 .. p1}, Lcom/android/server/timedetector/TimeDetectorStrategy;->originToString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v11, v20

    invoke-virtual {v14, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v14, p0

    .line 1129
    iget-object v1, v14, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;

    invoke-interface {v1, v2, v0}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;->setSystemClockConfidence(ILjava/lang/String;)V

    :cond_157
    :goto_157
    return v16
.end method

.method public declared-synchronized setTimeState(Landroid/app/time/TimeState;)V
    .registers 5

    monitor-enter p0

    .line 381
    :try_start_1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    invoke-virtual {p1}, Landroid/app/time/TimeState;->getUserShouldConfirmTime()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    goto :goto_e

    :cond_c
    const/16 v0, 0x64

    .line 385
    :goto_e
    iget-object v1, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;

    invoke-interface {v1}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;->acquireWakeLock()V
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_25

    .line 390
    :try_start_13
    invoke-virtual {p1}, Landroid/app/time/TimeState;->getUnixEpochTime()Landroid/app/time/UnixEpochTime;

    move-result-object p1

    .line 391
    const-string/jumbo v1, "setTimeState()"

    const/4 v2, 0x2

    invoke-virtual {p0, v2, p1, v0, v1}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->setSystemClockAndConfidenceUnderWakeLock(ILandroid/app/time/UnixEpochTime;ILjava/lang/String;)Z
    :try_end_1e
    .catchall {:try_start_13 .. :try_end_1e} :catchall_27

    .line 394
    :try_start_1e
    iget-object p1, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;

    invoke-interface {p1}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;->releaseWakeLock()V
    :try_end_23
    .catchall {:try_start_1e .. :try_end_23} :catchall_25

    .line 396
    monitor-exit p0

    return-void

    :catchall_25
    move-exception p1

    goto :goto_2e

    :catchall_27
    move-exception p1

    .line 394
    :try_start_28
    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;

    invoke-interface {v0}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;->releaseWakeLock()V

    .line 395
    throw p1

    :goto_2e
    monitor-exit p0
    :try_end_2f
    .catchall {:try_start_28 .. :try_end_2f} :catchall_25

    throw p1
.end method

.method public final storeTelephonySuggestion(Landroid/app/timedetector/TelephonyTimeSuggestion;)Z
    .registers 12

    .line 618
    invoke-virtual {p1}, Landroid/app/timedetector/TelephonyTimeSuggestion;->getUnixEpochTime()Landroid/app/time/UnixEpochTime;

    move-result-object v0

    .line 620
    invoke-virtual {p1}, Landroid/app/timedetector/TelephonyTimeSuggestion;->getSlotIndex()I

    move-result v1

    .line 621
    iget-object v2, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mSuggestionBySlotIndex:Lcom/android/server/timezonedetector/ArrayMapWithHistory;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/timezonedetector/ArrayMapWithHistory;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/timedetector/TelephonyTimeSuggestion;

    if-eqz v2, :cond_70

    .line 624
    invoke-virtual {v2}, Landroid/app/timedetector/TelephonyTimeSuggestion;->getUnixEpochTime()Landroid/app/time/UnixEpochTime;

    move-result-object v3

    const/4 v4, 0x0

    const-string/jumbo v5, "time_detector"

    if-nez v3, :cond_3d

    .line 626
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Previous suggestion is null or has a null time. previousSuggestion="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", suggestion="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    .line 633
    :cond_3d
    invoke-virtual {v2}, Landroid/app/timedetector/TelephonyTimeSuggestion;->getUnixEpochTime()Landroid/app/time/UnixEpochTime;

    move-result-object v3

    .line 632
    invoke-static {v0, v3}, Landroid/app/time/UnixEpochTime;->elapsedRealtimeDifference(Landroid/app/time/UnixEpochTime;Landroid/app/time/UnixEpochTime;)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-gez v0, :cond_70

    .line 636
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Out of order telephony suggestion received. referenceTimeDifference="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " previousSuggestion="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " suggestion="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    .line 645
    :cond_70
    iget-object p0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mSuggestionBySlotIndex:Lcom/android/server/timezonedetector/ArrayMapWithHistory;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/timezonedetector/ArrayMapWithHistory;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    return p0
.end method

.method public declared-synchronized suggestExternalTime(Landroid/app/time/ExternalTimeSuggestion;)V
    .registers 4

    monitor-enter p0

    .line 224
    :try_start_1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    invoke-virtual {p1}, Landroid/app/time/ExternalTimeSuggestion;->getUnixEpochTime()Landroid/app/time/UnixEpochTime;

    move-result-object v0

    .line 228
    invoke-virtual {p0, v0, p1}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->validateAutoSuggestionTime(Landroid/app/time/UnixEpochTime;Ljava/lang/Object;)Z

    move-result v0
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_2b

    if-nez v0, :cond_10

    .line 229
    monitor-exit p0

    return-void

    .line 232
    :cond_10
    :try_start_10
    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mLastExternalSuggestion:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-virtual {v0, p1}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->set(Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "External time suggestion received: suggestion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 235
    invoke-virtual {p0, p1}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->doAutoTimeDetection(Ljava/lang/String;)V
    :try_end_29
    .catchall {:try_start_10 .. :try_end_29} :catchall_2b

    .line 236
    monitor-exit p0

    return-void

    :catchall_2b
    move-exception p1

    :try_start_2c
    monitor-exit p0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    throw p1
.end method

.method public declared-synchronized suggestGnssTime(Lcom/android/server/timedetector/GnssTimeSuggestion;)V
    .registers 4

    monitor-enter p0

    .line 246
    :try_start_1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    invoke-virtual {p1}, Lcom/android/server/timedetector/GnssTimeSuggestion;->getUnixEpochTime()Landroid/app/time/UnixEpochTime;

    move-result-object v0

    .line 250
    invoke-virtual {p0, v0, p1}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->validateAutoSuggestionTime(Landroid/app/time/UnixEpochTime;Ljava/lang/Object;)Z

    move-result v0
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_2b

    if-nez v0, :cond_10

    .line 251
    monitor-exit p0

    return-void

    .line 254
    :cond_10
    :try_start_10
    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mLastGnssSuggestion:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-virtual {v0, p1}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->set(Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GNSS time suggestion received: suggestion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 257
    invoke-virtual {p0, p1}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->doAutoTimeDetection(Ljava/lang/String;)V
    :try_end_29
    .catchall {:try_start_10 .. :try_end_29} :catchall_2b

    .line 258
    monitor-exit p0

    return-void

    :catchall_2b
    move-exception p1

    :try_start_2c
    monitor-exit p0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    throw p1
.end method

.method public declared-synchronized suggestManualTime(ILandroid/app/timedetector/ManualTimeSuggestion;Z)Z
    .registers 8

    monitor-enter p0

    .line 265
    :try_start_1
    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mCurrentConfigurationInternal:Lcom/android/server/timedetector/ConfigurationInternal;

    .line 266
    invoke-virtual {v0}, Lcom/android/server/timedetector/ConfigurationInternal;->getUserId()I

    move-result v1

    const/4 v2, 0x0

    if-eq v1, p1, :cond_2d

    .line 267
    const-string/jumbo p3, "time_detector"

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

    .line 271
    monitor-exit p0

    return v2

    :catchall_2b
    move-exception p1

    goto :goto_8d

    .line 274
    :cond_2d
    :try_start_2d
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Manual time suggestion received: suggestion="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 278
    invoke-virtual {v0, p3}, Lcom/android/server/timedetector/ConfigurationInternal;->createCapabilitiesAndConfig(Z)Landroid/app/time/TimeCapabilitiesAndConfig;

    move-result-object p3

    .line 279
    invoke-virtual {p3}, Landroid/app/time/TimeCapabilitiesAndConfig;->getCapabilities()Landroid/app/time/TimeCapabilities;

    move-result-object p3

    .line 280
    invoke-virtual {p3}, Landroid/app/time/TimeCapabilities;->getSetManualTimeCapability()I

    move-result v0

    const/16 v1, 0x28

    if-eq v0, v1, :cond_7a

    .line 281
    const-string/jumbo v0, "time_detector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "User does not have the capability needed to set the time manually: capabilities="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, ", suggestion="

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", cause="

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_78
    .catchall {:try_start_2d .. :try_end_78} :catchall_2b

    .line 285
    monitor-exit p0

    return v2

    .line 288
    :cond_7a
    :try_start_7a
    invoke-virtual {p2}, Landroid/app/timedetector/ManualTimeSuggestion;->getUnixEpochTime()Landroid/app/time/UnixEpochTime;

    move-result-object p3

    .line 290
    invoke-virtual {p0, p3, p2}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->validateManualSuggestionTime(Landroid/app/time/UnixEpochTime;Ljava/lang/Object;)Z

    move-result p2
    :try_end_82
    .catchall {:try_start_7a .. :try_end_82} :catchall_2b

    if-nez p2, :cond_86

    .line 291
    monitor-exit p0

    return v2

    :cond_86
    const/4 p2, 0x2

    .line 294
    :try_start_87
    invoke-virtual {p0, p2, p3, p1}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->setSystemClockAndConfidenceIfRequired(ILandroid/app/time/UnixEpochTime;Ljava/lang/String;)Z

    move-result p1
    :try_end_8b
    .catchall {:try_start_87 .. :try_end_8b} :catchall_2b

    monitor-exit p0

    return p1

    :goto_8d
    :try_start_8d
    monitor-exit p0
    :try_end_8e
    .catchall {:try_start_8d .. :try_end_8e} :catchall_2b

    throw p1
.end method

.method public declared-synchronized suggestNetworkTime(Lcom/android/server/timedetector/NetworkTimeSuggestion;)V
    .registers 7

    monitor-enter p0

    .line 305
    :try_start_1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    invoke-virtual {p1}, Lcom/android/server/timedetector/NetworkTimeSuggestion;->getUnixEpochTime()Landroid/app/time/UnixEpochTime;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->validateAutoSuggestionTime(Landroid/app/time/UnixEpochTime;Ljava/lang/Object;)Z

    move-result v0
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_21

    if-nez v0, :cond_10

    .line 308
    monitor-exit p0

    return-void

    .line 318
    :cond_10
    :try_start_10
    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mLastNetworkSuggestion:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/timedetector/NetworkTimeSuggestion;

    if-eqz v0, :cond_23

    .line 319
    invoke-virtual {v0, p1}, Lcom/android/server/timedetector/NetworkTimeSuggestion;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3f

    goto :goto_23

    :catchall_21
    move-exception p1

    goto :goto_55

    .line 320
    :cond_23
    :goto_23
    invoke-virtual {p1}, Lcom/android/server/timedetector/NetworkTimeSuggestion;->getUnixEpochTime()Landroid/app/time/UnixEpochTime;

    move-result-object v0

    .line 322
    invoke-virtual {v0}, Landroid/app/time/UnixEpochTime;->getUnixEpochTimeMillis()J

    move-result-wide v1

    .line 323
    invoke-virtual {v0}, Landroid/app/time/UnixEpochTime;->getElapsedRealtimeMillis()J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 324
    invoke-static {}, Lcom/android/internal/os/ApplicationSharedMemory;->getInstance()Lcom/android/internal/os/ApplicationSharedMemory;

    move-result-object v0

    .line 325
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/ApplicationSharedMemory;->setLatestNetworkTimeUnixEpochMillisAtZeroElapsedRealtimeMillis(J)V

    .line 328
    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mLastNetworkSuggestion:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-virtual {v0, p1}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->set(Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    invoke-virtual {p0}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->notifyNetworkTimeUpdateListenersAsynchronously()V

    .line 334
    :cond_3f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "New network time suggested. suggestion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 335
    invoke-virtual {p0, p1}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->doAutoTimeDetection(Ljava/lang/String;)V
    :try_end_53
    .catchall {:try_start_10 .. :try_end_53} :catchall_21

    .line 336
    monitor-exit p0

    return-void

    :goto_55
    :try_start_55
    monitor-exit p0
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_21

    throw p1
.end method

.method public declared-synchronized suggestTelephonyTime(Landroid/app/timedetector/TelephonyTimeSuggestion;)V
    .registers 4

    monitor-enter p0

    .line 494
    :try_start_1
    invoke-virtual {p1}, Landroid/app/timedetector/TelephonyTimeSuggestion;->getUnixEpochTime()Landroid/app/time/UnixEpochTime;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_33

    if-nez v0, :cond_9

    .line 495
    monitor-exit p0

    return-void

    .line 498
    :cond_9
    :try_start_9
    invoke-virtual {p1}, Landroid/app/timedetector/TelephonyTimeSuggestion;->getUnixEpochTime()Landroid/app/time/UnixEpochTime;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->validateAutoSuggestionTime(Landroid/app/time/UnixEpochTime;Ljava/lang/Object;)Z

    move-result v0
    :try_end_11
    .catchall {:try_start_9 .. :try_end_11} :catchall_33

    if-nez v0, :cond_15

    .line 499
    monitor-exit p0

    return-void

    .line 503
    :cond_15
    :try_start_15
    invoke-virtual {p0, p1}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->storeTelephonySuggestion(Landroid/app/timedetector/TelephonyTimeSuggestion;)Z

    move-result v0
    :try_end_19
    .catchall {:try_start_15 .. :try_end_19} :catchall_33

    if-nez v0, :cond_1d

    .line 504
    monitor-exit p0

    return-void

    .line 509
    :cond_1d
    :try_start_1d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "New telephony time suggested. suggestion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 510
    invoke-virtual {p0, p1}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->doAutoTimeDetection(Ljava/lang/String;)V
    :try_end_31
    .catchall {:try_start_1d .. :try_end_31} :catchall_33

    .line 511
    monitor-exit p0

    return-void

    :catchall_33
    move-exception p1

    :try_start_34
    monitor-exit p0
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    throw p1
.end method

.method public declared-synchronized updateConfiguration(ILandroid/app/time/TimeConfiguration;Z)Z
    .registers 7

    monitor-enter p0

    .line 469
    :try_start_1
    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mServiceConfigAccessor:Lcom/android/server/timedetector/ServiceConfigAccessor;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/timedetector/ServiceConfigAccessor;->updateConfiguration(ILandroid/app/time/TimeConfiguration;Z)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 477
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

    .line 481
    invoke-virtual {p0, p1}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->updateCurrentConfigurationInternalIfRequired(Ljava/lang/String;)V
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_2f

    goto :goto_31

    :catchall_2f
    move-exception p1

    goto :goto_33

    .line 483
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

.method public final updateCurrentConfigurationInternalIfRequired(Ljava/lang/String;)V
    .registers 5

    .line 523
    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mServiceConfigAccessor:Lcom/android/server/timedetector/ServiceConfigAccessor;

    .line 524
    invoke-interface {v0}, Lcom/android/server/timedetector/ServiceConfigAccessor;->getCurrentUserConfigurationInternal()Lcom/android/server/timedetector/ConfigurationInternal;

    move-result-object v0

    .line 526
    iget-object v1, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mCurrentConfigurationInternal:Lcom/android/server/timedetector/ConfigurationInternal;

    .line 530
    invoke-virtual {v0, v1}, Lcom/android/server/timedetector/ConfigurationInternal;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_45

    .line 531
    iput-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mCurrentConfigurationInternal:Lcom/android/server/timedetector/ConfigurationInternal;

    .line 533
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, " [oldConfiguration="

    .line 534
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", newConfiguration="

    .line 535
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    .line 536
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 537
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 538
    invoke-virtual {p0, p1}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->addDebugLogEntry(Ljava/lang/String;)V

    .line 541
    invoke-virtual {p0}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->notifyStateChangeListenersAsynchronously()V

    .line 543
    iget-object p1, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mCurrentConfigurationInternal:Lcom/android/server/timedetector/ConfigurationInternal;

    .line 544
    invoke-virtual {p1}, Lcom/android/server/timedetector/ConfigurationInternal;->getAutoDetectionEnabledBehavior()Z

    move-result p1

    if-eqz p1, :cond_42

    .line 549
    const-string p1, "Auto time detection config changed."

    .line 550
    invoke-virtual {p0, p1}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->doAutoTimeDetection(Ljava/lang/String;)V

    return-void

    :cond_42
    const/4 p1, 0x0

    .line 554
    iput-object p1, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mLastAutoSystemClockTimeSet:Landroid/app/time/UnixEpochTime;

    :cond_45
    return-void
.end method

.method public final upgradeSystemClockConfidenceIfRequired(Landroid/app/time/UnixEpochTime;Ljava/lang/String;)V
    .registers 12

    .line 995
    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;

    invoke-interface {v0}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;->systemClockConfidence()I

    move-result v0

    const/16 v1, 0x64

    if-ge v0, v1, :cond_74

    .line 1002
    iget-object v2, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;

    invoke-interface {v2}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;->acquireWakeLock()V

    .line 1006
    :try_start_f
    iget-object v2, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;

    invoke-interface {v2}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;->elapsedRealtimeMillis()J

    move-result-wide v5

    .line 1007
    iget-object v2, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;

    invoke-interface {v2}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;->systemClockMillis()J

    move-result-wide v7
    :try_end_1b
    .catchall {:try_start_f .. :try_end_1b} :catchall_6b

    move-object v3, p0

    move-object v4, p1

    .line 1008
    :try_start_1d
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->isTimeWithinConfidenceThreshold(Landroid/app/time/UnixEpochTime;JJ)Z

    move-result p0

    if-eqz p0, :cond_65

    .line 1012
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Upgrade system clock confidence. autoDetectedUnixEpochTime="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " newTimeConfidence="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " cause="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " currentElapsedRealtimeMillis="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " currentSystemClockMillis="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " currentTimeConfidence="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1023
    iget-object p1, v3, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;

    invoke-interface {p1, v1, p0}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;->setSystemClockConfidence(ILjava/lang/String;)V
    :try_end_61
    .catchall {:try_start_1d .. :try_end_61} :catchall_62

    goto :goto_65

    :catchall_62
    move-exception v0

    :goto_63
    move-object p0, v0

    goto :goto_6e

    .line 1026
    :cond_65
    :goto_65
    iget-object p0, v3, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;

    invoke-interface {p0}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;->releaseWakeLock()V

    return-void

    :catchall_6b
    move-exception v0

    move-object v3, p0

    goto :goto_63

    :goto_6e
    iget-object p1, v3, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;

    invoke-interface {p1}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;->releaseWakeLock()V

    .line 1027
    throw p0

    :cond_74
    return-void
.end method

.method public final validateAutoSuggestionTime(Landroid/app/time/UnixEpochTime;Ljava/lang/Object;)Z
    .registers 5

    .line 681
    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mCurrentConfigurationInternal:Lcom/android/server/timedetector/ConfigurationInternal;

    invoke-virtual {v0}, Lcom/android/server/timedetector/ConfigurationInternal;->getAutoSuggestionLowerBound()Ljava/time/Instant;

    move-result-object v0

    .line 682
    invoke-virtual {p0, p1, p2}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->validateSuggestionCommon(Landroid/app/time/UnixEpochTime;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 683
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->validateSuggestionAgainstLowerBound(Landroid/app/time/UnixEpochTime;Ljava/lang/Object;Ljava/time/Instant;)Z

    move-result p0

    if-eqz p0, :cond_14

    const/4 p0, 0x1

    return p0

    :cond_14
    const/4 p0, 0x0

    return p0
.end method

.method public final validateManualSuggestionTime(Landroid/app/time/UnixEpochTime;Ljava/lang/Object;)Z
    .registers 5

    .line 694
    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mCurrentConfigurationInternal:Lcom/android/server/timedetector/ConfigurationInternal;

    invoke-virtual {v0}, Lcom/android/server/timedetector/ConfigurationInternal;->getManualSuggestionLowerBound()Ljava/time/Instant;

    move-result-object v0

    .line 697
    invoke-virtual {p0, p1, p2}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->validateSuggestionCommon(Landroid/app/time/UnixEpochTime;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 698
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->validateSuggestionAgainstLowerBound(Landroid/app/time/UnixEpochTime;Ljava/lang/Object;Ljava/time/Instant;)Z

    move-result p0

    if-eqz p0, :cond_14

    const/4 p0, 0x1

    return p0

    :cond_14
    const/4 p0, 0x0

    return p0
.end method

.method public final validateSuggestionAgainstLowerBound(Landroid/app/time/UnixEpochTime;Ljava/lang/Object;Ljava/time/Instant;)Z
    .registers 6

    .line 707
    invoke-virtual {p3}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/app/time/UnixEpochTime;->getUnixEpochTimeMillis()J

    move-result-wide p0

    cmp-long p0, v0, p0

    if-lez p0, :cond_2d

    .line 708
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Suggestion points to time before lower bound, skipping it. suggestion="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", lower bound="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "time_detector"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_2d
    const/4 p0, 0x1

    return p0
.end method

.method public final validateSuggestionCommon(Landroid/app/time/UnixEpochTime;Ljava/lang/Object;)Z
    .registers 8

    .line 653
    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;

    invoke-interface {v0}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;->elapsedRealtimeMillis()J

    move-result-wide v0

    .line 654
    invoke-virtual {p1}, Landroid/app/time/UnixEpochTime;->getElapsedRealtimeMillis()J

    move-result-wide v2

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    const-string/jumbo v4, "time_detector"

    if-gez v2, :cond_2f

    .line 656
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "New elapsed realtime is in the future? Ignoring. elapsedRealtimeMillis="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", suggestion="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 662
    :cond_2f
    invoke-virtual {p1}, Landroid/app/time/UnixEpochTime;->getUnixEpochTimeMillis()J

    move-result-wide v0

    iget-object p0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mCurrentConfigurationInternal:Lcom/android/server/timedetector/ConfigurationInternal;

    .line 663
    invoke-virtual {p0}, Lcom/android/server/timedetector/ConfigurationInternal;->getSuggestionUpperBound()Ljava/time/Instant;

    move-result-object p0

    invoke-virtual {p0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide p0

    cmp-long p0, v0, p0

    if-lez p0, :cond_56

    .line 667
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Suggested value is above max time supported by this device. suggestion="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_56
    const/4 p0, 0x1

    return p0
.end method
