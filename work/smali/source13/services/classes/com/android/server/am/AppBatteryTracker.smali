.class final Lcom/android/server/am/AppBatteryTracker;
.super Lcom/android/server/am/BaseAppStateTracker;
.source "AppBatteryTracker.java"

# interfaces
.implements Lcom/android/server/am/AppRestrictionController$UidBatteryUsageProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;,
        Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;,
        Lcom/android/server/am/AppBatteryTracker$BatteryUsage;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/am/BaseAppStateTracker<",
        "Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;",
        ">;",
        "Lcom/android/server/am/AppRestrictionController$UidBatteryUsageProvider;"
    }
.end annotation


# static fields
.field static final BATTERY_USAGE_NONE:Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

.field static final BATTERY_USAGE_STATS_POLLING_INTERVAL_MS_DEBUG:J = 0x7d0L

.field static final BATTERY_USAGE_STATS_POLLING_INTERVAL_MS_LONG:J = 0x1b7740L

.field static final BATTERY_USAGE_STATS_POLLING_MIN_INTERVAL_MS_DEBUG:J = 0x7d0L

.field static final BATTERY_USAGE_STATS_POLLING_MIN_INTERVAL_MS_LONG:J = 0x493e0L

.field static final DEBUG_BACKGROUND_BATTERY_TRACKER:Z = false

.field static final DEBUG_BACKGROUND_BATTERY_TRACKER_VERBOSE:Z = false

.field static final TAG:Ljava/lang/String; = "ActivityManager"


# instance fields
.field private final mActiveUserIdStates:Landroid/util/SparseBooleanArray;

.field private final mBatteryUsageStatsPollingIntervalMs:J

.field private final mBatteryUsageStatsPollingMinIntervalMs:J

.field private mBatteryUsageStatsUpdatePending:Z

.field private final mBgBatteryUsageStatsCheck:Ljava/lang/Runnable;

.field private final mBgBatteryUsageStatsPolling:Ljava/lang/Runnable;

.field private final mDebugUidPercentages:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;",
            ">;"
        }
    .end annotation
.end field

.field private mLastBatteryUsageSamplingTs:J

.field private mLastReportTime:J

.field private final mLastUidBatteryUsage:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;",
            ">;"
        }
    .end annotation
.end field

.field private mLastUidBatteryUsageStartTs:J

.field private final mTmpUidBatteryUsage:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/am/AppBatteryTracker$BatteryUsage;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpUidBatteryUsage2:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpUidBatteryUsageInWindow:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpUserIds:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation
.end field

.field private final mUidBatteryUsage:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/am/AppBatteryTracker$BatteryUsage;",
            ">;"
        }
    .end annotation
.end field

