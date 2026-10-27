.class public final Lcom/android/server/timedetector/TimeDetectorStrategyImpl;
.super Ljava/lang/Object;
.source "TimeDetectorStrategyImpl.java"

# interfaces
.implements Lcom/android/server/timedetector/TimeDetectorStrategy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final KEEP_SUGGESTION_HISTORY_SIZE:I = 0xa

.field private static final LOG_TAG:Ljava/lang/String; = "time_detector"

.field static final MAX_SUGGESTION_TIME_AGE_MILLIS:J = 0x5265c00L

.field private static final SYSTEM_CLOCK_PARANOIA_THRESHOLD_MILLIS:J = 0x3e8L

.field private static final TELEPHONY_BUCKET_COUNT:I = 0x18

.field static final TELEPHONY_BUCKET_SIZE_MILLIS:I = 0x36ee80

.field private static final TELEPHONY_INVALID_SCORE:I = -0x1


# instance fields
.field private final mEnvironment:Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;

.field private mLastAutoSystemClockTimeSet:Landroid/os/TimestampedValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/TimestampedValue<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mLastExternalSuggestion:Lcom/android/server/timezonedetector/ReferenceWithHistory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/timezonedetector/ReferenceWithHistory<",
            "Landroid/app/time/ExternalTimeSuggestion;",
            ">;"
        }
    .end annotation
.end field

.field private final mLastGnssSuggestion:Lcom/android/server/timezonedetector/ReferenceWithHistory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/timezonedetector/ReferenceWithHistory<",
            "Landroid/app/timedetector/GnssTimeSuggestion;",
            ">;"
        }
    .end annotation
.end field

.field private final mLastNetworkSuggestion:Lcom/android/server/timezonedetector/ReferenceWithHistory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/timezonedetector/ReferenceWithHistory<",
            "Landroid/app/timedetector/NetworkTimeSuggestion;",
            ">;"
        }
    .end annotation
.end field

.field private final mSuggestionBySlotIndex:Lcom/android/server/timezonedetector/ArrayMapWithHistory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/timezonedetector/ArrayMapWithHistory<",
            "Ljava/lang/Integer;",
            "Landroid/app/timedetector/TelephonyTimeSuggestion;",
            ">;"
        }
    .end annotation
.end field

.field private final mTimeChangesLog:Landroid/util/LocalLog;


# direct methods
.method public static synthetic $r8$lambda$gYSS8zrM-Lu8-IJuPo5HO8R9lrc(Lcom/android/server/timedetector/TimeDetectorStrategyImpl;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->handleAutoTimeConfigChanged()V

    return-void
.end method

.method constructor <init>(Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;)V
    .registers 5
    .param p1, "environment"    # Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    new-instance v0, Landroid/util/LocalLog;

    const/16 v1, 0x1e

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/util/LocalLog;-><init>(IZ)V

    iput-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mTimeChangesLog:Landroid/util/LocalLog;

    .line 113
    new-instance v0, Lcom/android/server/timezonedetector/ArrayMapWithHistory;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/android/server/timezonedetector/ArrayMapWithHistory;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mSuggestionBySlotIndex:Lcom/android/server/timezonedetector/ArrayMapWithHistory;

    .line 117
    new-instance v0, Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-direct {v0, v1}, Lcom/android/server/timezonedetector/ReferenceWithHistory;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mLastNetworkSuggestion:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    .line 121
    new-instance v0, Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-direct {v0, v1}, Lcom/android/server/timezonedetector/ReferenceWithHistory;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mLastGnssSuggestion:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    .line 125
    new-instance v0, Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-direct {v0, v1}, Lcom/android/server/timezonedetector/ReferenceWithHistory;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mLastExternalSuggestion:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    .line 204
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;

    iput-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;

    .line 205
    new-instance v1, Lcom/android/server/timedetector/TimeDetectorStrategyImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/timedetector/TimeDetectorStrategyImpl;)V

    invoke-interface {v0, v1}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;->setConfigChangeListener(Lcom/android/server/timezonedetector/ConfigurationChangeListener;)V

    .line 206
    return-void
.end method

.method static create(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/timedetector/ServiceConfigAccessor;)Lcom/android/server/timedetector/TimeDetectorStrategy;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "serviceConfigAccessor"    # Lcom/android/server/timedetector/ServiceConfigAccessor;

    .line 197
    new-instance v0, Lcom/android/server/timedetector/EnvironmentImpl;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/timedetector/EnvironmentImpl;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/timedetector/ServiceConfigAccessor;)V

    .line 199
    .local v0, "environment":Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;
    new-instance v1, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;

    invoke-direct {v1, v0}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;-><init>(Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;)V

    return-object v1
.end method

