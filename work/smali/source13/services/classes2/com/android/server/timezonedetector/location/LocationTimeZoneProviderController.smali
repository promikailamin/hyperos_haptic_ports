.class Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;
.super Ljava/lang/Object;
.source "LocationTimeZoneProviderController.java"

# interfaces
.implements Lcom/android/server/timezonedetector/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController$MetricsLogger;,
        Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController$Callback;,
        Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController$Environment;,
        Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController$State;
    }
.end annotation


# static fields
.field static final STATE_CERTAIN:Ljava/lang/String; = "CERTAIN"

.field static final STATE_DESTROYED:Ljava/lang/String; = "DESTROYED"

.field static final STATE_FAILED:Ljava/lang/String; = "FAILED"

.field static final STATE_INITIALIZING:Ljava/lang/String; = "INITIALIZING"

.field static final STATE_PROVIDERS_INITIALIZING:Ljava/lang/String; = "PROVIDERS_INITIALIZING"

.field static final STATE_STOPPED:Ljava/lang/String; = "STOPPED"

.field static final STATE_UNCERTAIN:Ljava/lang/String; = "UNCERTAIN"

.field static final STATE_UNKNOWN:Ljava/lang/String; = "UNKNOWN"


# instance fields
.field private mCallback:Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController$Callback;

.field private mCurrentUserConfiguration:Lcom/android/server/timezonedetector/ConfigurationInternal;

.field private mEnvironment:Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController$Environment;

.field private mLastSuggestion:Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;

.field private final mMetricsLogger:Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController$MetricsLogger;

.field private final mPrimaryProvider:Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;

.field private final mRecordStateChanges:Z

.field private final mRecordedStates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSecondaryProvider:Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;

.field private final mSharedLock:Ljava/lang/Object;

.field private final mState:Lcom/android/server/timezonedetector/ReferenceWithHistory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/timezonedetector/ReferenceWithHistory<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mThreadingDomain:Lcom/android/server/timezonedetector/location/ThreadingDomain;

.field private final mUncertaintyTimeoutQueue:Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue;