.field private final mUidBatteryUsageInWindow:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$kaVzCBnmSN4Z0ZhQAFDAQ7sPNKk(Lcom/android/server/am/AppBatteryTracker;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/am/AppBatteryTracker;->checkBatteryUsageStats()V

    return-void
.end method

.method public static synthetic $r8$lambda$lmXOpjEEfZvYeTL2JNq7Tg8AFb8(Lcom/android/server/am/AppBatteryTracker;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/am/AppBatteryTracker;->updateBatteryUsageStatsAndCheck()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmDebugUidPercentages(Lcom/android/server/am/AppBatteryTracker;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/AppBatteryTracker;->mDebugUidPercentages:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$monCurrentDrainMonitorEnabled(Lcom/android/server/am/AppBatteryTracker;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/am/AppBatteryTracker;->onCurrentDrainMonitorEnabled(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 117
    new-instance v0, Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    invoke-direct {v0}, Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;-><init>()V

    sput-object v0, Lcom/android/server/am/AppBatteryTracker;->BATTERY_USAGE_NONE:Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/am/AppRestrictionController;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "controller"    # Lcom/android/server/am/AppRestrictionController;

    .line 190
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/android/server/am/AppBatteryTracker;-><init>(Landroid/content/Context;Lcom/android/server/am/AppRestrictionController;Ljava/lang/reflect/Constructor;Ljava/lang/Object;)V

    .line 191
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/am/AppRestrictionController;Ljava/lang/reflect/Constructor;Ljava/lang/Object;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "controller"    # Lcom/android/server/am/AppRestrictionController;
    .param p4, "outerContext"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/server/am/AppRestrictionController;",
            "Ljava/lang/reflect/Constructor<",
            "+",
            "Lcom/android/server/am/BaseAppStateTracker$Injector<",
            "Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;",
            ">;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 196
    .local p3, "injector":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lcom/android/server/am/BaseAppStateTracker$Injector<Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;>;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/am/BaseAppStateTracker;-><init>(Landroid/content/Context;Lcom/android/server/am/AppRestrictionController;Ljava/lang/reflect/Constructor;Ljava/lang/Object;)V

    .line 119
    new-instance v0, Lcom/android/server/am/AppBatteryTracker$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/server/am/AppBatteryTracker$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/am/AppBatteryTracker;)V

    iput-object v0, p0, Lcom/android/server/am/AppBatteryTracker;->mBgBatteryUsageStatsPolling:Ljava/lang/Runnable;

    .line 120
    new-instance v0, Lcom/android/server/am/AppBatteryTracker$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/server/am/AppBatteryTracker$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/am/AppBatteryTracker;)V

    iput-object v0, p0, Lcom/android/server/am/AppBatteryTracker;->mBgBatteryUsageStatsCheck:Ljava/lang/Runnable;

    .line 126
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppBatteryTracker;->mActiveUserIdStates:Landroid/util/SparseBooleanArray;

    .line 145
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppBatteryTracker;->mUidBatteryUsage:Landroid/util/SparseArray;

    .line 151
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppBatteryTracker;->mUidBatteryUsageInWindow:Landroid/util/SparseArray;

    .line 158
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppBatteryTracker;->mLastUidBatteryUsage:Landroid/util/SparseArray;

    .line 162
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppBatteryTracker;->mTmpUidBatteryUsage:Landroid/util/SparseArray;

    .line 165
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppBatteryTracker;->mTmpUidBatteryUsage2:Landroid/util/SparseArray;

    .line 168
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppBatteryTracker;->mTmpUidBatteryUsageInWindow:Landroid/util/SparseArray;

    .line 172
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppBatteryTracker;->mTmpUserIds:Landroid/util/ArraySet;

    .line 183
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/am/AppBatteryTracker;->mLastReportTime:J

    .line 187
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppBatteryTracker;->mDebugUidPercentages:Landroid/util/SparseArray;

    .line 197
    if-nez p3, :cond_61

    .line 198
    const-wide/32 v0, 0x1b7740

    iput-wide v0, p0, Lcom/android/server/am/AppBatteryTracker;->mBatteryUsageStatsPollingIntervalMs:J

    .line 201
    const-wide/32 v0, 0x493e0

    iput-wide v0, p0, Lcom/android/server/am/AppBatteryTracker;->mBatteryUsageStatsPollingMinIntervalMs:J

    goto :goto_67

    .line 205
    :cond_61
    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/android/server/am/AppBatteryTracker;->mBatteryUsageStatsPollingIntervalMs:J

    .line 206
    iput-wide v0, p0, Lcom/android/server/am/AppBatteryTracker;->mBatteryUsageStatsPollingMinIntervalMs:J

    .line 209
    :goto_67
    iget-object v0, p0, Lcom/android/server/am/AppBatteryTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    new-instance v1, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;

    iget-object v2, p0, Lcom/android/server/am/AppBatteryTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-direct {v1, v2, p0}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;-><init>(Lcom/android/server/am/BaseAppStateTracker$Injector;Lcom/android/server/am/AppBatteryTracker;)V

    invoke-virtual {v0, v1}, Lcom/android/server/am/BaseAppStateTracker$Injector;->setPolicy(Lcom/android/server/am/BaseAppStatePolicy;)V

    .line 210
    return-void
.end method

.method private checkBatteryUsageStats()V
    .registers 16

    .line 434
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    .line 435
    .local v7, "now":J
    iget-object v0, p0, Lcom/android/server/am/AppBatteryTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/BaseAppStateTracker$Injector;->getPolicy()Lcom/android/server/am/BaseAppStatePolicy;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;

    .line 437
    .local v9, "bgPolicy":Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;
    :try_start_d
    iget-object v0, p0, Lcom/android/server/am/AppBatteryTracker;->mTmpUidBatteryUsageInWindow:Landroid/util/SparseArray;

    move-object v10, v0

    .line 438
    .local v10, "uidConsumers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;>;"
    iget-object v0, p0, Lcom/android/server/am/AppBatteryTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_13
    .catchall {:try_start_d .. :try_end_13} :catchall_7f

    .line 439
    :try_start_13
    iget-object v1, p0, Lcom/android/server/am/AppBatteryTracker;->mUidBatteryUsageInWindow:Landroid/util/SparseArray;

    invoke-static {v1, v10}, Lcom/android/server/am/AppBatteryTracker;->copyUidBatteryUsage(Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    .line 440
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_13 .. :try_end_19} :catchall_7c

    .line 441
    const-wide/16 v0, 0x0

    :try_start_1b
    iget-wide v2, v9, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainWindowMs:J

    sub-long v2, v7, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 442
    .local v2, "since":J
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v1

    move v11, v1

    move v12, v0

    .end local v0    # "i":I
    .local v11, "size":I
    .local v12, "i":I
    :goto_2a
    if-ge v12, v11, :cond_58

    .line 443
    invoke-virtual {v10, v12}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    move v13, v0

    .line 444
    .local v13, "uid":I
    invoke-virtual {v10, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    move-object v14, v0

    .line 445
    .local v14, "actualUsage":Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;
    iget-object v0, p0, Lcom/android/server/am/AppBatteryTracker;->mAppRestrictionController:Lcom/android/server/am/AppRestrictionController;

    iget v6, v9, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainExemptedTypes:I

    .line 446
    move v1, v13

    move-wide v4, v7

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/AppRestrictionController;->getUidBatteryExemptedUsageSince(IJJI)Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    move-result-object v0

    .line 450
    .local v0, "exemptedUsage":Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;
    invoke-virtual {v14}, Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;->mutate()Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    move-result-object v1

    .line 451
    invoke-virtual {v1, v0}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->subtract(Lcom/android/server/am/AppBatteryTracker$BatteryUsage;)Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    move-result-object v1

    .line 452
    invoke-virtual {v1, v13, v9}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->calcPercentage(ILcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;)Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    move-result-object v1

    .line 453
    invoke-virtual {v1}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->unmutate()Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    move-result-object v1

    .line 465
    .local v1, "bgUsage":Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;
    invoke-virtual {v9, v13, v1}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->handleUidBatteryUsage(ILcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;)V

    .line 442
    .end local v0    # "exemptedUsage":Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;
    .end local v1    # "bgUsage":Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;
    .end local v13    # "uid":I
    .end local v14    # "actualUsage":Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;
    add-int/lit8 v12, v12, 0x1

    goto :goto_2a

    .line 468
    .end local v11    # "size":I
    .end local v12    # "i":I
    :cond_58
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lcom/android/server/am/AppBatteryTracker;->mDebugUidPercentages:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .local v1, "size":I
    :goto_5f
    if-ge v0, v1, :cond_75

    .line 469
    iget-object v4, p0, Lcom/android/server/am/AppBatteryTracker;->mDebugUidPercentages:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    iget-object v5, p0, Lcom/android/server/am/AppBatteryTracker;->mDebugUidPercentages:Landroid/util/SparseArray;

    .line 470
    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    .line 469
    invoke-virtual {v9, v4, v5}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->handleUidBatteryUsage(ILcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;)V
    :try_end_72
    .catchall {:try_start_1b .. :try_end_72} :catchall_7f

    .line 468
    add-int/lit8 v0, v0, 0x1

    goto :goto_5f

    .line 473
    .end local v0    # "i":I
    .end local v1    # "size":I
    .end local v2    # "since":J
    .end local v10    # "uidConsumers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;>;"
    :cond_75
    iget-wide v0, p0, Lcom/android/server/am/AppBatteryTracker;->mBatteryUsageStatsPollingIntervalMs:J

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/AppBatteryTracker;->scheduleBatteryUsageStatsUpdateIfNecessary(J)V

    .line 474
    nop

    .line 475
    return-void

    .line 440
    .restart local v10    # "uidConsumers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;>;"
    :catchall_7c
    move-exception v1

    :try_start_7d
    monitor-exit v0
    :try_end_7e
    .catchall {:try_start_7d .. :try_end_7e} :catchall_7c

    .end local v7    # "now":J
    .end local v9    # "bgPolicy":Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;
    .end local p0    # "this":Lcom/android/server/am/AppBatteryTracker;
    :try_start_7e
    throw v1
    :try_end_7f
    .catchall {:try_start_7e .. :try_end_7f} :catchall_7f

    .line 473
    .end local v10    # "uidConsumers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;>;"
    .restart local v7    # "now":J
    .restart local v9    # "bgPolicy":Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;
    .restart local p0    # "this":Lcom/android/server/am/AppBatteryTracker;
    :catchall_7f
    move-exception v0

    iget-wide v1, p0, Lcom/android/server/am/AppBatteryTracker;->mBatteryUsageStatsPollingIntervalMs:J

    invoke-direct {p0, v1, v2}, Lcom/android/server/am/AppBatteryTracker;->scheduleBatteryUsageStatsUpdateIfNecessary(J)V

    .line 474
    throw v0
.end method

.method private static copyUidBatteryUsage(Landroid/util/SparseArray;Landroid/util/SparseArray;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "+",
            "Lcom/android/server/am/AppBatteryTracker$BatteryUsage;",
            ">;",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;",
            ">;)V"
        }
    .end annotation

    .line 714
    .local p0, "source":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Lcom/android/server/am/AppBatteryTracker$BatteryUsage;>;"
    .local p1, "dest":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;>;"
    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    .line 715
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_9
    if-ltz v0, :cond_20

    .line 716
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    new-instance v2, Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    invoke-direct {v2, v3}, Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;-><init>(Lcom/android/server/am/AppBatteryTracker$BatteryUsage;)V

    invoke-virtual {p1, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 715
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    .line 718
    .end local v0    # "i":I
    :cond_20
    return-void
.end method

.method private static copyUidBatteryUsage(Landroid/util/SparseArray;Landroid/util/SparseArray;D)V
    .registers 8
    .param p2, "scale"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "+",
            "Lcom/android/server/am/AppBatteryTracker$BatteryUsage;",
            ">;",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;",
            ">;D)V"
        }
    .end annotation

    .line 722
    .local p0, "source":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Lcom/android/server/am/AppBatteryTracker$BatteryUsage;>;"
    .local p1, "dest":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;>;"
    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    .line 723
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_9
    if-ltz v0, :cond_20

    .line 724
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    new-instance v2, Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    invoke-direct {v2, v3, p2, p3}, Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;-><init>(Lcom/android/server/am/AppBatteryTracker$BatteryUsage;D)V

    invoke-virtual {p1, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 723
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    .line 726
    .end local v0    # "i":I
    :cond_20
    return-void
.end method

.method private dumpProcessStateStats(Landroid/util/proto/ProtoOutputStream;ID)V
    .registers 9
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "processState"    # I
    .param p3, "powerMah"    # D

    .line 893
    const-wide/16 v0, 0x0

    cmpl-double v0, p3, v0

    if-nez v0, :cond_7

    .line 894
    return-void

    .line 897
    :cond_7
    const-wide v0, 0x20b00000002L

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 898
    .local v0, "token":J
    const-wide v2, 0x10e00000001L

    invoke-virtual {p1, v2, v3, p2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 899
    const-wide v2, 0x10100000003L

    invoke-virtual {p1, v2, v3, p3, p4}, Landroid/util/proto/ProtoOutputStream;->write(JD)V

    .line 900
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 901
    return-void
.end method

.method private dumpUidStats(Landroid/util/proto/ProtoOutputStream;ILcom/android/server/am/AppBatteryTracker$BatteryUsage;)V
    .registers 24
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "uid"    # I
    .param p3, "usage"    # Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    .line 862
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    iget-object v3, v2, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->mUsage:[D

    if-nez v3, :cond_b

    .line 863
    return-void

    .line 866
    :cond_b
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->getUsagePowerMah(I)D

    move-result-wide v4

    .line 867
    .local v4, "foregroundUsage":D
    const/4 v6, 0x2

    invoke-virtual {v2, v6}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->getUsagePowerMah(I)D

    move-result-wide v7

    .line 868
    .local v7, "backgroundUsage":D
    const/4 v9, 0x3

    invoke-virtual {v2, v9}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->getUsagePowerMah(I)D

    move-result-wide v10

    .line 869
    .local v10, "fgsUsage":D
    const/4 v12, 0x4

    invoke-virtual {v2, v12}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->getUsagePowerMah(I)D

    move-result-wide v13

    .line 871
    .local v13, "cachedUsage":D
    const-wide/16 v15, 0x0

    cmpl-double v17, v4, v15

    if-nez v17, :cond_2e

    cmpl-double v17, v7, v15

    if-nez v17, :cond_2e

    cmpl-double v15, v10, v15

    if-nez v15, :cond_2e

    .line 872
    return-void

    .line 875
    :cond_2e
    move-wide/from16 v16, v13

    .end local v13    # "cachedUsage":D
    .local v16, "cachedUsage":D
    const-wide v12, 0x20b00000001L

    invoke-virtual {v1, v12, v13}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v12

    .line 876
    .local v12, "token":J
    move-wide/from16 v18, v10

    .end local v10    # "fgsUsage":D
    .local v18, "fgsUsage":D
    const-wide v9, 0x10500000001L

    move/from16 v11, p2

    invoke-virtual {v1, v9, v10, v11}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 877
    invoke-direct {v0, v1, v3, v4, v5}, Lcom/android/server/am/AppBatteryTracker;->dumpProcessStateStats(Landroid/util/proto/ProtoOutputStream;ID)V

    .line 880
    invoke-direct {v0, v1, v6, v7, v8}, Lcom/android/server/am/AppBatteryTracker;->dumpProcessStateStats(Landroid/util/proto/ProtoOutputStream;ID)V

    .line 883
    move-wide/from16 v9, v18

    const/4 v3, 0x3

    .end local v18    # "fgsUsage":D
    .local v9, "fgsUsage":D
    invoke-direct {v0, v1, v3, v9, v10}, Lcom/android/server/am/AppBatteryTracker;->dumpProcessStateStats(Landroid/util/proto/ProtoOutputStream;ID)V

    .line 886
    move-wide/from16 v14, v16

    const/4 v3, 0x4

    .end local v16    # "cachedUsage":D
    .local v14, "cachedUsage":D
    invoke-direct {v0, v1, v3, v14, v15}, Lcom/android/server/am/AppBatteryTracker;->dumpProcessStateStats(Landroid/util/proto/ProtoOutputStream;ID)V

    .line 889
    invoke-virtual {v1, v12, v13}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 890
    return-void
.end method

.method static synthetic lambda$dump$0(Ljava/util/concurrent/CountDownLatch;)Z
    .registers 2
    .param p0, "latch"    # Ljava/util/concurrent/CountDownLatch;

    .line 789
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 790
    const/4 v0, 0x0

    return v0
.end method

.method private logAppBatteryTrackerIfNeeded()V
    .registers 22

    .line 248
    move-object/from16 v1, p0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 249
    .local v2, "now":J
    iget-object v4, v1, Lcom/android/server/am/AppBatteryTracker;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 250
    :try_start_9
    iget-object v0, v1, Lcom/android/server/am/AppBatteryTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/BaseAppStateTracker$Injector;->getPolicy()Lcom/android/server/am/BaseAppStatePolicy;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;

    .line 251
    .local v0, "bgPolicy":Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;
    iget-wide v5, v1, Lcom/android/server/am/AppBatteryTracker;->mLastReportTime:J

    sub-long v5, v2, v5

    iget-wide v7, v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainWindowMs:J

    cmp-long v5, v5, v7

    if-gez v5, :cond_1d

    .line 252
    monitor-exit v4

    return-void

    .line 254
    :cond_1d
    iput-wide v2, v1, Lcom/android/server/am/AppBatteryTracker;->mLastReportTime:J

    .line 256
    .end local v0    # "bgPolicy":Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;
    monitor-exit v4
    :try_end_20
    .catchall {:try_start_9 .. :try_end_20} :catchall_7c

    .line 257
    iget-object v0, v1, Lcom/android/server/am/AppBatteryTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/BaseAppStateTracker$Injector;->currentTimeMillis()J

    move-result-wide v4

    const/4 v0, 0x1

    invoke-direct {v1, v4, v5, v0}, Lcom/android/server/am/AppBatteryTracker;->updateBatteryUsageStatsIfNecessary(JZ)Z

    .line 258
    iget-object v5, v1, Lcom/android/server/am/AppBatteryTracker;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 259
    const/4 v0, 0x0

    .local v0, "i":I
    :try_start_2e
    iget-object v4, v1, Lcom/android/server/am/AppBatteryTracker;->mUidBatteryUsageInWindow:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    .local v4, "size":I
    :goto_34
    if-ge v0, v4, :cond_77

    .line 260
    iget-object v6, v1, Lcom/android/server/am/AppBatteryTracker;->mUidBatteryUsageInWindow:Landroid/util/SparseArray;

    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    .line 261
    .local v6, "uid":I
    invoke-static {v6}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v7

    if-nez v7, :cond_49

    invoke-static {v6}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v7

    if-nez v7, :cond_49

    .line 262
    goto :goto_74

    .line 264
    :cond_49
    sget-object v7, Lcom/android/server/am/AppBatteryTracker;->BATTERY_USAGE_NONE:Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    iget-object v8, v1, Lcom/android/server/am/AppBatteryTracker;->mUidBatteryUsageInWindow:Landroid/util/SparseArray;

    invoke-virtual {v8, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_58

    .line 265
    goto :goto_74

    .line 267
    :cond_58
    const/16 v7, 0x1b9

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 273
    invoke-virtual {v1, v6}, Lcom/android/server/am/AppBatteryTracker;->getTrackerInfoForStatsd(I)[B

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    .line 279
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v19

    const/16 v20, 0x0

    .line 267
    move v8, v6

    invoke-static/range {v7 .. v20}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIII[B[B[B[BIIIZI)V

    .line 259
    .end local v6    # "uid":I
    :goto_74
    add-int/lit8 v0, v0, 0x1

    goto :goto_34

    .line 283
    .end local v0    # "i":I
    .end local v4    # "size":I
    :cond_77
    monitor-exit v5

    .line 284
    return-void

    .line 283
    :catchall_79
    move-exception v0

    monitor-exit v5
    :try_end_7b
    .catchall {:try_start_2e .. :try_end_7b} :catchall_79

    throw v0

    .line 256
    :catchall_7c
    move-exception v0

    :try_start_7d
    monitor-exit v4
    :try_end_7e
    .catchall {:try_start_7d .. :try_end_7e} :catchall_7c

    throw v0
.end method

.method private onCurrentDrainMonitorEnabled(Z)V
    .registers 6
    .param p1, "enabled"    # Z

    .line 729
    if-eqz p1, :cond_16

    .line 730
    iget-object v0, p0, Lcom/android/server/am/AppBatteryTracker;->mBgHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/am/AppBatteryTracker;->mBgBatteryUsageStatsPolling:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_41

    .line 731
    iget-object v0, p0, Lcom/android/server/am/AppBatteryTracker;->mBgHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/am/AppBatteryTracker;->mBgBatteryUsageStatsPolling:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/android/server/am/AppBatteryTracker;->mBatteryUsageStatsPollingIntervalMs:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_41

    .line 735
    :cond_16
    iget-object v0, p0, Lcom/android/server/am/AppBatteryTracker;->mBgHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/am/AppBatteryTracker;->mBgBatteryUsageStatsPolling:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 736
    iget-object v0, p0, Lcom/android/server/am/AppBatteryTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 737
    :try_start_20
    iget-boolean v1, p0, Lcom/android/server/am/AppBatteryTracker;->mBatteryUsageStatsUpdatePending:Z
    :try_end_22
    .catchall {:try_start_20 .. :try_end_22} :catchall_42

    if-eqz v1, :cond_2b

    .line 740
    :try_start_24
    iget-object v1, p0, Lcom/android/server/am/AppBatteryTracker;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_29
    .catch Ljava/lang/InterruptedException; {:try_start_24 .. :try_end_29} :catch_2a
    .catchall {:try_start_24 .. :try_end_29} :catchall_42

    .line 742
    goto :goto_2b

    .line 741
    :catch_2a
    move-exception v1

    .line 744
    :cond_2b
    :goto_2b
    :try_start_2b
    iget-object v1, p0, Lcom/android/server/am/AppBatteryTracker;->mUidBatteryUsage:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 745
    iget-object v1, p0, Lcom/android/server/am/AppBatteryTracker;->mUidBatteryUsageInWindow:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 746
    iget-object v1, p0, Lcom/android/server/am/AppBatteryTracker;->mLastUidBatteryUsage:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 747
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/am/AppBatteryTracker;->mLastBatteryUsageSamplingTs:J

    iput-wide v1, p0, Lcom/android/server/am/AppBatteryTracker;->mLastUidBatteryUsageStartTs:J

    .line 748
    monitor-exit v0

    .line 750
    :cond_41
    :goto_41
    return-void

    .line 748
    :catchall_42
    move-exception v1

    monitor-exit v0
    :try_end_44
    .catchall {:try_start_2b .. :try_end_44} :catchall_42

    throw v1
.end method

.method private scheduleBatteryUsageStatsUpdateIfNecessary(J)V
    .registers 6
    .param p1, "delay"    # J

    .line 233
    iget-object v0, p0, Lcom/android/server/am/AppBatteryTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/BaseAppStateTracker$Injector;->getPolicy()Lcom/android/server/am/BaseAppStatePolicy;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;

    invoke-virtual {v0}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 234
    iget-object v0, p0, Lcom/android/server/am/AppBatteryTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 235
    :try_start_11
    iget-object v1, p0, Lcom/android/server/am/AppBatteryTracker;->mBgHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/am/AppBatteryTracker;->mBgBatteryUsageStatsPolling:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    if-nez v1, :cond_22

    .line 236
    iget-object v1, p0, Lcom/android/server/am/AppBatteryTracker;->mBgHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/am/AppBatteryTracker;->mBgBatteryUsageStatsPolling:Ljava/lang/Runnable;

    invoke-virtual {v1, v2, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 238
    :cond_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_11 .. :try_end_23} :catchall_27

    .line 239
    invoke-direct {p0}, Lcom/android/server/am/AppBatteryTracker;->logAppBatteryTrackerIfNeeded()V

    goto :goto_2a

    .line 238
    :catchall_27
    move-exception v1

    :try_start_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    throw v1

    .line 241
    :cond_2a
    :goto_2a
    return-void
.end method

.method private scheduleBgBatteryUsageStatsCheck()V
    .registers 3

    .line 415
    iget-object v0, p0, Lcom/android/server/am/AppBatteryTracker;->mBgHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/am/AppBatteryTracker;->mBgBatteryUsageStatsCheck:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 416
    iget-object v0, p0, Lcom/android/server/am/AppBatteryTracker;->mBgHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/am/AppBatteryTracker;->mBgBatteryUsageStatsCheck:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 418
    :cond_11
    return-void
.end method

.method private updateBatteryUsageStatsAndCheck()V
    .registers 8

    .line 421
    iget-object v0, p0, Lcom/android/server/am/AppBatteryTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/BaseAppStateTracker$Injector;->currentTimeMillis()J

    move-result-wide v0

    .line 422
    .local v0, "now":J
    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/am/AppBatteryTracker;->updateBatteryUsageStatsIfNecessary(JZ)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 423
    invoke-direct {p0}, Lcom/android/server/am/AppBatteryTracker;->checkBatteryUsageStats()V

    goto :goto_1e

    .line 426
    :cond_11
    iget-object v2, p0, Lcom/android/server/am/AppBatteryTracker;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 427
    :try_start_14
    iget-wide v3, p0, Lcom/android/server/am/AppBatteryTracker;->mLastBatteryUsageSamplingTs:J

    iget-wide v5, p0, Lcom/android/server/am/AppBatteryTracker;->mBatteryUsageStatsPollingMinIntervalMs:J

    add-long/2addr v3, v5

    sub-long/2addr v3, v0

    invoke-direct {p0, v3, v4}, Lcom/android/server/am/AppBatteryTracker;->scheduleBatteryUsageStatsUpdateIfNecessary(J)V

    .line 429
    monitor-exit v2

    .line 431
    :goto_1e
    return-void

    .line 429
    :catchall_1f
    move-exception v3

    monitor-exit v2
    :try_end_21
    .catchall {:try_start_14 .. :try_end_21} :catchall_1f

    throw v3
.end method

.method private updateBatteryUsageStatsIfNecessary(JZ)Z
    .registers 11
    .param p1, "now"    # J
    .param p3, "forceUpdate"    # Z

    .line 483
    const/4 v0, 0x0

    .line 484
    .local v0, "needUpdate":Z
    const/4 v1, 0x0

    .line 485
    .local v1, "updated":Z
    iget-object v2, p0, Lcom/android/server/am/AppBatteryTracker;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 486
    :try_start_5
    iget-wide v3, p0, Lcom/android/server/am/AppBatteryTracker;->mLastBatteryUsageSamplingTs:J

    iget-wide v5, p0, Lcom/android/server/am/AppBatteryTracker;->mBatteryUsageStatsPollingMinIntervalMs:J

    add-long/2addr v3, v5

    cmp-long v3, v3, p1

    const/4 v4, 0x0

    if-ltz v3, :cond_14

    if-eqz p3, :cond_12

    goto :goto_14

    .line 502
    :cond_12
    monitor-exit v2

    return v4

    .line 489
    :cond_14
    :goto_14
    iget-boolean v3, p0, Lcom/android/server/am/AppBatteryTracker;->mBatteryUsageStatsUpdatePending:Z
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_3d

    if-eqz v3, :cond_20

    .line 492
    :try_start_18
    iget-object v3, p0, Lcom/android/server/am/AppBatteryTracker;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_1d
    .catch Ljava/lang/InterruptedException; {:try_start_18 .. :try_end_1d} :catch_1e
    .catchall {:try_start_18 .. :try_end_1d} :catchall_3d

    goto :goto_1f

    .line 493
    :catch_1e
    move-exception v3

    .line 494
    :goto_1f
    goto :goto_24

    .line 496
    :cond_20
    const/4 v3, 0x1

    :try_start_21
    iput-boolean v3, p0, Lcom/android/server/am/AppBatteryTracker;->mBatteryUsageStatsUpdatePending:Z

    .line 497
    const/4 v0, 0x1

    .line 499
    :goto_24
    const/4 v1, 0x1

    .line 504
    monitor-exit v2
    :try_end_26
    .catchall {:try_start_21 .. :try_end_26} :catchall_3d

    .line 505
    if-eqz v0, :cond_3c

    .line 507
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/AppBatteryTracker;->updateBatteryUsageStatsOnce(J)V

    .line 508
    iget-object v2, p0, Lcom/android/server/am/AppBatteryTracker;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 509
    :try_start_2e
    iput-wide p1, p0, Lcom/android/server/am/AppBatteryTracker;->mLastBatteryUsageSamplingTs:J

    .line 510
    iput-boolean v4, p0, Lcom/android/server/am/AppBatteryTracker;->mBatteryUsageStatsUpdatePending:Z

    .line 511
    iget-object v3, p0, Lcom/android/server/am/AppBatteryTracker;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 512
    monitor-exit v2

    goto :goto_3c

    :catchall_39
    move-exception v3

    monitor-exit v2
    :try_end_3b
    .catchall {:try_start_2e .. :try_end_3b} :catchall_39

    throw v3

    .line 514
    :cond_3c
    :goto_3c
    return v1

    .line 504
    :catchall_3d
    move-exception v3

    :try_start_3e
    monitor-exit v2
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3d

    throw v3
.end method

.method private updateBatteryUsageStatsOnce(J)V
    .registers 36
    .param p1, "now"    # J

    .line 518
    move-object/from16 v8, p0

    iget-object v0, v8, Lcom/android/server/am/AppBatteryTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/BaseAppStateTracker$Injector;->getPolicy()Lcom/android/server/am/BaseAppStatePolicy;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;

    .line 519
    .local v9, "bgPolicy":Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;
    iget-object v10, v8, Lcom/android/server/am/AppBatteryTracker;->mTmpUserIds:Landroid/util/ArraySet;

    .line 520
    .local v10, "userIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/os/UserHandle;>;"
    iget-object v11, v8, Lcom/android/server/am/AppBatteryTracker;->mTmpUidBatteryUsage:Landroid/util/SparseArray;

    .line 521
    .local v11, "buf":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/AppBatteryTracker$BatteryUsage;>;"
    iget-object v0, v8, Lcom/android/server/am/AppBatteryTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/BaseAppStateTracker$Injector;->getBatteryStatsInternal()Landroid/os/BatteryStatsInternal;

    move-result-object v12

    .line 522
    .local v12, "batteryStatsInternal":Landroid/os/BatteryStatsInternal;
    iget-wide v13, v9, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainWindowMs:J

    .line 524
    .local v13, "windowSize":J
    invoke-virtual {v11}, Landroid/util/SparseArray;->clear()V

    .line 525
    invoke-virtual {v10}, Landroid/util/ArraySet;->clear()V

    .line 526
    iget-object v1, v8, Lcom/android/server/am/AppBatteryTracker;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 527
    :try_start_20
    iget-object v0, v8, Lcom/android/server/am/AppBatteryTracker;->mActiveUserIdStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0
    :try_end_26
    .catchall {:try_start_20 .. :try_end_26} :catchall_1f4

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_28
    if-ltz v0, :cond_52

    .line 528
    :try_start_2a
    iget-object v2, v8, Lcom/android/server/am/AppBatteryTracker;->mActiveUserIdStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 529
    iget-object v2, v8, Lcom/android/server/am/AppBatteryTracker;->mActiveUserIdStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v2

    if-nez v2, :cond_44

    .line 530
    iget-object v2, v8, Lcom/android/server/am/AppBatteryTracker;->mActiveUserIdStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseBooleanArray;->removeAt(I)V
    :try_end_44
    .catchall {:try_start_2a .. :try_end_44} :catchall_47

    .line 527
    :cond_44
    add-int/lit8 v0, v0, -0x1

    goto :goto_28

    .line 533
    .end local v0    # "i":I
    :catchall_47
    move-exception v0

    move-object/from16 v23, v9

    move-object/from16 v24, v10

    move-object/from16 v21, v12

    move-wide/from16 v29, v13

    goto/16 :goto_1fd

    :cond_52
    :try_start_52
    monitor-exit v1
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_1f4

    .line 540
    new-instance v0, Landroid/os/BatteryUsageStatsQuery$Builder;

    invoke-direct {v0}, Landroid/os/BatteryUsageStatsQuery$Builder;-><init>()V

    .line 541
    invoke-virtual {v0}, Landroid/os/BatteryUsageStatsQuery$Builder;->includeProcessStateData()Landroid/os/BatteryUsageStatsQuery$Builder;

    move-result-object v0

    .line 542
    const-wide/16 v6, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/os/BatteryUsageStatsQuery$Builder;->setMaxStatsAgeMs(J)Landroid/os/BatteryUsageStatsQuery$Builder;

    move-result-object v15

    .line 543
    .local v15, "builder":Landroid/os/BatteryUsageStatsQuery$Builder;
    const-wide/16 v2, 0x0

    move-object/from16 v1, p0

    move-object v4, v11

    move-object v5, v15

    move-wide/from16 v16, v6

    move-object v6, v10

    move-object v7, v12

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/AppBatteryTracker;->updateBatteryUsageStatsOnceInternal(JLandroid/util/SparseArray;Landroid/os/BatteryUsageStatsQuery$Builder;Landroid/util/ArraySet;Landroid/os/BatteryStatsInternal;)Landroid/os/BatteryUsageStats;

    move-result-object v18

    .line 545
    .local v18, "stats":Landroid/os/BatteryUsageStats;
    if-eqz v18, :cond_77

    invoke-virtual/range {v18 .. v18}, Landroid/os/BatteryUsageStats;->getStatsStartTimestamp()J

    move-result-wide v6

    goto :goto_79

    :cond_77
    move-wide/from16 v6, v16

    .line 546
    .local v6, "curStart":J
    :goto_79
    if-eqz v18, :cond_80

    invoke-virtual/range {v18 .. v18}, Landroid/os/BatteryUsageStats;->getStatsEndTimestamp()J

    move-result-wide v0

    goto :goto_82

    :cond_80
    move-wide/from16 v0, p1

    :goto_82
    move-wide/from16 v19, v0

    .line 547
    .local v19, "curEnd":J
    sub-long v4, v19, v6

    .line 548
    .local v4, "curDuration":J
    const/4 v1, 0x1

    .line 550
    .local v1, "needUpdateUidBatteryUsageInWindow":Z
    cmp-long v0, v4, v13

    const-wide/high16 v21, 0x3ff0000000000000L    # 1.0

    if-ltz v0, :cond_af

    .line 552
    iget-object v2, v8, Lcom/android/server/am/AppBatteryTracker;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 553
    :try_start_90
    iget-object v0, v8, Lcom/android/server/am/AppBatteryTracker;->mUidBatteryUsageInWindow:Landroid/util/SparseArray;
    :try_end_92
    .catchall {:try_start_90 .. :try_end_92} :catchall_a6

    move-object/from16 v23, v9

    move-object/from16 v24, v10

    .end local v9    # "bgPolicy":Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;
    .end local v10    # "userIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/os/UserHandle;>;"
    .local v23, "bgPolicy":Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;
    .local v24, "userIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/os/UserHandle;>;"
    long-to-double v9, v13

    mul-double v9, v9, v21

    move-wide/from16 v25, v13

    .end local v13    # "windowSize":J
    .local v25, "windowSize":J
    long-to-double v13, v4

    div-double/2addr v9, v13

    :try_start_9d
    invoke-static {v11, v0, v9, v10}, Lcom/android/server/am/AppBatteryTracker;->copyUidBatteryUsage(Landroid/util/SparseArray;Landroid/util/SparseArray;D)V

    .line 554
    monitor-exit v2

    .line 555
    const/4 v1, 0x0

    move v9, v1

    goto :goto_b6

    .line 554
    :catchall_a4
    move-exception v0

    goto :goto_ad

    .end local v23    # "bgPolicy":Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;
    .end local v24    # "userIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/os/UserHandle;>;"
    .end local v25    # "windowSize":J
    .restart local v9    # "bgPolicy":Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;
    .restart local v10    # "userIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/os/UserHandle;>;"
    .restart local v13    # "windowSize":J
    :catchall_a6
    move-exception v0

    move-object/from16 v23, v9

    move-object/from16 v24, v10

    move-wide/from16 v25, v13

    .end local v9    # "bgPolicy":Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;
    .end local v10    # "userIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/os/UserHandle;>;"
    .end local v13    # "windowSize":J
    .restart local v23    # "bgPolicy":Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;
    .restart local v24    # "userIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/os/UserHandle;>;"
    .restart local v25    # "windowSize":J
    :goto_ad
    monitor-exit v2
    :try_end_ae
    .catchall {:try_start_9d .. :try_end_ae} :catchall_a4

    throw v0

    .line 550
    .end local v23    # "bgPolicy":Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;
    .end local v24    # "userIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/os/UserHandle;>;"
    .end local v25    # "windowSize":J
    .restart local v9    # "bgPolicy":Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;
    .restart local v10    # "userIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/os/UserHandle;>;"
    .restart local v13    # "windowSize":J
    :cond_af
    move-object/from16 v23, v9

    move-object/from16 v24, v10

    move-wide/from16 v25, v13

    .end local v9    # "bgPolicy":Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;
    .end local v10    # "userIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/os/UserHandle;>;"
    .end local v13    # "windowSize":J
    .restart local v23    # "bgPolicy":Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;
    .restart local v24    # "userIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/os/UserHandle;>;"
    .restart local v25    # "windowSize":J
    move v9, v1

    .line 559
    .end local v1    # "needUpdateUidBatteryUsageInWindow":Z
    .local v9, "needUpdateUidBatteryUsageInWindow":Z
    :goto_b6
    iget-object v0, v8, Lcom/android/server/am/AppBatteryTracker;->mTmpUidBatteryUsage2:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 560
    iget-object v0, v8, Lcom/android/server/am/AppBatteryTracker;->mTmpUidBatteryUsage2:Landroid/util/SparseArray;

    invoke-static {v11, v0}, Lcom/android/server/am/AppBatteryTracker;->copyUidBatteryUsage(Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    .line 563
    iget-object v2, v8, Lcom/android/server/am/AppBatteryTracker;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 564
    :try_start_c3
    iget-wide v0, v8, Lcom/android/server/am/AppBatteryTracker;->mLastUidBatteryUsageStartTs:J

    move-wide v13, v0

    .line 565
    .local v13, "lastUidBatteryUsageStartTs":J
    iput-wide v6, v8, Lcom/android/server/am/AppBatteryTracker;->mLastUidBatteryUsageStartTs:J

    .line 566
    monitor-exit v2
    :try_end_c9
    .catchall {:try_start_c3 .. :try_end_c9} :catchall_1e6

    .line 567
    cmp-long v0, v6, v13

    if-lez v0, :cond_f5

    cmp-long v0, v13, v16

    if-lez v0, :cond_f5

    .line 570
    new-instance v0, Landroid/os/BatteryUsageStatsQuery$Builder;

    invoke-direct {v0}, Landroid/os/BatteryUsageStatsQuery$Builder;-><init>()V

    .line 571
    invoke-virtual {v0}, Landroid/os/BatteryUsageStatsQuery$Builder;->includeProcessStateData()Landroid/os/BatteryUsageStatsQuery$Builder;

    move-result-object v0

    .line 572
    invoke-virtual {v0, v13, v14, v6, v7}, Landroid/os/BatteryUsageStatsQuery$Builder;->aggregateSnapshots(JJ)Landroid/os/BatteryUsageStatsQuery$Builder;

    move-result-object v15

    .line 573
    const-wide/16 v2, 0x0

    move-object/from16 v1, p0

    move-wide/from16 v16, v4

    .end local v4    # "curDuration":J
    .local v16, "curDuration":J
    move-object v4, v11

    move-object v5, v15

    move-wide/from16 v27, v6

    .end local v6    # "curStart":J
    .local v27, "curStart":J
    move-object/from16 v6, v24

    move-object v7, v12

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/AppBatteryTracker;->updateBatteryUsageStatsOnceInternal(JLandroid/util/SparseArray;Landroid/os/BatteryUsageStatsQuery$Builder;Landroid/util/ArraySet;Landroid/os/BatteryStatsInternal;)Landroid/os/BatteryUsageStats;

    .line 574
    sub-long v6, v27, v13

    add-long v4, v16, v6

    move-wide v6, v4

    move-object v1, v15

    .end local v16    # "curDuration":J
    .restart local v4    # "curDuration":J
    goto :goto_fc

    .line 567
    .end local v27    # "curStart":J
    .restart local v6    # "curStart":J
    :cond_f5
    move-wide/from16 v16, v4

    move-wide/from16 v27, v6

    .line 576
    .end local v4    # "curDuration":J
    .end local v6    # "curStart":J
    .restart local v16    # "curDuration":J
    .restart local v27    # "curStart":J
    move-object v1, v15

    move-wide/from16 v6, v16

    .end local v15    # "builder":Landroid/os/BatteryUsageStatsQuery$Builder;
    .end local v16    # "curDuration":J
    .local v1, "builder":Landroid/os/BatteryUsageStatsQuery$Builder;
    .local v6, "curDuration":J
    :goto_fc
    if-eqz v9, :cond_125

    cmp-long v0, v6, v25

    if-ltz v0, :cond_125

    .line 578
    iget-object v2, v8, Lcom/android/server/am/AppBatteryTracker;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 579
    :try_start_105
    iget-object v0, v8, Lcom/android/server/am/AppBatteryTracker;->mUidBatteryUsageInWindow:Landroid/util/SparseArray;
    :try_end_107
    .catchall {:try_start_105 .. :try_end_107} :catchall_11b

    move v3, v9

    move-wide/from16 v4, v25

    .end local v9    # "needUpdateUidBatteryUsageInWindow":Z
    .end local v25    # "windowSize":J
    .local v3, "needUpdateUidBatteryUsageInWindow":Z
    .local v4, "windowSize":J
    long-to-double v9, v4

    mul-double v9, v9, v21

    move-object/from16 v21, v12

    move-wide/from16 v25, v13

    .end local v12    # "batteryStatsInternal":Landroid/os/BatteryStatsInternal;
    .end local v13    # "lastUidBatteryUsageStartTs":J
    .local v21, "batteryStatsInternal":Landroid/os/BatteryStatsInternal;
    .local v25, "lastUidBatteryUsageStartTs":J
    long-to-double v12, v6

    div-double/2addr v9, v12

    :try_start_113
    invoke-static {v11, v0, v9, v10}, Lcom/android/server/am/AppBatteryTracker;->copyUidBatteryUsage(Landroid/util/SparseArray;Landroid/util/SparseArray;D)V

    .line 580
    monitor-exit v2

    .line 581
    const/4 v9, 0x0

    .end local v3    # "needUpdateUidBatteryUsageInWindow":Z
    .restart local v9    # "needUpdateUidBatteryUsageInWindow":Z
    goto :goto_12d

    .line 580
    .end local v9    # "needUpdateUidBatteryUsageInWindow":Z
    .restart local v3    # "needUpdateUidBatteryUsageInWindow":Z
    :catchall_119
    move-exception v0

    goto :goto_123

    .end local v3    # "needUpdateUidBatteryUsageInWindow":Z
    .end local v4    # "windowSize":J
    .end local v21    # "batteryStatsInternal":Landroid/os/BatteryStatsInternal;
    .restart local v9    # "needUpdateUidBatteryUsageInWindow":Z
    .restart local v12    # "batteryStatsInternal":Landroid/os/BatteryStatsInternal;
    .restart local v13    # "lastUidBatteryUsageStartTs":J
    .local v25, "windowSize":J
    :catchall_11b
    move-exception v0

    move v3, v9

    move-object/from16 v21, v12

    move-wide/from16 v4, v25

    move-wide/from16 v25, v13

    .end local v9    # "needUpdateUidBatteryUsageInWindow":Z
    .end local v12    # "batteryStatsInternal":Landroid/os/BatteryStatsInternal;
    .end local v13    # "lastUidBatteryUsageStartTs":J
    .restart local v3    # "needUpdateUidBatteryUsageInWindow":Z
    .restart local v4    # "windowSize":J
    .restart local v21    # "batteryStatsInternal":Landroid/os/BatteryStatsInternal;
    .local v25, "lastUidBatteryUsageStartTs":J
    :goto_123
    monitor-exit v2
    :try_end_124
    .catchall {:try_start_113 .. :try_end_124} :catchall_119

    throw v0

    .line 576
    .end local v3    # "needUpdateUidBatteryUsageInWindow":Z
    .end local v4    # "windowSize":J
    .end local v21    # "batteryStatsInternal":Landroid/os/BatteryStatsInternal;
    .restart local v9    # "needUpdateUidBatteryUsageInWindow":Z
    .restart local v12    # "batteryStatsInternal":Landroid/os/BatteryStatsInternal;
    .restart local v13    # "lastUidBatteryUsageStartTs":J
    .local v25, "windowSize":J
    :cond_125
    move v3, v9

    move-object/from16 v21, v12

    move-wide/from16 v4, v25

    move-wide/from16 v25, v13

    .line 585
    .end local v9    # "needUpdateUidBatteryUsageInWindow":Z
    .end local v12    # "batteryStatsInternal":Landroid/os/BatteryStatsInternal;
    .end local v13    # "lastUidBatteryUsageStartTs":J
    .restart local v3    # "needUpdateUidBatteryUsageInWindow":Z
    .restart local v4    # "windowSize":J
    .restart local v21    # "batteryStatsInternal":Landroid/os/BatteryStatsInternal;
    .local v25, "lastUidBatteryUsageStartTs":J
    move v9, v3

    .end local v3    # "needUpdateUidBatteryUsageInWindow":Z
    .restart local v9    # "needUpdateUidBatteryUsageInWindow":Z
    :goto_12d
    iget-object v10, v8, Lcom/android/server/am/AppBatteryTracker;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 586
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :try_start_131
    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v2
    :try_end_135
    .catchall {:try_start_131 .. :try_end_135} :catchall_1db

    .local v2, "size":I
    :goto_135
    if-ge v0, v2, :cond_189

    .line 587
    :try_start_137
    invoke-virtual {v11, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 588
    .local v3, "uid":I
    iget-object v12, v8, Lcom/android/server/am/AppBatteryTracker;->mUidBatteryUsage:Landroid/util/SparseArray;

    invoke-virtual {v12, v3}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v12

    .line 589
    .local v12, "index":I
    iget-object v13, v8, Lcom/android/server/am/AppBatteryTracker;->mLastUidBatteryUsage:Landroid/util/SparseArray;

    sget-object v14, Lcom/android/server/am/AppBatteryTracker;->BATTERY_USAGE_NONE:Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    invoke-virtual {v13, v3, v14}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    .line 590
    .local v13, "lastUsage":Lcom/android/server/am/AppBatteryTracker$BatteryUsage;
    invoke-virtual {v11, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;
    :try_end_151
    .catchall {:try_start_137 .. :try_end_151} :catchall_181

    .line 593
    .local v15, "curUsage":Lcom/android/server/am/AppBatteryTracker$BatteryUsage;
    if-ltz v12, :cond_16f

    .line 594
    move-object/from16 v22, v1

    .end local v1    # "builder":Landroid/os/BatteryUsageStatsQuery$Builder;
    .local v22, "builder":Landroid/os/BatteryUsageStatsQuery$Builder;
    :try_start_155
    iget-object v1, v8, Lcom/android/server/am/AppBatteryTracker;->mUidBatteryUsage:Landroid/util/SparseArray;

    invoke-virtual {v1, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    .line 595
    .local v1, "totalUsage":Lcom/android/server/am/AppBatteryTracker$BatteryUsage;
    nop

    .line 597
    .local v14, "before":Lcom/android/server/am/AppBatteryTracker$BatteryUsage;
    move/from16 v16, v2

    .end local v2    # "size":I
    .local v16, "size":I
    invoke-virtual {v1, v13}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->subtract(Lcom/android/server/am/AppBatteryTracker$BatteryUsage;)Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    move-result-object v2

    invoke-virtual {v2, v15}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->add(Lcom/android/server/am/AppBatteryTracker$BatteryUsage;)Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    goto :goto_17a

    .line 621
    .end local v0    # "i":I
    .end local v1    # "totalUsage":Lcom/android/server/am/AppBatteryTracker$BatteryUsage;
    .end local v3    # "uid":I
    .end local v12    # "index":I
    .end local v13    # "lastUsage":Lcom/android/server/am/AppBatteryTracker$BatteryUsage;
    .end local v14    # "before":Lcom/android/server/am/AppBatteryTracker$BatteryUsage;
    .end local v15    # "curUsage":Lcom/android/server/am/AppBatteryTracker$BatteryUsage;
    .end local v16    # "size":I
    :catchall_168
    move-exception v0

    move-wide/from16 v29, v4

    move-wide/from16 v31, v6

    goto/16 :goto_1e2

    .line 599
    .end local v22    # "builder":Landroid/os/BatteryUsageStatsQuery$Builder;
    .restart local v0    # "i":I
    .local v1, "builder":Landroid/os/BatteryUsageStatsQuery$Builder;
    .restart local v2    # "size":I
    .restart local v3    # "uid":I
    .restart local v12    # "index":I
    .restart local v13    # "lastUsage":Lcom/android/server/am/AppBatteryTracker$BatteryUsage;
    .restart local v15    # "curUsage":Lcom/android/server/am/AppBatteryTracker$BatteryUsage;
    :cond_16f
    move-object/from16 v22, v1

    move/from16 v16, v2

    .end local v1    # "builder":Landroid/os/BatteryUsageStatsQuery$Builder;
    .end local v2    # "size":I
    .restart local v16    # "size":I
    .restart local v22    # "builder":Landroid/os/BatteryUsageStatsQuery$Builder;
    move-object v1, v14

    .local v1, "totalUsage":Lcom/android/server/am/AppBatteryTracker$BatteryUsage;
    move-object v2, v14

    .line 600
    .local v2, "before":Lcom/android/server/am/AppBatteryTracker$BatteryUsage;
    iget-object v14, v8, Lcom/android/server/am/AppBatteryTracker;->mUidBatteryUsage:Landroid/util/SparseArray;

    invoke-virtual {v14, v3, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_17a
    .catchall {:try_start_155 .. :try_end_17a} :catchall_168

    .line 586
    .end local v1    # "totalUsage":Lcom/android/server/am/AppBatteryTracker$BatteryUsage;
    .end local v2    # "before":Lcom/android/server/am/AppBatteryTracker$BatteryUsage;
    .end local v3    # "uid":I
    .end local v12    # "index":I
    .end local v13    # "lastUsage":Lcom/android/server/am/AppBatteryTracker$BatteryUsage;
    .end local v15    # "curUsage":Lcom/android/server/am/AppBatteryTracker$BatteryUsage;
    :goto_17a
    add-int/lit8 v0, v0, 0x1

    move/from16 v2, v16

    move-object/from16 v1, v22

    goto :goto_135

    .line 621
    .end local v0    # "i":I
    .end local v16    # "size":I
    .end local v22    # "builder":Landroid/os/BatteryUsageStatsQuery$Builder;
    .local v1, "builder":Landroid/os/BatteryUsageStatsQuery$Builder;
    :catchall_181
    move-exception v0

    move-object/from16 v22, v1

    move-wide/from16 v29, v4

    move-wide/from16 v31, v6

    .end local v1    # "builder":Landroid/os/BatteryUsageStatsQuery$Builder;
    .restart local v22    # "builder":Landroid/os/BatteryUsageStatsQuery$Builder;
    goto :goto_1e2

    .line 586
    .end local v22    # "builder":Landroid/os/BatteryUsageStatsQuery$Builder;
    .restart local v0    # "i":I
    .restart local v1    # "builder":Landroid/os/BatteryUsageStatsQuery$Builder;
    .local v2, "size":I
    :cond_189
    move-object/from16 v22, v1

    move/from16 v16, v2

    .line 620
    .end local v0    # "i":I
    .end local v1    # "builder":Landroid/os/BatteryUsageStatsQuery$Builder;
    .end local v2    # "size":I
    .restart local v22    # "builder":Landroid/os/BatteryUsageStatsQuery$Builder;
    :try_start_18d
    iget-object v0, v8, Lcom/android/server/am/AppBatteryTracker;->mTmpUidBatteryUsage2:Landroid/util/SparseArray;

    iget-object v1, v8, Lcom/android/server/am/AppBatteryTracker;->mLastUidBatteryUsage:Landroid/util/SparseArray;

    invoke-static {v0, v1}, Lcom/android/server/am/AppBatteryTracker;->copyUidBatteryUsage(Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    .line 621
    monitor-exit v10
    :try_end_195
    .catchall {:try_start_18d .. :try_end_195} :catchall_1d5

    .line 622
    iget-object v0, v8, Lcom/android/server/am/AppBatteryTracker;->mTmpUidBatteryUsage2:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 624
    if-eqz v9, :cond_1ce

    .line 626
    sub-long v12, p1, v4

    .line 627
    .local v12, "start":J
    const-wide/16 v0, 0x1

    sub-long v14, v25, v0

    .line 628
    .local v14, "end":J
    new-instance v0, Landroid/os/BatteryUsageStatsQuery$Builder;

    invoke-direct {v0}, Landroid/os/BatteryUsageStatsQuery$Builder;-><init>()V

    .line 629
    invoke-virtual {v0}, Landroid/os/BatteryUsageStatsQuery$Builder;->includeProcessStateData()Landroid/os/BatteryUsageStatsQuery$Builder;

    move-result-object v0

    .line 630
    invoke-virtual {v0, v12, v13, v14, v15}, Landroid/os/BatteryUsageStatsQuery$Builder;->aggregateSnapshots(JJ)Landroid/os/BatteryUsageStatsQuery$Builder;

    move-result-object v10

    .line 631
    .end local v22    # "builder":Landroid/os/BatteryUsageStatsQuery$Builder;
    .local v10, "builder":Landroid/os/BatteryUsageStatsQuery$Builder;
    sub-long v2, v14, v12

    move-object/from16 v1, p0

    move-wide/from16 v29, v4

    .end local v4    # "windowSize":J
    .local v29, "windowSize":J
    move-object v4, v11

    move-object v5, v10

    move-wide/from16 v31, v6

    .end local v6    # "curDuration":J
    .local v31, "curDuration":J
    move-object/from16 v6, v24

    move-object/from16 v7, v21

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/AppBatteryTracker;->updateBatteryUsageStatsOnceInternal(JLandroid/util/SparseArray;Landroid/os/BatteryUsageStatsQuery$Builder;Landroid/util/ArraySet;Landroid/os/BatteryStatsInternal;)Landroid/os/BatteryUsageStats;

    .line 633
    iget-object v1, v8, Lcom/android/server/am/AppBatteryTracker;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 634
    :try_start_1c3
    iget-object v0, v8, Lcom/android/server/am/AppBatteryTracker;->mUidBatteryUsageInWindow:Landroid/util/SparseArray;

    invoke-static {v11, v0}, Lcom/android/server/am/AppBatteryTracker;->copyUidBatteryUsage(Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    .line 635
    monitor-exit v1

    move-object v1, v10

    goto :goto_1d4

    :catchall_1cb
    move-exception v0

    monitor-exit v1
    :try_end_1cd
    .catchall {:try_start_1c3 .. :try_end_1cd} :catchall_1cb

    throw v0

    .line 624
    .end local v10    # "builder":Landroid/os/BatteryUsageStatsQuery$Builder;
    .end local v12    # "start":J
    .end local v14    # "end":J
    .end local v29    # "windowSize":J
    .end local v31    # "curDuration":J
    .restart local v4    # "windowSize":J
    .restart local v6    # "curDuration":J
    .restart local v22    # "builder":Landroid/os/BatteryUsageStatsQuery$Builder;
    :cond_1ce
    move-wide/from16 v29, v4

    move-wide/from16 v31, v6

    .end local v4    # "windowSize":J
    .end local v6    # "curDuration":J
    .restart local v29    # "windowSize":J
    .restart local v31    # "curDuration":J
    move-object/from16 v1, v22

    .line 650
    .end local v22    # "builder":Landroid/os/BatteryUsageStatsQuery$Builder;
    .restart local v1    # "builder":Landroid/os/BatteryUsageStatsQuery$Builder;
    :goto_1d4
    return-void

    .line 621
    .end local v1    # "builder":Landroid/os/BatteryUsageStatsQuery$Builder;
    .end local v29    # "windowSize":J
    .end local v31    # "curDuration":J
    .restart local v4    # "windowSize":J
    .restart local v6    # "curDuration":J
    .restart local v22    # "builder":Landroid/os/BatteryUsageStatsQuery$Builder;
    :catchall_1d5
    move-exception v0

    move-wide/from16 v29, v4

    move-wide/from16 v31, v6

    .end local v4    # "windowSize":J
    .end local v6    # "curDuration":J
    .restart local v29    # "windowSize":J
    .restart local v31    # "curDuration":J
    goto :goto_1e2

    .end local v22    # "builder":Landroid/os/BatteryUsageStatsQuery$Builder;
    .end local v29    # "windowSize":J
    .end local v31    # "curDuration":J
    .restart local v1    # "builder":Landroid/os/BatteryUsageStatsQuery$Builder;
    .restart local v4    # "windowSize":J
    .restart local v6    # "curDuration":J
    :catchall_1db
    move-exception v0

    move-object/from16 v22, v1

    move-wide/from16 v29, v4

    move-wide/from16 v31, v6

    .end local v1    # "builder":Landroid/os/BatteryUsageStatsQuery$Builder;
    .end local v4    # "windowSize":J
    .end local v6    # "curDuration":J
    .restart local v22    # "builder":Landroid/os/BatteryUsageStatsQuery$Builder;
    .restart local v29    # "windowSize":J
    .restart local v31    # "curDuration":J
    :goto_1e2
    :try_start_1e2
    monitor-exit v10
    :try_end_1e3
    .catchall {:try_start_1e2 .. :try_end_1e3} :catchall_1e4

    throw v0

    :catchall_1e4
    move-exception v0

    goto :goto_1e2

    .line 566
    .end local v21    # "batteryStatsInternal":Landroid/os/BatteryStatsInternal;
    .end local v22    # "builder":Landroid/os/BatteryUsageStatsQuery$Builder;
    .end local v27    # "curStart":J
    .end local v29    # "windowSize":J
    .end local v31    # "curDuration":J
    .local v4, "curDuration":J
    .local v6, "curStart":J
    .local v12, "batteryStatsInternal":Landroid/os/BatteryStatsInternal;
    .local v15, "builder":Landroid/os/BatteryUsageStatsQuery$Builder;
    .local v25, "windowSize":J
    :catchall_1e6
    move-exception v0

    move-wide/from16 v16, v4

    move-wide/from16 v27, v6

    move v3, v9

    move-object/from16 v21, v12

    move-wide/from16 v29, v25

    .end local v4    # "curDuration":J
    .end local v6    # "curStart":J
    .end local v9    # "needUpdateUidBatteryUsageInWindow":Z
    .end local v12    # "batteryStatsInternal":Landroid/os/BatteryStatsInternal;
    .end local v25    # "windowSize":J
    .local v3, "needUpdateUidBatteryUsageInWindow":Z
    .local v16, "curDuration":J
    .restart local v21    # "batteryStatsInternal":Landroid/os/BatteryStatsInternal;
    .restart local v27    # "curStart":J
    .restart local v29    # "windowSize":J
    :goto_1f0
    :try_start_1f0
    monitor-exit v2
    :try_end_1f1
    .catchall {:try_start_1f0 .. :try_end_1f1} :catchall_1f2

    throw v0

    :catchall_1f2
    move-exception v0

    goto :goto_1f0

    .line 533
    .end local v3    # "needUpdateUidBatteryUsageInWindow":Z
    .end local v15    # "builder":Landroid/os/BatteryUsageStatsQuery$Builder;
    .end local v16    # "curDuration":J
    .end local v18    # "stats":Landroid/os/BatteryUsageStats;
    .end local v19    # "curEnd":J
    .end local v21    # "batteryStatsInternal":Landroid/os/BatteryStatsInternal;
    .end local v23    # "bgPolicy":Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;
    .end local v24    # "userIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/os/UserHandle;>;"
    .end local v27    # "curStart":J
    .end local v29    # "windowSize":J
    .local v9, "bgPolicy":Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;
    .local v10, "userIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/os/UserHandle;>;"
    .restart local v12    # "batteryStatsInternal":Landroid/os/BatteryStatsInternal;
    .local v13, "windowSize":J
    :catchall_1f4
    move-exception v0

    move-object/from16 v23, v9

    move-object/from16 v24, v10

    move-object/from16 v21, v12

    move-wide/from16 v29, v13

    .end local v9    # "bgPolicy":Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;
    .end local v10    # "userIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/os/UserHandle;>;"
    .end local v12    # "batteryStatsInternal":Landroid/os/BatteryStatsInternal;
    .end local v13    # "windowSize":J
    .restart local v21    # "batteryStatsInternal":Landroid/os/BatteryStatsInternal;
    .restart local v23    # "bgPolicy":Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;
    .restart local v24    # "userIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/os/UserHandle;>;"
    .restart local v29    # "windowSize":J
    :goto_1fd
    :try_start_1fd
    monitor-exit v1
    :try_end_1fe
    .catchall {:try_start_1fd .. :try_end_1fe} :catchall_1ff

    throw v0

    :catchall_1ff
    move-exception v0

    goto :goto_1fd
.end method

.method private updateBatteryUsageStatsOnceInternal(JLandroid/util/SparseArray;Landroid/os/BatteryUsageStatsQuery$Builder;Landroid/util/ArraySet;Landroid/os/BatteryStatsInternal;)Landroid/os/BatteryUsageStats;
    .registers 28
    .param p1, "expectedDuration"    # J
    .param p4, "builder"    # Landroid/os/BatteryUsageStatsQuery$Builder;
    .param p6, "batteryStatsInternal"    # Landroid/os/BatteryStatsInternal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/am/AppBatteryTracker$BatteryUsage;",
            ">;",
            "Landroid/os/BatteryUsageStatsQuery$Builder;",
            "Landroid/util/ArraySet<",
            "Landroid/os/UserHandle;",
            ">;",
            "Landroid/os/BatteryStatsInternal;",
            ")",
            "Landroid/os/BatteryUsageStats;"
        }
    .end annotation

    .line 655
    .local p3, "buf":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/AppBatteryTracker$BatteryUsage;>;"
    .local p5, "userIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/os/UserHandle;>;"
    move-wide/from16 v0, p1

    move-object/from16 v2, p3

    const/4 v3, 0x0

    .local v3, "i":I
    invoke-virtual/range {p5 .. p5}, Landroid/util/ArraySet;->size()I

    move-result v4

    .local v4, "size":I
    :goto_9
    if-ge v3, v4, :cond_1b

    .line 656
    move-object/from16 v5, p5

    invoke-virtual {v5, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/UserHandle;

    move-object/from16 v7, p4

    invoke-virtual {v7, v6}, Landroid/os/BatteryUsageStatsQuery$Builder;->addUser(Landroid/os/UserHandle;)Landroid/os/BatteryUsageStatsQuery$Builder;

    .line 655
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_1b
    move-object/from16 v7, p4

    move-object/from16 v5, p5

    .line 658
    .end local v3    # "i":I
    .end local v4    # "size":I
    const/4 v3, 0x1

    new-array v3, v3, [Landroid/os/BatteryUsageStatsQuery;

    .line 659
    invoke-virtual/range {p4 .. p4}, Landroid/os/BatteryUsageStatsQuery$Builder;->build()Landroid/os/BatteryUsageStatsQuery;

    move-result-object v4

    const/4 v6, 0x0

    aput-object v4, v3, v6

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    move-object/from16 v4, p6

    invoke-virtual {v4, v3}, Landroid/os/BatteryStatsInternal;->getBatteryUsageStats(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 660
    .local v3, "statsList":Ljava/util/List;, "Ljava/util/List<Landroid/os/BatteryUsageStats;>;"
    invoke-static {v3}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v8

    if-eqz v8, :cond_3b

    .line 662
    const/4 v6, 0x0

    return-object v6

    .line 664
    :cond_3b
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/BatteryUsageStats;

    .line 665
    .local v8, "stats":Landroid/os/BatteryUsageStats;
    invoke-virtual {v8}, Landroid/os/BatteryUsageStats;->getUidBatteryConsumers()Ljava/util/List;

    move-result-object v9

    .line 666
    .local v9, "uidConsumers":Ljava/util/List;, "Ljava/util/List<Landroid/os/UidBatteryConsumer;>;"
    if-eqz v9, :cond_c9

    .line 667
    invoke-virtual {v8}, Landroid/os/BatteryUsageStats;->getStatsStartTimestamp()J

    move-result-wide v10

    .line 668
    .local v10, "start":J
    invoke-virtual {v8}, Landroid/os/BatteryUsageStats;->getStatsEndTimestamp()J

    move-result-wide v12

    .line 669
    .local v12, "end":J
    const-wide/16 v14, 0x0

    cmp-long v14, v0, v14

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    if-lez v14, :cond_65

    .line 670
    move-object v14, v3

    .end local v3    # "statsList":Ljava/util/List;, "Ljava/util/List<Landroid/os/BatteryUsageStats;>;"
    .local v14, "statsList":Ljava/util/List;, "Ljava/util/List<Landroid/os/BatteryUsageStats;>;"
    long-to-double v3, v0

    mul-double/2addr v3, v6

    sub-long v6, v12, v10

    long-to-double v6, v6

    div-double/2addr v3, v6

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    invoke-static {v3, v4, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v6

    goto :goto_66

    .end local v14    # "statsList":Ljava/util/List;, "Ljava/util/List<Landroid/os/BatteryUsageStats;>;"
    .restart local v3    # "statsList":Ljava/util/List;, "Ljava/util/List<Landroid/os/BatteryUsageStats;>;"
    :cond_65
    move-object v14, v3

    .end local v3    # "statsList":Ljava/util/List;, "Ljava/util/List<Landroid/os/BatteryUsageStats;>;"
    .restart local v14    # "statsList":Ljava/util/List;, "Ljava/util/List<Landroid/os/BatteryUsageStats;>;"
    :goto_66
    move-wide v3, v6

    .line 671
    .local v3, "scale":D
    move-object/from16 v6, p0

    iget-object v7, v6, Lcom/android/server/am/AppBatteryTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-virtual {v7}, Lcom/android/server/am/BaseAppStateTracker$Injector;->getPolicy()Lcom/android/server/am/BaseAppStatePolicy;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;

    .line 672
    .local v7, "bgPolicy":Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_75
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_c6

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v15, v17

    check-cast v15, Landroid/os/UidBatteryConsumer;

    .line 675
    .local v15, "uidConsumer":Landroid/os/UidBatteryConsumer;
    invoke-virtual {v15}, Landroid/os/UidBatteryConsumer;->getUid()I

    move-result v17

    .line 676
    .local v17, "rawUid":I
    invoke-static/range {v17 .. v17}, Landroid/os/UserHandle;->isIsolated(I)Z

    move-result v18

    if-eqz v18, :cond_8e

    .line 678
    goto :goto_75

    .line 680
    :cond_8e
    move/from16 v18, v17

    .line 684
    .local v18, "uid":I
    invoke-static/range {v18 .. v18}, Landroid/os/UserHandle;->getAppIdFromSharedAppGid(I)I

    move-result v0

    .line 685
    .local v0, "sharedAppId":I
    if-lez v0, :cond_9e

    .line 686
    const/4 v1, 0x0

    invoke-static {v1, v0}, Landroid/os/UserHandle;->getUid(II)I

    move-result v18

    move/from16 v1, v18

    goto :goto_a1

    .line 685
    :cond_9e
    const/4 v1, 0x0

    move/from16 v1, v18

    .line 688
    .end local v18    # "uid":I
    .local v1, "uid":I
    :goto_a1
    move/from16 v18, v0

    .end local v0    # "sharedAppId":I
    .local v18, "sharedAppId":I
    new-instance v0, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    invoke-direct {v0, v15, v7}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;-><init>(Landroid/os/UidBatteryConsumer;Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;)V

    .line 689
    invoke-virtual {v0, v3, v4}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->scale(D)Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    move-result-object v0

    .line 690
    .local v0, "bgUsage":Lcom/android/server/am/AppBatteryTracker$BatteryUsage;
    move-wide/from16 v19, v3

    .end local v3    # "scale":D
    .local v19, "scale":D
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v3

    .line 691
    .local v3, "index":I
    if-gez v3, :cond_b8

    .line 692
    invoke-virtual {v2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_c1

    .line 694
    :cond_b8
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    .line 695
    .local v4, "before":Lcom/android/server/am/AppBatteryTracker$BatteryUsage;
    invoke-virtual {v4, v0}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->add(Lcom/android/server/am/AppBatteryTracker$BatteryUsage;)Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    .line 707
    .end local v0    # "bgUsage":Lcom/android/server/am/AppBatteryTracker$BatteryUsage;
    .end local v1    # "uid":I
    .end local v3    # "index":I
    .end local v4    # "before":Lcom/android/server/am/AppBatteryTracker$BatteryUsage;
    .end local v15    # "uidConsumer":Landroid/os/UidBatteryConsumer;
    .end local v17    # "rawUid":I
    .end local v18    # "sharedAppId":I
    :goto_c1
    move-wide/from16 v0, p1

    move-wide/from16 v3, v19

    goto :goto_75

    .line 672
    .end local v19    # "scale":D
    .local v3, "scale":D
    :cond_c6
    move-wide/from16 v19, v3

    .end local v3    # "scale":D
    .restart local v19    # "scale":D
    goto :goto_cc

    .line 666
    .end local v7    # "bgPolicy":Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;
    .end local v10    # "start":J
    .end local v12    # "end":J
    .end local v14    # "statsList":Ljava/util/List;, "Ljava/util/List<Landroid/os/BatteryUsageStats;>;"
    .end local v19    # "scale":D
    .local v3, "statsList":Ljava/util/List;, "Ljava/util/List<Landroid/os/BatteryUsageStats;>;"
    :cond_c9
    move-object/from16 v6, p0

    move-object v14, v3

    .line 709
    .end local v3    # "statsList":Ljava/util/List;, "Ljava/util/List<Landroid/os/BatteryUsageStats;>;"
    .restart local v14    # "statsList":Ljava/util/List;, "Ljava/util/List<Landroid/os/BatteryUsageStats;>;"
    :goto_cc
    return-object v8
.end method


# virtual methods
.method clearDebugUidPercentage()V
    .registers 2

    .line 762
    iget-object v0, p0, Lcom/android/server/am/AppBatteryTracker;->mDebugUidPercentages:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 763
    invoke-direct {p0}, Lcom/android/server/am/AppBatteryTracker;->scheduleBgBatteryUsageStatsCheck()V

    .line 764
    return-void
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 26
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 780
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 781
    const-string v0, "APP BATTERY STATE TRACKER:"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 783
    iget-object v0, v1, Lcom/android/server/am/AppBatteryTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/BaseAppStateTracker$Injector;->currentTimeMillis()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-direct {v1, v4, v5, v6}, Lcom/android/server/am/AppBatteryTracker;->updateBatteryUsageStatsIfNecessary(JZ)Z

    .line 785
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/AppBatteryTracker;->scheduleBgBatteryUsageStatsCheck()V

    .line 787
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v6}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    move-object v4, v0

    .line 788
    .local v4, "latch":Ljava/util/concurrent/CountDownLatch;
    iget-object v0, v1, Lcom/android/server/am/AppBatteryTracker;->mBgHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v0

    new-instance v5, Lcom/android/server/am/AppBatteryTracker$$ExternalSyntheticLambda0;

    invoke-direct {v5, v4}, Lcom/android/server/am/AppBatteryTracker$$ExternalSyntheticLambda0;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v0, v5}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 793
    :try_start_33
    invoke-virtual {v4}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_36
    .catch Ljava/lang/InterruptedException; {:try_start_33 .. :try_end_36} :catch_37

    .line 795
    goto :goto_38

    .line 794
    :catch_37
    move-exception v0

    .line 796
    :goto_38
    iget-object v5, v1, Lcom/android/server/am/AppBatteryTracker;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 797
    :try_start_3b
    iget-object v0, v1, Lcom/android/server/am/AppBatteryTracker;->mUidBatteryUsageInWindow:Landroid/util/SparseArray;

    .line 798
    .local v0, "uidConsumers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;>;"
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 799
    const-string v7, "  Last battery usage start="

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 800
    iget-wide v7, v1, Lcom/android/server/am/AppBatteryTracker;->mLastUidBatteryUsageStartTs:J

    invoke-static {v2, v7, v8}, Landroid/util/TimeUtils;->dumpTime(Ljava/io/PrintWriter;J)V

    .line 801
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 802
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 803
    const-string v7, "Battery usage over last "

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 804
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "    "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 805
    .local v7, "newPrefix":Ljava/lang/String;
    iget-object v8, v1, Lcom/android/server/am/AppBatteryTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-virtual {v8}, Lcom/android/server/am/BaseAppStateTracker$Injector;->getPolicy()Lcom/android/server/am/BaseAppStatePolicy;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;

    .line 806
    .local v8, "bgPolicy":Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    .line 807
    .local v9, "now":J
    const-wide/16 v11, 0x0

    iget-wide v13, v8, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainWindowMs:J

    sub-long v13, v9, v13

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v11

    move-wide/from16 v18, v11

    .line 808
    .local v18, "since":J
    sub-long v11, v9, v18

    invoke-static {v11, v12}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 809
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v11

    if-nez v11, :cond_bf

    .line 810
    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 811
    const-string v6, "(none)"

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_16c

    .line 813
    :cond_bf
    const/4 v11, 0x0

    .local v11, "i":I
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v12

    move v15, v12

    move v13, v11

    .end local v11    # "i":I
    .local v13, "i":I
    .local v15, "size":I
    :goto_c6
    if-ge v13, v15, :cond_166

    .line 814
    invoke-virtual {v0, v13}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v11

    move v14, v11

    .line 815
    .local v14, "uid":I
    invoke-virtual {v0, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    .line 816
    invoke-virtual {v11, v14, v8}, Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;->calcPercentage(ILcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;)Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    move-result-object v11

    move-object v12, v11

    .line 817
    .local v12, "bgUsage":Lcom/android/server/am/AppBatteryTracker$BatteryUsage;
    iget-object v11, v1, Lcom/android/server/am/AppBatteryTracker;->mAppRestrictionController:Lcom/android/server/am/AppRestrictionController;

    iget v6, v8, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->mBgCurrentDrainExemptedTypes:I

    .line 818
    move-object/from16 v20, v0

    move-object v0, v12

    .end local v12    # "bgUsage":Lcom/android/server/am/AppBatteryTracker$BatteryUsage;
    .local v0, "bgUsage":Lcom/android/server/am/AppBatteryTracker$BatteryUsage;
    .local v20, "uidConsumers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;>;"
    move v12, v14

    move/from16 v21, v13

    move v3, v14

    .end local v13    # "i":I
    .end local v14    # "uid":I
    .local v3, "uid":I
    .local v21, "i":I
    move-wide/from16 v13, v18

    move/from16 v22, v15

    .end local v15    # "size":I
    .local v22, "size":I
    move-wide v15, v9

    move/from16 v17, v6

    invoke-virtual/range {v11 .. v17}, Lcom/android/server/am/AppRestrictionController;->getUidBatteryExemptedUsageSince(IJJI)Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    move-result-object v6

    .line 820
    invoke-virtual {v6, v3, v8}, Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;->calcPercentage(ILcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;)Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    move-result-object v6

    .line 821
    .local v6, "exemptedUsage":Lcom/android/server/am/AppBatteryTracker$BatteryUsage;
    new-instance v11, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    invoke-direct {v11, v0}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;-><init>(Lcom/android/server/am/AppBatteryTracker$BatteryUsage;)V

    .line 822
    invoke-virtual {v11, v6}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->subtract(Lcom/android/server/am/AppBatteryTracker$BatteryUsage;)Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    move-result-object v11

    .line 823
    invoke-virtual {v11, v3, v8}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->calcPercentage(ILcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;)Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    move-result-object v11

    .line 824
    .local v11, "reportedUsage":Lcom/android/server/am/AppBatteryTracker$BatteryUsage;
    const-string v12, "%s%s: [%s] %s (%s) | %s (%s) | %s (%s) | %s\n"

    const/16 v13, 0xa

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v7, v13, v14

    .line 825
    invoke-static {v3}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    aput-object v14, v13, v15

    const/4 v14, 0x2

    .line 826
    invoke-virtual {v8, v3}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->shouldExemptUid(I)I

    move-result v16

    invoke-static/range {v16 .. v16}, Landroid/os/PowerExemptionManager;->reasonCodeToString(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v13, v14

    const/4 v14, 0x3

    .line 827
    invoke-virtual {v0}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->toString()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v13, v14

    const/4 v14, 0x4

    .line 828
    invoke-virtual {v0}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->percentageToString()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v13, v14

    const/4 v14, 0x5

    .line 829
    invoke-virtual {v6}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->toString()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v13, v14

    const/4 v14, 0x6

    .line 830
    invoke-virtual {v6}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->percentageToString()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v13, v14

    const/4 v14, 0x7

    .line 831
    invoke-virtual {v11}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->toString()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v13, v14

    const/16 v14, 0x8

    .line 832
    invoke-virtual {v11}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->percentageToString()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v13, v14

    iget-object v15, v1, Lcom/android/server/am/AppBatteryTracker;->mUidBatteryUsage:Landroid/util/SparseArray;

    sget-object v14, Lcom/android/server/am/AppBatteryTracker;->BATTERY_USAGE_NONE:Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    .line 833
    invoke-virtual {v15, v3, v14}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    invoke-virtual {v14}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->toString()Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0x9

    aput-object v14, v13, v15

    .line 824
    invoke-virtual {v2, v12, v13}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 813
    nop

    .end local v0    # "bgUsage":Lcom/android/server/am/AppBatteryTracker$BatteryUsage;
    .end local v3    # "uid":I
    .end local v6    # "exemptedUsage":Lcom/android/server/am/AppBatteryTracker$BatteryUsage;
    .end local v11    # "reportedUsage":Lcom/android/server/am/AppBatteryTracker$BatteryUsage;
    add-int/lit8 v13, v21, 0x1

    move-object/from16 v3, p2

    move-object/from16 v0, v20

    move/from16 v15, v22

    const/4 v6, 0x1

    .end local v21    # "i":I
    .restart local v13    # "i":I
    goto/16 :goto_c6

    .end local v20    # "uidConsumers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;>;"
    .end local v22    # "size":I
    .local v0, "uidConsumers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;>;"
    .restart local v15    # "size":I
    :cond_166
    move-object/from16 v20, v0

    move/from16 v21, v13

    move/from16 v22, v15

    .line 836
    .end local v0    # "uidConsumers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;>;"
    .end local v7    # "newPrefix":Ljava/lang/String;
    .end local v8    # "bgPolicy":Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;
    .end local v9    # "now":J
    .end local v13    # "i":I
    .end local v15    # "size":I
    .end local v18    # "since":J
    :goto_16c
    monitor-exit v5
    :try_end_16d
    .catchall {:try_start_3b .. :try_end_16d} :catchall_171

    .line 837
    invoke-super/range {p0 .. p2}, Lcom/android/server/am/BaseAppStateTracker;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 838
    return-void

    .line 836
    :catchall_171
    move-exception v0

    :try_start_172
    monitor-exit v5
    :try_end_173
    .catchall {:try_start_172 .. :try_end_173} :catchall_171

    throw v0
.end method

.method dumpAsProto(Landroid/util/proto/ProtoOutputStream;I)V
    .registers 9
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "uid"    # I

    .line 843
    iget-object v0, p0, Lcom/android/server/am/AppBatteryTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/BaseAppStateTracker$Injector;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/am/AppBatteryTracker;->updateBatteryUsageStatsIfNecessary(JZ)Z

    .line 844
    iget-object v0, p0, Lcom/android/server/am/AppBatteryTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 845
    :try_start_d
    iget-object v1, p0, Lcom/android/server/am/AppBatteryTracker;->mUidBatteryUsageInWindow:Landroid/util/SparseArray;

    .line 846
    .local v1, "uidConsumers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;>;"
    const/4 v2, -0x1

    if-eq p2, v2, :cond_1e

    .line 847
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    .line 848
    .local v2, "usage":Lcom/android/server/am/AppBatteryTracker$BatteryUsage;
    if-eqz v2, :cond_1d

    .line 849
    invoke-direct {p0, p1, p2, v2}, Lcom/android/server/am/AppBatteryTracker;->dumpUidStats(Landroid/util/proto/ProtoOutputStream;ILcom/android/server/am/AppBatteryTracker$BatteryUsage;)V

    .line 851
    .end local v2    # "usage":Lcom/android/server/am/AppBatteryTracker$BatteryUsage;
    :cond_1d
    goto :goto_35

    .line 852
    :cond_1e
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v3

    .local v3, "size":I
    :goto_23
    if-ge v2, v3, :cond_35

    .line 853
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 854
    .local v4, "aUid":I
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    .line 855
    .local v5, "usage":Lcom/android/server/am/AppBatteryTracker$BatteryUsage;
    invoke-direct {p0, p1, v4, v5}, Lcom/android/server/am/AppBatteryTracker;->dumpUidStats(Landroid/util/proto/ProtoOutputStream;ILcom/android/server/am/AppBatteryTracker$BatteryUsage;)V

    .line 852
    .end local v4    # "aUid":I
    .end local v5    # "usage":Lcom/android/server/am/AppBatteryTracker$BatteryUsage;
    add-int/lit8 v2, v2, 0x1

    goto :goto_23

    .line 858
    .end local v1    # "uidConsumers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;>;"
    .end local v2    # "i":I
    .end local v3    # "size":I
    :cond_35
    :goto_35
    monitor-exit v0

    .line 859
    return-void

    .line 858
    :catchall_37
    move-exception v1

    monitor-exit v0
    :try_end_39
    .catchall {:try_start_d .. :try_end_39} :catchall_37

    throw v1
.end method

.method getTrackerInfoForStatsd(I)[B
    .registers 21
    .param p1, "uid"    # I

    .line 293
    move-object/from16 v1, p0

    move/from16 v2, p1

    iget-object v3, v1, Lcom/android/server/am/AppBatteryTracker;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 294
    :try_start_7
    iget-object v0, v1, Lcom/android/server/am/AppBatteryTracker;->mUidBatteryUsageInWindow:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    .line 295
    .local v0, "temp":Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;
    monitor-exit v3
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_94

    .line 296
    if-nez v0, :cond_14

    .line 297
    const/4 v3, 0x0

    return-object v3

    .line 299
    :cond_14
    iget-object v3, v1, Lcom/android/server/am/AppBatteryTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-virtual {v3}, Lcom/android/server/am/BaseAppStateTracker$Injector;->getPolicy()Lcom/android/server/am/BaseAppStatePolicy;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;

    invoke-virtual {v0, v2, v3}, Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;->calcPercentage(ILcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;)Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    move-result-object v3

    .line 300
    .local v3, "bgUsage":Lcom/android/server/am/AppBatteryTracker$BatteryUsage;
    iget-object v4, v3, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->mPercentage:[D

    const/4 v5, 0x0

    aget-wide v4, v4, v5

    iget-object v6, v3, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->mPercentage:[D

    const/4 v7, 0x1

    aget-wide v8, v6, v7

    add-double/2addr v4, v8

    iget-object v6, v3, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->mPercentage:[D

    const/4 v8, 0x2

    aget-wide v9, v6, v8

    add-double/2addr v4, v9

    iget-object v6, v3, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->mPercentage:[D

    const/4 v9, 0x3

    aget-wide v10, v6, v9

    add-double/2addr v4, v10

    iget-object v6, v3, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->mPercentage:[D

    const/4 v10, 0x4

    aget-wide v11, v6, v10

    add-double/2addr v4, v11

    .line 305
    .local v4, "allUsage":D
    iget-object v6, v3, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->mPercentage:[D

    aget-wide v11, v6, v8

    .line 307
    .local v11, "usageBackground":D
    iget-object v6, v3, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->mPercentage:[D

    aget-wide v8, v6, v9

    .line 309
    .local v8, "usageFgs":D
    iget-object v6, v3, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->mPercentage:[D

    aget-wide v6, v6, v7

    .line 311
    .local v6, "usageForeground":D
    iget-object v13, v3, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->mPercentage:[D

    aget-wide v13, v13, v10

    .line 321
    .local v13, "usageCached":D
    new-instance v10, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v10}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    .line 322
    .local v10, "proto":Landroid/util/proto/ProtoOutputStream;
    move-object v15, v0

    .end local v0    # "temp":Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;
    .local v15, "temp":Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;
    const-wide v0, 0x10500000001L

    const-wide v16, 0x40c3880000000000L    # 10000.0

    move-object/from16 v18, v3

    .end local v3    # "bgUsage":Lcom/android/server/am/AppBatteryTracker$BatteryUsage;
    .local v18, "bgUsage":Lcom/android/server/am/AppBatteryTracker$BatteryUsage;
    mul-double v2, v4, v16

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JD)V

    .line 324
    const-wide v0, 0x10500000002L

    mul-double v2, v11, v16

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JD)V

    .line 326
    const-wide v0, 0x10500000003L

    mul-double v2, v8, v16

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JD)V

    .line 328
    const-wide v0, 0x10500000004L

    mul-double v2, v6, v16

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JD)V

    .line 330
    const-wide v0, 0x10500000005L

    mul-double v2, v13, v16

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JD)V

    .line 332
    invoke-virtual {v10}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 333
    invoke-virtual {v10}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    move-result-object v0

    return-object v0

    .line 295
    .end local v4    # "allUsage":D
    .end local v6    # "usageForeground":D
    .end local v8    # "usageFgs":D
    .end local v10    # "proto":Landroid/util/proto/ProtoOutputStream;
    .end local v11    # "usageBackground":D
    .end local v13    # "usageCached":D
    .end local v15    # "temp":Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;
    .end local v18    # "bgUsage":Lcom/android/server/am/AppBatteryTracker$BatteryUsage;
    :catchall_94
    move-exception v0

    :try_start_95
    monitor-exit v3
    :try_end_96
    .catchall {:try_start_95 .. :try_end_96} :catchall_94

    throw v0
.end method

.method getType()I
    .registers 2

    .line 214
    const/4 v0, 0x1

    return v0
.end method

.method public getUidBatteryUsage(I)Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;
    .registers 8
    .param p1, "uid"    # I

    .line 401
    iget-object v0, p0, Lcom/android/server/am/AppBatteryTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/BaseAppStateTracker$Injector;->currentTimeMillis()J

    move-result-wide v0

    .line 402
    .local v0, "now":J
    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/am/AppBatteryTracker;->updateBatteryUsageStatsIfNecessary(JZ)Z

    move-result v2

    .line 403
    .local v2, "updated":Z
    iget-object v3, p0, Lcom/android/server/am/AppBatteryTracker;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 404
    if-eqz v2, :cond_1a

    .line 406
    :try_start_10
    iget-object v4, p0, Lcom/android/server/am/AppBatteryTracker;->mBgHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/am/AppBatteryTracker;->mBgBatteryUsageStatsPolling:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 407
    invoke-direct {p0}, Lcom/android/server/am/AppBatteryTracker;->scheduleBgBatteryUsageStatsCheck()V

    .line 409
    :cond_1a
    iget-object v4, p0, Lcom/android/server/am/AppBatteryTracker;->mUidBatteryUsage:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    .line 410
    .local v4, "usage":Lcom/android/server/am/AppBatteryTracker$BatteryUsage;
    if-eqz v4, :cond_2a

    new-instance v5, Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    invoke-direct {v5, v4}, Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;-><init>(Lcom/android/server/am/AppBatteryTracker$BatteryUsage;)V

    goto :goto_2c

    :cond_2a
    sget-object v5, Lcom/android/server/am/AppBatteryTracker;->BATTERY_USAGE_NONE:Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    :goto_2c
    monitor-exit v3

    return-object v5

    .line 411
    .end local v4    # "usage":Lcom/android/server/am/AppBatteryTracker$BatteryUsage;
    :catchall_2e
    move-exception v4

    monitor-exit v3
    :try_end_30
    .catchall {:try_start_10 .. :try_end_30} :catchall_2e

    throw v4
.end method

.method onBackgroundRestrictionChanged(ILjava/lang/String;Z)V
    .registers 5
    .param p1, "uid"    # I
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "restricted"    # Z

    .line 384
    iget-object v0, p0, Lcom/android/server/am/AppBatteryTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/BaseAppStateTracker$Injector;->getPolicy()Lcom/android/server/am/BaseAppStatePolicy;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->onBackgroundRestrictionChanged(ILjava/lang/String;Z)V

    .line 385
    return-void
.end method

.method onSystemReady()V
    .registers 9

    .line 219
    invoke-super {p0}, Lcom/android/server/am/BaseAppStateTracker;->onSystemReady()V

    .line 220
    iget-object v0, p0, Lcom/android/server/am/AppBatteryTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/BaseAppStateTracker$Injector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v0

    .line 221
    .local v0, "um":Lcom/android/server/pm/UserManagerInternal;
    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    move-result-object v1

    .line 222
    .local v1, "userIds":[I
    array-length v2, v1

    const/4 v3, 0x0

    :goto_f
    if-ge v3, v2, :cond_2a

    aget v4, v1, v3

    .line 223
    .local v4, "userId":I
    invoke-virtual {v0, v4}, Lcom/android/server/pm/UserManagerInternal;->isUserRunning(I)Z

    move-result v5

    if-eqz v5, :cond_27

    .line 224
    iget-object v5, p0, Lcom/android/server/am/AppBatteryTracker;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 225
    :try_start_1c
    iget-object v6, p0, Lcom/android/server/am/AppBatteryTracker;->mActiveUserIdStates:Landroid/util/SparseBooleanArray;

    const/4 v7, 0x1

    invoke-virtual {v6, v4, v7}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 226
    monitor-exit v5

    goto :goto_27

    :catchall_24
    move-exception v2

    monitor-exit v5
    :try_end_26
    .catchall {:try_start_1c .. :try_end_26} :catchall_24

    throw v2

    .line 222
    .end local v4    # "userId":I
    :cond_27
    :goto_27
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 229
    :cond_2a
    iget-wide v2, p0, Lcom/android/server/am/AppBatteryTracker;->mBatteryUsageStatsPollingIntervalMs:J

    invoke-direct {p0, v2, v3}, Lcom/android/server/am/AppBatteryTracker;->scheduleBatteryUsageStatsUpdateIfNecessary(J)V

    .line 230
    return-void
.end method

.method onUidRemoved(I)V
    .registers 4
    .param p1, "uid"    # I

    .line 370
    iget-object v0, p0, Lcom/android/server/am/AppBatteryTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 371
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/AppBatteryTracker;->mUidBatteryUsage:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 372
    iget-object v1, p0, Lcom/android/server/am/AppBatteryTracker;->mUidBatteryUsageInWindow:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 373
    iget-object v1, p0, Lcom/android/server/am/AppBatteryTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/BaseAppStateTracker$Injector;->getPolicy()Lcom/android/server/am/BaseAppStatePolicy;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;

    invoke-virtual {v1, p1}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->onUidRemovedLocked(I)V

    .line 374
    monitor-exit v0

    .line 375
    return-void

    .line 374
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method onUserInteractionStarted(Ljava/lang/String;I)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 379
    iget-object v0, p0, Lcom/android/server/am/AppBatteryTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/BaseAppStateTracker$Injector;->getPolicy()Lcom/android/server/am/BaseAppStatePolicy;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->onUserInteractionStarted(Ljava/lang/String;I)V

    .line 380
    return-void
.end method

.method onUserRemoved(I)V
    .registers 5
    .param p1, "userId"    # I

    .line 352
    iget-object v0, p0, Lcom/android/server/am/AppBatteryTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 353
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/AppBatteryTracker;->mActiveUserIdStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 354
    iget-object v1, p0, Lcom/android/server/am/AppBatteryTracker;->mUidBatteryUsage:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_10
    if-ltz v1, :cond_26

    .line 355
    iget-object v2, p0, Lcom/android/server/am/AppBatteryTracker;->mUidBatteryUsage:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    if-ne v2, p1, :cond_23

    .line 356
    iget-object v2, p0, Lcom/android/server/am/AppBatteryTracker;->mUidBatteryUsage:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 354
    :cond_23
    add-int/lit8 v1, v1, -0x1

    goto :goto_10

    .line 359
    .end local v1    # "i":I
    :cond_26
    iget-object v1, p0, Lcom/android/server/am/AppBatteryTracker;->mUidBatteryUsageInWindow:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .restart local v1    # "i":I
    :goto_2e
    if-ltz v1, :cond_44

    .line 360
    iget-object v2, p0, Lcom/android/server/am/AppBatteryTracker;->mUidBatteryUsageInWindow:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    if-ne v2, p1, :cond_41

    .line 361
    iget-object v2, p0, Lcom/android/server/am/AppBatteryTracker;->mUidBatteryUsageInWindow:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 359
    :cond_41
    add-int/lit8 v1, v1, -0x1

    goto :goto_2e

    .line 364
    .end local v1    # "i":I
    :cond_44
    iget-object v1, p0, Lcom/android/server/am/AppBatteryTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/BaseAppStateTracker$Injector;->getPolicy()Lcom/android/server/am/BaseAppStatePolicy;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;

    invoke-virtual {v1, p1}, Lcom/android/server/am/AppBatteryTracker$AppBatteryPolicy;->onUserRemovedLocked(I)V

    .line 365
    monitor-exit v0

    .line 366
    return-void

    .line 365
    :catchall_51
    move-exception v1

    monitor-exit v0
    :try_end_53
    .catchall {:try_start_3 .. :try_end_53} :catchall_51

    throw v1
.end method

.method onUserStarted(I)V
    .registers 5
    .param p1, "userId"    # I

    .line 338
    iget-object v0, p0, Lcom/android/server/am/AppBatteryTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 339
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/AppBatteryTracker;->mActiveUserIdStates:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 340
    monitor-exit v0

    .line 341
    return-void

    .line 340
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method onUserStopped(I)V
    .registers 5
    .param p1, "userId"    # I

    .line 345
    iget-object v0, p0, Lcom/android/server/am/AppBatteryTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 346
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/AppBatteryTracker;->mActiveUserIdStates:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 347
    monitor-exit v0

    .line 348
    return-void

    .line 347
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method reset()V
    .registers 4

    .line 768
    iget-object v0, p0, Lcom/android/server/am/AppBatteryTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 769
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/AppBatteryTracker;->mUidBatteryUsage:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 770
    iget-object v1, p0, Lcom/android/server/am/AppBatteryTracker;->mUidBatteryUsageInWindow:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 771
    iget-object v1, p0, Lcom/android/server/am/AppBatteryTracker;->mLastUidBatteryUsage:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 772
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/am/AppBatteryTracker;->mLastBatteryUsageSamplingTs:J

    iput-wide v1, p0, Lcom/android/server/am/AppBatteryTracker;->mLastUidBatteryUsageStartTs:J

    .line 773
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_24

    .line 774
    iget-object v0, p0, Lcom/android/server/am/AppBatteryTracker;->mBgHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/am/AppBatteryTracker;->mBgBatteryUsageStatsPolling:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 775
    invoke-direct {p0}, Lcom/android/server/am/AppBatteryTracker;->updateBatteryUsageStatsAndCheck()V

    .line 776
    return-void

    .line 773
    :catchall_24
    move-exception v1

    :try_start_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw v1
.end method

.method setDebugUidPercentage([I[[D)V
    .registers 8
    .param p1, "uids"    # [I
    .param p2, "percentages"    # [[D

    .line 753
    iget-object v0, p0, Lcom/android/server/am/AppBatteryTracker;->mDebugUidPercentages:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 754
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    array-length v1, p1

    if-ge v0, v1, :cond_22

    .line 755
    iget-object v1, p0, Lcom/android/server/am/AppBatteryTracker;->mDebugUidPercentages:Landroid/util/SparseArray;

    aget v2, p1, v0

    new-instance v3, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    invoke-direct {v3}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;-><init>()V

    aget-object v4, p2, v0

    .line 756
    invoke-virtual {v3, v4}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->setPercentage([D)Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->unmutate()Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    move-result-object v3

    .line 755
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 754
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 758
    .end local v0    # "i":I
    :cond_22
    invoke-direct {p0}, Lcom/android/server/am/AppBatteryTracker;->scheduleBgBatteryUsageStatsCheck()V

    .line 759
    return-void
.end method