.method private doAutoTimeDetection(Ljava/lang/String;)V
    .registers 12
    .param p1, "detectionReason"    # Ljava/lang/String;

    .line 448
    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;

    invoke-interface {v0}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;->isAutoTimeDetectionEnabled()Z

    move-result v0

    if-nez v0, :cond_9

    .line 450
    return-void

    .line 454
    :cond_9
    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;

    invoke-interface {v0}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;->autoOriginPriorities()[I

    move-result-object v0

    .line 455
    .local v0, "originPriorities":[I
    array-length v1, v0

    const/4 v2, 0x0

    :goto_11
    if-ge v2, v1, :cond_f6

    aget v3, v0, v2

    .line 456
    .local v3, "origin":I
    const/4 v4, 0x0

    .line 457
    .local v4, "newUnixEpochTime":Landroid/os/TimestampedValue;, "Landroid/os/TimestampedValue<Ljava/lang/Long;>;"
    const/4 v5, 0x0

    .line 458
    .local v5, "cause":Ljava/lang/String;
    const/4 v6, 0x1

    const-string v7, ", detectionReason="

    if-ne v3, v6, :cond_43

    .line 459
    invoke-direct {p0}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->findBestTelephonySuggestion()Landroid/app/timedetector/TelephonyTimeSuggestion;

    move-result-object v6

    .line 460
    .local v6, "bestTelephonySuggestion":Landroid/app/timedetector/TelephonyTimeSuggestion;
    if-eqz v6, :cond_41

    .line 461
    invoke-virtual {v6}, Landroid/app/timedetector/TelephonyTimeSuggestion;->getUnixEpochTime()Landroid/os/TimestampedValue;

    move-result-object v4

    .line 462
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Found good telephony suggestion., bestTelephonySuggestion="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 466
    .end local v6    # "bestTelephonySuggestion":Landroid/app/timedetector/TelephonyTimeSuggestion;
    :cond_41
    goto/16 :goto_ec

    :cond_43
    const/4 v6, 0x3

    if-ne v3, v6, :cond_6d

    .line 467
    invoke-direct {p0}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->findLatestValidNetworkSuggestion()Landroid/app/timedetector/NetworkTimeSuggestion;

    move-result-object v6

    .line 468
    .local v6, "networkSuggestion":Landroid/app/timedetector/NetworkTimeSuggestion;
    if-eqz v6, :cond_6b

    .line 469
    invoke-virtual {v6}, Landroid/app/timedetector/NetworkTimeSuggestion;->getUnixEpochTime()Landroid/os/TimestampedValue;

    move-result-object v4

    .line 470
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Found good network suggestion., networkSuggestion="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 474
    .end local v6    # "networkSuggestion":Landroid/app/timedetector/NetworkTimeSuggestion;
    :cond_6b
    goto/16 :goto_ec

    :cond_6d
    const/4 v6, 0x4

    if-ne v3, v6, :cond_96

    .line 475
    invoke-direct {p0}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->findLatestValidGnssSuggestion()Landroid/app/timedetector/GnssTimeSuggestion;

    move-result-object v6

    .line 476
    .local v6, "gnssTimeSuggestion":Landroid/app/timedetector/GnssTimeSuggestion;
    if-eqz v6, :cond_95

    .line 477
    invoke-virtual {v6}, Landroid/app/timedetector/GnssTimeSuggestion;->getUnixEpochTime()Landroid/os/TimestampedValue;

    move-result-object v4

    .line 478
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Found good gnss suggestion., gnssTimeSuggestion="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 482
    .end local v6    # "gnssTimeSuggestion":Landroid/app/timedetector/GnssTimeSuggestion;
    :cond_95
    goto :goto_ec

    :cond_96
    const/4 v6, 0x5

    if-ne v3, v6, :cond_bf

    .line 483
    invoke-direct {p0}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->findLatestValidExternalSuggestion()Landroid/app/time/ExternalTimeSuggestion;

    move-result-object v6

    .line 484
    .local v6, "externalTimeSuggestion":Landroid/app/time/ExternalTimeSuggestion;
    if-eqz v6, :cond_be

    .line 485
    invoke-virtual {v6}, Landroid/app/time/ExternalTimeSuggestion;->getUnixEpochTime()Landroid/os/TimestampedValue;

    move-result-object v4

    .line 486
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Found good external suggestion., externalTimeSuggestion="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 490
    .end local v6    # "externalTimeSuggestion":Landroid/app/time/ExternalTimeSuggestion;
    :cond_be
    goto :goto_ec

    .line 491
    :cond_bf
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown or unsupported origin="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 492
    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": Skipping"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 491
    const-string/jumbo v7, "time_detector"

    invoke-static {v7, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    :goto_ec
    if-eqz v4, :cond_f2

    .line 498
    invoke-direct {p0, v3, v4, v5}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->setSystemClockIfRequired(ILandroid/os/TimestampedValue;Ljava/lang/String;)Z

    .line 499
    return-void

    .line 455
    .end local v3    # "origin":I
    .end local v4    # "newUnixEpochTime":Landroid/os/TimestampedValue;, "Landroid/os/TimestampedValue<Ljava/lang/Long;>;"
    .end local v5    # "cause":Ljava/lang/String;
    :cond_f2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_11

    .line 508
    :cond_f6
    return-void
.end method

.method private findBestTelephonySuggestion()Landroid/app/timedetector/TelephonyTimeSuggestion;
    .registers 11

    .line 513
    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;

    invoke-interface {v0}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;->elapsedRealtimeMillis()J

    move-result-wide v0

    .line 545
    .local v0, "elapsedRealtimeMillis":J
    const/4 v2, 0x0

    .line 546
    .local v2, "bestSuggestion":Landroid/app/timedetector/TelephonyTimeSuggestion;
    const/4 v3, -0x1

    .line 547
    .local v3, "bestScore":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_9
    iget-object v5, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mSuggestionBySlotIndex:Lcom/android/server/timezonedetector/ArrayMapWithHistory;

    invoke-virtual {v5}, Lcom/android/server/timezonedetector/ArrayMapWithHistory;->size()I

    move-result v5

    if-ge v4, v5, :cond_7b

    .line 548
    iget-object v5, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mSuggestionBySlotIndex:Lcom/android/server/timezonedetector/ArrayMapWithHistory;

    invoke-virtual {v5, v4}, Lcom/android/server/timezonedetector/ArrayMapWithHistory;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 549
    .local v5, "slotIndex":Ljava/lang/Integer;
    iget-object v6, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mSuggestionBySlotIndex:Lcom/android/server/timezonedetector/ArrayMapWithHistory;

    invoke-virtual {v6, v4}, Lcom/android/server/timezonedetector/ArrayMapWithHistory;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/timedetector/TelephonyTimeSuggestion;

    .line 550
    .local v6, "candidateSuggestion":Landroid/app/timedetector/TelephonyTimeSuggestion;
    const-string/jumbo v7, "time_detector"

    if-nez v6, :cond_3d

    .line 552
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Latest suggestion unexpectedly null for slotIndex. slotIndex="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    goto :goto_78

    .line 555
    :cond_3d
    invoke-virtual {v6}, Landroid/app/timedetector/TelephonyTimeSuggestion;->getUnixEpochTime()Landroid/os/TimestampedValue;

    move-result-object v8

    if-nez v8, :cond_5a

    .line 557
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Latest suggestion unexpectedly empty.  candidateSuggestion="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    goto :goto_78

    .line 562
    :cond_5a
    nop

    .line 563
    invoke-static {v0, v1, v6}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->scoreTelephonySuggestion(JLandroid/app/timedetector/TelephonyTimeSuggestion;)I

    move-result v7

    .line 564
    .local v7, "candidateScore":I
    const/4 v8, -0x1

    if-ne v7, v8, :cond_63

    .line 566
    goto :goto_78

    .line 570
    :cond_63
    if-eqz v2, :cond_76

    if-ge v3, v7, :cond_68

    goto :goto_76

    .line 573
    :cond_68
    if-ne v3, v7, :cond_78

    .line 575
    invoke-virtual {v6}, Landroid/app/timedetector/TelephonyTimeSuggestion;->getSlotIndex()I

    move-result v8

    .line 576
    .local v8, "candidateSlotIndex":I
    invoke-virtual {v2}, Landroid/app/timedetector/TelephonyTimeSuggestion;->getSlotIndex()I

    move-result v9

    .line 577
    .local v9, "bestSlotIndex":I
    if-ge v8, v9, :cond_78

    .line 578
    move-object v2, v6

    goto :goto_78

    .line 571
    .end local v8    # "candidateSlotIndex":I
    .end local v9    # "bestSlotIndex":I
    :cond_76
    :goto_76
    move-object v2, v6

    .line 572
    move v3, v7

    .line 547
    .end local v5    # "slotIndex":Ljava/lang/Integer;
    .end local v6    # "candidateSuggestion":Landroid/app/timedetector/TelephonyTimeSuggestion;
    .end local v7    # "candidateScore":I
    :cond_78
    :goto_78
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 582
    .end local v4    # "i":I
    :cond_7b
    return-object v2
.end method

.method private findLatestValidExternalSuggestion()Landroid/app/time/ExternalTimeSuggestion;
    .registers 7

    .line 655
    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mLastExternalSuggestion:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/time/ExternalTimeSuggestion;

    .line 656
    .local v0, "externalTimeSuggestion":Landroid/app/time/ExternalTimeSuggestion;
    const/4 v1, 0x0

    if-nez v0, :cond_c

    .line 658
    return-object v1

    .line 661
    :cond_c
    invoke-virtual {v0}, Landroid/app/time/ExternalTimeSuggestion;->getUnixEpochTime()Landroid/os/TimestampedValue;

    move-result-object v2

    .line 662
    .local v2, "unixEpochTime":Landroid/os/TimestampedValue;, "Landroid/os/TimestampedValue<Ljava/lang/Long;>;"
    iget-object v3, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;

    invoke-interface {v3}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;->elapsedRealtimeMillis()J

    move-result-wide v3

    .line 663
    .local v3, "elapsedRealTimeMillis":J
    invoke-static {v3, v4, v2}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->validateSuggestionUnixEpochTime(JLandroid/os/TimestampedValue;)Z

    move-result v5

    if-nez v5, :cond_1d

    .line 665
    return-object v1

    .line 668
    :cond_1d
    return-object v0
.end method

.method private findLatestValidGnssSuggestion()Landroid/app/timedetector/GnssTimeSuggestion;
    .registers 7

    .line 635
    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mLastGnssSuggestion:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/timedetector/GnssTimeSuggestion;

    .line 636
    .local v0, "gnssTimeSuggestion":Landroid/app/timedetector/GnssTimeSuggestion;
    const/4 v1, 0x0

    if-nez v0, :cond_c

    .line 638
    return-object v1

    .line 641
    :cond_c
    invoke-virtual {v0}, Landroid/app/timedetector/GnssTimeSuggestion;->getUnixEpochTime()Landroid/os/TimestampedValue;

    move-result-object v2

    .line 642
    .local v2, "unixEpochTime":Landroid/os/TimestampedValue;, "Landroid/os/TimestampedValue<Ljava/lang/Long;>;"
    iget-object v3, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;

    invoke-interface {v3}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;->elapsedRealtimeMillis()J

    move-result-wide v3

    .line 643
    .local v3, "elapsedRealTimeMillis":J
    invoke-static {v3, v4, v2}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->validateSuggestionUnixEpochTime(JLandroid/os/TimestampedValue;)Z

    move-result v5

    if-nez v5, :cond_1d

    .line 645
    return-object v1

    .line 648
    :cond_1d
    return-object v0
.end method

.method private findLatestValidNetworkSuggestion()Landroid/app/timedetector/NetworkTimeSuggestion;
    .registers 7

    .line 615
    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mLastNetworkSuggestion:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/timedetector/NetworkTimeSuggestion;

    .line 616
    .local v0, "networkSuggestion":Landroid/app/timedetector/NetworkTimeSuggestion;
    const/4 v1, 0x0

    if-nez v0, :cond_c

    .line 618
    return-object v1

    .line 621
    :cond_c
    invoke-virtual {v0}, Landroid/app/timedetector/NetworkTimeSuggestion;->getUnixEpochTime()Landroid/os/TimestampedValue;

    move-result-object v2

    .line 622
    .local v2, "unixEpochTime":Landroid/os/TimestampedValue;, "Landroid/os/TimestampedValue<Ljava/lang/Long;>;"
    iget-object v3, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;

    invoke-interface {v3}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;->elapsedRealtimeMillis()J

    move-result-wide v3

    .line 623
    .local v3, "elapsedRealTimeMillis":J
    invoke-static {v3, v4, v2}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->validateSuggestionUnixEpochTime(JLandroid/os/TimestampedValue;)Z

    move-result v5

    if-nez v5, :cond_1d

    .line 625
    return-object v1

    .line 628
    :cond_1d
    return-object v0
.end method

.method private declared-synchronized handleAutoTimeConfigChanged()V
    .registers 3

    monitor-enter p0

    .line 306
    :try_start_1
    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;

    invoke-interface {v0}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;->isAutoTimeDetectionEnabled()Z

    move-result v0

    .line 309
    .local v0, "enabled":Z
    if-eqz v0, :cond_f

    .line 310
    const-string v1, "Auto time zone detection config changed."

    .line 311
    .local v1, "reason":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->doAutoTimeDetection(Ljava/lang/String;)V

    .line 312
    .end local v1    # "reason":Ljava/lang/String;
    goto :goto_12

    .line 315
    .end local p0    # "this":Lcom/android/server/timedetector/TimeDetectorStrategyImpl;
    :cond_f
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mLastAutoSystemClockTimeSet:Landroid/os/TimestampedValue;
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    .line 317
    :goto_12
    monitor-exit p0

    return-void

    .line 305
    .end local v0    # "enabled":Z
    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static isOriginAutomatic(I)Z
    .registers 2
    .param p0, "origin"    # I

    .line 707
    const/4 v0, 0x2

    if-eq p0, v0, :cond_5

    const/4 v0, 0x1

    goto :goto_6

    :cond_5
    const/4 v0, 0x0

    :goto_6
    return v0
.end method

.method private static scoreTelephonySuggestion(JLandroid/app/timedetector/TelephonyTimeSuggestion;)I
    .registers 10
    .param p0, "elapsedRealtimeMillis"    # J
    .param p2, "timeSuggestion"    # Landroid/app/timedetector/TelephonyTimeSuggestion;

    .line 589
    invoke-virtual {p2}, Landroid/app/timedetector/TelephonyTimeSuggestion;->getUnixEpochTime()Landroid/os/TimestampedValue;

    move-result-object v0

    .line 590
    .local v0, "unixEpochTime":Landroid/os/TimestampedValue;, "Landroid/os/TimestampedValue<Ljava/lang/Long;>;"
    invoke-static {p0, p1, v0}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->validateSuggestionUnixEpochTime(JLandroid/os/TimestampedValue;)Z

    move-result v1

    const/4 v2, -0x1

    if-nez v1, :cond_2f

    .line 591
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Existing suggestion found to be invalid elapsedRealtimeMillis="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", timeSuggestion="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "time_detector"

    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    return v2

    .line 599
    :cond_2f
    invoke-virtual {v0}, Landroid/os/TimestampedValue;->getReferenceTimeMillis()J

    move-result-wide v3

    sub-long v3, p0, v3

    .line 602
    .local v3, "ageMillis":J
    const-wide/32 v5, 0x36ee80

    div-long v5, v3, v5

    long-to-int v1, v5

    .line 603
    .local v1, "bucketIndex":I
    const/16 v5, 0x18

    if-lt v1, v5, :cond_40

    .line 604
    return v2

    .line 608
    :cond_40
    rsub-int/lit8 v2, v1, 0x18

    return v2
.end method

.method private setSystemClockIfRequired(ILandroid/os/TimestampedValue;Ljava/lang/String;)Z
    .registers 7
    .param p1, "origin"    # I
    .param p3, "cause"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/TimestampedValue<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 675
    .local p2, "time":Landroid/os/TimestampedValue;, "Landroid/os/TimestampedValue<Ljava/lang/Long;>;"
    invoke-static {p1}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->isOriginAutomatic(I)Z

    move-result v0

    .line 676
    .local v0, "isOriginAutomatic":Z
    const/4 v1, 0x0

    if-eqz v0, :cond_10

    .line 677
    iget-object v2, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;

    invoke-interface {v2}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;->isAutoTimeDetectionEnabled()Z

    move-result v2

    if-nez v2, :cond_19

    .line 684
    return v1

    .line 687
    :cond_10
    iget-object v2, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;

    invoke-interface {v2}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;->isAutoTimeDetectionEnabled()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 694
    return v1

    .line 698
    :cond_19
    iget-object v1, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;

    invoke-interface {v1}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;->acquireWakeLock()V

    .line 700
    :try_start_1e
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->setSystemClockUnderWakeLock(ILandroid/os/TimestampedValue;Ljava/lang/String;)Z

    move-result v1
    :try_end_22
    .catchall {:try_start_1e .. :try_end_22} :catchall_28

    .line 702
    iget-object v2, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;

    invoke-interface {v2}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;->releaseWakeLock()V

    .line 700
    return v1

    .line 702
    :catchall_28
    move-exception v1

    iget-object v2, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;

    invoke-interface {v2}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;->releaseWakeLock()V

    .line 703
    throw v1
.end method

.method private setSystemClockUnderWakeLock(ILandroid/os/TimestampedValue;Ljava/lang/String;)Z
    .registers 22
    .param p1, "origin"    # I
    .param p3, "cause"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/TimestampedValue<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 714
    .local p2, "newTime":Landroid/os/TimestampedValue;, "Landroid/os/TimestampedValue<Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    iget-object v3, v0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;

    invoke-interface {v3}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;->elapsedRealtimeMillis()J

    move-result-wide v3

    .line 715
    .local v3, "elapsedRealtimeMillis":J
    invoke-static/range {p1 .. p1}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->isOriginAutomatic(I)Z

    move-result v5

    .line 716
    .local v5, "isOriginAutomatic":Z
    iget-object v6, v0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;

    invoke-interface {v6}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;->systemClockMillis()J

    move-result-wide v6

    .line 717
    .local v6, "actualSystemClockMillis":J
    const-string v8, " cause="

    if-eqz v5, :cond_63

    .line 720
    iget-object v9, v0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mLastAutoSystemClockTimeSet:Landroid/os/TimestampedValue;

    if-eqz v9, :cond_63

    .line 721
    invoke-static {v9, v3, v4}, Lcom/android/server/timedetector/TimeDetectorStrategy;->getTimeAt(Landroid/os/TimestampedValue;J)J

    move-result-wide v9

    .line 723
    .local v9, "expectedTimeMillis":J
    sub-long v11, v9, v6

    .line 724
    invoke-static {v11, v12}, Ljava/lang/Math;->abs(J)J

    move-result-wide v11

    .line 725
    .local v11, "absSystemClockDifference":J
    const-wide/16 v13, 0x3e8

    cmp-long v13, v11, v13

    if-lez v13, :cond_63

    .line 726
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "System clock has not tracked elapsed real time clock. A clock may be inaccurate or something unexpectedly set the system clock. elapsedRealtimeMillis="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " expectedTimeMillis="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " actualTimeMillis="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "time_detector"

    invoke-static {v14, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    .end local v9    # "expectedTimeMillis":J
    .end local v11    # "absSystemClockDifference":J
    :cond_63
    invoke-static {v1, v3, v4}, Lcom/android/server/timedetector/TimeDetectorStrategy;->getTimeAt(Landroid/os/TimestampedValue;J)J

    move-result-wide v9

    .line 743
    .local v9, "newSystemClockMillis":J
    sub-long v11, v9, v6

    invoke-static {v11, v12}, Ljava/lang/Math;->abs(J)J

    move-result-wide v11

    .line 744
    .local v11, "absTimeDifference":J
    iget-object v13, v0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;

    invoke-interface {v13}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;->systemClockUpdateThresholdMillis()I

    move-result v13

    int-to-long v13, v13

    .line 745
    .local v13, "systemClockUpdateThreshold":J
    cmp-long v15, v11, v13

    const/16 v16, 0x1

    if-gez v15, :cond_7b

    .line 755
    return v16

    .line 758
    :cond_7b
    iget-object v15, v0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;

    invoke-interface {v15, v9, v10}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;->setSystemClock(J)V

    .line 759
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v17, v5

    .end local v5    # "isOriginAutomatic":Z
    .local v17, "isOriginAutomatic":Z
    const-string v5, "Set system clock using time="

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " elapsedRealtimeMillis="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " (old) actualSystemClockMillis="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " newSystemClockMillis="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 767
    .local v5, "logMsg":Ljava/lang/String;
    iget-object v8, v0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mTimeChangesLog:Landroid/util/LocalLog;

    invoke-virtual {v8, v5}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 771
    invoke-static/range {p1 .. p1}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->isOriginAutomatic(I)Z

    move-result v8

    if-eqz v8, :cond_c9

    .line 772
    iput-object v1, v0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mLastAutoSystemClockTimeSet:Landroid/os/TimestampedValue;

    goto :goto_cc

    .line 774
    :cond_c9
    const/4 v8, 0x0

    iput-object v8, v0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mLastAutoSystemClockTimeSet:Landroid/os/TimestampedValue;

    .line 776
    :goto_cc
    return v16
.end method

.method private storeTelephonySuggestion(Landroid/app/timedetector/TelephonyTimeSuggestion;)Z
    .registers 12
    .param p1, "suggestion"    # Landroid/app/timedetector/TelephonyTimeSuggestion;

    .line 375
    invoke-virtual {p1}, Landroid/app/timedetector/TelephonyTimeSuggestion;->getUnixEpochTime()Landroid/os/TimestampedValue;

    move-result-object v0

    .line 377
    .local v0, "newUnixEpochTime":Landroid/os/TimestampedValue;, "Landroid/os/TimestampedValue<Ljava/lang/Long;>;"
    invoke-virtual {p1}, Landroid/app/timedetector/TelephonyTimeSuggestion;->getSlotIndex()I

    move-result v1

    .line 378
    .local v1, "slotIndex":I
    iget-object v2, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mSuggestionBySlotIndex:Lcom/android/server/timezonedetector/ArrayMapWithHistory;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/timezonedetector/ArrayMapWithHistory;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/timedetector/TelephonyTimeSuggestion;

    .line 379
    .local v2, "previousSuggestion":Landroid/app/timedetector/TelephonyTimeSuggestion;
    if-eqz v2, :cond_86

    .line 381
    invoke-virtual {v2}, Landroid/app/timedetector/TelephonyTimeSuggestion;->getUnixEpochTime()Landroid/os/TimestampedValue;

    move-result-object v3

    const/4 v4, 0x0

    const-string/jumbo v5, "time_detector"

    if-eqz v3, :cond_65

    .line 382
    invoke-virtual {v2}, Landroid/app/timedetector/TelephonyTimeSuggestion;->getUnixEpochTime()Landroid/os/TimestampedValue;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/TimestampedValue;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2b

    goto :goto_65

    .line 390
    :cond_2b
    nop

    .line 391
    invoke-virtual {v2}, Landroid/app/timedetector/TelephonyTimeSuggestion;->getUnixEpochTime()Landroid/os/TimestampedValue;

    move-result-object v3

    .line 390
    invoke-static {v0, v3}, Landroid/os/TimestampedValue;->referenceTimeDifference(Landroid/os/TimestampedValue;Landroid/os/TimestampedValue;)J

    move-result-wide v6

    .line 392
    .local v6, "referenceTimeDifference":J
    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-gez v3, :cond_86

    .line 394
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Out of order telephony suggestion received. referenceTimeDifference="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, " previousSuggestion="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v8, " suggestion="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    return v4

    .line 384
    .end local v6    # "referenceTimeDifference":J
    :cond_65
    :goto_65
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Previous suggestion is null or has a null time. previousSuggestion="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", suggestion="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    return v4

    .line 403
    :cond_86
    iget-object v3, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mSuggestionBySlotIndex:Lcom/android/server/timezonedetector/ArrayMapWithHistory;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, p1}, Lcom/android/server/timezonedetector/ArrayMapWithHistory;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    const/4 v3, 0x1

    return v3
.end method

.method private validateAutoSuggestionTime(Landroid/os/TimestampedValue;Ljava/lang/Object;)Z
    .registers 4
    .param p2, "suggestion"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/TimestampedValue<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 428
    .local p1, "newUnixEpochTime":Landroid/os/TimestampedValue;, "Landroid/os/TimestampedValue<Ljava/lang/Long;>;"
    invoke-direct {p0, p1, p2}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->validateSuggestionTime(Landroid/os/TimestampedValue;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 429
    invoke-direct {p0, p1, p2}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->validateSuggestionAgainstLowerBound(Landroid/os/TimestampedValue;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    .line 428
    :goto_f
    return v0
.end method

.method private validateSuggestionAgainstLowerBound(Landroid/os/TimestampedValue;Ljava/lang/Object;)Z
    .registers 6
    .param p2, "suggestion"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/TimestampedValue<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 434
    .local p1, "newUnixEpochTime":Landroid/os/TimestampedValue;, "Landroid/os/TimestampedValue<Ljava/lang/Long;>;"
    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;

    invoke-interface {v0}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;->autoTimeLowerBound()Ljava/time/Instant;

    move-result-object v0

    .line 437
    .local v0, "lowerBound":Ljava/time/Instant;
    invoke-virtual {p1}, Landroid/os/TimestampedValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/time/Instant;->isAfter(Ljava/time/Instant;)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 438
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Suggestion points to time before lower bound, skipping it. suggestion="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", lower bound="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "time_detector"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    const/4 v1, 0x0

    return v1

    .line 443
    :cond_3f
    const/4 v1, 0x1

    return v1
.end method

.method private validateSuggestionTime(Landroid/os/TimestampedValue;Ljava/lang/Object;)Z
    .registers 10
    .param p2, "suggestion"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/TimestampedValue<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 409
    .local p1, "newUnixEpochTime":Landroid/os/TimestampedValue;, "Landroid/os/TimestampedValue<Ljava/lang/Long;>;"
    invoke-virtual {p1}, Landroid/os/TimestampedValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    const-string/jumbo v2, "time_detector"

    if-nez v0, :cond_21

    .line 410
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Suggested time value is null. suggestion="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    return v1

    .line 415
    :cond_21
    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;

    invoke-interface {v0}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;->elapsedRealtimeMillis()J

    move-result-wide v3

    .line 416
    .local v3, "elapsedRealtimeMillis":J
    invoke-virtual {p1}, Landroid/os/TimestampedValue;->getReferenceTimeMillis()J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-gez v0, :cond_50

    .line 418
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "New reference time is in the future? Ignoring. elapsedRealtimeMillis="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ", suggestion="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    return v1

    .line 423
    :cond_50
    const/4 v0, 0x1

    return v0
.end method

.method private static validateSuggestionUnixEpochTime(JLandroid/os/TimestampedValue;)Z
    .registers 11
    .param p0, "elapsedRealtimeMillis"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Landroid/os/TimestampedValue<",
            "Ljava/lang/Long;",
            ">;)Z"
        }
    .end annotation

    .line 856
    .local p2, "unixEpochTime":Landroid/os/TimestampedValue;, "Landroid/os/TimestampedValue<Ljava/lang/Long;>;"
    invoke-virtual {p2}, Landroid/os/TimestampedValue;->getReferenceTimeMillis()J

    move-result-wide v0

    .line 857
    .local v0, "referenceTimeMillis":J
    cmp-long v2, v0, p0

    const/4 v3, 0x0

    if-lez v2, :cond_a

    .line 861
    return v3

    .line 869
    :cond_a
    sub-long v4, p0, v0

    .line 870
    .local v4, "ageMillis":J
    const-wide/32 v6, 0x5265c00

    cmp-long v2, v4, v6

    if-gtz v2, :cond_14

    const/4 v3, 0x1

    :cond_14
    return v3
.end method


# virtual methods
.method public declared-synchronized dump(Landroid/util/IndentingPrintWriter;[Ljava/lang/String;)V
    .registers 14
    .param p1, "ipw"    # Landroid/util/IndentingPrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    monitor-enter p0

    .line 321
    :try_start_1
    const-string v0, "TimeDetectorStrategy:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 322
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 324
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mLastAutoSystemClockTimeSet="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mLastAutoSystemClockTimeSet:Landroid/os/TimestampedValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 325
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mEnvironment.isAutoTimeDetectionEnabled()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;

    .line 326
    invoke-interface {v1}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;->isAutoTimeDetectionEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 325
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 327
    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;

    invoke-interface {v0}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;->elapsedRealtimeMillis()J

    move-result-wide v0

    .line 328
    .local v0, "elapsedRealtimeMillis":J
    const-string v2, "mEnvironment.elapsedRealtimeMillis()=%s (%s)\n"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    .line 329
    invoke-static {v0, v1}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v7, 0x1

    aput-object v5, v4, v7

    .line 328
    invoke-virtual {p1, v2, v4}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 330
    iget-object v2, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;

    invoke-interface {v2}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;->systemClockMillis()J

    move-result-wide v4

    .line 331
    .local v4, "systemClockMillis":J
    const-string v2, "mEnvironment.systemClockMillis()=%s (%s)\n"

    new-array v8, v3, [Ljava/lang/Object;

    .line 332
    invoke-static {v4, v5}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v9

    aput-object v9, v8, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v8, v7

    .line 331
    invoke-virtual {p1, v2, v8}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 333
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mEnvironment.systemClockUpdateThresholdMillis()="

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v8, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;

    .line 334
    invoke-interface {v8}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;->systemClockUpdateThresholdMillis()I

    move-result v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 333
    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 335
    iget-object v2, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;

    invoke-interface {v2}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;->autoTimeLowerBound()Ljava/time/Instant;

    move-result-object v2

    .line 336
    .local v2, "autoTimeLowerBound":Ljava/time/Instant;
    const-string v8, "mEnvironment.autoTimeLowerBound()=%s (%s)\n"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v6

    .line 337
    invoke-virtual {v2}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v3, v7

    .line 336
    invoke-virtual {p1, v8, v3}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 338
    iget-object v3, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;

    .line 339
    invoke-interface {v3}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;->autoOriginPriorities()[I

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v3

    new-instance v6, Lcom/android/server/timedetector/TimeDetectorStrategyImpl$$ExternalSyntheticLambda1;

    invoke-direct {v6}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl$$ExternalSyntheticLambda1;-><init>()V

    .line 340
    invoke-interface {v3, v6}, Ljava/util/stream/IntStream;->mapToObj(Ljava/util/function/IntFunction;)Ljava/util/stream/Stream;

    move-result-object v3

    const-string v6, ","

    const-string v7, "["

    const-string v8, "]"

    .line 341
    invoke-static {v6, v7, v8}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 342
    .local v3, "priorities":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mEnvironment.autoOriginPriorities()="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 344
    const-string v6, "Time change log:"

    invoke-virtual {p1, v6}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 345
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 346
    iget-object v6, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mTimeChangesLog:Landroid/util/LocalLog;

    invoke-virtual {v6, p1}, Landroid/util/LocalLog;->dump(Ljava/io/PrintWriter;)V

    .line 347
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 349
    const-string v6, "Telephony suggestion history:"

    invoke-virtual {p1, v6}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 350
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 351
    iget-object v6, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mSuggestionBySlotIndex:Lcom/android/server/timezonedetector/ArrayMapWithHistory;

    invoke-virtual {v6, p1}, Lcom/android/server/timezonedetector/ArrayMapWithHistory;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 352
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 354
    const-string v6, "Network suggestion history:"

    invoke-virtual {p1, v6}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 355
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 356
    iget-object v6, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mLastNetworkSuggestion:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-virtual {v6, p1}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 357
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 359
    const-string v6, "Gnss suggestion history:"

    invoke-virtual {p1, v6}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 360
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 361
    iget-object v6, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mLastGnssSuggestion:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-virtual {v6, p1}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 362
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 364
    const-string v6, "External suggestion history:"

    invoke-virtual {p1, v6}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 365
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 366
    iget-object v6, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mLastExternalSuggestion:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-virtual {v6, p1}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 367
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 369
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;
    :try_end_133
    .catchall {:try_start_1 .. :try_end_133} :catchall_135

    .line 370
    monitor-exit p0

    return-void

    .line 320
    .end local v0    # "elapsedRealtimeMillis":J
    .end local v2    # "autoTimeLowerBound":Ljava/time/Instant;
    .end local v3    # "priorities":Ljava/lang/String;
    .end local v4    # "systemClockMillis":J
    .end local p0    # "this":Lcom/android/server/timedetector/TimeDetectorStrategyImpl;
    .end local p1    # "ipw":Landroid/util/IndentingPrintWriter;
    .end local p2    # "args":[Ljava/lang/String;
    :catchall_135
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized findBestTelephonySuggestionForTests()Landroid/app/timedetector/TelephonyTimeSuggestion;
    .registers 2

    monitor-enter p0

    .line 786
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->findBestTelephonySuggestion()Landroid/app/timedetector/TelephonyTimeSuggestion;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_7

    monitor-exit p0

    return-object v0

    .line 786
    .end local p0    # "this":Lcom/android/server/timedetector/TimeDetectorStrategyImpl;
    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized findLatestValidExternalSuggestionForTests()Landroid/app/time/ExternalTimeSuggestion;
    .registers 2

    monitor-enter p0

    .line 816
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->findLatestValidExternalSuggestion()Landroid/app/time/ExternalTimeSuggestion;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_7

    monitor-exit p0

    return-object v0

    .line 816
    .end local p0    # "this":Lcom/android/server/timedetector/TimeDetectorStrategyImpl;
    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized findLatestValidGnssSuggestionForTests()Landroid/app/timedetector/GnssTimeSuggestion;
    .registers 2

    monitor-enter p0

    .line 806
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->findLatestValidGnssSuggestion()Landroid/app/timedetector/GnssTimeSuggestion;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_7

    monitor-exit p0

    return-object v0

    .line 806
    .end local p0    # "this":Lcom/android/server/timedetector/TimeDetectorStrategyImpl;
    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized findLatestValidNetworkSuggestionForTests()Landroid/app/timedetector/NetworkTimeSuggestion;
    .registers 2

    monitor-enter p0

    .line 796
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->findLatestValidNetworkSuggestion()Landroid/app/timedetector/NetworkTimeSuggestion;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_7

    monitor-exit p0

    return-object v0

    .line 796
    .end local p0    # "this":Lcom/android/server/timedetector/TimeDetectorStrategyImpl;
    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getConfigurationInternal(I)Lcom/android/server/timedetector/ConfigurationInternal;
    .registers 3
    .param p1, "userId"    # I

    .line 302
    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;

    invoke-interface {v0, p1}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl$Environment;->configurationInternal(I)Lcom/android/server/timedetector/ConfigurationInternal;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getLatestExternalSuggestion()Landroid/app/time/ExternalTimeSuggestion;
    .registers 2

    monitor-enter p0

    .line 851
    :try_start_1
    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mLastExternalSuggestion:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/time/ExternalTimeSuggestion;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-object v0

    .line 851
    .end local p0    # "this":Lcom/android/server/timedetector/TimeDetectorStrategyImpl;
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLatestGnssSuggestion()Landroid/app/timedetector/GnssTimeSuggestion;
    .registers 2

    monitor-enter p0

    .line 842
    :try_start_1
    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mLastGnssSuggestion:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/timedetector/GnssTimeSuggestion;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-object v0

    .line 842
    .end local p0    # "this":Lcom/android/server/timedetector/TimeDetectorStrategyImpl;
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLatestNetworkSuggestion()Landroid/app/timedetector/NetworkTimeSuggestion;
    .registers 2

    monitor-enter p0

    .line 833
    :try_start_1
    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mLastNetworkSuggestion:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/timedetector/NetworkTimeSuggestion;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-object v0

    .line 833
    .end local p0    # "this":Lcom/android/server/timedetector/TimeDetectorStrategyImpl;
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLatestTelephonySuggestion(I)Landroid/app/timedetector/TelephonyTimeSuggestion;
    .registers 4
    .param p1, "slotIndex"    # I

    monitor-enter p0

    .line 824
    :try_start_1
    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mSuggestionBySlotIndex:Lcom/android/server/timezonedetector/ArrayMapWithHistory;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/timezonedetector/ArrayMapWithHistory;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/timedetector/TelephonyTimeSuggestion;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-object v0

    .line 824
    .end local p0    # "this":Lcom/android/server/timedetector/TimeDetectorStrategyImpl;
    .end local p1    # "slotIndex":I
    :catchall_f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized suggestExternalTime(Landroid/app/time/ExternalTimeSuggestion;)V
    .registers 5
    .param p1, "timeSuggestion"    # Landroid/app/time/ExternalTimeSuggestion;

    monitor-enter p0

    .line 210
    :try_start_1
    invoke-virtual {p1}, Landroid/app/time/ExternalTimeSuggestion;->getUnixEpochTime()Landroid/os/TimestampedValue;

    move-result-object v0

    .line 212
    .local v0, "newUnixEpochTime":Landroid/os/TimestampedValue;, "Landroid/os/TimestampedValue<Ljava/lang/Long;>;"
    invoke-direct {p0, v0, p1}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->validateAutoSuggestionTime(Landroid/os/TimestampedValue;Ljava/lang/Object;)Z

    move-result v1
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_2a

    if-nez v1, :cond_d

    .line 213
    monitor-exit p0

    return-void

    .line 216
    :cond_d
    :try_start_d
    iget-object v1, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mLastExternalSuggestion:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-virtual {v1, p1}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->set(Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "External time suggestion received: suggestion="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 219
    .local v1, "reason":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->doAutoTimeDetection(Ljava/lang/String;)V
    :try_end_28
    .catchall {:try_start_d .. :try_end_28} :catchall_2a

    .line 220
    monitor-exit p0

    return-void

    .line 209
    .end local v0    # "newUnixEpochTime":Landroid/os/TimestampedValue;, "Landroid/os/TimestampedValue<Ljava/lang/Long;>;"
    .end local v1    # "reason":Ljava/lang/String;
    .end local p0    # "this":Lcom/android/server/timedetector/TimeDetectorStrategyImpl;
    .end local p1    # "timeSuggestion":Landroid/app/time/ExternalTimeSuggestion;
    :catchall_2a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized suggestGnssTime(Landroid/app/timedetector/GnssTimeSuggestion;)V
    .registers 5
    .param p1, "timeSuggestion"    # Landroid/app/timedetector/GnssTimeSuggestion;

    monitor-enter p0

    .line 224
    :try_start_1
    invoke-virtual {p1}, Landroid/app/timedetector/GnssTimeSuggestion;->getUnixEpochTime()Landroid/os/TimestampedValue;

    move-result-object v0

    .line 226
    .local v0, "newUnixEpochTime":Landroid/os/TimestampedValue;, "Landroid/os/TimestampedValue<Ljava/lang/Long;>;"
    invoke-direct {p0, v0, p1}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->validateAutoSuggestionTime(Landroid/os/TimestampedValue;Ljava/lang/Object;)Z

    move-result v1
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_2a

    if-nez v1, :cond_d

    .line 227
    monitor-exit p0

    return-void

    .line 230
    :cond_d
    :try_start_d
    iget-object v1, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mLastGnssSuggestion:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-virtual {v1, p1}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->set(Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GNSS time suggestion received: suggestion="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 233
    .local v1, "reason":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->doAutoTimeDetection(Ljava/lang/String;)V
    :try_end_28
    .catchall {:try_start_d .. :try_end_28} :catchall_2a

    .line 234
    monitor-exit p0

    return-void

    .line 223
    .end local v0    # "newUnixEpochTime":Landroid/os/TimestampedValue;, "Landroid/os/TimestampedValue<Ljava/lang/Long;>;"
    .end local v1    # "reason":Ljava/lang/String;
    .end local p0    # "this":Lcom/android/server/timedetector/TimeDetectorStrategyImpl;
    .end local p1    # "timeSuggestion":Landroid/app/timedetector/GnssTimeSuggestion;
    :catchall_2a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized suggestManualTime(Landroid/app/timedetector/ManualTimeSuggestion;)Z
    .registers 5
    .param p1, "suggestion"    # Landroid/app/timedetector/ManualTimeSuggestion;

    monitor-enter p0

    .line 238
    :try_start_1
    invoke-virtual {p1}, Landroid/app/timedetector/ManualTimeSuggestion;->getUnixEpochTime()Landroid/os/TimestampedValue;

    move-result-object v0

    .line 240
    .local v0, "newUnixEpochTime":Landroid/os/TimestampedValue;, "Landroid/os/TimestampedValue<Ljava/lang/Long;>;"
    invoke-direct {p0, v0, p1}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->validateSuggestionTime(Landroid/os/TimestampedValue;Ljava/lang/Object;)Z

    move-result v1
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_28

    if-nez v1, :cond_e

    .line 241
    const/4 v1, 0x0

    monitor-exit p0

    return v1

    .line 244
    :cond_e
    :try_start_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Manual time suggestion received: suggestion="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 245
    .local v1, "cause":Ljava/lang/String;
    const/4 v2, 0x2

    invoke-direct {p0, v2, v0, v1}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->setSystemClockIfRequired(ILandroid/os/TimestampedValue;Ljava/lang/String;)Z

    move-result v2
    :try_end_26
    .catchall {:try_start_e .. :try_end_26} :catchall_28

    monitor-exit p0

    return v2

    .line 237
    .end local v0    # "newUnixEpochTime":Landroid/os/TimestampedValue;, "Landroid/os/TimestampedValue<Ljava/lang/Long;>;"
    .end local v1    # "cause":Ljava/lang/String;
    .end local p0    # "this":Lcom/android/server/timedetector/TimeDetectorStrategyImpl;
    .end local p1    # "suggestion":Landroid/app/timedetector/ManualTimeSuggestion;
    :catchall_28
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized suggestNetworkTime(Landroid/app/timedetector/NetworkTimeSuggestion;)V
    .registers 5
    .param p1, "timeSuggestion"    # Landroid/app/timedetector/NetworkTimeSuggestion;

    monitor-enter p0

    .line 250
    :try_start_1
    invoke-virtual {p1}, Landroid/app/timedetector/NetworkTimeSuggestion;->getUnixEpochTime()Landroid/os/TimestampedValue;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->validateAutoSuggestionTime(Landroid/os/TimestampedValue;Ljava/lang/Object;)Z

    move-result v0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_3a

    if-nez v0, :cond_d

    .line 251
    monitor-exit p0

    return-void

    .line 261
    :cond_d
    :try_start_d
    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mLastNetworkSuggestion:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-virtual {v0}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/timedetector/NetworkTimeSuggestion;

    .line 262
    .local v0, "lastNetworkSuggestion":Landroid/app/timedetector/NetworkTimeSuggestion;
    if-eqz v0, :cond_1d

    invoke-virtual {v0, p1}, Landroid/app/timedetector/NetworkTimeSuggestion;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    .line 263
    .end local p0    # "this":Lcom/android/server/timedetector/TimeDetectorStrategyImpl;
    :cond_1d
    iget-object v1, p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->mLastNetworkSuggestion:Lcom/android/server/timezonedetector/ReferenceWithHistory;

    invoke-virtual {v1, p1}, Lcom/android/server/timezonedetector/ReferenceWithHistory;->set(Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    :cond_22
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "New network time suggested. timeSuggestion="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 269
    .local v1, "reason":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->doAutoTimeDetection(Ljava/lang/String;)V
    :try_end_38
    .catchall {:try_start_d .. :try_end_38} :catchall_3a

    .line 270
    monitor-exit p0

    return-void

    .line 249
    .end local v0    # "lastNetworkSuggestion":Landroid/app/timedetector/NetworkTimeSuggestion;
    .end local v1    # "reason":Ljava/lang/String;
    .end local p1    # "timeSuggestion":Landroid/app/timedetector/NetworkTimeSuggestion;
    :catchall_3a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized suggestTelephonyTime(Landroid/app/timedetector/TelephonyTimeSuggestion;)V
    .registers 4
    .param p1, "timeSuggestion"    # Landroid/app/timedetector/TelephonyTimeSuggestion;

    monitor-enter p0

    .line 280
    :try_start_1
    invoke-virtual {p1}, Landroid/app/timedetector/TelephonyTimeSuggestion;->getUnixEpochTime()Landroid/os/TimestampedValue;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_35

    if-nez v0, :cond_9

    .line 281
    monitor-exit p0

    return-void

    .line 284
    :cond_9
    :try_start_9
    invoke-virtual {p1}, Landroid/app/timedetector/TelephonyTimeSuggestion;->getUnixEpochTime()Landroid/os/TimestampedValue;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->validateAutoSuggestionTime(Landroid/os/TimestampedValue;Ljava/lang/Object;)Z

    move-result v0
    :try_end_11
    .catchall {:try_start_9 .. :try_end_11} :catchall_35

    if-nez v0, :cond_15

    .line 285
    monitor-exit p0

    return-void

    .line 289
    :cond_15
    :try_start_15
    invoke-direct {p0, p1}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->storeTelephonySuggestion(Landroid/app/timedetector/TelephonyTimeSuggestion;)Z

    move-result v0
    :try_end_19
    .catchall {:try_start_15 .. :try_end_19} :catchall_35

    if-nez v0, :cond_1d

    .line 290
    monitor-exit p0

    return-void

    .line 295
    :cond_1d
    :try_start_1d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "New telephony time suggested. timeSuggestion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 296
    .local v0, "reason":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->doAutoTimeDetection(Ljava/lang/String;)V
    :try_end_33
    .catchall {:try_start_1d .. :try_end_33} :catchall_35

    .line 297
    monitor-exit p0

    return-void

    .line 279
    .end local v0    # "reason":Ljava/lang/String;
    .end local p0    # "this":Lcom/android/server/timedetector/TimeDetectorStrategyImpl;
    .end local p1    # "timeSuggestion":Landroid/app/timedetector/TelephonyTimeSuggestion;
    :catchall_35
    move-exception p1

    monitor-exit p0

    throw p1
.end method
