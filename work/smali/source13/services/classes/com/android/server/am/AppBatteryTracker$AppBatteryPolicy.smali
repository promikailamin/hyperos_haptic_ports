.class final Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;
.super Lcom/android/server/am/BaseAppStatePolicy;
.source "AppBatteryTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppBatteryTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AppBatteryPolicy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/am/BaseAppStatePolicy<",
        "Lcom/android/server/am/AppBatteryTracker;",
        ">;"
    }
.end annotation


# static fields
.field static final BATTERY_USAGE_TYPE_BACKGROUND:I = 0x4

.field static final BATTERY_USAGE_TYPE_CACHED:I = 0x10

.field static final BATTERY_USAGE_TYPE_FOREGROUND:I = 0x2

.field static final BATTERY_USAGE_TYPE_FOREGROUND_SERVICE:I = 0x8

.field static final BATTERY_USAGE_TYPE_UNSPECIFIED:I = 0x1

.field static final DEFAULT_BG_CURRENT_DRAIN_DECOUPLE_THRESHOLD:Z = true

.field static final DEFAULT_BG_CURRENT_DRAIN_POWER_COMPONENTS:I = -0x1

.field static final INDEX_HIGH_CURRENT_DRAIN_THRESHOLD:I = 0x1

.field static final INDEX_REGULAR_CURRENT_DRAIN_THRESHOLD:I = 0x0

.field static final KEY_BG_CURRENT_DRAIN_AUTO_RESTRICT_ABUSIVE_APPS_ENABLED:Ljava/lang/String; = "bg_current_drain_auto_restrict_abusive_apps_enabled"

.field static final KEY_BG_CURRENT_DRAIN_DECOUPLE_THRESHOLDS:Ljava/lang/String; = "bg_current_drain_decouple_thresholds"

.field static final KEY_BG_CURRENT_DRAIN_EVENT_DURATION_BASED_THRESHOLD_ENABLED:Ljava/lang/String; = "bg_current_drain_event_duration_based_threshold_enabled"

.field static final KEY_BG_CURRENT_DRAIN_EXEMPTED_TYPES:Ljava/lang/String; = "bg_current_drain_exempted_types"

.field static final KEY_BG_CURRENT_DRAIN_HIGH_THRESHOLD_BY_BG_LOCATION:Ljava/lang/String; = "bg_current_drain_high_threshold_by_bg_location"

.field static final KEY_BG_CURRENT_DRAIN_HIGH_THRESHOLD_TO_BG_RESTRICTED:Ljava/lang/String; = "bg_current_drain_high_threshold_to_bg_restricted"

.field static final KEY_BG_CURRENT_DRAIN_HIGH_THRESHOLD_TO_RESTRICTED_BUCKET:Ljava/lang/String; = "bg_current_drain_high_threshold_to_restricted_bucket"

.field static final KEY_BG_CURRENT_DRAIN_INTERACTION_GRACE_PERIOD:Ljava/lang/String; = "bg_current_drain_interaction_grace_period"

.field static final KEY_BG_CURRENT_DRAIN_LOCATION_MIN_DURATION:Ljava/lang/String; = "bg_current_drain_location_min_duration"

.field static final KEY_BG_CURRENT_DRAIN_MEDIA_PLAYBACK_MIN_DURATION:Ljava/lang/String; = "bg_current_drain_media_playback_min_duration"

.field static final KEY_BG_CURRENT_DRAIN_MONITOR_ENABLED:Ljava/lang/String; = "bg_current_drain_monitor_enabled"

.field static final KEY_BG_CURRENT_DRAIN_POWER_COMPONENTS:Ljava/lang/String; = "bg_current_drain_power_components"

.field static final KEY_BG_CURRENT_DRAIN_THRESHOLD_TO_BG_RESTRICTED:Ljava/lang/String; = "bg_current_drain_threshold_to_bg_restricted"

.field static final KEY_BG_CURRENT_DRAIN_THRESHOLD_TO_RESTRICTED_BUCKET:Ljava/lang/String; = "bg_current_drain_threshold_to_restricted_bucket"

.field static final KEY_BG_CURRENT_DRAIN_TYPES_TO_BG_RESTRICTED:Ljava/lang/String; = "bg_current_drain_types_to_bg_restricted"

.field static final KEY_BG_CURRENT_DRAIN_TYPES_TO_RESTRICTED_BUCKET:Ljava/lang/String; = "bg_current_drain_types_to_restricted_bucket"

.field static final KEY_BG_CURRENT_DRAIN_WINDOW:Ljava/lang/String; = "bg_current_drain_window"

.field private static final TIME_STAMP_INDEX_BG_RESTRICTED:I = 0x1

.field private static final TIME_STAMP_INDEX_LAST:I = 0x2

.field private static final TIME_STAMP_INDEX_RESTRICTED_BUCKET:I


