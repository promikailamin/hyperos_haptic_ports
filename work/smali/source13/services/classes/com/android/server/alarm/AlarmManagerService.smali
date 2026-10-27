.class public Lcom/android/server/alarm/AlarmManagerService;
.super Lcom/android/server/SystemService;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/alarm/AlarmManagerService$ShellCmd;,
        Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;,
        Lcom/android/server/alarm/AlarmManagerService$AppStandbyTracker;,
        Lcom/android/server/alarm/AlarmManagerService$UninstallReceiver;,
        Lcom/android/server/alarm/AlarmManagerService$InteractiveStateReceiver;,
        Lcom/android/server/alarm/AlarmManagerService$ClockReceiver;,
        Lcom/android/server/alarm/AlarmManagerService$ChargingReceiver;,
        Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;,
        Lcom/android/server/alarm/AlarmManagerService$AlarmThread;,
        Lcom/android/server/alarm/AlarmManagerService$Injector;,
        Lcom/android/server/alarm/AlarmManagerService$LocalService;,
        Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;,
        Lcom/android/server/alarm/AlarmManagerService$FilterStats;,
        Lcom/android/server/alarm/AlarmManagerService$InFlight;,
        Lcom/android/server/alarm/AlarmManagerService$PriorityClass;,
        Lcom/android/server/alarm/AlarmManagerService$Constants;,
        Lcom/android/server/alarm/AlarmManagerService$RemovedAlarm;,
        Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;,
        Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve;,
        Lcom/android/server/alarm/AlarmManagerService$Stats;,
        Lcom/android/server/alarm/AlarmManagerService$IdleDispatchEntry;
    }
.end annotation


# static fields
.field static final ACTIVE_INDEX:I = 0x0

.field static final DEBUG_ALARM_CLOCK:Z = false

.field static final DEBUG_BATCH:Z = false

.field static final DEBUG_BG_LIMIT:Z = false

.field static final DEBUG_LISTENER_CALLBACK:Z = false

.field static final DEBUG_STANDBY:Z = false

.field static final DEBUG_TARE:Z = false

.field static final DEBUG_WAKELOCK:Z = true

.field private static final ELAPSED_REALTIME_WAKEUP_MASK:I = 0x4

.field static final FREQUENT_INDEX:I = 0x2

.field static final INDEFINITE_DELAY:J = 0x757b12c00L

.field static final IS_WAKEUP_MASK:I = 0x5

.field static final MIN_FUZZABLE_INTERVAL:J = 0x2710L

.field static final NEVER_INDEX:I = 0x4

.field private static final NEXT_ALARM_CLOCK_CHANGED_INTENT:Landroid/content/Intent;

.field static final PRIO_NORMAL:I = 0x2

.field static final PRIO_TICK:I = 0x0

.field static final PRIO_WAKEUP:I = 0x1

.field static final RARE_INDEX:I = 0x3

.field static final RECORD_ALARMS_IN_HISTORY:Z = true

.field static final RECORD_DEVICE_IDLE_ALARMS:Z = false

.field private static final REMOVAL_HISTORY_SIZE_PER_UID:I = 0xa

.field private static final RTC_WAKEUP_MASK:I = 0x1

.field static final TAG:Ljava/lang/String; = "AlarmManager"

.field private static final TEMPORARY_QUOTA_DURATION:J = 0x5265c00L

.field static final TICK_HISTORY_DEPTH:I = 0xa

.field static final TIMEZONE_PROPERTY:Ljava/lang/String; = "persist.sys.timezone"

.field static final TIME_CHANGED_MASK:I = 0x10000

.field static final TIME_TICK_TAG:Ljava/lang/String; = "TIME_TICK"

.field static final WORKING_INDEX:I = 0x1

.field static final localLOGV:Z = false


# instance fields
.field private mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field mActivityOptsRestrictBal:Landroid/app/ActivityOptions;

.field private final mAffordabilityCache:Landroid/util/SparseArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArrayMap<",
            "Lcom/android/server/tare/EconomyManagerInternal$ActionBill;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mAffordabilityChangeListener:Lcom/android/server/tare/EconomyManagerInternal$AffordabilityChangeListener;

.field private final mAlarmClockUpdater:Ljava/lang/Runnable;

.field final mAlarmDispatchComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/server/alarm/Alarm;",
            ">;"
        }
    .end annotation
.end field

.field mAlarmStore:Lcom/android/server/alarm/AlarmStore;

.field mAlarmsPerUid:Landroid/util/SparseIntArray;

.field mAllowWhileIdleCompatHistory:Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

.field final mAllowWhileIdleDispatches:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/alarm/AlarmManagerService$IdleDispatchEntry;",
            ">;"
        }
    .end annotation
.end field

.field mAllowWhileIdleHistory:Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

.field mAppOps:Landroid/app/AppOpsManager;

.field mAppStandbyParole:Z

.field private mAppStateTracker:Lcom/android/server/AppStateTrackerImpl;

.field mAppWakeupHistory:Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

.field private final mBackgroundIntent:Landroid/content/Intent;

.field mBroadcastOptsRestrictBal:Landroid/app/BroadcastOptions;

.field mBroadcastRefCount:I

.field final mBroadcastStats:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;",
            ">;>;"
        }
    .end annotation
.end field

.field mClockReceiver:Lcom/android/server/alarm/AlarmManagerService$ClockReceiver;

.field mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

.field mCurrentSeq:I

.field mDateChangeSender:Landroid/app/PendingIntent;

.field final mDeliveryTracker:Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;

.field mDeskclockDelivering:Z

.field private final mEconomyManagerInternal:Lcom/android/server/tare/EconomyManagerInternal;

.field volatile mExactAlarmCandidates:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mForceAppStandbyListener:Lcom/android/server/AppStateTrackerImpl$Listener;

.field mGreezeManagerService:Landroid/os/IBinder;

.field mHandler:Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;

.field private final mHandlerSparseAlarmClockArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/app/AlarmManager$AlarmClockInfo;",
            ">;"
        }
    .end annotation
.end field

.field mInFlight:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/alarm/AlarmManagerService$InFlight;",
            ">;"
        }
    .end annotation
.end field

.field private final mInFlightListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/AlarmManagerInternal$InFlightListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

.field mInteractive:Z

.field mLastAlarmDeliveryTime:J

.field mLastOpScheduleExactAlarm:Landroid/util/SparseIntArray;

.field private final mLastPriorityAlarmDispatch:Landroid/util/SparseLongArray;

.field private mLastTickReceived:J

.field private mLastTickSet:J

.field mLastTimeChangeClockTime:J

.field mLastTimeChangeRealtime:J

.field private mLastTrigger:J

.field private mLastWakeup:J

.field private mListenerCount:I

.field mListenerDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private mListenerFinishCount:I

.field mLocalDeviceIdleController:Lcom/android/server/DeviceIdleInternal;

.field private volatile mLocalPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

.field final mLock:Ljava/lang/Object;

.field final mLog:Lcom/android/internal/util/LocalLog;

.field mMaxDelayTime:J

.field mMetricsHelper:Lcom/android/server/alarm/MetricsHelper;

.field private final mNextAlarmClockForUser:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/app/AlarmManager$AlarmClockInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mNextAlarmClockMayChange:Z

.field private mNextNonWakeUpSetAt:J

.field private mNextNonWakeup:J

.field mNextNonWakeupDeliveryTime:J

.field private mNextTickHistory:I

.field mNextWakeFromIdle:Lcom/android/server/alarm/Alarm;

.field private mNextWakeUpSetAt:J

.field private mNextWakeup:J

.field mNonInteractiveStartTime:J

.field mNonInteractiveTime:J

.field mNumDelayedAlarms:I

.field mNumTimeChanged:I

.field mOptsTimeBroadcast:Landroid/app/BroadcastOptions;

.field mOptsWithFgs:Landroid/app/BroadcastOptions;

.field mOptsWithFgsForAlarmClock:Landroid/app/BroadcastOptions;

.field mOptsWithoutFgs:Landroid/app/BroadcastOptions;

.field private mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field mPendingAlarmsByAurogon:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/alarm/Alarm;",
            ">;>;"
        }
    .end annotation
.end field

.field mPendingBackgroundAlarms:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/alarm/Alarm;",
            ">;>;"
        }
    .end annotation
.end field

.field mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

.field mPendingNonWakeupAlarms:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/alarm/Alarm;",
            ">;"
        }
    .end annotation
.end field

.field private final mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

.field final mPriorities:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/alarm/AlarmManagerService$PriorityClass;",
            ">;"
        }
    .end annotation
.end field

.field private final mRemovalHistory:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/util/RingBuffer<",
            "Lcom/android/server/alarm/AlarmManagerService$RemovedAlarm;",
            ">;>;"
        }
    .end annotation
.end field

.field private mRoleManager:Landroid/app/role/RoleManager;

.field private mSendCount:I

.field private mSendFinishCount:I

.field private final mService:Landroid/os/IBinder;

.field mStartCurrentDelayTime:J

.field private final mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

.field mSystemUiUid:I

.field mTemporaryQuotaReserve:Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve;

.field private final mTickHistory:[J

.field mTimeTickIntent:Landroid/content/Intent;

.field mTimeTickTrigger:Landroid/app/IAlarmListener;

.field private final mTmpSparseAlarmClockArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/app/AlarmManager$AlarmClockInfo;",
            ">;"
        }
    .end annotation
.end field

.field mTotalDelayTime:J

.field private mUsageStatsManagerInternal:Landroid/app/usage/UsageStatsManagerInternal;

