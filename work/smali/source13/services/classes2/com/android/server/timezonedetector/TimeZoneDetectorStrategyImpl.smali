.class public final Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;
.super Ljava/lang/Object;
.source "TimeZoneDetectorStrategyImpl.java"

# interfaces
.implements Lcom/android/server/timezonedetector/TimeZoneDetectorStrategy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$QualifiedTelephonyTimeZoneSuggestion;,
        Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$Environment;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final KEEP_SUGGESTION_HISTORY_SIZE:I = 0xa

.field private static final LOG_TAG:Ljava/lang/String; = "time_zone_detector"

.field public static final TELEPHONY_SCORE_HIGH:I = 0x3

.field public static final TELEPHONY_SCORE_HIGHEST:I = 0x4

.field public static final TELEPHONY_SCORE_LOW:I = 0x1

.field public static final TELEPHONY_SCORE_MEDIUM:I = 0x2

.field public static final TELEPHONY_SCORE_NONE:I = 0x0

.field public static final TELEPHONY_SCORE_USAGE_THRESHOLD:I = 0x2


# instance fields
.field private mCurrentConfigurationInternal:Lcom/android/server/timezonedetector/ConfigurationInternal;

.field private final mEnvironment:Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$Environment;

.field private final mLatestGeoLocationSuggestion:Lcom/android/server/timezonedetector/ReferenceWithHistory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/timezonedetector/ReferenceWithHistory<",
            "Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;",
            ">;"
        }
    .end annotation
.end field

.field private final mLatestManualSuggestion:Lcom/android/server/timezonedetector/ReferenceWithHistory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/timezonedetector/ReferenceWithHistory<",
            "Landroid/app/timezonedetector/ManualTimeZoneSuggestion;",
            ">;"
        }
    .end annotation
.end field

.field private final mTelephonySuggestionsBySlotIndex:Lcom/android/server/timezonedetector/ArrayMapWithHistory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/timezonedetector/ArrayMapWithHistory<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$QualifiedTelephonyTimeZoneSuggestion;",
            ">;"
        }
    .end annotation
.end field

.field private mTelephonyTimeZoneFallbackEnabled:Landroid/os/TimestampedValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/TimestampedValue<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mTimeZoneChangesLog:Landroid/util/LocalLog;


# direct methods
.method public static synthetic $r8$lambda$XFc6fNbxgIZNP6Z9K56FRJUdSWg(Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->handleConfigurationInternalChanged()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$Environment;)V
    .registers 7
    .param p1, "environment"    # Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$Environment;

    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    new-instance v0, Landroid/util/LocalLog;

    const/16 v1, 0x1e

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/util/LocalLog;-><init>(IZ)V

    iput-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mTimeZoneChangesLog:Landroid/util/LocalLog;

    .line 179
    new-instance v0, Lcom/android/server/timezonedetector/ArrayMapWithHistory;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/android/server/timezonedetector/ArrayMapWithHistory;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mTelephonySuggestionsBySlotIndex:Lcom/android/server/timezonedetector/ArrayMapWithHistory;

    .line 188
    new-instance v0, Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-direct {v0, v1}, Lcom/android/server/timezonedetector/ReferenceWithHistory;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mLatestGeoLocationSuggestion:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    .line 195
    new-instance v0, Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-direct {v0, v1}, Lcom/android/server/timezonedetector/ReferenceWithHistory;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mLatestManualSuggestion:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    .line 231
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$Environment;

    iput-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$Environment;

    .line 234
    new-instance v1, Landroid/os/TimestampedValue;

    .line 235
    invoke-interface {v0}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$Environment;->elapsedRealtimeMillis()J

    move-result-wide v2

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Landroid/os/TimestampedValue;-><init>(JLjava/lang/Object;)V

    iput-object v1, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mTelephonyTimeZoneFallbackEnabled:Landroid/os/TimestampedValue;

    .line 237
    monitor-enter p0

    .line 238
    :try_start_3d
    new-instance v1, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;)V

    invoke-interface {v0, v1}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$Environment;->setConfigurationInternalChangeListener(Lcom/android/server/timezonedetector/ConfigurationChangeListener;)V

    .line 240
    invoke-interface {v0}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$Environment;->getCurrentUserConfigurationInternal()Lcom/android/server/timezonedetector/ConfigurationInternal;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mCurrentConfigurationInternal:Lcom/android/server/timezonedetector/ConfigurationInternal;

    .line 241
    monitor-exit p0

    .line 242
    return-void

    .line 241
    :catchall_4d
    move-exception v0

    monitor-exit p0
    :try_end_4f
    .catchall {:try_start_3d .. :try_end_4f} :catchall_4d

    throw v0
.end method