# direct methods
.method constructor <init>(Lcom/android/server/timezonedetector/location/ThreadingDomain;Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController$MetricsLogger;Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;Z)V
    .registers 9
    .param p1, "threadingDomain"    # Lcom/android/server/timezonedetector/location/ThreadingDomain;
    .param p2, "metricsLogger"    # Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController$MetricsLogger;
    .param p3, "primaryProvider"    # Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;
    .param p4, "secondaryProvider"    # Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;
    .param p5, "recordStateChanges"    # Z

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mRecordedStates:Ljava/util/ArrayList;

    .line 172
    new-instance v0, Lcom/android/server/timezonedetector/ReferenceWithHistory;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/android/server/timezonedetector/ReferenceWithHistory;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mState:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    .line 185
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/timezonedetector/location/ThreadingDomain;

    iput-object v1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mThreadingDomain:Lcom/android/server/timezonedetector/location/ThreadingDomain;

    .line 186
    invoke-virtual {p1}, Lcom/android/server/timezonedetector/location/ThreadingDomain;->getLockObject()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mSharedLock:Ljava/lang/Object;

    .line 187
    invoke-virtual {p1}, Lcom/android/server/timezonedetector/location/ThreadingDomain;->createSingleRunnableQueue()Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mUncertaintyTimeoutQueue:Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue;

    .line 188
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController$MetricsLogger;

    iput-object v2, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mMetricsLogger:Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController$MetricsLogger;

    .line 189
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;

    iput-object v2, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mPrimaryProvider:Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;

    .line 190
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;

    iput-object v2, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mSecondaryProvider:Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;

    .line 191
    iput-boolean p5, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mRecordStateChanges:Z

    .line 193
    monitor-enter v1

    .line 194
    :try_start_43
    const-string v2, "UNKNOWN"

    invoke-virtual {v0, v2}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->set(Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    monitor-exit v1

    .line 196
    return-void

    .line 195
    :catchall_4a
    move-exception v0

    monitor-exit v1
    :try_end_4c
    .catchall {:try_start_43 .. :try_end_4c} :catchall_4a

    throw v0
.end method

.method private alterProvidersStartedStateIfRequired(Lcom/android/server/timezonedetector/ConfigurationInternal;Lcom/android/server/timezonedetector/ConfigurationInternal;)V
    .registers 11
    .param p1, "oldConfiguration"    # Lcom/android/server/timezonedetector/ConfigurationInternal;
    .param p2, "newConfiguration"    # Lcom/android/server/timezonedetector/ConfigurationInternal;

    .line 366
    if-eqz p1, :cond_a

    .line 367
    invoke-virtual {p1}, Lcom/android/server/timezonedetector/ConfigurationInternal;->isGeoDetectionExecutionEnabled()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    .line 368
    .local v0, "oldIsGeoDetectionExecutionEnabled":Z
    :goto_b
    nop

    .line 369
    invoke-virtual {p2}, Lcom/android/server/timezonedetector/ConfigurationInternal;->isGeoDetectionExecutionEnabled()Z

    move-result v1

    .line 370
    .local v1, "newIsGeoDetectionExecutionEnabled":Z
    if-ne v0, v1, :cond_13

    .line 371
    return-void

    .line 383
    :cond_13
    if-eqz v1, :cond_75

    .line 384
    const-string v2, "INITIALIZING"

    invoke-direct {p0, v2}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->setState(Ljava/lang/String;)V

    .line 387
    iget-object v2, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mPrimaryProvider:Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;

    invoke-direct {p0, v2, p2}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->tryStartProvider(Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;Lcom/android/server/timezonedetector/ConfigurationInternal;)V

    .line 391
    iget-object v2, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mPrimaryProvider:Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;

    invoke-virtual {v2}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->getCurrentState()Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;

    move-result-object v2

    .line 392
    .local v2, "newPrimaryState":Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;
    invoke-virtual {v2}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;->isStarted()Z

    move-result v3

    if-nez v3, :cond_74

    .line 395
    iget-object v3, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mSecondaryProvider:Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;

    invoke-direct {p0, v3, p2}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->tryStartProvider(Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;Lcom/android/server/timezonedetector/ConfigurationInternal;)V

    .line 397
    iget-object v3, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mSecondaryProvider:Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;

    invoke-virtual {v3}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->getCurrentState()Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;

    move-result-object v3

    .line 398
    .local v3, "newSecondaryState":Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;
    invoke-virtual {v3}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;->isStarted()Z

    move-result v4

    if-nez v4, :cond_74

    .line 401
    iget-object v4, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mEnvironment:Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController$Environment;

    .line 402
    invoke-virtual {v4}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController$Environment;->elapsedRealtimeMillis()J

    move-result-wide v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Providers are failed: primary="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mPrimaryProvider:Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;

    .line 404
    invoke-virtual {v7}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->getCurrentState()Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " secondary="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mPrimaryProvider:Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;

    .line 405
    invoke-virtual {v7}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->getCurrentState()Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 401
    invoke-static {v4, v5, v6}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->createUncertainSuggestion(JLjava/lang/String;)Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;

    move-result-object v4

    .line 406
    .local v4, "suggestion":Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;
    const-string v5, "FAILED"

    invoke-direct {p0, v4, v5}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->makeSuggestion(Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;Ljava/lang/String;)V

    .line 409
    .end local v2    # "newPrimaryState":Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;
    .end local v3    # "newSecondaryState":Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;
    .end local v4    # "suggestion":Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;
    :cond_74
    goto :goto_7a

    .line 410
    :cond_75
    const-string v2, "Geo detection behavior disabled"

    invoke-direct {p0, v2}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->stopProviders(Ljava/lang/String;)V

    .line 412
    :goto_7a
    return-void
.end method

.method private assertProviderKnown(Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;)V
    .registers 5
    .param p1, "provider"    # Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;

    .line 495
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mPrimaryProvider:Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;

    if-eq p1, v0, :cond_22

    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mSecondaryProvider:Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;

    if-ne p1, v0, :cond_9

    goto :goto_22

    .line 496
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown provider: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 498
    :cond_22
    :goto_22
    return-void
.end method

.method private cancelUncertaintyTimeout()V
    .registers 2

    .line 687
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mUncertaintyTimeoutQueue:Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue;->cancel()V

    .line 688
    return-void
.end method

.method private static createUncertainSuggestion(JLjava/lang/String;)Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;
    .registers 6
    .param p0, "effectiveFromElapsedMillis"    # J
    .param p2, "reason"    # Ljava/lang/String;

    .line 771
    nop

    .line 772
    invoke-static {p0, p1}, Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;->createUncertainSuggestion(J)Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;

    move-result-object v0

    .line 774
    .local v0, "suggestion":Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;->addDebugInfo([Ljava/lang/String;)V

    .line 775
    return-object v0
.end method

.method private handleProviderFailedStateChange(Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;)V
    .registers 9
    .param p1, "providerState"    # Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;

    .line 505
    iget-object v0, p1, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;->provider:Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;

    .line 506
    .local v0, "failedProvider":Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;
    iget-object v1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mPrimaryProvider:Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;

    invoke-virtual {v1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->getCurrentState()Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;

    move-result-object v1

    .line 507
    .local v1, "primaryCurrentState":Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;
    iget-object v2, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mSecondaryProvider:Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;

    invoke-virtual {v2}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->getCurrentState()Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;

    move-result-object v2

    .line 510
    .local v2, "secondaryCurrentState":Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;
    iget-object v3, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mPrimaryProvider:Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;

    if-ne v0, v3, :cond_20

    .line 511
    invoke-virtual {v2}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;->isTerminated()Z

    move-result v3

    if-nez v3, :cond_61

    .line 515
    iget-object v3, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mSecondaryProvider:Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;

    iget-object v4, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mCurrentUserConfiguration:Lcom/android/server/timezonedetector/ConfigurationInternal;

    invoke-direct {p0, v3, v4}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->tryStartProvider(Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;Lcom/android/server/timezonedetector/ConfigurationInternal;)V

    goto :goto_61

    .line 517
    :cond_20
    iget-object v3, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mSecondaryProvider:Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;

    if-ne v0, v3, :cond_61

    .line 521
    iget v3, v1, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;->stateEnum:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_61

    .line 522
    invoke-virtual {v1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;->isTerminated()Z

    move-result v3

    if-nez v3, :cond_61

    .line 523
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Secondary provider unexpected reported a failure: failed provider="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 524
    invoke-virtual {v0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", primary provider="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mPrimaryProvider:Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", secondary provider="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mSecondaryProvider:Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 523
    invoke-static {v3}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->warnLog(Ljava/lang/String;)V

    .line 532
    :cond_61
    :goto_61
    invoke-virtual {v1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;->isTerminated()Z

    move-result v3

    if-eqz v3, :cond_a0

    invoke-virtual {v2}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;->isTerminated()Z

    move-result v3

    if-eqz v3, :cond_a0

    .line 536
    invoke-direct {p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->cancelUncertaintyTimeout()V

    .line 540
    iget-object v3, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mEnvironment:Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController$Environment;

    .line 541
    invoke-virtual {v3}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController$Environment;->elapsedRealtimeMillis()J

    move-result-wide v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Both providers are terminated: primary="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;->provider:Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", secondary="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;->provider:Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 540
    invoke-static {v3, v4, v5}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->createUncertainSuggestion(JLjava/lang/String;)Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;

    move-result-object v3

    .line 545
    .local v3, "suggestion":Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;
    const-string v4, "FAILED"

    invoke-direct {p0, v3, v4}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->makeSuggestion(Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;Ljava/lang/String;)V

    .line 547
    .end local v3    # "suggestion":Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;
    :cond_a0
    return-void
.end method

.method private handleProviderStartedStateChange(Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;)V
    .registers 8
    .param p1, "providerState"    # Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;

    .line 556
    iget-object v0, p1, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;->provider:Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;

    .line 557
    .local v0, "provider":Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;
    iget-object v1, p1, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;->event:Landroid/service/timezone/TimeZoneProviderEvent;

    .line 558
    .local v1, "event":Landroid/service/timezone/TimeZoneProviderEvent;
    const-string/jumbo v2, "provider="

    if-nez v1, :cond_2a

    .line 564
    iget-object v3, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mEnvironment:Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController$Environment;

    invoke-virtual {v3}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController$Environment;->elapsedRealtimeMillis()J

    move-result-wide v3

    .line 565
    .local v3, "uncertaintyStartedElapsedMillis":J
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", implicit uncertainty, event=null"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v3, v4, v2}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->handleProviderUncertainty(Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;JLjava/lang/String;)V

    .line 567
    return-void

    .line 570
    .end local v3    # "uncertaintyStartedElapsedMillis":J
    :cond_2a
    iget-object v3, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mCurrentUserConfiguration:Lcom/android/server/timezonedetector/ConfigurationInternal;

    invoke-virtual {v3}, Lcom/android/server/timezonedetector/ConfigurationInternal;->isGeoDetectionExecutionEnabled()Z

    move-result v3

    const-string v4, "Provider="

    if-nez v3, :cond_5a

    .line 573
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " is started, but currentUserConfiguration="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mCurrentUserConfiguration:Lcom/android/server/timezonedetector/ConfigurationInternal;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " suggests it shouldn\'t be."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->warnLog(Ljava/lang/String;)V

    .line 578
    :cond_5a
    invoke-virtual {v1}, Landroid/service/timezone/TimeZoneProviderEvent;->getType()I

    move-result v3

    packed-switch v3, :pswitch_data_c0

    .line 595
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown eventType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/service/timezone/TimeZoneProviderEvent;->getType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->warnLog(Ljava/lang/String;)V

    goto :goto_be

    .line 585
    :pswitch_7c
    invoke-virtual {v1}, Landroid/service/timezone/TimeZoneProviderEvent;->getCreationElapsedMillis()J

    move-result-wide v3

    .line 586
    .restart local v3    # "uncertaintyStartedElapsedMillis":J
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", explicit uncertainty. event="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v3, v4, v2}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->handleProviderUncertainty(Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;JLjava/lang/String;)V

    .line 588
    goto :goto_be

    .line 591
    .end local v3    # "uncertaintyStartedElapsedMillis":J
    :pswitch_9f
    invoke-direct {p0, v0, v1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->handleProviderSuggestion(Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;Landroid/service/timezone/TimeZoneProviderEvent;)V

    .line 592
    goto :goto_be

    .line 581
    :pswitch_a3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is started, but event suggests it shouldn\'t be"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->warnLog(Ljava/lang/String;)V

    .line 582
    nop

    .line 599
    :goto_be
    return-void

    nop

    :pswitch_data_c0
    .packed-switch 0x1
        :pswitch_a3
        :pswitch_9f
        :pswitch_7c
    .end packed-switch
.end method

.method private handleProviderSuggestion(Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;Landroid/service/timezone/TimeZoneProviderEvent;)V
    .registers 10
    .param p1, "provider"    # Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;
    .param p2, "providerEvent"    # Landroid/service/timezone/TimeZoneProviderEvent;

    .line 610
    invoke-direct {p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->cancelUncertaintyTimeout()V

    .line 612
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mPrimaryProvider:Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;

    if-ne p1, v0, :cond_c

    .line 613
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mSecondaryProvider:Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;

    invoke-direct {p0, v0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->stopProviderIfStarted(Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;)V

    .line 616
    :cond_c
    invoke-virtual {p2}, Landroid/service/timezone/TimeZoneProviderEvent;->getSuggestion()Landroid/service/timezone/TimeZoneProviderSuggestion;

    move-result-object v0

    .line 625
    .local v0, "providerSuggestion":Landroid/service/timezone/TimeZoneProviderSuggestion;
    invoke-virtual {v0}, Landroid/service/timezone/TimeZoneProviderSuggestion;->getElapsedRealtimeMillis()J

    move-result-wide v1

    .line 626
    .local v1, "effectiveFromElapsedMillis":J
    nop

    .line 628
    invoke-virtual {v0}, Landroid/service/timezone/TimeZoneProviderSuggestion;->getTimeZoneIds()Ljava/util/List;

    move-result-object v3

    .line 627
    invoke-static {v1, v2, v3}, Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;->createCertainSuggestion(JLjava/util/List;)Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;

    move-result-object v3

    .line 630
    .local v3, "geoSuggestion":Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Event received provider="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", providerEvent="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", suggestionCreationTime="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mEnvironment:Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController$Environment;

    .line 632
    invoke-virtual {v5}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController$Environment;->elapsedRealtimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 633
    .local v4, "debugInfo":Ljava/lang/String;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v4, v5, v6

    invoke-virtual {v3, v5}, Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;->addDebugInfo([Ljava/lang/String;)V

    .line 634
    const-string v5, "CERTAIN"

    invoke-direct {p0, v3, v5}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->makeSuggestion(Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;Ljava/lang/String;)V

    .line 635
    return-void
.end method

.method private makeSuggestion(Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;Ljava/lang/String;)V
    .registers 5
    .param p1, "suggestion"    # Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;
    .param p2, "newState"    # Ljava/lang/String;

    .line 678
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "makeSuggestion: suggestion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->debugLog(Ljava/lang/String;)V

    .line 679
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mCallback:Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController$Callback;

    invoke-virtual {v0, p1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController$Callback;->suggest(Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;)V

    .line 680
    iput-object p1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mLastSuggestion:Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;

    .line 681
    invoke-direct {p0, p2}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->setState(Ljava/lang/String;)V

    .line 682
    return-void
.end method

.method private onProviderUncertaintyTimeout(Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;JLjava/time/Duration;)V
    .registers 10
    .param p1, "provider"    # Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;
    .param p2, "uncertaintyStartedElapsedMillis"    # J
    .param p4, "uncertaintyDelay"    # Ljava/time/Duration;

    .line 739
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mThreadingDomain:Lcom/android/server/timezonedetector/location/ThreadingDomain;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/location/ThreadingDomain;->assertCurrentThread()V

    .line 741
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mSharedLock:Ljava/lang/Object;

    monitor-enter v0

    .line 742
    :try_start_8
    iget-object v1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mEnvironment:Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController$Environment;

    invoke-virtual {v1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController$Environment;->elapsedRealtimeMillis()J

    move-result-wide v1

    .line 752
    .local v1, "afterUncertaintyTimeoutElapsedMillis":J
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Uncertainty timeout triggered for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 754
    invoke-virtual {p1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": primary="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mPrimaryProvider:Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", secondary="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mSecondaryProvider:Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", uncertaintyStarted="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 758
    invoke-static {p2, p3}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", afterUncertaintyTimeout="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 760
    invoke-static {v1, v2}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", uncertaintyDelay="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 752
    invoke-static {p2, p3, v3}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->createUncertainSuggestion(JLjava/lang/String;)Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;

    move-result-object v3

    .line 763
    .local v3, "suggestion":Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;
    const-string v4, "UNCERTAIN"

    invoke-direct {p0, v3, v4}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->makeSuggestion(Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;Ljava/lang/String;)V

    .line 764
    .end local v1    # "afterUncertaintyTimeoutElapsedMillis":J
    .end local v3    # "suggestion":Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;
    monitor-exit v0

    .line 765
    return-void

    .line 764
    :catchall_6e
    move-exception v1

    monitor-exit v0
    :try_end_70
    .catchall {:try_start_8 .. :try_end_70} :catchall_6e

    throw v1
.end method

.method private setState(Ljava/lang/String;)V
    .registers 3
    .param p1, "state"    # Ljava/lang/String;

    .line 286
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mState:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 287
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mState:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-virtual {v0, p1}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->set(Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    iget-boolean v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mRecordStateChanges:Z

    if-eqz v0, :cond_1a

    .line 289
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mRecordedStates:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 291
    :cond_1a
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mMetricsLogger:Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController$MetricsLogger;

    invoke-interface {v0, p1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController$MetricsLogger;->onStateChange(Ljava/lang/String;)V

    .line 293
    :cond_1f
    return-void
.end method

.method private stopProvider(Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;)V
    .registers 5
    .param p1, "provider"    # Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;

    .line 325
    invoke-virtual {p1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->getCurrentState()Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;

    move-result-object v0

    .line 326
    .local v0, "providerState":Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;
    iget v1, v0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;->stateEnum:I

    packed-switch v1, :pswitch_data_76

    .line 344
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown provider state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->warnLog(Ljava/lang/String;)V

    goto :goto_74

    .line 340
    :pswitch_20
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to stop "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": it is terminated."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->debugLog(Ljava/lang/String;)V

    .line 341
    goto :goto_74

    .line 328
    :pswitch_3d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No need to stop "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": already stopped"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->debugLog(Ljava/lang/String;)V

    .line 329
    goto :goto_74

    .line 334
    :pswitch_5a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stopping "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->debugLog(Ljava/lang/String;)V

    .line 335
    invoke-virtual {p1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->stopUpdates()V

    .line 336
    nop

    .line 348
    :goto_74
    return-void

    nop

    :pswitch_data_76
    .packed-switch 0x1
        :pswitch_5a
        :pswitch_5a
        :pswitch_5a
        :pswitch_3d
        :pswitch_20
        :pswitch_20
    .end packed-switch
.end method

.method private stopProviderIfStarted(Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;)V
    .registers 3
    .param p1, "provider"    # Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;

    .line 318
    invoke-virtual {p1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->getCurrentState()Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 319
    invoke-direct {p0, p1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->stopProvider(Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;)V

    .line 321
    :cond_d
    return-void
.end method

.method private stopProviders(Ljava/lang/String;)V
    .registers 6
    .param p1, "reason"    # Ljava/lang/String;

    .line 297
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mPrimaryProvider:Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;

    invoke-direct {p0, v0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->stopProviderIfStarted(Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;)V

    .line 298
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mSecondaryProvider:Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;

    invoke-direct {p0, v0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->stopProviderIfStarted(Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;)V

    .line 301
    invoke-direct {p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->cancelUncertaintyTimeout()V

    .line 307
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mState:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "CERTAIN"

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 308
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mEnvironment:Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController$Environment;

    .line 309
    invoke-virtual {v0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController$Environment;->elapsedRealtimeMillis()J

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Withdraw previous suggestion, providers are stopping: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 308
    invoke-static {v0, v1, v2}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->createUncertainSuggestion(JLjava/lang/String;)Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;

    move-result-object v0

    .line 311
    .local v0, "suggestion":Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;
    const-string v1, "UNCERTAIN"

    invoke-direct {p0, v0, v1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->makeSuggestion(Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;Ljava/lang/String;)V

    .line 313
    .end local v0    # "suggestion":Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;
    :cond_3d
    const-string v0, "STOPPED"

    invoke-direct {p0, v0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->setState(Ljava/lang/String;)V

    .line 314
    return-void
.end method

.method private tryStartProvider(Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;Lcom/android/server/timezonedetector/ConfigurationInternal;)V
    .registers 7
    .param p1, "provider"    # Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;
    .param p2, "configuration"    # Lcom/android/server/timezonedetector/ConfigurationInternal;

    .line 417
    invoke-virtual {p1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->getCurrentState()Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;

    move-result-object v0

    .line 418
    .local v0, "providerState":Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;
    iget v1, v0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;->stateEnum:I

    packed-switch v1, :pswitch_data_8a

    .line 439
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown provider state: provider="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 435
    :pswitch_22
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to start "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": it is terminated"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->debugLog(Ljava/lang/String;)V

    .line 436
    goto :goto_88

    .line 420
    :pswitch_3f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Enabling "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->debugLog(Ljava/lang/String;)V

    .line 421
    iget-object v1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mEnvironment:Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController$Environment;

    .line 422
    invoke-virtual {v1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController$Environment;->getProviderInitializationTimeout()Ljava/time/Duration;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mEnvironment:Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController$Environment;

    .line 423
    invoke-virtual {v2}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController$Environment;->getProviderInitializationTimeoutFuzz()Ljava/time/Duration;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mEnvironment:Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController$Environment;

    .line 424
    invoke-virtual {v3}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController$Environment;->getProviderEventFilteringAgeThreshold()Ljava/time/Duration;

    move-result-object v3

    .line 421
    invoke-virtual {p1, p2, v1, v2, v3}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->startUpdates(Lcom/android/server/timezonedetector/ConfigurationInternal;Ljava/time/Duration;Ljava/time/Duration;Ljava/time/Duration;)V

    .line 425
    goto :goto_88

    .line 430
    :pswitch_6b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No need to start "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": already started"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->debugLog(Ljava/lang/String;)V

    .line 431
    nop

    .line 443
    :goto_88
    return-void

    nop

    :pswitch_data_8a
    .packed-switch 0x1
        :pswitch_6b
        :pswitch_6b
        :pswitch_6b
        :pswitch_3f
        :pswitch_22
        :pswitch_22
    .end packed-switch
.end method


# virtual methods
.method clearRecordedStates()V
    .registers 3

    .line 782
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mThreadingDomain:Lcom/android/server/timezonedetector/location/ThreadingDomain;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/location/ThreadingDomain;->assertCurrentThread()V

    .line 784
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mSharedLock:Ljava/lang/Object;

    monitor-enter v0

    .line 785
    :try_start_8
    iget-object v1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mRecordedStates:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 786
    iget-object v1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mPrimaryProvider:Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;

    invoke-virtual {v1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->clearRecordedStates()V

    .line 787
    iget-object v1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mSecondaryProvider:Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;

    invoke-virtual {v1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->clearRecordedStates()V

    .line 788
    monitor-exit v0

    .line 789
    return-void

    .line 788
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method destroy()V
    .registers 3

    .line 268
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mThreadingDomain:Lcom/android/server/timezonedetector/location/ThreadingDomain;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/location/ThreadingDomain;->assertCurrentThread()V

    .line 270
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mSharedLock:Ljava/lang/Object;

    monitor-enter v0

    .line 271
    :try_start_8
    const-string v1, "destroy()"

    invoke-direct {p0, v1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->stopProviders(Ljava/lang/String;)V

    .line 274
    iget-object v1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mPrimaryProvider:Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;

    invoke-virtual {v1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->destroy()V

    .line 275
    iget-object v1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mSecondaryProvider:Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;

    invoke-virtual {v1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->destroy()V

    .line 276
    const-string v1, "DESTROYED"

    invoke-direct {p0, v1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->setState(Ljava/lang/String;)V

    .line 277
    monitor-exit v0

    .line 278
    return-void

    .line 277
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_1e

    throw v1
.end method

.method public dump(Landroid/util/IndentingPrintWriter;[Ljava/lang/String;)V
    .registers 6
    .param p1, "ipw"    # Landroid/util/IndentingPrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .line 639
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mSharedLock:Ljava/lang/Object;

    monitor-enter v0

    .line 640
    :try_start_3
    const-string v1, "LocationTimeZoneProviderController:"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 642
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 643
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCurrentUserConfiguration="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mCurrentUserConfiguration:Lcom/android/server/timezonedetector/ConfigurationInternal;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 644
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "providerInitializationTimeout="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mEnvironment:Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController$Environment;

    .line 645
    invoke-virtual {v2}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController$Environment;->getProviderInitializationTimeout()Ljava/time/Duration;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 644
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 646
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "providerInitializationTimeoutFuzz="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mEnvironment:Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController$Environment;

    .line 647
    invoke-virtual {v2}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController$Environment;->getProviderInitializationTimeoutFuzz()Ljava/time/Duration;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 646
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 648
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "uncertaintyDelay="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mEnvironment:Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController$Environment;

    invoke-virtual {v2}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController$Environment;->getUncertaintyDelay()Ljava/time/Duration;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 649
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mState:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-virtual {v2}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 650
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mLastSuggestion="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mLastSuggestion:Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 652
    const-string v1, "State history:"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 653
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 654
    iget-object v1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mState:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-virtual {v1, p1}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 655
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 657
    const-string v1, "Primary Provider:"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 658
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 659
    iget-object v1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mPrimaryProvider:Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->dump(Landroid/util/IndentingPrintWriter;[Ljava/lang/String;)V

    .line 660
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 662
    const-string v1, "Secondary Provider:"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 663
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 664
    iget-object v1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mSecondaryProvider:Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->dump(Landroid/util/IndentingPrintWriter;[Ljava/lang/String;)V

    .line 665
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 667
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 668
    monitor-exit v0

    .line 669
    return-void

    .line 668
    :catchall_e6
    move-exception v1

    monitor-exit v0
    :try_end_e8
    .catchall {:try_start_3 .. :try_end_e8} :catchall_e6

    throw v1
.end method

.method getStateForTests()Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState;
    .registers 5

    .line 796
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mThreadingDomain:Lcom/android/server/timezonedetector/location/ThreadingDomain;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/location/ThreadingDomain;->assertCurrentThread()V

    .line 798
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mSharedLock:Ljava/lang/Object;

    monitor-enter v0

    .line 799
    :try_start_8
    new-instance v1, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState$Builder;

    invoke-direct {v1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState$Builder;-><init>()V

    .line 801
    .local v1, "builder":Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState$Builder;
    iget-object v2, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mLastSuggestion:Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;

    if-eqz v2, :cond_14

    .line 802
    invoke-virtual {v1, v2}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState$Builder;->setLastSuggestion(Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;)Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState$Builder;

    .line 804
    :cond_14
    iget-object v2, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mState:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-virtual {v2}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState$Builder;->setControllerState(Ljava/lang/String;)Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mRecordedStates:Ljava/util/ArrayList;

    .line 805
    invoke-virtual {v2, v3}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState$Builder;->setStateChanges(Ljava/util/List;)Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mPrimaryProvider:Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;

    .line 806
    invoke-virtual {v3}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->getRecordedStates()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState$Builder;->setPrimaryProviderStateChanges(Ljava/util/List;)Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mSecondaryProvider:Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;

    .line 807
    invoke-virtual {v3}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->getRecordedStates()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState$Builder;->setSecondaryProviderStateChanges(Ljava/util/List;)Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState$Builder;

    .line 808
    invoke-virtual {v1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState$Builder;->build()Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 809
    .end local v1    # "builder":Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState$Builder;
    :catchall_3f
    move-exception v1

    monitor-exit v0
    :try_end_41
    .catchall {:try_start_8 .. :try_end_41} :catchall_3f

    throw v1
.end method

.method getUncertaintyTimeoutDelayMillis()J
    .registers 3

    .line 263
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mUncertaintyTimeoutQueue:Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue;->getQueuedDelayMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method handleProviderUncertainty(Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;JLjava/lang/String;)V
    .registers 14
    .param p1, "provider"    # Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;
    .param p2, "uncertaintyStartedElapsedMillis"    # J
    .param p4, "reason"    # Ljava/lang/String;

    .line 712
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 716
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mUncertaintyTimeoutQueue:Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue;->hasQueued()Z

    move-result v0

    if-nez v0, :cond_3a

    .line 717
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Starting uncertainty timeout: reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->debugLog(Ljava/lang/String;)V

    .line 719
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mEnvironment:Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController$Environment;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController$Environment;->getUncertaintyDelay()Ljava/time/Duration;

    move-result-object v0

    .line 720
    .local v0, "uncertaintyDelay":Ljava/time/Duration;
    iget-object v7, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mUncertaintyTimeoutQueue:Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue;

    new-instance v8, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController$$ExternalSyntheticLambda1;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;JLjava/time/Duration;)V

    .line 723
    invoke-virtual {v0}, Ljava/time/Duration;->toMillis()J

    move-result-wide v1

    .line 720
    invoke-virtual {v7, v8, v1, v2}, Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue;->runDelayed(Ljava/lang/Runnable;J)V

    .line 726
    .end local v0    # "uncertaintyDelay":Ljava/time/Duration;
    :cond_3a
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mPrimaryProvider:Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;

    if-ne p1, v0, :cond_45

    .line 731
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mSecondaryProvider:Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;

    iget-object v1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mCurrentUserConfiguration:Lcom/android/server/timezonedetector/ConfigurationInternal;

    invoke-direct {p0, v0, v1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->tryStartProvider(Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;Lcom/android/server/timezonedetector/ConfigurationInternal;)V

    .line 733
    :cond_45
    return-void
.end method

.method initialize(Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController$Environment;Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController$Callback;)V
    .registers 7
    .param p1, "environment"    # Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController$Environment;
    .param p2, "callback"    # Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController$Callback;

    .line 203
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mThreadingDomain:Lcom/android/server/timezonedetector/location/ThreadingDomain;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/location/ThreadingDomain;->assertCurrentThread()V

    .line 205
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mSharedLock:Ljava/lang/Object;

    monitor-enter v0

    .line 206
    :try_start_8
    const-string v1, "initialize()"

    invoke-static {v1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->debugLog(Ljava/lang/String;)V

    .line 207
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController$Environment;

    iput-object v1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mEnvironment:Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController$Environment;

    .line 208
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController$Callback;

    iput-object v1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mCallback:Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController$Callback;

    .line 209
    invoke-virtual {p1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController$Environment;->getCurrentUserConfigurationInternal()Lcom/android/server/timezonedetector/ConfigurationInternal;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mCurrentUserConfiguration:Lcom/android/server/timezonedetector/ConfigurationInternal;

    .line 211
    new-instance v1, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;)V

    .line 213
    .local v1, "providerListener":Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderListener;
    const-string v2, "PROVIDERS_INITIALIZING"

    invoke-direct {p0, v2}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->setState(Ljava/lang/String;)V

    .line 214
    iget-object v2, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mPrimaryProvider:Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;

    invoke-virtual {v2, v1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->initialize(Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderListener;)V

    .line 215
    iget-object v2, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mSecondaryProvider:Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;

    invoke-virtual {v2, v1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;->initialize(Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderListener;)V

    .line 216
    const-string v2, "STOPPED"

    invoke-direct {p0, v2}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->setState(Ljava/lang/String;)V

    .line 218
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mCurrentUserConfiguration:Lcom/android/server/timezonedetector/ConfigurationInternal;

    invoke-direct {p0, v2, v3}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->alterProvidersStartedStateIfRequired(Lcom/android/server/timezonedetector/ConfigurationInternal;Lcom/android/server/timezonedetector/ConfigurationInternal;)V

    .line 220
    .end local v1    # "providerListener":Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderListener;
    monitor-exit v0

    .line 221
    return-void

    .line 220
    :catchall_44
    move-exception v1

    monitor-exit v0
    :try_end_46
    .catchall {:try_start_8 .. :try_end_46} :catchall_44

    throw v1
.end method

.method isUncertaintyTimeoutSet()Z
    .registers 2

    .line 257
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mUncertaintyTimeoutQueue:Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/location/ThreadingDomain$SingleRunnableQueue;->hasQueued()Z

    move-result v0

    return v0
.end method

.method synthetic lambda$handleProviderUncertainty$0$com-android-server-timezonedetector-location-LocationTimeZoneProviderController(Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;JLjava/time/Duration;)V
    .registers 5
    .param p1, "provider"    # Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;
    .param p2, "uncertaintyStartedElapsedMillis"    # J
    .param p4, "uncertaintyDelay"    # Ljava/time/Duration;

    .line 721
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->onProviderUncertaintyTimeout(Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;JLjava/time/Duration;)V

    return-void
.end method

.method onConfigurationInternalChanged()V
    .registers 7

    .line 229
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mThreadingDomain:Lcom/android/server/timezonedetector/location/ThreadingDomain;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/location/ThreadingDomain;->assertCurrentThread()V

    .line 231
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mSharedLock:Ljava/lang/Object;

    monitor-enter v0

    .line 232
    :try_start_8
    const-string/jumbo v1, "onConfigChanged()"

    invoke-static {v1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->debugLog(Ljava/lang/String;)V

    .line 234
    iget-object v1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mCurrentUserConfiguration:Lcom/android/server/timezonedetector/ConfigurationInternal;

    .line 235
    .local v1, "oldConfig":Lcom/android/server/timezonedetector/ConfigurationInternal;
    iget-object v2, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mEnvironment:Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController$Environment;

    invoke-virtual {v2}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController$Environment;->getCurrentUserConfigurationInternal()Lcom/android/server/timezonedetector/ConfigurationInternal;

    move-result-object v2

    .line 236
    .local v2, "newConfig":Lcom/android/server/timezonedetector/ConfigurationInternal;
    iput-object v2, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mCurrentUserConfiguration:Lcom/android/server/timezonedetector/ConfigurationInternal;

    .line 238
    invoke-virtual {v2, v1}, Lcom/android/server/timezonedetector/ConfigurationInternal;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6e

    .line 239
    invoke-virtual {v2}, Lcom/android/server/timezonedetector/ConfigurationInternal;->getUserId()I

    move-result v3

    invoke-virtual {v1}, Lcom/android/server/timezonedetector/ConfigurationInternal;->getUserId()I

    move-result v4

    if-eq v3, v4, :cond_6b

    .line 242
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "User changed. old="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/server/timezonedetector/ConfigurationInternal;->getUserId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", new="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 243
    invoke-virtual {v2}, Lcom/android/server/timezonedetector/ConfigurationInternal;->getUserId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 244
    .local v3, "reason":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Stopping providers: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->debugLog(Ljava/lang/String;)V

    .line 245
    invoke-direct {p0, v3}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->stopProviders(Ljava/lang/String;)V

    .line 247
    const/4 v4, 0x0

    invoke-direct {p0, v4, v2}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->alterProvidersStartedStateIfRequired(Lcom/android/server/timezonedetector/ConfigurationInternal;Lcom/android/server/timezonedetector/ConfigurationInternal;)V

    .line 248
    .end local v3    # "reason":Ljava/lang/String;
    goto :goto_6e

    .line 249
    :cond_6b
    invoke-direct {p0, v1, v2}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->alterProvidersStartedStateIfRequired(Lcom/android/server/timezonedetector/ConfigurationInternal;Lcom/android/server/timezonedetector/ConfigurationInternal;)V

    .line 252
    .end local v1    # "oldConfig":Lcom/android/server/timezonedetector/ConfigurationInternal;
    .end local v2    # "newConfig":Lcom/android/server/timezonedetector/ConfigurationInternal;
    :cond_6e
    :goto_6e
    monitor-exit v0

    .line 253
    return-void

    .line 252
    :catchall_70
    move-exception v1

    monitor-exit v0
    :try_end_72
    .catchall {:try_start_8 .. :try_end_72} :catchall_70

    throw v1
.end method

.method onProviderStateChange(Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;)V
    .registers 6
    .param p1, "providerState"    # Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;

    .line 446
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mThreadingDomain:Lcom/android/server/timezonedetector/location/ThreadingDomain;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/location/ThreadingDomain;->assertCurrentThread()V

    .line 447
    iget-object v0, p1, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;->provider:Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;

    .line 448
    .local v0, "provider":Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;
    invoke-direct {p0, v0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->assertProviderKnown(Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider;)V

    .line 450
    iget-object v1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mSharedLock:Ljava/lang/Object;

    monitor-enter v1

    .line 454
    :try_start_d
    iget-object v2, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->mState:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-virtual {v2}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->get()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "PROVIDERS_INITIALIZING"

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 455
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onProviderStateChange: Ignoring provider state change because both providers have not yet completed initialization. providerState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->warnLog(Ljava/lang/String;)V

    .line 458
    monitor-exit v1

    return-void

    .line 461
    :cond_34
    iget v2, p1, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;->stateEnum:I

    packed-switch v2, :pswitch_data_a4

    .line 488
    new-instance v2, Ljava/lang/StringBuilder;

    goto :goto_89

    .line 482
    :pswitch_3c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received notification of permanent failure for provider="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->debugLog(Ljava/lang/String;)V

    .line 484
    invoke-direct {p0, p1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->handleProviderFailedStateChange(Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;)V

    .line 485
    goto :goto_9e

    .line 476
    :pswitch_56
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onProviderStateChange: Received notification of a state change while started, provider="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->debugLog(Ljava/lang/String;)V

    .line 478
    invoke-direct {p0, p1}, Lcom/android/server/timezonedetector/location/LocationTimeZoneProviderController;->handleProviderStartedStateChange(Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;)V

    .line 479
    goto :goto_9e

    .line 468
    :pswitch_71
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onProviderStateChange: Unexpected state change for provider, provider="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->warnLog(Ljava/lang/String;)V

    .line 470
    goto :goto_9e

    .line 488
    :goto_89
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onProviderStateChange: Unexpected provider="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->warnLog(Ljava/lang/String;)V

    .line 491
    :goto_9e
    monitor-exit v1

    .line 492
    return-void

    .line 491
    :catchall_a0
    move-exception v2

    monitor-exit v1
    :try_end_a2
    .catchall {:try_start_d .. :try_end_a2} :catchall_a0

    throw v2

    nop

    :pswitch_data_a4
    .packed-switch 0x1
        :pswitch_71
        :pswitch_56
        :pswitch_56
        :pswitch_71
        :pswitch_3c
        :pswitch_71
    .end packed-switch
.end method