.field mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public static synthetic $r8$lambda$-MgquypUP3unWGG2OT4ob8k7gsI(Lcom/android/server/alarm/AlarmManagerService;Lcom/android/server/alarm/Alarm;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->isBackgroundRestricted(Lcom/android/server/alarm/Alarm;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmActivityManagerInternal(Lcom/android/server/alarm/AlarmManagerService;)Landroid/app/ActivityManagerInternal;
    .registers 1

    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAffordabilityCache(Lcom/android/server/alarm/AlarmManagerService;)Landroid/util/SparseArrayMap;
    .registers 1

    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mAffordabilityCache:Landroid/util/SparseArrayMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAffordabilityChangeListener(Lcom/android/server/alarm/AlarmManagerService;)Lcom/android/server/tare/EconomyManagerInternal$AffordabilityChangeListener;
    .registers 1

    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mAffordabilityChangeListener:Lcom/android/server/tare/EconomyManagerInternal$AffordabilityChangeListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAlarmClockUpdater(Lcom/android/server/alarm/AlarmManagerService;)Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmClockUpdater:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAppStateTracker(Lcom/android/server/alarm/AlarmManagerService;)Lcom/android/server/AppStateTrackerImpl;
    .registers 1

    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mAppStateTracker:Lcom/android/server/AppStateTrackerImpl;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmBackgroundIntent(Lcom/android/server/alarm/AlarmManagerService;)Landroid/content/Intent;
    .registers 1

    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mBackgroundIntent:Landroid/content/Intent;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmEconomyManagerInternal(Lcom/android/server/alarm/AlarmManagerService;)Lcom/android/server/tare/EconomyManagerInternal;
    .registers 1

    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mEconomyManagerInternal:Lcom/android/server/tare/EconomyManagerInternal;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmInFlightListeners(Lcom/android/server/alarm/AlarmManagerService;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mInFlightListeners:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmInjector(Lcom/android/server/alarm/AlarmManagerService;)Lcom/android/server/alarm/AlarmManagerService$Injector;
    .registers 1

    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLastPriorityAlarmDispatch(Lcom/android/server/alarm/AlarmManagerService;)Landroid/util/SparseLongArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mLastPriorityAlarmDispatch:Landroid/util/SparseLongArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmListenerCount(Lcom/android/server/alarm/AlarmManagerService;)I
    .registers 1

    iget p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mListenerCount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmListenerFinishCount(Lcom/android/server/alarm/AlarmManagerService;)I
    .registers 1

    iget p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mListenerFinishCount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmNextTickHistory(Lcom/android/server/alarm/AlarmManagerService;)I
    .registers 1

    iget p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextTickHistory:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPackageManagerInternal(Lcom/android/server/alarm/AlarmManagerService;)Landroid/content/pm/PackageManagerInternal;
    .registers 1

    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRemovalHistory(Lcom/android/server/alarm/AlarmManagerService;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mRemovalHistory:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSendCount(Lcom/android/server/alarm/AlarmManagerService;)I
    .registers 1

    iget p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mSendCount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSendFinishCount(Lcom/android/server/alarm/AlarmManagerService;)I
    .registers 1

    iget p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mSendFinishCount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmService(Lcom/android/server/alarm/AlarmManagerService;)Landroid/os/IBinder;
    .registers 1

    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mService:Landroid/os/IBinder;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTickHistory(Lcom/android/server/alarm/AlarmManagerService;)[J
    .registers 1

    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService;->mTickHistory:[J

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmLastTickReceived(Lcom/android/server/alarm/AlarmManagerService;J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/server/alarm/AlarmManagerService;->mLastTickReceived:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLastTickSet(Lcom/android/server/alarm/AlarmManagerService;J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/server/alarm/AlarmManagerService;->mLastTickSet:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLastTrigger(Lcom/android/server/alarm/AlarmManagerService;J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/server/alarm/AlarmManagerService;->mLastTrigger:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLastWakeup(Lcom/android/server/alarm/AlarmManagerService;J)V
    .registers 3

    iput-wide p1, p0, Lcom/android/server/alarm/AlarmManagerService;->mLastWakeup:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmListenerCount(Lcom/android/server/alarm/AlarmManagerService;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/alarm/AlarmManagerService;->mListenerCount:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmListenerFinishCount(Lcom/android/server/alarm/AlarmManagerService;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/alarm/AlarmManagerService;->mListenerFinishCount:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmNextTickHistory(Lcom/android/server/alarm/AlarmManagerService;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextTickHistory:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSendCount(Lcom/android/server/alarm/AlarmManagerService;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/alarm/AlarmManagerService;->mSendCount:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSendFinishCount(Lcom/android/server/alarm/AlarmManagerService;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/alarm/AlarmManagerService;->mSendFinishCount:I

    return-void
.end method

.method static bridge synthetic -$$Nest$madjustDeliveryTimeBasedOnBatterySaver(Lcom/android/server/alarm/AlarmManagerService;Lcom/android/server/alarm/Alarm;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->adjustDeliveryTimeBasedOnBatterySaver(Lcom/android/server/alarm/Alarm;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$madjustDeliveryTimeBasedOnBucketLocked(Lcom/android/server/alarm/AlarmManagerService;Lcom/android/server/alarm/Alarm;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->adjustDeliveryTimeBasedOnBucketLocked(Lcom/android/server/alarm/Alarm;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$madjustDeliveryTimeBasedOnDeviceIdle(Lcom/android/server/alarm/AlarmManagerService;Lcom/android/server/alarm/Alarm;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->adjustDeliveryTimeBasedOnDeviceIdle(Lcom/android/server/alarm/Alarm;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$madjustDeliveryTimeBasedOnTareLocked(Lcom/android/server/alarm/AlarmManagerService;Lcom/android/server/alarm/Alarm;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->adjustDeliveryTimeBasedOnTareLocked(Lcom/android/server/alarm/Alarm;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mdecrementAlarmCount(Lcom/android/server/alarm/AlarmManagerService;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/alarm/AlarmManagerService;->decrementAlarmCount(II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdeliverPendingBackgroundAlarmsLocked(Lcom/android/server/alarm/AlarmManagerService;Ljava/util/ArrayList;J)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/alarm/AlarmManagerService;->deliverPendingBackgroundAlarmsLocked(Ljava/util/ArrayList;J)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetAlarmOperationBundle(Lcom/android/server/alarm/AlarmManagerService;Lcom/android/server/alarm/Alarm;)Landroid/os/Bundle;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->getAlarmOperationBundle(Lcom/android/server/alarm/Alarm;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetStatsLocked(Lcom/android/server/alarm/AlarmManagerService;ILjava/lang/String;)Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/alarm/AlarmManagerService;->getStatsLocked(ILjava/lang/String;)Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetStatsLocked(Lcom/android/server/alarm/AlarmManagerService;Landroid/app/PendingIntent;)Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->getStatsLocked(Landroid/app/PendingIntent;)Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$misIdlingImpl(Lcom/android/server/alarm/AlarmManagerService;)Z
    .registers 1

    invoke-direct {p0}, Lcom/android/server/alarm/AlarmManagerService;->isIdlingImpl()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mnotifyBroadcastAlarmCompleteLocked(Lcom/android/server/alarm/AlarmManagerService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->notifyBroadcastAlarmCompleteLocked(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyBroadcastAlarmPendingLocked(Lcom/android/server/alarm/AlarmManagerService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->notifyBroadcastAlarmPendingLocked(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mregisterTareListener(Lcom/android/server/alarm/AlarmManagerService;Lcom/android/server/alarm/Alarm;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->registerTareListener(Lcom/android/server/alarm/Alarm;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msendNextAlarmClockChanged(Lcom/android/server/alarm/AlarmManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/alarm/AlarmManagerService;->sendNextAlarmClockChanged()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msendScheduleExactAlarmPermissionStateChangedBroadcast(Lcom/android/server/alarm/AlarmManagerService;Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/alarm/AlarmManagerService;->sendScheduleExactAlarmPermissionStateChangedBroadcast(Ljava/lang/String;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateNextAlarmClockLocked(Lcom/android/server/alarm/AlarmManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/alarm/AlarmManagerService;->updateNextAlarmClockLocked()V

    return-void
.end method

.method static bridge synthetic -$$Nest$smclose(J)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->close(J)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smgetAlarmAttributionUid(Lcom/android/server/alarm/Alarm;)I
    .registers 1

    invoke-static {p0}, Lcom/android/server/alarm/AlarmManagerService;->getAlarmAttributionUid(Lcom/android/server/alarm/Alarm;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smgetNextAlarm(JI)J
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/alarm/AlarmManagerService;->getNextAlarm(JI)J

    move-result-wide p0

    return-wide p0
.end method

.method static bridge synthetic -$$Nest$sminit()J
    .registers 2

    invoke-static {}, Lcom/android/server/alarm/AlarmManagerService;->init()J

    move-result-wide v0

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$smisAllowedWhileIdleRestricted(Lcom/android/server/alarm/Alarm;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/alarm/AlarmManagerService;->isAllowedWhileIdleRestricted(Lcom/android/server/alarm/Alarm;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smisExactAlarmChangeEnabled(Ljava/lang/String;I)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->isExactAlarmChangeEnabled(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smset(JIJJ)I
    .registers 7

    invoke-static/range {p0 .. p6}, Lcom/android/server/alarm/AlarmManagerService;->set(JIJJ)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smsetKernelTime(JJ)I
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/alarm/AlarmManagerService;->setKernelTime(JJ)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smsetKernelTimezone(JI)I
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/alarm/AlarmManagerService;->setKernelTimezone(JI)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smwaitForAlarm(J)I
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->waitForAlarm(J)I

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 225
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.app.action.NEXT_ALARM_CLOCK_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 227
    const/high16 v1, 0x21000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/server/alarm/AlarmManagerService;->NEXT_ALARM_CLOCK_CHANGED_INTENT:Landroid/content/Intent;

    .line 225
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 1425
    new-instance v0, Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-direct {v0, p1}, Lcom/android/server/alarm/AlarmManagerService$Injector;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0}, Lcom/android/server/alarm/AlarmManagerService;-><init>(Landroid/content/Context;Lcom/android/server/alarm/AlarmManagerService$Injector;)V

    .line 1426
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/alarm/AlarmManagerService$Injector;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "injector"    # Lcom/android/server/alarm/AlarmManagerService$Injector;

    .line 1419
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 222
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 223
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mBackgroundIntent:Landroid/content/Intent;

    .line 230
    new-instance v0, Lcom/android/internal/util/LocalLog;

    const-string v1, "AlarmManager"

    invoke-direct {v0, v1}, Lcom/android/internal/util/LocalLog;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mLog:Lcom/android/internal/util/LocalLog;

    .line 241
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    .line 244
    nop

    .line 245
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mExactAlarmCandidates:Ljava/util/Set;

    .line 251
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mLastOpScheduleExactAlarm:Landroid/util/SparseIntArray;

    .line 259
    new-instance v0, Landroid/util/SparseArrayMap;

    invoke-direct {v0}, Landroid/util/SparseArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mAffordabilityCache:Landroid/util/SparseArrayMap;

    .line 264
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    .line 267
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingAlarmsByAurogon:Landroid/util/SparseArray;

    .line 279
    const/16 v0, 0xa

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mTickHistory:[J

    .line 283
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mBroadcastRefCount:I

    .line 286
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmsPerUid:Landroid/util/SparseIntArray;

    .line 287
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    .line 288
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    .line 289
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mInFlightListeners:Ljava/util/ArrayList;

    .line 296
    new-instance v1, Landroid/util/SparseLongArray;

    invoke-direct {v1}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mLastPriorityAlarmDispatch:Landroid/util/SparseLongArray;

    .line 297
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mRemovalHistory:Landroid/util/SparseArray;

    .line 299
    new-instance v1, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;

    invoke-direct {v1, p0}, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    iput-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mDeliveryTracker:Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;

    .line 304
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mInteractive:Z

    .line 320
    iput-boolean v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mDeskclockDelivering:Z

    .line 335
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mAllowWhileIdleDispatches:Ljava/util/ArrayList;

    .line 343
    new-instance v1, Lcom/android/internal/util/jobs/StatLogger;

    const-string v2, "REORDER_ALARMS_FOR_STANDBY"

    const-string v3, "HAS_SCHEDULE_EXACT_ALARM"

    const-string v4, "REORDER_ALARMS_FOR_TARE"

    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "Alarm manager stats"

    invoke-direct {v1, v3, v2}, Lcom/android/internal/util/jobs/StatLogger;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

    .line 349
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mOptsWithFgs:Landroid/app/BroadcastOptions;

    .line 350
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mOptsWithFgsForAlarmClock:Landroid/app/BroadcastOptions;

    .line 351
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mOptsWithoutFgs:Landroid/app/BroadcastOptions;

    .line 352
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mOptsTimeBroadcast:Landroid/app/BroadcastOptions;

    .line 353
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mActivityOptsRestrictBal:Landroid/app/ActivityOptions;

    .line 354
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mBroadcastOptsRestrictBal:Landroid/app/BroadcastOptions;

    .line 357
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    .line 359
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mTmpSparseAlarmClockArray:Landroid/util/SparseArray;

    .line 361
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    .line 365
    new-instance v1, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda22;

    invoke-direct {v1, p0}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda22;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    iput-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmClockUpdater:Ljava/lang/Runnable;

    .line 369
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mHandlerSparseAlarmClockArray:Landroid/util/SparseArray;

    .line 1337
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mPriorities:Ljava/util/HashMap;

    .line 1338
    iput v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mCurrentSeq:I

    .line 1340
    new-instance v1, Lcom/android/server/alarm/AlarmManagerService$1;

    invoke-direct {v1, p0}, Lcom/android/server/alarm/AlarmManagerService$1;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    iput-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmDispatchComparator:Ljava/util/Comparator;

    .line 1414
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    .line 1415
    iput-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/alarm/Alarm;

    .line 1873
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    .line 1876
    iput v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mNumDelayedAlarms:I

    .line 1877
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mTotalDelayTime:J

    .line 1878
    iput-wide v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mMaxDelayTime:J

    .line 2816
    new-instance v2, Lcom/android/server/alarm/AlarmManagerService$5;

    invoke-direct {v2, p0}, Lcom/android/server/alarm/AlarmManagerService$5;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    iput-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mService:Landroid/os/IBinder;

    .line 5310
    new-instance v2, Lcom/android/server/alarm/AlarmManagerService$8;

    invoke-direct {v2, p0}, Lcom/android/server/alarm/AlarmManagerService$8;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    iput-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mAffordabilityChangeListener:Lcom/android/server/tare/EconomyManagerInternal$AffordabilityChangeListener;

    .line 5337
    new-instance v2, Lcom/android/server/alarm/AlarmManagerService$9;

    invoke-direct {v2, p0}, Lcom/android/server/alarm/AlarmManagerService$9;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    iput-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mForceAppStandbyListener:Lcom/android/server/AppStateTrackerImpl$Listener;

    .line 5423
    iput-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mGreezeManagerService:Landroid/os/IBinder;

    .line 5522
    iput v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mSendCount:I

    .line 5524
    iput v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mSendFinishCount:I

    .line 5526
    iput v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mListenerCount:I

    .line 5528
    iput v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mListenerFinishCount:I

    .line 1420
    iput-object p2, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    .line 1421
    const-class v0, Lcom/android/server/tare/EconomyManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/tare/EconomyManagerInternal;

    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mEconomyManagerInternal:Lcom/android/server/tare/EconomyManagerInternal;

    .line 1422
    return-void
.end method

.method private adjustDeliveryTimeBasedOnBatterySaver(Lcom/android/server/alarm/Alarm;)Z
    .registers 13
    .param p1, "alarm"    # Lcom/android/server/alarm/Alarm;

    .line 2416
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getElapsedRealtime()J

    move-result-wide v0

    .line 2417
    .local v0, "nowElapsed":J
    invoke-static {p1}, Lcom/android/server/alarm/AlarmManagerService;->isExemptFromBatterySaver(Lcom/android/server/alarm/Alarm;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 2418
    const/4 v2, 0x0

    return v2

    .line 2421
    :cond_e
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mAppStateTracker:Lcom/android/server/AppStateTrackerImpl;

    const/4 v3, 0x3

    if-eqz v2, :cond_8a

    iget v4, p1, Lcom/android/server/alarm/Alarm;->creatorUid:I

    iget-object v5, p1, Lcom/android/server/alarm/Alarm;->sourcePackage:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lcom/android/server/AppStateTrackerImpl;->areAlarmsRestrictedByBatterySaver(ILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1f

    goto/16 :goto_8a

    .line 2427
    :cond_1f
    iget v2, p1, Lcom/android/server/alarm/Alarm;->flags:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_27

    .line 2429
    move-wide v4, v0

    .local v4, "batterySaverPolicyElapsed":J
    goto :goto_85

    .line 2430
    .end local v4    # "batterySaverPolicyElapsed":J
    :cond_27
    invoke-static {p1}, Lcom/android/server/alarm/AlarmManagerService;->isAllowedWhileIdleRestricted(Lcom/android/server/alarm/Alarm;)Z

    move-result v2

    if-eqz v2, :cond_62

    .line 2432
    iget v2, p1, Lcom/android/server/alarm/Alarm;->creatorUid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 2436
    .local v2, "userId":I
    iget v4, p1, Lcom/android/server/alarm/Alarm;->flags:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_44

    .line 2437
    iget-object v4, p0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget v4, v4, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_QUOTA:I

    .line 2438
    .local v4, "quota":I
    iget-object v5, p0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget-wide v5, v5, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_WINDOW:J

    .line 2439
    .local v5, "window":J
    iget-object v7, p0, Lcom/android/server/alarm/AlarmManagerService;->mAllowWhileIdleHistory:Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

    .local v7, "history":Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;
    goto :goto_4e

    .line 2441
    .end local v4    # "quota":I
    .end local v5    # "window":J
    .end local v7    # "history":Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;
    :cond_44
    iget-object v4, p0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget v4, v4, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_COMPAT_QUOTA:I

    .line 2442
    .restart local v4    # "quota":I
    iget-object v5, p0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget-wide v5, v5, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_COMPAT_WINDOW:J

    .line 2443
    .restart local v5    # "window":J
    iget-object v7, p0, Lcom/android/server/alarm/AlarmManagerService;->mAllowWhileIdleCompatHistory:Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

    .line 2445
    .restart local v7    # "history":Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;
    :goto_4e
    iget-object v8, p1, Lcom/android/server/alarm/Alarm;->sourcePackage:Ljava/lang/String;

    invoke-virtual {v7, v8, v2}, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;->getTotalWakeupsInWindow(Ljava/lang/String;I)I

    move-result v8

    .line 2447
    .local v8, "dispatchesInHistory":I
    if-ge v8, v4, :cond_59

    .line 2449
    move-wide v9, v0

    move-wide v4, v9

    .local v9, "batterySaverPolicyElapsed":J
    goto :goto_61

    .line 2451
    .end local v9    # "batterySaverPolicyElapsed":J
    :cond_59
    iget-object v9, p1, Lcom/android/server/alarm/Alarm;->sourcePackage:Ljava/lang/String;

    invoke-virtual {v7, v9, v2, v4}, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;->getNthLastWakeupForPackage(Ljava/lang/String;II)J

    move-result-wide v9

    add-long/2addr v9, v5

    move-wide v4, v9

    .line 2454
    .end local v2    # "userId":I
    .end local v5    # "window":J
    .end local v7    # "history":Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;
    .end local v8    # "dispatchesInHistory":I
    .local v4, "batterySaverPolicyElapsed":J
    :goto_61
    goto :goto_85

    .end local v4    # "batterySaverPolicyElapsed":J
    :cond_62
    iget v2, p1, Lcom/android/server/alarm/Alarm;->flags:I

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_7f

    .line 2455
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mLastPriorityAlarmDispatch:Landroid/util/SparseLongArray;

    iget v4, p1, Lcom/android/server/alarm/Alarm;->creatorUid:I

    const-wide/16 v5, 0x0

    invoke-virtual {v2, v4, v5, v6}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide v7

    .line 2456
    .local v7, "lastDispatch":J
    cmp-long v2, v7, v5

    if-nez v2, :cond_78

    .line 2457
    move-wide v4, v0

    goto :goto_7d

    .line 2458
    :cond_78
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget-wide v4, v2, Lcom/android/server/alarm/AlarmManagerService$Constants;->PRIORITY_ALARM_DELAY:J

    add-long/2addr v4, v7

    :goto_7d
    nop

    .line 2459
    .end local v7    # "lastDispatch":J
    .restart local v4    # "batterySaverPolicyElapsed":J
    goto :goto_85

    .line 2461
    .end local v4    # "batterySaverPolicyElapsed":J
    :cond_7f
    const-wide v4, 0x757b12c00L

    add-long/2addr v4, v0

    .line 2463
    .restart local v4    # "batterySaverPolicyElapsed":J
    :goto_85
    invoke-virtual {p1, v3, v4, v5}, Lcom/android/server/alarm/Alarm;->setPolicyElapsed(IJ)Z

    move-result v2

    return v2

    .line 2423
    .end local v4    # "batterySaverPolicyElapsed":J
    :cond_8a
    :goto_8a
    invoke-virtual {p1, v3, v0, v1}, Lcom/android/server/alarm/Alarm;->setPolicyElapsed(IJ)Z

    move-result v2

    return v2
.end method

.method private adjustDeliveryTimeBasedOnBucketLocked(Lcom/android/server/alarm/Alarm;)Z
    .registers 15
    .param p1, "alarm"    # Lcom/android/server/alarm/Alarm;

    .line 2538
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getElapsedRealtime()J

    move-result-wide v0

    .line 2539
    .local v0, "nowElapsed":J
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget-boolean v2, v2, Lcom/android/server/alarm/AlarmManagerService$Constants;->USE_TARE_POLICY:Z

    const/4 v3, 0x1

    if-nez v2, :cond_88

    invoke-static {p1}, Lcom/android/server/alarm/AlarmManagerService;->isExemptFromAppStandby(Lcom/android/server/alarm/Alarm;)Z

    move-result v2

    if-nez v2, :cond_88

    iget-boolean v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mAppStandbyParole:Z

    if-eqz v2, :cond_18

    goto :goto_88

    .line 2543
    :cond_18
    iget-object v2, p1, Lcom/android/server/alarm/Alarm;->sourcePackage:Ljava/lang/String;

    .line 2544
    .local v2, "sourcePackage":Ljava/lang/String;
    iget v4, p1, Lcom/android/server/alarm/Alarm;->creatorUid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 2545
    .local v4, "sourceUserId":I
    iget-object v5, p0, Lcom/android/server/alarm/AlarmManagerService;->mUsageStatsManagerInternal:Landroid/app/usage/UsageStatsManagerInternal;

    invoke-virtual {v5, v2, v4, v0, v1}, Landroid/app/usage/UsageStatsManagerInternal;->getAppStandbyBucket(Ljava/lang/String;IJ)I

    move-result v5

    .line 2548
    .local v5, "standbyBucket":I
    iget-object v6, p0, Lcom/android/server/alarm/AlarmManagerService;->mAppWakeupHistory:Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

    invoke-virtual {v6, v2, v4}, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;->getTotalWakeupsInWindow(Ljava/lang/String;I)I

    move-result v6

    .line 2550
    .local v6, "wakeupsInWindow":I
    const/16 v7, 0x2d

    if-ne v5, v7, :cond_51

    .line 2554
    if-lez v6, :cond_80

    .line 2555
    iget-object v7, p0, Lcom/android/server/alarm/AlarmManagerService;->mAppWakeupHistory:Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

    iget-object v8, p0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget v8, v8, Lcom/android/server/alarm/AlarmManagerService$Constants;->APP_STANDBY_RESTRICTED_QUOTA:I

    invoke-virtual {v7, v2, v4, v8}, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;->getNthLastWakeupForPackage(Ljava/lang/String;II)J

    move-result-wide v7

    .line 2557
    .local v7, "lastWakeupTime":J
    sub-long v9, v0, v7

    iget-object v11, p0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget-wide v11, v11, Lcom/android/server/alarm/AlarmManagerService$Constants;->APP_STANDBY_RESTRICTED_WINDOW:J

    cmp-long v9, v9, v11

    if-gez v9, :cond_50

    .line 2558
    iget-object v9, p0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget-wide v9, v9, Lcom/android/server/alarm/AlarmManagerService$Constants;->APP_STANDBY_RESTRICTED_WINDOW:J

    add-long/2addr v9, v7

    invoke-virtual {p1, v3, v9, v10}, Lcom/android/server/alarm/Alarm;->setPolicyElapsed(IJ)Z

    move-result v3

    return v3

    .line 2561
    .end local v7    # "lastWakeupTime":J
    :cond_50
    goto :goto_80

    .line 2563
    :cond_51
    invoke-virtual {p0, v5}, Lcom/android/server/alarm/AlarmManagerService;->getQuotaForBucketLocked(I)I

    move-result v7

    .line 2564
    .local v7, "quotaForBucket":I
    if-lt v6, v7, :cond_80

    .line 2566
    iget-object v8, p0, Lcom/android/server/alarm/AlarmManagerService;->mTemporaryQuotaReserve:Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve;

    invoke-virtual {v8, v2, v4, v0, v1}, Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve;->hasQuota(Ljava/lang/String;IJ)Z

    move-result v8

    if-eqz v8, :cond_66

    .line 2569
    iput-boolean v3, p1, Lcom/android/server/alarm/Alarm;->mUsingReserveQuota:Z

    .line 2570
    invoke-virtual {p1, v3, v0, v1}, Lcom/android/server/alarm/Alarm;->setPolicyElapsed(IJ)Z

    move-result v3

    return v3

    .line 2572
    :cond_66
    if-gtz v7, :cond_6f

    .line 2574
    const-wide v8, 0x757b12c00L

    add-long/2addr v8, v0

    .local v8, "minElapsed":J
    goto :goto_7b

    .line 2578
    .end local v8    # "minElapsed":J
    :cond_6f
    iget-object v8, p0, Lcom/android/server/alarm/AlarmManagerService;->mAppWakeupHistory:Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

    invoke-virtual {v8, v2, v4, v7}, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;->getNthLastWakeupForPackage(Ljava/lang/String;II)J

    move-result-wide v8

    .line 2580
    .local v8, "t":J
    iget-object v10, p0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget-wide v10, v10, Lcom/android/server/alarm/AlarmManagerService$Constants;->APP_STANDBY_WINDOW:J

    add-long/2addr v10, v8

    move-wide v8, v10

    .line 2582
    .local v8, "minElapsed":J
    :goto_7b
    invoke-virtual {p1, v3, v8, v9}, Lcom/android/server/alarm/Alarm;->setPolicyElapsed(IJ)Z

    move-result v3

    return v3

    .line 2586
    .end local v7    # "quotaForBucket":I
    .end local v8    # "minElapsed":J
    :cond_80
    :goto_80
    const/4 v7, 0x0

    iput-boolean v7, p1, Lcom/android/server/alarm/Alarm;->mUsingReserveQuota:Z

    .line 2587
    invoke-virtual {p1, v3, v0, v1}, Lcom/android/server/alarm/Alarm;->setPolicyElapsed(IJ)Z

    move-result v3

    return v3

    .line 2540
    .end local v2    # "sourcePackage":Ljava/lang/String;
    .end local v4    # "sourceUserId":I
    .end local v5    # "standbyBucket":I
    .end local v6    # "wakeupsInWindow":I
    :cond_88
    :goto_88
    invoke-virtual {p1, v3, v0, v1}, Lcom/android/server/alarm/Alarm;->setPolicyElapsed(IJ)Z

    move-result v2

    return v2
.end method

.method private adjustDeliveryTimeBasedOnDeviceIdle(Lcom/android/server/alarm/Alarm;)Z
    .registers 15
    .param p1, "alarm"    # Lcom/android/server/alarm/Alarm;

    .line 2483
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getElapsedRealtime()J

    move-result-wide v0

    .line 2484
    .local v0, "nowElapsed":J
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    const/4 v3, 0x2

    if-eqz v2, :cond_8f

    if-ne v2, p1, :cond_f

    goto/16 :goto_8f

    .line 2489
    :cond_f
    iget v2, p1, Lcom/android/server/alarm/Alarm;->flags:I

    and-int/lit8 v2, v2, 0xa

    if-eqz v2, :cond_18

    .line 2491
    move-wide v4, v0

    .local v4, "deviceIdlePolicyTime":J
    goto/16 :goto_8a

    .line 2492
    .end local v4    # "deviceIdlePolicyTime":J
    :cond_18
    invoke-static {p1}, Lcom/android/server/alarm/AlarmManagerService;->isAllowedWhileIdleRestricted(Lcom/android/server/alarm/Alarm;)Z

    move-result v2

    if-eqz v2, :cond_5d

    .line 2494
    iget v2, p1, Lcom/android/server/alarm/Alarm;->creatorUid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 2498
    .local v2, "userId":I
    iget v4, p1, Lcom/android/server/alarm/Alarm;->flags:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_35

    .line 2499
    iget-object v4, p0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget v4, v4, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_QUOTA:I

    .line 2500
    .local v4, "quota":I
    iget-object v5, p0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget-wide v5, v5, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_WINDOW:J

    .line 2501
    .local v5, "window":J
    iget-object v7, p0, Lcom/android/server/alarm/AlarmManagerService;->mAllowWhileIdleHistory:Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

    .local v7, "history":Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;
    goto :goto_3f

    .line 2503
    .end local v4    # "quota":I
    .end local v5    # "window":J
    .end local v7    # "history":Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;
    :cond_35
    iget-object v4, p0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget v4, v4, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_COMPAT_QUOTA:I

    .line 2504
    .restart local v4    # "quota":I
    iget-object v5, p0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget-wide v5, v5, Lcom/android/server/alarm/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_COMPAT_WINDOW:J

    .line 2505
    .restart local v5    # "window":J
    iget-object v7, p0, Lcom/android/server/alarm/AlarmManagerService;->mAllowWhileIdleCompatHistory:Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

    .line 2507
    .restart local v7    # "history":Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;
    :goto_3f
    iget-object v8, p1, Lcom/android/server/alarm/Alarm;->sourcePackage:Ljava/lang/String;

    invoke-virtual {v7, v8, v2}, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;->getTotalWakeupsInWindow(Ljava/lang/String;I)I

    move-result v8

    .line 2509
    .local v8, "dispatchesInHistory":I
    if-ge v8, v4, :cond_4a

    .line 2511
    move-wide v9, v0

    move-wide v4, v9

    .local v9, "deviceIdlePolicyTime":J
    goto :goto_5c

    .line 2513
    .end local v9    # "deviceIdlePolicyTime":J
    :cond_4a
    iget-object v9, p1, Lcom/android/server/alarm/Alarm;->sourcePackage:Ljava/lang/String;

    invoke-virtual {v7, v9, v2, v4}, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;->getNthLastWakeupForPackage(Ljava/lang/String;II)J

    move-result-wide v9

    add-long/2addr v9, v5

    .line 2515
    .local v9, "whenInQuota":J
    iget-object v11, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    invoke-virtual {v11}, Lcom/android/server/alarm/Alarm;->getWhenElapsed()J

    move-result-wide v11

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v11

    move-wide v4, v11

    .line 2517
    .end local v2    # "userId":I
    .end local v5    # "window":J
    .end local v7    # "history":Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;
    .end local v8    # "dispatchesInHistory":I
    .end local v9    # "whenInQuota":J
    .local v4, "deviceIdlePolicyTime":J
    :goto_5c
    goto :goto_8a

    .end local v4    # "deviceIdlePolicyTime":J
    :cond_5d
    iget v2, p1, Lcom/android/server/alarm/Alarm;->flags:I

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_84

    .line 2518
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mLastPriorityAlarmDispatch:Landroid/util/SparseLongArray;

    iget v4, p1, Lcom/android/server/alarm/Alarm;->creatorUid:I

    const-wide/16 v5, 0x0

    invoke-virtual {v2, v4, v5, v6}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide v7

    .line 2519
    .local v7, "lastDispatch":J
    cmp-long v2, v7, v5

    if-nez v2, :cond_73

    .line 2520
    move-wide v4, v0

    goto :goto_78

    .line 2521
    :cond_73
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget-wide v4, v2, Lcom/android/server/alarm/AlarmManagerService$Constants;->PRIORITY_ALARM_DELAY:J

    add-long/2addr v4, v7

    :goto_78
    nop

    .line 2522
    .local v4, "whenAllowed":J
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    invoke-virtual {v2}, Lcom/android/server/alarm/Alarm;->getWhenElapsed()J

    move-result-wide v9

    invoke-static {v4, v5, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    .line 2523
    .end local v7    # "lastDispatch":J
    .local v4, "deviceIdlePolicyTime":J
    goto :goto_8a

    .line 2525
    .end local v4    # "deviceIdlePolicyTime":J
    :cond_84
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    invoke-virtual {v2}, Lcom/android/server/alarm/Alarm;->getWhenElapsed()J

    move-result-wide v4

    .line 2527
    .restart local v4    # "deviceIdlePolicyTime":J
    :goto_8a
    invoke-virtual {p1, v3, v4, v5}, Lcom/android/server/alarm/Alarm;->setPolicyElapsed(IJ)Z

    move-result v2

    return v2

    .line 2485
    .end local v4    # "deviceIdlePolicyTime":J
    :cond_8f
    :goto_8f
    invoke-virtual {p1, v3, v0, v1}, Lcom/android/server/alarm/Alarm;->setPolicyElapsed(IJ)Z

    move-result v2

    return v2
.end method

.method private adjustDeliveryTimeBasedOnTareLocked(Lcom/android/server/alarm/Alarm;)Z
    .registers 8
    .param p1, "alarm"    # Lcom/android/server/alarm/Alarm;

    .line 2598
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getElapsedRealtime()J

    move-result-wide v0

    .line 2599
    .local v0, "nowElapsed":J
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget-boolean v2, v2, Lcom/android/server/alarm/AlarmManagerService$Constants;->USE_TARE_POLICY:Z

    const/4 v3, 0x4

    if-eqz v2, :cond_25

    .line 2600
    invoke-static {p1}, Lcom/android/server/alarm/AlarmManagerService;->isExemptFromTare(Lcom/android/server/alarm/Alarm;)Z

    move-result v2

    if-nez v2, :cond_25

    invoke-direct {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->hasEnoughWealthLocked(Lcom/android/server/alarm/Alarm;)Z

    move-result v2

    if-eqz v2, :cond_1a

    goto :goto_25

    .line 2605
    :cond_1a
    const-wide v4, 0x757b12c00L

    add-long/2addr v4, v0

    invoke-virtual {p1, v3, v4, v5}, Lcom/android/server/alarm/Alarm;->setPolicyElapsed(IJ)Z

    move-result v2

    return v2

    .line 2601
    :cond_25
    :goto_25
    invoke-virtual {p1, v3, v0, v1}, Lcom/android/server/alarm/Alarm;->setPolicyElapsed(IJ)Z

    move-result v2

    return v2
.end method

.method private adjustIdleUntilTime(Lcom/android/server/alarm/Alarm;)Z
    .registers 19
    .param p1, "alarm"    # Lcom/android/server/alarm/Alarm;

    .line 2379
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v1, Lcom/android/server/alarm/Alarm;->flags:I

    and-int/lit8 v2, v2, 0x10

    const/4 v3, 0x0

    if-nez v2, :cond_c

    .line 2380
    return v3

    .line 2382
    :cond_c
    invoke-direct/range {p0 .. p1}, Lcom/android/server/alarm/AlarmManagerService;->restoreRequestedTime(Lcom/android/server/alarm/Alarm;)Z

    move-result v2

    .line 2383
    .local v2, "changedBeforeFuzz":Z
    iget-object v4, v0, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/alarm/Alarm;

    if-nez v4, :cond_15

    .line 2385
    return v2

    .line 2387
    :cond_15
    invoke-virtual {v4}, Lcom/android/server/alarm/Alarm;->getWhenElapsed()J

    move-result-wide v4

    .line 2390
    .local v4, "upcomingWakeFromIdle":J
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/alarm/Alarm;->getWhenElapsed()J

    move-result-wide v6

    iget-object v8, v0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget-wide v8, v8, Lcom/android/server/alarm/AlarmManagerService$Constants;->MIN_DEVICE_IDLE_FUZZ:J

    sub-long v8, v4, v8

    cmp-long v6, v6, v8

    if-gez v6, :cond_28

    .line 2392
    return v2

    .line 2394
    :cond_28
    iget-object v6, v0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v6}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getElapsedRealtime()J

    move-result-wide v6

    .line 2395
    .local v6, "nowElapsed":J
    sub-long v8, v4, v6

    .line 2397
    .local v8, "futurity":J
    iget-object v10, v0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget-wide v10, v10, Lcom/android/server/alarm/AlarmManagerService$Constants;->MIN_DEVICE_IDLE_FUZZ:J

    cmp-long v10, v8, v10

    if-gtz v10, :cond_3d

    .line 2399
    invoke-virtual {v1, v3, v6, v7}, Lcom/android/server/alarm/Alarm;->setPolicyElapsed(IJ)Z

    move-wide v15, v6

    goto :goto_5a

    .line 2401
    :cond_3d
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v10

    .line 2402
    .local v10, "random":Ljava/util/concurrent/ThreadLocalRandom;
    iget-object v11, v0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget-wide v11, v11, Lcom/android/server/alarm/AlarmManagerService$Constants;->MAX_DEVICE_IDLE_FUZZ:J

    invoke-static {v11, v12, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v11

    const-wide/16 v13, 0x1

    add-long/2addr v11, v13

    .line 2403
    .local v11, "upperBoundExcl":J
    iget-object v13, v0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget-wide v13, v13, Lcom/android/server/alarm/AlarmManagerService$Constants;->MIN_DEVICE_IDLE_FUZZ:J

    invoke-virtual {v10, v13, v14, v11, v12}, Ljava/util/concurrent/ThreadLocalRandom;->nextLong(JJ)J

    move-result-wide v13

    .line 2404
    .local v13, "fuzz":J
    move-wide v15, v6

    .end local v6    # "nowElapsed":J
    .local v15, "nowElapsed":J
    sub-long v6, v4, v13

    invoke-virtual {v1, v3, v6, v7}, Lcom/android/server/alarm/Alarm;->setPolicyElapsed(IJ)Z

    .line 2406
    .end local v10    # "random":Ljava/util/concurrent/ThreadLocalRandom;
    .end local v11    # "upperBoundExcl":J
    .end local v13    # "fuzz":J
    :goto_5a
    const/4 v3, 0x1

    return v3
.end method

.method private canAffordBillLocked(Lcom/android/server/alarm/Alarm;Lcom/android/server/tare/EconomyManagerInternal$ActionBill;)Z
    .registers 8
    .param p1, "alarm"    # Lcom/android/server/alarm/Alarm;
    .param p2, "bill"    # Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    .line 4869
    iget v0, p1, Lcom/android/server/alarm/Alarm;->creatorUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 4870
    .local v0, "userId":I
    iget-object v1, p1, Lcom/android/server/alarm/Alarm;->sourcePackage:Ljava/lang/String;

    .line 4871
    .local v1, "pkgName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mAffordabilityCache:Landroid/util/SparseArrayMap;

    .line 4872
    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArrayMap;

    .line 4873
    .local v2, "actionAffordability":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/tare/EconomyManagerInternal$ActionBill;Ljava/lang/Boolean;>;"
    if-nez v2, :cond_1d

    .line 4874
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    move-object v2, v3

    .line 4875
    iget-object v3, p0, Lcom/android/server/alarm/AlarmManagerService;->mAffordabilityCache:Landroid/util/SparseArrayMap;

    invoke-virtual {v3, v0, v1, v2}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 4878
    :cond_1d
    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 4879
    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    return v3

    .line 4882
    :cond_2e
    iget-object v3, p0, Lcom/android/server/alarm/AlarmManagerService;->mEconomyManagerInternal:Lcom/android/server/tare/EconomyManagerInternal;

    invoke-interface {v3, v0, v1, p2}, Lcom/android/server/tare/EconomyManagerInternal;->canPayFor(ILjava/lang/String;Lcom/android/server/tare/EconomyManagerInternal$ActionBill;)Z

    move-result v3

    .line 4883
    .local v3, "canAfford":Z
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, p2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4884
    return v3
.end method

.method static clampPositive(J)J
    .registers 4
    .param p0, "val"    # J

    .line 1556
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_8

    move-wide v0, p0

    goto :goto_d

    :cond_8
    const-wide v0, 0x7fffffffffffffffL

    :goto_d
    return-wide v0
.end method

.method private static native close(J)V
.end method

.method private convertToElapsed(JI)J
    .registers 8
    .param p1, "when"    # J
    .param p3, "type"    # I

    .line 1433
    invoke-static {p3}, Lcom/android/server/alarm/AlarmManagerService;->isRtc(I)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1434
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getCurrentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v2}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getElapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    sub-long/2addr p1, v0

    .line 1436
    :cond_14
    return-wide p1
.end method

.method private decrementAlarmCount(II)V
    .registers 7
    .param p1, "uid"    # I
    .param p2, "decrement"    # I

    .line 5911
    const/4 v0, 0x0

    .line 5912
    .local v0, "oldCount":I
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmsPerUid:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v1

    .line 5913
    .local v1, "uidIndex":I
    if-ltz v1, :cond_1e

    .line 5914
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmsPerUid:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v0

    .line 5915
    if-le v0, p2, :cond_19

    .line 5916
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmsPerUid:Landroid/util/SparseIntArray;

    sub-int v3, v0, p2

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseIntArray;->setValueAt(II)V

    goto :goto_1e

    .line 5918
    :cond_19
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmsPerUid:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->removeAt(I)V

    .line 5921
    :cond_1e
    :goto_1e
    if-ge v0, p2, :cond_4c

    .line 5922
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempt to decrement existing alarm count "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AlarmManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 5925
    :cond_4c
    return-void
.end method

.method private deliverPendingBackgroundAlarmsLocked(Ljava/util/ArrayList;J)V
    .registers 34
    .param p2, "nowELAPSED"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/alarm/Alarm;",
            ">;J)V"
        }
    .end annotation

    .line 1642
    .local p1, "alarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/alarm/Alarm;>;"
    move-object/from16 v0, p0

    move-object/from16 v15, p1

    move-wide/from16 v13, p2

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 1643
    .local v12, "N":I
    const/4 v1, 0x0

    .line 1644
    .local v1, "hasWakeup":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    if-ge v2, v12, :cond_9f

    .line 1645
    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/alarm/Alarm;

    .line 1646
    .local v3, "alarm":Lcom/android/server/alarm/Alarm;
    iget-boolean v4, v3, Lcom/android/server/alarm/Alarm;->wakeup:Z

    if-eqz v4, :cond_1c

    .line 1647
    const/4 v1, 0x1

    move/from16 v20, v1

    goto :goto_1e

    .line 1646
    :cond_1c
    move/from16 v20, v1

    .line 1649
    .end local v1    # "hasWakeup":Z
    .local v20, "hasWakeup":Z
    :goto_1e
    const/4 v1, 0x1

    iput v1, v3, Lcom/android/server/alarm/Alarm;->count:I

    .line 1652
    iget-wide v4, v3, Lcom/android/server/alarm/Alarm;->repeatInterval:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-lez v1, :cond_8b

    .line 1653
    iget v1, v3, Lcom/android/server/alarm/Alarm;->count:I

    int-to-long v4, v1

    invoke-virtual {v3}, Lcom/android/server/alarm/Alarm;->getRequestedElapsed()J

    move-result-wide v6

    sub-long v6, v13, v6

    iget-wide v8, v3, Lcom/android/server/alarm/Alarm;->repeatInterval:J

    div-long/2addr v6, v8

    add-long/2addr v4, v6

    long-to-int v1, v4

    iput v1, v3, Lcom/android/server/alarm/Alarm;->count:I

    .line 1655
    iget v1, v3, Lcom/android/server/alarm/Alarm;->count:I

    int-to-long v4, v1

    iget-wide v6, v3, Lcom/android/server/alarm/Alarm;->repeatInterval:J

    mul-long v21, v4, v6

    .line 1656
    .local v21, "delta":J
    invoke-virtual {v3}, Lcom/android/server/alarm/Alarm;->getRequestedElapsed()J

    move-result-wide v4

    add-long v23, v4, v21

    .local v23, "nextElapsed":J
    move-wide/from16 v4, v23

    .line 1657
    iget-wide v10, v3, Lcom/android/server/alarm/Alarm;->repeatInterval:J

    move-wide/from16 v6, p2

    move-wide/from16 v8, v23

    invoke-static/range {v6 .. v11}, Lcom/android/server/alarm/AlarmManagerService;->maxTriggerTime(JJJ)J

    move-result-wide v25

    .line 1659
    .local v25, "nextMaxElapsed":J
    iget v1, v3, Lcom/android/server/alarm/Alarm;->type:I

    iget-wide v6, v3, Lcom/android/server/alarm/Alarm;->origWhen:J

    add-long v6, v6, v21

    move/from16 v27, v2

    move-object v11, v3

    .end local v2    # "i":I
    .end local v3    # "alarm":Lcom/android/server/alarm/Alarm;
    .local v11, "alarm":Lcom/android/server/alarm/Alarm;
    .local v27, "i":I
    move-wide v2, v6

    sub-long v6, v25, v23

    iget-wide v8, v11, Lcom/android/server/alarm/Alarm;->repeatInterval:J

    iget-object v10, v11, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    const/16 v16, 0x0

    move-object/from16 v28, v11

    .end local v11    # "alarm":Lcom/android/server/alarm/Alarm;
    .local v28, "alarm":Lcom/android/server/alarm/Alarm;
    move-object/from16 v11, v16

    move/from16 v29, v12

    .end local v12    # "N":I
    .local v29, "N":I
    move-object/from16 v12, v16

    move-object/from16 v11, v28

    .end local v28    # "alarm":Lcom/android/server/alarm/Alarm;
    .restart local v11    # "alarm":Lcom/android/server/alarm/Alarm;
    iget v12, v11, Lcom/android/server/alarm/Alarm;->flags:I

    move v13, v12

    iget-object v14, v11, Lcom/android/server/alarm/Alarm;->workSource:Landroid/os/WorkSource;

    iget-object v12, v11, Lcom/android/server/alarm/Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    move-object v15, v12

    iget v12, v11, Lcom/android/server/alarm/Alarm;->uid:I

    move/from16 v16, v12

    iget-object v12, v11, Lcom/android/server/alarm/Alarm;->packageName:Ljava/lang/String;

    move-object/from16 v17, v12

    const/16 v18, 0x0

    const/16 v19, -0x1

    move-object v12, v0

    move-object/from16 v0, p0

    const/4 v11, 0x0

    const/4 v12, 0x0

    .end local v11    # "alarm":Lcom/android/server/alarm/Alarm;
    .restart local v28    # "alarm":Lcom/android/server/alarm/Alarm;
    invoke-direct/range {v0 .. v19}, Lcom/android/server/alarm/AlarmManagerService;->setImplLocked(IJJJJLandroid/app/PendingIntent;Landroid/app/IAlarmListener;Ljava/lang/String;ILandroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;ILjava/lang/String;Landroid/os/Bundle;I)V

    goto :goto_91

    .line 1652
    .end local v21    # "delta":J
    .end local v23    # "nextElapsed":J
    .end local v25    # "nextMaxElapsed":J
    .end local v27    # "i":I
    .end local v28    # "alarm":Lcom/android/server/alarm/Alarm;
    .end local v29    # "N":I
    .restart local v2    # "i":I
    .restart local v3    # "alarm":Lcom/android/server/alarm/Alarm;
    .restart local v12    # "N":I
    :cond_8b
    move/from16 v27, v2

    move-object/from16 v28, v3

    move/from16 v29, v12

    .line 1644
    .end local v2    # "i":I
    .end local v3    # "alarm":Lcom/android/server/alarm/Alarm;
    .end local v12    # "N":I
    .restart local v27    # "i":I
    .restart local v29    # "N":I
    :goto_91
    add-int/lit8 v2, v27, 0x1

    move-object/from16 v0, p0

    move-object/from16 v15, p1

    move-wide/from16 v13, p2

    move/from16 v1, v20

    move/from16 v12, v29

    .end local v27    # "i":I
    .restart local v2    # "i":I
    goto/16 :goto_c

    .end local v20    # "hasWakeup":Z
    .end local v29    # "N":I
    .restart local v1    # "hasWakeup":Z
    .restart local v12    # "N":I
    :cond_9f
    move/from16 v27, v2

    move/from16 v29, v12

    .line 1666
    .end local v2    # "i":I
    .end local v12    # "N":I
    .restart local v29    # "N":I
    if-nez v1, :cond_db

    move-object/from16 v0, p0

    move-wide/from16 v2, p2

    invoke-virtual {v0, v2, v3}, Lcom/android/server/alarm/AlarmManagerService;->checkAllowNonWakeupDelayLocked(J)Z

    move-result v4

    if-eqz v4, :cond_d8

    .line 1668
    iget-object v4, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_c7

    .line 1669
    iput-wide v2, v0, Lcom/android/server/alarm/AlarmManagerService;->mStartCurrentDelayTime:J

    .line 1670
    nop

    .line 1671
    invoke-virtual {v0, v2, v3}, Lcom/android/server/alarm/AlarmManagerService;->currentNonWakeupFuzzLocked(J)J

    move-result-wide v4

    const-wide/16 v6, 0x3

    mul-long/2addr v4, v6

    const-wide/16 v6, 0x2

    div-long/2addr v4, v6

    add-long/2addr v4, v2

    iput-wide v4, v0, Lcom/android/server/alarm/AlarmManagerService;->mNextNonWakeupDeliveryTime:J

    .line 1673
    :cond_c7
    iget-object v4, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    move-object/from16 v5, p1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1674
    iget v4, v0, Lcom/android/server/alarm/AlarmManagerService;->mNumDelayedAlarms:I

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/2addr v4, v6

    iput v4, v0, Lcom/android/server/alarm/AlarmManagerService;->mNumDelayedAlarms:I

    goto :goto_10f

    .line 1666
    :cond_d8
    move-object/from16 v5, p1

    goto :goto_e1

    :cond_db
    move-object/from16 v0, p0

    move-object/from16 v5, p1

    move-wide/from16 v2, p2

    .line 1680
    :goto_e1
    iget-object v4, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_104

    .line 1681
    iget-object v4, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1682
    iget-wide v6, v0, Lcom/android/server/alarm/AlarmManagerService;->mStartCurrentDelayTime:J

    sub-long v6, v2, v6

    .line 1683
    .local v6, "thisDelayTime":J
    iget-wide v8, v0, Lcom/android/server/alarm/AlarmManagerService;->mTotalDelayTime:J

    add-long/2addr v8, v6

    iput-wide v8, v0, Lcom/android/server/alarm/AlarmManagerService;->mTotalDelayTime:J

    .line 1684
    iget-wide v8, v0, Lcom/android/server/alarm/AlarmManagerService;->mMaxDelayTime:J

    cmp-long v4, v8, v6

    if-gez v4, :cond_ff

    .line 1685
    iput-wide v6, v0, Lcom/android/server/alarm/AlarmManagerService;->mMaxDelayTime:J

    .line 1687
    :cond_ff
    iget-object v4, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1689
    .end local v6    # "thisDelayTime":J
    :cond_104
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/alarm/AlarmManagerService;->calculateDeliveryPriorities(Ljava/util/ArrayList;)V

    .line 1690
    iget-object v4, v0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmDispatchComparator:Ljava/util/Comparator;

    invoke-static {v5, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1691
    invoke-virtual/range {p0 .. p3}, Lcom/android/server/alarm/AlarmManagerService;->deliverAlarmsLocked(Ljava/util/ArrayList;J)V

    .line 1693
    :goto_10f
    return-void
.end method

.method static final dumpAlarmList(Landroid/util/IndentingPrintWriter;Ljava/util/ArrayList;JLjava/text/SimpleDateFormat;)V
    .registers 10
    .param p0, "ipw"    # Landroid/util/IndentingPrintWriter;
    .param p2, "nowELAPSED"    # J
    .param p4, "sdf"    # Ljava/text/SimpleDateFormat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/IndentingPrintWriter;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/alarm/Alarm;",
            ">;J",
            "Ljava/text/SimpleDateFormat;",
            ")V"
        }
    .end annotation

    .line 4270
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/alarm/Alarm;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4271
    .local v0, "n":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_6
    if-ltz v1, :cond_35

    .line 4272
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/alarm/Alarm;

    .line 4273
    .local v2, "a":Lcom/android/server/alarm/Alarm;
    iget v3, v2, Lcom/android/server/alarm/Alarm;->type:I

    invoke-static {v3}, Lcom/android/server/alarm/Alarm;->typeToString(I)Ljava/lang/String;

    move-result-object v3

    .line 4274
    .local v3, "label":Ljava/lang/String;
    invoke-virtual {p0, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4275
    const-string v4, " #"

    invoke-virtual {p0, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4276
    sub-int v4, v0, v1

    invoke-virtual {p0, v4}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 4277
    const-string v4, ": "

    invoke-virtual {p0, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 4278
    invoke-virtual {p0, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 4279
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 4280
    invoke-virtual {v2, p0, p2, p3, p4}, Lcom/android/server/alarm/Alarm;->dump(Landroid/util/IndentingPrintWriter;JLjava/text/SimpleDateFormat;)V

    .line 4281
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 4271
    .end local v2    # "a":Lcom/android/server/alarm/Alarm;
    .end local v3    # "label":Ljava/lang/String;
    add-int/lit8 v1, v1, -0x1

    goto :goto_6

    .line 4283
    .end local v1    # "i":I
    :cond_35
    return-void
.end method

.method static findAllUnrestrictedPendingBackgroundAlarmsLockedInner(Landroid/util/SparseArray;Ljava/util/ArrayList;Ljava/util/function/Predicate;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/alarm/Alarm;",
            ">;>;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/alarm/Alarm;",
            ">;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/alarm/Alarm;",
            ">;)V"
        }
    .end annotation

    .line 1620
    .local p0, "pendingAlarms":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/ArrayList<Lcom/android/server/alarm/Alarm;>;>;"
    .local p1, "unrestrictedAlarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/alarm/Alarm;>;"
    .local p2, "isBackgroundRestricted":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/alarm/Alarm;>;"
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "uidIndex":I
    :goto_6
    if-ltz v0, :cond_38

    .line 1621
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 1623
    .local v1, "alarmsForUid":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/alarm/Alarm;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "alarmIndex":I
    :goto_14
    if-ltz v2, :cond_2c

    .line 1624
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/alarm/Alarm;

    .line 1626
    .local v3, "alarm":Lcom/android/server/alarm/Alarm;
    invoke-interface {p2, v3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23

    .line 1627
    goto :goto_29

    .line 1630
    :cond_23
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1631
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1623
    .end local v3    # "alarm":Lcom/android/server/alarm/Alarm;
    :goto_29
    add-int/lit8 v2, v2, -0x1

    goto :goto_14

    .line 1634
    .end local v2    # "alarmIndex":I
    :cond_2c
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_35

    .line 1635
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->removeAt(I)V

    .line 1620
    .end local v1    # "alarmsForUid":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/alarm/Alarm;>;"
    :cond_35
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 1638
    .end local v0    # "uidIndex":I
    :cond_38
    return-void
.end method

.method private static formatNextAlarm(Landroid/content/Context;Landroid/app/AlarmManager$AlarmClockInfo;I)Ljava/lang/String;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "info"    # Landroid/app/AlarmManager$AlarmClockInfo;
    .param p2, "userId"    # I

    .line 3958
    invoke-static {p0, p2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "EHm"

    goto :goto_b

    :cond_9
    const-string v0, "Ehma"

    .line 3959
    .local v0, "skeleton":Ljava/lang/String;
    :goto_b
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3960
    .local v1, "pattern":Ljava/lang/String;
    if-nez p1, :cond_18

    const-string v2, ""

    goto :goto_24

    .line 3961
    :cond_18
    invoke-virtual {p1}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3960
    :goto_24
    return-object v2
.end method

.method private static getAlarmAttributionUid(Lcom/android/server/alarm/Alarm;)I
    .registers 2
    .param p0, "alarm"    # Lcom/android/server/alarm/Alarm;

    .line 4859
    iget-object v0, p0, Lcom/android/server/alarm/Alarm;->workSource:Landroid/os/WorkSource;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/server/alarm/Alarm;->workSource:Landroid/os/WorkSource;

    invoke-virtual {v0}, Landroid/os/WorkSource;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_13

    .line 4860
    iget-object v0, p0, Lcom/android/server/alarm/Alarm;->workSource:Landroid/os/WorkSource;

    invoke-virtual {v0}, Landroid/os/WorkSource;->getAttributionUid()I

    move-result v0

    return v0

    .line 4863
    :cond_13
    iget v0, p0, Lcom/android/server/alarm/Alarm;->creatorUid:I

    return v0
.end method

.method private getAlarmOperationBundle(Lcom/android/server/alarm/Alarm;)Landroid/os/Bundle;
    .registers 3
    .param p1, "alarm"    # Lcom/android/server/alarm/Alarm;

    .line 4893
    iget-object v0, p1, Lcom/android/server/alarm/Alarm;->mIdleOptions:Landroid/os/Bundle;

    if-eqz v0, :cond_7

    .line 4894
    iget-object v0, p1, Lcom/android/server/alarm/Alarm;->mIdleOptions:Landroid/os/Bundle;

    return-object v0

    .line 4896
    :cond_7
    iget-object v0, p1, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->isActivity()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 4897
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mActivityOptsRestrictBal:Landroid/app/ActivityOptions;

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    .line 4899
    :cond_16
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mBroadcastOptsRestrictBal:Landroid/app/BroadcastOptions;

    invoke-virtual {v0}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method private getGreezeManagerService()V
    .registers 2

    .line 5426
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mGreezeManagerService:Landroid/os/IBinder;

    if-nez v0, :cond_d

    .line 5427
    const-string/jumbo v0, "greezer"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mGreezeManagerService:Landroid/os/IBinder;

    .line 5429
    :cond_d
    return-void
.end method

.method private static native getNextAlarm(JI)J
.end method

.method private final getStatsLocked(ILjava/lang/String;)Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;
    .registers 6
    .param p1, "uid"    # I
    .param p2, "pkgName"    # Ljava/lang/String;

    .line 5409
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 5410
    .local v0, "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;>;"
    if-nez v0, :cond_15

    .line 5411
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    move-object v0, v1

    .line 5412
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5414
    :cond_15
    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;

    .line 5415
    .local v1, "bs":Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;
    if-nez v1, :cond_26

    .line 5416
    new-instance v2, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;

    invoke-direct {v2, p1, p2}, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;-><init>(ILjava/lang/String;)V

    move-object v1, v2

    .line 5417
    invoke-virtual {v0, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5419
    :cond_26
    return-object v1
.end method

.method private final getStatsLocked(Landroid/app/PendingIntent;)Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;
    .registers 5
    .param p1, "pi"    # Landroid/app/PendingIntent;

    .line 5403
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v0

    .line 5404
    .local v0, "pkg":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getCreatorUid()I

    move-result v1

    .line 5405
    .local v1, "uid":I
    invoke-direct {p0, v1, v0}, Lcom/android/server/alarm/AlarmManagerService;->getStatsLocked(ILjava/lang/String;)Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;

    move-result-object v2

    return-object v2
.end method

.method private hasEnoughWealthLocked(Lcom/android/server/alarm/Alarm;)Z
    .registers 3
    .param p1, "alarm"    # Lcom/android/server/alarm/Alarm;

    .line 4889
    invoke-static {p1}, Lcom/android/server/alarm/TareBill;->getAppropriateBill(Lcom/android/server/alarm/Alarm;)Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/alarm/AlarmManagerService;->canAffordBillLocked(Lcom/android/server/alarm/Alarm;Lcom/android/server/tare/EconomyManagerInternal$ActionBill;)Z

    move-result v0

    return v0
.end method

.method private incrementAlarmCount(I)V
    .registers 6
    .param p1, "uid"    # I

    .line 5878
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmsPerUid:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    .line 5879
    .local v0, "uidIndex":I
    const/4 v1, 0x1

    if-ltz v0, :cond_14

    .line 5880
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmsPerUid:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {v2, v0, v3}, Landroid/util/SparseIntArray;->setValueAt(II)V

    goto :goto_19

    .line 5882
    :cond_14
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmsPerUid:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 5884
    :goto_19
    return-void
.end method

.method private static native init()J
.end method

.method private static isAllowedWhileIdleRestricted(Lcom/android/server/alarm/Alarm;)Z
    .registers 2
    .param p0, "a"    # Lcom/android/server/alarm/Alarm;

    .line 2473
    iget v0, p0, Lcom/android/server/alarm/Alarm;->flags:I

    and-int/lit8 v0, v0, 0x24

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private isBackgroundRestricted(Lcom/android/server/alarm/Alarm;)Z
    .registers 6
    .param p1, "alarm"    # Lcom/android/server/alarm/Alarm;

    .line 4300
    iget-object v0, p1, Lcom/android/server/alarm/Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 4302
    return v1

    .line 4304
    :cond_6
    iget-object v0, p1, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    if-eqz v0, :cond_13

    iget-object v0, p1, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->isActivity()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 4306
    return v1

    .line 4308
    :cond_13
    iget-object v0, p1, Lcom/android/server/alarm/Alarm;->sourcePackage:Ljava/lang/String;

    .line 4309
    .local v0, "sourcePackage":Ljava/lang/String;
    iget v2, p1, Lcom/android/server/alarm/Alarm;->creatorUid:I

    .line 4310
    .local v2, "sourceUid":I
    invoke-static {v2}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 4311
    return v1

    .line 4313
    :cond_1e
    iget-object v3, p0, Lcom/android/server/alarm/AlarmManagerService;->mAppStateTracker:Lcom/android/server/AppStateTrackerImpl;

    if-eqz v3, :cond_29

    invoke-virtual {v3, v2, v0}, Lcom/android/server/AppStateTrackerImpl;->areAlarmsRestricted(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_29

    const/4 v1, 0x1

    :cond_29
    return v1
.end method

.method private static isExactAlarmChangeEnabled(Ljava/lang/String;I)Z
    .registers 5
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "userId"    # I

    .line 3093
    nop

    .line 3094
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    .line 3093
    const-wide/32 v1, 0xa35edc1

    invoke-static {v1, v2, p0, v0}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    return v0
.end method

.method static isExemptFromAppStandby(Lcom/android/server/alarm/Alarm;)Z
    .registers 2
    .param p0, "a"    # Lcom/android/server/alarm/Alarm;

    .line 4558
    iget-object v0, p0, Lcom/android/server/alarm/Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    if-nez v0, :cond_15

    iget v0, p0, Lcom/android/server/alarm/Alarm;->creatorUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v0

    if-nez v0, :cond_15

    iget v0, p0, Lcom/android/server/alarm/Alarm;->flags:I

    and-int/lit8 v0, v0, 0xc

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

.method private static isExemptFromBatterySaver(Lcom/android/server/alarm/Alarm;)Z
    .registers 3
    .param p0, "alarm"    # Lcom/android/server/alarm/Alarm;

    .line 4286
    iget-object v0, p0, Lcom/android/server/alarm/Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    .line 4287
    return v1

    .line 4289
    :cond_6
    iget-object v0, p0, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    .line 4290
    invoke-virtual {v0}, Landroid/app/PendingIntent;->isActivity()Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->isForegroundService()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 4291
    :cond_1a
    return v1

    .line 4293
    :cond_1b
    iget v0, p0, Lcom/android/server/alarm/Alarm;->creatorUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 4294
    return v1

    .line 4296
    :cond_24
    const/4 v0, 0x0

    return v0
.end method

.method static isExemptFromTare(Lcom/android/server/alarm/Alarm;)Z
    .registers 2
    .param p0, "a"    # Lcom/android/server/alarm/Alarm;

    .line 4564
    iget-object v0, p0, Lcom/android/server/alarm/Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    if-nez v0, :cond_15

    iget v0, p0, Lcom/android/server/alarm/Alarm;->creatorUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v0

    if-nez v0, :cond_15

    iget v0, p0, Lcom/android/server/alarm/Alarm;->flags:I

    and-int/lit8 v0, v0, 0x8

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

.method private isIdlingImpl()Z
    .registers 3

    .line 3833
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3834
    :try_start_3
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    if-eqz v1, :cond_9

    const/4 v1, 0x1

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    monitor-exit v0

    return v1

    .line 3835
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method private isNeedCachedAlarmForAurogon(I)Z
    .registers 8
    .param p1, "uid"    # I

    .line 5462
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mGreezeManagerService:Landroid/os/IBinder;

    if-nez v0, :cond_f

    .line 5463
    invoke-direct {p0}, Lcom/android/server/alarm/AlarmManagerService;->getGreezeManagerService()V

    .line 5464
    const-string v0, "Aurogon"

    const-string/jumbo v1, "mGreezeManagerService == null"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5467
    :cond_f
    const/4 v0, 0x0

    .line 5468
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mGreezeManagerService:Landroid/os/IBinder;

    if-eqz v1, :cond_5a

    .line 5469
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5470
    .local v1, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 5472
    .local v2, "reply":Landroid/os/Parcel;
    :try_start_1c
    const-string/jumbo v3, "miui.greeze.IGreezeManager"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5473
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5474
    iget-object v3, p0, Lcom/android/server/alarm/AlarmManagerService;->mGreezeManagerService:Landroid/os/IBinder;

    const/16 v4, 0x14

    const/4 v5, 0x0

    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5475
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 5476
    invoke-virtual {v2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_34} :catch_42
    .catchall {:try_start_1c .. :try_end_34} :catchall_40

    move v0, v3

    .line 5480
    if-eqz v1, :cond_3a

    .line 5481
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5483
    :cond_3a
    if-eqz v2, :cond_5a

    .line 5484
    :goto_3c
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    goto :goto_5a

    .line 5480
    :catchall_40
    move-exception v3

    goto :goto_4f

    .line 5477
    :catch_42
    move-exception v3

    .line 5478
    .local v3, "e":Ljava/lang/Exception;
    :try_start_43
    invoke-virtual {v3}, Ljava/lang/Exception;->fillInStackTrace()Ljava/lang/Throwable;
    :try_end_46
    .catchall {:try_start_43 .. :try_end_46} :catchall_40

    .line 5480
    nop

    .end local v3    # "e":Ljava/lang/Exception;
    if-eqz v1, :cond_4c

    .line 5481
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5483
    :cond_4c
    if-eqz v2, :cond_5a

    .line 5484
    goto :goto_3c

    .line 5480
    :goto_4f
    if-eqz v1, :cond_54

    .line 5481
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5483
    :cond_54
    if-eqz v2, :cond_59

    .line 5484
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 5486
    :cond_59
    throw v3

    .line 5488
    .end local v1    # "data":Landroid/os/Parcel;
    .end local v2    # "reply":Landroid/os/Parcel;
    :cond_5a
    :goto_5a
    return v0
.end method

.method static isRtc(I)Z
    .registers 2
    .param p0, "type"    # I

    .line 1429
    const/4 v0, 0x1

    if-eq p0, v0, :cond_7

    if-nez p0, :cond_6

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :cond_7
    :goto_7
    return v0
.end method

.method private isScheduleExactAlarmDeniedByDefault(Ljava/lang/String;I)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 3103
    nop

    .line 3104
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    .line 3103
    const-wide/32 v1, 0xd7f327a

    invoke-static {v1, v2, p1, v0}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    return v0
.end method

.method static isTimeTickAlarm(Lcom/android/server/alarm/Alarm;)Z
    .registers 3
    .param p0, "a"    # Lcom/android/server/alarm/Alarm;

    .line 324
    iget v0, p0, Lcom/android/server/alarm/Alarm;->uid:I

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_12

    iget-object v0, p0, Lcom/android/server/alarm/Alarm;->listenerTag:Ljava/lang/String;

    const-string v1, "TIME_TICK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method private isUidFrozen(I)Z
    .registers 8
    .param p1, "uid"    # I

    .line 5432
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mGreezeManagerService:Landroid/os/IBinder;

    if-nez v0, :cond_7

    .line 5433
    invoke-direct {p0}, Lcom/android/server/alarm/AlarmManagerService;->getGreezeManagerService()V

    .line 5436
    :cond_7
    const/4 v0, 0x0

    .line 5437
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mGreezeManagerService:Landroid/os/IBinder;

    if-eqz v1, :cond_52

    .line 5438
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5439
    .local v1, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 5441
    .local v2, "reply":Landroid/os/Parcel;
    :try_start_14
    const-string/jumbo v3, "miui.greeze.IGreezeManager"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5442
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5443
    iget-object v3, p0, Lcom/android/server/alarm/AlarmManagerService;->mGreezeManagerService:Landroid/os/IBinder;

    const/16 v4, 0x11

    const/4 v5, 0x0

    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5444
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 5445
    invoke-virtual {v2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_2c} :catch_3a
    .catchall {:try_start_14 .. :try_end_2c} :catchall_38

    move v0, v3

    .line 5449
    if-eqz v1, :cond_32

    .line 5450
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5452
    :cond_32
    if-eqz v2, :cond_52

    .line 5453
    :goto_34
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    goto :goto_52

    .line 5449
    :catchall_38
    move-exception v3

    goto :goto_47

    .line 5446
    :catch_3a
    move-exception v3

    .line 5447
    .local v3, "e":Ljava/lang/Exception;
    :try_start_3b
    invoke-virtual {v3}, Ljava/lang/Exception;->fillInStackTrace()Ljava/lang/Throwable;
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_38

    .line 5449
    nop

    .end local v3    # "e":Ljava/lang/Exception;
    if-eqz v1, :cond_44

    .line 5450
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5452
    :cond_44
    if-eqz v2, :cond_52

    .line 5453
    goto :goto_34

    .line 5449
    :goto_47
    if-eqz v1, :cond_4c

    .line 5450
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5452
    :cond_4c
    if-eqz v2, :cond_51

    .line 5453
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 5455
    :cond_51
    throw v3

    .line 5458
    .end local v1    # "data":Landroid/os/Parcel;
    .end local v2    # "reply":Landroid/os/Parcel;
    :cond_52
    :goto_52
    return v0
.end method

.method private static isUseExactAlarmEnabled(Ljava/lang/String;I)Z
    .registers 5
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "userId"    # I

    .line 3098
    nop

    .line 3099
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    .line 3098
    const-wide/32 v1, 0xd068d35

    invoke-static {v1, v2, p0, v0}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$dumpImpl$12(Landroid/util/IndentingPrintWriter;ILjava/lang/String;Landroid/util/ArrayMap;)V
    .registers 7
    .param p0, "pw"    # Landroid/util/IndentingPrintWriter;
    .param p1, "userId"    # I
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "billMap"    # Landroid/util/ArrayMap;

    .line 3123
    invoke-virtual {p3}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 3124
    .local v0, "numBills":I
    if-lez v0, :cond_39

    .line 3125
    invoke-virtual {p0, p1}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 3126
    const-string v1, ":"

    invoke-virtual {p0, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3127
    invoke-virtual {p0, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3128
    invoke-virtual {p0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3130
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3131
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_18
    if-ge v1, v0, :cond_36

    .line 3132
    invoke-virtual {p3, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    invoke-static {v2}, Lcom/android/server/alarm/TareBill;->getName(Lcom/android/server/tare/EconomyManagerInternal$ActionBill;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3133
    const-string v2, ": "

    invoke-virtual {p0, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3134
    invoke-virtual {p3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 3131
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 3136
    .end local v1    # "i":I
    :cond_36
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3138
    :cond_39
    return-void
.end method

.method static synthetic lambda$maybeUnregisterTareListenerLocked$8(Lcom/android/server/alarm/Alarm;Lcom/android/server/tare/EconomyManagerInternal$ActionBill;Lcom/android/server/alarm/Alarm;)Z
    .registers 5
    .param p0, "alarm"    # Lcom/android/server/alarm/Alarm;
    .param p1, "bill"    # Lcom/android/server/tare/EconomyManagerInternal$ActionBill;
    .param p2, "a"    # Lcom/android/server/alarm/Alarm;

    .line 2625
    iget v0, p0, Lcom/android/server/alarm/Alarm;->creatorUid:I

    iget v1, p2, Lcom/android/server/alarm/Alarm;->creatorUid:I

    if-ne v0, v1, :cond_1c

    iget-object v0, p0, Lcom/android/server/alarm/Alarm;->sourcePackage:Ljava/lang/String;

    iget-object v1, p2, Lcom/android/server/alarm/Alarm;->sourcePackage:Ljava/lang/String;

    .line 2626
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 2627
    invoke-static {p2}, Lcom/android/server/alarm/TareBill;->getAppropriateBill(Lcom/android/server/alarm/Alarm;)Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/tare/EconomyManagerInternal$ActionBill;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    .line 2625
    :goto_1d
    return v0
.end method

.method static synthetic lambda$removeExactAlarmsOnPermissionRevoked$13(ILjava/lang/String;Lcom/android/server/alarm/Alarm;)Z
    .registers 7
    .param p0, "uid"    # I
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "a"    # Lcom/android/server/alarm/Alarm;

    .line 4065
    iget v0, p2, Lcom/android/server/alarm/Alarm;->uid:I

    if-ne v0, p0, :cond_16

    iget-object v0, p2, Lcom/android/server/alarm/Alarm;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-wide v0, p2, Lcom/android/server/alarm/Alarm;->windowLength:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    return v0
.end method

.method static synthetic lambda$removeLocked$16(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;Lcom/android/server/alarm/Alarm;)Z
    .registers 4
    .param p0, "operation"    # Landroid/app/PendingIntent;
    .param p1, "directReceiver"    # Landroid/app/IAlarmListener;
    .param p2, "a"    # Lcom/android/server/alarm/Alarm;

    .line 4152
    invoke-virtual {p2, p0, p1}, Lcom/android/server/alarm/Alarm;->matches(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$removeLocked$17(ILcom/android/server/alarm/Alarm;)Z
    .registers 3
    .param p0, "uid"    # I
    .param p1, "a"    # Lcom/android/server/alarm/Alarm;

    .line 4161
    iget v0, p1, Lcom/android/server/alarm/Alarm;->uid:I

    if-ne v0, p0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method static synthetic lambda$removeLocked$18(Ljava/lang/String;Lcom/android/server/alarm/Alarm;)Z
    .registers 3
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "a"    # Lcom/android/server/alarm/Alarm;

    .line 4173
    invoke-virtual {p1, p0}, Lcom/android/server/alarm/Alarm;->matches(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$removeUserLocked$20(ILcom/android/server/alarm/Alarm;)Z
    .registers 3
    .param p0, "userHandle"    # I
    .param p1, "a"    # Lcom/android/server/alarm/Alarm;

    .line 4195
    iget v0, p1, Lcom/android/server/alarm/Alarm;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    if-ne v0, p0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method static maxTriggerTime(JJJ)J
    .registers 14
    .param p0, "now"    # J
    .param p2, "triggerAtTime"    # J
    .param p4, "interval"    # J

    .line 1458
    const-wide/16 v0, 0x0

    cmp-long v2, p4, v0

    if-nez v2, :cond_9

    .line 1459
    sub-long v2, p2, p0

    goto :goto_a

    .line 1460
    :cond_9
    move-wide v2, p4

    :goto_a
    nop

    .line 1461
    .local v2, "futurity":J
    const-wide/16 v4, 0x2710

    cmp-long v4, v2, v4

    if-gez v4, :cond_13

    .line 1462
    const-wide/16 v2, 0x0

    .line 1464
    :cond_13
    const-wide/high16 v4, 0x3fe8000000000000L    # 0.75

    long-to-double v6, v2

    mul-double/2addr v6, v4

    double-to-long v4, v6

    add-long/2addr v4, p2

    .line 1469
    .local v4, "maxElapsed":J
    cmp-long v0, p4, v0

    if-nez v0, :cond_25

    .line 1470
    const-wide/32 v0, 0x36ee80

    add-long/2addr v0, p2

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    .line 1472
    :cond_25
    invoke-static {v4, v5}, Lcom/android/server/alarm/AlarmManagerService;->clampPositive(J)J

    move-result-wide v0

    return-wide v0
.end method

.method private maybeUnregisterTareListenerLocked(Lcom/android/server/alarm/Alarm;)V
    .registers 8
    .param p1, "alarm"    # Lcom/android/server/alarm/Alarm;

    .line 2620
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget-boolean v0, v0, Lcom/android/server/alarm/AlarmManagerService$Constants;->USE_TARE_POLICY:Z

    if-nez v0, :cond_7

    .line 2621
    return-void

    .line 2623
    :cond_7
    invoke-static {p1}, Lcom/android/server/alarm/TareBill;->getAppropriateBill(Lcom/android/server/alarm/Alarm;)Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    move-result-object v0

    .line 2624
    .local v0, "bill":Lcom/android/server/tare/EconomyManagerInternal$ActionBill;
    new-instance v1, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda11;

    invoke-direct {v1, p1, v0}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/alarm/Alarm;Lcom/android/server/tare/EconomyManagerInternal$ActionBill;)V

    .line 2628
    .local v1, "isSameAlarmTypeForSameApp":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/alarm/Alarm;>;"
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    invoke-interface {v2, v1}, Lcom/android/server/alarm/AlarmStore;->getCount(Ljava/util/function/Predicate;)I

    move-result v2

    if-nez v2, :cond_36

    .line 2629
    iget v2, p1, Lcom/android/server/alarm/Alarm;->creatorUid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 2630
    .local v2, "userId":I
    iget-object v3, p0, Lcom/android/server/alarm/AlarmManagerService;->mEconomyManagerInternal:Lcom/android/server/tare/EconomyManagerInternal;

    iget-object v4, p1, Lcom/android/server/alarm/Alarm;->sourcePackage:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/alarm/AlarmManagerService;->mAffordabilityChangeListener:Lcom/android/server/tare/EconomyManagerInternal$AffordabilityChangeListener;

    invoke-interface {v3, v2, v4, v5, v0}, Lcom/android/server/tare/EconomyManagerInternal;->unregisterAffordabilityChangeListener(ILjava/lang/String;Lcom/android/server/tare/EconomyManagerInternal$AffordabilityChangeListener;Lcom/android/server/tare/EconomyManagerInternal$ActionBill;)V

    .line 2635
    iget-object v3, p0, Lcom/android/server/alarm/AlarmManagerService;->mAffordabilityCache:Landroid/util/SparseArrayMap;

    iget-object v4, p1, Lcom/android/server/alarm/Alarm;->sourcePackage:Ljava/lang/String;

    .line 2636
    invoke-virtual {v3, v2, v4}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArrayMap;

    .line 2637
    .local v3, "actionAffordability":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/tare/EconomyManagerInternal$ActionBill;Ljava/lang/Boolean;>;"
    if-eqz v3, :cond_36

    .line 2638
    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2641
    .end local v2    # "userId":I
    .end local v3    # "actionAffordability":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/tare/EconomyManagerInternal$ActionBill;Ljava/lang/Boolean;>;"
    :cond_36
    return-void
.end method

.method private notifyBroadcastAlarmCompleteLocked(I)V
    .registers 5
    .param p1, "uid"    # I

    .line 1779
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mInFlightListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1780
    .local v0, "numListeners":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_17

    .line 1781
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mInFlightListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AlarmManagerInternal$InFlightListener;

    invoke-interface {v2, p1}, Lcom/android/server/AlarmManagerInternal$InFlightListener;->broadcastAlarmComplete(I)V

    .line 1780
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1783
    .end local v1    # "i":I
    :cond_17
    return-void
.end method

.method private notifyBroadcastAlarmPendingLocked(I)V
    .registers 5
    .param p1, "uid"    # I

    .line 1772
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mInFlightListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1773
    .local v0, "numListeners":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_17

    .line 1774
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mInFlightListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AlarmManagerInternal$InFlightListener;

    invoke-interface {v2, p1}, Lcom/android/server/AlarmManagerInternal$InFlightListener;->broadcastAlarmPending(I)V

    .line 1773
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1776
    .end local v1    # "i":I
    :cond_17
    return-void
.end method

.method private registerTareListener(Lcom/android/server/alarm/Alarm;)V
    .registers 7
    .param p1, "alarm"    # Lcom/android/server/alarm/Alarm;

    .line 2609
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget-boolean v0, v0, Lcom/android/server/alarm/AlarmManagerService$Constants;->USE_TARE_POLICY:Z

    if-nez v0, :cond_7

    .line 2610
    return-void

    .line 2612
    :cond_7
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mEconomyManagerInternal:Lcom/android/server/tare/EconomyManagerInternal;

    iget v1, p1, Lcom/android/server/alarm/Alarm;->creatorUid:I

    .line 2613
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    iget-object v2, p1, Lcom/android/server/alarm/Alarm;->sourcePackage:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/alarm/AlarmManagerService;->mAffordabilityChangeListener:Lcom/android/server/tare/EconomyManagerInternal$AffordabilityChangeListener;

    .line 2614
    invoke-static {p1}, Lcom/android/server/alarm/TareBill;->getAppropriateBill(Lcom/android/server/alarm/Alarm;)Lcom/android/server/tare/EconomyManagerInternal$ActionBill;

    move-result-object v4

    .line 2612
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/server/tare/EconomyManagerInternal;->registerAffordabilityChangeListener(ILjava/lang/String;Lcom/android/server/tare/EconomyManagerInternal$AffordabilityChangeListener;Lcom/android/server/tare/EconomyManagerInternal$ActionBill;)V

    .line 2615
    return-void
.end method

.method private removeAlarmsInternalLocked(Ljava/util/function/Predicate;I)V
    .registers 23
    .param p2, "reason"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/alarm/Alarm;",
            ">;I)V"
        }
    .end annotation

    .line 4079
    .local p1, "whichAlarms":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/alarm/Alarm;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v2}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getCurrentTimeMillis()J

    move-result-wide v10

    .line 4080
    .local v10, "nowRtc":J
    iget-object v2, v0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v2}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getElapsedRealtime()J

    move-result-wide v12

    .line 4082
    .local v12, "nowElapsed":J
    iget-object v2, v0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    invoke-interface {v2, v1}, Lcom/android/server/alarm/AlarmStore;->remove(Ljava/util/function/Predicate;)Ljava/util/ArrayList;

    move-result-object v2

    .line 4083
    .local v2, "removedAlarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/alarm/Alarm;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    const/4 v14, 0x1

    xor-int/2addr v3, v14

    move v15, v3

    .line 4085
    .local v15, "removedFromStore":Z
    iget-object v3, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    sub-int/2addr v3, v14

    .local v3, "i":I
    :goto_24
    if-ltz v3, :cond_5b

    .line 4086
    iget-object v4, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 4087
    .local v4, "alarmsForUid":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/alarm/Alarm;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v14

    .local v5, "j":I
    :goto_33
    if-ltz v5, :cond_4d

    .line 4088
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/alarm/Alarm;

    .line 4089
    .local v6, "alarm":Lcom/android/server/alarm/Alarm;
    invoke-interface {v1, v6}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4a

    .line 4090
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/alarm/Alarm;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4087
    .end local v6    # "alarm":Lcom/android/server/alarm/Alarm;
    :cond_4a
    add-int/lit8 v5, v5, -0x1

    goto :goto_33

    .line 4093
    .end local v5    # "j":I
    :cond_4d
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_58

    .line 4094
    iget-object v5, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->removeAt(I)V

    .line 4085
    .end local v4    # "alarmsForUid":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/alarm/Alarm;>;"
    :cond_58
    add-int/lit8 v3, v3, -0x1

    goto :goto_24

    .line 4097
    .end local v3    # "i":I
    :cond_5b
    iget-object v3, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v14

    .restart local v3    # "i":I
    :goto_62
    if-ltz v3, :cond_80

    .line 4098
    iget-object v4, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/alarm/Alarm;

    .line 4099
    .local v4, "a":Lcom/android/server/alarm/Alarm;
    invoke-interface {v1, v4}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7d

    .line 4100
    iget-object v5, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/alarm/Alarm;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4097
    .end local v4    # "a":Lcom/android/server/alarm/Alarm;
    :cond_7d
    add-int/lit8 v3, v3, -0x1

    goto :goto_62

    .line 4104
    .end local v3    # "i":I
    :cond_80
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_84
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_eb

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Lcom/android/server/alarm/Alarm;

    .line 4105
    .local v8, "removed":Lcom/android/server/alarm/Alarm;
    iget v3, v8, Lcom/android/server/alarm/Alarm;->uid:I

    invoke-direct {v0, v3, v14}, Lcom/android/server/alarm/AlarmManagerService;->decrementAlarmCount(II)V

    .line 4106
    iget-object v3, v8, Lcom/android/server/alarm/Alarm;->listener:Landroid/app/IAlarmListener;

    if-eqz v3, :cond_a6

    .line 4107
    iget-object v3, v8, Lcom/android/server/alarm/Alarm;->listener:Landroid/app/IAlarmListener;

    invoke-interface {v3}, Landroid/app/IAlarmListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    iget-object v4, v0, Lcom/android/server/alarm/AlarmManagerService;->mListenerDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 4109
    :cond_a6
    invoke-static/range {p2 .. p2}, Lcom/android/server/alarm/AlarmManagerService$RemovedAlarm;->isLoggable(I)Z

    move-result v3

    if-nez v3, :cond_ad

    .line 4110
    goto :goto_84

    .line 4112
    :cond_ad
    iget-object v3, v0, Lcom/android/server/alarm/AlarmManagerService;->mRemovalHistory:Landroid/util/SparseArray;

    iget v4, v8, Lcom/android/server/alarm/Alarm;->uid:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/util/RingBuffer;

    .line 4113
    .local v3, "bufferForUid":Lcom/android/internal/util/RingBuffer;, "Lcom/android/internal/util/RingBuffer<Lcom/android/server/alarm/AlarmManagerService$RemovedAlarm;>;"
    if-nez v3, :cond_cc

    .line 4114
    new-instance v4, Lcom/android/internal/util/RingBuffer;

    const-class v5, Lcom/android/server/alarm/AlarmManagerService$RemovedAlarm;

    const/16 v6, 0xa

    invoke-direct {v4, v5, v6}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/lang/Class;I)V

    move-object v3, v4

    .line 4115
    iget-object v4, v0, Lcom/android/server/alarm/AlarmManagerService;->mRemovalHistory:Landroid/util/SparseArray;

    iget v5, v8, Lcom/android/server/alarm/Alarm;->uid:I

    invoke-virtual {v4, v5, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object v9, v3

    goto :goto_cd

    .line 4113
    :cond_cc
    move-object v9, v3

    .line 4117
    .end local v3    # "bufferForUid":Lcom/android/internal/util/RingBuffer;, "Lcom/android/internal/util/RingBuffer<Lcom/android/server/alarm/AlarmManagerService$RemovedAlarm;>;"
    .local v9, "bufferForUid":Lcom/android/internal/util/RingBuffer;, "Lcom/android/internal/util/RingBuffer<Lcom/android/server/alarm/AlarmManagerService$RemovedAlarm;>;"
    :goto_cd
    new-instance v6, Lcom/android/server/alarm/AlarmManagerService$RemovedAlarm;

    move-object v3, v6

    move-object v4, v8

    move/from16 v5, p2

    move-object v14, v6

    move-wide v6, v10

    move-object/from16 v17, v2

    move-object v2, v8

    move-wide/from16 v18, v10

    move-object v10, v9

    .end local v8    # "removed":Lcom/android/server/alarm/Alarm;
    .end local v9    # "bufferForUid":Lcom/android/internal/util/RingBuffer;, "Lcom/android/internal/util/RingBuffer<Lcom/android/server/alarm/AlarmManagerService$RemovedAlarm;>;"
    .local v2, "removed":Lcom/android/server/alarm/Alarm;
    .local v10, "bufferForUid":Lcom/android/internal/util/RingBuffer;, "Lcom/android/internal/util/RingBuffer<Lcom/android/server/alarm/AlarmManagerService$RemovedAlarm;>;"
    .local v17, "removedAlarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/alarm/Alarm;>;"
    .local v18, "nowRtc":J
    move-wide v8, v12

    invoke-direct/range {v3 .. v9}, Lcom/android/server/alarm/AlarmManagerService$RemovedAlarm;-><init>(Lcom/android/server/alarm/Alarm;IJJ)V

    invoke-virtual {v10, v14}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V

    .line 4118
    invoke-direct {v0, v2}, Lcom/android/server/alarm/AlarmManagerService;->maybeUnregisterTareListenerLocked(Lcom/android/server/alarm/Alarm;)V

    .line 4119
    .end local v2    # "removed":Lcom/android/server/alarm/Alarm;
    .end local v10    # "bufferForUid":Lcom/android/internal/util/RingBuffer;, "Lcom/android/internal/util/RingBuffer<Lcom/android/server/alarm/AlarmManagerService$RemovedAlarm;>;"
    move-object/from16 v2, v17

    move-wide/from16 v10, v18

    const/4 v14, 0x1

    goto :goto_84

    .line 4121
    .end local v17    # "removedAlarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/alarm/Alarm;>;"
    .end local v18    # "nowRtc":J
    .local v2, "removedAlarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/alarm/Alarm;>;"
    .local v10, "nowRtc":J
    :cond_eb
    move-object/from16 v17, v2

    move-wide/from16 v18, v10

    .end local v2    # "removedAlarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/alarm/Alarm;>;"
    .end local v10    # "nowRtc":J
    .restart local v17    # "removedAlarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/alarm/Alarm;>;"
    .restart local v18    # "nowRtc":J
    if-eqz v15, :cond_134

    .line 4122
    const/4 v2, 0x0

    .line 4123
    .local v2, "idleUntilUpdated":Z
    iget-object v3, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    if-eqz v3, :cond_100

    invoke-interface {v1, v3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_100

    .line 4124
    const/4 v3, 0x0

    iput-object v3, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    .line 4125
    const/4 v2, 0x1

    .line 4127
    :cond_100
    iget-object v3, v0, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/alarm/Alarm;

    if-eqz v3, :cond_122

    invoke-interface {v1, v3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_122

    .line 4128
    iget-object v3, v0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    invoke-interface {v3}, Lcom/android/server/alarm/AlarmStore;->getNextWakeFromIdleAlarm()Lcom/android/server/alarm/Alarm;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/alarm/Alarm;

    .line 4129
    iget-object v3, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    if-eqz v3, :cond_122

    .line 4130
    iget-object v3, v0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    new-instance v4, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda5;

    invoke-direct {v4, v0}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    invoke-interface {v3, v4}, Lcom/android/server/alarm/AlarmStore;->updateAlarmDeliveries(Lcom/android/server/alarm/AlarmStore$AlarmDeliveryCalculator;)Z

    move-result v3

    or-int/2addr v2, v3

    .line 4134
    :cond_122
    if-eqz v2, :cond_12e

    .line 4135
    iget-object v3, v0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    new-instance v4, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda6;

    invoke-direct {v4, v0}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    invoke-interface {v3, v4}, Lcom/android/server/alarm/AlarmStore;->updateAlarmDeliveries(Lcom/android/server/alarm/AlarmStore$AlarmDeliveryCalculator;)Z

    .line 4138
    :cond_12e
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/alarm/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    .line 4139
    invoke-direct/range {p0 .. p0}, Lcom/android/server/alarm/AlarmManagerService;->updateNextAlarmClockLocked()V

    .line 4141
    .end local v2    # "idleUntilUpdated":Z
    :cond_134
    return-void
.end method

.method private reportAlarmEventToTare(Lcom/android/server/alarm/Alarm;)V
    .registers 8
    .param p1, "alarm"    # Lcom/android/server/alarm/Alarm;

    .line 4512
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget-boolean v0, v0, Lcom/android/server/alarm/AlarmManagerService$Constants;->USE_TARE_POLICY:Z

    if-nez v0, :cond_7

    .line 4513
    return-void

    .line 4515
    :cond_7
    iget v0, p1, Lcom/android/server/alarm/Alarm;->flags:I

    and-int/lit8 v0, v0, 0xc

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    .line 4518
    .local v0, "allowWhileIdle":Z
    :goto_10
    iget-object v1, p1, Lcom/android/server/alarm/Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    if-eqz v1, :cond_18

    .line 4519
    const v1, 0x40000008    # 2.000002f

    .local v1, "action":I
    goto :goto_50

    .line 4520
    .end local v1    # "action":I
    :cond_18
    iget-boolean v1, p1, Lcom/android/server/alarm/Alarm;->wakeup:Z

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_37

    .line 4521
    iget-wide v4, p1, Lcom/android/server/alarm/Alarm;->windowLength:J

    cmp-long v1, v4, v2

    if-nez v1, :cond_2d

    .line 4522
    if-eqz v0, :cond_29

    .line 4523
    const/high16 v1, 0x40000000    # 2.0f

    .restart local v1    # "action":I
    goto :goto_50

    .line 4525
    .end local v1    # "action":I
    :cond_29
    const v1, 0x40000001    # 2.0000002f

    .restart local v1    # "action":I
    goto :goto_50

    .line 4528
    .end local v1    # "action":I
    :cond_2d
    if-eqz v0, :cond_33

    .line 4529
    const v1, 0x40000002    # 2.0000005f

    .restart local v1    # "action":I
    goto :goto_50

    .line 4532
    .end local v1    # "action":I
    :cond_33
    const v1, 0x40000003    # 2.0000007f

    .restart local v1    # "action":I
    goto :goto_50

    .line 4536
    .end local v1    # "action":I
    :cond_37
    iget-wide v4, p1, Lcom/android/server/alarm/Alarm;->windowLength:J

    cmp-long v1, v4, v2

    if-nez v1, :cond_47

    .line 4537
    if-eqz v0, :cond_43

    .line 4538
    const v1, 0x40000004    # 2.000001f

    .restart local v1    # "action":I
    goto :goto_50

    .line 4541
    .end local v1    # "action":I
    :cond_43
    const v1, 0x40000005    # 2.0000012f

    .restart local v1    # "action":I
    goto :goto_50

    .line 4544
    .end local v1    # "action":I
    :cond_47
    if-eqz v0, :cond_4d

    .line 4545
    const v1, 0x40000006    # 2.0000014f

    .restart local v1    # "action":I
    goto :goto_50

    .line 4548
    .end local v1    # "action":I
    :cond_4d
    const v1, 0x40000007    # 2.0000017f

    .line 4552
    .restart local v1    # "action":I
    :goto_50
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mEconomyManagerInternal:Lcom/android/server/tare/EconomyManagerInternal;

    iget v3, p1, Lcom/android/server/alarm/Alarm;->creatorUid:I

    .line 4553
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    iget-object v4, p1, Lcom/android/server/alarm/Alarm;->sourcePackage:Ljava/lang/String;

    const/4 v5, 0x0

    .line 4552
    invoke-interface {v2, v3, v4, v1, v5}, Lcom/android/server/tare/EconomyManagerInternal;->noteInstantaneousEvent(ILjava/lang/String;ILjava/lang/String;)V

    .line 4554
    return-void
.end method

.method private restoreRequestedTime(Lcom/android/server/alarm/Alarm;)Z
    .registers 5
    .param p1, "a"    # Lcom/android/server/alarm/Alarm;

    .line 1552
    iget-wide v0, p1, Lcom/android/server/alarm/Alarm;->origWhen:J

    iget v2, p1, Lcom/android/server/alarm/Alarm;->type:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/alarm/AlarmManagerService;->convertToElapsed(JI)J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0, v1}, Lcom/android/server/alarm/Alarm;->setPolicyElapsed(IJ)Z

    move-result v0

    return v0
.end method

.method private sendNextAlarmClockChanged()V
    .registers 9

    .line 3927
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mHandlerSparseAlarmClockArray:Landroid/util/SparseArray;

    .line 3928
    .local v0, "pendingUsers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/app/AlarmManager$AlarmClockInfo;>;"
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 3930
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3931
    :try_start_8
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    .line 3932
    .local v2, "n":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_f
    if-ge v3, v2, :cond_25

    .line 3933
    iget-object v4, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v4

    .line 3934
    .local v4, "userId":I
    iget-object v5, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AlarmManager$AlarmClockInfo;

    invoke-virtual {v0, v4, v5}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 3932
    .end local v4    # "userId":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 3936
    .end local v3    # "i":I
    :cond_25
    iget-object v3, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->clear()V

    .line 3937
    .end local v2    # "n":I
    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_64

    .line 3939
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 3940
    .local v1, "n":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_30
    if-ge v2, v1, :cond_63

    .line 3941
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 3942
    .local v3, "userId":I
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AlarmManager$AlarmClockInfo;

    .line 3943
    .local v4, "alarmClock":Landroid/app/AlarmManager$AlarmClockInfo;
    invoke-virtual {p0}, Lcom/android/server/alarm/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "next_alarm_formatted"

    .line 3945
    invoke-virtual {p0}, Lcom/android/server/alarm/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v4, v3}, Lcom/android/server/alarm/AlarmManagerService;->formatNextAlarm(Landroid/content/Context;Landroid/app/AlarmManager$AlarmClockInfo;I)Ljava/lang/String;

    move-result-object v7

    .line 3943
    invoke-static {v5, v6, v7, v3}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 3948
    invoke-virtual {p0}, Lcom/android/server/alarm/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v5

    sget-object v6, Lcom/android/server/alarm/AlarmManagerService;->NEXT_ALARM_CLOCK_CHANGED_INTENT:Landroid/content/Intent;

    new-instance v7, Landroid/os/UserHandle;

    invoke-direct {v7, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 3940
    .end local v3    # "userId":I
    .end local v4    # "alarmClock":Landroid/app/AlarmManager$AlarmClockInfo;
    add-int/lit8 v2, v2, 0x1

    goto :goto_30

    .line 3951
    .end local v2    # "i":I
    :cond_63
    return-void

    .line 3937
    .end local v1    # "n":I
    :catchall_64
    move-exception v2

    :try_start_65
    monitor-exit v1
    :try_end_66
    .catchall {:try_start_65 .. :try_end_66} :catchall_64

    throw v2
.end method

.method private sendScheduleExactAlarmPermissionStateChangedBroadcast(Ljava/lang/String;I)V
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 5892
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.app.action.SCHEDULE_EXACT_ALARM_PERMISSION_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5894
    .local v0, "i":Landroid/content/Intent;
    const/high16 v1, 0x34000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5897
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 5901
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v1

    .line 5902
    .local v1, "opts":Landroid/app/BroadcastOptions;
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 5903
    invoke-virtual {v2}, Landroid/app/ActivityManagerInternal;->getBootTimeTempAllowListDuration()J

    move-result-wide v3

    .line 5902
    const/4 v5, 0x0

    const/16 v6, 0xcf

    const-string v7, ""

    move-object v2, v1

    invoke-virtual/range {v2 .. v7}, Landroid/app/BroadcastOptions;->setTemporaryAppAllowlist(JIILjava/lang/String;)V

    .line 5906
    invoke-virtual {p0}, Lcom/android/server/alarm/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    .line 5907
    invoke-virtual {v1}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v4

    .line 5906
    const/4 v5, 0x0

    invoke-virtual {v2, v0, v3, v5, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 5908
    return-void
.end method

.method private static native set(JIJJ)I
.end method

.method private setImplLocked(IJJJJLandroid/app/PendingIntent;Landroid/app/IAlarmListener;Ljava/lang/String;ILandroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;ILjava/lang/String;Landroid/os/Bundle;I)V
    .registers 42
    .param p1, "type"    # I
    .param p2, "when"    # J
    .param p4, "whenElapsed"    # J
    .param p6, "windowLength"    # J
    .param p8, "interval"    # J
    .param p10, "operation"    # Landroid/app/PendingIntent;
    .param p11, "directReceiver"    # Landroid/app/IAlarmListener;
    .param p12, "listenerTag"    # Ljava/lang/String;
    .param p13, "flags"    # I
    .param p14, "workSource"    # Landroid/os/WorkSource;
    .param p15, "alarmClock"    # Landroid/app/AlarmManager$AlarmClockInfo;
    .param p16, "callingUid"    # I
    .param p17, "callingPackage"    # Ljava/lang/String;
    .param p18, "idleOptions"    # Landroid/os/Bundle;
    .param p19, "exactAllowReason"    # I

    move-object/from16 v0, p0

    move/from16 v1, p16

    move/from16 v2, p1

    move-wide/from16 v3, p2

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move/from16 v15, p13

    move-object/from16 v14, p14

    move-object/from16 v16, p15

    move/from16 v17, p16

    move-object/from16 v18, p17

    move-object/from16 v19, p18

    move/from16 v20, p19

    .line 2334
    new-instance v21, Lcom/android/server/alarm/Alarm;

    move-object/from16 v1, v21

    invoke-direct/range {v1 .. v20}, Lcom/android/server/alarm/Alarm;-><init>(IJJJJLandroid/app/PendingIntent;Landroid/app/IAlarmListener;Ljava/lang/String;Landroid/os/WorkSource;ILandroid/app/AlarmManager$AlarmClockInfo;ILjava/lang/String;Landroid/os/Bundle;I)V

    .line 2337
    .local v1, "a":Lcom/android/server/alarm/Alarm;
    iget-object v2, v0, Lcom/android/server/alarm/AlarmManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    move/from16 v3, p16

    move-object/from16 v4, p17

    invoke-virtual {v2, v3, v4}, Landroid/app/ActivityManagerInternal;->isAppStartModeDisabled(ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5e

    .line 2338
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Not setting alarm from "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ":"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " -- package not allowed to start"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "AlarmManager"

    invoke-static {v5, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2340
    return-void

    .line 2342
    :cond_5e
    iget-object v2, v0, Lcom/android/server/alarm/AlarmManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v2, v3}, Landroid/app/ActivityManagerInternal;->getUidProcessState(I)I

    move-result v2

    .line 2343
    .local v2, "callerProcState":I
    const/4 v5, 0x0

    move-object/from16 v6, p10

    move-object/from16 v7, p11

    invoke-virtual {v0, v6, v7, v5}, Lcom/android/server/alarm/AlarmManagerService;->removeLocked(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;I)V

    .line 2344
    iget v5, v1, Lcom/android/server/alarm/Alarm;->uid:I

    invoke-direct {v0, v5}, Lcom/android/server/alarm/AlarmManagerService;->incrementAlarmCount(I)V

    .line 2345
    invoke-direct {v0, v1}, Lcom/android/server/alarm/AlarmManagerService;->setImplLocked(Lcom/android/server/alarm/Alarm;)V

    .line 2346
    invoke-static {v1, v2}, Lcom/android/server/alarm/MetricsHelper;->pushAlarmScheduled(Lcom/android/server/alarm/Alarm;I)V

    .line 2347
    return-void
.end method

.method private setImplLocked(Lcom/android/server/alarm/Alarm;)V
    .registers 6
    .param p1, "a"    # Lcom/android/server/alarm/Alarm;

    .line 2645
    iget v0, p1, Lcom/android/server/alarm/Alarm;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_50

    .line 2646
    invoke-direct {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->adjustIdleUntilTime(Lcom/android/server/alarm/Alarm;)Z

    .line 2658
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    if-eq v0, p1, :cond_43

    if-eqz v0, :cond_43

    .line 2659
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setImplLocked: idle until changed from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AlarmManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 2661
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda12;

    invoke-direct {v2, v1}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda12;-><init>(Lcom/android/server/alarm/Alarm;)V

    invoke-interface {v0, v2}, Lcom/android/server/alarm/AlarmStore;->remove(Ljava/util/function/Predicate;)Ljava/util/ArrayList;

    .line 2663
    :cond_43
    iput-object p1, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    .line 2664
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    new-instance v1, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda13;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    invoke-interface {v0, v1}, Lcom/android/server/alarm/AlarmStore;->updateAlarmDeliveries(Lcom/android/server/alarm/AlarmStore$AlarmDeliveryCalculator;)Z

    goto :goto_57

    .line 2665
    :cond_50
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    if-eqz v0, :cond_57

    .line 2666
    invoke-direct {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->adjustDeliveryTimeBasedOnDeviceIdle(Lcom/android/server/alarm/Alarm;)Z

    .line 2668
    :cond_57
    :goto_57
    iget v0, p1, Lcom/android/server/alarm/Alarm;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8a

    .line 2669
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/alarm/Alarm;

    if-eqz v0, :cond_6d

    invoke-virtual {v0}, Lcom/android/server/alarm/Alarm;->getWhenElapsed()J

    move-result-wide v0

    .line 2670
    invoke-virtual {p1}, Lcom/android/server/alarm/Alarm;->getWhenElapsed()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_8a

    .line 2671
    :cond_6d
    iput-object p1, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/alarm/Alarm;

    .line 2674
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    if-eqz v0, :cond_8a

    .line 2675
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    new-instance v1, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda14;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    invoke-interface {v0, v1}, Lcom/android/server/alarm/AlarmStore;->updateAlarmDeliveries(Lcom/android/server/alarm/AlarmStore$AlarmDeliveryCalculator;)Z

    move-result v0

    .line 2677
    .local v0, "updated":Z
    if-eqz v0, :cond_8a

    .line 2679
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    new-instance v2, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda15;

    invoke-direct {v2, p0}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda15;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    invoke-interface {v1, v2}, Lcom/android/server/alarm/AlarmStore;->updateAlarmDeliveries(Lcom/android/server/alarm/AlarmStore$AlarmDeliveryCalculator;)Z

    .line 2685
    .end local v0    # "updated":Z
    :cond_8a
    iget-object v0, p1, Lcom/android/server/alarm/Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    if-eqz v0, :cond_91

    .line 2686
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextAlarmClockMayChange:Z

    .line 2689
    :cond_91
    invoke-static {}, Lcom/android/server/alarm/AlarmManagerServiceStub;->get()Lcom/android/server/alarm/AlarmManagerServiceStub;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/alarm/AlarmManagerServiceStub;->alignAlarmLocked(Lcom/android/server/alarm/Alarm;)Z

    .line 2690
    invoke-direct {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->adjustDeliveryTimeBasedOnBatterySaver(Lcom/android/server/alarm/Alarm;)Z

    .line 2691
    invoke-direct {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->adjustDeliveryTimeBasedOnBucketLocked(Lcom/android/server/alarm/Alarm;)Z

    .line 2692
    invoke-direct {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->adjustDeliveryTimeBasedOnTareLocked(Lcom/android/server/alarm/Alarm;)Z

    .line 2693
    invoke-direct {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->registerTareListener(Lcom/android/server/alarm/Alarm;)V

    .line 2694
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    invoke-interface {v0, p1}, Lcom/android/server/alarm/AlarmStore;->add(Lcom/android/server/alarm/Alarm;)V

    .line 2695
    invoke-virtual {p0}, Lcom/android/server/alarm/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    .line 2696
    invoke-direct {p0}, Lcom/android/server/alarm/AlarmManagerService;->updateNextAlarmClockLocked()V

    .line 2697
    return-void
.end method

.method private static native setKernelTime(JJ)I
.end method

.method private static native setKernelTimezone(JI)I
.end method

.method private setLocked(IJ)V
    .registers 7
    .param p1, "type"    # I
    .param p2, "when"    # J

    .line 4257
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/alarm/AlarmManagerService$Injector;->isAlarmDriverPresent()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 4258
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/alarm/AlarmManagerService$Injector;->setAlarm(IJ)V

    goto :goto_21

    .line 4260
    :cond_e
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 4261
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 4263
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mHandler:Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;

    iget v2, v0, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->removeMessages(I)V

    .line 4264
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mHandler:Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;

    invoke-virtual {v1, v0, p2, p3}, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 4266
    .end local v0    # "msg":Landroid/os/Message;
    :goto_21
    return-void
.end method

.method private unFreezeActionForUids([I)V
    .registers 8
    .param p1, "uids"    # [I

    .line 5492
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mGreezeManagerService:Landroid/os/IBinder;

    if-eqz v0, :cond_51

    .line 5493
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5494
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5495
    .local v1, "reply":Landroid/os/Parcel;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 5497
    .local v2, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :try_start_11
    const-string/jumbo v3, "miui.greeze.IGreezeManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5498
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 5499
    const/16 v3, 0x3e8

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5500
    const-string v3, "alarm"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5501
    iget-object v3, p0, Lcom/android/server/alarm/AlarmManagerService;->mGreezeManagerService:Landroid/os/IBinder;

    const/16 v4, 0x8

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_2c} :catch_36
    .catchall {:try_start_11 .. :try_end_2c} :catchall_34

    .line 5505
    if-eqz v0, :cond_31

    .line 5506
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5508
    :cond_31
    if-eqz v1, :cond_51

    .line 5509
    goto :goto_42

    .line 5505
    :catchall_34
    move-exception v3

    goto :goto_46

    .line 5502
    :catch_36
    move-exception v3

    .line 5503
    .local v3, "e":Ljava/lang/Exception;
    :try_start_37
    invoke-virtual {v3}, Ljava/lang/Exception;->fillInStackTrace()Ljava/lang/Throwable;
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_34

    .line 5505
    nop

    .end local v3    # "e":Ljava/lang/Exception;
    if-eqz v0, :cond_40

    .line 5506
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5508
    :cond_40
    if-eqz v1, :cond_51

    .line 5509
    :goto_42
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    goto :goto_51

    .line 5505
    :goto_46
    if-eqz v0, :cond_4b

    .line 5506
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5508
    :cond_4b
    if-eqz v1, :cond_50

    .line 5509
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5511
    :cond_50
    throw v3

    .line 5513
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "reply":Landroid/os/Parcel;
    .end local v2    # "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_51
    :goto_51
    return-void
.end method

.method private updateNextAlarmClockLocked()V
    .registers 11

    .line 3848
    iget-boolean v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextAlarmClockMayChange:Z

    if-nez v0, :cond_5

    .line 3849
    return-void

    .line 3851
    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextAlarmClockMayChange:Z

    .line 3853
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mTmpSparseAlarmClockArray:Landroid/util/SparseArray;

    .line 3854
    .local v0, "nextForUser":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/app/AlarmManager$AlarmClockInfo;>;"
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 3856
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    invoke-interface {v1}, Lcom/android/server/alarm/AlarmStore;->asList()Ljava/util/ArrayList;

    move-result-object v1

    .line 3857
    .local v1, "allAlarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/alarm/Alarm;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/alarm/Alarm;

    .line 3858
    .local v3, "a":Lcom/android/server/alarm/Alarm;
    iget-object v4, v3, Lcom/android/server/alarm/Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    if-eqz v4, :cond_5e

    .line 3859
    iget v4, v3, Lcom/android/server/alarm/Alarm;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 3860
    .local v4, "userId":I
    iget-object v5, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AlarmManager$AlarmClockInfo;

    .line 3869
    .local v5, "current":Landroid/app/AlarmManager$AlarmClockInfo;
    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_41

    .line 3870
    iget-object v6, v3, Lcom/android/server/alarm/Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    invoke-virtual {v0, v4, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_5e

    .line 3871
    :cond_41
    iget-object v6, v3, Lcom/android/server/alarm/Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    invoke-virtual {v6, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5e

    .line 3872
    invoke-virtual {v5}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    move-result-wide v6

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/AlarmManager$AlarmClockInfo;

    invoke-virtual {v8}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-gtz v6, :cond_5e

    .line 3874
    invoke-virtual {v0, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3877
    .end local v3    # "a":Lcom/android/server/alarm/Alarm;
    .end local v4    # "userId":I
    .end local v5    # "current":Landroid/app/AlarmManager$AlarmClockInfo;
    :cond_5e
    :goto_5e
    goto :goto_17

    .line 3879
    :cond_5f
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 3880
    .local v2, "newUserCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_64
    if-ge v3, v2, :cond_84

    .line 3881
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AlarmManager$AlarmClockInfo;

    .line 3882
    .local v4, "newAlarm":Landroid/app/AlarmManager$AlarmClockInfo;
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 3883
    .local v5, "userId":I
    iget-object v6, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AlarmManager$AlarmClockInfo;

    .line 3884
    .local v6, "currentAlarm":Landroid/app/AlarmManager$AlarmClockInfo;
    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_81

    .line 3885
    invoke-direct {p0, v5, v4}, Lcom/android/server/alarm/AlarmManagerService;->updateNextAlarmInfoForUserLocked(ILandroid/app/AlarmManager$AlarmClockInfo;)V

    .line 3880
    .end local v4    # "newAlarm":Landroid/app/AlarmManager$AlarmClockInfo;
    .end local v5    # "userId":I
    .end local v6    # "currentAlarm":Landroid/app/AlarmManager$AlarmClockInfo;
    :cond_81
    add-int/lit8 v3, v3, 0x1

    goto :goto_64

    .line 3889
    .end local v3    # "i":I
    :cond_84
    iget-object v3, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 3890
    .local v3, "oldUserCount":I
    add-int/lit8 v4, v3, -0x1

    .local v4, "i":I
    :goto_8c
    if-ltz v4, :cond_a1

    .line 3891
    iget-object v5, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 3892
    .restart local v5    # "userId":I
    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_9e

    .line 3893
    const/4 v6, 0x0

    invoke-direct {p0, v5, v6}, Lcom/android/server/alarm/AlarmManagerService;->updateNextAlarmInfoForUserLocked(ILandroid/app/AlarmManager$AlarmClockInfo;)V

    .line 3890
    .end local v5    # "userId":I
    :cond_9e
    add-int/lit8 v4, v4, -0x1

    goto :goto_8c

    .line 3896
    .end local v4    # "i":I
    :cond_a1
    return-void
.end method

.method private updateNextAlarmInfoForUserLocked(ILandroid/app/AlarmManager$AlarmClockInfo;)V
    .registers 5
    .param p1, "userId"    # I
    .param p2, "alarmClock"    # Landroid/app/AlarmManager$AlarmClockInfo;

    .line 3900
    if-eqz p2, :cond_8

    .line 3905
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_d

    .line 3910
    :cond_8
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 3913
    :goto_d
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 3914
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mHandler:Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->removeMessages(I)V

    .line 3915
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mHandler:Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->sendEmptyMessage(I)Z

    .line 3916
    return-void
.end method

.method private static native waitForAlarm(J)I
.end method


# virtual methods
.method calculateDeliveryPriorities(Ljava/util/ArrayList;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/alarm/Alarm;",
            ">;)V"
        }
    .end annotation

    .line 1370
    .local p1, "alarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/alarm/Alarm;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1371
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_52

    .line 1372
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/alarm/Alarm;

    .line 1375
    .local v2, "a":Lcom/android/server/alarm/Alarm;
    iget-object v3, v2, Lcom/android/server/alarm/Alarm;->listener:Landroid/app/IAlarmListener;

    iget-object v4, p0, Lcom/android/server/alarm/AlarmManagerService;->mTimeTickTrigger:Landroid/app/IAlarmListener;

    if-ne v3, v4, :cond_15

    .line 1376
    const/4 v3, 0x0

    .local v3, "alarmPrio":I
    goto :goto_1c

    .line 1377
    .end local v3    # "alarmPrio":I
    :cond_15
    iget-boolean v3, v2, Lcom/android/server/alarm/Alarm;->wakeup:Z

    if-eqz v3, :cond_1b

    .line 1378
    const/4 v3, 0x1

    .restart local v3    # "alarmPrio":I
    goto :goto_1c

    .line 1380
    .end local v3    # "alarmPrio":I
    :cond_1b
    const/4 v3, 0x2

    .line 1383
    .restart local v3    # "alarmPrio":I
    :goto_1c
    iget-object v4, v2, Lcom/android/server/alarm/Alarm;->priorityClass:Lcom/android/server/alarm/AlarmManagerService$PriorityClass;

    .line 1384
    .local v4, "packagePrio":Lcom/android/server/alarm/AlarmManagerService$PriorityClass;
    iget-object v5, v2, Lcom/android/server/alarm/Alarm;->sourcePackage:Ljava/lang/String;

    .line 1385
    .local v5, "alarmPackage":Ljava/lang/String;
    if-nez v4, :cond_2b

    iget-object v6, p0, Lcom/android/server/alarm/AlarmManagerService;->mPriorities:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v4, v6

    check-cast v4, Lcom/android/server/alarm/AlarmManagerService$PriorityClass;

    .line 1386
    :cond_2b
    if-nez v4, :cond_3a

    .line 1387
    new-instance v6, Lcom/android/server/alarm/AlarmManagerService$PriorityClass;

    invoke-direct {v6, p0}, Lcom/android/server/alarm/AlarmManagerService$PriorityClass;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    iput-object v6, v2, Lcom/android/server/alarm/Alarm;->priorityClass:Lcom/android/server/alarm/AlarmManagerService$PriorityClass;

    move-object v4, v6

    .line 1388
    iget-object v6, p0, Lcom/android/server/alarm/AlarmManagerService;->mPriorities:Ljava/util/HashMap;

    invoke-virtual {v6, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1390
    :cond_3a
    iput-object v4, v2, Lcom/android/server/alarm/Alarm;->priorityClass:Lcom/android/server/alarm/AlarmManagerService$PriorityClass;

    .line 1392
    iget v6, v4, Lcom/android/server/alarm/AlarmManagerService$PriorityClass;->seq:I

    iget v7, p0, Lcom/android/server/alarm/AlarmManagerService;->mCurrentSeq:I

    if-eq v6, v7, :cond_49

    .line 1394
    iput v3, v4, Lcom/android/server/alarm/AlarmManagerService$PriorityClass;->priority:I

    .line 1395
    iget v6, p0, Lcom/android/server/alarm/AlarmManagerService;->mCurrentSeq:I

    iput v6, v4, Lcom/android/server/alarm/AlarmManagerService$PriorityClass;->seq:I

    goto :goto_4f

    .line 1400
    :cond_49
    iget v6, v4, Lcom/android/server/alarm/AlarmManagerService$PriorityClass;->priority:I

    if-ge v3, v6, :cond_4f

    .line 1401
    iput v3, v4, Lcom/android/server/alarm/AlarmManagerService$PriorityClass;->priority:I

    .line 1371
    .end local v2    # "a":Lcom/android/server/alarm/Alarm;
    .end local v3    # "alarmPrio":I
    .end local v4    # "packagePrio":Lcom/android/server/alarm/AlarmManagerService$PriorityClass;
    .end local v5    # "alarmPackage":Ljava/lang/String;
    :cond_4f
    :goto_4f
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1405
    .end local v1    # "i":I
    :cond_52
    return-void
.end method

.method checkAllowNonWakeupDelayLocked(J)Z
    .registers 9
    .param p1, "nowELAPSED"    # J

    .line 4451
    iget-boolean v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mInteractive:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 4452
    return v1

    .line 4454
    :cond_6
    iget-wide v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mLastAlarmDeliveryTime:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_f

    .line 4455
    return v1

    .line 4457
    :cond_f
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1e

    iget-wide v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextNonWakeupDeliveryTime:J

    cmp-long v0, v2, p1

    if-gez v0, :cond_1e

    .line 4461
    return v1

    .line 4463
    :cond_1e
    iget-wide v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mLastAlarmDeliveryTime:J

    sub-long v2, p1, v2

    .line 4464
    .local v2, "timeSinceLast":J
    invoke-virtual {p0, p1, p2}, Lcom/android/server/alarm/AlarmManagerService;->currentNonWakeupFuzzLocked(J)J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-gtz v0, :cond_2b

    const/4 v1, 0x1

    :cond_2b
    return v1
.end method

.method currentNonWakeupFuzzLocked(J)J
    .registers 7
    .param p1, "nowELAPSED"    # J

    .line 4437
    iget-wide v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mNonInteractiveStartTime:J

    sub-long v0, p1, v0

    .line 4438
    .local v0, "timeSinceOn":J
    const-wide/32 v2, 0x493e0

    cmp-long v2, v0, v2

    if-gez v2, :cond_f

    .line 4440
    const-wide/32 v2, 0x1d4c0

    return-wide v2

    .line 4441
    :cond_f
    const-wide/32 v2, 0x1b7740

    cmp-long v2, v0, v2

    if-gez v2, :cond_1a

    .line 4443
    const-wide/32 v2, 0xdbba0

    return-wide v2

    .line 4446
    :cond_1a
    const-wide/32 v2, 0x36ee80

    return-wide v2
.end method

.method deliverAlarmsLocked(Ljava/util/ArrayList;J)V
    .registers 15
    .param p2, "nowELAPSED"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/alarm/Alarm;",
            ">;J)V"
        }
    .end annotation

    .line 4469
    .local p1, "triggerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/alarm/Alarm;>;"
    const-string v0, "AlarmManager"

    iput-wide p2, p0, Lcom/android/server/alarm/AlarmManagerService;->mLastAlarmDeliveryTime:J

    .line 4470
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_b1

    .line 4471
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/alarm/Alarm;

    .line 4472
    .local v2, "alarm":Lcom/android/server/alarm/Alarm;
    iget-boolean v3, v2, Lcom/android/server/alarm/Alarm;->wakeup:Z

    const-wide/32 v4, 0x20000

    if-eqz v3, :cond_31

    .line 4473
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Dispatch wakeup alarm to "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, v2, Lcom/android/server/alarm/Alarm;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v5, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    goto :goto_49

    .line 4476
    :cond_31
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Dispatch non-wakeup alarm to "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, v2, Lcom/android/server/alarm/Alarm;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v5, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 4484
    :goto_49
    const/4 v3, 0x1

    :try_start_4a
    iget-object v6, p0, Lcom/android/server/alarm/AlarmManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    iget-object v7, v2, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    iget-object v8, v2, Lcom/android/server/alarm/Alarm;->workSource:Landroid/os/WorkSource;

    iget v9, v2, Lcom/android/server/alarm/Alarm;->uid:I

    iget-object v10, v2, Lcom/android/server/alarm/Alarm;->statsTag:Ljava/lang/String;

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/app/ActivityManagerInternal;->noteAlarmStart(Landroid/app/PendingIntent;Landroid/os/WorkSource;ILjava/lang/String;)V

    .line 4489
    invoke-static {}, Lcom/android/server/am/SmartPowerServiceStub;->getInstance()Lcom/android/server/am/SmartPowerServiceStub;

    move-result-object v6

    iget v7, v2, Lcom/android/server/alarm/Alarm;->creatorUid:I

    iget v8, v2, Lcom/android/server/alarm/Alarm;->type:I

    .line 4490
    invoke-interface {v6, v7, v8}, Lcom/android/server/am/SmartPowerServiceStub;->shouldInterceptAlarm(II)Z

    move-result v6

    if-nez v6, :cond_74

    .line 4491
    invoke-static {}, Lcom/android/server/am/SmartPowerServiceStub;->getInstance()Lcom/android/server/am/SmartPowerServiceStub;

    move-result-object v6

    iget v7, v2, Lcom/android/server/alarm/Alarm;->creatorUid:I

    .line 4492
    invoke-interface {v6, v7, v3}, Lcom/android/server/am/SmartPowerServiceStub;->onAlarmStatusChanged(IZ)V

    .line 4493
    iget-object v6, p0, Lcom/android/server/alarm/AlarmManagerService;->mDeliveryTracker:Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;

    invoke-virtual {v6, v2, p2, p3}, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->deliverLocked(Lcom/android/server/alarm/Alarm;J)V

    goto :goto_90

    .line 4495
    :cond_74
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Intercept "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " for app inactive"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4498
    :goto_90
    invoke-direct {p0, v2}, Lcom/android/server/alarm/AlarmManagerService;->reportAlarmEventToTare(Lcom/android/server/alarm/Alarm;)V

    .line 4499
    iget-wide v6, v2, Lcom/android/server/alarm/Alarm;->repeatInterval:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-gtz v6, :cond_9e

    .line 4501
    invoke-direct {p0, v2}, Lcom/android/server/alarm/AlarmManagerService;->maybeUnregisterTareListenerLocked(Lcom/android/server/alarm/Alarm;)V
    :try_end_9e
    .catch Ljava/lang/RuntimeException; {:try_start_4a .. :try_end_9e} :catch_9f

    .line 4505
    :cond_9e
    goto :goto_a5

    .line 4503
    :catch_9f
    move-exception v6

    .line 4504
    .local v6, "e":Ljava/lang/RuntimeException;
    const-string v7, "Failure sending alarm."

    invoke-static {v0, v7, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4506
    .end local v6    # "e":Ljava/lang/RuntimeException;
    :goto_a5
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 4507
    iget v4, v2, Lcom/android/server/alarm/Alarm;->uid:I

    invoke-direct {p0, v4, v3}, Lcom/android/server/alarm/AlarmManagerService;->decrementAlarmCount(II)V

    .line 4470
    .end local v2    # "alarm":Lcom/android/server/alarm/Alarm;
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_5

    .line 4509
    .end local v1    # "i":I
    :cond_b1
    return-void
.end method

.method dumpImpl(Landroid/util/IndentingPrintWriter;)V
    .registers 35
    .param p1, "pw"    # Landroid/util/IndentingPrintWriter;
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 3109
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v3, v1, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 3110
    :try_start_7
    const-string v4, "Current Alarm Manager state:"

    invoke-virtual {v2, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3111
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3113
    iget-object v4, v1, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    invoke-virtual {v4, v2}, Lcom/android/server/alarm/AlarmManagerService$Constants;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 3114
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3116
    iget-object v4, v1, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget-boolean v4, v4, Lcom/android/server/alarm/AlarmManagerService$Constants;->USE_TARE_POLICY:Z

    if-eqz v4, :cond_41

    .line 3117
    const-string v4, "TARE details:"

    invoke-virtual {v2, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3118
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3120
    const-string v4, "Affordability cache:"

    invoke-virtual {v2, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3121
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3122
    iget-object v4, v1, Lcom/android/server/alarm/AlarmManagerService;->mAffordabilityCache:Landroid/util/SparseArrayMap;

    new-instance v5, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda8;

    invoke-direct {v5, v2}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda8;-><init>(Landroid/util/IndentingPrintWriter;)V

    invoke-virtual {v4, v5}, Landroid/util/SparseArrayMap;->forEach(Landroid/util/SparseArrayMap$TriConsumer;)V

    .line 3139
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3141
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3142
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    goto :goto_66

    .line 3144
    :cond_41
    iget-object v4, v1, Lcom/android/server/alarm/AlarmManagerService;->mAppStateTracker:Lcom/android/server/AppStateTrackerImpl;

    if-eqz v4, :cond_4b

    .line 3145
    invoke-virtual {v4, v2}, Lcom/android/server/AppStateTrackerImpl;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 3146
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3149
    :cond_4b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "App Standby Parole: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, v1, Lcom/android/server/alarm/AlarmManagerService;->mAppStandbyParole:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3150
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3153
    :goto_66
    iget-object v4, v1, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v4}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getElapsedRealtime()J

    move-result-wide v4

    .line 3154
    .local v4, "nowELAPSED":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 3155
    .local v6, "nowUPTIME":J
    iget-object v8, v1, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v8}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getCurrentTimeMillis()J

    move-result-wide v8

    .line 3156
    .local v8, "nowRTC":J
    new-instance v10, Ljava/text/SimpleDateFormat;

    const-string/jumbo v11, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v10, v11}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 3158
    .local v10, "sdf":Ljava/text/SimpleDateFormat;
    const-string/jumbo v11, "nowRTC="

    invoke-virtual {v2, v11}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3159
    invoke-virtual {v2, v8, v9}, Landroid/util/IndentingPrintWriter;->print(J)V

    .line 3160
    const-string v11, "="

    invoke-virtual {v2, v11}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3161
    new-instance v11, Ljava/util/Date;

    invoke-direct {v11, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v10, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3162
    const-string v11, " nowELAPSED="

    invoke-virtual {v2, v11}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3163
    invoke-virtual {v2, v4, v5}, Landroid/util/IndentingPrintWriter;->print(J)V

    .line 3164
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3166
    const-string/jumbo v11, "mLastTimeChangeClockTime="

    invoke-virtual {v2, v11}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3167
    iget-wide v11, v1, Lcom/android/server/alarm/AlarmManagerService;->mLastTimeChangeClockTime:J

    invoke-virtual {v2, v11, v12}, Landroid/util/IndentingPrintWriter;->print(J)V

    .line 3168
    const-string v11, "="

    invoke-virtual {v2, v11}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3169
    new-instance v11, Ljava/util/Date;

    iget-wide v12, v1, Lcom/android/server/alarm/AlarmManagerService;->mLastTimeChangeClockTime:J

    invoke-direct {v11, v12, v13}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v10, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3171
    const-string/jumbo v11, "mLastTimeChangeRealtime="

    invoke-virtual {v2, v11}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3172
    iget-wide v11, v1, Lcom/android/server/alarm/AlarmManagerService;->mLastTimeChangeRealtime:J

    invoke-virtual {v2, v11, v12}, Landroid/util/IndentingPrintWriter;->println(J)V

    .line 3174
    const-string/jumbo v11, "mLastTickReceived="

    invoke-virtual {v2, v11}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3175
    new-instance v11, Ljava/util/Date;

    iget-wide v12, v1, Lcom/android/server/alarm/AlarmManagerService;->mLastTickReceived:J

    invoke-direct {v11, v12, v13}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v10, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3177
    const-string/jumbo v11, "mLastTickSet="

    invoke-virtual {v2, v11}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3178
    new-instance v11, Ljava/util/Date;

    iget-wide v12, v1, Lcom/android/server/alarm/AlarmManagerService;->mLastTickSet:J

    invoke-direct {v11, v12, v13}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v10, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3181
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3182
    const-string v11, "Recent TIME_TICK history:"

    invoke-virtual {v2, v11}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3183
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3184
    iget v11, v1, Lcom/android/server/alarm/AlarmManagerService;->mNextTickHistory:I

    .line 3186
    .local v11, "i":I
    :goto_101
    add-int/lit8 v11, v11, -0x1

    .line 3187
    if-gez v11, :cond_107

    const/16 v11, 0x9

    .line 3188
    :cond_107
    iget-object v12, v1, Lcom/android/server/alarm/AlarmManagerService;->mTickHistory:[J

    aget-wide v12, v12, v11

    .line 3189
    .local v12, "time":J
    const-wide/16 v14, 0x0

    cmp-long v16, v12, v14

    if-lez v16, :cond_121

    .line 3190
    new-instance v14, Ljava/util/Date;

    sub-long v18, v4, v12

    move-wide/from16 v20, v12

    .end local v12    # "time":J
    .local v20, "time":J
    sub-long v12, v8, v18

    invoke-direct {v14, v12, v13}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v10, v14}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v12

    goto :goto_125

    .line 3191
    .end local v20    # "time":J
    .restart local v12    # "time":J
    :cond_121
    move-wide/from16 v20, v12

    .end local v12    # "time":J
    .restart local v20    # "time":J
    const-string v12, "-"

    .line 3189
    :goto_125
    invoke-virtual {v2, v12}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3192
    .end local v20    # "time":J
    iget v12, v1, Lcom/android/server/alarm/AlarmManagerService;->mNextTickHistory:I

    if-ne v11, v12, :cond_843

    .line 3193
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3196
    nop

    .end local v11    # "i":I
    const-class v11, Lcom/android/server/SystemServiceManager;

    invoke-static {v11}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/SystemServiceManager;

    .line 3197
    .local v11, "ssm":Lcom/android/server/SystemServiceManager;
    if-eqz v11, :cond_182

    .line 3198
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3199
    const-string v12, "RuntimeStarted="

    invoke-virtual {v2, v12}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3200
    new-instance v12, Ljava/util/Date;

    sub-long v13, v8, v4

    .line 3201
    invoke-virtual {v11}, Lcom/android/server/SystemServiceManager;->getRuntimeStartElapsedTime()J

    move-result-wide v18

    add-long v13, v13, v18

    invoke-direct {v12, v13, v14}, Ljava/util/Date;-><init>(J)V

    .line 3200
    invoke-virtual {v10, v12}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3202
    invoke-virtual {v11}, Lcom/android/server/SystemServiceManager;->isRuntimeRestarted()Z

    move-result v12

    if-eqz v12, :cond_161

    .line 3203
    const-string v12, "  (Runtime restarted)"

    invoke-virtual {v2, v12}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3205
    :cond_161
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3207
    const-string v12, "Runtime uptime (elapsed): "

    invoke-virtual {v2, v12}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3208
    invoke-virtual {v11}, Lcom/android/server/SystemServiceManager;->getRuntimeStartElapsedTime()J

    move-result-wide v12

    invoke-static {v4, v5, v12, v13, v2}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 3209
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3211
    const-string v12, "Runtime uptime (uptime): "

    invoke-virtual {v2, v12}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3212
    invoke-virtual {v11}, Lcom/android/server/SystemServiceManager;->getRuntimeStartUptime()J

    move-result-wide v12

    invoke-static {v6, v7, v12, v13, v2}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 3213
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3216
    :cond_182
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3217
    iget-boolean v12, v1, Lcom/android/server/alarm/AlarmManagerService;->mInteractive:Z

    if-nez v12, :cond_198

    .line 3218
    const-string v12, "Time since non-interactive: "

    invoke-virtual {v2, v12}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3219
    iget-wide v12, v1, Lcom/android/server/alarm/AlarmManagerService;->mNonInteractiveStartTime:J

    sub-long v12, v4, v12

    invoke-static {v12, v13, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 3220
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3222
    :cond_198
    const-string v12, "Max wakeup delay: "

    invoke-virtual {v2, v12}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3223
    invoke-virtual {v1, v4, v5}, Lcom/android/server/alarm/AlarmManagerService;->currentNonWakeupFuzzLocked(J)J

    move-result-wide v12

    invoke-static {v12, v13, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 3224
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3226
    const-string v12, "Time since last dispatch: "

    invoke-virtual {v2, v12}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3227
    iget-wide v12, v1, Lcom/android/server/alarm/AlarmManagerService;->mLastAlarmDeliveryTime:J

    sub-long v12, v4, v12

    invoke-static {v12, v13, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 3228
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3230
    const-string v12, "Next non-wakeup delivery time: "

    invoke-virtual {v2, v12}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3231
    iget-wide v12, v1, Lcom/android/server/alarm/AlarmManagerService;->mNextNonWakeupDeliveryTime:J

    invoke-static {v12, v13, v4, v5, v2}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 3232
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3234
    iget-wide v12, v1, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeup:J

    sub-long v14, v8, v4

    add-long/2addr v12, v14

    .line 3235
    .local v12, "nextWakeupRTC":J
    iget-wide v14, v1, Lcom/android/server/alarm/AlarmManagerService;->mNextNonWakeup:J

    sub-long v18, v8, v4

    add-long v14, v14, v18

    .line 3236
    .local v14, "nextNonWakeupRTC":J
    move-wide/from16 v18, v6

    .end local v6    # "nowUPTIME":J
    .local v18, "nowUPTIME":J
    const-string v6, "Next non-wakeup alarm: "

    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3237
    iget-wide v6, v1, Lcom/android/server/alarm/AlarmManagerService;->mNextNonWakeup:J

    invoke-static {v6, v7, v4, v5, v2}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 3238
    const-string v6, " = "

    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3239
    iget-wide v6, v1, Lcom/android/server/alarm/AlarmManagerService;->mNextNonWakeup:J

    invoke-virtual {v2, v6, v7}, Landroid/util/IndentingPrintWriter;->print(J)V

    .line 3240
    const-string v6, " = "

    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3241
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, v14, v15}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v10, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3243
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3244
    const-string/jumbo v6, "set at "

    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3245
    iget-wide v6, v1, Lcom/android/server/alarm/AlarmManagerService;->mNextNonWakeUpSetAt:J

    invoke-static {v6, v7, v4, v5, v2}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 3246
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3247
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3249
    const-string v6, "Next wakeup alarm: "

    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3250
    iget-wide v6, v1, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeup:J

    invoke-static {v6, v7, v4, v5, v2}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 3251
    const-string v6, " = "

    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3252
    iget-wide v6, v1, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeup:J

    invoke-virtual {v2, v6, v7}, Landroid/util/IndentingPrintWriter;->print(J)V

    .line 3253
    const-string v6, " = "

    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3254
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, v12, v13}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v10, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3256
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3257
    const-string/jumbo v6, "set at "

    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3258
    iget-wide v6, v1, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeUpSetAt:J

    invoke-static {v6, v7, v4, v5, v2}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 3259
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3260
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3262
    const-string v6, "Next kernel non-wakeup alarm: "

    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3263
    iget-object v6, v1, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getNextAlarm(I)J

    move-result-wide v6

    invoke-static {v6, v7, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 3264
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3265
    const-string v6, "Next kernel wakeup alarm: "

    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3266
    iget-object v6, v1, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getNextAlarm(I)J

    move-result-wide v6

    invoke-static {v6, v7, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 3267
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3269
    const-string v6, "Last wakeup: "

    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3270
    iget-wide v6, v1, Lcom/android/server/alarm/AlarmManagerService;->mLastWakeup:J

    invoke-static {v6, v7, v4, v5, v2}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 3271
    const-string v6, " = "

    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3272
    iget-wide v6, v1, Lcom/android/server/alarm/AlarmManagerService;->mLastWakeup:J

    invoke-virtual {v2, v6, v7}, Landroid/util/IndentingPrintWriter;->println(J)V

    .line 3274
    const-string v6, "Last trigger: "

    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3275
    iget-wide v6, v1, Lcom/android/server/alarm/AlarmManagerService;->mLastTrigger:J

    invoke-static {v6, v7, v4, v5, v2}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 3276
    const-string v6, " = "

    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3277
    iget-wide v6, v1, Lcom/android/server/alarm/AlarmManagerService;->mLastTrigger:J

    invoke-virtual {v2, v6, v7}, Landroid/util/IndentingPrintWriter;->println(J)V

    .line 3279
    const-string v6, "Num time change events: "

    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3280
    iget v6, v1, Lcom/android/server/alarm/AlarmManagerService;->mNumTimeChanged:I

    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 3282
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3283
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "App ids requesting SCHEDULE_EXACT_ALARM: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v1, Lcom/android/server/alarm/AlarmManagerService;->mExactAlarmCandidates:Ljava/util/Set;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3285
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3286
    const-string v6, "Last OP_SCHEDULE_EXACT_ALARM: ["

    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3287
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2bc
    iget-object v7, v1, Lcom/android/server/alarm/AlarmManagerService;->mLastOpScheduleExactAlarm:Landroid/util/SparseIntArray;

    invoke-virtual {v7}, Landroid/util/SparseIntArray;->size()I

    move-result v7

    if-ge v6, v7, :cond_2fb

    .line 3288
    if-lez v6, :cond_2cb

    .line 3289
    const-string v7, ", "

    invoke-virtual {v2, v7}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3291
    :cond_2cb
    iget-object v7, v1, Lcom/android/server/alarm/AlarmManagerService;->mLastOpScheduleExactAlarm:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v7

    invoke-static {v2, v7}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 3292
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v20, v11

    .end local v11    # "ssm":Lcom/android/server/SystemServiceManager;
    .local v20, "ssm":Lcom/android/server/SystemServiceManager;
    const-string v11, ":"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v11, v1, Lcom/android/server/alarm/AlarmManagerService;->mLastOpScheduleExactAlarm:Landroid/util/SparseIntArray;

    invoke-virtual {v11, v6}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v11

    invoke-static {v11}, Landroid/app/AppOpsManager;->modeToName(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3287
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v11, v20

    goto :goto_2bc

    .end local v20    # "ssm":Lcom/android/server/SystemServiceManager;
    .restart local v11    # "ssm":Lcom/android/server/SystemServiceManager;
    :cond_2fb
    move-object/from16 v20, v11

    .line 3294
    .end local v6    # "i":I
    .end local v11    # "ssm":Lcom/android/server/SystemServiceManager;
    .restart local v20    # "ssm":Lcom/android/server/SystemServiceManager;
    const-string v6, "]"

    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3296
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3297
    const-string v6, "Next alarm clock information: "

    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3298
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3299
    new-instance v6, Ljava/util/TreeSet;

    invoke-direct {v6}, Ljava/util/TreeSet;-><init>()V

    .line 3300
    .local v6, "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_313
    iget-object v11, v1, Lcom/android/server/alarm/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v11

    if-ge v7, v11, :cond_32b

    .line 3301
    iget-object v11, v1, Lcom/android/server/alarm/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v11, v7}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 3300
    add-int/lit8 v7, v7, 0x1

    goto :goto_313

    .line 3303
    .end local v7    # "i":I
    :cond_32b
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_32c
    iget-object v11, v1, Lcom/android/server/alarm/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v11}, Landroid/util/SparseBooleanArray;->size()I

    move-result v11

    if-ge v7, v11, :cond_344

    .line 3304
    iget-object v11, v1, Lcom/android/server/alarm/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v11, v7}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 3303
    add-int/lit8 v7, v7, 0x1

    goto :goto_32c

    .line 3306
    .end local v7    # "i":I
    :cond_344
    invoke-virtual {v6}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_348
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3c0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 3307
    .local v11, "user":I
    move-object/from16 v21, v6

    .end local v6    # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    .local v21, "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    iget-object v6, v1, Lcom/android/server/alarm/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v6, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AlarmManager$AlarmClockInfo;

    .line 3308
    .local v6, "next":Landroid/app/AlarmManager$AlarmClockInfo;
    if-eqz v6, :cond_369

    invoke-virtual {v6}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    move-result-wide v22

    goto :goto_36b

    :cond_369
    const-wide/16 v22, 0x0

    :goto_36b
    move-wide/from16 v24, v22

    .line 3309
    .local v24, "time":J
    move-object/from16 v22, v6

    .end local v6    # "next":Landroid/app/AlarmManager$AlarmClockInfo;
    .local v22, "next":Landroid/app/AlarmManager$AlarmClockInfo;
    iget-object v6, v1, Lcom/android/server/alarm/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v11}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    .line 3310
    .local v6, "pendingSend":Z
    move-object/from16 v23, v7

    const-string/jumbo v7, "user:"

    invoke-virtual {v2, v7}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3311
    invoke-virtual {v2, v11}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 3312
    const-string v7, " pendingSend:"

    invoke-virtual {v2, v7}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3313
    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->print(Z)V

    .line 3314
    const-string v7, " time:"

    invoke-virtual {v2, v7}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3315
    move/from16 v26, v6

    move-wide/from16 v6, v24

    .end local v24    # "time":J
    .local v6, "time":J
    .local v26, "pendingSend":Z
    invoke-virtual {v2, v6, v7}, Landroid/util/IndentingPrintWriter;->print(J)V

    .line 3316
    const-wide/16 v16, 0x0

    cmp-long v24, v6, v16

    if-lez v24, :cond_3b6

    .line 3317
    move/from16 v24, v11

    .end local v11    # "user":I
    .local v24, "user":I
    const-string v11, " = "

    invoke-virtual {v2, v11}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3318
    new-instance v11, Ljava/util/Date;

    invoke-direct {v11, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v10, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3319
    const-string v11, " = "

    invoke-virtual {v2, v11}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3320
    invoke-static {v6, v7, v8, v9, v2}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    goto :goto_3b8

    .line 3316
    .end local v24    # "user":I
    .restart local v11    # "user":I
    :cond_3b6
    move/from16 v24, v11

    .line 3322
    .end local v11    # "user":I
    .restart local v24    # "user":I
    :goto_3b8
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3323
    .end local v6    # "time":J
    .end local v22    # "next":Landroid/app/AlarmManager$AlarmClockInfo;
    .end local v24    # "user":I
    .end local v26    # "pendingSend":Z
    move-object/from16 v6, v21

    move-object/from16 v7, v23

    goto :goto_348

    .line 3324
    .end local v21    # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    .local v6, "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    :cond_3c0
    move-object/from16 v21, v6

    .end local v6    # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    .restart local v21    # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3326
    iget-object v6, v1, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    invoke-interface {v6}, Lcom/android/server/alarm/AlarmStore;->size()I

    move-result v6

    if-lez v6, :cond_3d5

    .line 3327
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3328
    iget-object v6, v1, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    invoke-interface {v6, v2, v4, v5, v10}, Lcom/android/server/alarm/AlarmStore;->dump(Landroid/util/IndentingPrintWriter;JLjava/text/SimpleDateFormat;)V

    .line 3330
    :cond_3d5
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3332
    const-string v6, "Pending user blocked background alarms: "

    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3333
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3334
    const/4 v6, 0x0

    .line 3335
    .local v6, "blocked":Z
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_3e2
    iget-object v11, v1, Lcom/android/server/alarm/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v11

    if-ge v7, v11, :cond_401

    .line 3336
    iget-object v11, v1, Lcom/android/server/alarm/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v11, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    .line 3337
    .local v11, "blockedAlarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/alarm/Alarm;>;"
    if-eqz v11, :cond_3fe

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v16

    if-lez v16, :cond_3fe

    .line 3338
    const/4 v6, 0x1

    .line 3339
    invoke-static {v2, v11, v4, v5, v10}, Lcom/android/server/alarm/AlarmManagerService;->dumpAlarmList(Landroid/util/IndentingPrintWriter;Ljava/util/ArrayList;JLjava/text/SimpleDateFormat;)V

    .line 3335
    .end local v11    # "blockedAlarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/alarm/Alarm;>;"
    :cond_3fe
    add-int/lit8 v7, v7, 0x1

    goto :goto_3e2

    .line 3342
    .end local v7    # "i":I
    :cond_401
    if-nez v6, :cond_409

    .line 3343
    const-string/jumbo v7, "none"

    invoke-virtual {v2, v7}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3345
    :cond_409
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3346
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3348
    const-string v7, "Pending alarms per uid: ["

    invoke-virtual {v2, v7}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3349
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_415
    iget-object v11, v1, Lcom/android/server/alarm/AlarmManagerService;->mAlarmsPerUid:Landroid/util/SparseIntArray;

    invoke-virtual {v11}, Landroid/util/SparseIntArray;->size()I

    move-result v11

    if-ge v7, v11, :cond_43e

    .line 3350
    if-lez v7, :cond_424

    .line 3351
    const-string v11, ", "

    invoke-virtual {v2, v11}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3353
    :cond_424
    iget-object v11, v1, Lcom/android/server/alarm/AlarmManagerService;->mAlarmsPerUid:Landroid/util/SparseIntArray;

    invoke-virtual {v11, v7}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v11

    invoke-static {v2, v11}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 3354
    const-string v11, ":"

    invoke-virtual {v2, v11}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3355
    iget-object v11, v1, Lcom/android/server/alarm/AlarmManagerService;->mAlarmsPerUid:Landroid/util/SparseIntArray;

    invoke-virtual {v11, v7}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v11

    invoke-virtual {v2, v11}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 3349
    add-int/lit8 v7, v7, 0x1

    goto :goto_415

    .line 3357
    .end local v7    # "i":I
    :cond_43e
    const-string v7, "]"

    invoke-virtual {v2, v7}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3358
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3360
    const-string v7, "App Alarm history:"

    invoke-virtual {v2, v7}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3361
    iget-object v7, v1, Lcom/android/server/alarm/AlarmManagerService;->mAppWakeupHistory:Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

    invoke-virtual {v7, v2, v4, v5}, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;->dump(Landroid/util/IndentingPrintWriter;J)V

    .line 3363
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3364
    const-string v7, "Temporary Quota Reserves:"

    invoke-virtual {v2, v7}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3365
    iget-object v7, v1, Lcom/android/server/alarm/AlarmManagerService;->mTemporaryQuotaReserve:Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve;

    invoke-virtual {v7, v2, v4, v5}, Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve;->dump(Landroid/util/IndentingPrintWriter;J)V

    .line 3367
    iget-object v7, v1, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    if-eqz v7, :cond_487

    .line 3368
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3369
    const-string v7, "Idle mode state:"

    invoke-virtual {v2, v7}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3371
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3372
    const-string v7, "Idling until: "

    invoke-virtual {v2, v7}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3373
    iget-object v7, v1, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    if-eqz v7, :cond_47e

    .line 3374
    invoke-virtual {v2, v7}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 3375
    iget-object v7, v1, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    invoke-virtual {v7, v2, v4, v5, v10}, Lcom/android/server/alarm/Alarm;->dump(Landroid/util/IndentingPrintWriter;JLjava/text/SimpleDateFormat;)V

    goto :goto_484

    .line 3377
    :cond_47e
    const-string/jumbo v7, "null"

    invoke-virtual {v2, v7}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3379
    :goto_484
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3381
    :cond_487
    iget-object v7, v1, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/alarm/Alarm;

    if-eqz v7, :cond_4a3

    .line 3382
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3383
    const-string v7, "Next wake from idle: "

    invoke-virtual {v2, v7}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3384
    iget-object v7, v1, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/alarm/Alarm;

    invoke-virtual {v2, v7}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 3386
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3387
    iget-object v7, v1, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/alarm/Alarm;

    invoke-virtual {v7, v2, v4, v5, v10}, Lcom/android/server/alarm/Alarm;->dump(Landroid/util/IndentingPrintWriter;JLjava/text/SimpleDateFormat;)V

    .line 3388
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3391
    :cond_4a3
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3392
    const-string v7, "Past-due non-wakeup alarms: "

    invoke-virtual {v2, v7}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3393
    iget-object v7, v1, Lcom/android/server/alarm/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_4c8

    .line 3394
    iget-object v7, v1, Lcom/android/server/alarm/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v2, v7}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 3396
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3397
    iget-object v7, v1, Lcom/android/server/alarm/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-static {v2, v7, v4, v5, v10}, Lcom/android/server/alarm/AlarmManagerService;->dumpAlarmList(Landroid/util/IndentingPrintWriter;Ljava/util/ArrayList;JLjava/text/SimpleDateFormat;)V

    .line 3398
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    goto :goto_4cd

    .line 3400
    :cond_4c8
    const-string v7, "(none)"

    invoke-virtual {v2, v7}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3402
    :goto_4cd
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3403
    const-string v7, "Number of delayed alarms: "

    invoke-virtual {v2, v7}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3404
    iget v7, v1, Lcom/android/server/alarm/AlarmManagerService;->mNumDelayedAlarms:I

    invoke-virtual {v2, v7}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 3405
    const-string v7, ", total delay time: "

    invoke-virtual {v2, v7}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3406
    move v11, v6

    .end local v6    # "blocked":Z
    .local v11, "blocked":Z
    iget-wide v6, v1, Lcom/android/server/alarm/AlarmManagerService;->mTotalDelayTime:J

    invoke-static {v6, v7, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 3407
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3409
    const-string v6, "Max delay time: "

    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3410
    iget-wide v6, v1, Lcom/android/server/alarm/AlarmManagerService;->mMaxDelayTime:J

    invoke-static {v6, v7, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 3411
    const-string v6, ", max non-interactive time: "

    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3412
    iget-wide v6, v1, Lcom/android/server/alarm/AlarmManagerService;->mNonInteractiveTime:J

    invoke-static {v6, v7, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 3413
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3414
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3416
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3417
    const-string v6, "Broadcast ref count: "

    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3418
    iget v6, v1, Lcom/android/server/alarm/AlarmManagerService;->mBroadcastRefCount:I

    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 3419
    const-string v6, "PendingIntent send count: "

    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3420
    iget v6, v1, Lcom/android/server/alarm/AlarmManagerService;->mSendCount:I

    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 3421
    const-string v6, "PendingIntent finish count: "

    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3422
    iget v6, v1, Lcom/android/server/alarm/AlarmManagerService;->mSendFinishCount:I

    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 3423
    const-string v6, "Listener send count: "

    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3424
    iget v6, v1, Lcom/android/server/alarm/AlarmManagerService;->mListenerCount:I

    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 3425
    const-string v6, "Listener finish count: "

    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3426
    iget v6, v1, Lcom/android/server/alarm/AlarmManagerService;->mListenerFinishCount:I

    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->println(I)V

    .line 3427
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3429
    iget-object v6, v1, Lcom/android/server/alarm/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_572

    .line 3430
    const-string v6, "Outstanding deliveries:"

    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3431
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3432
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_54b
    iget-object v7, v1, Lcom/android/server/alarm/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_56c

    .line 3433
    const-string v7, "#"

    invoke-virtual {v2, v7}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3434
    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 3435
    const-string v7, ": "

    invoke-virtual {v2, v7}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3436
    iget-object v7, v1, Lcom/android/server/alarm/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 3432
    add-int/lit8 v6, v6, 0x1

    goto :goto_54b

    .line 3438
    .end local v6    # "i":I
    :cond_56c
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3439
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3442
    :cond_572
    const-string v6, "Allow while idle history:"

    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3443
    iget-object v6, v1, Lcom/android/server/alarm/AlarmManagerService;->mAllowWhileIdleHistory:Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

    invoke-virtual {v6, v2, v4, v5}, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;->dump(Landroid/util/IndentingPrintWriter;J)V

    .line 3444
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3446
    const-string v6, "Allow while idle compat history:"

    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3447
    iget-object v6, v1, Lcom/android/server/alarm/AlarmManagerService;->mAllowWhileIdleCompatHistory:Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

    invoke-virtual {v6, v2, v4, v5}, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;->dump(Landroid/util/IndentingPrintWriter;J)V

    .line 3448
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3450
    iget-object v6, v1, Lcom/android/server/alarm/AlarmManagerService;->mLastPriorityAlarmDispatch:Landroid/util/SparseLongArray;

    invoke-virtual {v6}, Landroid/util/SparseLongArray;->size()I

    move-result v6

    if-lez v6, :cond_5d1

    .line 3451
    const-string v6, "Last priority alarm dispatches:"

    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3452
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3453
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_59d
    iget-object v7, v1, Lcom/android/server/alarm/AlarmManagerService;->mLastPriorityAlarmDispatch:Landroid/util/SparseLongArray;

    invoke-virtual {v7}, Landroid/util/SparseLongArray;->size()I

    move-result v7

    if-ge v6, v7, :cond_5cb

    .line 3454
    const-string v7, "UID: "

    invoke-virtual {v2, v7}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3455
    iget-object v7, v1, Lcom/android/server/alarm/AlarmManagerService;->mLastPriorityAlarmDispatch:Landroid/util/SparseLongArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseLongArray;->keyAt(I)I

    move-result v7

    invoke-static {v2, v7}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 3456
    const-string v7, ": "

    invoke-virtual {v2, v7}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3457
    iget-object v7, v1, Lcom/android/server/alarm/AlarmManagerService;->mLastPriorityAlarmDispatch:Landroid/util/SparseLongArray;

    move-wide/from16 v16, v8

    .end local v8    # "nowRTC":J
    .local v16, "nowRTC":J
    invoke-virtual {v7, v6}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v7

    invoke-static {v7, v8, v4, v5, v2}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 3458
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3453
    add-int/lit8 v6, v6, 0x1

    move-wide/from16 v8, v16

    goto :goto_59d

    .end local v16    # "nowRTC":J
    .restart local v8    # "nowRTC":J
    :cond_5cb
    move-wide/from16 v16, v8

    .line 3460
    .end local v6    # "i":I
    .end local v8    # "nowRTC":J
    .restart local v16    # "nowRTC":J
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    goto :goto_5d3

    .line 3450
    .end local v16    # "nowRTC":J
    .restart local v8    # "nowRTC":J
    :cond_5d1
    move-wide/from16 v16, v8

    .line 3463
    .end local v8    # "nowRTC":J
    .restart local v16    # "nowRTC":J
    :goto_5d3
    iget-object v6, v1, Lcom/android/server/alarm/AlarmManagerService;->mRemovalHistory:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-lez v6, :cond_62e

    .line 3464
    const-string v6, "Removal history: "

    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3465
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3466
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_5e4
    iget-object v8, v1, Lcom/android/server/alarm/AlarmManagerService;->mRemovalHistory:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-ge v6, v8, :cond_628

    .line 3467
    iget-object v8, v1, Lcom/android/server/alarm/AlarmManagerService;->mRemovalHistory:Landroid/util/SparseArray;

    invoke-virtual {v8, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    invoke-static {v2, v8}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 3468
    const-string v8, ":"

    invoke-virtual {v2, v8}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3469
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3470
    iget-object v8, v1, Lcom/android/server/alarm/AlarmManagerService;->mRemovalHistory:Landroid/util/SparseArray;

    invoke-virtual {v8, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v8}, Lcom/android/internal/util/RingBuffer;->toArray()[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lcom/android/server/alarm/AlarmManagerService$RemovedAlarm;

    .line 3471
    .local v8, "historyForUid":[Lcom/android/server/alarm/AlarmManagerService$RemovedAlarm;
    array-length v9, v8

    const/4 v7, 0x0

    :goto_60d
    if-ge v7, v9, :cond_61f

    aget-object v23, v8, v7

    move-object/from16 v24, v23

    .line 3472
    .local v24, "removedAlarm":Lcom/android/server/alarm/AlarmManagerService$RemovedAlarm;
    move-object/from16 v23, v8

    move-object/from16 v8, v24

    .end local v24    # "removedAlarm":Lcom/android/server/alarm/AlarmManagerService$RemovedAlarm;
    .local v8, "removedAlarm":Lcom/android/server/alarm/AlarmManagerService$RemovedAlarm;
    .local v23, "historyForUid":[Lcom/android/server/alarm/AlarmManagerService$RemovedAlarm;
    invoke-virtual {v8, v2, v4, v5, v10}, Lcom/android/server/alarm/AlarmManagerService$RemovedAlarm;->dump(Landroid/util/IndentingPrintWriter;JLjava/text/SimpleDateFormat;)V

    .line 3471
    .end local v8    # "removedAlarm":Lcom/android/server/alarm/AlarmManagerService$RemovedAlarm;
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v8, v23

    goto :goto_60d

    .line 3474
    .end local v23    # "historyForUid":[Lcom/android/server/alarm/AlarmManagerService$RemovedAlarm;
    .local v8, "historyForUid":[Lcom/android/server/alarm/AlarmManagerService$RemovedAlarm;
    :cond_61f
    move-object/from16 v23, v8

    .end local v8    # "historyForUid":[Lcom/android/server/alarm/AlarmManagerService$RemovedAlarm;
    .restart local v23    # "historyForUid":[Lcom/android/server/alarm/AlarmManagerService$RemovedAlarm;
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3466
    nop

    .end local v23    # "historyForUid":[Lcom/android/server/alarm/AlarmManagerService$RemovedAlarm;
    add-int/lit8 v6, v6, 0x1

    goto :goto_5e4

    .line 3476
    .end local v6    # "i":I
    :cond_628
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3477
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3480
    :cond_62e
    iget-object v6, v1, Lcom/android/server/alarm/AlarmManagerService;->mLog:Lcom/android/internal/util/LocalLog;

    const-string v7, "Recent problems:"

    invoke-virtual {v6, v2, v7}, Lcom/android/internal/util/LocalLog;->dump(Landroid/util/IndentingPrintWriter;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_63b

    .line 3481
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3484
    :cond_63b
    const/16 v6, 0xa

    new-array v6, v6, [Lcom/android/server/alarm/AlarmManagerService$FilterStats;

    .line 3485
    .local v6, "topFilters":[Lcom/android/server/alarm/AlarmManagerService$FilterStats;
    new-instance v7, Lcom/android/server/alarm/AlarmManagerService$6;

    invoke-direct {v7, v1}, Lcom/android/server/alarm/AlarmManagerService$6;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    .line 3496
    .local v7, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/server/alarm/AlarmManagerService$FilterStats;>;"
    const/4 v8, 0x0

    .line 3498
    .local v8, "len":I
    const/4 v9, 0x0

    .local v9, "iu":I
    :goto_646
    move-object/from16 v23, v10

    .end local v10    # "sdf":Ljava/text/SimpleDateFormat;
    .local v23, "sdf":Ljava/text/SimpleDateFormat;
    iget-object v10, v1, Lcom/android/server/alarm/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v10

    if-ge v9, v10, :cond_6e2

    .line 3499
    iget-object v10, v1, Lcom/android/server/alarm/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v10, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/ArrayMap;

    .line 3500
    .local v10, "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;>;"
    const/16 v24, 0x0

    move/from16 v32, v24

    move/from16 v24, v8

    move/from16 v8, v32

    .local v8, "ip":I
    .local v24, "len":I
    :goto_660
    move/from16 v25, v11

    .end local v11    # "blocked":Z
    .local v25, "blocked":Z
    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    move-result v11

    if-ge v8, v11, :cond_6d2

    .line 3501
    invoke-virtual {v10, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;

    .line 3502
    .local v11, "bs":Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;
    const/16 v26, 0x0

    move-object/from16 v27, v10

    move-wide/from16 v28, v12

    move/from16 v10, v24

    move/from16 v12, v26

    .end local v24    # "len":I
    .local v10, "len":I
    .local v12, "is":I
    .local v27, "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;>;"
    .local v28, "nextWakeupRTC":J
    :goto_678
    iget-object v13, v11, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->filterStats:Landroid/util/ArrayMap;

    invoke-virtual {v13}, Landroid/util/ArrayMap;->size()I

    move-result v13

    if-ge v12, v13, :cond_6c3

    .line 3503
    iget-object v13, v11, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->filterStats:Landroid/util/ArrayMap;

    invoke-virtual {v13, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/alarm/AlarmManagerService$FilterStats;

    .line 3504
    .local v13, "fs":Lcom/android/server/alarm/AlarmManagerService$FilterStats;
    if-lez v10, :cond_692

    .line 3505
    move-object/from16 v26, v11

    const/4 v11, 0x0

    .end local v11    # "bs":Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;
    .local v26, "bs":Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;
    invoke-static {v6, v11, v10, v13, v7}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;IILjava/lang/Object;Ljava/util/Comparator;)I

    move-result v22

    goto :goto_697

    .end local v26    # "bs":Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;
    .restart local v11    # "bs":Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;
    :cond_692
    move-object/from16 v26, v11

    const/4 v11, 0x0

    .end local v11    # "bs":Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;
    .restart local v26    # "bs":Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;
    move/from16 v22, v11

    :goto_697
    move/from16 v24, v22

    .line 3506
    .local v24, "pos":I
    move/from16 v11, v24

    .end local v24    # "pos":I
    .local v11, "pos":I
    if-gez v11, :cond_6a5

    .line 3507
    move-wide/from16 v30, v14

    .end local v14    # "nextNonWakeupRTC":J
    .local v30, "nextNonWakeupRTC":J
    neg-int v14, v11

    add-int/lit8 v24, v14, -0x1

    move/from16 v11, v24

    .end local v11    # "pos":I
    .restart local v24    # "pos":I
    goto :goto_6a7

    .line 3506
    .end local v24    # "pos":I
    .end local v30    # "nextNonWakeupRTC":J
    .restart local v11    # "pos":I
    .restart local v14    # "nextNonWakeupRTC":J
    :cond_6a5
    move-wide/from16 v30, v14

    .line 3509
    .end local v14    # "nextNonWakeupRTC":J
    .restart local v30    # "nextNonWakeupRTC":J
    :goto_6a7
    array-length v14, v6

    if-ge v11, v14, :cond_6bc

    .line 3510
    array-length v14, v6

    sub-int/2addr v14, v11

    add-int/lit8 v14, v14, -0x1

    .line 3511
    .local v14, "copylen":I
    if-lez v14, :cond_6b5

    .line 3512
    add-int/lit8 v15, v11, 0x1

    invoke-static {v6, v11, v6, v15, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3514
    :cond_6b5
    aput-object v13, v6, v11

    .line 3515
    array-length v15, v6

    if-ge v10, v15, :cond_6bc

    .line 3516
    add-int/lit8 v10, v10, 0x1

    .line 3502
    .end local v11    # "pos":I
    .end local v13    # "fs":Lcom/android/server/alarm/AlarmManagerService$FilterStats;
    .end local v14    # "copylen":I
    :cond_6bc
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v11, v26

    move-wide/from16 v14, v30

    goto :goto_678

    .end local v26    # "bs":Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;
    .end local v30    # "nextNonWakeupRTC":J
    .local v11, "bs":Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;
    .local v14, "nextNonWakeupRTC":J
    :cond_6c3
    move-object/from16 v26, v11

    move-wide/from16 v30, v14

    .line 3500
    .end local v11    # "bs":Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;
    .end local v12    # "is":I
    .end local v14    # "nextNonWakeupRTC":J
    .restart local v30    # "nextNonWakeupRTC":J
    add-int/lit8 v8, v8, 0x1

    move/from16 v24, v10

    move/from16 v11, v25

    move-object/from16 v10, v27

    move-wide/from16 v12, v28

    goto :goto_660

    .end local v27    # "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;>;"
    .end local v28    # "nextWakeupRTC":J
    .end local v30    # "nextNonWakeupRTC":J
    .local v10, "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;>;"
    .local v12, "nextWakeupRTC":J
    .restart local v14    # "nextNonWakeupRTC":J
    .local v24, "len":I
    :cond_6d2
    move-object/from16 v27, v10

    move-wide/from16 v28, v12

    move-wide/from16 v30, v14

    .line 3498
    .end local v8    # "ip":I
    .end local v10    # "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;>;"
    .end local v12    # "nextWakeupRTC":J
    .end local v14    # "nextNonWakeupRTC":J
    .restart local v28    # "nextWakeupRTC":J
    .restart local v30    # "nextNonWakeupRTC":J
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v10, v23

    move/from16 v8, v24

    move/from16 v11, v25

    goto/16 :goto_646

    .end local v24    # "len":I
    .end local v25    # "blocked":Z
    .end local v28    # "nextWakeupRTC":J
    .end local v30    # "nextNonWakeupRTC":J
    .local v8, "len":I
    .local v11, "blocked":Z
    .restart local v12    # "nextWakeupRTC":J
    .restart local v14    # "nextNonWakeupRTC":J
    :cond_6e2
    move/from16 v25, v11

    move-wide/from16 v28, v12

    move-wide/from16 v30, v14

    .line 3522
    .end local v9    # "iu":I
    .end local v11    # "blocked":Z
    .end local v12    # "nextWakeupRTC":J
    .end local v14    # "nextNonWakeupRTC":J
    .restart local v25    # "blocked":Z
    .restart local v28    # "nextWakeupRTC":J
    .restart local v30    # "nextNonWakeupRTC":J
    if-lez v8, :cond_749

    .line 3523
    const-string v9, "Top Alarms:"

    invoke-virtual {v2, v9}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3524
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3525
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_6f3
    if-ge v9, v8, :cond_746

    .line 3526
    aget-object v10, v6, v9

    .line 3527
    .local v10, "fs":Lcom/android/server/alarm/AlarmManagerService$FilterStats;
    iget v11, v10, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->nesting:I

    if-lez v11, :cond_700

    const-string v11, "*ACTIVE* "

    invoke-virtual {v2, v11}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3528
    :cond_700
    iget-wide v11, v10, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->aggregateTime:J

    invoke-static {v11, v12, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 3529
    const-string v11, " running, "

    invoke-virtual {v2, v11}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3530
    iget v11, v10, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->numWakeup:I

    invoke-virtual {v2, v11}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 3531
    const-string v11, " wakeups, "

    invoke-virtual {v2, v11}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3532
    iget v11, v10, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->count:I

    invoke-virtual {v2, v11}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 3533
    const-string v11, " alarms: "

    invoke-virtual {v2, v11}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3534
    iget-object v11, v10, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->mBroadcastStats:Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;

    iget v11, v11, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->mUid:I

    invoke-static {v2, v11}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 3535
    const-string v11, ":"

    invoke-virtual {v2, v11}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3536
    iget-object v11, v10, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->mBroadcastStats:Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;

    iget-object v11, v11, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v11}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3537
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3539
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3540
    iget-object v11, v10, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->mTag:Ljava/lang/String;

    invoke-virtual {v2, v11}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3541
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3542
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3525
    nop

    .end local v10    # "fs":Lcom/android/server/alarm/AlarmManagerService$FilterStats;
    add-int/lit8 v9, v9, 0x1

    goto :goto_6f3

    .line 3544
    .end local v9    # "i":I
    :cond_746
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3547
    :cond_749
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3548
    const-string v9, "Alarm Stats:"

    invoke-virtual {v2, v9}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3549
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 3550
    .local v9, "tmpFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/alarm/AlarmManagerService$FilterStats;>;"
    const/4 v10, 0x0

    .local v10, "iu":I
    :goto_757
    iget-object v11, v1, Lcom/android/server/alarm/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v11

    if-ge v10, v11, :cond_835

    .line 3551
    iget-object v11, v1, Lcom/android/server/alarm/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v11, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/util/ArrayMap;

    .line 3552
    .local v11, "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;>;"
    const/4 v12, 0x0

    .local v12, "ip":I
    :goto_768
    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v13

    if-ge v12, v13, :cond_82d

    .line 3553
    invoke-virtual {v11, v12}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;

    .line 3554
    .local v13, "bs":Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;
    iget v14, v13, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->nesting:I

    if-lez v14, :cond_77d

    const-string v14, "*ACTIVE* "

    invoke-virtual {v2, v14}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3555
    :cond_77d
    iget v14, v13, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->mUid:I

    invoke-static {v2, v14}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 3556
    const-string v14, ":"

    invoke-virtual {v2, v14}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3557
    iget-object v14, v13, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v14}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3558
    const-string v14, " "

    invoke-virtual {v2, v14}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3559
    iget-wide v14, v13, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->aggregateTime:J

    invoke-static {v14, v15, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 3560
    const-string v14, " running, "

    invoke-virtual {v2, v14}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3561
    iget v14, v13, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->numWakeup:I

    invoke-virtual {v2, v14}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 3562
    const-string v14, " wakeups:"

    invoke-virtual {v2, v14}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3564
    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 3565
    const/4 v14, 0x0

    .local v14, "is":I
    :goto_7a9
    iget-object v15, v13, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->filterStats:Landroid/util/ArrayMap;

    invoke-virtual {v15}, Landroid/util/ArrayMap;->size()I

    move-result v15

    if-ge v14, v15, :cond_7bf

    .line 3566
    iget-object v15, v13, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->filterStats:Landroid/util/ArrayMap;

    invoke-virtual {v15, v14}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/alarm/AlarmManagerService$FilterStats;

    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3565
    add-int/lit8 v14, v14, 0x1

    goto :goto_7a9

    .line 3568
    .end local v14    # "is":I
    :cond_7bf
    invoke-static {v9, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 3569
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3570
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_7c6
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v14, v15, :cond_81d

    .line 3571
    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/alarm/AlarmManagerService$FilterStats;

    .line 3572
    .local v15, "fs":Lcom/android/server/alarm/AlarmManagerService$FilterStats;
    move-object/from16 v22, v6

    .end local v6    # "topFilters":[Lcom/android/server/alarm/AlarmManagerService$FilterStats;
    .local v22, "topFilters":[Lcom/android/server/alarm/AlarmManagerService$FilterStats;
    iget v6, v15, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->nesting:I

    if-lez v6, :cond_7dd

    const-string v6, "*ACTIVE* "

    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3573
    :cond_7dd
    move-object/from16 v24, v7

    .end local v7    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/server/alarm/AlarmManagerService$FilterStats;>;"
    .local v24, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/server/alarm/AlarmManagerService$FilterStats;>;"
    iget-wide v6, v15, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->aggregateTime:J

    invoke-static {v6, v7, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 3574
    const-string v6, " "

    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3575
    iget v6, v15, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->numWakeup:I

    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 3576
    const-string v6, " wakes "

    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3577
    iget v6, v15, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->count:I

    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 3578
    const-string v6, " alarms, last "

    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3579
    iget-wide v6, v15, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->lastTime:J

    invoke-static {v6, v7, v4, v5, v2}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 3580
    const-string v6, ":"

    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 3582
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3583
    iget-object v6, v15, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->mTag:Ljava/lang/String;

    invoke-virtual {v2, v6}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 3584
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3585
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3570
    nop

    .end local v15    # "fs":Lcom/android/server/alarm/AlarmManagerService$FilterStats;
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v6, v22

    move-object/from16 v7, v24

    goto :goto_7c6

    .end local v22    # "topFilters":[Lcom/android/server/alarm/AlarmManagerService$FilterStats;
    .end local v24    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/server/alarm/AlarmManagerService$FilterStats;>;"
    .restart local v6    # "topFilters":[Lcom/android/server/alarm/AlarmManagerService$FilterStats;
    .restart local v7    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/server/alarm/AlarmManagerService$FilterStats;>;"
    :cond_81d
    move-object/from16 v22, v6

    move-object/from16 v24, v7

    .line 3587
    .end local v6    # "topFilters":[Lcom/android/server/alarm/AlarmManagerService$FilterStats;
    .end local v7    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/server/alarm/AlarmManagerService$FilterStats;>;"
    .end local v14    # "i":I
    .restart local v22    # "topFilters":[Lcom/android/server/alarm/AlarmManagerService$FilterStats;
    .restart local v24    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/server/alarm/AlarmManagerService$FilterStats;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 3552
    nop

    .end local v13    # "bs":Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v6, v22

    move-object/from16 v7, v24

    goto/16 :goto_768

    .end local v22    # "topFilters":[Lcom/android/server/alarm/AlarmManagerService$FilterStats;
    .end local v24    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/server/alarm/AlarmManagerService$FilterStats;>;"
    .restart local v6    # "topFilters":[Lcom/android/server/alarm/AlarmManagerService$FilterStats;
    .restart local v7    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/server/alarm/AlarmManagerService$FilterStats;>;"
    :cond_82d
    move-object/from16 v22, v6

    move-object/from16 v24, v7

    .line 3550
    .end local v6    # "topFilters":[Lcom/android/server/alarm/AlarmManagerService$FilterStats;
    .end local v7    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/server/alarm/AlarmManagerService$FilterStats;>;"
    .end local v11    # "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;>;"
    .end local v12    # "ip":I
    .restart local v22    # "topFilters":[Lcom/android/server/alarm/AlarmManagerService$FilterStats;
    .restart local v24    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/server/alarm/AlarmManagerService$FilterStats;>;"
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_757

    .end local v22    # "topFilters":[Lcom/android/server/alarm/AlarmManagerService$FilterStats;
    .end local v24    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/server/alarm/AlarmManagerService$FilterStats;>;"
    .restart local v6    # "topFilters":[Lcom/android/server/alarm/AlarmManagerService$FilterStats;
    .restart local v7    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/server/alarm/AlarmManagerService$FilterStats;>;"
    :cond_835
    move-object/from16 v22, v6

    move-object/from16 v24, v7

    .line 3590
    .end local v6    # "topFilters":[Lcom/android/server/alarm/AlarmManagerService$FilterStats;
    .end local v7    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/server/alarm/AlarmManagerService$FilterStats;>;"
    .end local v10    # "iu":I
    .restart local v22    # "topFilters":[Lcom/android/server/alarm/AlarmManagerService$FilterStats;
    .restart local v24    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/server/alarm/AlarmManagerService$FilterStats;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 3591
    iget-object v6, v1, Lcom/android/server/alarm/AlarmManagerService;->mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

    invoke-virtual {v6, v2}, Lcom/android/internal/util/jobs/StatLogger;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 3621
    .end local v4    # "nowELAPSED":J
    .end local v8    # "len":I
    .end local v9    # "tmpFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/alarm/AlarmManagerService$FilterStats;>;"
    .end local v16    # "nowRTC":J
    .end local v18    # "nowUPTIME":J
    .end local v20    # "ssm":Lcom/android/server/SystemServiceManager;
    .end local v21    # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    .end local v22    # "topFilters":[Lcom/android/server/alarm/AlarmManagerService$FilterStats;
    .end local v23    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v24    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/server/alarm/AlarmManagerService$FilterStats;>;"
    .end local v25    # "blocked":Z
    .end local v28    # "nextWakeupRTC":J
    .end local v30    # "nextNonWakeupRTC":J
    monitor-exit v3

    .line 3622
    return-void

    .line 3192
    .restart local v4    # "nowELAPSED":J
    .local v6, "nowUPTIME":J
    .local v8, "nowRTC":J
    .local v10, "sdf":Ljava/text/SimpleDateFormat;
    .local v11, "i":I
    :cond_843
    move-wide/from16 v18, v6

    move-wide/from16 v16, v8

    move-object/from16 v23, v10

    .end local v6    # "nowUPTIME":J
    .end local v8    # "nowRTC":J
    .end local v10    # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v16    # "nowRTC":J
    .restart local v18    # "nowUPTIME":J
    .restart local v23    # "sdf":Ljava/text/SimpleDateFormat;
    goto/16 :goto_101

    .line 3621
    .end local v4    # "nowELAPSED":J
    .end local v11    # "i":I
    .end local v16    # "nowRTC":J
    .end local v18    # "nowUPTIME":J
    .end local v23    # "sdf":Ljava/text/SimpleDateFormat;
    :catchall_84b
    move-exception v0

    move-object v4, v0

    monitor-exit v3
    :try_end_84e
    .catchall {:try_start_7 .. :try_end_84e} :catchall_84b

    throw v4
.end method

.method dumpProto(Ljava/io/FileDescriptor;)V
    .registers 26
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    .line 3625
    move-object/from16 v1, p0

    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    move-object/from16 v2, p1

    invoke-direct {v0, v2}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object v9, v0

    .line 3627
    .local v9, "proto":Landroid/util/proto/ProtoOutputStream;
    iget-object v10, v1, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 3628
    :try_start_d
    iget-object v0, v1, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getCurrentTimeMillis()J

    move-result-wide v3

    move-wide v11, v3

    .line 3629
    .local v11, "nowRTC":J
    iget-object v0, v1, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getElapsedRealtime()J

    move-result-wide v3

    move-wide v13, v3

    .line 3630
    .local v13, "nowElapsed":J
    const-wide v3, 0x10300000001L

    invoke-virtual {v9, v3, v4, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3631
    const-wide v3, 0x10300000002L

    invoke-virtual {v9, v3, v4, v13, v14}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3632
    iget-wide v3, v1, Lcom/android/server/alarm/AlarmManagerService;->mLastTimeChangeClockTime:J

    const-wide v5, 0x10300000003L

    invoke-virtual {v9, v5, v6, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3634
    const-wide v3, 0x10300000004L

    iget-wide v7, v1, Lcom/android/server/alarm/AlarmManagerService;->mLastTimeChangeRealtime:J

    invoke-virtual {v9, v3, v4, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3637
    iget-object v0, v1, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    const-wide v3, 0x10b00000005L

    invoke-virtual {v0, v9, v3, v4}, Lcom/android/server/alarm/AlarmManagerService$Constants;->dumpProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 3639
    iget-object v0, v1, Lcom/android/server/alarm/AlarmManagerService;->mAppStateTracker:Lcom/android/server/AppStateTrackerImpl;

    if-eqz v0, :cond_55

    .line 3640
    const-wide v3, 0x10b00000006L

    invoke-virtual {v0, v9, v3, v4}, Lcom/android/server/AppStateTrackerImpl;->dumpProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 3643
    :cond_55
    const-wide v3, 0x10800000007L

    iget-boolean v0, v1, Lcom/android/server/alarm/AlarmManagerService;->mInteractive:Z

    invoke-virtual {v9, v3, v4, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3644
    iget-boolean v0, v1, Lcom/android/server/alarm/AlarmManagerService;->mInteractive:Z

    if-nez v0, :cond_93

    .line 3646
    const-wide v3, 0x10300000008L

    iget-wide v7, v1, Lcom/android/server/alarm/AlarmManagerService;->mNonInteractiveStartTime:J

    sub-long v7, v13, v7

    invoke-virtual {v9, v3, v4, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3648
    const-wide v3, 0x10300000009L

    .line 3649
    invoke-virtual {v1, v13, v14}, Lcom/android/server/alarm/AlarmManagerService;->currentNonWakeupFuzzLocked(J)J

    move-result-wide v7

    .line 3648
    invoke-virtual {v9, v3, v4, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3650
    const-wide v3, 0x1030000000aL

    iget-wide v7, v1, Lcom/android/server/alarm/AlarmManagerService;->mLastAlarmDeliveryTime:J

    sub-long v7, v13, v7

    invoke-virtual {v9, v3, v4, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3652
    const-wide v3, 0x1030000000bL

    iget-wide v7, v1, Lcom/android/server/alarm/AlarmManagerService;->mNextNonWakeupDeliveryTime:J

    sub-long v7, v13, v7

    invoke-virtual {v9, v3, v4, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3656
    :cond_93
    const-wide v3, 0x1030000000cL

    iget-wide v7, v1, Lcom/android/server/alarm/AlarmManagerService;->mNextNonWakeup:J

    sub-long/2addr v7, v13

    invoke-virtual {v9, v3, v4, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3658
    const-wide v3, 0x1030000000dL

    iget-wide v7, v1, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeup:J

    sub-long/2addr v7, v13

    invoke-virtual {v9, v3, v4, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3660
    const-wide v3, 0x1030000000eL

    iget-wide v7, v1, Lcom/android/server/alarm/AlarmManagerService;->mLastWakeup:J

    sub-long v7, v13, v7

    invoke-virtual {v9, v3, v4, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3662
    const-wide v3, 0x1030000000fL

    iget-wide v7, v1, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeUpSetAt:J

    sub-long v7, v13, v7

    invoke-virtual {v9, v3, v4, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3664
    const-wide v3, 0x10300000010L

    iget v0, v1, Lcom/android/server/alarm/AlarmManagerService;->mNumTimeChanged:I

    invoke-virtual {v9, v3, v4, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3666
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 3667
    .local v0, "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    iget-object v3, v1, Lcom/android/server/alarm/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    move v15, v3

    .line 3668
    .local v15, "nextAlarmClockForUserSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_d8
    if-ge v3, v15, :cond_ea

    .line 3669
    iget-object v4, v1, Lcom/android/server/alarm/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 3668
    add-int/lit8 v3, v3, 0x1

    goto :goto_d8

    .line 3671
    .end local v3    # "i":I
    :cond_ea
    iget-object v3, v1, Lcom/android/server/alarm/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    .line 3672
    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    move v7, v3

    .line 3673
    .local v7, "pendingSendNextAlarmClockChangedForUserSize":I
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_f2
    if-ge v3, v7, :cond_104

    .line 3674
    iget-object v4, v1, Lcom/android/server/alarm/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 3673
    add-int/lit8 v3, v3, 0x1

    goto :goto_f2

    .line 3676
    .end local v3    # "i":I
    :cond_104
    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_108
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_168

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 3677
    .local v4, "user":I
    iget-object v8, v1, Lcom/android/server/alarm/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v8, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/AlarmManager$AlarmClockInfo;

    .line 3678
    .local v8, "next":Landroid/app/AlarmManager$AlarmClockInfo;
    if-eqz v8, :cond_127

    invoke-virtual {v8}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    move-result-wide v18

    goto :goto_129

    :cond_127
    const-wide/16 v18, 0x0

    :goto_129
    move-wide/from16 v20, v18

    .line 3679
    .local v20, "time":J
    iget-object v5, v1, Lcom/android/server/alarm/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    .line 3680
    .local v5, "pendingSend":Z
    move-object v6, v3

    const-wide v2, 0x20b00000012L

    invoke-virtual {v9, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 3682
    .local v2, "aToken":J
    move-object/from16 v23, v6

    move/from16 v22, v7

    const-wide v6, 0x10500000001L

    .end local v7    # "pendingSendNextAlarmClockChangedForUserSize":I
    .local v22, "pendingSendNextAlarmClockChangedForUserSize":I
    invoke-virtual {v9, v6, v7, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3683
    const-wide v6, 0x10800000002L

    invoke-virtual {v9, v6, v7, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3684
    move/from16 v16, v4

    move/from16 v17, v5

    move-wide/from16 v6, v20

    const-wide v4, 0x10300000003L

    .end local v4    # "user":I
    .end local v5    # "pendingSend":Z
    .end local v20    # "time":J
    .local v6, "time":J
    .local v16, "user":I
    .local v17, "pendingSend":Z
    invoke-virtual {v9, v4, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3685
    invoke-virtual {v9, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 3686
    .end local v2    # "aToken":J
    .end local v6    # "time":J
    .end local v8    # "next":Landroid/app/AlarmManager$AlarmClockInfo;
    .end local v16    # "user":I
    .end local v17    # "pendingSend":Z
    move-object/from16 v2, p1

    move-wide v5, v4

    move/from16 v7, v22

    move-object/from16 v3, v23

    goto :goto_108

    .line 3687
    .end local v22    # "pendingSendNextAlarmClockChangedForUserSize":I
    .restart local v7    # "pendingSendNextAlarmClockChangedForUserSize":I
    :cond_168
    move/from16 v22, v7

    const-wide v6, 0x10500000001L

    .end local v7    # "pendingSendNextAlarmClockChangedForUserSize":I
    .restart local v22    # "pendingSendNextAlarmClockChangedForUserSize":I
    iget-object v2, v1, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    invoke-interface {v2, v9, v13, v14}, Lcom/android/server/alarm/AlarmStore;->dumpProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 3689
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_175
    iget-object v3, v1, Lcom/android/server/alarm/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1c4

    .line 3690
    iget-object v3, v1, Lcom/android/server/alarm/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    move-object/from16 v16, v3

    .line 3691
    .local v16, "blockedAlarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/alarm/Alarm;>;"
    if-eqz v16, :cond_1b7

    .line 3692
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_18d
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1b1

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/alarm/Alarm;

    .line 3693
    .local v3, "a":Lcom/android/server/alarm/Alarm;
    const-wide v18, 0x20b00000014L

    move-object v4, v9

    move-wide v7, v6

    move-wide/from16 v5, v18

    move-wide/from16 v19, v11

    move/from16 v18, v22

    move-wide v11, v7

    .end local v11    # "nowRTC":J
    .end local v22    # "pendingSendNextAlarmClockChangedForUserSize":I
    .local v18, "pendingSendNextAlarmClockChangedForUserSize":I
    .local v19, "nowRTC":J
    move-wide v7, v13

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/alarm/Alarm;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JJ)V

    .line 3696
    .end local v3    # "a":Lcom/android/server/alarm/Alarm;
    move-wide v6, v11

    move/from16 v22, v18

    move-wide/from16 v11, v19

    goto :goto_18d

    .line 3692
    .end local v18    # "pendingSendNextAlarmClockChangedForUserSize":I
    .end local v19    # "nowRTC":J
    .restart local v11    # "nowRTC":J
    .restart local v22    # "pendingSendNextAlarmClockChangedForUserSize":I
    :cond_1b1
    move-wide/from16 v19, v11

    move/from16 v18, v22

    move-wide v11, v6

    .end local v11    # "nowRTC":J
    .end local v22    # "pendingSendNextAlarmClockChangedForUserSize":I
    .restart local v18    # "pendingSendNextAlarmClockChangedForUserSize":I
    .restart local v19    # "nowRTC":J
    goto :goto_1bc

    .line 3691
    .end local v18    # "pendingSendNextAlarmClockChangedForUserSize":I
    .end local v19    # "nowRTC":J
    .restart local v11    # "nowRTC":J
    .restart local v22    # "pendingSendNextAlarmClockChangedForUserSize":I
    :cond_1b7
    move-wide/from16 v19, v11

    move/from16 v18, v22

    move-wide v11, v6

    .line 3689
    .end local v11    # "nowRTC":J
    .end local v16    # "blockedAlarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/alarm/Alarm;>;"
    .end local v22    # "pendingSendNextAlarmClockChangedForUserSize":I
    .restart local v18    # "pendingSendNextAlarmClockChangedForUserSize":I
    .restart local v19    # "nowRTC":J
    :goto_1bc
    add-int/lit8 v2, v2, 0x1

    move-wide v6, v11

    move/from16 v22, v18

    move-wide/from16 v11, v19

    goto :goto_175

    .end local v18    # "pendingSendNextAlarmClockChangedForUserSize":I
    .end local v19    # "nowRTC":J
    .restart local v11    # "nowRTC":J
    .restart local v22    # "pendingSendNextAlarmClockChangedForUserSize":I
    :cond_1c4
    move-wide/from16 v19, v11

    move/from16 v18, v22

    move-wide v11, v6

    .line 3699
    .end local v2    # "i":I
    .end local v11    # "nowRTC":J
    .end local v22    # "pendingSendNextAlarmClockChangedForUserSize":I
    .restart local v18    # "pendingSendNextAlarmClockChangedForUserSize":I
    .restart local v19    # "nowRTC":J
    iget-object v3, v1, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    if-eqz v3, :cond_1d7

    .line 3700
    const-wide v5, 0x10b00000015L

    move-object v4, v9

    move-wide v7, v13

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/alarm/Alarm;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JJ)V

    .line 3703
    :cond_1d7
    iget-object v3, v1, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/alarm/Alarm;

    if-eqz v3, :cond_1e5

    .line 3704
    const-wide v5, 0x10b00000017L

    move-object v4, v9

    move-wide v7, v13

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/alarm/Alarm;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JJ)V

    .line 3708
    :cond_1e5
    iget-object v2, v1, Lcom/android/server/alarm/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1eb
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_202

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/alarm/Alarm;

    .line 3709
    .restart local v3    # "a":Lcom/android/server/alarm/Alarm;
    const-wide v5, 0x20b00000018L

    move-object v4, v9

    move-wide v7, v13

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/alarm/Alarm;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JJ)V

    .line 3711
    .end local v3    # "a":Lcom/android/server/alarm/Alarm;
    goto :goto_1eb

    .line 3713
    :cond_202
    const-wide v2, 0x10500000019L

    iget v4, v1, Lcom/android/server/alarm/AlarmManagerService;->mNumDelayedAlarms:I

    invoke-virtual {v9, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3714
    const-wide v2, 0x1030000001aL

    iget-wide v4, v1, Lcom/android/server/alarm/AlarmManagerService;->mTotalDelayTime:J

    invoke-virtual {v9, v2, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3715
    const-wide v2, 0x1030000001bL

    iget-wide v4, v1, Lcom/android/server/alarm/AlarmManagerService;->mMaxDelayTime:J

    invoke-virtual {v9, v2, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3716
    const-wide v2, 0x1030000001cL

    iget-wide v4, v1, Lcom/android/server/alarm/AlarmManagerService;->mNonInteractiveTime:J

    invoke-virtual {v9, v2, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3719
    const-wide v2, 0x1050000001dL

    iget v4, v1, Lcom/android/server/alarm/AlarmManagerService;->mBroadcastRefCount:I

    invoke-virtual {v9, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3720
    const-wide v2, 0x1050000001eL

    iget v4, v1, Lcom/android/server/alarm/AlarmManagerService;->mSendCount:I

    invoke-virtual {v9, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3721
    const-wide v2, 0x1050000001fL

    iget v4, v1, Lcom/android/server/alarm/AlarmManagerService;->mSendFinishCount:I

    invoke-virtual {v9, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3722
    const-wide v2, 0x10500000020L

    iget v4, v1, Lcom/android/server/alarm/AlarmManagerService;->mListenerCount:I

    invoke-virtual {v9, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3723
    const-wide v2, 0x10500000021L

    iget v4, v1, Lcom/android/server/alarm/AlarmManagerService;->mListenerFinishCount:I

    invoke-virtual {v9, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3725
    iget-object v2, v1, Lcom/android/server/alarm/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_262
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_277

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/alarm/AlarmManagerService$InFlight;

    .line 3726
    .local v3, "f":Lcom/android/server/alarm/AlarmManagerService$InFlight;
    const-wide v4, 0x20b00000022L

    invoke-virtual {v3, v9, v4, v5}, Lcom/android/server/alarm/AlarmManagerService$InFlight;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 3727
    .end local v3    # "f":Lcom/android/server/alarm/AlarmManagerService$InFlight;
    goto :goto_262

    .line 3729
    :cond_277
    iget-object v2, v1, Lcom/android/server/alarm/AlarmManagerService;->mLog:Lcom/android/internal/util/LocalLog;

    const-wide v3, 0x10b00000025L

    invoke-virtual {v2, v9, v3, v4}, Lcom/android/internal/util/LocalLog;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 3731
    const/16 v2, 0xa

    new-array v2, v2, [Lcom/android/server/alarm/AlarmManagerService$FilterStats;

    .line 3732
    .local v2, "topFilters":[Lcom/android/server/alarm/AlarmManagerService$FilterStats;
    new-instance v3, Lcom/android/server/alarm/AlarmManagerService$7;

    invoke-direct {v3, v1}, Lcom/android/server/alarm/AlarmManagerService$7;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    .line 3743
    .local v3, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/server/alarm/AlarmManagerService$FilterStats;>;"
    const/4 v4, 0x0

    .line 3745
    .local v4, "len":I
    const/4 v5, 0x0

    .local v5, "iu":I
    :goto_28c
    iget-object v6, v1, Lcom/android/server/alarm/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_312

    .line 3746
    iget-object v6, v1, Lcom/android/server/alarm/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/ArrayMap;

    .line 3747
    .local v6, "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;>;"
    const/4 v7, 0x0

    .local v7, "ip":I
    :goto_29d
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v8

    if-ge v7, v8, :cond_305

    .line 3748
    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;

    .line 3749
    .local v8, "bs":Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;
    const/16 v16, 0x0

    move/from16 v11, v16

    .local v11, "is":I
    :goto_2ad
    iget-object v12, v8, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->filterStats:Landroid/util/ArrayMap;

    invoke-virtual {v12}, Landroid/util/ArrayMap;->size()I

    move-result v12

    if-ge v11, v12, :cond_2f7

    .line 3750
    iget-object v12, v8, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->filterStats:Landroid/util/ArrayMap;

    invoke-virtual {v12, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/alarm/AlarmManagerService$FilterStats;

    .line 3751
    .local v12, "fs":Lcom/android/server/alarm/AlarmManagerService$FilterStats;
    move-object/from16 v21, v0

    .end local v0    # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    .local v21, "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    if-lez v4, :cond_2c6

    .line 3752
    invoke-static {v2, v0, v4, v12, v3}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;IILjava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    :cond_2c6
    nop

    .line 3753
    .local v0, "pos":I
    if-gez v0, :cond_2cf

    .line 3754
    move-object/from16 v22, v6

    .end local v6    # "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;>;"
    .local v22, "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;>;"
    neg-int v6, v0

    add-int/lit8 v0, v6, -0x1

    goto :goto_2d1

    .line 3753
    .end local v22    # "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;>;"
    .restart local v6    # "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;>;"
    :cond_2cf
    move-object/from16 v22, v6

    .line 3756
    .end local v6    # "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;>;"
    .restart local v22    # "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;>;"
    :goto_2d1
    array-length v6, v2

    if-ge v0, v6, :cond_2ec

    .line 3757
    array-length v6, v2

    sub-int/2addr v6, v0

    add-int/lit8 v6, v6, -0x1

    .line 3758
    .local v6, "copylen":I
    if-lez v6, :cond_2e2

    .line 3759
    move-object/from16 v23, v8

    .end local v8    # "bs":Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;
    .local v23, "bs":Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;
    add-int/lit8 v8, v0, 0x1

    invoke-static {v2, v0, v2, v8, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2e4

    .line 3758
    .end local v23    # "bs":Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;
    .restart local v8    # "bs":Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;
    :cond_2e2
    move-object/from16 v23, v8

    .line 3761
    .end local v8    # "bs":Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;
    .restart local v23    # "bs":Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;
    :goto_2e4
    aput-object v12, v2, v0

    .line 3762
    array-length v8, v2

    if-ge v4, v8, :cond_2ee

    .line 3763
    add-int/lit8 v4, v4, 0x1

    goto :goto_2ee

    .line 3756
    .end local v6    # "copylen":I
    .end local v23    # "bs":Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;
    .restart local v8    # "bs":Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;
    :cond_2ec
    move-object/from16 v23, v8

    .line 3749
    .end local v0    # "pos":I
    .end local v8    # "bs":Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;
    .end local v12    # "fs":Lcom/android/server/alarm/AlarmManagerService$FilterStats;
    .restart local v23    # "bs":Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;
    :cond_2ee
    :goto_2ee
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, v21

    move-object/from16 v6, v22

    move-object/from16 v8, v23

    goto :goto_2ad

    .end local v21    # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    .end local v22    # "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;>;"
    .end local v23    # "bs":Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;
    .local v0, "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    .local v6, "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;>;"
    .restart local v8    # "bs":Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;
    :cond_2f7
    move-object/from16 v21, v0

    move-object/from16 v22, v6

    move-object/from16 v23, v8

    .line 3747
    .end local v0    # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    .end local v6    # "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;>;"
    .end local v8    # "bs":Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;
    .end local v11    # "is":I
    .restart local v21    # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    .restart local v22    # "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;>;"
    add-int/lit8 v7, v7, 0x1

    const-wide v11, 0x10500000001L

    goto :goto_29d

    .end local v21    # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    .end local v22    # "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;>;"
    .restart local v0    # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    .restart local v6    # "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;>;"
    :cond_305
    move-object/from16 v21, v0

    move-object/from16 v22, v6

    .line 3745
    .end local v0    # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    .end local v6    # "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;>;"
    .end local v7    # "ip":I
    .restart local v21    # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    add-int/lit8 v5, v5, 0x1

    const-wide v11, 0x10500000001L

    goto/16 :goto_28c

    .end local v21    # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    .restart local v0    # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    :cond_312
    move-object/from16 v21, v0

    .line 3769
    .end local v0    # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    .end local v5    # "iu":I
    .restart local v21    # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_315
    if-ge v0, v4, :cond_348

    .line 3770
    const-wide v5, 0x20b00000026L

    invoke-virtual {v9, v5, v6}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    .line 3771
    .local v5, "token":J
    aget-object v7, v2, v0

    .line 3773
    .local v7, "fs":Lcom/android/server/alarm/AlarmManagerService$FilterStats;
    iget-object v8, v7, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->mBroadcastStats:Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;

    iget v8, v8, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->mUid:I

    const-wide v11, 0x10500000001L

    invoke-virtual {v9, v11, v12, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3774
    const-wide v11, 0x10900000002L

    iget-object v8, v7, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->mBroadcastStats:Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;

    iget-object v8, v8, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->mPackageName:Ljava/lang/String;

    invoke-virtual {v9, v11, v12, v8}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 3776
    const-wide v11, 0x10b00000003L

    invoke-virtual {v7, v9, v11, v12}, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 3778
    invoke-virtual {v9, v5, v6}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 3769
    .end local v5    # "token":J
    .end local v7    # "fs":Lcom/android/server/alarm/AlarmManagerService$FilterStats;
    add-int/lit8 v0, v0, 0x1

    goto :goto_315

    .line 3781
    .end local v0    # "i":I
    :cond_348
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3782
    .local v0, "tmpFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/alarm/AlarmManagerService$FilterStats;>;"
    const/4 v5, 0x0

    .local v5, "iu":I
    :goto_34e
    iget-object v6, v1, Lcom/android/server/alarm/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_3d4

    .line 3783
    iget-object v6, v1, Lcom/android/server/alarm/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/ArrayMap;

    .line 3784
    .restart local v6    # "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;>;"
    const/4 v7, 0x0

    .local v7, "ip":I
    :goto_35f
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v8

    if-ge v7, v8, :cond_3ca

    .line 3785
    const-wide v11, 0x20b00000027L

    invoke-virtual {v9, v11, v12}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v11

    .line 3787
    .local v11, "token":J
    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;

    .line 3788
    .restart local v8    # "bs":Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;
    move-object/from16 v16, v2

    .end local v2    # "topFilters":[Lcom/android/server/alarm/AlarmManagerService$FilterStats;
    .local v16, "topFilters":[Lcom/android/server/alarm/AlarmManagerService$FilterStats;
    const-wide v1, 0x10b00000001L

    invoke-virtual {v8, v9, v1, v2}, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 3791
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3792
    const/4 v1, 0x0

    .local v1, "is":I
    :goto_382
    iget-object v2, v8, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->filterStats:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_398

    .line 3793
    iget-object v2, v8, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->filterStats:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/alarm/AlarmManagerService$FilterStats;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3792
    add-int/lit8 v1, v1, 0x1

    goto :goto_382

    .line 3795
    .end local v1    # "is":I
    :cond_398
    invoke-static {v0, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 3796
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_39f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3bc

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/alarm/AlarmManagerService$FilterStats;

    .line 3797
    .local v2, "fs":Lcom/android/server/alarm/AlarmManagerService$FilterStats;
    move-object/from16 v17, v0

    move-object/from16 v22, v1

    .end local v0    # "tmpFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/alarm/AlarmManagerService$FilterStats;>;"
    .local v17, "tmpFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/alarm/AlarmManagerService$FilterStats;>;"
    const-wide v0, 0x20b00000002L

    invoke-virtual {v2, v9, v0, v1}, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 3798
    .end local v2    # "fs":Lcom/android/server/alarm/AlarmManagerService$FilterStats;
    move-object/from16 v0, v17

    move-object/from16 v1, v22

    goto :goto_39f

    .line 3800
    .end local v17    # "tmpFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/alarm/AlarmManagerService$FilterStats;>;"
    .restart local v0    # "tmpFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/alarm/AlarmManagerService$FilterStats;>;"
    :cond_3bc
    move-object/from16 v17, v0

    .end local v0    # "tmpFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/alarm/AlarmManagerService$FilterStats;>;"
    .restart local v17    # "tmpFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/alarm/AlarmManagerService$FilterStats;>;"
    invoke-virtual {v9, v11, v12}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 3784
    .end local v8    # "bs":Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;
    .end local v11    # "token":J
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    move-object/from16 v0, v17

    goto :goto_35f

    .end local v16    # "topFilters":[Lcom/android/server/alarm/AlarmManagerService$FilterStats;
    .end local v17    # "tmpFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/alarm/AlarmManagerService$FilterStats;>;"
    .restart local v0    # "tmpFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/alarm/AlarmManagerService$FilterStats;>;"
    .local v2, "topFilters":[Lcom/android/server/alarm/AlarmManagerService$FilterStats;
    :cond_3ca
    move-object/from16 v17, v0

    move-object/from16 v16, v2

    .line 3782
    .end local v0    # "tmpFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/alarm/AlarmManagerService$FilterStats;>;"
    .end local v2    # "topFilters":[Lcom/android/server/alarm/AlarmManagerService$FilterStats;
    .end local v6    # "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;>;"
    .end local v7    # "ip":I
    .restart local v16    # "topFilters":[Lcom/android/server/alarm/AlarmManagerService$FilterStats;
    .restart local v17    # "tmpFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/alarm/AlarmManagerService$FilterStats;>;"
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v1, p0

    goto/16 :goto_34e

    .end local v16    # "topFilters":[Lcom/android/server/alarm/AlarmManagerService$FilterStats;
    .end local v17    # "tmpFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/alarm/AlarmManagerService$FilterStats;>;"
    .restart local v0    # "tmpFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/alarm/AlarmManagerService$FilterStats;>;"
    .restart local v2    # "topFilters":[Lcom/android/server/alarm/AlarmManagerService$FilterStats;
    :cond_3d4
    move-object/from16 v17, v0

    move-object/from16 v16, v2

    .line 3821
    .end local v0    # "tmpFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/alarm/AlarmManagerService$FilterStats;>;"
    .end local v2    # "topFilters":[Lcom/android/server/alarm/AlarmManagerService$FilterStats;
    .end local v3    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/server/alarm/AlarmManagerService$FilterStats;>;"
    .end local v4    # "len":I
    .end local v5    # "iu":I
    .end local v13    # "nowElapsed":J
    .end local v15    # "nextAlarmClockForUserSize":I
    .end local v18    # "pendingSendNextAlarmClockChangedForUserSize":I
    .end local v19    # "nowRTC":J
    .end local v21    # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    monitor-exit v10
    :try_end_3d9
    .catchall {:try_start_d .. :try_end_3d9} :catchall_3dd

    .line 3823
    invoke-virtual {v9}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 3824
    return-void

    .line 3821
    :catchall_3dd
    move-exception v0

    :try_start_3de
    monitor-exit v10
    :try_end_3df
    .catchall {:try_start_3de .. :try_end_3df} :catchall_3dd

    throw v0
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 2142
    :try_start_0
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/alarm/AlarmManagerService$Injector;->close()V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_a

    .line 2144
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 2145
    nop

    .line 2146
    return-void

    .line 2144
    :catchall_a
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 2145
    throw v0
.end method

.method getMinimumAllowedWindow(JJ)J
    .registers 11
    .param p1, "nowElapsed"    # J
    .param p3, "triggerElapsed"    # J

    .line 1447
    sub-long v0, p3, p1

    .line 1448
    .local v0, "futurity":J
    long-to-double v2, v0

    const-wide/high16 v4, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v2, v4

    double-to-long v2, v2

    iget-object v4, p0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget-wide v4, v4, Lcom/android/server/alarm/AlarmManagerService$Constants;->MIN_WINDOW:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    return-wide v2
.end method

.method getNextAlarmClockImpl(I)Landroid/app/AlarmManager$AlarmClockInfo;
    .registers 4
    .param p1, "userId"    # I

    .line 3839
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3840
    :try_start_3
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager$AlarmClockInfo;

    monitor-exit v0

    return-object v1

    .line 3841
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method getNextWakeFromIdleTimeImpl()J
    .registers 4

    .line 3827
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3828
    :try_start_3
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/alarm/Alarm;

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Lcom/android/server/alarm/Alarm;->getWhenElapsed()J

    move-result-wide v1

    goto :goto_11

    :cond_c
    const-wide v1, 0x7fffffffffffffffL

    :goto_11
    monitor-exit v0

    return-wide v1

    .line 3829
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1
.end method

.method getQuotaForBucketLocked(I)I
    .registers 4
    .param p1, "bucket"    # I

    .line 2356
    const/16 v0, 0xa

    if-gt p1, v0, :cond_6

    .line 2357
    const/4 v0, 0x0

    .local v0, "index":I
    goto :goto_19

    .line 2358
    .end local v0    # "index":I
    :cond_6
    const/16 v0, 0x14

    if-gt p1, v0, :cond_c

    .line 2359
    const/4 v0, 0x1

    .restart local v0    # "index":I
    goto :goto_19

    .line 2360
    .end local v0    # "index":I
    :cond_c
    const/16 v0, 0x1e

    if-gt p1, v0, :cond_12

    .line 2361
    const/4 v0, 0x2

    .restart local v0    # "index":I
    goto :goto_19

    .line 2362
    .end local v0    # "index":I
    :cond_12
    const/16 v0, 0x32

    if-ge p1, v0, :cond_18

    .line 2363
    const/4 v0, 0x3

    .restart local v0    # "index":I
    goto :goto_19

    .line 2365
    .end local v0    # "index":I
    :cond_18
    const/4 v0, 0x4

    .line 2367
    .restart local v0    # "index":I
    :goto_19
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget-object v1, v1, Lcom/android/server/alarm/AlarmManagerService$Constants;->APP_STANDBY_QUOTAS:[I

    aget v1, v1, v0

    return v1
.end method

.method handleChangesToExactAlarmDenyList(Landroid/util/ArraySet;Z)V
    .registers 13
    .param p2, "added"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 4005
    .local p1, "changedPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const-string v0, "AlarmManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Packages "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p2, :cond_16

    const-string v2, " added to"

    goto :goto_18

    :cond_16
    const-string v2, " removed from"

    :goto_18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " the exact alarm deny list."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4008
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->getStartedUserIds()[I

    move-result-object v0

    .line 4010
    .local v0, "startedUserIds":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_30
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge v1, v2, :cond_9a

    .line 4011
    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4012
    .local v2, "changedPackage":Ljava/lang/String;
    array-length v3, v0

    const/4 v4, 0x0

    :goto_3e
    if-ge v4, v3, :cond_97

    aget v5, v0, v4

    .line 4013
    .local v5, "userId":I
    iget-object v6, p0, Lcom/android/server/alarm/AlarmManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    const-wide/16 v7, 0x0

    invoke-virtual {v6, v2, v7, v8, v5}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v6

    .line 4014
    .local v6, "uid":I
    if-gtz v6, :cond_4d

    .line 4015
    goto :goto_91

    .line 4017
    :cond_4d
    invoke-static {v2, v5}, Lcom/android/server/alarm/AlarmManagerService;->isExactAlarmChangeEnabled(Ljava/lang/String;I)Z

    move-result v7

    if-nez v7, :cond_54

    .line 4018
    goto :goto_91

    .line 4020
    :cond_54
    invoke-direct {p0, v2, v5}, Lcom/android/server/alarm/AlarmManagerService;->isScheduleExactAlarmDeniedByDefault(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_5b

    .line 4021
    goto :goto_91

    .line 4023
    :cond_5b
    invoke-virtual {p0, v2, v6}, Lcom/android/server/alarm/AlarmManagerService;->hasUseExactAlarmInternal(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_62

    .line 4024
    goto :goto_91

    .line 4026
    :cond_62
    iget-object v7, p0, Lcom/android/server/alarm/AlarmManagerService;->mExactAlarmCandidates:Ljava/util/Set;

    invoke-static {v6}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_73

    .line 4028
    goto :goto_91

    .line 4031
    :cond_73
    iget-object v7, p0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 4032
    :try_start_76
    iget-object v8, p0, Lcom/android/server/alarm/AlarmManagerService;->mLastOpScheduleExactAlarm:Landroid/util/SparseIntArray;

    const/16 v9, 0x6b

    .line 4033
    invoke-static {v9}, Landroid/app/AppOpsManager;->opToDefaultMode(I)I

    move-result v9

    .line 4032
    invoke-virtual {v8, v6, v9}, Landroid/util/SparseIntArray;->get(II)I

    move-result v8

    .line 4034
    .local v8, "appOpMode":I
    monitor-exit v7
    :try_end_83
    .catchall {:try_start_76 .. :try_end_83} :catchall_94

    .line 4035
    const/4 v7, 0x3

    if-eq v8, v7, :cond_87

    .line 4037
    goto :goto_91

    .line 4041
    :cond_87
    if-eqz p2, :cond_8e

    .line 4042
    const/4 v7, 0x1

    invoke-virtual {p0, v6, v2, v7}, Lcom/android/server/alarm/AlarmManagerService;->removeExactAlarmsOnPermissionRevoked(ILjava/lang/String;Z)V

    goto :goto_91

    .line 4044
    :cond_8e
    invoke-direct {p0, v2, v5}, Lcom/android/server/alarm/AlarmManagerService;->sendScheduleExactAlarmPermissionStateChangedBroadcast(Ljava/lang/String;I)V

    .line 4012
    .end local v5    # "userId":I
    .end local v6    # "uid":I
    .end local v8    # "appOpMode":I
    :goto_91
    add-int/lit8 v4, v4, 0x1

    goto :goto_3e

    .line 4034
    .restart local v5    # "userId":I
    .restart local v6    # "uid":I
    :catchall_94
    move-exception v3

    :try_start_95
    monitor-exit v7
    :try_end_96
    .catchall {:try_start_95 .. :try_end_96} :catchall_94

    throw v3

    .line 4010
    .end local v2    # "changedPackage":Ljava/lang/String;
    .end local v5    # "userId":I
    .end local v6    # "uid":I
    :cond_97
    add-int/lit8 v1, v1, 0x1

    goto :goto_30

    .line 4048
    .end local v1    # "i":I
    :cond_9a
    return-void
.end method

.method hasScheduleExactAlarmInternal(Ljava/lang/String;I)Z
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 2768
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

    invoke-virtual {v0}, Lcom/android/internal/util/jobs/StatLogger;->getTime()J

    move-result-wide v0

    .line 2774
    .local v0, "start":J
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mExactAlarmCandidates:Ljava/util/Set;

    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_19

    .line 2775
    const/4 v2, 0x0

    .local v2, "hasPermission":Z
    goto :goto_3c

    .line 2776
    .end local v2    # "hasPermission":Z
    :cond_19
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-static {p1, v2}, Lcom/android/server/alarm/AlarmManagerService;->isExactAlarmChangeEnabled(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_25

    .line 2777
    const/4 v2, 0x0

    .restart local v2    # "hasPermission":Z
    goto :goto_3c

    .line 2779
    .end local v2    # "hasPermission":Z
    :cond_25
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v4, 0x6b

    invoke-virtual {v2, v4, p2, p1}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v2

    .line 2781
    .local v2, "mode":I
    const/4 v4, 0x3

    if-ne v2, v4, :cond_36

    .line 2782
    invoke-virtual {p0, p1, p2}, Lcom/android/server/alarm/AlarmManagerService;->isScheduleExactAlarmAllowedByDefault(Ljava/lang/String;I)Z

    move-result v4

    move v2, v4

    .local v4, "hasPermission":Z
    goto :goto_3c

    .line 2784
    .end local v4    # "hasPermission":Z
    :cond_36
    if-nez v2, :cond_3a

    move v4, v3

    goto :goto_3b

    :cond_3a
    const/4 v4, 0x0

    :goto_3b
    move v2, v4

    .line 2787
    .local v2, "hasPermission":Z
    :goto_3c
    iget-object v4, p0, Lcom/android/server/alarm/AlarmManagerService;->mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

    invoke-virtual {v4, v3, v0, v1}, Lcom/android/internal/util/jobs/StatLogger;->logDurationStat(IJ)J

    .line 2788
    return v2
.end method

.method hasUseExactAlarmInternal(Ljava/lang/String;I)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 2735
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/server/alarm/AlarmManagerService;->isUseExactAlarmEnabled(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 2736
    invoke-virtual {p0}, Lcom/android/server/alarm/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, -0x1

    const-string v2, "android.permission.USE_EXACT_ALARM"

    invoke-static {v0, v2, v1, p2, p1}, Landroid/content/PermissionChecker;->checkPermissionForPreflight(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_19

    const/4 v0, 0x1

    goto :goto_1a

    :cond_19
    const/4 v0, 0x0

    .line 2735
    :goto_1a
    return v0
.end method

.method interactiveStateChangedLocked(Z)V
    .registers 8
    .param p1, "interactive"    # Z

    .line 4217
    iget-boolean v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mInteractive:Z

    if-eq v0, p1, :cond_55

    .line 4218
    iput-boolean p1, p0, Lcom/android/server/alarm/AlarmManagerService;->mInteractive:Z

    .line 4219
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getElapsedRealtime()J

    move-result-wide v0

    .line 4220
    .local v0, "nowELAPSED":J
    if-eqz p1, :cond_53

    .line 4221
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_36

    .line 4222
    iget-wide v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mStartCurrentDelayTime:J

    sub-long v2, v0, v2

    .line 4223
    .local v2, "thisDelayTime":J
    iget-wide v4, p0, Lcom/android/server/alarm/AlarmManagerService;->mTotalDelayTime:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/android/server/alarm/AlarmManagerService;->mTotalDelayTime:J

    .line 4224
    iget-wide v4, p0, Lcom/android/server/alarm/AlarmManagerService;->mMaxDelayTime:J

    cmp-long v4, v4, v2

    if-gez v4, :cond_27

    .line 4225
    iput-wide v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mMaxDelayTime:J

    .line 4227
    :cond_27
    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 4228
    .local v4, "triggerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/alarm/Alarm;>;"
    invoke-virtual {p0, v4, v0, v1}, Lcom/android/server/alarm/AlarmManagerService;->deliverAlarmsLocked(Ljava/util/ArrayList;J)V

    .line 4229
    iget-object v5, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 4231
    .end local v2    # "thisDelayTime":J
    .end local v4    # "triggerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/alarm/Alarm;>;"
    :cond_36
    iget-wide v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mNonInteractiveStartTime:J

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_48

    .line 4232
    sub-long v2, v0, v2

    .line 4233
    .local v2, "dur":J
    iget-wide v4, p0, Lcom/android/server/alarm/AlarmManagerService;->mNonInteractiveTime:J

    cmp-long v4, v2, v4

    if-lez v4, :cond_48

    .line 4234
    iput-wide v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mNonInteractiveTime:J

    .line 4238
    .end local v2    # "dur":J
    :cond_48
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mHandler:Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;

    new-instance v3, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda18;

    invoke-direct {v3, p0}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda18;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    invoke-virtual {v2, v3}, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_55

    .line 4241
    :cond_53
    iput-wide v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mNonInteractiveStartTime:J

    .line 4244
    .end local v0    # "nowELAPSED":J
    :cond_55
    :goto_55
    return-void
.end method

.method isExemptFromExactAlarmPermissionNoLock(I)Z
    .registers 4
    .param p1, "uid"    # I

    .line 2804
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 2805
    const-string v0, "AlarmManager"

    const-string v1, "Alarm lock held while calling into DeviceIdleController"

    invoke-static {v0, v1}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 2807
    :cond_13
    iget v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mSystemUiUid:I

    invoke-static {v0, p1}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v0

    if-nez v0, :cond_32

    .line 2808
    invoke-static {p1}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v0

    if-nez v0, :cond_32

    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mLocalDeviceIdleController:Lcom/android/server/DeviceIdleInternal;

    if-eqz v0, :cond_32

    .line 2810
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/server/DeviceIdleInternal;->isAppOnWhitelist(I)Z

    move-result v0

    if-eqz v0, :cond_30

    goto :goto_32

    :cond_30
    const/4 v0, 0x0

    goto :goto_33

    :cond_32
    :goto_32
    const/4 v0, 0x1

    .line 2807
    :goto_33
    return v0
.end method

.method isExemptFromMinWindowRestrictions(I)Z
    .registers 3
    .param p1, "uid"    # I

    .line 2795
    invoke-virtual {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->isExemptFromExactAlarmPermissionNoLock(I)Z

    move-result v0

    return v0
.end method

.method isScheduleExactAlarmAllowedByDefault(Ljava/lang/String;I)Z
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 2745
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/alarm/AlarmManagerService;->isScheduleExactAlarmDeniedByDefault(Ljava/lang/String;I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3e

    .line 2750
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManagerInternal;->isPlatformSigned(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3d

    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 2751
    invoke-virtual {v0, p2}, Landroid/content/pm/PackageManagerInternal;->isUidPrivileged(I)Z

    move-result v0

    if-eqz v0, :cond_1c

    goto :goto_3d

    .line 2754
    :cond_1c
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2756
    .local v0, "token":J
    :try_start_20
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mRoleManager:Landroid/app/role/RoleManager;

    if-eqz v2, :cond_2b

    .line 2757
    const-string v3, "android.app.role.SYSTEM_WELLBEING"

    invoke-virtual {v2, v3}, Landroid/app/role/RoleManager;->getRoleHolders(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    goto :goto_2f

    .line 2758
    :cond_2b
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    :goto_2f
    nop

    .line 2759
    .local v2, "wellbeingHolders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3
    :try_end_34
    .catchall {:try_start_20 .. :try_end_34} :catchall_38

    .line 2761
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2759
    return v3

    .line 2761
    .end local v2    # "wellbeingHolders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_38
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2762
    throw v2

    .line 2752
    .end local v0    # "token":J
    :cond_3d
    :goto_3d
    return v1

    .line 2764
    :cond_3e
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget-object v0, v0, Lcom/android/server/alarm/AlarmManagerService$Constants;->EXACT_ALARM_DENY_LIST:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v1

    return v0
.end method

.method synthetic lambda$interactiveStateChangedLocked$21$com-android-server-alarm-AlarmManagerService()V
    .registers 4

    .line 4239
    invoke-virtual {p0}, Lcom/android/server/alarm/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mTimeTickIntent:Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method synthetic lambda$new$0$com-android-server-alarm-AlarmManagerService()V
    .registers 2

    .line 366
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextAlarmClockMayChange:Z

    return-void
.end method

.method synthetic lambda$onBootPhase$7$com-android-server-alarm-AlarmManagerService()Lcom/android/server/alarm/AlarmStore;
    .registers 2

    .line 2135
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    return-object v0
.end method

.method synthetic lambda$onUserStarting$6$com-android-server-alarm-AlarmManagerService(I)V
    .registers 9
    .param p1, "userId"    # I

    .line 2019
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mExactAlarmCandidates:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 2020
    .local v1, "appId":I
    invoke-static {p1, v1}, Landroid/os/UserHandle;->getUid(II)I

    move-result v2

    .line 2021
    .local v2, "uid":I
    iget-object v3, p0, Lcom/android/server/alarm/AlarmManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManagerInternal;->getPackage(I)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v3

    .line 2023
    .local v3, "androidPackage":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-eqz v3, :cond_3b

    .line 2024
    iget-object v4, p0, Lcom/android/server/alarm/AlarmManagerService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v5, 0x6b

    .line 2025
    invoke-interface {v3}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 2024
    invoke-virtual {v4, v5, v2, v6}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v4

    .line 2026
    .local v4, "mode":I
    iget-object v5, p0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 2027
    :try_start_31
    iget-object v6, p0, Lcom/android/server/alarm/AlarmManagerService;->mLastOpScheduleExactAlarm:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v2, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 2028
    monitor-exit v5

    goto :goto_3b

    :catchall_38
    move-exception v0

    monitor-exit v5
    :try_end_3a
    .catchall {:try_start_31 .. :try_end_3a} :catchall_38

    throw v0

    .line 2030
    .end local v1    # "appId":I
    .end local v2    # "uid":I
    .end local v3    # "androidPackage":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v4    # "mode":I
    :cond_3b
    :goto_3b
    goto :goto_6

    .line 2031
    :cond_3c
    return-void
.end method

.method synthetic lambda$reevaluateRtcAlarms$1$com-android-server-alarm-AlarmManagerService(Lcom/android/server/alarm/Alarm;)Z
    .registers 3
    .param p1, "a"    # Lcom/android/server/alarm/Alarm;

    .line 1479
    iget v0, p1, Lcom/android/server/alarm/Alarm;->type:I

    invoke-static {v0}, Lcom/android/server/alarm/AlarmManagerService;->isRtc(I)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1480
    const/4 v0, 0x0

    return v0

    .line 1482
    :cond_a
    invoke-direct {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->restoreRequestedTime(Lcom/android/server/alarm/Alarm;)Z

    move-result v0

    return v0
.end method

.method synthetic lambda$reevaluateRtcAlarms$2$com-android-server-alarm-AlarmManagerService(Lcom/android/server/alarm/Alarm;)Z
    .registers 3
    .param p1, "a"    # Lcom/android/server/alarm/Alarm;

    .line 1490
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    if-ne p1, v0, :cond_c

    invoke-direct {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->adjustIdleUntilTime(Lcom/android/server/alarm/Alarm;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method synthetic lambda$reevaluateRtcAlarms$3$com-android-server-alarm-AlarmManagerService(Lcom/android/server/alarm/Alarm;)Z
    .registers 3
    .param p1, "alarm"    # Lcom/android/server/alarm/Alarm;

    .line 1493
    invoke-direct {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->adjustDeliveryTimeBasedOnDeviceIdle(Lcom/android/server/alarm/Alarm;)Z

    move-result v0

    return v0
.end method

.method synthetic lambda$removeAlarmsInternalLocked$14$com-android-server-alarm-AlarmManagerService(Lcom/android/server/alarm/Alarm;)Z
    .registers 3
    .param p1, "alarm"    # Lcom/android/server/alarm/Alarm;

    .line 4131
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    if-ne p1, v0, :cond_c

    invoke-direct {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->adjustIdleUntilTime(Lcom/android/server/alarm/Alarm;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method synthetic lambda$removeAlarmsInternalLocked$15$com-android-server-alarm-AlarmManagerService(Lcom/android/server/alarm/Alarm;)Z
    .registers 3
    .param p1, "alarm"    # Lcom/android/server/alarm/Alarm;

    .line 4136
    invoke-direct {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->adjustDeliveryTimeBasedOnDeviceIdle(Lcom/android/server/alarm/Alarm;)Z

    move-result v0

    return v0
.end method

.method synthetic lambda$removeForStoppedLocked$19$com-android-server-alarm-AlarmManagerService(ILcom/android/server/alarm/Alarm;)Z
    .registers 5
    .param p1, "uid"    # I
    .param p2, "a"    # Lcom/android/server/alarm/Alarm;

    .line 4183
    iget v0, p2, Lcom/android/server/alarm/Alarm;->uid:I

    if-ne v0, p1, :cond_10

    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    iget-object v1, p2, Lcom/android/server/alarm/Alarm;->packageName:Ljava/lang/String;

    .line 4184
    invoke-virtual {v0, p1, v1}, Landroid/app/ActivityManagerInternal;->isAppStartModeDisabled(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    .line 4183
    :goto_11
    return v0
.end method

.method synthetic lambda$reorderAlarmsBasedOnStandbyBuckets$4$com-android-server-alarm-AlarmManagerService(Landroid/util/ArraySet;Lcom/android/server/alarm/Alarm;)Z
    .registers 5
    .param p1, "targetPackages"    # Landroid/util/ArraySet;
    .param p2, "a"    # Lcom/android/server/alarm/Alarm;

    .line 1516
    iget-object v0, p2, Lcom/android/server/alarm/Alarm;->sourcePackage:Ljava/lang/String;

    iget v1, p2, Lcom/android/server/alarm/Alarm;->creatorUid:I

    .line 1517
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 1518
    .local v0, "packageUser":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-eqz p1, :cond_1a

    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 1519
    const/4 v1, 0x0

    return v1

    .line 1521
    :cond_1a
    invoke-direct {p0, p2}, Lcom/android/server/alarm/AlarmManagerService;->adjustDeliveryTimeBasedOnBucketLocked(Lcom/android/server/alarm/Alarm;)Z

    move-result v1

    return v1
.end method

.method synthetic lambda$reorderAlarmsBasedOnTare$5$com-android-server-alarm-AlarmManagerService(Landroid/util/ArraySet;Lcom/android/server/alarm/Alarm;)Z
    .registers 5
    .param p1, "targetPackages"    # Landroid/util/ArraySet;
    .param p2, "a"    # Lcom/android/server/alarm/Alarm;

    .line 1539
    iget-object v0, p2, Lcom/android/server/alarm/Alarm;->sourcePackage:Ljava/lang/String;

    iget v1, p2, Lcom/android/server/alarm/Alarm;->creatorUid:I

    .line 1540
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 1541
    .local v0, "packageUser":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-eqz p1, :cond_1a

    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 1542
    const/4 v1, 0x0

    return v1

    .line 1544
    :cond_1a
    invoke-direct {p0, p2}, Lcom/android/server/alarm/AlarmManagerService;->adjustDeliveryTimeBasedOnTareLocked(Lcom/android/server/alarm/Alarm;)Z

    move-result v1

    return v1
.end method

.method synthetic lambda$setImplLocked$10$com-android-server-alarm-AlarmManagerService(Lcom/android/server/alarm/Alarm;)Z
    .registers 3
    .param p1, "alarm"    # Lcom/android/server/alarm/Alarm;

    .line 2676
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    if-ne p1, v0, :cond_c

    invoke-direct {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->adjustIdleUntilTime(Lcom/android/server/alarm/Alarm;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method synthetic lambda$setImplLocked$11$com-android-server-alarm-AlarmManagerService(Lcom/android/server/alarm/Alarm;)Z
    .registers 3
    .param p1, "alarm"    # Lcom/android/server/alarm/Alarm;

    .line 2680
    invoke-direct {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->adjustDeliveryTimeBasedOnDeviceIdle(Lcom/android/server/alarm/Alarm;)Z

    move-result v0

    return v0
.end method

.method synthetic lambda$setImplLocked$9$com-android-server-alarm-AlarmManagerService(Lcom/android/server/alarm/Alarm;)Z
    .registers 3
    .param p1, "alarm"    # Lcom/android/server/alarm/Alarm;

    .line 2664
    invoke-direct {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->adjustDeliveryTimeBasedOnDeviceIdle(Lcom/android/server/alarm/Alarm;)Z

    move-result v0

    return v0
.end method

.method synthetic lambda$triggerAlarmsLocked$22$com-android-server-alarm-AlarmManagerService(Lcom/android/server/alarm/Alarm;)Z
    .registers 3
    .param p1, "a"    # Lcom/android/server/alarm/Alarm;

    .line 4376
    invoke-direct {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->adjustDeliveryTimeBasedOnDeviceIdle(Lcom/android/server/alarm/Alarm;)Z

    move-result v0

    return v0
.end method

.method lookForPackageLocked(Ljava/lang/String;)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;

    .line 4247
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    invoke-interface {v0}, Lcom/android/server/alarm/AlarmStore;->asList()Ljava/util/ArrayList;

    move-result-object v0

    .line 4248
    .local v0, "allAlarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/alarm/Alarm;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/alarm/Alarm;

    .line 4249
    .local v2, "alarm":Lcom/android/server/alarm/Alarm;
    invoke-virtual {v2, p1}, Lcom/android/server/alarm/Alarm;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 4250
    const/4 v1, 0x1

    return v1

    .line 4252
    .end local v2    # "alarm":Lcom/android/server/alarm/Alarm;
    :cond_1e
    goto :goto_a

    .line 4253
    :cond_1f
    const/4 v1, 0x0

    return v1
.end method

.method public onBootPhase(I)V
    .registers 6
    .param p1, "phase"    # I

    .line 2036
    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_ad

    .line 2037
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2038
    :try_start_7
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    invoke-virtual {v1}, Lcom/android/server/alarm/AlarmManagerService$Constants;->start()V

    .line 2040
    invoke-virtual {p0}, Lcom/android/server/alarm/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "appops"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    iput-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mAppOps:Landroid/app/AppOpsManager;

    .line 2042
    const-class v1, Lcom/android/server/DeviceIdleInternal;

    .line 2043
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DeviceIdleInternal;

    iput-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mLocalDeviceIdleController:Lcom/android/server/DeviceIdleInternal;

    .line 2044
    const-class v1, Landroid/app/usage/UsageStatsManagerInternal;

    .line 2045
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/usage/UsageStatsManagerInternal;

    iput-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mUsageStatsManagerInternal:Landroid/app/usage/UsageStatsManagerInternal;

    .line 2047
    const-class v1, Lcom/android/server/AppStateTracker;

    .line 2048
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AppStateTrackerImpl;

    iput-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mAppStateTracker:Lcom/android/server/AppStateTrackerImpl;

    .line 2049
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mForceAppStandbyListener:Lcom/android/server/AppStateTrackerImpl$Listener;

    invoke-virtual {v1, v2}, Lcom/android/server/AppStateTrackerImpl;->addListener(Lcom/android/server/AppStateTrackerImpl$Listener;)V

    .line 2051
    invoke-virtual {p0}, Lcom/android/server/alarm/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Landroid/os/BatteryManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/BatteryManager;

    .line 2052
    .local v1, "bm":Landroid/os/BatteryManager;
    invoke-virtual {v1}, Landroid/os/BatteryManager;->isCharging()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mAppStandbyParole:Z

    .line 2054
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mClockReceiver:Lcom/android/server/alarm/AlarmManagerService$ClockReceiver;

    invoke-virtual {v2}, Lcom/android/server/alarm/AlarmManagerService$ClockReceiver;->scheduleTimeTickEvent()V

    .line 2055
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mClockReceiver:Lcom/android/server/alarm/AlarmManagerService$ClockReceiver;

    invoke-virtual {v2}, Lcom/android/server/alarm/AlarmManagerService$ClockReceiver;->scheduleDateChangedEvent()V

    .line 2057
    invoke-static {}, Lcom/android/server/alarm/AlarmManagerServiceStub;->get()Lcom/android/server/alarm/AlarmManagerServiceStub;

    move-result-object v2

    invoke-interface {v2, p0}, Lcom/android/server/alarm/AlarmManagerServiceStub;->init(Lcom/android/server/alarm/AlarmManagerService;)V

    .line 2058
    .end local v1    # "bm":Landroid/os/BatteryManager;
    monitor-exit v0
    :try_end_61
    .catchall {:try_start_7 .. :try_end_61} :catchall_aa

    .line 2059
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getAppOpsService()Lcom/android/internal/app/IAppOpsService;

    move-result-object v0

    .line 2061
    .local v0, "iAppOpsService":Lcom/android/internal/app/IAppOpsService;
    const/16 v1, 0x6b

    const/4 v2, 0x0

    :try_start_6a
    new-instance v3, Lcom/android/server/alarm/AlarmManagerService$4;

    invoke-direct {v3, p0}, Lcom/android/server/alarm/AlarmManagerService$4;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/app/IAppOpsService;->startWatchingMode(ILjava/lang/String;Lcom/android/internal/app/IAppOpsCallback;)V
    :try_end_72
    .catch Landroid/os/RemoteException; {:try_start_6a .. :try_end_72} :catch_73

    .line 2123
    goto :goto_74

    .line 2122
    :catch_73
    move-exception v1

    .line 2125
    :goto_74
    const-class v1, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    iput-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mLocalPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    .line 2127
    invoke-virtual {p0}, Lcom/android/server/alarm/AlarmManagerService;->refreshExactAlarmCandidates()V

    .line 2129
    const-class v1, Lcom/android/server/usage/AppStandbyInternal;

    .line 2130
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usage/AppStandbyInternal;

    .line 2131
    .local v1, "appStandbyInternal":Lcom/android/server/usage/AppStandbyInternal;
    new-instance v3, Lcom/android/server/alarm/AlarmManagerService$AppStandbyTracker;

    invoke-direct {v3, p0, v2}, Lcom/android/server/alarm/AlarmManagerService$AppStandbyTracker;-><init>(Lcom/android/server/alarm/AlarmManagerService;Lcom/android/server/alarm/AlarmManagerService$AppStandbyTracker-IA;)V

    invoke-interface {v1, v3}, Lcom/android/server/usage/AppStandbyInternal;->addListener(Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;)V

    .line 2133
    invoke-virtual {p0}, Lcom/android/server/alarm/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Landroid/app/role/RoleManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/role/RoleManager;

    iput-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mRoleManager:Landroid/app/role/RoleManager;

    .line 2135
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mMetricsHelper:Lcom/android/server/alarm/MetricsHelper;

    new-instance v3, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda24;

    invoke-direct {v3, p0}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda24;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    invoke-virtual {v2, v3}, Lcom/android/server/alarm/MetricsHelper;->registerPuller(Ljava/util/function/Supplier;)V

    goto :goto_ad

    .line 2058
    .end local v0    # "iAppOpsService":Lcom/android/internal/app/IAppOpsService;
    .end local v1    # "appStandbyInternal":Lcom/android/server/usage/AppStandbyInternal;
    :catchall_aa
    move-exception v1

    :try_start_ab
    monitor-exit v0
    :try_end_ac
    .catchall {:try_start_ab .. :try_end_ac} :catchall_aa

    throw v1

    .line 2137
    :cond_ad
    :goto_ad
    return-void
.end method

.method public onStart()V
    .registers 9

    .line 1882
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/alarm/AlarmManagerService$Injector;->init()V

    .line 1883
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mOptsWithFgs:Landroid/app/BroadcastOptions;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/BroadcastOptions;->setPendingIntentBackgroundActivityLaunchAllowed(Z)V

    .line 1884
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mOptsWithFgsForAlarmClock:Landroid/app/BroadcastOptions;

    invoke-virtual {v0, v1}, Landroid/app/BroadcastOptions;->setPendingIntentBackgroundActivityLaunchAllowed(Z)V

    .line 1885
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mOptsWithoutFgs:Landroid/app/BroadcastOptions;

    invoke-virtual {v0, v1}, Landroid/app/BroadcastOptions;->setPendingIntentBackgroundActivityLaunchAllowed(Z)V

    .line 1886
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mOptsTimeBroadcast:Landroid/app/BroadcastOptions;

    invoke-virtual {v0, v1}, Landroid/app/BroadcastOptions;->setPendingIntentBackgroundActivityLaunchAllowed(Z)V

    .line 1887
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mActivityOptsRestrictBal:Landroid/app/ActivityOptions;

    invoke-virtual {v0, v1}, Landroid/app/ActivityOptions;->setPendingIntentBackgroundActivityLaunchAllowed(Z)V

    .line 1888
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mBroadcastOptsRestrictBal:Landroid/app/BroadcastOptions;

    invoke-virtual {v0, v1}, Landroid/app/BroadcastOptions;->setPendingIntentBackgroundActivityLaunchAllowed(Z)V

    .line 1889
    new-instance v0, Lcom/android/server/alarm/MetricsHelper;

    invoke-virtual {p0}, Lcom/android/server/alarm/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    invoke-direct {v0, v2, v3}, Lcom/android/server/alarm/MetricsHelper;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mMetricsHelper:Lcom/android/server/alarm/MetricsHelper;

    .line 1891
    new-instance v0, Lcom/android/server/alarm/AlarmManagerService$2;

    invoke-direct {v0, p0}, Lcom/android/server/alarm/AlarmManagerService$2;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mListenerDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 1903
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1904
    :try_start_3b
    new-instance v2, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;

    invoke-direct {v2, p0}, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    iput-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mHandler:Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;

    .line 1905
    new-instance v3, Lcom/android/server/alarm/AlarmManagerService$Constants;

    invoke-direct {v3, p0, v2}, Lcom/android/server/alarm/AlarmManagerService$Constants;-><init>(Lcom/android/server/alarm/AlarmManagerService;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    .line 1907
    iget-boolean v2, v3, Lcom/android/server/alarm/AlarmManagerService$Constants;->LAZY_BATCHING:Z

    if-eqz v2, :cond_53

    new-instance v2, Lcom/android/server/alarm/LazyAlarmStore;

    invoke-direct {v2}, Lcom/android/server/alarm/LazyAlarmStore;-><init>()V

    goto :goto_58

    .line 1908
    :cond_53
    new-instance v2, Lcom/android/server/alarm/BatchingAlarmStore;

    invoke-direct {v2}, Lcom/android/server/alarm/BatchingAlarmStore;-><init>()V

    :goto_58
    iput-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    .line 1909
    iget-object v3, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmClockUpdater:Ljava/lang/Runnable;

    invoke-interface {v2, v3}, Lcom/android/server/alarm/AlarmStore;->setAlarmClockRemovalListener(Ljava/lang/Runnable;)V

    .line 1911
    new-instance v2, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

    const-wide/32 v3, 0x36ee80

    invoke-direct {v2, v3, v4}, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;-><init>(J)V

    iput-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mAppWakeupHistory:Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

    .line 1912
    new-instance v2, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

    invoke-direct {v2, v3, v4}, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;-><init>(J)V

    iput-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mAllowWhileIdleHistory:Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

    .line 1913
    new-instance v2, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

    invoke-direct {v2, v3, v4}, Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;-><init>(J)V

    iput-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mAllowWhileIdleCompatHistory:Lcom/android/server/alarm/AlarmManagerService$AppWakeupHistory;

    .line 1915
    new-instance v2, Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve;

    const-wide/32 v3, 0x5265c00

    invoke-direct {v2, v3, v4}, Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve;-><init>(J)V

    iput-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mTemporaryQuotaReserve:Lcom/android/server/alarm/AlarmManagerService$TemporaryQuotaReserve;

    .line 1917
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextNonWakeup:J

    iput-wide v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeup:J

    .line 1921
    const-string/jumbo v2, "persist.sys.timezone"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/alarm/AlarmManagerService;->setTimeZoneImpl(Ljava/lang/String;)V

    .line 1926
    const-wide/16 v2, 0x3e8

    const-string/jumbo v4, "ro.build.date.utc"

    const-wide/16 v5, -0x1

    .line 1927
    invoke-static {v4, v5, v6}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    mul-long/2addr v4, v2

    .line 1928
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    sget-wide v6, Landroid/os/Build;->TIME:J

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Long;->max(JJ)J

    move-result-wide v2

    .line 1926
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Long;->max(JJ)J

    move-result-wide v2

    .line 1929
    .local v2, "systemBuildTime":J
    iget-object v4, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v4}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getCurrentTimeMillis()J

    move-result-wide v4

    cmp-long v4, v4, v2

    if-gez v4, :cond_e6

    .line 1930
    const-string v4, "AlarmManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Current time only "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v6}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getCurrentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", advancing to build time "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1932
    iget-object v4, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v4, v2, v3}, Lcom/android/server/alarm/AlarmManagerService$Injector;->setKernelTime(J)V

    .line 1935
    :cond_e6
    const-class v4, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageManagerInternal;

    iput-object v4, p0, Lcom/android/server/alarm/AlarmManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 1937
    iget-object v5, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v5, v4}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getSystemUiUid(Landroid/content/pm/PackageManagerInternal;)I

    move-result v4

    iput v4, p0, Lcom/android/server/alarm/AlarmManagerService;->mSystemUiUid:I

    .line 1938
    if-gtz v4, :cond_101

    .line 1939
    const-string v4, "AlarmManager"

    const-string v5, "SysUI package not found!"

    invoke-static {v4, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1941
    :cond_101
    iget-object v4, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v4}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getAlarmWakeLock()Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/alarm/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1943
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.TIME_TICK"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v5, 0x50200000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/alarm/AlarmManagerService;->mTimeTickIntent:Landroid/content/Intent;

    .line 1948
    new-instance v4, Lcom/android/server/alarm/AlarmManagerService$3;

    invoke-direct {v4, p0}, Lcom/android/server/alarm/AlarmManagerService$3;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    iput-object v4, p0, Lcom/android/server/alarm/AlarmManagerService;->mTimeTickTrigger:Landroid/app/IAlarmListener;

    .line 1973
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.DATE_CHANGED"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1974
    .local v4, "intent":Landroid/content/Intent;
    const/high16 v5, 0x20200000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1976
    invoke-virtual {p0}, Lcom/android/server/alarm/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v5

    const/high16 v6, 0x4000000

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-static {v5, v1, v4, v6, v7}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mDateChangeSender:Landroid/app/PendingIntent;

    .line 1979
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v1, p0}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getClockReceiver(Lcom/android/server/alarm/AlarmManagerService;)Lcom/android/server/alarm/AlarmManagerService$ClockReceiver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mClockReceiver:Lcom/android/server/alarm/AlarmManagerService$ClockReceiver;

    .line 1980
    new-instance v1, Lcom/android/server/alarm/AlarmManagerService$ChargingReceiver;

    invoke-direct {v1, p0}, Lcom/android/server/alarm/AlarmManagerService$ChargingReceiver;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    .line 1981
    new-instance v1, Lcom/android/server/alarm/AlarmManagerService$InteractiveStateReceiver;

    invoke-direct {v1, p0}, Lcom/android/server/alarm/AlarmManagerService$InteractiveStateReceiver;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    .line 1982
    new-instance v1, Lcom/android/server/alarm/AlarmManagerService$UninstallReceiver;

    invoke-direct {v1, p0}, Lcom/android/server/alarm/AlarmManagerService$UninstallReceiver;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    .line 1984
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v1}, Lcom/android/server/alarm/AlarmManagerService$Injector;->isAlarmDriverPresent()Z

    move-result v1

    if-eqz v1, :cond_161

    .line 1985
    new-instance v1, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;

    invoke-direct {v1, p0}, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    .line 1986
    .local v1, "waitThread":Lcom/android/server/alarm/AlarmManagerService$AlarmThread;
    invoke-virtual {v1}, Lcom/android/server/alarm/AlarmManagerService$AlarmThread;->start()V

    .line 1987
    .end local v1    # "waitThread":Lcom/android/server/alarm/AlarmManagerService$AlarmThread;
    goto :goto_168

    .line 1988
    :cond_161
    const-string v1, "AlarmManager"

    const-string v5, "Failed to open alarm driver. Falling back to a handler."

    invoke-static {v1, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1990
    .end local v2    # "systemBuildTime":J
    .end local v4    # "intent":Landroid/content/Intent;
    :goto_168
    monitor-exit v0
    :try_end_169
    .catchall {:try_start_3b .. :try_end_169} :catchall_186

    .line 1991
    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 1992
    const-class v0, Lcom/android/server/AlarmManagerInternal;

    new-instance v1, Lcom/android/server/alarm/AlarmManagerService$LocalService;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/alarm/AlarmManagerService$LocalService;-><init>(Lcom/android/server/alarm/AlarmManagerService;Lcom/android/server/alarm/AlarmManagerService$LocalService-IA;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/alarm/AlarmManagerService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 1993
    const-string v0, "alarm"

    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mService:Landroid/os/IBinder;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/alarm/AlarmManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1994
    return-void

    .line 1990
    :catchall_186
    move-exception v1

    :try_start_187
    monitor-exit v0
    :try_end_188
    .catchall {:try_start_187 .. :try_end_188} :catchall_186

    throw v1
.end method

.method public onUserStarting(Lcom/android/server/SystemService$TargetUser;)V
    .registers 5
    .param p1, "user"    # Lcom/android/server/SystemService$TargetUser;

    .line 2016
    invoke-super {p0, p1}, Lcom/android/server/SystemService;->onUserStarting(Lcom/android/server/SystemService$TargetUser;)V

    .line 2017
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result v0

    .line 2018
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mHandler:Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;

    new-instance v2, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda23;

    invoke-direct {v2, p0, v0}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda23;-><init>(Lcom/android/server/alarm/AlarmManagerService;I)V

    invoke-virtual {v1, v2}, Lcom/android/server/alarm/AlarmManagerService$AlarmHandler;->post(Ljava/lang/Runnable;)Z

    .line 2032
    return-void
.end method

.method reevaluateRtcAlarms()V
    .registers 6

    .line 1477
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1478
    :try_start_3
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    new-instance v2, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda19;

    invoke-direct {v2, p0}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda19;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    invoke-interface {v1, v2}, Lcom/android/server/alarm/AlarmStore;->updateAlarmDeliveries(Lcom/android/server/alarm/AlarmStore$AlarmDeliveryCalculator;)Z

    move-result v1

    .line 1485
    .local v1, "changed":Z
    if-eqz v1, :cond_37

    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    if-eqz v2, :cond_37

    .line 1486
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/alarm/Alarm;

    if-eqz v2, :cond_37

    iget v2, v2, Lcom/android/server/alarm/Alarm;->type:I

    invoke-static {v2}, Lcom/android/server/alarm/AlarmManagerService;->isRtc(I)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 1489
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    new-instance v3, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda20;

    invoke-direct {v3, p0}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda20;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    invoke-interface {v2, v3}, Lcom/android/server/alarm/AlarmStore;->updateAlarmDeliveries(Lcom/android/server/alarm/AlarmStore$AlarmDeliveryCalculator;)Z

    move-result v2

    .line 1491
    .local v2, "idleUntilUpdated":Z
    if-eqz v2, :cond_37

    .line 1492
    iget-object v3, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    new-instance v4, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda21;

    invoke-direct {v4, p0}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda21;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    invoke-interface {v3, v4}, Lcom/android/server/alarm/AlarmStore;->updateAlarmDeliveries(Lcom/android/server/alarm/AlarmStore$AlarmDeliveryCalculator;)Z

    .line 1498
    .end local v2    # "idleUntilUpdated":Z
    :cond_37
    if-eqz v1, :cond_3c

    .line 1499
    invoke-virtual {p0}, Lcom/android/server/alarm/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    .line 1502
    .end local v1    # "changed":Z
    :cond_3c
    monitor-exit v0

    .line 1503
    return-void

    .line 1502
    :catchall_3e
    move-exception v1

    monitor-exit v0
    :try_end_40
    .catchall {:try_start_3 .. :try_end_40} :catchall_3e

    throw v1
.end method

.method refreshExactAlarmCandidates()V
    .registers 10

    .line 1997
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mLocalPermissionManager:Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    const-string v1, "android.permission.SCHEDULE_EXACT_ALARM"

    invoke-interface {v0, v1}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->getAppOpPermissionPackages(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1999
    .local v0, "candidates":[Ljava/lang/String;
    new-instance v1, Landroid/util/ArraySet;

    array-length v2, v0

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(I)V

    .line 2000
    .local v1, "newAppIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_11
    if-ge v4, v2, :cond_2e

    aget-object v5, v0, v4

    .line 2001
    .local v5, "candidate":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/alarm/AlarmManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    const-wide/32 v7, 0x400000

    invoke-virtual {v6, v5, v7, v8, v3}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v6

    .line 2003
    .local v6, "uid":I
    if-lez v6, :cond_2b

    .line 2004
    invoke-static {v6}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2000
    .end local v5    # "candidate":Ljava/lang/String;
    .end local v6    # "uid":I
    :cond_2b
    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    .line 2011
    :cond_2e
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mExactAlarmCandidates:Ljava/util/Set;

    .line 2012
    return-void
.end method

.method removeExactAlarmsOnPermissionRevoked(ILjava/lang/String;Z)V
    .registers 8
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "killUid"    # Z

    .line 4058
    invoke-virtual {p0, p1}, Lcom/android/server/alarm/AlarmManagerService;->isExemptFromExactAlarmPermissionNoLock(I)Z

    move-result v0

    if-nez v0, :cond_60

    .line 4059
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-static {p2, v0}, Lcom/android/server/alarm/AlarmManagerService;->isExactAlarmChangeEnabled(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_60

    .line 4062
    :cond_11
    const-string v0, "AlarmManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " lost permission to set exact alarms!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4065
    new-instance v0, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda7;

    invoke-direct {v0, p1, p2}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda7;-><init>(ILjava/lang/String;)V

    .line 4067
    .local v0, "whichAlarms":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/alarm/Alarm;>;"
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4068
    const/4 v2, 0x2

    :try_start_42
    invoke-direct {p0, v0, v2}, Lcom/android/server/alarm/AlarmManagerService;->removeAlarmsInternalLocked(Ljava/util/function/Predicate;I)V

    .line 4069
    monitor-exit v1
    :try_end_46
    .catchall {:try_start_42 .. :try_end_46} :catchall_5d

    .line 4071
    if-eqz p3, :cond_5c

    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget-boolean v1, v1, Lcom/android/server/alarm/AlarmManagerService$Constants;->KILL_ON_SCHEDULE_EXACT_ALARM_REVOKED:Z

    if-eqz v1, :cond_5c

    .line 4072
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    const-string/jumbo v3, "schedule_exact_alarm revoked"

    invoke-static {v1, v2, v3}, Lcom/android/server/pm/permission/PermissionManagerService;->killUid(IILjava/lang/String;)V

    .line 4075
    :cond_5c
    return-void

    .line 4069
    :catchall_5d
    move-exception v2

    :try_start_5e
    monitor-exit v1
    :try_end_5f
    .catchall {:try_start_5e .. :try_end_5f} :catchall_5d

    throw v2

    .line 4060
    .end local v0    # "whichAlarms":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/alarm/Alarm;>;"
    :cond_60
    :goto_60
    return-void
.end method

.method removeForStoppedLocked(I)V
    .registers 4
    .param p1, "uid"    # I

    .line 4179
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_5

    .line 4181
    return-void

    .line 4183
    :cond_5
    new-instance v0, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/alarm/AlarmManagerService;I)V

    .line 4185
    .local v0, "whichAlarms":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/alarm/Alarm;>;"
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/alarm/AlarmManagerService;->removeAlarmsInternalLocked(Ljava/util/function/Predicate;I)V

    .line 4186
    return-void
.end method

.method removeImpl(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)V
    .registers 5
    .param p1, "operation"    # Landroid/app/PendingIntent;
    .param p2, "listener"    # Landroid/app/IAlarmListener;

    .line 2219
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2220
    const/4 v1, 0x0

    :try_start_4
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/alarm/AlarmManagerService;->removeLocked(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;I)V

    .line 2221
    monitor-exit v0

    .line 2222
    return-void

    .line 2221
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_9

    throw v1
.end method

.method removeLocked(II)V
    .registers 4
    .param p1, "uid"    # I
    .param p2, "reason"    # I

    .line 4157
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_5

    .line 4159
    return-void

    .line 4161
    :cond_5
    new-instance v0, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda16;

    invoke-direct {v0, p1}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda16;-><init>(I)V

    invoke-direct {p0, v0, p2}, Lcom/android/server/alarm/AlarmManagerService;->removeAlarmsInternalLocked(Ljava/util/function/Predicate;I)V

    .line 4162
    return-void
.end method

.method removeLocked(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;I)V
    .registers 5
    .param p1, "operation"    # Landroid/app/PendingIntent;
    .param p2, "directReceiver"    # Landroid/app/IAlarmListener;
    .param p3, "reason"    # I

    .line 4145
    if-nez p1, :cond_5

    if-nez p2, :cond_5

    .line 4150
    return-void

    .line 4152
    :cond_5
    new-instance v0, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1, p2}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda1;-><init>(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)V

    invoke-direct {p0, v0, p3}, Lcom/android/server/alarm/AlarmManagerService;->removeAlarmsInternalLocked(Ljava/util/function/Predicate;I)V

    .line 4153
    return-void
.end method

.method removeLocked(Ljava/lang/String;)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 4166
    if-nez p1, :cond_3

    .line 4171
    return-void

    .line 4173
    :cond_3
    new-instance v0, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda10;

    invoke-direct {v0, p1}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda10;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/alarm/AlarmManagerService;->removeAlarmsInternalLocked(Ljava/util/function/Predicate;I)V

    .line 4174
    return-void
.end method

.method removeUserLocked(I)V
    .registers 5
    .param p1, "userHandle"    # I

    .line 4190
    if-nez p1, :cond_a

    .line 4191
    const-string v0, "AlarmManager"

    const-string v1, "Ignoring attempt to remove system-user state!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4192
    return-void

    .line 4194
    :cond_a
    new-instance v0, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda3;-><init>(I)V

    .line 4196
    .local v0, "whichAlarms":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/alarm/Alarm;>;"
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/alarm/AlarmManagerService;->removeAlarmsInternalLocked(Ljava/util/function/Predicate;I)V

    .line 4198
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mLastPriorityAlarmDispatch:Landroid/util/SparseLongArray;

    invoke-virtual {v1}, Landroid/util/SparseLongArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_1b
    if-ltz v1, :cond_31

    .line 4199
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mLastPriorityAlarmDispatch:Landroid/util/SparseLongArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseLongArray;->keyAt(I)I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    if-ne v2, p1, :cond_2e

    .line 4200
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mLastPriorityAlarmDispatch:Landroid/util/SparseLongArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseLongArray;->removeAt(I)V

    .line 4198
    :cond_2e
    add-int/lit8 v1, v1, -0x1

    goto :goto_1b

    .line 4203
    .end local v1    # "i":I
    :cond_31
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mRemovalHistory:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .restart local v1    # "i":I
    :goto_39
    if-ltz v1, :cond_4f

    .line 4204
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mRemovalHistory:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    if-ne v2, p1, :cond_4c

    .line 4205
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mRemovalHistory:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 4203
    :cond_4c
    add-int/lit8 v1, v1, -0x1

    goto :goto_39

    .line 4208
    .end local v1    # "i":I
    :cond_4f
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mLastOpScheduleExactAlarm:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .restart local v1    # "i":I
    :goto_57
    if-ltz v1, :cond_6d

    .line 4209
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mLastOpScheduleExactAlarm:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    if-ne v2, p1, :cond_6a

    .line 4210
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mLastOpScheduleExactAlarm:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->removeAt(I)V

    .line 4208
    :cond_6a
    add-int/lit8 v1, v1, -0x1

    goto :goto_57

    .line 4213
    .end local v1    # "i":I
    :cond_6d
    return-void
.end method

.method reorderAlarmsBasedOnStandbyBuckets(Landroid/util/ArraySet;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;)Z"
        }
    .end annotation

    .line 1513
    .local p1, "targetPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

    invoke-virtual {v0}, Lcom/android/internal/util/jobs/StatLogger;->getTime()J

    move-result-wide v0

    .line 1515
    .local v0, "start":J
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    new-instance v3, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0, p1}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/alarm/AlarmManagerService;Landroid/util/ArraySet;)V

    invoke-interface {v2, v3}, Lcom/android/server/alarm/AlarmStore;->updateAlarmDeliveries(Lcom/android/server/alarm/AlarmStore$AlarmDeliveryCalculator;)Z

    move-result v2

    .line 1524
    .local v2, "changed":Z
    iget-object v3, p0, Lcom/android/server/alarm/AlarmManagerService;->mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v0, v1}, Lcom/android/internal/util/jobs/StatLogger;->logDurationStat(IJ)J

    .line 1525
    return v2
.end method

.method reorderAlarmsBasedOnTare(Landroid/util/ArraySet;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;)Z"
        }
    .end annotation

    .line 1536
    .local p1, "targetPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

    invoke-virtual {v0}, Lcom/android/internal/util/jobs/StatLogger;->getTime()J

    move-result-wide v0

    .line 1538
    .local v0, "start":J
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    new-instance v3, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda9;

    invoke-direct {v3, p0, p1}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/alarm/AlarmManagerService;Landroid/util/ArraySet;)V

    invoke-interface {v2, v3}, Lcom/android/server/alarm/AlarmStore;->updateAlarmDeliveries(Lcom/android/server/alarm/AlarmStore$AlarmDeliveryCalculator;)Z

    move-result v2

    .line 1547
    .local v2, "changed":Z
    iget-object v3, p0, Lcom/android/server/alarm/AlarmManagerService;->mStatLogger:Lcom/android/internal/util/jobs/StatLogger;

    const/4 v4, 0x2

    invoke-virtual {v3, v4, v0, v1}, Lcom/android/internal/util/jobs/StatLogger;->logDurationStat(IJ)J

    .line 1548
    return v2
.end method

.method rescheduleKernelAlarmsLocked()V
    .registers 12

    .line 3967
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getElapsedRealtime()J

    move-result-wide v0

    .line 3968
    .local v0, "nowElapsed":J
    const-wide/16 v2, 0x0

    .line 3969
    .local v2, "nextNonWakeup":J
    iget-object v4, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    invoke-interface {v4}, Lcom/android/server/alarm/AlarmStore;->size()I

    move-result v4

    const-wide/16 v5, 0x0

    if-lez v4, :cond_2f

    .line 3970
    iget-object v4, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    invoke-interface {v4}, Lcom/android/server/alarm/AlarmStore;->getNextWakeupDeliveryTime()J

    move-result-wide v7

    .line 3971
    .local v7, "firstWakeup":J
    iget-object v4, p0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    invoke-interface {v4}, Lcom/android/server/alarm/AlarmStore;->getNextDeliveryTime()J

    move-result-wide v9

    .line 3972
    .local v9, "first":J
    cmp-long v4, v7, v5

    if-eqz v4, :cond_2a

    .line 3973
    iput-wide v7, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeup:J

    .line 3974
    iput-wide v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeUpSetAt:J

    .line 3975
    const/4 v4, 0x2

    invoke-direct {p0, v4, v7, v8}, Lcom/android/server/alarm/AlarmManagerService;->setLocked(IJ)V

    .line 3977
    :cond_2a
    cmp-long v4, v9, v7

    if-eqz v4, :cond_2f

    .line 3978
    move-wide v2, v9

    .line 3981
    .end local v7    # "firstWakeup":J
    .end local v9    # "first":J
    :cond_2f
    iget-object v4, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_43

    .line 3982
    cmp-long v4, v2, v5

    if-eqz v4, :cond_41

    iget-wide v7, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextNonWakeupDeliveryTime:J

    cmp-long v4, v7, v2

    if-gez v4, :cond_43

    .line 3983
    :cond_41
    iget-wide v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextNonWakeupDeliveryTime:J

    .line 3986
    :cond_43
    cmp-long v4, v2, v5

    if-eqz v4, :cond_4f

    .line 3987
    iput-wide v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextNonWakeup:J

    .line 3988
    iput-wide v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mNextNonWakeUpSetAt:J

    .line 3989
    const/4 v4, 0x3

    invoke-direct {p0, v4, v2, v3}, Lcom/android/server/alarm/AlarmManagerService;->setLocked(IJ)V

    .line 3991
    :cond_4f
    return-void
.end method

.method sendAllUnrestrictedPendingBackgroundAlarmsLocked()V
    .registers 4

    .line 1605
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1607
    .local v0, "alarmsToDeliver":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/alarm/Alarm;>;"
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    new-instance v2, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    invoke-static {v1, v0, v2}, Lcom/android/server/alarm/AlarmManagerService;->findAllUnrestrictedPendingBackgroundAlarmsLockedInner(Landroid/util/SparseArray;Ljava/util/ArrayList;Ljava/util/function/Predicate;)V

    .line 1610
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1e

    .line 1611
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v1}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getElapsedRealtime()J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/alarm/AlarmManagerService;->deliverPendingBackgroundAlarmsLocked(Ljava/util/ArrayList;J)V

    .line 1613
    :cond_1e
    return-void
.end method

.method sendPendingBackgroundAlarmsLocked(ILjava/lang/String;)V
    .registers 8
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 1568
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1569
    .local v0, "alarmsForUid":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/alarm/Alarm;>;"
    if-eqz v0, :cond_54

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_11

    goto :goto_54

    .line 1573
    :cond_11
    if-eqz p2, :cond_44

    .line 1577
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1578
    .local v1, "alarmsToDeliver":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/alarm/Alarm;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_1e
    if-ltz v2, :cond_38

    .line 1579
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/alarm/Alarm;

    .line 1580
    .local v3, "a":Lcom/android/server/alarm/Alarm;
    invoke-virtual {v3, p2}, Lcom/android/server/alarm/Alarm;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_35

    .line 1581
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/alarm/Alarm;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1578
    .end local v3    # "a":Lcom/android/server/alarm/Alarm;
    :cond_35
    add-int/lit8 v2, v2, -0x1

    goto :goto_1e

    .line 1584
    .end local v2    # "i":I
    :cond_38
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_4a

    .line 1585
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_4a

    .line 1591
    .end local v1    # "alarmsToDeliver":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/alarm/Alarm;>;"
    :cond_44
    move-object v1, v0

    .line 1592
    .restart local v1    # "alarmsToDeliver":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/alarm/Alarm;>;"
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1594
    :cond_4a
    :goto_4a
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v2}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getElapsedRealtime()J

    move-result-wide v2

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/alarm/AlarmManagerService;->deliverPendingBackgroundAlarmsLocked(Ljava/util/ArrayList;J)V

    .line 1595
    return-void

    .line 1570
    .end local v1    # "alarmsToDeliver":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/alarm/Alarm;>;"
    :cond_54
    :goto_54
    return-void
.end method

.method setImpl(IJJJLandroid/app/PendingIntent;Landroid/app/IAlarmListener;Ljava/lang/String;ILandroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;ILjava/lang/String;Landroid/os/Bundle;I)V
    .registers 58
    .param p1, "type"    # I
    .param p2, "triggerAtTime"    # J
    .param p4, "windowLength"    # J
    .param p6, "interval"    # J
    .param p8, "operation"    # Landroid/app/PendingIntent;
    .param p9, "directReceiver"    # Landroid/app/IAlarmListener;
    .param p10, "listenerTag"    # Ljava/lang/String;
    .param p11, "flags"    # I
    .param p12, "workSource"    # Landroid/os/WorkSource;
    .param p13, "alarmClock"    # Landroid/app/AlarmManager$AlarmClockInfo;
    .param p14, "callingUid"    # I
    .param p15, "callingPackage"    # Ljava/lang/String;
    .param p16, "idleOptions"    # Landroid/os/Bundle;
    .param p17, "exactAllowReason"    # I

    .line 2228
    move-object/from16 v15, p0

    move/from16 v14, p1

    move-wide/from16 v1, p2

    move-wide/from16 v3, p4

    move-wide/from16 v5, p6

    move/from16 v13, p14

    move-object/from16 v12, p15

    if-nez p8, :cond_12

    if-eqz p9, :cond_16

    :cond_12
    if-eqz p8, :cond_1e

    if-eqz p9, :cond_1e

    .line 2230
    :cond_16
    const-string v0, "AlarmManager"

    const-string v7, "Alarms must either supply a PendingIntent or an AlarmReceiver"

    invoke-static {v0, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2233
    return-void

    .line 2236
    :cond_1e
    const/4 v0, 0x0

    if-eqz p9, :cond_49

    .line 2238
    :try_start_21
    invoke-interface/range {p9 .. p9}, Landroid/app/IAlarmListener;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    iget-object v8, v15, Lcom/android/server/alarm/AlarmManagerService;->mListenerDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v7, v8, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_2a} :catch_2d

    .line 2242
    move-object/from16 v11, p10

    goto :goto_4b

    .line 2239
    :catch_2d
    move-exception v0

    .line 2240
    .local v0, "e":Landroid/os/RemoteException;
    const-string v7, "AlarmManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Dropping unreachable alarm listener "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v11, p10

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2241
    return-void

    .line 2236
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_49
    move-object/from16 v11, p10

    .line 2248
    :goto_4b
    iget-object v7, v15, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget-wide v9, v7, Lcom/android/server/alarm/AlarmManagerService$Constants;->MIN_INTERVAL:J

    .line 2249
    .local v9, "minInterval":J
    const-wide/16 v7, 0x0

    cmp-long v16, v5, v7

    if-lez v16, :cond_89

    cmp-long v16, v5, v9

    if-gez v16, :cond_89

    .line 2250
    const-string v0, "AlarmManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Suspiciously short interval "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " millis; expanding to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-wide/16 v19, 0x3e8

    div-long v11, v9, v19

    invoke-virtual {v7, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " seconds"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2253
    move-wide v5, v9

    move-wide/from16 v25, v5

    .end local p6    # "interval":J
    .local v5, "interval":J
    goto :goto_b8

    .line 2254
    .end local v5    # "interval":J
    .restart local p6    # "interval":J
    :cond_89
    iget-object v0, v15, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget-wide v7, v0, Lcom/android/server/alarm/AlarmManagerService$Constants;->MAX_INTERVAL:J

    cmp-long v0, v5, v7

    if-lez v0, :cond_b6

    .line 2255
    const-string v0, "AlarmManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Suspiciously long interval "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " millis; clamping"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2257
    iget-object v0, v15, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget-wide v5, v0, Lcom/android/server/alarm/AlarmManagerService$Constants;->MAX_INTERVAL:J

    move-wide/from16 v25, v5

    .end local p6    # "interval":J
    .restart local v5    # "interval":J
    goto :goto_b8

    .line 2254
    .end local v5    # "interval":J
    .restart local p6    # "interval":J
    :cond_b6
    move-wide/from16 v25, v5

    .line 2260
    .end local p6    # "interval":J
    .local v25, "interval":J
    :goto_b8
    if-ltz v14, :cond_289

    const/4 v0, 0x3

    if-gt v14, v0, :cond_289

    .line 2264
    const-wide/16 v5, 0x0

    cmp-long v7, v1, v5

    if-gez v7, :cond_f8

    .line 2265
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    int-to-long v5, v5

    .line 2266
    .local v5, "what":J
    const-string v7, "AlarmManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Invalid alarm trigger time! "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, " from uid="

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, " pid="

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2268
    const-wide/16 v1, 0x0

    move-wide v11, v1

    .end local p2    # "triggerAtTime":J
    .local v1, "triggerAtTime":J
    goto :goto_f9

    .line 2264
    .end local v1    # "triggerAtTime":J
    .end local v5    # "what":J
    .restart local p2    # "triggerAtTime":J
    :cond_f8
    move-wide v11, v1

    .line 2271
    .end local p2    # "triggerAtTime":J
    .local v11, "triggerAtTime":J
    :goto_f9
    iget-object v1, v15, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v1}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getElapsedRealtime()J

    move-result-wide v7

    .line 2272
    .local v7, "nowElapsed":J
    invoke-direct {v15, v11, v12, v14}, Lcom/android/server/alarm/AlarmManagerService;->convertToElapsed(JI)J

    move-result-wide v5

    .line 2274
    .local v5, "nominalTrigger":J
    nop

    .line 2275
    invoke-static/range {p14 .. p14}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v1

    if-eqz v1, :cond_10d

    const-wide/16 v1, 0x0

    goto :goto_111

    :cond_10d
    iget-object v1, v15, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget-wide v1, v1, Lcom/android/server/alarm/AlarmManagerService$Constants;->MIN_FUTURITY:J

    :goto_111
    add-long/2addr v1, v7

    .line 2276
    .local v1, "minTrigger":J
    move-wide/from16 v27, v9

    .end local v9    # "minInterval":J
    .local v27, "minInterval":J
    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    .line 2279
    .local v9, "triggerElapsed":J
    const-wide/16 v17, 0x0

    cmp-long v19, v3, v17

    if-nez v19, :cond_12c

    .line 2280
    move-wide/from16 v17, v9

    move-object/from16 v14, p15

    move-wide/from16 p2, v1

    move-wide/from16 v21, v3

    move-wide/from16 v23, v17

    move-wide/from16 v17, v5

    .local v17, "maxElapsed":J
    goto/16 :goto_1d3

    .line 2281
    .end local v17    # "maxElapsed":J
    :cond_12c
    cmp-long v17, v3, v17

    if-gez v17, :cond_148

    .line 2282
    move-wide/from16 v19, v7

    move-wide/from16 v21, v9

    move-wide/from16 v23, v25

    invoke-static/range {v19 .. v24}, Lcom/android/server/alarm/AlarmManagerService;->maxTriggerTime(JJJ)J

    move-result-wide v17

    .line 2284
    .restart local v17    # "maxElapsed":J
    sub-long v3, v17, v9

    move-object/from16 v14, p15

    move-wide/from16 p2, v1

    move-wide/from16 v21, v3

    move-wide/from16 v23, v17

    move-wide/from16 v17, v5

    .end local p4    # "windowLength":J
    .local v3, "windowLength":J
    goto/16 :goto_1d3

    .line 2287
    .end local v3    # "windowLength":J
    .end local v17    # "maxElapsed":J
    .restart local p4    # "windowLength":J
    :cond_148
    move-wide/from16 p2, v1

    .end local v1    # "minTrigger":J
    .local p2, "minTrigger":J
    invoke-virtual {v15, v7, v8, v9, v10}, Lcom/android/server/alarm/AlarmManagerService;->getMinimumAllowedWindow(JJ)J

    move-result-wide v0

    .line 2288
    .local v0, "minAllowedWindow":J
    const-wide/32 v17, 0x5265c00

    cmp-long v2, v3, v17

    if-lez v2, :cond_17c

    .line 2289
    const-string v2, "AlarmManager"

    move-wide/from16 v17, v5

    .end local v5    # "nominalTrigger":J
    .local v17, "nominalTrigger":J
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Window length "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "ms too long; limiting to 1 day"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2290
    const-wide/32 v2, 0x5265c00

    move-object/from16 v14, p15

    .end local p4    # "windowLength":J
    .local v2, "windowLength":J
    goto :goto_1cd

    .line 2291
    .end local v2    # "windowLength":J
    .end local v17    # "nominalTrigger":J
    .restart local v5    # "nominalTrigger":J
    .restart local p4    # "windowLength":J
    :cond_17c
    move-wide/from16 v17, v5

    .end local v5    # "nominalTrigger":J
    .restart local v17    # "nominalTrigger":J
    and-int/lit8 v2, p11, 0x40

    if-nez v2, :cond_1ca

    cmp-long v2, v3, v0

    if-gez v2, :cond_1ca

    .line 2293
    invoke-virtual {v15, v13}, Lcom/android/server/alarm/AlarmManagerService;->isExemptFromMinWindowRestrictions(I)Z

    move-result v2

    if-nez v2, :cond_1c7

    const-wide/32 v5, 0xb09e9e4

    .line 2295
    invoke-static/range {p14 .. p14}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v2

    .line 2293
    move-object/from16 v14, p15

    invoke-static {v5, v6, v14, v2}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result v2

    if-eqz v2, :cond_1cc

    .line 2296
    const-string v2, "AlarmManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Window length "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "ms too short; expanding to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "ms."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2298
    move-wide v2, v0

    .end local p4    # "windowLength":J
    .restart local v2    # "windowLength":J
    goto :goto_1cd

    .line 2293
    .end local v2    # "windowLength":J
    .restart local p4    # "windowLength":J
    :cond_1c7
    move-object/from16 v14, p15

    goto :goto_1cc

    .line 2291
    :cond_1ca
    move-object/from16 v14, p15

    .line 2301
    :cond_1cc
    :goto_1cc
    move-wide v2, v3

    .end local p4    # "windowLength":J
    .restart local v2    # "windowLength":J
    :goto_1cd
    add-long v4, v9, v2

    move-wide/from16 v21, v2

    move-wide/from16 v23, v4

    .line 2303
    .end local v0    # "minAllowedWindow":J
    .end local v2    # "windowLength":J
    .local v21, "windowLength":J
    .local v23, "maxElapsed":J
    :goto_1d3
    iget-object v5, v15, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 2310
    :try_start_1d6
    iget-object v0, v15, Lcom/android/server/alarm/AlarmManagerService;->mAlarmsPerUid:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v13, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    iget-object v1, v15, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget v1, v1, Lcom/android/server/alarm/AlarmManagerService$Constants;->MAX_ALARMS_PER_UID:I
    :try_end_1e1
    .catchall {:try_start_1d6 .. :try_end_1e1} :catchall_278

    if-lt v0, v1, :cond_249

    .line 2311
    :try_start_1e3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Maximum limit of concurrent alarms "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v15, Lcom/android/server/alarm/AlarmManagerService;->mConstants:Lcom/android/server/alarm/AlarmManagerService$Constants;

    iget v1, v1, Lcom/android/server/alarm/AlarmManagerService$Constants;->MAX_ALARMS_PER_UID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " reached for uid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2313
    invoke-static/range {p14 .. p14}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", callingPackage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2315
    .local v0, "errorMsg":Ljava/lang/String;
    const-string v1, "AlarmManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2316
    const/16 v1, 0x3e8

    if-ne v13, v1, :cond_235

    .line 2319
    const v1, 0x534e4554

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "234441463"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    goto :goto_249

    .line 2317
    :cond_235
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v7    # "nowElapsed":J
    .end local v9    # "triggerElapsed":J
    .end local v11    # "triggerAtTime":J
    .end local v17    # "nominalTrigger":J
    .end local v21    # "windowLength":J
    .end local v23    # "maxElapsed":J
    .end local v25    # "interval":J
    .end local v27    # "minInterval":J
    .end local p0    # "this":Lcom/android/server/alarm/AlarmManagerService;
    .end local p1    # "type":I
    .end local p2    # "minTrigger":J
    .end local p8    # "operation":Landroid/app/PendingIntent;
    .end local p9    # "directReceiver":Landroid/app/IAlarmListener;
    .end local p10    # "listenerTag":Ljava/lang/String;
    .end local p11    # "flags":I
    .end local p12    # "workSource":Landroid/os/WorkSource;
    .end local p13    # "alarmClock":Landroid/app/AlarmManager$AlarmClockInfo;
    .end local p14    # "callingUid":I
    .end local p15    # "callingPackage":Ljava/lang/String;
    .end local p16    # "idleOptions":Landroid/os/Bundle;
    .end local p17    # "exactAllowReason":I
    throw v1
    :try_end_23b
    .catchall {:try_start_1e3 .. :try_end_23b} :catchall_23b

    .line 2325
    .end local v0    # "errorMsg":Ljava/lang/String;
    .restart local v7    # "nowElapsed":J
    .restart local v9    # "triggerElapsed":J
    .restart local v11    # "triggerAtTime":J
    .restart local v17    # "nominalTrigger":J
    .restart local v21    # "windowLength":J
    .restart local v23    # "maxElapsed":J
    .restart local v25    # "interval":J
    .restart local v27    # "minInterval":J
    .restart local p0    # "this":Lcom/android/server/alarm/AlarmManagerService;
    .restart local p1    # "type":I
    .restart local p2    # "minTrigger":J
    .restart local p8    # "operation":Landroid/app/PendingIntent;
    .restart local p9    # "directReceiver":Landroid/app/IAlarmListener;
    .restart local p10    # "listenerTag":Ljava/lang/String;
    .restart local p11    # "flags":I
    .restart local p12    # "workSource":Landroid/os/WorkSource;
    .restart local p13    # "alarmClock":Landroid/app/AlarmManager$AlarmClockInfo;
    .restart local p14    # "callingUid":I
    .restart local p15    # "callingPackage":Ljava/lang/String;
    .restart local p16    # "idleOptions":Landroid/os/Bundle;
    .restart local p17    # "exactAllowReason":I
    :catchall_23b
    move-exception v0

    move-wide/from16 v29, p2

    move-object/from16 v33, v5

    move-wide/from16 v34, v7

    move-wide/from16 v36, v9

    move-wide/from16 v38, v11

    move-wide/from16 v31, v17

    goto :goto_285

    .line 2322
    :cond_249
    :goto_249
    move-wide/from16 v29, p2

    .end local p2    # "minTrigger":J
    .local v29, "minTrigger":J
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-wide v3, v11

    move-object/from16 v33, v5

    move-wide/from16 v31, v17

    .end local v17    # "nominalTrigger":J
    .local v31, "nominalTrigger":J
    move-wide v5, v9

    move-wide/from16 v34, v7

    .end local v7    # "nowElapsed":J
    .local v34, "nowElapsed":J
    move-wide/from16 v7, v21

    move-wide/from16 v36, v9

    .end local v9    # "triggerElapsed":J
    .local v36, "triggerElapsed":J
    move-wide/from16 v9, v25

    move-wide/from16 v38, v11

    .end local v11    # "triggerAtTime":J
    .local v38, "triggerAtTime":J
    move-object/from16 v11, p8

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    move/from16 v14, p11

    move-object/from16 v15, p12

    move-object/from16 v16, p13

    move/from16 v17, p14

    move-object/from16 v18, p15

    move-object/from16 v19, p16

    move/from16 v20, p17

    :try_start_273
    invoke-direct/range {v1 .. v20}, Lcom/android/server/alarm/AlarmManagerService;->setImplLocked(IJJJJLandroid/app/PendingIntent;Landroid/app/IAlarmListener;Ljava/lang/String;ILandroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;ILjava/lang/String;Landroid/os/Bundle;I)V

    .line 2325
    monitor-exit v33

    .line 2326
    return-void

    .line 2325
    .end local v29    # "minTrigger":J
    .end local v31    # "nominalTrigger":J
    .end local v34    # "nowElapsed":J
    .end local v36    # "triggerElapsed":J
    .end local v38    # "triggerAtTime":J
    .restart local v7    # "nowElapsed":J
    .restart local v9    # "triggerElapsed":J
    .restart local v11    # "triggerAtTime":J
    .restart local v17    # "nominalTrigger":J
    .restart local p2    # "minTrigger":J
    :catchall_278
    move-exception v0

    move-wide/from16 v29, p2

    move-object/from16 v33, v5

    move-wide/from16 v34, v7

    move-wide/from16 v36, v9

    move-wide/from16 v38, v11

    move-wide/from16 v31, v17

    .end local v7    # "nowElapsed":J
    .end local v9    # "triggerElapsed":J
    .end local v11    # "triggerAtTime":J
    .end local v17    # "nominalTrigger":J
    .end local p2    # "minTrigger":J
    .restart local v29    # "minTrigger":J
    .restart local v31    # "nominalTrigger":J
    .restart local v34    # "nowElapsed":J
    .restart local v36    # "triggerElapsed":J
    .restart local v38    # "triggerAtTime":J
    :goto_285
    monitor-exit v33
    :try_end_286
    .catchall {:try_start_273 .. :try_end_286} :catchall_287

    throw v0

    :catchall_287
    move-exception v0

    goto :goto_285

    .line 2260
    .end local v21    # "windowLength":J
    .end local v23    # "maxElapsed":J
    .end local v27    # "minInterval":J
    .end local v29    # "minTrigger":J
    .end local v31    # "nominalTrigger":J
    .end local v34    # "nowElapsed":J
    .end local v36    # "triggerElapsed":J
    .end local v38    # "triggerAtTime":J
    .local v9, "minInterval":J
    .local p2, "triggerAtTime":J
    .restart local p4    # "windowLength":J
    :cond_289
    move-wide/from16 v27, v9

    .line 2261
    .end local v9    # "minInterval":J
    .restart local v27    # "minInterval":J
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid alarm type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v6, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setTimeImpl(J)Z
    .registers 11
    .param p1, "millis"    # J

    .line 2149
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/alarm/AlarmManagerService$Injector;->isAlarmDriverPresent()Z

    move-result v0

    if-nez v0, :cond_11

    .line 2150
    const-string v0, "AlarmManager"

    const-string v1, "Not setting time since no alarm driver is available."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2151
    const/4 v0, 0x0

    return v0

    .line 2154
    :cond_11
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2155
    :try_start_14
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v1}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getCurrentTimeMillis()J

    move-result-wide v1

    .line 2156
    .local v1, "currentTimeMillis":J
    iget-object v3, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/alarm/AlarmManagerService$Injector;->setKernelTime(J)V

    .line 2157
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v3

    .line 2158
    .local v3, "timeZone":Ljava/util/TimeZone;
    invoke-virtual {v3, v1, v2}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v4

    .line 2159
    .local v4, "currentTzOffset":I
    invoke-virtual {v3, p1, p2}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v5

    .line 2160
    .local v5, "newTzOffset":I
    if-eq v4, v5, :cond_3f

    .line 2161
    const-string v6, "AlarmManager"

    const-string v7, "Timezone offset has changed, updating kernel timezone"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2162
    iget-object v6, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    const v7, 0xea60

    div-int v7, v5, v7

    neg-int v7, v7

    invoke-virtual {v6, v7}, Lcom/android/server/alarm/AlarmManagerService$Injector;->setKernelTimezone(I)V

    .line 2167
    :cond_3f
    const/4 v6, 0x1

    monitor-exit v0

    return v6

    .line 2168
    .end local v1    # "currentTimeMillis":J
    .end local v3    # "timeZone":Ljava/util/TimeZone;
    .end local v4    # "currentTzOffset":I
    .end local v5    # "newTzOffset":I
    :catchall_42
    move-exception v1

    monitor-exit v0
    :try_end_44
    .catchall {:try_start_14 .. :try_end_44} :catchall_42

    throw v1
.end method

.method setTimeZoneImpl(Ljava/lang/String;)V
    .registers 14
    .param p1, "tz"    # Ljava/lang/String;

    .line 2172
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2173
    return-void

    .line 2176
    :cond_7
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    .line 2179
    .local v0, "zone":Ljava/util/TimeZone;
    const/4 v1, 0x0

    .line 2180
    .local v1, "timeZoneWasChanged":Z
    monitor-enter p0

    .line 2181
    :try_start_d
    const-string/jumbo v2, "persist.sys.timezone"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2182
    .local v2, "current":Ljava/lang/String;
    if-eqz v2, :cond_20

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2b

    .line 2186
    :cond_20
    const/4 v1, 0x1

    .line 2187
    const-string/jumbo v3, "persist.sys.timezone"

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2192
    :cond_2b
    iget-object v3, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    invoke-virtual {v3}, Lcom/android/server/alarm/AlarmManagerService$Injector;->getCurrentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v3

    .line 2193
    .local v3, "gmtOffset":I
    iget-object v4, p0, Lcom/android/server/alarm/AlarmManagerService;->mInjector:Lcom/android/server/alarm/AlarmManagerService$Injector;

    const v5, 0xea60

    div-int v5, v3, v5

    neg-int v5, v5

    invoke-virtual {v4, v5}, Lcom/android/server/alarm/AlarmManagerService$Injector;->setKernelTimezone(I)V

    .line 2194
    .end local v2    # "current":Ljava/lang/String;
    .end local v3    # "gmtOffset":I
    monitor-exit p0
    :try_end_41
    .catchall {:try_start_d .. :try_end_41} :catchall_82

    .line 2196
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/util/TimeZone;->setDefault(Ljava/util/TimeZone;)V

    .line 2198
    if-eqz v1, :cond_81

    .line 2200
    iget-object v3, p0, Lcom/android/server/alarm/AlarmManagerService;->mClockReceiver:Lcom/android/server/alarm/AlarmManagerService$ClockReceiver;

    invoke-virtual {v3}, Lcom/android/server/alarm/AlarmManagerService$ClockReceiver;->scheduleDateChangedEvent()V

    .line 2203
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.TIMEZONE_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2204
    .local v3, "intent":Landroid/content/Intent;
    const/high16 v4, 0x25200000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2208
    const-string/jumbo v4, "time-zone"

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2209
    iget-object v6, p0, Lcom/android/server/alarm/AlarmManagerService;->mOptsTimeBroadcast:Landroid/app/BroadcastOptions;

    iget-object v4, p0, Lcom/android/server/alarm/AlarmManagerService;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 2210
    invoke-virtual {v4}, Landroid/app/ActivityManagerInternal;->getBootTimeTempAllowListDuration()J

    move-result-wide v7

    const/4 v9, 0x0

    const/16 v10, 0xcc

    const-string v11, ""

    .line 2209
    invoke-virtual/range {v6 .. v11}, Landroid/app/BroadcastOptions;->setTemporaryAppAllowlist(JIILjava/lang/String;)V

    .line 2213
    invoke-virtual {p0}, Lcom/android/server/alarm/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v6, p0, Lcom/android/server/alarm/AlarmManagerService;->mOptsTimeBroadcast:Landroid/app/BroadcastOptions;

    .line 2214
    invoke-virtual {v6}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v6

    .line 2213
    invoke-virtual {v4, v3, v5, v2, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2216
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_81
    return-void

    .line 2194
    :catchall_82
    move-exception v2

    :try_start_83
    monitor-exit p0
    :try_end_84
    .catchall {:try_start_83 .. :try_end_84} :catchall_82

    throw v2
.end method

.method setWakelockWorkSource(Landroid/os/WorkSource;ILjava/lang/String;Z)V
    .registers 8
    .param p1, "ws"    # Landroid/os/WorkSource;
    .param p2, "knownUid"    # I
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "first"    # Z

    .line 4840
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz p4, :cond_7

    move-object v2, p3

    goto :goto_8

    :cond_7
    move-object v2, v0

    :goto_8
    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setHistoryTag(Ljava/lang/String;)V

    .line 4842
    if-eqz p1, :cond_13

    .line 4843
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, p1}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 4844
    return-void

    .line 4847
    :cond_13
    if-ltz p2, :cond_20

    .line 4848
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    new-instance v2, Landroid/os/WorkSource;

    invoke-direct {v2, p2}, Landroid/os/WorkSource;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1f} :catch_21

    .line 4849
    return-void

    .line 4852
    :cond_20
    goto :goto_22

    .line 4851
    :catch_21
    move-exception v1

    .line 4855
    :goto_22
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v0}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 4856
    return-void
.end method

.method triggerAlarmsLocked(Ljava/util/ArrayList;J)I
    .registers 35
    .param p2, "nowELAPSED"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/alarm/Alarm;",
            ">;J)I"
        }
    .end annotation

    .line 4327
    .local p1, "triggerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/alarm/Alarm;>;"
    move-object/from16 v0, p0

    move-object/from16 v15, p1

    move-wide/from16 v13, p2

    const/4 v1, 0x0

    .line 4328
    .local v1, "wakeUps":I
    iget-object v2, v0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    invoke-interface {v2, v13, v14}, Lcom/android/server/alarm/AlarmStore;->removePendingAlarms(J)Ljava/util/ArrayList;

    move-result-object v20

    .line 4329
    .local v20, "pendingAlarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/alarm/Alarm;>;"
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v21

    move/from16 v22, v1

    .end local v1    # "wakeUps":I
    .local v22, "wakeUps":I
    :goto_13
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v12, 0x1

    if-eqz v1, :cond_14c

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/server/alarm/Alarm;

    .line 4331
    .local v2, "alarm":Lcom/android/server/alarm/Alarm;
    iget v1, v2, Lcom/android/server/alarm/Alarm;->creatorUid:I

    invoke-direct {v0, v1}, Lcom/android/server/alarm/AlarmManagerService;->isUidFrozen(I)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_5e

    .line 4332
    iget v1, v2, Lcom/android/server/alarm/Alarm;->creatorUid:I

    invoke-direct {v0, v1}, Lcom/android/server/alarm/AlarmManagerService;->isNeedCachedAlarmForAurogon(I)Z

    move-result v1

    if-eqz v1, :cond_55

    iget v1, v2, Lcom/android/server/alarm/Alarm;->flags:I

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_55

    .line 4333
    iget-object v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingAlarmsByAurogon:Landroid/util/SparseArray;

    iget v3, v2, Lcom/android/server/alarm/Alarm;->creatorUid:I

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 4334
    .local v1, "alarmsForUid":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/alarm/Alarm;>;"
    if-nez v1, :cond_51

    .line 4335
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v3

    .line 4336
    iget-object v3, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingAlarmsByAurogon:Landroid/util/SparseArray;

    iget v4, v2, Lcom/android/server/alarm/Alarm;->creatorUid:I

    invoke-virtual {v3, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4338
    :cond_51
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4339
    goto :goto_13

    .line 4341
    .end local v1    # "alarmsForUid":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/alarm/Alarm;>;"
    :cond_55
    new-array v1, v12, [I

    .line 4342
    .local v1, "uids":[I
    iget v4, v2, Lcom/android/server/alarm/Alarm;->creatorUid:I

    aput v4, v1, v3

    .line 4343
    invoke-direct {v0, v1}, Lcom/android/server/alarm/AlarmManagerService;->unFreezeActionForUids([I)V

    .line 4347
    .end local v1    # "uids":[I
    :cond_5e
    invoke-direct {v0, v2}, Lcom/android/server/alarm/AlarmManagerService;->isBackgroundRestricted(Lcom/android/server/alarm/Alarm;)Z

    move-result v1

    if-eqz v1, :cond_81

    .line 4352
    iget-object v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    iget v3, v2, Lcom/android/server/alarm/Alarm;->creatorUid:I

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 4353
    .local v1, "alarmsForUid":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/alarm/Alarm;>;"
    if-nez v1, :cond_7d

    .line 4354
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v3

    .line 4355
    iget-object v3, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    iget v4, v2, Lcom/android/server/alarm/Alarm;->creatorUid:I

    invoke-virtual {v3, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4357
    :cond_7d
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4358
    goto :goto_13

    .line 4361
    .end local v1    # "alarmsForUid":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/alarm/Alarm;>;"
    :cond_81
    iput v12, v2, Lcom/android/server/alarm/Alarm;->count:I

    .line 4364
    invoke-static {}, Lcom/android/server/alarm/AlarmManagerServiceStub;->get()Lcom/android/server/alarm/AlarmManagerServiceStub;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/alarm/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-interface {v1, v4, v2}, Lcom/android/server/alarm/AlarmManagerServiceStub;->checkAlarmIsAllowedSend(Landroid/content/Context;Lcom/android/server/alarm/Alarm;)Z

    move-result v1

    if-eqz v1, :cond_95

    .line 4365
    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9a

    .line 4367
    :cond_95
    iget v1, v2, Lcom/android/server/alarm/Alarm;->uid:I

    invoke-direct {v0, v1, v12}, Lcom/android/server/alarm/AlarmManagerService;->decrementAlarmCount(II)V

    .line 4370
    :goto_9a
    iget v1, v2, Lcom/android/server/alarm/Alarm;->flags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_aa

    .line 4371
    iget-object v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    if-eqz v1, :cond_a5

    move v3, v12

    :cond_a5
    iget-object v1, v2, Lcom/android/server/alarm/Alarm;->statsTag:Ljava/lang/String;

    invoke-static {v3, v1}, Lcom/android/server/EventLogTags;->writeDeviceIdleWakeFromIdle(ILjava/lang/String;)V

    .line 4374
    :cond_aa
    iget-object v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    if-ne v1, v2, :cond_bb

    .line 4375
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/alarm/Alarm;

    .line 4376
    iget-object v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    new-instance v3, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda17;

    invoke-direct {v3, v0}, Lcom/android/server/alarm/AlarmManagerService$$ExternalSyntheticLambda17;-><init>(Lcom/android/server/alarm/AlarmManagerService;)V

    invoke-interface {v1, v3}, Lcom/android/server/alarm/AlarmStore;->updateAlarmDeliveries(Lcom/android/server/alarm/AlarmStore$AlarmDeliveryCalculator;)Z

    .line 4388
    :cond_bb
    iget-object v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/alarm/Alarm;

    if-ne v1, v2, :cond_c7

    .line 4389
    iget-object v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mAlarmStore:Lcom/android/server/alarm/AlarmStore;

    invoke-interface {v1}, Lcom/android/server/alarm/AlarmStore;->getNextWakeFromIdleAlarm()Lcom/android/server/alarm/Alarm;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/alarm/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/alarm/Alarm;

    .line 4396
    :cond_c7
    iget-wide v3, v2, Lcom/android/server/alarm/Alarm;->repeatInterval:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-lez v1, :cond_12f

    .line 4399
    iget v1, v2, Lcom/android/server/alarm/Alarm;->count:I

    int-to-long v3, v1

    invoke-virtual {v2}, Lcom/android/server/alarm/Alarm;->getRequestedElapsed()J

    move-result-wide v5

    sub-long v5, v13, v5

    iget-wide v7, v2, Lcom/android/server/alarm/Alarm;->repeatInterval:J

    div-long/2addr v5, v7

    add-long/2addr v3, v5

    long-to-int v1, v3

    iput v1, v2, Lcom/android/server/alarm/Alarm;->count:I

    .line 4401
    iget v1, v2, Lcom/android/server/alarm/Alarm;->count:I

    int-to-long v3, v1

    iget-wide v5, v2, Lcom/android/server/alarm/Alarm;->repeatInterval:J

    mul-long v23, v3, v5

    .line 4402
    .local v23, "delta":J
    invoke-virtual {v2}, Lcom/android/server/alarm/Alarm;->getRequestedElapsed()J

    move-result-wide v3

    add-long v25, v3, v23

    .local v25, "nextElapsed":J
    move-wide/from16 v4, v25

    .line 4403
    iget-wide v10, v2, Lcom/android/server/alarm/Alarm;->repeatInterval:J

    move-wide/from16 v6, p2

    move-wide/from16 v8, v25

    invoke-static/range {v6 .. v11}, Lcom/android/server/alarm/AlarmManagerService;->maxTriggerTime(JJJ)J

    move-result-wide v27

    .line 4405
    .local v27, "nextMaxElapsed":J
    iget v1, v2, Lcom/android/server/alarm/Alarm;->type:I

    iget-wide v6, v2, Lcom/android/server/alarm/Alarm;->origWhen:J

    add-long v6, v6, v23

    move-object v11, v2

    .end local v2    # "alarm":Lcom/android/server/alarm/Alarm;
    .local v11, "alarm":Lcom/android/server/alarm/Alarm;
    move-wide v2, v6

    sub-long v6, v27, v25

    iget-wide v8, v11, Lcom/android/server/alarm/Alarm;->repeatInterval:J

    iget-object v10, v11, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    const/16 v16, 0x0

    move-object/from16 v29, v11

    .end local v11    # "alarm":Lcom/android/server/alarm/Alarm;
    .local v29, "alarm":Lcom/android/server/alarm/Alarm;
    move-object/from16 v11, v16

    move-object/from16 v12, v16

    move-object/from16 v11, v29

    .end local v29    # "alarm":Lcom/android/server/alarm/Alarm;
    .restart local v11    # "alarm":Lcom/android/server/alarm/Alarm;
    iget v12, v11, Lcom/android/server/alarm/Alarm;->flags:I

    move v13, v12

    iget-object v14, v11, Lcom/android/server/alarm/Alarm;->workSource:Landroid/os/WorkSource;

    iget-object v12, v11, Lcom/android/server/alarm/Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    move-object v15, v12

    iget v12, v11, Lcom/android/server/alarm/Alarm;->uid:I

    move/from16 v16, v12

    iget-object v12, v11, Lcom/android/server/alarm/Alarm;->packageName:Ljava/lang/String;

    move-object/from16 v17, v12

    const/16 v18, 0x0

    const/16 v19, -0x1

    move-object v12, v0

    move-object/from16 v0, p0

    move-object/from16 v30, v11

    const/4 v11, 0x0

    const/4 v12, 0x0

    .end local v11    # "alarm":Lcom/android/server/alarm/Alarm;
    .local v30, "alarm":Lcom/android/server/alarm/Alarm;
    invoke-direct/range {v0 .. v19}, Lcom/android/server/alarm/AlarmManagerService;->setImplLocked(IJJJJLandroid/app/PendingIntent;Landroid/app/IAlarmListener;Ljava/lang/String;ILandroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;ILjava/lang/String;Landroid/os/Bundle;I)V

    goto :goto_131

    .line 4396
    .end local v23    # "delta":J
    .end local v25    # "nextElapsed":J
    .end local v27    # "nextMaxElapsed":J
    .end local v30    # "alarm":Lcom/android/server/alarm/Alarm;
    .restart local v2    # "alarm":Lcom/android/server/alarm/Alarm;
    :cond_12f
    move-object/from16 v30, v2

    .line 4411
    .end local v2    # "alarm":Lcom/android/server/alarm/Alarm;
    .restart local v30    # "alarm":Lcom/android/server/alarm/Alarm;
    :goto_131
    move-object/from16 v0, v30

    .end local v30    # "alarm":Lcom/android/server/alarm/Alarm;
    .local v0, "alarm":Lcom/android/server/alarm/Alarm;
    iget-boolean v1, v0, Lcom/android/server/alarm/Alarm;->wakeup:Z

    if-eqz v1, :cond_139

    .line 4412
    add-int/lit8 v22, v22, 0x1

    .line 4416
    :cond_139
    iget-object v1, v0, Lcom/android/server/alarm/Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    if-eqz v1, :cond_143

    .line 4417
    const/4 v2, 0x1

    move-object/from16 v1, p0

    iput-boolean v2, v1, Lcom/android/server/alarm/AlarmManagerService;->mNextAlarmClockMayChange:Z

    goto :goto_145

    .line 4416
    :cond_143
    move-object/from16 v1, p0

    .line 4419
    .end local v0    # "alarm":Lcom/android/server/alarm/Alarm;
    :goto_145
    move-object/from16 v15, p1

    move-wide/from16 v13, p2

    move-object v0, v1

    goto/16 :goto_13

    .line 4423
    :cond_14c
    move-object v1, v0

    move v2, v12

    iget v0, v1, Lcom/android/server/alarm/AlarmManagerService;->mCurrentSeq:I

    add-int/2addr v0, v2

    iput v0, v1, Lcom/android/server/alarm/AlarmManagerService;->mCurrentSeq:I

    .line 4424
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/alarm/AlarmManagerService;->calculateDeliveryPriorities(Ljava/util/ArrayList;)V

    .line 4425
    iget-object v0, v1, Lcom/android/server/alarm/AlarmManagerService;->mAlarmDispatchComparator:Ljava/util/Comparator;

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 4433
    return v22
.end method