.method public static create(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/timezonedetector/ServiceConfigAccessor;)Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "serviceConfigAccessor"    # Lcom/android/server/timezonedetector/ServiceConfigAccessor;

    .line 225
    new-instance v0, Lcom/android/server/timezonedetector/EnvironmentImpl;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/timezonedetector/EnvironmentImpl;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/timezonedetector/ServiceConfigAccessor;)V

    .line 226
    .local v0, "environment":Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$Environment;
    new-instance v1, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;

    invoke-direct {v1, v0}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;-><init>(Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$Environment;)V

    return-object v1
.end method

.method private disableTelephonyFallbackIfNeeded()V
    .registers 9

    .line 540
    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mLatestGeoLocationSuggestion:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;

    .line 541
    .local v0, "suggestion":Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;->getZoneIds()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_14

    move v3, v1

    goto :goto_15

    :cond_14
    move v3, v2

    .line 542
    .local v3, "isLatestSuggestionCertain":Z
    :goto_15
    if-eqz v3, :cond_62

    iget-object v4, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mTelephonyTimeZoneFallbackEnabled:Landroid/os/TimestampedValue;

    invoke-virtual {v4}, Landroid/os/TimestampedValue;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_62

    .line 549
    nop

    .line 550
    invoke-virtual {v0}, Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;->getEffectiveFromElapsedMillis()J

    move-result-wide v4

    iget-object v6, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mTelephonyTimeZoneFallbackEnabled:Landroid/os/TimestampedValue;

    .line 551
    invoke-virtual {v6}, Landroid/os/TimestampedValue;->getReferenceTimeMillis()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-lez v4, :cond_35

    goto :goto_36

    :cond_35
    move v1, v2

    .line 552
    .local v1, "latestSuggestionIsNewerThanFallbackEnabled":Z
    :goto_36
    if-eqz v1, :cond_62

    .line 553
    const/4 v4, 0x0

    .line 554
    .local v4, "fallbackEnabled":Z
    new-instance v5, Landroid/os/TimestampedValue;

    iget-object v6, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$Environment;

    .line 555
    invoke-interface {v6}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$Environment;->elapsedRealtimeMillis()J

    move-result-wide v6

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v5, v6, v7, v2}, Landroid/os/TimestampedValue;-><init>(JLjava/lang/Object;)V

    iput-object v5, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mTelephonyTimeZoneFallbackEnabled:Landroid/os/TimestampedValue;

    .line 557
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "disableTelephonyFallbackIfNeeded: mTelephonyTimeZoneFallbackEnabled="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mTelephonyTimeZoneFallbackEnabled:Landroid/os/TimestampedValue;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 560
    .local v2, "logMsg":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->logTimeZoneDetectorChange(Ljava/lang/String;)V

    .line 563
    .end local v1    # "latestSuggestionIsNewerThanFallbackEnabled":Z
    .end local v2    # "logMsg":Ljava/lang/String;
    .end local v4    # "fallbackEnabled":Z
    :cond_62
    return-void
.end method

.method private doAutoTimeZoneDetection(Lcom/android/server/timezonedetector/ConfigurationInternal;Ljava/lang/String;)V
    .registers 6
    .param p1, "currentUserConfig"    # Lcom/android/server/timezonedetector/ConfigurationInternal;
    .param p2, "detectionReason"    # Ljava/lang/String;

    .line 443
    invoke-virtual {p1}, Lcom/android/server/timezonedetector/ConfigurationInternal;->getDetectionMode()I

    move-result v0

    packed-switch v0, :pswitch_data_5c

    .line 480
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown detection mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 481
    invoke-virtual {p1}, Lcom/android/server/timezonedetector/ConfigurationInternal;->getDetectionMode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 480
    const-string/jumbo v1, "time_zone_detector"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5b

    .line 477
    :pswitch_25
    invoke-direct {p0, p2}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->doTelephonyTimeZoneDetection(Ljava/lang/String;)V

    .line 478
    goto :goto_5b

    .line 448
    :pswitch_29
    invoke-direct {p0, p2}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->doGeolocationTimeZoneDetection(Ljava/lang/String;)Z

    move-result v0

    .line 452
    .local v0, "isGeoDetectionCertain":Z
    if-nez v0, :cond_5b

    iget-object v1, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mTelephonyTimeZoneFallbackEnabled:Landroid/os/TimestampedValue;

    .line 453
    invoke-virtual {v1}, Landroid/os/TimestampedValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_5b

    .line 454
    invoke-virtual {p1}, Lcom/android/server/timezonedetector/ConfigurationInternal;->isTelephonyFallbackSupported()Z

    move-result v1

    if-eqz v1, :cond_5b

    .line 472
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", telephony fallback mode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->doTelephonyTimeZoneDetection(Ljava/lang/String;)V

    goto :goto_5b

    .line 446
    .end local v0    # "isGeoDetectionCertain":Z
    :pswitch_5a
    nop

    .line 483
    :cond_5b
    :goto_5b
    return-void

    :pswitch_data_5c
    .packed-switch 0x1
        :pswitch_5a
        :pswitch_29
        :pswitch_25
    .end packed-switch