# instance fields
.field volatile mBatteryDimensions:[Landroid/os/BatteryConsumer$Dimensions;

.field private mBatteryFullChargeMah:I

.field volatile mBgCurrentDrainAutoRestrictAbusiveAppsEnabled:Z

.field volatile mBgCurrentDrainBgRestrictedThreshold:[F

.field volatile mBgCurrentDrainBgRestrictedTypes:I

.field volatile mBgCurrentDrainDecoupleThresholds:Z

.field volatile mBgCurrentDrainEventDurationBasedThresholdEnabled:Z

.field volatile mBgCurrentDrainExemptedTypes:I

.field volatile mBgCurrentDrainHighThresholdByBgLocation:Z

.field volatile mBgCurrentDrainInteractionGracePeriodMs:J

.field volatile mBgCurrentDrainLocationMinDuration:J

.field volatile mBgCurrentDrainMediaPlaybackMinDuration:J

.field volatile mBgCurrentDrainPowerComponents:I

.field volatile mBgCurrentDrainRestrictedBucketThreshold:[F

.field volatile mBgCurrentDrainRestrictedBucketTypes:I

.field volatile mBgCurrentDrainWindowMs:J

.field final mDefaultBgCurrentDrainAutoRestrictAbusiveAppsEnabled:Z

.field final mDefaultBgCurrentDrainBgRestrictedHighThreshold:F

.field final mDefaultBgCurrentDrainBgRestrictedThreshold:F

.field final mDefaultBgCurrentDrainEventDurationBasedThresholdEnabled:Z

.field final mDefaultBgCurrentDrainExemptedTypes:I

.field final mDefaultBgCurrentDrainHighThresholdByBgLocation:Z

.field final mDefaultBgCurrentDrainInteractionGracePeriodMs:J

.field final mDefaultBgCurrentDrainLocationMinDuration:J

.field final mDefaultBgCurrentDrainMediaPlaybackMinDuration:J

.field final mDefaultBgCurrentDrainPowerComponent:I

.field final mDefaultBgCurrentDrainRestrictedBucket:F

.field final mDefaultBgCurrentDrainRestrictedBucketHighThreshold:F

.field final mDefaultBgCurrentDrainTypesToBgRestricted:I

.field final mDefaultBgCurrentDrainWindowMs:J

.field final mDefaultCurrentDrainTypesToRestrictedBucket:I

.field private final mHighBgBatteryPackages:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/Pair<",
            "[J[",
            "Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mLastInteractionTime:Landroid/util/SparseLongArray;

.field private final mLock:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/android/server/am/BaseAppStateTracker$Injector;Lcom/android/server/am/AppBatteryTracker;)V
    .registers 20
    .param p1, "injector"    # Lcom/android/server/am/BaseAppStateTracker$Injector;
    .param p2, "tracker"    # Lcom/android/server/am/AppBatteryTracker;

    .line 1515
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget-object v2, v1, Lcom/android/server/am/AppBatteryTracker;->mContext:Landroid/content/Context;

    .line 1516
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1517
    const v3, 0x111003d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    .line 1515
    const-string v3, "bg_current_drain_monitor_enabled"

    move-object/from16 v4, p1

    invoke-direct {v0, v4, v1, v3, v2}, Lcom/android/server/am/BaseAppStatePolicy;-><init>(Lcom/android/server/am/BaseAppStateTracker$Injector;Lcom/android/server/am/BaseAppStateTracker;Ljava/lang/String;Z)V

    .line 1416
    const/4 v2, 0x2

    new-array v3, v2, [F

    iput-object v3, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainRestrictedBucketThreshold:[F

    .line 1422
    new-array v2, v2, [F

    iput-object v2, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainBgRestrictedThreshold:[F

    .line 1497
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mHighBgBatteryPackages:Landroid/util/SparseArray;

    .line 1504
    new-instance v2, Landroid/util/SparseLongArray;

    invoke-direct {v2}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v2, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mLastInteractionTime:Landroid/util/SparseLongArray;

    .line 1518
    iget-object v2, v1, Lcom/android/server/am/AppBatteryTracker;->mLock:Ljava/lang/Object;

    iput-object v2, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mLock:Ljava/lang/Object;

    .line 1519
    iget-object v2, v1, Lcom/android/server/am/AppBatteryTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1520
    .local v2, "resources":Landroid/content/res/Resources;
    const v3, 0x1070025

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v3

    .line 1522
    .local v3, "val":[F
    nop

    .line 1523
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v5, :cond_50

    aget v5, v3, v6

    goto :goto_52

    :cond_50
    aget v5, v3, v7

    :goto_52
    iput v5, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainRestrictedBucket:F

    .line 1524
    const v8, 0x1070024

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v3

    .line 1526
    nop

    .line 1527
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v8

    if-eqz v8, :cond_69

    aget v8, v3, v6

    goto :goto_6b

    :cond_69
    aget v8, v3, v7

    :goto_6b
    iput v8, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainBgRestrictedThreshold:F

    .line 1528
    const v9, 0x10e0028

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    mul-int/lit16 v9, v9, 0x3e8

    int-to-long v9, v9

    iput-wide v9, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainWindowMs:J

    .line 1530
    iput-wide v9, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainInteractionGracePeriodMs:J

    .line 1531
    const v11, 0x1070023

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v11

    invoke-static {v11}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v3

    .line 1533
    nop

    .line 1534
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v11

    if-eqz v11, :cond_90

    aget v11, v3, v6

    goto :goto_92

    :cond_90
    aget v11, v3, v7

    :goto_92
    iput v11, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainRestrictedBucketHighThreshold:F

    .line 1535
    const v12, 0x1070022

    invoke-virtual {v2, v12}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v12

    invoke-static {v12}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v3

    .line 1537
    nop

    .line 1538
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v12

    if-eqz v12, :cond_a9

    aget v12, v3, v6

    goto :goto_ab

    :cond_a9
    aget v12, v3, v7

    :goto_ab
    iput v12, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainBgRestrictedHighThreshold:F

    .line 1539
    const v13, 0x10e0024

    invoke-virtual {v2, v13}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v13

    mul-int/lit16 v13, v13, 0x3e8

    int-to-long v13, v13

    iput-wide v13, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainMediaPlaybackMinDuration:J

    .line 1541
    const v15, 0x10e0023

    invoke-virtual {v2, v15}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v15

    mul-int/lit16 v15, v15, 0x3e8

    int-to-long v6, v15

    iput-wide v6, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainLocationMinDuration:J

    .line 1543
    const v15, 0x111003b

    invoke-virtual {v2, v15}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v15

    iput-boolean v15, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainEventDurationBasedThresholdEnabled:Z

    .line 1545
    const v15, 0x111003a

    invoke-virtual {v2, v15}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v15

    iput-boolean v15, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainAutoRestrictAbusiveAppsEnabled:Z

    .line 1547
    const v15, 0x10e0027

    invoke-virtual {v2, v15}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v15

    iput v15, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultCurrentDrainTypesToRestrictedBucket:I

    .line 1549
    const v15, 0x10e0026

    invoke-virtual {v2, v15}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v15

    iput v15, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainTypesToBgRestricted:I

    .line 1551
    const v15, 0x10e0025

    invoke-virtual {v2, v15}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v15

    iput v15, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainPowerComponent:I

    .line 1553
    const v15, 0x10e0022

    invoke-virtual {v2, v15}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v15

    iput v15, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainExemptedTypes:I

    .line 1555
    const v15, 0x111003c

    invoke-virtual {v2, v15}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v15

    iput-boolean v15, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainHighThresholdByBgLocation:Z

    .line 1557
    iget-object v15, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainRestrictedBucketThreshold:[F

    const/16 v16, 0x0

    aput v5, v15, v16

    .line 1559
    iget-object v5, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainRestrictedBucketThreshold:[F

    const/4 v15, 0x1

    aput v11, v5, v15

    .line 1561
    iget-object v5, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainBgRestrictedThreshold:[F

    aput v8, v5, v16

    .line 1563
    iget-object v5, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainBgRestrictedThreshold:[F

    aput v12, v5, v15

    .line 1565
    iput-wide v9, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainWindowMs:J

    .line 1566
    iput-wide v9, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainInteractionGracePeriodMs:J

    .line 1568
    iput-wide v13, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainMediaPlaybackMinDuration:J

    .line 1570
    iput-wide v6, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainLocationMinDuration:J

    .line 1571
    return-void
.end method

.method private static batteryUsageTypesToString(I)Ljava/lang/String;
    .registers 6
    .param p0, "types"    # I

    .line 1806
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1807
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 1808
    .local v1, "needDelimiter":Z
    invoke-static {p0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v2

    .local v2, "type":I
    :goto_c
    if-eqz v2, :cond_5c

    .line 1810
    if-eqz v1, :cond_15

    .line 1811
    const/16 v3, 0x7c

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1813
    :cond_15
    const/4 v1, 0x1

    .line 1814
    sparse-switch v2, :sswitch_data_66

    .line 1831
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[UNKNOWN("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 1828
    :sswitch_37
    const-string v3, "CACHED"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1829
    goto :goto_55

    .line 1825
    :sswitch_3d
    const-string v3, "FOREGROUND_SERVICE"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1826
    goto :goto_55

    .line 1822
    :sswitch_43
    const-string v3, "BACKGROUND"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1823
    goto :goto_55

    .line 1819
    :sswitch_49
    const-string v3, "FOREGROUND"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1820
    goto :goto_55

    .line 1816
    :sswitch_4f
    const-string v3, "UNSPECIFIED"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1817
    nop

    .line 1833
    :goto_55
    not-int v3, v2

    and-int/2addr p0, v3

    .line 1809
    invoke-static {p0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v2

    goto :goto_c

    .line 1835
    .end local v2    # "type":I
    :cond_5c
    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1836
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :sswitch_data_66
    .sparse-switch
        0x1 -> :sswitch_4f
        0x2 -> :sswitch_49
        0x4 -> :sswitch_43
        0x8 -> :sswitch_3d
        0x10 -> :sswitch_37
    .end sparse-switch
.end method

.method private formatHighBgBatteryRecord(JJLcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;)Ljava/lang/String;
    .registers 9
    .param p1, "ts"    # J
    .param p3, "now"    # J
    .param p5, "usage"    # Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    .line 2172
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_27

    if-eqz p5, :cond_27

    .line 2173
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 2174
    invoke-static {p1, p2, p3, p4}, Landroid/util/TimeUtils;->formatTime(JJ)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p5}, Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-virtual {p5}, Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;->percentageToString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 2173
    const-string v1, "%s %s (%s)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2176
    :cond_27
    const-string v0, "0"

    return-object v0
.end method

.method private getCurrentDrainThresholdIndex(IJJ)I
    .registers 7
    .param p1, "uid"    # I
    .param p2, "now"    # J
    .param p4, "window"    # J

    .line 1963
    invoke-direct/range {p0 .. p5}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->hasMediaPlayback(IJJ)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-direct/range {p0 .. p5}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->hasLocation(IJJ)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    .line 1965
    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    .line 1964
    :cond_f
    :goto_f
    const/4 v0, 0x1

    .line 1963
    :goto_10
    return v0
.end method

.method static getFloatArray(Landroid/content/res/TypedArray;)[F
    .registers 5
    .param p0, "array"    # Landroid/content/res/TypedArray;

    .line 1574
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    .line 1575
    .local v0, "length":I
    new-array v1, v0, [F

    .line 1576
    .local v1, "floatArray":[F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    if-ge v2, v0, :cond_14

    .line 1577
    const/high16 v3, 0x7fc00000    # Float.NaN

    invoke-virtual {p0, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    aput v3, v1, v2

    .line 1576
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 1579
    .end local v2    # "i":I
    :cond_14
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1580
    return-object v1
.end method

.method private hasLocation(IJJ)Z
    .registers 20
    .param p1, "uid"    # I
    .param p2, "now"    # J
    .param p4, "window"    # J

    .line 1975
    move-object v0, p0

    iget-boolean v1, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainHighThresholdByBgLocation:Z

    const/4 v2, 0x0

    if-nez v1, :cond_7

    .line 1976
    return v2

    .line 1978
    :cond_7
    iget-object v1, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mTracker:Lcom/android/server/am/BaseAppStateTracker;

    check-cast v1, Lcom/android/server/am/AppBatteryTracker;

    iget-object v1, v1, Lcom/android/server/am/AppBatteryTracker;->mAppRestrictionController:Lcom/android/server/am/AppRestrictionController;

    .line 1979
    .local v1, "controller":Lcom/android/server/am/AppRestrictionController;
    iget-object v3, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-virtual {v3}, Lcom/android/server/am/BaseAppStateTracker$Injector;->getPermissionManagerServiceInternal()Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    move-result-object v3

    const-string v4, "android.permission.ACCESS_BACKGROUND_LOCATION"

    move v10, p1

    invoke-interface {v3, p1, v4}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->checkUidPermission(ILjava/lang/String;)I

    move-result v3

    const/4 v11, 0x1

    if-nez v3, :cond_1e

    .line 1981
    return v11

    .line 1983
    :cond_1e
    iget-boolean v3, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainEventDurationBasedThresholdEnabled:Z

    if-nez v3, :cond_23

    .line 1984
    return v2

    .line 1986
    :cond_23
    const-wide/16 v3, 0x0

    sub-long v5, p2, p4

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    .line 1987
    .local v12, "since":J
    const/16 v9, 0x8

    move-object v3, v1

    move v4, p1

    move-wide v5, v12

    move-wide/from16 v7, p2

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/am/AppRestrictionController;->getForegroundServiceTotalDurationsSince(IJJI)J

    move-result-wide v3

    .line 1989
    .local v3, "locationDuration":J
    iget-wide v5, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainLocationMinDuration:J

    cmp-long v5, v3, v5

    if-ltz v5, :cond_3d

    move v2, v11

    :cond_3d
    return v2
.end method

.method private hasMediaPlayback(IJJ)Z
    .registers 13
    .param p1, "uid"    # I
    .param p2, "now"    # J
    .param p4, "window"    # J

    .line 1969
    iget-boolean v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainEventDurationBasedThresholdEnabled:Z

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mTracker:Lcom/android/server/am/BaseAppStateTracker;

    check-cast v0, Lcom/android/server/am/AppBatteryTracker;

    iget-object v1, v0, Lcom/android/server/am/AppBatteryTracker;->mAppRestrictionController:Lcom/android/server/am/AppRestrictionController;

    .line 1970
    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/AppRestrictionController;->getCompositeMediaPlaybackDurations(IJJ)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainMediaPlaybackMinDuration:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_19

    const/4 v0, 0x1

    goto :goto_1a

    :cond_19
    const/4 v0, 0x0

    .line 1969
    :goto_1a
    return v0
.end method

.method private sumPercentageOfTypes([DI)D
    .registers 9
    .param p1, "percentage"    # [D
    .param p2, "types"    # I

    .line 1795
    const-wide/16 v0, 0x0

    .line 1796
    .local v0, "result":D
    invoke-static {p2}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v2

    .local v2, "type":I
    :goto_6
    if-eqz v2, :cond_16

    .line 1798
    invoke-static {v2}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v3

    .line 1799
    .local v3, "index":I
    aget-wide v4, p1, v3

    add-double/2addr v0, v4

    .line 1800
    not-int v4, v2

    and-int/2addr p2, v4

    .line 1797
    .end local v3    # "index":I
    invoke-static {p2}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v2

    goto :goto_6

    .line 1802
    .end local v2    # "type":I
    :cond_16
    return-wide v0
.end method

.method private updateBgCurrentDrainAutoRestrictAbusiveAppsEnabled()V
    .registers 4

    .line 1732
    iget-boolean v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainAutoRestrictAbusiveAppsEnabled:Z

    const-string v1, "activity_manager"

    const-string v2, "bg_current_drain_auto_restrict_abusive_apps_enabled"

    invoke-static {v1, v2, v0}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainAutoRestrictAbusiveAppsEnabled:Z

    .line 1736
    return-void
.end method

.method private updateCurrentDrainDecoupleThresholds()V
    .registers 4

    .line 1725
    const-string v0, "activity_manager"

    const-string v1, "bg_current_drain_decouple_thresholds"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainDecoupleThresholds:Z

    .line 1729
    return-void
.end method

.method private updateCurrentDrainEventDurationBasedThresholdEnabled()V
    .registers 4

    .line 1711
    iget-boolean v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainEventDurationBasedThresholdEnabled:Z

    const-string v1, "activity_manager"

    const-string v2, "bg_current_drain_event_duration_based_threshold_enabled"

    invoke-static {v1, v2, v0}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainEventDurationBasedThresholdEnabled:Z

    .line 1715
    return-void
.end method

.method private updateCurrentDrainExemptedTypes()V
    .registers 4

    .line 1718
    iget v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainExemptedTypes:I

    const-string v1, "activity_manager"

    const-string v2, "bg_current_drain_exempted_types"

    invoke-static {v1, v2, v0}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainExemptedTypes:I

    .line 1722
    return-void
.end method

.method private updateCurrentDrainInteractionGracePeriod()V
    .registers 5

    .line 1690
    iget-wide v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainInteractionGracePeriodMs:J

    const-string v2, "activity_manager"

    const-string v3, "bg_current_drain_interaction_grace_period"

    invoke-static {v2, v3, v0, v1}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainInteractionGracePeriodMs:J

    .line 1694
    return-void
.end method

.method private updateCurrentDrainLocationMinDuration()V
    .registers 5

    .line 1704
    iget-wide v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainLocationMinDuration:J

    const-string v2, "activity_manager"

    const-string v3, "bg_current_drain_location_min_duration"

    invoke-static {v2, v3, v0, v1}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainLocationMinDuration:J

    .line 1708
    return-void
.end method

.method private updateCurrentDrainMediaPlaybackMinDuration()V
    .registers 5

    .line 1697
    iget-wide v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainMediaPlaybackMinDuration:J

    const-string v2, "activity_manager"

    const-string v3, "bg_current_drain_media_playback_min_duration"

    invoke-static {v2, v3, v0, v1}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainMediaPlaybackMinDuration:J

    .line 1701
    return-void
.end method

.method private updateCurrentDrainThreshold()V
    .registers 7

    .line 1640
    iget-object v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainRestrictedBucketThreshold:[F

    iget v1, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainRestrictedBucket:F

    .line 1641
    const-string v2, "activity_manager"

    const-string v3, "bg_current_drain_threshold_to_restricted_bucket"

    invoke-static {v2, v3, v1}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v1

    const/4 v3, 0x0

    aput v1, v0, v3

    .line 1644
    iget-object v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainRestrictedBucketThreshold:[F

    iget v1, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainRestrictedBucketHighThreshold:F

    .line 1645
    const-string v4, "bg_current_drain_high_threshold_to_restricted_bucket"

    invoke-static {v2, v4, v1}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v1

    const/4 v4, 0x1

    aput v1, v0, v4

    .line 1648
    iget-object v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainBgRestrictedThreshold:[F

    iget v1, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainBgRestrictedThreshold:F

    .line 1649
    const-string v5, "bg_current_drain_threshold_to_bg_restricted"

    invoke-static {v2, v5, v1}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v1

    aput v1, v0, v3

    .line 1652
    iget-object v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainBgRestrictedThreshold:[F

    iget v1, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainBgRestrictedHighThreshold:F

    .line 1653
    const-string v3, "bg_current_drain_high_threshold_to_bg_restricted"

    invoke-static {v2, v3, v1}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v1

    aput v1, v0, v4

    .line 1656
    iget v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultCurrentDrainTypesToRestrictedBucket:I

    .line 1657
    const-string v1, "bg_current_drain_types_to_restricted_bucket"

    invoke-static {v2, v1, v0}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainRestrictedBucketTypes:I

    .line 1660
    iget v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainTypesToBgRestricted:I

    .line 1661
    const-string v1, "bg_current_drain_types_to_bg_restricted"

    invoke-static {v2, v1, v0}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainBgRestrictedTypes:I

    .line 1664
    iget v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainPowerComponent:I

    .line 1665
    const-string v1, "bg_current_drain_power_components"

    invoke-static {v2, v1, v0}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainPowerComponents:I

    .line 1668
    iget v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainPowerComponents:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_5c

    .line 1669
    sget-object v0, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->BATT_DIMENS:[Landroid/os/BatteryConsumer$Dimensions;

    iput-object v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBatteryDimensions:[Landroid/os/BatteryConsumer$Dimensions;

    goto :goto_72

    .line 1671
    :cond_5c
    const/4 v0, 0x5

    new-array v1, v0, [Landroid/os/BatteryConsumer$Dimensions;

    iput-object v1, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBatteryDimensions:[Landroid/os/BatteryConsumer$Dimensions;

    .line 1672
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_62
    if-ge v1, v0, :cond_72

    .line 1673
    iget-object v3, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBatteryDimensions:[Landroid/os/BatteryConsumer$Dimensions;

    new-instance v4, Landroid/os/BatteryConsumer$Dimensions;

    iget v5, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainPowerComponents:I

    invoke-direct {v4, v5, v1}, Landroid/os/BatteryConsumer$Dimensions;-><init>(II)V

    aput-object v4, v3, v1

    .line 1672
    add-int/lit8 v1, v1, 0x1

    goto :goto_62

    .line 1676
    .end local v1    # "i":I
    :cond_72
    :goto_72
    iget-boolean v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainHighThresholdByBgLocation:Z

    .line 1677
    const-string v1, "bg_current_drain_high_threshold_by_bg_location"

    invoke-static {v2, v1, v0}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainHighThresholdByBgLocation:Z

    .line 1680
    return-void
.end method

.method private updateCurrentDrainWindow()V
    .registers 5

    .line 1683
    iget-wide v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mDefaultBgCurrentDrainWindowMs:J

    const-string v2, "activity_manager"

    const-string v3, "bg_current_drain_window"

    invoke-static {v2, v3, v0, v1}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainWindowMs:J

    .line 1687
    return-void
.end method


# virtual methods
.method calcPercentage(I[D[D)[D
    .registers 11
    .param p1, "uid"    # I
    .param p2, "usage"    # [D
    .param p3, "percentage"    # [D

    .line 1786
    const/4 v0, 0x0

    if-lez p1, :cond_12

    iget-object v1, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mTracker:Lcom/android/server/am/BaseAppStateTracker;

    check-cast v1, Lcom/android/server/am/AppBatteryTracker;

    invoke-static {v1}, Lcom/android/server/am/AppBatteryTracker;->-$$Nest$fgetmDebugUidPercentages(Lcom/android/server/am/AppBatteryTracker;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    goto :goto_13

    :cond_12
    move-object v1, v0

    .line 1787
    .local v1, "debugUsage":Lcom/android/server/am/AppBatteryTracker$BatteryUsage;
    :goto_13
    if-eqz v1, :cond_19

    invoke-virtual {v1}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->getPercentage()[D

    move-result-object v0

    .line 1788
    .local v0, "forced":[D
    :cond_19
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1a
    array-length v3, p2

    if-ge v2, v3, :cond_30

    .line 1789
    if-eqz v0, :cond_22

    aget-wide v3, v0, v2

    goto :goto_2b

    :cond_22
    aget-wide v3, p2, v2

    iget v5, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBatteryFullChargeMah:I

    int-to-double v5, v5

    div-double/2addr v3, v5

    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    mul-double/2addr v3, v5

    :goto_2b
    aput-wide v3, p3, v2

    .line 1788
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    .line 1791
    .end local v2    # "i":I
    :cond_30
    return-object p3
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 27
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 2060
    move-object/from16 v11, p0

    move-object/from16 v12, p1

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2061
    const-string v0, "APP BATTERY TRACKER POLICY SETTINGS:"

    invoke-virtual {v12, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2062
    const-string v13, "  "

    .line 2063
    .local v13, "indent":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2064
    .end local p2    # "prefix":Ljava/lang/String;
    .local v1, "prefix":Ljava/lang/String;
    invoke-super {v11, v12, v1}, Lcom/android/server/am/BaseAppStatePolicy;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 2065
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_227

    .line 2066
    invoke-virtual {v12, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2067
    const-string v0, "bg_current_drain_threshold_to_restricted_bucket"

    invoke-virtual {v12, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2068
    const/16 v0, 0x3d

    invoke-virtual {v12, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 2069
    iget-object v2, v11, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainRestrictedBucketThreshold:[F

    const/4 v14, 0x0

    aget v2, v2, v14

    invoke-virtual {v12, v2}, Ljava/io/PrintWriter;->println(F)V

    .line 2071
    invoke-virtual {v12, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2072
    const-string v2, "bg_current_drain_high_threshold_to_restricted_bucket"

    invoke-virtual {v12, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2073
    invoke-virtual {v12, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 2074
    iget-object v2, v11, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainRestrictedBucketThreshold:[F

    const/4 v15, 0x1

    aget v2, v2, v15

    invoke-virtual {v12, v2}, Ljava/io/PrintWriter;->println(F)V

    .line 2076
    invoke-virtual {v12, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2077
    const-string v2, "bg_current_drain_threshold_to_bg_restricted"

    invoke-virtual {v12, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2078
    invoke-virtual {v12, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 2079
    iget-object v2, v11, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainBgRestrictedThreshold:[F

    aget v2, v2, v14

    invoke-virtual {v12, v2}, Ljava/io/PrintWriter;->println(F)V

    .line 2081
    invoke-virtual {v12, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2082
    const-string v2, "bg_current_drain_high_threshold_to_bg_restricted"

    invoke-virtual {v12, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2083
    invoke-virtual {v12, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 2084
    iget-object v2, v11, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainBgRestrictedThreshold:[F

    aget v2, v2, v15

    invoke-virtual {v12, v2}, Ljava/io/PrintWriter;->println(F)V

    .line 2086
    invoke-virtual {v12, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2087
    const-string v2, "bg_current_drain_window"

    invoke-virtual {v12, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2088
    invoke-virtual {v12, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 2089
    iget-wide v2, v11, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainWindowMs:J

    invoke-virtual {v12, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 2090
    invoke-virtual {v12, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2091
    const-string v2, "bg_current_drain_interaction_grace_period"

    invoke-virtual {v12, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2092
    invoke-virtual {v12, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 2093
    iget-wide v2, v11, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainInteractionGracePeriodMs:J

    invoke-virtual {v12, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 2094
    invoke-virtual {v12, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2095
    const-string v2, "bg_current_drain_media_playback_min_duration"

    invoke-virtual {v12, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2096
    invoke-virtual {v12, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 2097
    iget-wide v2, v11, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainMediaPlaybackMinDuration:J

    invoke-virtual {v12, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 2098
    invoke-virtual {v12, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2099
    const-string v2, "bg_current_drain_location_min_duration"

    invoke-virtual {v12, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2100
    invoke-virtual {v12, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 2101
    iget-wide v2, v11, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainLocationMinDuration:J

    invoke-virtual {v12, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 2102
    invoke-virtual {v12, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2103
    const-string v2, "bg_current_drain_event_duration_based_threshold_enabled"

    invoke-virtual {v12, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2104
    invoke-virtual {v12, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 2105
    iget-boolean v2, v11, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainEventDurationBasedThresholdEnabled:Z

    invoke-virtual {v12, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 2106
    invoke-virtual {v12, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2107
    const-string v2, "bg_current_drain_auto_restrict_abusive_apps_enabled"

    invoke-virtual {v12, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2108
    invoke-virtual {v12, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 2109
    iget-boolean v2, v11, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainAutoRestrictAbusiveAppsEnabled:Z

    invoke-virtual {v12, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 2110
    invoke-virtual {v12, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2111
    const-string v2, "bg_current_drain_types_to_restricted_bucket"

    invoke-virtual {v12, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2112
    invoke-virtual {v12, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 2113
    iget v2, v11, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainRestrictedBucketTypes:I

    invoke-static {v2}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->batteryUsageTypesToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2114
    invoke-virtual {v12, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2115
    const-string v2, "bg_current_drain_types_to_bg_restricted"

    invoke-virtual {v12, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2116
    invoke-virtual {v12, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 2117
    iget v2, v11, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainBgRestrictedTypes:I

    invoke-static {v2}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->batteryUsageTypesToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2118
    invoke-virtual {v12, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2119
    const-string v2, "bg_current_drain_power_components"

    invoke-virtual {v12, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2120
    invoke-virtual {v12, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 2121
    iget v2, v11, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainPowerComponents:I

    invoke-virtual {v12, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 2122
    invoke-virtual {v12, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2123
    const-string v2, "bg_current_drain_exempted_types"

    invoke-virtual {v12, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2124
    invoke-virtual {v12, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 2125
    iget v2, v11, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainExemptedTypes:I

    invoke-static {v2}, Lcom/android/server/am/BaseAppStateTracker;->stateTypesToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2126
    invoke-virtual {v12, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2127
    const-string v2, "bg_current_drain_high_threshold_by_bg_location"

    invoke-virtual {v12, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2128
    invoke-virtual {v12, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 2129
    iget-boolean v0, v11, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainHighThresholdByBgLocation:Z

    invoke-virtual {v12, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2130
    invoke-virtual {v12, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2131
    const-string v0, "Full charge capacity="

    invoke-virtual {v12, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2132
    iget v0, v11, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBatteryFullChargeMah:I

    invoke-virtual {v12, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 2133
    const-string v0, " mAh"

    invoke-virtual {v12, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2135
    invoke-virtual {v12, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2136
    const-string v0, "Excessive current drain detected:"

    invoke-virtual {v12, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2137
    iget-object v10, v11, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 2138
    :try_start_151
    iget-object v0, v11, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mHighBgBatteryPackages:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 2139
    .local v0, "size":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_16a
    .catchall {:try_start_151 .. :try_end_16a} :catchall_220

    move-object v8, v2

    .line 2140
    .end local v1    # "prefix":Ljava/lang/String;
    .local v8, "prefix":Ljava/lang/String;
    if-lez v0, :cond_210

    .line 2141
    :try_start_16d
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 2142
    .local v3, "now":J
    const/4 v1, 0x0

    move v9, v1

    .local v9, "i":I
    :goto_173
    if-ge v9, v0, :cond_1ff

    .line 2143
    iget-object v1, v11, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mHighBgBatteryPackages:Landroid/util/SparseArray;

    invoke-virtual {v1, v9}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 2144
    .local v2, "uid":I
    iget-object v1, v11, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mHighBgBatteryPackages:Landroid/util/SparseArray;

    .line 2145
    invoke-virtual {v1, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    move-object v7, v1

    .line 2146
    .local v7, "pair":Landroid/util/Pair;, "Landroid/util/Pair<[J[Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;>;"
    iget-object v1, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, [J

    move-object/from16 v16, v1

    .line 2147
    .local v16, "ts":[J
    iget-object v1, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, [Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    move-object/from16 v17, v1

    .line 2148
    .local v17, "usages":[Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;
    iget-wide v5, v11, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainWindowMs:J

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->getCurrentDrainThresholdIndex(IJJ)I

    move-result v1

    .line 2150
    .local v1, "thresholdIndex":I
    const-string v6, "%s%s: (threshold=%4.2f%%/%4.2f%%) %s / %s\n"

    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v8, v5, v14

    .line 2152
    invoke-static {v2}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v5, v15

    const/16 v18, 0x2

    iget-object v15, v11, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainRestrictedBucketThreshold:[F

    aget v15, v15, v1

    .line 2153
    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    aput-object v15, v5, v18

    const/4 v15, 0x3

    iget-object v14, v11, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainBgRestrictedThreshold:[F

    aget v14, v14, v1

    .line 2154
    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    aput-object v14, v5, v15

    const/4 v14, 0x4

    const/4 v15, 0x0

    aget-wide v18, v16, v15

    aget-object v20, v17, v15
    :try_end_1c2
    .catchall {:try_start_16d .. :try_end_1c2} :catchall_208

    .line 2155
    move-object v15, v5

    move-object/from16 v5, p0

    move-object/from16 v22, v6

    move-object/from16 v21, v7

    .end local v7    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<[J[Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;>;"
    .local v21, "pair":Landroid/util/Pair;, "Landroid/util/Pair<[J[Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;>;"
    move-wide/from16 v6, v18

    move-object/from16 v23, v8

    move/from16 v18, v9

    .end local v8    # "prefix":Ljava/lang/String;
    .end local v9    # "i":I
    .local v18, "i":I
    .local v23, "prefix":Ljava/lang/String;
    move-wide v8, v3

    move-object/from16 v19, v10

    move-object/from16 v10, v20

    :try_start_1d4
    invoke-direct/range {v5 .. v10}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->formatHighBgBatteryRecord(JJLcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v15, v14

    const/4 v14, 0x5

    const/16 v20, 0x1

    aget-wide v6, v16, v20

    aget-object v10, v17, v20

    .line 2158
    move-object/from16 v5, p0

    move-wide v8, v3

    invoke-direct/range {v5 .. v10}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->formatHighBgBatteryRecord(JJLcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v15, v14

    .line 2150
    move-object/from16 v5, v22

    invoke-virtual {v12, v5, v15}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;
    :try_end_1ef
    .catchall {:try_start_1d4 .. :try_end_1ef} :catchall_1fb

    .line 2142
    nop

    .end local v1    # "thresholdIndex":I
    .end local v2    # "uid":I
    .end local v16    # "ts":[J
    .end local v17    # "usages":[Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;
    .end local v21    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<[J[Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;>;"
    add-int/lit8 v9, v18, 0x1

    move-object/from16 v10, v19

    move/from16 v15, v20

    move-object/from16 v8, v23

    const/4 v14, 0x0

    .end local v18    # "i":I
    .restart local v9    # "i":I
    goto/16 :goto_173

    .line 2167
    .end local v0    # "size":I
    .end local v3    # "now":J
    .end local v9    # "i":I
    :catchall_1fb
    move-exception v0

    move-object/from16 v1, v23

    goto :goto_223

    .line 2142
    .end local v23    # "prefix":Ljava/lang/String;
    .restart local v0    # "size":I
    .restart local v3    # "now":J
    .restart local v8    # "prefix":Ljava/lang/String;
    .restart local v9    # "i":I
    :cond_1ff
    move-object/from16 v23, v8

    move/from16 v18, v9

    move-object/from16 v19, v10

    .line 2163
    .end local v3    # "now":J
    .end local v8    # "prefix":Ljava/lang/String;
    .end local v9    # "i":I
    .restart local v23    # "prefix":Ljava/lang/String;
    move-object/from16 v1, v23

    goto :goto_21e

    .line 2167
    .end local v0    # "size":I
    .end local v23    # "prefix":Ljava/lang/String;
    .restart local v8    # "prefix":Ljava/lang/String;
    :catchall_208
    move-exception v0

    move-object/from16 v23, v8

    move-object/from16 v19, v10

    move-object/from16 v1, v23

    .end local v8    # "prefix":Ljava/lang/String;
    .restart local v23    # "prefix":Ljava/lang/String;
    goto :goto_223

    .line 2164
    .end local v23    # "prefix":Ljava/lang/String;
    .restart local v0    # "size":I
    .restart local v8    # "prefix":Ljava/lang/String;
    :cond_210
    move-object/from16 v23, v8

    move-object/from16 v19, v10

    .end local v8    # "prefix":Ljava/lang/String;
    .restart local v23    # "prefix":Ljava/lang/String;
    move-object/from16 v1, v23

    .end local v23    # "prefix":Ljava/lang/String;
    .local v1, "prefix":Ljava/lang/String;
    :try_start_216
    invoke-virtual {v12, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2165
    const-string v2, "(none)"

    invoke-virtual {v12, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2167
    .end local v0    # "size":I
    :goto_21e
    monitor-exit v19

    goto :goto_227

    :catchall_220
    move-exception v0

    move-object/from16 v19, v10

    :goto_223
    monitor-exit v19
    :try_end_224
    .catchall {:try_start_216 .. :try_end_224} :catchall_225

    throw v0

    :catchall_225
    move-exception v0

    goto :goto_223

    .line 2169
    :cond_227
    :goto_227
    return-void
.end method

.method public getProposedRestrictionLevel(Ljava/lang/String;II)I
    .registers 22
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "maxLevel"    # I

    .line 1758
    move-object/from16 v1, p0

    move/from16 v2, p2

    move/from16 v3, p3

    const/16 v0, 0x1e

    const/4 v4, 0x0

    if-gt v3, v0, :cond_c

    .line 1759
    return v4

    .line 1761
    :cond_c
    iget-object v5, v1, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1762
    :try_start_f
    iget-object v6, v1, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mHighBgBatteryPackages:Landroid/util/SparseArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Pair;

    .line 1763
    .local v6, "pair":Landroid/util/Pair;, "Landroid/util/Pair<[J[Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;>;"
    if-eqz v6, :cond_5e

    .line 1764
    iget-object v7, v1, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mLastInteractionTime:Landroid/util/SparseLongArray;

    const-wide/16 v8, 0x0

    invoke-virtual {v7, v2, v8, v9}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide v10

    .line 1765
    .local v10, "lastInteractionTime":J
    iget-object v7, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, [J

    .line 1766
    .local v7, "ts":[J
    aget-wide v12, v7, v4

    iget-wide v14, v1, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainInteractionGracePeriodMs:J

    add-long/2addr v14, v10

    cmp-long v12, v12, v14

    const/4 v13, 0x1

    if-lez v12, :cond_31

    move v12, v13

    goto :goto_32

    :cond_31
    move v12, v4

    .line 1768
    .local v12, "noInteractionRecently":Z
    :goto_32
    iget-object v14, v1, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mTracker:Lcom/android/server/am/BaseAppStateTracker;

    check-cast v14, Lcom/android/server/am/AppBatteryTracker;

    iget-object v14, v14, Lcom/android/server/am/AppBatteryTracker;->mAppRestrictionController:Lcom/android/server/am/AppRestrictionController;

    .line 1769
    invoke-virtual {v14}, Lcom/android/server/am/AppRestrictionController;->isAutoRestrictAbusiveAppEnabled()Z

    move-result v14

    if-eqz v14, :cond_43

    iget-boolean v14, v1, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainAutoRestrictAbusiveAppsEnabled:Z

    if-eqz v14, :cond_43

    move v4, v13

    .line 1771
    .local v4, "canRestrict":Z
    :cond_43
    if-eqz v12, :cond_4a

    if-eqz v4, :cond_4a

    .line 1772
    const/16 v14, 0x28

    goto :goto_4b

    .line 1773
    :cond_4a
    move v14, v0

    :goto_4b
    nop

    .line 1774
    .local v14, "restrictedLevel":I
    const/16 v15, 0x32

    if-le v3, v15, :cond_5a

    .line 1775
    aget-wide v16, v7, v13

    cmp-long v0, v16, v8

    if-lez v0, :cond_57

    .line 1776
    goto :goto_58

    :cond_57
    move v15, v14

    :goto_58
    monitor-exit v5

    .line 1775
    return v15

    .line 1777
    :cond_5a
    if-ne v3, v15, :cond_5e

    .line 1778
    monitor-exit v5

    return v14

    .line 1781
    .end local v4    # "canRestrict":Z
    .end local v7    # "ts":[J
    .end local v10    # "lastInteractionTime":J
    .end local v12    # "noInteractionRecently":Z
    .end local v14    # "restrictedLevel":I
    :cond_5e
    monitor-exit v5

    return v0

    .line 1782
    .end local v6    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<[J[Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;>;"
    :catchall_60
    move-exception v0

    monitor-exit v5
    :try_end_62
    .catchall {:try_start_f .. :try_end_62} :catchall_60

    throw v0
.end method

.method handleUidBatteryUsage(ILcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;)V
    .registers 34
    .param p1, "uid"    # I
    .param p2, "usage"    # Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    .line 1840
    move-object/from16 v7, p0

    move/from16 v8, p1

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->shouldExemptUid(I)I

    move-result v9

    .line 1841
    .local v9, "reason":I
    const/4 v0, -0x1

    if-eq v9, v0, :cond_c

    .line 1846
    return-void

    .line 1848
    :cond_c
    const/4 v10, 0x0

    .line 1849
    .local v10, "notifyController":Z
    const/4 v11, 0x0

    .line 1850
    .local v11, "excessive":Z
    const/4 v12, 0x0

    .line 1851
    .local v12, "index":I
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;->getPercentage()[D

    move-result-object v0

    iget v1, v7, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainRestrictedBucketTypes:I

    invoke-direct {v7, v0, v1}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->sumPercentageOfTypes([DI)D

    move-result-wide v13

    .line 1853
    .local v13, "rbPercentage":D
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;->getPercentage()[D

    move-result-object v0

    iget v1, v7, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainBgRestrictedTypes:I

    invoke-direct {v7, v0, v1}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->sumPercentageOfTypes([DI)D

    move-result-wide v15

    .line 1855
    .local v15, "brPercentage":D
    iget-object v5, v7, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1856
    :try_start_26
    iget-object v0, v7, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mTracker:Lcom/android/server/am/BaseAppStateTracker;

    check-cast v0, Lcom/android/server/am/AppBatteryTracker;

    iget-object v0, v0, Lcom/android/server/am/AppBatteryTracker;->mAppRestrictionController:Lcom/android/server/am/AppRestrictionController;

    invoke-virtual {v0, v8}, Lcom/android/server/am/AppRestrictionController;->getRestrictionLevel(I)I

    move-result v0
    :try_end_30
    .catchall {:try_start_26 .. :try_end_30} :catchall_178

    .line 1857
    .local v0, "curLevel":I
    const/16 v1, 0x32

    if-lt v0, v1, :cond_3d

    .line 1859
    :try_start_34
    monitor-exit v5
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_36

    return-void

    .line 1938
    .end local v0    # "curLevel":I
    :catchall_36
    move-exception v0

    move-object/from16 v25, v5

    move/from16 v27, v9

    goto/16 :goto_17f

    .line 1861
    .restart local v0    # "curLevel":I
    :cond_3d
    :try_start_3d
    iget-object v1, v7, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mLastInteractionTime:Landroid/util/SparseLongArray;

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v8, v3, v4}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide v1

    move-wide/from16 v17, v1

    .line 1862
    .local v17, "lastInteractionTime":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    move-wide/from16 v19, v1

    .line 1863
    .local v19, "now":J
    iget-wide v1, v7, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainWindowMs:J
    :try_end_4f
    .catchall {:try_start_3d .. :try_end_4f} :catchall_178

    move-wide/from16 v21, v1

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-wide/from16 v23, v3

    move-wide/from16 v3, v19

    move-object/from16 v25, v5

    move-wide/from16 v5, v21

    :try_start_5d
    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->getCurrentDrainThresholdIndex(IJJ)I

    move-result v1

    .line 1865
    .local v1, "thresholdIndex":I
    iget-object v2, v7, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mHighBgBatteryPackages:Landroid/util/SparseArray;

    invoke-virtual {v2, v8}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v2

    move v12, v2

    .line 1866
    iget-boolean v2, v7, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainDecoupleThresholds:Z

    .line 1867
    .local v2, "decoupleThresholds":Z
    iget-object v3, v7, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainRestrictedBucketThreshold:[F

    aget v3, v3, v1

    float-to-double v3, v3

    .line 1868
    .local v3, "rbThreshold":D
    iget-object v5, v7, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainBgRestrictedThreshold:[F

    aget v5, v5, v1

    float-to-double v5, v5

    .line 1869
    .local v5, "brThreshold":D
    move/from16 v21, v1

    .end local v1    # "thresholdIndex":I
    .local v21, "thresholdIndex":I
    const/16 v22, 0x0

    if-gez v12, :cond_f3

    .line 1870
    const/16 v23, 0x0

    .line 1871
    .local v23, "ts":[J
    const/16 v24, 0x0

    .line 1872
    .local v24, "usages":[Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;
    cmpl-double v26, v13, v3

    if-ltz v26, :cond_b5

    .line 1873
    move/from16 v26, v2

    .end local v2    # "decoupleThresholds":Z
    .local v26, "decoupleThresholds":Z
    iget-wide v1, v7, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainInteractionGracePeriodMs:J

    add-long v1, v17, v1

    cmp-long v1, v19, v1

    if-lez v1, :cond_af

    .line 1875
    const/4 v1, 0x2

    new-array v2, v1, [J

    .line 1876
    .end local v23    # "ts":[J
    .local v2, "ts":[J
    aput-wide v19, v2, v22
    :try_end_91
    .catchall {:try_start_5d .. :try_end_91} :catchall_176

    .line 1877
    move/from16 v27, v9

    .end local v9    # "reason":I
    .local v27, "reason":I
    :try_start_93
    new-array v9, v1, [Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    move-object v1, v9

    .line 1878
    .end local v24    # "usages":[Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;
    .local v1, "usages":[Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;
    aput-object p2, v1, v22

    .line 1879
    iget-object v9, v7, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mHighBgBatteryPackages:Landroid/util/SparseArray;
    :try_end_9a
    .catchall {:try_start_93 .. :try_end_9a} :catchall_aa

    move/from16 v28, v10

    .end local v10    # "notifyController":Z
    .local v28, "notifyController":Z
    :try_start_9c
    invoke-static {v2, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v10

    invoke-virtual {v9, v8, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_a3
    .catchall {:try_start_9c .. :try_end_a3} :catchall_172

    .line 1881
    const/4 v9, 0x1

    move-object/from16 v24, v1

    move-object/from16 v23, v2

    move v10, v9

    .end local v28    # "notifyController":Z
    .local v9, "notifyController":Z
    goto :goto_b3

    .line 1938
    .end local v0    # "curLevel":I
    .end local v1    # "usages":[Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;
    .end local v2    # "ts":[J
    .end local v3    # "rbThreshold":D
    .end local v5    # "brThreshold":D
    .end local v9    # "notifyController":Z
    .end local v17    # "lastInteractionTime":J
    .end local v19    # "now":J
    .end local v21    # "thresholdIndex":I
    .end local v26    # "decoupleThresholds":Z
    .restart local v10    # "notifyController":Z
    :catchall_aa
    move-exception v0

    move/from16 v28, v10

    .end local v10    # "notifyController":Z
    .restart local v28    # "notifyController":Z
    goto/16 :goto_17f

    .line 1873
    .end local v27    # "reason":I
    .end local v28    # "notifyController":Z
    .restart local v0    # "curLevel":I
    .restart local v3    # "rbThreshold":D
    .restart local v5    # "brThreshold":D
    .local v9, "reason":I
    .restart local v10    # "notifyController":Z
    .restart local v17    # "lastInteractionTime":J
    .restart local v19    # "now":J
    .restart local v21    # "thresholdIndex":I
    .restart local v23    # "ts":[J
    .restart local v24    # "usages":[Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;
    .restart local v26    # "decoupleThresholds":Z
    :cond_af
    move/from16 v27, v9

    move/from16 v28, v10

    .line 1883
    .end local v9    # "reason":I
    .restart local v27    # "reason":I
    :goto_b3
    const/4 v11, 0x1

    goto :goto_bb

    .line 1872
    .end local v26    # "decoupleThresholds":Z
    .end local v27    # "reason":I
    .local v2, "decoupleThresholds":Z
    .restart local v9    # "reason":I
    :cond_b5
    move/from16 v26, v2

    move/from16 v27, v9

    move/from16 v28, v10

    .line 1885
    .end local v2    # "decoupleThresholds":Z
    .end local v9    # "reason":I
    .restart local v26    # "decoupleThresholds":Z
    .restart local v27    # "reason":I
    :goto_bb
    if-eqz v26, :cond_ed

    cmpl-double v1, v15, v5

    if-ltz v1, :cond_ed

    .line 1886
    if-nez v23, :cond_de

    .line 1887
    const/4 v1, 0x2

    :try_start_c4
    new-array v2, v1, [J

    .line 1888
    .end local v23    # "ts":[J
    .local v2, "ts":[J
    new-array v9, v1, [Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    move-object v1, v9

    .line 1889
    .end local v24    # "usages":[Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;
    .restart local v1    # "usages":[Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;
    iget-object v9, v7, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mHighBgBatteryPackages:Landroid/util/SparseArray;
    :try_end_cb
    .catchall {:try_start_c4 .. :try_end_cb} :catchall_d9

    move/from16 v22, v10

    .end local v10    # "notifyController":Z
    .local v22, "notifyController":Z
    :try_start_cd
    invoke-static {v2, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v10

    invoke-virtual {v9, v8, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object/from16 v24, v1

    move-object/from16 v23, v2

    goto :goto_e0

    .line 1938
    .end local v0    # "curLevel":I
    .end local v1    # "usages":[Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;
    .end local v2    # "ts":[J
    .end local v3    # "rbThreshold":D
    .end local v5    # "brThreshold":D
    .end local v17    # "lastInteractionTime":J
    .end local v19    # "now":J
    .end local v21    # "thresholdIndex":I
    .end local v22    # "notifyController":Z
    .end local v26    # "decoupleThresholds":Z
    .restart local v10    # "notifyController":Z
    :catchall_d9
    move-exception v0

    move/from16 v22, v10

    .end local v10    # "notifyController":Z
    .restart local v22    # "notifyController":Z
    goto/16 :goto_17f

    .line 1886
    .end local v22    # "notifyController":Z
    .restart local v0    # "curLevel":I
    .restart local v3    # "rbThreshold":D
    .restart local v5    # "brThreshold":D
    .restart local v10    # "notifyController":Z
    .restart local v17    # "lastInteractionTime":J
    .restart local v19    # "now":J
    .restart local v21    # "thresholdIndex":I
    .restart local v23    # "ts":[J
    .restart local v24    # "usages":[Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;
    .restart local v26    # "decoupleThresholds":Z
    :cond_de
    move/from16 v22, v10

    .line 1891
    .end local v10    # "notifyController":Z
    .restart local v22    # "notifyController":Z
    :goto_e0
    const/4 v1, 0x1

    aput-wide v19, v23, v1

    .line 1892
    aput-object p2, v24, v1
    :try_end_e5
    .catchall {:try_start_cd .. :try_end_e5} :catchall_e8

    .line 1893
    move v11, v1

    move v10, v1

    .end local v22    # "notifyController":Z
    .restart local v10    # "notifyController":Z
    goto :goto_f1

    .line 1938
    .end local v0    # "curLevel":I
    .end local v3    # "rbThreshold":D
    .end local v5    # "brThreshold":D
    .end local v10    # "notifyController":Z
    .end local v17    # "lastInteractionTime":J
    .end local v19    # "now":J
    .end local v21    # "thresholdIndex":I
    .end local v23    # "ts":[J
    .end local v24    # "usages":[Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;
    .end local v26    # "decoupleThresholds":Z
    .restart local v22    # "notifyController":Z
    :catchall_e8
    move-exception v0

    move/from16 v10, v22

    goto/16 :goto_17f

    .line 1885
    .end local v22    # "notifyController":Z
    .restart local v0    # "curLevel":I
    .restart local v3    # "rbThreshold":D
    .restart local v5    # "brThreshold":D
    .restart local v10    # "notifyController":Z
    .restart local v17    # "lastInteractionTime":J
    .restart local v19    # "now":J
    .restart local v21    # "thresholdIndex":I
    .restart local v23    # "ts":[J
    .restart local v24    # "usages":[Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;
    .restart local v26    # "decoupleThresholds":Z
    :cond_ed
    move/from16 v22, v10

    .line 1895
    .end local v10    # "notifyController":Z
    .end local v23    # "ts":[J
    .end local v24    # "usages":[Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;
    .restart local v22    # "notifyController":Z
    move/from16 v10, v22

    .end local v22    # "notifyController":Z
    .restart local v10    # "notifyController":Z
    :goto_f1
    goto/16 :goto_15f

    .line 1896
    .end local v26    # "decoupleThresholds":Z
    .end local v27    # "reason":I
    .local v2, "decoupleThresholds":Z
    .restart local v9    # "reason":I
    :cond_f3
    move/from16 v26, v2

    move/from16 v27, v9

    move/from16 v28, v10

    .end local v2    # "decoupleThresholds":Z
    .end local v9    # "reason":I
    .end local v10    # "notifyController":Z
    .restart local v26    # "decoupleThresholds":Z
    .restart local v27    # "reason":I
    .restart local v28    # "notifyController":Z
    :try_start_f9
    iget-object v1, v7, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mHighBgBatteryPackages:Landroid/util/SparseArray;

    .line 1897
    invoke-virtual {v1, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 1898
    .local v1, "pair":Landroid/util/Pair;, "Landroid/util/Pair<[J[Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;>;"
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, [J

    .line 1899
    .local v2, "ts":[J
    aget-wide v9, v2, v22

    .line 1900
    .local v9, "lastRestrictBucketTs":J
    cmpl-double v29, v13, v3

    if-ltz v29, :cond_126

    .line 1901
    move-wide/from16 v29, v3

    .end local v3    # "rbThreshold":D
    .local v29, "rbThreshold":D
    iget-wide v3, v7, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainInteractionGracePeriodMs:J

    add-long v3, v17, v3

    cmp-long v3, v19, v3

    if-lez v3, :cond_124

    .line 1902
    cmp-long v3, v9, v23

    if-nez v3, :cond_121

    .line 1903
    aput-wide v19, v2, v22

    .line 1904
    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, [Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    aput-object p2, v3, v22

    .line 1907
    :cond_121
    const/4 v3, 0x1

    move/from16 v28, v3

    .line 1909
    :cond_124
    const/4 v11, 0x1

    goto :goto_128

    .line 1900
    .end local v29    # "rbThreshold":D
    .restart local v3    # "rbThreshold":D
    :cond_126
    move-wide/from16 v29, v3

    .line 1915
    .end local v3    # "rbThreshold":D
    .restart local v29    # "rbThreshold":D
    :goto_128
    cmpl-double v3, v15, v5

    if-ltz v3, :cond_152

    .line 1921
    if-nez v26, :cond_139

    const/16 v3, 0x28

    if-ne v0, v3, :cond_13b

    iget-wide v3, v7, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainWindowMs:J
    :try_end_134
    .catchall {:try_start_f9 .. :try_end_134} :catchall_172

    add-long/2addr v3, v9

    cmp-long v3, v19, v3

    if-lez v3, :cond_13b

    :cond_139
    const/16 v22, 0x1

    :cond_13b
    move/from16 v3, v22

    .line 1924
    .end local v28    # "notifyController":Z
    .local v3, "notifyController":Z
    if-eqz v3, :cond_14e

    .line 1925
    const/4 v4, 0x1

    :try_start_140
    aput-wide v19, v2, v4

    .line 1926
    iget-object v4, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, [Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    const/16 v22, 0x1

    aput-object p2, v4, v22
    :try_end_14a
    .catchall {:try_start_140 .. :try_end_14a} :catchall_14b

    goto :goto_14e

    .line 1938
    .end local v0    # "curLevel":I
    .end local v1    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<[J[Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;>;"
    .end local v2    # "ts":[J
    .end local v5    # "brThreshold":D
    .end local v9    # "lastRestrictBucketTs":J
    .end local v17    # "lastInteractionTime":J
    .end local v19    # "now":J
    .end local v21    # "thresholdIndex":I
    .end local v26    # "decoupleThresholds":Z
    .end local v29    # "rbThreshold":D
    :catchall_14b
    move-exception v0

    move v10, v3

    goto :goto_17f

    .line 1928
    .restart local v0    # "curLevel":I
    .restart local v1    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<[J[Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;>;"
    .restart local v2    # "ts":[J
    .restart local v5    # "brThreshold":D
    .restart local v9    # "lastRestrictBucketTs":J
    .restart local v17    # "lastInteractionTime":J
    .restart local v19    # "now":J
    .restart local v21    # "thresholdIndex":I
    .restart local v26    # "decoupleThresholds":Z
    .restart local v29    # "rbThreshold":D
    :cond_14e
    :goto_14e
    const/4 v4, 0x1

    move v10, v3

    move v11, v4

    .end local v11    # "excessive":Z
    .local v4, "excessive":Z
    goto :goto_15f

    .line 1933
    .end local v3    # "notifyController":Z
    .end local v4    # "excessive":Z
    .restart local v11    # "excessive":Z
    .restart local v28    # "notifyController":Z
    :cond_152
    const/4 v3, 0x1

    :try_start_153
    aput-wide v23, v2, v3

    .line 1934
    iget-object v4, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, [Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    const/16 v22, 0x0

    aput-object v22, v4, v3
    :try_end_15d
    .catchall {:try_start_153 .. :try_end_15d} :catchall_172

    move/from16 v10, v28

    .line 1938
    .end local v0    # "curLevel":I
    .end local v1    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<[J[Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;>;"
    .end local v2    # "ts":[J
    .end local v5    # "brThreshold":D
    .end local v9    # "lastRestrictBucketTs":J
    .end local v17    # "lastInteractionTime":J
    .end local v19    # "now":J
    .end local v21    # "thresholdIndex":I
    .end local v26    # "decoupleThresholds":Z
    .end local v28    # "notifyController":Z
    .end local v29    # "rbThreshold":D
    .restart local v10    # "notifyController":Z
    :goto_15f
    :try_start_15f
    monitor-exit v25
    :try_end_160
    .catchall {:try_start_15f .. :try_end_160} :catchall_181

    .line 1940
    if-eqz v11, :cond_171

    .line 1946
    if-eqz v10, :cond_171

    .line 1947
    iget-object v0, v7, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mTracker:Lcom/android/server/am/BaseAppStateTracker;

    check-cast v0, Lcom/android/server/am/AppBatteryTracker;

    iget-object v0, v0, Lcom/android/server/am/AppBatteryTracker;->mAppRestrictionController:Lcom/android/server/am/AppRestrictionController;

    const/16 v1, 0x600

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-virtual {v0, v8, v1, v2, v3}, Lcom/android/server/am/AppRestrictionController;->refreshAppRestrictionLevelForUid(IIIZ)V

    .line 1960
    :cond_171
    return-void

    .line 1938
    .end local v10    # "notifyController":Z
    .restart local v28    # "notifyController":Z
    :catchall_172
    move-exception v0

    move/from16 v10, v28

    goto :goto_17f

    .end local v27    # "reason":I
    .end local v28    # "notifyController":Z
    .local v9, "reason":I
    .restart local v10    # "notifyController":Z
    :catchall_176
    move-exception v0

    goto :goto_17b

    :catchall_178
    move-exception v0

    move-object/from16 v25, v5

    :goto_17b
    move/from16 v27, v9

    move/from16 v28, v10

    .end local v9    # "reason":I
    .restart local v27    # "reason":I
    :goto_17f
    :try_start_17f
    monitor-exit v25
    :try_end_180
    .catchall {:try_start_17f .. :try_end_180} :catchall_181

    throw v0

    :catchall_181
    move-exception v0

    goto :goto_17f
.end method

.method onBackgroundRestrictionChanged(ILjava/lang/String;Z)V
    .registers 10
    .param p1, "uid"    # I
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "restricted"    # Z

    .line 2017
    if-eqz p3, :cond_3

    .line 2018
    return-void

    .line 2020
    :cond_3
    iget-object v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2023
    :try_start_6
    iget-object v1, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mHighBgBatteryPackages:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 2024
    .local v1, "pair":Landroid/util/Pair;, "Landroid/util/Pair<[J[Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;>;"
    if-eqz v1, :cond_20

    .line 2025
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, [J

    const-wide/16 v3, 0x0

    const/4 v5, 0x1

    aput-wide v3, v2, v5

    .line 2026
    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, [Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    const/4 v3, 0x0

    aput-object v3, v2, v5

    .line 2028
    .end local v1    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<[J[Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;>;"
    :cond_20
    monitor-exit v0

    .line 2029
    return-void

    .line 2028
    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_6 .. :try_end_24} :catchall_22

    throw v1
.end method

.method public onPropertiesChanged(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 1585
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_e4

    :cond_7
    goto/16 :goto_b7

    :sswitch_9
    const-string v0, "bg_current_drain_window"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x9

    goto/16 :goto_b8

    :sswitch_15
    const-string v0, "bg_current_drain_threshold_to_restricted_bucket"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    goto/16 :goto_b8

    :sswitch_20
    const-string v0, "bg_current_drain_threshold_to_bg_restricted"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto/16 :goto_b8

    :sswitch_2b
    const-string v0, "bg_current_drain_types_to_bg_restricted"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x6

    goto/16 :goto_b8

    :sswitch_36
    const-string v0, "bg_current_drain_exempted_types"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0xe

    goto/16 :goto_b8

    :sswitch_42
    const-string v0, "bg_current_drain_types_to_restricted_bucket"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x5

    goto/16 :goto_b8

    :sswitch_4d
    const-string v0, "bg_current_drain_interaction_grace_period"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0xa

    goto :goto_b8

    :sswitch_58
    const-string v0, "bg_current_drain_high_threshold_by_bg_location"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x2

    goto :goto_b8

    :sswitch_62
    const-string v0, "bg_current_drain_auto_restrict_abusive_apps_enabled"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x8

    goto :goto_b8

    :sswitch_6d
    const-string v0, "bg_current_drain_high_threshold_to_bg_restricted"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x4

    goto :goto_b8

    :sswitch_77
    const-string v0, "bg_current_drain_location_min_duration"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0xc

    goto :goto_b8

    :sswitch_82
    const-string v0, "bg_current_drain_high_threshold_to_restricted_bucket"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x3

    goto :goto_b8

    :sswitch_8c
    const-string v0, "bg_current_drain_power_components"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x7

    goto :goto_b8

    :sswitch_96
    const-string v0, "bg_current_drain_media_playback_min_duration"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0xb

    goto :goto_b8

    :sswitch_a1
    const-string v0, "bg_current_drain_decouple_thresholds"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0xf

    goto :goto_b8

    :sswitch_ac
    const-string v0, "bg_current_drain_event_duration_based_threshold_enabled"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0xd

    goto :goto_b8

    :goto_b7
    const/4 v0, -0x1

    :goto_b8
    packed-switch v0, :pswitch_data_126

    .line 1621
    invoke-super {p0, p1}, Lcom/android/server/am/BaseAppStatePolicy;->onPropertiesChanged(Ljava/lang/String;)V

    goto :goto_e3

    .line 1618
    :pswitch_bf
    invoke-direct {p0}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->updateCurrentDrainDecoupleThresholds()V

    .line 1619
    goto :goto_e3

    .line 1615
    :pswitch_c3
    invoke-direct {p0}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->updateCurrentDrainExemptedTypes()V

    .line 1616
    goto :goto_e3

    .line 1612
    :pswitch_c7
    invoke-direct {p0}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->updateCurrentDrainEventDurationBasedThresholdEnabled()V

    .line 1613
    goto :goto_e3

    .line 1609
    :pswitch_cb
    invoke-direct {p0}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->updateCurrentDrainLocationMinDuration()V

    .line 1610
    goto :goto_e3

    .line 1606
    :pswitch_cf
    invoke-direct {p0}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->updateCurrentDrainMediaPlaybackMinDuration()V

    .line 1607
    goto :goto_e3

    .line 1603
    :pswitch_d3
    invoke-direct {p0}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->updateCurrentDrainInteractionGracePeriod()V

    .line 1604
    goto :goto_e3

    .line 1600
    :pswitch_d7
    invoke-direct {p0}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->updateCurrentDrainWindow()V

    .line 1601
    goto :goto_e3

    .line 1597
    :pswitch_db
    invoke-direct {p0}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->updateBgCurrentDrainAutoRestrictAbusiveAppsEnabled()V

    .line 1598
    goto :goto_e3

    .line 1594
    :pswitch_df
    invoke-direct {p0}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->updateCurrentDrainThreshold()V

    .line 1595
    nop

    .line 1624
    :goto_e3
    return-void

    :sswitch_data_e4
    .sparse-switch
        -0x756855de -> :sswitch_ac
        -0x701eaca1 -> :sswitch_a1
        -0x1fb1101d -> :sswitch_96
        -0x1f35f949 -> :sswitch_8c
        -0x1d805c6c -> :sswitch_82
        0x303f164 -> :sswitch_77
        0x60568db -> :sswitch_6d
        0x7be7274 -> :sswitch_62
        0x17cc3411 -> :sswitch_58
        0x1edfa25c -> :sswitch_4d
        0x270cf0f7 -> :sswitch_42
        0x2ad74b9f -> :sswitch_36
        0x43bedfbe -> :sswitch_2b
        0x513daa8c -> :sswitch_20
        0x6f6da4c5 -> :sswitch_15
        0x74efacd7 -> :sswitch_9
    .end sparse-switch

    :pswitch_data_126
    .packed-switch 0x0
        :pswitch_df
        :pswitch_df
        :pswitch_df
        :pswitch_df
        :pswitch_df
        :pswitch_df
        :pswitch_df
        :pswitch_df
        :pswitch_db
        :pswitch_d7
        :pswitch_d3
        :pswitch_cf
        :pswitch_cb
        :pswitch_c7
        :pswitch_c3
        :pswitch_bf
    .end packed-switch
.end method

.method public onSystemReady()V
    .registers 2

    .line 1740
    iget-object v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    .line 1741
    invoke-virtual {v0}, Lcom/android/server/am/BaseAppStateTracker$Injector;->getBatteryManagerInternal()Landroid/os/BatteryManagerInternal;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/BatteryManagerInternal;->getBatteryFullCharge()I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBatteryFullChargeMah:I

    .line 1742
    invoke-super {p0}, Lcom/android/server/am/BaseAppStatePolicy;->onSystemReady()V

    .line 1743
    invoke-direct {p0}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->updateCurrentDrainThreshold()V

    .line 1744
    invoke-direct {p0}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->updateCurrentDrainWindow()V

    .line 1745
    invoke-direct {p0}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->updateCurrentDrainInteractionGracePeriod()V

    .line 1746
    invoke-direct {p0}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->updateCurrentDrainMediaPlaybackMinDuration()V

    .line 1747
    invoke-direct {p0}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->updateCurrentDrainLocationMinDuration()V

    .line 1748
    invoke-direct {p0}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->updateCurrentDrainEventDurationBasedThresholdEnabled()V

    .line 1749
    invoke-direct {p0}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->updateCurrentDrainExemptedTypes()V

    .line 1750
    invoke-direct {p0}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->updateCurrentDrainDecoupleThresholds()V

    .line 1751
    invoke-direct {p0}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->updateBgCurrentDrainAutoRestrictAbusiveAppsEnabled()V

    .line 1752
    return-void
.end method

.method public onTrackerEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .line 1636
    iget-object v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mTracker:Lcom/android/server/am/BaseAppStateTracker;

    check-cast v0, Lcom/android/server/am/AppBatteryTracker;

    invoke-static {v0, p1}, Lcom/android/server/am/AppBatteryTracker;->-$$Nest$monCurrentDrainMonitorEnabled(Lcom/android/server/am/AppBatteryTracker;Z)V

    .line 1637
    return-void
.end method

.method onUidRemovedLocked(I)V
    .registers 3
    .param p1, "uid"    # I

    .line 2054
    iget-object v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mHighBgBatteryPackages:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 2055
    iget-object v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mLastInteractionTime:Landroid/util/SparseLongArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseLongArray;->delete(I)V

    .line 2056
    return-void
.end method

.method onUserInteractionStarted(Ljava/lang/String;I)V
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 1993
    const/4 v0, 0x0

    .line 1994
    .local v0, "changed":Z
    iget-object v1, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1995
    :try_start_4
    iget-object v2, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mLastInteractionTime:Landroid/util/SparseLongArray;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-virtual {v2, p2, v3, v4}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 1996
    iget-object v2, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mTracker:Lcom/android/server/am/BaseAppStateTracker;

    check-cast v2, Lcom/android/server/am/AppBatteryTracker;

    iget-object v2, v2, Lcom/android/server/am/AppBatteryTracker;->mAppRestrictionController:Lcom/android/server/am/AppRestrictionController;

    invoke-virtual {v2, p2, p1}, Lcom/android/server/am/AppRestrictionController;->getRestrictionLevel(ILjava/lang/String;)I

    move-result v2

    .line 1998
    .local v2, "curLevel":I
    const/16 v3, 0x32

    if-ne v2, v3, :cond_1c

    goto :goto_2a

    .line 2002
    :cond_1c
    iget-object v3, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mHighBgBatteryPackages:Landroid/util/SparseArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v3

    .line 2003
    .local v3, "index":I
    if-ltz v3, :cond_2a

    .line 2004
    iget-object v4, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mHighBgBatteryPackages:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->removeAt(I)V

    .line 2005
    const/4 v0, 0x1

    .line 2008
    .end local v2    # "curLevel":I
    .end local v3    # "index":I
    :cond_2a
    :goto_2a
    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_4 .. :try_end_2b} :catchall_3b

    .line 2009
    if-eqz v0, :cond_3a

    .line 2011
    iget-object v1, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mTracker:Lcom/android/server/am/BaseAppStateTracker;

    check-cast v1, Lcom/android/server/am/AppBatteryTracker;

    iget-object v1, v1, Lcom/android/server/am/AppBatteryTracker;->mAppRestrictionController:Lcom/android/server/am/AppRestrictionController;

    const/16 v2, 0x300

    const/4 v3, 0x3

    const/4 v4, 0x1

    invoke-virtual {v1, p2, v2, v3, v4}, Lcom/android/server/am/AppRestrictionController;->refreshAppRestrictionLevelForUid(IIIZ)V

    .line 2014
    :cond_3a
    return-void

    .line 2008
    :catchall_3b
    move-exception v2

    :try_start_3c
    monitor-exit v1
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3b

    throw v2
.end method

.method onUserRemovedLocked(I)V
    .registers 4
    .param p1, "userId"    # I

    .line 2040
    iget-object v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mHighBgBatteryPackages:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_1e

    .line 2041
    iget-object v1, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mHighBgBatteryPackages:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-ne v1, p1, :cond_1b

    .line 2042
    iget-object v1, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mHighBgBatteryPackages:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->removeAt(I)V

    .line 2040
    :cond_1b
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 2045
    .end local v0    # "i":I
    :cond_1e
    iget-object v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mLastInteractionTime:Landroid/util/SparseLongArray;

    invoke-virtual {v0}, Landroid/util/SparseLongArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .restart local v0    # "i":I
    :goto_26
    if-ltz v0, :cond_3c

    .line 2046
    iget-object v1, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mLastInteractionTime:Landroid/util/SparseLongArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseLongArray;->keyAt(I)I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-ne v1, p1, :cond_39

    .line 2047
    iget-object v1, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mLastInteractionTime:Landroid/util/SparseLongArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseLongArray;->removeAt(I)V

    .line 2045
    :cond_39
    add-int/lit8 v0, v0, -0x1

    goto :goto_26

    .line 2050
    .end local v0    # "i":I
    :cond_3c
    return-void
.end method

.method reset()V
    .registers 2

    .line 2033
    iget-object v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mHighBgBatteryPackages:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 2034
    iget-object v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mLastInteractionTime:Landroid/util/SparseLongArray;

    invoke-virtual {v0}, Landroid/util/SparseLongArray;->clear()V

    .line 2035
    iget-object v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mTracker:Lcom/android/server/am/BaseAppStateTracker;

    check-cast v0, Lcom/android/server/am/AppBatteryTracker;

    invoke-virtual {v0}, Lcom/android/server/am/AppBatteryTracker;->reset()V

    .line 2036
    return-void
.end method

.method updateTrackerEnabled()V
    .registers 2

    .line 1627
    iget v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBatteryFullChargeMah:I

    if-lez v0, :cond_8

    .line 1628
    invoke-super {p0}, Lcom/android/server/am/BaseAppStatePolicy;->updateTrackerEnabled()V

    goto :goto_e

    .line 1630
    :cond_8
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mTrackerEnabled:Z

    .line 1631
    invoke-virtual {p0, v0}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->onTrackerEnabled(Z)V

    .line 1633
    :goto_e
    return-void
.end method