.end method

.method private doGeolocationTimeZoneDetection(Ljava/lang/String;)Z
    .registers 8
    .param p1, "detectionReason"    # Ljava/lang/String;

    .line 495
    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mLatestGeoLocationSuggestion:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    .line 496
    invoke-virtual {v0}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;

    .line 497
    .local v0, "latestGeolocationSuggestion":Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;
    const/4 v1, 0x0

    if-nez v0, :cond_c

    .line 498
    return v1

    .line 501
    :cond_c
    invoke-virtual {v0}, Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;->getZoneIds()Ljava/util/List;

    move-result-object v2

    .line 502
    .local v2, "zoneIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v2, :cond_13

    .line 506
    return v1

    .line 507
    :cond_13
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1b

    .line 511
    return v4

    .line 519
    :cond_1b
    iget-object v3, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$Environment;

    invoke-interface {v3}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$Environment;->getDeviceTimeZone()Ljava/lang/String;

    move-result-object v3

    .line 520
    .local v3, "deviceTimeZone":Ljava/lang/String;
    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_29

    .line 525
    move-object v1, v3

    .local v1, "zoneId":Ljava/lang/String;
    goto :goto_2f

    .line 527
    .end local v1    # "zoneId":Ljava/lang/String;
    :cond_29
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 529
    .restart local v1    # "zoneId":Ljava/lang/String;
    :goto_2f
    invoke-direct {p0, v1, p1}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->setDeviceTimeZoneIfRequired(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    return v4
.end method

.method private doTelephonyTimeZoneDetection(Ljava/lang/String;)V
    .registers 7
    .param p1, "detectionReason"    # Ljava/lang/String;

    .line 580
    nop

    .line 581
    invoke-direct {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->findBestTelephonySuggestion()Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$QualifiedTelephonyTimeZoneSuggestion;

    move-result-object v0

    .line 584
    .local v0, "bestTelephonySuggestion":Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$QualifiedTelephonyTimeZoneSuggestion;
    if-nez v0, :cond_8

    .line 590
    return-void

    .line 593
    :cond_8
    iget v1, v0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$QualifiedTelephonyTimeZoneSuggestion;->score:I

    const/4 v2, 0x2

    if-lt v1, v2, :cond_f

    const/4 v1, 0x1

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    .line 595
    .local v1, "suggestionGoodEnough":Z
    :goto_10
    if-nez v1, :cond_13

    .line 601
    return-void

    .line 606
    :cond_13
    iget-object v2, v0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$QualifiedTelephonyTimeZoneSuggestion;->suggestion:Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;

    invoke-virtual {v2}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->getZoneId()Ljava/lang/String;

    move-result-object v2

    .line 607
    .local v2, "zoneId":Ljava/lang/String;
    if-nez v2, :cond_3f

    .line 608
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Empty zone suggestion scored higher than expected. This is an error: bestTelephonySuggestion="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " detectionReason="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "time_zone_detector"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    return-void

    .line 614
    :cond_3f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Found good suggestion., bestTelephonySuggestion="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", detectionReason="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 617
    .local v3, "cause":Ljava/lang/String;
    invoke-direct {p0, v2, v3}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->setDeviceTimeZoneIfRequired(Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    return-void
.end method

.method private findBestTelephonySuggestion()Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$QualifiedTelephonyTimeZoneSuggestion;
    .registers 6

    .line 648
    const/4 v0, 0x0

    .line 654
    .local v0, "bestSuggestion":Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$QualifiedTelephonyTimeZoneSuggestion;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v2, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mTelephonySuggestionsBySlotIndex:Lcom/android/server/timezonedetector/ArrayMapWithHistory;

    invoke-virtual {v2}, Lcom/android/server/timezonedetector/ArrayMapWithHistory;->size()I

    move-result v2

    if-ge v1, v2, :cond_39

    .line 655
    iget-object v2, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mTelephonySuggestionsBySlotIndex:Lcom/android/server/timezonedetector/ArrayMapWithHistory;

    .line 656
    invoke-virtual {v2, v1}, Lcom/android/server/timezonedetector/ArrayMapWithHistory;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$QualifiedTelephonyTimeZoneSuggestion;

    .line 657
    .local v2, "candidateSuggestion":Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$QualifiedTelephonyTimeZoneSuggestion;
    if-nez v2, :cond_15

    .line 659
    goto :goto_36

    .line 662
    :cond_15
    if-nez v0, :cond_19

    .line 663
    move-object v0, v2

    goto :goto_36

    .line 664
    :cond_19
    iget v3, v2, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$QualifiedTelephonyTimeZoneSuggestion;->score:I

    iget v4, v0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$QualifiedTelephonyTimeZoneSuggestion;->score:I

    if-le v3, v4, :cond_21

    .line 665
    move-object v0, v2

    goto :goto_36

    .line 666
    :cond_21
    iget v3, v2, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$QualifiedTelephonyTimeZoneSuggestion;->score:I

    iget v4, v0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$QualifiedTelephonyTimeZoneSuggestion;->score:I

    if-ne v3, v4, :cond_36

    .line 668
    iget-object v3, v2, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$QualifiedTelephonyTimeZoneSuggestion;->suggestion:Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;

    invoke-virtual {v3}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->getSlotIndex()I

    move-result v3

    .line 669
    .local v3, "candidateSlotIndex":I
    iget-object v4, v0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$QualifiedTelephonyTimeZoneSuggestion;->suggestion:Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;

    invoke-virtual {v4}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->getSlotIndex()I

    move-result v4

    .line 670
    .local v4, "bestSlotIndex":I
    if-ge v3, v4, :cond_36

    .line 671
    move-object v0, v2

    .line 654
    .end local v2    # "candidateSuggestion":Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$QualifiedTelephonyTimeZoneSuggestion;
    .end local v3    # "candidateSlotIndex":I
    .end local v4    # "bestSlotIndex":I
    :cond_36
    :goto_36
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 675
    .end local v1    # "i":I
    :cond_39
    return-object v0
.end method

.method private static formatDebugString(Landroid/os/TimestampedValue;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/TimestampedValue<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 826
    .local p0, "value":Landroid/os/TimestampedValue;, "Landroid/os/TimestampedValue<*>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/os/TimestampedValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " @ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/os/TimestampedValue;->getReferenceTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized handleConfigurationInternalChanged()V
    .registers 4

    monitor-enter p0

    .line 689
    :try_start_1
    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$Environment;

    .line 690
    invoke-interface {v0}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$Environment;->getCurrentUserConfigurationInternal()Lcom/android/server/timezonedetector/ConfigurationInternal;

    move-result-object v0

    .line 691
    .local v0, "currentUserConfig":Lcom/android/server/timezonedetector/ConfigurationInternal;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleConfigurationInternalChanged: oldConfiguration="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mCurrentConfigurationInternal:Lcom/android/server/timezonedetector/ConfigurationInternal;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", newConfiguration="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 694
    .local v1, "logMsg":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->logTimeZoneDetectorChange(Ljava/lang/String;)V

    .line 695
    iput-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mCurrentConfigurationInternal:Lcom/android/server/timezonedetector/ConfigurationInternal;

    .line 699
    invoke-direct {p0, v0, v1}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->doAutoTimeZoneDetection(Lcom/android/server/timezonedetector/ConfigurationInternal;Ljava/lang/String;)V
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_30

    .line 700
    monitor-exit p0

    return-void

    .line 688
    .end local v0    # "currentUserConfig":Lcom/android/server/timezonedetector/ConfigurationInternal;
    .end local v1    # "logMsg":Ljava/lang/String;
    .end local p0    # "this":Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;
    :catchall_30
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private logTimeZoneDetectorChange(Ljava/lang/String;)V
    .registers 3
    .param p1, "logMsg"    # Ljava/lang/String;

    .line 569
    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mTimeZoneChangesLog:Landroid/util/LocalLog;

    invoke-virtual {v0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 570
    return-void
.end method

.method private static scoreTelephonySuggestion(Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;)I
    .registers 3
    .param p0, "suggestion"    # Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;

    .line 415
    invoke-virtual {p0}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->getZoneId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    .line 416
    const/4 v0, 0x0

    .local v0, "score":I
    goto :goto_39

    .line 417
    .end local v0    # "score":I
    :cond_8
    invoke-virtual {p0}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->getMatchType()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_38

    .line 418
    invoke-virtual {p0}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->getMatchType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_17

    goto :goto_38

    .line 421
    :cond_17
    invoke-virtual {p0}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->getQuality()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_20

    .line 422
    const/4 v0, 0x3

    .restart local v0    # "score":I
    goto :goto_39

    .line 423
    .end local v0    # "score":I
    :cond_20
    invoke-virtual {p0}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->getQuality()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_29

    .line 425
    const/4 v0, 0x2

    .restart local v0    # "score":I
    goto :goto_39

    .line 426
    .end local v0    # "score":I
    :cond_29
    invoke-virtual {p0}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->getQuality()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_32

    .line 428
    const/4 v0, 0x1

    .restart local v0    # "score":I
    goto :goto_39

    .line 430
    .end local v0    # "score":I
    :cond_32
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 420
    :cond_38
    :goto_38
    const/4 v0, 0x4

    .line 432
    .restart local v0    # "score":I
    :goto_39
    return v0
.end method

.method private setDeviceTimeZoneIfRequired(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "newZoneId"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/String;

    .line 622
    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$Environment;

    invoke-interface {v0}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$Environment;->getDeviceTimeZone()Ljava/lang/String;

    move-result-object v0

    .line 625
    .local v0, "currentZoneId":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 634
    return-void

    .line 637
    :cond_d
    iget-object v1, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$Environment;

    invoke-interface {v1, p1}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$Environment;->setDeviceTimeZone(Ljava/lang/String;)V

    .line 638
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set device time zone., currentZoneId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", newZoneId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", cause="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 642
    .local v1, "logMsg":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->logTimeZoneDetectorChange(Ljava/lang/String;)V

    .line 643
    return-void
.end method


# virtual methods
.method public declared-synchronized dump(Landroid/util/IndentingPrintWriter;[Ljava/lang/String;)V
    .registers 5
    .param p1, "ipw"    # Landroid/util/IndentingPrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    monitor-enter p0

    .line 707
    :try_start_1
    const-string v0, "TimeZoneDetectorStrategy:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 709
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 710
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCurrentConfigurationInternal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mCurrentConfigurationInternal:Lcom/android/server/timezonedetector/ConfigurationInternal;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 711
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Capabilities="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mCurrentConfigurationInternal:Lcom/android/server/timezonedetector/ConfigurationInternal;

    invoke-virtual {v1}, Lcom/android/server/timezonedetector/ConfigurationInternal;->createCapabilitiesAndConfig()Landroid/app/time/TimeZoneCapabilitiesAndConfig;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 713
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mEnvironment.isDeviceTimeZoneInitialized()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$Environment;

    .line 714
    invoke-interface {v1}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$Environment;->isDeviceTimeZoneInitialized()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 713
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 715
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mEnvironment.getDeviceTimeZone()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$Environment;

    invoke-interface {v1}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$Environment;->getDeviceTimeZone()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 717
    const-string v0, "Misc state:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 718
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 719
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mTelephonyTimeZoneFallbackEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mTelephonyTimeZoneFallbackEnabled:Landroid/os/TimestampedValue;

    .line 720
    invoke-static {v1}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->formatDebugString(Landroid/os/TimestampedValue;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 719
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 721
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 723
    const-string v0, "Time zone change log:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 724
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 725
    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mTimeZoneChangesLog:Landroid/util/LocalLog;

    invoke-virtual {v0, p1}, Landroid/util/LocalLog;->dump(Ljava/io/PrintWriter;)V

    .line 726
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 728
    const-string v0, "Manual suggestion history:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 729
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 730
    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mLatestManualSuggestion:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-virtual {v0, p1}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 731
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 733
    const-string v0, "Geolocation suggestion history:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 734
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 735
    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mLatestGeoLocationSuggestion:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-virtual {v0, p1}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 736
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 738
    const-string v0, "Telephony suggestion history:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 739
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 740
    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mTelephonySuggestionsBySlotIndex:Lcom/android/server/timezonedetector/ArrayMapWithHistory;

    invoke-virtual {v0, p1}, Lcom/android/server/timezonedetector/ArrayMapWithHistory;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 741
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 742
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;
    :try_end_e6
    .catchall {:try_start_1 .. :try_end_e6} :catchall_e8

    .line 743
    monitor-exit p0

    return-void

    .line 706
    .end local p0    # "this":Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;
    .end local p1    # "ipw":Landroid/util/IndentingPrintWriter;
    .end local p2    # "args":[Ljava/lang/String;
    :catchall_e8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized enableTelephonyTimeZoneFallback()V
    .registers 7

    monitor-enter p0

    .line 342
    :try_start_1
    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mTelephonyTimeZoneFallbackEnabled:Landroid/os/TimestampedValue;

    invoke-virtual {v0}, Landroid/os/TimestampedValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_54

    .line 343
    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mCurrentConfigurationInternal:Lcom/android/server/timezonedetector/ConfigurationInternal;

    .line 344
    .local v0, "currentUserConfig":Lcom/android/server/timezonedetector/ConfigurationInternal;
    const/4 v1, 0x1

    .line 345
    .local v1, "fallbackEnabled":Z
    new-instance v2, Landroid/os/TimestampedValue;

    iget-object v3, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$Environment;

    .line 346
    invoke-interface {v3}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$Environment;->elapsedRealtimeMillis()J

    move-result-wide v3

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Landroid/os/TimestampedValue;-><init>(JLjava/lang/Object;)V

    iput-object v2, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mTelephonyTimeZoneFallbackEnabled:Landroid/os/TimestampedValue;

    .line 348
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableTelephonyTimeZoneFallbackMode: currentUserConfig="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mTelephonyTimeZoneFallbackEnabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mTelephonyTimeZoneFallbackEnabled:Landroid/os/TimestampedValue;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 352
    .local v2, "logMsg":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->logTimeZoneDetectorChange(Ljava/lang/String;)V

    .line 368
    invoke-direct {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->disableTelephonyFallbackIfNeeded()V

    .line 370
    invoke-virtual {v0}, Lcom/android/server/timezonedetector/ConfigurationInternal;->isTelephonyFallbackSupported()Z

    move-result v3

    if-eqz v3, :cond_54

    .line 371
    const-string v3, "enableTelephonyTimeZoneFallbackMode"

    .line 372
    .local v3, "reason":Ljava/lang/String;
    invoke-direct {p0, v0, v3}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->doAutoTimeZoneDetection(Lcom/android/server/timezonedetector/ConfigurationInternal;Ljava/lang/String;)V
    :try_end_54
    .catchall {:try_start_1 .. :try_end_54} :catchall_56

    .line 375
    .end local v0    # "currentUserConfig":Lcom/android/server/timezonedetector/ConfigurationInternal;
    .end local v1    # "fallbackEnabled":Z
    .end local v2    # "logMsg":Ljava/lang/String;
    .end local v3    # "reason":Ljava/lang/String;
    .end local p0    # "this":Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;
    :cond_54
    monitor-exit p0

    return-void

    .line 341
    :catchall_56
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized findBestTelephonySuggestionForTests()Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$QualifiedTelephonyTimeZoneSuggestion;
    .registers 2

    monitor-enter p0

    .line 685
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->findBestTelephonySuggestion()Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$QualifiedTelephonyTimeZoneSuggestion;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_7

    monitor-exit p0

    return-object v0

    .line 685
    .end local p0    # "this":Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;
    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized generateMetricsState()Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;
    .registers 9

    monitor-enter p0

    .line 382
    nop

    .line 383
    :try_start_2
    invoke-direct {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->findBestTelephonySuggestion()Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$QualifiedTelephonyTimeZoneSuggestion;

    move-result-object v0

    .line 385
    .local v0, "bestQualifiedTelephonySuggestion":Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$QualifiedTelephonyTimeZoneSuggestion;
    if-nez v0, :cond_a

    .line 386
    const/4 v1, 0x0

    goto :goto_c

    :cond_a
    iget-object v1, v0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$QualifiedTelephonyTimeZoneSuggestion;->suggestion:Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;

    :goto_c
    move-object v6, v1

    .line 388
    .local v6, "telephonySuggestion":Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;
    new-instance v2, Lcom/android/server/timezonedetector/OrdinalGenerator;

    new-instance v1, Lcom/android/server/timezonedetector/TimeZoneCanonicalizer;

    invoke-direct {v1}, Lcom/android/server/timezonedetector/TimeZoneCanonicalizer;-><init>()V

    invoke-direct {v2, v1}, Lcom/android/server/timezonedetector/OrdinalGenerator;-><init>(Ljava/util/function/Function;)V

    .line 390
    .local v2, "tzIdOrdinalGenerator":Lcom/android/server/timezonedetector/OrdinalGenerator;, "Lcom/android/server/timezonedetector/OrdinalGenerator<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mCurrentConfigurationInternal:Lcom/android/server/timezonedetector/ConfigurationInternal;

    iget-object v1, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$Environment;

    .line 393
    invoke-interface {v1}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$Environment;->getDeviceTimeZone()Ljava/lang/String;

    move-result-object v4

    .line 394
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->getLatestManualSuggestion()Landroid/app/timezonedetector/ManualTimeZoneSuggestion;

    move-result-object v5

    .line 396
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->getLatestGeolocationSuggestion()Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;

    move-result-object v7

    .line 390
    invoke-static/range {v2 .. v7}, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->create(Lcom/android/server/timezonedetector/OrdinalGenerator;Lcom/android/server/timezonedetector/ConfigurationInternal;Ljava/lang/String;Landroid/app/timezonedetector/ManualTimeZoneSuggestion;Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;)Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;

    move-result-object v1
    :try_end_2b
    .catchall {:try_start_2 .. :try_end_2b} :catchall_2d

    monitor-exit p0

    return-object v1

    .line 381
    .end local v0    # "bestQualifiedTelephonySuggestion":Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$QualifiedTelephonyTimeZoneSuggestion;
    .end local v2    # "tzIdOrdinalGenerator":Lcom/android/server/timezonedetector/OrdinalGenerator;, "Lcom/android/server/timezonedetector/OrdinalGenerator<Ljava/lang/String;>;"
    .end local v6    # "telephonySuggestion":Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;
    .end local p0    # "this":Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;
    :catchall_2d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLatestGeolocationSuggestion()Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;
    .registers 2

    monitor-enter p0

    .line 767
    :try_start_1
    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mLatestGeoLocationSuggestion:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-object v0

    .line 767
    .end local p0    # "this":Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLatestManualSuggestion()Landroid/app/timezonedetector/ManualTimeZoneSuggestion;
    .registers 2

    monitor-enter p0

    .line 750
    :try_start_1
    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mLatestManualSuggestion:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/timezonedetector/ManualTimeZoneSuggestion;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-object v0

    .line 750
    .end local p0    # "this":Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLatestTelephonySuggestion(I)Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$QualifiedTelephonyTimeZoneSuggestion;
    .registers 4
    .param p1, "slotIndex"    # I

    monitor-enter p0

    .line 759
    :try_start_1
    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mTelephonySuggestionsBySlotIndex:Lcom/android/server/timezonedetector/ArrayMapWithHistory;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/timezonedetector/ArrayMapWithHistory;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$QualifiedTelephonyTimeZoneSuggestion;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-object v0

    .line 759
    .end local p0    # "this":Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;
    .end local p1    # "slotIndex":I
    :catchall_f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public isGeoTimeZoneDetectionSupported()Z
    .registers 2

    .line 408
    monitor-enter p0

    .line 409
    :try_start_1
    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mCurrentConfigurationInternal:Lcom/android/server/timezonedetector/ConfigurationInternal;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/ConfigurationInternal;->isGeoDetectionSupported()Z

    move-result v0

    monitor-exit p0

    return v0

    .line 410
    :catchall_9
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_9

    throw v0
.end method

.method public declared-synchronized isTelephonyFallbackEnabledForTests()Z
    .registers 2

    monitor-enter p0

    .line 772
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

    .line 772
    .end local p0    # "this":Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isTelephonyTimeZoneDetectionSupported()Z
    .registers 2

    .line 401
    monitor-enter p0

    .line 402
    :try_start_1
    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mCurrentConfigurationInternal:Lcom/android/server/timezonedetector/ConfigurationInternal;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/ConfigurationInternal;->isTelephonyDetectionSupported()Z

    move-result v0

    monitor-exit p0

    return v0

    .line 403
    :catchall_9
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_9

    throw v0
.end method

.method public declared-synchronized suggestGeolocationTimeZone(Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;)V
    .registers 5
    .param p1, "suggestion"    # Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;

    monitor-enter p0

    .line 248
    :try_start_1
    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mCurrentConfigurationInternal:Lcom/android/server/timezonedetector/ConfigurationInternal;

    .line 254
    .local v0, "currentUserConfig":Lcom/android/server/timezonedetector/ConfigurationInternal;
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    iget-object v1, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mLatestGeoLocationSuggestion:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-virtual {v1, p1}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->set(Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    invoke-direct {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->disableTelephonyFallbackIfNeeded()V

    .line 271
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "New geolocation time zone suggested. suggestion="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 272
    .local v1, "reason":Ljava/lang/String;
    invoke-direct {p0, v0, v1}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->doAutoTimeZoneDetection(Lcom/android/server/timezonedetector/ConfigurationInternal;Ljava/lang/String;)V
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_26

    .line 273
    monitor-exit p0

    return-void

    .line 247
    .end local v0    # "currentUserConfig":Lcom/android/server/timezonedetector/ConfigurationInternal;
    .end local v1    # "reason":Ljava/lang/String;
    .end local p0    # "this":Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;
    .end local p1    # "suggestion":Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;
    :catchall_26
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized suggestManualTimeZone(ILandroid/app/timezonedetector/ManualTimeZoneSuggestion;)Z
    .registers 12
    .param p1, "userId"    # I
    .param p2, "suggestion"    # Landroid/app/timezonedetector/ManualTimeZoneSuggestion;

    monitor-enter p0

    .line 279
    :try_start_1
    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mCurrentConfigurationInternal:Lcom/android/server/timezonedetector/ConfigurationInternal;

    .line 280
    .local v0, "currentUserConfig":Lcom/android/server/timezonedetector/ConfigurationInternal;
    invoke-virtual {v0}, Lcom/android/server/timezonedetector/ConfigurationInternal;->getUserId()I

    move-result v1

    const/4 v2, 0x0

    if-eq v1, p1, :cond_2f

    .line 281
    const-string/jumbo v1, "time_zone_detector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Manual suggestion received but user != current user, userId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " suggestion="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2d
    .catchall {:try_start_1 .. :try_end_2d} :catchall_94

    .line 285
    monitor-exit p0

    return v2

    .line 288
    .end local p0    # "this":Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;
    :cond_2f
    :try_start_2f
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    invoke-virtual {p2}, Landroid/app/timezonedetector/ManualTimeZoneSuggestion;->getZoneId()Ljava/lang/String;

    move-result-object v1

    .line 291
    .local v1, "timeZoneId":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Manual time suggestion received: suggestion="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 293
    .local v3, "cause":Ljava/lang/String;
    nop

    .line 294
    invoke-virtual {v0}, Lcom/android/server/timezonedetector/ConfigurationInternal;->createCapabilitiesAndConfig()Landroid/app/time/TimeZoneCapabilitiesAndConfig;

    move-result-object v4

    .line 295
    .local v4, "capabilitiesAndConfig":Landroid/app/time/TimeZoneCapabilitiesAndConfig;
    invoke-virtual {v4}, Landroid/app/time/TimeZoneCapabilitiesAndConfig;->getCapabilities()Landroid/app/time/TimeZoneCapabilities;

    move-result-object v5

    .line 296
    .local v5, "capabilities":Landroid/app/time/TimeZoneCapabilities;
    invoke-virtual {v5}, Landroid/app/time/TimeZoneCapabilities;->getSuggestManualTimeZoneCapability()I

    move-result v6

    const/16 v7, 0x28

    if-eq v6, v7, :cond_89

    .line 297
    const-string/jumbo v6, "time_zone_detector"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "User does not have the capability needed to set the time zone manually, capabilities="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", timeZoneId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", cause="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_87
    .catchall {:try_start_2f .. :try_end_87} :catchall_94

    .line 301
    monitor-exit p0

    return v2

    .line 308
    :cond_89
    :try_start_89
    iget-object v2, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mLatestManualSuggestion:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-virtual {v2, p2}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->set(Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    invoke-direct {p0, v1, v3}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->setDeviceTimeZoneIfRequired(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_91
    .catchall {:try_start_89 .. :try_end_91} :catchall_94

    .line 311
    const/4 v2, 0x1

    monitor-exit p0

    return v2

    .line 278
    .end local v0    # "currentUserConfig":Lcom/android/server/timezonedetector/ConfigurationInternal;
    .end local v1    # "timeZoneId":Ljava/lang/String;
    .end local v3    # "cause":Ljava/lang/String;
    .end local v4    # "capabilitiesAndConfig":Landroid/app/time/TimeZoneCapabilitiesAndConfig;
    .end local v5    # "capabilities":Landroid/app/time/TimeZoneCapabilities;
    .end local p1    # "userId":I
    .end local p2    # "suggestion":Landroid/app/timezonedetector/ManualTimeZoneSuggestion;
    :catchall_94
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized suggestTelephonyTimeZone(Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;)V
    .registers 7
    .param p1, "suggestion"    # Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;

    monitor-enter p0

    .line 318
    :try_start_1
    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mCurrentConfigurationInternal:Lcom/android/server/timezonedetector/ConfigurationInternal;

    .line 323
    .local v0, "currentUserConfig":Lcom/android/server/timezonedetector/ConfigurationInternal;
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    invoke-static {p1}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->scoreTelephonySuggestion(Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;)I

    move-result v1

    .line 327
    .local v1, "score":I
    new-instance v2, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$QualifiedTelephonyTimeZoneSuggestion;

    invoke-direct {v2, p1, v1}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$QualifiedTelephonyTimeZoneSuggestion;-><init>(Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;I)V

    .line 331
    .local v2, "scoredSuggestion":Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$QualifiedTelephonyTimeZoneSuggestion;
    iget-object v3, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mTelephonySuggestionsBySlotIndex:Lcom/android/server/timezonedetector/ArrayMapWithHistory;

    invoke-virtual {p1}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->getSlotIndex()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/android/server/timezonedetector/ArrayMapWithHistory;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "New telephony time zone suggested. suggestion="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 336
    .local v3, "reason":Ljava/lang/String;
    invoke-direct {p0, v0, v3}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->doAutoTimeZoneDetection(Lcom/android/server/timezonedetector/ConfigurationInternal;Ljava/lang/String;)V
    :try_end_32
    .catchall {:try_start_1 .. :try_end_32} :catchall_34

    .line 337
    monitor-exit p0

    return-void

    .line 317
    .end local v0    # "currentUserConfig":Lcom/android/server/timezonedetector/ConfigurationInternal;
    .end local v1    # "score":I
    .end local v2    # "scoredSuggestion":Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$QualifiedTelephonyTimeZoneSuggestion;
    .end local v3    # "reason":Ljava/lang/String;
    .end local p0    # "this":Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;
    .end local p1    # "suggestion":Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;
    :catchall_34
    move-exception p1

    monitor-exit p0

    throw p1
.end method
